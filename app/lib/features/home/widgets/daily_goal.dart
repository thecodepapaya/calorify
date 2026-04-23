import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/disclaimer_sheet.dart'
    show getCalorieExpenditureDisclaimer;
import 'package:calorify/features/home/widgets/home_skeletons.dart';
import 'package:health/health.dart' show HealthConnectSdkStatus;
import 'package:calorify/features/home/widgets/disclaimer_button.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';

class SetDailyGoal extends ConsumerStatefulWidget {
  const SetDailyGoal({super.key, this.healthConnectRefreshTrigger = 0});

  /// When this value changes (e.g. after user connects Health Connect),
  /// calories burned is refetched so the daily goal content updates.
  final int healthConnectRefreshTrigger;

  @override
  ConsumerState<SetDailyGoal> createState() => _SetDailyGoalState();
}

class _SetDailyGoalState extends ConsumerState<SetDailyGoal> {
  bool _isEditing = false;

  Future<void> _updateAndSaveGoal(int calories) async {
    try {
      await ref.read(databaseInterfaceProvider).setDailyCalorieGoal(calories);
    } catch (e) {
      debugPrint('Error saving daily goal: $e');
    } finally {
      setState(() {
        _isEditing = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;
    final healthService = ref.watch(healthServiceProvider);
    final goalAsync = ref.watch(dailyCalorieGoalProvider);
    final mealsAsync = ref.watch(todaysMealsProvider);
    final caloriesBurnedAsync = ref.watch(
      caloriesBurnedProvider(widget.healthConnectRefreshTrigger),
    );
    final caloriesBurned = caloriesBurnedAsync.value?.calories.toInt() ?? 0;
    final usedFallback = caloriesBurnedAsync.value?.usedFallback ?? false;
    final goal = goalAsync.value ?? 0;

    final isTargetSet = goal > 0;
    final isLoading = goalAsync.isLoading || mealsAsync.isLoading;
    final hasError = goalAsync.hasError || mealsAsync.hasError;

    return Stack(
      children: [
        Container(
          margin: globalMargin,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: globalRadius,
            border: Border.all(color: colorScheme.outline),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    isTargetSet ? LucideIcons.compass : LucideIcons.target,
                    color: colorScheme.primary,
                  ),
                  SizedBox(width: 8),
                  Text(
                    isTargetSet
                        ? t.home.dailyGoal.titleSet
                        : t.home.dailyGoal.title,
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Text(
                isTargetSet
                    ? t.home.dailyGoal.descriptionSet
                    : t.home.dailyGoal.description,
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 14),
              if (hasError)
                ErrorView(
                  error: goalAsync.error ?? mealsAsync.error!,
                  onRetry: () {
                    ref.invalidate(dailyCalorieGoalProvider);
                    ref.invalidate(todaysMealsProvider);
                  },
                )
              else if (isLoading)
                const DailyGoalSkeleton()
              else
                Builder(
                  builder: (context) {
                    final loggedMeals = mealsAsync.value ?? <LoggedMeal>[];
                    final caloriesConsumed = loggedMeals.fold(
                      0,
                      (sum, loggedMeal) =>
                          sum + loggedMeal.meal.macros.calories,
                    );
                    final shouldEdit = !isTargetSet || _isEditing;

                    return shouldEdit
                        ? _GoalInput(onSetGoal: _updateAndSaveGoal)
                        : _ShowGoal(
                          caloriesGoal: goal,
                          caloriesBurned: caloriesBurned,
                          caloriesConsumed: caloriesConsumed,
                          onEdit: () => setState(() => _isEditing = true),
                        );
                  },
                ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 12,
          child: DisclaimerButton(
            data: getCalorieExpenditureDisclaimer(
              usedFallback: usedFallback,
              isHealthConnectAvailable:
                  healthService.status == HealthConnectSdkStatus.sdkAvailable,
              hasCaloriesData: caloriesBurned > 0,
            ),
          ),
        ),
      ],
    );
  }
}

class _ShowGoal extends ConsumerWidget {
  const _ShowGoal({
    required this.caloriesGoal,
    required this.onEdit,
    required this.caloriesBurned,
    required this.caloriesConsumed,
  });

  final int caloriesGoal;
  final VoidCallback onEdit;
  final int caloriesBurned;
  final int caloriesConsumed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final netCalories = caloriesConsumed - caloriesBurned;
    final weightChangeGrams = netCalories / 7.7;
    final isLosing = weightChangeGrams < 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Goal and Consumption combined in one line
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Icon(
              LucideIcons.flame,
              color: colorScheme.calorieIconColor,
              size: 18,
            ),
            SizedBox(width: 8),
            Text(
              t.home.dailyGoal.yourGoal,
              style: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 16),
            Spacer(),
            Text(
              caloriesConsumed.toStringAsFixed(0),
              style: textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.calorieIconColor,
                height: 1.0,
              ),
            ),
            SizedBox(width: 6),
            Text(
              t.home.dailyGoal.kcal,
              style: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            if (caloriesGoal > 0) ...[
              SizedBox(width: 6),
              Text(
                '/',
                style: textTheme.bodyLarge?.copyWith(
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
                ),
              ),
              SizedBox(width: 6),
              Text(
                caloriesGoal.toString(),
                style: textTheme.bodyLarge?.copyWith(
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ],
        ),
        // Burned Calories (if tracked)
        if (caloriesBurned > 0) ...[
          SizedBox(height: 12),
          Divider(height: 1),
          SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Icon(LucideIcons.bike, color: colorScheme.error, size: 20),
              SizedBox(width: 12),
              Text(
                t.home.dailyGoal.burned,
                style: textTheme.bodyLarge?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 16),
              Spacer(),
              Text(
                caloriesBurned.toString(),
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.error,
                  height: 1.0,
                ),
              ),
              SizedBox(width: 6),
              Text(
                t.home.dailyGoal.kcal,
                style: textTheme.bodyLarge?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Builder(
            builder: (context) {
              final profile = ref.watch(userProfileProvider).value;
              final weightUnit =
                  profile?.weightUnit.normalized ?? UnitSystem.METRIC;
              final formattedWeightChange = LocaleUtils.formatWeightChange(
                weightChangeGrams,
                weightUnit,
              );

              return Row(
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: textTheme.bodyLarge?.copyWith(
                          color: colorScheme.onSurface.withValues(alpha: 0.7),
                        ),
                        children: [
                          WidgetSpan(
                            child: Icon(
                              LucideIcons.weight,
                              size: 20,
                              color: colorScheme.onSurface.withValues(
                                alpha: 0.7,
                              ),
                            ),
                          ),
                          WidgetSpan(child: SizedBox(width: 8)),
                          TextSpan(text: t.home.dailyGoal.weightImpact),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        isLosing
                            ? LucideIcons.trendingDown
                            : LucideIcons.trendingUp,
                        color:
                            isLosing ? colorScheme.success : colorScheme.error,
                      ),
                      SizedBox(width: 8),
                      Text(
                        isLosing
                            ? t.home.dailyGoal.estLoss
                            : t.home.dailyGoal.estGain,
                      ),
                      SizedBox(width: 4),
                      Text(
                        formattedWeightChange,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ],
      ],
    );
  }
}

class _GoalInput extends StatefulWidget {
  const _GoalInput({required this.onSetGoal});

  final void Function(int calories) onSetGoal;

  @override
  State<_GoalInput> createState() => _GoalInputState();
}

class _GoalInputState extends State<_GoalInput> {
  final _controller = TextEditingController();
  final _inputFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Column(
      children: [
        Row(
          children: [
            Text(t.home.dailyGoal.dailyCalories, style: textTheme.bodyLarge),
            Spacer(),
            SizedBox(
              width: 40,
              child: TextField(
                focusNode: _inputFocus,
                controller: _controller,
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '0',
                  contentPadding: EdgeInsets.zero,
                  isDense: true,
                  hintStyle: textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onSurface.withValues(alpha: 0.6),
                    fontWeight: FontWeight.bold,
                  ),
                  counterText: '',
                ),
                keyboardType: TextInputType.number,
                style: TextStyle(fontWeight: FontWeight.bold),
                maxLength: 4,
                maxLines: 1,
                textInputAction: TextInputAction.done,
                onSubmitted: _onSetGoal,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            SizedBox(width: 4),
            Text(t.home.dailyGoal.kcal, style: textTheme.bodyLarge),
          ],
        ),
        SizedBox(height: 8),
        Align(
          alignment: Alignment.centerRight,
          child: PrimaryButton(
            analyticsEvent: AnalyticsEvent.setDailyGoal,
            onPressed: () {
              _onSetGoal(_controller.value.text);
            },
            text: t.home.dailyGoal.setGoal,
          ),
        ),
      ],
    );
  }

  void _onSetGoal(String value) {
    final goal = int.tryParse(value);
    if (goal == null) {
      FocusScope.of(context).requestFocus(_inputFocus);
      return;
    }
    widget.onSetGoal(goal);
  }
}
