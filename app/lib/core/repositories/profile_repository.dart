import 'package:calorify/core/network/network_client.dart';
import 'package:models/models.dart';

class ProfileRepository {
  Future<void> updateUserProfile(UserProfile profile) async {
    await NetworkClient.instance.apiCall<UserProfile, ApiResult>(
      '/api/v1/user/profile',
      ApiResult.new,
      request: profile,
    );
  }
}
