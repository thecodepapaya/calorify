import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/network/network_client.dart';
import 'package:models/models.dart';

class ProfileRepository {
  ProfileRepository({
    required DatabaseInterface database,
    required NetworkClient networkClient,
  }) : _database = database,
       _uploadProfile = ((profile) async {
         await networkClient.apiCall<UserProfile, ApiResult>(
           '/api/v1/user/profile',
           ApiResult.new,
           request: profile,
           method: ProtoHttpMethod.put,
         );
       });

  ProfileRepository.forTesting({
    required DatabaseInterface database,
    required Future<void> Function(UserProfile profile) uploadProfile,
  }) : _database = database,
       _uploadProfile = uploadProfile;

  final DatabaseInterface _database;
  final Future<void> Function(UserProfile profile) _uploadProfile;
  Future<void> _syncTail = Future<void>.value();

  Future<UserProfile?> getUserProfile() => _database.getUserProfile();

  Future<void> saveLocalProfile(UserProfile profile) =>
      _database.saveUserProfile(profile);

  /// Saves locally first and then attempts the durable pending upload. Network
  /// failure never discards or rolls back the local edit.
  Future<bool> saveUserProfile(UserProfile profile) async {
    await saveLocalProfile(profile);
    return syncPendingProfile();
  }

  Future<bool> saveProfile({
    required UserProfile profile,
    required int dailyCalorieGoal,
  }) {
    final updated = profile.deepCopy();
    if (dailyCalorieGoal > 0) {
      updated.dailyCalorieGoal = dailyCalorieGoal;
    } else {
      updated.clearDailyCalorieGoal();
    }
    return saveUserProfile(updated);
  }

  Future<bool> updateDailyCalorieGoal(int goal) async {
    await _database.setDailyCalorieGoal(goal);
    return syncPendingProfile();
  }

  /// Serializes uploads and drains revisions created while an older upload is
  /// in flight. This prevents an older PUT from completing after a newer one
  /// and becoming the server's final profile snapshot.
  Future<bool> syncPendingProfile() {
    final operation = _syncTail.then((_) => _drainPendingProfiles());
    _syncTail = operation.then<void>(
      (_) {},
      onError: (Object _, StackTrace _) {},
    );
    return operation;
  }

  Future<bool> _drainPendingProfiles() async {
    while (true) {
      final pending = await _database.getPendingProfileSync();
      if (pending == null) return true;
      try {
        await _uploadProfile(_normalizeForUpload(pending.profile));
        if (await _database.markProfileSynced(pending.revision)) return true;
        // A newer local edit replaced this revision while the request was in
        // flight. Send that snapshot before releasing the serialized queue.
      } catch (_) {
        return false;
      }
    }
  }

  UserProfile _normalizeForUpload(UserProfile profile) {
    if (!profile.hasDateOfBirth()) return profile;
    final dateOfBirth = iso8601DateToDateTime(profile.dateOfBirth);
    if (dateOfBirth == null) return profile;
    final normalized = profile.deepCopy();
    normalized.dateOfBirth = dateTimeToIso8601Date(dateOfBirth);
    return normalized;
  }
}
