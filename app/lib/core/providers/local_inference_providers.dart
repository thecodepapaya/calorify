import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/services/local_inference_service.dart';
import 'package:calorify/core/services/text_meal_analysis_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:models/models.dart';

class LocalInferenceAvailability {
  const LocalInferenceAvailability({
    required this.device,
    required this.policy,
  });

  final LocalInferenceCapabilities device;
  final LocalInferenceCapabilityPolicy policy;

  bool get textAvailable => device.canRunText && policy.textEnabled;
}

final localInferenceServiceProvider = Provider<LocalInferenceService>((ref) {
  return MethodChannelLocalInferenceService();
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
        policy = LocalInferenceCapabilityPolicy(
          policyVersion: 'unavailable',
          textEnabled: false,
          imageEnabled: false,
          localNutritionEnabled: false,
          privateModesEnabled: false,
          maxAgeSeconds: 0,
        );
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
    loadEligibility: () async {
      // Re-read the rollout policy for each submission so the backend kill
      // switch takes effect without an app restart. Device capability and the
      // small policy request can run together.
      final results = await Future.wait<Object>([
        ref.read(localInferenceServiceProvider).getCapabilities(),
        ref.read(foodRepositoryProvider).getLocalInferencePolicy(),
      ]);
      return LocalTextEligibility(
        device: results[0] as LocalInferenceCapabilities,
        rolloutEnabled:
            (results[1] as LocalInferenceCapabilityPolicy).textEnabled,
      );
    },
  );
});
