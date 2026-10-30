import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/network/network_client.dart';
import 'package:models/models.dart';

class ProfileRepository {
  ProfileRepository({
    required DatabaseInterface database,
    required NetworkClient networkClient,
  }) : _database = database,
       _uploadProfile = ((healthData) async {
         await networkClient.apiCall<HealthDataRequest, Empty>(
           '/users/health-data',
           Empty.new,
           request: HealthDataRequest(healthData: healthData),
           method: ProtoHttpMethod.post,
         );
       });

  ProfileRepository.forTesting({
    required DatabaseInterface database,
    required Future<void> Function(HealthData healthData) uploadProfile,
  }) : _database = database,
       _uploadProfile = uploadProfile;

  final DatabaseInterface _database;
  final Future<void> Function(HealthData healthData) _uploadProfile;
  Future<void> _syncTail = Future<void>.value();

  Future<HealthData?> getHealthData() => _database.getHealthData();

  Stream<HealthData?> watchHealthData() => _database.watchHealthData();

  Future<void> saveLocalHealthData(HealthData healthData) =>
      _database.saveHealthData(healthData);

  /// Saves locally first and then attempts the durable pending upload. Network
  /// failure never discards or rolls back the local edit.
  Future<bool> saveHealthData(HealthData healthData) async {
    await saveLocalHealthData(healthData);
    return syncPendingHealthData();
  }

  Future<bool> updateDailyCalorieGoal(int goal) async {
    await _database.setDailyCalorieGoal(goal);
    return syncPendingHealthData();
  }

  /// Serializes uploads and drains revisions created while an older upload is
  /// in flight. This prevents an older PUT from completing after a newer one
  /// and becoming the server's final profile snapshot.
  Future<bool> syncPendingHealthData() {
    final operation = _syncTail.then((_) => _drainPendingHealthData());
    _syncTail = operation.then<void>(
      (_) {},
      onError: (Object _, StackTrace _) {},
    );
    return operation;
  }

  Future<bool> _drainPendingHealthData() async {
    while (true) {
      final pending = await _database.getPendingHealthDataSync();
      if (pending == null) return true;
      try {
        await _uploadProfile(_normalizeForUpload(pending.healthData));
        if (await _database.markHealthDataSynced(pending.revision)) return true;
        // A newer local edit replaced this revision while the request was in
        // flight. Send that snapshot before releasing the serialized queue.
      } catch (_) {
        return false;
      }
    }
  }

  HealthData _normalizeForUpload(HealthData healthData) {
    if (!healthData.hasDateOfBirth()) return healthData;
    final dateOfBirth = iso8601DateToDateTime(healthData.dateOfBirth);
    if (dateOfBirth == null) return healthData;
    final normalized = healthData.deepCopy();
    normalized.dateOfBirth = dateTimeToIso8601Date(dateOfBirth);
    return normalized;
  }
}
