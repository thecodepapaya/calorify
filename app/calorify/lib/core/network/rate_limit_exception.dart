import 'package:dio/dio.dart';

class RateLimitException extends DioException {
  static const _fallbackMessage = 'Rate limit exceeded';

  RateLimitException({
    required super.requestOptions,
    super.response,
    required String message,
  }) : super(message: message);

  @override
  String get message => super.message ?? _fallbackMessage;

  @override
  String toString() => message;
}
