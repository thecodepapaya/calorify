///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsHu extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.hu,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hu>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsHu _root = this; // ignore: unused_field

	@override 
	TranslationsHu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHu(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Magyar';
	@override String get flag => '🇭🇺';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsHu errors = _TranslationsErrorsHu._(_root);
	@override late final _TranslationsOnboardingHu onboarding = _TranslationsOnboardingHu._(_root);
	@override late final _TranslationsTabsHu tabs = _TranslationsTabsHu._(_root);
	@override late final _TranslationsHomeHu home = _TranslationsHomeHu._(_root);
	@override late final _TranslationsHistoryHu history = _TranslationsHistoryHu._(_root);
	@override late final _TranslationsMealHu meal = _TranslationsMealHu._(_root);
	@override late final _TranslationsFavoritesHu favorites = _TranslationsFavoritesHu._(_root);
	@override late final _TranslationsProfileHu profile = _TranslationsProfileHu._(_root);
	@override late final _TranslationsHealthScoreHu healthScore = _TranslationsHealthScoreHu._(_root);
	@override late final _TranslationsEditProfileHu editProfile = _TranslationsEditProfileHu._(_root);
	@override late final _TranslationsSettingsHu settings = _TranslationsSettingsHu._(_root);
	@override late final _TranslationsRemindersHu reminders = _TranslationsRemindersHu._(_root);
	@override late final _TranslationsNotificationsHu notifications = _TranslationsNotificationsHu._(_root);
	@override late final _TranslationsLoginHu login = _TranslationsLoginHu._(_root);
	@override late final _TranslationsDisclaimerHu disclaimer = _TranslationsDisclaimerHu._(_root);
	@override late final _TranslationsLocalNutritionPhase4Hu localNutritionPhase4 = _TranslationsLocalNutritionPhase4Hu._(_root);
	@override late final _TranslationsCommonHu common = _TranslationsCommonHu._(_root);
	@override late final _TranslationsFeedbackRatingHu feedbackRating = _TranslationsFeedbackRatingHu._(_root);
	@override late final _TranslationsHealthHu health = _TranslationsHealthHu._(_root);
}

// Path: errors
class _TranslationsErrorsHu extends TranslationsErrorsEn {
	_TranslationsErrorsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Túl sok kérést küldtél. Kérlek várj egy kicsit, majd próbáld újra.';
	@override String get networkError => 'Hálózati hiba. Ellenőrizd az internetkapcsolatodat.';
	@override String get unknownError => 'Valami hiba történt. Kérlek próbáld meg később.';
	@override String get loadingProfileData => 'Hiba a profiladatok betöltésekor';
	@override String get somethingWentWrong => 'Valami elromlott.';
	@override String get retry => 'Újrapróbálás';
}

// Path: onboarding
class _TranslationsOnboardingHu extends TranslationsOnboardingEn {
	_TranslationsOnboardingHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Üdvözlünk a ${appLabel}-ben';
	@override String get subtitle => 'Személyes táplálkozási társad az AI erejével';
	@override String get getStarted => 'Kezdés';
	@override late final _TranslationsOnboardingFeaturesHu features = _TranslationsOnboardingFeaturesHu._(_root);
	@override late final _TranslationsOnboardingGenderHu gender = _TranslationsOnboardingGenderHu._(_root);
	@override late final _TranslationsOnboardingHeightHu height = _TranslationsOnboardingHeightHu._(_root);
	@override late final _TranslationsOnboardingWeightHu weight = _TranslationsOnboardingWeightHu._(_root);
	@override late final _TranslationsOnboardingAgeHu age = _TranslationsOnboardingAgeHu._(_root);
	@override late final _TranslationsOnboardingBmiScaleHu bmiScale = _TranslationsOnboardingBmiScaleHu._(_root);
	@override late final _TranslationsOnboardingWeightGoalHu weightGoal = _TranslationsOnboardingWeightGoalHu._(_root);
	@override late final _TranslationsOnboardingActivityLevelHu activityLevel = _TranslationsOnboardingActivityLevelHu._(_root);
	@override late final _TranslationsOnboardingHealthConnectHu healthConnect = _TranslationsOnboardingHealthConnectHu._(_root);
	@override late final _TranslationsOnboardingReinforcementHu reinforcement = _TranslationsOnboardingReinforcementHu._(_root);
}

// Path: tabs
class _TranslationsTabsHu extends TranslationsTabsEn {
	_TranslationsTabsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Irányítópult';
	@override String get history => 'Előzmények';
}

// Path: home
class _TranslationsHomeHu extends TranslationsHomeEn {
	_TranslationsHomeHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryHu aiSummary = _TranslationsHomeAiSummaryHu._(_root);
	@override late final _TranslationsHomeDailyGoalHu dailyGoal = _TranslationsHomeDailyGoalHu._(_root);
	@override late final _TranslationsHomeDailySummaryHu dailySummary = _TranslationsHomeDailySummaryHu._(_root);
	@override late final _TranslationsHomeIntakeProgressHu intakeProgress = _TranslationsHomeIntakeProgressHu._(_root);
	@override late final _TranslationsHomeIntakeHistoryHu intakeHistory = _TranslationsHomeIntakeHistoryHu._(_root);
	@override late final _TranslationsHomeMealLogHu mealLog = _TranslationsHomeMealLogHu._(_root);
	@override late final _TranslationsHomeMealDescriptionHu mealDescription = _TranslationsHomeMealDescriptionHu._(_root);
	@override late final _TranslationsHomeFavoriteMealsHu favoriteMeals = _TranslationsHomeFavoriteMealsHu._(_root);
	@override late final _TranslationsHomeMealSnapHu mealSnap = _TranslationsHomeMealSnapHu._(_root);
	@override late final _TranslationsHomeConnectHealthHu connectHealth = _TranslationsHomeConnectHealthHu._(_root);
}

// Path: history
class _TranslationsHistoryHu extends TranslationsHistoryEn {
	_TranslationsHistoryHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Nincsenek rögzített ételek';
	@override String get emptyMessage => 'Készíts fotót az utolsó étkezésedről, hogy itt naplózd.';
	@override String get today => 'Ma';
	@override String get yesterday => 'Tegnap';
}

// Path: meal
class _TranslationsMealHu extends TranslationsMealEn {
	_TranslationsMealHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Húha!';
	@override String get delete => 'Törlés';
	@override String get editMeal => 'Étel szerkesztése';
	@override String get addMeal => 'Étel hozzáadása';
	@override String get saveMeal => 'Étel mentése';
	@override String get save => 'Mentés';
	@override String get mealName => 'Étel neve';
	@override String get mealNameHint => 'pl. Tojásrántotta pirítóssal';
	@override String get nameRequired => 'Mentés előtt add meg az étkezés nevét.';
	@override String get mealQuantity => 'Adag mennyisége';
	@override String get mealQuantityHint => 'pl. 1 tál, 2 szelet';
	@override String get timeOfMeal => 'Étkezés ideje';
	@override String get timeOfMealHint => 'Válaszd ki, mikor etted az ételt';
	@override String get mealType => 'Étkezés típusa';
	@override late final _TranslationsMealNutritionHu nutrition = _TranslationsMealNutritionHu._(_root);
	@override late final _TranslationsMealDeleteConfirmationHu deleteConfirmation = _TranslationsMealDeleteConfirmationHu._(_root);
	@override String get addedToLog => 'Az étel hozzáadva a naplódhoz!';
	@override String couldNotAdd({required Object error}) => 'Nem sikerült hozzáadni az ételt: ${error}';
	@override String get savedSuccessfully => 'Az étel sikeresen hozzáadva!';
	@override String get updatedSuccessfully => 'Az étel sikeresen frissítve!';
	@override String errorSaving({required Object error}) => 'Hiba az étel mentésekor: ${error}';
	@override String get removedFromFavorites => 'Eltávolítva a kedvencek közül!';
	@override String get savedAsFavorite => 'Az étel kedvencként elmentve!';
	@override String get unfavorite => 'Eltávolítás a kedvencek közül';
	@override String couldNotUpdateFavorite({required Object error}) => 'Nem sikerült frissíteni a kedvencet: ${error}';
	@override String get feedbackThanks => 'Köszönjük a visszajelzést!';
	@override String get reanalysisUpdated => 'Frissítettük az étel elemzését a visszajelzésed alapján.';
	@override String failedToProcess({required Object error}) => 'Feldolgozás sikertelen: ${error}';
	@override String failedToProcessImage({required Object error}) => 'A képfeldolgozás sikertelen: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Hiba a kép tömörítése közben: ${error}';
	@override String get failedToSave => 'Az adatok mentése sikertelen. Kérlek próbáld újra.';
	@override String get skip => 'Kihagyás';
	@override late final _TranslationsMealQuestionFlowHu questionFlow = _TranslationsMealQuestionFlowHu._(_root);
	@override late final _TranslationsMealAnalysisHu analysis = _TranslationsMealAnalysisHu._(_root);
	@override late final _TranslationsMealLocalInferenceHu localInference = _TranslationsMealLocalInferenceHu._(_root);
	@override late final _TranslationsMealFeedbackHu feedback = _TranslationsMealFeedbackHu._(_root);
}

// Path: favorites
class _TranslationsFavoritesHu extends TranslationsFavoritesEn {
	_TranslationsFavoritesHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kedvencek';
	@override String get empty => 'Még nincs kedvenc étel.';
	@override String get searchPlaceholder => 'Keresés a kedvencek között';
	@override String get searchEmptyTitle => 'Nincs találat a kedvencek között';
	@override String get searchEmptySubtitle => 'Próbálj más ételnevet, adagmennyiséget vagy étkezéstípust.';
	@override String get sortLabel => 'Kedvencek rendezése';
	@override String get undo => 'Visszavonás';
	@override String removed({required Object name}) => 'Eltávolítva: ${name} a kedvencek közül';
	@override late final _TranslationsFavoritesSortOptionsHu sortOptions = _TranslationsFavoritesSortOptionsHu._(_root);
}

