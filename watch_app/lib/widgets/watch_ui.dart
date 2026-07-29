import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:specs/specs.dart';

const double watchTapTarget = 44;

class WatchSurface extends StatelessWidget {
  const WatchSurface({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(14),
    this.color,
    this.borderColor,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final Color? color;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color ?? colors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: borderColor ?? colors.outline.withValues(alpha: 0.18),
        ),
      ),
      child: Padding(padding: padding, child: child),
    );
  }
}

class WatchIconButton extends StatelessWidget {
  const WatchIconButton({
    super.key,
    required this.icon,
    required this.semanticLabel,
    required this.onPressed,
    this.color,
    this.backgroundColor,
    this.busy = false,
  });

  final IconData icon;
  final String semanticLabel;
  final VoidCallback onPressed;
  final Color? color;
  final Color? backgroundColor;
  final bool busy;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Semantics(
      label: semanticLabel,
      button: true,
      child: SizedBox.square(
        dimension: watchTapTarget,
        child: Material(
          color:
              backgroundColor ??
              colors.surfaceContainerHighest.withValues(alpha: 0.45),
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap:
                busy
                    ? null
                    : () {
                      unawaited(HapticFeedback.lightImpact());
                      onPressed();
                    },
            customBorder: const CircleBorder(),
            child: Center(
              child:
                  busy
                      ? SizedBox.square(
                        dimension: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: color ?? colors.primary,
                        ),
                      )
                      : Icon(
                        icon,
                        size: 18,
                        color: color ?? colors.onSurfaceVariant,
                      ),
            ),
          ),
        ),
      ),
    );
  }
}

class WatchPageHeader extends StatelessWidget {
  const WatchPageHeader({
    super.key,
    required this.title,
    this.icon,
    this.onBack,
    this.trailing,
  });

  final String title;
  final IconData? icon;
  final VoidCallback? onBack;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return SizedBox(
      height: watchTapTarget,
      child: Row(
        children: [
          if (onBack != null)
            WatchIconButton(
              icon: Icons.arrow_back_rounded,
              semanticLabel: 'Back',
              onPressed: onBack!,
            )
          else
            const SizedBox(width: watchTapTarget),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) ...[
                  Icon(icon, size: 15, color: colors.primary),
                  const SizedBox(width: 5),
                ],
                Flexible(
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: colors.onSurface,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: watchTapTarget, child: trailing),
        ],
      ),
    );
  }
}

class WatchListScaffold extends StatelessWidget {
  const WatchListScaffold({
    super.key,
    required this.title,
    required this.icon,
    required this.onBack,
    required this.body,
    this.trailing,
  });

  final String title;
  final IconData icon;
  final VoidCallback onBack;
  final Widget body;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.surface,
      body: SafeArea(
        minimum: const EdgeInsets.all(8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: WatchPageHeader(
                title: title,
                icon: icon,
                onBack: onBack,
                trailing: trailing,
              ),
            ),
            Expanded(child: body),
          ],
        ),
      ),
    );
  }
}

class WatchMacroBadge extends StatelessWidget {
  const WatchMacroBadge({
    super.key,
    required this.value,
    required this.color,
    this.icon,
    this.label,
  });

  final int value;
  final Color color;
  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Semantics(
      label: '${label ?? 'Nutrient'}, $value grams',
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 10, color: color.withValues(alpha: 0.85)),
            const SizedBox(width: 2),
          ],
          if (label != null) ...[
            Text(
              label!,
              style: theme.textTheme.labelSmall?.copyWith(
                color: color.withValues(alpha: 0.8),
                fontSize: 8,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 2),
          ],
          Text(
            '$value',
            style: theme.textTheme.labelSmall?.copyWith(
              color: color,
              fontSize: 9,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            'g',
            style: theme.textTheme.labelSmall?.copyWith(
              color: color.withValues(alpha: 0.7),
              fontSize: 7,
            ),
          ),
        ],
      ),
    );
  }
}

class WatchMacroMetric extends StatelessWidget {
  const WatchMacroMetric({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  final IconData icon;
  final String label;
  final int value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Semantics(
      label: '$label, $value grams',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 13, color: color),
          const SizedBox(height: 3),
          Text(
            '${value}g',
            style: theme.textTheme.labelSmall?.copyWith(
              color: color,
              fontSize: 10,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            label,
            maxLines: 1,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontSize: 7,
            ),
          ),
        ],
      ),
    );
  }
}

class WatchCalorieProgressCard extends StatelessWidget {
  const WatchCalorieProgressCard({
    super.key,
    required this.totalCalories,
    required this.goal,
  });

