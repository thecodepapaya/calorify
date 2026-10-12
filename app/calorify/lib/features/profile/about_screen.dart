import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/constants/app_constants.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/utilities/app_version.dart';
import 'package:calorify/shared_widgets/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:widgets/widgets.dart';
import 'package:services/services.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: Text(t.appLabel(env: EnvConfig.instance.envSuffix)),
        centerTitle: true,
        backgroundColor: colorScheme.surface,
        elevation: 0,
      ),
      body: ResponsiveContent(
        maxWidth: 760,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          children: [
            const SizedBox(height: 16),
            // Tagline
            Center(
              child: Text(
                t.settings.about.tagline,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),
            // Story Section
            _buildSection(
              context,
              title: t.settings.about.ourStory.title,
              icon: AppIcons.bookOpen,
              children: [
                Text(
                  t.settings.about.ourStory.content(
                    appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
                  ),
                  style: theme.textTheme.bodyLarge?.copyWith(
                    height: 1.6,
                    color: colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Privacy Section
            _buildSection(
              context,
              title: t.settings.about.privacy.title,
              icon: AppIcons.shield,
              children: [
                Text(
                  t.settings.about.privacy.description,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    height: 1.6,
                    color: colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 16),
                _buildPrivacyList(context),
                const SizedBox(height: 16),
                _buildPrivacyPolicyLink(context),
              ],
            ),
            const SizedBox(height: 16),
            // Developer Section
            _buildSection(
              context,
              title: t.settings.about.developer.title,
              icon: AppIcons.code,
              children: [
                Text(
                  t.settings.about.developer.description(
                    appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
                  ),
                  style: theme.textTheme.bodyLarge?.copyWith(
                    height: 1.6,
                    color: colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 16),
                _buildDeveloperLinks(context),
              ],
            ),
            const SizedBox(height: 16),
            // Feedback Section
            _buildSection(
              context,
              title: t.settings.about.feedback.title(
                appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
              ),
              icon: AppIcons.star,
              children: [
                Text(
                  t.settings.about.feedback.description(
                    appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
                  ),
                  style: theme.textTheme.bodyLarge?.copyWith(
                    height: 1.6,
                    color: colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 16),
                _buildFeedbackActions(context),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required IconData icon,
    required List<Widget> children,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: 0,
      shape: RoundedSuperellipseBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
      ),
      child: Padding(
        padding: globalInnerPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer.withValues(alpha: 0.4),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, color: colorScheme.primary, size: 20),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      title,
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildPrivacyList(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final appLabel = t.appLabel(env: EnvConfig.instance.envSuffix);
    final items = <String>[
      t.settings.about.privacy.noAccounts,
      t.settings.about.privacy.analyticsDisclosure(appLabel: appLabel),
      t.settings.about.privacy.noAds(appLabel: appLabel),
      t.settings.about.privacy.noDataSelling,
      t.settings.about.privacy.localStorage,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          items.map((item) {
            // Split by newline to separate title and description
            final parts = item.split('\n');
            final title = parts.isNotEmpty ? parts[0] : '';
            final description = parts.length > 1 ? parts[1] : '';

            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(AppIcons.check, size: 20, color: colorScheme.primary),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: colorScheme.onSurface,
                          ),
                        ),
                        if (description.isNotEmpty) ...[
                          const SizedBox(height: 4),
                          Text(
                            description,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              height: 1.5,
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
    );
  }

  Widget _buildPrivacyPolicyLink(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return InkWell(
      onTap: () async {
        final uri = Uri.parse(AppConstants.privacyPolicyUrl);
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      },
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                AppIcons.fileText,
                color: colorScheme.primary,
                size: 18,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                t.settings.about.privacy.privacyPolicy,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
            ),
            Icon(
              AppIcons.externalLink,
              size: 16,
              color: colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDeveloperLinks(BuildContext context) {
    return Column(
      children: [
        _buildLinkTile(
          context,
          icon: AppIcons.globe,
          title: t.settings.about.developer.website,
          subtitle: AppConstants.developerWebsite,
          onTap: () async {
            final uri = Uri.parse(AppConstants.developerWebsite);
            await launchUrl(uri, mode: LaunchMode.externalApplication);
          },
        ),
        const SizedBox(height: 8),
        _buildLinkTile(
          context,
          icon: AppIcons.mail,
          title: t.settings.about.developer.email,
          subtitle: AppConstants.supportEmail,
          onTap: () async {
            final versionInfo = await getAppVersionInfo();
            await sendFeedbackEmail(
              appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
              emailAddress: AppConstants.supportEmail,
              version: versionInfo.uiVersionWithBuild,
            );
          },
        ),
      ],
    );
  }

  Widget _buildLinkTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: colorScheme.primary, size: 18),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              AppIcons.externalLink,
              size: 16,
              color: colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeedbackActions(BuildContext context) {
    return Column(
      children: [
        _buildActionButton(
          context,
          icon: AppIcons.star,
          title: t.settings.about.feedback.rateApp,
          onTap:
              () =>
                  requestPlayStoreReview(packageName: AppConstants.packageName),
        ),
        const SizedBox(height: 12),
        _buildActionButton(
          context,
          icon: AppIcons.mail,
          title: t.settings.about.feedback.sendFeedback,
          onTap: () async {
            final versionInfo = await getAppVersionInfo();
            await sendFeedbackEmail(
              appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
              emailAddress: AppConstants.supportEmail,
              version: versionInfo.uiVersionWithBuild,
            );
          },
        ),
      ],
    );
  }

  Widget _buildActionButton(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        minimumSize: Size(double.infinity, appButtonMinHeight),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        shape: RoundedSuperellipseBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        side: BorderSide(
          color: colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20, color: colorScheme.primary),
          const SizedBox(width: 12),
          Text(
            title,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
