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
class TranslationsRo with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ro,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ro>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsRo _root = this; // ignore: unused_field

	@override 
	TranslationsRo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRo(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Română';
	@override String get flag => '🇷🇴';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsOnboardingRo onboarding = _TranslationsOnboardingRo._(_root);
	@override late final _TranslationsTabsRo tabs = _TranslationsTabsRo._(_root);
	@override late final _TranslationsHomeRo home = _TranslationsHomeRo._(_root);
	@override late final _TranslationsHistoryRo history = _TranslationsHistoryRo._(_root);
	@override late final _TranslationsMealRo meal = _TranslationsMealRo._(_root);
	@override late final _TranslationsFavoritesRo favorites = _TranslationsFavoritesRo._(_root);
	@override late final _TranslationsProfileRo profile = _TranslationsProfileRo._(_root);
	@override late final _TranslationsHealthScoreRo healthScore = _TranslationsHealthScoreRo._(_root);
	@override late final _TranslationsEditProfileRo editProfile = _TranslationsEditProfileRo._(_root);
	@override late final _TranslationsSettingsRo settings = _TranslationsSettingsRo._(_root);
	@override late final _TranslationsRemindersRo reminders = _TranslationsRemindersRo._(_root);
	@override late final _TranslationsNotificationsRo notifications = _TranslationsNotificationsRo._(_root);
	@override late final _TranslationsLoginRo login = _TranslationsLoginRo._(_root);
	@override late final _TranslationsDisclaimerRo disclaimer = _TranslationsDisclaimerRo._(_root);
	@override late final _TranslationsCommonRo common = _TranslationsCommonRo._(_root);
	@override late final _TranslationsErrorsRo errors = _TranslationsErrorsRo._(_root);
	@override late final _TranslationsDebugRo debug = _TranslationsDebugRo._(_root);
	@override late final _TranslationsHealthRo health = _TranslationsHealthRo._(_root);
}

// Path: onboarding
class _TranslationsOnboardingRo implements TranslationsOnboardingEn {
	_TranslationsOnboardingRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bine ai venit la ${appLabel}';
	@override String get subtitle => 'Companionul tău personal în nutriție alimentat de AI';
	@override String get getStarted => 'Începe';
	@override late final _TranslationsOnboardingFeaturesRo features = _TranslationsOnboardingFeaturesRo._(_root);
	@override late final _TranslationsOnboardingGenderRo gender = _TranslationsOnboardingGenderRo._(_root);
	@override late final _TranslationsOnboardingHeightRo height = _TranslationsOnboardingHeightRo._(_root);
	@override late final _TranslationsOnboardingWeightRo weight = _TranslationsOnboardingWeightRo._(_root);
	@override late final _TranslationsOnboardingAgeRo age = _TranslationsOnboardingAgeRo._(_root);
	@override late final _TranslationsOnboardingBmiScaleRo bmiScale = _TranslationsOnboardingBmiScaleRo._(_root);
	@override late final _TranslationsOnboardingWeightGoalRo weightGoal = _TranslationsOnboardingWeightGoalRo._(_root);
	@override late final _TranslationsOnboardingActivityLevelRo activityLevel = _TranslationsOnboardingActivityLevelRo._(_root);
	@override late final _TranslationsOnboardingHealthConnectRo healthConnect = _TranslationsOnboardingHealthConnectRo._(_root);
	@override late final _TranslationsOnboardingReinforcementRo reinforcement = _TranslationsOnboardingReinforcementRo._(_root);
}

// Path: tabs
class _TranslationsTabsRo implements TranslationsTabsEn {
	_TranslationsTabsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Tabloul de Bord';
	@override String get history => 'Istoric';
}

// Path: home
class _TranslationsHomeRo implements TranslationsHomeEn {
	_TranslationsHomeRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalRo dailyGoal = _TranslationsHomeDailyGoalRo._(_root);
	@override late final _TranslationsHomeDailySummaryRo dailySummary = _TranslationsHomeDailySummaryRo._(_root);
	@override late final _TranslationsHomeIntakeProgressRo intakeProgress = _TranslationsHomeIntakeProgressRo._(_root);
	@override late final _TranslationsHomeIntakeHistoryRo intakeHistory = _TranslationsHomeIntakeHistoryRo._(_root);
	@override late final _TranslationsHomeMealLogRo mealLog = _TranslationsHomeMealLogRo._(_root);
	@override late final _TranslationsHomeMealDescriptionRo mealDescription = _TranslationsHomeMealDescriptionRo._(_root);
	@override late final _TranslationsHomeFavoriteMealsRo favoriteMeals = _TranslationsHomeFavoriteMealsRo._(_root);
	@override late final _TranslationsHomeMealSnapRo mealSnap = _TranslationsHomeMealSnapRo._(_root);
	@override late final _TranslationsHomeConnectHealthRo connectHealth = _TranslationsHomeConnectHealthRo._(_root);
}

// Path: history
class _TranslationsHistoryRo implements TranslationsHistoryEn {
	_TranslationsHistoryRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Nu sunt mese înregistrate';
	@override String get emptyMessage => 'Fă o fotografie a ultimei tale mese pentru a o înregistra aici.';
	@override String get today => 'Astăzi';
	@override String get yesterday => 'Ieri';
}

// Path: meal
class _TranslationsMealRo implements TranslationsMealEn {
	_TranslationsMealRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Oh nu!';
	@override String get delete => 'Șterge';
	@override String get editMeal => 'Editează Masa';
	@override String get addMeal => 'Adaugă Masă';
	@override String get saveMeal => 'Salvează Masa';
	@override String get save => 'Salvează';
	@override String get mealName => 'Numele Mesei';
	@override String get mealNameHint => 'de exemplu: Ouă bătute cu pâine prăjită';
	@override String get mealQuantity => 'Cantitatea Mesei';
	@override String get mealQuantityHint => 'de ex., 1 bol, 2 felii';
	@override String get timeOfMeal => 'Ora Mesei';
	@override String get timeOfMealHint => 'Selectează ora la care ai avut masa';
	@override String get mealType => 'Tipul Mesei';
	@override late final _TranslationsMealNutritionRo nutrition = _TranslationsMealNutritionRo._(_root);
	@override late final _TranslationsMealDeleteConfirmationRo deleteConfirmation = _TranslationsMealDeleteConfirmationRo._(_root);
	@override String get addedToLog => 'Masa a fost adăugată în jurnalul tău!';
	@override String couldNotAdd({required Object error}) => 'Nu s-a putut adăuga masa: ${error}';
	@override String get savedSuccessfully => 'Masă adăugată cu succes!';
	@override String get updatedSuccessfully => 'Masă actualizată cu succes!';
	@override String errorSaving({required Object error}) => 'Eroare la salvarea mesei: ${error}';
	@override String get removedFromFavorites => 'Eliminată din favorite!';
	@override String get savedAsFavorite => 'Masa a fost salvată ca favorit!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Nu s-a putut actualiza favoritul: ${error}';
	@override String failedToProcess({required Object error}) => 'Nu s-a putut procesa: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Nu s-a putut procesa imaginea: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Eroare la comprimarea imaginii: ${error}';
	@override String get failedToSave => 'Nu s-a putut salva datele. Te rugăm să încerci din nou.';
}

// Path: favorites
class _TranslationsFavoritesRo implements TranslationsFavoritesEn {
	_TranslationsFavoritesRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorite';
	@override String get empty => 'Nu sunt mese favorite încă.';
}

// Path: profile
class _TranslationsProfileRo implements TranslationsProfileEn {
	_TranslationsProfileRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Nu s-au găsit date de profil';
	@override String get yourProfile => 'Profilul Tău';
	@override String get viewAndManage => 'Vezi și gestionează informațiile tale de sănătate';
	@override late final _TranslationsProfileSectionsRo sections = _TranslationsProfileSectionsRo._(_root);
	@override String get gender => 'Gen';
	@override String get height => 'Înălțime';
	@override String get weight => 'Greutate';
	@override String get age => 'Vârstă';
	@override String get weightGoal => 'Obiectiv de Greutate';
	@override String get targetWeight => 'Greutatea Țintă';
	@override String get activityLevel => 'Nivel de Activitate';
	@override String get healthMetrics => 'Metrici de Sănătate';
	@override String get notSet => 'Nesetat';
	@override String get years => 'ani';
	@override String get updatedSuccessfully => 'Profil actualizat cu succes!';
	@override late final _TranslationsProfileCalculatedValuesRo calculatedValues = _TranslationsProfileCalculatedValuesRo._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreRo implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scor de Sănătate';
	@override String get whyThisScore => 'De ce acest scor?';
	@override String get note => 'Acest scor este o estimare a AI-ului bazată pe ingredientele identificate și densitatea nutrițională. Consultă întotdeauna un profesionist pentru sfaturi dietetice.';
	@override String get unhealthy => 'Nesănătos';
	@override String get healthy => 'Sănătos';
	@override String get neutral => 'Neutru';
}

// Path: editProfile
class _TranslationsEditProfileRo implements TranslationsEditProfileEn {
	_TranslationsEditProfileRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editează Profil';
	@override late final _TranslationsEditProfileSectionsRo sections = _TranslationsEditProfileSectionsRo._(_root);
	@override String get gender => 'Gen';
	@override String get dateOfBirth => 'Data Nașterii';
	@override String get height => 'Înălțime';
	@override String get weight => 'Greutate';
	@override String get weightGoal => 'Obiectiv de Greutate';
	@override String get activityLevel => 'Nivel de Activitate';
	@override String get metric => 'Metric';
	@override String get imperial => 'Imperial';
	@override String get metricCm => 'Metric (cm)';
	@override String get imperialFtIn => 'Imperial (ft/in)';
	@override String get metricKg => 'Metric (kg)';
	@override String get imperialLbs => 'Imperial (lbs)';
	@override late final _TranslationsEditProfileGendersRo genders = _TranslationsEditProfileGendersRo._(_root);
	@override late final _TranslationsEditProfileWeightGoalsRo weightGoals = _TranslationsEditProfileWeightGoalsRo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsRo activityLevels = _TranslationsEditProfileActivityLevelsRo._(_root);
}

