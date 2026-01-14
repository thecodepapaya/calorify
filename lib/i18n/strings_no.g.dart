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
class TranslationsNo with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsNo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.no,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <no>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsNo _root = this; // ignore: unused_field

	@override 
	TranslationsNo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsNo(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Norsk';
	@override String get flag => '🇳🇴';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsOnboardingNo onboarding = _TranslationsOnboardingNo._(_root);
	@override late final _TranslationsTabsNo tabs = _TranslationsTabsNo._(_root);
	@override late final _TranslationsHomeNo home = _TranslationsHomeNo._(_root);
	@override late final _TranslationsHistoryNo history = _TranslationsHistoryNo._(_root);
	@override late final _TranslationsMealNo meal = _TranslationsMealNo._(_root);
	@override late final _TranslationsFavoritesNo favorites = _TranslationsFavoritesNo._(_root);
	@override late final _TranslationsProfileNo profile = _TranslationsProfileNo._(_root);
	@override late final _TranslationsHealthScoreNo healthScore = _TranslationsHealthScoreNo._(_root);
	@override late final _TranslationsEditProfileNo editProfile = _TranslationsEditProfileNo._(_root);
	@override late final _TranslationsSettingsNo settings = _TranslationsSettingsNo._(_root);
	@override late final _TranslationsRemindersNo reminders = _TranslationsRemindersNo._(_root);
	@override late final _TranslationsNotificationsNo notifications = _TranslationsNotificationsNo._(_root);
	@override late final _TranslationsLoginNo login = _TranslationsLoginNo._(_root);
	@override late final _TranslationsDisclaimerNo disclaimer = _TranslationsDisclaimerNo._(_root);
	@override late final _TranslationsCommonNo common = _TranslationsCommonNo._(_root);
	@override late final _TranslationsErrorsNo errors = _TranslationsErrorsNo._(_root);
	@override late final _TranslationsDebugNo debug = _TranslationsDebugNo._(_root);
	@override late final _TranslationsHealthNo health = _TranslationsHealthNo._(_root);
}

// Path: onboarding
class _TranslationsOnboardingNo implements TranslationsOnboardingEn {
	_TranslationsOnboardingNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Velkommen til ${appLabel}';
	@override String get subtitle => 'Din personlige kostholdsassistent drevet av AI';
	@override String get getStarted => 'Kom i gang';
	@override late final _TranslationsOnboardingFeaturesNo features = _TranslationsOnboardingFeaturesNo._(_root);
	@override late final _TranslationsOnboardingGenderNo gender = _TranslationsOnboardingGenderNo._(_root);
	@override late final _TranslationsOnboardingHeightNo height = _TranslationsOnboardingHeightNo._(_root);
	@override late final _TranslationsOnboardingWeightNo weight = _TranslationsOnboardingWeightNo._(_root);
	@override late final _TranslationsOnboardingAgeNo age = _TranslationsOnboardingAgeNo._(_root);
	@override late final _TranslationsOnboardingBmiScaleNo bmiScale = _TranslationsOnboardingBmiScaleNo._(_root);
	@override late final _TranslationsOnboardingWeightGoalNo weightGoal = _TranslationsOnboardingWeightGoalNo._(_root);
	@override late final _TranslationsOnboardingActivityLevelNo activityLevel = _TranslationsOnboardingActivityLevelNo._(_root);
	@override late final _TranslationsOnboardingHealthConnectNo healthConnect = _TranslationsOnboardingHealthConnectNo._(_root);
	@override late final _TranslationsOnboardingReinforcementNo reinforcement = _TranslationsOnboardingReinforcementNo._(_root);
}

// Path: tabs
class _TranslationsTabsNo implements TranslationsTabsEn {
	_TranslationsTabsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Dashbord';
	@override String get history => 'Historikk';
}

// Path: home
class _TranslationsHomeNo implements TranslationsHomeEn {
	_TranslationsHomeNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalNo dailyGoal = _TranslationsHomeDailyGoalNo._(_root);
	@override late final _TranslationsHomeDailySummaryNo dailySummary = _TranslationsHomeDailySummaryNo._(_root);
	@override late final _TranslationsHomeIntakeProgressNo intakeProgress = _TranslationsHomeIntakeProgressNo._(_root);
	@override late final _TranslationsHomeIntakeHistoryNo intakeHistory = _TranslationsHomeIntakeHistoryNo._(_root);
	@override late final _TranslationsHomeMealLogNo mealLog = _TranslationsHomeMealLogNo._(_root);
	@override late final _TranslationsHomeMealDescriptionNo mealDescription = _TranslationsHomeMealDescriptionNo._(_root);
	@override late final _TranslationsHomeFavoriteMealsNo favoriteMeals = _TranslationsHomeFavoriteMealsNo._(_root);
	@override late final _TranslationsHomeMealSnapNo mealSnap = _TranslationsHomeMealSnapNo._(_root);
	@override late final _TranslationsHomeConnectHealthNo connectHealth = _TranslationsHomeConnectHealthNo._(_root);
}

// Path: history
class _TranslationsHistoryNo implements TranslationsHistoryEn {
	_TranslationsHistoryNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Ingen måltider registrert';
	@override String get emptyMessage => 'Ta et bilde av ditt siste måltid for å loggføre her.';
	@override String get today => 'I dag';
	@override String get yesterday => 'I går';
}

// Path: meal
class _TranslationsMealNo implements TranslationsMealEn {
	_TranslationsMealNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Å nei!';
	@override String get delete => 'Slett';
	@override String get editMeal => 'Rediger Måltid';
	@override String get addMeal => 'Legg til Måltid';
	@override String get saveMeal => 'Lagre Måltid';
	@override String get save => 'Lagre';
	@override String get mealName => 'Måltidsnavn';
	@override String get mealQuantity => 'Måltidsmengde';
	@override String get mealQuantityHint => 'f.eks. 1 bolle, 2 skiver';
	@override String get timeOfMeal => 'Tidspunkt for Måltid';
	@override String get timeOfMealHint => 'Velg tidspunktet du hadde måltidet';
	@override String get mealType => 'Måltidstype';
	@override late final _TranslationsMealNutritionNo nutrition = _TranslationsMealNutritionNo._(_root);
	@override late final _TranslationsMealDeleteConfirmationNo deleteConfirmation = _TranslationsMealDeleteConfirmationNo._(_root);
	@override String get addedToLog => 'Måltid lagt til loggen din!';
	@override String couldNotAdd({required Object error}) => 'Kunne ikke legge til måltid: ${error}';
	@override String get removedFromFavorites => 'Fjernet fra favoritter!';
	@override String get savedAsFavorite => 'Måltid lagret som favoritt!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Kunne ikke oppdatere favoritt: ${error}';
	@override String failedToProcess({required Object error}) => 'Feil under prosessering: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Feil under prosessering av bilde: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Feil under komprimering av bilde: ${error}';
	@override String get failedToSave => 'Kunne ikke lagre data. Vennligst prøv igjen.';
}

// Path: favorites
class _TranslationsFavoritesNo implements TranslationsFavoritesEn {
	_TranslationsFavoritesNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritter';
	@override String get empty => 'Ingen favorittmåltider enda.';
}

