import 'package:models/models.dart';

/// Parsed Firestore banner doc plus [documentId] for dismiss keying.
class BannerSelection {
  const BannerSelection({
    required this.documentId,
    required this.banner,
  });

  final String documentId;
  final Banner banner;
}
