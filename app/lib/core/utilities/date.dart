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