// Path: settings
class _TranslationsSettingsRo implements TranslationsSettingsEn {
	_TranslationsSettingsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Setări';
	@override late final _TranslationsSettingsSectionsRo sections = _TranslationsSettingsSectionsRo._(_root);
	@override late final _TranslationsSettingsEditProfileRo editProfile = _TranslationsSettingsEditProfileRo._(_root);
	@override late final _TranslationsSettingsLanguageRo language = _TranslationsSettingsLanguageRo._(_root);
	@override late final _TranslationsSettingsHeightUnitRo heightUnit = _TranslationsSettingsHeightUnitRo._(_root);
	@override late final _TranslationsSettingsWeightUnitRo weightUnit = _TranslationsSettingsWeightUnitRo._(_root);
	@override late final _TranslationsSettingsMealRemindersRo mealReminders = _TranslationsSettingsMealRemindersRo._(_root);
	@override late final _TranslationsSettingsThemeRo theme = _TranslationsSettingsThemeRo._(_root);
	@override late final _TranslationsSettingsSendFeedbackRo sendFeedback = _TranslationsSettingsSendFeedbackRo._(_root);
	@override late final _TranslationsSettingsClearAllDataRo clearAllData = _TranslationsSettingsClearAllDataRo._(_root);
	@override late final _TranslationsSettingsDebugOptionsRo debugOptions = _TranslationsSettingsDebugOptionsRo._(_root);
	@override String get developerModeEnabled => 'Mod dezvoltator activat!';
	@override late final _TranslationsSettingsHealthConnectRo healthConnect = _TranslationsSettingsHealthConnectRo._(_root);
	@override late final _TranslationsSettingsAboutRo about = _TranslationsSettingsAboutRo._(_root);
	@override late final _TranslationsSettingsAppInfoRo appInfo = _TranslationsSettingsAppInfoRo._(_root);
}

// Path: reminders
class _TranslationsRemindersRo implements TranslationsRemindersEn {
	_TranslationsRemindersRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rămâi pe drumul cel bun cu memento-uri';
	@override String get description => 'Primește memento-uri blânde pentru a-ți înregistra mesele și a rămâne constant cu obiectivele tale nutriționale';
	@override String get notificationsEnabled => 'Notificările sunt activate';
	@override String get notificationsDisabled => 'Notificările sunt dezactivate';
	@override String get enabledSubtitle => 'Vei primi memento-uri pentru mese';
	@override String get disabledSubtitle => 'Activează notificările pentru a primi memento-uri pentru mese';
	@override String get mealReminders => 'Memento-uri pentru Mese';
	@override String get breakfast => 'Micul Dejun';
	@override String get lunch => 'Prânz';
	@override String get dinner => 'Cină';
	@override String get snack => 'Gustare';
	@override String get unknown => 'Necunoscut';
	@override String get change => 'Schimbă';
	@override String get enableNotifications => 'Activează Notificările';
	@override String get skipForNow => 'Sari pentru moment';
	@override String get saveChanges => 'Salvează Schimbările';
	@override String get enabledSuccessfully => 'Notificările au fost activate cu succes!';
	@override String get permissionDenied => 'Permisiunea de notificare a fost refuzată';
	@override String errorEnabling({required Object error}) => 'Eroare activând notificările: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Eroare finalizând configurarea: ${error}';
}

// Path: notifications
class _TranslationsNotificationsRo implements TranslationsNotificationsEn {
	_TranslationsNotificationsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastRo breakfast = _TranslationsNotificationsBreakfastRo._(_root);
	@override late final _TranslationsNotificationsLunchRo lunch = _TranslationsNotificationsLunchRo._(_root);
	@override late final _TranslationsNotificationsDinnerRo dinner = _TranslationsNotificationsDinnerRo._(_root);
	@override late final _TranslationsNotificationsSnackRo snack = _TranslationsNotificationsSnackRo._(_root);
	@override late final _TranslationsNotificationsTestRo test = _TranslationsNotificationsTestRo._(_root);
}

// Path: login
class _TranslationsLoginRo implements TranslationsLoginEn {
	_TranslationsLoginRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autentificare';
	@override String get signInWithGoogle => 'Autentificare cu Google';
	@override String get signInFailed => 'Autentificarea Google a eșuat sau a fost anulată.';
}

// Path: disclaimer
class _TranslationsDisclaimerRo implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Te rugăm să reții';
	@override late final _TranslationsDisclaimerSnapRo snap = _TranslationsDisclaimerSnapRo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateRo weightEstimate = _TranslationsDisclaimerWeightEstimateRo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsRo healthMetrics = _TranslationsDisclaimerHealthMetricsRo._(_root);
}

// Path: common
class _TranslationsCommonRo implements TranslationsCommonEn {
	_TranslationsCommonRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get close => 'Închide';
	@override String get kContinue => 'Continuă';
}

// Path: errors
class _TranslationsErrorsRo implements TranslationsErrorsEn {
	_TranslationsErrorsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Eroare la încărcarea datelor profilului';
	@override String get somethingWentWrong => 'Ceva a mers prost.';
}

// Path: debug
class _TranslationsDebugRo implements TranslationsDebugEn {
	_TranslationsDebugRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opțiuni de Debug';
	@override late final _TranslationsDebugSectionsRo sections = _TranslationsDebugSectionsRo._(_root);
	@override String get showActiveNotifications => 'Arată Notificările Active';
	@override String get scheduleTestNotification => 'Programează Notificare de Test (10s)';
	@override String get triggerBreakfastNotification => 'Activează Notificarea de Mic Dejun';
	@override String get cancelAllNotifications => 'Anulează Toate Notificările';
	@override String get activeNotifications => 'Notificări Active';
	@override String get noTitle => 'Fără Titlu';
	@override String get noBody => 'Fără Corp';
	@override String get fetchTodaysSteps => 'Preia Pașii de Azi';
	@override String get fetchTodaysCalories => 'Preia Caloriile de Azi';
	@override String get fetchLatestWeight => 'Preia Greutatea Recente';
	@override String get fetchLatestHeight => 'Preia Înălțimea Recente';
	@override String get writeTestWeight => 'Scrie Greutatea de Test (70kg)';
	@override String get writeTestHeight => 'Scrie Înălțimea de Test (175cm)';
	@override String get syncLast7Days => 'Sincronizează Ultimele 7 Zile';
	@override String get sync7DaysTitle => 'Sincronizare pe 7 Zile';
	@override String get checkCurrentLocale => 'Verifică Localele Curente';
	@override String get currentLocale => 'Localele Curente';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Limba: ${languageCode}\nȚara: ${countryCode}\nSistemul Unitar: ${unitSystem}';
	@override String get latestWeight => 'Greutatea Recente';
	@override String get latestHeight => 'Înălțimea Recente';
	@override String get todaysCalories => 'Caloriile de Azi';
	@override String totalCaloriesBurned({required Object calories}) => 'Total calorii arse: ${calories}';
	@override String syncSuccess({required Object count}) => 'Sincronizare reușită pentru ${count} puncte de date pentru Pași, Calorii și Greutate în ultimele 7 zile.';
	@override String get noWeightData => 'Nu s-au găsit date de greutate în ultimele 30 de zile.';
	@override String get noHeightData => 'Nu s-au găsit date de înălțime în ultimul an.';
	@override String get noCalorieData => 'Nu s-au găsit date de calorii pentru azi.';
	@override String get weightWritten => 'Greutatea de test (70kg) a fost scrisă cu succes.';
	@override String get weightWriteFailed => 'Nu s-a putut scrie greutatea de test.';
	@override String get heightWritten => 'Înălțimea de test (175cm) a fost scrisă cu succes.';
	@override String get heightWriteFailed => 'Nu s-a putut scrie înălțimea de test.';
	@override String get noNotifications => 'Nu sunt notificări active.';
	@override String get testNotificationScheduled => 'Notificarea de test a fost programată pentru 10 secunde de acum.';
	@override String get testNotificationBody => 'Aceasta este o notificare de test programată pentru 10 secunde de acum.';
	@override String get breakfastNotificationTriggered => 'Notificarea de mic dejun a fost activată.';
	@override String get allNotificationsCancelled => 'Toate notificările au fost anulate.';
	@override String get fetchingData => 'Preluând date pentru ultimele 7 zile...';
	@override String id({required Object id}) => 'ID: ${id}';
}

