import 'package:calorify_watch/core/config/env_config.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:protobuf/protobuf.dart';

/// Lightweight Dio-based network client for the watch app.
///
/// Uses Firebase Auth to attach a Bearer token so the backend can identify
/// the caller.  The watch signs in anonymously in [SplashScreen], so a token
/// is always available after initialisation.
class WatchNetworkClient {
  WatchNetworkClient._() : _dio = _buildDio();

  static final WatchNetworkClient instance = WatchNetworkClient._();

  final Dio _dio;

  static Dio _buildDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: EnvConfig.instance.apiBaseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 15),
        headers: const {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // Attach Firebase ID token on every request.
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          try {
            final user = FirebaseAuth.instance.currentUser;
            if (user != null) {
              final token = await user.getIdToken();
              if (token != null) {
                options.headers['Authorization'] = 'Bearer $token';
              }
            }
          } catch (e) {
            if (kDebugMode) debugPrint('[WatchNetworkClient] token error: $e');
          }
          handler.next(options);
        },
      ),
    );

    return dio;
  }

  /// POST [endpoint] with [request] serialised as proto3 JSON; deserialise the
  /// response into a new [RespT] instance produced by [parseResponse].
  Future<RespT>
  apiCall<ReqT extends GeneratedMessage, RespT extends GeneratedMessage>(
    String endpoint,
    RespT Function() parseResponse, {
    required ReqT request,
  }) async {
    final response = await _dio.post<Map<String, dynamic>>(
      endpoint,
      data: request.toProto3Json(),
    );
    return parseResponse()..mergeFromProto3Json(response.data!);
  }
}
