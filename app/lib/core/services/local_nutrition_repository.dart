import 'dart:convert';

import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/db/local_nutrition_cache_entry.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/services/local_nutrition_pack.dart';
import 'package:calorify/core/services/local_nutrition_pack_service.dart';
import 'package:models/models.dart';

class LocalNutritionResolutionException implements Exception {
  const LocalNutritionResolutionException({
    required this.code,
    required this.fallbackReason,
    required this.message,
  });

  const LocalNutritionResolutionException.miss([String? message])
    : this(
        code: 'local_nutrition_miss',
        fallbackReason:
            MealAnalysisFallbackReason
                .MEAL_ANALYSIS_FALLBACK_REASON_LOCAL_NUTRITION_MISS,
        message: message ?? 'One or more foods were not available locally.',
      );

  const LocalNutritionResolutionException.dataset()
    : this(
        code: 'dataset_incompatible',
        fallbackReason:
            MealAnalysisFallbackReason
                .MEAL_ANALYSIS_FALLBACK_REASON_DATASET_INCOMPATIBLE,
        message: 'The local and remote nutrition datasets are incompatible.',
      );

  final String code;
  final MealAnalysisFallbackReason fallbackReason;
  final String message;

  @override
  String toString() => message;
}

class LocalNutritionResolvedIngredient {
  const LocalNutritionResolvedIngredient({
    required this.proposal,
    required this.canonicalName,
    required this.matchType,
    required this.fdcId,
    required this.datasetVersion,
    required this.nutrientsPer100g,
    required this.origin,
  });

  final IngredientProposalItemV2 proposal;
  final String canonicalName;
  final String matchType;
  final String fdcId;
  final String datasetVersion;
  final PipelineMacros nutrientsPer100g;
  final NutritionOrigin origin;
}

class LocalNutritionResolvedMeal {
  const LocalNutritionResolvedMeal({
    required this.pack,
    required this.ingredients,
  });

  final InstalledLocalNutritionPack pack;
  final List<LocalNutritionResolvedIngredient> ingredients;
}

class LocalNutritionRepository {
  const LocalNutritionRepository({
    required DatabaseInterface database,
    required LocalNutritionPackService packService,
    required FoodRepository foodRepository,
  }) : _database = database,
       _packService = packService,
       _foodRepository = foodRepository;

  final DatabaseInterface _database;
  final LocalNutritionPackService _packService;
  final FoodRepository _foodRepository;

