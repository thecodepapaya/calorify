import 'package:calorify/shared_widgets/cat_peek_easter_egg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Grass extends StatefulWidget {
  const Grass({super.key, this.height = 100, this.onTap});

  final double height;
  final VoidCallback? onTap;

  @override
  State<Grass> createState() => _GrassState();
}

class _GrassState extends State<Grass> {
  bool _showCat = false;

  void _handleTap() {
    if (!_showCat) {
      debugPrint('🌱 Grass tapped! Showing cute cat easter egg...');
      setState(() {
        _showCat = true;
      });
      widget.onTap?.call();
    }
  }

  void _onCatAnimationComplete() {
    setState(() {
      _showCat = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: _handleTap,
      child: SizedBox(
        height: widget.height,
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Cat appears behind the grass
            if (_showCat)
              CatPeekEasterEgg(
                grassHeight: widget.height,
                onComplete: _onCatAnimationComplete,
              ),
            // SVG grass (on top)
            Positioned(
              left: -16, // Overflow 16px on left
              right: -16, // Overflow 16px on right
              bottom: -20, // Overflow 12px on bottom
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  colorScheme.primary,
                  BlendMode.srcIn,
                ),
                child: SvgPicture.asset(
                  'assets/images/grass.svg',
                  width: double.infinity,
                  height: widget.height + 12, // Add bottom overflow to height
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
