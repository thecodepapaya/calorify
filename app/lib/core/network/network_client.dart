import 'dart:convert';
import 'dart:io';

import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/network/firebase_performance_interceptor.dart';
import 'package:calorify/core/network/network_request_cancellation.dart';
import 'package:calorify/core/network/rate_limit_exception.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:i18n/i18n.dart';
import 'package:measure_dio/measure_dio.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:protobuf/protobuf.dart';

enum ProtoHttpMethod { get, post, put }

class NetworkClient {
  NetworkClient._(this._dio);

  @visibleForTesting
  NetworkClient.forTesting(Dio dio) : _dio = dio;

  final Dio _dio;

  static final NetworkClient instance = NetworkClient._(_buildDio());
  static final Future<PackageInfo> _packageInfo = PackageInfo.fromPlatform();

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
        onRequest: (options, handler) async {
          if (_isApiRequest(options)) {
            try {
              final packageInfo = await _packageInfo;
              options.headers['X-Calorify-App-Version'] = packageInfo.version;
              options.headers['X-Calorify-App-Build'] = packageInfo.buildNumber;
            } on Object {
              // Keep the API usable if native package metadata is unavailable.
              // Version-gated backend capabilities will safely remain off.
            }
            final token = await AuthService.instance.resolveAuthToken();
            if (token != null) {
              options.headers['Authorization'] = 'Bearer $token';
            }
            try {
              final timeZone = await FlutterTimezone.getLocalTimezone();
              options.headers['X-Time-Zone'] = timeZone.identifier;
            } on Object {
              // Requests still work without this optional personalization
              // header. The backend falls back to geo-derived timezone data.
            }
          }

          final locale =
              LocaleSettings.currentLocale.flutterLocale.toLanguageTag();
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

    if (kDebugMode || EnvConfig.instance.usesStagingIdentity) {
      dio.interceptors.add(
        PrettyDioLogger(
          // Authorization and device-identifying headers must never reach logs.
          requestHeader: false,
          requestBody: false,
          // Meal analysis and profile responses contain personal health data.
          responseBody: false,
          responseHeader: false,
          compact: true,
          logPrint: (object) => debugPrint(object.toString()),
        ),
      );
    }

    return dio;
  }

  static bool _isApiRequest(RequestOptions options) {
    final apiBaseUri = Uri.parse(EnvConfig.instance.apiBaseUrl);
    return options.uri.scheme == apiBaseUri.scheme &&
        options.uri.host == apiBaseUri.host &&
        options.uri.port == apiBaseUri.port;
  }

  /// Sends and decodes proto JSON over HTTP.
  ///
  /// When [method] is omitted, requests without a body use GET and requests
  /// with a body use POST. Pass PUT explicitly for full-resource replacement.
  Future<RespT>
  apiCall<ReqT extends GeneratedMessage, RespT extends GeneratedMessage>(
    String endpoint,
    RespT Function() parseResponse, {
    ReqT? request,
    ProtoHttpMethod? method,
  }) async {
    final resolvedMethod =
        method ??
        (request == null ? ProtoHttpMethod.get : ProtoHttpMethod.post);
    final response = switch (resolvedMethod) {
      ProtoHttpMethod.get => await _dio.get<Map<String, dynamic>>(endpoint),
      ProtoHttpMethod.post => await _dio.post<Map<String, dynamic>>(
        endpoint,
        data: request?.toProto3Json(),
      ),
      ProtoHttpMethod.put => await _dio.put<Map<String, dynamic>>(
        endpoint,
        data: request?.toProto3Json(),
      ),
    };
    return parseResponse()..mergeFromProto3Json(response.data!);
  }

  Future<Stream<T>> streamPost<T>(
    String endpoint,
    T Function(Map<String, dynamic>) parseEvent, {
    required Object data,
    Duration? receiveTimeout,
    NetworkRequestCancellation? cancellation,
  }) async {
    final payload = data is GeneratedMessage ? data.toProto3Json() : data;
    final response = await _dio.post<ResponseBody>(
      endpoint,
      data: payload,
      options: Options(
        responseType: ResponseType.stream,
        headers: {'Accept': 'application/x-ndjson'},
        receiveTimeout: receiveTimeout ?? const Duration(minutes: 1),
      ),
      cancelToken: cancellation?.cancelToken,
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
        .map((event) {
          if (kDebugMode || EnvConfig.instance.usesStagingIdentity) {
            debugPrint('[stream:$endpoint] step=${event['step'] ?? 'unknown'}');
          }
          return event;
        })
        .map(parseEvent);
  }
}
