import 'dart:async';

import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/providers/local_inference_providers.dart';
import 'package:calorify/core/services/local_inference_service.dart';
import 'package:calorify/core/services/local_nutrition_pack.dart';
import 'package:calorify/core/services/local_nutrition_pack_service.dart';
import 'package:calorify/core/utilities/app_version.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/local_proposal_review_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/features/debug/local_inference_debug_screen.dart';
import 'package:calorify/features/profile/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class _MockDatabase extends Mock implements DatabaseInterface {
  @override
  Future<ThemeMode> getThemeMode() async => ThemeMode.system;
}

class _MockLocalInferenceService extends Mock
    implements LocalInferenceService {}

class _MockLocalNutritionPackService extends Mock
    implements LocalNutritionPackService {}

LocalInferenceAvailability _availability({
  required bool supported,
  bool ready = true,
  bool canDownload = false,
  bool withNutritionPack = false,
}) {
  return LocalInferenceAvailability(
    device: LocalInferenceCapabilities(
      state:
          canDownload
              ? LocalInferenceState.downloadable
              : supported
              ? ready
                  ? LocalInferenceState.ready
                  : LocalInferenceState.downloading
              : LocalInferenceState.unsupported,
    ),
    policy: LocalInferenceCapabilityPolicy(
      textEnabled: true,
      localNutritionPackUrl:
          withNutritionPack ? '/api/v2/food/local-nutrition-pack' : null,
    ),
  );
}

InstalledLocalNutritionPack _installedPack() {
  final pack = LocalNutritionPack(
    schemaVersion: 1,
    packVersion: 'starter-v1',
    datasetVersion: 'fdc-v1',
    calculationVersion: localNutritionCalculationVersion,
    records: const [],
  );
  return InstalledLocalNutritionPack(pack: pack, byteSize: 1);
}

IngredientProposalV1 _proposal() => IngredientProposalV1(
  schemaVersion: 1,
  proposalId: 'proposal-1',
  modality: AnalysisModality.ANALYSIS_MODALITY_TEXT,
  mealName: 'Dal',
  inferredMealType: MealType.LUNCH,
  mealTypeConfident: true,
  confidence: 0.9,
  interpretationOrigin: InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO,
  ingredients: [
    IngredientProposalItemV1(
      rowId: 'ingredient-1',
      rawName: 'dal',
      canonicalHint: 'lentils cooked',
      preparation: 'cooked',
      gramsEstimated: 200,
      minGrams: 170,
      maxGrams: 230,
      portionKind: PortionKind.BULK,
      confidence: 0.9,
      fieldProvenance: [
        IngredientFieldProvenance(
          fieldName: 'identity',
          origin: IngredientFieldOrigin.INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL,
        ),
        IngredientFieldProvenance(
          fieldName: 'portion',
          origin: IngredientFieldOrigin.INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL,
        ),
      ],
    ),
  ],
);

