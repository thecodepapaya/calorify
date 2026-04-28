import 'package:calorify/core/providers/app_banner_providers.dart';
import 'package:calorify/core/services/banner_selection.dart';
import 'package:flutter/material.dart' hide Banner;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widgets/widgets.dart' show AppIcons;

/// Maps [AppLocale] to Firestore `messagesByLocale` keys (same as `*.i18n.json` base names).
///
/// Chinese Simplified vs Traditional share [AppLocale.languageCode] `zh`; disambiguate with
/// [AppLocale.countryCode] (`zh-CN`, `zh-TW`). Other locales use [AppLocale.languageCode] only.
String appLocaleToBannerLocaleKey(AppLocale app) {
  final cc = app.countryCode;
  if (cc != null) {
    return '${app.languageCode}-$cc';
  }
  return app.languageCode;
}

/// Resolves banner text for the current app locale, then `en`, then any single entry.
String? resolveBannerMessage(Banner banner, AppLocale app) {
  final map = banner.messagesByLocale;
  if (map.isEmpty) return null;

  final primary = appLocaleToBannerLocaleKey(app);
  if (map.containsKey(primary)) {
    final v = map[primary];
    if (v != null && v.trim().isNotEmpty) return v.trim();
  }

  final langOnly = app.languageCode;
  if (langOnly != primary && map.containsKey(langOnly)) {
    final v = map[langOnly];
    if (v != null && v.trim().isNotEmpty) return v.trim();
  }

  if (map.containsKey('en')) {
    final v = map['en'];
    if (v != null && v.trim().isNotEmpty) return v.trim();
  }

  for (final e in map.entries) {
    final v = e.value.trim();
    if (v.isNotEmpty) return v;
  }
  return null;
}

/// Stable fingerprint for dismiss-until-change behavior (per Firestore document).
String bannerSignature(String documentId, Banner b) {
  final entries = b.messagesByLocale.entries.toList()
    ..sort((a, b) => a.key.compareTo(b.key));
  final msgPart = entries.map((e) => '${e.key}=${e.value}').join('&');
  final pri = b.priority.toString();
  return '$documentId|${b.enabled}|$pri|${b.dismissible}|${b.linkUrl}|${b.minimumBuildInclusive}|${b.maximumBuildExclusive}|${b.createdAt}|$msgPart';
}

/// Wraps [child] with a top notice strip when Firestore banner config applies.
class AppBannerShell extends ConsumerWidget {
  const AppBannerShell({super.key, required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectionAsync = ref.watch(bannerSelectionProvider);
    final dismissedSig = ref.watch(bannerDismissSignatureProvider);
    final appLocale = TranslationProvider.of(context).locale;

    return selectionAsync.when(
      data: (selection) => _buildColumn(
        context,
        ref,
        selection,
        dismissedSig,
        appLocale,
      ),
      loading: () => _column(child),
      error: (_, _) => _column(child),
    );
  }

  Widget _column(Widget? c) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: c ?? const SizedBox.shrink()),
      ],
    );
  }

  Widget _buildColumn(
    BuildContext context,
    WidgetRef ref,
    BannerSelection? selection,
    String? dismissedSig,
    AppLocale appLocale,
  ) {
    if (selection == null) {
      return _column(child);
    }
    final banner = selection.banner;

    if (!banner.enabled) {
      return _column(child);
    }

    final message = resolveBannerMessage(banner, appLocale);
    if (message == null || message.isEmpty) {
      return _column(child);
    }

    final sig = bannerSignature(selection.documentId, banner);
    if (dismissedSig != null && dismissedSig == sig) {
      return _column(child);
    }

    final theme = Theme.of(context);
    final cs = theme.colorScheme;

    late final IconData icon;
    late final Color bg;
    late final Color fg;
    switch (banner.priority) {
      case BannerPriority.HIGH:
        icon = AppIcons.circleAlert;
        bg = cs.errorContainer;
        fg = cs.onErrorContainer;
        break;
      case BannerPriority.MEDIUM:
        icon = AppIcons.info;
        bg = cs.primaryContainer;
        fg = cs.onPrimaryContainer;
        break;
      case BannerPriority.LOW:
        icon = AppIcons.info;
        bg = cs.surfaceContainerHighest;
        fg = cs.onSurfaceVariant;
        break;
    }

    final link = banner.hasLinkUrl() ? banner.linkUrl.trim() : '';

    final bannerTile = Material(
      color: bg,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(icon, color: fg, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      message,
                      style: theme.textTheme.bodyMedium?.copyWith(color: fg),
                    ),
                  ),
                  if (banner.dismissible)
                    IconButton(
                      visualDensity: VisualDensity.compact,
                      icon: Icon(Icons.close, color: fg, size: 20),
                      onPressed: () {
                        ref.read(bannerDismissSignatureProvider.notifier).setDismissed(sig);
                      },
                      tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
                    ),
                ],
              ),
              if (link.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: TextButton(
                    onPressed: () async {
                      final uri = Uri.tryParse(link);
                      if (uri != null && await canLaunchUrl(uri)) {
                        await launchUrl(uri, mode: LaunchMode.externalApplication);
                      }
                    },
                    child: const Text('Learn more'),
                  ),
                ),
            ],
          ),
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        bannerTile,
        Expanded(child: child ?? const SizedBox.shrink()),
      ],
    );
  }
}