// Path: profile
class _TranslationsProfileNo implements TranslationsProfileEn {
	_TranslationsProfileNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Ingen profildata funnet';
	@override String get yourProfile => 'Din Profil';
	@override String get viewAndManage => 'Se og administrer helseinformasjonen din';
	@override late final _TranslationsProfileSectionsNo sections = _TranslationsProfileSectionsNo._(_root);
	@override String get gender => 'Kjønn';
	@override String get height => 'Høyde';
	@override String get weight => 'Vekt';
	@override String get age => 'Alder';
	@override String get weightGoal => 'Vektmål';
	@override String get activityLevel => 'Aktivitetsnivå';
	@override String get healthMetrics => 'Helseparametere';
	@override String get notSet => 'Ikke angitt';
	@override String get years => 'år';
	@override String get updatedSuccessfully => 'Profil oppdatert med suksess!';
	@override late final _TranslationsProfileCalculatedValuesNo calculatedValues = _TranslationsProfileCalculatedValuesNo._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreNo implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Helsescore';
	@override String get whyThisScore => 'Hvorfor denne scoren?';
	@override String get note => 'Denne scoren er et AI-estimat basert på de identifiserte ingrediensene og næringsinnholdet. Konsulter alltid en profesjonell for kostholdsråd.';
	@override String get unhealthy => 'Usunn';
	@override String get healthy => 'Sunn';
	@override String get neutral => 'Nøytral';
}

// Path: editProfile
class _TranslationsEditProfileNo implements TranslationsEditProfileEn {
	_TranslationsEditProfileNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rediger Profil';
	@override late final _TranslationsEditProfileSectionsNo sections = _TranslationsEditProfileSectionsNo._(_root);
	@override String get gender => 'Kjønn';
	@override String get dateOfBirth => 'Fødselsdato';
	@override String get height => 'Høyde';
	@override String get weight => 'Vekt';
	@override String get weightGoal => 'Vektmål';
	@override String get activityLevel => 'Aktivitetsnivå';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperial';
	@override String get metricCm => 'Metrisk (cm)';
	@override String get imperialFtIn => 'Imperial (ft/in)';
	@override String get metricKg => 'Metrisk (kg)';
	@override String get imperialLbs => 'Imperial (lbs)';
	@override late final _TranslationsEditProfileGendersNo genders = _TranslationsEditProfileGendersNo._(_root);
	@override late final _TranslationsEditProfileWeightGoalsNo weightGoals = _TranslationsEditProfileWeightGoalsNo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsNo activityLevels = _TranslationsEditProfileActivityLevelsNo._(_root);
}

// Path: settings
class _TranslationsSettingsNo implements TranslationsSettingsEn {
	_TranslationsSettingsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Innstillinger';
	@override late final _TranslationsSettingsSectionsNo sections = _TranslationsSettingsSectionsNo._(_root);
	@override late final _TranslationsSettingsEditProfileNo editProfile = _TranslationsSettingsEditProfileNo._(_root);
	@override late final _TranslationsSettingsLanguageNo language = _TranslationsSettingsLanguageNo._(_root);
	@override late final _TranslationsSettingsHeightUnitNo heightUnit = _TranslationsSettingsHeightUnitNo._(_root);
	@override late final _TranslationsSettingsWeightUnitNo weightUnit = _TranslationsSettingsWeightUnitNo._(_root);
	@override late final _TranslationsSettingsMealRemindersNo mealReminders = _TranslationsSettingsMealRemindersNo._(_root);
	@override late final _TranslationsSettingsThemeNo theme = _TranslationsSettingsThemeNo._(_root);
	@override late final _TranslationsSettingsSendFeedbackNo sendFeedback = _TranslationsSettingsSendFeedbackNo._(_root);
	@override late final _TranslationsSettingsClearAllDataNo clearAllData = _TranslationsSettingsClearAllDataNo._(_root);
	@override late final _TranslationsSettingsDebugOptionsNo debugOptions = _TranslationsSettingsDebugOptionsNo._(_root);
	@override String get developerModeEnabled => 'Utviklermodus aktivert!';
}

// Path: reminders
class _TranslationsRemindersNo implements TranslationsRemindersEn {
	_TranslationsRemindersNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hold deg på sporet med påminnelser';
	@override String get description => 'Få milde påminnelser om å loggføre måltidene dine og holde deg konsekvent med dine kostholdsmål';
	@override String get notificationsEnabled => 'Varsler Aktivert';
	@override String get notificationsDisabled => 'Varsler Deaktivert';
	@override String get enabledSubtitle => 'Du vil motta måltidspåminnelser';
	@override String get disabledSubtitle => 'Aktiver varsler for å få måltidspåminnelser';
	@override String get mealReminders => 'Måltidspåminnelser';
	@override String get breakfast => 'Frokost';
	@override String get lunch => 'Lunsj';
	@override String get dinner => 'Middag';
	@override String get snack => 'Snack';
	@override String get unknown => 'Ukjent';
	@override String get change => 'Endre';
	@override String get enableNotifications => 'Aktiver Varsler';
	@override String get skipForNow => 'Hopp over for nå';
	@override String get saveChanges => 'Lagre Endringer';
	@override String get enabledSuccessfully => 'Varsler aktivert med suksess!';
	@override String get permissionDenied => 'Varslingstillatelse nektert';
	@override String errorEnabling({required Object error}) => 'Feil ved aktivering av varsler: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Feil ved fullføring av oppsett: ${error}';
}

// Path: notifications
class _TranslationsNotificationsNo implements TranslationsNotificationsEn {
	_TranslationsNotificationsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastNo breakfast = _TranslationsNotificationsBreakfastNo._(_root);
	@override late final _TranslationsNotificationsLunchNo lunch = _TranslationsNotificationsLunchNo._(_root);
	@override late final _TranslationsNotificationsDinnerNo dinner = _TranslationsNotificationsDinnerNo._(_root);
	@override late final _TranslationsNotificationsSnackNo snack = _TranslationsNotificationsSnackNo._(_root);
	@override late final _TranslationsNotificationsTestNo test = _TranslationsNotificationsTestNo._(_root);
}

// Path: login
class _TranslationsLoginNo implements TranslationsLoginEn {
	_TranslationsLoginNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Logg Inn';
	@override String get signInWithGoogle => 'Logg inn med Google';
	@override String get signInFailed => 'Google Innlogging mislyktes eller ble avbrutt.';
}

// Path: disclaimer
class _TranslationsDisclaimerNo implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Vennligst merk';
	@override late final _TranslationsDisclaimerSnapNo snap = _TranslationsDisclaimerSnapNo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateNo weightEstimate = _TranslationsDisclaimerWeightEstimateNo._(_root);
}

// Path: common
class _TranslationsCommonNo implements TranslationsCommonEn {
	_TranslationsCommonNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get close => 'Lukk';
	@override String get kContinue => 'Fortsett';
}

// Path: errors
class _TranslationsErrorsNo implements TranslationsErrorsEn {
	_TranslationsErrorsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Feil ved lasting av profildata';
	@override String get somethingWentWrong => 'Noe gikk galt.';
}

