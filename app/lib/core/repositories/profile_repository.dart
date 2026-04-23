import 'package:calorify/core/network/network_client.dart';
import 'package:models/models.dart';

class ProfileRepository {
  Future<void> updateUserProfile(UserProfile profile) async {
    await NetworkClient.instance.client.put(
      '/api/v1/users/profile',
      data: profile.toProto3Json(),
    );
  }
}
