import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/models/meal_type.dart';

/// Mock data generator for MealInfo with variety and realistic nutritional values
class MealInfoMock {
  static final List<String> _breakfastItems = [
    'Oatmeal with Berries',
    'Scrambled Eggs with Toast',
    'Greek Yogurt Parfait',
    'Avocado Toast',
    'Pancakes with Syrup',
    'Cereal with Milk',
    'Smoothie Bowl',
    'Bagel with Cream Cheese',
    'French Toast',
    'Breakfast Burrito',
  ];

  static final List<String> _lunchItems = [
    'Grilled Chicken Salad',
    'Turkey Sandwich',
    'Quinoa Buddha Bowl',
    'Caesar Salad',
    'Chicken Wrap',
    'Pasta Primavera',
    'Sushi Roll',
    'Burger with Fries',
    'Soup and Sandwich',
    'Mediterranean Bowl',
  ];

  static final List<String> _dinnerItems = [
    'Grilled Salmon',
    'Beef Stir Fry',
    'Pasta Carbonara',
    'Roasted Chicken',
    'Vegetable Curry',
    'Pizza Margherita',
    'Tacos with Rice',
    'Baked Cod',
    'Lamb Chops',
    'Vegetarian Lasagna',
  ];

  static final List<String> _snackItems = [
    'Apple with Peanut Butter',
    'Mixed Nuts',
    'Greek Yogurt',
    'Protein Bar',
    'Hummus with Veggies',
    'Cheese and Crackers',
    'Banana',
    'Trail Mix',
    'Dark Chocolate',
    'Rice Cakes',
  ];

  static final List<String> _quantities = [
    '1 serving',
    '1 cup',
    '1 bowl',
    '1 slice',
    '1 piece',
    '2 pieces',
    '1/2 cup',
    '1 large',
    '1 medium',
    '1 small',
    '100g',
    '150g',
    '200g',
    '1 tbsp',
    '2 tbsp',
  ];

  static final List<String> _imageUrls = [
    'https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=400',
    'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=400',
    'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=400',
    'https://images.unsplash.com/photo-1490645935967-10de6ba17061?w=400',
    'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=400',
    'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=400',
    'https://images.unsplash.com/photo-1565299507177-b0ac66773828?w=400',
    'https://images.unsplash.com/photo-1571091718767-18b5b1457add?w=400',
    'https://images.unsplash.com/photo-1563379091339-03246963d4b8?w=400',
    'https://images.unsplash.com/photo-1551782450-a2132b4ba21d?w=400',
  ];

  /// Generates a single mock MealInfo with realistic nutritional values
  static List<MealInfo> generateListByType(MealType mealType) {
    // Generate realistic nutritional values based on meal type

    final meals = <MealInfo>[];
    for (int i = 0; i < 10; i++) {
      final type = mealType;
      final name = _getRandomMealName(type);
      final qty = _getRandomQuantity();
      final time = _getRandomTimestamp();
      final imgUrl = _getRandomImageUrl();

      final nutrition = _generateNutritionForType(type);

      final meal = MealInfo(
        mealName: name,
        mealQuantity: qty,
        mealType: type,
        calories: nutrition['calories']!,
        protein: nutrition['protein']!,
        carbs: nutrition['carbs']!,
        fat: nutrition['fat']!,
        fiber: nutrition['fiber']!,
        timestamp: time,
        imageUrl: imgUrl,
      );
      meals.add(meal);
    }

    return meals;
  }

  /// Generates a single mock MealInfo with realistic nutritional values
  static MealInfo generateSingle({
    MealType? mealType,
    DateTime? timestamp,
    String? mealName,
    String? quantity,
    String? imageUrl,
  }) {
    final type = mealType ?? _getRandomMealType();
    final name = mealName ?? _getRandomMealName(type);
    final qty = quantity ?? _getRandomQuantity();
    final time = timestamp ?? _getRandomTimestamp();
    final imgUrl = imageUrl ?? _getRandomImageUrl();

    // Generate realistic nutritional values based on meal type
    final nutrition = _generateNutritionForType(type);

    return MealInfo(
      mealName: name,
      mealQuantity: qty,
      mealType: type,
      calories: nutrition['calories']!,
      protein: nutrition['protein']!,
      carbs: nutrition['carbs']!,
      fat: nutrition['fat']!,
      fiber: nutrition['fiber']!,
      timestamp: time,
      imageUrl: imgUrl,
    );
  }