// Path: health
class _TranslationsHealthRo implements TranslationsHealthEn {
	_TranslationsHealthRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Nu s-a putut sincroniza cu Health Connect';
	@override String get mealSynced => 'Masă sincronizată cu Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesRo implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionRo foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionRo._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisRo aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisRo._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationRo healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationRo._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderRo implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Care este genul tău?';
	@override String get description => 'Genul ne ajută să calculăm cu precizie rata metabolică bazală (BMR).';
	@override String get next => 'Următorul';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightRo implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cât de înalt ești?';
	@override String get description => 'Înălțimea ta ne ajută să calculăm cu exactitate IMC-ul tău și nevoile energetice.';
	@override String get metric => 'Metric';
	@override String get imperial => 'Imperial';
	@override String get next => 'Următorul';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightRo implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Care este greutatea ta actuală?';
	@override String get currentDescription => 'Greutatea ta actuală este esențială pentru personalizarea obiectivelor tale zilnice.';
	@override String get targetTitle => 'Care este greutatea ta țintă?';
	@override String get targetDescription => 'Stabilirea unei greutăți țintă ne ajută să determinăm planul tău pe termen lung.';
	@override String get metric => 'Metric';
	@override String get imperial => 'Imperial';
	@override String get next => 'Următorul';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeRo implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Când este ziua ta de naștere?';
	@override String get description => 'Vârsta ta ne ajută să calculăm nevoile tale calorice cu precizie.';
	@override String get next => 'Următorul';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleRo implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Subponderal';
	@override String get healthy => 'Sănătos';
	@override String get overweight => 'Supraponderal';
	@override String get obese => 'Obez';
	@override late final _TranslationsOnboardingBmiScaleCategoriesRo categories = _TranslationsOnboardingBmiScaleCategoriesRo._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesRo messages = _TranslationsOnboardingBmiScaleMessagesRo._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalRo implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Care este obiectivul tău?';
	@override String get description => 'Alege obiectivul care descrie cel mai bine ce vrei să atingi';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelRo implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cât de activ ești?';
	@override String get description => 'Acest lucru ne ajută să calculăm nevoile tale zilnice de calorii mai precis';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectRo implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conectează-te cu Health Connect';
	@override String get description => 'Sincronizează-ți datele de sănătate pentru informații mai bune și urmărire automată a caloriilor';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingRo automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingRo._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsRo progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsRo._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationRo seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationRo._(_root);
	@override String get connected => 'Health Connect Conectat';
	@override String get notConnected => 'Health Connect Neconectat';
	@override String get setup => 'Configurare Health Connect';
	@override String get skipForNow => 'Sari deocamdată';
	@override String get statusConnected => 'Health Connect este conectat.';
	@override String get statusSuccess => 'Health Connect a fost conectat cu succes!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Permisiune refuzată. Te rugăm să activezi permisiunile Health Connect din setările telefonului pentru ${appLabel}.';
	@override String statusError({required Object error}) => 'Eroare la configurarea Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementRo implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessRo trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessRo._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileRo healthProfile = _TranslationsOnboardingReinforcementHealthProfileRo._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleRo goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleRo._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalRo implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stabilește-ți Obiectivul Zilnic';
	@override String get titleSet => 'Obiectivul Tău Zilnic';
	@override String get description => 'Ești gata să începi călătoria ta de sănătate? Stabilește-ți ținta zilnică de calorii mai jos pentru a-ți porni progresul.';
	@override String get descriptionSet => 'Busola ta este setată! Aceasta este ținta ta zilnică de calorii pentru a te gândi.';
	@override String get yourGoal => 'Obiectivul tău';
	@override String get dailyCalories => 'Calorii zilnice (kcal)';
	@override String get setGoal => 'Stabilește Obiectiv';
	@override String get intake => 'Consum';
	@override String get burned => 'Arse';
	@override String get weightImpact => 'Impact asupra Greutății';
	@override String get estLoss => 'Pierdere estimată de';
	@override String get estGain => 'Câștig estimat de';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryRo implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sumar Zilnic';
	@override String get calories => 'Calorii';
	@override String get carbs => 'Carbohidrați';
	@override String get protein => 'Proteine';
	@override String get fat => 'Grăsimi';
	@override String get fiber => 'Fibre';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressRo implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Divizarea Macronutrienților de Azi';
	@override String get target => 'Obiectiv';
	@override String get current => 'Curent';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryRo implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Istoricul Macronutrienților pe 7 Zile';
	@override String get noHistoryYet => 'Nu există istoric încă';
	@override String get startLogging => 'Începe să înregistrezi mese pentru a vedea tendințele tale de macronutrienți aici';
}

// Path: home.mealLog
class _TranslationsHomeMealLogRo implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mese Înregistrate';
	@override String get emptyMessage => 'Fă o fotografie a ultimei tale mese pentru a o înregistra aici.';
	@override String get noMealsToday => 'Nu există mese înregistrate pentru astăzi';
	@override String get seeAllMeals => 'Vezi toate mesele';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionRo implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adaugă Rapid cu AI';
	@override String get description => 'Descrie masa ta și lasă AI-ul să se ocupe de detalii.';
	@override String get hint => 'de ex. Pentru micul dejun am avut un bol mare de ovăz cu o banană feliată și o porție de proteină ...';
	@override String get analyzeMeal => 'Analizează masa';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsRo implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mese Favorite';
	@override String get description => 'Adaugă rapid una dintre mesele tale favorite.';
	@override String get noFavorites => 'Nu există mese favorite încă.';
	@override String get addFavoriteHint => 'Apasă pe stea pentru a marca o masă ca favorite.';
	@override String get seeAll => 'Vezi toate';
	@override String get add => 'Adaugă';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapRo implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fă o fotografie & Urmărește-ți Masa';
	@override String get description => 'Folosește camera ta pentru a face o fotografie a alimentelor tale pentru analiza AI.';
	@override String get openCamera => 'Deschide Camera';
	@override String get gallery => 'Galerie';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthRo implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sincronizează-te cu Health Connect';
	@override String get description => 'Sincronizează-ți datele nutriționale cu Health Connect';
	@override String get install => 'Instalează';
	@override String get connect => 'Conectează-te';
}

// Path: meal.nutrition
class _TranslationsMealNutritionRo implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calorii';
	@override String get carbs => 'Carbohidrați (g)';
	@override String get protein => 'Proteine (g)';
	@override String get fat => 'Grăsimi (g)';
	@override String get fiber => 'Fibre (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationRo implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Șterge Masa';
	@override String get message => 'Ești sigur că vrei să ștergi această înregistrare de masă?';
	@override String get cancel => 'Anulează';
	@override String get delete => 'Șterge';
}

// Path: profile.sections
class _TranslationsProfileSectionsRo implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'INFORMAȚII DE BAZĂ';
	@override String get goalsAndActivity => 'OBIECTIVE ȘI ACTIVITATE';
	@override String get calculatedValues => 'VALORI CALCULATE';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesRo implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Obiectiv Zilnic';
	@override String get calPerDay => 'cal/zi';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsRo implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMAȚII PERSONALE';
	@override String get physicalMeasurements => 'MĂSURĂRI FIZICE';
	@override String get goalsAndActivity => 'OBIECTIVE ȘI ACTIVITATE';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersRo implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get male => 'Masculin';
	@override String get female => 'Feminin';
	@override String get other => 'Altul';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsRo implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightRo loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightRo._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightRo maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightRo._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightRo gainWeight = _TranslationsEditProfileWeightGoalsGainWeightRo._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsRo implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryRo sedentary = _TranslationsEditProfileActivityLevelsSedentaryRo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveRo lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveRo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveRo moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveRo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveRo veryActive = _TranslationsEditProfileActivityLevelsVeryActiveRo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveRo extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveRo._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsRo implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOCALIZARE';
	@override String get notifications => 'NOTIFICĂRI';
	@override String get healthConnect => 'CONEXIUNE LA SĂNĂTATE';
	@override String get supportAndLegal => 'SUPORT & LEGAL';
	@override String get about => 'DESPRE';
	@override String get dangerZone => 'ZONA DE RISC';
	@override String get developer => 'DEZVOLTATOR';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileRo implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editează Profil';
	@override String get subtitle => 'Actualizează informațiile tale personale';
}

// Path: settings.language
class _TranslationsSettingsLanguageRo implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limba';
	@override String get subtitle => 'Alege limba preferată';
	@override String get searchHint => 'Caută limbi...';
	@override String get noResults => 'Nu s-au găsit rezultate';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitRo implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unitate de Înălțime';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitRo implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unitate de Greutate';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersRo implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Memento-uri pentru Mese';
	@override String get subtitle => 'Rămâi pe drumul cel bun cu alerte la timp';
}

// Path: settings.theme
class _TranslationsSettingsThemeRo implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Lumină';
	@override String get dark => 'Întunecat';
	@override String get system => 'Sistem';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackRo implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trimite Feedback';
	@override String subtitle({required Object appLabel}) => 'Ajută-ne să îmbunătățim ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Feedback despre aplicația ${appLabel}';
	@override String get emailBodyPrefix => 'Te rog oferă feedback-ul tău mai jos:';
	@override String get appVersion => 'Versiunea Aplicației';
	@override String get device => 'Dispozitiv';
	@override String get osVersion => 'Versiunea OS';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataRo implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Șterge Toate Datele';
	@override String get subtitle => 'Șterge irevocabil toate informațiile tale';
	@override String get confirmationTitle => 'Șterge Toate Datele?';
	@override String get confirmationMessage => 'Această acțiune nu poate fi anulată. Toate mesele tale înregistrate, favoritele și setările de profil vor fi șterse permanent.';
	@override String get cancel => 'Anulează';
	@override String get clearEverything => 'Șterge Tot';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsRo implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opțiuni de Debug';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectRo implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conexiune la Sănătate';
	@override String get subtitle => 'Vizualizați și gestionați permisiunile';
	@override late final _TranslationsSettingsHealthConnectUnavailableRo unavailable = _TranslationsSettingsHealthConnectUnavailableRo._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsRo permissions = _TranslationsSettingsHealthConnectPermissionsRo._(_root);
	@override String get managePermissions => 'Gestionați Permisiunile';
	@override String get openSettings => 'Deschide setările Health Connect';
	@override String get requestPermissions => 'Solicită permisiuni';
	@override String get permissionRequestCancelledOrFailed => 'Cererea de permisiuni a fost anulată sau a eșuat. Încercați din nou sau acordați permisiunile manual în setările Health Connect.';
	@override String get permissionRequestFailed => 'Nu se pot solicita permisiuni. Încercați din nou sau acordați permisiunile manual în setările Health Connect.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutRo implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Despre';
	@override String get tagline => 'Conștientizare rapidă, gratuită și în respect pentru confidențialitate a caloriilor';
	@override late final _TranslationsSettingsAboutOurStoryRo ourStory = _TranslationsSettingsAboutOurStoryRo._(_root);
	@override late final _TranslationsSettingsAboutPrivacyRo privacy = _TranslationsSettingsAboutPrivacyRo._(_root);
	@override late final _TranslationsSettingsAboutDeveloperRo developer = _TranslationsSettingsAboutDeveloperRo._(_root);
	@override late final _TranslationsSettingsAboutFeedbackRo feedback = _TranslationsSettingsAboutFeedbackRo._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoRo implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Compilație ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastRo implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Timp pentru Micul Dejun! 🍳';
	@override String get body => 'Nu uita să îți înregistrezi micul dejun';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchRo implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Timp pentru Prânz! 🥗';
	@override String get body => 'Timpul să îți înregistrezi prânzul';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerRo implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Timp pentru Cină! 🍽️';
	@override String get body => 'Nu uita să îți înregistrezi cina';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackRo implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Timp pentru Gustare! 🍎';
	@override String get body => 'Timpul pentru o gustare sănătoasă';
}

