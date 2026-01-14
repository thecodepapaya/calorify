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
class TranslationsNl with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsNl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.nl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <nl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsNl _root = this; // ignore: unused_field

	@override 
	TranslationsNl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsNl(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Nederlands';
	@override String get flag => '🇳🇱';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsOnboardingNl onboarding = _TranslationsOnboardingNl._(_root);
	@override late final _TranslationsTabsNl tabs = _TranslationsTabsNl._(_root);
	@override late final _TranslationsHomeNl home = _TranslationsHomeNl._(_root);
	@override late final _TranslationsHistoryNl history = _TranslationsHistoryNl._(_root);
	@override late final _TranslationsMealNl meal = _TranslationsMealNl._(_root);
	@override late final _TranslationsFavoritesNl favorites = _TranslationsFavoritesNl._(_root);
	@override late final _TranslationsProfileNl profile = _TranslationsProfileNl._(_root);
	@override late final _TranslationsHealthScoreNl healthScore = _TranslationsHealthScoreNl._(_root);
	@override late final _TranslationsEditProfileNl editProfile = _TranslationsEditProfileNl._(_root);
	@override late final _TranslationsSettingsNl settings = _TranslationsSettingsNl._(_root);
	@override late final _TranslationsRemindersNl reminders = _TranslationsRemindersNl._(_root);
	@override late final _TranslationsNotificationsNl notifications = _TranslationsNotificationsNl._(_root);
	@override late final _TranslationsLoginNl login = _TranslationsLoginNl._(_root);
	@override late final _TranslationsDisclaimerNl disclaimer = _TranslationsDisclaimerNl._(_root);
	@override late final _TranslationsCommonNl common = _TranslationsCommonNl._(_root);
	@override late final _TranslationsErrorsNl errors = _TranslationsErrorsNl._(_root);
	@override late final _TranslationsDebugNl debug = _TranslationsDebugNl._(_root);
	@override late final _TranslationsHealthNl health = _TranslationsHealthNl._(_root);
}

// Path: onboarding
class _TranslationsOnboardingNl implements TranslationsOnboardingEn {
	_TranslationsOnboardingNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Welkom bij ${appLabel}';
	@override String get subtitle => 'Jouw persoonlijke voedingsgenoot aangedreven door AI';
	@override String get getStarted => 'Aan de Slag';
	@override late final _TranslationsOnboardingFeaturesNl features = _TranslationsOnboardingFeaturesNl._(_root);
	@override late final _TranslationsOnboardingGenderNl gender = _TranslationsOnboardingGenderNl._(_root);
	@override late final _TranslationsOnboardingHeightNl height = _TranslationsOnboardingHeightNl._(_root);
	@override late final _TranslationsOnboardingWeightNl weight = _TranslationsOnboardingWeightNl._(_root);
	@override late final _TranslationsOnboardingAgeNl age = _TranslationsOnboardingAgeNl._(_root);
	@override late final _TranslationsOnboardingBmiScaleNl bmiScale = _TranslationsOnboardingBmiScaleNl._(_root);
	@override late final _TranslationsOnboardingWeightGoalNl weightGoal = _TranslationsOnboardingWeightGoalNl._(_root);
	@override late final _TranslationsOnboardingActivityLevelNl activityLevel = _TranslationsOnboardingActivityLevelNl._(_root);
	@override late final _TranslationsOnboardingHealthConnectNl healthConnect = _TranslationsOnboardingHealthConnectNl._(_root);
	@override late final _TranslationsOnboardingReinforcementNl reinforcement = _TranslationsOnboardingReinforcementNl._(_root);
}

// Path: tabs
class _TranslationsTabsNl implements TranslationsTabsEn {
	_TranslationsTabsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Dashboard';
	@override String get history => 'Geschiedenis';
}

// Path: home
class _TranslationsHomeNl implements TranslationsHomeEn {
	_TranslationsHomeNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalNl dailyGoal = _TranslationsHomeDailyGoalNl._(_root);
	@override late final _TranslationsHomeDailySummaryNl dailySummary = _TranslationsHomeDailySummaryNl._(_root);
	@override late final _TranslationsHomeIntakeProgressNl intakeProgress = _TranslationsHomeIntakeProgressNl._(_root);
	@override late final _TranslationsHomeIntakeHistoryNl intakeHistory = _TranslationsHomeIntakeHistoryNl._(_root);
	@override late final _TranslationsHomeMealLogNl mealLog = _TranslationsHomeMealLogNl._(_root);
	@override late final _TranslationsHomeMealDescriptionNl mealDescription = _TranslationsHomeMealDescriptionNl._(_root);
	@override late final _TranslationsHomeFavoriteMealsNl favoriteMeals = _TranslationsHomeFavoriteMealsNl._(_root);
	@override late final _TranslationsHomeMealSnapNl mealSnap = _TranslationsHomeMealSnapNl._(_root);
	@override late final _TranslationsHomeConnectHealthNl connectHealth = _TranslationsHomeConnectHealthNl._(_root);
}

// Path: history
class _TranslationsHistoryNl implements TranslationsHistoryEn {
	_TranslationsHistoryNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Geen maaltijden geregistreerd';
	@override String get emptyMessage => 'Neem een foto van je laatste maaltijd om deze hier in te voeren.';
	@override String get today => 'Vandaag';
	@override String get yesterday => 'Gisteren';
}

// Path: meal
class _TranslationsMealNl implements TranslationsMealEn {
	_TranslationsMealNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Oh nee!';
	@override String get delete => 'Verwijderen';
	@override String get editMeal => 'Bewerk Maaltijd';
	@override String get addMeal => 'Voeg Maaltijd Toe';
	@override String get saveMeal => 'Sla Maaltijd Op';
	@override String get save => 'Opslaan';
	@override String get mealName => 'Maaltijd Naam';
	@override String get mealQuantity => 'Maaltijd Hoeveelheid';
	@override String get mealQuantityHint => 'bijv., 1 kom, 2 plakken';
	@override String get timeOfMeal => 'Tijd van Maaltijd';
	@override String get timeOfMealHint => 'Selecteer de tijd waarop je je maaltijd had';
	@override String get mealType => 'Maaltijd Type';
	@override late final _TranslationsMealNutritionNl nutrition = _TranslationsMealNutritionNl._(_root);
	@override late final _TranslationsMealDeleteConfirmationNl deleteConfirmation = _TranslationsMealDeleteConfirmationNl._(_root);
	@override String get addedToLog => 'Maaltijd toegevoegd aan je logboek!';
	@override String couldNotAdd({required Object error}) => 'Kon maaltijd niet toevoegen: ${error}';
	@override String get removedFromFavorites => 'Verwijderd uit favorieten!';
	@override String get savedAsFavorite => 'Maaltijd opgeslagen als favoriet!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Kon favoriet niet bijwerken: ${error}';
	@override String failedToProcess({required Object error}) => 'Kon niet verwerken: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Kon afbeelding niet verwerken: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Fout bij het comprimeren van afbeelding: ${error}';
	@override String get failedToSave => 'Kon gegevens niet opslaan. Probeer het opnieuw.';
}

// Path: favorites
class _TranslationsFavoritesNl implements TranslationsFavoritesEn {
	_TranslationsFavoritesNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorieten';
	@override String get empty => 'Nog geen favoriete maaltijden.';
}

// Path: profile
class _TranslationsProfileNl implements TranslationsProfileEn {
	_TranslationsProfileNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profiel';
	@override String get noProfileData => 'Geen profielgegevens gevonden';
	@override String get yourProfile => 'Je Profiel';
	@override String get viewAndManage => 'Bekijk en beheer je gezondheidsinformatie';
	@override late final _TranslationsProfileSectionsNl sections = _TranslationsProfileSectionsNl._(_root);
	@override String get gender => 'Geslacht';
	@override String get height => 'Lengte';
	@override String get weight => 'Gewicht';
	@override String get age => 'Leeftijd';
	@override String get weightGoal => 'Gewichtsdoel';
	@override String get activityLevel => 'Activiteitsniveau';
	@override String get healthMetrics => 'Gezondheidsmetrics';
	@override String get notSet => 'Niet ingesteld';
	@override String get years => 'jaren';
	@override String get updatedSuccessfully => 'Profiel succesvol bijgewerkt!';
	@override late final _TranslationsProfileCalculatedValuesNl calculatedValues = _TranslationsProfileCalculatedValuesNl._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreNl implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gezondheidsscore';
	@override String get whyThisScore => 'Waarom deze score?';
	@override String get note => 'Deze score is een AI-schatting op basis van de geïdentificeerde ingrediënten en voedingsdichtheid. Raadpleeg altijd een professional voor dieetadvies.';
	@override String get unhealthy => 'Ongezond';
	@override String get healthy => 'Gezond';
	@override String get neutral => 'Neutraal';
}

