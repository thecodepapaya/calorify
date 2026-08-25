import 'package:drift/drift.dart';

class LocalAiSummaryTable extends Table {
  TextColumn get summaryLocalDate => text()();
  TextColumn get responseJson => text()();
  TextColumn get resolvedLocale => text()();

  @override
  Set<Column<Object>> get primaryKey => {summaryLocalDate};
}