// Path: notifications.test
class _TranslationsNotificationsTestRo implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificare de Test';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapRo implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} oferă informații nutriționale estimate. Precizia depinde de inputul tău și de variațiile alimentelor. Folosește-le ca ghid, nu ca o sursă definitivă. Consultă un specialist pentru sfaturi dietetice personalizate.';
	@override late final _TranslationsDisclaimerSnapPortionSizeRo portionSize = _TranslationsDisclaimerSnapPortionSizeRo._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsRo preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsRo._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsRo ingredients = _TranslationsDisclaimerSnapIngredientsRo._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsRo databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsRo._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateRo implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Despre Estimarea Greutății';
	@override String get description => 'Schimbarea estimată a greutății este o estimare teoretică bazată pe modelul simplu de calorii consumate vs. calorii arse. Este destinată doar pentru îndrumare motivațională, nu ca o predicție a greutății tale reale.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyRo calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyRo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsRo biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsRo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightRo waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightRo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceRo professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceRo._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsRo implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Aceste metrice te ajută să înțelegi nevoile energetice ale corpului tău și să-ți ghideze obiectivele nutriționale.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrRo bmr = _TranslationsDisclaimerHealthMetricsBmrRo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeRo tdee = _TranslationsDisclaimerHealthMetricsTdeeRo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalRo dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalRo._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsRo implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Notificări';
	@override String get healthConnect => 'Health Connect';
	@override String get appInfo => 'Informații despre Aplicație';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionRo implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Recunoaștere Inteligentă a Alimentelor';
	@override String get description => 'Fă o fotografie și lasă AI-ul să identifice masa ta';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisRo implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analiză AI';
	@override String get description => 'Obține instantaneu informații nutriționale din descrierile tale';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationRo implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrare cu Sănătatea';
	@override String get description => 'Conectează-te cu Health Connect pentru informații mai bune';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesRo implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Subponderal';
	@override String get healthyWeight => 'Greutate sănătoasă';
	@override String get overweight => 'Supraponderal';
	@override String get obese => 'Obez';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesRo implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Te putem ajuta să creezi un plan sănătos pentru a ajunge la o greutate echilibrată cu mese bogate în nutrienți.';
	@override String get healthy => 'Bravo! Ești într-un interval sănătos. Te vom ajuta să îți menții vitalitatea și nivelurile de energie.';
	@override String overweight({required Object appLabel}) => '${appLabel} îți va simplifica parcursul cu urmărirea powered by AI pentru a te ajuta să îți atingi obiectivul confortabil.';
	@override String get obese => 'Suntem aici să te susținem cu îndrumări personalizate și strategii sustenabile pentru obiectivele tale de sănătate.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingRo implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Urmărirea Automată a Caloriilor';
	@override String get description => 'Urmează caloriile arse din aplicațiile tale de fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsRo implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informații de Progres';
	@override String get description => 'Obține informații detaliate despre tendințele tale de sănătate';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationRo implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrare Fără Sudură';
	@override String get description => 'Sincronizează datele din aplicațiile tale preferate de sănătate';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessRo implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nu ești Singur';
	@override String get genericMessage => 'Cercetările arată că urmărirea constantă este predictorul principal al succesului pe termen lung.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Pentru un ${age} ani ${gender} care vrea să ${goal}, urmărirea constantă este predictorul principal al succesului.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} face ca totul să fie de 10 ori mai ușor decât să o faci manual.';
	@override String get getStartedTitle => 'Ești gata să începi?';
	@override String get tipPhoto => 'Fă o fotografie a meselor tale pentru o analiză instantanee';
	@override String get tipConsistency => 'Înregistrează constant pentru a vedea progrese semnificative';
	@override String get tipProgress => 'Urmărește-ți progresul zilnic pentru a rămâne motivat';
	@override String get button => 'Să Mergem';
	@override String get defaultGender => 'individual';
	@override String get defaultGoal => 'să fii mai sănătos';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileRo implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profilul Tău de Sănătate';
	@override String bmiDescription({required Object bmi}) => 'Pe baza metrilor tăi, IMC-ul tău este ${bmi}.';
	@override String get finalizeDescription => 'Să finalizăm profilul tău pentru a personaliza experiența.';
	@override String get goalGain => 'câștig';
	@override String get goalLose => 'pierde';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Pentru a atinge obiectivul tău, va trebui să ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Ești la greutatea ta țintă! Te vom ajuta să o menții.';
	@override String get button => 'Să Mergem';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleRo implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Început Excelent!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Ai făcut primul pas către ${goalText}. Deoarece ești ${activityText}, ${appLabel} îți va ajusta obiectivele pentru a se potrivi stilului tău de viață.';
	@override String get personalizedTargets => 'Ținte personalizate de calorii';
	@override String get aiMealDetection => 'Detectarea meselor alimentată de AI';
	@override String get macroBreakdowns => 'Detalii despre macronutrienți';
	@override String get button => 'Să Mergem';
	@override String get defaultGoal => 'obiectivele tale';
	@override String get defaultActivity => 'activ';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightRo implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Pierde Greutate';
	@override String get description => 'Creează un deficit caloric pentru a pierde în greutate';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightRo implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Menține Greutatea';
	@override String get description => 'Menține-ți greutatea actuală';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightRo implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Câștigă Greutate';
	@override String get description => 'Creează un surplus caloric pentru a câștiga în greutate';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryRo implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentar';
	@override String get description => 'Puțin sau deloc exercițiu';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveRo implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Activitate Ușoară';
	@override String get description => 'Exercițiu ușor 1-3 zile/săptămână';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveRo implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Activitate Moderată';
	@override String get description => 'Exercițiu moderat 3-5 zile/săptămână';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveRo implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Foarte Activ';
	@override String get description => 'Exerciții intense 6-7 zile/săptămână';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveRo implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrem de Activ';
	@override String get description => 'Exerciții foarte intense, muncă fizică';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableRo implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect indisponibil';
	@override String get description => 'Health Connect nu este disponibil pe acest dispozitiv. Instalează Health Connect din Play Store (Android 9+) sau actualizează la Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsRo implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permisiuni';
	@override String get description => 'Următoarele permisiuni sunt solicitate pentru a oferi integrarea Conexiune la Sănătate:';
	@override String get granted => 'Acordat';
	@override String get notGranted => 'Neacordat';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRo caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRo._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadRo nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadRo._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteRo nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteRo._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryRo implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Povestea Noastră';
	@override String content({required Object appLabel}) => '${appLabel} s-a născut dintr-o simplă frustrare: cele mai multe aplicații de urmărire a caloriilor sunt fie prea complicate, necesită input constant manual, percep taxe mari de abonament sau compromit confidențialitatea.\n\nCa dezvoltator solo, am vrut să construiesc ceva mai simplu și mai echitabil — o aplicație care folosește AI pentru a reduce efortul, rămâne rapidă și free de utilizat și tratează datele tale de sănătate cu respect.\n\n${appLabel} este aplicația pe care îmi doream să o existe: fără conturi, fără urmărire, fără reclame — doar informații clare, practice și obiectivele tale de sănătate.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyRo implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confidențialitatea Ta Contează';
	@override String get description => 'Confidențialitatea nu este o idee secundară — este un principiu de design. Iată ce înseamnă acest lucru în practică:';
	@override String get noAccounts => 'Fără conturi necesare\nFolosește aplicația imediat. Fără înscrieri, fără identități.';
	@override String noTracking({required Object appLabel}) => 'Fără urmărire comportamentală\n${appLabel} nu îți monitorizează activitatea, nu construiește profiluri de utilizare și nu te urmărește prin aplicații sau site-uri web.';
	@override String noAds({required Object appLabel}) => 'Fără reclame prin design\n${appLabel} este construită pentru a funcționa fără reclame sau monetizare bazată pe date.';
	@override String get noDataSelling => 'Fără vânzarea datelor\nDatele tale de sănătate nu sunt niciodată vândute sau împărtășite cu terți.';
	@override String get localStorage => 'Stocare locală\nDatele tale rămân pe dispozitivul tău.';
	@override String get privacyPolicy => 'Politica de confidențialitate';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperRo implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Construită de un Dezvoltator Solo';
	@override String description({required Object appLabel}) => '${appLabel} este construită și întreținută de un singur dezvoltator solo, concentrat pe crearea de software de sănătate care respectă confidențialitatea.\n\nFeedback-ul este citit personal și ajută la conturarea direcției aplicației.';
	@override String get website => 'Website';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackRo implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Îți place ${appLabel}?';
	@override String description({required Object appLabel}) => 'Feedback-ul tău ajută la îmbunătățirea ${appLabel} pentru toți.';
	@override String get rateApp => 'Evaluează pe Play Store';
	@override String get sendFeedback => 'Trimite Feedback';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeRo implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dimensiunea Porției';
	@override String get description => 'Precizia estimărilor depinde mult de evaluarea corectă a dimensiunii porției.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsRo implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Metode de Preparare';
	@override String description({required Object appLabel}) => 'Metodele de gătit pot altera semnificativ conținutul nutrițional al alimentelor. Estimările ${appLabel} s-ar putea să nu țină întotdeauna cont de aceste variații.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsRo implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingrediente';
	@override String get description => 'Preparatele complexe cu multe ingrediente ascunse pot duce la estimări mai puțin precise.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsRo implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitările Bazei de Date';
	@override String description({required Object appLabel}) => 'Baza de date a alimentelor ${appLabel} este extinsă, dar s-ar putea să nu includă fiecare aliment sau variație.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyRo implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Precizia Caloriilor';
	@override String get description => 'Această estimare este la fel de precisă precum aportul tău caloric și cheltuielile urmărite. Înregistrarea imprecisă va duce la o proiecție imprecisă.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsRo implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Factori Biologici';
	@override String description({required Object appLabel}) => 'Scăderea sau creșterea în greutate efectivă este influențată de metabolism, hormoni, somn, stres, hidratare și alți factori individuali pe care ${appLabel} nu îi poate măsura.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightRo implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Greutatea și Fluctuațiile Apei';
	@override String get description => 'Greutatea normală zilnică poate fluctua semnificativ din cauza retenției de apă, digestiei și temporizării. Estimarea nu ia în considerare aceste schimbări zilnice.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceRo implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Îndrumare Profesională';
	@override String get description => 'Nu folosi această estimare pentru a lua decizii medicale. Consultă întotdeauna un profesionist din domeniul sănătății sau un dietetician autorizat pentru sfaturi personalizate despre gestionarea greutății.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrRo implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Rata Metabolică Bazală (BMR) este numărul de calorii pe care corpul tău le arde în repaus pentru a menține funcții de bază precum respirația și circulația. BMR depinde de vârsta, sexul, înălțimea și greutatea ta. Un BMR mai mare înseamnă că organismul tău arde mai multe calorii în repaus, adesea din cauza unei mase musculare mai mari, a vârstei mai tinere sau a sexului masculin. Un BMR mai mic indică, de obicei, o masă musculară mai mică, o vârstă mai înaintată sau sexul feminin.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeRo implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Cheltuiala Totală Zilnică de Energie (TDEE) este numărul total de calorii pe care le arzi pe zi, incluzând BMR-ul tău plus caloriile din activitatea fizică și mișcarea zilnică. TDEE depinde de BMR-ul tău și de nivelul de activitate. Un TDEE mai mare înseamnă că arzi mai multe calorii în general, de obicei, datorită unei activități mai intense sau a unui BMR mai mare. Un TDEE mai mic sugerează o activitate zilnică mai redusă sau un BMR mai mic.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalRo implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Obiectiv Zilnic';
	@override String get description => 'Obiectivul Zilnic este aportul tău caloric zilnic recomandat, bazat pe TDEE-ul tău și pe obiectivul tău de greutate. Pentru pierderea în greutate, consumi mai puține calorii decât TDEE-ul tău. Pentru menținerea greutății, îți egalizezi TDEE-ul. Pentru creșterea în greutate, consumi mai multe calorii decât TDEE-ul tău. Acest lucru te ajută să îți atingi schimbarea dorită în greutate într-un ritm sănătos.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRo implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Citește Totalul Caloriilor Arse';
	@override String get description => 'Permite aplicației să citească totalul caloriilor tale arse din Conexiunea la Sănătate.';
	@override String get usage => 'Această permisiune este utilizată pentru a arăta arderea calorică zilnică în aplicație, ajutându-te să înțelegi totalul cheltuielilor tale energetice pe parcursul zilei.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadRo implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Citește Datele Nutriției';
	@override String get description => 'Permite aplicației să citească datele nutriționale din Conexiunea la Sănătate.';
	@override String get usage => 'Această permisiune permite aplicației să citească informațiile nutriționale care ar fi putut fi înregistrate de alte aplicații conectate la Conexiunea la Sănătate, oferind o imagine cuprinzătoare a nutriției tale.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteRo implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteRo._(this._root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scrie Datele Nutriției';
	@override String get description => 'Permite aplicației să scrie datele nutriționale către Conexiunea la Sănătate.';
	@override String get usage => 'Această permisiune permite aplicației să sincronizeze mesele tale înregistrate cu Conexiunea la Sănătate, făcând datele tale nutriționale disponibile pentru alte aplicații de sănătate și fitness pe care le utilizezi.';
}

