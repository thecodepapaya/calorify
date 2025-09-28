import 'dart:typed_data';

import 'package:calorify/core/constants/styles.dart';
import 'package:flutter/material.dart';

class MealImage extends StatelessWidget {
  const MealImage({super.key, this.imageBytes, this.imageUrl});

  final Uint8List? imageBytes;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    final normalizedImageUrl = imageUrl?.trim() ?? '';

    if (imageBytes?.isEmpty ?? true && normalizedImageUrl.isEmpty) {
      return SizedBox();
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: globalRadius,
        image: DecorationImage(
          image:
              imageBytes != null
                  ? MemoryImage(imageBytes!)
                  : NetworkImage(normalizedImageUrl),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      height: 200,
    );
  }
}
