import 'package:calorify_watch/core/db/tables/cached_meals.dart';
import 'package:drift/drift.dart';

class CachedFavoritesTable extends CachedMealsTable {
  DateTimeColumn get favoritedAt => dateTime()();
  DateTimeColumn get lastUsedAt => dateTime().nullable()();
}
