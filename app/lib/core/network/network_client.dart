import 'dart:convert';
import 'dart:io';

import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/network/firebase_performance_interceptor.dart';
import 'package:calorify/core/network/rate_limit_exception.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:i18n/i18n.dart';
import 'package:measure_dio/measure_dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:protobuf/protobuf.dart';

class NetworkClient {
  NetworkClient._(this._dio);

  final Dio _dio;

  static final NetworkClient instance = NetworkClient._(_buildDio());

  Dio get client => _dio;

  static Dio _buildDio() {
    final options = BaseOptions(
      baseUrl: EnvConfig.instance.apiBaseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 10),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    final dio = Dio(options);

    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      final client = HttpClient();
      client.idleTimeout = const Duration(seconds: 60);
      return client;
    };

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final authToken = AuthService.instance.authToken;
          if (authToken != null) {
            options.headers['Authorization'] = 'Bearer $authToken';
          }

          final locale = LocaleSettings.currentLocale.languageCode;
          options.headers['Accept-Language'] = locale;

          handler.next(options);
        },
        onError: (exception, handler) {
          if (exception.response?.statusCode == 429) {
            return handler.reject(
              RateLimitException(
                requestOptions: exception.requestOptions,
                response: exception.response,
                message: t.errors.rateLimitExceeded,
              ),
            );
          }
          handler.next(exception);
        },
      ),
    );

    dio.interceptors.add(FirebasePerformanceInterceptor());
    dio.interceptors.add(MsrInterceptor());

    if (kDebugMode || EnvConfig.instance.isStaging) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: false,
          responseBody: true,
          responseHeader: false,
          compact: true,
        ),
      );
    }

    return dio;
  }

  Future<RespT>
  apiCall<ReqT extends GeneratedMessage, RespT extends GeneratedMessage>(
    String endpoint,
    RespT Function() parseResponse, {
    required ReqT request,
    bool processError = true,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        endpoint,
        data: request.toProto3Json(),
      );

      return parseResponse()..mergeFromProto3Json(response.data!);
    } on DioException catch (exception) {
      if (processError) {
        _handleError(exception, endpoint);
      }
      rethrow;
    }
  }

  void _handleError(DioException exception, String endpoint) {
    // Error handling can be extended with error reporting if needed
  }

  Future<Stream<T>> streamPost<T>(
    String endpoint,
    T Function(Map<String, dynamic>) parseEvent, {
    required Object data,
  }) async {
    try {
      final response = await _dio.post<ResponseBody>(
        endpoint,
        data: data,
        options: Options(
          responseType: ResponseType.stream,
          headers: {'Accept': 'application/x-ndjson'},
        ),
      );

      final responseBody = response.data;
      if (responseBody == null) {
        throw DioException(
          requestOptions: response.requestOptions,
          message: 'Empty streamed response',
        );
      }

      return utf8.decoder
          .bind(responseBody.stream)
          .transform(const LineSplitter())
          .where((line) => line.trim().isNotEmpty)
          .map((line) => jsonDecode(line) as Map<String, dynamic>)
          .map(parseEvent);
    } on DioException catch (exception) {
      _handleError(exception, endpoint);
      rethrow;
    }
  }
}
