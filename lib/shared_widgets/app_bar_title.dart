import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/features/home/widgets/home_screen_menu.dart';
import 'package:calorify/shared_widgets/animated_leaf.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final bool showMenu;

  const AppBarTitle({super.key, this.showMenu = false});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Row(
      children: [
        AnimatedLeaf(size: 36),
        SizedBox(width: 6),
        Text(
          EnvConfig.instance.title,
          style: textTheme.displaySmall?.copyWith(color: colorScheme.primary),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showMenu;

  const CommonAppBar({super.key, this.showMenu = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const AppBarTitle(),
      actions: showMenu ? const [HomeScreenMenu()] : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
