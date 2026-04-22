import 'dart:async';
import 'dart:io';

import 'package:calorify/core/errors/app_error.dart';
import 'package:calorify/core/network/rate_limit_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  RequestOptions makeOptions() => RequestOptions(path: '/test');

  group('AppError.fromException', () {
    test('passes through existing AppError unchanged', () {
      const original = NetworkError(message: 'offline');
      expect(AppError.fromException(original), same(original));
    });

    test('maps RateLimitException to RateLimitError and carries retry-after', () {
      final response = Response<dynamic>(
        requestOptions: makeOptions(),
        statusCode: 429,
        headers: Headers.fromMap({'retry-after': ['42']}),
      );
      final exception = RateLimitException(
        requestOptions: makeOptions(),
        response: response,
        message: 'slow down',
      );

      final mapped = AppError.fromException(exception);
      expect(mapped, isA<RateLimitError>());
      expect(mapped.isRetryable, isTrue);
      expect((mapped as RateLimitError).retryAfter, const Duration(seconds: 42));
    });

    test('maps Dio connection timeout to NetworkError', () {
      final exception = DioException(
        requestOptions: makeOptions(),
        type: DioExceptionType.connectionTimeout,
      );
      final mapped = AppError.fromException(exception);
      expect(mapped, isA<NetworkError>());
      expect(mapped.isRetryable, isTrue);
    });

    test('maps bare SocketException to NetworkError', () {
      final mapped = AppError.fromException(const SocketException('no route'));
      expect(mapped, isA<NetworkError>());
      expect(mapped.isRetryable, isTrue);
    });

    test('maps Dio unknown wrapping SocketException to NetworkError', () {
      final exception = DioException(
        requestOptions: makeOptions(),
        type: DioExceptionType.unknown,
        error: const SocketException('dns fail'),
      );
      expect(AppError.fromException(exception), isA<NetworkError>());
    });

    test('maps 401 to AuthError (non-retryable)', () {
      final exception = DioException(
        requestOptions: makeOptions(),
        type: DioExceptionType.badResponse,
        response: Response<dynamic>(
          requestOptions: makeOptions(),
          statusCode: 401,
          data: {'detail': 'token expired'},
        ),
      );
      final mapped = AppError.fromException(exception);
      expect(mapped, isA<AuthError>());
      expect(mapped.isRetryable, isFalse);
      expect(mapped.message, 'token expired');
      expect((mapped as AuthError).statusCode, 401);
    });

    test('maps 403 to AuthError', () {
      final exception = DioException(
        requestOptions: makeOptions(),
        type: DioExceptionType.badResponse,
        response: Response<dynamic>(
          requestOptions: makeOptions(),
          statusCode: 403,
        ),
      );
      expect(AppError.fromException(exception), isA<AuthError>());
    });

    test('maps 429 bad response to RateLimitError', () {
      final exception = DioException(
        requestOptions: makeOptions(),
        type: DioExceptionType.badResponse,
        response: Response<dynamic>(
          requestOptions: makeOptions(),
          statusCode: 429,
          headers: Headers.fromMap({'retry-after': ['5']}),
        ),
      );
      final mapped = AppError.fromException(exception);
      expect(mapped, isA<RateLimitError>());
      expect((mapped as RateLimitError).retryAfter, const Duration(seconds: 5));
    });

    test('maps 400 to ValidationError (non-retryable)', () {
      final exception = DioException(
        requestOptions: makeOptions(),
        type: DioExceptionType.badResponse,
        response: Response<dynamic>(
          requestOptions: makeOptions(),
          statusCode: 400,
          data: {'detail': 'missing field'},
        ),
      );
      final mapped = AppError.fromException(exception);
      expect(mapped, isA<ValidationError>());
      expect(mapped.isRetryable, isFalse);
      expect(mapped.message, 'missing field');
    });

    test('maps 500 to ServerError (retryable)', () {
      final exception = DioException(
        requestOptions: makeOptions(),
        type: DioExceptionType.badResponse,
        response: Response<dynamic>(
          requestOptions: makeOptions(),
          statusCode: 503,
        ),
      );
      final mapped = AppError.fromException(exception);
      expect(mapped, isA<ServerError>());
      expect(mapped.isRetryable, isTrue);
      expect((mapped as ServerError).statusCode, 503);
    });

    test('extracts server detail from {detail}, {message}, or string body', () {
      final cases = <Object, String>{
        {'detail': 'from detail'}: 'from detail',
        {'message': 'from message'}: 'from message',
        'raw string': 'raw string',
      };

      for (final entry in cases.entries) {
        final exception = DioException(
          requestOptions: makeOptions(),
          type: DioExceptionType.badResponse,
          response: Response<dynamic>(
            requestOptions: makeOptions(),
            statusCode: 400,
            data: entry.key,
          ),
        );
        final mapped = AppError.fromException(exception);
        expect(mapped.message, entry.value, reason: 'body=${entry.key}');
      }
    });

    test('maps FormatException to ParseError (non-retryable)', () {
      final mapped = AppError.fromException(const FormatException('bad json'));
      expect(mapped, isA<ParseError>());
      expect(mapped.isRetryable, isFalse);
    });

    test('maps TimeoutException to NetworkError', () {
      final mapped = AppError.fromException(TimeoutException('slow'));
      expect(mapped, isA<NetworkError>());
    });

    test('falls back to UnknownError for arbitrary values', () {
      final mapped = AppError.fromException('weird string');
      expect(mapped, isA<UnknownError>());
      expect(mapped.isRetryable, isTrue);
    });
  });
}
