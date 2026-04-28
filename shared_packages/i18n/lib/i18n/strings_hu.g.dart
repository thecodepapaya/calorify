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
class TranslationsHu with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.hu,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hu>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

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
	@override late final _TranslationsCommonHu common = _TranslationsCommonHu._(_root);
	@override late final _TranslationsFeedbackRatingHu feedbackRating = _TranslationsFeedbackRatingHu._(_root);
	@override late final _TranslationsHealthHu health = _TranslationsHealthHu._(_root);
}

// Path: errors
class _TranslationsErrorsHu implements TranslationsErrorsEn {
	_TranslationsErrorsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Túl sok kérést küldtél. Kérlek, várj egy kicsit, majd próbáld újra.';
	@override String get networkError => 'Hálózati hiba. Kérlek, ellenőrizd az internetkapcsolatod.';
	@override String get unknownError => 'Valami hiba történt. Kérlek, próbáld meg később újra.';
	@override String get loadingProfileData => 'Hiba a profiladatok betöltésekor';
	@override String get somethingWentWrong => 'Valami hiba történt.';
	@override String get retry => 'Próbáld újra';
}

// Path: onboarding
class _TranslationsOnboardingHu implements TranslationsOnboardingEn {
	_TranslationsOnboardingHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Üdvözlünk a ${appLabel} alkalmazásban';
	@override String get subtitle => 'Személyes táplálkozási társad MI-vel';
	@override String get getStarted => 'Kezdjük el';
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
class _TranslationsTabsHu implements TranslationsTabsEn {
	_TranslationsTabsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Vezérlőpult';
	@override String get history => 'Előzmények';
}

// Path: home
class _TranslationsHomeHu implements TranslationsHomeEn {
	_TranslationsHomeHu._(this._root);

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
class _TranslationsHistoryHu implements TranslationsHistoryEn {
	_TranslationsHistoryHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Nincsenek rögzített étkezések';
	@override String get emptyMessage => 'Fotózd le az utolsó étkezésed, hogy itt megjelenjen.';
	@override String get today => 'Ma';
	@override String get yesterday => 'Tegnap';
}

// Path: meal
class _TranslationsMealHu implements TranslationsMealEn {
	_TranslationsMealHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Jaj ne!';
	@override String get delete => 'Törlés';
	@override String get editMeal => 'Étkezés szerkesztése';
	@override String get addMeal => 'Étkezés hozzáadása';
	@override String get saveMeal => 'Étkezés mentése';
	@override String get save => 'Mentés';
	@override String get mealName => 'Étkezés neve';
	@override String get mealNameHint => 'pl.: Rántotta pirítóssal';
	@override String get mealQuantity => 'Étkezés mennyisége';
	@override String get mealQuantityHint => 'pl.: 1 tál, 2 szelet';
	@override String get timeOfMeal => 'Étkezés ideje';
	@override String get timeOfMealHint => 'Válaszd ki, mikor ettél';
	@override String get mealType => 'Étkezés típusa';
	@override late final _TranslationsMealNutritionHu nutrition = _TranslationsMealNutritionHu._(_root);
	@override late final _TranslationsMealDeleteConfirmationHu deleteConfirmation = _TranslationsMealDeleteConfirmationHu._(_root);
	@override String get addedToLog => 'Étkezés hozzáadva a naplódhoz!';
	@override String couldNotAdd({required Object error}) => 'Nem sikerült hozzáadni az étkezést: ${error}';
	@override String get savedSuccessfully => 'Étkezés sikeresen hozzáadva!';
	@override String get updatedSuccessfully => 'Étkezés sikeresen frissítve!';
	@override String errorSaving({required Object error}) => 'Hiba az étkezés mentésekor: ${error}';
	@override String get removedFromFavorites => 'Eltávolítva a kedvencek közül!';
	@override String get savedAsFavorite => 'Étkezés elmentve kedvencként!';
	@override String get unfavorite => 'Kedvenc törlése';
	@override String couldNotUpdateFavorite({required Object error}) => 'Nem sikerült frissíteni a kedvencet: ${error}';
	@override String get feedbackThanks => 'Köszönjük a visszajelzést!';
	@override String get reanalysisUpdated => 'Frissítettük az elemzést a visszajelzésed alapján.';
	@override String failedToProcess({required Object error}) => 'Nem sikerült feldolgozni: ${error}';
	@override String failedToProcessImage({required Object error}) => 'A kép feldolgozása sikertelen: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Hiba a kép tömörítésekor: ${error}';
	@override String get failedToSave => 'Nem sikerült menteni az adatokat. Kérlek, próbáld újra.';
	@override String get skip => 'Kihagyás';
	@override late final _TranslationsMealVariationHu variation = _TranslationsMealVariationHu._(_root);
	@override late final _TranslationsMealAnalysisHu analysis = _TranslationsMealAnalysisHu._(_root);
	@override late final _TranslationsMealFeedbackHu feedback = _TranslationsMealFeedbackHu._(_root);
}

// Path: favorites
class _TranslationsFavoritesHu implements TranslationsFavoritesEn {
	_TranslationsFavoritesHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kedvencek';
	@override String get empty => 'Még nincsenek kedvenc étkezések.';
	@override String get searchPlaceholder => 'Kedvenc étkezések keresése';
	@override String get searchEmptyTitle => 'Nincs a keresésnek megfelelő kedvenc';
	@override String get searchEmptySubtitle => 'Próbálj másik ételnevet, mennyiséget vagy étkezéstípust.';
	@override String get sortLabel => 'Kedvencek rendezése';
	@override String get undo => 'Visszavonás';
	@override String removed({required Object name}) => '${name} eltávolítva a kedvencek közül';
	@override late final _TranslationsFavoritesSortOptionsHu sortOptions = _TranslationsFavoritesSortOptionsHu._(_root);
}

// Path: profile
class _TranslationsProfileHu implements TranslationsProfileEn {
	_TranslationsProfileHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Nem található profiladat';
	@override String get yourProfile => 'Profilod';
	@override String get viewAndManage => 'Egészségügyi adataid megtekintése és kezelése';
	@override late final _TranslationsProfileSectionsHu sections = _TranslationsProfileSectionsHu._(_root);
	@override String get gender => 'Nem';
	@override String get height => 'Magasság';
	@override String get weight => 'Testsúly';
	@override String get age => 'Életkor';
	@override String get weightGoal => 'Testsúlycél';
	@override String get targetWeight => 'Céltestsúly';
	@override String get activityLevel => 'Aktivitási szint';
	@override String get healthMetrics => 'Egészségügyi mutatók';
	@override String get notSet => 'Nincs beállítva';
	@override String get years => 'év';
	@override String get updatedSuccessfully => 'Profil sikeresen frissítve!';
	@override late final _TranslationsProfileCalculatedValuesHu calculatedValues = _TranslationsProfileCalculatedValuesHu._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreHu implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Egészségpontszám';
	@override String get whyThisScore => 'Miért ez a pontszám?';
	@override String get note => 'Ez a pontszám MI‑becslés az azonosított hozzávalók és a tápanyagsűrűség alapján. Személyre szabott tanácsért mindig kérj szakembertől útmutatást.';
	@override String get unhealthy => 'Egészségtelen';
	@override String get healthy => 'Egészséges';
	@override String get neutral => 'Semleges';
}

// Path: editProfile
class _TranslationsEditProfileHu implements TranslationsEditProfileEn {
	_TranslationsEditProfileHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil szerkesztése';
	@override late final _TranslationsEditProfileSectionsHu sections = _TranslationsEditProfileSectionsHu._(_root);
	@override String get gender => 'Nem';
	@override String get dateOfBirth => 'Születési dátum';
	@override String get height => 'Magasság';
	@override String get weight => 'Testsúly';
	@override String get weightGoal => 'Testsúlycél';
	@override String get activityLevel => 'Aktivitási szint';
	@override String get metric => 'Metrikus';
	@override String get imperial => 'Angolszász';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'láb';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'font';
	@override String get metricCm => 'Metrikus (cm)';
	@override String get imperialFtIn => 'Angolszász (láb/hüvelyk)';
	@override String get metricKg => 'Metrikus (kg)';
	@override String get imperialLbs => 'Angolszász (font)';
	@override late final _TranslationsEditProfileGendersHu genders = _TranslationsEditProfileGendersHu._(_root);
	@override late final _TranslationsEditProfileWeightGoalsHu weightGoals = _TranslationsEditProfileWeightGoalsHu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsHu activityLevels = _TranslationsEditProfileActivityLevelsHu._(_root);
}

// Path: settings
class _TranslationsSettingsHu implements TranslationsSettingsEn {
	_TranslationsSettingsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beállítások';
	@override late final _TranslationsSettingsSectionsHu sections = _TranslationsSettingsSectionsHu._(_root);
	@override late final _TranslationsSettingsEditProfileHu editProfile = _TranslationsSettingsEditProfileHu._(_root);
	@override late final _TranslationsSettingsLanguageHu language = _TranslationsSettingsLanguageHu._(_root);
	@override late final _TranslationsSettingsHeightUnitHu heightUnit = _TranslationsSettingsHeightUnitHu._(_root);
	@override late final _TranslationsSettingsWeightUnitHu weightUnit = _TranslationsSettingsWeightUnitHu._(_root);
	@override late final _TranslationsSettingsMealRemindersHu mealReminders = _TranslationsSettingsMealRemindersHu._(_root);
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
class _TranslationsRemindersHu implements TranslationsRemindersEn {
	_TranslationsRemindersHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maradj pályán emlékeztetőkkel';
	@override String get description => 'Kíméletes emlékeztetők az étkezések naplózásához és a céljaidhoz való következetes ragaszkodáshoz';
	@override String get notificationsEnabled => 'Értesítések engedélyezve';
	@override String get notificationsDisabled => 'Értesítések letiltva';
	@override String get enabledSubtitle => 'Étkezési emlékeztetőket fogsz kapni';
	@override String get disabledSubtitle => 'Engedélyezd az értesítéseket az emlékeztetőkért';
	@override String get mealReminders => 'Étkezési emlékeztetők';
	@override String get breakfast => 'Reggeli';
	@override String get lunch => 'Ebéd';
	@override String get dinner => 'Vacsora';
	@override String get snack => 'Nasi';
	@override String get unknown => 'Ismeretlen';
	@override String get change => 'Módosítás';
	@override String get enableNotifications => 'Értesítések engedélyezése';
	@override String get skipForNow => 'Kihagyás most';
	@override String get saveChanges => 'Változások mentése';
	@override String get enabledSuccessfully => 'Értesítések sikeresen engedélyezve!';
	@override String get permissionDenied => 'Értesítési engedély megtagadva';
	@override String errorEnabling({required Object error}) => 'Hiba az értesítések engedélyezésekor: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Hiba a beállítás befejezésekor: ${error}';
}

// Path: notifications
class _TranslationsNotificationsHu implements TranslationsNotificationsEn {
	_TranslationsNotificationsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastHu breakfast = _TranslationsNotificationsBreakfastHu._(_root);
	@override late final _TranslationsNotificationsLunchHu lunch = _TranslationsNotificationsLunchHu._(_root);
	@override late final _TranslationsNotificationsDinnerHu dinner = _TranslationsNotificationsDinnerHu._(_root);
	@override late final _TranslationsNotificationsSnackHu snack = _TranslationsNotificationsSnackHu._(_root);
	@override late final _TranslationsNotificationsTestHu test = _TranslationsNotificationsTestHu._(_root);
}

// Path: login
class _TranslationsLoginHu implements TranslationsLoginEn {
	_TranslationsLoginHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bejelentkezés';
	@override String get signInWithGoogle => 'Bejelentkezés Google‑lel';
	@override String get signInFailed => 'A Google‑bejelentkezés sikertelen vagy megszakadt.';
}

// Path: disclaimer
class _TranslationsDisclaimerHu implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Fontos';
	@override late final _TranslationsDisclaimerSnapHu snap = _TranslationsDisclaimerSnapHu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateHu weightEstimate = _TranslationsDisclaimerWeightEstimateHu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsHu healthMetrics = _TranslationsDisclaimerHealthMetricsHu._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureHu calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureHu._(_root);
}

// Path: common
class _TranslationsCommonHu implements TranslationsCommonEn {
	_TranslationsCommonHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get close => 'Bezárás';
	@override String get kContinue => 'Folytatás';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingHu implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Tetszik a ${appLabel}?';
	@override String get yes => 'Igen, tetszik';
	@override String get no => 'Nem igazán';
	@override String get rateStepHeading => 'Értékelés a Play Áruházban';
	@override String get emailStepHeading => 'Visszajelzés küldése e‑mailben';
	@override String soloDevMessage({required Object appLabel}) => 'Egy gyors értékelés segít másoknak megtalálni a ${appLabel}-t és támogatja a fejlesztést. Szánnál rá egy percet?';
	@override String get shareFeedbackViaEmail => 'A visszajelzésed alakítja a következő lépéseket — minden üzenetet elolvasunk. Megosztanád gondolataid e‑mailben?';
	@override String get rateCta => 'Értékelés a Play Áruházban';
	@override String get maybeLater => 'Talán később';
	@override String get sendFeedback => 'Visszajelzés küldése';
	@override String get noThanks => 'Köszönöm, nem';
	@override String get aboutUsDescription => 'Gondossággal készítve egy kis csapat által. A fókuszunk az adatvédelem, az egyszerűség és a jobb étkezési szokások kialakítása.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Kíváncsi vagy, kik állnak a ${appLabel} mögött? Nézd meg a ';
	@override String get aboutUsLinkLabel => 'Rólunk';
	@override String get thankYouMessage => 'Köszönjük! Később újra megkérdezzük.';
}

// Path: health
class _TranslationsHealthHu implements TranslationsHealthEn {
	_TranslationsHealthHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Nem sikerült szinkronizálni a Health Connecttel';
	@override String get mealSynced => 'Étkezés szinkronizálva a Health Connecttel';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesHu implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionHu foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionHu._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisHu aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisHu._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationHu healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationHu._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderHu implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mi a nemed?';
	@override String get description => 'A nem segít a nyugalmi anyagcsere (BMR) pontos kiszámításában.';
	@override String get next => 'Tovább';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightHu implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Milyen magas vagy?';
	@override String get description => 'A magasságod segít a BMI és energiaigény pontos kiszámításában.';
	@override String get metric => 'Metrikus';
	@override String get imperial => 'Angolszász';
	@override String get next => 'Tovább';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightHu implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Mennyi a jelenlegi testsúlyod?';
	@override String get currentDescription => 'A jelenlegi testsúlyod elengedhetetlen a napi céljaid személyre szabásához.';
	@override String get targetTitle => 'Mi a céltestsúlyod?';
	@override String get targetDescription => 'A céltestsúly beállítása segít a hosszú távú terved meghatározásában.';
	@override String get metric => 'Metrikus';
	@override String get imperial => 'Angolszász';
	@override String get next => 'Tovább';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeHu implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mikor van a születésnapod?';
	@override String get description => 'Az életkorod segít a kalóriaszükségleted pontos kiszámításában.';
	@override String get next => 'Tovább';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleHu implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Sovány';
	@override String get healthy => 'Egészséges';
	@override String get overweight => 'Túlsúly';
	@override String get obese => 'Elhízás';
	@override late final _TranslationsOnboardingBmiScaleCategoriesHu categories = _TranslationsOnboardingBmiScaleCategoriesHu._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesHu messages = _TranslationsOnboardingBmiScaleMessagesHu._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalHu implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mi a célod?';
	@override String get description => 'Válaszd ki azt, ami leginkább leírja, mit szeretnél elérni';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelHu implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mennyire vagy aktív?';
	@override String get description => 'Ez segít pontosabban kiszámítani a napi kalóriaszükségletedet';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectHu implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Csatlakozás a Health Connecthez';
	@override String get description => 'Szinkronizáld egészségadataidat jobb betekintésekért és automatikus kalóriakövetésért';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingHu automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingHu._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsHu progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsHu._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationHu seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationHu._(_root);
	@override String get connected => 'Health Connect csatlakoztatva';
	@override String get notConnected => 'Health Connect nincs csatlakoztatva';
	@override String get setup => 'Health Connect beállítása';
	@override String get skipForNow => 'Kihagyás most';
	@override String get statusConnected => 'A Health Connect csatlakoztatva van.';
	@override String get statusSuccess => 'A Health Connect sikeresen csatlakozott!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Hozzáférés megtagadva. Engedélyezd a Health Connect jogosultságait a telefon beállításaiban a ${appLabel} számára.';
	@override String statusError({required Object error}) => 'Hiba a Health Connect beállításakor: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementHu implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessHu trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessHu._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileHu healthProfile = _TranslationsOnboardingReinforcementHealthProfileHu._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleHu goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleHu._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryHu implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Az MI összefoglalód';
	@override String get logMore => 'Naplózz több ételt a következő napokban, hogy megkaphasd a személyre szabott MI‑betekintéseket.';
	@override String get loading => 'Összefoglaló betöltése…';
	@override String mealCount({required Object count}) => '${count} étel naplózva';
	@override String macroBalanceScore({required Object score}) => 'Egyensúlyi pontszám ${score}';
	@override String get topFoods => 'Top ételek';
	@override String get trendUp => 'Kalóriák emelkedőben';
	@override String get trendDown => 'Kalóriák csökkenőben';
	@override String get trendSteady => 'Kalóriák stabilan';
	@override String generatedAt({required Object time}) => 'Frissítve: ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalHu implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Állítsd be a napi célod';
	@override String get titleSet => 'A napi célod';
	@override String get description => 'Készen állsz az egészségesebb útra? Állítsd be az alábbi napi kalóriacélt a kezdéshez.';
	@override String get descriptionSet => 'Iránytűd beállítva! Ez a napi kalóriacélod, amely vezet az utadon.';
	@override String get yourGoal => 'Célod';
	@override String get goal => 'Cél';
	@override String get dailyCalories => 'Napi kalória (kcal)';
	@override String get setGoal => 'Cél beállítása';
	@override String get intake => 'Bevitel';
	@override String get burned => 'Elégetett';
	@override String get weightImpact => 'Testsúlyra gyakorolt hatás';
	@override String get estLoss => 'Becs. fogyás';
	@override String get estGain => 'Becs. gyarapodás';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryHu implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Napi összegzés';
	@override String get calories => 'Kalória';
	@override String get carbs => 'Szénhidrát';
	@override String get protein => 'Fehérje';
	@override String get fat => 'Zsír';
	@override String get fiber => 'Rost';
	@override String get grams => 'gramm';
	@override String get chartAccessibilityLabel => 'Makrók diagram';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressHu implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'A mai makrók megoszlása';
	@override String get target => 'Cél';
	@override String get current => 'Jelenlegi';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryHu implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => '7 napos makrótörténet';
	@override String get trendTitle => 'Mai trend';
	@override String peakHour({required Object hour}) => 'Csúcs: ${hour}:00';
	@override String get noHistoryYet => 'Még nincs előzmény';
	@override String get startLogging => 'Kezdd el naplózni az étkezéseidet, hogy itt lásd a\n7 napos makrótrendeket';
}

// Path: home.mealLog
class _TranslationsHomeMealLogHu implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Naplózott étkezések';
	@override String get emptyMessage => 'Fotózd le az utolsó étkezésed, hogy itt megjelenjen.';
	@override String get noMealsToday => 'Ma nincs rögzített étkezés';
	@override String get seeAllMeals => 'Összes étkezés megtekintése';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionHu implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gyors hozzáadás MI‑vel';
	@override String get description => 'Írd le az étkezésed, a többit intézi az MI.';
	@override String get hint => 'pl.: Reggelire ettem egy nagy tál zabkását egy szeletelt banánnal és egy adag tejsavóval ...';
	@override String get analyzeMeal => 'Étkezés elemzése';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsHu implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kedvenc étkezések';
	@override String get description => 'Add hozzá gyorsan valamelyik kedvenced.';
	@override String get noFavorites => 'Még nincsenek kedvenc étkezések.';
	@override String get addFavoriteHint => 'Koppints a csillagra egy étkezésen, hogy kedvencnek jelöld.';
	@override String get seeAll => 'Összes megtekintése';
	@override String get add => 'Hozzáadás';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapHu implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fotózd és kövesd az étkezést';
	@override String get description => 'Használd a kamerát, készíts képet az ételről MI‑elemzéshez.';
	@override String get openCamera => 'Kamera megnyitása';
	@override String get gallery => 'Galéria';
	@override String get compressingPhoto => 'Fénykép optimalizálása…';
	@override String get uploadingPhoto => 'Fénykép feltöltése…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthHu implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szinkronizálás a Health Connecttel';
	@override String get description => 'Szinkronizáld a táplálkozási adataidat a Health Connecttel';
	@override String get install => 'Telepítés';
	@override String get connect => 'Csatlakozás';
}

// Path: meal.nutrition
class _TranslationsMealNutritionHu implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalória';
	@override String get carbs => 'Szénhidrát (g)';
	@override String get protein => 'Fehérje (g)';
	@override String get fat => 'Zsír (g)';
	@override String get fiber => 'Rost (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationHu implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Étkezés törlése';
	@override String get message => 'Biztosan törölni szeretnéd ezt a bejegyzést?';
	@override String get cancel => 'Mégse';
	@override String get delete => 'Törlés';
}

