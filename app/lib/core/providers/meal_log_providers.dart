import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/models.dart';

final lastUsedFavoriteMealsProvider =
    StreamProvider.autoDispose<List<FavoriteMeal>>((ref) {
      return ref.watch(databaseInterfaceProvider).watchLastUsedFavoriteMeals();
    });
