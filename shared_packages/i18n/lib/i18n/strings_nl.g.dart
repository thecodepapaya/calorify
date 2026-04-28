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
	@override late final _TranslationsErrorsNl errors = _TranslationsErrorsNl._(_root);
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
	@override late final _TranslationsFeedbackRatingNl feedbackRating = _TranslationsFeedbackRatingNl._(_root);
	@override late final _TranslationsHealthNl health = _TranslationsHealthNl._(_root);
}

// Path: errors
class _TranslationsErrorsNl implements TranslationsErrorsEn {
	_TranslationsErrorsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Je hebt te veel verzoeken gedaan. Wacht even voordat je het opnieuw probeert.';
	@override String get networkError => 'Netwerkfout. Controleer je internetverbinding.';
	@override String get unknownError => 'Er is iets misgegaan. Probeer het later opnieuw.';
	@override String get loadingProfileData => 'Fout bij het laden van profielgegevens';
	@override String get somethingWentWrong => 'Er is iets misgegaan.';
	@override String get retry => 'Opnieuw proberen';
}

// Path: onboarding
class _TranslationsOnboardingNl implements TranslationsOnboardingEn {
	_TranslationsOnboardingNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Welkom bij ${appLabel}';
	@override String get subtitle => 'Jouw persoonlijke voedingscoach, aangedreven door AI';
	@override String get getStarted => 'Aan de slag';
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
	@override late final _TranslationsHomeAiSummaryNl aiSummary = _TranslationsHomeAiSummaryNl._(_root);
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
	@override String get emptyMessage => 'Maak een foto van je laatste maaltijd om deze hier te loggen.';
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
	@override String get editMeal => 'Maaltijd bewerken';
	@override String get addMeal => 'Maaltijd toevoegen';
	@override String get saveMeal => 'Maaltijd opslaan';
	@override String get save => 'Opslaan';
	@override String get mealName => 'Naam van de maaltijd';
	@override String get mealNameHint => 'bijv. Roerei met toast';
	@override String get mealQuantity => 'Hoeveelheid maaltijd';
	@override String get mealQuantityHint => 'bijv. 1 kom, 2 sneetjes';
	@override String get timeOfMeal => 'Tijdstip van de maaltijd';
	@override String get timeOfMealHint => 'Kies het tijdstip waarop je je maaltijd had';
	@override String get mealType => 'Type maaltijd';
	@override late final _TranslationsMealNutritionNl nutrition = _TranslationsMealNutritionNl._(_root);
	@override late final _TranslationsMealDeleteConfirmationNl deleteConfirmation = _TranslationsMealDeleteConfirmationNl._(_root);
	@override String get addedToLog => 'Maaltijd toegevoegd aan je log!';
	@override String couldNotAdd({required Object error}) => 'Kon maaltijd niet toevoegen: ${error}';
	@override String get savedSuccessfully => 'Maaltijd succesvol toegevoegd!';
	@override String get updatedSuccessfully => 'Maaltijd succesvol bijgewerkt!';
	@override String errorSaving({required Object error}) => 'Fout bij het opslaan van de maaltijd: ${error}';
	@override String get removedFromFavorites => 'Verwijderd uit favorieten!';
	@override String get savedAsFavorite => 'Maaltijd opgeslagen als favoriet!';
	@override String get unfavorite => 'Verwijderen uit favorieten';
	@override String couldNotUpdateFavorite({required Object error}) => 'Kon favoriet niet bijwerken: ${error}';
	@override String get feedbackThanks => 'Bedankt voor je feedback!';
	@override String get reanalysisUpdated => 'De analyse is bijgewerkt op basis van je feedback.';
	@override String failedToProcess({required Object error}) => 'Verwerken mislukt: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Afbeelding verwerken mislukt: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Fout bij het comprimeren van de afbeelding: ${error}';
	@override String get failedToSave => 'Opslaan van gegevens mislukt. Probeer het opnieuw.';
	@override String get skip => 'Overslaan';
	@override late final _TranslationsMealQuestionFlowNl questionFlow = _TranslationsMealQuestionFlowNl._(_root);
	@override late final _TranslationsMealAnalysisNl analysis = _TranslationsMealAnalysisNl._(_root);
	@override late final _TranslationsMealFeedbackNl feedback = _TranslationsMealFeedbackNl._(_root);
}

// Path: favorites
class _TranslationsFavoritesNl implements TranslationsFavoritesEn {
	_TranslationsFavoritesNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorieten';
	@override String get empty => 'Nog geen favoriete maaltijden.';
	@override String get searchPlaceholder => 'Favoriete maaltijden zoeken';
	@override String get searchEmptyTitle => 'Geen favorieten komen overeen met je zoekopdracht';
	@override String get searchEmptySubtitle => 'Probeer een andere maaltijdnaam, hoeveelheid of maaltijdtype.';
	@override String get sortLabel => 'Favorieten sorteren';
	@override String get undo => 'Ongedaan maken';
	@override String removed({required Object name}) => '${name} verwijderd uit favorieten';
	@override late final _TranslationsFavoritesSortOptionsNl sortOptions = _TranslationsFavoritesSortOptionsNl._(_root);
}

// Path: profile
class _TranslationsProfileNl implements TranslationsProfileEn {
	_TranslationsProfileNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profiel';
	@override String get noProfileData => 'Geen profielgegevens gevonden';
	@override String get yourProfile => 'Jouw profiel';
	@override String get viewAndManage => 'Bekijk en beheer je gezondheidsinformatie';
	@override late final _TranslationsProfileSectionsNl sections = _TranslationsProfileSectionsNl._(_root);
	@override String get gender => 'Geslacht';
	@override String get height => 'Lengte';
	@override String get weight => 'Gewicht';
	@override String get age => 'Leeftijd';
	@override String get weightGoal => 'Gewichtsdoel';
	@override String get targetWeight => 'Streefgewicht';
	@override String get activityLevel => 'Activiteitsniveau';
	@override String get healthMetrics => 'Gezondheidsstatistieken';
	@override String get notSet => 'Niet ingesteld';
	@override String get years => 'jaar';
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
	@override String get note => 'Deze score is een AI-schatting op basis van de herkende ingrediënten en voedingsdichtheid. Raadpleeg altijd een professional voor dieetadvies.';
	@override String get unhealthy => 'Ongezond';
	@override String get healthy => 'Gezond';
	@override String get neutral => 'Neutraal';
}

// Path: editProfile
class _TranslationsEditProfileNl implements TranslationsEditProfileEn {
	_TranslationsEditProfileNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profiel bewerken';
	@override late final _TranslationsEditProfileSectionsNl sections = _TranslationsEditProfileSectionsNl._(_root);
	@override String get gender => 'Geslacht';
	@override String get dateOfBirth => 'Geboortedatum';
	@override String get height => 'Lengte';
	@override String get weight => 'Gewicht';
	@override String get weightGoal => 'Gewichtsdoel';
	@override String get activityLevel => 'Activiteitsniveau';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperiaal';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
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
	@override late final _TranslationsSettingsExportMealHistoryNl exportMealHistory = _TranslationsSettingsExportMealHistoryNl._(_root);
	@override late final _TranslationsSettingsClearAllDataNl clearAllData = _TranslationsSettingsClearAllDataNl._(_root);
	@override late final _TranslationsSettingsDebugOptionsNl debugOptions = _TranslationsSettingsDebugOptionsNl._(_root);
	@override String get developerModeEnabled => 'Ontwikkelaarsmodus ingeschakeld!';
	@override late final _TranslationsSettingsHealthConnectNl healthConnect = _TranslationsSettingsHealthConnectNl._(_root);
	@override late final _TranslationsSettingsAboutNl about = _TranslationsSettingsAboutNl._(_root);
	@override late final _TranslationsSettingsAppInfoNl appInfo = _TranslationsSettingsAppInfoNl._(_root);
}

// Path: reminders
class _TranslationsRemindersNl implements TranslationsRemindersEn {
	_TranslationsRemindersNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Blijf op koers met herinneringen';
	@override String get description => 'Ontvang vriendelijke herinneringen om je maaltijden te loggen en consequent te blijven met je voedingsdoelen';
	@override String get notificationsEnabled => 'Meldingen ingeschakeld';
	@override String get notificationsDisabled => 'Meldingen uitgeschakeld';
	@override String get enabledSubtitle => 'Je ontvangt maaltijdherinneringen';
	@override String get disabledSubtitle => 'Schakel meldingen in om maaltijdherinneringen te ontvangen';
	@override String get mealReminders => 'Maaltijdherinneringen';
	@override String get breakfast => 'Ontbijt';
	@override String get lunch => 'Lunch';
	@override String get dinner => 'Diner';
	@override String get snack => 'Snack';
	@override String get unknown => 'Onbekend';
	@override String get change => 'Wijzigen';
	@override String get enableNotifications => 'Meldingen inschakelen';
	@override String get skipForNow => 'Voor nu overslaan';
	@override String get saveChanges => 'Wijzigingen opslaan';
	@override String get enabledSuccessfully => 'Meldingen succesvol ingeschakeld!';
	@override String get permissionDenied => 'Machtiging voor meldingen geweigerd';
	@override String errorEnabling({required Object error}) => 'Fout bij het inschakelen van meldingen: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Fout bij het voltooien van de instelling: ${error}';
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
	@override String get signInFailed => 'Google-aanmelding is mislukt of geannuleerd.';
}

