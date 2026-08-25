import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/db/local_nutrition_cache_entry.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/services/local_inference_service.dart';
import 'package:calorify/core/services/local_nutrition_calculator.dart';
import 'package:calorify/core/services/local_nutrition_meal_analysis_engine.dart';
import 'package:calorify/core/services/local_nutrition_pack.dart';
import 'package:calorify/core/services/local_nutrition_pack_service.dart';
import 'package:calorify/core/services/local_nutrition_repository.dart';
import 'package:calorify/core/services/text_meal_analysis_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';

class LocalInferenceAvailability {
  const LocalInferenceAvailability({
    required this.device,
    required this.policy,
  });

  final LocalInferenceCapabilities device;
  final LocalInferenceCapabilityPolicy policy;
}

class LocalNutritionStatus {
  const LocalNutritionStatus({
    required this.pack,
    required this.cacheRecords,
    required this.cacheBytes,
  });

  final InstalledLocalNutritionPack? pack;
  final int cacheRecords;
  final int cacheBytes;
}

final localInferenceServiceProvider = Provider<LocalInferenceService>((ref) {
  return MethodChannelLocalInferenceService();
});

final localNutritionPackServiceProvider = Provider<LocalNutritionPackService>((
  ref,
) {
  return LocalNutritionPackService(dio: NetworkClient.instance.client);
});

final localNutritionStatusProvider = FutureProvider<LocalNutritionStatus>((
  ref,
) async {
  final values = await Future.wait<Object?>([
    ref.watch(localNutritionPackServiceProvider).loadActive(),
    ref.watch(databaseInterfaceProvider).getLocalNutritionCacheStats(),
  ]);
  final cache = values[1] as LocalNutritionCacheStats;
  return LocalNutritionStatus(
    pack: values[0] as InstalledLocalNutritionPack?,
    cacheRecords: cache.recordCount,
    cacheBytes: cache.approximateBytes,
  );
});

final localNutritionRepositoryProvider = Provider<LocalNutritionRepository>((
  ref,
) {
  return LocalNutritionRepository(
    database: ref.watch(databaseInterfaceProvider),
    packService: ref.watch(localNutritionPackServiceProvider),
    foodRepository: ref.watch(foodRepositoryProvider),
  );
});

final localNutritionCalculatorProvider = Provider<LocalNutritionCalculator>((
  ref,
) {
  return const LocalNutritionCalculator();
});

final localNutritionMealAnalysisEngineProvider =
    Provider<LocalNutritionMealAnalysisEngine>((ref) {
      return LocalNutritionMealAnalysisEngine(
        repository: ref.watch(localNutritionRepositoryProvider),
        calculator: ref.watch(localNutritionCalculatorProvider),
        copy: LocalNutritionAnalysisCopy(
          smaller: t.localNutritionPhase4.portionSmaller,
          estimated: t.localNutritionPhase4.portionEstimated,
          larger: t.localNutritionPhase4.portionLarger,
          portionQuestion:
              (ingredient) => t.localNutritionPhase4.portionQuestion(
                ingredient: ingredient,
              ),
          localTip: t.localNutritionPhase4.localNutritionTip,
        ),
      );
    });

final localInferenceAvailabilityProvider =
    FutureProvider<LocalInferenceAvailability>((ref) async {
      final device =
          await ref.watch(localInferenceServiceProvider).getCapabilities();
      LocalInferenceCapabilityPolicy policy;
      try {
        policy =
            await ref.watch(foodRepositoryProvider).getLocalInferencePolicy();
      } on Object {
        policy = LocalInferenceCapabilityPolicy(textEnabled: false);
      }
      return LocalInferenceAvailability(device: device, policy: policy);
    });

final localInferencePreferencesProvider =
    FutureProvider<LocalInferencePreferences>((ref) {
      return ref
          .watch(databaseInterfaceProvider)
          .getLocalInferencePreferences();
    });

final textMealAnalysisRouterProvider = Provider<TextMealAnalysisRouter>((ref) {
  return TextMealAnalysisRouter(
    database: ref.watch(databaseInterfaceProvider),
    localInference: ref.watch(localInferenceServiceProvider),
    // Re-read the policy for each submission so the backend kill switch takes
    // effect without an app restart. The router loads it alongside capability.
    loadPolicy:
        () => ref.read(foodRepositoryProvider).getLocalInferencePolicy(),
  );
});