  /// Generates multiple mock MealInfo entries for a day
  static List<MealInfo> generateDay({
    DateTime? date,
    bool includeAllMealTypes = true,
  }) {
    final targetDate = date ?? DateTime.now();
    final meals = <MealInfo>[];

    if (includeAllMealTypes) {
      // Breakfast
      meals.add(
        generateSingle(
          mealType: MealType.breakfast,
          timestamp: DateTime(
            targetDate.year,
            targetDate.month,
            targetDate.day,
            8,
            0,
          ),
        ),
      );

      // Lunch
      meals.add(
        generateSingle(
          mealType: MealType.lunch,
          timestamp: DateTime(
            targetDate.year,
            targetDate.month,
            targetDate.day,
            13,
            0,
          ),
        ),
      );

      // Dinner
      meals.add(
        generateSingle(
          mealType: MealType.dinner,
          timestamp: DateTime(
            targetDate.year,
            targetDate.month,
            targetDate.day,
            19,
            0,
          ),
        ),
      );

      // Snacks (1-2 random snacks)
      final snackCount = DateTime.now().millisecondsSinceEpoch % 2 + 1;
      for (int i = 0; i < snackCount; i++) {
        meals.add(
          generateSingle(
            mealType: MealType.snack,
            timestamp: DateTime(
              targetDate.year,
              targetDate.month,
              targetDate.day,
              10 + (i * 3),
              30,
            ),
          ),
        );
      }
    }

    return meals;
  }

  /// Generates mock data for a week
  static List<MealInfo> generateWeek({DateTime? startDate}) {
    final start = startDate ?? DateTime.now().subtract(const Duration(days: 6));
    final meals = <MealInfo>[];

    for (int i = 0; i < 7; i++) {
      final date = start.add(Duration(days: i));
      meals.addAll(generateDay(date: date));
    }

    return meals;
  }

  /// Generates mock data for a month
  static List<MealInfo> generateMonth({DateTime? startDate}) {
    final start =
        startDate ?? DateTime.now().subtract(const Duration(days: 29));
    final meals = <MealInfo>[];

    for (int i = 0; i < 30; i++) {
      final date = start.add(Duration(days: i));
      meals.addAll(generateDay(date: date));
    }

    return meals;
  }

  /// Generates a variety of meals for testing different scenarios
  static List<MealInfo> generateVariety({
    int count = 20,
    List<MealType>? mealTypes,
  }) {
    final types = mealTypes ?? MealType.values;
    final meals = <MealInfo>[];

    for (int i = 0; i < count; i++) {
      final type = types[i % types.length];
      meals.add(generateSingle(mealType: type));
    }

    return meals;
  }

  static MealType _getRandomMealType() {
    final types = MealType.values;
    return types[DateTime.now().millisecondsSinceEpoch % types.length];
  }

  static String _getRandomMealName(MealType type) {
    final items = switch (type) {
      MealType.breakfast => _breakfastItems,
      MealType.lunch => _lunchItems,
      MealType.dinner => _dinnerItems,
      MealType.snack => _snackItems,
      MealType.unknown => [
        ..._breakfastItems,
        ..._lunchItems,
        ..._dinnerItems,
        ..._snackItems,
      ],
    };
    return items[DateTime.now().millisecondsSinceEpoch % items.length];
  }

  static String _getRandomQuantity() {
    return _quantities[DateTime.now().millisecondsSinceEpoch %
        _quantities.length];
  }

  static DateTime _getRandomTimestamp() {
    final now = DateTime.now();
    final randomDays = DateTime.now().millisecondsSinceEpoch % 30;
    final randomHours = DateTime.now().millisecondsSinceEpoch % 24;
    final randomMinutes = DateTime.now().millisecondsSinceEpoch % 60;

    return now
        .subtract(Duration(days: randomDays))
        .copyWith(
          hour: randomHours,
          minute: randomMinutes,
          second: 0,
          millisecond: 0,
        );
  }

  static String _getRandomImageUrl() {
    return _imageUrls[DateTime.now().millisecondsSinceEpoch %
        _imageUrls.length];
  }

  static Map<String, int> _generateNutritionForType(MealType type) {
    // Base nutritional values that vary by meal type
    final baseNutrition = switch (type) {
      MealType.breakfast => {
        'calories': 350,
        'protein': 15,
        'carbs': 45,
        'fat': 12,
        'fiber': 6,
      },
      MealType.lunch => {
        'calories': 550,
        'protein': 25,
        'carbs': 60,
        'fat': 18,
        'fiber': 8,
      },
      MealType.dinner => {
        'calories': 650,
        'protein': 35,
        'carbs': 50,
        'fat': 25,
        'fiber': 10,
      },
      MealType.snack => {
        'calories': 150,
        'protein': 8,
        'carbs': 20,
        'fat': 5,
        'fiber': 3,
      },
      MealType.unknown => {
        'calories': 400,
        'protein': 20,
        'carbs': 45,
        'fat': 15,
        'fiber': 6,
      },
    };

    // Add some randomness to make data more realistic
    final random = DateTime.now().millisecondsSinceEpoch % 100;
    final variation = (random - 50) / 100.0; // -0.5 to 0.5

    return {
      'calories': (baseNutrition['calories']! * (1 + variation * 0.3)).round(),
      'protein': (baseNutrition['protein']! * (1 + variation * 0.2)).round(),
      'carbs': (baseNutrition['carbs']! * (1 + variation * 0.2)).round(),
      'fat': (baseNutrition['fat']! * (1 + variation * 0.2)).round(),
      'fiber': (baseNutrition['fiber']! * (1 + variation * 0.3)).round(),
    };
  }
}