// Path: debug
class _TranslationsDebugNo implements TranslationsDebugEn {
	_TranslationsDebugNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Feilsøkingsalternativer';
	@override late final _TranslationsDebugSectionsNo sections = _TranslationsDebugSectionsNo._(_root);
	@override String get showActiveNotifications => 'Vis Aktive Varsler';
	@override String get scheduleTestNotification => 'Planlegg Testvarsel (10s)';
	@override String get triggerBreakfastNotification => 'Utgi Frokost Varsel';
	@override String get cancelAllNotifications => 'Avbryt Alle Varsler';
	@override String get activeNotifications => 'Aktive Varsler';
	@override String get noTitle => 'Ingen Tittel';
	@override String get noBody => 'Ingen Innhold';
	@override String get fetchTodaysSteps => 'Hent Dagens Skritt';
	@override String get fetchTodaysCalories => 'Hent Dagens Kalorier';
	@override String get fetchLatestWeight => 'Hent Nyeste Vekt';
	@override String get fetchLatestHeight => 'Hent Nyeste Høyde';
	@override String get writeTestWeight => 'Skriv Testvekt (70kg)';
	@override String get writeTestHeight => 'Skriv Testhøyde (175cm)';
	@override String get syncLast7Days => 'Synkroniser Siste 7 Dager';
	@override String get sync7DaysTitle => '7-Dagers Synkronisering';
	@override String get checkCurrentLocale => 'Sjekk Nåværende Språk';
	@override String get currentLocale => 'Nåværende Språk';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Språk: ${languageCode}\nLand: ${countryCode}\nEnhetssystem: ${unitSystem}';
	@override String get latestWeight => 'Nyeste Vekt';
	@override String get latestHeight => 'Nyeste Høyde';
	@override String get todaysCalories => 'Dagens Kalorier';
	@override String totalCaloriesBurned({required Object calories}) => 'Totalt brente kalorier: ${calories}';
	@override String syncSuccess({required Object count}) => 'Suksess med å hente ${count} datapunkter for Skritt, Kalorier og Vekt de siste 7 dagene.';
	@override String get noWeightData => 'Ingen vektdata funnet de siste 30 dagene.';
	@override String get noHeightData => 'Ingen høyde data funnet det siste året.';
	@override String get noCalorieData => 'Ingen kalori data funnet for i dag.';
	@override String get weightWritten => 'Testvekt (70kg) skrevet med suksess.';
	@override String get weightWriteFailed => 'Kunne ikke skrive testvekt.';
	@override String get heightWritten => 'Testhøyde (175cm) skrevet med suksess.';
	@override String get heightWriteFailed => 'Kunne ikke skrive testhøyde.';
	@override String get noNotifications => 'Ingen aktive varsler.';
	@override String get testNotificationScheduled => 'Testvarsel planlagt til om 10 sekunder.';
	@override String get testNotificationBody => 'Dette er et testvarsel planlagt til om 10 sekunder.';
	@override String get breakfastNotificationTriggered => 'Frokostvarsel utløst.';
	@override String get allNotificationsCancelled => 'Alle varsler avbrutt.';
	@override String get fetchingData => 'Henter data for de siste 7 dagene...';
	@override String id({required Object id}) => 'ID: ${id}';
}

// Path: health
class _TranslationsHealthNo implements TranslationsHealthEn {
	_TranslationsHealthNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Kunne ikke synkronisere med Health Connect';
	@override String get mealSynced => 'Måltid synkronisert med Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesNo implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionNo foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionNo._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisNo aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisNo._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationNo healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationNo._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderNo implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hva er kjønnet ditt?';
	@override String get description => 'Kjønn hjelper oss å nøyaktig beregne din basale metabolisme (BMR).';
	@override String get next => 'Neste';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightNo implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvor høy er du?';
	@override String get description => 'Høyden din hjelper oss å beregne BMI og energibehov korrekt.';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperial';
	@override String get next => 'Neste';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightNo implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Hva veier du nå?';
	@override String get currentDescription => 'Vekten din er viktig for å tilpasse dine daglige mål.';
	@override String get targetTitle => 'Hva er målvekten din?';
	@override String get targetDescription => 'Å sette en målvekt hjelper oss å bestemme din langsiktige plan.';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperial';
	@override String get next => 'Neste';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeNo implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Når har du bursdag?';
	@override String get description => 'Alderen din hjelper oss å beregne dine kaloribehov korrekt.';
	@override String get next => 'Neste';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleNo implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Undervektig';
	@override String get healthy => 'Normalvektig';
	@override String get overweight => 'Overvektig';
	@override String get obese => 'Kraftig overvektig';
	@override late final _TranslationsOnboardingBmiScaleCategoriesNo categories = _TranslationsOnboardingBmiScaleCategoriesNo._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesNo messages = _TranslationsOnboardingBmiScaleMessagesNo._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalNo implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hva er målet ditt?';
	@override String get description => 'Velg målet som best beskriver hva du ønsker å oppnå';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelNo implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvor aktiv er du?';
	@override String get description => 'Dette hjelper oss å beregne dine daglige kalori behov mer nøyaktig';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectNo implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Koble til Health Connect';
	@override String get description => 'Synkroniser helsedataene dine for bedre innsikt og automatisk kalori sporing';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingNo automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingNo._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsNo progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsNo._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationNo seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationNo._(_root);
	@override String get connected => 'Health Connect Tilkoblet';
	@override String get notConnected => 'Health Connect Ikke Tilkoblet';
	@override String get setup => 'Sett opp Health Connect';
	@override String get skipForNow => 'Hopp over for nå';
	@override String get statusConnected => 'Health Connect er tilkoblet.';
	@override String get statusSuccess => 'Health Connect har blitt tilkoblet med suksess!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Tillatelse nektet. Vennligst aktiver helseforbindelsestillatelser fra telefoninnstillingene dine for ${appLabel}.';
	@override String statusError({required Object error}) => 'Feil under oppsett av Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementNo implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessNo trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessNo._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileNo healthProfile = _TranslationsOnboardingReinforcementHealthProfileNo._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleNo goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleNo._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalNo implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sett Ditt Daglige Mål';
	@override String get titleSet => 'Ditt Daglige Mål';
	@override String get description => 'Klar til å begynne på din velvære reise? Sett ditt daglige kalori mål under for å kickstarte fremdriften din.';
	@override String get descriptionSet => 'Kompassen din er innstilt! Dette er ditt daglige kalori mål for å guide deg.';
	@override String get yourGoal => 'Ditt Mål';
	@override String get dailyCalories => 'Daglige kalorier (kcal)';
	@override String get setGoal => 'Sett Mål';
	@override String get intake => 'Inntak';
	@override String get burned => 'Brent';
	@override String get weightImpact => 'Vektpåvirkning';
	@override String get estLoss => 'Estimert tap av';
	@override String get estGain => 'Estimert økning av';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryNo implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Daglig Oppsummering';
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Karbohydrater';
	@override String get protein => 'Protein';
	@override String get fat => 'Fett';
	@override String get fiber => 'Fiber';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressNo implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagens Makrofordeling';
	@override String get target => 'Mål';
	@override String get current => 'Nåværende';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryNo implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => '7-Dagers Makrohistorikk';
	@override String get noHistoryYet => 'Ingen historikk enda';
	@override String get startLogging => 'Begynn å loggføre måltider for å se dine\n7-dagers makrotrender her';
}

// Path: home.mealLog
class _TranslationsHomeMealLogNo implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Loggførte Måltider';
	@override String get emptyMessage => 'Ta et bilde av ditt siste måltid for å loggføre her.';
	@override String get noMealsToday => 'Ingen måltider registrert for i dag';
	@override String get seeAllMeals => 'Se alle måltider';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionNo implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rask Legg Til med AI';
	@override String get description => 'Beskriv måltidet ditt, og la AI ta seg av detaljene.';
	@override String get hint => 'f.eks. Til frokost hadde jeg en stor bolle med havregryn med en skivet banan og en skje med whey ...';
	@override String get analyzeMeal => 'Analyser måltid';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsNo implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritter';
	@override String get description => 'Legg raskt til ett av dine favorittmåltider.';
	@override String get noFavorites => 'Ingen favorittmåltider enda.';
	@override String get addFavoriteHint => 'Klikk på stjernen på et måltid for å merke det som favoritt.';
	@override String get seeAll => 'Se alle';
	@override String get add => 'Legg til';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapNo implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ta Bilde & Spor Måltidet Ditt';
	@override String get description => 'Bruk kameraet ditt til å ta et bilde av maten for AI-analyse.';
	@override String get openCamera => 'Åpne Kamera';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthNo implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synkroniser med Health Connect';
	@override String get description => 'Synkroniser kostholdsdataene dine med Health Connect';
	@override String get install => 'Installer';
	@override String get connect => 'Koble til';
}

