import 'package:calorify/core/network/dio_client.dart';
import 'package:calorify/core/services/sync_service.dart';
import 'package:dio/dio.dart';
import 'package:models/models.dart';

class RemoteDb {
  RemoteDb({Dio? dio}) : _dio = dio ?? DioClient.instance.client;

  final Dio _dio;

  Future<void> saveFcmToken(String token) async {
    try {
      final payload = FcmToken(token: token);
      // Enqueue for sync instead of direct call to ensure local-first approach
      await SyncService.instance.enqueueFcmToken(payload);
    } catch (e) {
      // Handle exceptions, e.g., log to a crash reporting service
    }
  }

  Future<void> updateUserProfile(UserProfile profile) async {
    try {
      await _dio.put('/api/v1/users/profile', data: profile.writeToBuffer());
    } catch (e) {
      // Handle exceptions
    }
  }
}
