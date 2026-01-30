import 'package:drift/drift.dart';

import 'package:calorify/core/db/tables/meal_info.dart';

class FavoriteMealTable extends MealInfoTable {
  DateTimeColumn get createdAt =>
      dateTime().withDefault(Constant(DateTime(2023)))();
  DateTimeColumn get lastUsedAt => dateTime().nullable()();
}