// Path: meal.nutrition
class _TranslationsMealNutritionNo implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Karbohydrater (g)';
	@override String get protein => 'Protein (g)';
	@override String get fat => 'Fett (g)';
	@override String get fiber => 'Fiber (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationNo implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Slett Måltid';
	@override String get message => 'Er du sikker på at du vil slette denne måltidsoppføringen?';
	@override String get cancel => 'Avbryt';
	@override String get delete => 'Slett';
}

// Path: profile.sections
class _TranslationsProfileSectionsNo implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'GRUNNLEGGENDE INFORMASJON';
	@override String get goalsAndActivity => 'MÅL & AKTIVITET';
	@override String get calculatedValues => 'BEREGNEDE VERDIER';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesNo implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Daglig Mål';
	@override String get calPerDay => 'kal/dag';
	@override String get notAvailable => 'Ikke tilgjengelig';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsNo implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSONLIG INFORMASJON';
	@override String get physicalMeasurements => 'FYSISKE MÅLINGER';
	@override String get goalsAndActivity => 'MÅL & AKTIVITET';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersNo implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get male => 'Mann';
	@override String get female => 'Kvinne';
	@override String get other => 'Annet';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsNo implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightNo loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightNo._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightNo maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightNo._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightNo gainWeight = _TranslationsEditProfileWeightGoalsGainWeightNo._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsNo implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryNo sedentary = _TranslationsEditProfileActivityLevelsSedentaryNo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveNo lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveNo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveNo moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveNo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveNo veryActive = _TranslationsEditProfileActivityLevelsVeryActiveNo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveNo extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveNo._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsNo implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALISERING';
	@override String get notifications => 'NOTIFIKASJONER';
	@override String get supportAndLegal => 'HJELP & JURIDISK';
	@override String get dangerZone => 'FARLIG SONE';
	@override String get developer => 'UTVIKLER';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileNo implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rediger Profil';
	@override String get subtitle => 'Oppdater din personlige informasjon';
}

// Path: settings.language
class _TranslationsSettingsLanguageNo implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Språk';
	@override String get subtitle => 'Velg ditt foretrukne språk';
	@override String get searchHint => 'Søk etter språk...';
	@override String get noResults => 'Ingen resultater funnet';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitNo implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Høydeenhet';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitNo implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vektenhet';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersNo implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Måltidspåminnelser';
	@override String get subtitle => 'Hold deg på sporet med tidsriktige varsler';
}

// Path: settings.theme
class _TranslationsSettingsThemeNo implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get subtitle => 'Velg ditt foretrukne tema';
	@override String get light => 'Lys';
	@override String get dark => 'Mørk';
	@override String get system => 'System';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackNo implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Send tilbakemelding';
	@override String subtitle({required Object appLabel}) => 'Hjelp oss med å forbedre ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} App Tilbakemelding';
	@override String get emailBodyPrefix => 'Vennligst gi tilbakemeldingen din nedenfor:';
	@override String get appVersion => 'App Versjon';
	@override String get device => 'Enhet';
	@override String get osVersion => 'OS Versjon';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataNo implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Slett Alle Data';
	@override String get subtitle => 'Slett uopprettelig all informasjonen din';
	@override String get confirmationTitle => 'Slette Alle Data?';
	@override String get confirmationMessage => 'Denne handlingen kan ikke angres. Alle dine loggførte måltider, favoritter og profilinnstillinger vil bli permanent slettet.';
	@override String get cancel => 'Avbryt';
	@override String get clearEverything => 'Slett Alt';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsNo implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Feilsøkingsalternativer';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastNo implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Frokost Tid! 🍳';
	@override String get body => 'Ikke glem å loggføre frokosten din';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchNo implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lunsj Tid! 🥗';
	@override String get body => 'Tid for å loggføre lunsjen din';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerNo implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Middag Tid! 🍽️';
	@override String get body => 'Ikke glem å loggføre middagen din';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackNo implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snack Tid! 🍎';
	@override String get body => 'Tid for en sunn snack';
}