// Path: editProfile
class _TranslationsEditProfileNl implements TranslationsEditProfileEn {
	_TranslationsEditProfileNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bewerk Profiel';
	@override late final _TranslationsEditProfileSectionsNl sections = _TranslationsEditProfileSectionsNl._(_root);
	@override String get gender => 'Geslacht';
	@override String get dateOfBirth => 'Geboortedatum';
	@override String get height => 'Lengte';
	@override String get weight => 'Gewicht';
	@override String get weightGoal => 'Gewichtsdoel';
	@override String get activityLevel => 'Activiteitsniveau';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperiaal';
	@override String get metricCm => 'Metrisch (cm)';
	@override String get imperialFtIn => 'Imperiaal (ft/in)';
	@override String get metricKg => 'Metrisch (kg)';
	@override String get imperialLbs => 'Imperiaal (lbs)';
	@override late final _TranslationsEditProfileGendersNl genders = _TranslationsEditProfileGendersNl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsNl weightGoals = _TranslationsEditProfileWeightGoalsNl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsNl activityLevels = _TranslationsEditProfileActivityLevelsNl._(_root);
}

// Path: settings
class _TranslationsSettingsNl implements TranslationsSettingsEn {
	_TranslationsSettingsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Instellingen';
	@override late final _TranslationsSettingsSectionsNl sections = _TranslationsSettingsSectionsNl._(_root);
	@override late final _TranslationsSettingsEditProfileNl editProfile = _TranslationsSettingsEditProfileNl._(_root);
	@override late final _TranslationsSettingsLanguageNl language = _TranslationsSettingsLanguageNl._(_root);
	@override late final _TranslationsSettingsHeightUnitNl heightUnit = _TranslationsSettingsHeightUnitNl._(_root);
	@override late final _TranslationsSettingsWeightUnitNl weightUnit = _TranslationsSettingsWeightUnitNl._(_root);
	@override late final _TranslationsSettingsMealRemindersNl mealReminders = _TranslationsSettingsMealRemindersNl._(_root);
	@override late final _TranslationsSettingsThemeNl theme = _TranslationsSettingsThemeNl._(_root);
	@override late final _TranslationsSettingsSendFeedbackNl sendFeedback = _TranslationsSettingsSendFeedbackNl._(_root);
	@override late final _TranslationsSettingsClearAllDataNl clearAllData = _TranslationsSettingsClearAllDataNl._(_root);
	@override late final _TranslationsSettingsDebugOptionsNl debugOptions = _TranslationsSettingsDebugOptionsNl._(_root);
	@override String get developerModeEnabled => 'Ontwikkelaarsmode ingeschakeld!';
}

// Path: reminders
class _TranslationsRemindersNl implements TranslationsRemindersEn {
	_TranslationsRemindersNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Blijf op koers met herinneringen';
	@override String get description => 'Krijg vriendelijke herinneringen om je maaltijden bij te houden en consistent te blijven met je voedingsdoelen';
	@override String get notificationsEnabled => 'Meldingen Ingeschakeld';
	@override String get notificationsDisabled => 'Meldingen Uitgeschakeld';
	@override String get enabledSubtitle => 'Je ontvangt maaltijdherinneringen';
	@override String get disabledSubtitle => 'Schakel meldingen in om maaltijdherinneringen te ontvangen';
	@override String get mealReminders => 'Maaltijdherinneringen';
	@override String get breakfast => 'Ontbijt';
	@override String get lunch => 'Lunch';
	@override String get dinner => 'Diner';
	@override String get snack => 'Tussendoortje';
	@override String get unknown => 'Onbekend';
	@override String get change => 'Wijzig';
	@override String get enableNotifications => 'Meldingen Inschakelen';
	@override String get skipForNow => 'Voor nu overslaan';
	@override String get saveChanges => 'Wijzigingen Opslaan';
	@override String get enabledSuccessfully => 'Meldingen succesvol ingeschakeld!';
	@override String get permissionDenied => 'Toestemming voor meldingen geweigerd';
	@override String errorEnabling({required Object error}) => 'Fout bij het inschakelen van meldingen: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Fout bij het voltooien van de instellingen: ${error}';
}

// Path: notifications
class _TranslationsNotificationsNl implements TranslationsNotificationsEn {
	_TranslationsNotificationsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastNl breakfast = _TranslationsNotificationsBreakfastNl._(_root);
	@override late final _TranslationsNotificationsLunchNl lunch = _TranslationsNotificationsLunchNl._(_root);
	@override late final _TranslationsNotificationsDinnerNl dinner = _TranslationsNotificationsDinnerNl._(_root);
	@override late final _TranslationsNotificationsSnackNl snack = _TranslationsNotificationsSnackNl._(_root);
	@override late final _TranslationsNotificationsTestNl test = _TranslationsNotificationsTestNl._(_root);
}

// Path: login
class _TranslationsLoginNl implements TranslationsLoginEn {
	_TranslationsLoginNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inloggen';
	@override String get signInWithGoogle => 'Inloggen met Google';
	@override String get signInFailed => 'Google-inloggen mislukt of geannuleerd.';
}

// Path: disclaimer
class _TranslationsDisclaimerNl implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Gelieve Op Te Merken';
	@override late final _TranslationsDisclaimerSnapNl snap = _TranslationsDisclaimerSnapNl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateNl weightEstimate = _TranslationsDisclaimerWeightEstimateNl._(_root);
}

// Path: common
class _TranslationsCommonNl implements TranslationsCommonEn {
	_TranslationsCommonNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get close => 'Sluiten';
	@override String get kContinue => 'Doorgaan';
}

// Path: errors
class _TranslationsErrorsNl implements TranslationsErrorsEn {
	_TranslationsErrorsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Fout bij het laden van profielgegevens';
	@override String get somethingWentWrong => 'Er is iets misgegaan.';
}

