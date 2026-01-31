import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/config/env_config.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
            icon: LucideIcons.bookOpen,
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
            icon: LucideIcons.shield,
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
            icon: LucideIcons.code,
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
            icon: LucideIcons.star,
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
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
      t.settings.about.privacy.noTracking(appLabel: appLabel),
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
                  Icon(LucideIcons.check, size: 20, color: colorScheme.primary),
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
    const privacyPolicyUrl = 'https://calorify.thecodepapaya.dev/privacy.html';

    return InkWell(
      onTap: () async {
        final uri = Uri.parse(privacyPolicyUrl);
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
                LucideIcons.fileText,
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
              LucideIcons.externalLink,
              size: 16,
              color: colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDeveloperLinks(BuildContext context) {
    const website = 'https://thecodepapaya.dev';

    return Column(
      children: [
        _buildLinkTile(
          context,
          icon: LucideIcons.globe,
          title: t.settings.about.developer.website,
          subtitle: website,
          onTap: () async {
            final uri = Uri.parse(website);
            await launchUrl(uri, mode: LaunchMode.externalApplication);
          },
        ),
        const SizedBox(height: 8),
        _buildLinkTile(
          context,
          icon: LucideIcons.mail,
          title: t.settings.about.developer.email,
          subtitle: 'calorify@thecodepapaya.dev',
          onTap:
              () => sendFeedbackEmail(
                appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
                emailAddress: 'calorify@thecodepapaya.dev',
              ),
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
              LucideIcons.externalLink,
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
          icon: LucideIcons.star,
          title: t.settings.about.feedback.rateApp,
          onTap:
              () => requestPlayStoreReview(
                packageName: 'dev.thecodepapaya.calorify',
              ),
        ),
        const SizedBox(height: 12),
        _buildActionButton(
          context,
          icon: LucideIcons.mail,
          title: t.settings.about.feedback.sendFeedback,
          onTap:
              () => sendFeedbackEmail(
                appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
                emailAddress: 'calorify@thecodepapaya.dev',
              ),
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
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