// Path: disclaimer
class _TranslationsDisclaimerNl implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Let op';
	@override late final _TranslationsDisclaimerSnapNl snap = _TranslationsDisclaimerSnapNl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateNl weightEstimate = _TranslationsDisclaimerWeightEstimateNl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsNl healthMetrics = _TranslationsDisclaimerHealthMetricsNl._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureNl calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureNl._(_root);
}

// Path: common
class _TranslationsCommonNl implements TranslationsCommonEn {
	_TranslationsCommonNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get close => 'Sluiten';
	@override String get kContinue => 'Doorgaan';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingNl implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Bevalt ${appLabel}?';
	@override String get yes => 'Ja, het bevalt me';
	@override String get no => 'Niet echt';
	@override String get rateStepHeading => 'Beoordeel in de Play Store';
	@override String get emailStepHeading => 'Stuur feedback per e-mail';
	@override String soloDevMessage({required Object appLabel}) => 'Een snelle beoordeling helpt anderen ${appLabel} te vinden en houdt de ontwikkeling gaande. Wil je een moment nemen om er een achter te laten?';
	@override String get shareFeedbackViaEmail => 'Jouw feedback bepaalt wat er volgt — we lezen elk bericht. Wil je je gedachten delen via e-mail?';
	@override String get rateCta => 'Beoordeel in de Play Store';
	@override String get maybeLater => 'Misschien later';
	@override String get sendFeedback => 'Feedback verzenden';
	@override String get noThanks => 'Nee, bedankt';
	@override String get aboutUsDescription => 'Met zorg gemaakt door een klein team. We focussen op privacy, eenvoud en het helpen opbouwen van betere eetgewoonten.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Benieuwd wie er achter ${appLabel} zit? Zie ';
	@override String get aboutUsLinkLabel => 'Over ons';
	@override String get thankYouMessage => 'Bedankt! We vragen het een andere keer nog eens.';
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
	@override String get description => 'Geslacht helpt ons je basaal metabolisme (BMR) nauwkeurig te berekenen.';
	@override String get next => 'Volgende';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightNl implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hoe lang ben je?';
	@override String get description => 'Je lengte helpt ons je BMI en energiebehoefte nauwkeurig te berekenen.';
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
	@override String get currentDescription => 'Je huidige gewicht is essentieel om je dagelijkse doelen te personaliseren.';
	@override String get targetTitle => 'Wat is je streefgewicht?';
	@override String get targetDescription => 'Een streefgewicht helpt ons je langetermijnplan te bepalen.';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperiaal';
	@override String get next => 'Volgende';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeNl implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wat is je geboortedatum?';
	@override String get description => 'Je leeftijd helpt ons je caloriebehoefte nauwkeurig te berekenen.';
	@override String get next => 'Volgende';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleNl implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Onder';
	@override String get healthy => 'Gezond';
	@override String get overweight => 'Over';
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
	@override String get description => 'Kies het doel dat het best past bij wat je wilt bereiken';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelNl implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hoe actief ben je?';
	@override String get description => 'Dit helpt ons je dagelijkse caloriebehoefte nauwkeuriger te berekenen';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectNl implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verbind met Health Connect';
	@override String get description => 'Synchroniseer je gezondheidsgegevens voor betere inzichten en automatische calorietracking';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingNl automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingNl._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsNl progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsNl._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationNl seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationNl._(_root);
	@override String get connected => 'Health Connect verbonden';
	@override String get notConnected => 'Health Connect niet verbonden';
	@override String get setup => 'Health Connect instellen';
	@override String get skipForNow => 'Voor nu overslaan';
	@override String get statusConnected => 'Health Connect is verbonden.';
	@override String get statusSuccess => 'Health Connect is succesvol verbonden!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Toestemming geweigerd. Schakel Health Connect-machtigingen in via de instellingen van je telefoon voor ${appLabel}.';
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

// Path: home.aiSummary
class _TranslationsHomeAiSummaryNl implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jouw AI-samenvatting';
	@override String get logMore => 'Log de komende dagen meer maaltijden om je persoonlijke AI-inzichten te krijgen.';
	@override String get loading => 'Je samenvatting laden...';
	@override String mealCount({required Object count}) => '${count} maaltijden gelogd';
	@override String macroBalanceScore({required Object score}) => 'Balansscore ${score}';
	@override String get topFoods => 'Topvoedingsmiddelen';
	@override String get trendUp => 'Calorieën stijgen';
	@override String get trendDown => 'Calorieën dalen';
	@override String get trendSteady => 'Calorieën blijven stabiel';
	@override String generatedAt({required Object time}) => 'Bijgewerkt ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalNl implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stel je dagdoel in';
	@override String get titleSet => 'Je dagdoel';
	@override String get description => 'Klaar voor je welzijnsreis? Stel hieronder je dagelijkse caloriedoel in om je vooruitgang te starten.';
	@override String get descriptionSet => 'Je kompas staat goed! Dit is je dagelijkse caloriedoel om je te begeleiden.';
	@override String get yourGoal => 'Jouw doel';
	@override String get goal => 'Doel';
	@override String get dailyCalories => 'Dagelijkse calorieën (kcal)';
	@override String get setGoal => 'Doel instellen';
	@override String get intake => 'Inname';
	@override String get burned => 'Verbrand';
	@override String get weightImpact => 'Invloed op gewicht';
	@override String get estLoss => 'Geschat verlies van';
	@override String get estGain => 'Geschatte toename van';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryNl implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagoverzicht';
	@override String get calories => 'Calorieën';
	@override String get carbs => 'Koolhydraten';
	@override String get protein => 'Eiwit';
	@override String get fat => 'Vet';
	@override String get fiber => 'Vezels';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Macro-diagram';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressNl implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Macroverdeling van vandaag';
	@override String get target => 'Doel';
	@override String get current => 'Huidig';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryNl implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Macrogeschiedenis 7 dagen';
	@override String get trendTitle => 'Trend van vandaag';
	@override String peakHour({required Object hour}) => 'Piek: ${hour}:00';
	@override String get noHistoryYet => 'Nog geen geschiedenis';
	@override String get startLogging => 'Begin met het loggen van maaltijden om hier je\n7-daagse macrotrends te zien';
}

// Path: home.mealLog
class _TranslationsHomeMealLogNl implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gelogde maaltijden';
	@override String get emptyMessage => 'Maak een foto van je laatste maaltijd om deze hier te loggen.';
	@override String get noMealsToday => 'Vandaag geen maaltijden geregistreerd';
	@override String get seeAllMeals => 'Alle maaltijden bekijken';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionNl implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snel toevoegen met AI';
	@override String get description => 'Beschrijf je maaltijd en laat de AI de details afhandelen.';
	@override String get hint => 'bijv. Voor het ontbijt had ik een grote kom havermout met een gesneden banaan en een schep whey ...';
	@override String get analyzeMeal => 'Maaltijd analyseren';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsNl implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoriete maaltijden';
	@override String get description => 'Voeg snel een van je favoriete maaltijden toe.';
	@override String get noFavorites => 'Nog geen favoriete maaltijden.';
	@override String get addFavoriteHint => 'Tik op de ster bij een maaltijd om deze als favoriet te markeren.';
	@override String get seeAll => 'Alles bekijken';
	@override String get add => 'Toevoegen';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapNl implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fotografeer & volg je maaltijd';
	@override String get description => 'Gebruik je camera om een foto van je eten te maken voor AI-analyse.';
	@override String get openCamera => 'Camera openen';
	@override String get gallery => 'Galerij';
	@override String get compressingPhoto => 'Foto optimaliseren…';
	@override String get uploadingPhoto => 'Foto uploaden…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthNl implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synchroniseer met Health Connect';
	@override String get description => 'Synchroniseer je voedingsgegevens met Health Connect';
	@override String get install => 'Installeren';
	@override String get connect => 'Verbinden';
}

// Path: meal.nutrition
class _TranslationsMealNutritionNl implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calorieën';
	@override String get carbs => 'Koolhydraten (g)';
	@override String get protein => 'Eiwit (g)';
	@override String get fat => 'Vet (g)';
	@override String get fiber => 'Vezels (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationNl implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maaltijd verwijderen';
	@override String get message => 'Weet je zeker dat je deze maaltijd wilt verwijderen?';
	@override String get cancel => 'Annuleren';
	@override String get delete => 'Verwijderen';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowNl implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Vraag ${current} van ${total}';
	@override String get noQuestionsAvailable => 'Geen vragen beschikbaar';
	@override String get next => 'Volgende';
	@override String get continueLabel => 'Doorgaan';
}

