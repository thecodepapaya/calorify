import 'dart:typed_data';

import 'package:calorify/core/constants/assets.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:flutter/material.dart';

class MealImage extends StatelessWidget {
  const MealImage({super.key, this.imageBytes});

  final Uint8List? imageBytes;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: globalRadius,
        image: DecorationImage(
          image:
              imageBytes != null
                  ? MemoryImage(imageBytes!)
                  : AssetImage(Assets.foodPlaceholder),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      height: 200,
    );
  }
}
