import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/network/network_client.dart';
import 'package:models/models.dart';

abstract interface class ProfileRemoteDataSource {
  Future<void> replaceUserProfile(UserProfile profile);
}

class NetworkProfileRemoteDataSource implements ProfileRemoteDataSource {
  NetworkProfileRemoteDataSource({required NetworkClient networkClient})
    : _networkClient = networkClient;

  final NetworkClient _networkClient;

  @override
  Future<void> replaceUserProfile(UserProfile profile) async {
    await _networkClient.apiCall<UserProfile, ApiResult>(
      '/api/v1/user/profile',
      ApiResult.new,
      request: profile,
      method: ProtoHttpMethod.put,
    );
  }
}

class ProfileRepository {
  ProfileRepository({
    required DatabaseInterface database,
    required ProfileRemoteDataSource remote,
  }) : _database = database,
       _remote = remote;

  final DatabaseInterface _database;
  final ProfileRemoteDataSource _remote;
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
        await _remote.replaceUserProfile(pending.profile);
        if (await _database.markProfileSynced(pending.revision)) return true;
        // A newer local edit replaced this revision while the request was in
        // flight. Send that snapshot before releasing the serialized queue.
      } catch (_) {
        return false;
      }
    }
  }
}
