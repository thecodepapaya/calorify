import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/shared_widgets/responsive_layout.dart';
import 'package:drift/drift.dart' show OrderingMode, OrderingTerm;
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';
import 'package:specs/specs.dart';

class DatabaseInspectorScreen extends StatefulWidget {
  const DatabaseInspectorScreen({super.key});

  @override
  State<DatabaseInspectorScreen> createState() =>
      _DatabaseInspectorScreenState();
}

class _DatabaseInspectorScreenState extends State<DatabaseInspectorScreen> {
  late final Future<List<_TableMeta>> _tablesFuture;

  @override
  void initState() {
    super.initState();
    final db = DatabaseService.rawDatabase;
    if (db != null) {
      _tablesFuture = _loadTableMeta(db);
    } else {
      _tablesFuture = Future.value(const <_TableMeta>[]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final db = DatabaseService.rawDatabase;

    return Scaffold(
      appBar: AppBar(title: const Text('Database Inspector')),
      body: ResponsiveContent(
        maxWidth: 840,
        child:
            db == null
                ? _buildMockDataMessage(context)
                : _buildTableList(context, db),
      ),
    );
  }

  Widget _buildMockDataMessage(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Text(
          'Database inspection is only available when using real data (not mock).',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }

  Widget _buildTableList(BuildContext context, AppDatabase db) {
    return FutureBuilder<List<_TableMeta>>(
      future: _tablesFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                snapshot.error.toString(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          );
        }

        final tables = snapshot.data ?? const <_TableMeta>[];
        if (tables.isEmpty) {
          return Center(
            child: Text(
              'No rows',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          );
        }

        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: tables.length,
          separatorBuilder: (_, _) => const SizedBox(height: 8),
          itemBuilder: (context, index) {
            final meta = tables[index];
            final hasRows = meta.rowCount > 0;
            final rowCountText = '${meta.rowCount} rows';

            return Card(
              child: ListTile(
                leading: const Icon(AppIcons.table),
                title: Text(meta.displayName),
                subtitle: Text(hasRows ? rowCountText : 'No rows'),
                trailing:
                    hasRows
                        ? const Icon(AppIcons.chevronRight, size: 18)
                        : null,
                onTap:
                    hasRows ? () => _showTableDetail(context, db, meta) : null,
              ),
            );
          },
        );
      },
    );
  }

  Future<List<_TableMeta>> _loadTableMeta(AppDatabase db) async {
    final results = <_TableMeta>[];

    Future<int> count(dynamic table) async {
      final actualName = (table as dynamic).actualTableName as String;
      final row =
          await db
              .customSelect('SELECT COUNT(*) AS c FROM $actualName')
              .getSingle();
      return row.read<int>('c');
    }

    results.add(
      _TableMeta(
        id: 'meal_info',
        displayName: 'meal_info',
        rowCount: await count(db.mealInfoTable),
      ),
    );
    results.add(
      _TableMeta(
        id: 'user_profile',
        displayName: 'user_profile',
        rowCount: await count(db.userProfileTable),
      ),
    );
    results.add(
      _TableMeta(
        id: 'user_preferences',
        displayName: 'user_preferences',
        rowCount: await count(db.userPreferencesTable),
      ),
    );
    results.add(
      _TableMeta(
        id: 'favorite_meal',
        displayName: 'favorite_meal',
        rowCount: await count(db.favoriteMealTable),
      ),
    );
    return results;
  }

  void _showTableDetail(BuildContext context, AppDatabase db, _TableMeta meta) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          builder: (context, scrollController) {
            return SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                    child: Text(
                      '${meta.displayName} (${meta.rowCount})',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  const Divider(height: 1),
                  Expanded(
                    child: FutureBuilder<List<Map<String, dynamic>>>(
                      future: _loadTableRows(db, meta.id),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        if (snapshot.hasError) {
                          return Center(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text(
                                snapshot.error.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        }

                        final rows =
                            snapshot.data ?? const <Map<String, dynamic>>[];
                        if (rows.isEmpty) {
                          return const Center(child: Text('No rows'));
                        }

                        return ListView.builder(
                          controller: scrollController,
                          itemCount: rows.length,
                          itemBuilder: (context, index) {
                            final row = rows[index];
                            return _buildRowCard(context, index, row);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Future<List<Map<String, dynamic>>> _loadTableRows(
    AppDatabase db,
    String tableId,
  ) async {
    switch (tableId) {
      case 'meal_info':
        final query =
            db.select(db.mealInfoTable)
              ..orderBy([
                (t) => OrderingTerm(
                  expression: t.timestamp,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(100);
        final rows = await query.get();
        return rows.map((r) => r.toJson()).toList();
      case 'user_profile':
        final rows = await db.select(db.userProfileTable).get();
        return rows.map((r) => r.toJson()).toList();
      case 'user_preferences':
        final rows = await db.select(db.userPreferencesTable).get();
        return rows.map((r) => r.toJson()).toList();
      case 'favorite_meal':
        final query =
            db.select(db.favoriteMealTable)
              ..orderBy([
                (t) => OrderingTerm(
                  expression: t.createdAt,
                  mode: OrderingMode.desc,
                ),
              ])
              ..limit(100);
        final rows = await query.get();
        return rows.map((r) => r.toJson()).toList();
      default:
        return const <Map<String, dynamic>>[];
    }
  }

  Widget _buildRowCard(
    BuildContext context,
    int index,
    Map<String, dynamic> row,
  ) {
    final entries = row.entries.toList();
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: globalInnerPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '#${index + 1}',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: 8),
            for (final entry in entries)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Text(
                  '${entry.key}: ${entry.value}',
                  style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _TableMeta {
  final String id;
  final String displayName;
  final int rowCount;

  const _TableMeta({
    required this.id,
    required this.displayName,
    required this.rowCount,
  });
}