// Path: meal.analysis
class _TranslationsMealAnalysisNl implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-maalanalyse';
	@override String get stepStarted => 'Bezig met starten…';
	@override String get stepDecomposition => 'Je maaltijd begrijpen…';
	@override String get stepIngredients => 'Ingrediënten koppelen aan voedingsgegevens…';
	@override String get stepUncertainty => 'Zekerheid controleren…';
	@override String get stepMealTypeQuestion => 'Bijna klaar…';
	@override String get stepResult => 'Resultaat afronden…';
	@override String get stepError => 'Er is iets misgegaan';
	@override String get stepDefault => 'Je maaltijd analyseren…';
	@override String get progressUnderstand => 'Begrijpen';
	@override String get progressMatch => 'Koppelen';
	@override String get progressCheck => 'Controleren';
	@override String get progressMealType => 'Maaltijdtype kiezen';
	@override String get progressFinish => 'Afronden';
	@override String get detectedIngredientHeading => 'Ingrediënten die we herkennen';
	@override String ingredientsOverflow({required Object count}) => '${count} meer';
	@override String ingredientsLine({required Object count}) => '${count} ingrediënten gedetecteerd';
	@override String get ingredientsPending => 'Ingrediënten scannen…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackNl implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wat lijkt er fout?';
	@override String get subtitle => 'Help ons de analyse te verbeteren door een of meer problemen te selecteren.';
	@override String get tellUsMore => 'Vertel ons meer';
	@override String get describeIncorrect => 'Beschrijf wat er onjuist was';
	@override String get submit => 'Verzenden';
	@override String get issueFoodIdentification => 'Voedselherkenning';
	@override String get issuePortionSize => 'Portiegrootte';
	@override String get issueCalorieDistribution => 'Calorieverdeling';
	@override String get issueMacrosWrong => 'Macro\'s kloppen niet';
	@override String get issueMissingItems => 'Ontbrekende items';
	@override String get issueExtraItems => 'Te veel items';
	@override String get issueOther => 'Anders';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsNl implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Recent';
	@override String get calories => 'Calorieën';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsNl implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIEL';
	@override String get basicInformation => 'BASISINFORMATIE';
	@override String get goalsAndActivity => 'DOELEN & ACTIVITEIT';
	@override String get calculatedValues => 'BEREKENDE WAARDEN';
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
	@override String get notAvailable => 'n.v.t.';
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
	@override String get other => 'Anders';
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
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'ONDERSTEUNING & JURIDISCH';
	@override String get about => 'OVER';
	@override String get dangerZone => 'GEVAARSZONE';
	@override String get developer => 'ONTWIKKELAAR';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileNl implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profiel bewerken';
	@override String get subtitle => 'Werk je persoonsgegevens bij';
}

// Path: settings.language
class _TranslationsSettingsLanguageNl implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Taal';
	@override String get subtitle => 'Kies je voorkeurstaal';
	@override String get searchHint => 'Zoek talen...';
	@override String get noResults => 'Geen resultaten gevonden';
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
	@override String get title => 'Gewichtseenheid';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersNl implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maaltijdherinneringen';
	@override String get subtitle => 'Blijf op koers met tijdige meldingen';
}

// Path: settings.theme
class _TranslationsSettingsThemeNl implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thema';
	@override String get light => 'Licht';
	@override String get dark => 'Donker';
	@override String get system => 'Systeem';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackNl implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Feedback verzenden';
	@override String subtitle({required Object appLabel}) => 'Help ${appLabel} te verbeteren';
	@override String emailSubject({required Object appLabel}) => '${appLabel} app-feedback';
	@override String get emailBodyPrefix => 'Geef hieronder je feedback:';
	@override String get appVersion => 'App-versie';
	@override String get device => 'Apparaat';
	@override String get osVersion => 'OS-versie';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryNl implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maaltijdgeschiedenis exporteren';
	@override String get subtitle => 'Deel een CSV van je gelogde maaltijden';
	@override String get shareText => 'Je Calorify-export van de maaltijdgeschiedenis';
	@override String failed({required Object error}) => 'Kon maaltijdgeschiedenis niet exporteren: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataNl implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alle gegevens wissen';
	@override String get subtitle => 'Verwijder onherroepelijk al je informatie';
	@override String get confirmationTitle => 'Alle gegevens wissen?';
	@override String get confirmationMessage => 'Deze actie kan niet ongedaan worden gemaakt. Al je gelogde maaltijden, favorieten en profielinstellingen worden permanent verwijderd.';
	@override String get cancel => 'Annuleren';
	@override String get clearEverything => 'Alles wissen';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsNl implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debugopties';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectNl implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Machtigingen bekijken en beheren';
	@override late final _TranslationsSettingsHealthConnectUnavailableNl unavailable = _TranslationsSettingsHealthConnectUnavailableNl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNl permissions = _TranslationsSettingsHealthConnectPermissionsNl._(_root);
	@override String get managePermissions => 'Machtigingen beheren';
	@override String get openSettings => 'Instellingen van Health Connect openen';
	@override String get requestPermissions => 'Machtigingen aanvragen';
	@override String get permissionRequestCancelledOrFailed => 'Machtigingsaanvraag is geannuleerd of mislukt. Probeer het opnieuw of geef machtigingen handmatig in de instellingen van Health Connect.';
	@override String get permissionRequestFailed => 'Kan geen machtigingen aanvragen. Probeer het opnieuw of geef machtigingen handmatig in de instellingen van Health Connect.';
	@override String get requestingPermissions => 'Aanvragen...';
}

