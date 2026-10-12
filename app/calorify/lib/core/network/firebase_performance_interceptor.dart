import 'package:dio/dio.dart';
import 'package:firebase_performance/firebase_performance.dart';

/// Interceptor for tracking API performance using Firebase Performance Monitoring.
/// Uses a private map to store metrics so they don't pollute request logs.
class FirebasePerformanceInterceptor extends Interceptor {
  final _metrics = <RequestOptions, HttpMetric>{};

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final metric = FirebasePerformance.instance.newHttpMetric(
      options.uri.toString(),
      _toHttpMethod(options.method),
    );
    metric.start();
    _metrics[options] = metric;
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _stopAndRemove(response.requestOptions);
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _stopAndRemove(err.requestOptions);
    handler.next(err);
  }

  void _stopAndRemove(RequestOptions options) {
    final metric = _metrics.remove(options);
    metric?.stop();
  }

  HttpMethod _toHttpMethod(String method) {
    return switch (method.toUpperCase()) {
      'GET' => HttpMethod.Get,
      'POST' => HttpMethod.Post,
      'PUT' => HttpMethod.Put,
      'DELETE' => HttpMethod.Delete,
      'PATCH' => HttpMethod.Patch,
      'HEAD' => HttpMethod.Head,
      'OPTIONS' => HttpMethod.Options,
      _ => HttpMethod.Get,
    };
  }
}
