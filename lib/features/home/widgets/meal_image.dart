import 'dart:typed_data';

import 'package:calorify/core/constants/assets.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:flutter/material.dart';

class MealImage extends StatelessWidget {
  const MealImage({super.key, this.imageBytes, this.imageUrl});

  final Uint8List? imageBytes;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    final normalizedImageUrl = imageUrl?.trim();

    return Container(
      decoration: BoxDecoration(
        borderRadius: globalRadius,
        image: DecorationImage(
          image:
              imageBytes != null
                  ? MemoryImage(imageBytes!)
                  : normalizedImageUrl?.isNotEmpty == true
                  ? NetworkImage(normalizedImageUrl!)
                  : AssetImage(Assets.foodPlaceholder),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      height: 200,
    );
  }
}
