import 'dart:convert';

import 'package:models/models.dart';

const localNutritionPackSchemaVersion = 1;
const localNutritionCalculationVersion = 'local-macro-v1';

String normalizeLocalNutritionTerm(String value) =>
    value
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9\s]'), '')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();

class LocalNutritionRecord {
  const LocalNutritionRecord({
    required this.fdcId,
    required this.description,
    required this.normalizedName,
    required this.aliases,
    required this.dataType,
    required this.nutrientsPer100g,
    required this.datasetVersion,
  });

  factory LocalNutritionRecord.fromJson(Map<String, dynamic> json) {
    final nutrients = _map(json['nutrientsPer100g'], 'nutrientsPer100g');
    final aliasesValue = json['aliases'];
    if (aliasesValue is! List ||
        aliasesValue.any((value) => value is! String)) {
      throw const FormatException('Pack aliases must be strings');
    }
    final record = LocalNutritionRecord(
      fdcId: _string(json['fdcId'], 'fdcId'),
      description: _string(json['description'], 'description'),
      normalizedName: normalizeLocalNutritionTerm(
        _string(json['normalizedName'], 'normalizedName'),
      ),
      aliases: aliasesValue
          .cast<String>()
          .map(normalizeLocalNutritionTerm)
          .where((value) => value.isNotEmpty)
          .toSet()
          .toList(growable: false),
      dataType: _string(json['dataType'], 'dataType'),
      nutrientsPer100g: PipelineMacros(
        calories: _nutrient(nutrients['calories'], 'calories'),
        protein: _nutrient(nutrients['protein'], 'protein'),
        carbs: _nutrient(nutrients['carbs'], 'carbs'),
        fat: _nutrient(nutrients['fat'], 'fat'),
        fiber: _nutrient(nutrients['fiber'], 'fiber'),
      ),
      datasetVersion: _string(json['datasetVersion'], 'datasetVersion'),
    );
    if (record.normalizedName.isEmpty) {
      throw const FormatException('Pack normalizedName must not be empty');
    }
    return record;
  }

  final String fdcId;
  final String description;
  final String normalizedName;
  final List<String> aliases;
  final String dataType;
  final PipelineMacros nutrientsPer100g;
  final String datasetVersion;

  Iterable<String> get lookupKeys sync* {
    yield normalizedName;
    yield* aliases;
  }
}

class LocalNutritionPack {
  const LocalNutritionPack({
    required this.schemaVersion,
    required this.packVersion,
    required this.datasetVersion,
    required this.calculationVersion,
    required this.records,
  });

  factory LocalNutritionPack.fromBytes(List<int> bytes) {
    final decoded = jsonDecode(utf8.decode(bytes));
    final json = _map(decoded, 'pack');
    final recordsValue = json['records'];
    if (recordsValue is! List) {
      throw const FormatException('Pack records must be a list');
    }
    final pack = LocalNutritionPack(
      schemaVersion: _integer(json['schemaVersion'], 'schemaVersion'),
      packVersion: _string(json['packVersion'], 'packVersion'),
      datasetVersion: _string(json['datasetVersion'], 'datasetVersion'),
      calculationVersion: _string(
        json['calculationVersion'],
        'calculationVersion',
      ),
      records: recordsValue
          .map((value) => LocalNutritionRecord.fromJson(_map(value, 'record')))
          .toList(growable: false),
    );
    final ids = pack.records.map((record) => record.fdcId).toSet();
    if (ids.length != pack.records.length) {
      throw const FormatException('Pack contains duplicate FDC IDs');
    }
    if (pack.records.any(
      (record) => record.datasetVersion != pack.datasetVersion,
    )) {
      throw const FormatException('Pack records use incompatible datasets');
    }
    return pack;
  }

  final int schemaVersion;
  final String packVersion;
  final String datasetVersion;
  final String calculationVersion;
  final List<LocalNutritionRecord> records;
}

class InstalledLocalNutritionPack {
  const InstalledLocalNutritionPack({
    required this.pack,
    required this.byteSize,
  });

  final LocalNutritionPack pack;
  final int byteSize;
}

Map<String, dynamic> _map(Object? value, String name) {
  if (value is! Map) throw FormatException('$name must be an object');
  return value.cast<String, dynamic>();
}

String _string(Object? value, String name) {
  if (value is! String || value.trim().isEmpty) {
    throw FormatException('$name must be a non-empty string');
  }
  return value.trim();
}

int _integer(Object? value, String name) {
  if (value is! num || !value.isFinite || value != value.roundToDouble()) {
    throw FormatException('$name must be an integer');
  }
  return value.toInt();
}

double _nutrient(Object? value, String name) {
  if (value is! num || !value.isFinite || value < 0) {
    throw FormatException('$name must be a non-negative number');
  }
  return value.toDouble();
}