void main() {
  setUpAll(() {
    setupAllTests();
    PackageInfo.setMockInitialValues(
      appName: 'Calorify',
      packageName: 'dev.thecodepapaya.calorify',
      version: '1.0.0',
      buildNumber: '1',
      buildSignature: 'test',
    );
    getAppVersionInfoTestOverride = Future.value(
      const AppVersionInfo(
        version: '1.0.0',
        buildNumber: '1',
        patchNumber: null,
      ),
    );
  });

  testWidgets('supported default-off setting requires acknowledgement', (
    tester,
  ) async {
    final database = _MockDatabase();
    final localService = _MockLocalInferenceService();
    when(
      () => database.setLocalInferenceEnabled(any()),
    ).thenAnswer((_) async {});

    await tester.pumpWidget(
      wrapWithProviders(
        const SettingsScreen(),
        overrides: [
          databaseInterfaceProvider.overrideWithValue(database),
          userProfileProvider.overrideWith((_) => UserProfile()),
          localInferenceServiceProvider.overrideWithValue(localService),
          localInferenceAvailabilityProvider.overrideWith(
            (_) => _availability(supported: true),
          ),
          localInferencePreferencesProvider.overrideWith(
            (_) => const LocalInferencePreferences.defaults(),
          ),
        ],
      ),
    );
    await tester.pumpAndSettle();

    final setting = find.byType(SwitchListTile);
    await tester.scrollUntilVisible(
      setting,
      400,
      scrollable: find.byType(Scrollable).first,
    );
    expect(find.text('Beta'), findsOneWidget);
    await tester.tap(setting);
    await tester.pumpAndSettle();

    expect(find.text('Before you enable on-device analysis'), findsOneWidget);
    expect(
      find.textContaining('automatically sends your original meal description'),
      findsOneWidget,
    );
    final enable = tester.widget<FilledButton>(
      find.widgetWithText(FilledButton, 'Acknowledge and enable'),
    );
    expect(enable.onPressed, isNull);

    await tester.tap(find.byType(CheckboxListTile));
    await tester.pump();
    await tester.scrollUntilVisible(
      find.text('Acknowledge and enable'),
      200,
      scrollable: find.byType(Scrollable).last,
    );
    await tester.tap(find.text('Acknowledge and enable'));
    await tester.pumpAndSettle();

    verify(() => database.setLocalInferenceEnabled(true)).called(1);
  });

  testWidgets('unsupported capability keeps the setting disabled', (
    tester,
  ) async {
    final database = _MockDatabase();
    await tester.pumpWidget(
      wrapWithProviders(
        const SettingsScreen(),
        overrides: [
          databaseInterfaceProvider.overrideWithValue(database),
          userProfileProvider.overrideWith((_) => UserProfile()),
          localInferenceServiceProvider.overrideWithValue(
            _MockLocalInferenceService(),
          ),
          localInferenceAvailabilityProvider.overrideWith(
            (_) => _availability(supported: false),
          ),
          localInferencePreferencesProvider.overrideWith(
            (_) => const LocalInferencePreferences.defaults(),
          ),
        ],
      ),
    );
    await tester.pumpAndSettle();

    final setting = find.byType(SwitchListTile);
    await tester.scrollUntilVisible(
      setting,
      400,
      scrollable: find.byType(Scrollable).first,
    );
    final tile = tester.widget<SwitchListTile>(setting);
    expect(tile.onChanged, isNull);
    expect(find.text('Not available on this device'), findsOneWidget);
  });

  testWidgets('downloadable capability can opt in and starts model setup', (
    tester,
  ) async {
    final database = _MockDatabase();
    final localService = _MockLocalInferenceService();
    when(
      () => database.setLocalInferenceEnabled(any()),
    ).thenAnswer((_) async {});
    when(
      () => localService.downloadModel(),
    ).thenAnswer((_) async => _availability(supported: true).device);
    await tester.pumpWidget(
      wrapWithProviders(
        const SettingsScreen(),
        overrides: [
          databaseInterfaceProvider.overrideWithValue(database),
          userProfileProvider.overrideWith((_) => UserProfile()),
          localInferenceServiceProvider.overrideWithValue(localService),
          localInferenceAvailabilityProvider.overrideWith(
            (_) =>
                _availability(supported: true, ready: false, canDownload: true),
          ),
          localInferencePreferencesProvider.overrideWith(
            (_) => const LocalInferencePreferences.defaults(),
          ),
        ],
      ),
    );
    await tester.pumpAndSettle();

    final setting = find.byType(SwitchListTile);
    await tester.scrollUntilVisible(
      setting,
      400,
      scrollable: find.byType(Scrollable).first,
    );
    expect(
      find.text(
        'Interpret supported meals with Gemini Nano before nutrition is calculated',
      ),
      findsOneWidget,
    );
    expect(tester.widget<SwitchListTile>(setting).onChanged, isNotNull);

    await tester.tap(setting);
    await tester.pumpAndSettle();
    await tester.tap(find.byType(CheckboxListTile));
    await tester.pump();
    await tester.scrollUntilVisible(
      find.text('Acknowledge and enable'),
      200,
      scrollable: find.byType(Scrollable).last,
    );
    await tester.tap(find.text('Acknowledge and enable'));
    await tester.pumpAndSettle();

    verify(() => localService.downloadModel()).called(1);
  });

  testWidgets('nutrition sub-toggle installs a valid pack before enabling', (
    tester,
  ) async {
    final database = _MockDatabase();
    final packService = _MockLocalNutritionPackService();
    final packUri = Uri.parse('/api/v2/food/local-nutrition-pack');
    when(
      () => packService.install(packUri),
    ).thenAnswer((_) async => _installedPack());
    when(
      () => database.setOfflineNutritionEnabled(any()),
    ).thenAnswer((_) async {});

    await tester.pumpWidget(
      wrapWithProviders(
        const SettingsScreen(),
        overrides: [
          databaseInterfaceProvider.overrideWithValue(database),
          userProfileProvider.overrideWith((_) => UserProfile()),
          localInferenceServiceProvider.overrideWithValue(
            _MockLocalInferenceService(),
          ),
          localNutritionPackServiceProvider.overrideWithValue(packService),
          localInferenceAvailabilityProvider.overrideWith(
            (_) => _availability(supported: true, withNutritionPack: true),
          ),
          localInferencePreferencesProvider.overrideWith(
            (_) => const LocalInferencePreferences(
              enabled: true,
              offlineNutritionEnabled: false,
            ),
          ),
          localNutritionStatusProvider.overrideWith(
            (_) => const LocalNutritionStatus(
              pack: null,
              cacheRecords: 0,
              cacheBytes: 0,
            ),
          ),
        ],
      ),
    );
    await tester.pumpAndSettle();

    final title = find.text('Download nutrition data');
    await tester.scrollUntilVisible(
      title,
      400,
      scrollable: find.byType(Scrollable).first,
    );
    final tile = find.ancestor(
      of: title,
      matching: find.byType(SwitchListTile),
    );
    expect(tester.widget<SwitchListTile>(tile).onChanged, isNotNull);
    await tester.tap(tile);
    await tester.pumpAndSettle();

    verify(() => packService.install(packUri)).called(1);
    verify(() => database.setOfflineNutritionEnabled(true)).called(1);
  });

  testWidgets('developer screen exposes local and Phase 4 one-off checks', (
    tester,
  ) async {
    final localService = _MockLocalInferenceService();
    when(
      () => localService.getCapabilities(),
    ).thenAnswer((_) async => _availability(supported: true).device);
    await tester.pumpWidget(
      wrapWithProviders(
        const LocalInferenceDebugScreen(),
        overrides: [
          localInferenceServiceProvider.overrideWithValue(localService),
        ],
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Local nutrition (Phase 4)'), findsOneWidget);
    expect(find.text('Pack/cache status'), findsOneWidget);
    expect(find.text('Known/missing lookup'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('Run local'),
      300,
      scrollable: find.byType(Scrollable).first,
    );
    expect(find.text('Run local'), findsOneWidget);
    expect(find.text('Choose meal image'), findsOneWidget);
    expect(find.text('Run image locally'), findsOneWidget);
    expect(find.text('Simulated failure modes'), findsNothing);
  });

  testWidgets('review sheet returns edits with user provenance', (
    tester,
  ) async {
    IngredientProposalV1? reviewed;
    await tester.pumpWidget(
      wrapWithProviders(
        Builder(
          builder:
              (context) => TextButton(
                onPressed: () {
                  unawaited(
                    showLocalProposalReviewSheet(
                      context: context,
                      proposal: _proposal(),
                    ).then((value) => reviewed = value),
                  );
                },
                child: const Text('Open'),
              ),
        ),
      ),
    );

    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    expect(find.text('Review detected ingredients'), findsOneWidget);

    await tester.enterText(
      find.widgetWithText(TextFormField, 'dal'),
      'lentil curry',
    );
    await tester.enterText(find.widgetWithText(TextFormField, '200'), '220');
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    expect(reviewed, isNotNull);
    expect(reviewed!.ingredients.single.rawName, 'lentil curry');
    expect(reviewed!.ingredients.single.gramsEstimated, 220);
    final provenance = {
      for (final item in reviewed!.ingredients.single.fieldProvenance)
        item.fieldName: item.origin,
    };
    expect(provenance, {
      'identity': IngredientFieldOrigin.INGREDIENT_FIELD_ORIGIN_USER_EDIT,
      'portion': IngredientFieldOrigin.INGREDIENT_FIELD_ORIGIN_USER_EDIT,
    });
    expect(reviewed!.ingredients.single.fieldProvenance, hasLength(2));
  });

  testWidgets('review sheet preserves untouched values and unknown meal type', (
    tester,
  ) async {
    final proposal =
        _proposal()
          ..inferredMealType = MealType.UNKNOWN
          ..mealTypeConfident = false
          ..ingredients.single.gramsEstimated = 200.5
          ..ingredients.single.minGrams = 175.25
          ..ingredients.single.maxGrams = 241.75;
    IngredientProposalV1? reviewed;
    await tester.pumpWidget(
      wrapWithProviders(
        Builder(
          builder:
              (context) => TextButton(
                onPressed: () {
                  unawaited(
                    showLocalProposalReviewSheet(
                      context: context,
                      proposal: proposal,
                    ).then((value) => reviewed = value),
                  );
                },
                child: const Text('Open'),
              ),
        ),
      ),
    );

    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    expect(find.text('Unknown'), findsOneWidget);
    expect(find.widgetWithText(TextFormField, '200.5'), findsOneWidget);

    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    expect(reviewed, isNotNull);
    expect(reviewed!.inferredMealType, MealType.UNKNOWN);
    expect(reviewed!.mealTypeConfident, isFalse);
    expect(reviewed!.ingredients.single.canonicalHint, 'lentils cooked');
    expect(reviewed!.ingredients.single.gramsEstimated, 200.5);
    expect(reviewed!.ingredients.single.minGrams, 175.25);
    expect(reviewed!.ingredients.single.maxGrams, 241.75);
    expect(
      reviewed!.ingredients.single.fieldProvenance,
      orderedEquals(proposal.ingredients.single.fieldProvenance),
    );
  });

  testWidgets('local-only results do not offer backend feedback', (
    tester,
  ) async {
    final pipelineContext = MealAnalysisPipelineSessionContext(
      result: PipelineResultData(
        analysisId: 'client-only-analysis',
        mealName: 'Banana',
        quantity: '118 g total',
        mealType: MealType.SNACK,
        macros: PipelineMacros(calories: 105),
        receipt: MealAnalysisReceipt(
          schemaVersion: 1,
          calculationOrigin:
              CalculationOrigin.CALCULATION_ORIGIN_LOCAL_DETERMINISTIC,
        ),
      ),
      textDescription: 'banana',
    );
    await tester.pumpWidget(
      wrapWithProviders(
        Builder(
          builder:
              (context) => TextButton(
                onPressed:
                    () => showMealTip(
                      context: context,
                      purpose: MealDetailsSheetPurpose.mealAddition,
                      mealDetectionResult:
                          pipelineContext.toMealDetectionResult(),
                      pipelineContext: pipelineContext,
                      previewOnly: true,
                    ),
                child: const Text('Open'),
              ),
        ),
      ),
    );

    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();

    expect(find.byIcon(LucideIcons.thumbsUp), findsNothing);
    expect(find.byIcon(LucideIcons.thumbsDown), findsNothing);
  });
}