// Path: notifications.test
class _TranslationsNotificationsTestNo implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testvarsling';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapNo implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} gir estimert ernæringsinformasjon. Nøyaktigheten avhenger av innspillene dine og variasjoner i maten. Bruk som en veiledning, ikke som en definitiv kilde. Konsulter en profesjonell for personlig kostholdsrådgivning.';
	@override late final _TranslationsDisclaimerSnapPortionSizeNo portionSize = _TranslationsDisclaimerSnapPortionSizeNo._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsNo preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsNo._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsNo ingredients = _TranslationsDisclaimerSnapIngredientsNo._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsNo databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsNo._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateNo implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om Vekt Estimat';
	@override String get description => 'Den projiserte vektforandringen er et teoretisk estimat basert på den enkle kalori-inn vs. kalori-ut modellen. Det er ment for motivasjonsveiledning, ikke som en prediksjon av din faktiske vekt.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyNo calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyNo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsNo biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsNo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightNo waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightNo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceNo professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceNo._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsNo implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Varsler';
	@override String get healthConnect => 'Health Connect';
	@override String get appInfo => 'App Informasjon';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionNo implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Smart Matgjenkjenning';
	@override String get description => 'Ta et bilde og la AI identifisere måltidet ditt';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisNo implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI Analyse';
	@override String get description => 'Få umiddelbare næringsfakta fra beskrivelsene dine';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationNo implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Helseintegrasjon';
	@override String get description => 'Koble til Health Connect for bedre innsikt';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesNo implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Undervektig';
	@override String get healthyWeight => 'Normalvektig';
	@override String get overweight => 'Overvektig';
	@override String get obese => 'Kraftig overvektig';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesNo implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Vi kan hjelpe deg med å lage en sunn plan for å nå en balansert vekt med næringsrike måltider.';
	@override String get healthy => 'Flott jobbet! Du ligger innenfor et sunt område. Vi hjelper deg med å opprettholde din vitalitet og energinivå.';
	@override String overweight({required Object appLabel}) => '${appLabel} vil forenkle reisen din med AI-drevet sporing for å hjelpe deg å nå målet ditt på en komfortabel måte.';
	@override String get obese => 'Vi er her for å støtte deg med personlig veiledning og bærekraftige strategier for dine helse mål.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingNo implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatisk Kaloritracking';
	@override String get description => 'Spor kalorier brent fra treningsappene dine';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsNo implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fremdriftsinnsikter';
	@override String get description => 'Få detaljerte innsikter i helse trendene dine';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationNo implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sømløs integrasjon';
	@override String get description => 'Synkroniser data fra de favoritt helseappene dine';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessNo implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du er ikke alene';
	@override String get genericMessage => 'Forskning viser at konsekvent sporing er den største prediktoren for langsiktig suksess.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'For en ${age} år gammel ${gender} som ønsker å ${goal}, er konsekvent sporing den største prediktoren for suksess.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} gjør det 10 ganger lettere enn å gjøre det manuelt.';
	@override String get getStartedTitle => 'Klar til å komme i gang?';
	@override String get tipPhoto => 'Ta et bilde av måltidene dine for umiddelbar analyse';
	@override String get tipConsistency => 'Registrer konsekvent for å se meningsfull fremgang';
	@override String get tipProgress => 'Spor fremgangen din daglig for å holde deg motivert';
	@override String get button => 'La oss gå';
	@override String get defaultGender => 'individ';
	@override String get defaultGoal => 'en sunnere deg';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileNo implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din Helseprofil';
	@override String bmiDescription({required Object bmi}) => 'Basert på målingene dine, er BMI-en din ${bmi}.';
	@override String get finalizeDescription => 'La oss fullføre profilen din for å tilpasse opplevelsen din.';
	@override String get goalGain => 'øke';
	@override String get goalLose => 'miste';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'For å nå målet ditt, må du ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Du er på målvekten din! Vi hjelper deg med å opprettholde den.';
	@override String get button => 'La oss gå';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleNo implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Utmerket Start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har tatt det første steget mot ${goalText}. Siden du er ${activityText}, vil ${appLabel} justere målene dine for å samsvare med livsstilen din.';
	@override String get personalizedTargets => 'Personlige kalori mål';
	@override String get aiMealDetection => 'AI-drevet måltidsdeteksjon';
	@override String get macroBreakdowns => 'Detaljerte makronæringsnedbrytinger';
	@override String get button => 'La oss gå';
	@override String get defaultGoal => 'dine mål';
	@override String get defaultActivity => 'aktiv';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightNo implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Miste Vekt';
	@override String get description => 'Skap et kaloriunderskudd for å miste vekt';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightNo implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Opprettholde Vekt';
	@override String get description => 'Oppretthold din nåværende vekt';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightNo implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Øke Vekt';
	@override String get description => 'Skap et kaloriesurplus for å øke vekt';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryNo implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Stillesittende';
	@override String get description => 'Lite eller ingen trening';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveNo implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lett Aktiv';
	@override String get description => 'Lett trening 1-3 dager/uke';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveNo implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderat Aktiv';
	@override String get description => 'Moderat trening 3-5 dager/uke';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveNo implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Svært Aktiv';
	@override String get description => 'Hard trening 6-7 dager/uke';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveNo implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ekstremt Aktiv';
	@override String get description => 'Veldig hard trening, fysisk arbeid';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeNo implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Porsjonsstørrelse';
	@override String get description => 'Nøyaktigheten til estimatene avhenger sterkt av din korrekte vurdering av porsjonsstørrelsen.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsNo implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tilberedningsmetoder';
	@override String description({required Object appLabel}) => 'Kokemetoder kan betydelig endre ernæringsinnholdet i maten. Estimatene til ${appLabel} tar kanskje ikke alltid hensyn til disse variasjonene.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsNo implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredienser';
	@override String get description => 'Komplekse retter med mange skjulte ingredienser kan føre til mindre nøyaktige estimater.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsNo implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Databasebegrensninger';
	@override String description({required Object appLabel}) => '${appLabel}s matdatabase er omfattende, men inkluderer kanskje ikke hver eneste matvare eller variasjon.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyNo implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalorienøyaktighet';
	@override String get description => 'Dette estimatet er kun så nøyaktig som ditt registrerte kaloriinntak og utgifter. Unøyaktig logging vil resultere i en unøyaktig projeksjon.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsNo implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologiske Faktorer';
	@override String description({required Object appLabel}) => 'Faktisk vekttap/økning påvirkes av metabolisme, hormoner, søvn, stress, hydrering og andre individuelle faktorer som ${appLabel} ikke kan måle.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightNo implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vekt av Vann & Svingninger';
	@override String get description => 'Normal daglig vekt kan variere betydelig på grunn av vannretensjon, fordøyelse og timing. Estimatet tar ikke hensyn til disse daglige endringene.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceNo implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceNo._(this._root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profesjonell Veiledning';
	@override String get description => 'Ikke bruk dette estimatet til å ta medisinske beslutninger. Konsulter alltid en helsepersonell eller registrert dietetiker for personlig råd om vektkontroll.';
}

