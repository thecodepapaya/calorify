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

    final yesterday = now.subtract(const Duration(days: 1));
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
    // If the string doesn't have timezone info, assume UTC
    return dateTime.isUtc ? dateTime : dateTime.toUtc();
  } catch (e) {
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