  Future<LocalNutritionResolvedMeal> resolveProposal({
    required String analysisId,
    required IngredientProposalV2 proposal,
  }) async {
    final installed = await _packService.loadActive();
    if (installed == null) {
      throw const LocalNutritionResolutionException.miss(
        'No verified local nutrition pack is active.',
      );
    }

    final packIndex = _uniquePackIndex(installed.pack.records);
    final cache = (await _database.getLocalNutritionCache())
        .where((entry) => entry.datasetVersion == installed.pack.datasetVersion)
        .toList(growable: false);
    final cacheIndex = _uniqueCacheIndex(cache);
    final resolved = <String, LocalNutritionResolvedIngredient>{};
    final touched = <({String fdcId, String datasetVersion})>{};
    final misses = <IngredientProposalItemV2>[];

    for (final ingredient in proposal.items) {
      if (_isPlainWater(ingredient)) {
        resolved[ingredient.rowId] = LocalNutritionResolvedIngredient(
          proposal: ingredient,
          canonicalName: 'Water',
          matchType: 'deterministic',
          fdcId: 'deterministic:water',
          datasetVersion: installed.pack.datasetVersion,
          nutrientsPer100g: PipelineMacros(),
          origin: NutritionOrigin.NUTRITION_ORIGIN_DETERMINISTIC_CONSTANT,
        );
        continue;
      }

      final keys = _candidateKeys(ingredient);
      final packRecord = _firstMatch(keys, packIndex);
      if (packRecord != null) {
        resolved[ingredient.rowId] = LocalNutritionResolvedIngredient(
          proposal: ingredient,
          canonicalName: packRecord.description,
          matchType: 'reviewed_alias',
          fdcId: packRecord.fdcId,
          datasetVersion: packRecord.datasetVersion,
          nutrientsPer100g: packRecord.nutrientsPer100g,
          origin: NutritionOrigin.NUTRITION_ORIGIN_BUNDLED_USDA,
        );
        continue;
      }

      final cacheRecord = _firstMatch(keys, cacheIndex);
      if (cacheRecord != null) {
        resolved[ingredient.rowId] = LocalNutritionResolvedIngredient(
          proposal: ingredient,
          canonicalName: cacheRecord.description,
          matchType: 'cached_alias',
          fdcId: cacheRecord.fdcId,
          datasetVersion: cacheRecord.datasetVersion,
          nutrientsPer100g: cacheRecord.nutrientsPer100g,
          origin: NutritionOrigin.NUTRITION_ORIGIN_CACHED_USDA,
        );
        touched.add((
          fdcId: cacheRecord.fdcId,
          datasetVersion: cacheRecord.datasetVersion,
        ));
        continue;
      }
      misses.add(ingredient);
    }

    if (touched.isNotEmpty) {
      await _database.touchLocalNutritionCache(touched);
    }
    if (misses.isNotEmpty) {
      await _resolveRemoteMisses(
        analysisId: analysisId,
        misses: misses,
        datasetVersion: installed.pack.datasetVersion,
        resolved: resolved,
      );
    }

    final ordered = <LocalNutritionResolvedIngredient>[];
    for (final ingredient in proposal.items) {
      final value = resolved[ingredient.rowId];
      if (value == null) throw const LocalNutritionResolutionException.miss();
      ordered.add(value);
    }
    return LocalNutritionResolvedMeal(pack: installed, ingredients: ordered);
  }

  Future<void> _resolveRemoteMisses({
    required String analysisId,
    required List<IngredientProposalItemV2> misses,
    required String datasetVersion,
    required Map<String, LocalNutritionResolvedIngredient> resolved,
  }) async {
    late final LocalNutritionResolveResponse response;
    try {
      response = await _foodRepository.resolveLocalNutrition(
        analysisId: analysisId,
        lookups: misses
            .map(
              (ingredient) => LocalNutritionLookup(
                rowId: ingredient.rowId,
                canonicalHint: ingredient.usdaLookup.proposedCanonicalName,
                preparation: ingredient.usdaLookup.preparationStates.join(' '),
              ),
            )
            .toList(growable: false),
      );
    } on Object {
      throw const LocalNutritionResolutionException.miss(
        'Remote nutrition resolution was unavailable.',
      );
    }
    if (response.analysisId != analysisId ||
        response.records.any(
          (record) => record.datasetVersion != datasetVersion,
        )) {
      throw const LocalNutritionResolutionException.dataset();
    }

    final requested = {for (final ingredient in misses) ingredient.rowId};
    final recordsByRow = <String, CacheableNutritionRecord>{};
    for (final record in response.records) {
      if (!requested.contains(record.rowId) ||
          recordsByRow.containsKey(record.rowId) ||
          !record.hasNutrientsPer100g() ||
          !_validNutrients(record.nutrientsPer100g) ||
          record.fdcId.trim().isEmpty ||
          record.description.trim().isEmpty ||
          normalizeLocalNutritionTerm(record.normalizedName).isEmpty) {
        throw const LocalNutritionResolutionException.miss(
          'Remote nutrition resolution returned invalid rows.',
        );
      }
      recordsByRow[record.rowId] = record;
    }

    final now = DateTime.now().toUtc();
    final cacheEntries = <LocalNutritionCacheEntry>[];
    for (final ingredient in misses) {
      final record = recordsByRow[ingredient.rowId];
      if (record == null) continue;
      final retrievedAt = DateTime.fromMillisecondsSinceEpoch(
        record.retrievedAtEpochMs.toInt(),
        isUtc: true,
      );
      cacheEntries.add(
        LocalNutritionCacheEntry(
          fdcId: record.fdcId,
          datasetVersion: record.datasetVersion,
          description: record.description,
          normalizedName: normalizeLocalNutritionTerm(record.normalizedName),
          dataType: record.dataType,
          lookupKeys: record.lookupKeys
              .map(normalizeLocalNutritionTerm)
              .where((key) => key.isNotEmpty)
              .toSet()
              .toList(growable: false),
          nutrientsPer100g: record.nutrientsPer100g,
          retrievedAt:
              record.retrievedAtEpochMs.toInt() > 0 ? retrievedAt : now,
          lastAccessedAt: now,
          approximateBytes:
              utf8.encode(jsonEncode(record.toProto3Json())).length,
        ),
      );
      resolved[ingredient.rowId] = LocalNutritionResolvedIngredient(
        proposal: ingredient,
        canonicalName: record.description,
        matchType: record.matchType,
        fdcId: record.fdcId,
        datasetVersion: record.datasetVersion,
        nutrientsPer100g: record.nutrientsPer100g,
        origin: NutritionOrigin.NUTRITION_ORIGIN_REMOTE_USDA,
      );
    }
    if (cacheEntries.isNotEmpty) {
      await _database.upsertLocalNutritionCache(cacheEntries);
    }
    if (response.unresolvedRowIds.isNotEmpty ||
        misses.any((ingredient) => !resolved.containsKey(ingredient.rowId))) {
      throw const LocalNutritionResolutionException.miss();
    }
  }