// Path: meal.variation
class _TranslationsMealVariationHu implements TranslationsMealVariationEn {
	_TranslationsMealVariationHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Kérdés ${current}/${total}';
	@override String get noVariationsAvailable => 'Nem érhetők el variációk';
}

// Path: meal.analysis
class _TranslationsMealAnalysisHu implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'MI étkezéselemzés';
	@override String get reassurance => 'Ez általában csak néhány másodperc.';
	@override String get stepStarted => 'Kezdés…';
	@override String get stepDecomposition => 'Étkezés értelmezése…';
	@override String get stepIngredients => 'Hozzávalók párosítása a tápanyagadatokkal…';
	@override String get stepUncertainty => 'Bizonytalanság ellenőrzése…';
	@override String get stepMealTypeQuestion => 'Majdnem kész…';
	@override String get stepResult => 'Eredmény véglegesítése…';
	@override String get stepError => 'Valami hiba történt';
	@override String get stepDefault => 'Étkezés elemzése…';
	@override String get progressUnderstand => 'Megértés';
	@override String get progressMatch => 'Párosítás';
	@override String get progressCheck => 'Ellenőrzés';
	@override String get progressFinish => 'Befejezés';
	@override String ingredientsLine({required Object count}) => '${count} hozzávaló felismerve';
	@override String get ingredientsPending => 'Hozzávalók keresése…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackHu implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'What looks wrong?';
	@override String get subtitle => 'Help us improve the analysis by selecting one or more issues.';
	@override String get tellUsMore => 'Tell us more';
	@override String get describeIncorrect => 'Describe what was incorrect';
	@override String get submit => 'Submit';
	@override String get issueFoodIdentification => 'Food identification';
	@override String get issuePortionSize => 'Portion size';
	@override String get issueCalorieDistribution => 'Calorie distribution';
	@override String get issueMacrosWrong => 'Macros are wrong';
	@override String get issueMissingItems => 'Missing items';
	@override String get issueExtraItems => 'Extra items';
	@override String get issueOther => 'Other';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsHu implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Legutóbbi';
	@override String get calories => 'Kalória';
	@override String get alphabetical => 'A–Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsHu implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'ALAPINFORMÁCIÓK';
	@override String get goalsAndActivity => 'CÉLOK ÉS AKTIVITÁS';
	@override String get calculatedValues => 'SZÁMÍTOTT ÉRTÉKEK';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesHu implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Napi cél';
	@override String get calPerDay => 'kcal/nap';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsHu implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'SZEMÉLYES ADATOK';
	@override String get physicalMeasurements => 'TESTI MÉRÉSEK';
	@override String get goalsAndActivity => 'CÉLOK ÉS AKTIVITÁS';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersHu implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get male => 'Férfi';
	@override String get female => 'Nő';
	@override String get other => 'Egyéb';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsHu implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightHu loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightHu._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightHu maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightHu._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightHu gainWeight = _TranslationsEditProfileWeightGoalsGainWeightHu._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsHu implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryHu sedentary = _TranslationsEditProfileActivityLevelsSedentaryHu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveHu lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveHu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveHu moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveHu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveHu veryActive = _TranslationsEditProfileActivityLevelsVeryActiveHu._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveHu extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveHu._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsHu implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALIZÁCIÓ';
	@override String get notifications => 'ÉRTESÍTÉSEK';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'TÁMOGATÁS ÉS JOGI';
	@override String get about => 'NÉVJEGY';
	@override String get dangerZone => 'VESZÉLYZÓNA';
	@override String get developer => 'FEJLESZTŐ';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileHu implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil szerkesztése';
	@override String get subtitle => 'Személyes adataid frissítése';
}

