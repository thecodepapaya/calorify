import 'package:calorify_watch/core/config/env_config.dart';
import 'package:calorify_watch/core/services/watch_auth_session.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:protobuf/protobuf.dart';

/// Lightweight Dio-based network client for the watch app.
///
/// Reuses the phone app's authenticated Firebase session so watch-originated
/// analysis requests are attributed to the same backend user.
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

    // Attach the phone app's Firebase ID token on every request.
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          try {
            final session = await WatchAuthSession.instance.getSession();
            if (session != null) {
              options.headers['Authorization'] = 'Bearer ${session.authToken}';
              options.headers['X-Calorify-User-Id'] = session.userId;
              if (session.fcmToken != null && session.fcmToken!.isNotEmpty) {
                options.headers['X-Calorify-Phone-Fcm-Token'] =
                    session.fcmToken;
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

  /// Proto3 JSON over HTTP: GET when [request] is null, otherwise POST.
  Future<RespT> apiCall<ReqT extends GeneratedMessage, RespT extends GeneratedMessage>(
    String endpoint,
    RespT Function() parseResponse, {
    ReqT? request,
  }) async {
    final session = await WatchAuthSession.instance.getSession(
      refreshIfNeeded: true,
    );
    if (session == null || session.authToken.isEmpty) {
      throw StateError(
        'Open Calorify on your phone to refresh watch authentication.',
      );
    }

    final response = request == null
        ? await _dio.get<Map<String, dynamic>>(endpoint)
        : await _dio.post<Map<String, dynamic>>(
            endpoint,
            data: request.toProto3Json(),
          );
    final data = response.data;
    if (data == null) {
      throw StateError(
        'Empty response from $endpoint (status ${response.statusCode})',
      );
    }
    return parseResponse()..mergeFromProto3Json(data);
  }
}