// Path: profile
class _TranslationsProfileHu extends TranslationsProfileEn {
	_TranslationsProfileHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Nincs profiladat';
	@override String get yourProfile => 'A profilod';
	@override String get viewAndManage => 'Egészségügyi adatok megtekintése és kezelése';
	@override late final _TranslationsProfileSectionsHu sections = _TranslationsProfileSectionsHu._(_root);
	@override String get gender => 'Nem';
	@override String get height => 'Magasság';
	@override String get weight => 'Súly';
	@override String get age => 'Kor';
	@override String get weightGoal => 'Súlycél';
	@override String get targetWeight => 'Cél súly';
	@override String get activityLevel => 'Aktivitási szint';
	@override String get healthMetrics => 'Egészségmutatók';
	@override String get notSet => 'Nincs beállítva';
	@override String get years => 'év';
	@override String get updatedSuccessfully => 'A profil sikeresen frissítve!';
	@override late final _TranslationsProfileCalculatedValuesHu calculatedValues = _TranslationsProfileCalculatedValuesHu._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreHu extends TranslationsHealthScoreEn {
	_TranslationsHealthScoreHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Egészségpontszám';
	@override String get whyThisScore => 'Miért ez a pontszám?';
	@override String get note => 'Ez a pontszám AI-becslés az azonosított összetevők és a tápanyagsűrűség alapján. Mindig kérj szakmai tanácsot személyre szabott étrendhez.';
	@override String get unhealthy => 'Nem egészséges';
	@override String get healthy => 'Egészséges';
	@override String get neutral => 'Semleges';
}

// Path: editProfile
class _TranslationsEditProfileHu extends TranslationsEditProfileEn {
	_TranslationsEditProfileHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil szerkesztése';
	@override late final _TranslationsEditProfileSectionsHu sections = _TranslationsEditProfileSectionsHu._(_root);
	@override String get gender => 'Nem';
	@override String get dateOfBirth => 'Születési dátum';
	@override String get height => 'Magasság';
	@override String get weight => 'Súly';
	@override String get weightGoal => 'Súlycél';
	@override String get activityLevel => 'Aktivitási szint';
	@override String get metric => 'Metrikus';
	@override String get imperial => 'Imperiális';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'font (lb)';
	@override String get metricCm => 'Metrikus (cm)';
	@override String get imperialFtIn => 'Imperiális (ft/in)';
	@override String get metricKg => 'Metrikus (kg)';
	@override String get imperialLbs => 'Imperiális (lbs)';
	@override late final _TranslationsEditProfileGendersHu genders = _TranslationsEditProfileGendersHu._(_root);
	@override late final _TranslationsEditProfileWeightGoalsHu weightGoals = _TranslationsEditProfileWeightGoalsHu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsHu activityLevels = _TranslationsEditProfileActivityLevelsHu._(_root);
}

// Path: settings
class _TranslationsSettingsHu extends TranslationsSettingsEn {
	_TranslationsSettingsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beállítások';
	@override late final _TranslationsSettingsSectionsHu sections = _TranslationsSettingsSectionsHu._(_root);
	@override late final _TranslationsSettingsEditProfileHu editProfile = _TranslationsSettingsEditProfileHu._(_root);
	@override late final _TranslationsSettingsLanguageHu language = _TranslationsSettingsLanguageHu._(_root);
	@override late final _TranslationsSettingsHeightUnitHu heightUnit = _TranslationsSettingsHeightUnitHu._(_root);
	@override late final _TranslationsSettingsWeightUnitHu weightUnit = _TranslationsSettingsWeightUnitHu._(_root);
	@override late final _TranslationsSettingsMealRemindersHu mealReminders = _TranslationsSettingsMealRemindersHu._(_root);
	@override late final _TranslationsSettingsLocalInferenceHu localInference = _TranslationsSettingsLocalInferenceHu._(_root);
	@override late final _TranslationsSettingsThemeHu theme = _TranslationsSettingsThemeHu._(_root);
	@override late final _TranslationsSettingsSendFeedbackHu sendFeedback = _TranslationsSettingsSendFeedbackHu._(_root);
	@override late final _TranslationsSettingsExportMealHistoryHu exportMealHistory = _TranslationsSettingsExportMealHistoryHu._(_root);
	@override late final _TranslationsSettingsClearAllDataHu clearAllData = _TranslationsSettingsClearAllDataHu._(_root);
	@override late final _TranslationsSettingsDebugOptionsHu debugOptions = _TranslationsSettingsDebugOptionsHu._(_root);
	@override String get developerModeEnabled => 'Fejlesztői mód engedélyezve!';
	@override late final _TranslationsSettingsHealthConnectHu healthConnect = _TranslationsSettingsHealthConnectHu._(_root);
	@override late final _TranslationsSettingsAboutHu about = _TranslationsSettingsAboutHu._(_root);
	@override late final _TranslationsSettingsAppInfoHu appInfo = _TranslationsSettingsAppInfoHu._(_root);
}

// Path: reminders
class _TranslationsRemindersHu extends TranslationsRemindersEn {
	_TranslationsRemindersHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maradj a pályán emlékeztetőkkel';
	@override String get description => 'Gyengéd emlékeztetők, hogy naplózd az étkezéseidet és következetes maradj a táplálkozási célokkal';
	@override String get notificationsEnabled => 'Értesítések engedélyezve';
	@override String get notificationsDisabled => 'Értesítések letiltva';
	@override String get enabledSubtitle => 'Étkezés emlékeztetőket fogsz kapni';
	@override String get disabledSubtitle => 'Kapcsold be az értesítéseket az étkezés emlékeztetőkhöz';
	@override String get mealReminders => 'Étkezés emlékeztetők';
	@override String get breakfast => 'Reggeli';
	@override String get lunch => 'Ebéd';
	@override String get dinner => 'Vacsora';
	@override String get snack => 'Uzsonna';
	@override String get unknown => 'Ismeretlen';
	@override String get change => 'Módosítás';
	@override String get enableNotifications => 'Értesítések engedélyezése';
	@override String get skipForNow => 'Most kihagyom';
	@override String get saveChanges => 'Változtatások mentése';
	@override String get enabledSuccessfully => 'Értesítések sikeresen engedélyezve!';
	@override String get permissionDenied => 'Értesítési engedély megtagadva';
	@override String errorEnabling({required Object error}) => 'Hiba az értesítések engedélyezésekor: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Hiba a beállítás befejezésekor: ${error}';
}

// Path: notifications
class _TranslationsNotificationsHu extends TranslationsNotificationsEn {
	_TranslationsNotificationsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastHu breakfast = _TranslationsNotificationsBreakfastHu._(_root);
	@override late final _TranslationsNotificationsLunchHu lunch = _TranslationsNotificationsLunchHu._(_root);
	@override late final _TranslationsNotificationsDinnerHu dinner = _TranslationsNotificationsDinnerHu._(_root);
	@override late final _TranslationsNotificationsSnackHu snack = _TranslationsNotificationsSnackHu._(_root);
	@override late final _TranslationsNotificationsTestHu test = _TranslationsNotificationsTestHu._(_root);
}

// Path: login
class _TranslationsLoginHu extends TranslationsLoginEn {
	_TranslationsLoginHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bejelentkezés';
	@override String get signInWithGoogle => 'Bejelentkezés Google-lal';
	@override String get signInFailed => 'A Google bejelentkezés sikertelen vagy megszakadt.';
}

// Path: disclaimer
class _TranslationsDisclaimerHu extends TranslationsDisclaimerEn {
	_TranslationsDisclaimerHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Kérjük vedd figyelembe';
	@override late final _TranslationsDisclaimerSnapHu snap = _TranslationsDisclaimerSnapHu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateHu weightEstimate = _TranslationsDisclaimerWeightEstimateHu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsHu healthMetrics = _TranslationsDisclaimerHealthMetricsHu._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureHu calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureHu._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4Hu extends TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4Hu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'A tápértékadatok a letöltött USDA-csomagból származnak';
	@override String get nutritionCached => 'A tápértékadatok az eszköz USDA-gyorsítótárából származnak';
	@override String get nutritionMixed => 'A tápértékadatok letöltött, gyorsítótárazott és távoli USDA-sorokból lettek egyesítve';
	@override String get calculationLocal => 'A kalóriák és makrotápanyagok kiszámítása ezen az eszközön történt';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: letöltött USDA-csomag';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: az eszköz USDA-gyorsítótára';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: Calorifyn keresztül lekért USDA-sor';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: determinisztikus tápértékállandó';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · adatkészlet ${datasetVersion}';
	@override String get portionSmaller => 'Kisebb';
	@override String get portionEstimated => 'Becsült';
	@override String get portionLarger => 'Nagyobb';
	@override String portionQuestion({required Object ingredient}) => 'Melyik adag állt legközelebb ehhez: ${ingredient}?';
	@override String get mealTypeQuestion => 'Melyik étkezés volt ez?';
	@override String get localNutritionTip => 'Ellenőrzött helyi tápértékadatokból kiszámítva.';
	@override String get offlineNutritionTitle => 'Tápértékadatok letöltése';
	@override String get offlineNutritionSubtitle => 'Ellenőrzött USDA-sorok és determinisztikus számítás használata ezen az eszközön, ha minden összetevő lefedett.';
	@override String get offlineNutritionUnavailable => 'Ehhez az alkalmazásverzióhoz nem érhetők el helyi tápértékadatok.';
	@override String get offlineNutritionNotDownloaded => 'Nincs letöltve ellenőrzött tápértékcsomag.';
	@override String get offlineNutritionInstalling => 'Tápértékadatok letöltése és ellenőrzése…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Csomag ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} gyorsítótárazott USDA-sor · ${size}';
	@override String get offlineNutritionUpdate => 'Frissítés keresése';
	@override String get offlineNutritionClear => 'Helyi tápértékadatok törlése';
	@override String get offlineNutritionClearTitle => 'Törli a helyi tápértékadatokat?';
	@override String get offlineNutritionClearBody => 'Ez eltávolítja a letöltött USDA-csomagot és a keresési gyorsítótárat. A naplózott étkezések megtartják a mentéskor használt pontos tápérték-pillanatképet.';
	@override String get offlineNutritionClearConfirm => 'Adatok törlése';
	@override String offlineNutritionInstallFailed({required Object error}) => 'A helyi tápértékadatokat nem sikerült letölteni és ellenőrizni: ${error}';
	@override String get offlineNutritionCleared => 'A helyi tápértékadatok törölve';
}

// Path: common
class _TranslationsCommonHu extends TranslationsCommonEn {
	_TranslationsCommonHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get close => 'Bezárás';
	@override String get kContinue => 'Folytatás';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingHu extends TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Tetszik a ${appLabel}?';
	@override String get yes => 'Igen, tetszik';
	@override String get no => 'Nem igazán';
	@override String get rateStepHeading => 'Értékelés a Play Store-ban';
	@override String get emailStepHeading => 'Visszajelzés küldése e-mailben';
	@override String soloDevMessage({required Object appLabel}) => 'Egy gyors értékelés segít másoknak megtalálni a ${appLabel}-t és támogatja a fejlesztést. Tudnál egy percet szánni rá?';
	@override String get shareFeedbackViaEmail => 'A visszajelzésed alakítja a jövőt — minden üzenetet elolvasunk. Szeretnél e-mailben megosztani gondolatokat?';
	@override String get rateCta => 'Értékelés a Play Store-ban';
	@override String get maybeLater => 'Talán később';
	@override String get sendFeedback => 'Visszajelzés küldése';
	@override String get noThanks => 'Nem köszönöm';
	@override String get aboutUsDescription => 'Gondosan készítve egy kis csapat által. Az adatvédelemre, egyszerűségre és a jobb étkezési szokások építésére fókuszálunk.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Kíváncsi vagy, ki áll a ${appLabel} mögött? Lásd: ';
	@override String get aboutUsLinkLabel => 'Rólunk';
	@override String get thankYouMessage => 'Köszönjük! Egy másik alkalommal újra megkérdezünk.';
}

// Path: health
class _TranslationsHealthHu extends TranslationsHealthEn {
	_TranslationsHealthHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Nem sikerült szinkronizálni a Health Connecttel';
	@override String get mealSynced => 'Étkezés szinkronizálva a Health Connecttel';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesHu extends TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionHu foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionHu._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisHu aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisHu._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationHu healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationHu._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderHu extends TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mi a neme?';
	@override String get description => 'A nem segít pontosan kiszámolni az alapanyagcserédet (BMR).';
	@override String get next => 'Tovább';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightHu extends TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Milyen magas vagy?';
	@override String get description => 'A magasság pontosítja a BMI és energiaigény számítást.';
	@override String get metric => 'Metrikus';
	@override String get imperial => 'Imperiális';
	@override String get next => 'Tovább';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightHu extends TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Mennyi a jelenlegi súlyod?';
	@override String get currentDescription => 'A jelenlegi súly fontos a napi célok személyre szabásához.';
	@override String get targetTitle => 'Mi a cél súlyod?';
	@override String get targetDescription => 'A cél súly beállítása segít a hosszú távú terv meghatározásában.';
	@override String get metric => 'Metrikus';
	@override String get imperial => 'Imperiális';
	@override String get next => 'Tovább';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeHu extends TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mikor van a születésnapod?';
	@override String get description => 'Az életkor segít pontosan kiszámolni a kalóriaszükségletedet.';
	@override String get next => 'Tovább';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleHu extends TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Alacsony testsúly';
	@override String get healthy => 'Egészséges';
	@override String get overweight => 'Túlsúly';
	@override String get obese => 'Elhízás';
	@override late final _TranslationsOnboardingBmiScaleCategoriesHu categories = _TranslationsOnboardingBmiScaleCategoriesHu._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesHu messages = _TranslationsOnboardingBmiScaleMessagesHu._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalHu extends TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mi a célod?';
	@override String get description => 'Válaszd ki azt a célt, ami leginkább tükrözi, mit szeretnél elérni';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelHu extends TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Milyen aktív vagy?';
	@override String get description => 'Ez segít pontosabban kiszámolni a napi kalóriaszükségletedet';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectHu extends TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kapcsolódj a Health Connecthez';
	@override String get description => 'Szinkronizáld egészségadataid a jobb elemzésekért és automatikus kalóriakövetésért';
	@override String get overviewDescription => 'Használd fel az elégetett kalóriákat a napi célodban, és igény szerint oszd meg a naplózott étkezéseket a Health Connecttel.';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingHu automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingHu._(_root);
	@override late final _TranslationsOnboardingHealthConnectCaloriesBurnedHu caloriesBurned = _TranslationsOnboardingHealthConnectCaloriesBurnedHu._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsHu progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsHu._(_root);
	@override late final _TranslationsOnboardingHealthConnectShareLoggedMealsHu shareLoggedMeals = _TranslationsOnboardingHealthConnectShareLoggedMealsHu._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationHu seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationHu._(_root);
	@override late final _TranslationsOnboardingHealthConnectUserControlHu userControl = _TranslationsOnboardingHealthConnectUserControlHu._(_root);
	@override String get connected => 'Health Connect csatlakoztatva';
	@override String get notConnected => 'Health Connect nincs csatlakoztatva';
	@override String get setup => 'Health Connect beállítása';
	@override String get skipForNow => 'Most kihagyom';
	@override String get statusConnected => 'A Health Connect csatlakoztatva.';
	@override String get statusSuccess => 'A Health Connect sikeresen csatlakoztatva!';
	@override String get statusNotConnected => 'Válaszd ki az engedélyezni kívánt Health Connect-funkciókat.';
	@override String get statusPartial => 'A Health Connect részben csatlakozik. Mindkét funkció használatához engedélyezd a fennmaradó jogosultságot.';
	@override String get statusProviderUpdateRequired => 'A folytatáshoz telepítsd vagy frissítsd a Health Connectet.';
	@override String get statusUnavailable => 'A Health Connect nem támogatott ezen az eszközön.';
	@override String get installOrUpdate => 'Telepítés vagy frissítés';
	@override String get manageAccess => 'Hozzáférés kezelése';
	@override String statusPermissionDenied({required Object appLabel}) => 'Hozzáférés megtagadva. Kérlek engedélyezd a Health Connect jogosultságokat a telefon beállításaiban a ${appLabel} számára.';
	@override String statusError({required Object error}) => 'Hiba a Health Connect beállítása közben: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementHu extends TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessHu trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessHu._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileHu healthProfile = _TranslationsOnboardingReinforcementHealthProfileHu._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleHu goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleHu._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryHu extends TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI összegzésed';
	@override String get logMore => 'Adj több ételt a következő napokban, hogy személyre szabott AI-elemzést kapj.';
	@override String get loading => 'Összegzés betöltése…';
	@override String mealCount({required Object count}) => '${count} étel naplózva';
	@override String macroBalanceScore({required Object score}) => 'Egyensúly pontszám ${score}';
	@override String get topFoods => 'Leggyakoribb ételek';
	@override String get trendUp => 'Kalóriák növekvő tendenciát mutatnak';
	@override String get trendDown => 'Kalóriák csökkenő tendenciát mutatnak';
	@override String get trendSteady => 'Kalóriák stabilak';
	@override String generatedAt({required Object time}) => 'Frissítve ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalHu extends TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Állítsd be a napi célod';
	@override String get titleSet => 'Napi célod';
	@override String get description => 'Készen állsz az egészséged felé vezető útra? Állítsd be napi kalóriacélodat az elinduláshoz.';
	@override String get descriptionSet => 'Az iránytű beállítva! Ez a napi kalóriacélod, amely vezérelni fog.';
	@override String get yourGoal => 'A célod';
	@override String get goal => 'Cél';
	@override String get dailyCalories => 'Napi kalória (kcal)';
	@override String get setGoal => 'Cél beállítása';
	@override String get intake => 'Bevitel';
	@override String get burned => 'Elégetve';
	@override String get weightImpact => 'Súlyra gyakorolt hatás';
	@override String get estLoss => 'Becsült veszteség';
	@override String get estGain => 'Becsült gyarapodás';
	@override String get kcal => 'kilokalória (kcal)';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryHu extends TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Napi összefoglaló';
	@override String get calories => 'Kalória';
	@override String get carbs => 'Szénhidrát';
	@override String get protein => 'Fehérje';
	@override String get fat => 'Zsír';
	@override String get fiber => 'Rost';
	@override String get grams => 'gramm';
	@override String get chartAccessibilityLabel => 'Makrók diagram';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressHu extends TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'A mai makró megoszlás';
	@override String get target => 'Cél';
	@override String get current => 'Jelenlegi';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryHu extends TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => '7 napos makró előzmények';
	@override String get trendTitle => 'Mai trend';
	@override String peakHour({required Object hour}) => 'Csúcs: ${hour}:00';
	@override String get noHistoryYet => 'Még nincs előzmény';
	@override String get startLogging => 'Kezdj el étkezéseket naplózni, hogy itt lásd a\n7 napos makró trendeket';
}

// Path: home.mealLog
class _TranslationsHomeMealLogHu extends TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Naplózott ételek';
	@override String get emptyMessage => 'Készíts fotót az utolsó étkezésedről, hogy itt naplózd.';
	@override String get noMealsToday => 'Ma még nincs rögzített étkezés';
	@override String get seeAllMeals => 'Összes étel megtekintése';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionHu extends TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gyors hozzáadás AI-vel';
	@override String get description => 'Írd le az étkezésedet, és az AI elintézi a részleteket.';
	@override String get hint => 'pl. Reggelire nagy tál zabkása szeletelt banánnal és egy adag tejsavó fehérjével ...';
	@override String get analyzeMeal => 'Étel elemzése';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsHu extends TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kedvenc ételek';
	@override String get description => 'Gyorsan add hozzá az egyik kedvencét.';
	@override String get noFavorites => 'Még nincsenek kedvenc ételek.';
	@override String get addFavoriteHint => 'Kattints a csillagra egy ételnél, hogy kedvenccé tedd.';
	@override String get seeAll => 'Összes megtekintése';
	@override String get add => 'Hozzáadás';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapHu extends TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fényképezd és kövesd az ételt';
	@override String get description => 'Használd a kamerát az étel fotózásához AI-elemzéshez.';
	@override String get openCamera => 'Kamera megnyitása';
	@override String get gallery => 'Galéria';
	@override String get compressingPhoto => 'Fénykép optimalizálása…';
	@override String get uploadingPhoto => 'Fénykép feltöltése…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthHu extends TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szinkron a Health Connecttel';
	@override String get description => 'Szinkronizáld a táplálkozási adataidat a Health Connecttel';
	@override String get install => 'Telepítés';
	@override String get dataUseDescription => 'Használd fel az elégetett kalóriákat a célodban, és oszd meg a naplózott étkezéseket';
	@override String get installOrUpdate => 'Telepítés vagy frissítés';
	@override String get connect => 'Csatlakozás';
}

