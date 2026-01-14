import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:models/models.dart';
import 'package:specs/specs.dart';
import 'package:calorify_watch/widgets/calorie_summary_card.dart';
import 'package:calorify_watch/widgets/macro_chart.dart';
import 'package:calorify_watch/widgets/calorie_trend_chart.dart';
import 'package:calorify_watch/widgets/meal_list_item.dart';
import 'package:calorify_watch/widgets/carousel_scroll_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with TickerProviderStateMixin {
  List<MealInfo> _todaysMeals = [];
  int? _calorieGoal;
  int _totalCalories = 0;
  bool _isLoading = true;
  String? _errorMessage;
  late AnimationController _refreshController;

  @override
  void initState() {
    super.initState();
    _refreshController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _loadData();
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });
    _refreshController.reset();
    _refreshController.forward();

    try {
      final meals = await SyncService.instance.requestTodaysMeals();
      final goal = await SyncService.instance.requestCalorieGoal();

      setState(() {
        _todaysMeals = meals;
        _calorieGoal = goal;
        _totalCalories = meals.fold(0, (sum, meal) => sum + meal.calories);
        _isLoading = false;
        _errorMessage = null;
      });
      HapticFeedback.lightImpact();
    } catch (e) {
      setState(() {
        _isLoading = false;
        _errorMessage = 'Failed to load data. Please try again.';
      });
      HapticFeedback.mediumImpact();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: SafeArea(
        minimum: circularWatchPadding,
        child:
            _isLoading
                ? Semantics(
                  label: 'Loading calorie data',
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RotationTransition(
                          turns: _refreshController,
                          child: Icon(
                            LucideIcons.loader,
                            size: 40,
                            color: colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Syncing...',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                            fontSize: 10,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              LucideIcons.watch,
                              size: 10,
                              color: colorScheme.onSurfaceVariant.withValues(
                                alpha: 0.5,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'Connecting to phone',
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: colorScheme.onSurfaceVariant.withValues(
                                  alpha: 0.5,
                                ),
                                fontSize: 8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                : _errorMessage != null
                ? _ErrorView(message: _errorMessage!, onRetry: _loadData)
                : CarouselScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  minScale: 0.88,
                  scaleRange: 0.12,
                  children: [
                    // Header with sync status and debug button
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  LucideIcons.check,
                                  size: 12,
                                  color: colorScheme.primary.withValues(alpha: 0.7),
                                ),
                                const SizedBox(width: 4),
                                Flexible(
                                  child: Text(
                                    'Synced',
                                    style: theme.textTheme.labelSmall?.copyWith(
                                      color: colorScheme.onSurfaceVariant.withValues(
                                        alpha: 0.6,
                                      ),
                                      fontSize: 8,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (kDebugMode)
                            GestureDetector(
                              onTap: () {
                                HapticFeedback.lightImpact();
                                context.router.push(const DebugRoute());
                              },
                              child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: colorScheme.tertiaryContainer.withValues(
                                    alpha: 0.5,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  LucideIcons.bug,
                                  size: 12,
                                  color: colorScheme.tertiary,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    // Calorie Summary
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: CalorieSummaryCard(
                        totalCalories: _totalCalories,
                        goal: _calorieGoal ?? 2000,
                      ),
                    ),
                    // Macro Chart
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: MacroChart(meals: _todaysMeals),
                    ),
                    // Calorie Trend Chart
                    if (_todaysMeals.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: CalorieTrendChart(meals: _todaysMeals),
                      ),
                    // Action Buttons
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _WatchActionButton(
                            icon: LucideIcons.mic,
                            label: 'Log Meal',
                            onTap:
                                () => context.router.push(const LogMealRoute()),
                            delay: 0.0,
                          ),
                          const SizedBox(width: 16),
                          _WatchActionButton(
                            icon: LucideIcons.history,
                            label: 'History',
                            onTap:
                                () => context.router.push(const HistoryRoute()),
                            delay: 0.1,
                          ),
                        ],
                      ),
                    ),
                    // Today's Meals section
                    if (_todaysMeals.isNotEmpty) ...[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              LucideIcons.packageOpen,
                              size: 16,
                              color: colorScheme.primary,
                            ),
                            const SizedBox(width: 6),
                            Flexible(
                              child: Text(
                                'Today\'s Meals',
                                style: theme.textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.3,
                                  color: colorScheme.onSurface,
                                  fontSize: 11,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: colorScheme.primaryContainer.withValues(
                                  alpha: 0.3,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                '${_todaysMeals.length}',
                                style: theme.textTheme.labelSmall?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 9,
                                  color: colorScheme.primary,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ..._todaysMeals
                          .take(3)
                          .toList()
                          .asMap()
                          .entries
                          .map(
                            (entry) => Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: MealListItem(
                                meal: entry.value,
                                index: entry.key,
                              ),
                            ),
                          ),
                      if (_todaysMeals.length > 3)
                        Padding(
                          padding: const EdgeInsets.only(top: 6, bottom: 12),
                          child: GestureDetector(
                            onTap: () {
                              HapticFeedback.lightImpact();
                              context.router.push(const HistoryRoute());
                            },
                            child: Semantics(
                              label:
                                  '${_todaysMeals.length - 3} more meals. Tap to view all.',
                              button: true,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    LucideIcons.arrowRight,
                                    size: 10,
                                    color: colorScheme.primary,
                                  ),
                                  const SizedBox(width: 4),
                                  Flexible(
                                    child: Text(
                                      'View ${_todaysMeals.length - 3} more',
                                      style: theme.textTheme.labelSmall
                                          ?.copyWith(
                                            color: colorScheme.primary,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 9,
                                          ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                    ] else ...[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: _EmptyMealsView(),
                      ),
                    ],
                  ],
                ),
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorView({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Semantics(
      label: 'Error: $message. Double tap to retry',
      button: true,
      onTap: onRetry,
      child: Center(
        child: Padding(
          padding: circularWatchPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, size: 32, color: colorScheme.error),
              const SizedBox(height: 12),
              Flexible(
                child: Text(
                  message,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  HapticFeedback.mediumImpact();
                  onRetry();
                },
                child: Semantics(
                  label: 'Retry loading data',
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 44,
                      minHeight: 44,
                    ),
                    decoration: BoxDecoration(
                      color: colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: colorScheme.primary.withValues(alpha: 0.4),
                        width: 1.5,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          LucideIcons.refreshCw,
                          size: 14,
                          color: colorScheme.onPrimaryContainer,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'Retry',
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: colorScheme.onPrimaryContainer,
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WatchActionButton extends StatefulWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final double delay;

  const _WatchActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
    this.delay = 0.0,
  });

  @override
  State<_WatchActionButton> createState() => _WatchActionButtonState();
}

class _WatchActionButtonState extends State<_WatchActionButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(
          widget.delay,
          0.8 + widget.delay,
          curve: Curves.easeOut,
        ),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(
          widget.delay,
          0.8 + widget.delay,
          curve: Curves.easeOutBack,
        ),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Semantics(
      label: '${widget.label} button',
      button: true,
      onTap: () {
        HapticFeedback.mediumImpact();
        widget.onTap();
      },
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: GestureDetector(
            onTapDown: (_) {
              setState(() => _isPressed = true);
              HapticFeedback.lightImpact();
            },
            onTapUp: (_) {
              setState(() => _isPressed = false);
              HapticFeedback.mediumImpact();
              widget.onTap();
            },
            onTapCancel: () => setState(() => _isPressed = false),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOutCubic,
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors:
                      _isPressed
                          ? [
                            colorScheme.primary.withValues(alpha: 0.85),
                            colorScheme.primaryContainer.withValues(alpha: 0.9),
                          ]
                          : [colorScheme.primary, colorScheme.primaryContainer],
                ),
                shape: BoxShape.circle,
                boxShadow:
                    _isPressed
                        ? []
                        : [
                          BoxShadow(
                            color: colorScheme.primary.withValues(alpha: 0.3),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                            spreadRadius: 0,
                          ),
                        ],
              ),
              transform: Matrix4.identity()..scale(_isPressed ? 0.92 : 1.0),
              child: Icon(widget.icon, size: 22, color: colorScheme.onPrimary),
            ),
          ),
        ),
      ),
    );
  }
}

class _EmptyMealsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Semantics(
      label: 'No meals logged today',
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              LucideIcons.listChecks,
              size: 32,
              color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
            ),
            const SizedBox(height: 8),
            Text(
              'No meals logged',
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
                fontWeight: FontWeight.w500,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  LucideIcons.mic,
                  size: 10,
                  color: colorScheme.primary.withValues(alpha: 0.7),
                ),
                const SizedBox(width: 4),
                Text(
                  'Tap "Log Meal" to start',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: colorScheme.primary.withValues(alpha: 0.7),
                    fontSize: 8,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
