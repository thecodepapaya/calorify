import 'package:drift/drift.dart';

@TableIndex(
  name: 'health_connect_sync_client_record_unique',
  columns: {#clientRecordId},
  unique: true,
)
class HealthConnectSyncQueueTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  /// `upsert` contains a complete meal snapshot; `delete` is a tombstone.
  TextColumn get operation => text()();

  /// Stable identity shared with Health Connect across edits and retries.
  TextColumn get clientRecordId => text()();

  /// Monotonically increases whenever the local meal changes.
  IntColumn get clientRecordVersion => integer()();

  /// Proto3 JSON snapshot used by durable upsert retries.
  TextColumn get mealJson => text().nullable()();

  DateTimeColumn get loggedAt => dateTime().nullable()();
  IntColumn get attempts => integer().withDefault(const Constant(0))();
  TextColumn get lastError => text().nullable()();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}
