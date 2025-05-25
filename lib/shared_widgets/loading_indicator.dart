import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class AppLoader extends StatefulWidget {
  const AppLoader({super.key, this.color});

  final Color? color;

  @override
  State<AppLoader> createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader> with TickerProviderStateMixin {
  late final AnimationController _sizeController;
  late final AnimationController _rotationController;
  late final Animation<double> _sizeAnimation;
  late final Animation<double> _rotationAnimation;
  final _tween = Tween<double>(begin: 0.08, end: 1);
  final _rotationTween = Tween<double>(begin: 0, end: 1);

  @override
  void initState() {
    super.initState();

    _sizeController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
      reverseDuration: Duration(milliseconds: 600),
    );

    _rotationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );

    _sizeAnimation = CurvedAnimation(
      parent: _sizeController,
      curve: Curves.easeInOutCubicEmphasized,
      reverseCurve: Curves.easeInOutCubicEmphasized,
    );

    _rotationAnimation = CurvedAnimation(
      parent: _rotationController,
      curve: Curves.easeInOutCubicEmphasized,
    );

    _sizeController.repeat(reverse: true);
    _rotationController.repeat(reverse: false);
  }

  @override
  void dispose() {
    _sizeController.dispose();
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return Center(
      child: RotationTransition(
        turns: _rotationTween.animate(_rotationAnimation),
        child: ScaleTransition(
          scale: _tween.animate(_sizeAnimation),
          child: Icon(
            _allIcons.first,
            color: widget.color ?? colorScheme.onSurface,
            size: 28,
          ),
        ),
      ),
    );
  }
}

final _allIcons = [
  LucideIcons.apple,
  LucideIcons.drumstick,
  LucideIcons.leafyGreen,
  LucideIcons.milk,
  LucideIcons.soup,
];
