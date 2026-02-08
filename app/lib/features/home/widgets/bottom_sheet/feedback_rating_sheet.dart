import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:calorify/shared_widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:services/services.dart';
import 'package:url_launcher/url_launcher.dart';

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

class _FeedbackRatingSheetState extends State<_FeedbackRatingSheet> {
  _FeedbackSheetStep _step = _FeedbackSheetStep.enjoyingQuestion;

  @override
  void initState() {
    super.initState();
    Analytics.instance.logEvent(AnalyticsEvent.feedbackSheetShown);
    if (widget.persistShown) {
      DatabaseService.databaseInterface.setFeedbackSheetShown();
    }
  }

  Future<void> _onRateYes() async {
    final success = await requestPlayStoreReview(
      packageName: 'dev.thecodepapaya.calorify',
    );
    if (!mounted) return;
    if (!success) {
      final uri = Uri.parse(
        'https://play.google.com/store/apps/details?id=dev.thecodepapaya.calorify',
      );
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    }
    if (!mounted) return;
    Navigator.of(context).pop();
  }

  Future<void> _onEmailYes() async {
    await sendFeedbackEmail(
      appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
      emailAddress: 'calorify@thecodepapaya.dev',
    );
    if (!mounted) return;
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return BaseBottomSheet(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_step == _FeedbackSheetStep.enjoyingQuestion) ...[
            Row(
              children: [
                Icon(LucideIcons.star, color: colorScheme.onSurface, size: 32),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    t.feedbackRating.enjoyingQuestion(
                      appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
                    ),
                    style: textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            PrimaryButton(
              onPressed: () {
                Analytics.instance.logEvent(
                  AnalyticsEvent.feedbackSheetEnjoyingYes,
                );
                setState(() => _step = _FeedbackSheetStep.ratePrompt);
              },
              text: t.feedbackRating.yes,
              analyticsEvent: AnalyticsEvent.feedbackSheetEnjoyingYes,
            ),
            const SizedBox(height: 12),
            SecondaryButton(
              onPressed: () {
                Analytics.instance.logEvent(
                  AnalyticsEvent.feedbackSheetEnjoyingNo,
                );
                setState(() => _step = _FeedbackSheetStep.emailPrompt);
              },
              text: t.feedbackRating.no,
              analyticsEvent: AnalyticsEvent.feedbackSheetEnjoyingNo,
            ),
          ] else if (_step == _FeedbackSheetStep.ratePrompt) ...[
            Text(
              t.feedbackRating.soloDevMessage(
                appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
              ),
              style: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface.withValues(alpha: 0.8),
              ),
            ),
            const SizedBox(height: 20),
            PrimaryButton(
              onPressed: _onRateYes,
              text: t.feedbackRating.yes,
              analyticsEvent: AnalyticsEvent.feedbackSheetRateYes,
            ),
            const SizedBox(height: 12),
            SecondaryButton(
              onPressed: () {
                Analytics.instance.logEvent(AnalyticsEvent.feedbackSheetRateNo);
                Navigator.of(context).pop();
              },
              text: t.feedbackRating.no,
              analyticsEvent: AnalyticsEvent.feedbackSheetRateNo,
            ),
          ] else ...[
            Text(
              t.feedbackRating.shareFeedbackViaEmail(
                appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
              ),
              style: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface.withValues(alpha: 0.8),
              ),
            ),
            const SizedBox(height: 20),
            PrimaryButton(
              onPressed: _onEmailYes,
              text: t.feedbackRating.yes,
              analyticsEvent: AnalyticsEvent.feedbackSheetEmailYes,
            ),
            const SizedBox(height: 12),
            SecondaryButton(
              onPressed: () {
                Analytics.instance.logEvent(
                  AnalyticsEvent.feedbackSheetEmailNo,
                );
                Navigator.of(context).pop();
              },
              text: t.feedbackRating.no,
              analyticsEvent: AnalyticsEvent.feedbackSheetEmailNo,
            ),
          ],
          const SizedBox(height: 24),
          _buildAboutUsMention(context, textTheme, colorScheme),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildAboutUsMention(
    BuildContext context,
    TextTheme textTheme,
    ColorScheme colorScheme,
  ) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
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
        Text(
          '.',
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }
}