  final int totalCalories;
  final int goal;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final progress = goal > 0 ? (totalCalories / goal) : 0.0;
    final percentage = (progress * 100).round();
    final remaining = goal - totalCalories;
    final overGoal = remaining < 0;
    final accent = overGoal ? colors.error : colors.calorieIconColor;

    return Semantics(
      label:
          '$totalCalories calories consumed out of $goal. '
          '${overGoal ? '${-remaining} over goal' : '$remaining remaining'}.',
      child: WatchSurface(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
        borderColor: accent.withValues(alpha: 0.18),
        child: Row(
          children: [
            SizedBox.square(
              dimension: 68,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox.square(
                    dimension: 64,
                    child: CircularProgressIndicator(
                      value: progress.clamp(0.0, 1.0),
                      strokeWidth: 7,
                      strokeCap: StrokeCap.round,
                      backgroundColor: colors.surfaceContainerHighest,
                      color: accent,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(LucideIcons.flame, size: 14, color: accent),
                      Text(
                        '$percentage%',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: accent,
                          fontSize: 9,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Today',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: colors.onSurfaceVariant,
                      fontSize: 9,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '$totalCalories',
                            style: theme.textTheme.titleLarge?.copyWith(
                              color: accent,
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              letterSpacing: -0.6,
                            ),
                          ),
                          TextSpan(
                            text: ' kcal',
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: colors.onSurfaceVariant,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    overGoal ? '${-remaining} over goal' : '$remaining left',
                    maxLines: 1,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: overGoal ? colors.error : colors.primary,
                      fontSize: 9,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '$goal kcal goal',
                    maxLines: 1,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: colors.onSurfaceVariant.withValues(alpha: 0.7),
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WatchMacroSummary extends StatelessWidget {
  const WatchMacroSummary({
    super.key,
    required this.protein,
    required this.carbs,
    required this.fat,
  });

  final int protein;
  final int carbs;
  final int fat;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return WatchSurface(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: WatchMacroMetric(
              icon: LucideIcons.dumbbell,
              label: 'Protein',
              value: protein,
              color: colors.proteinIconColor,
            ),
          ),
          _WatchMetricDivider(color: colors.outline),
          Expanded(
            child: WatchMacroMetric(
              icon: LucideIcons.wheat,
              label: 'Carbs',
              value: carbs,
              color: colors.carbsIconColor,
            ),
          ),
          _WatchMetricDivider(color: colors.outline),
          Expanded(
            child: WatchMacroMetric(
              icon: LucideIcons.droplet,
              label: 'Fat',
              value: fat,
              color: colors.fatIconColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _WatchMetricDivider extends StatelessWidget {
  const _WatchMetricDivider({required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) =>
      Container(width: 1, height: 30, color: color.withValues(alpha: 0.2));
}

class WatchPillButton extends StatelessWidget {
  const WatchPillButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.primary = false,
    this.busy = false,
    this.tint,
  });

  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final bool primary;
  final bool busy;
  final Color? tint;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final accent = tint ?? colors.primary;
    final background =
        primary
            ? accent
            : colors.surfaceContainerHighest.withValues(alpha: 0.5);
    final foreground = primary ? colors.onPrimary : accent;

    return Semantics(
      label: label,
      button: true,
      child: SizedBox(
        height: primary ? 52 : watchTapTarget,
        width: double.infinity,
        child: Material(
          color: background,
          borderRadius: BorderRadius.circular(28),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap:
                busy
                    ? null
                    : () {
                      unawaited(HapticFeedback.mediumImpact());
                      onPressed();
                    },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (busy)
                  SizedBox.square(
                    dimension: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: foreground,
                    ),
                  )
                else
                  Icon(icon, size: primary ? 20 : 17, color: foreground),
                const SizedBox(width: 7),
                Flexible(
                  child: Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: foreground,
                      fontSize: primary ? 12 : 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WatchStateView extends StatelessWidget {
  const WatchStateView({
    super.key,
    required this.icon,
    required this.title,
    this.message,
    this.actionLabel,
    this.onAction,
    this.tint,
  });

  final IconData icon;
  final String title;
  final String? message;
  final String? actionLabel;
  final VoidCallback? onAction;
  final Color? tint;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final accent = tint ?? colors.primary;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                color: accent.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 25, color: accent),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall?.copyWith(
                color: colors.onSurface,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            if (message != null) ...[
              const SizedBox(height: 4),
              Text(
                message!,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colors.onSurfaceVariant,
                  fontSize: 9,
                  height: 1.25,
                ),
              ),
            ],
            if (actionLabel != null && onAction != null) ...[
              const SizedBox(height: 12),
              SizedBox(
                width: 124,
                child: WatchPillButton(
                  label: actionLabel!,
                  icon: Icons.refresh_rounded,
                  onPressed: onAction!,
                  tint: accent,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