  static Map<String, LocalNutritionRecord> _uniquePackIndex(
    Iterable<LocalNutritionRecord> records,
  ) => _uniqueIndex(records, (record) => record.lookupKeys);

  static Map<String, LocalNutritionCacheEntry> _uniqueCacheIndex(
    Iterable<LocalNutritionCacheEntry> records,
  ) => _uniqueIndex(
    records,
    (record) => [record.normalizedName, ...record.lookupKeys],
  );

  static Map<String, T> _uniqueIndex<T>(
    Iterable<T> records,
    Iterable<String> Function(T record) keys,
  ) {
    final index = <String, T>{};
    final ambiguous = <String>{};
    for (final record in records) {
      for (final rawKey in keys(record)) {
        final key = normalizeLocalNutritionTerm(rawKey);
        if (key.isEmpty || ambiguous.contains(key)) continue;
        final existing = index[key];
        if (existing != null && !identical(existing, record)) {
          index.remove(key);
          ambiguous.add(key);
        } else {
          index[key] = record;
        }
      }
    }
    return index;
  }

  static T? _firstMatch<T>(Iterable<String> keys, Map<String, T> index) {
    for (final key in keys) {
      final value = index[key];
      if (value != null) return value;
    }
    return null;
  }

  static List<String> _candidateKeys(IngredientProposalItemV2 ingredient) {
    final preparation =
        ingredient.usdaLookup.preparationStates.join(' ').trim();
    return <String>[
          if (preparation.isNotEmpty)
            '${ingredient.usdaLookup.proposedCanonicalName} $preparation',
          ingredient.usdaLookup.proposedCanonicalName,
          if (preparation.isNotEmpty) '${ingredient.rawName} $preparation',
          ingredient.rawName,
        ]
        .map(normalizeLocalNutritionTerm)
        .where((key) => key.isNotEmpty)
        .toSet()
        .toList(growable: false);
  }

  static bool _isPlainWater(IngredientProposalItemV2 ingredient) {
    final values = [
      ingredient.rawName,
      ingredient.usdaLookup.proposedCanonicalName,
    ].map(normalizeLocalNutritionTerm);
    return values.any(
      (value) => const {
        'water',
        'plain water',
        'tap water',
        'drinking water',
      }.contains(value),
    );
  }

  static bool _validNutrients(PipelineMacros nutrients) => [
    nutrients.calories,
    nutrients.protein,
    nutrients.carbs,
    nutrients.fat,
    nutrients.fiber,
  ].every((value) => value.isFinite && value >= 0);
}
