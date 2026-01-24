import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:models/models.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:utils/utils.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/disclaimer_sheet.dart'
    show getWeightEstimateDisclaimer;
import 'package:calorify/features/home/widgets/disclaimer_button.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class SetDailyGoal extends StatefulWidget {
  const SetDailyGoal({super.key});

  @override
  State<SetDailyGoal> createState() => _SetDailyGoalState();
}

class _SetDailyGoalState extends State<SetDailyGoal> {
  int _target = 0;
  bool _isEditing = true;
  int _caloriesBurned = 0;

  @override
  void initState() {
    super.initState();
    _loadGoalFromDb();
    _fetchCaloriesBurned();
  }

  Future<void> _fetchCaloriesBurned() async {
    final calories = await HealthService.instance.getTotalCaloriesBurned();
    if (!mounted || calories == null) return;
    setState(() {
      _caloriesBurned = calories.toInt();
    });
  }

  Future<void> _updateAndSaveGoal(int calories) async {
    try {
      await DatabaseService.databaseInterface.setDailyCalorieGoal(calories);

      setState(() {
        _target = calories;
      });
    } catch (e) {
      debugPrint('Error saving daily goal: $e');
    } finally {
      setState(() {
        _isEditing = false;
      });
    }
  }

  Future<void> _loadGoalFromDb() async {
    try {
      final savedGoal =
          await DatabaseService.databaseInterface.getDailyCalorieGoal();
      if (savedGoal != null) {
        _target = savedGoal;
        _isEditing = false;
      } else {
        _isEditing = true;
      }
    } catch (e) {
      debugPrint('Error loading daily goal: $e');
      _isEditing = true;
    } finally {
      if (mounted) {
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final isTargetSet = _target > 0;

    return Stack(
      children: [
        Container(
          margin: globalMargin,
          padding: EdgeInsets.all(16),
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
              SizedBox(height: 8),
              Text(
                isTargetSet
                    ? t.home.dailyGoal.descriptionSet
                    : t.home.dailyGoal.description,
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSecondary.withValues(alpha: 0.7),
                ),
              ),
              const SizedBox(height: 20),
              StreamBuilder<List<MealInfo>>(
                stream:
                    DatabaseService.databaseInterface.watchAllMealsForToday(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return ErrorView(error: snapshot.error!);
                  }
                  final meals = snapshot.data ?? [];
                  final caloriesConsumed = meals.fold(
                    0,
                    (sum, meal) => sum + meal.calories,
                  );
                  return _isEditing
                      ? _GoalInput(onSetGoal: _updateAndSaveGoal)
                      : _ShowGoal(
                        caloriesGoal: _target,
                        caloriesBurned: _caloriesBurned,
                        caloriesConsumed: caloriesConsumed,
                        onEdit: () => setState(() => _isEditing = true),
                      );
                },
              ),
            ],
          ),
        ),
        if (_caloriesBurned > 0)
          Positioned(
            top: 0,
            right: 12,
            child: DisclaimerButton(data: getWeightEstimateDisclaimer()),
          ),
      ],
    );
  }
}

class _ShowGoal extends StatelessWidget {
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
  Widget build(BuildContext context) {
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
          SizedBox(height: 20),
          Divider(height: 1),
          SizedBox(height: 20),
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
          SizedBox(height: 20),
          FutureBuilder<UserProfile?>(
            future: OnboardingService.instance.getProfileData(),
            builder: (context, profileSnapshot) {
              // Default to metric if profile not available
              final weightUnit =
                  profileSnapshot.data != null
                      ? profileSnapshot.data!.weightUnit.normalized
                      : UnitSystem.METRIC;
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
        SizedBox(height: 12),
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
