import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons/lucide_icons.dart';

class SetDailyGoal extends StatefulWidget {
  const SetDailyGoal({super.key});

  @override
  State<SetDailyGoal> createState() => _SetDailyGoalState();
}

class _SetDailyGoalState extends State<SetDailyGoal> {
  int _target = 0;
  bool _isEditing = true;
  double _caloriesBurned = 0;

  @override
  void initState() {
    super.initState();
    _loadGoalFromDb();
    _fetchCaloriesBurned();
  }

  Future<void> _fetchCaloriesBurned() async {
    final calories = await HealthService.instance.getTotalCaloriesBurned();
    if (mounted) {
      setState(() {
        _caloriesBurned = calories;
      });
    }
  }

  Future<void> _updateAndSaveGoal(int calories) async {
    setState(() {
      _target = calories;
      _isEditing = false;
    });

    try {
      await appDb.setDailyCalorieGoal(calories);

      if (mounted) {}
    } catch (e) {
      print('Error saving daily goal: $e');

      if (mounted) {}
    }
  }

  Future<void> _loadGoalFromDb() async {
    try {
      final savedGoal = await appDb.getDailyCalorieGoal();
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

    return StreamBuilder<List<MealInfo>>(
        stream: appDb.watchAllMealsForToday(),
        builder: (context, snapshot) {
          final meals = snapshot.data ?? [];
          final caloriesConsumed =
              meals.fold(0, (sum, meal) => sum + meal.calories);

          return Container(
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
                _isEditing
                    ? _GoalInput(onSetGoal: _updateAndSaveGoal)
                    : _ShowGoal(
                        caloriesGoal: _target,
                        caloriesBurned: _caloriesBurned,
                        caloriesConsumed: caloriesConsumed,
                        onEdit: () => setState(() => _isEditing = true),
                      ),
              ],
            ),
          );
        });
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
  final double caloriesBurned;
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
              icon: Icon(LucideIcons.edit, size: 16),
            ),
          ],
        ),
        if (caloriesBurned > 0) ...[
          SizedBox(height: 20),
          Divider(),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(LucideIcons.flame, color: Colors.orange),
              SizedBox(width: 8),
              Text(
                'Calories Burned: ',
                style: textTheme.bodyLarge,
              ),
              Text(
                '${caloriesBurned.toStringAsFixed(0)} kcal',
                style: textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Icon(
                isLosing ? LucideIcons.trendingDown : LucideIcons.trendingUp,
                color: isLosing ? Colors.green : Colors.red,
              ),
              SizedBox(width: 8),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: textTheme.bodyLarge,
                    children: [
                      TextSpan(text: 'Today\'s forecast: '),
                      TextSpan(
                        text:
                            '${isLosing ? 'loss' : 'gain'} of ${weightChangeGrams.abs().toStringAsFixed(0)}g',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ]
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
                  hintStyle: TextStyle(
                    color: colorScheme.onSecondary.withValues(alpha: 0.7),
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
