import 'package:dio/dio.dart';

class RateLimitException extends DioException {
  RateLimitException({
    required super.requestOptions,
    super.response,
    required this.message,
  });

  @override
  final String message;

  @override
  String toString() => message;
}