/// The flat map containing all translations for locale <no>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsNo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Norsk',
			'flag' => '🇳🇴',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => 'Velkommen til ${appLabel}',
			'onboarding.subtitle' => 'Din personlige kostholdsassistent drevet av AI',
			'onboarding.getStarted' => 'Kom i gang',
			'onboarding.features.foodRecognition.title' => 'Smart Matgjenkjenning',
			'onboarding.features.foodRecognition.description' => 'Ta et bilde og la AI identifisere måltidet ditt',
			'onboarding.features.aiAnalysis.title' => 'AI Analyse',
			'onboarding.features.aiAnalysis.description' => 'Få umiddelbare næringsfakta fra beskrivelsene dine',
			'onboarding.features.healthIntegration.title' => 'Helseintegrasjon',
			'onboarding.features.healthIntegration.description' => 'Koble til Health Connect for bedre innsikt',
			'onboarding.gender.title' => 'Hva er kjønnet ditt?',
			'onboarding.gender.description' => 'Kjønn hjelper oss å nøyaktig beregne din basale metabolisme (BMR).',
			'onboarding.gender.next' => 'Neste',
			'onboarding.height.title' => 'Hvor høy er du?',
			'onboarding.height.description' => 'Høyden din hjelper oss å beregne BMI og energibehov korrekt.',
			'onboarding.height.metric' => 'Metrisk',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Neste',
			'onboarding.weight.currentTitle' => 'Hva veier du nå?',
			'onboarding.weight.currentDescription' => 'Vekten din er viktig for å tilpasse dine daglige mål.',
			'onboarding.weight.targetTitle' => 'Hva er målvekten din?',
			'onboarding.weight.targetDescription' => 'Å sette en målvekt hjelper oss å bestemme din langsiktige plan.',
			'onboarding.weight.metric' => 'Metrisk',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Neste',
			'onboarding.age.title' => 'Når har du bursdag?',
			'onboarding.age.description' => 'Alderen din hjelper oss å beregne dine kaloribehov korrekt.',
			'onboarding.age.next' => 'Neste',
			'onboarding.bmiScale.underweight' => 'Undervektig',
			'onboarding.bmiScale.healthy' => 'Normalvektig',
			'onboarding.bmiScale.overweight' => 'Overvektig',
			'onboarding.bmiScale.obese' => 'Kraftig overvektig',
			'onboarding.bmiScale.categories.underweight' => 'Undervektig',
			'onboarding.bmiScale.categories.healthyWeight' => 'Normalvektig',
			'onboarding.bmiScale.categories.overweight' => 'Overvektig',
			'onboarding.bmiScale.categories.obese' => 'Kraftig overvektig',
			'onboarding.bmiScale.messages.underweight' => 'Vi kan hjelpe deg med å lage en sunn plan for å nå en balansert vekt med næringsrike måltider.',
			'onboarding.bmiScale.messages.healthy' => 'Flott jobbet! Du ligger innenfor et sunt område. Vi hjelper deg med å opprettholde din vitalitet og energinivå.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} vil forenkle reisen din med AI-drevet sporing for å hjelpe deg å nå målet ditt på en komfortabel måte.',
			'onboarding.bmiScale.messages.obese' => 'Vi er her for å støtte deg med personlig veiledning og bærekraftige strategier for dine helse mål.',
			'onboarding.weightGoal.title' => 'Hva er målet ditt?',
			'onboarding.weightGoal.description' => 'Velg målet som best beskriver hva du ønsker å oppnå',
			'onboarding.activityLevel.title' => 'Hvor aktiv er du?',
			'onboarding.activityLevel.description' => 'Dette hjelper oss å beregne dine daglige kalori behov mer nøyaktig',
			'onboarding.healthConnect.title' => 'Koble til Health Connect',
			'onboarding.healthConnect.description' => 'Synkroniser helsedataene dine for bedre innsikt og automatisk kalori sporing',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatisk Kaloritracking',
			'onboarding.healthConnect.automaticTracking.description' => 'Spor kalorier brent fra treningsappene dine',
			'onboarding.healthConnect.progressInsights.title' => 'Fremdriftsinnsikter',
			'onboarding.healthConnect.progressInsights.description' => 'Få detaljerte innsikter i helse trendene dine',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Sømløs integrasjon',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synkroniser data fra de favoritt helseappene dine',
			'onboarding.healthConnect.connected' => 'Health Connect Tilkoblet',
			'onboarding.healthConnect.notConnected' => 'Health Connect Ikke Tilkoblet',
			'onboarding.healthConnect.setup' => 'Sett opp Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Hopp over for nå',
			'onboarding.healthConnect.statusConnected' => 'Health Connect er tilkoblet.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect har blitt tilkoblet med suksess!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Tillatelse nektet. Vennligst aktiver helseforbindelsestillatelser fra telefoninnstillingene dine for ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Feil under oppsett av Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Du er ikke alene',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Forskning viser at konsekvent sporing er den største prediktoren for langsiktig suksess.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'For en ${age} år gammel ${gender} som ønsker å ${goal}, er konsekvent sporing den største prediktoren for suksess.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} gjør det 10 ganger lettere enn å gjøre det manuelt.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Klar til å komme i gang?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Ta et bilde av måltidene dine for umiddelbar analyse',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Registrer konsekvent for å se meningsfull fremgang',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Spor fremgangen din daglig for å holde deg motivert',
			'onboarding.reinforcement.trackingSuccess.button' => 'La oss gå',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individ',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'en sunnere deg',
			'onboarding.reinforcement.healthProfile.title' => 'Din Helseprofil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Basert på målingene dine, er BMI-en din ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'La oss fullføre profilen din for å tilpasse opplevelsen din.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'øke',
			'onboarding.reinforcement.healthProfile.goalLose' => 'miste',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'For å nå målet ditt, må du ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Du er på målvekten din! Vi hjelper deg med å opprettholde den.',
			'onboarding.reinforcement.healthProfile.button' => 'La oss gå',
			'onboarding.reinforcement.goalLifestyle.title' => 'Utmerket Start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har tatt det første steget mot ${goalText}. Siden du er ${activityText}, vil ${appLabel} justere målene dine for å samsvare med livsstilen din.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personlige kalori mål',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-drevet måltidsdeteksjon',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detaljerte makronæringsnedbrytinger',
			'onboarding.reinforcement.goalLifestyle.button' => 'La oss gå',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'dine mål',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiv',
			'tabs.dashboard' => 'Dashbord',
			'tabs.history' => 'Historikk',
			'home.dailyGoal.title' => 'Sett Ditt Daglige Mål',
			'home.dailyGoal.titleSet' => 'Ditt Daglige Mål',
			'home.dailyGoal.description' => 'Klar til å begynne på din velvære reise? Sett ditt daglige kalori mål under for å kickstarte fremdriften din.',
			'home.dailyGoal.descriptionSet' => 'Kompassen din er innstilt! Dette er ditt daglige kalori mål for å guide deg.',
			'home.dailyGoal.yourGoal' => 'Ditt Mål',
			'home.dailyGoal.dailyCalories' => 'Daglige kalorier (kcal)',
			'home.dailyGoal.setGoal' => 'Sett Mål',
			'home.dailyGoal.intake' => 'Inntak',
			'home.dailyGoal.burned' => 'Brent',
			'home.dailyGoal.weightImpact' => 'Vektpåvirkning',
			'home.dailyGoal.estLoss' => 'Estimert tap av',
			'home.dailyGoal.estGain' => 'Estimert økning av',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Daglig Oppsummering',
			'home.dailySummary.calories' => 'Kalorier',
			'home.dailySummary.carbs' => 'Karbohydrater',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Fett',
			'home.dailySummary.fiber' => 'Fiber',
			'home.intakeProgress.title' => 'Dagens Makrofordeling',
			'home.intakeProgress.target' => 'Mål',
			'home.intakeProgress.current' => 'Nåværende',
			'home.intakeHistory.title' => '7-Dagers Makrohistorikk',
			'home.intakeHistory.noHistoryYet' => 'Ingen historikk enda',
			'home.intakeHistory.startLogging' => 'Begynn å loggføre måltider for å se dine\n7-dagers makrotrender her',
			'home.mealLog.title' => 'Loggførte Måltider',
			'home.mealLog.emptyMessage' => 'Ta et bilde av ditt siste måltid for å loggføre her.',
			'home.mealLog.noMealsToday' => 'Ingen måltider registrert for i dag',
			'home.mealLog.seeAllMeals' => 'Se alle måltider',
			'home.mealDescription.title' => 'Rask Legg Til med AI',
			'home.mealDescription.description' => 'Beskriv måltidet ditt, og la AI ta seg av detaljene.',
			'home.mealDescription.hint' => 'f.eks. Til frokost hadde jeg en stor bolle med havregryn med en skivet banan og en skje med whey ...',
			'home.mealDescription.analyzeMeal' => 'Analyser måltid',
			'home.favoriteMeals.title' => 'Favoritter',
			'home.favoriteMeals.description' => 'Legg raskt til ett av dine favorittmåltider.',
			'home.favoriteMeals.noFavorites' => 'Ingen favorittmåltider enda.',
			'home.favoriteMeals.addFavoriteHint' => 'Klikk på stjernen på et måltid for å merke det som favoritt.',
			'home.favoriteMeals.seeAll' => 'Se alle',
			'home.favoriteMeals.add' => 'Legg til',
			'home.mealSnap.title' => 'Ta Bilde & Spor Måltidet Ditt',
			'home.mealSnap.description' => 'Bruk kameraet ditt til å ta et bilde av maten for AI-analyse.',
			'home.mealSnap.openCamera' => 'Åpne Kamera',
			'home.connectHealth.title' => 'Synkroniser med Health Connect',
			'home.connectHealth.description' => 'Synkroniser kostholdsdataene dine med Health Connect',
			'home.connectHealth.install' => 'Installer',
			'home.connectHealth.connect' => 'Koble til',
			'history.noMeals' => 'Ingen måltider registrert',
			'history.emptyMessage' => 'Ta et bilde av ditt siste måltid for å loggføre her.',
			'history.today' => 'I dag',
			'history.yesterday' => 'I går',
			'meal.ohNo' => 'Å nei!',
			'meal.delete' => 'Slett',
			'meal.editMeal' => 'Rediger Måltid',
			'meal.addMeal' => 'Legg til Måltid',
			'meal.saveMeal' => 'Lagre Måltid',
			'meal.save' => 'Lagre',
			'meal.mealName' => 'Måltidsnavn',
			'meal.mealQuantity' => 'Måltidsmengde',
			'meal.mealQuantityHint' => 'f.eks. 1 bolle, 2 skiver',
			'meal.timeOfMeal' => 'Tidspunkt for Måltid',
			'meal.timeOfMealHint' => 'Velg tidspunktet du hadde måltidet',
			'meal.mealType' => 'Måltidstype',
			'meal.nutrition.calories' => 'Kalorier',
			'meal.nutrition.carbs' => 'Karbohydrater (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Fett (g)',
			'meal.nutrition.fiber' => 'Fiber (g)',
			'meal.deleteConfirmation.title' => 'Slett Måltid',
			'meal.deleteConfirmation.message' => 'Er du sikker på at du vil slette denne måltidsoppføringen?',
			'meal.deleteConfirmation.cancel' => 'Avbryt',
			'meal.deleteConfirmation.delete' => 'Slett',
			'meal.addedToLog' => 'Måltid lagt til loggen din!',
			'meal.couldNotAdd' => ({required Object error}) => 'Kunne ikke legge til måltid: ${error}',
			'meal.removedFromFavorites' => 'Fjernet fra favoritter!',
			'meal.savedAsFavorite' => 'Måltid lagret som favoritt!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Kunne ikke oppdatere favoritt: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Feil under prosessering: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Feil under prosessering av bilde: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Feil under komprimering av bilde: ${error}',
			'meal.failedToSave' => 'Kunne ikke lagre data. Vennligst prøv igjen.',
			'favorites.title' => 'Favoritter',
			'favorites.empty' => 'Ingen favorittmåltider enda.',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Ingen profildata funnet',
			'profile.yourProfile' => 'Din Profil',
			'profile.viewAndManage' => 'Se og administrer helseinformasjonen din',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'GRUNNLEGGENDE INFORMASJON',
			'profile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'profile.sections.calculatedValues' => 'BEREGNEDE VERDIER',
			'profile.gender' => 'Kjønn',
			'profile.height' => 'Høyde',
			'profile.weight' => 'Vekt',
			'profile.age' => 'Alder',
			'profile.weightGoal' => 'Vektmål',
			'profile.activityLevel' => 'Aktivitetsnivå',
			'profile.healthMetrics' => 'Helseparametere',
			'profile.notSet' => 'Ikke angitt',
			'profile.years' => 'år',
			'profile.updatedSuccessfully' => 'Profil oppdatert med suksess!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Daglig Mål',
			'profile.calculatedValues.calPerDay' => 'kal/dag',
			'profile.calculatedValues.notAvailable' => 'Ikke tilgjengelig',
			'healthScore.title' => 'Helsescore',
			'healthScore.whyThisScore' => 'Hvorfor denne scoren?',
			'healthScore.note' => 'Denne scoren er et AI-estimat basert på de identifiserte ingrediensene og næringsinnholdet. Konsulter alltid en profesjonell for kostholdsråd.',
			'healthScore.unhealthy' => 'Usunn',
			'healthScore.healthy' => 'Sunn',
			'healthScore.neutral' => 'Nøytral',
			'editProfile.title' => 'Rediger Profil',
			'editProfile.sections.personalInformation' => 'PERSONLIG INFORMASJON',
			'editProfile.sections.physicalMeasurements' => 'FYSISKE MÅLINGER',
			'editProfile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'editProfile.gender' => 'Kjønn',
			'editProfile.dateOfBirth' => 'Fødselsdato',
			'editProfile.height' => 'Høyde',
			'editProfile.weight' => 'Vekt',
			'editProfile.weightGoal' => 'Vektmål',
			'editProfile.activityLevel' => 'Aktivitetsnivå',
			'editProfile.metric' => 'Metrisk',
			'editProfile.imperial' => 'Imperial',
			'editProfile.metricCm' => 'Metrisk (cm)',
			'editProfile.imperialFtIn' => 'Imperial (ft/in)',
			'editProfile.metricKg' => 'Metrisk (kg)',
			'editProfile.imperialLbs' => 'Imperial (lbs)',
			'editProfile.genders.male' => 'Mann',
			'editProfile.genders.female' => 'Kvinne',
			'editProfile.genders.other' => 'Annet',
			'editProfile.weightGoals.loseWeight.name' => 'Miste Vekt',
			'editProfile.weightGoals.loseWeight.description' => 'Skap et kaloriunderskudd for å miste vekt',
			'editProfile.weightGoals.maintainWeight.name' => 'Opprettholde Vekt',
			'editProfile.weightGoals.maintainWeight.description' => 'Oppretthold din nåværende vekt',
			'editProfile.weightGoals.gainWeight.name' => 'Øke Vekt',
			'editProfile.weightGoals.gainWeight.description' => 'Skap et kaloriesurplus for å øke vekt',
			'editProfile.activityLevels.sedentary.name' => 'Stillesittende',
			'editProfile.activityLevels.sedentary.description' => 'Lite eller ingen trening',
			'editProfile.activityLevels.lightlyActive.name' => 'Lett Aktiv',
			'editProfile.activityLevels.lightlyActive.description' => 'Lett trening 1-3 dager/uke',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderat Aktiv',
			'editProfile.activityLevels.moderatelyActive.description' => 'Moderat trening 3-5 dager/uke',
			'editProfile.activityLevels.veryActive.name' => 'Svært Aktiv',
			'editProfile.activityLevels.veryActive.description' => 'Hard trening 6-7 dager/uke',
			'editProfile.activityLevels.extremelyActive.name' => 'Ekstremt Aktiv',
			'editProfile.activityLevels.extremelyActive.description' => 'Veldig hard trening, fysisk arbeid',
			'settings.title' => 'Innstillinger',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALISERING',
			'settings.sections.notifications' => 'NOTIFIKASJONER',
			'settings.sections.supportAndLegal' => 'HJELP & JURIDISK',
			'settings.sections.dangerZone' => 'FARLIG SONE',
			'settings.sections.developer' => 'UTVIKLER',
			'settings.editProfile.title' => 'Rediger Profil',
			'settings.editProfile.subtitle' => 'Oppdater din personlige informasjon',
			'settings.language.title' => 'Språk',
			'settings.language.subtitle' => 'Velg ditt foretrukne språk',
			'settings.language.searchHint' => 'Søk etter språk...',
			'settings.language.noResults' => 'Ingen resultater funnet',
			'settings.heightUnit.title' => 'Høydeenhet',
			'settings.weightUnit.title' => 'Vektenhet',
			'settings.mealReminders.title' => 'Måltidspåminnelser',
			'settings.mealReminders.subtitle' => 'Hold deg på sporet med tidsriktige varsler',
			'settings.theme.title' => 'Tema',
			'settings.theme.subtitle' => 'Velg ditt foretrukne tema',
			'settings.theme.light' => 'Lys',
			'settings.theme.dark' => 'Mørk',
			'settings.theme.system' => 'System',
			'settings.sendFeedback.title' => 'Send tilbakemelding',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Hjelp oss med å forbedre ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} App Tilbakemelding',
			'settings.sendFeedback.emailBodyPrefix' => 'Vennligst gi tilbakemeldingen din nedenfor:',
			'settings.sendFeedback.appVersion' => 'App Versjon',
			'settings.sendFeedback.device' => 'Enhet',
			'settings.sendFeedback.osVersion' => 'OS Versjon',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Slett Alle Data',
			'settings.clearAllData.subtitle' => 'Slett uopprettelig all informasjonen din',
			'settings.clearAllData.confirmationTitle' => 'Slette Alle Data?',
			'settings.clearAllData.confirmationMessage' => 'Denne handlingen kan ikke angres. Alle dine loggførte måltider, favoritter og profilinnstillinger vil bli permanent slettet.',
			'settings.clearAllData.cancel' => 'Avbryt',
			'settings.clearAllData.clearEverything' => 'Slett Alt',
			'settings.debugOptions.title' => 'Feilsøkingsalternativer',
			'settings.developerModeEnabled' => 'Utviklermodus aktivert!',
			'reminders.title' => 'Hold deg på sporet med påminnelser',
			'reminders.description' => 'Få milde påminnelser om å loggføre måltidene dine og holde deg konsekvent med dine kostholdsmål',
			'reminders.notificationsEnabled' => 'Varsler Aktivert',
			'reminders.notificationsDisabled' => 'Varsler Deaktivert',
			'reminders.enabledSubtitle' => 'Du vil motta måltidspåminnelser',
			'reminders.disabledSubtitle' => 'Aktiver varsler for å få måltidspåminnelser',
			'reminders.mealReminders' => 'Måltidspåminnelser',
			'reminders.breakfast' => 'Frokost',
			'reminders.lunch' => 'Lunsj',
			'reminders.dinner' => 'Middag',
			'reminders.snack' => 'Snack',
			'reminders.unknown' => 'Ukjent',
			'reminders.change' => 'Endre',
			'reminders.enableNotifications' => 'Aktiver Varsler',
			'reminders.skipForNow' => 'Hopp over for nå',
			'reminders.saveChanges' => 'Lagre Endringer',
			'reminders.enabledSuccessfully' => 'Varsler aktivert med suksess!',
			'reminders.permissionDenied' => 'Varslingstillatelse nektert',
			'reminders.errorEnabling' => ({required Object error}) => 'Feil ved aktivering av varsler: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Feil ved fullføring av oppsett: ${error}',
			'notifications.breakfast.title' => 'Frokost Tid! 🍳',
			'notifications.breakfast.body' => 'Ikke glem å loggføre frokosten din',
			'notifications.lunch.title' => 'Lunsj Tid! 🥗',
			'notifications.lunch.body' => 'Tid for å loggføre lunsjen din',
			'notifications.dinner.title' => 'Middag Tid! 🍽️',
			'notifications.dinner.body' => 'Ikke glem å loggføre middagen din',
			'notifications.snack.title' => 'Snack Tid! 🍎',
			'notifications.snack.body' => 'Tid for en sunn snack',
			'notifications.test.title' => 'Testvarsling',
			'login.title' => 'Logg Inn',
			'login.signInWithGoogle' => 'Logg inn med Google',
			'login.signInFailed' => 'Google Innlogging mislyktes eller ble avbrutt.',
			'disclaimer.pleaseNote' => 'Vennligst merk',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} gir estimert ernæringsinformasjon. Nøyaktigheten avhenger av innspillene dine og variasjoner i maten. Bruk som en veiledning, ikke som en definitiv kilde. Konsulter en profesjonell for personlig kostholdsrådgivning.',
			'disclaimer.snap.portionSize.title' => 'Porsjonsstørrelse',
			'disclaimer.snap.portionSize.description' => 'Nøyaktigheten til estimatene avhenger sterkt av din korrekte vurdering av porsjonsstørrelsen.',
			'disclaimer.snap.preparationMethods.title' => 'Tilberedningsmetoder',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Kokemetoder kan betydelig endre ernæringsinnholdet i maten. Estimatene til ${appLabel} tar kanskje ikke alltid hensyn til disse variasjonene.',
			'disclaimer.snap.ingredients.title' => 'Ingredienser',
			'disclaimer.snap.ingredients.description' => 'Komplekse retter med mange skjulte ingredienser kan føre til mindre nøyaktige estimater.',
			'disclaimer.snap.databaseLimitations.title' => 'Databasebegrensninger',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}s matdatabase er omfattende, men inkluderer kanskje ikke hver eneste matvare eller variasjon.',
			'disclaimer.weightEstimate.title' => 'Om Vekt Estimat',
			'disclaimer.weightEstimate.description' => 'Den projiserte vektforandringen er et teoretisk estimat basert på den enkle kalori-inn vs. kalori-ut modellen. Det er ment for motivasjonsveiledning, ikke som en prediksjon av din faktiske vekt.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalorienøyaktighet',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Dette estimatet er kun så nøyaktig som ditt registrerte kaloriinntak og utgifter. Unøyaktig logging vil resultere i en unøyaktig projeksjon.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologiske Faktorer',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Faktisk vekttap/økning påvirkes av metabolisme, hormoner, søvn, stress, hydrering og andre individuelle faktorer som ${appLabel} ikke kan måle.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Vekt av Vann & Svingninger',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normal daglig vekt kan variere betydelig på grunn av vannretensjon, fordøyelse og timing. Estimatet tar ikke hensyn til disse daglige endringene.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Profesjonell Veiledning',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Ikke bruk dette estimatet til å ta medisinske beslutninger. Konsulter alltid en helsepersonell eller registrert dietetiker for personlig råd om vektkontroll.',
			'common.close' => 'Lukk',
			'common.kContinue' => 'Fortsett',
			'errors.loadingProfileData' => 'Feil ved lasting av profildata',
			'errors.somethingWentWrong' => 'Noe gikk galt.',
			'debug.title' => 'Feilsøkingsalternativer',
			'debug.sections.notifications' => 'Varsler',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.appInfo' => 'App Informasjon',
			'debug.showActiveNotifications' => 'Vis Aktive Varsler',
			'debug.scheduleTestNotification' => 'Planlegg Testvarsel (10s)',
			'debug.triggerBreakfastNotification' => 'Utgi Frokost Varsel',
			'debug.cancelAllNotifications' => 'Avbryt Alle Varsler',
			'debug.activeNotifications' => 'Aktive Varsler',
			'debug.noTitle' => 'Ingen Tittel',
			'debug.noBody' => 'Ingen Innhold',
			'debug.fetchTodaysSteps' => 'Hent Dagens Skritt',
			'debug.fetchTodaysCalories' => 'Hent Dagens Kalorier',
			'debug.fetchLatestWeight' => 'Hent Nyeste Vekt',
			'debug.fetchLatestHeight' => 'Hent Nyeste Høyde',
			'debug.writeTestWeight' => 'Skriv Testvekt (70kg)',
			'debug.writeTestHeight' => 'Skriv Testhøyde (175cm)',
			'debug.syncLast7Days' => 'Synkroniser Siste 7 Dager',
			'debug.sync7DaysTitle' => '7-Dagers Synkronisering',
			'debug.checkCurrentLocale' => 'Sjekk Nåværende Språk',
			'debug.currentLocale' => 'Nåværende Språk',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Språk: ${languageCode}\nLand: ${countryCode}\nEnhetssystem: ${unitSystem}',
			'debug.latestWeight' => 'Nyeste Vekt',
			'debug.latestHeight' => 'Nyeste Høyde',
			'debug.todaysCalories' => 'Dagens Kalorier',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'Totalt brente kalorier: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'Suksess med å hente ${count} datapunkter for Skritt, Kalorier og Vekt de siste 7 dagene.',
			'debug.noWeightData' => 'Ingen vektdata funnet de siste 30 dagene.',
			'debug.noHeightData' => 'Ingen høyde data funnet det siste året.',
			'debug.noCalorieData' => 'Ingen kalori data funnet for i dag.',
			'debug.weightWritten' => 'Testvekt (70kg) skrevet med suksess.',
			'debug.weightWriteFailed' => 'Kunne ikke skrive testvekt.',
			'debug.heightWritten' => 'Testhøyde (175cm) skrevet med suksess.',
			'debug.heightWriteFailed' => 'Kunne ikke skrive testhøyde.',
			'debug.noNotifications' => 'Ingen aktive varsler.',
			'debug.testNotificationScheduled' => 'Testvarsel planlagt til om 10 sekunder.',
			'debug.testNotificationBody' => 'Dette er et testvarsel planlagt til om 10 sekunder.',
			'debug.breakfastNotificationTriggered' => 'Frokostvarsel utløst.',
			'debug.allNotificationsCancelled' => 'Alle varsler avbrutt.',
			'debug.fetchingData' => 'Henter data for de siste 7 dagene...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'health.syncFailed' => 'Kunne ikke synkronisere med Health Connect',
			'health.mealSynced' => 'Måltid synkronisert med Health Connect',
			_ => null,
		};
	}
}
