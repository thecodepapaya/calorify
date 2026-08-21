import 'package:calorify/core/services/banner_selection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:models/models.dart';

const kBannersCollection = 'app_config/banners';

/// Enabled; `minimumBuildInclusive <= build`; `maximumBuildExclusive > build`.
/// Then [`Banner.priority`] enum index (desc), [`Banner.createdAt`] (desc), document id (asc).
///
/// Composite index on `banners`: `enabled` ==, `minimumBuildInclusive` <=, `maximumBuildExclusive` >.
Stream<BannerSelection?> bannerSelectionStream(String buildNumberRaw) {
  final buildNum = int.tryParse(buildNumberRaw.trim());
  if (buildNum == null) {
    return Stream<BannerSelection?>.value(null);
  }

  final query = FirebaseFirestore.instance
      .collection(kBannersCollection)
      .where('enabled', isEqualTo: true)
      .where('minimumBuildInclusive', isLessThanOrEqualTo: buildNum)
      .where('maximumBuildExclusive', isGreaterThan: buildNum);

  return query.snapshots().map(selectBannerFromDocuments);
}

BannerSelection? selectBannerFromDocuments(
  QuerySnapshot<Map<String, dynamic>> snapshot,
) {
  final parsed = <BannerSelection>[];
  for (final doc in snapshot.docs) {
    final b = Banner.create();
    try {
      b.mergeFromProto3Json(_toProto3Json(doc.data()));
    } catch (_) {
      continue;
    }
    parsed.add(BannerSelection(documentId: doc.id, banner: b));
  }
  return selectBestBanner(parsed);
}

/// Ignore malformed banners without an explicit priority. Then prefer larger
/// [`Banner.priority`] enum values (LOW=0 … HIGH=2), newer
/// [`Banner.createdAt`], and finally document id.
BannerSelection? selectBestBanner(List<BannerSelection> candidates) {
  final eligible = candidates.where((candidate) => candidate.banner.hasPriority()).toList();
  if (eligible.isEmpty) return null;
  eligible.sort((a, b) {
    final pr = b.banner.priority.value.compareTo(a.banner.priority.value);
    if (pr != 0) return pr;
    final tc = b.banner.createdAt.compareTo(a.banner.createdAt);
    if (tc != 0) return tc;
    return a.documentId.compareTo(b.documentId);
  });
  return eligible.first;
}

/// Firestore → proto3 JSON: [Timestamp] → Unix ms for int64 fields; nested maps/lists recurse.
Map<String, dynamic> _toProto3Json(Map<String, dynamic> data) {
  return data.map((k, v) => MapEntry(k, _proto3Value(v)));
}

dynamic _proto3Value(dynamic value) {
  if (value is Timestamp) {
    return value.millisecondsSinceEpoch;
  }
  if (value is Map) {
    return value.map((dynamic k, dynamic v) => MapEntry(k.toString(), _proto3Value(v)));
  }
  if (value is Iterable && value is! String) {
    return value.map(_proto3Value).toList();
  }
  return value;
}
