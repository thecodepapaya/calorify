import 'package:calorify/core/network/network_client.dart';
import 'package:models/models.dart';

class ProfileRepository {
  Future<void> updateUserProfile(UserProfile profile) async {
    try {
      await NetworkClient.instance.client.put(
        '/api/v1/users/profile',
        data: profile,
      );
    } catch (e) {
      // Handle exceptions
    }
  }
}