/// The flat map containing all translations for locale <ro>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsRo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Română',
			'flag' => '🇷🇴',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => 'Bine ai venit la ${appLabel}',
			'onboarding.subtitle' => 'Companionul tău personal în nutriție alimentat de AI',
			'onboarding.getStarted' => 'Începe',
			'onboarding.features.foodRecognition.title' => 'Recunoaștere Inteligentă a Alimentelor',
			'onboarding.features.foodRecognition.description' => 'Fă o fotografie și lasă AI-ul să identifice masa ta',
			'onboarding.features.aiAnalysis.title' => 'Analiză AI',
			'onboarding.features.aiAnalysis.description' => 'Obține instantaneu informații nutriționale din descrierile tale',
			'onboarding.features.healthIntegration.title' => 'Integrare cu Sănătatea',
			'onboarding.features.healthIntegration.description' => 'Conectează-te cu Health Connect pentru informații mai bune',
			'onboarding.gender.title' => 'Care este genul tău?',
			'onboarding.gender.description' => 'Genul ne ajută să calculăm cu precizie rata metabolică bazală (BMR).',
			'onboarding.gender.next' => 'Următorul',
			'onboarding.height.title' => 'Cât de înalt ești?',
			'onboarding.height.description' => 'Înălțimea ta ne ajută să calculăm cu exactitate IMC-ul tău și nevoile energetice.',
			'onboarding.height.metric' => 'Metric',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Următorul',
			'onboarding.weight.currentTitle' => 'Care este greutatea ta actuală?',
			'onboarding.weight.currentDescription' => 'Greutatea ta actuală este esențială pentru personalizarea obiectivelor tale zilnice.',
			'onboarding.weight.targetTitle' => 'Care este greutatea ta țintă?',
			'onboarding.weight.targetDescription' => 'Stabilirea unei greutăți țintă ne ajută să determinăm planul tău pe termen lung.',
			'onboarding.weight.metric' => 'Metric',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Următorul',
			'onboarding.age.title' => 'Când este ziua ta de naștere?',
			'onboarding.age.description' => 'Vârsta ta ne ajută să calculăm nevoile tale calorice cu precizie.',
			'onboarding.age.next' => 'Următorul',
			'onboarding.bmiScale.underweight' => 'Subponderal',
			'onboarding.bmiScale.healthy' => 'Sănătos',
			'onboarding.bmiScale.overweight' => 'Supraponderal',
			'onboarding.bmiScale.obese' => 'Obez',
			'onboarding.bmiScale.categories.underweight' => 'Subponderal',
			'onboarding.bmiScale.categories.healthyWeight' => 'Greutate sănătoasă',
			'onboarding.bmiScale.categories.overweight' => 'Supraponderal',
			'onboarding.bmiScale.categories.obese' => 'Obez',
			'onboarding.bmiScale.messages.underweight' => 'Te putem ajuta să creezi un plan sănătos pentru a ajunge la o greutate echilibrată cu mese bogate în nutrienți.',
			'onboarding.bmiScale.messages.healthy' => 'Bravo! Ești într-un interval sănătos. Te vom ajuta să îți menții vitalitatea și nivelurile de energie.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} îți va simplifica parcursul cu urmărirea powered by AI pentru a te ajuta să îți atingi obiectivul confortabil.',
			'onboarding.bmiScale.messages.obese' => 'Suntem aici să te susținem cu îndrumări personalizate și strategii sustenabile pentru obiectivele tale de sănătate.',
			'onboarding.weightGoal.title' => 'Care este obiectivul tău?',
			'onboarding.weightGoal.description' => 'Alege obiectivul care descrie cel mai bine ce vrei să atingi',
			'onboarding.activityLevel.title' => 'Cât de activ ești?',
			'onboarding.activityLevel.description' => 'Acest lucru ne ajută să calculăm nevoile tale zilnice de calorii mai precis',
			'onboarding.healthConnect.title' => 'Conectează-te cu Health Connect',
			'onboarding.healthConnect.description' => 'Sincronizează-ți datele de sănătate pentru informații mai bune și urmărire automată a caloriilor',
			'onboarding.healthConnect.automaticTracking.title' => 'Urmărirea Automată a Caloriilor',
			'onboarding.healthConnect.automaticTracking.description' => 'Urmează caloriile arse din aplicațiile tale de fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Informații de Progres',
			'onboarding.healthConnect.progressInsights.description' => 'Obține informații detaliate despre tendințele tale de sănătate',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integrare Fără Sudură',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sincronizează datele din aplicațiile tale preferate de sănătate',
			'onboarding.healthConnect.connected' => 'Health Connect Conectat',
			'onboarding.healthConnect.notConnected' => 'Health Connect Neconectat',
			'onboarding.healthConnect.setup' => 'Configurare Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Sari deocamdată',
			'onboarding.healthConnect.statusConnected' => 'Health Connect este conectat.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect a fost conectat cu succes!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Permisiune refuzată. Te rugăm să activezi permisiunile Health Connect din setările telefonului pentru ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Eroare la configurarea Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Nu ești Singur',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Cercetările arată că urmărirea constantă este predictorul principal al succesului pe termen lung.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Pentru un ${age} ani ${gender} care vrea să ${goal}, urmărirea constantă este predictorul principal al succesului.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} face ca totul să fie de 10 ori mai ușor decât să o faci manual.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Ești gata să începi?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Fă o fotografie a meselor tale pentru o analiză instantanee',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Înregistrează constant pentru a vedea progrese semnificative',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Urmărește-ți progresul zilnic pentru a rămâne motivat',
			'onboarding.reinforcement.trackingSuccess.button' => 'Să Mergem',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individual',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'să fii mai sănătos',
			'onboarding.reinforcement.healthProfile.title' => 'Profilul Tău de Sănătate',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Pe baza metrilor tăi, IMC-ul tău este ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Să finalizăm profilul tău pentru a personaliza experiența.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'câștig',
			'onboarding.reinforcement.healthProfile.goalLose' => 'pierde',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Pentru a atinge obiectivul tău, va trebui să ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Ești la greutatea ta țintă! Te vom ajuta să o menții.',
			'onboarding.reinforcement.healthProfile.button' => 'Să Mergem',
			'onboarding.reinforcement.goalLifestyle.title' => 'Început Excelent!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Ai făcut primul pas către ${goalText}. Deoarece ești ${activityText}, ${appLabel} îți va ajusta obiectivele pentru a se potrivi stilului tău de viață.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Ținte personalizate de calorii',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Detectarea meselor alimentată de AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detalii despre macronutrienți',
			'onboarding.reinforcement.goalLifestyle.button' => 'Să Mergem',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'obiectivele tale',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'activ',
			'tabs.dashboard' => 'Tabloul de Bord',
			'tabs.history' => 'Istoric',
			'home.dailyGoal.title' => 'Stabilește-ți Obiectivul Zilnic',
			'home.dailyGoal.titleSet' => 'Obiectivul Tău Zilnic',
			'home.dailyGoal.description' => 'Ești gata să începi călătoria ta de sănătate? Stabilește-ți ținta zilnică de calorii mai jos pentru a-ți porni progresul.',
			'home.dailyGoal.descriptionSet' => 'Busola ta este setată! Aceasta este ținta ta zilnică de calorii pentru a te gândi.',
			'home.dailyGoal.yourGoal' => 'Obiectivul tău',
			'home.dailyGoal.dailyCalories' => 'Calorii zilnice (kcal)',
			'home.dailyGoal.setGoal' => 'Stabilește Obiectiv',
			'home.dailyGoal.intake' => 'Consum',
			'home.dailyGoal.burned' => 'Arse',
			'home.dailyGoal.weightImpact' => 'Impact asupra Greutății',
			'home.dailyGoal.estLoss' => 'Pierdere estimată de',
			'home.dailyGoal.estGain' => 'Câștig estimat de',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Sumar Zilnic',
			'home.dailySummary.calories' => 'Calorii',
			'home.dailySummary.carbs' => 'Carbohidrați',
			'home.dailySummary.protein' => 'Proteine',
			'home.dailySummary.fat' => 'Grăsimi',
			'home.dailySummary.fiber' => 'Fibre',
			'home.intakeProgress.title' => 'Divizarea Macronutrienților de Azi',
			'home.intakeProgress.target' => 'Obiectiv',
			'home.intakeProgress.current' => 'Curent',
			'home.intakeHistory.title' => 'Istoricul Macronutrienților pe 7 Zile',
			'home.intakeHistory.noHistoryYet' => 'Nu există istoric încă',
			'home.intakeHistory.startLogging' => 'Începe să înregistrezi mese pentru a vedea tendințele tale de macronutrienți aici',
			'home.mealLog.title' => 'Mese Înregistrate',
			'home.mealLog.emptyMessage' => 'Fă o fotografie a ultimei tale mese pentru a o înregistra aici.',
			'home.mealLog.noMealsToday' => 'Nu există mese înregistrate pentru astăzi',
			'home.mealLog.seeAllMeals' => 'Vezi toate mesele',
			'home.mealDescription.title' => 'Adaugă Rapid cu AI',
			'home.mealDescription.description' => 'Descrie masa ta și lasă AI-ul să se ocupe de detalii.',
			'home.mealDescription.hint' => 'de ex. Pentru micul dejun am avut un bol mare de ovăz cu o banană feliată și o porție de proteină ...',
			'home.mealDescription.analyzeMeal' => 'Analizează masa',
			'home.favoriteMeals.title' => 'Mese Favorite',
			'home.favoriteMeals.description' => 'Adaugă rapid una dintre mesele tale favorite.',
			'home.favoriteMeals.noFavorites' => 'Nu există mese favorite încă.',
			'home.favoriteMeals.addFavoriteHint' => 'Apasă pe stea pentru a marca o masă ca favorite.',
			'home.favoriteMeals.seeAll' => 'Vezi toate',
			'home.favoriteMeals.add' => 'Adaugă',
			'home.mealSnap.title' => 'Fă o fotografie & Urmărește-ți Masa',
			'home.mealSnap.description' => 'Folosește camera ta pentru a face o fotografie a alimentelor tale pentru analiza AI.',
			'home.mealSnap.openCamera' => 'Deschide Camera',
			'home.mealSnap.gallery' => 'Galerie',
			'home.connectHealth.title' => 'Sincronizează-te cu Health Connect',
			'home.connectHealth.description' => 'Sincronizează-ți datele nutriționale cu Health Connect',
			'home.connectHealth.install' => 'Instalează',
			'home.connectHealth.connect' => 'Conectează-te',
			'history.noMeals' => 'Nu sunt mese înregistrate',
			'history.emptyMessage' => 'Fă o fotografie a ultimei tale mese pentru a o înregistra aici.',
			'history.today' => 'Astăzi',
			'history.yesterday' => 'Ieri',
			'meal.ohNo' => 'Oh nu!',
			'meal.delete' => 'Șterge',
			'meal.editMeal' => 'Editează Masa',
			'meal.addMeal' => 'Adaugă Masă',
			'meal.saveMeal' => 'Salvează Masa',
			'meal.save' => 'Salvează',
			'meal.mealName' => 'Numele Mesei',
			'meal.mealNameHint' => 'de exemplu: Ouă bătute cu pâine prăjită',
			'meal.mealQuantity' => 'Cantitatea Mesei',
			'meal.mealQuantityHint' => 'de ex., 1 bol, 2 felii',
			'meal.timeOfMeal' => 'Ora Mesei',
			'meal.timeOfMealHint' => 'Selectează ora la care ai avut masa',
			'meal.mealType' => 'Tipul Mesei',
			'meal.nutrition.calories' => 'Calorii',
			'meal.nutrition.carbs' => 'Carbohidrați (g)',
			'meal.nutrition.protein' => 'Proteine (g)',
			'meal.nutrition.fat' => 'Grăsimi (g)',
			'meal.nutrition.fiber' => 'Fibre (g)',
			'meal.deleteConfirmation.title' => 'Șterge Masa',
			'meal.deleteConfirmation.message' => 'Ești sigur că vrei să ștergi această înregistrare de masă?',
			'meal.deleteConfirmation.cancel' => 'Anulează',
			'meal.deleteConfirmation.delete' => 'Șterge',
			'meal.addedToLog' => 'Masa a fost adăugată în jurnalul tău!',
			'meal.couldNotAdd' => ({required Object error}) => 'Nu s-a putut adăuga masa: ${error}',
			'meal.savedSuccessfully' => 'Masă adăugată cu succes!',
			'meal.updatedSuccessfully' => 'Masă actualizată cu succes!',
			'meal.errorSaving' => ({required Object error}) => 'Eroare la salvarea mesei: ${error}',
			'meal.removedFromFavorites' => 'Eliminată din favorite!',
			'meal.savedAsFavorite' => 'Masa a fost salvată ca favorit!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Nu s-a putut actualiza favoritul: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Nu s-a putut procesa: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Nu s-a putut procesa imaginea: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Eroare la comprimarea imaginii: ${error}',
			'meal.failedToSave' => 'Nu s-a putut salva datele. Te rugăm să încerci din nou.',
			'favorites.title' => 'Favorite',
			'favorites.empty' => 'Nu sunt mese favorite încă.',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Nu s-au găsit date de profil',
			'profile.yourProfile' => 'Profilul Tău',
			'profile.viewAndManage' => 'Vezi și gestionează informațiile tale de sănătate',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'INFORMAȚII DE BAZĂ',
			'profile.sections.goalsAndActivity' => 'OBIECTIVE ȘI ACTIVITATE',
			'profile.sections.calculatedValues' => 'VALORI CALCULATE',
			'profile.gender' => 'Gen',
			'profile.height' => 'Înălțime',
			'profile.weight' => 'Greutate',
			'profile.age' => 'Vârstă',
			'profile.weightGoal' => 'Obiectiv de Greutate',
			'profile.targetWeight' => 'Greutatea Țintă',
			'profile.activityLevel' => 'Nivel de Activitate',
			'profile.healthMetrics' => 'Metrici de Sănătate',
			'profile.notSet' => 'Nesetat',
			'profile.years' => 'ani',
			'profile.updatedSuccessfully' => 'Profil actualizat cu succes!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Obiectiv Zilnic',
			'profile.calculatedValues.calPerDay' => 'cal/zi',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Scor de Sănătate',
			'healthScore.whyThisScore' => 'De ce acest scor?',
			'healthScore.note' => 'Acest scor este o estimare a AI-ului bazată pe ingredientele identificate și densitatea nutrițională. Consultă întotdeauna un profesionist pentru sfaturi dietetice.',
			'healthScore.unhealthy' => 'Nesănătos',
			'healthScore.healthy' => 'Sănătos',
			'healthScore.neutral' => 'Neutru',
			'editProfile.title' => 'Editează Profil',
			'editProfile.sections.personalInformation' => 'INFORMAȚII PERSONALE',
			'editProfile.sections.physicalMeasurements' => 'MĂSURĂRI FIZICE',
			'editProfile.sections.goalsAndActivity' => 'OBIECTIVE ȘI ACTIVITATE',
			'editProfile.gender' => 'Gen',
			'editProfile.dateOfBirth' => 'Data Nașterii',
			'editProfile.height' => 'Înălțime',
			'editProfile.weight' => 'Greutate',
			'editProfile.weightGoal' => 'Obiectiv de Greutate',
			'editProfile.activityLevel' => 'Nivel de Activitate',
			'editProfile.metric' => 'Metric',
			'editProfile.imperial' => 'Imperial',
			'editProfile.metricCm' => 'Metric (cm)',
			'editProfile.imperialFtIn' => 'Imperial (ft/in)',
			'editProfile.metricKg' => 'Metric (kg)',
			'editProfile.imperialLbs' => 'Imperial (lbs)',
			'editProfile.genders.male' => 'Masculin',
			'editProfile.genders.female' => 'Feminin',
			'editProfile.genders.other' => 'Altul',
			'editProfile.weightGoals.loseWeight.name' => 'Pierde Greutate',
			'editProfile.weightGoals.loseWeight.description' => 'Creează un deficit caloric pentru a pierde în greutate',
			'editProfile.weightGoals.maintainWeight.name' => 'Menține Greutatea',
			'editProfile.weightGoals.maintainWeight.description' => 'Menține-ți greutatea actuală',
			'editProfile.weightGoals.gainWeight.name' => 'Câștigă Greutate',
			'editProfile.weightGoals.gainWeight.description' => 'Creează un surplus caloric pentru a câștiga în greutate',
			'editProfile.activityLevels.sedentary.name' => 'Sedentar',
			'editProfile.activityLevels.sedentary.description' => 'Puțin sau deloc exercițiu',
			'editProfile.activityLevels.lightlyActive.name' => 'Activitate Ușoară',
			'editProfile.activityLevels.lightlyActive.description' => 'Exercițiu ușor 1-3 zile/săptămână',
			'editProfile.activityLevels.moderatelyActive.name' => 'Activitate Moderată',
			'editProfile.activityLevels.moderatelyActive.description' => 'Exercițiu moderat 3-5 zile/săptămână',
			'editProfile.activityLevels.veryActive.name' => 'Foarte Activ',
			'editProfile.activityLevels.veryActive.description' => 'Exerciții intense 6-7 zile/săptămână',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrem de Activ',
			'editProfile.activityLevels.extremelyActive.description' => 'Exerciții foarte intense, muncă fizică',
			'settings.title' => 'Setări',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOCALIZARE',
			'settings.sections.notifications' => 'NOTIFICĂRI',
			'settings.sections.healthConnect' => 'CONEXIUNE LA SĂNĂTATE',
			'settings.sections.supportAndLegal' => 'SUPORT & LEGAL',
			'settings.sections.about' => 'DESPRE',
			'settings.sections.dangerZone' => 'ZONA DE RISC',
			'settings.sections.developer' => 'DEZVOLTATOR',
			'settings.editProfile.title' => 'Editează Profil',
			'settings.editProfile.subtitle' => 'Actualizează informațiile tale personale',
			'settings.language.title' => 'Limba',
			'settings.language.subtitle' => 'Alege limba preferată',
			'settings.language.searchHint' => 'Caută limbi...',
			'settings.language.noResults' => 'Nu s-au găsit rezultate',
			'settings.heightUnit.title' => 'Unitate de Înălțime',
			'settings.weightUnit.title' => 'Unitate de Greutate',
			'settings.mealReminders.title' => 'Memento-uri pentru Mese',
			'settings.mealReminders.subtitle' => 'Rămâi pe drumul cel bun cu alerte la timp',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Lumină',
			'settings.theme.dark' => 'Întunecat',
			'settings.theme.system' => 'Sistem',
			'settings.sendFeedback.title' => 'Trimite Feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Ajută-ne să îmbunătățim ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback despre aplicația ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Te rog oferă feedback-ul tău mai jos:',
			'settings.sendFeedback.appVersion' => 'Versiunea Aplicației',
			'settings.sendFeedback.device' => 'Dispozitiv',
			'settings.sendFeedback.osVersion' => 'Versiunea OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Șterge Toate Datele',
			'settings.clearAllData.subtitle' => 'Șterge irevocabil toate informațiile tale',
			'settings.clearAllData.confirmationTitle' => 'Șterge Toate Datele?',
			'settings.clearAllData.confirmationMessage' => 'Această acțiune nu poate fi anulată. Toate mesele tale înregistrate, favoritele și setările de profil vor fi șterse permanent.',
			'settings.clearAllData.cancel' => 'Anulează',
			'settings.clearAllData.clearEverything' => 'Șterge Tot',
			'settings.debugOptions.title' => 'Opțiuni de Debug',
			'settings.developerModeEnabled' => 'Mod dezvoltator activat!',
			'settings.healthConnect.title' => 'Conexiune la Sănătate',
			'settings.healthConnect.subtitle' => 'Vizualizați și gestionați permisiunile',
			'settings.healthConnect.unavailable.title' => 'Health Connect indisponibil',
			'settings.healthConnect.unavailable.description' => 'Health Connect nu este disponibil pe acest dispozitiv. Instalează Health Connect din Play Store (Android 9+) sau actualizează la Android 14+.',
			'settings.healthConnect.permissions.title' => 'Permisiuni',
			'settings.healthConnect.permissions.description' => 'Următoarele permisiuni sunt solicitate pentru a oferi integrarea Conexiune la Sănătate:',
			'settings.healthConnect.permissions.granted' => 'Acordat',
			'settings.healthConnect.permissions.notGranted' => 'Neacordat',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Citește Totalul Caloriilor Arse',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Permite aplicației să citească totalul caloriilor tale arse din Conexiunea la Sănătate.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Această permisiune este utilizată pentru a arăta arderea calorică zilnică în aplicație, ajutându-te să înțelegi totalul cheltuielilor tale energetice pe parcursul zilei.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Citește Datele Nutriției',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Permite aplicației să citească datele nutriționale din Conexiunea la Sănătate.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Această permisiune permite aplicației să citească informațiile nutriționale care ar fi putut fi înregistrate de alte aplicații conectate la Conexiunea la Sănătate, oferind o imagine cuprinzătoare a nutriției tale.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Scrie Datele Nutriției',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Permite aplicației să scrie datele nutriționale către Conexiunea la Sănătate.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Această permisiune permite aplicației să sincronizeze mesele tale înregistrate cu Conexiunea la Sănătate, făcând datele tale nutriționale disponibile pentru alte aplicații de sănătate și fitness pe care le utilizezi.',
			'settings.healthConnect.managePermissions' => 'Gestionați Permisiunile',
			'settings.healthConnect.openSettings' => 'Deschide setările Health Connect',
			'settings.healthConnect.requestPermissions' => 'Solicită permisiuni',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Cererea de permisiuni a fost anulată sau a eșuat. Încercați din nou sau acordați permisiunile manual în setările Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Nu se pot solicita permisiuni. Încercați din nou sau acordați permisiunile manual în setările Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'Despre',
			'settings.about.tagline' => 'Conștientizare rapidă, gratuită și în respect pentru confidențialitate a caloriilor',
			'settings.about.ourStory.title' => 'Povestea Noastră',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} s-a născut dintr-o simplă frustrare: cele mai multe aplicații de urmărire a caloriilor sunt fie prea complicate, necesită input constant manual, percep taxe mari de abonament sau compromit confidențialitatea.\n\nCa dezvoltator solo, am vrut să construiesc ceva mai simplu și mai echitabil — o aplicație care folosește AI pentru a reduce efortul, rămâne rapidă și free de utilizat și tratează datele tale de sănătate cu respect.\n\n${appLabel} este aplicația pe care îmi doream să o existe: fără conturi, fără urmărire, fără reclame — doar informații clare, practice și obiectivele tale de sănătate.',
			'settings.about.privacy.title' => 'Confidențialitatea Ta Contează',
			'settings.about.privacy.description' => 'Confidențialitatea nu este o idee secundară — este un principiu de design. Iată ce înseamnă acest lucru în practică:',
			'settings.about.privacy.noAccounts' => 'Fără conturi necesare\nFolosește aplicația imediat. Fără înscrieri, fără identități.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Fără urmărire comportamentală\n${appLabel} nu îți monitorizează activitatea, nu construiește profiluri de utilizare și nu te urmărește prin aplicații sau site-uri web.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Fără reclame prin design\n${appLabel} este construită pentru a funcționa fără reclame sau monetizare bazată pe date.',
			'settings.about.privacy.noDataSelling' => 'Fără vânzarea datelor\nDatele tale de sănătate nu sunt niciodată vândute sau împărtășite cu terți.',
			'settings.about.privacy.localStorage' => 'Stocare locală\nDatele tale rămân pe dispozitivul tău.',
			'settings.about.privacy.privacyPolicy' => 'Politica de confidențialitate',
			'settings.about.developer.title' => 'Construită de un Dezvoltator Solo',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} este construită și întreținută de un singur dezvoltator solo, concentrat pe crearea de software de sănătate care respectă confidențialitatea.\n\nFeedback-ul este citit personal și ajută la conturarea direcției aplicației.',
			'settings.about.developer.website' => 'Website',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Îți place ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Feedback-ul tău ajută la îmbunătățirea ${appLabel} pentru toți.',
			'settings.about.feedback.rateApp' => 'Evaluează pe Play Store',
			'settings.about.feedback.sendFeedback' => 'Trimite Feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Compilație ${buildNumber}',
			'reminders.title' => 'Rămâi pe drumul cel bun cu memento-uri',
			'reminders.description' => 'Primește memento-uri blânde pentru a-ți înregistra mesele și a rămâne constant cu obiectivele tale nutriționale',
			'reminders.notificationsEnabled' => 'Notificările sunt activate',
			'reminders.notificationsDisabled' => 'Notificările sunt dezactivate',
			'reminders.enabledSubtitle' => 'Vei primi memento-uri pentru mese',
			'reminders.disabledSubtitle' => 'Activează notificările pentru a primi memento-uri pentru mese',
			'reminders.mealReminders' => 'Memento-uri pentru Mese',
			'reminders.breakfast' => 'Micul Dejun',
			'reminders.lunch' => 'Prânz',
			'reminders.dinner' => 'Cină',
			'reminders.snack' => 'Gustare',
			'reminders.unknown' => 'Necunoscut',
			'reminders.change' => 'Schimbă',
			'reminders.enableNotifications' => 'Activează Notificările',
			'reminders.skipForNow' => 'Sari pentru moment',
			'reminders.saveChanges' => 'Salvează Schimbările',
			'reminders.enabledSuccessfully' => 'Notificările au fost activate cu succes!',
			'reminders.permissionDenied' => 'Permisiunea de notificare a fost refuzată',
			'reminders.errorEnabling' => ({required Object error}) => 'Eroare activând notificările: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Eroare finalizând configurarea: ${error}',
			'notifications.breakfast.title' => 'Timp pentru Micul Dejun! 🍳',
			'notifications.breakfast.body' => 'Nu uita să îți înregistrezi micul dejun',
			'notifications.lunch.title' => 'Timp pentru Prânz! 🥗',
			'notifications.lunch.body' => 'Timpul să îți înregistrezi prânzul',
			'notifications.dinner.title' => 'Timp pentru Cină! 🍽️',
			'notifications.dinner.body' => 'Nu uita să îți înregistrezi cina',
			'notifications.snack.title' => 'Timp pentru Gustare! 🍎',
			'notifications.snack.body' => 'Timpul pentru o gustare sănătoasă',
			'notifications.test.title' => 'Notificare de Test',
			'login.title' => 'Autentificare',
			'login.signInWithGoogle' => 'Autentificare cu Google',
			'login.signInFailed' => 'Autentificarea Google a eșuat sau a fost anulată.',
			'disclaimer.pleaseNote' => 'Te rugăm să reții',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} oferă informații nutriționale estimate. Precizia depinde de inputul tău și de variațiile alimentelor. Folosește-le ca ghid, nu ca o sursă definitivă. Consultă un specialist pentru sfaturi dietetice personalizate.',
			'disclaimer.snap.portionSize.title' => 'Dimensiunea Porției',
			'disclaimer.snap.portionSize.description' => 'Precizia estimărilor depinde mult de evaluarea corectă a dimensiunii porției.',
			'disclaimer.snap.preparationMethods.title' => 'Metode de Preparare',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Metodele de gătit pot altera semnificativ conținutul nutrițional al alimentelor. Estimările ${appLabel} s-ar putea să nu țină întotdeauna cont de aceste variații.',
			'disclaimer.snap.ingredients.title' => 'Ingrediente',
			'disclaimer.snap.ingredients.description' => 'Preparatele complexe cu multe ingrediente ascunse pot duce la estimări mai puțin precise.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitările Bazei de Date',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Baza de date a alimentelor ${appLabel} este extinsă, dar s-ar putea să nu includă fiecare aliment sau variație.',
			'disclaimer.weightEstimate.title' => 'Despre Estimarea Greutății',
			'disclaimer.weightEstimate.description' => 'Schimbarea estimată a greutății este o estimare teoretică bazată pe modelul simplu de calorii consumate vs. calorii arse. Este destinată doar pentru îndrumare motivațională, nu ca o predicție a greutății tale reale.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Precizia Caloriilor',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Această estimare este la fel de precisă precum aportul tău caloric și cheltuielile urmărite. Înregistrarea imprecisă va duce la o proiecție imprecisă.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Factori Biologici',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Scăderea sau creșterea în greutate efectivă este influențată de metabolism, hormoni, somn, stres, hidratare și alți factori individuali pe care ${appLabel} nu îi poate măsura.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Greutatea și Fluctuațiile Apei',
			'disclaimer.weightEstimate.waterWeight.description' => 'Greutatea normală zilnică poate fluctua semnificativ din cauza retenției de apă, digestiei și temporizării. Estimarea nu ia în considerare aceste schimbări zilnice.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Îndrumare Profesională',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Nu folosi această estimare pentru a lua decizii medicale. Consultă întotdeauna un profesionist din domeniul sănătății sau un dietetician autorizat pentru sfaturi personalizate despre gestionarea greutății.',
			'disclaimer.healthMetrics.description' => 'Aceste metrice te ajută să înțelegi nevoile energetice ale corpului tău și să-ți ghideze obiectivele nutriționale.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Rata Metabolică Bazală (BMR) este numărul de calorii pe care corpul tău le arde în repaus pentru a menține funcții de bază precum respirația și circulația. BMR depinde de vârsta, sexul, înălțimea și greutatea ta. Un BMR mai mare înseamnă că organismul tău arde mai multe calorii în repaus, adesea din cauza unei mase musculare mai mari, a vârstei mai tinere sau a sexului masculin. Un BMR mai mic indică, de obicei, o masă musculară mai mică, o vârstă mai înaintată sau sexul feminin.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Cheltuiala Totală Zilnică de Energie (TDEE) este numărul total de calorii pe care le arzi pe zi, incluzând BMR-ul tău plus caloriile din activitatea fizică și mișcarea zilnică. TDEE depinde de BMR-ul tău și de nivelul de activitate. Un TDEE mai mare înseamnă că arzi mai multe calorii în general, de obicei, datorită unei activități mai intense sau a unui BMR mai mare. Un TDEE mai mic sugerează o activitate zilnică mai redusă sau un BMR mai mic.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Obiectiv Zilnic',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Obiectivul Zilnic este aportul tău caloric zilnic recomandat, bazat pe TDEE-ul tău și pe obiectivul tău de greutate. Pentru pierderea în greutate, consumi mai puține calorii decât TDEE-ul tău. Pentru menținerea greutății, îți egalizezi TDEE-ul. Pentru creșterea în greutate, consumi mai multe calorii decât TDEE-ul tău. Acest lucru te ajută să îți atingi schimbarea dorită în greutate într-un ritm sănătos.',
			'common.close' => 'Închide',
			'common.kContinue' => 'Continuă',
			'errors.loadingProfileData' => 'Eroare la încărcarea datelor profilului',
			'errors.somethingWentWrong' => 'Ceva a mers prost.',
			'debug.title' => 'Opțiuni de Debug',
			'debug.sections.notifications' => 'Notificări',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.appInfo' => 'Informații despre Aplicație',
			'debug.showActiveNotifications' => 'Arată Notificările Active',
			'debug.scheduleTestNotification' => 'Programează Notificare de Test (10s)',
			'debug.triggerBreakfastNotification' => 'Activează Notificarea de Mic Dejun',
			'debug.cancelAllNotifications' => 'Anulează Toate Notificările',
			'debug.activeNotifications' => 'Notificări Active',
			'debug.noTitle' => 'Fără Titlu',
			'debug.noBody' => 'Fără Corp',
			'debug.fetchTodaysSteps' => 'Preia Pașii de Azi',
			'debug.fetchTodaysCalories' => 'Preia Caloriile de Azi',
			'debug.fetchLatestWeight' => 'Preia Greutatea Recente',
			'debug.fetchLatestHeight' => 'Preia Înălțimea Recente',
			'debug.writeTestWeight' => 'Scrie Greutatea de Test (70kg)',
			'debug.writeTestHeight' => 'Scrie Înălțimea de Test (175cm)',
			'debug.syncLast7Days' => 'Sincronizează Ultimele 7 Zile',
			'debug.sync7DaysTitle' => 'Sincronizare pe 7 Zile',
			'debug.checkCurrentLocale' => 'Verifică Localele Curente',
			'debug.currentLocale' => 'Localele Curente',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Limba: ${languageCode}\nȚara: ${countryCode}\nSistemul Unitar: ${unitSystem}',
			'debug.latestWeight' => 'Greutatea Recente',
			'debug.latestHeight' => 'Înălțimea Recente',
			'debug.todaysCalories' => 'Caloriile de Azi',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'Total calorii arse: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'Sincronizare reușită pentru ${count} puncte de date pentru Pași, Calorii și Greutate în ultimele 7 zile.',
			'debug.noWeightData' => 'Nu s-au găsit date de greutate în ultimele 30 de zile.',
			'debug.noHeightData' => 'Nu s-au găsit date de înălțime în ultimul an.',
			'debug.noCalorieData' => 'Nu s-au găsit date de calorii pentru azi.',
			'debug.weightWritten' => 'Greutatea de test (70kg) a fost scrisă cu succes.',
			'debug.weightWriteFailed' => 'Nu s-a putut scrie greutatea de test.',
			'debug.heightWritten' => 'Înălțimea de test (175cm) a fost scrisă cu succes.',
			'debug.heightWriteFailed' => 'Nu s-a putut scrie înălțimea de test.',
			'debug.noNotifications' => 'Nu sunt notificări active.',
			'debug.testNotificationScheduled' => 'Notificarea de test a fost programată pentru 10 secunde de acum.',
			'debug.testNotificationBody' => 'Aceasta este o notificare de test programată pentru 10 secunde de acum.',
			'debug.breakfastNotificationTriggered' => 'Notificarea de mic dejun a fost activată.',
			'debug.allNotificationsCancelled' => 'Toate notificările au fost anulate.',
			'debug.fetchingData' => 'Preluând date pentru ultimele 7 zile...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'health.syncFailed' => 'Nu s-a putut sincroniza cu Health Connect',
			'health.mealSynced' => 'Masă sincronizată cu Health Connect',
			_ => null,
		};
	}
}
