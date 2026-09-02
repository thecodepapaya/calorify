import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/tabs.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/app_bar_title.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';
import 'package:calorify/shared_widgets/responsive_layout.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [HomeRoute(), LogRoute(), MealHistoryRoute()],
      transitionBuilder:
          (context, child, animation) =>
              FadeTransition(opacity: animation, child: child),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return LayoutBuilder(
          builder: (context, constraints) {
            final useRail = constraints.maxWidth >= AppBreakpoints.expanded;
            return Scaffold(
              extendBody: !useRail,
              appBar: CommonAppBar(),
              body:
                  useRail
                      ? Row(
                        children: [
                          _TabletNavigationRail(
                            tabsRouter: tabsRouter,
                            extended:
                                constraints.maxWidth >=
                                AppBreakpoints.extraExpanded,
                          ),
                          const VerticalDivider(width: 1),
                          Expanded(child: child),
                        ],
                      )
                      : child,
              bottomNavigationBar:
                  useRail ? null : _FloatingDock(tabsRouter: tabsRouter),
            );
          },
        );
      },
    );
  }
}

class _FloatingDock extends StatelessWidget {
  const _FloatingDock({required this.tabsRouter});

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        heightFactor: 1,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 560),
          child: Container(
            margin: const EdgeInsets.fromLTRB(24, 0, 24, 16),
            height: 72,
            decoration: BoxDecoration(
              color: colorScheme.surface.withValues(alpha: 0.9),
              borderRadius: BorderRadius.circular(36),
              boxShadow: [
                BoxShadow(
                  color: colorScheme.shadow.withValues(alpha: 0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
              border: Border.all(
                color: colorScheme.outlineVariant.withValues(alpha: 0.5),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _DockItem(
                    icon: AppIcons.layoutDashboard,
                    label: t.tabs.dashboard,
                    isSelected: tabsRouter.activeIndex == MainTab.home.index,
                    onTap: () => _selectMainTab(tabsRouter, MainTab.home),
                  ),
                  _CenterDockItem(
                    isSelected: tabsRouter.activeIndex == MainTab.logMeal.index,
                    onTap: () => _selectMainTab(tabsRouter, MainTab.logMeal),
                  ),
                  _DockItem(
                    icon: AppIcons.history,
                    label: t.tabs.history,
                    isSelected:
                        tabsRouter.activeIndex == MainTab.mealHistory.index,
                    onTap:
                        () => _selectMainTab(tabsRouter, MainTab.mealHistory),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TabletNavigationRail extends StatelessWidget {
  const _TabletNavigationRail({
    required this.tabsRouter,
    required this.extended,
  });

  final TabsRouter tabsRouter;
  final bool extended;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: false,
      child: NavigationRail(
        key: const Key('tablet_navigation_rail'),
        extended: extended,
        minExtendedWidth: 220,
        labelType:
            extended
                ? NavigationRailLabelType.none
                : NavigationRailLabelType.all,
        selectedIndex: tabsRouter.activeIndex,
        onDestinationSelected: (index) {
          _selectMainTab(tabsRouter, MainTab.values[index]);
        },
        destinations: [
          NavigationRailDestination(
            icon: const Icon(AppIcons.layoutDashboard),
            selectedIcon: const Icon(AppIcons.layoutDashboard),
            label: Text(t.tabs.dashboard),
          ),
          NavigationRailDestination(
            icon: const Icon(AppIcons.plus),
            selectedIcon: const Icon(AppIcons.circlePlus),
            label: Text(t.meal.addMeal),
          ),
          NavigationRailDestination(
            icon: const Icon(AppIcons.history),
            selectedIcon: const Icon(AppIcons.history),
            label: Text(t.tabs.history),
          ),
        ],
      ),
    );
  }
}

void _selectMainTab(TabsRouter tabsRouter, MainTab tab) {
  final event = switch (tab) {
    MainTab.home => AnalyticsEvent.viewDashboard,
    MainTab.logMeal => AnalyticsEvent.viewLog,
    MainTab.mealHistory => AnalyticsEvent.viewHistory,
  };
  Analytics.instance.logEvent(event);
  tabsRouter.setActiveIndex(tab.index);
}

class _DockItem extends StatelessWidget {
  const _DockItem({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color:
                    isSelected
                        ? colorScheme.primaryContainer
                        : colorScheme.surface.withValues(alpha: 0),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color:
                    isSelected
                        ? colorScheme.primary
                        : colorScheme.onSurface.withValues(alpha: 0.6),
                size: 24,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 10,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color:
                    isSelected
                        ? colorScheme.primary
                        : colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CenterDockItem extends StatelessWidget {
  const _CenterDockItem({required this.isSelected, required this.onTap});

  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: colorScheme.primary,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: colorScheme.primary.withValues(alpha: 0.4),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
          border:
              isSelected
                  ? Border.all(color: colorScheme.onPrimary, width: 2)
                  : null,
        ),
        child: Icon(AppIcons.plus, color: colorScheme.onPrimary, size: 32),
      ),
    );
  }
}
