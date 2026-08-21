/// Utility functions for converting between protobuf int64 timestamps, ISO 8601 strings, and Dart DateTime.
///
/// Protobuf timestamps are stored as int64 (milliseconds since Unix epoch in UTC).
/// These utilities handle timezone conversions properly:
/// - When converting from protobuf to Dart: UTC timestamp is converted to local time
/// - When converting from Dart to protobuf: DateTime is converted to UTC first, then to milliseconds
/// - ISO strings are stored in UTC format for consistency
library;

import 'package:fixnum/fixnum.dart';
import 'package:intl/intl.dart';

extension DateTimeHuman on DateTime {
  String get formatted {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.isNegative) {
      return DateFormat('d MMM yyyy, HH:mm').format(this);
    }

    if (now.year == year && now.month == month && now.day == day) {
      if (difference.inSeconds < 5) {
        return 'just now';
      } else if (difference.inSeconds < 60) {
        return '${difference.inSeconds} seconds ago';
      } else if (difference.inMinutes == 1) {
        return 'a minute ago';
      } else if (difference.inMinutes < 10) {
        return 'few minutes ago';
      } else if (difference.inMinutes < 60) {
        return '${difference.inMinutes} minutes ago';
      } else if (difference.inHours == 1) {
        return '1 hour ago';
      } else if (difference.inHours < 24) {
        return '${difference.inHours} hours ago';
      } else {
        return 'today';
      }
    }

    final yesterday = DateTime(now.year, now.month, now.day - 1);
    if (yesterday.year == year &&
        yesterday.month == month &&
        yesterday.day == day) {
      return 'yesterday';
    }

    if (now.year == year) {
      return DateFormat('d MMM').format(this);
    }

    return DateFormat('d MMM yyyy').format(this);
  }
}

/// Converts a protobuf int64 timestamp to an ISO 8601 string in UTC.
///
/// The protobuf timestamp is in milliseconds since Unix epoch (UTC),
/// and this function converts it to an ISO string in UTC format for storage in the database.
///
/// Returns null if the timestamp is null or invalid.
String? timestampToIso8601String(Object? timestamp) {
  if (timestamp == null) return null;
  try {
    final milliseconds = (timestamp as Int64).toInt();
    final utcDateTime = DateTime.fromMillisecondsSinceEpoch(
      milliseconds,
      isUtc: true,
    );
    // Return ISO string in UTC format
    return utcDateTime.toUtc().toIso8601String();
  } catch (e) {
    return null;
  }
}

/// Converts an ISO 8601 string to a Dart DateTime object.
///
/// The string is parsed and returned as a DateTime object.
/// If the string doesn't include timezone info, it's assumed to be UTC.
///
/// Returns null if the string is null, empty, or invalid.
DateTime? iso8601StringToDateTime(String? isoString) {
  if (isoString == null || isoString.isEmpty) return null;
  try {
    final dateTime = DateTime.parse(isoString);
    // DateTime.parse treats offset-less values as local. The storage contract
    // for this helper is UTC, so construct an equivalent UTC value instead of
    // shifting it by the device's offset.
    final hasOffset = RegExp(
      r'(?:[zZ]|[+-]\d{2}:?\d{2})$',
    ).hasMatch(isoString.trim());
    if (hasOffset) return dateTime.toUtc();
    return DateTime.utc(
      dateTime.year,
      dateTime.month,
      dateTime.day,
      dateTime.hour,
      dateTime.minute,
      dateTime.second,
      dateTime.millisecond,
      dateTime.microsecond,
    );
  } catch (e) {
    return null;
  }
}

/// Serializes a civil calendar date without applying a timezone conversion.
String dateTimeToIso8601Date(DateTime date) =>
    '${date.year.toString().padLeft(4, '0')}-'
    '${date.month.toString().padLeft(2, '0')}-'
    '${date.day.toString().padLeft(2, '0')}';

/// Parses an ISO calendar date as local midnight.
///
/// This is for civil values such as birthdays, not instants. Legacy timestamp
/// values are converted to local time before their calendar fields are read.
DateTime? iso8601DateToDateTime(String? value) {
  if (value == null || value.isEmpty) return null;
  try {
    final trimmed = value.trim();
    final dateOnly = RegExp(r'^(\d{4})-(\d{2})-(\d{2})$').firstMatch(trimmed);
    if (dateOnly != null) {
      final year = int.parse(dateOnly.group(1)!);
      final month = int.parse(dateOnly.group(2)!);
      final day = int.parse(dateOnly.group(3)!);
      final result = DateTime(year, month, day);
      if (result.year != year || result.month != month || result.day != day) {
        return null;
      }
      return result;
    }

    final legacy = DateTime.parse(trimmed).toLocal();
    return DateTime(legacy.year, legacy.month, legacy.day);
  } catch (_) {
    return null;
  }
}

/// Converts a Dart DateTime to an ISO 8601 string in UTC.
///
/// The DateTime is converted to UTC first, then formatted as an ISO string.
/// This is the format used for storage in the database.
String dateTimeToIso8601String(DateTime dateTime) {
  final utcDateTime = dateTime.isUtc ? dateTime : dateTime.toUtc();
  return utcDateTime.toIso8601String();
}