// Path: debug
class _TranslationsDebugNl implements TranslationsDebugEn {
	_TranslationsDebugNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug Opties';
	@override late final _TranslationsDebugSectionsNl sections = _TranslationsDebugSectionsNl._(_root);
	@override String get showActiveNotifications => 'Toon Actieve Meldingen';
	@override String get scheduleTestNotification => 'Plan Testmelding (10s)';
	@override String get triggerBreakfastNotification => 'Activeer Ontbijtmelding';
	@override String get cancelAllNotifications => 'Annuleer Alle Meldingen';
	@override String get activeNotifications => 'Actieve Meldingen';
	@override String get noTitle => 'Geen Titel';
	@override String get noBody => 'Geen Body';
	@override String get fetchTodaysSteps => 'Haal Vandaag\'s Stappen Op';
	@override String get fetchTodaysCalories => 'Haal Vandaag\'s Calorieën Op';
	@override String get fetchLatestWeight => 'Haal Laatste Gewicht Op';
	@override String get fetchLatestHeight => 'Haal Laatste Lengte Op';
	@override String get writeTestWeight => 'Schrijf Testgewicht (70kg)';
	@override String get writeTestHeight => 'Schrijf Testlengte (175cm)';
	@override String get syncLast7Days => 'Synchroniseer Laatste 7 Dagen';
	@override String get sync7DaysTitle => '7-Daagse Synchronisatie';
	@override String get checkCurrentLocale => 'Controleer Huidige Locale';
	@override String get currentLocale => 'Huidige Locale';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Taal: ${languageCode}\nLand: ${countryCode}\nEenheidssysteem: ${unitSystem}';
	@override String get latestWeight => 'Laatste Gewicht';
	@override String get latestHeight => 'Laatste Lengte';
	@override String get todaysCalories => 'Vandaag\'s Calorieën';
	@override String totalCaloriesBurned({required Object calories}) => 'Totaal verbrande calorieën: ${calories}';
	@override String syncSuccess({required Object count}) => 'Met succes ${count} gegevenspunten opgehaald voor Stappen, Calorieën en Gewicht over de afgelopen 7 dagen.';
	@override String get noWeightData => 'Geen gewichtsgegevens gevonden in de afgelopen 30 dagen.';
	@override String get noHeightData => 'Geen lengtedata gevonden in het afgelopen jaar.';
	@override String get noCalorieData => 'Geen caloriedata gevonden voor vandaag.';
	@override String get weightWritten => 'Testgewicht (70kg) succesvol geschreven.';
	@override String get weightWriteFailed => 'Kon testgewicht niet schrijven.';
	@override String get heightWritten => 'Testlengte (175cm) succesvol geschreven.';
	@override String get heightWriteFailed => 'Kon testlengte niet schrijven.';
	@override String get noNotifications => 'Geen actieve meldingen.';
	@override String get testNotificationScheduled => 'Testmelding gepland voor 10 seconden vanaf nu.';
	@override String get testNotificationBody => 'Dit is een testmelding gepland voor 10 seconden vanaf nu.';
	@override String get breakfastNotificationTriggered => 'Ontbijtmelding geactiveerd.';
	@override String get allNotificationsCancelled => 'Alle meldingen geannuleerd.';
	@override String get fetchingData => 'Gegevens ophalen voor de afgelopen 7 dagen...';
	@override String id({required Object id}) => 'ID: ${id}';
}

// Path: health
class _TranslationsHealthNl implements TranslationsHealthEn {
	_TranslationsHealthNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Kon niet synchroniseren met Health Connect';
	@override String get mealSynced => 'Maaltijd gesynchroniseerd met Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesNl implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionNl foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionNl._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisNl aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisNl._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationNl healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationNl._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderNl implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wat is je geslacht?';
	@override String get description => 'Geslacht helpt ons om je basaal metabolisme (BMR) nauwkeurig te berekenen.';
	@override String get next => 'Volgende';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightNl implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hoe lang ben je?';
	@override String get description => 'Je lengte helpt ons om je BMI en energiebehoeften nauwkeurig te berekenen.';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperiaal';
	@override String get next => 'Volgende';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightNl implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Wat is je huidige gewicht?';
	@override String get currentDescription => 'Je huidige gewicht is essentieel voor het personaliseren van je dagelijkse doelen.';
	@override String get targetTitle => 'Wat is je streefgewicht?';
	@override String get targetDescription => 'Een doelgewicht instellen helpt ons om je langetermijnplan te bepalen.';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperiaal';
	@override String get next => 'Volgende';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeNl implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wanneer is je verjaardag?';
	@override String get description => 'Je leeftijd helpt ons om je caloriebehoefte nauwkeurig te berekenen.';
	@override String get next => 'Volgende';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleNl implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Ondergewicht';
	@override String get healthy => 'Gezond';
	@override String get overweight => 'Overgewicht';
	@override String get obese => 'Obesitas';
	@override late final _TranslationsOnboardingBmiScaleCategoriesNl categories = _TranslationsOnboardingBmiScaleCategoriesNl._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesNl messages = _TranslationsOnboardingBmiScaleMessagesNl._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalNl implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wat is je doel?';
	@override String get description => 'Kies het doel dat het beste beschrijft wat je wilt bereiken';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelNl implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hoe actief ben je?';
	@override String get description => 'Dit helpt ons om je dagelijkse caloriebehoefte nauwkeuriger te berekenen';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectNl implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verbind met Health Connect';
	@override String get description => 'Synchroniseer je gezondheidsgegevens voor betere inzichten en automatische calorie-tracking';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingNl automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingNl._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsNl progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsNl._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationNl seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationNl._(_root);
	@override String get connected => 'Health Connect Verbonden';
	@override String get notConnected => 'Health Connect Niet Verbonden';
	@override String get setup => 'Instellingen Health Connect';
	@override String get skipForNow => 'Voor nu overslaan';
	@override String get statusConnected => 'Health Connect is verbonden.';
	@override String get statusSuccess => 'Health Connect is succesvol verbonden!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Toestemming geweigerd. Schakel de Health Connect-permissies in via de instellingen van je telefoon voor ${appLabel}.';
	@override String statusError({required Object error}) => 'Fout bij het instellen van Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementNl implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessNl trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessNl._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileNl healthProfile = _TranslationsOnboardingReinforcementHealthProfileNl._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleNl goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleNl._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalNl implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stel Je Dagdoel In';
	@override String get titleSet => 'Je Dagdoel';
	@override String get description => 'Klaar om aan je welzijnsreis te beginnen? Stel hieronder je dagelijkse calorie-target in om je voortgang te starten.';
	@override String get descriptionSet => 'Je kompas is ingesteld! Dit is je dagelijkse calorie-target om je te begeleiden.';
	@override String get yourGoal => 'Je Doel';
	@override String get dailyCalories => 'Dagelijkse calorieën (kcal)';
	@override String get setGoal => 'Stel Doel In';
	@override String get intake => 'Inname';
	@override String get burned => 'Verbrand';
	@override String get weightImpact => 'Gewichtsimpact';
	@override String get estLoss => 'Geschatte verlies van';
	@override String get estGain => 'Geschatte winst van';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryNl implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagelijkse Samenvatting';
	@override String get calories => 'Calorieën';
	@override String get carbs => 'Koolhydraten';
	@override String get protein => 'Eiwit';
	@override String get fat => 'Vetten';
	@override String get fiber => 'Vezels';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressNl implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vandaag\'s Macro Verhoudingen';
	@override String get target => 'Doel';
	@override String get current => 'Huidig';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryNl implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => '7-Daagse Macro Geschiedenis';
	@override String get noHistoryYet => 'Geen geschiedenis tot nu toe';
	@override String get startLogging => 'Begin met het bijhouden van maaltijden om je\n7-daagse macrotrends hier te zien';
}

// Path: home.mealLog
class _TranslationsHomeMealLogNl implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingevoerde Maaltijden';
	@override String get emptyMessage => 'Neem een foto van je laatste maaltijd om deze hier in te voeren.';
	@override String get noMealsToday => 'Geen maaltijden geregistreerd voor vandaag';
	@override String get seeAllMeals => 'Bekijk alle maaltijden';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionNl implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snel Toevoegen met AI';
	@override String get description => 'Beschrijf je maaltijd, en laat AI de details afhandelen.';
	@override String get hint => 'bijv. Voor het ontbijt had ik een grote kom havermout met een gesneden banaan en een lepel whey ...';
	@override String get analyzeMeal => 'Analyseer maaltijd';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsNl implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoriete Maaltijden';
	@override String get description => 'Voeg snel een van je favoriete maaltijden toe.';
	@override String get noFavorites => 'Nog geen favoriete maaltijden.';
	@override String get addFavoriteHint => 'Klik op de ster bij een maaltijd om het als favoriet te markeren.';
	@override String get seeAll => 'Bekijk alles';
	@override String get add => 'Toevoegen';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapNl implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Neem een Foto & Volg Je Maaltijd';
	@override String get description => 'Gebruik je camera om een foto van je voedsel te maken voor AI-analyse.';
	@override String get openCamera => 'Open Camera';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthNl implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sync met Health Connect';
	@override String get description => 'Synchroniseer je voedingsgegevens met Health Connect';
	@override String get install => 'Installeer';
	@override String get connect => 'Verbind';
}

