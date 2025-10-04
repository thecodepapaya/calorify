import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/disclaimer_sheet.dart';
import 'package:calorify/features/home/widgets/disclaimer_button.dart';
import 'package:calorify/shared_widgets/error_view.dart';
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
      print('Error saving daily goal: $e');
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
      print('Error loading daily goal: $e');
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
                    isTargetSet ? 'Your Daily Goal' : 'Set Your Daily Goal',
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
                    ? 'Your compass is set! '
                        'This is your daily calorie target to guide you.'
                    : 'Ready to embark on your wellness journey? '
                        'Set your daily calorie target below to kickstart your progress.',
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
            child: DisclaimerButton(data: weightEstimateDisclaimer),
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
        Row(
          children: [
            Text(
              'Your Goal',
              style: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSecondary.withValues(alpha: 0.7),
              ),
            ),
            Spacer(),
            RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(LucideIcons.flame, color: calorieIconColor),
                  ),
                  WidgetSpan(child: SizedBox(width: 4)),
                  TextSpan(
                    text: caloriesGoal.toString(),
                    style: textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: ' kcal',
                    style: textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onSecondary.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: onEdit,
              icon: Icon(LucideIcons.squarePen, size: 16),
            ),
          ],
        ),
        if (caloriesBurned > 0) ...[
          SizedBox(height: 12),
          Divider(),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _CalorieMetric(
                icon: LucideIcons.flame,
                color: colorScheme.tertiary,
                label: 'Intake',
                value: caloriesConsumed,
              ),
              _CalorieMetric(
                icon: LucideIcons.bike,
                color: colorScheme.error,
                label: 'Burned',
                value: caloriesBurned,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
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
                          color: colorScheme.onSurface.withValues(alpha: 0.7),
                        ),
                      ),
                      WidgetSpan(child: SizedBox(width: 8)),
                      TextSpan(text: 'Weight Impact'),
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
                    color: isLosing ? Colors.green : Colors.red,
                  ),
                  SizedBox(width: 8),
                  Text('Est. ${isLosing ? 'loss' : 'gain'} of'),
                  SizedBox(width: 4),
                  Text(
                    '${weightChangeGrams.abs().toStringAsFixed(0)}g',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ],
    );
  }
}

class _CalorieMetric extends StatelessWidget {
  const _CalorieMetric({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  final IconData icon;
  final Color color;
  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Column(
      children: [
        Row(
          children: [
            Icon(icon, size: 24, color: color),
            SizedBox(width: 8),
            Text(
              label,
              style: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSecondary.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
        SizedBox(height: 6),
        Text(
          '$value',
          style: textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),
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
            Text('Daily calories (kcal)', style: textTheme.bodyLarge),
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
            Text('kcal', style: textTheme.bodyLarge),
          ],
        ),
        SizedBox(height: 12),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            onPressed: () {
              _onSetGoal(_controller.value.text);
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(colorScheme.tertiary),
              foregroundColor: WidgetStatePropertyAll(colorScheme.onTertiary),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: globalRadius),
              ),
            ),
            child: Text('Set Goal'),
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
