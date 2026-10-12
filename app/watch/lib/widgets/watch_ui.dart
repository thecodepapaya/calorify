import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i18n/i18n.dart';
import 'package:specs/specs.dart';
import 'package:widgets/widgets.dart';

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
    this.iconWidget,
    this.onBack,
    this.trailing,
  }) : assert((icon == null) != (iconWidget == null));

  final String title;
  final IconData? icon;
  final Widget? iconWidget;
  final VoidCallback? onBack;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final strings = Translations.of(context).watch;
    return SizedBox(
      height: watchTapTarget,
      child: Row(
        children: [
          if (onBack != null)
            WatchIconButton(
              icon: AppIcons.arrowLeft,
              semanticLabel: strings.common.back,
              onPressed: onBack!,
            )
          else
            const SizedBox(width: watchTapTarget),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null || iconWidget != null) ...[
                  IconTheme(
                    data: IconThemeData(size: 15, color: colors.primary),
                    child: iconWidget ?? Icon(icon),
                  ),
                  const SizedBox(width: 5),
                ],
                Flexible(
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: colors.onSurface,
                      fontSize: watchBodyFontSize,
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
    this.icon,
    this.iconWidget,
    required this.onBack,
    required this.body,
    this.trailing,
    this.safeAreaMinimum = const EdgeInsets.fromLTRB(10, 22, 10, 10),
    this.headerPadding = const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
  }) : assert((icon == null) != (iconWidget == null));

  final String title;
  final IconData? icon;
  final Widget? iconWidget;
  final VoidCallback onBack;
  final Widget body;
  final Widget? trailing;
  final EdgeInsets safeAreaMinimum;
  final EdgeInsets headerPadding;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.surface,
      body: SafeArea(
        // Keep the fixed header inside the usable chord of a 192dp round
        // display. Scrollable content can still use the full center width.
        minimum: safeAreaMinimum,
        child: Column(
          children: [
            Padding(
              padding: headerPadding,
              child: WatchPageHeader(
                title: title,
                icon: icon,
                iconWidget: iconWidget,
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
    final strings = Translations.of(context).watch;
    return Semantics(
      label: strings.nutrition.grams(
        label: label ?? strings.nutrition.nutrient,
        value: value,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 12, color: color),
            const SizedBox(width: 2),
          ],
          if (label != null) ...[
            Text(
              label!,
              style: theme.textTheme.labelSmall?.copyWith(
                color: color.withValues(alpha: 0.8),
                fontSize: watchLabelFontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 2),
          ],
          Text(
            '$value',
            style: theme.textTheme.labelSmall?.copyWith(
              color: color,
              fontSize: watchLabelFontSize,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            strings.common.gramsShort,
            style: theme.textTheme.labelSmall?.copyWith(
              color: color.withValues(alpha: 0.85),
              fontSize: watchLabelFontSize,
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
    final strings = Translations.of(context).watch;
    return Semantics(
      label: strings.nutrition.grams(label: label, value: value),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(height: 3),
          Text(
            '$value${strings.common.gramsShort}',
            style: theme.textTheme.labelSmall?.copyWith(
              color: color,
              fontSize: watchLabelFontSize,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            label,
            maxLines: 1,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontSize: watchLabelFontSize,
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
    final strings = Translations.of(context).watch;
    final progress = goal > 0 ? (totalCalories / goal) : 0.0;
    final percentage = (progress * 100).round();
    final remaining = goal - totalCalories;
    final overGoal = remaining < 0;
    final accent = overGoal ? colors.error : colors.calorieIconColor;

    return Semantics(
      label: strings.home.calorieSummary(
        consumed: totalCalories,
        goal: goal,
        status:
            overGoal
                ? strings.home.overGoal(calories: -remaining)
                : strings.home.remaining(calories: remaining),
      ),
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
                      Icon(AppIcons.flame, size: 14, color: accent),
                      Text(
                        '$percentage%',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: accent,
                          fontSize: watchLabelFontSize,
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
                    strings.home.today,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: colors.onSurfaceVariant,
                      fontSize: watchLabelFontSize,
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
                              fontSize: watchHeadlineFontSize,
                              fontWeight: FontWeight.w900,
                              letterSpacing: -0.6,
                            ),
                          ),
                          TextSpan(
                            text: ' ${strings.common.kcal}',
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: colors.onSurfaceVariant,
                              fontSize: watchLabelFontSize,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    overGoal
                        ? strings.home.overGoal(calories: -remaining)
                        : strings.home.left(calories: remaining),
                    maxLines: 1,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: overGoal ? colors.error : colors.primary,
                      fontSize: watchLabelFontSize,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    strings.home.goal(calories: goal),
                    maxLines: 1,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: colors.onSurfaceVariant,
                      fontSize: watchLabelFontSize,
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
    final strings = Translations.of(context).watch;
    return WatchSurface(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: WatchMacroMetric(
              icon: AppIcons.dumbbell,
              label: strings.nutrition.protein,
              value: protein,
              color: colors.proteinIconColor,
            ),
          ),
          _WatchMetricDivider(color: colors.outline),
          Expanded(
            child: WatchMacroMetric(
              icon: AppIcons.wheat,
              label: strings.nutrition.carbs,
              value: carbs,
              color: colors.carbsIconColor,
            ),
          ),
          _WatchMetricDivider(color: colors.outline),
          Expanded(
            child: WatchMacroMetric(
              icon: AppIcons.droplet,
              label: strings.nutrition.fat,
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
    this.icon,
    this.iconWidget,
    required this.onPressed,
    this.primary = false,
    this.busy = false,
    this.tint,
  }) : assert((icon == null) != (iconWidget == null));

  final String label;
  final IconData? icon;
  final Widget? iconWidget;
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
                  IconTheme(
                    data: IconThemeData(
                      size: primary ? 20 : 17,
                      color: foreground,
                    ),
                    child: iconWidget ?? Icon(icon),
                  ),
                const SizedBox(width: 7),
                Flexible(
                  child: Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: foreground,
                      fontSize:
                          primary ? watchBodyFontSize : watchLabelFontSize,
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
    this.icon,
    this.iconWidget,
    required this.title,
    this.message,
    this.actionLabel,
    this.onAction,
    this.tint,
  }) : assert((icon == null) != (iconWidget == null));

  final IconData? icon;
  final Widget? iconWidget;
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
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: accent.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: IconTheme(
                data: IconThemeData(size: 23, color: accent),
                child: Center(child: iconWidget ?? Icon(icon)),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall?.copyWith(
                color: colors.onSurface,
                fontSize: watchBodyFontSize,
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
                  fontSize: watchLabelFontSize,
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
                  icon: AppIcons.refreshCw,
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