// Path: meal.nutrition
class _TranslationsMealNutritionNl implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calorieën';
	@override String get carbs => 'Koolhydraten (g)';
	@override String get protein => 'Eiwit (g)';
	@override String get fat => 'Vetten (g)';
	@override String get fiber => 'Vezels (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationNl implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verwijder Maaltijd';
	@override String get message => 'Weet je zeker dat je deze maaltijdinvoer wilt verwijderen?';
	@override String get cancel => 'Annuleren';
	@override String get delete => 'Verwijderen';
}

// Path: profile.sections
class _TranslationsProfileSectionsNl implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIEL';
	@override String get basicInformation => 'BASIC INFORMATIE';
	@override String get goalsAndActivity => 'DOELEN & ACTIVITEIT';
	@override String get calculatedValues => 'GECALCULEERDE WAARDEN';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesNl implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Dagdoel';
	@override String get calPerDay => 'cal/dag';
	@override String get notAvailable => 'N/B';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsNl implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSOONLIJKE INFORMATIE';
	@override String get physicalMeasurements => 'FYSIEKE METINGEN';
	@override String get goalsAndActivity => 'DOELEN & ACTIVITEIT';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersNl implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get male => 'Man';
	@override String get female => 'Vrouw';
	@override String get other => 'Overig';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsNl implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightNl loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightNl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightNl maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightNl._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightNl gainWeight = _TranslationsEditProfileWeightGoalsGainWeightNl._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsNl implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryNl sedentary = _TranslationsEditProfileActivityLevelsSedentaryNl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveNl lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveNl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveNl moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveNl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveNl veryActive = _TranslationsEditProfileActivityLevelsVeryActiveNl._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveNl extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveNl._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsNl implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIEL';
	@override String get localization => 'LOCALISATIE';
	@override String get notifications => 'MELDINGEN';
	@override String get supportAndLegal => 'ONDERSTEUNING & JURIDISCH';
	@override String get dangerZone => 'GEVAARZONE';
	@override String get developer => 'ONTWIKKELAAR';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileNl implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bewerk Profiel';
	@override String get subtitle => 'Update je persoonlijke informatie';
}

// Path: settings.language
class _TranslationsSettingsLanguageNl implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Taal';
	@override String get subtitle => 'Kies je voorkeurstaal';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitNl implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lengte-eenheid';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitNl implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gewicht-eenheid';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersNl implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maaltijdherinneringen';
	@override String get subtitle => 'Blijf op koers met tijdige waarschuwingen';
}

// Path: settings.theme
class _TranslationsSettingsThemeNl implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thema';
	@override String get subtitle => 'Kies je voorkeursthema';
	@override String get light => 'Licht';
	@override String get dark => 'Donker';
	@override String get system => 'Systeem';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackNl implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Feedback Versturen';
	@override String subtitle({required Object appLabel}) => 'Help ons ${appLabel} te verbeteren';
	@override String emailSubject({required Object appLabel}) => 'Feedback over de ${appLabel} App';
	@override String get emailBodyPrefix => 'Gelieve je feedback hieronder te geven:';
	@override String get appVersion => 'App Versie';
	@override String get device => 'Apparaat';
	@override String get osVersion => 'OS Versie';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataNl implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verwijder Alle Gegevens';
	@override String get subtitle => 'Verwijder al je informatie onherroepelijk';
	@override String get confirmationTitle => 'Alle Gegevens Verwijderen?';
	@override String get confirmationMessage => 'Deze actie kan niet ongedaan worden gemaakt. Al je geregistreerde maaltijden, favorieten en profielinstellingen worden permanent verwijderd.';
	@override String get cancel => 'Annuleren';
	@override String get clearEverything => 'Verwijder Alles';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsNl implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug Opties';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastNl implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ontbijttijd! 🍳';
	@override String get body => 'Vergeet niet je ontbijt te registreren';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchNl implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lunchtijd! 🥗';
	@override String get body => 'Tijd om je lunch te registreren';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerNl implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dinnertijd! 🍽️';
	@override String get body => 'Vergeet niet je diner te registreren';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackNl implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tussendoortje Tijd! 🍎';
	@override String get body => 'Tijd voor een gezond tussendoortje';
}

// Path: notifications.test
class _TranslationsNotificationsTestNl implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testmelding';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapNl implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} biedt geschatte voedingsinformatie. De nauwkeurigheid hangt af van jouw invoer en voedselvariaties. Gebruik dit als een richtlijn, niet als een definitieve bron. Raadpleeg een professional voor gepersonaliseerd voedingsadvies.';
	@override late final _TranslationsDisclaimerSnapPortionSizeNl portionSize = _TranslationsDisclaimerSnapPortionSizeNl._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsNl preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsNl._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsNl ingredients = _TranslationsDisclaimerSnapIngredientsNl._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsNl databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsNl._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateNl implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Over Gewichtsschatting';
	@override String get description => 'De verwachte gewichtsverandering is een theoretische schatting op basis van het eenvoudige calorie-in versus calorie-uit model. Het is uitsluitend bedoeld voor motiverende begeleiding, niet als een voorspelling van je werkelijke gewicht.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyNl calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyNl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsNl biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsNl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightNl waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightNl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceNl professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceNl._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsNl implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Meldingen';
	@override String get healthConnect => 'Health Connect';
	@override String get appInfo => 'App Informatie';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionNl implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Slimme Voedselherkenning';
	@override String get description => 'Neem een foto en laat AI je maaltijd identificeren';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisNl implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI Analyse';
	@override String get description => 'Ontvang directe voedingsinformatie van je beschrijvingen';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationNl implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gezondheidsintegratie';
	@override String get description => 'Verbind met Health Connect voor betere inzichten';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesNl implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Ondergewicht';
	@override String get healthyWeight => 'Gezond gewicht';
	@override String get overweight => 'Overgewicht';
	@override String get obese => 'Obesitas';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesNl implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'We kunnen je helpen een gezond plan op te stellen om een evenwichtig gewicht te bereiken met voedzame maaltijden.';
	@override String get healthy => 'Goed gedaan! Je zit in een gezond bereik. We helpen je je vitaliteit en energieniveaus te behouden.';
	@override String overweight({required Object appLabel}) => '${appLabel} zal jouw reis vereenvoudigen met AI-gestuurde tracking om je te helpen je doel comfortabel te bereiken.';
	@override String get obese => 'We zijn hier om je te ondersteunen met gepersonaliseerde begeleiding en duurzame strategieën voor je gezondheidsdoelen.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingNl implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatische Calorie-tracking';
	@override String get description => 'Houd calorieën bij die verbrand zijn vanuit je fitness-apps';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsNl implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Voortgangsinzichten';
	@override String get description => 'Ontvang gedetailleerde inzichten in je gezondheidstrends';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationNl implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Naadloze Integratie';
	@override String get description => 'Synchroniseer gegevens van je favoriete gezondheidsapps';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessNl implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Je Bent Niet Alleen';
	@override String get genericMessage => 'Onderzoek toont aan dat consistente tracking de belangrijkste voorspeller is van langdurig succes.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Voor een ${age} jaar oude ${gender} die ${goal} wil, is consistente tracking de belangrijkste voorspeller van succes.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} maakt het 10x gemakkelijker dan het handmatig doen.';
	@override String get getStartedTitle => 'Klaar om te beginnen?';
	@override String get tipPhoto => 'Neem een foto van je maaltijden voor onmiddellijke analyse';
	@override String get tipConsistency => 'Houd regelmatig bij om betekenisvolle vooruitgang te zien';
	@override String get tipProgress => 'Volg je voortgang dagelijks om gemotiveerd te blijven';
	@override String get button => 'Laten We Gaan';
	@override String get defaultGender => 'persoon';
	@override String get defaultGoal => 'gezondere jij';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileNl implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Je Gezondheidsprofiel';
	@override String bmiDescription({required Object bmi}) => 'Op basis van je metrics is je BMI ${bmi}.';
	@override String get finalizeDescription => 'Laten we je profiel afronden om je ervaring te personaliseren.';
	@override String get goalGain => 'gewichtstoename';
	@override String get goalLose => 'gewichtsverlies';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Om je doel te bereiken, moet je ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Je bent op je streefgewicht! We helpen je het te behouden.';
	@override String get button => 'Laten We Gaan';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleNl implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uitstekende Start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Je hebt de eerste stap gezet naar ${goalText}. Aangezien je ${activityText} bent, past ${appLabel} je doelen aan om bij jouw levensstijl te passen.';
	@override String get personalizedTargets => 'Gepersonaliseerde calorie-doelen';
	@override String get aiMealDetection => 'AI-gestuurde maaltijddetectie';
	@override String get macroBreakdowns => 'Gedetailleerde macro-nutrienten analyses';
	@override String get button => 'Laten We Gaan';
	@override String get defaultGoal => 'jouw doelen';
	@override String get defaultActivity => 'actief';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightNl implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Afvallen';
	@override String get description => 'Creëer een calorie tekort om af te vallen';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightNl implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gewicht Behouden';
	@override String get description => 'Behoud je huidige gewicht';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightNl implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Aankomen';
	@override String get description => 'Creëer een calorie overschot om aan te komen';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryNl implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentair';
	@override String get description => 'Weinig tot geen beweging';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveNl implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Licht Actief';
	@override String get description => 'Lichte oefeningen 1-3 dagen/week';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveNl implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gemiddeld Actief';
	@override String get description => 'Matige oefeningen 3-5 dagen/week';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveNl implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Zeer Actief';
	@override String get description => 'Zware oefeningen 6-7 dagen/week';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveNl implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extreem Actief';
	@override String get description => 'Zeer zware oefeningen, fysiek werk';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeNl implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Portiegrootte';
	@override String get description => 'De nauwkeurigheid van de schattingen hangt sterk af van je correcte beoordeling van de portiegrootte.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsNl implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bereidingsmethoden';
	@override String description({required Object appLabel}) => 'Kookmethoden kunnen de voedingswaarde van voedsel aanzienlijk wijzigen. De schattingen van ${appLabel} houden mogelijk niet altijd rekening met deze variaties.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsNl implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingrediënten';
	@override String get description => 'Complexe gerechten met veel verborgen ingrediënten kunnen leiden tot minder nauwkeurige schattingen.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsNl implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Database Beperkingen';
	@override String description({required Object appLabel}) => '${appLabel}\'s voedseldatabase is uitgebreid, maar bevat mogelijk niet elk enkel voedingsmiddel of variatie.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyNl implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calorie Nauwkeurigheid';
	@override String get description => 'Deze schatting is alleen zo nauwkeurig als je bijgehouden calorie-inname en -uitgave. Ongenaue logging resulteert in een onjuiste projectie.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsNl implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologische Factoren';
	@override String description({required Object appLabel}) => 'Werkelijke gewicht verliezen/winnen wordt beïnvloed door metabolisme, hormonen, slaap, stress, hydratatie en andere individuele factoren die ${appLabel} niet kan meten.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightNl implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Watergewicht & Schommelingen';
	@override String get description => 'Het normale dagelijkse gewicht kan aanzienlijk fluctueren door waterretentie, spijsvertering en timing. De schatting houdt geen rekening met deze dagelijkse veranderingen.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceNl implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionele Begeleiding';
	@override String get description => 'Gebruik deze schatting niet om medische beslissingen te nemen. Raadpleeg altijd een zorgprofessional of geregistreerde diëtist voor gepersonaliseerd advies voor gewichtsmanagement.';
}

