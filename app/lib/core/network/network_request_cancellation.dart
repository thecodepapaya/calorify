import 'package:dio/dio.dart';

/// Request ownership for callers that need to stop an HTTP request before its
/// response stream has been established.
final class NetworkRequestCancellation {
  final CancelToken _token = CancelToken();

  bool get isCancelled => _token.isCancelled;

  CancelToken get cancelToken => _token;

  void cancel() {
    if (!_token.isCancelled) _token.cancel('Request owner was disposed');
  }
}