// Path: meal.nutrition
class _TranslationsMealNutritionHu extends TranslationsMealNutritionEn {
	_TranslationsMealNutritionHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalória';
	@override String get carbs => 'Szénhidrát (g)';
	@override String get protein => 'Fehérje (g)';
	@override String get fat => 'Zsír (g)';
	@override String get fiber => 'Rost (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationHu extends TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Étel törlése';
	@override String get message => 'Biztosan törölni szeretnéd ezt az étkezési bejegyzést?';
	@override String get cancel => 'Mégse';
	@override String get delete => 'Törlés';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowHu extends TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Kérdés ${current} / ${total}';
	@override String get noQuestionsAvailable => 'Nincsenek elérhető kérdések';
	@override String get next => 'Következő';
	@override String get continueLabel => 'Folytatás';
}

// Path: meal.analysis
class _TranslationsMealAnalysisHu extends TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Étel elemzése';
	@override String get stepStarted => 'Elindulás…';
	@override String get stepDecomposition => 'Az étel megértése…';
	@override String get stepIngredients => 'Hozzávalók párosítása tápanyagadatokkal…';
	@override String get stepUncertainty => 'Bizonyosság ellenőrzése…';
	@override String get stepMealTypeQuestion => 'Majdnem kész…';
	@override String get stepResult => 'Eredmény véglegesítése…';
	@override String get stepError => 'Valami hiba történt';
	@override String get stepDefault => 'Étel elemzése…';
	@override String get progressUnderstand => 'Az étel megértése';
	@override String get progressMatch => 'Hozzávalók tápanyagainak keresése';
	@override String get progressCheck => 'Adagok és bizonyosság ellenőrzése';
	@override String get progressMealType => 'Ételtípus kiválasztása';
	@override String get progressFinish => 'Kalóriák és makrók számítása';
	@override String get detectedIngredientHeading => 'Azonosított összetevők';
	@override String ingredientsOverflow({required Object count}) => 'még ${count}';
	@override String ingredientsLine({required Object count}) => '${count} összetevő észlelve';
	@override String get ingredientsPending => 'Összetevők beolvasása…';
	@override String mealPreviewDescription({required Object text}) => '„${text}”';
	@override String get offlineTip0 => 'Tipp: A következetesség fontosabb, mint a tökéletesség — a rendszeres naplózás mutatja meg a valódi mintákat.';
	@override String get offlineTip1 => 'Tipp: Fotókhoz a természetes fény és felülnézeti fotó segít az adagpontosságban.';
	@override String get offlineTip2 => 'Tipp: Említsd meg az italokat, szószokat és sütőolajat — ezek plusz kalóriát adnak, amit gyakran elfelejtenek.';
	@override String get offlineTip3 => 'Tipp: Egy gyors adagmegjegyzés (1 tál, nagy kávé) sokkal pontosabb becslést ad.';
	@override String get offlineTip4 => 'Tipp: Az étkezés utáni naplózás is segít kialakítani a szokást; a tökéletesség nem kötelező.';
	@override String get offlineTip5 => 'Tipp: Mondd el, hogyan volt elkészítve az étel, ha nagyban változtatja a kalóriát (sütve vs. sütőben).';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceHu extends TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Élelmiszerek ellenőrzése';
	@override String get reviewSubtitle => 'Ezt a készüléked elemezte. Kérjük, javítsd a neveket vagy az adagokat a tápérték számítása előtt.';
	@override String get mealName => 'Étel neve';
	@override String get ingredient => 'Összetevő';
	@override String get grams => 'Becsült gramm';
	@override String get removeIngredient => 'Összetevő törlése';
	@override String get continueLabel => 'Folytatás';
	@override String get invalidProposal => 'Adjon hozzá legalább egy összetevőt, és adjon meg egy pozitív grammsúlyt.';
	@override String get localUnavailable => 'A készüléken történő elemzés jelenleg nem érhető el.';
	@override String get calculationDetails => 'A számítás módja';
	@override String get interpretationLocal => 'A készüléken elemezett összetevők';
	@override String get interpretationCloud => 'Felhőben elemezett összetevők';
	@override String get interpretationManual => 'Általad ellenőrzött vagy szerkesztett összetevők';
	@override String get nutritionRemote => 'USDA tápértékadatok a Calorify-on keresztül';
	@override String get nutritionFallback => 'Néhány tápértékadatot távolról becsültük';
	@override String get calculationServer => 'Kalóriákat és makrókat a Calorify számolta';
	@override String get fallbackUsed => 'A helyi elemzés helyett felhőalapú feldolgozást használtunk';
	@override String get noRawContent => 'A diagnosztikai nyugtások nem tartalmazzák az étel leírását vagy fotóját.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackHu extends TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mi tűnik hibásnak?';
	@override String get subtitle => 'Segíts javítani az elemzést egy vagy több probléma kiválasztásával.';
	@override String get tellUsMore => 'Mesélj részletesebben';
	@override String get describeIncorrect => 'Írd le, mi volt pontatlan';
	@override String get submit => 'Beküldés';
	@override String get issueFoodIdentification => 'Ételazonosítás';
	@override String get issuePortionSize => 'Adagméret';
	@override String get issueCalorieDistribution => 'Kalóriaeloszlás';
	@override String get issueMacrosWrong => 'Makrók hibásak';
	@override String get issueMissingItems => 'Hiányzó elemek';
	@override String get issueExtraItems => 'Többlet elemek';
	@override String get issueOther => 'Egyéb';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsHu extends TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Legutóbbi';
	@override String get calories => 'Kalória';
	@override String get alphabetical => 'A–Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsHu extends TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'ALAPADATOK';
	@override String get goalsAndActivity => 'CÉLOK & AKTIVITÁS';
	@override String get calculatedValues => 'SZÁMOLT ÉRTÉKEK';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesHu extends TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Napi cél';
	@override String get calPerDay => 'cal/nap';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsHu extends TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'SZEMÉLYES ADATOK';
	@override String get physicalMeasurements => 'TESTMÉRETEK';
	@override String get goalsAndActivity => 'CÉLOK & AKTIVITÁS';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersHu extends TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get male => 'Férfi';
	@override String get female => 'Nő';
	@override String get other => 'Egyéb';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsHu extends TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightHu loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightHu._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightHu maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightHu._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightHu gainWeight = _TranslationsEditProfileWeightGoalsGainWeightHu._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsHu extends TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryHu sedentary = _TranslationsEditProfileActivityLevelsSedentaryHu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveHu lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveHu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveHu moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveHu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveHu veryActive = _TranslationsEditProfileActivityLevelsVeryActiveHu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveHu extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveHu._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsHu extends TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALIZÁCIÓ';
	@override String get notifications => 'ÉRTESÍTÉSEK';
	@override String get healthConnect => 'Health Connect';
	@override String get localInference => 'KÉSZÜLÉKEN TÖRTÉNŐ ELEMZÉS';
	@override String get supportAndLegal => 'TÁMOGATÁS & JOGI';
	@override String get about => 'NÉVJEGY';
	@override String get dangerZone => 'VESZÉLYZÓNA';
	@override String get developer => 'FEJLESZTŐ';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileHu extends TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil szerkesztése';
	@override String get subtitle => 'Személyes adatok frissítése';
}

// Path: settings.language
class _TranslationsSettingsLanguageHu extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nyelv';
	@override String get subtitle => 'Válaszd ki a preferált nyelvet';
	@override String get searchHint => 'Nyelvek keresése...';
	@override String get noResults => 'Nincs találat';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitHu extends TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Magasság mértékegysége';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitHu extends TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Súly mértékegysége';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersHu extends TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Étkezés emlékeztetők';
	@override String get subtitle => 'Maradj a pályán időben érkező figyelmeztetésekkel';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceHu extends TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Készüléken történő ételelemzés';
	@override String get subtitle => 'Támogatott ételek elemzése Gemini Nano segítségével a tápérték számítása előtt';
	@override String get unavailable => 'Nem érhető el ezen a készüléken';
	@override String get rolloutUnavailable => 'Megfelelő hardver található, de ez a funkció nem aktív a jelenlegi applikációs verzióban';
	@override String get modelSetup => 'A Gemini Nano letöltése be kell fejeznie, mielőtt ez engedhetővé válna';
	@override String get useLocalTitle => 'Készüléken történő elemzés használata';
	@override String get useLocalSubtitle => 'Opcionális, alapértelmezetten ki van kapcsolva. A komplex ételeknél az eredmények kevésbé megbízhatóak lehetnek.';
	@override String get disclosureTitle => 'Mielőtt engedélyezné a készüléken történő elemzést';
	@override String get disclosureBody => 'A Gemini Nano képes az összetevők azonosítására és az adagok becslésére a támogatott Android készülékeken. Az ellenőrzött összetevő-javaslatot a Calorify-nak küldjük a USDA tápértékadatok alapú számításhoz.';
	@override String get disclosureLimit1 => 'A komplex ételek, a rejtett összetevők és az adagméretek esetleg hibásan kerülhetnek azonosításra.';
	@override String get disclosureLimit2 => 'A modell nem lehet elérhető letöltés közben, elfoglaltság esetén, háttérben vagy a készülék korlátozásai miatt.';
	@override String get disclosureLimit3 => 'Ha a helyi elemzés nem tud befejeződni, ez a bétaverzió automatikusan elküldi az eredeti ételleírást a Calorify-nak felhőalapú elemzésre.';
	@override String get acknowledgement => 'Értem, hogy ellenőriznem kell az azonosított összetevőket és adagokat.';
	@override String get enable => 'Elfogadom és engedélyezem';
	@override String get cancel => 'Mégse';
}