/// The flat map containing all translations for locale <nl>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsNl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Nederlands',
			'flag' => '🇳🇱',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => 'Welkom bij ${appLabel}',
			'onboarding.subtitle' => 'Jouw persoonlijke voedingsgenoot aangedreven door AI',
			'onboarding.getStarted' => 'Aan de Slag',
			'onboarding.features.foodRecognition.title' => 'Slimme Voedselherkenning',
			'onboarding.features.foodRecognition.description' => 'Neem een foto en laat AI je maaltijd identificeren',
			'onboarding.features.aiAnalysis.title' => 'AI Analyse',
			'onboarding.features.aiAnalysis.description' => 'Ontvang directe voedingsinformatie van je beschrijvingen',
			'onboarding.features.healthIntegration.title' => 'Gezondheidsintegratie',
			'onboarding.features.healthIntegration.description' => 'Verbind met Health Connect voor betere inzichten',
			'onboarding.gender.title' => 'Wat is je geslacht?',
			'onboarding.gender.description' => 'Geslacht helpt ons om je basaal metabolisme (BMR) nauwkeurig te berekenen.',
			'onboarding.gender.next' => 'Volgende',
			'onboarding.height.title' => 'Hoe lang ben je?',
			'onboarding.height.description' => 'Je lengte helpt ons om je BMI en energiebehoeften nauwkeurig te berekenen.',
			'onboarding.height.metric' => 'Metrisch',
			'onboarding.height.imperial' => 'Imperiaal',
			'onboarding.height.next' => 'Volgende',
			'onboarding.weight.currentTitle' => 'Wat is je huidige gewicht?',
			'onboarding.weight.currentDescription' => 'Je huidige gewicht is essentieel voor het personaliseren van je dagelijkse doelen.',
			'onboarding.weight.targetTitle' => 'Wat is je streefgewicht?',
			'onboarding.weight.targetDescription' => 'Een doelgewicht instellen helpt ons om je langetermijnplan te bepalen.',
			'onboarding.weight.metric' => 'Metrisch',
			'onboarding.weight.imperial' => 'Imperiaal',
			'onboarding.weight.next' => 'Volgende',
			'onboarding.age.title' => 'Wanneer is je verjaardag?',
			'onboarding.age.description' => 'Je leeftijd helpt ons om je caloriebehoefte nauwkeurig te berekenen.',
			'onboarding.age.next' => 'Volgende',
			'onboarding.bmiScale.underweight' => 'Ondergewicht',
			'onboarding.bmiScale.healthy' => 'Gezond',
			'onboarding.bmiScale.overweight' => 'Overgewicht',
			'onboarding.bmiScale.obese' => 'Obesitas',
			'onboarding.bmiScale.categories.underweight' => 'Ondergewicht',
			'onboarding.bmiScale.categories.healthyWeight' => 'Gezond gewicht',
			'onboarding.bmiScale.categories.overweight' => 'Overgewicht',
			'onboarding.bmiScale.categories.obese' => 'Obesitas',
			'onboarding.bmiScale.messages.underweight' => 'We kunnen je helpen een gezond plan op te stellen om een evenwichtig gewicht te bereiken met voedzame maaltijden.',
			'onboarding.bmiScale.messages.healthy' => 'Goed gedaan! Je zit in een gezond bereik. We helpen je je vitaliteit en energieniveaus te behouden.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} zal jouw reis vereenvoudigen met AI-gestuurde tracking om je te helpen je doel comfortabel te bereiken.',
			'onboarding.bmiScale.messages.obese' => 'We zijn hier om je te ondersteunen met gepersonaliseerde begeleiding en duurzame strategieën voor je gezondheidsdoelen.',
			'onboarding.weightGoal.title' => 'Wat is je doel?',
			'onboarding.weightGoal.description' => 'Kies het doel dat het beste beschrijft wat je wilt bereiken',
			'onboarding.activityLevel.title' => 'Hoe actief ben je?',
			'onboarding.activityLevel.description' => 'Dit helpt ons om je dagelijkse caloriebehoefte nauwkeuriger te berekenen',
			'onboarding.healthConnect.title' => 'Verbind met Health Connect',
			'onboarding.healthConnect.description' => 'Synchroniseer je gezondheidsgegevens voor betere inzichten en automatische calorie-tracking',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatische Calorie-tracking',
			'onboarding.healthConnect.automaticTracking.description' => 'Houd calorieën bij die verbrand zijn vanuit je fitness-apps',
			'onboarding.healthConnect.progressInsights.title' => 'Voortgangsinzichten',
			'onboarding.healthConnect.progressInsights.description' => 'Ontvang gedetailleerde inzichten in je gezondheidstrends',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Naadloze Integratie',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchroniseer gegevens van je favoriete gezondheidsapps',
			'onboarding.healthConnect.connected' => 'Health Connect Verbonden',
			'onboarding.healthConnect.notConnected' => 'Health Connect Niet Verbonden',
			'onboarding.healthConnect.setup' => 'Instellingen Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Voor nu overslaan',
			'onboarding.healthConnect.statusConnected' => 'Health Connect is verbonden.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect is succesvol verbonden!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Toestemming geweigerd. Schakel de Health Connect-permissies in via de instellingen van je telefoon voor ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Fout bij het instellen van Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Je Bent Niet Alleen',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Onderzoek toont aan dat consistente tracking de belangrijkste voorspeller is van langdurig succes.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Voor een ${age} jaar oude ${gender} die ${goal} wil, is consistente tracking de belangrijkste voorspeller van succes.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} maakt het 10x gemakkelijker dan het handmatig doen.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Klaar om te beginnen?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Neem een foto van je maaltijden voor onmiddellijke analyse',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Houd regelmatig bij om betekenisvolle vooruitgang te zien',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Volg je voortgang dagelijks om gemotiveerd te blijven',
			'onboarding.reinforcement.trackingSuccess.button' => 'Laten We Gaan',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'persoon',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'gezondere jij',
			'onboarding.reinforcement.healthProfile.title' => 'Je Gezondheidsprofiel',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Op basis van je metrics is je BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Laten we je profiel afronden om je ervaring te personaliseren.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'gewichtstoename',
			'onboarding.reinforcement.healthProfile.goalLose' => 'gewichtsverlies',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Om je doel te bereiken, moet je ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Je bent op je streefgewicht! We helpen je het te behouden.',
			'onboarding.reinforcement.healthProfile.button' => 'Laten We Gaan',
			'onboarding.reinforcement.goalLifestyle.title' => 'Uitstekende Start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Je hebt de eerste stap gezet naar ${goalText}. Aangezien je ${activityText} bent, past ${appLabel} je doelen aan om bij jouw levensstijl te passen.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Gepersonaliseerde calorie-doelen',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-gestuurde maaltijddetectie',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Gedetailleerde macro-nutrienten analyses',
			'onboarding.reinforcement.goalLifestyle.button' => 'Laten We Gaan',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'jouw doelen',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'actief',
			'tabs.dashboard' => 'Dashboard',
			'tabs.history' => 'Geschiedenis',
			'home.dailyGoal.title' => 'Stel Je Dagdoel In',
			'home.dailyGoal.titleSet' => 'Je Dagdoel',
			'home.dailyGoal.description' => 'Klaar om aan je welzijnsreis te beginnen? Stel hieronder je dagelijkse calorie-target in om je voortgang te starten.',
			'home.dailyGoal.descriptionSet' => 'Je kompas is ingesteld! Dit is je dagelijkse calorie-target om je te begeleiden.',
			'home.dailyGoal.yourGoal' => 'Je Doel',
			'home.dailyGoal.dailyCalories' => 'Dagelijkse calorieën (kcal)',
			'home.dailyGoal.setGoal' => 'Stel Doel In',
			'home.dailyGoal.intake' => 'Inname',
			'home.dailyGoal.burned' => 'Verbrand',
			'home.dailyGoal.weightImpact' => 'Gewichtsimpact',
			'home.dailyGoal.estLoss' => 'Geschatte verlies van',
			'home.dailyGoal.estGain' => 'Geschatte winst van',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Dagelijkse Samenvatting',
			'home.dailySummary.calories' => 'Calorieën',
			'home.dailySummary.carbs' => 'Koolhydraten',
			'home.dailySummary.protein' => 'Eiwit',
			'home.dailySummary.fat' => 'Vetten',
			'home.dailySummary.fiber' => 'Vezels',
			'home.intakeProgress.title' => 'Vandaag\'s Macro Verhoudingen',
			'home.intakeProgress.target' => 'Doel',
			'home.intakeProgress.current' => 'Huidig',
			'home.intakeHistory.title' => '7-Daagse Macro Geschiedenis',
			'home.intakeHistory.noHistoryYet' => 'Geen geschiedenis tot nu toe',
			'home.intakeHistory.startLogging' => 'Begin met het bijhouden van maaltijden om je\n7-daagse macrotrends hier te zien',
			'home.mealLog.title' => 'Ingevoerde Maaltijden',
			'home.mealLog.emptyMessage' => 'Neem een foto van je laatste maaltijd om deze hier in te voeren.',
			'home.mealLog.noMealsToday' => 'Geen maaltijden geregistreerd voor vandaag',
			'home.mealLog.seeAllMeals' => 'Bekijk alle maaltijden',
			'home.mealDescription.title' => 'Snel Toevoegen met AI',
			'home.mealDescription.description' => 'Beschrijf je maaltijd, en laat AI de details afhandelen.',
			'home.mealDescription.hint' => 'bijv. Voor het ontbijt had ik een grote kom havermout met een gesneden banaan en een lepel whey ...',
			'home.mealDescription.analyzeMeal' => 'Analyseer maaltijd',
			'home.favoriteMeals.title' => 'Favoriete Maaltijden',
			'home.favoriteMeals.description' => 'Voeg snel een van je favoriete maaltijden toe.',
			'home.favoriteMeals.noFavorites' => 'Nog geen favoriete maaltijden.',
			'home.favoriteMeals.addFavoriteHint' => 'Klik op de ster bij een maaltijd om het als favoriet te markeren.',
			'home.favoriteMeals.seeAll' => 'Bekijk alles',
			'home.favoriteMeals.add' => 'Toevoegen',
			'home.mealSnap.title' => 'Neem een Foto & Volg Je Maaltijd',
			'home.mealSnap.description' => 'Gebruik je camera om een foto van je voedsel te maken voor AI-analyse.',
			'home.mealSnap.openCamera' => 'Open Camera',
			'home.connectHealth.title' => 'Sync met Health Connect',
			'home.connectHealth.description' => 'Synchroniseer je voedingsgegevens met Health Connect',
			'home.connectHealth.install' => 'Installeer',
			'home.connectHealth.connect' => 'Verbind',
			'history.noMeals' => 'Geen maaltijden geregistreerd',
			'history.emptyMessage' => 'Neem een foto van je laatste maaltijd om deze hier in te voeren.',
			'history.today' => 'Vandaag',
			'history.yesterday' => 'Gisteren',
			'meal.ohNo' => 'Oh nee!',
			'meal.delete' => 'Verwijderen',
			'meal.editMeal' => 'Bewerk Maaltijd',
			'meal.addMeal' => 'Voeg Maaltijd Toe',
			'meal.saveMeal' => 'Sla Maaltijd Op',
			'meal.save' => 'Opslaan',
			'meal.mealName' => 'Maaltijd Naam',
			'meal.mealQuantity' => 'Maaltijd Hoeveelheid',
			'meal.mealQuantityHint' => 'bijv., 1 kom, 2 plakken',
			'meal.timeOfMeal' => 'Tijd van Maaltijd',
			'meal.timeOfMealHint' => 'Selecteer de tijd waarop je je maaltijd had',
			'meal.mealType' => 'Maaltijd Type',
			'meal.nutrition.calories' => 'Calorieën',
			'meal.nutrition.carbs' => 'Koolhydraten (g)',
			'meal.nutrition.protein' => 'Eiwit (g)',
			'meal.nutrition.fat' => 'Vetten (g)',
			'meal.nutrition.fiber' => 'Vezels (g)',
			'meal.deleteConfirmation.title' => 'Verwijder Maaltijd',
			'meal.deleteConfirmation.message' => 'Weet je zeker dat je deze maaltijdinvoer wilt verwijderen?',
			'meal.deleteConfirmation.cancel' => 'Annuleren',
			'meal.deleteConfirmation.delete' => 'Verwijderen',
			'meal.addedToLog' => 'Maaltijd toegevoegd aan je logboek!',
			'meal.couldNotAdd' => ({required Object error}) => 'Kon maaltijd niet toevoegen: ${error}',
			'meal.removedFromFavorites' => 'Verwijderd uit favorieten!',
			'meal.savedAsFavorite' => 'Maaltijd opgeslagen als favoriet!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Kon favoriet niet bijwerken: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Kon niet verwerken: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Kon afbeelding niet verwerken: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Fout bij het comprimeren van afbeelding: ${error}',
			'meal.failedToSave' => 'Kon gegevens niet opslaan. Probeer het opnieuw.',
			'favorites.title' => 'Favorieten',
			'favorites.empty' => 'Nog geen favoriete maaltijden.',
			'profile.title' => 'Profiel',
			'profile.noProfileData' => 'Geen profielgegevens gevonden',
			'profile.yourProfile' => 'Je Profiel',
			'profile.viewAndManage' => 'Bekijk en beheer je gezondheidsinformatie',
			'profile.sections.profile' => 'PROFIEL',
			'profile.sections.basicInformation' => 'BASIC INFORMATIE',
			'profile.sections.goalsAndActivity' => 'DOELEN & ACTIVITEIT',
			'profile.sections.calculatedValues' => 'GECALCULEERDE WAARDEN',
			'profile.gender' => 'Geslacht',
			'profile.height' => 'Lengte',
			'profile.weight' => 'Gewicht',
			'profile.age' => 'Leeftijd',
			'profile.weightGoal' => 'Gewichtsdoel',
			'profile.activityLevel' => 'Activiteitsniveau',
			'profile.healthMetrics' => 'Gezondheidsmetrics',
			'profile.notSet' => 'Niet ingesteld',
			'profile.years' => 'jaren',
			'profile.updatedSuccessfully' => 'Profiel succesvol bijgewerkt!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Dagdoel',
			'profile.calculatedValues.calPerDay' => 'cal/dag',
			'profile.calculatedValues.notAvailable' => 'N/B',
			'healthScore.title' => 'Gezondheidsscore',
			'healthScore.whyThisScore' => 'Waarom deze score?',
			'healthScore.note' => 'Deze score is een AI-schatting op basis van de geïdentificeerde ingrediënten en voedingsdichtheid. Raadpleeg altijd een professional voor dieetadvies.',
			'healthScore.unhealthy' => 'Ongezond',
			'healthScore.healthy' => 'Gezond',
			'healthScore.neutral' => 'Neutraal',
			'editProfile.title' => 'Bewerk Profiel',
			'editProfile.sections.personalInformation' => 'PERSOONLIJKE INFORMATIE',
			'editProfile.sections.physicalMeasurements' => 'FYSIEKE METINGEN',
			'editProfile.sections.goalsAndActivity' => 'DOELEN & ACTIVITEIT',
			'editProfile.gender' => 'Geslacht',
			'editProfile.dateOfBirth' => 'Geboortedatum',
			'editProfile.height' => 'Lengte',
			'editProfile.weight' => 'Gewicht',
			'editProfile.weightGoal' => 'Gewichtsdoel',
			'editProfile.activityLevel' => 'Activiteitsniveau',
			'editProfile.metric' => 'Metrisch',
			'editProfile.imperial' => 'Imperiaal',
			'editProfile.metricCm' => 'Metrisch (cm)',
			'editProfile.imperialFtIn' => 'Imperiaal (ft/in)',
			'editProfile.metricKg' => 'Metrisch (kg)',
			'editProfile.imperialLbs' => 'Imperiaal (lbs)',
			'editProfile.genders.male' => 'Man',
			'editProfile.genders.female' => 'Vrouw',
			'editProfile.genders.other' => 'Overig',
			'editProfile.weightGoals.loseWeight.name' => 'Afvallen',
			'editProfile.weightGoals.loseWeight.description' => 'Creëer een calorie tekort om af te vallen',
			'editProfile.weightGoals.maintainWeight.name' => 'Gewicht Behouden',
			'editProfile.weightGoals.maintainWeight.description' => 'Behoud je huidige gewicht',
			'editProfile.weightGoals.gainWeight.name' => 'Aankomen',
			'editProfile.weightGoals.gainWeight.description' => 'Creëer een calorie overschot om aan te komen',
			'editProfile.activityLevels.sedentary.name' => 'Sedentair',
			'editProfile.activityLevels.sedentary.description' => 'Weinig tot geen beweging',
			'editProfile.activityLevels.lightlyActive.name' => 'Licht Actief',
			'editProfile.activityLevels.lightlyActive.description' => 'Lichte oefeningen 1-3 dagen/week',
			'editProfile.activityLevels.moderatelyActive.name' => 'Gemiddeld Actief',
			'editProfile.activityLevels.moderatelyActive.description' => 'Matige oefeningen 3-5 dagen/week',
			'editProfile.activityLevels.veryActive.name' => 'Zeer Actief',
			'editProfile.activityLevels.veryActive.description' => 'Zware oefeningen 6-7 dagen/week',
			'editProfile.activityLevels.extremelyActive.name' => 'Extreem Actief',
			'editProfile.activityLevels.extremelyActive.description' => 'Zeer zware oefeningen, fysiek werk',
			'settings.title' => 'Instellingen',
			'settings.sections.profile' => 'PROFIEL',
			'settings.sections.localization' => 'LOCALISATIE',
			'settings.sections.notifications' => 'MELDINGEN',
			'settings.sections.supportAndLegal' => 'ONDERSTEUNING & JURIDISCH',
			'settings.sections.dangerZone' => 'GEVAARZONE',
			'settings.sections.developer' => 'ONTWIKKELAAR',
			'settings.editProfile.title' => 'Bewerk Profiel',
			'settings.editProfile.subtitle' => 'Update je persoonlijke informatie',
			'settings.language.title' => 'Taal',
			'settings.language.subtitle' => 'Kies je voorkeurstaal',
			'settings.heightUnit.title' => 'Lengte-eenheid',
			'settings.weightUnit.title' => 'Gewicht-eenheid',
			'settings.mealReminders.title' => 'Maaltijdherinneringen',
			'settings.mealReminders.subtitle' => 'Blijf op koers met tijdige waarschuwingen',
			'settings.theme.title' => 'Thema',
			'settings.theme.subtitle' => 'Kies je voorkeursthema',
			'settings.theme.light' => 'Licht',
			'settings.theme.dark' => 'Donker',
			'settings.theme.system' => 'Systeem',
			'settings.sendFeedback.title' => 'Feedback Versturen',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Help ons ${appLabel} te verbeteren',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback over de ${appLabel} App',
			'settings.sendFeedback.emailBodyPrefix' => 'Gelieve je feedback hieronder te geven:',
			'settings.sendFeedback.appVersion' => 'App Versie',
			'settings.sendFeedback.device' => 'Apparaat',
			'settings.sendFeedback.osVersion' => 'OS Versie',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Verwijder Alle Gegevens',
			'settings.clearAllData.subtitle' => 'Verwijder al je informatie onherroepelijk',
			'settings.clearAllData.confirmationTitle' => 'Alle Gegevens Verwijderen?',
			'settings.clearAllData.confirmationMessage' => 'Deze actie kan niet ongedaan worden gemaakt. Al je geregistreerde maaltijden, favorieten en profielinstellingen worden permanent verwijderd.',
			'settings.clearAllData.cancel' => 'Annuleren',
			'settings.clearAllData.clearEverything' => 'Verwijder Alles',
			'settings.debugOptions.title' => 'Debug Opties',
			'settings.developerModeEnabled' => 'Ontwikkelaarsmode ingeschakeld!',
			'reminders.title' => 'Blijf op koers met herinneringen',
			'reminders.description' => 'Krijg vriendelijke herinneringen om je maaltijden bij te houden en consistent te blijven met je voedingsdoelen',
			'reminders.notificationsEnabled' => 'Meldingen Ingeschakeld',
			'reminders.notificationsDisabled' => 'Meldingen Uitgeschakeld',
			'reminders.enabledSubtitle' => 'Je ontvangt maaltijdherinneringen',
			'reminders.disabledSubtitle' => 'Schakel meldingen in om maaltijdherinneringen te ontvangen',
			'reminders.mealReminders' => 'Maaltijdherinneringen',
			'reminders.breakfast' => 'Ontbijt',
			'reminders.lunch' => 'Lunch',
			'reminders.dinner' => 'Diner',
			'reminders.snack' => 'Tussendoortje',
			'reminders.unknown' => 'Onbekend',
			'reminders.change' => 'Wijzig',
			'reminders.enableNotifications' => 'Meldingen Inschakelen',
			'reminders.skipForNow' => 'Voor nu overslaan',
			'reminders.saveChanges' => 'Wijzigingen Opslaan',
			'reminders.enabledSuccessfully' => 'Meldingen succesvol ingeschakeld!',
			'reminders.permissionDenied' => 'Toestemming voor meldingen geweigerd',
			'reminders.errorEnabling' => ({required Object error}) => 'Fout bij het inschakelen van meldingen: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Fout bij het voltooien van de instellingen: ${error}',
			'notifications.breakfast.title' => 'Ontbijttijd! 🍳',
			'notifications.breakfast.body' => 'Vergeet niet je ontbijt te registreren',
			'notifications.lunch.title' => 'Lunchtijd! 🥗',
			'notifications.lunch.body' => 'Tijd om je lunch te registreren',
			'notifications.dinner.title' => 'Dinnertijd! 🍽️',
			'notifications.dinner.body' => 'Vergeet niet je diner te registreren',
			'notifications.snack.title' => 'Tussendoortje Tijd! 🍎',
			'notifications.snack.body' => 'Tijd voor een gezond tussendoortje',
			'notifications.test.title' => 'Testmelding',
			'login.title' => 'Inloggen',
			'login.signInWithGoogle' => 'Inloggen met Google',
			'login.signInFailed' => 'Google-inloggen mislukt of geannuleerd.',
			'disclaimer.pleaseNote' => 'Gelieve Op Te Merken',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} biedt geschatte voedingsinformatie. De nauwkeurigheid hangt af van jouw invoer en voedselvariaties. Gebruik dit als een richtlijn, niet als een definitieve bron. Raadpleeg een professional voor gepersonaliseerd voedingsadvies.',
			'disclaimer.snap.portionSize.title' => 'Portiegrootte',
			'disclaimer.snap.portionSize.description' => 'De nauwkeurigheid van de schattingen hangt sterk af van je correcte beoordeling van de portiegrootte.',
			'disclaimer.snap.preparationMethods.title' => 'Bereidingsmethoden',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Kookmethoden kunnen de voedingswaarde van voedsel aanzienlijk wijzigen. De schattingen van ${appLabel} houden mogelijk niet altijd rekening met deze variaties.',
			'disclaimer.snap.ingredients.title' => 'Ingrediënten',
			'disclaimer.snap.ingredients.description' => 'Complexe gerechten met veel verborgen ingrediënten kunnen leiden tot minder nauwkeurige schattingen.',
			'disclaimer.snap.databaseLimitations.title' => 'Database Beperkingen',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}\'s voedseldatabase is uitgebreid, maar bevat mogelijk niet elk enkel voedingsmiddel of variatie.',
			'disclaimer.weightEstimate.title' => 'Over Gewichtsschatting',
			'disclaimer.weightEstimate.description' => 'De verwachte gewichtsverandering is een theoretische schatting op basis van het eenvoudige calorie-in versus calorie-uit model. Het is uitsluitend bedoeld voor motiverende begeleiding, niet als een voorspelling van je werkelijke gewicht.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Calorie Nauwkeurigheid',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Deze schatting is alleen zo nauwkeurig als je bijgehouden calorie-inname en -uitgave. Ongenaue logging resulteert in een onjuiste projectie.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologische Factoren',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Werkelijke gewicht verliezen/winnen wordt beïnvloed door metabolisme, hormonen, slaap, stress, hydratatie en andere individuele factoren die ${appLabel} niet kan meten.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Watergewicht & Schommelingen',
			'disclaimer.weightEstimate.waterWeight.description' => 'Het normale dagelijkse gewicht kan aanzienlijk fluctueren door waterretentie, spijsvertering en timing. De schatting houdt geen rekening met deze dagelijkse veranderingen.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Professionele Begeleiding',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Gebruik deze schatting niet om medische beslissingen te nemen. Raadpleeg altijd een zorgprofessional of geregistreerde diëtist voor gepersonaliseerd advies voor gewichtsmanagement.',
			'common.close' => 'Sluiten',
			'common.kContinue' => 'Doorgaan',
			'errors.loadingProfileData' => 'Fout bij het laden van profielgegevens',
			'errors.somethingWentWrong' => 'Er is iets misgegaan.',
			'debug.title' => 'Debug Opties',
			'debug.sections.notifications' => 'Meldingen',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.appInfo' => 'App Informatie',
			'debug.showActiveNotifications' => 'Toon Actieve Meldingen',
			'debug.scheduleTestNotification' => 'Plan Testmelding (10s)',
			'debug.triggerBreakfastNotification' => 'Activeer Ontbijtmelding',
			'debug.cancelAllNotifications' => 'Annuleer Alle Meldingen',
			'debug.activeNotifications' => 'Actieve Meldingen',
			'debug.noTitle' => 'Geen Titel',
			'debug.noBody' => 'Geen Body',
			'debug.fetchTodaysSteps' => 'Haal Vandaag\'s Stappen Op',
			'debug.fetchTodaysCalories' => 'Haal Vandaag\'s Calorieën Op',
			'debug.fetchLatestWeight' => 'Haal Laatste Gewicht Op',
			'debug.fetchLatestHeight' => 'Haal Laatste Lengte Op',
			'debug.writeTestWeight' => 'Schrijf Testgewicht (70kg)',
			'debug.writeTestHeight' => 'Schrijf Testlengte (175cm)',
			'debug.syncLast7Days' => 'Synchroniseer Laatste 7 Dagen',
			'debug.sync7DaysTitle' => '7-Daagse Synchronisatie',
			'debug.checkCurrentLocale' => 'Controleer Huidige Locale',
			'debug.currentLocale' => 'Huidige Locale',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Taal: ${languageCode}\nLand: ${countryCode}\nEenheidssysteem: ${unitSystem}',
			'debug.latestWeight' => 'Laatste Gewicht',
			'debug.latestHeight' => 'Laatste Lengte',
			'debug.todaysCalories' => 'Vandaag\'s Calorieën',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'Totaal verbrande calorieën: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'Met succes ${count} gegevenspunten opgehaald voor Stappen, Calorieën en Gewicht over de afgelopen 7 dagen.',
			'debug.noWeightData' => 'Geen gewichtsgegevens gevonden in de afgelopen 30 dagen.',
			'debug.noHeightData' => 'Geen lengtedata gevonden in het afgelopen jaar.',
			'debug.noCalorieData' => 'Geen caloriedata gevonden voor vandaag.',
			'debug.weightWritten' => 'Testgewicht (70kg) succesvol geschreven.',
			'debug.weightWriteFailed' => 'Kon testgewicht niet schrijven.',
			'debug.heightWritten' => 'Testlengte (175cm) succesvol geschreven.',
			'debug.heightWriteFailed' => 'Kon testlengte niet schrijven.',
			'debug.noNotifications' => 'Geen actieve meldingen.',
			'debug.testNotificationScheduled' => 'Testmelding gepland voor 10 seconden vanaf nu.',
			'debug.testNotificationBody' => 'Dit is een testmelding gepland voor 10 seconden vanaf nu.',
			'debug.breakfastNotificationTriggered' => 'Ontbijtmelding geactiveerd.',
			'debug.allNotificationsCancelled' => 'Alle meldingen geannuleerd.',
			'debug.fetchingData' => 'Gegevens ophalen voor de afgelopen 7 dagen...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'health.syncFailed' => 'Kon niet synchroniseren met Health Connect',
			'health.mealSynced' => 'Maaltijd gesynchroniseerd met Health Connect',
			_ => null,
		};
	}
}
