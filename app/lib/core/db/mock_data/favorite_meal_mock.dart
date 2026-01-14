import 'package:models/models.dart';
import 'package:calorify/core/db/mock_data/meal_info_mock.dart';

/// Mock data generator for FavoriteMeal with realistic favorite meal scenarios
class FavoriteMealMock {
  static final List<String> _popularBreakfastFavorites = [
    'Oatmeal with Berries',
    'Scrambled Eggs with Toast',
    'Greek Yogurt Parfait',
    'Avocado Toast',
    'Pancakes with Syrup',
  ];

  static final List<String> _popularLunchFavorites = [
    'Grilled Chicken Salad',
    'Turkey Sandwich',
    'Quinoa Buddha Bowl',
    'Caesar Salad',
    'Chicken Wrap',
  ];

  static final List<String> _popularDinnerFavorites = [
    'Grilled Salmon',
    'Beef Stir Fry',
    'Pasta Carbonara',
    'Roasted Chicken',
    'Vegetable Curry',
  ];

  static final List<String> _popularSnackFavorites = [
    'Apple with Peanut Butter',
    'Mixed Nuts',
    'Greek Yogurt',
    'Protein Bar',
    'Hummus with Veggies',
  ];

  /// Generates a single favorite meal based on a source meal
  static MealInfo generateFavoriteFromSource(
    MealInfo sourceMeal, {
    int? sourceMealId,
  }) {
    return MealInfo(
      mealName: sourceMeal.mealName,
      mealQuantity: sourceMeal.mealQuantity,
      mealType: sourceMeal.mealType,
      calories: sourceMeal.calories,
      protein: sourceMeal.protein,
      carbs: sourceMeal.carbs,
      fat: sourceMeal.fat,
      fiber: sourceMeal.fiber,
      timestamp: DateTime.now(), // Current time when favorited
      imageUrl: sourceMeal.imageUrl,
      healthScore: sourceMeal.healthScore,
      healthScoreReason: sourceMeal.healthScoreReason,
    );
  }

  /// Generates a collection of popular favorite meals
  static List<MealInfo> generatePopularFavorites({int count = 10}) {
    final favorites = <MealInfo>[];
    final mealTypes = [
      MealType.breakfast,
      MealType.lunch,
      MealType.dinner,
      MealType.snack,
    ];

    for (int i = 0; i < count; i++) {
      final type = mealTypes[i % mealTypes.length];
      final mealName = _getPopularMealName(type);

      // Create a base meal and then generate favorite from it
      final baseMeal = MealInfoMock.generateSingle(
        mealType: type,
        mealName: mealName,
        timestamp: DateTime.now().subtract(Duration(days: i)),
      );

      favorites.add(generateFavoriteFromSource(baseMeal, sourceMealId: i + 1));
    }

    return favorites;
  }

  /// Generates favorites for a specific meal type
  static List<MealInfo> generateFavoritesForType(
    MealType type, {
    int count = 5,
  }) {
    final favorites = <MealInfo>[];
    final popularNames = _getPopularNamesForType(type);

    for (int i = 0; i < count && i < popularNames.length; i++) {
      final mealName = popularNames[i];

      final baseMeal = MealInfoMock.generateSingle(
        mealType: type,
        mealName: mealName,
        timestamp: DateTime.now().subtract(Duration(days: i)),
      );

      favorites.add(generateFavoriteFromSource(baseMeal, sourceMealId: i + 1));
    }

    return favorites;
  }

  /// Generates a realistic set of user favorites with different usage patterns
  static List<MealInfo> generateUserFavorites({
    int breakfastCount = 3,
    int lunchCount = 4,
    int dinnerCount = 3,
    int snackCount = 2,
  }) {
    final favorites = <MealInfo>[];

    // Breakfast favorites
    favorites.addAll(
      generateFavoritesForType(MealType.breakfast, count: breakfastCount),
    );

    // Lunch favorites
    favorites.addAll(
      generateFavoritesForType(MealType.lunch, count: lunchCount),
    );

    // Dinner favorites
    favorites.addAll(
      generateFavoritesForType(MealType.dinner, count: dinnerCount),
    );

    // Snack favorites
    favorites.addAll(
      generateFavoritesForType(MealType.snack, count: snackCount),
    );

    return favorites;
  }

  /// Generates favorites with realistic usage timestamps
  static List<MealInfo> generateFavoritesWithUsage({
    int totalCount = 15,
    DateTime? createdAt,
    DateTime? lastUsedAt,
  }) {
    final favorites = <MealInfo>[];
    final created =
        createdAt ?? DateTime.now().subtract(const Duration(days: 30));
    // Note: lastUsedAt parameter is available for future use in database operations

    for (int i = 0; i < totalCount; i++) {
      final type = MealType.values[i % MealType.values.length];
      final mealName = _getPopularMealName(type);

      final baseMeal = MealInfoMock.generateSingle(
        mealType: type,
        mealName: mealName,
        timestamp: created,
      );

      final favorite = generateFavoriteFromSource(
        baseMeal,
        sourceMealId: i + 1,
      );
      favorites.add(favorite);
    }

    return favorites;
  }

  /// Generates a variety of favorites for comprehensive testing
  static List<MealInfo> generateVariety({
    int count = 20,
    List<MealType>? mealTypes,
  }) {
    final types = mealTypes ?? MealType.values;
    final favorites = <MealInfo>[];

    for (int i = 0; i < count; i++) {
      final type = types[i % types.length];
      final mealName = _getPopularMealName(type);

      final baseMeal = MealInfoMock.generateSingle(
        mealType: type,
        mealName: mealName,
        timestamp: DateTime.now().subtract(Duration(days: i)),
      );

      favorites.add(generateFavoriteFromSource(baseMeal, sourceMealId: i + 1));
    }

    return favorites;
  }

  static String _getPopularMealName(MealType type) {
    final names = _getPopularNamesForType(type);
    return names[DateTime.now().millisecondsSinceEpoch % names.length];
  }

  static List<String> _getPopularNamesForType(MealType type) {
    return switch (type) {
      MealType.breakfast => _popularBreakfastFavorites,
      MealType.lunch => _popularLunchFavorites,
      MealType.dinner => _popularDinnerFavorites,
      MealType.snack => _popularSnackFavorites,
      MealType.unknown => [
        ..._popularBreakfastFavorites,
        ..._popularLunchFavorites,
        ..._popularDinnerFavorites,
        ..._popularSnackFavorites,
      ],
    };
  }
}