// Path: settings.language
class _TranslationsSettingsLanguageHu implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nyelv';
	@override String get subtitle => 'Válaszd ki a preferált nyelvet';
	@override String get searchHint => 'Nyelvek keresése...';
	@override String get noResults => 'Nincs találat';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitHu implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Magasság mértékegysége';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitHu implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testsúly mértékegysége';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersHu implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Étkezési emlékeztetők';
	@override String get subtitle => 'Maradj pályán az időzített értesítésekkel';
}

// Path: settings.theme
class _TranslationsSettingsThemeHu implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Téma';
	@override String get light => 'Világos';
	@override String get dark => 'Sötét';
	@override String get system => 'Rendszer';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackHu implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Visszajelzés küldése';
	@override String subtitle({required Object appLabel}) => 'Segíts jobbá tenni a ${appLabel} alkalmazást';
	@override String emailSubject({required Object appLabel}) => 'Visszajelzés a ${appLabel} alkalmazáshoz';
	@override String get emailBodyPrefix => 'Kérjük, írd le a visszajelzésed:';
	@override String get appVersion => 'Alkalmazásverzió';
	@override String get device => 'Eszköz';
	@override String get osVersion => 'Operációs rendszer';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryHu implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Étkezési előzmények exportálása';
	@override String get subtitle => 'Oszd meg a naplózott étkezéseid CSV-jét';
	@override String get shareText => 'A Calorify étkezési előzményeid exportja';
	@override String failed({required Object error}) => 'Nem sikerült exportálni az étkezési előzményeket: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataHu implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Összes adat törlése';
	@override String get subtitle => 'Véglegesen töröl minden információt';
	@override String get confirmationTitle => 'Törölni az összes adatot?';
	@override String get confirmationMessage => 'Ez a művelet nem vonható vissza. Minden naplózott étkezésed, kedvenced és beállításod véglegesen törlődik.';
	@override String get cancel => 'Mégse';
	@override String get clearEverything => 'Minden törlése';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsHu implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hibakeresési opciók';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectHu implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Engedélyek megtekintése és kezelése';
	@override late final _TranslationsSettingsHealthConnectUnavailableHu unavailable = _TranslationsSettingsHealthConnectUnavailableHu._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsHu permissions = _TranslationsSettingsHealthConnectPermissionsHu._(_root);
	@override String get managePermissions => 'Engedélyek kezelése';
	@override String get openSettings => 'Health Connect beállítások megnyitása';
	@override String get requestPermissions => 'Engedélyek kérése';
	@override String get permissionRequestCancelledOrFailed => 'Az engedélykérés megszakadt vagy sikertelen. Próbáld újra, vagy add meg kézzel a Health Connect beállításaiban.';
	@override String get permissionRequestFailed => 'Nem sikerült engedélyeket kérni. Próbáld újra, vagy add meg kézzel a Health Connect beállításaiban.';
	@override String get requestingPermissions => 'Kérés folyamatban...';
}

// Path: settings.about
class _TranslationsSettingsAboutHu implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Névjegy';
	@override String get tagline => 'Gyors, ingyenes és adatvédelem‑első kalóriatudatosság';
	@override late final _TranslationsSettingsAboutOurStoryHu ourStory = _TranslationsSettingsAboutOurStoryHu._(_root);
	@override late final _TranslationsSettingsAboutPrivacyHu privacy = _TranslationsSettingsAboutPrivacyHu._(_root);
	@override late final _TranslationsSettingsAboutDeveloperHu developer = _TranslationsSettingsAboutDeveloperHu._(_root);
	@override late final _TranslationsSettingsAboutFeedbackHu feedback = _TranslationsSettingsAboutFeedbackHu._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoHu implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastHu implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reggeli idő! 🍳';
	@override String get body => 'Ne felejtsd el naplózni a reggelidet';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchHu implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ebédidő! 🥗';
	@override String get body => 'Itt az idő, naplózd az ebéded';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerHu implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vacsoraidő! 🍽️';
	@override String get body => 'Ne felejtsd el naplózni a vacsorád';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackHu implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nasidő! 🍎';
	@override String get body => 'Ideje egy egészséges nassnak';
}

