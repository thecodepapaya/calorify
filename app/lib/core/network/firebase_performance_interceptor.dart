import 'package:dio/dio.dart';
import 'package:firebase_performance/firebase_performance.dart';

/// Interceptor for tracking API performance using Firebase Performance Monitoring
/// Tracks HTTP metrics including request/response times
class FirebasePerformanceInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Start HTTP metric tracking
    final httpMetric = FirebasePerformance.instance.newHttpMetric(
      options.uri.toString(),
      _convertMethod(options.method),
    );
    httpMetric.start();
    options.extra['http_metric'] = httpMetric;

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final httpMetric =
        response.requestOptions.extra['http_metric'] as HttpMetric?;
    if (httpMetric != null) {
      httpMetric.stop();
    }
    handler.next(response);
  }

  @override
  void onError(DioException error, ErrorInterceptorHandler handler) {
    final httpMetric = error.requestOptions.extra['http_metric'] as HttpMetric?;
    if (httpMetric != null) {
      httpMetric.stop();
    }
    handler.next(error);
  }

  /// Convert Dio HTTP method to Firebase Performance HttpMethod
  HttpMethod _convertMethod(String method) {
    switch (method.toUpperCase()) {
      case 'GET':
        return HttpMethod.Get;
      case 'POST':
        return HttpMethod.Post;
      case 'PUT':
        return HttpMethod.Put;
      case 'DELETE':
        return HttpMethod.Delete;
      case 'PATCH':
        return HttpMethod.Patch;
      case 'HEAD':
        return HttpMethod.Head;
      case 'OPTIONS':
        return HttpMethod.Options;
      default:
        return HttpMethod.Get;
    }
  }
}