// Path: settings.theme
class _TranslationsSettingsThemeHu extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Téma';
	@override String get light => 'Világos';
	@override String get dark => 'Sötét';
	@override String get system => 'Rendszer';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackHu extends TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Visszajelzés küldése';
	@override String subtitle({required Object appLabel}) => 'Segíts fejleszteni a ${appLabel}-t';
	@override String emailSubject({required Object appLabel}) => '${appLabel} alkalmazás visszajelzés';
	@override String get emailBodyPrefix => 'Kérlek írd le a visszajelzésed itt:';
	@override String get appVersion => 'Alkalmazás verzió';
	@override String get device => 'Eszköz';
	@override String get osVersion => 'OS verzió';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryHu extends TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Étkezési előzmények exportálása';
	@override String get subtitle => 'Oszd meg a naplózott ételek CSV-jét';
	@override String get shareText => 'A Calorify étkezési előzményeid exportja';
	@override String failed({required Object error}) => 'Nem sikerült exportálni az étkezési előzményeket: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataHu extends TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Az összes adat törlése';
	@override String get subtitle => 'Minden információ végleges törlése';
	@override String get localOnlySubtitle => 'Az eszközön tárolt Calorify-adatok törlése';
	@override String get confirmationTitle => 'Töröljem az összes adatot?';
	@override String get confirmationMessage => 'Ez a művelet nem visszavonható. Minden naplózott étel, kedvenc és profilbeállítás véglegesen törlődik.';
	@override String get localOnlyConfirmationMessage => 'Ez véglegesen törli erről az eszközről a naplózott étkezéseket, a kedvenceket és a profilbeállításokat. A Health Connecttel már megosztott étkezések és a Health Connect-hozzáférés külön kezelhető a Beállítások > Health Connect menüben.';
	@override String get cancel => 'Mégse';
	@override String get clearEverything => 'Mindent törlök';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsHu extends TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hibakeresési beállítások';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectHu extends TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Engedélyek megtekintése és kezelése';
	@override late final _TranslationsSettingsHealthConnectUnavailableHu unavailable = _TranslationsSettingsHealthConnectUnavailableHu._(_root);
	@override late final _TranslationsSettingsHealthConnectUpdateRequiredHu updateRequired = _TranslationsSettingsHealthConnectUpdateRequiredHu._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsHu permissions = _TranslationsSettingsHealthConnectPermissionsHu._(_root);
	@override String get managePermissions => 'Engedélyek kezelése';
	@override String get openSettings => 'Health Connect beállítások megnyitása';
	@override String get disconnect => 'Health Connect leválasztása';
	@override String get disconnectConfirmationTitle => 'Leválasztod a Health Connectet?';
	@override String get disconnectConfirmationMessage => 'A Calorify elveszíti a Health Connecthez való hozzáférést. A már oda írt adatok nem törlődnek.';
	@override String get disconnectConfirmationAction => 'Leválasztás';
	@override String get deleteSyncedMeals => 'Calorify-étkezések törlése a Health Connectből';
	@override String get deleteSyncedMealsConfirmationTitle => 'Törlöd a szinkronizált étkezéseket?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Törlöd a Calorify ezen verziója által szinkronizált étkezéseket a Health Connectből? A helyi étkezési napló nem változik. Előfordulhat, hogy a régebbi Calorify-bejegyzéseket továbbra is a Health Connect Adatok kezelése funkciójával kell eltávolítani.';
	@override String get deleteSyncedMealsConfirmationAction => 'Szinkronizált étkezések törlése';
	@override String get deleteSyncedMealsSuccess => 'A Calorify-étkezések törölve lettek a Health Connectből.';
	@override String get deleteSyncedMealsFailed => 'A szinkronizált étkezéseket nem sikerült törölni. Próbáld újra.';
	@override String get connectionPartial => 'Néhány Health Connect-funkció engedélyezve van.';
	@override String get connectionComplete => 'Mindkét Health Connect-funkció engedélyezve van.';
	@override String get actionFailed => 'A Health Connectet nem sikerült megnyitni. Próbáld újra.';
	@override String get requestPermissions => 'Engedélyek kérése';
	@override String get permissionRequestCancelledOrFailed => 'Az engedélykérés megszakadt vagy sikertelen volt. Kérlek próbáld újra, vagy adj engedélyeket kézzel a Health Connect beállításaiban.';
	@override String get permissionRequestFailed => 'Nem sikerült engedélyeket kérni. Kérlek próbáld újra, vagy adj engedélyeket kézzel a Health Connect beállításaiban.';
	@override String get requestingPermissions => 'Engedélyek kérése...';
}

// Path: settings.about
class _TranslationsSettingsAboutHu extends TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Névjegy';
	@override String get tagline => 'Gyors, ingyenes és adatvédelem-központú kalória-tudatosság';
	@override late final _TranslationsSettingsAboutOurStoryHu ourStory = _TranslationsSettingsAboutOurStoryHu._(_root);
	@override late final _TranslationsSettingsAboutPrivacyHu privacy = _TranslationsSettingsAboutPrivacyHu._(_root);
	@override late final _TranslationsSettingsAboutDeveloperHu developer = _TranslationsSettingsAboutDeveloperHu._(_root);
	@override late final _TranslationsSettingsAboutFeedbackHu feedback = _TranslationsSettingsAboutFeedbackHu._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoHu extends TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify ${version}. verzió';
	@override String build({required Object buildNumber}) => 'Buildszám: ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastHu extends TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ideje reggelizni! 🍳';
	@override String get body => 'Ne felejtsd el naplózni a reggelidet';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchHu extends TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ebédidő! 🥗';
	@override String get body => 'Ideje naplózni az ebéded';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerHu extends TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vacsoraidő! 🍽️';
	@override String get body => 'Ne felejtsd el naplózni a vacsorádat';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackHu extends TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uzsonnaidő! 🍎';
	@override String get body => 'Ideje egy egészséges nassolnivalónak';
}

// Path: notifications.test
class _TranslationsNotificationsTestHu extends TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Teszt értesítés';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapHu extends TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} becsült táplálkozási információt ad. A pontosság függ a beviteledtől és az étel változataitól. Használd útmutatásként, ne végső forrásként. Személyre szabott tanácsért fordulj szakemberhez.';
	@override late final _TranslationsDisclaimerSnapPortionSizeHu portionSize = _TranslationsDisclaimerSnapPortionSizeHu._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsHu preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsHu._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsHu ingredients = _TranslationsDisclaimerSnapIngredientsHu._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsHu databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsHu._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateHu extends TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'A súlybecslésről';
	@override String get description => 'A becsült súlyváltozás elméleti számításon alapul a kalória-bevitel és -kiadás egyszerű modelljén. Motivációs útmutatásnak készült, nem az aktuális súlyod előrejelzésére.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyHu calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyHu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsHu biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsHu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightHu waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightHu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHu professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHu._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsHu extends TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get description => 'Ezek a mutatók segítenek megérteni a tested energiaigényét és iránytűként szolgálnak a táplálkozási céljaidhoz.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrHu bmr = _TranslationsDisclaimerHealthMetricsBmrHu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeHu tdee = _TranslationsDisclaimerHealthMetricsTdeeHu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalHu dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalHu._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureHu extends TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalóriafelhasználás becslése';
	@override String get description => 'Ha a Health Connect adatok nem elérhetők, a mai elégetett kalóriát a BMR és aktivitási szint (TDEE) alapján becsüljük, a nap eltelt részének arányában skálázva.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedHu howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedHu._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHu professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHu._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionHu extends TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Okos ételfelismerés';
	@override String get description => 'Készíts fotót, és az AI azonosítja az ételt';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisHu extends TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI elemzés';
	@override String get description => 'Azonnali tápanyagadatok a leírásaid alapján';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationHu extends TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Egészségintegráció';
	@override String get description => 'Kapcsolódj a Health Connecthez a jobb elemzésekért';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesHu extends TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Alacsony testsúly';
	@override String get healthyWeight => 'Egészséges testsúly';
	@override String get overweight => 'Túlsúly';
	@override String get obese => 'Elhízás';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesHu extends TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Segítünk egy egészséges terv felépítésében, hogy tápanyagban gazdag ételekkel elérd az egyensúlyi súlyt.';
	@override String get healthy => 'Remek! Egészséges tartományban vagy. Segítünk megőrizni a vitalitásodat és energiaszintedet.';
	@override String overweight({required Object appLabel}) => '${appLabel} egyszerűsíti az utadat AI-alapú nyomon követéssel, hogy kényelmesen elérd a célodat.';
	@override String get obese => 'Támogatunk személyre szabott útmutatással és fenntartható stratégiákkal az egészséged érdekében.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingHu extends TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatikus kalóriakövetés';
	@override String get description => 'Kövesd a fitneszalkalmazásaidból származó elégetett kalóriákat';
}