// Path: notifications.test
class _TranslationsNotificationsTestHu implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Teszt értesítés';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapHu implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} becsült tápértékeket ad. A pontosság a bevitt adataidtól és az ételváltozatoktól függ. Irányadónak használd, ne végleges forrásnak. Személyre szabott tanácsért fordulj szakemberhez.';
	@override late final _TranslationsDisclaimerSnapPortionSizeHu portionSize = _TranslationsDisclaimerSnapPortionSizeHu._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsHu preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsHu._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsHu ingredients = _TranslationsDisclaimerSnapIngredientsHu._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsHu databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsHu._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateHu implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'A testsúlybecslésről';
	@override String get description => 'A jelzett testsúlyváltozás elméleti becslés az egyszerű bevitt kontra elégetett kalória modellen alapul. Csak motivációs iránymutatásként szolgál, nem a tényleges testsúlyod előrejelzéseként.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyHu calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyHu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsHu biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsHu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightHu waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightHu._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHu professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHu._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsHu implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get description => 'Ezek a mutatók segítenek megérteni a szervezeted energiaigényét és irányt mutatnak a táplálkozási céljaidhoz.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrHu bmr = _TranslationsDisclaimerHealthMetricsBmrHu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeHu tdee = _TranslationsDisclaimerHealthMetricsTdeeHu._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalHu dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalHu._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureHu implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalóriafelhasználás becslése';
	@override String get description => 'Ha a Health Connect adatai nem elérhetők, a mai elégetett kalóriákat a nyugalmi anyagcsere (BMR) és az aktivitási szint (TDEE) alapján becsüljük, arányosítva az eltelt naprésszel.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedHu howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedHu._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHu professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHu._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionHu implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Okos ételfelismerés';
	@override String get description => 'Készíts egy fotót, és hagyd, hogy az MI azonosítsa az ételt';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisHu implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'MI‑elemzés';
	@override String get description => 'Azonnali tápértékek a leírásaid alapján';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationHu implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Egészségintegráció';
	@override String get description => 'Csatlakozz a Health Connecthez a jobb betekintésekért';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesHu implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Sovány';
	@override String get healthyWeight => 'Egészséges testsúly';
	@override String get overweight => 'Túlsúlyos';
	@override String get obese => 'Elhízott';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesHu implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Segítünk egészséges tervet kialakítani, hogy tápanyagdús ételekkel kiegyensúlyozott testsúlyt érj el.';
	@override String get healthy => 'Szép munka! Az egészséges tartományban vagy. Segítünk megőrizni vitalitásodat és energiaszinted.';
	@override String overweight({required Object appLabel}) => '${appLabel} MI‑alapú követéssel egyszerűsíti az utad, hogy kényelmesen elérd célodat.';
	@override String get obese => 'Személyre szabott útmutatással és fenntartható stratégiákkal támogatunk egészségügyi céljaid elérésében.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingHu implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatikus kalóriakövetés';
	@override String get description => 'Kövesd az elégetett kalóriákat a fitneszalkalmazásokból';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsHu implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Haladási betekintések';
	@override String get description => 'Részletes betekintések az egészségügyi trendjeidbe';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationHu implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zökkenőmentes integráció';
	@override String get description => 'Szinkronizáld adataidat kedvenc egészségappjaidból';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessHu implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nem vagy egyedül';
	@override String get genericMessage => 'A kutatások szerint a következetes naplózás a hosszú távú siker legfontosabb előrejelzője.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Egy ${age} éves ${gender} számára, aki ${goal} szeretne elérni, a következetes naplózás a siker legfontosabb előrejelzője.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} tízszer könnyebbé teszi, mint a kézi naplózás.';
	@override String get getStartedTitle => 'Készen állsz a kezdésre?';
	@override String get tipPhoto => 'Készíts fotót az ételeidről az azonnali elemzéshez';
	@override String get tipConsistency => 'Naplózz következetesen, hogy valódi előrelépést láss';
	@override String get tipProgress => 'Kövesd a fejlődésed naponta, hogy motivált maradj';
	@override String get button => 'Kezdjük!';
	@override String get defaultGender => 'személy';
	@override String get defaultGoal => 'egészségesebb életet';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileHu implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Egészségügyi profilod';
	@override String bmiDescription({required Object bmi}) => 'A megadott adataid alapján a BMI-d ${bmi}.';
	@override String get finalizeDescription => 'Véglegesítsük a profilodat, hogy személyre szabhassuk az élményt.';
	@override String get goalGain => 'híznod';
	@override String get goalLose => 'fogynod';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'A célod eléréséhez ${direction} kell ${diff} ${unit}.';
	@override String get goalReached => 'Elérted a céltestsúlyodat! Segítünk megtartani.';
	@override String get button => 'Kezdjük!';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleHu implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Remek kezdet!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Megtetted az első lépést ${goalText} felé. Mivel ${activityText} vagy, ${appLabel} a célokat az életmódodhoz igazítja.';
	@override String get personalizedTargets => 'Személyre szabott kalóriacélok';
	@override String get aiMealDetection => 'MI-alapú ételfelismerés';
	@override String get macroBreakdowns => 'Részletes makrotápanyag-bontások';
	@override String get button => 'Kezdjük!';
	@override String get defaultGoal => 'céljaid';
	@override String get defaultActivity => 'aktív';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightHu implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Fogyás';
	@override String get description => 'Kalóriadeficit kialakítása a fogyáshoz';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightHu implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Súlytartás';
	@override String get description => 'Jelenlegi testsúlyod fenntartása';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightHu implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tömegnövelés';
	@override String get description => 'Kalóriatöbblet kialakítása a gyarapodáshoz';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryHu implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ülő életmód';
	@override String get description => 'Kevés vagy semmilyen testmozgás';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveHu implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Enyhén aktív';
	@override String get description => 'Könnyű mozgás heti 1–3 nap';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveHu implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Közepesen aktív';
	@override String get description => 'Közepes mozgás heti 3–5 nap';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveHu implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Nagyon aktív';
	@override String get description => 'Intenzív mozgás heti 6–7 nap';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveHu implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Rendkívül aktív';
	@override String get description => 'Nagyon megerőltető edzés, fizikai munka';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableHu implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'A Health Connect nem érhető el';
	@override String get description => 'A Health Connect nem érhető el ezen az eszközön. Telepítsd a Play Áruházból (Android 9+) vagy frissíts Android 14+ verzióra.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsHu implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Engedélyek';
	@override String get description => 'A következő engedélyek szükségesek a Health Connect integrációhoz:';
	@override String get granted => 'Megadva';
	@override String get notGranted => 'Nincs megadva';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHu caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHu._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadHu nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadHu._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteHu nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteHu._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryHu implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Történetünk';
	@override String content({required Object appLabel}) => '${appLabel} egy egyszerű frusztrációból született: a legtöbb kalóriakövető app vagy túlbonyolított, állandó kézi bevitelre kényszerít, drága előfizetést kér, vagy kompromisszumot köt az adatvédelemmel.\n\nEgyedüli fejlesztőként valami egyszerűbbet és korrektebbet akartam — egy olyan appot, amely MI‑t használ a kevesebb erőfeszítésért, gyors és ingyenes marad, és tisztelettel kezeli az egészségügyi adataidat.\n\n${appLabel} az az app, amit mindig is szerettem volna: nincs fiók, nincs követés, nincs reklám — csak tiszta, gyakorlatias betekintések és a te egészségcéljaid.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyHu implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fontos a magánszférád';
	@override String get description => 'Az adatvédelem nem utólagos gondolat — tervezési alapelv. Ez a gyakorlatban ezt jelenti:';
	@override String get noAccounts => 'Nincs szükség fiókra\nAzonnal használhatod. Nincs regisztráció, nincs azonosítás.';
	@override String noTracking({required Object appLabel}) => 'Nincs viselkedéskövetés\nA ${appLabel} nem figyeli a tevékenységed, nem épít használati profilt, és nem követ alkalmazásokon vagy webhelyeken át.';
	@override String noAds({required Object appLabel}) => 'Reklámmentes kialakítás\nA ${appLabel} hirdetések és adatalapú pénzkeresés nélkül működik.';
	@override String get noDataSelling => 'Nincs adattovábbítás\nAz egészségügyi adataidat soha nem adjuk el és nem osztjuk meg harmadik felekkel.';
	@override String get localStorage => 'Elsődlegesen helyi tárolás\nAz adataid az eszközödön maradnak.';
	@override String get privacyPolicy => 'Adatvédelmi irányelvek';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperHu implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Egyedüli fejlesztő készítette';
	@override String description({required Object appLabel}) => 'A ${appLabel}-t egyetlen fejlesztő építi és tartja karban, aki nyugodt, adatvédelmet tiszteletben tartó egészségszoftvert készít.\n\nA visszajelzéseket személyesen olvasom, és ezek alakítják az app jövőjét.';
	@override String get website => 'Weboldal';
	@override String get email => 'E‑mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackHu implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Tetszik a ${appLabel}?';
	@override String description({required Object appLabel}) => 'A visszajelzésed segít, hogy a ${appLabel} mindenkinek jobb legyen.';
	@override String get rateApp => 'Értékelés a Play Áruházban';
	@override String get sendFeedback => 'Visszajelzés küldése';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeHu implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adagméret';
	@override String get description => 'A becslések pontossága nagyban függ a helyesen megadott adagmérettől.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsHu implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Elkészítési módok';
	@override String description({required Object appLabel}) => 'A főzési eljárások jelentősen módosíthatják az ételek tápanyagtartalmát. A ${appLabel} becslései nem mindig tudják ezeket a különbségeket figyelembe venni.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsHu implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hozzávalók';
	@override String get description => 'Az összetett, sok rejtett összetevőt tartalmazó ételek kevésbé pontos becslésekhez vezethetnek.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsHu implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adatbázis korlátai';
	@override String description({required Object appLabel}) => 'A ${appLabel} élelmiszer-adatbázisa kiterjedt, de nem tartalmaz minden egyes ételt vagy változatot.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyHu implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalóriapontosság';
	@override String get description => 'Ez a becslés csak annyira pontos, amennyire a kalóriabeviteled és -felhasználásod naplózása. A pontatlan rögzítés pontatlan előrejelzést eredményez.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsHu implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biológiai tényezők';
	@override String description({required Object appLabel}) => 'A tényleges fogyást/gyarapodást befolyásolja az anyagcsere, a hormonok, az alvás, a stressz, a hidratáltság és más egyéni tényezők, amelyeket a ${appLabel} nem tud mérni.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightHu implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vízsúly és ingadozások';
	@override String get description => 'A napi testsúly természetesen jelentősen ingadozhat a vízvisszatartás, emésztés és időzítés miatt. A becslés ezeket a napi változásokat nem veszi figyelembe.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHu implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szakmai útmutatás';
	@override String get description => 'Ne használd ezt a becslést orvosi döntésekhez. Személyre szabott súlykontrollért mindig konzultálj egészségügyi szakemberrel vagy dietetikussal.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrHu implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'A nyugalmi anyagcsere (BMR) az a kalóriamennyiség, amit a tested nyugalomban éget el az alapvető funkciók, például a légzés és a keringés fenntartásához. A BMR függ az életkorodtól, nemedtől, magasságodtól és testsúlyodtól. A magasabb BMR azt jelenti, hogy a tested több kalóriát éget el nyugalomban — gyakran több izomtömegnek, fiatalabb kornak vagy férfinemnek köszönhetően. Az alacsonyabb BMR tipikusan kevesebb izomtömegre, idősebb korra vagy női nemre utal.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeHu implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'A teljes napi energiafelhasználás (TDEE) az egy nap alatt elégetett összes kalória, vagyis a BMR és a fizikai aktivitásból, napi mozgásból származó kalóriák összege. A TDEE a BMR-edtől és aktivitási szintedtől függ. A magasabb TDEE több elégetett kalóriát jelent — általában aktívabb életmód vagy magasabb BMR miatt. Az alacsonyabb TDEE kevesebb napi aktivitásra vagy alacsonyabb BMR-re utal.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalHu implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Napi cél';
	@override String get description => 'A napi cél az ajánlott napi kalóriabevitel a TDEE-d és a testsúlycélod alapján. Fogyáshoz kevesebbet eszel, mint a TDEE-d; súlytartáshoz megegyezik vele; gyarapodáshoz többet eszel. Ez segít elérni a kívánt testsúlyváltozást egészséges ütemben.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedHu implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hogyan számoljuk a becslést';
	@override String get description => 'Kiszámítjuk a TDEE-det (a profilod alapján), majd megszorozzuk a nap eltelt részének arányával (óra + perc) / 24, hogy megbecsüljük az eddig elégetett kalóriákat.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHu implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szakmai útmutatás';
	@override String get description => 'Ne használd ezt a becslést orvosi döntésekhez. Személyre szabott tanácsért mindig konzultálj egészségügyi szakemberrel vagy dietetikussal.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHu implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Elégetett kalóriák olvasása';
	@override String get description => 'Lehetővé teszi az alkalmazásnak, hogy olvassa az összes elégetett kalóriádat a Health Connectből.';
	@override String get usage => 'Ezt az engedélyt arra használjuk, hogy megjelenítsük a napi kalóriaégetésed az alkalmazásban, segítve a napi energiafelhasználás megértését.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadHu implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Táplálkozási adatok olvasása';
	@override String get description => 'Lehetővé teszi az alkalmazásnak, hogy táplálkozási adatokat olvasson a Health Connectből.';
	@override String get usage => 'Ez az engedély lehetővé teszi, hogy az alkalmazás elolvassa más appok által a Health Connectbe rögzített táplálkozási információkat, átfogó képet adva az étkezésedről.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteHu implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteHu._(this._root);

	final TranslationsHu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Táplálkozási adatok írása';
	@override String get description => 'Lehetővé teszi az alkalmazásnak, hogy táplálkozási adatokat írjon a Health Connectbe.';
	@override String get usage => 'Ez az engedély lehetővé teszi, hogy a naplózott étkezéseidet a Health Connecttel szinkronizáljuk, így a táplálkozási adataid más egészség‑ és fitneszappokban is elérhetők.';
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
			'errors.rateLimitExceeded' => 'Túl sok kérést küldtél. Kérlek, várj egy kicsit, majd próbáld újra.',
			'errors.networkError' => 'Hálózati hiba. Kérlek, ellenőrizd az internetkapcsolatod.',
			'errors.unknownError' => 'Valami hiba történt. Kérlek, próbáld meg később újra.',
			'errors.loadingProfileData' => 'Hiba a profiladatok betöltésekor',
			'errors.somethingWentWrong' => 'Valami hiba történt.',
			'errors.retry' => 'Próbáld újra',
			'onboarding.welcome' => ({required Object appLabel}) => 'Üdvözlünk a ${appLabel} alkalmazásban',
			'onboarding.subtitle' => 'Személyes táplálkozási társad MI-vel',
			'onboarding.getStarted' => 'Kezdjük el',
			'onboarding.features.foodRecognition.title' => 'Okos ételfelismerés',
			'onboarding.features.foodRecognition.description' => 'Készíts egy fotót, és hagyd, hogy az MI azonosítsa az ételt',
			'onboarding.features.aiAnalysis.title' => 'MI‑elemzés',
			'onboarding.features.aiAnalysis.description' => 'Azonnali tápértékek a leírásaid alapján',
			'onboarding.features.healthIntegration.title' => 'Egészségintegráció',
			'onboarding.features.healthIntegration.description' => 'Csatlakozz a Health Connecthez a jobb betekintésekért',
			'onboarding.gender.title' => 'Mi a nemed?',
			'onboarding.gender.description' => 'A nem segít a nyugalmi anyagcsere (BMR) pontos kiszámításában.',
			'onboarding.gender.next' => 'Tovább',
			'onboarding.height.title' => 'Milyen magas vagy?',
			'onboarding.height.description' => 'A magasságod segít a BMI és energiaigény pontos kiszámításában.',
			'onboarding.height.metric' => 'Metrikus',
			'onboarding.height.imperial' => 'Angolszász',
			'onboarding.height.next' => 'Tovább',
			'onboarding.weight.currentTitle' => 'Mennyi a jelenlegi testsúlyod?',
			'onboarding.weight.currentDescription' => 'A jelenlegi testsúlyod elengedhetetlen a napi céljaid személyre szabásához.',
			'onboarding.weight.targetTitle' => 'Mi a céltestsúlyod?',
			'onboarding.weight.targetDescription' => 'A céltestsúly beállítása segít a hosszú távú terved meghatározásában.',
			'onboarding.weight.metric' => 'Metrikus',
			'onboarding.weight.imperial' => 'Angolszász',
			'onboarding.weight.next' => 'Tovább',
			'onboarding.age.title' => 'Mikor van a születésnapod?',
			'onboarding.age.description' => 'Az életkorod segít a kalóriaszükségleted pontos kiszámításában.',
			'onboarding.age.next' => 'Tovább',
			'onboarding.bmiScale.underweight' => 'Sovány',
			'onboarding.bmiScale.healthy' => 'Egészséges',
			'onboarding.bmiScale.overweight' => 'Túlsúly',
			'onboarding.bmiScale.obese' => 'Elhízás',
			'onboarding.bmiScale.categories.underweight' => 'Sovány',
			'onboarding.bmiScale.categories.healthyWeight' => 'Egészséges testsúly',
			'onboarding.bmiScale.categories.overweight' => 'Túlsúlyos',
			'onboarding.bmiScale.categories.obese' => 'Elhízott',
			'onboarding.bmiScale.messages.underweight' => 'Segítünk egészséges tervet kialakítani, hogy tápanyagdús ételekkel kiegyensúlyozott testsúlyt érj el.',
			'onboarding.bmiScale.messages.healthy' => 'Szép munka! Az egészséges tartományban vagy. Segítünk megőrizni vitalitásodat és energiaszinted.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} MI‑alapú követéssel egyszerűsíti az utad, hogy kényelmesen elérd célodat.',
			'onboarding.bmiScale.messages.obese' => 'Személyre szabott útmutatással és fenntartható stratégiákkal támogatunk egészségügyi céljaid elérésében.',
			'onboarding.weightGoal.title' => 'Mi a célod?',
			'onboarding.weightGoal.description' => 'Válaszd ki azt, ami leginkább leírja, mit szeretnél elérni',
			'onboarding.activityLevel.title' => 'Mennyire vagy aktív?',
			'onboarding.activityLevel.description' => 'Ez segít pontosabban kiszámítani a napi kalóriaszükségletedet',
			'onboarding.healthConnect.title' => 'Csatlakozás a Health Connecthez',
			'onboarding.healthConnect.description' => 'Szinkronizáld egészségadataidat jobb betekintésekért és automatikus kalóriakövetésért',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatikus kalóriakövetés',
			'onboarding.healthConnect.automaticTracking.description' => 'Kövesd az elégetett kalóriákat a fitneszalkalmazásokból',
			'onboarding.healthConnect.progressInsights.title' => 'Haladási betekintések',
			'onboarding.healthConnect.progressInsights.description' => 'Részletes betekintések az egészségügyi trendjeidbe',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Zökkenőmentes integráció',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Szinkronizáld adataidat kedvenc egészségappjaidból',
			'onboarding.healthConnect.connected' => 'Health Connect csatlakoztatva',
			'onboarding.healthConnect.notConnected' => 'Health Connect nincs csatlakoztatva',
			'onboarding.healthConnect.setup' => 'Health Connect beállítása',
			'onboarding.healthConnect.skipForNow' => 'Kihagyás most',
			'onboarding.healthConnect.statusConnected' => 'A Health Connect csatlakoztatva van.',
			'onboarding.healthConnect.statusSuccess' => 'A Health Connect sikeresen csatlakozott!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Hozzáférés megtagadva. Engedélyezd a Health Connect jogosultságait a telefon beállításaiban a ${appLabel} számára.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Hiba a Health Connect beállításakor: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Nem vagy egyedül',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'A kutatások szerint a következetes naplózás a hosszú távú siker legfontosabb előrejelzője.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Egy ${age} éves ${gender} számára, aki ${goal} szeretne elérni, a következetes naplózás a siker legfontosabb előrejelzője.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} tízszer könnyebbé teszi, mint a kézi naplózás.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Készen állsz a kezdésre?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Készíts fotót az ételeidről az azonnali elemzéshez',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Naplózz következetesen, hogy valódi előrelépést láss',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Kövesd a fejlődésed naponta, hogy motivált maradj',
			'onboarding.reinforcement.trackingSuccess.button' => 'Kezdjük!',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'személy',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'egészségesebb életet',
			'onboarding.reinforcement.healthProfile.title' => 'Egészségügyi profilod',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'A megadott adataid alapján a BMI-d ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Véglegesítsük a profilodat, hogy személyre szabhassuk az élményt.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'híznod',
			'onboarding.reinforcement.healthProfile.goalLose' => 'fogynod',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'A célod eléréséhez ${direction} kell ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Elérted a céltestsúlyodat! Segítünk megtartani.',
			'onboarding.reinforcement.healthProfile.button' => 'Kezdjük!',
			'onboarding.reinforcement.goalLifestyle.title' => 'Remek kezdet!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Megtetted az első lépést ${goalText} felé. Mivel ${activityText} vagy, ${appLabel} a célokat az életmódodhoz igazítja.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Személyre szabott kalóriacélok',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'MI-alapú ételfelismerés',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Részletes makrotápanyag-bontások',
			'onboarding.reinforcement.goalLifestyle.button' => 'Kezdjük!',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'céljaid',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktív',
			'tabs.dashboard' => 'Vezérlőpult',
			'tabs.history' => 'Előzmények',
			'home.aiSummary.title' => 'Az MI összefoglalód',
			'home.aiSummary.logMore' => 'Naplózz több ételt a következő napokban, hogy megkaphasd a személyre szabott MI‑betekintéseket.',
			'home.aiSummary.loading' => 'Összefoglaló betöltése…',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} étel naplózva',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Egyensúlyi pontszám ${score}',
			'home.aiSummary.topFoods' => 'Top ételek',
			'home.aiSummary.trendUp' => 'Kalóriák emelkedőben',
			'home.aiSummary.trendDown' => 'Kalóriák csökkenőben',
			'home.aiSummary.trendSteady' => 'Kalóriák stabilan',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Frissítve: ${time}',
			'home.dailyGoal.title' => 'Állítsd be a napi célod',
			'home.dailyGoal.titleSet' => 'A napi célod',
			'home.dailyGoal.description' => 'Készen állsz az egészségesebb útra? Állítsd be az alábbi napi kalóriacélt a kezdéshez.',
			'home.dailyGoal.descriptionSet' => 'Iránytűd beállítva! Ez a napi kalóriacélod, amely vezet az utadon.',
			'home.dailyGoal.yourGoal' => 'Célod',
			'home.dailyGoal.goal' => 'Cél',
			'home.dailyGoal.dailyCalories' => 'Napi kalória (kcal)',
			'home.dailyGoal.setGoal' => 'Cél beállítása',
			'home.dailyGoal.intake' => 'Bevitel',
			'home.dailyGoal.burned' => 'Elégetett',
			'home.dailyGoal.weightImpact' => 'Testsúlyra gyakorolt hatás',
			'home.dailyGoal.estLoss' => 'Becs. fogyás',
			'home.dailyGoal.estGain' => 'Becs. gyarapodás',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Napi összegzés',
			'home.dailySummary.calories' => 'Kalória',
			'home.dailySummary.carbs' => 'Szénhidrát',
			'home.dailySummary.protein' => 'Fehérje',
			'home.dailySummary.fat' => 'Zsír',
			'home.dailySummary.fiber' => 'Rost',
			'home.dailySummary.grams' => 'gramm',
			'home.dailySummary.chartAccessibilityLabel' => 'Makrók diagram',
			'home.intakeProgress.title' => 'A mai makrók megoszlása',
			'home.intakeProgress.target' => 'Cél',
			'home.intakeProgress.current' => 'Jelenlegi',
			'home.intakeHistory.title' => '7 napos makrótörténet',
			'home.intakeHistory.trendTitle' => 'Mai trend',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Csúcs: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Még nincs előzmény',
			'home.intakeHistory.startLogging' => 'Kezdd el naplózni az étkezéseidet, hogy itt lásd a\n7 napos makrótrendeket',
			'home.mealLog.title' => 'Naplózott étkezések',
			'home.mealLog.emptyMessage' => 'Fotózd le az utolsó étkezésed, hogy itt megjelenjen.',
			'home.mealLog.noMealsToday' => 'Ma nincs rögzített étkezés',
			'home.mealLog.seeAllMeals' => 'Összes étkezés megtekintése',
			'home.mealDescription.title' => 'Gyors hozzáadás MI‑vel',
			'home.mealDescription.description' => 'Írd le az étkezésed, a többit intézi az MI.',
			'home.mealDescription.hint' => 'pl.: Reggelire ettem egy nagy tál zabkását egy szeletelt banánnal és egy adag tejsavóval ...',
			'home.mealDescription.analyzeMeal' => 'Étkezés elemzése',
			'home.favoriteMeals.title' => 'Kedvenc étkezések',
			'home.favoriteMeals.description' => 'Add hozzá gyorsan valamelyik kedvenced.',
			'home.favoriteMeals.noFavorites' => 'Még nincsenek kedvenc étkezések.',
			'home.favoriteMeals.addFavoriteHint' => 'Koppints a csillagra egy étkezésen, hogy kedvencnek jelöld.',
			'home.favoriteMeals.seeAll' => 'Összes megtekintése',
			'home.favoriteMeals.add' => 'Hozzáadás',
			'home.mealSnap.title' => 'Fotózd és kövesd az étkezést',
			'home.mealSnap.description' => 'Használd a kamerát, készíts képet az ételről MI‑elemzéshez.',
			'home.mealSnap.openCamera' => 'Kamera megnyitása',
			'home.mealSnap.gallery' => 'Galéria',
			'home.mealSnap.compressingPhoto' => 'Fénykép optimalizálása…',
			'home.mealSnap.uploadingPhoto' => 'Fénykép feltöltése…',
			'home.connectHealth.title' => 'Szinkronizálás a Health Connecttel',
			'home.connectHealth.description' => 'Szinkronizáld a táplálkozási adataidat a Health Connecttel',
			'home.connectHealth.install' => 'Telepítés',
			'home.connectHealth.connect' => 'Csatlakozás',
			'history.noMeals' => 'Nincsenek rögzített étkezések',
			'history.emptyMessage' => 'Fotózd le az utolsó étkezésed, hogy itt megjelenjen.',
			'history.today' => 'Ma',
			'history.yesterday' => 'Tegnap',
			'meal.ohNo' => 'Jaj ne!',
			'meal.delete' => 'Törlés',
			'meal.editMeal' => 'Étkezés szerkesztése',
			'meal.addMeal' => 'Étkezés hozzáadása',
			'meal.saveMeal' => 'Étkezés mentése',
			'meal.save' => 'Mentés',
			'meal.mealName' => 'Étkezés neve',
			'meal.mealNameHint' => 'pl.: Rántotta pirítóssal',
			'meal.mealQuantity' => 'Étkezés mennyisége',
			'meal.mealQuantityHint' => 'pl.: 1 tál, 2 szelet',
			'meal.timeOfMeal' => 'Étkezés ideje',
			'meal.timeOfMealHint' => 'Válaszd ki, mikor ettél',
			'meal.mealType' => 'Étkezés típusa',
			'meal.nutrition.calories' => 'Kalória',
			'meal.nutrition.carbs' => 'Szénhidrát (g)',
			'meal.nutrition.protein' => 'Fehérje (g)',
			'meal.nutrition.fat' => 'Zsír (g)',
			'meal.nutrition.fiber' => 'Rost (g)',
			'meal.deleteConfirmation.title' => 'Étkezés törlése',
			'meal.deleteConfirmation.message' => 'Biztosan törölni szeretnéd ezt a bejegyzést?',
			'meal.deleteConfirmation.cancel' => 'Mégse',
			'meal.deleteConfirmation.delete' => 'Törlés',
			'meal.addedToLog' => 'Étkezés hozzáadva a naplódhoz!',
			'meal.couldNotAdd' => ({required Object error}) => 'Nem sikerült hozzáadni az étkezést: ${error}',
			'meal.savedSuccessfully' => 'Étkezés sikeresen hozzáadva!',
			'meal.updatedSuccessfully' => 'Étkezés sikeresen frissítve!',
			'meal.errorSaving' => ({required Object error}) => 'Hiba az étkezés mentésekor: ${error}',
			'meal.removedFromFavorites' => 'Eltávolítva a kedvencek közül!',
			'meal.savedAsFavorite' => 'Étkezés elmentve kedvencként!',
			'meal.unfavorite' => 'Kedvenc törlése',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Nem sikerült frissíteni a kedvencet: ${error}',
			'meal.feedbackThanks' => 'Köszönjük a visszajelzést!',
			'meal.reanalysisUpdated' => 'Frissítettük az elemzést a visszajelzésed alapján.',
			'meal.failedToProcess' => ({required Object error}) => 'Nem sikerült feldolgozni: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'A kép feldolgozása sikertelen: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Hiba a kép tömörítésekor: ${error}',
			'meal.failedToSave' => 'Nem sikerült menteni az adatokat. Kérlek, próbáld újra.',
			'meal.skip' => 'Kihagyás',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Kérdés ${current}/${total}',
			'meal.variation.noVariationsAvailable' => 'Nem érhetők el variációk',
			'meal.analysis.title' => 'MI étkezéselemzés',
			'meal.analysis.reassurance' => 'Ez általában csak néhány másodperc.',
			'meal.analysis.stepStarted' => 'Kezdés…',
			'meal.analysis.stepDecomposition' => 'Étkezés értelmezése…',
			'meal.analysis.stepIngredients' => 'Hozzávalók párosítása a tápanyagadatokkal…',
			'meal.analysis.stepUncertainty' => 'Bizonytalanság ellenőrzése…',
			'meal.analysis.stepMealTypeQuestion' => 'Majdnem kész…',
			'meal.analysis.stepResult' => 'Eredmény véglegesítése…',
			'meal.analysis.stepError' => 'Valami hiba történt',
			'meal.analysis.stepDefault' => 'Étkezés elemzése…',
			'meal.analysis.progressUnderstand' => 'Megértés',
			'meal.analysis.progressMatch' => 'Párosítás',
			'meal.analysis.progressCheck' => 'Ellenőrzés',
			'meal.analysis.progressFinish' => 'Befejezés',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} hozzávaló felismerve',
			'meal.analysis.ingredientsPending' => 'Hozzávalók keresése…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'What looks wrong?',
			'meal.feedback.subtitle' => 'Help us improve the analysis by selecting one or more issues.',
			'meal.feedback.tellUsMore' => 'Tell us more',
			'meal.feedback.describeIncorrect' => 'Describe what was incorrect',
			'meal.feedback.submit' => 'Submit',
			'meal.feedback.issueFoodIdentification' => 'Food identification',
			'meal.feedback.issuePortionSize' => 'Portion size',
			'meal.feedback.issueCalorieDistribution' => 'Calorie distribution',
			'meal.feedback.issueMacrosWrong' => 'Macros are wrong',
			'meal.feedback.issueMissingItems' => 'Missing items',
			'meal.feedback.issueExtraItems' => 'Extra items',
			'meal.feedback.issueOther' => 'Other',
			'favorites.title' => 'Kedvencek',
			'favorites.empty' => 'Még nincsenek kedvenc étkezések.',
			'favorites.searchPlaceholder' => 'Kedvenc étkezések keresése',
			'favorites.searchEmptyTitle' => 'Nincs a keresésnek megfelelő kedvenc',
			'favorites.searchEmptySubtitle' => 'Próbálj másik ételnevet, mennyiséget vagy étkezéstípust.',
			'favorites.sortLabel' => 'Kedvencek rendezése',
			'favorites.undo' => 'Visszavonás',
			'favorites.removed' => ({required Object name}) => '${name} eltávolítva a kedvencek közül',
			'favorites.sortOptions.recent' => 'Legutóbbi',
			'favorites.sortOptions.calories' => 'Kalória',
			'favorites.sortOptions.alphabetical' => 'A–Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Nem található profiladat',
			'profile.yourProfile' => 'Profilod',
			'profile.viewAndManage' => 'Egészségügyi adataid megtekintése és kezelése',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'ALAPINFORMÁCIÓK',
			'profile.sections.goalsAndActivity' => 'CÉLOK ÉS AKTIVITÁS',
			'profile.sections.calculatedValues' => 'SZÁMÍTOTT ÉRTÉKEK',
			'profile.gender' => 'Nem',
			'profile.height' => 'Magasság',
			'profile.weight' => 'Testsúly',
			'profile.age' => 'Életkor',
			'profile.weightGoal' => 'Testsúlycél',
			'profile.targetWeight' => 'Céltestsúly',
			'profile.activityLevel' => 'Aktivitási szint',
			'profile.healthMetrics' => 'Egészségügyi mutatók',
			'profile.notSet' => 'Nincs beállítva',
			'profile.years' => 'év',
			'profile.updatedSuccessfully' => 'Profil sikeresen frissítve!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Napi cél',
			'profile.calculatedValues.calPerDay' => 'kcal/nap',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Egészségpontszám',
			'healthScore.whyThisScore' => 'Miért ez a pontszám?',
			'healthScore.note' => 'Ez a pontszám MI‑becslés az azonosított hozzávalók és a tápanyagsűrűség alapján. Személyre szabott tanácsért mindig kérj szakembertől útmutatást.',
			'healthScore.unhealthy' => 'Egészségtelen',
			'healthScore.healthy' => 'Egészséges',
			'healthScore.neutral' => 'Semleges',
			'editProfile.title' => 'Profil szerkesztése',
			'editProfile.sections.personalInformation' => 'SZEMÉLYES ADATOK',
			'editProfile.sections.physicalMeasurements' => 'TESTI MÉRÉSEK',
			'editProfile.sections.goalsAndActivity' => 'CÉLOK ÉS AKTIVITÁS',
			'editProfile.gender' => 'Nem',
			'editProfile.dateOfBirth' => 'Születési dátum',
			'editProfile.height' => 'Magasság',
			'editProfile.weight' => 'Testsúly',
			'editProfile.weightGoal' => 'Testsúlycél',
			'editProfile.activityLevel' => 'Aktivitási szint',
			'editProfile.metric' => 'Metrikus',
			'editProfile.imperial' => 'Angolszász',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'láb',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'font',
			'editProfile.metricCm' => 'Metrikus (cm)',
			'editProfile.imperialFtIn' => 'Angolszász (láb/hüvelyk)',
			'editProfile.metricKg' => 'Metrikus (kg)',
			'editProfile.imperialLbs' => 'Angolszász (font)',
			'editProfile.genders.male' => 'Férfi',
			'editProfile.genders.female' => 'Nő',
			'editProfile.genders.other' => 'Egyéb',
			'editProfile.weightGoals.loseWeight.name' => 'Fogyás',
			'editProfile.weightGoals.loseWeight.description' => 'Kalóriadeficit kialakítása a fogyáshoz',
			'editProfile.weightGoals.maintainWeight.name' => 'Súlytartás',
			'editProfile.weightGoals.maintainWeight.description' => 'Jelenlegi testsúlyod fenntartása',
			'editProfile.weightGoals.gainWeight.name' => 'Tömegnövelés',
			'editProfile.weightGoals.gainWeight.description' => 'Kalóriatöbblet kialakítása a gyarapodáshoz',
			'editProfile.activityLevels.sedentary.name' => 'Ülő életmód',
			'editProfile.activityLevels.sedentary.description' => 'Kevés vagy semmilyen testmozgás',
			'editProfile.activityLevels.lightlyActive.name' => 'Enyhén aktív',
			'editProfile.activityLevels.lightlyActive.description' => 'Könnyű mozgás heti 1–3 nap',
			'editProfile.activityLevels.moderatelyActive.name' => 'Közepesen aktív',
			'editProfile.activityLevels.moderatelyActive.description' => 'Közepes mozgás heti 3–5 nap',
			'editProfile.activityLevels.veryActive.name' => 'Nagyon aktív',
			'editProfile.activityLevels.veryActive.description' => 'Intenzív mozgás heti 6–7 nap',
			'editProfile.activityLevels.extremelyActive.name' => 'Rendkívül aktív',
			'editProfile.activityLevels.extremelyActive.description' => 'Nagyon megerőltető edzés, fizikai munka',
			'settings.title' => 'Beállítások',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALIZÁCIÓ',
			'settings.sections.notifications' => 'ÉRTESÍTÉSEK',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'TÁMOGATÁS ÉS JOGI',
			'settings.sections.about' => 'NÉVJEGY',
			'settings.sections.dangerZone' => 'VESZÉLYZÓNA',
			'settings.sections.developer' => 'FEJLESZTŐ',
			'settings.editProfile.title' => 'Profil szerkesztése',
			'settings.editProfile.subtitle' => 'Személyes adataid frissítése',
			'settings.language.title' => 'Nyelv',
			'settings.language.subtitle' => 'Válaszd ki a preferált nyelvet',
			'settings.language.searchHint' => 'Nyelvek keresése...',
			'settings.language.noResults' => 'Nincs találat',
			'settings.heightUnit.title' => 'Magasság mértékegysége',
			'settings.weightUnit.title' => 'Testsúly mértékegysége',
			'settings.mealReminders.title' => 'Étkezési emlékeztetők',
			'settings.mealReminders.subtitle' => 'Maradj pályán az időzített értesítésekkel',
			'settings.theme.title' => 'Téma',
			'settings.theme.light' => 'Világos',
			'settings.theme.dark' => 'Sötét',
			'settings.theme.system' => 'Rendszer',
			'settings.sendFeedback.title' => 'Visszajelzés küldése',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Segíts jobbá tenni a ${appLabel} alkalmazást',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Visszajelzés a ${appLabel} alkalmazáshoz',
			'settings.sendFeedback.emailBodyPrefix' => 'Kérjük, írd le a visszajelzésed:',
			'settings.sendFeedback.appVersion' => 'Alkalmazásverzió',
			'settings.sendFeedback.device' => 'Eszköz',
			'settings.sendFeedback.osVersion' => 'Operációs rendszer',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Étkezési előzmények exportálása',
			'settings.exportMealHistory.subtitle' => 'Oszd meg a naplózott étkezéseid CSV-jét',
			'settings.exportMealHistory.shareText' => 'A Calorify étkezési előzményeid exportja',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Nem sikerült exportálni az étkezési előzményeket: ${error}',
			'settings.clearAllData.title' => 'Összes adat törlése',
			'settings.clearAllData.subtitle' => 'Véglegesen töröl minden információt',
			'settings.clearAllData.confirmationTitle' => 'Törölni az összes adatot?',
			'settings.clearAllData.confirmationMessage' => 'Ez a művelet nem vonható vissza. Minden naplózott étkezésed, kedvenced és beállításod véglegesen törlődik.',
			'settings.clearAllData.cancel' => 'Mégse',
			'settings.clearAllData.clearEverything' => 'Minden törlése',
			'settings.debugOptions.title' => 'Hibakeresési opciók',
			'settings.developerModeEnabled' => 'Fejlesztői mód engedélyezve!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Engedélyek megtekintése és kezelése',
			'settings.healthConnect.unavailable.title' => 'A Health Connect nem érhető el',
			'settings.healthConnect.unavailable.description' => 'A Health Connect nem érhető el ezen az eszközön. Telepítsd a Play Áruházból (Android 9+) vagy frissíts Android 14+ verzióra.',
			'settings.healthConnect.permissions.title' => 'Engedélyek',
			'settings.healthConnect.permissions.description' => 'A következő engedélyek szükségesek a Health Connect integrációhoz:',
			'settings.healthConnect.permissions.granted' => 'Megadva',
			'settings.healthConnect.permissions.notGranted' => 'Nincs megadva',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Elégetett kalóriák olvasása',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Lehetővé teszi az alkalmazásnak, hogy olvassa az összes elégetett kalóriádat a Health Connectből.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Ezt az engedélyt arra használjuk, hogy megjelenítsük a napi kalóriaégetésed az alkalmazásban, segítve a napi energiafelhasználás megértését.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Táplálkozási adatok olvasása',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Lehetővé teszi az alkalmazásnak, hogy táplálkozási adatokat olvasson a Health Connectből.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Ez az engedély lehetővé teszi, hogy az alkalmazás elolvassa más appok által a Health Connectbe rögzített táplálkozási információkat, átfogó képet adva az étkezésedről.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Táplálkozási adatok írása',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Lehetővé teszi az alkalmazásnak, hogy táplálkozási adatokat írjon a Health Connectbe.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Ez az engedély lehetővé teszi, hogy a naplózott étkezéseidet a Health Connecttel szinkronizáljuk, így a táplálkozási adataid más egészség‑ és fitneszappokban is elérhetők.',
			'settings.healthConnect.managePermissions' => 'Engedélyek kezelése',
			'settings.healthConnect.openSettings' => 'Health Connect beállítások megnyitása',
			'settings.healthConnect.requestPermissions' => 'Engedélyek kérése',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Az engedélykérés megszakadt vagy sikertelen. Próbáld újra, vagy add meg kézzel a Health Connect beállításaiban.',
			'settings.healthConnect.permissionRequestFailed' => 'Nem sikerült engedélyeket kérni. Próbáld újra, vagy add meg kézzel a Health Connect beállításaiban.',
			'settings.healthConnect.requestingPermissions' => 'Kérés folyamatban...',
			'settings.about.title' => 'Névjegy',
			'settings.about.tagline' => 'Gyors, ingyenes és adatvédelem‑első kalóriatudatosság',
			'settings.about.ourStory.title' => 'Történetünk',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} egy egyszerű frusztrációból született: a legtöbb kalóriakövető app vagy túlbonyolított, állandó kézi bevitelre kényszerít, drága előfizetést kér, vagy kompromisszumot köt az adatvédelemmel.\n\nEgyedüli fejlesztőként valami egyszerűbbet és korrektebbet akartam — egy olyan appot, amely MI‑t használ a kevesebb erőfeszítésért, gyors és ingyenes marad, és tisztelettel kezeli az egészségügyi adataidat.\n\n${appLabel} az az app, amit mindig is szerettem volna: nincs fiók, nincs követés, nincs reklám — csak tiszta, gyakorlatias betekintések és a te egészségcéljaid.',
			'settings.about.privacy.title' => 'Fontos a magánszférád',
			'settings.about.privacy.description' => 'Az adatvédelem nem utólagos gondolat — tervezési alapelv. Ez a gyakorlatban ezt jelenti:',
			'settings.about.privacy.noAccounts' => 'Nincs szükség fiókra\nAzonnal használhatod. Nincs regisztráció, nincs azonosítás.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Nincs viselkedéskövetés\nA ${appLabel} nem figyeli a tevékenységed, nem épít használati profilt, és nem követ alkalmazásokon vagy webhelyeken át.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Reklámmentes kialakítás\nA ${appLabel} hirdetések és adatalapú pénzkeresés nélkül működik.',
			'settings.about.privacy.noDataSelling' => 'Nincs adattovábbítás\nAz egészségügyi adataidat soha nem adjuk el és nem osztjuk meg harmadik felekkel.',
			'settings.about.privacy.localStorage' => 'Elsődlegesen helyi tárolás\nAz adataid az eszközödön maradnak.',
			'settings.about.privacy.privacyPolicy' => 'Adatvédelmi irányelvek',
			'settings.about.developer.title' => 'Egyedüli fejlesztő készítette',
			'settings.about.developer.description' => ({required Object appLabel}) => 'A ${appLabel}-t egyetlen fejlesztő építi és tartja karban, aki nyugodt, adatvédelmet tiszteletben tartó egészségszoftvert készít.\n\nA visszajelzéseket személyesen olvasom, és ezek alakítják az app jövőjét.',
			'settings.about.developer.website' => 'Weboldal',
			'settings.about.developer.email' => 'E‑mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Tetszik a ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'A visszajelzésed segít, hogy a ${appLabel} mindenkinek jobb legyen.',
			'settings.about.feedback.rateApp' => 'Értékelés a Play Áruházban',
			'settings.about.feedback.sendFeedback' => 'Visszajelzés küldése',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Maradj pályán emlékeztetőkkel',
			'reminders.description' => 'Kíméletes emlékeztetők az étkezések naplózásához és a céljaidhoz való következetes ragaszkodáshoz',
			'reminders.notificationsEnabled' => 'Értesítések engedélyezve',
			'reminders.notificationsDisabled' => 'Értesítések letiltva',
			'reminders.enabledSubtitle' => 'Étkezési emlékeztetőket fogsz kapni',
			'reminders.disabledSubtitle' => 'Engedélyezd az értesítéseket az emlékeztetőkért',
			'reminders.mealReminders' => 'Étkezési emlékeztetők',
			'reminders.breakfast' => 'Reggeli',
			'reminders.lunch' => 'Ebéd',
			'reminders.dinner' => 'Vacsora',
			'reminders.snack' => 'Nasi',
			'reminders.unknown' => 'Ismeretlen',
			'reminders.change' => 'Módosítás',
			'reminders.enableNotifications' => 'Értesítések engedélyezése',
			'reminders.skipForNow' => 'Kihagyás most',
			'reminders.saveChanges' => 'Változások mentése',
			'reminders.enabledSuccessfully' => 'Értesítések sikeresen engedélyezve!',
			'reminders.permissionDenied' => 'Értesítési engedély megtagadva',
			'reminders.errorEnabling' => ({required Object error}) => 'Hiba az értesítések engedélyezésekor: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Hiba a beállítás befejezésekor: ${error}',
			'notifications.breakfast.title' => 'Reggeli idő! 🍳',
			'notifications.breakfast.body' => 'Ne felejtsd el naplózni a reggelidet',
			'notifications.lunch.title' => 'Ebédidő! 🥗',
			'notifications.lunch.body' => 'Itt az idő, naplózd az ebéded',
			'notifications.dinner.title' => 'Vacsoraidő! 🍽️',
			'notifications.dinner.body' => 'Ne felejtsd el naplózni a vacsorád',
			'notifications.snack.title' => 'Nasidő! 🍎',
			'notifications.snack.body' => 'Ideje egy egészséges nassnak',
			'notifications.test.title' => 'Teszt értesítés',
			'login.title' => 'Bejelentkezés',
			'login.signInWithGoogle' => 'Bejelentkezés Google‑lel',
			'login.signInFailed' => 'A Google‑bejelentkezés sikertelen vagy megszakadt.',
			'disclaimer.pleaseNote' => 'Fontos',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} becsült tápértékeket ad. A pontosság a bevitt adataidtól és az ételváltozatoktól függ. Irányadónak használd, ne végleges forrásnak. Személyre szabott tanácsért fordulj szakemberhez.',
			'disclaimer.snap.portionSize.title' => 'Adagméret',
			'disclaimer.snap.portionSize.description' => 'A becslések pontossága nagyban függ a helyesen megadott adagmérettől.',
			'disclaimer.snap.preparationMethods.title' => 'Elkészítési módok',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'A főzési eljárások jelentősen módosíthatják az ételek tápanyagtartalmát. A ${appLabel} becslései nem mindig tudják ezeket a különbségeket figyelembe venni.',
			'disclaimer.snap.ingredients.title' => 'Hozzávalók',
			'disclaimer.snap.ingredients.description' => 'Az összetett, sok rejtett összetevőt tartalmazó ételek kevésbé pontos becslésekhez vezethetnek.',
			'disclaimer.snap.databaseLimitations.title' => 'Adatbázis korlátai',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'A ${appLabel} élelmiszer-adatbázisa kiterjedt, de nem tartalmaz minden egyes ételt vagy változatot.',
			'disclaimer.weightEstimate.title' => 'A testsúlybecslésről',
			'disclaimer.weightEstimate.description' => 'A jelzett testsúlyváltozás elméleti becslés az egyszerű bevitt kontra elégetett kalória modellen alapul. Csak motivációs iránymutatásként szolgál, nem a tényleges testsúlyod előrejelzéseként.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalóriapontosság',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Ez a becslés csak annyira pontos, amennyire a kalóriabeviteled és -felhasználásod naplózása. A pontatlan rögzítés pontatlan előrejelzést eredményez.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biológiai tényezők',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'A tényleges fogyást/gyarapodást befolyásolja az anyagcsere, a hormonok, az alvás, a stressz, a hidratáltság és más egyéni tényezők, amelyeket a ${appLabel} nem tud mérni.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Vízsúly és ingadozások',
			'disclaimer.weightEstimate.waterWeight.description' => 'A napi testsúly természetesen jelentősen ingadozhat a vízvisszatartás, emésztés és időzítés miatt. A becslés ezeket a napi változásokat nem veszi figyelembe.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Szakmai útmutatás',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Ne használd ezt a becslést orvosi döntésekhez. Személyre szabott súlykontrollért mindig konzultálj egészségügyi szakemberrel vagy dietetikussal.',
			'disclaimer.healthMetrics.description' => 'Ezek a mutatók segítenek megérteni a szervezeted energiaigényét és irányt mutatnak a táplálkozási céljaidhoz.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'A nyugalmi anyagcsere (BMR) az a kalóriamennyiség, amit a tested nyugalomban éget el az alapvető funkciók, például a légzés és a keringés fenntartásához. A BMR függ az életkorodtól, nemedtől, magasságodtól és testsúlyodtól. A magasabb BMR azt jelenti, hogy a tested több kalóriát éget el nyugalomban — gyakran több izomtömegnek, fiatalabb kornak vagy férfinemnek köszönhetően. Az alacsonyabb BMR tipikusan kevesebb izomtömegre, idősebb korra vagy női nemre utal.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'A teljes napi energiafelhasználás (TDEE) az egy nap alatt elégetett összes kalória, vagyis a BMR és a fizikai aktivitásból, napi mozgásból származó kalóriák összege. A TDEE a BMR-edtől és aktivitási szintedtől függ. A magasabb TDEE több elégetett kalóriát jelent — általában aktívabb életmód vagy magasabb BMR miatt. Az alacsonyabb TDEE kevesebb napi aktivitásra vagy alacsonyabb BMR-re utal.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Napi cél',
			'disclaimer.healthMetrics.dailyGoal.description' => 'A napi cél az ajánlott napi kalóriabevitel a TDEE-d és a testsúlycélod alapján. Fogyáshoz kevesebbet eszel, mint a TDEE-d; súlytartáshoz megegyezik vele; gyarapodáshoz többet eszel. Ez segít elérni a kívánt testsúlyváltozást egészséges ütemben.',
			'disclaimer.calorieExpenditure.title' => 'Kalóriafelhasználás becslése',
			'disclaimer.calorieExpenditure.description' => 'Ha a Health Connect adatai nem elérhetők, a mai elégetett kalóriákat a nyugalmi anyagcsere (BMR) és az aktivitási szint (TDEE) alapján becsüljük, arányosítva az eltelt naprésszel.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Hogyan számoljuk a becslést',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Kiszámítjuk a TDEE-det (a profilod alapján), majd megszorozzuk a nap eltelt részének arányával (óra + perc) / 24, hogy megbecsüljük az eddig elégetett kalóriákat.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Szakmai útmutatás',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Ne használd ezt a becslést orvosi döntésekhez. Személyre szabott tanácsért mindig konzultálj egészségügyi szakemberrel vagy dietetikussal.',
			'common.close' => 'Bezárás',
			'common.kContinue' => 'Folytatás',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Tetszik a ${appLabel}?',
			'feedbackRating.yes' => 'Igen, tetszik',
			'feedbackRating.no' => 'Nem igazán',
			'feedbackRating.rateStepHeading' => 'Értékelés a Play Áruházban',
			'feedbackRating.emailStepHeading' => 'Visszajelzés küldése e‑mailben',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Egy gyors értékelés segít másoknak megtalálni a ${appLabel}-t és támogatja a fejlesztést. Szánnál rá egy percet?',
			'feedbackRating.shareFeedbackViaEmail' => 'A visszajelzésed alakítja a következő lépéseket — minden üzenetet elolvasunk. Megosztanád gondolataid e‑mailben?',
			'feedbackRating.rateCta' => 'Értékelés a Play Áruházban',
			'feedbackRating.maybeLater' => 'Talán később',
			'feedbackRating.sendFeedback' => 'Visszajelzés küldése',
			'feedbackRating.noThanks' => 'Köszönöm, nem',
			'feedbackRating.aboutUsDescription' => 'Gondossággal készítve egy kis csapat által. A fókuszunk az adatvédelem, az egyszerűség és a jobb étkezési szokások kialakítása.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Kíváncsi vagy, kik állnak a ${appLabel} mögött? Nézd meg a ',
			'feedbackRating.aboutUsLinkLabel' => 'Rólunk',
			'feedbackRating.thankYouMessage' => 'Köszönjük! Később újra megkérdezzük.',
			'health.syncFailed' => 'Nem sikerült szinkronizálni a Health Connecttel',
			'health.mealSynced' => 'Étkezés szinkronizálva a Health Connecttel',
			_ => null,
		};
	}
}
