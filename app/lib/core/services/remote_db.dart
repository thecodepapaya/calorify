import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/services/sync_service.dart';
import 'package:models/models.dart';

class RemoteDb {
  Future<void> saveFcmToken(String token) async {
    try {
      final payload = FcmToken(token: token);
      await SyncService.instance.enqueueFcmToken(payload);
    } catch (e) {
      // Handle exceptions, e.g., log to a crash reporting service
    }
  }

  Future<void> updateUserProfile(UserProfile profile) async {
    try {
      await NetworkClient.instance.client.put(
        '/api/v1/users/profile',
        data: profile.writeToBuffer(),
      );
    } catch (e) {
      // Handle exceptions
    }
  }
}
