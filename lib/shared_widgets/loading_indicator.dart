import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class AppLoader extends StatefulWidget {
  const AppLoader({super.key, this.color});

  final Color? color;

  @override
  State<AppLoader> createState() => _AppLoaderState();
}

// We need TickerProviderStateMixin again for two AnimationControllers
class _AppLoaderState extends State<AppLoader> with TickerProviderStateMixin {
  late final AnimationController _slideController; // Controller for slide (hop)
  late final Animation<Offset> _slideAnimation;

  late final AnimationController _rotationController; // Controller for rotation
  late final Animation<double> _rotationAnimation;

  // Tween for the rhythmic hop (small side-to-side and a small lift).
  final _slideTween = Tween<Offset>(
    begin: const Offset(-0.1, 0.0), // Start slightly left, on the 'ground'
    end: const Offset(0.1, -0.05), // End slightly right, slightly 'lifted'
  );

  // Tween for a small rotation.
  // We want it to rotate back and forth, so begin and end will be different.
  final _rotationTween = Tween<double>(
    begin:
        -0.05, // Start with a slight counter-clockwise rotation (e.g., -18 degrees)
    end: 0.05, // End with a slight clockwise rotation (e.g., +18 degrees)
  );

  @override
  void initState() {
    super.initState();

    // --- Slide (Hop) Animation ---
    _slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
      reverseDuration: const Duration(milliseconds: 350),
    );
    _slideAnimation = _slideTween.animate(
      CurvedAnimation(
        parent: _slideController,
        curve: Curves.easeInOut,
        reverseCurve: Curves.easeInOut,
      ),
    );
    _slideController.repeat(reverse: true);

    // --- Rotation Animation ---
    _rotationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350), // Match hop speed
      reverseDuration: const Duration(milliseconds: 350),
    );
    _rotationAnimation = _rotationTween.animate(
      CurvedAnimation(
        parent: _rotationController,
        curve: Curves.easeInOut,
        reverseCurve: Curves.easeInOut,
      ),
    );
    _rotationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _slideController.dispose();
    _rotationController.dispose(); // Dispose the new controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return RepaintBoundary(
      child: Center(
        // Nest the RotationTransition around the SlideTransition
        child: RotationTransition(
          turns: _rotationAnimation, // Use the rotation animation here
          child: SlideTransition(
            position: _slideAnimation, // Use the slide animation here
            child: Icon(
              _allIcons.first, // LucideIcons.apple
              color: widget.color ?? colorScheme.onSurface,
              size: 28,
            ),
          ),
        ),
      ),
    );
  }
}

// List of available icons
final _allIcons = [
  LucideIcons.apple,
  LucideIcons.drumstick,
  LucideIcons.leafyGreen,
  LucideIcons.milk,
  LucideIcons.soup,
];
