import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/app_constants.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/utilities/app_version.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:services/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widgets/widgets.dart';

enum _FeedbackSheetStep { enjoyingQuestion, ratePrompt, emailPrompt }

Future<void> showFeedbackRatingSheet(
  BuildContext context, {
  bool persistShown = true,
}) {
  return showModalBottomSheet(
    context: context,
    isDismissible: false,
    showDragHandle: true,
    enableDrag: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.feedbackRatingSheet),
    builder: (context) => _FeedbackRatingSheet(persistShown: persistShown),
  );
}

class _FeedbackRatingSheet extends StatefulWidget {
  const _FeedbackRatingSheet({required this.persistShown});

  final bool persistShown;

  @override
  State<_FeedbackRatingSheet> createState() => _FeedbackRatingSheetState();
}

class _FeedbackRatingSheetState extends State<_FeedbackRatingSheet>
    with TickerProviderStateMixin {
  _FeedbackSheetStep _step = _FeedbackSheetStep.enjoyingQuestion;
  bool _isLoading = false;
  bool _closedByTerminalAction = false;

  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    );
    _fadeController.forward();
    Analytics.instance.logEvent(AnalyticsEvent.feedbackSheetShown);
    if (widget.persistShown) {
      unawaited(DatabaseService.databaseInterface.setFeedbackSheetShown());
    }
  }

  @override
  void dispose() {
    _fadeController.dispose();
    if (!_closedByTerminalAction) {
      Analytics.instance.logEvent(AnalyticsEvent.feedbackSheetDismissed);
    }
    super.dispose();
  }

  Future<void> _onRateYes() async {
    if (_isLoading) return;
    Analytics.instance.logEvent(AnalyticsEvent.feedbackSheetRateYes);
    setState(() => _isLoading = true);
    final success = await requestPlayStoreReview(
      packageName: AppConstants.packageName,
    );
    if (!mounted) return;
    setState(() => _isLoading = false);
    if (!success) {
      final uri = Uri.parse(AppConstants.playStoreUrl);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    }
    if (!mounted) return;
    _closedByTerminalAction = true;
    Navigator.of(context).pop();
  }

  Future<void> _onEmailYes() async {
    if (_isLoading) return;
    Analytics.instance.logEvent(AnalyticsEvent.feedbackSheetEmailYes);
    setState(() => _isLoading = true);
    final versionInfo = await getAppVersionInfo();
    await sendFeedbackEmail(
      appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
      emailAddress: AppConstants.supportEmail,
      version: versionInfo.uiVersionWithBuild,
    );
    if (!mounted) return;
    setState(() => _isLoading = false);
    _closedByTerminalAction = true;
    Navigator.of(context).pop();
  }

  void _showThankYouAndPop() {
    _closedByTerminalAction = true;
    showFlushbar(t.feedbackRating.thankYouMessage, context: context);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return BaseBottomSheet(
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            switch (_step) {
              _FeedbackSheetStep.enjoyingQuestion => _buildEnjoyingStep(
                context,
                textTheme,
                colorScheme,
              ),
              _FeedbackSheetStep.ratePrompt => _buildRateStep(
                context,
                textTheme,
                colorScheme,
              ),
              _FeedbackSheetStep.emailPrompt => _buildEmailStep(
                context,
                textTheme,
                colorScheme,
              ),
            },
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildEnjoyingStep(
    BuildContext context,
    TextTheme textTheme,
    ColorScheme colorScheme,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(LucideIcons.star, color: colorScheme.onSurface, size: 28),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                t.feedbackRating.enjoyingQuestion(
                  appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
                ),
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          t.feedbackRating.aboutUsDescription,
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.7),
          ),
        ),
        const SizedBox(height: 10),
        _buildAboutUsSection(context, textTheme, colorScheme),
        const SizedBox(height: 16),
        _buildCompactButtonRow(
          context: context,
          colorScheme: colorScheme,
          primaryLabel: t.feedbackRating.yes,
          secondaryLabel: t.feedbackRating.no,
          onPrimary: () {
            Analytics.instance.logEvent(
              AnalyticsEvent.feedbackSheetEnjoyingYes,
            );
            _fadeController.reverse().then((_) {
              if (!mounted) return;
              setState(() => _step = _FeedbackSheetStep.ratePrompt);
              _fadeController.forward();
            });
          },
          onSecondary: () {
            Analytics.instance.logEvent(AnalyticsEvent.feedbackSheetEnjoyingNo);
            _fadeController.reverse().then((_) {
              if (!mounted) return;
              setState(() => _step = _FeedbackSheetStep.emailPrompt);
              _fadeController.forward();
            });
          },
        ),
      ],
    );
  }

  Widget _buildRateStep(
    BuildContext context,
    TextTheme textTheme,
    ColorScheme colorScheme,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(LucideIcons.star, color: colorScheme.onSurface, size: 28),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                t.feedbackRating.rateStepHeading,
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          t.feedbackRating.soloDevMessage(
            appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
          ),
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.85),
          ),
        ),
        const SizedBox(height: 16),
        _buildCompactButtonRow(
          context: context,
          colorScheme: colorScheme,
          primaryLabel: t.feedbackRating.rateCta,
          secondaryLabel: t.feedbackRating.maybeLater,
          onPrimary: _onRateYes,
          onSecondary: () {
            Analytics.instance.logEvent(AnalyticsEvent.feedbackSheetRateNo);
            _showThankYouAndPop();
          },
          isLoading: _isLoading,
        ),
      ],
    );
  }

  Widget _buildEmailStep(
    BuildContext context,
    TextTheme textTheme,
    ColorScheme colorScheme,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(LucideIcons.mail, color: colorScheme.onSurface, size: 28),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                t.feedbackRating.emailStepHeading,
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          t.feedbackRating.shareFeedbackViaEmail,
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.85),
          ),
        ),
        const SizedBox(height: 16),
        _buildCompactButtonRow(
          context: context,
          colorScheme: colorScheme,
          primaryLabel: t.feedbackRating.sendFeedback,
          secondaryLabel: t.feedbackRating.noThanks,
          onPrimary: _onEmailYes,
          onSecondary: () {
            Analytics.instance.logEvent(AnalyticsEvent.feedbackSheetEmailNo);
            _showThankYouAndPop();
          },
          isLoading: _isLoading,
        ),
      ],
    );
  }

  static const double _kButtonHeight = 44;

  Widget _buildCompactButtonRow({
    required BuildContext context,
    required ColorScheme colorScheme,
    required String primaryLabel,
    required String secondaryLabel,
    required VoidCallback onPrimary,
    required VoidCallback onSecondary,
    bool isLoading = false,
  }) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: _kButtonHeight,
            child: OutlinedButton(
              onPressed: isLoading ? null : onSecondary,
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: buttonRadius),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                side: BorderSide(
                  color: colorScheme.outline.withValues(alpha: 0.6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Text(
                      secondaryLabel,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: SizedBox(
            height: _kButtonHeight,
            child: ElevatedButton(
              onPressed: isLoading ? null : onPrimary,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: buttonRadius),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                backgroundColor: colorScheme.primary,
                foregroundColor: colorScheme.onPrimary,
              ),
              child:
                  isLoading
                      ? AppLoader(color: colorScheme.onPrimary)
                      : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Text(
                              primaryLabel,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: theme.textTheme.labelLarge?.copyWith(
                                color: colorScheme.onPrimary,
                              ),
                            ),
                          ),
                        ],
                      ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAboutUsSection(
    BuildContext context,
    TextTheme textTheme,
    ColorScheme colorScheme,
  ) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 4,
      runSpacing: 4,
      children: [
        Icon(
          LucideIcons.heart,
          size: 14,
          color: colorScheme.primary.withValues(alpha: 0.75),
        ),
        Text(
          t.feedbackRating.aboutUsMentionBeforeLink(
            appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
          ),
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.7),
          ),
        ),
        InkWell(
          onTap: () {
            context.router.push(const AboutRoute());
            Navigator.of(context).pop();
          },
          borderRadius: BorderRadius.circular(4),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            child: Text(
              t.feedbackRating.aboutUsLinkLabel,
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
