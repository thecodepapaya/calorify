/// Serializes a civil calendar date without applying a timezone conversion.
String dateTimeToIso8601Date(DateTime date) =>
    '${date.year.toString().padLeft(4, '0')}-'
    '${date.month.toString().padLeft(2, '0')}-'
    '${date.day.toString().padLeft(2, '0')}';

/// Parses an ISO calendar date as local midnight.
///
/// This is for civil values such as birthdays, not instants. Legacy timestamp
/// suffixes are ignored so a device timezone can never change the saved day.
DateTime? iso8601DateToDateTime(String? value) {
  if (value == null || value.isEmpty) return null;
  try {
    final trimmed = value.trim();
    final civilDate = RegExp(
      r'^(\d{4})-(\d{2})-(\d{2})(?:$|[T ])',
    ).firstMatch(trimmed);
    if (civilDate != null) {
      final year = int.parse(civilDate.group(1)!);
      final month = int.parse(civilDate.group(2)!);
      final day = int.parse(civilDate.group(3)!);
      final result = DateTime(year, month, day);
      if (result.year != year || result.month != month || result.day != day) {
        return null;
      }
      return result;
    }
    return null;
  } catch (_) {
    return null;
  }
}

/// Parses an ISO 8601 instant and normalizes it to UTC.
///
/// Offset-less legacy values are interpreted as UTC rather than device-local
/// time because this codec is used for persisted contract timestamps.
DateTime? iso8601StringToDateTime(String? isoString) {
  if (isoString == null || isoString.isEmpty) return null;
  try {
    final dateTime = DateTime.parse(isoString);
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
  } catch (_) {
    return null;
  }
}

/// Converts an instant to the UTC ISO 8601 representation used in contracts.
String dateTimeToIso8601String(DateTime dateTime) {
  final utcDateTime = dateTime.isUtc ? dateTime : dateTime.toUtc();
  return utcDateTime.toIso8601String();
}
