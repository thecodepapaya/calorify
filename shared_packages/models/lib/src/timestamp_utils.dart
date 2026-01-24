/// Utility functions for converting between protobuf int64 timestamps, ISO 8601 strings, and Dart DateTime.
///
/// Protobuf timestamps are stored as int64 (milliseconds since Unix epoch in UTC).
/// These utilities handle timezone conversions properly:
/// - When converting from protobuf to Dart: UTC timestamp is converted to local time
/// - When converting from Dart to protobuf: DateTime is converted to UTC first, then to milliseconds
/// - ISO strings are stored in UTC format for consistency
library;

import 'package:fixnum/fixnum.dart';

/// Converts a protobuf int64 timestamp to a Dart DateTime in local timezone.
///
/// The protobuf timestamp is in milliseconds since Unix epoch (UTC),
/// and this function converts it to the local timezone for display purposes.
///
/// Returns null if the timestamp is null or invalid.
DateTime? timestampToLocalDateTime(Object? timestamp) {
  if (timestamp == null) return null;
  try {
    // Convert Int64 to int, then to DateTime
    final milliseconds = (timestamp as Int64).toInt();
    final utcDateTime = DateTime.fromMillisecondsSinceEpoch(
      milliseconds,
      isUtc: true,
    );
    // Convert UTC to local timezone
    return utcDateTime.toLocal();
  } catch (e) {
    return null;
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

/// Converts a Dart DateTime to a protobuf int64 timestamp.
///
/// The DateTime is first converted to UTC (if it has timezone info),
/// then converted to milliseconds since Unix epoch.
///
/// Returns an Int64 representing milliseconds since Unix epoch (UTC).
Int64 dateTimeToTimestamp(DateTime dateTime) {
  // Ensure the DateTime is in UTC
  final utcDateTime = dateTime.isUtc ? dateTime : dateTime.toUtc();
  // Convert to milliseconds since epoch
  return Int64(utcDateTime.millisecondsSinceEpoch);
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

/// Converts an ISO 8601 string to a protobuf int64 timestamp.
///
/// The string is parsed as a DateTime, converted to UTC, then converted
/// to milliseconds since Unix epoch.
///
/// Returns null if the string is null, empty, or invalid.
Int64? iso8601StringToTimestamp(String? isoString) {
  final dateTime = iso8601StringToDateTime(isoString);
  if (dateTime == null) return null;
  return dateTimeToTimestamp(dateTime);
}

/// Converts a Dart DateTime to an ISO 8601 string in UTC.
///
/// The DateTime is converted to UTC first, then formatted as an ISO string.
/// This is the format used for storage in the database.
String dateTimeToIso8601String(DateTime dateTime) {
  final utcDateTime = dateTime.isUtc ? dateTime : dateTime.toUtc();
  return utcDateTime.toIso8601String();
}