// Path: settings.about
class _TranslationsSettingsAboutNl implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Over';
	@override String get tagline => 'Snel, gratis en met privacy voorop: inzicht in calorieën';
	@override late final _TranslationsSettingsAboutOurStoryNl ourStory = _TranslationsSettingsAboutOurStoryNl._(_root);
	@override late final _TranslationsSettingsAboutPrivacyNl privacy = _TranslationsSettingsAboutPrivacyNl._(_root);
	@override late final _TranslationsSettingsAboutDeveloperNl developer = _TranslationsSettingsAboutDeveloperNl._(_root);
	@override late final _TranslationsSettingsAboutFeedbackNl feedback = _TranslationsSettingsAboutFeedbackNl._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoNl implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastNl implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ontbijttijd! 🍳';
	@override String get body => 'Vergeet niet je ontbijt te loggen';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchNl implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lunchtijd! 🥗';
	@override String get body => 'Tijd om je lunch te loggen';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerNl implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dinertijd! 🍽️';
	@override String get body => 'Vergeet niet je diner te loggen';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackNl implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snacktijd! 🍎';
	@override String get body => 'Tijd voor een gezonde snack';
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
	@override String description({required Object appLabel}) => '${appLabel} geeft geschatte voedingsinformatie. De nauwkeurigheid hangt af van jouw invoer en variaties in voeding. Gebruik dit als richtlijn, niet als definitieve bron. Raadpleeg een professional voor persoonlijk dieetadvies.';
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
	@override String get title => 'Over gewichtsinschatting';
	@override String get description => 'De geprojecteerde gewichtsverandering is een theoretische schatting op basis van het simpele ‘calorieën in vs. calorieën uit’-model. Het is alleen bedoeld als motivatie, niet als voorspelling van je werkelijke gewicht.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyNl calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyNl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsNl biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsNl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightNl waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightNl._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceNl professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceNl._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsNl implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get description => 'Deze statistieken helpen je de energiebehoefte van je lichaam te begrijpen en sturen je voedingsdoelen.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrNl bmr = _TranslationsDisclaimerHealthMetricsBmrNl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeNl tdee = _TranslationsDisclaimerHealthMetricsTdeeNl._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalNl dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalNl._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureNl implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Schatting calorieverbruik';
	@override String get description => 'Wanneer Health Connect-gegevens niet beschikbaar zijn, schatten we de vandaag verbrande calorieën met je basale stofwisseling (BMR) en activiteitsniveau (TDEE), geschaald naar het deel van de dag dat is verstreken.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedNl howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedNl._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceNl professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceNl._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionNl implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Slimme voedselherkenning';
	@override String get description => 'Maak een foto en laat AI je maaltijd identificeren';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisNl implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-analyse';
	@override String get description => 'Krijg direct voedingswaarden op basis van jouw beschrijvingen';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationNl implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gezondheidsintegratie';
	@override String get description => 'Koppel met Health Connect voor betere inzichten';
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
	@override String get underweight => 'We helpen je graag met een gezond plan om een evenwichtig gewicht te bereiken met voedzame maaltijden.';
	@override String get healthy => 'Goed gedaan! Je zit in een gezonde range. We helpen je je vitaliteit en energieniveau te behouden.';
	@override String overweight({required Object appLabel}) => '${appLabel} maakt je reis eenvoudiger met AI-gestuurd bijhouden zodat je je doel comfortabel kunt bereiken.';
	@override String get obese => 'We staan voor je klaar met persoonlijke begeleiding en duurzame strategieën voor je gezondheidsdoelen.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingNl implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatische calorietracking';
	@override String get description => 'Houd verbrande calorieën bij vanuit je fitness-apps';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsNl implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Voortgangsinzichten';
	@override String get description => 'Krijg gedetailleerde inzichten in je gezondheidstrends';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationNl implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Naadloze integratie';
	@override String get description => 'Synchroniseer gegevens van je favoriete gezondheidsapps';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessNl implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Je staat er niet alleen voor';
	@override String get genericMessage => 'Onderzoek laat zien dat consequent bijhouden de #1 voorspeller is van langetermijnsucces.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Voor een ${age}-jarige ${gender} die wil ${goal}, is consequent bijhouden de belangrijkste voorspeller van succes.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} maakt het 10x makkelijker dan handmatig.';
	@override String get getStartedTitle => 'Klaar om te beginnen?';
	@override String get tipPhoto => 'Maak een foto van je maaltijden voor directe analyse';
	@override String get tipConsistency => 'Log consequent om betekenisvolle vooruitgang te zien';
	@override String get tipProgress => 'Volg je voortgang dagelijks om gemotiveerd te blijven';
	@override String get button => 'Let\'s go';
	@override String get defaultGender => 'persoon';
	@override String get defaultGoal => 'een gezondere jij';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileNl implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Je gezondheidsprofiel';
	@override String bmiDescription({required Object bmi}) => 'Op basis van je gegevens is je BMI ${bmi}.';
	@override String get finalizeDescription => 'Laten we je profiel afronden om je ervaring te personaliseren.';
	@override String get goalGain => 'aankomen';
	@override String get goalLose => 'afvallen';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Om je doel te bereiken zul je ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Je zit op je streefgewicht! We helpen je het te behouden.';
	@override String get button => 'Let\'s go';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleNl implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uitstekende start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Je hebt de eerste stap gezet richting ${goalText}. Omdat je ${activityText} bent, past ${appLabel} je doelen aan op jouw levensstijl.';
	@override String get personalizedTargets => 'Gepersonaliseerde caloriedoelen';
	@override String get aiMealDetection => 'AI-gestuurde maaltijdherkenning';
	@override String get macroBreakdowns => 'Gedetailleerde macroverdeling';
	@override String get button => 'Let\'s go';
	@override String get defaultGoal => 'je doelen';
	@override String get defaultActivity => 'actief';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightNl implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Afvallen';
	@override String get description => 'Creëer een calorietekort om af te vallen';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightNl implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gewicht behouden';
	@override String get description => 'Behoud je huidige gewicht';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightNl implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Aankomen';
	@override String get description => 'Creëer een calorie-overschot om aan te komen';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryNl implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Zittend';
	@override String get description => 'Weinig tot geen lichaamsbeweging';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveNl implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Licht actief';
	@override String get description => 'Lichte lichaamsbeweging 1–3 dagen/week';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveNl implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Matig actief';
	@override String get description => 'Matige lichaamsbeweging 3–5 dagen/week';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveNl implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Zeer actief';
	@override String get description => 'Zware training 6–7 dagen/week';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveNl implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Uiterst actief';
	@override String get description => 'Zeer zware training, fysiek beroep';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableNl implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect niet beschikbaar';
	@override String get description => 'Health Connect is niet beschikbaar op dit apparaat. Installeer Health Connect via de Play Store (Android 9+) of update naar Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsNl implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Machtigingen';
	@override String get description => 'De volgende machtigingen zijn vereist om Health Connect-integratie te bieden:';
	@override String get granted => 'Toegekend';
	@override String get notGranted => 'Niet toegekend';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedNl caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedNl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadNl nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadNl._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteNl nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteNl._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryNl implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ons verhaal';
	@override String content({required Object appLabel}) => '${appLabel} is ontstaan uit een simpele frustratie: de meeste calorie-apps zijn óf te ingewikkeld, vereisen constant handmatig invoeren, vragen hoge abonnementskosten, of gaan slordig om met privacy.\n\nAls solodeveloper wilde ik iets simpelers en eerlijkers bouwen — een app die AI inzet om moeite te verminderen, snel en gratis blijft, en je gezondheidsdata met respect behandelt.\n\n${appLabel} is de app waarvan ik wilde dat die bestond: geen accounts, geen tracking, geen advertenties — alleen heldere, praktische inzichten en jouw gezondheidsdoelen.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyNl implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jouw privacy telt';
	@override String get description => 'Privacy is geen bijzaak — het is een ontwerpbeginsel. Dit betekent in de praktijk:';
	@override String get noAccounts => 'Geen accounts vereist\nGebruik de app direct. Geen aanmeldingen, geen identiteiten.';
	@override String noTracking({required Object appLabel}) => 'Geen gedrags-tracking\n${appLabel} monitort je activiteit niet, bouwt geen gebruiksprofielen en volgt je niet over apps of websites heen.';
	@override String noAds({required Object appLabel}) => 'Advertentievrij ontworpen\n${appLabel} werkt zonder advertenties of datagedreven verdienmodellen.';
	@override String get noDataSelling => 'Geen verkoop van data\nJe gezondheidsgegevens worden nooit verkocht of gedeeld met derden.';
	@override String get localStorage => 'Local-first opslag\nJe data blijft op je apparaat.';
	@override String get privacyPolicy => 'Privacybeleid';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperNl implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gemaakt door een solodeveloper';
	@override String description({required Object appLabel}) => '${appLabel} is gebouwd en onderhouden door één solodeveloper die focust op rustige, privacy-respecterende gezondheidssoftware.\n\nFeedback wordt persoonlijk gelezen en helpt de richting van de app te bepalen.';
	@override String get website => 'Website';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackNl implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Geniet je van ${appLabel}?';
	@override String description({required Object appLabel}) => 'Jouw feedback helpt ${appLabel} voor iedereen beter te maken.';
	@override String get rateApp => 'Beoordeel in de Play Store';
	@override String get sendFeedback => 'Feedback verzenden';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeNl implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Portiegrootte';
	@override String get description => 'De nauwkeurigheid van de schattingen hangt sterk af van je juiste inschatting van de portiegrootte.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsNl implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bereidingsmethoden';
	@override String description({required Object appLabel}) => 'Kookmethoden kunnen de voedingswaarde aanzienlijk veranderen. De schattingen van ${appLabel} houden hier mogelijk niet altijd rekening mee.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsNl implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingrediënten';
	@override String get description => 'Complexe gerechten met veel verborgen ingrediënten kunnen tot minder nauwkeurige schattingen leiden.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsNl implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beperkingen van de database';
	@override String description({required Object appLabel}) => 'De voedsel­database van ${appLabel} is uitgebreid, maar bevat mogelijk niet elk voedingsmiddel of elke variant.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyNl implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calorie-nauwkeurigheid';
	@override String get description => 'Deze schatting is zo nauwkeurig als jouw bijgehouden calorie-inname en -verbruik. Onnauwkeurig loggen leidt tot een onnauwkeurige projectie.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsNl implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologische factoren';
	@override String description({required Object appLabel}) => 'Werkelijk afvallen/aankomen wordt beïnvloed door metabolisme, hormonen, slaap, stress, hydratatie en andere individuele factoren die ${appLabel} niet kan meten.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightNl implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Watergewicht & schommelingen';
	@override String get description => 'Normaal dagelijks gewicht kan aanzienlijk schommelen door vocht, spijsvertering en timing. De schatting houdt geen rekening met deze dagelijkse veranderingen.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceNl implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionele begeleiding';
	@override String get description => 'Gebruik deze schatting niet voor medische beslissingen. Raadpleeg altijd een zorgprofessional of diëtist voor persoonlijk advies over gewichtsbeheer.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrNl implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basale stofwisseling (BMR) is het aantal calorieën dat je lichaam in rust verbrandt om basisfuncties zoals ademhaling en circulatie te onderhouden. BMR hangt af van je leeftijd, geslacht, lengte en gewicht. Een hogere BMR betekent dat je lichaam in rust van nature meer calorieën verbrandt, vaak door meer spiermassa, jongere leeftijd of mannelijk geslacht. Een lagere BMR duidt meestal op minder spiermassa, hogere leeftijd of vrouwelijk geslacht.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeNl implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Totale dagelijkse energieverbruik (TDEE) is het totaal aan calorieën dat je per dag verbrandt, inclusief je BMR plus calorieën uit lichamelijke activiteit en dagelijkse beweging. TDEE hangt af van je BMR en activiteitsniveau. Een hogere TDEE betekent dat je totaal meer calorieën verbrandt, meestal door actiever te zijn of een hogere BMR te hebben. Een lagere TDEE suggereert minder dagelijkse activiteit of een lagere BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalNl implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagdoel';
	@override String get description => 'Dagdoel is je aanbevolen dagelijkse calorie-inname op basis van je TDEE en gewichtsdoel. Voor afvallen consumeer je minder calorieën dan je TDEE. Voor gewichtsbehoud kom je overeen met je TDEE. Voor aankomen consumeer je meer calorieën dan je TDEE. Dit helpt je je gewenste gewichtsverandering in een gezond tempo te bereiken.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedNl implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hoe de schatting wordt berekend';
	@override String get description => 'We berekenen je TDEE (op basis van je profiel) en vermenigvuldigen dit met het deel van de dag dat is verstreken (uren + minuten) / 24 om de tot nu toe verbrande calorieën te schatten.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceNl implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionele begeleiding';
	@override String get description => 'Gebruik deze schatting niet voor medische beslissingen. Raadpleeg altijd een zorgprofessional of diëtist voor persoonlijk advies over gewichtsbeheer.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedNl implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Totale verbrande calorieën lezen';
	@override String get description => 'Staat de app toe om je totale verbrande calorieën uit Health Connect te lezen.';
	@override String get usage => 'Deze machtiging wordt gebruikt om je dagelijkse calorieverbranding in de app te tonen, zodat je je totale energieverbruik gedurende de dag beter begrijpt.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadNl implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Voedingsgegevens lezen';
	@override String get description => 'Staat de app toe om voedingsgegevens uit Health Connect te lezen.';
	@override String get usage => 'Met deze machtiging kan de app voedingsinformatie lezen die mogelijk is gelogd door andere apps die met Health Connect zijn verbonden, voor een compleet beeld van je voeding.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteNl implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteNl._(this._root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Voedingsgegevens schrijven';
	@override String get description => 'Staat de app toe om voedingsgegevens naar Health Connect te schrijven.';
	@override String get usage => 'Met deze machtiging kan de app je gelogde maaltijden synchroniseren met Health Connect, zodat je voedingsgegevens beschikbaar zijn voor andere gezondheids- en fitnessapps die je gebruikt.';
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
			'errors.rateLimitExceeded' => 'Je hebt te veel verzoeken gedaan. Wacht even voordat je het opnieuw probeert.',
			'errors.networkError' => 'Netwerkfout. Controleer je internetverbinding.',
			'errors.unknownError' => 'Er is iets misgegaan. Probeer het later opnieuw.',
			'errors.loadingProfileData' => 'Fout bij het laden van profielgegevens',
			'errors.somethingWentWrong' => 'Er is iets misgegaan.',
			'errors.retry' => 'Opnieuw proberen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Welkom bij ${appLabel}',
			'onboarding.subtitle' => 'Jouw persoonlijke voedingscoach, aangedreven door AI',
			'onboarding.getStarted' => 'Aan de slag',
			'onboarding.features.foodRecognition.title' => 'Slimme voedselherkenning',
			'onboarding.features.foodRecognition.description' => 'Maak een foto en laat AI je maaltijd identificeren',
			'onboarding.features.aiAnalysis.title' => 'AI-analyse',
			'onboarding.features.aiAnalysis.description' => 'Krijg direct voedingswaarden op basis van jouw beschrijvingen',
			'onboarding.features.healthIntegration.title' => 'Gezondheidsintegratie',
			'onboarding.features.healthIntegration.description' => 'Koppel met Health Connect voor betere inzichten',
			'onboarding.gender.title' => 'Wat is je geslacht?',
			'onboarding.gender.description' => 'Geslacht helpt ons je basaal metabolisme (BMR) nauwkeurig te berekenen.',
			'onboarding.gender.next' => 'Volgende',
			'onboarding.height.title' => 'Hoe lang ben je?',
			'onboarding.height.description' => 'Je lengte helpt ons je BMI en energiebehoefte nauwkeurig te berekenen.',
			'onboarding.height.metric' => 'Metrisch',
			'onboarding.height.imperial' => 'Imperiaal',
			'onboarding.height.next' => 'Volgende',
			'onboarding.weight.currentTitle' => 'Wat is je huidige gewicht?',
			'onboarding.weight.currentDescription' => 'Je huidige gewicht is essentieel om je dagelijkse doelen te personaliseren.',
			'onboarding.weight.targetTitle' => 'Wat is je streefgewicht?',
			'onboarding.weight.targetDescription' => 'Een streefgewicht helpt ons je langetermijnplan te bepalen.',
			'onboarding.weight.metric' => 'Metrisch',
			'onboarding.weight.imperial' => 'Imperiaal',
			'onboarding.weight.next' => 'Volgende',
			'onboarding.age.title' => 'Wat is je geboortedatum?',
			'onboarding.age.description' => 'Je leeftijd helpt ons je caloriebehoefte nauwkeurig te berekenen.',
			'onboarding.age.next' => 'Volgende',
			'onboarding.bmiScale.underweight' => 'Onder',
			'onboarding.bmiScale.healthy' => 'Gezond',
			'onboarding.bmiScale.overweight' => 'Over',
			'onboarding.bmiScale.obese' => 'Obesitas',
			'onboarding.bmiScale.categories.underweight' => 'Ondergewicht',
			'onboarding.bmiScale.categories.healthyWeight' => 'Gezond gewicht',
			'onboarding.bmiScale.categories.overweight' => 'Overgewicht',
			'onboarding.bmiScale.categories.obese' => 'Obesitas',
			'onboarding.bmiScale.messages.underweight' => 'We helpen je graag met een gezond plan om een evenwichtig gewicht te bereiken met voedzame maaltijden.',
			'onboarding.bmiScale.messages.healthy' => 'Goed gedaan! Je zit in een gezonde range. We helpen je je vitaliteit en energieniveau te behouden.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} maakt je reis eenvoudiger met AI-gestuurd bijhouden zodat je je doel comfortabel kunt bereiken.',
			'onboarding.bmiScale.messages.obese' => 'We staan voor je klaar met persoonlijke begeleiding en duurzame strategieën voor je gezondheidsdoelen.',
			'onboarding.weightGoal.title' => 'Wat is je doel?',
			'onboarding.weightGoal.description' => 'Kies het doel dat het best past bij wat je wilt bereiken',
			'onboarding.activityLevel.title' => 'Hoe actief ben je?',
			'onboarding.activityLevel.description' => 'Dit helpt ons je dagelijkse caloriebehoefte nauwkeuriger te berekenen',
			'onboarding.healthConnect.title' => 'Verbind met Health Connect',
			'onboarding.healthConnect.description' => 'Synchroniseer je gezondheidsgegevens voor betere inzichten en automatische calorietracking',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatische calorietracking',
			'onboarding.healthConnect.automaticTracking.description' => 'Houd verbrande calorieën bij vanuit je fitness-apps',
			'onboarding.healthConnect.progressInsights.title' => 'Voortgangsinzichten',
			'onboarding.healthConnect.progressInsights.description' => 'Krijg gedetailleerde inzichten in je gezondheidstrends',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Naadloze integratie',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchroniseer gegevens van je favoriete gezondheidsapps',
			'onboarding.healthConnect.connected' => 'Health Connect verbonden',
			'onboarding.healthConnect.notConnected' => 'Health Connect niet verbonden',
			'onboarding.healthConnect.setup' => 'Health Connect instellen',
			'onboarding.healthConnect.skipForNow' => 'Voor nu overslaan',
			'onboarding.healthConnect.statusConnected' => 'Health Connect is verbonden.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect is succesvol verbonden!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Toestemming geweigerd. Schakel Health Connect-machtigingen in via de instellingen van je telefoon voor ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Fout bij het instellen van Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Je staat er niet alleen voor',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Onderzoek laat zien dat consequent bijhouden de #1 voorspeller is van langetermijnsucces.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Voor een ${age}-jarige ${gender} die wil ${goal}, is consequent bijhouden de belangrijkste voorspeller van succes.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} maakt het 10x makkelijker dan handmatig.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Klaar om te beginnen?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Maak een foto van je maaltijden voor directe analyse',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Log consequent om betekenisvolle vooruitgang te zien',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Volg je voortgang dagelijks om gemotiveerd te blijven',
			'onboarding.reinforcement.trackingSuccess.button' => 'Let\'s go',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'persoon',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'een gezondere jij',
			'onboarding.reinforcement.healthProfile.title' => 'Je gezondheidsprofiel',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Op basis van je gegevens is je BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Laten we je profiel afronden om je ervaring te personaliseren.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'aankomen',
			'onboarding.reinforcement.healthProfile.goalLose' => 'afvallen',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Om je doel te bereiken zul je ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Je zit op je streefgewicht! We helpen je het te behouden.',
			'onboarding.reinforcement.healthProfile.button' => 'Let\'s go',
			'onboarding.reinforcement.goalLifestyle.title' => 'Uitstekende start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Je hebt de eerste stap gezet richting ${goalText}. Omdat je ${activityText} bent, past ${appLabel} je doelen aan op jouw levensstijl.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Gepersonaliseerde caloriedoelen',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-gestuurde maaltijdherkenning',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Gedetailleerde macroverdeling',
			'onboarding.reinforcement.goalLifestyle.button' => 'Let\'s go',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'je doelen',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'actief',
			'tabs.dashboard' => 'Dashboard',
			'tabs.history' => 'Geschiedenis',
			'home.aiSummary.title' => 'Jouw AI-samenvatting',
			'home.aiSummary.logMore' => 'Log de komende dagen meer maaltijden om je persoonlijke AI-inzichten te krijgen.',
			'home.aiSummary.loading' => 'Je samenvatting laden...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} maaltijden gelogd',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Balansscore ${score}',
			'home.aiSummary.topFoods' => 'Topvoedingsmiddelen',
			'home.aiSummary.trendUp' => 'Calorieën stijgen',
			'home.aiSummary.trendDown' => 'Calorieën dalen',
			'home.aiSummary.trendSteady' => 'Calorieën blijven stabiel',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Bijgewerkt ${time}',
			'home.dailyGoal.title' => 'Stel je dagdoel in',
			'home.dailyGoal.titleSet' => 'Je dagdoel',
			'home.dailyGoal.description' => 'Klaar voor je welzijnsreis? Stel hieronder je dagelijkse caloriedoel in om je vooruitgang te starten.',
			'home.dailyGoal.descriptionSet' => 'Je kompas staat goed! Dit is je dagelijkse caloriedoel om je te begeleiden.',
			'home.dailyGoal.yourGoal' => 'Jouw doel',
			'home.dailyGoal.goal' => 'Doel',
			'home.dailyGoal.dailyCalories' => 'Dagelijkse calorieën (kcal)',
			'home.dailyGoal.setGoal' => 'Doel instellen',
			'home.dailyGoal.intake' => 'Inname',
			'home.dailyGoal.burned' => 'Verbrand',
			'home.dailyGoal.weightImpact' => 'Invloed op gewicht',
			'home.dailyGoal.estLoss' => 'Geschat verlies van',
			'home.dailyGoal.estGain' => 'Geschatte toename van',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Dagoverzicht',
			'home.dailySummary.calories' => 'Calorieën',
			'home.dailySummary.carbs' => 'Koolhydraten',
			'home.dailySummary.protein' => 'Eiwit',
			'home.dailySummary.fat' => 'Vet',
			'home.dailySummary.fiber' => 'Vezels',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Macro-diagram',
			'home.intakeProgress.title' => 'Macroverdeling van vandaag',
			'home.intakeProgress.target' => 'Doel',
			'home.intakeProgress.current' => 'Huidig',
			'home.intakeHistory.title' => 'Macrogeschiedenis 7 dagen',
			'home.intakeHistory.trendTitle' => 'Trend van vandaag',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Piek: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Nog geen geschiedenis',
			'home.intakeHistory.startLogging' => 'Begin met het loggen van maaltijden om hier je\n7-daagse macrotrends te zien',
			'home.mealLog.title' => 'Gelogde maaltijden',
			'home.mealLog.emptyMessage' => 'Maak een foto van je laatste maaltijd om deze hier te loggen.',
			'home.mealLog.noMealsToday' => 'Vandaag geen maaltijden geregistreerd',
			'home.mealLog.seeAllMeals' => 'Alle maaltijden bekijken',
			'home.mealDescription.title' => 'Snel toevoegen met AI',
			'home.mealDescription.description' => 'Beschrijf je maaltijd en laat de AI de details afhandelen.',
			'home.mealDescription.hint' => 'bijv. Voor het ontbijt had ik een grote kom havermout met een gesneden banaan en een schep whey ...',
			'home.mealDescription.analyzeMeal' => 'Maaltijd analyseren',
			'home.favoriteMeals.title' => 'Favoriete maaltijden',
			'home.favoriteMeals.description' => 'Voeg snel een van je favoriete maaltijden toe.',
			'home.favoriteMeals.noFavorites' => 'Nog geen favoriete maaltijden.',
			'home.favoriteMeals.addFavoriteHint' => 'Tik op de ster bij een maaltijd om deze als favoriet te markeren.',
			'home.favoriteMeals.seeAll' => 'Alles bekijken',
			'home.favoriteMeals.add' => 'Toevoegen',
			'home.mealSnap.title' => 'Fotografeer & volg je maaltijd',
			'home.mealSnap.description' => 'Gebruik je camera om een foto van je eten te maken voor AI-analyse.',
			'home.mealSnap.openCamera' => 'Camera openen',
			'home.mealSnap.gallery' => 'Galerij',
			'home.mealSnap.compressingPhoto' => 'Foto optimaliseren…',
			'home.mealSnap.uploadingPhoto' => 'Foto uploaden…',
			'home.connectHealth.title' => 'Synchroniseer met Health Connect',
			'home.connectHealth.description' => 'Synchroniseer je voedingsgegevens met Health Connect',
			'home.connectHealth.install' => 'Installeren',
			'home.connectHealth.connect' => 'Verbinden',
			'history.noMeals' => 'Geen maaltijden geregistreerd',
			'history.emptyMessage' => 'Maak een foto van je laatste maaltijd om deze hier te loggen.',
			'history.today' => 'Vandaag',
			'history.yesterday' => 'Gisteren',
			'meal.ohNo' => 'Oh nee!',
			'meal.delete' => 'Verwijderen',
			'meal.editMeal' => 'Maaltijd bewerken',
			'meal.addMeal' => 'Maaltijd toevoegen',
			'meal.saveMeal' => 'Maaltijd opslaan',
			'meal.save' => 'Opslaan',
			'meal.mealName' => 'Naam van de maaltijd',
			'meal.mealNameHint' => 'bijv. Roerei met toast',
			'meal.mealQuantity' => 'Hoeveelheid maaltijd',
			'meal.mealQuantityHint' => 'bijv. 1 kom, 2 sneetjes',
			'meal.timeOfMeal' => 'Tijdstip van de maaltijd',
			'meal.timeOfMealHint' => 'Kies het tijdstip waarop je je maaltijd had',
			'meal.mealType' => 'Type maaltijd',
			'meal.nutrition.calories' => 'Calorieën',
			'meal.nutrition.carbs' => 'Koolhydraten (g)',
			'meal.nutrition.protein' => 'Eiwit (g)',
			'meal.nutrition.fat' => 'Vet (g)',
			'meal.nutrition.fiber' => 'Vezels (g)',
			'meal.deleteConfirmation.title' => 'Maaltijd verwijderen',
			'meal.deleteConfirmation.message' => 'Weet je zeker dat je deze maaltijd wilt verwijderen?',
			'meal.deleteConfirmation.cancel' => 'Annuleren',
			'meal.deleteConfirmation.delete' => 'Verwijderen',
			'meal.addedToLog' => 'Maaltijd toegevoegd aan je log!',
			'meal.couldNotAdd' => ({required Object error}) => 'Kon maaltijd niet toevoegen: ${error}',
			'meal.savedSuccessfully' => 'Maaltijd succesvol toegevoegd!',
			'meal.updatedSuccessfully' => 'Maaltijd succesvol bijgewerkt!',
			'meal.errorSaving' => ({required Object error}) => 'Fout bij het opslaan van de maaltijd: ${error}',
			'meal.removedFromFavorites' => 'Verwijderd uit favorieten!',
			'meal.savedAsFavorite' => 'Maaltijd opgeslagen als favoriet!',
			'meal.unfavorite' => 'Verwijderen uit favorieten',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Kon favoriet niet bijwerken: ${error}',
			'meal.feedbackThanks' => 'Bedankt voor je feedback!',
			'meal.reanalysisUpdated' => 'De analyse is bijgewerkt op basis van je feedback.',
			'meal.failedToProcess' => ({required Object error}) => 'Verwerken mislukt: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Afbeelding verwerken mislukt: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Fout bij het comprimeren van de afbeelding: ${error}',
			'meal.failedToSave' => 'Opslaan van gegevens mislukt. Probeer het opnieuw.',
			'meal.skip' => 'Overslaan',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Vraag ${current} van ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Geen vragen beschikbaar',
			'meal.questionFlow.next' => 'Volgende',
			'meal.questionFlow.continueLabel' => 'Doorgaan',
			'meal.analysis.title' => 'AI-maalanalyse',
			'meal.analysis.stepStarted' => 'Bezig met starten…',
			'meal.analysis.stepDecomposition' => 'Je maaltijd begrijpen…',
			'meal.analysis.stepIngredients' => 'Ingrediënten koppelen aan voedingsgegevens…',
			'meal.analysis.stepUncertainty' => 'Zekerheid controleren…',
			'meal.analysis.stepMealTypeQuestion' => 'Bijna klaar…',
			'meal.analysis.stepResult' => 'Resultaat afronden…',
			'meal.analysis.stepError' => 'Er is iets misgegaan',
			'meal.analysis.stepDefault' => 'Je maaltijd analyseren…',
			'meal.analysis.progressUnderstand' => 'Begrijpen',
			'meal.analysis.progressMatch' => 'Koppelen',
			'meal.analysis.progressCheck' => 'Controleren',
			'meal.analysis.progressMealType' => 'Maaltijdtype kiezen',
			'meal.analysis.progressFinish' => 'Afronden',
			'meal.analysis.detectedIngredientHeading' => 'Ingrediënten die we herkennen',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} meer',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingrediënten gedetecteerd',
			'meal.analysis.ingredientsPending' => 'Ingrediënten scannen…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'Wat lijkt er fout?',
			'meal.feedback.subtitle' => 'Help ons de analyse te verbeteren door een of meer problemen te selecteren.',
			'meal.feedback.tellUsMore' => 'Vertel ons meer',
			'meal.feedback.describeIncorrect' => 'Beschrijf wat er onjuist was',
			'meal.feedback.submit' => 'Verzenden',
			'meal.feedback.issueFoodIdentification' => 'Voedselherkenning',
			'meal.feedback.issuePortionSize' => 'Portiegrootte',
			'meal.feedback.issueCalorieDistribution' => 'Calorieverdeling',
			'meal.feedback.issueMacrosWrong' => 'Macro\'s kloppen niet',
			'meal.feedback.issueMissingItems' => 'Ontbrekende items',
			'meal.feedback.issueExtraItems' => 'Te veel items',
			'meal.feedback.issueOther' => 'Anders',
			'favorites.title' => 'Favorieten',
			'favorites.empty' => 'Nog geen favoriete maaltijden.',
			'favorites.searchPlaceholder' => 'Favoriete maaltijden zoeken',
			'favorites.searchEmptyTitle' => 'Geen favorieten komen overeen met je zoekopdracht',
			'favorites.searchEmptySubtitle' => 'Probeer een andere maaltijdnaam, hoeveelheid of maaltijdtype.',
			'favorites.sortLabel' => 'Favorieten sorteren',
			'favorites.undo' => 'Ongedaan maken',
			'favorites.removed' => ({required Object name}) => '${name} verwijderd uit favorieten',
			'favorites.sortOptions.recent' => 'Recent',
			'favorites.sortOptions.calories' => 'Calorieën',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profiel',
			'profile.noProfileData' => 'Geen profielgegevens gevonden',
			'profile.yourProfile' => 'Jouw profiel',
			'profile.viewAndManage' => 'Bekijk en beheer je gezondheidsinformatie',
			'profile.sections.profile' => 'PROFIEL',
			'profile.sections.basicInformation' => 'BASISINFORMATIE',
			'profile.sections.goalsAndActivity' => 'DOELEN & ACTIVITEIT',
			'profile.sections.calculatedValues' => 'BEREKENDE WAARDEN',
			'profile.gender' => 'Geslacht',
			'profile.height' => 'Lengte',
			'profile.weight' => 'Gewicht',
			'profile.age' => 'Leeftijd',
			'profile.weightGoal' => 'Gewichtsdoel',
			'profile.targetWeight' => 'Streefgewicht',
			'profile.activityLevel' => 'Activiteitsniveau',
			'profile.healthMetrics' => 'Gezondheidsstatistieken',
			'profile.notSet' => 'Niet ingesteld',
			'profile.years' => 'jaar',
			'profile.updatedSuccessfully' => 'Profiel succesvol bijgewerkt!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Dagdoel',
			'profile.calculatedValues.calPerDay' => 'cal/dag',
			'profile.calculatedValues.notAvailable' => 'n.v.t.',
			'healthScore.title' => 'Gezondheidsscore',
			'healthScore.whyThisScore' => 'Waarom deze score?',
			'healthScore.note' => 'Deze score is een AI-schatting op basis van de herkende ingrediënten en voedingsdichtheid. Raadpleeg altijd een professional voor dieetadvies.',
			'healthScore.unhealthy' => 'Ongezond',
			'healthScore.healthy' => 'Gezond',
			'healthScore.neutral' => 'Neutraal',
			'editProfile.title' => 'Profiel bewerken',
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
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metrisch (cm)',
			'editProfile.imperialFtIn' => 'Imperiaal (ft/in)',
			'editProfile.metricKg' => 'Metrisch (kg)',
			'editProfile.imperialLbs' => 'Imperiaal (lbs)',
			'editProfile.genders.male' => 'Man',
			'editProfile.genders.female' => 'Vrouw',
			'editProfile.genders.other' => 'Anders',
			'editProfile.weightGoals.loseWeight.name' => 'Afvallen',
			'editProfile.weightGoals.loseWeight.description' => 'Creëer een calorietekort om af te vallen',
			'editProfile.weightGoals.maintainWeight.name' => 'Gewicht behouden',
			'editProfile.weightGoals.maintainWeight.description' => 'Behoud je huidige gewicht',
			'editProfile.weightGoals.gainWeight.name' => 'Aankomen',
			'editProfile.weightGoals.gainWeight.description' => 'Creëer een calorie-overschot om aan te komen',
			'editProfile.activityLevels.sedentary.name' => 'Zittend',
			'editProfile.activityLevels.sedentary.description' => 'Weinig tot geen lichaamsbeweging',
			'editProfile.activityLevels.lightlyActive.name' => 'Licht actief',
			'editProfile.activityLevels.lightlyActive.description' => 'Lichte lichaamsbeweging 1–3 dagen/week',
			'editProfile.activityLevels.moderatelyActive.name' => 'Matig actief',
			'editProfile.activityLevels.moderatelyActive.description' => 'Matige lichaamsbeweging 3–5 dagen/week',
			'editProfile.activityLevels.veryActive.name' => 'Zeer actief',
			'editProfile.activityLevels.veryActive.description' => 'Zware training 6–7 dagen/week',
			'editProfile.activityLevels.extremelyActive.name' => 'Uiterst actief',
			'editProfile.activityLevels.extremelyActive.description' => 'Zeer zware training, fysiek beroep',
			'settings.title' => 'Instellingen',
			'settings.sections.profile' => 'PROFIEL',
			'settings.sections.localization' => 'LOCALISATIE',
			'settings.sections.notifications' => 'MELDINGEN',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'ONDERSTEUNING & JURIDISCH',
			'settings.sections.about' => 'OVER',
			'settings.sections.dangerZone' => 'GEVAARSZONE',
			'settings.sections.developer' => 'ONTWIKKELAAR',
			'settings.editProfile.title' => 'Profiel bewerken',
			'settings.editProfile.subtitle' => 'Werk je persoonsgegevens bij',
			'settings.language.title' => 'Taal',
			'settings.language.subtitle' => 'Kies je voorkeurstaal',
			'settings.language.searchHint' => 'Zoek talen...',
			'settings.language.noResults' => 'Geen resultaten gevonden',
			'settings.heightUnit.title' => 'Lengte-eenheid',
			'settings.weightUnit.title' => 'Gewichtseenheid',
			'settings.mealReminders.title' => 'Maaltijdherinneringen',
			'settings.mealReminders.subtitle' => 'Blijf op koers met tijdige meldingen',
			'settings.theme.title' => 'Thema',
			'settings.theme.light' => 'Licht',
			'settings.theme.dark' => 'Donker',
			'settings.theme.system' => 'Systeem',
			'settings.sendFeedback.title' => 'Feedback verzenden',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Help ${appLabel} te verbeteren',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} app-feedback',
			'settings.sendFeedback.emailBodyPrefix' => 'Geef hieronder je feedback:',
			'settings.sendFeedback.appVersion' => 'App-versie',
			'settings.sendFeedback.device' => 'Apparaat',
			'settings.sendFeedback.osVersion' => 'OS-versie',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Maaltijdgeschiedenis exporteren',
			'settings.exportMealHistory.subtitle' => 'Deel een CSV van je gelogde maaltijden',
			'settings.exportMealHistory.shareText' => 'Je Calorify-export van de maaltijdgeschiedenis',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Kon maaltijdgeschiedenis niet exporteren: ${error}',
			'settings.clearAllData.title' => 'Alle gegevens wissen',
			'settings.clearAllData.subtitle' => 'Verwijder onherroepelijk al je informatie',
			'settings.clearAllData.confirmationTitle' => 'Alle gegevens wissen?',
			'settings.clearAllData.confirmationMessage' => 'Deze actie kan niet ongedaan worden gemaakt. Al je gelogde maaltijden, favorieten en profielinstellingen worden permanent verwijderd.',
			'settings.clearAllData.cancel' => 'Annuleren',
			'settings.clearAllData.clearEverything' => 'Alles wissen',
			'settings.debugOptions.title' => 'Debugopties',
			'settings.developerModeEnabled' => 'Ontwikkelaarsmodus ingeschakeld!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Machtigingen bekijken en beheren',
			'settings.healthConnect.unavailable.title' => 'Health Connect niet beschikbaar',
			'settings.healthConnect.unavailable.description' => 'Health Connect is niet beschikbaar op dit apparaat. Installeer Health Connect via de Play Store (Android 9+) of update naar Android 14+.',
			'settings.healthConnect.permissions.title' => 'Machtigingen',
			'settings.healthConnect.permissions.description' => 'De volgende machtigingen zijn vereist om Health Connect-integratie te bieden:',
			'settings.healthConnect.permissions.granted' => 'Toegekend',
			'settings.healthConnect.permissions.notGranted' => 'Niet toegekend',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Totale verbrande calorieën lezen',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Staat de app toe om je totale verbrande calorieën uit Health Connect te lezen.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Deze machtiging wordt gebruikt om je dagelijkse calorieverbranding in de app te tonen, zodat je je totale energieverbruik gedurende de dag beter begrijpt.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Voedingsgegevens lezen',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Staat de app toe om voedingsgegevens uit Health Connect te lezen.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Met deze machtiging kan de app voedingsinformatie lezen die mogelijk is gelogd door andere apps die met Health Connect zijn verbonden, voor een compleet beeld van je voeding.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Voedingsgegevens schrijven',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Staat de app toe om voedingsgegevens naar Health Connect te schrijven.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Met deze machtiging kan de app je gelogde maaltijden synchroniseren met Health Connect, zodat je voedingsgegevens beschikbaar zijn voor andere gezondheids- en fitnessapps die je gebruikt.',
			'settings.healthConnect.managePermissions' => 'Machtigingen beheren',
			'settings.healthConnect.openSettings' => 'Instellingen van Health Connect openen',
			'settings.healthConnect.requestPermissions' => 'Machtigingen aanvragen',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Machtigingsaanvraag is geannuleerd of mislukt. Probeer het opnieuw of geef machtigingen handmatig in de instellingen van Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Kan geen machtigingen aanvragen. Probeer het opnieuw of geef machtigingen handmatig in de instellingen van Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Aanvragen...',
			'settings.about.title' => 'Over',
			'settings.about.tagline' => 'Snel, gratis en met privacy voorop: inzicht in calorieën',
			'settings.about.ourStory.title' => 'Ons verhaal',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} is ontstaan uit een simpele frustratie: de meeste calorie-apps zijn óf te ingewikkeld, vereisen constant handmatig invoeren, vragen hoge abonnementskosten, of gaan slordig om met privacy.\n\nAls solodeveloper wilde ik iets simpelers en eerlijkers bouwen — een app die AI inzet om moeite te verminderen, snel en gratis blijft, en je gezondheidsdata met respect behandelt.\n\n${appLabel} is de app waarvan ik wilde dat die bestond: geen accounts, geen tracking, geen advertenties — alleen heldere, praktische inzichten en jouw gezondheidsdoelen.',
			'settings.about.privacy.title' => 'Jouw privacy telt',
			'settings.about.privacy.description' => 'Privacy is geen bijzaak — het is een ontwerpbeginsel. Dit betekent in de praktijk:',
			'settings.about.privacy.noAccounts' => 'Geen accounts vereist\nGebruik de app direct. Geen aanmeldingen, geen identiteiten.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Geen gedrags-tracking\n${appLabel} monitort je activiteit niet, bouwt geen gebruiksprofielen en volgt je niet over apps of websites heen.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Advertentievrij ontworpen\n${appLabel} werkt zonder advertenties of datagedreven verdienmodellen.',
			'settings.about.privacy.noDataSelling' => 'Geen verkoop van data\nJe gezondheidsgegevens worden nooit verkocht of gedeeld met derden.',
			'settings.about.privacy.localStorage' => 'Local-first opslag\nJe data blijft op je apparaat.',
			'settings.about.privacy.privacyPolicy' => 'Privacybeleid',
			'settings.about.developer.title' => 'Gemaakt door een solodeveloper',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} is gebouwd en onderhouden door één solodeveloper die focust op rustige, privacy-respecterende gezondheidssoftware.\n\nFeedback wordt persoonlijk gelezen en helpt de richting van de app te bepalen.',
			'settings.about.developer.website' => 'Website',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Geniet je van ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Jouw feedback helpt ${appLabel} voor iedereen beter te maken.',
			'settings.about.feedback.rateApp' => 'Beoordeel in de Play Store',
			'settings.about.feedback.sendFeedback' => 'Feedback verzenden',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Blijf op koers met herinneringen',
			'reminders.description' => 'Ontvang vriendelijke herinneringen om je maaltijden te loggen en consequent te blijven met je voedingsdoelen',
			'reminders.notificationsEnabled' => 'Meldingen ingeschakeld',
			'reminders.notificationsDisabled' => 'Meldingen uitgeschakeld',
			'reminders.enabledSubtitle' => 'Je ontvangt maaltijdherinneringen',
			'reminders.disabledSubtitle' => 'Schakel meldingen in om maaltijdherinneringen te ontvangen',
			'reminders.mealReminders' => 'Maaltijdherinneringen',
			'reminders.breakfast' => 'Ontbijt',
			'reminders.lunch' => 'Lunch',
			'reminders.dinner' => 'Diner',
			'reminders.snack' => 'Snack',
			'reminders.unknown' => 'Onbekend',
			'reminders.change' => 'Wijzigen',
			'reminders.enableNotifications' => 'Meldingen inschakelen',
			'reminders.skipForNow' => 'Voor nu overslaan',
			'reminders.saveChanges' => 'Wijzigingen opslaan',
			'reminders.enabledSuccessfully' => 'Meldingen succesvol ingeschakeld!',
			'reminders.permissionDenied' => 'Machtiging voor meldingen geweigerd',
			'reminders.errorEnabling' => ({required Object error}) => 'Fout bij het inschakelen van meldingen: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Fout bij het voltooien van de instelling: ${error}',
			'notifications.breakfast.title' => 'Ontbijttijd! 🍳',
			'notifications.breakfast.body' => 'Vergeet niet je ontbijt te loggen',
			'notifications.lunch.title' => 'Lunchtijd! 🥗',
			'notifications.lunch.body' => 'Tijd om je lunch te loggen',
			'notifications.dinner.title' => 'Dinertijd! 🍽️',
			'notifications.dinner.body' => 'Vergeet niet je diner te loggen',
			'notifications.snack.title' => 'Snacktijd! 🍎',
			'notifications.snack.body' => 'Tijd voor een gezonde snack',
			'notifications.test.title' => 'Testmelding',
			'login.title' => 'Inloggen',
			'login.signInWithGoogle' => 'Inloggen met Google',
			'login.signInFailed' => 'Google-aanmelding is mislukt of geannuleerd.',
			'disclaimer.pleaseNote' => 'Let op',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} geeft geschatte voedingsinformatie. De nauwkeurigheid hangt af van jouw invoer en variaties in voeding. Gebruik dit als richtlijn, niet als definitieve bron. Raadpleeg een professional voor persoonlijk dieetadvies.',
			'disclaimer.snap.portionSize.title' => 'Portiegrootte',
			'disclaimer.snap.portionSize.description' => 'De nauwkeurigheid van de schattingen hangt sterk af van je juiste inschatting van de portiegrootte.',
			'disclaimer.snap.preparationMethods.title' => 'Bereidingsmethoden',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Kookmethoden kunnen de voedingswaarde aanzienlijk veranderen. De schattingen van ${appLabel} houden hier mogelijk niet altijd rekening mee.',
			'disclaimer.snap.ingredients.title' => 'Ingrediënten',
			'disclaimer.snap.ingredients.description' => 'Complexe gerechten met veel verborgen ingrediënten kunnen tot minder nauwkeurige schattingen leiden.',
			'disclaimer.snap.databaseLimitations.title' => 'Beperkingen van de database',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'De voedsel­database van ${appLabel} is uitgebreid, maar bevat mogelijk niet elk voedingsmiddel of elke variant.',
			'disclaimer.weightEstimate.title' => 'Over gewichtsinschatting',
			'disclaimer.weightEstimate.description' => 'De geprojecteerde gewichtsverandering is een theoretische schatting op basis van het simpele ‘calorieën in vs. calorieën uit’-model. Het is alleen bedoeld als motivatie, niet als voorspelling van je werkelijke gewicht.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Calorie-nauwkeurigheid',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Deze schatting is zo nauwkeurig als jouw bijgehouden calorie-inname en -verbruik. Onnauwkeurig loggen leidt tot een onnauwkeurige projectie.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologische factoren',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Werkelijk afvallen/aankomen wordt beïnvloed door metabolisme, hormonen, slaap, stress, hydratatie en andere individuele factoren die ${appLabel} niet kan meten.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Watergewicht & schommelingen',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normaal dagelijks gewicht kan aanzienlijk schommelen door vocht, spijsvertering en timing. De schatting houdt geen rekening met deze dagelijkse veranderingen.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Professionele begeleiding',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Gebruik deze schatting niet voor medische beslissingen. Raadpleeg altijd een zorgprofessional of diëtist voor persoonlijk advies over gewichtsbeheer.',
			'disclaimer.healthMetrics.description' => 'Deze statistieken helpen je de energiebehoefte van je lichaam te begrijpen en sturen je voedingsdoelen.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basale stofwisseling (BMR) is het aantal calorieën dat je lichaam in rust verbrandt om basisfuncties zoals ademhaling en circulatie te onderhouden. BMR hangt af van je leeftijd, geslacht, lengte en gewicht. Een hogere BMR betekent dat je lichaam in rust van nature meer calorieën verbrandt, vaak door meer spiermassa, jongere leeftijd of mannelijk geslacht. Een lagere BMR duidt meestal op minder spiermassa, hogere leeftijd of vrouwelijk geslacht.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Totale dagelijkse energieverbruik (TDEE) is het totaal aan calorieën dat je per dag verbrandt, inclusief je BMR plus calorieën uit lichamelijke activiteit en dagelijkse beweging. TDEE hangt af van je BMR en activiteitsniveau. Een hogere TDEE betekent dat je totaal meer calorieën verbrandt, meestal door actiever te zijn of een hogere BMR te hebben. Een lagere TDEE suggereert minder dagelijkse activiteit of een lagere BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Dagdoel',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Dagdoel is je aanbevolen dagelijkse calorie-inname op basis van je TDEE en gewichtsdoel. Voor afvallen consumeer je minder calorieën dan je TDEE. Voor gewichtsbehoud kom je overeen met je TDEE. Voor aankomen consumeer je meer calorieën dan je TDEE. Dit helpt je je gewenste gewichtsverandering in een gezond tempo te bereiken.',
			'disclaimer.calorieExpenditure.title' => 'Schatting calorieverbruik',
			'disclaimer.calorieExpenditure.description' => 'Wanneer Health Connect-gegevens niet beschikbaar zijn, schatten we de vandaag verbrande calorieën met je basale stofwisseling (BMR) en activiteitsniveau (TDEE), geschaald naar het deel van de dag dat is verstreken.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Hoe de schatting wordt berekend',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'We berekenen je TDEE (op basis van je profiel) en vermenigvuldigen dit met het deel van de dag dat is verstreken (uren + minuten) / 24 om de tot nu toe verbrande calorieën te schatten.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Professionele begeleiding',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Gebruik deze schatting niet voor medische beslissingen. Raadpleeg altijd een zorgprofessional of diëtist voor persoonlijk advies over gewichtsbeheer.',
			'common.close' => 'Sluiten',
			'common.kContinue' => 'Doorgaan',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Bevalt ${appLabel}?',
			'feedbackRating.yes' => 'Ja, het bevalt me',
			'feedbackRating.no' => 'Niet echt',
			'feedbackRating.rateStepHeading' => 'Beoordeel in de Play Store',
			'feedbackRating.emailStepHeading' => 'Stuur feedback per e-mail',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Een snelle beoordeling helpt anderen ${appLabel} te vinden en houdt de ontwikkeling gaande. Wil je een moment nemen om er een achter te laten?',
			'feedbackRating.shareFeedbackViaEmail' => 'Jouw feedback bepaalt wat er volgt — we lezen elk bericht. Wil je je gedachten delen via e-mail?',
			'feedbackRating.rateCta' => 'Beoordeel in de Play Store',
			'feedbackRating.maybeLater' => 'Misschien later',
			'feedbackRating.sendFeedback' => 'Feedback verzenden',
			'feedbackRating.noThanks' => 'Nee, bedankt',
			'feedbackRating.aboutUsDescription' => 'Met zorg gemaakt door een klein team. We focussen op privacy, eenvoud en het helpen opbouwen van betere eetgewoonten.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Benieuwd wie er achter ${appLabel} zit? Zie ',
			'feedbackRating.aboutUsLinkLabel' => 'Over ons',
			'feedbackRating.thankYouMessage' => 'Bedankt! We vragen het een andere keer nog eens.',
			'health.syncFailed' => 'Kon niet synchroniseren met Health Connect',
			'health.mealSynced' => 'Maaltijd gesynchroniseerd met Health Connect',
			_ => null,
		};
	}
}
