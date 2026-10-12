import 'package:calorify/core/services/app_banner_firestore.dart';
import 'package:calorify/core/services/banner_selection.dart';
import 'package:calorify/shared_widgets/app_banner_shell.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';

/// Defaults match Firestore docs from `push-banner`.
Banner _banner({
  required bool enabled,
  Map<String, String>? messages,
  BannerPriority priority = BannerPriority.LOW,
  bool dismissible = false,
  Int64? minimumBuildInclusive,
  Int64? maximumBuildExclusive,
  Int64? createdAt,
}) {
  final b = Banner.create()
    ..enabled = enabled
    ..priority = priority
    ..dismissible = dismissible
    ..minimumBuildInclusive = minimumBuildInclusive ?? Int64.ZERO
    ..maximumBuildExclusive = maximumBuildExclusive ?? Int64(2147483647)
    ..createdAt = createdAt ?? Int64.ZERO;
  if (messages != null) b.messagesByLocale.addAll(messages);
  return b;
}

void main() {
  group('selectBestBanner', () {
    test('prefers HIGH over LOW', () {
      final low = BannerSelection(
        documentId: 'a',
        banner: _banner(enabled: true, messages: {'en': 'a'}, priority: BannerPriority.LOW),
      );
      final high = BannerSelection(
        documentId: 'b',
        banner: _banner(enabled: true, messages: {'en': 'b'}, priority: BannerPriority.HIGH),
      );
      expect(selectBestBanner([low, high])!.documentId, 'b');
    });

    test('tie-break by document id when priority and created_at tie', () {
      expect(
        selectBestBanner([
          BannerSelection(documentId: 'z', banner: _banner(enabled: true, messages: {'en': 'x'})),
          BannerSelection(documentId: 'a', banner: _banner(enabled: true, messages: {'en': 'y'})),
        ])!.documentId,
        'a',
      );
    });

    test('prefers newer created_at when priority ties', () {
      expect(
        selectBestBanner([
          BannerSelection(
            documentId: 'older',
            banner: _banner(
              enabled: true,
              messages: {'en': 'a'},
              priority: BannerPriority.HIGH,
              createdAt: Int64(100),
            ),
          ),
          BannerSelection(
            documentId: 'newer',
            banner: _banner(
              enabled: true,
              messages: {'en': 'b'},
              priority: BannerPriority.HIGH,
              createdAt: Int64(500),
            ),
          ),
        ])!.documentId,
        'newer',
      );
    });

    test('ignores banners without an explicit priority', () {
      final missingPriority = Banner.create()
        ..enabled = true
        ..messagesByLocale['en'] = 'malformed';
      final valid = _banner(
        enabled: true,
        messages: {'en': 'valid'},
        priority: BannerPriority.LOW,
      );

      expect(
        selectBestBanner([
          BannerSelection(documentId: 'missing', banner: missingPriority),
          BannerSelection(documentId: 'valid', banner: valid),
        ])?.documentId,
        'valid',
      );
      expect(
        selectBestBanner([
          BannerSelection(documentId: 'missing', banner: missingPriority),
        ]),
        isNull,
      );
    });
  });

  group('resolveBannerMessage', () {
    test('prefers zh-CN key for zhCn locale', () {
      final b = _banner(enabled: true, messages: {'zh-CN': '简体', 'en': 'EN'});
      expect(resolveBannerMessage(b, AppLocale.zhCn), '简体');
    });

    test('falls back to en', () {
      final b = _banner(enabled: true, messages: {'en': 'Hello'});
      expect(resolveBannerMessage(b, AppLocale.id), 'Hello');
    });

    test('returns null when map empty', () {
      expect(resolveBannerMessage(_banner(enabled: true), AppLocale.en), isNull);
    });
  });

  group('bannerSignature', () {
    test('changes when messages change', () {
      final a = _banner(enabled: true, messages: {'en': 'a'});
      final b = _banner(enabled: true, messages: {'en': 'b'});
      expect(bannerSignature('doc1', a), isNot(bannerSignature('doc1', b)));
    });

    test('includes document id', () {
      final b = _banner(enabled: true, messages: {'en': 'x'});
      expect(bannerSignature('a', b), isNot(bannerSignature('b', b)));
    });
  });
}