// Path: onboarding.healthConnect.caloriesBurned
class _TranslationsOnboardingHealthConnectCaloriesBurnedHu extends TranslationsOnboardingHealthConnectCaloriesBurnedEn {
	_TranslationsOnboardingHealthConnectCaloriesBurnedHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Elégetett kalóriák';
	@override String get description => 'A mai összes elégetett kalória beolvasása a Health Connectből';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsHu extends TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Haladás-elemzések';
	@override String get description => 'Részletes betekintés az egészséged trendjeibe';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _TranslationsOnboardingHealthConnectShareLoggedMealsHu extends TranslationsOnboardingHealthConnectShareLoggedMealsEn {
	_TranslationsOnboardingHealthConnectShareLoggedMealsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Naplózott étkezések megosztása';
	@override String get description => 'A Calorifyban naplózott étkezések írása a Health Connectbe';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationHu extends TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zökkenőmentes integráció';
	@override String get description => 'Szinkronizáld adataid a kedvenc egészségalkalmazásaiddal';
}

// Path: onboarding.healthConnect.userControl
class _TranslationsOnboardingHealthConnectUserControlHu extends TranslationsOnboardingHealthConnectUserControlEn {
	_TranslationsOnboardingHealthConnectUserControlHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Te irányítasz';
	@override String get description => 'Válaszd ki bármelyik engedélyt, és bármikor módosítsd a hozzáférést';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessHu extends TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nem vagy egyedül';
	@override String get genericMessage => 'A kutatások szerint a következetes naplózás a legjobb előrejelzője a hosszú távú sikernek.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age} éves, ${gender} személyként, aki ${goal}-t szeretne elérni, a következetes naplózás a siker legfontosabb előrejelzője.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} tízszer könnyebbé teszi, mint kézzel vezetni.';
	@override String get getStartedTitle => 'Készen állsz a kezdésre?';
	@override String get tipPhoto => 'Készíts fotót az ételeidről az azonnali elemzéshez';
	@override String get tipConsistency => 'Naplózz rendszeresen a látható előrelépésért';
	@override String get tipProgress => 'Kövesd a haladásod naponta, hogy motivált maradj';
	@override String get button => 'Indulás';
	@override String get defaultGender => 'egyén';
	@override String get defaultGoal => 'egészségesebb te';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileHu extends TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Az egészségi profilod';
	@override String bmiDescription({required Object bmi}) => 'A mért adataid alapján a BMI-d: ${bmi}.';
	@override String get finalizeDescription => 'Zárjuk le a profilodat, hogy személyre szabhassuk az élményt.';
	@override String get goalGain => 'növelni';
	@override String get goalLose => 'csökkenteni';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'A cél eléréséhez ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Elérted a cél súlyodat! Segítünk a megtartásban.';
	@override String get button => 'Indulás';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleHu extends TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kiváló kezdet!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Megtetted az első lépést a ${goalText} felé. Mivel ${activityText} vagy, a ${appLabel} módosítja a céljaidat az életstílusodhoz igazodva.';
	@override String get personalizedTargets => 'Személyre szabott kalóriacélok';
	@override String get aiMealDetection => 'AI-alapú ételészlelés';
	@override String get macroBreakdowns => 'Részletes makrotápanyag bontások';
	@override String get button => 'Indulás';
	@override String get defaultGoal => 'a céljaid';
	@override String get defaultActivity => 'aktív';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightHu extends TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Testsúly csökkentése';
	@override String get description => 'Kalóriahiányt létrehozva fogyni';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightHu extends TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Testsúly megtartása';
	@override String get description => 'A jelenlegi súly fenntartása';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightHu extends TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Testsúly növelése';
	@override String get description => 'Kalóriatöbbletet létrehozva hízni';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryHu extends TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ülő';
	@override String get description => 'Kevés vagy semmilyen mozgás';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveHu extends TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Könnyen aktív';
	@override String get description => 'Könnyű edzés 1–3 nap/hét';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveHu extends TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mérsékelten aktív';
	@override String get description => 'Mérsékelt edzés 3–5 nap/hét';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveHu extends TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nagyon aktív';
	@override String get description => 'Kemény edzés 6–7 nap/hét';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveHu extends TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrém aktív';
	@override String get description => 'Nagyon kemény edzés vagy fizikai munka';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableHu extends TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect nem elérhető';
	@override String get description => 'A Health Connect nem elérhető ezen az eszközön. Kérlek telepítsd a Health Connectet a Play Store-ból (Android 9+), vagy frissíts Android 14+-ra.';
	@override String get unsupportedDescription => 'A Health Connect nem támogatott ezen az eszközön.';
}

// Path: settings.healthConnect.updateRequired
class _TranslationsSettingsHealthConnectUpdateRequiredHu extends TranslationsSettingsHealthConnectUpdateRequiredEn {
	_TranslationsSettingsHealthConnectUpdateRequiredHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'A Health Connect figyelmet igényel';
	@override String get description => 'A hozzáférés kezelése előtt telepítsd vagy frissítsd a Health Connectet.';
	@override String get action => 'Telepítés vagy frissítés';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsHu extends TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Engedélyek';
	@override String get description => 'A Health Connect integrációhoz a következő engedélyekre van szükség:';
	@override String get granted => 'Engedélyezve';
	@override String get notGranted => 'Nincs engedélyezve';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHu caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHu._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadHu nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadHu._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteHu nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteHu._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryHu extends TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'A mi történetünk';
	@override String content({required Object appLabel}) => '${appLabel} egy egyszerű frusztrációból született: a legtöbb kalóriakövető alkalmazás túl bonyolult, állandó kézi bevitelre kényszerít, magas előfizetési díjat kér, vagy kompromisszumot köt az adatvédelemben.\n\nEgyetlen fejlesztőként valami egyszerűbbet és tisztességesebbet akartam: egy olyan alkalmazást, amely AI-t használ a terhek csökkentésére, gyors és ingyenes marad, és tisztelettel bánik az egészségügyi adataiddal.\n\nA ${appLabel} az az alkalmazás, amilyet szerettem volna: nincs fiók, nincs követés, nincs reklám — csak tiszta, praktikus betekintés és a személyes egészségi céljaid.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyHu extends TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Az adataid számítanak';
	@override String get description => 'A magánszféra nem utólagos gondolat — tervezési elv. Mit jelent ez a gyakorlatban:';
	@override String get noAccounts => 'Nincs szükség fiókra\nHasználd az alkalmazást azonnal. Nincsenek regisztrációk, nincs személyazonosság-követés.';
	@override String noTracking({required Object appLabel}) => 'Nincs viselkedési követés\nA ${appLabel} nem figyeli a tevékenységedet, nem készít használati profilokat, és nem követ az alkalmazások vagy webhelyek között.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Korlátozott elemzés és diagnosztika\nA ${appLabel} alapvető alkalmazáseseményeket és összeomlási diagnosztikát használ a megbízhatóság javítására. Az egészségügyi adatok értékeit nem használjuk hirdetésre és nem értékesítjük.';
	@override String noAds({required Object appLabel}) => 'Reklámmentes alapból\nA ${appLabel} reklámok vagy adatvezérelt pénzszerzés nélkül működik.';
	@override String get noDataSelling => 'Nincs adateladás\nAz egészségügyi adataidat soha nem adjuk el és nem osztjuk meg harmadik féllel.';
	@override String get localStorage => 'Elsősorban helyi tárolás\nAz adataid az eszközödön maradnak.';
	@override String get privacyPolicy => 'Adatvédelmi irányelvek';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperHu extends TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Egyéni fejlesztő készítette';
	@override String description({required Object appLabel}) => '${appLabel} egyetlen fejlesztő által készített és karbantartott alkalmazás, aki a nyugodt, adatvédelmet tiszteletben tartó egészségügyi szoftverre összpontosít.\n\nA visszajelzéseket személyesen olvassák, és formálják az alkalmazás irányát.';
	@override String get website => 'Weboldal';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackHu extends TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Tetszik a ${appLabel}?';
	@override String description({required Object appLabel}) => 'A visszajelzésed jobbá teszi a ${appLabel}-t mindenki számára.';
	@override String get rateApp => 'Értékelés a Play Store-ban';
	@override String get sendFeedback => 'Visszajelzés küldése';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeHu extends TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adagméret';
	@override String get description => 'A becslések pontossága nagymértékben függ az adagméret helyes megadásától.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsHu extends TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Elkészítési módok';
	@override String description({required Object appLabel}) => 'A főzési módok jelentősen megváltoztathatják az étel tápanyagtartalmát. A ${appLabel} becslései nem mindig veszik figyelembe ezeket a változásokat.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsHu extends TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Összetevők';
	@override String get description => 'Az összetett ételek sok rejtett összetevője pontatlansághoz vezethet.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsHu extends TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adatbázis korlátok';
	@override String description({required Object appLabel}) => 'A ${appLabel} ételadatbázisa kiterjedt, de előfordulhat, hogy nem tartalmaz minden egyes élelmiszert vagy variánst.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyHu extends TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalória pontosság';
	@override String get description => 'Ez a becslés annyira pontos, amennyire a naplózott kalória bevitel és kiadás az. Pontatlan naplózás pontatlan előrejelzést eredményez.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsHu extends TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biológiai tényezők';
	@override String description({required Object appLabel}) => 'A tényleges fogyás/gyarapodás befolyásolják az anyagcsere, hormonok, alvás, stressz, hidratáltság és egyéb egyéni tényezők, amelyeket a ${appLabel} nem mérhet.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightHu extends TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vízsúly és ingadozások';
	@override String get description => 'A napi testsúly jelentősen ingadozhat a vízvisszatartás, emésztés és időzítés miatt. A becslés nem számol ezekkel a napi változásokkal.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHu extends TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szakmai útmutatás';
	@override String get description => 'Ne használd ezt a becslést orvosi döntések meghozatalára. Mindig kérj tanácsot egészségügyi szakembertől vagy regisztrált dietetikustól személyre szabott súlykezelési útmutatáshoz.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrHu extends TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Az alapanyagcsere (BMR) az a kalóriamennyiség, amit a tested nyugalmi állapotban eléget az alapvető funkciók fenntartásához, mint a légzés és a keringés. A BMR függ az életkortól, nemetől, magasságtól és testsúlytól. A magasabb BMR általában több izomzattal, fiatalabb korral vagy férfi nemmel jár együtt. Az alacsonyabb BMR általában kevesebb izomzattal, idősebb korral vagy női nemmel kapcsolatos.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeHu extends TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'A teljes napi energiafelhasználás (TDEE) a napi elégetett kalóriák összessége, beleértve a BMR-t és a fizikai aktivitást. A TDEE függ a BMR-től és az aktivitási szinttől. A magasabb TDEE több általános kalóriaégetést jelent, általában aktívabb életmódból vagy magasabb BMR-ből adódóan. Az alacsonyabb TDEE kevesebb napi aktivitást vagy alacsonyabb BMR-t jelez.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalHu extends TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Napi cél';
	@override String get description => 'A napi cél a TDEE-d és a súlycélod alapján javasolt napi kalóriabevitel. Fogyáshoz kevesebb kalóriát fogyasztasz, mint a TDEE; tartáshoz a TDEE-vel egyezőt; hízáshoz többet. Ez segít egészséges tempóban elérni a kívánt súlyváltozást.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedHu extends TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hogyan számoljuk';
	@override String get description => 'Kiszámítjuk a TDEE-det (a profilod alapján), és megszorozzuk a nap eltelt részével (órák + percek) / 24, hogy megbecsüljük az eddig elégetett kalóriákat.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHu extends TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szakmai útmutatás';
	@override String get description => 'Ne használd ezt a becslést orvosi döntésekhez. Mindig konzultálj egészségügyi szakemberrel vagy regisztrált dietetikussal személyre szabott súlykezelési tanácsért.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHu extends TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Összes elégetett kalória olvasása';
	@override String get description => 'Lehetővé teszi az alkalmazás számára az összes Health Connectből származó elégetett kalória olvasását.';
	@override String get usage => 'Ezt az engedélyt a napi elégetett kalória megjelenítéséhez használjuk az alkalmazásban, hogy megértsd az egész napi energiafelhasználásodat.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadHu extends TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Táplálkozási adatok olvasása';
	@override String get description => 'Lehetővé teszi az alkalmazás számára a táplálkozási adatok olvasását a Health Connectből.';
	@override String get usage => 'Ezzel az engedéllyel az alkalmazás más, Health Connecthez csatlakoztatott alkalmazások által rögzített táplálkozási adatokat is olvashat, átfogó képet adva a táplálkozásodról.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteHu extends TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteHu._(TranslationsHu root) : this._root = root, super.internal(root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Táplálkozási adatok írása';
	@override String get description => 'Lehetővé teszi az alkalmazás számára a táplálkozási adatok írását a Health Connectre.';
	@override String get usage => 'Ezzel az engedéllyel az alkalmazás a naplózott ételeidet szinkronizálhatja a Health Connectbe, így táplálkozási adataid elérhetővé válnak más egészség- és fitneszalkalmazások számára.';
}

/// The flat map containing all translations for locale <hu>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsHu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Magyar',
			'flag' => '🇭🇺',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Túl sok kérést küldtél. Kérlek várj egy kicsit, majd próbáld újra.',
			'errors.networkError' => 'Hálózati hiba. Ellenőrizd az internetkapcsolatodat.',
			'errors.unknownError' => 'Valami hiba történt. Kérlek próbáld meg később.',
			'errors.loadingProfileData' => 'Hiba a profiladatok betöltésekor',
			'errors.somethingWentWrong' => 'Valami elromlott.',
			'errors.retry' => 'Újrapróbálás',
			'onboarding.welcome' => ({required Object appLabel}) => 'Üdvözlünk a ${appLabel}-ben',
			'onboarding.subtitle' => 'Személyes táplálkozási társad az AI erejével',
			'onboarding.getStarted' => 'Kezdés',
			'onboarding.features.foodRecognition.title' => 'Okos ételfelismerés',
			'onboarding.features.foodRecognition.description' => 'Készíts fotót, és az AI azonosítja az ételt',
			'onboarding.features.aiAnalysis.title' => 'AI elemzés',
			'onboarding.features.aiAnalysis.description' => 'Azonnali tápanyagadatok a leírásaid alapján',
			'onboarding.features.healthIntegration.title' => 'Egészségintegráció',
			'onboarding.features.healthIntegration.description' => 'Kapcsolódj a Health Connecthez a jobb elemzésekért',
			'onboarding.gender.title' => 'Mi a neme?',
			'onboarding.gender.description' => 'A nem segít pontosan kiszámolni az alapanyagcserédet (BMR).',
			'onboarding.gender.next' => 'Tovább',
			'onboarding.height.title' => 'Milyen magas vagy?',
			'onboarding.height.description' => 'A magasság pontosítja a BMI és energiaigény számítást.',
			'onboarding.height.metric' => 'Metrikus',
			'onboarding.height.imperial' => 'Imperiális',
			'onboarding.height.next' => 'Tovább',
			'onboarding.weight.currentTitle' => 'Mennyi a jelenlegi súlyod?',
			'onboarding.weight.currentDescription' => 'A jelenlegi súly fontos a napi célok személyre szabásához.',
			'onboarding.weight.targetTitle' => 'Mi a cél súlyod?',
			'onboarding.weight.targetDescription' => 'A cél súly beállítása segít a hosszú távú terv meghatározásában.',
			'onboarding.weight.metric' => 'Metrikus',
			'onboarding.weight.imperial' => 'Imperiális',
			'onboarding.weight.next' => 'Tovább',
			'onboarding.age.title' => 'Mikor van a születésnapod?',
			'onboarding.age.description' => 'Az életkor segít pontosan kiszámolni a kalóriaszükségletedet.',
			'onboarding.age.next' => 'Tovább',
			'onboarding.bmiScale.underweight' => 'Alacsony testsúly',
			'onboarding.bmiScale.healthy' => 'Egészséges',
			'onboarding.bmiScale.overweight' => 'Túlsúly',
			'onboarding.bmiScale.obese' => 'Elhízás',
			'onboarding.bmiScale.categories.underweight' => 'Alacsony testsúly',
			'onboarding.bmiScale.categories.healthyWeight' => 'Egészséges testsúly',
			'onboarding.bmiScale.categories.overweight' => 'Túlsúly',
			'onboarding.bmiScale.categories.obese' => 'Elhízás',
			'onboarding.bmiScale.messages.underweight' => 'Segítünk egy egészséges terv felépítésében, hogy tápanyagban gazdag ételekkel elérd az egyensúlyi súlyt.',
			'onboarding.bmiScale.messages.healthy' => 'Remek! Egészséges tartományban vagy. Segítünk megőrizni a vitalitásodat és energiaszintedet.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} egyszerűsíti az utadat AI-alapú nyomon követéssel, hogy kényelmesen elérd a célodat.',
			'onboarding.bmiScale.messages.obese' => 'Támogatunk személyre szabott útmutatással és fenntartható stratégiákkal az egészséged érdekében.',
			'onboarding.weightGoal.title' => 'Mi a célod?',
			'onboarding.weightGoal.description' => 'Válaszd ki azt a célt, ami leginkább tükrözi, mit szeretnél elérni',
			'onboarding.activityLevel.title' => 'Milyen aktív vagy?',
			'onboarding.activityLevel.description' => 'Ez segít pontosabban kiszámolni a napi kalóriaszükségletedet',
			'onboarding.healthConnect.title' => 'Kapcsolódj a Health Connecthez',
			'onboarding.healthConnect.description' => 'Szinkronizáld egészségadataid a jobb elemzésekért és automatikus kalóriakövetésért',
			'onboarding.healthConnect.overviewDescription' => 'Használd fel az elégetett kalóriákat a napi célodban, és igény szerint oszd meg a naplózott étkezéseket a Health Connecttel.',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatikus kalóriakövetés',
			'onboarding.healthConnect.automaticTracking.description' => 'Kövesd a fitneszalkalmazásaidból származó elégetett kalóriákat',
			'onboarding.healthConnect.caloriesBurned.title' => 'Elégetett kalóriák',
			'onboarding.healthConnect.caloriesBurned.description' => 'A mai összes elégetett kalória beolvasása a Health Connectből',
			'onboarding.healthConnect.progressInsights.title' => 'Haladás-elemzések',
			'onboarding.healthConnect.progressInsights.description' => 'Részletes betekintés az egészséged trendjeibe',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Naplózott étkezések megosztása',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'A Calorifyban naplózott étkezések írása a Health Connectbe',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Zökkenőmentes integráció',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Szinkronizáld adataid a kedvenc egészségalkalmazásaiddal',
			'onboarding.healthConnect.userControl.title' => 'Te irányítasz',
			'onboarding.healthConnect.userControl.description' => 'Válaszd ki bármelyik engedélyt, és bármikor módosítsd a hozzáférést',
			'onboarding.healthConnect.connected' => 'Health Connect csatlakoztatva',
			'onboarding.healthConnect.notConnected' => 'Health Connect nincs csatlakoztatva',
			'onboarding.healthConnect.setup' => 'Health Connect beállítása',
			'onboarding.healthConnect.skipForNow' => 'Most kihagyom',
			'onboarding.healthConnect.statusConnected' => 'A Health Connect csatlakoztatva.',
			'onboarding.healthConnect.statusSuccess' => 'A Health Connect sikeresen csatlakoztatva!',
			'onboarding.healthConnect.statusNotConnected' => 'Válaszd ki az engedélyezni kívánt Health Connect-funkciókat.',
			'onboarding.healthConnect.statusPartial' => 'A Health Connect részben csatlakozik. Mindkét funkció használatához engedélyezd a fennmaradó jogosultságot.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'A folytatáshoz telepítsd vagy frissítsd a Health Connectet.',
			'onboarding.healthConnect.statusUnavailable' => 'A Health Connect nem támogatott ezen az eszközön.',
			'onboarding.healthConnect.installOrUpdate' => 'Telepítés vagy frissítés',
			'onboarding.healthConnect.manageAccess' => 'Hozzáférés kezelése',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Hozzáférés megtagadva. Kérlek engedélyezd a Health Connect jogosultságokat a telefon beállításaiban a ${appLabel} számára.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Hiba a Health Connect beállítása közben: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Nem vagy egyedül',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'A kutatások szerint a következetes naplózás a legjobb előrejelzője a hosszú távú sikernek.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age} éves, ${gender} személyként, aki ${goal}-t szeretne elérni, a következetes naplózás a siker legfontosabb előrejelzője.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} tízszer könnyebbé teszi, mint kézzel vezetni.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Készen állsz a kezdésre?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Készíts fotót az ételeidről az azonnali elemzéshez',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Naplózz rendszeresen a látható előrelépésért',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Kövesd a haladásod naponta, hogy motivált maradj',
			'onboarding.reinforcement.trackingSuccess.button' => 'Indulás',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'egyén',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'egészségesebb te',
			'onboarding.reinforcement.healthProfile.title' => 'Az egészségi profilod',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'A mért adataid alapján a BMI-d: ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Zárjuk le a profilodat, hogy személyre szabhassuk az élményt.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'növelni',
			'onboarding.reinforcement.healthProfile.goalLose' => 'csökkenteni',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'A cél eléréséhez ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Elérted a cél súlyodat! Segítünk a megtartásban.',
			'onboarding.reinforcement.healthProfile.button' => 'Indulás',
			'onboarding.reinforcement.goalLifestyle.title' => 'Kiváló kezdet!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Megtetted az első lépést a ${goalText} felé. Mivel ${activityText} vagy, a ${appLabel} módosítja a céljaidat az életstílusodhoz igazodva.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Személyre szabott kalóriacélok',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-alapú ételészlelés',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Részletes makrotápanyag bontások',
			'onboarding.reinforcement.goalLifestyle.button' => 'Indulás',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'a céljaid',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktív',
			'tabs.dashboard' => 'Irányítópult',
			'tabs.history' => 'Előzmények',
			'home.aiSummary.title' => 'AI összegzésed',
			'home.aiSummary.logMore' => 'Adj több ételt a következő napokban, hogy személyre szabott AI-elemzést kapj.',
			'home.aiSummary.loading' => 'Összegzés betöltése…',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} étel naplózva',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Egyensúly pontszám ${score}',
			'home.aiSummary.topFoods' => 'Leggyakoribb ételek',
			'home.aiSummary.trendUp' => 'Kalóriák növekvő tendenciát mutatnak',
			'home.aiSummary.trendDown' => 'Kalóriák csökkenő tendenciát mutatnak',
			'home.aiSummary.trendSteady' => 'Kalóriák stabilak',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Frissítve ${time}',
			'home.dailyGoal.title' => 'Állítsd be a napi célod',
			'home.dailyGoal.titleSet' => 'Napi célod',
			'home.dailyGoal.description' => 'Készen állsz az egészséged felé vezető útra? Állítsd be napi kalóriacélodat az elinduláshoz.',
			'home.dailyGoal.descriptionSet' => 'Az iránytű beállítva! Ez a napi kalóriacélod, amely vezérelni fog.',
			'home.dailyGoal.yourGoal' => 'A célod',
			'home.dailyGoal.goal' => 'Cél',
			'home.dailyGoal.dailyCalories' => 'Napi kalória (kcal)',
			'home.dailyGoal.setGoal' => 'Cél beállítása',
			'home.dailyGoal.intake' => 'Bevitel',
			'home.dailyGoal.burned' => 'Elégetve',
			'home.dailyGoal.weightImpact' => 'Súlyra gyakorolt hatás',
			'home.dailyGoal.estLoss' => 'Becsült veszteség',
			'home.dailyGoal.estGain' => 'Becsült gyarapodás',
			'home.dailyGoal.kcal' => 'kilokalória (kcal)',
			'home.dailySummary.title' => 'Napi összefoglaló',
			'home.dailySummary.calories' => 'Kalória',
			'home.dailySummary.carbs' => 'Szénhidrát',
			'home.dailySummary.protein' => 'Fehérje',
			'home.dailySummary.fat' => 'Zsír',
			'home.dailySummary.fiber' => 'Rost',
			'home.dailySummary.grams' => 'gramm',
			'home.dailySummary.chartAccessibilityLabel' => 'Makrók diagram',
			'home.intakeProgress.title' => 'A mai makró megoszlás',
			'home.intakeProgress.target' => 'Cél',
			'home.intakeProgress.current' => 'Jelenlegi',
			'home.intakeHistory.title' => '7 napos makró előzmények',
			'home.intakeHistory.trendTitle' => 'Mai trend',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Csúcs: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Még nincs előzmény',
			'home.intakeHistory.startLogging' => 'Kezdj el étkezéseket naplózni, hogy itt lásd a\n7 napos makró trendeket',
			'home.mealLog.title' => 'Naplózott ételek',
			'home.mealLog.emptyMessage' => 'Készíts fotót az utolsó étkezésedről, hogy itt naplózd.',
			'home.mealLog.noMealsToday' => 'Ma még nincs rögzített étkezés',
			'home.mealLog.seeAllMeals' => 'Összes étel megtekintése',
			'home.mealDescription.title' => 'Gyors hozzáadás AI-vel',
			'home.mealDescription.description' => 'Írd le az étkezésedet, és az AI elintézi a részleteket.',
			'home.mealDescription.hint' => 'pl. Reggelire nagy tál zabkása szeletelt banánnal és egy adag tejsavó fehérjével ...',
			'home.mealDescription.analyzeMeal' => 'Étel elemzése',
			'home.favoriteMeals.title' => 'Kedvenc ételek',
			'home.favoriteMeals.description' => 'Gyorsan add hozzá az egyik kedvencét.',
			'home.favoriteMeals.noFavorites' => 'Még nincsenek kedvenc ételek.',
			'home.favoriteMeals.addFavoriteHint' => 'Kattints a csillagra egy ételnél, hogy kedvenccé tedd.',
			'home.favoriteMeals.seeAll' => 'Összes megtekintése',
			'home.favoriteMeals.add' => 'Hozzáadás',
			'home.mealSnap.title' => 'Fényképezd és kövesd az ételt',
			'home.mealSnap.description' => 'Használd a kamerát az étel fotózásához AI-elemzéshez.',
			'home.mealSnap.openCamera' => 'Kamera megnyitása',
			'home.mealSnap.gallery' => 'Galéria',
			'home.mealSnap.compressingPhoto' => 'Fénykép optimalizálása…',
			'home.mealSnap.uploadingPhoto' => 'Fénykép feltöltése…',
			'home.connectHealth.title' => 'Szinkron a Health Connecttel',
			'home.connectHealth.description' => 'Szinkronizáld a táplálkozási adataidat a Health Connecttel',
			'home.connectHealth.install' => 'Telepítés',
			'home.connectHealth.dataUseDescription' => 'Használd fel az elégetett kalóriákat a célodban, és oszd meg a naplózott étkezéseket',
			'home.connectHealth.installOrUpdate' => 'Telepítés vagy frissítés',
			'home.connectHealth.connect' => 'Csatlakozás',
			'history.noMeals' => 'Nincsenek rögzített ételek',
			'history.emptyMessage' => 'Készíts fotót az utolsó étkezésedről, hogy itt naplózd.',
			'history.today' => 'Ma',
			'history.yesterday' => 'Tegnap',
			'meal.ohNo' => 'Húha!',
			'meal.delete' => 'Törlés',
			'meal.editMeal' => 'Étel szerkesztése',
			'meal.addMeal' => 'Étel hozzáadása',
			'meal.saveMeal' => 'Étel mentése',
			'meal.save' => 'Mentés',
			'meal.mealName' => 'Étel neve',
			'meal.mealNameHint' => 'pl. Tojásrántotta pirítóssal',
			'meal.nameRequired' => 'Mentés előtt add meg az étkezés nevét.',
			'meal.mealQuantity' => 'Adag mennyisége',
			'meal.mealQuantityHint' => 'pl. 1 tál, 2 szelet',
			'meal.timeOfMeal' => 'Étkezés ideje',
			'meal.timeOfMealHint' => 'Válaszd ki, mikor etted az ételt',
			'meal.mealType' => 'Étkezés típusa',
			'meal.nutrition.calories' => 'Kalória',
			'meal.nutrition.carbs' => 'Szénhidrát (g)',
			'meal.nutrition.protein' => 'Fehérje (g)',
			'meal.nutrition.fat' => 'Zsír (g)',
			'meal.nutrition.fiber' => 'Rost (g)',
			'meal.deleteConfirmation.title' => 'Étel törlése',
			'meal.deleteConfirmation.message' => 'Biztosan törölni szeretnéd ezt az étkezési bejegyzést?',
			'meal.deleteConfirmation.cancel' => 'Mégse',
			'meal.deleteConfirmation.delete' => 'Törlés',
			'meal.addedToLog' => 'Az étel hozzáadva a naplódhoz!',
			'meal.couldNotAdd' => ({required Object error}) => 'Nem sikerült hozzáadni az ételt: ${error}',
			'meal.savedSuccessfully' => 'Az étel sikeresen hozzáadva!',
			'meal.updatedSuccessfully' => 'Az étel sikeresen frissítve!',
			'meal.errorSaving' => ({required Object error}) => 'Hiba az étel mentésekor: ${error}',
			'meal.removedFromFavorites' => 'Eltávolítva a kedvencek közül!',
			'meal.savedAsFavorite' => 'Az étel kedvencként elmentve!',
			'meal.unfavorite' => 'Eltávolítás a kedvencek közül',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Nem sikerült frissíteni a kedvencet: ${error}',
			'meal.feedbackThanks' => 'Köszönjük a visszajelzést!',
			'meal.reanalysisUpdated' => 'Frissítettük az étel elemzését a visszajelzésed alapján.',
			'meal.failedToProcess' => ({required Object error}) => 'Feldolgozás sikertelen: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'A képfeldolgozás sikertelen: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Hiba a kép tömörítése közben: ${error}',
			'meal.failedToSave' => 'Az adatok mentése sikertelen. Kérlek próbáld újra.',
			'meal.skip' => 'Kihagyás',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Kérdés ${current} / ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Nincsenek elérhető kérdések',
			'meal.questionFlow.next' => 'Következő',
			'meal.questionFlow.continueLabel' => 'Folytatás',
			'meal.analysis.title' => 'Étel elemzése',
			'meal.analysis.stepStarted' => 'Elindulás…',
			'meal.analysis.stepDecomposition' => 'Az étel megértése…',
			'meal.analysis.stepIngredients' => 'Hozzávalók párosítása tápanyagadatokkal…',
			'meal.analysis.stepUncertainty' => 'Bizonyosság ellenőrzése…',
			'meal.analysis.stepMealTypeQuestion' => 'Majdnem kész…',
			'meal.analysis.stepResult' => 'Eredmény véglegesítése…',
			'meal.analysis.stepError' => 'Valami hiba történt',
			'meal.analysis.stepDefault' => 'Étel elemzése…',
			'meal.analysis.progressUnderstand' => 'Az étel megértése',
			'meal.analysis.progressMatch' => 'Hozzávalók tápanyagainak keresése',
			'meal.analysis.progressCheck' => 'Adagok és bizonyosság ellenőrzése',
			'meal.analysis.progressMealType' => 'Ételtípus kiválasztása',
			'meal.analysis.progressFinish' => 'Kalóriák és makrók számítása',
			'meal.analysis.detectedIngredientHeading' => 'Azonosított összetevők',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => 'még ${count}',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} összetevő észlelve',
			'meal.analysis.ingredientsPending' => 'Összetevők beolvasása…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '„${text}”',
			'meal.analysis.offlineTip0' => 'Tipp: A következetesség fontosabb, mint a tökéletesség — a rendszeres naplózás mutatja meg a valódi mintákat.',
			'meal.analysis.offlineTip1' => 'Tipp: Fotókhoz a természetes fény és felülnézeti fotó segít az adagpontosságban.',
			'meal.analysis.offlineTip2' => 'Tipp: Említsd meg az italokat, szószokat és sütőolajat — ezek plusz kalóriát adnak, amit gyakran elfelejtenek.',
			'meal.analysis.offlineTip3' => 'Tipp: Egy gyors adagmegjegyzés (1 tál, nagy kávé) sokkal pontosabb becslést ad.',
			'meal.analysis.offlineTip4' => 'Tipp: Az étkezés utáni naplózás is segít kialakítani a szokást; a tökéletesség nem kötelező.',
			'meal.analysis.offlineTip5' => 'Tipp: Mondd el, hogyan volt elkészítve az étel, ha nagyban változtatja a kalóriát (sütve vs. sütőben).',
			'meal.localInference.reviewTitle' => 'Élelmiszerek ellenőrzése',
			'meal.localInference.reviewSubtitle' => 'Ezt a készüléked elemezte. Kérjük, javítsd a neveket vagy az adagokat a tápérték számítása előtt.',
			'meal.localInference.mealName' => 'Étel neve',
			'meal.localInference.ingredient' => 'Összetevő',
			'meal.localInference.grams' => 'Becsült gramm',
			'meal.localInference.removeIngredient' => 'Összetevő törlése',
			'meal.localInference.continueLabel' => 'Folytatás',
			'meal.localInference.invalidProposal' => 'Adjon hozzá legalább egy összetevőt, és adjon meg egy pozitív grammsúlyt.',
			'meal.localInference.localUnavailable' => 'A készüléken történő elemzés jelenleg nem érhető el.',
			'meal.localInference.calculationDetails' => 'A számítás módja',
			'meal.localInference.interpretationLocal' => 'A készüléken elemezett összetevők',
			'meal.localInference.interpretationCloud' => 'Felhőben elemezett összetevők',
			'meal.localInference.interpretationManual' => 'Általad ellenőrzött vagy szerkesztett összetevők',
			'meal.localInference.nutritionRemote' => 'USDA tápértékadatok a Calorify-on keresztül',
			'meal.localInference.nutritionFallback' => 'Néhány tápértékadatot távolról becsültük',
			'meal.localInference.calculationServer' => 'Kalóriákat és makrókat a Calorify számolta',
			'meal.localInference.fallbackUsed' => 'A helyi elemzés helyett felhőalapú feldolgozást használtunk',
			'meal.localInference.noRawContent' => 'A diagnosztikai nyugtások nem tartalmazzák az étel leírását vagy fotóját.',
			'meal.feedback.title' => 'Mi tűnik hibásnak?',
			'meal.feedback.subtitle' => 'Segíts javítani az elemzést egy vagy több probléma kiválasztásával.',
			'meal.feedback.tellUsMore' => 'Mesélj részletesebben',
			'meal.feedback.describeIncorrect' => 'Írd le, mi volt pontatlan',
			'meal.feedback.submit' => 'Beküldés',
			'meal.feedback.issueFoodIdentification' => 'Ételazonosítás',
			'meal.feedback.issuePortionSize' => 'Adagméret',
			'meal.feedback.issueCalorieDistribution' => 'Kalóriaeloszlás',
			'meal.feedback.issueMacrosWrong' => 'Makrók hibásak',
			'meal.feedback.issueMissingItems' => 'Hiányzó elemek',
			'meal.feedback.issueExtraItems' => 'Többlet elemek',
			'meal.feedback.issueOther' => 'Egyéb',
			'favorites.title' => 'Kedvencek',
			'favorites.empty' => 'Még nincs kedvenc étel.',
			'favorites.searchPlaceholder' => 'Keresés a kedvencek között',
			'favorites.searchEmptyTitle' => 'Nincs találat a kedvencek között',
			'favorites.searchEmptySubtitle' => 'Próbálj más ételnevet, adagmennyiséget vagy étkezéstípust.',
			'favorites.sortLabel' => 'Kedvencek rendezése',
			'favorites.undo' => 'Visszavonás',
			'favorites.removed' => ({required Object name}) => 'Eltávolítva: ${name} a kedvencek közül',
			'favorites.sortOptions.recent' => 'Legutóbbi',
			'favorites.sortOptions.calories' => 'Kalória',
			'favorites.sortOptions.alphabetical' => 'A–Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Nincs profiladat',
			'profile.yourProfile' => 'A profilod',
			'profile.viewAndManage' => 'Egészségügyi adatok megtekintése és kezelése',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'ALAPADATOK',
			'profile.sections.goalsAndActivity' => 'CÉLOK & AKTIVITÁS',
			'profile.sections.calculatedValues' => 'SZÁMOLT ÉRTÉKEK',
			'profile.gender' => 'Nem',
			'profile.height' => 'Magasság',
			'profile.weight' => 'Súly',
			'profile.age' => 'Kor',
			'profile.weightGoal' => 'Súlycél',
			'profile.targetWeight' => 'Cél súly',
			'profile.activityLevel' => 'Aktivitási szint',
			'profile.healthMetrics' => 'Egészségmutatók',
			'profile.notSet' => 'Nincs beállítva',
			'profile.years' => 'év',
			'profile.updatedSuccessfully' => 'A profil sikeresen frissítve!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Napi cél',
			'profile.calculatedValues.calPerDay' => 'cal/nap',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Egészségpontszám',
			'healthScore.whyThisScore' => 'Miért ez a pontszám?',
			'healthScore.note' => 'Ez a pontszám AI-becslés az azonosított összetevők és a tápanyagsűrűség alapján. Mindig kérj szakmai tanácsot személyre szabott étrendhez.',
			'healthScore.unhealthy' => 'Nem egészséges',
			'healthScore.healthy' => 'Egészséges',
			'healthScore.neutral' => 'Semleges',
			'editProfile.title' => 'Profil szerkesztése',
			'editProfile.sections.personalInformation' => 'SZEMÉLYES ADATOK',
			'editProfile.sections.physicalMeasurements' => 'TESTMÉRETEK',
			'editProfile.sections.goalsAndActivity' => 'CÉLOK & AKTIVITÁS',
			'editProfile.gender' => 'Nem',
			'editProfile.dateOfBirth' => 'Születési dátum',
			'editProfile.height' => 'Magasság',
			'editProfile.weight' => 'Súly',
			'editProfile.weightGoal' => 'Súlycél',
			'editProfile.activityLevel' => 'Aktivitási szint',
			'editProfile.metric' => 'Metrikus',
			'editProfile.imperial' => 'Imperiális',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'font (lb)',
			'editProfile.metricCm' => 'Metrikus (cm)',
			'editProfile.imperialFtIn' => 'Imperiális (ft/in)',
			'editProfile.metricKg' => 'Metrikus (kg)',
			'editProfile.imperialLbs' => 'Imperiális (lbs)',
			'editProfile.genders.male' => 'Férfi',
			'editProfile.genders.female' => 'Nő',
			'editProfile.genders.other' => 'Egyéb',
			'editProfile.weightGoals.loseWeight.name' => 'Testsúly csökkentése',
			'editProfile.weightGoals.loseWeight.description' => 'Kalóriahiányt létrehozva fogyni',
			'editProfile.weightGoals.maintainWeight.name' => 'Testsúly megtartása',
			'editProfile.weightGoals.maintainWeight.description' => 'A jelenlegi súly fenntartása',
			'editProfile.weightGoals.gainWeight.name' => 'Testsúly növelése',
			'editProfile.weightGoals.gainWeight.description' => 'Kalóriatöbbletet létrehozva hízni',
			'editProfile.activityLevels.sedentary.name' => 'Ülő',
			'editProfile.activityLevels.sedentary.description' => 'Kevés vagy semmilyen mozgás',
			'editProfile.activityLevels.lightlyActive.name' => 'Könnyen aktív',
			'editProfile.activityLevels.lightlyActive.description' => 'Könnyű edzés 1–3 nap/hét',
			'editProfile.activityLevels.moderatelyActive.name' => 'Mérsékelten aktív',
			'editProfile.activityLevels.moderatelyActive.description' => 'Mérsékelt edzés 3–5 nap/hét',
			'editProfile.activityLevels.veryActive.name' => 'Nagyon aktív',
			'editProfile.activityLevels.veryActive.description' => 'Kemény edzés 6–7 nap/hét',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrém aktív',
			'editProfile.activityLevels.extremelyActive.description' => 'Nagyon kemény edzés vagy fizikai munka',
			'settings.title' => 'Beállítások',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALIZÁCIÓ',
			'settings.sections.notifications' => 'ÉRTESÍTÉSEK',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.localInference' => 'KÉSZÜLÉKEN TÖRTÉNŐ ELEMZÉS',
			'settings.sections.supportAndLegal' => 'TÁMOGATÁS & JOGI',
			'settings.sections.about' => 'NÉVJEGY',
			'settings.sections.dangerZone' => 'VESZÉLYZÓNA',
			'settings.sections.developer' => 'FEJLESZTŐ',
			'settings.editProfile.title' => 'Profil szerkesztése',
			'settings.editProfile.subtitle' => 'Személyes adatok frissítése',
			'settings.language.title' => 'Nyelv',
			'settings.language.subtitle' => 'Válaszd ki a preferált nyelvet',
			'settings.language.searchHint' => 'Nyelvek keresése...',
			'settings.language.noResults' => 'Nincs találat',
			'settings.heightUnit.title' => 'Magasság mértékegysége',
			'settings.weightUnit.title' => 'Súly mértékegysége',
			'settings.mealReminders.title' => 'Étkezés emlékeztetők',
			'settings.mealReminders.subtitle' => 'Maradj a pályán időben érkező figyelmeztetésekkel',
			'settings.localInference.title' => 'Készüléken történő ételelemzés',
			'settings.localInference.subtitle' => 'Támogatott ételek elemzése Gemini Nano segítségével a tápérték számítása előtt',
			'settings.localInference.unavailable' => 'Nem érhető el ezen a készüléken',
			'settings.localInference.rolloutUnavailable' => 'Megfelelő hardver található, de ez a funkció nem aktív a jelenlegi applikációs verzióban',
			'settings.localInference.modelSetup' => 'A Gemini Nano letöltése be kell fejeznie, mielőtt ez engedhetővé válna',
			'settings.localInference.useLocalTitle' => 'Készüléken történő elemzés használata',
			'settings.localInference.useLocalSubtitle' => 'Opcionális, alapértelmezetten ki van kapcsolva. A komplex ételeknél az eredmények kevésbé megbízhatóak lehetnek.',
			'settings.localInference.disclosureTitle' => 'Mielőtt engedélyezné a készüléken történő elemzést',
			'settings.localInference.disclosureBody' => 'A Gemini Nano képes az összetevők azonosítására és az adagok becslésére a támogatott Android készülékeken. Az ellenőrzött összetevő-javaslatot a Calorify-nak küldjük a USDA tápértékadatok alapú számításhoz.',
			'settings.localInference.disclosureLimit1' => 'A komplex ételek, a rejtett összetevők és az adagméretek esetleg hibásan kerülhetnek azonosításra.',
			'settings.localInference.disclosureLimit2' => 'A modell nem lehet elérhető letöltés közben, elfoglaltság esetén, háttérben vagy a készülék korlátozásai miatt.',
			'settings.localInference.disclosureLimit3' => 'Ha a helyi elemzés nem tud befejeződni, ez a bétaverzió automatikusan elküldi az eredeti ételleírást a Calorify-nak felhőalapú elemzésre.',
			'settings.localInference.acknowledgement' => 'Értem, hogy ellenőriznem kell az azonosított összetevőket és adagokat.',
			'settings.localInference.enable' => 'Elfogadom és engedélyezem',
			'settings.localInference.cancel' => 'Mégse',
			'settings.theme.title' => 'Téma',
			'settings.theme.light' => 'Világos',
			'settings.theme.dark' => 'Sötét',
			'settings.theme.system' => 'Rendszer',
			'settings.sendFeedback.title' => 'Visszajelzés küldése',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Segíts fejleszteni a ${appLabel}-t',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} alkalmazás visszajelzés',
			'settings.sendFeedback.emailBodyPrefix' => 'Kérlek írd le a visszajelzésed itt:',
			'settings.sendFeedback.appVersion' => 'Alkalmazás verzió',
			'settings.sendFeedback.device' => 'Eszköz',
			'settings.sendFeedback.osVersion' => 'OS verzió',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Étkezési előzmények exportálása',
			'settings.exportMealHistory.subtitle' => 'Oszd meg a naplózott ételek CSV-jét',
			'settings.exportMealHistory.shareText' => 'A Calorify étkezési előzményeid exportja',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Nem sikerült exportálni az étkezési előzményeket: ${error}',
			'settings.clearAllData.title' => 'Az összes adat törlése',
			'settings.clearAllData.subtitle' => 'Minden információ végleges törlése',
			'settings.clearAllData.localOnlySubtitle' => 'Az eszközön tárolt Calorify-adatok törlése',
			'settings.clearAllData.confirmationTitle' => 'Töröljem az összes adatot?',
			'settings.clearAllData.confirmationMessage' => 'Ez a művelet nem visszavonható. Minden naplózott étel, kedvenc és profilbeállítás véglegesen törlődik.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Ez véglegesen törli erről az eszközről a naplózott étkezéseket, a kedvenceket és a profilbeállításokat. A Health Connecttel már megosztott étkezések és a Health Connect-hozzáférés külön kezelhető a Beállítások > Health Connect menüben.',
			'settings.clearAllData.cancel' => 'Mégse',
			'settings.clearAllData.clearEverything' => 'Mindent törlök',
			'settings.debugOptions.title' => 'Hibakeresési beállítások',
			'settings.developerModeEnabled' => 'Fejlesztői mód engedélyezve!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Engedélyek megtekintése és kezelése',
			'settings.healthConnect.unavailable.title' => 'Health Connect nem elérhető',
			'settings.healthConnect.unavailable.description' => 'A Health Connect nem elérhető ezen az eszközön. Kérlek telepítsd a Health Connectet a Play Store-ból (Android 9+), vagy frissíts Android 14+-ra.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'A Health Connect nem támogatott ezen az eszközön.',
			'settings.healthConnect.updateRequired.title' => 'A Health Connect figyelmet igényel',
			'settings.healthConnect.updateRequired.description' => 'A hozzáférés kezelése előtt telepítsd vagy frissítsd a Health Connectet.',
			'settings.healthConnect.updateRequired.action' => 'Telepítés vagy frissítés',
			'settings.healthConnect.permissions.title' => 'Engedélyek',
			'settings.healthConnect.permissions.description' => 'A Health Connect integrációhoz a következő engedélyekre van szükség:',
			'settings.healthConnect.permissions.granted' => 'Engedélyezve',
			'settings.healthConnect.permissions.notGranted' => 'Nincs engedélyezve',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Összes elégetett kalória olvasása',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Lehetővé teszi az alkalmazás számára az összes Health Connectből származó elégetett kalória olvasását.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Ezt az engedélyt a napi elégetett kalória megjelenítéséhez használjuk az alkalmazásban, hogy megértsd az egész napi energiafelhasználásodat.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Táplálkozási adatok olvasása',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Lehetővé teszi az alkalmazás számára a táplálkozási adatok olvasását a Health Connectből.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Ezzel az engedéllyel az alkalmazás más, Health Connecthez csatlakoztatott alkalmazások által rögzített táplálkozási adatokat is olvashat, átfogó képet adva a táplálkozásodról.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Táplálkozási adatok írása',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Lehetővé teszi az alkalmazás számára a táplálkozási adatok írását a Health Connectre.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Ezzel az engedéllyel az alkalmazás a naplózott ételeidet szinkronizálhatja a Health Connectbe, így táplálkozási adataid elérhetővé válnak más egészség- és fitneszalkalmazások számára.',
			'settings.healthConnect.managePermissions' => 'Engedélyek kezelése',
			'settings.healthConnect.openSettings' => 'Health Connect beállítások megnyitása',
			'settings.healthConnect.disconnect' => 'Health Connect leválasztása',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Leválasztod a Health Connectet?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'A Calorify elveszíti a Health Connecthez való hozzáférést. A már oda írt adatok nem törlődnek.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Leválasztás',
			'settings.healthConnect.deleteSyncedMeals' => 'Calorify-étkezések törlése a Health Connectből',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Törlöd a szinkronizált étkezéseket?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Törlöd a Calorify ezen verziója által szinkronizált étkezéseket a Health Connectből? A helyi étkezési napló nem változik. Előfordulhat, hogy a régebbi Calorify-bejegyzéseket továbbra is a Health Connect Adatok kezelése funkciójával kell eltávolítani.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Szinkronizált étkezések törlése',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'A Calorify-étkezések törölve lettek a Health Connectből.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'A szinkronizált étkezéseket nem sikerült törölni. Próbáld újra.',
			'settings.healthConnect.connectionPartial' => 'Néhány Health Connect-funkció engedélyezve van.',
			'settings.healthConnect.connectionComplete' => 'Mindkét Health Connect-funkció engedélyezve van.',
			'settings.healthConnect.actionFailed' => 'A Health Connectet nem sikerült megnyitni. Próbáld újra.',
			'settings.healthConnect.requestPermissions' => 'Engedélyek kérése',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Az engedélykérés megszakadt vagy sikertelen volt. Kérlek próbáld újra, vagy adj engedélyeket kézzel a Health Connect beállításaiban.',
			'settings.healthConnect.permissionRequestFailed' => 'Nem sikerült engedélyeket kérni. Kérlek próbáld újra, vagy adj engedélyeket kézzel a Health Connect beállításaiban.',
			'settings.healthConnect.requestingPermissions' => 'Engedélyek kérése...',
			'settings.about.title' => 'Névjegy',
			'settings.about.tagline' => 'Gyors, ingyenes és adatvédelem-központú kalória-tudatosság',
			'settings.about.ourStory.title' => 'A mi történetünk',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} egy egyszerű frusztrációból született: a legtöbb kalóriakövető alkalmazás túl bonyolult, állandó kézi bevitelre kényszerít, magas előfizetési díjat kér, vagy kompromisszumot köt az adatvédelemben.\n\nEgyetlen fejlesztőként valami egyszerűbbet és tisztességesebbet akartam: egy olyan alkalmazást, amely AI-t használ a terhek csökkentésére, gyors és ingyenes marad, és tisztelettel bánik az egészségügyi adataiddal.\n\nA ${appLabel} az az alkalmazás, amilyet szerettem volna: nincs fiók, nincs követés, nincs reklám — csak tiszta, praktikus betekintés és a személyes egészségi céljaid.',
			'settings.about.privacy.title' => 'Az adataid számítanak',
			'settings.about.privacy.description' => 'A magánszféra nem utólagos gondolat — tervezési elv. Mit jelent ez a gyakorlatban:',
			'settings.about.privacy.noAccounts' => 'Nincs szükség fiókra\nHasználd az alkalmazást azonnal. Nincsenek regisztrációk, nincs személyazonosság-követés.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Nincs viselkedési követés\nA ${appLabel} nem figyeli a tevékenységedet, nem készít használati profilokat, és nem követ az alkalmazások vagy webhelyek között.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Korlátozott elemzés és diagnosztika\nA ${appLabel} alapvető alkalmazáseseményeket és összeomlási diagnosztikát használ a megbízhatóság javítására. Az egészségügyi adatok értékeit nem használjuk hirdetésre és nem értékesítjük.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Reklámmentes alapból\nA ${appLabel} reklámok vagy adatvezérelt pénzszerzés nélkül működik.',
			'settings.about.privacy.noDataSelling' => 'Nincs adateladás\nAz egészségügyi adataidat soha nem adjuk el és nem osztjuk meg harmadik féllel.',
			'settings.about.privacy.localStorage' => 'Elsősorban helyi tárolás\nAz adataid az eszközödön maradnak.',
			'settings.about.privacy.privacyPolicy' => 'Adatvédelmi irányelvek',
			'settings.about.developer.title' => 'Egyéni fejlesztő készítette',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} egyetlen fejlesztő által készített és karbantartott alkalmazás, aki a nyugodt, adatvédelmet tiszteletben tartó egészségügyi szoftverre összpontosít.\n\nA visszajelzéseket személyesen olvassák, és formálják az alkalmazás irányát.',
			'settings.about.developer.website' => 'Weboldal',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Tetszik a ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'A visszajelzésed jobbá teszi a ${appLabel}-t mindenki számára.',
			'settings.about.feedback.rateApp' => 'Értékelés a Play Store-ban',
			'settings.about.feedback.sendFeedback' => 'Visszajelzés küldése',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify ${version}. verzió',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Buildszám: ${buildNumber}',
			'reminders.title' => 'Maradj a pályán emlékeztetőkkel',
			'reminders.description' => 'Gyengéd emlékeztetők, hogy naplózd az étkezéseidet és következetes maradj a táplálkozási célokkal',
			'reminders.notificationsEnabled' => 'Értesítések engedélyezve',
			'reminders.notificationsDisabled' => 'Értesítések letiltva',
			'reminders.enabledSubtitle' => 'Étkezés emlékeztetőket fogsz kapni',
			'reminders.disabledSubtitle' => 'Kapcsold be az értesítéseket az étkezés emlékeztetőkhöz',
			'reminders.mealReminders' => 'Étkezés emlékeztetők',
			'reminders.breakfast' => 'Reggeli',
			'reminders.lunch' => 'Ebéd',
			'reminders.dinner' => 'Vacsora',
			'reminders.snack' => 'Uzsonna',
			'reminders.unknown' => 'Ismeretlen',
			'reminders.change' => 'Módosítás',
			'reminders.enableNotifications' => 'Értesítések engedélyezése',
			'reminders.skipForNow' => 'Most kihagyom',
			'reminders.saveChanges' => 'Változtatások mentése',
			'reminders.enabledSuccessfully' => 'Értesítések sikeresen engedélyezve!',
			'reminders.permissionDenied' => 'Értesítési engedély megtagadva',
			'reminders.errorEnabling' => ({required Object error}) => 'Hiba az értesítések engedélyezésekor: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Hiba a beállítás befejezésekor: ${error}',
			'notifications.breakfast.title' => 'Ideje reggelizni! 🍳',
			'notifications.breakfast.body' => 'Ne felejtsd el naplózni a reggelidet',
			'notifications.lunch.title' => 'Ebédidő! 🥗',
			'notifications.lunch.body' => 'Ideje naplózni az ebéded',
			'notifications.dinner.title' => 'Vacsoraidő! 🍽️',
			'notifications.dinner.body' => 'Ne felejtsd el naplózni a vacsorádat',
			'notifications.snack.title' => 'Uzsonnaidő! 🍎',
			'notifications.snack.body' => 'Ideje egy egészséges nassolnivalónak',
			'notifications.test.title' => 'Teszt értesítés',
			'login.title' => 'Bejelentkezés',
			_ => null,
		} ?? switch (path) {
			'login.signInWithGoogle' => 'Bejelentkezés Google-lal',
			'login.signInFailed' => 'A Google bejelentkezés sikertelen vagy megszakadt.',
			'disclaimer.pleaseNote' => 'Kérjük vedd figyelembe',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} becsült táplálkozási információt ad. A pontosság függ a beviteledtől és az étel változataitól. Használd útmutatásként, ne végső forrásként. Személyre szabott tanácsért fordulj szakemberhez.',
			'disclaimer.snap.portionSize.title' => 'Adagméret',
			'disclaimer.snap.portionSize.description' => 'A becslések pontossága nagymértékben függ az adagméret helyes megadásától.',
			'disclaimer.snap.preparationMethods.title' => 'Elkészítési módok',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'A főzési módok jelentősen megváltoztathatják az étel tápanyagtartalmát. A ${appLabel} becslései nem mindig veszik figyelembe ezeket a változásokat.',
			'disclaimer.snap.ingredients.title' => 'Összetevők',
			'disclaimer.snap.ingredients.description' => 'Az összetett ételek sok rejtett összetevője pontatlansághoz vezethet.',
			'disclaimer.snap.databaseLimitations.title' => 'Adatbázis korlátok',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'A ${appLabel} ételadatbázisa kiterjedt, de előfordulhat, hogy nem tartalmaz minden egyes élelmiszert vagy variánst.',
			'disclaimer.weightEstimate.title' => 'A súlybecslésről',
			'disclaimer.weightEstimate.description' => 'A becsült súlyváltozás elméleti számításon alapul a kalória-bevitel és -kiadás egyszerű modelljén. Motivációs útmutatásnak készült, nem az aktuális súlyod előrejelzésére.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalória pontosság',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Ez a becslés annyira pontos, amennyire a naplózott kalória bevitel és kiadás az. Pontatlan naplózás pontatlan előrejelzést eredményez.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biológiai tényezők',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'A tényleges fogyás/gyarapodás befolyásolják az anyagcsere, hormonok, alvás, stressz, hidratáltság és egyéb egyéni tényezők, amelyeket a ${appLabel} nem mérhet.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Vízsúly és ingadozások',
			'disclaimer.weightEstimate.waterWeight.description' => 'A napi testsúly jelentősen ingadozhat a vízvisszatartás, emésztés és időzítés miatt. A becslés nem számol ezekkel a napi változásokkal.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Szakmai útmutatás',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Ne használd ezt a becslést orvosi döntések meghozatalára. Mindig kérj tanácsot egészségügyi szakembertől vagy regisztrált dietetikustól személyre szabott súlykezelési útmutatáshoz.',
			'disclaimer.healthMetrics.description' => 'Ezek a mutatók segítenek megérteni a tested energiaigényét és iránytűként szolgálnak a táplálkozási céljaidhoz.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Az alapanyagcsere (BMR) az a kalóriamennyiség, amit a tested nyugalmi állapotban eléget az alapvető funkciók fenntartásához, mint a légzés és a keringés. A BMR függ az életkortól, nemetől, magasságtól és testsúlytól. A magasabb BMR általában több izomzattal, fiatalabb korral vagy férfi nemmel jár együtt. Az alacsonyabb BMR általában kevesebb izomzattal, idősebb korral vagy női nemmel kapcsolatos.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'A teljes napi energiafelhasználás (TDEE) a napi elégetett kalóriák összessége, beleértve a BMR-t és a fizikai aktivitást. A TDEE függ a BMR-től és az aktivitási szinttől. A magasabb TDEE több általános kalóriaégetést jelent, általában aktívabb életmódból vagy magasabb BMR-ből adódóan. Az alacsonyabb TDEE kevesebb napi aktivitást vagy alacsonyabb BMR-t jelez.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Napi cél',
			'disclaimer.healthMetrics.dailyGoal.description' => 'A napi cél a TDEE-d és a súlycélod alapján javasolt napi kalóriabevitel. Fogyáshoz kevesebb kalóriát fogyasztasz, mint a TDEE; tartáshoz a TDEE-vel egyezőt; hízáshoz többet. Ez segít egészséges tempóban elérni a kívánt súlyváltozást.',
			'disclaimer.calorieExpenditure.title' => 'Kalóriafelhasználás becslése',
			'disclaimer.calorieExpenditure.description' => 'Ha a Health Connect adatok nem elérhetők, a mai elégetett kalóriát a BMR és aktivitási szint (TDEE) alapján becsüljük, a nap eltelt részének arányában skálázva.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Hogyan számoljuk',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Kiszámítjuk a TDEE-det (a profilod alapján), és megszorozzuk a nap eltelt részével (órák + percek) / 24, hogy megbecsüljük az eddig elégetett kalóriákat.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Szakmai útmutatás',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Ne használd ezt a becslést orvosi döntésekhez. Mindig konzultálj egészségügyi szakemberrel vagy regisztrált dietetikussal személyre szabott súlykezelési tanácsért.',
			'localNutritionPhase4.nutritionBundled' => 'A tápértékadatok a letöltött USDA-csomagból származnak',
			'localNutritionPhase4.nutritionCached' => 'A tápértékadatok az eszköz USDA-gyorsítótárából származnak',
			'localNutritionPhase4.nutritionMixed' => 'A tápértékadatok letöltött, gyorsítótárazott és távoli USDA-sorokból lettek egyesítve',
			'localNutritionPhase4.calculationLocal' => 'A kalóriák és makrotápanyagok kiszámítása ezen az eszközön történt',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: letöltött USDA-csomag',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: az eszköz USDA-gyorsítótára',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: Calorifyn keresztül lekért USDA-sor',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: determinisztikus tápértékállandó',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · adatkészlet ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'Kisebb',
			'localNutritionPhase4.portionEstimated' => 'Becsült',
			'localNutritionPhase4.portionLarger' => 'Nagyobb',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Melyik adag állt legközelebb ehhez: ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Melyik étkezés volt ez?',
			'localNutritionPhase4.localNutritionTip' => 'Ellenőrzött helyi tápértékadatokból kiszámítva.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Tápértékadatok letöltése',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Ellenőrzött USDA-sorok és determinisztikus számítás használata ezen az eszközön, ha minden összetevő lefedett.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Ehhez az alkalmazásverzióhoz nem érhetők el helyi tápértékadatok.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Nincs letöltve ellenőrzött tápértékcsomag.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Tápértékadatok letöltése és ellenőrzése…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Csomag ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} gyorsítótárazott USDA-sor · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Frissítés keresése',
			'localNutritionPhase4.offlineNutritionClear' => 'Helyi tápértékadatok törlése',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Törli a helyi tápértékadatokat?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Ez eltávolítja a letöltött USDA-csomagot és a keresési gyorsítótárat. A naplózott étkezések megtartják a mentéskor használt pontos tápérték-pillanatképet.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Adatok törlése',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'A helyi tápértékadatokat nem sikerült letölteni és ellenőrizni: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'A helyi tápértékadatok törölve',
			'common.close' => 'Bezárás',
			'common.kContinue' => 'Folytatás',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Tetszik a ${appLabel}?',
			'feedbackRating.yes' => 'Igen, tetszik',
			'feedbackRating.no' => 'Nem igazán',
			'feedbackRating.rateStepHeading' => 'Értékelés a Play Store-ban',
			'feedbackRating.emailStepHeading' => 'Visszajelzés küldése e-mailben',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Egy gyors értékelés segít másoknak megtalálni a ${appLabel}-t és támogatja a fejlesztést. Tudnál egy percet szánni rá?',
			'feedbackRating.shareFeedbackViaEmail' => 'A visszajelzésed alakítja a jövőt — minden üzenetet elolvasunk. Szeretnél e-mailben megosztani gondolatokat?',
			'feedbackRating.rateCta' => 'Értékelés a Play Store-ban',
			'feedbackRating.maybeLater' => 'Talán később',
			'feedbackRating.sendFeedback' => 'Visszajelzés küldése',
			'feedbackRating.noThanks' => 'Nem köszönöm',
			'feedbackRating.aboutUsDescription' => 'Gondosan készítve egy kis csapat által. Az adatvédelemre, egyszerűségre és a jobb étkezési szokások építésére fókuszálunk.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Kíváncsi vagy, ki áll a ${appLabel} mögött? Lásd: ',
			'feedbackRating.aboutUsLinkLabel' => 'Rólunk',
			'feedbackRating.thankYouMessage' => 'Köszönjük! Egy másik alkalommal újra megkérdezünk.',
			'health.syncFailed' => 'Nem sikerült szinkronizálni a Health Connecttel',
			'health.mealSynced' => 'Étkezés szinkronizálva a Health Connecttel',
			_ => null,
		};
	}
}
