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

  /// Generates a single favorite meal based on a source LoggedMeal
  static FavoriteMeal generateFavoriteFromSource(
    LoggedMeal loggedMeal, {
    int? clientId,
    DateTime? favoriteAt,
    DateTime? lastUsedAt,
  }) {
    final now = DateTime.now();
    return FavoriteMeal(
      clientId: clientId ?? 0,
      loggedMeal: loggedMeal,
      favoriteAt: dateTimeToIso8601String(favoriteAt ?? now),
      lastUsedAt: dateTimeToIso8601String(lastUsedAt ?? now),
    );
  }

  /// Generates a collection of popular favorite meals
  static List<FavoriteMeal> generatePopularFavorites({
    int count = 10,
    int startClientId = 1,
  }) {
    final favorites = <FavoriteMeal>[];
    final mealTypes = mealTypeValues;
    int clientId = startClientId;

    for (int i = 0; i < count; i++) {
      final type = mealTypes[i % mealTypes.length];
      final mealName = _getPopularMealName(type);

      // Create a base logged meal and then generate favorite from it
      final loggedMeal = MealInfoMock.generateSingle(
        mealType: type,
        mealName: mealName,
        timestamp: DateTime.now().subtract(Duration(days: i)),
        clientId: i + 1,
      );

      favorites.add(
        generateFavoriteFromSource(
          loggedMeal,
          clientId: clientId++,
          favoriteAt: DateTime.now().subtract(Duration(days: i)),
        ),
      );
    }

    return favorites;
  }

  /// Generates favorites for a specific meal type
  static List<FavoriteMeal> generateFavoritesForType(
    MealType type, {
    int count = 5,
    int startClientId = 1,
  }) {
    final favorites = <FavoriteMeal>[];
    final popularNames = _getPopularNamesForType(type);
    int clientId = startClientId;

    for (int i = 0; i < count && i < popularNames.length; i++) {
      final mealName = popularNames[i];

      final loggedMeal = MealInfoMock.generateSingle(
        mealType: type,
        mealName: mealName,
        timestamp: DateTime.now().subtract(Duration(days: i)),
        clientId: i + 1,
      );

      favorites.add(
        generateFavoriteFromSource(
          loggedMeal,
          clientId: clientId++,
          favoriteAt: DateTime.now().subtract(Duration(days: i)),
        ),
      );
    }

    return favorites;
  }

  /// Generates a realistic set of user favorites with different usage patterns
  static List<FavoriteMeal> generateUserFavorites({
    int breakfastCount = 3,
    int lunchCount = 4,
    int dinnerCount = 3,
    int snackCount = 2,
    int startClientId = 1,
  }) {
    final favorites = <FavoriteMeal>[];
    int clientId = startClientId;

    // Breakfast favorites
    final breakfastFavorites = generateFavoritesForType(
      MealType.BREAKFAST,
      count: breakfastCount,
      startClientId: clientId,
    );
    favorites.addAll(breakfastFavorites);
    clientId += breakfastFavorites.length;

    // Lunch favorites
    final lunchFavorites = generateFavoritesForType(
      MealType.LUNCH,
      count: lunchCount,
      startClientId: clientId,
    );
    favorites.addAll(lunchFavorites);
    clientId += lunchFavorites.length;

    // Dinner favorites
    final dinnerFavorites = generateFavoritesForType(
      MealType.DINNER,
      count: dinnerCount,
      startClientId: clientId,
    );
    favorites.addAll(dinnerFavorites);
    clientId += dinnerFavorites.length;

    // Snack favorites
    final snackFavorites = generateFavoritesForType(
      MealType.SNACK,
      count: snackCount,
      startClientId: clientId,
    );
    favorites.addAll(snackFavorites);

    return favorites;
  }

  /// Generates favorites with realistic usage timestamps
  static List<FavoriteMeal> generateFavoritesWithUsage({
    int totalCount = 15,
    DateTime? createdAt,
    DateTime? lastUsedAt,
    int startClientId = 1,
  }) {
    final favorites = <FavoriteMeal>[];
    final created =
        createdAt ?? DateTime.now().subtract(const Duration(days: 30));
    int clientId = startClientId;

    for (int i = 0; i < totalCount; i++) {
      final type = mealTypeValues[i % mealTypeValues.length];
      final mealName = _getPopularMealName(type);

      final loggedMeal = MealInfoMock.generateSingle(
        mealType: type,
        mealName: mealName,
        timestamp: created,
        clientId: i + 1,
      );

      final favorite = generateFavoriteFromSource(
        loggedMeal,
        clientId: clientId++,
        favoriteAt: created,
        lastUsedAt: lastUsedAt ?? created,
      );
      favorites.add(favorite);
    }

    return favorites;
  }

  /// Generates a variety of favorites for comprehensive testing
  static List<FavoriteMeal> generateVariety({
    int count = 20,
    List<MealType>? mealTypes,
    int startClientId = 1,
  }) {
    final types = mealTypes ?? mealTypeValues;
    final favorites = <FavoriteMeal>[];
    int clientId = startClientId;

    for (int i = 0; i < count; i++) {
      final type = types[i % types.length];
      final mealName = _getPopularMealName(type);

      final loggedMeal = MealInfoMock.generateSingle(
        mealType: type,
        mealName: mealName,
        timestamp: DateTime.now().subtract(Duration(days: i)),
        clientId: i + 1,
      );

      favorites.add(
        generateFavoriteFromSource(
          loggedMeal,
          clientId: clientId++,
          favoriteAt: DateTime.now().subtract(Duration(days: i)),
        ),
      );
    }

    return favorites;
  }

  static String _getPopularMealName(MealType type) {
    final names = _getPopularNamesForType(type);
    return names[DateTime.now().millisecondsSinceEpoch % names.length];
  }

  static List<String> _getPopularNamesForType(MealType type) {
    return switch (type) {
      MealType.BREAKFAST => _popularBreakfastFavorites,
      MealType.LUNCH => _popularLunchFavorites,
      MealType.DINNER => _popularDinnerFavorites,
      MealType.SNACK => _popularSnackFavorites,
      MealType.UNKNOWN => [
        ..._popularBreakfastFavorites,
        ..._popularLunchFavorites,
        ..._popularDinnerFavorites,
        ..._popularSnackFavorites,
      ],
      _ => [
        ..._popularBreakfastFavorites,
        ..._popularLunchFavorites,
        ..._popularDinnerFavorites,
        ..._popularSnackFavorites,
      ],
    };
  }
}
