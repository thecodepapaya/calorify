/// Typed application error hierarchy used across the app.
///
/// Replaces scattered `catch (e)` handlers with a small set of concrete
/// variants so UI layers can branch on error kind (show a retry button on
/// transient failures, force a re-auth on [AuthError], etc.) instead of
/// string-matching dynamic exceptions.
///
/// Construct via [AppError.fromException] from any raw error — it maps
/// Dio/Socket/FormatException/RateLimitException into the right variant.
library;

import 'dart:async';
import 'dart:io';

import 'package:calorify/core/network/rate_limit_exception.dart';
import 'package:dio/dio.dart';

/// Base class for all typed app errors. Sealed so the compiler can enforce
/// exhaustive `switch` handling at call sites.
sealed class AppError implements Exception {
  const AppError({required this.message, this.cause, this.stackTrace});

  /// User-facing message. Callers may override this with a translated string
  /// before displaying — the default is meant to be safe to show as a fallback.
  final String message;

  /// Original exception, if any. Useful for logging/telemetry, not for UI.
  final Object? cause;

  /// Stack trace from the original exception.
  final StackTrace? stackTrace;

  /// Whether this error is typically worth offering a retry for. The UI can
  /// use this to decide whether to render a retry button.
  bool get isRetryable;

  /// Convert any thrown value into an [AppError]. Always prefer this over
  /// constructing variants directly — it keeps mapping in one place.
  static AppError fromException(Object error, [StackTrace? stackTrace]) {
    if (error is AppError) return error;

    if (error is RateLimitException) {
      final retryAfter = _retryAfter(error.response);
      return RateLimitError(
        message: error.message,
        retryAfter: retryAfter,
        cause: error,
        stackTrace: stackTrace,
      );
    }

    if (error is DioException) {
      return _fromDioException(error, stackTrace);
    }

    if (error is SocketException || error is HttpException) {
      return NetworkError(
        message: 'Network error. Please check your internet connection.',
        cause: error,
        stackTrace: stackTrace,
      );
    }

    if (error is TimeoutException) {
      return NetworkError(
        message: 'Request timed out. Please try again.',
        cause: error,
        stackTrace: stackTrace,
      );
    }

    if (error is FormatException) {
      return ParseError(
        message: 'We could not read the server response.',
        cause: error,
        stackTrace: stackTrace,
      );
    }

    return UnknownError(
      message: 'Something went wrong. Please try again later.',
      cause: error,
      stackTrace: stackTrace,
    );
  }

  static AppError _fromDioException(
    DioException error,
    StackTrace? stackTrace,
  ) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return NetworkError(
          message: 'Network error. Please check your internet connection.',
          cause: error,
          stackTrace: stackTrace,
        );
      case DioExceptionType.cancel:
        return UnknownError(
          message: 'Request was cancelled.',
          cause: error,
          stackTrace: stackTrace,
        );
      case DioExceptionType.badCertificate:
        return NetworkError(
          message: 'Secure connection failed. Please try again.',
          cause: error,
          stackTrace: stackTrace,
        );
      case DioExceptionType.unknown:
        // Dio wraps non-HTTP failures (e.g. SocketException) as `unknown`.
        final inner = error.error;
        if (inner is SocketException || inner is HttpException) {
          return NetworkError(
            message: 'Network error. Please check your internet connection.',
            cause: error,
            stackTrace: stackTrace,
          );
        }
        return UnknownError(
          message:
              error.message ?? 'Something went wrong. Please try again later.',
          cause: error,
          stackTrace: stackTrace,
        );
      case DioExceptionType.badResponse:
        return _fromBadResponse(error, stackTrace);
    }
  }

  static AppError _fromBadResponse(DioException error, StackTrace? stackTrace) {
    final status = error.response?.statusCode ?? 0;
    final serverDetail = _extractServerDetail(error.response?.data);

    if (status == 401 || status == 403) {
      return AuthError(
        message: serverDetail ?? 'You need to sign in to continue.',
        statusCode: status,
        cause: error,
        stackTrace: stackTrace,
      );
    }
    if (status == 429) {
      return RateLimitError(
        message:
            serverDetail ??
            "You've made too many requests. Please wait a moment.",
        retryAfter: _retryAfter(error.response),
        cause: error,
        stackTrace: stackTrace,
      );
    }
    if (status >= 400 && status < 500) {
      return ValidationError(
        message: serverDetail ?? 'Your request could not be processed.',
        statusCode: status,
        cause: error,
        stackTrace: stackTrace,
      );
    }
    if (status >= 500) {
      return ServerError(
        message:
            serverDetail ??
            'The server is having trouble. Please try again shortly.',
        statusCode: status,
        cause: error,
        stackTrace: stackTrace,
      );
    }
    return UnknownError(
      message: serverDetail ?? 'Something went wrong. Please try again later.',
      cause: error,
      stackTrace: stackTrace,
    );
  }

  static String? _extractServerDetail(Object? data) {
    if (data is Map) {
      final detail = data['detail'] ?? data['message'] ?? data['error'];
      if (detail is String && detail.trim().isNotEmpty) return detail;
    }
    if (data is String && data.trim().isNotEmpty) return data;
    return null;
  }

  static Duration? _retryAfter(Response<dynamic>? response) {
    final header = response?.headers.value('retry-after');
    if (header == null) return null;
    final seconds = int.tryParse(header);
    if (seconds != null) return Duration(seconds: seconds);
    return null;
  }

  @override
  String toString() => '$runtimeType: $message';
}

/// Connectivity / timeout / DNS / TLS failures. Worth offering a retry.
final class NetworkError extends AppError {
  const NetworkError({required super.message, super.cause, super.stackTrace});

  @override
  bool get isRetryable => true;
}

/// 401/403 from the server, or any local sign-in failure surfaced as an
/// [AppError]. UI should route users to sign in rather than retry blindly.
final class AuthError extends AppError {
  const AuthError({
    required super.message,
    this.statusCode,
    super.cause,
    super.stackTrace,
  });

  final int? statusCode;

  @override
  bool get isRetryable => false;
}

/// 5xx / upstream failures. Retryable, but typically after a short delay.
final class ServerError extends AppError {
  const ServerError({
    required super.message,
    this.statusCode,
    super.cause,
    super.stackTrace,
  });

  final int? statusCode;

  @override
  bool get isRetryable => true;
}

/// 429 Too Many Requests. Retryable, but the caller should respect
/// [retryAfter] when present.
final class RateLimitError extends AppError {
  const RateLimitError({
    required super.message,
    this.retryAfter,
    super.cause,
    super.stackTrace,
  });

  final Duration? retryAfter;

  @override
  bool get isRetryable => true;
}

/// 4xx client-side validation failures — bad input, missing fields, etc.
/// Not retryable without user intervention.
final class ValidationError extends AppError {
  const ValidationError({
    required super.message,
    this.statusCode,
    super.cause,
    super.stackTrace,
  });

  final int? statusCode;

  @override
  bool get isRetryable => false;
}

/// Response body could not be decoded / deserialized. Usually a client/server
/// contract drift; not worth retrying until fixed.
final class ParseError extends AppError {
  const ParseError({required super.message, super.cause, super.stackTrace});

  @override
  bool get isRetryable => false;
}

/// Fallback for anything we couldn't classify. Retryable by default since the
/// alternative — hiding a retry for a transient failure — is the worse UX.
final class UnknownError extends AppError {
  const UnknownError({required super.message, super.cause, super.stackTrace});

  @override
  bool get isRetryable => true;
}
