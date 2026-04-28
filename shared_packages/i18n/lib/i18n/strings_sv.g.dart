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
class TranslationsSv with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsSv({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.sv,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <sv>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsSv _root = this; // ignore: unused_field

	@override 
	TranslationsSv $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsSv(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Svenska';
	@override String get flag => '🇸🇪';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsSv errors = _TranslationsErrorsSv._(_root);
	@override late final _TranslationsOnboardingSv onboarding = _TranslationsOnboardingSv._(_root);
	@override late final _TranslationsTabsSv tabs = _TranslationsTabsSv._(_root);
	@override late final _TranslationsHomeSv home = _TranslationsHomeSv._(_root);
	@override late final _TranslationsHistorySv history = _TranslationsHistorySv._(_root);
	@override late final _TranslationsMealSv meal = _TranslationsMealSv._(_root);
	@override late final _TranslationsFavoritesSv favorites = _TranslationsFavoritesSv._(_root);
	@override late final _TranslationsProfileSv profile = _TranslationsProfileSv._(_root);
	@override late final _TranslationsHealthScoreSv healthScore = _TranslationsHealthScoreSv._(_root);
	@override late final _TranslationsEditProfileSv editProfile = _TranslationsEditProfileSv._(_root);
	@override late final _TranslationsSettingsSv settings = _TranslationsSettingsSv._(_root);
	@override late final _TranslationsRemindersSv reminders = _TranslationsRemindersSv._(_root);
	@override late final _TranslationsNotificationsSv notifications = _TranslationsNotificationsSv._(_root);
	@override late final _TranslationsLoginSv login = _TranslationsLoginSv._(_root);
	@override late final _TranslationsDisclaimerSv disclaimer = _TranslationsDisclaimerSv._(_root);
	@override late final _TranslationsCommonSv common = _TranslationsCommonSv._(_root);
	@override late final _TranslationsFeedbackRatingSv feedbackRating = _TranslationsFeedbackRatingSv._(_root);
	@override late final _TranslationsHealthSv health = _TranslationsHealthSv._(_root);
}

// Path: errors
class _TranslationsErrorsSv implements TranslationsErrorsEn {
	_TranslationsErrorsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Du har gjort för många förfrågningar. Vänta en stund innan du försöker igen.';
	@override String get networkError => 'Nätverksfel. Kontrollera din internetanslutning.';
	@override String get unknownError => 'Något gick fel. Försök igen senare.';
	@override String get loadingProfileData => 'Fel vid inläsning av profildata';
	@override String get somethingWentWrong => 'Något gick fel.';
	@override String get retry => 'Försök igen';
}

// Path: onboarding
class _TranslationsOnboardingSv implements TranslationsOnboardingEn {
	_TranslationsOnboardingSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Välkommen till ${appLabel}';
	@override String get subtitle => 'Din personliga näringskompis, driven av AI';
	@override String get getStarted => 'Kom igång';
	@override late final _TranslationsOnboardingFeaturesSv features = _TranslationsOnboardingFeaturesSv._(_root);
	@override late final _TranslationsOnboardingGenderSv gender = _TranslationsOnboardingGenderSv._(_root);
	@override late final _TranslationsOnboardingHeightSv height = _TranslationsOnboardingHeightSv._(_root);
	@override late final _TranslationsOnboardingWeightSv weight = _TranslationsOnboardingWeightSv._(_root);
	@override late final _TranslationsOnboardingAgeSv age = _TranslationsOnboardingAgeSv._(_root);
	@override late final _TranslationsOnboardingBmiScaleSv bmiScale = _TranslationsOnboardingBmiScaleSv._(_root);
	@override late final _TranslationsOnboardingWeightGoalSv weightGoal = _TranslationsOnboardingWeightGoalSv._(_root);
	@override late final _TranslationsOnboardingActivityLevelSv activityLevel = _TranslationsOnboardingActivityLevelSv._(_root);
	@override late final _TranslationsOnboardingHealthConnectSv healthConnect = _TranslationsOnboardingHealthConnectSv._(_root);
	@override late final _TranslationsOnboardingReinforcementSv reinforcement = _TranslationsOnboardingReinforcementSv._(_root);
}

// Path: tabs
class _TranslationsTabsSv implements TranslationsTabsEn {
	_TranslationsTabsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Översikt';
	@override String get history => 'Historik';
}

// Path: home
class _TranslationsHomeSv implements TranslationsHomeEn {
	_TranslationsHomeSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummarySv aiSummary = _TranslationsHomeAiSummarySv._(_root);
	@override late final _TranslationsHomeDailyGoalSv dailyGoal = _TranslationsHomeDailyGoalSv._(_root);
	@override late final _TranslationsHomeDailySummarySv dailySummary = _TranslationsHomeDailySummarySv._(_root);
	@override late final _TranslationsHomeIntakeProgressSv intakeProgress = _TranslationsHomeIntakeProgressSv._(_root);
	@override late final _TranslationsHomeIntakeHistorySv intakeHistory = _TranslationsHomeIntakeHistorySv._(_root);
	@override late final _TranslationsHomeMealLogSv mealLog = _TranslationsHomeMealLogSv._(_root);
	@override late final _TranslationsHomeMealDescriptionSv mealDescription = _TranslationsHomeMealDescriptionSv._(_root);
	@override late final _TranslationsHomeFavoriteMealsSv favoriteMeals = _TranslationsHomeFavoriteMealsSv._(_root);
	@override late final _TranslationsHomeMealSnapSv mealSnap = _TranslationsHomeMealSnapSv._(_root);
	@override late final _TranslationsHomeConnectHealthSv connectHealth = _TranslationsHomeConnectHealthSv._(_root);
}

// Path: history
class _TranslationsHistorySv implements TranslationsHistoryEn {
	_TranslationsHistorySv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Inga måltider registrerade';
	@override String get emptyMessage => 'Ta en bild av din senaste måltid för att logga den här.';
	@override String get today => 'Idag';
	@override String get yesterday => 'Igår';
}

// Path: meal
class _TranslationsMealSv implements TranslationsMealEn {
	_TranslationsMealSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Åh nej!';
	@override String get delete => 'Ta bort';
	@override String get editMeal => 'Redigera måltid';
	@override String get addMeal => 'Lägg till måltid';
	@override String get saveMeal => 'Spara måltid';
	@override String get save => 'Spara';
	@override String get mealName => 'Måltidsnamn';
	@override String get mealNameHint => 't.ex. Äggröra med rostat bröd';
	@override String get mealQuantity => 'Måltidsmängd';
	@override String get mealQuantityHint => 't.ex. 1 skål, 2 skivor';
	@override String get timeOfMeal => 'Tid för måltid';
	@override String get timeOfMealHint => 'Välj tiden då du åt din måltid';
	@override String get mealType => 'Måltidstyp';
	@override late final _TranslationsMealNutritionSv nutrition = _TranslationsMealNutritionSv._(_root);
	@override late final _TranslationsMealDeleteConfirmationSv deleteConfirmation = _TranslationsMealDeleteConfirmationSv._(_root);
	@override String get addedToLog => 'Måltiden har lagts till i din logg!';
	@override String couldNotAdd({required Object error}) => 'Kunde inte lägga till måltid: ${error}';
	@override String get savedSuccessfully => 'Måltiden har lagts till!';
	@override String get updatedSuccessfully => 'Måltiden har uppdaterats!';
	@override String errorSaving({required Object error}) => 'Fel vid sparande av måltid: ${error}';
	@override String get removedFromFavorites => 'Togs bort från favoriter!';
	@override String get savedAsFavorite => 'Måltid sparad som favorit!';
	@override String get unfavorite => 'Ta bort favorit';
	@override String couldNotUpdateFavorite({required Object error}) => 'Kunde inte uppdatera favorit: ${error}';
	@override String get feedbackThanks => 'Tack för din feedback!';
	@override String get reanalysisUpdated => 'Uppdaterade måltidsanalysen baserat på din feedback.';
	@override String failedToProcess({required Object error}) => 'Kunde inte bearbeta: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Kunde inte bearbeta bild: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Fel vid komprimering av bild: ${error}';
	@override String get failedToSave => 'Misslyckades med att spara data. Försök igen.';
	@override String get skip => 'Hoppa över';
	@override late final _TranslationsMealQuestionFlowSv questionFlow = _TranslationsMealQuestionFlowSv._(_root);
	@override late final _TranslationsMealAnalysisSv analysis = _TranslationsMealAnalysisSv._(_root);
	@override late final _TranslationsMealFeedbackSv feedback = _TranslationsMealFeedbackSv._(_root);
}

// Path: favorites
class _TranslationsFavoritesSv implements TranslationsFavoritesEn {
	_TranslationsFavoritesSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoriter';
	@override String get empty => 'Inga favoritmåltider ännu.';
	@override String get searchPlaceholder => 'Sök favoritmåltider';
	@override String get searchEmptyTitle => 'Inga favoriter matchar din sökning';
	@override String get searchEmptySubtitle => 'Prova ett annat måltidsnamn, en annan mängd eller måltidstyp.';
	@override String get sortLabel => 'Sortera favoriter';
	@override String get undo => 'Ångra';
	@override String removed({required Object name}) => 'Tog bort ${name} från favoriter';
	@override late final _TranslationsFavoritesSortOptionsSv sortOptions = _TranslationsFavoritesSortOptionsSv._(_root);
}

// Path: profile
class _TranslationsProfileSv implements TranslationsProfileEn {
	_TranslationsProfileSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Ingen profildata hittades';
	@override String get yourProfile => 'Din profil';
	@override String get viewAndManage => 'Visa och hantera din hälsoinformation';
	@override late final _TranslationsProfileSectionsSv sections = _TranslationsProfileSectionsSv._(_root);
	@override String get gender => 'Kön';
	@override String get height => 'Längd';
	@override String get weight => 'Vikt';
	@override String get age => 'Ålder';
	@override String get weightGoal => 'Viktmål';
	@override String get targetWeight => 'Målvikt';
	@override String get activityLevel => 'Aktivitetsnivå';
	@override String get healthMetrics => 'Hälsomått';
	@override String get notSet => 'Inte angivet';
	@override String get years => 'år';
	@override String get updatedSuccessfully => 'Profilen uppdaterades!';
	@override late final _TranslationsProfileCalculatedValuesSv calculatedValues = _TranslationsProfileCalculatedValuesSv._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreSv implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hälsopoäng';
	@override String get whyThisScore => 'Varför denna poäng?';
	@override String get note => 'Denna poäng är en AI-uppskattning baserad på identifierade ingredienser och näringstäthet. Rådfråga alltid en professionell för kostråd.';
	@override String get unhealthy => 'Ohälsosam';
	@override String get healthy => 'Hälsosam';
	@override String get neutral => 'Neutral';
}

// Path: editProfile
class _TranslationsEditProfileSv implements TranslationsEditProfileEn {
	_TranslationsEditProfileSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Redigera profil';
	@override late final _TranslationsEditProfileSectionsSv sections = _TranslationsEditProfileSectionsSv._(_root);
	@override String get gender => 'Kön';
	@override String get dateOfBirth => 'Födelsedatum';
	@override String get height => 'Längd';
	@override String get weight => 'Vikt';
	@override String get weightGoal => 'Viktmål';
	@override String get activityLevel => 'Aktivitetsnivå';
	@override String get metric => 'Metriskt';
	@override String get imperial => 'Imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metriskt (cm)';
	@override String get imperialFtIn => 'Imperial (fot/tum)';
	@override String get metricKg => 'Metriskt (kg)';
	@override String get imperialLbs => 'Imperial (lbs)';
	@override late final _TranslationsEditProfileGendersSv genders = _TranslationsEditProfileGendersSv._(_root);
	@override late final _TranslationsEditProfileWeightGoalsSv weightGoals = _TranslationsEditProfileWeightGoalsSv._(_root);
	@override late final _TranslationsEditProfileActivityLevelsSv activityLevels = _TranslationsEditProfileActivityLevelsSv._(_root);
}

// Path: settings
class _TranslationsSettingsSv implements TranslationsSettingsEn {
	_TranslationsSettingsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inställningar';
	@override late final _TranslationsSettingsSectionsSv sections = _TranslationsSettingsSectionsSv._(_root);
	@override late final _TranslationsSettingsEditProfileSv editProfile = _TranslationsSettingsEditProfileSv._(_root);
	@override late final _TranslationsSettingsLanguageSv language = _TranslationsSettingsLanguageSv._(_root);
	@override late final _TranslationsSettingsHeightUnitSv heightUnit = _TranslationsSettingsHeightUnitSv._(_root);
	@override late final _TranslationsSettingsWeightUnitSv weightUnit = _TranslationsSettingsWeightUnitSv._(_root);
	@override late final _TranslationsSettingsMealRemindersSv mealReminders = _TranslationsSettingsMealRemindersSv._(_root);
	@override late final _TranslationsSettingsThemeSv theme = _TranslationsSettingsThemeSv._(_root);
	@override late final _TranslationsSettingsSendFeedbackSv sendFeedback = _TranslationsSettingsSendFeedbackSv._(_root);
	@override late final _TranslationsSettingsExportMealHistorySv exportMealHistory = _TranslationsSettingsExportMealHistorySv._(_root);
	@override late final _TranslationsSettingsClearAllDataSv clearAllData = _TranslationsSettingsClearAllDataSv._(_root);
	@override late final _TranslationsSettingsDebugOptionsSv debugOptions = _TranslationsSettingsDebugOptionsSv._(_root);
	@override String get developerModeEnabled => 'Utvecklarläge aktiverat!';
	@override late final _TranslationsSettingsHealthConnectSv healthConnect = _TranslationsSettingsHealthConnectSv._(_root);
	@override late final _TranslationsSettingsAboutSv about = _TranslationsSettingsAboutSv._(_root);
	@override late final _TranslationsSettingsAppInfoSv appInfo = _TranslationsSettingsAppInfoSv._(_root);
}

// Path: reminders
class _TranslationsRemindersSv implements TranslationsRemindersEn {
	_TranslationsRemindersSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Håll kursen med påminnelser';
	@override String get description => 'Få varsamma påminnelser om att logga dina måltider och vara konsekvent med dina näringsmål';
	@override String get notificationsEnabled => 'Aviseringar aktiverade';
	@override String get notificationsDisabled => 'Aviseringar inaktiverade';
	@override String get enabledSubtitle => 'Du kommer att få måltidspåminnelser';
	@override String get disabledSubtitle => 'Aktivera aviseringar för att få måltidspåminnelser';
	@override String get mealReminders => 'Måltidspåminnelser';
	@override String get breakfast => 'Frukost';
	@override String get lunch => 'Lunch';
	@override String get dinner => 'Middag';
	@override String get snack => 'Mellanmål';
	@override String get unknown => 'Okänt';
	@override String get change => 'Ändra';
	@override String get enableNotifications => 'Aktivera aviseringar';
	@override String get skipForNow => 'Hoppa över för tillfället';
	@override String get saveChanges => 'Spara ändringar';
	@override String get enabledSuccessfully => 'Aviseringar har aktiverats!';
	@override String get permissionDenied => 'Aviseringsbehörighet nekad';
	@override String errorEnabling({required Object error}) => 'Fel vid aktivering av aviseringar: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Fel vid slutförande av konfiguration: ${error}';
}

// Path: notifications
class _TranslationsNotificationsSv implements TranslationsNotificationsEn {
	_TranslationsNotificationsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastSv breakfast = _TranslationsNotificationsBreakfastSv._(_root);
	@override late final _TranslationsNotificationsLunchSv lunch = _TranslationsNotificationsLunchSv._(_root);
	@override late final _TranslationsNotificationsDinnerSv dinner = _TranslationsNotificationsDinnerSv._(_root);
	@override late final _TranslationsNotificationsSnackSv snack = _TranslationsNotificationsSnackSv._(_root);
	@override late final _TranslationsNotificationsTestSv test = _TranslationsNotificationsTestSv._(_root);
}

// Path: login
class _TranslationsLoginSv implements TranslationsLoginEn {
	_TranslationsLoginSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Logga in';
	@override String get signInWithGoogle => 'Logga in med Google';
	@override String get signInFailed => 'Google-inloggning misslyckades eller avbröts.';
}

// Path: disclaimer
class _TranslationsDisclaimerSv implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Observera';
	@override late final _TranslationsDisclaimerSnapSv snap = _TranslationsDisclaimerSnapSv._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateSv weightEstimate = _TranslationsDisclaimerWeightEstimateSv._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsSv healthMetrics = _TranslationsDisclaimerHealthMetricsSv._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureSv calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureSv._(_root);
}

// Path: common
class _TranslationsCommonSv implements TranslationsCommonEn {
	_TranslationsCommonSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get close => 'Stäng';
	@override String get kContinue => 'Fortsätt';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingSv implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Gillar du ${appLabel}?';
	@override String get yes => 'Ja, jag gillar den';
	@override String get no => 'Inte riktigt';
	@override String get rateStepHeading => 'Betygsätt på Play Store';
	@override String get emailStepHeading => 'Skicka feedback via e-post';
	@override String soloDevMessage({required Object appLabel}) => 'Ett snabbt betyg hjälper andra att hitta ${appLabel} och håller utvecklingen igång. Vill du ta en minut och lämna ett?';
	@override String get shareFeedbackViaEmail => 'Din feedback styr vad som kommer härnäst — vi läser varje meddelande. Vill du dela dina tankar via e-post?';
	@override String get rateCta => 'Betygsätt på Play Store';
	@override String get maybeLater => 'Kanske senare';
	@override String get sendFeedback => 'Skicka feedback';
	@override String get noThanks => 'Nej tack';
	@override String get aboutUsDescription => 'Gjord med omsorg av ett litet team. Vi fokuserar på integritet, enkelhet och att hjälpa dig bygga bättre matvanor.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Nyfiken på vilka som står bakom ${appLabel}? Se ';
	@override String get aboutUsLinkLabel => 'Om oss';
	@override String get thankYouMessage => 'Tack! Vi frågar igen en annan gång.';
}

// Path: health
class _TranslationsHealthSv implements TranslationsHealthEn {
	_TranslationsHealthSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Kunde inte synka till Health Connect';
	@override String get mealSynced => 'Måltid synkad med Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesSv implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionSv foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionSv._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisSv aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisSv._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationSv healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationSv._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderSv implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vilket kön har du?';
	@override String get description => 'Kön hjälper oss att beräkna din basalmetabolism (BMR) mer exakt.';
	@override String get next => 'Nästa';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightSv implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hur lång är du?';
	@override String get description => 'Din längd hjälper oss att beräkna ditt BMI och din energibehov mer exakt.';
	@override String get metric => 'Metriskt';
	@override String get imperial => 'Imperial';
	@override String get next => 'Nästa';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightSv implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Vad väger du nu?';
	@override String get currentDescription => 'Din nuvarande vikt är viktig för att vi ska kunna anpassa dina dagliga mål.';
	@override String get targetTitle => 'Vad är din målvikt?';
	@override String get targetDescription => 'Att sätta ett viktmål hjälper oss att planera långsiktigt.';
	@override String get metric => 'Metriskt';
	@override String get imperial => 'Imperial';
	@override String get next => 'Nästa';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeSv implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'När är din födelsedag?';
	@override String get description => 'Din ålder hjälper oss att beräkna ditt kaloribehov mer exakt.';
	@override String get next => 'Nästa';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleSv implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Undervikt';
	@override String get healthy => 'Hälsosam';
	@override String get overweight => 'Övervikt';
	@override String get obese => 'Fetma';
	@override late final _TranslationsOnboardingBmiScaleCategoriesSv categories = _TranslationsOnboardingBmiScaleCategoriesSv._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesSv messages = _TranslationsOnboardingBmiScaleMessagesSv._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalSv implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vad är ditt mål?';
	@override String get description => 'Välj det mål som bäst beskriver vad du vill uppnå';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelSv implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hur aktiv är du?';
	@override String get description => 'Detta hjälper oss att beräkna ditt dagliga kaloribehov mer exakt';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectSv implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anslut med Health Connect';
	@override String get description => 'Synka din hälsodata för bättre insikter och automatisk kalorispårning';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingSv automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingSv._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsSv progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsSv._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationSv seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationSv._(_root);
	@override String get connected => 'Health Connect anslutet';
	@override String get notConnected => 'Health Connect inte anslutet';
	@override String get setup => 'Konfigurera Health Connect';
	@override String get skipForNow => 'Hoppa över för tillfället';
	@override String get statusConnected => 'Health Connect är anslutet.';
	@override String get statusSuccess => 'Health Connect har anslutits!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Behörighet nekad. Aktivera Health Connect-behörigheter från telefonens inställningar för ${appLabel}.';
	@override String statusError({required Object error}) => 'Fel vid konfiguration av Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementSv implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessSv trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessSv._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileSv healthProfile = _TranslationsOnboardingReinforcementHealthProfileSv._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleSv goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleSv._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummarySv implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummarySv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din AI-sammanfattning';
	@override String get logMore => 'Logga fler måltider de kommande dagarna för att få personliga AI-insikter.';
	@override String get loading => 'Laddar din sammanfattning...';
	@override String mealCount({required Object count}) => '${count} måltider loggade';
	@override String macroBalanceScore({required Object score}) => 'Balanspoäng ${score}';
	@override String get topFoods => 'Topplivsmedel';
	@override String get trendUp => 'Kalorier på uppgång';
	@override String get trendDown => 'Kalorier på nedgång';
	@override String get trendSteady => 'Kalorierna ligger stabilt';
	@override String generatedAt({required Object time}) => 'Uppdaterad ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalSv implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ställ in ditt dagliga mål';
	@override String get titleSet => 'Ditt dagliga mål';
	@override String get description => 'Redo att påbörja din hälsoresa? Sätt ditt dagliga kalori­mål nedan för att kickstarta din utveckling.';
	@override String get descriptionSet => 'Din kompass är inställd! Detta är ditt dagliga kalorimål som vägleder dig.';
	@override String get yourGoal => 'Ditt mål';
	@override String get goal => 'Mål';
	@override String get dailyCalories => 'Dagliga kalorier (kcal)';
	@override String get setGoal => 'Sätt mål';
	@override String get intake => 'Intag';
	@override String get burned => 'Förbränt';
	@override String get weightImpact => 'Viktpåverkan';
	@override String get estLoss => 'Beräknad minskning på';
	@override String get estGain => 'Beräknad ökning på';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummarySv implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummarySv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagens sammanfattning';
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Kolhydrater';
	@override String get protein => 'Protein';
	@override String get fat => 'Fett';
	@override String get fiber => 'Fiber';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Makrodiagram';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressSv implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagens makrofördelning';
	@override String get target => 'Mål';
	@override String get current => 'Nuvarande';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistorySv implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistorySv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => '7 dagars makrohistorik';
	@override String get trendTitle => 'Dagens trend';
	@override String peakHour({required Object hour}) => 'Topp: ${hour}:00';
	@override String get noHistoryYet => 'Ingen historik ännu';
	@override String get startLogging => 'Börja logga måltider för att se dina\n7-dagars makrotrender här';
}

// Path: home.mealLog
class _TranslationsHomeMealLogSv implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Loggade måltider';
	@override String get emptyMessage => 'Ta en bild av din senaste måltid för att logga den här.';
	@override String get noMealsToday => 'Inga måltider registrerade idag';
	@override String get seeAllMeals => 'Visa alla måltider';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionSv implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snabbtillägg med AI';
	@override String get description => 'Beskriv din måltid så sköter AI resten.';
	@override String get hint => 't.ex. Till frukost åt jag en stor skål havregrynsgröt med en skivad banan och en skopa vassle ...';
	@override String get analyzeMeal => 'Analysera måltid';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsSv implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritmåltider';
	@override String get description => 'Lägg snabbt till en av dina favoritmåltider.';
	@override String get noFavorites => 'Inga favoritmåltider ännu.';
	@override String get addFavoriteHint => 'Klicka på stjärnan på en måltid för att markera den som favorit.';
	@override String get seeAll => 'Visa alla';
	@override String get add => 'Lägg till';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapSv implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fota och spåra din måltid';
	@override String get description => 'Använd kameran för att ta en bild av din mat för AI-analys.';
	@override String get openCamera => 'Öppna kamera';
	@override String get gallery => 'Galleri';
	@override String get compressingPhoto => 'Optimerar foto…';
	@override String get uploadingPhoto => 'Laddar upp foto…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthSv implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synka med Health Connect';
	@override String get description => 'Synka din näringsdata med Health Connect';
	@override String get install => 'Installera';
	@override String get connect => 'Anslut';
}

// Path: meal.nutrition
class _TranslationsMealNutritionSv implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Kolhydrater (g)';
	@override String get protein => 'Protein (g)';
	@override String get fat => 'Fett (g)';
	@override String get fiber => 'Fiber (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationSv implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ta bort måltid';
	@override String get message => 'Är du säker på att du vill ta bort denna måltidspost?';
	@override String get cancel => 'Avbryt';
	@override String get delete => 'Ta bort';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowSv implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Fråga ${current} av ${total}';
	@override String get noQuestionsAvailable => 'Inga frågor tillgängliga';
	@override String get next => 'Nästa';
	@override String get continueLabel => 'Fortsätt';
}

// Path: meal.analysis
class _TranslationsMealAnalysisSv implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-måltidsanalys';
	@override String get stepStarted => 'Startar…';
	@override String get stepDecomposition => 'Förstår din måltid…';
	@override String get stepIngredients => 'Matchar ingredienser med näringsdata…';
	@override String get stepUncertainty => 'Kontrollerar tillförlitlighet…';
	@override String get stepMealTypeQuestion => 'Snart klart…';
	@override String get stepResult => 'Slutför resultatet…';
	@override String get stepError => 'Något gick fel';
	@override String get stepDefault => 'Analyserar din måltid…';
	@override String get progressUnderstand => 'Förstå';
	@override String get progressMatch => 'Matcha';
	@override String get progressCheck => 'Kontrollera';
	@override String get progressMealType => 'Väljer måltidstyp';
	@override String get progressFinish => 'Slutför';
	@override String get detectedIngredientHeading => 'Ingredienser vi upptäcker';
	@override String ingredientsOverflow({required Object count}) => '${count} till';
	@override String ingredientsLine({required Object count}) => '${count} ingredienser identifierade';
	@override String get ingredientsPending => 'Skannar ingredienser…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackSv implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vad ser fel ut?';
	@override String get subtitle => 'Hjälp oss att förbättra analysen genom att välja ett eller flera problem.';
	@override String get tellUsMore => 'Berätta mer';
	@override String get describeIncorrect => 'Beskriv vad som var fel';
	@override String get submit => 'Skicka';
	@override String get issueFoodIdentification => 'Matidentifiering';
	@override String get issuePortionSize => 'Portionsstorlek';
	@override String get issueCalorieDistribution => 'Kalorifördelning';
	@override String get issueMacrosWrong => 'Makron är fel';
	@override String get issueMissingItems => 'Saknade objekt';
	@override String get issueExtraItems => 'Extra objekt';
	@override String get issueOther => 'Annat';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsSv implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Senaste';
	@override String get calories => 'Kalorier';
	@override String get alphabetical => 'A–Ö';
}

// Path: profile.sections
class _TranslationsProfileSectionsSv implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'GRUNDLÄGGANDE INFORMATION';
	@override String get goalsAndActivity => 'MÅL & AKTIVITET';
	@override String get calculatedValues => 'BERÄKNADE VÄRDEN';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesSv implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Dagligt mål';
	@override String get calPerDay => 'kcal/dag';
	@override String get notAvailable => 'Ej tillgängligt';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsSv implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSONLIG INFORMATION';
	@override String get physicalMeasurements => 'FYSISKA MÅTT';
	@override String get goalsAndActivity => 'MÅL & AKTIVITET';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersSv implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get male => 'Man';
	@override String get female => 'Kvinna';
	@override String get other => 'Annat';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsSv implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightSv loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightSv._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightSv maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightSv._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightSv gainWeight = _TranslationsEditProfileWeightGoalsGainWeightSv._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsSv implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentarySv sedentary = _TranslationsEditProfileActivityLevelsSedentarySv._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveSv lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveSv._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveSv moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveSv._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveSv veryActive = _TranslationsEditProfileActivityLevelsVeryActiveSv._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveSv extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveSv._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsSv implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'SPRÅK & ENHETER';
	@override String get notifications => 'AVISERINGAR';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'SUPPORT & JURIDIK';
	@override String get about => 'OM';
	@override String get dangerZone => 'RISKZON';
	@override String get developer => 'UTVECKLARE';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileSv implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Redigera profil';
	@override String get subtitle => 'Uppdatera din personliga information';
}

// Path: settings.language
class _TranslationsSettingsLanguageSv implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Språk';
	@override String get subtitle => 'Välj ditt föredragna språk';
	@override String get searchHint => 'Sök språk...';
	@override String get noResults => 'Inga resultat hittades';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitSv implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Längdenhet';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitSv implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Viktenhet';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersSv implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Måltidspåminnelser';
	@override String get subtitle => 'Håll kursen med passande aviseringar';
}

// Path: settings.theme
class _TranslationsSettingsThemeSv implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Ljust';
	@override String get dark => 'Mörkt';
	@override String get system => 'System';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackSv implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skicka feedback';
	@override String subtitle({required Object appLabel}) => 'Hjälp oss förbättra ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Feedback för ${appLabel}';
	@override String get emailBodyPrefix => 'Vänligen lämna din feedback nedan:';
	@override String get appVersion => 'Appversion';
	@override String get device => 'Enhet';
	@override String get osVersion => 'OS-version';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistorySv implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistorySv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exportera måltidshistorik';
	@override String get subtitle => 'Dela en CSV med dina loggade måltider';
	@override String get shareText => 'Din Calorify-export av måltidshistorik';
	@override String failed({required Object error}) => 'Kunde inte exportera måltidshistorik: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataSv implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rensa all data';
	@override String get subtitle => 'Radera all din information oåterkalleligt';
	@override String get confirmationTitle => 'Rensa all data?';
	@override String get confirmationMessage => 'Denna åtgärd kan inte ångras. Alla dina loggade måltider, favoriter och profilinställningar kommer att raderas permanent.';
	@override String get cancel => 'Avbryt';
	@override String get clearEverything => 'Rensa allt';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsSv implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Felsökningsalternativ';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectSv implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Visa och hantera behörigheter';
	@override late final _TranslationsSettingsHealthConnectUnavailableSv unavailable = _TranslationsSettingsHealthConnectUnavailableSv._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsSv permissions = _TranslationsSettingsHealthConnectPermissionsSv._(_root);
	@override String get managePermissions => 'Hantera behörigheter';
	@override String get openSettings => 'Öppna inställningarna för Health Connect';
	@override String get requestPermissions => 'Begär behörigheter';
	@override String get permissionRequestCancelledOrFailed => 'Behörighetsbegäran avbröts eller misslyckades. Försök igen eller ge behörigheter manuellt i Health Connect-inställningarna.';
	@override String get permissionRequestFailed => 'Det gick inte att begära behörigheter. Försök igen eller ge behörigheter manuellt i Health Connect-inställningarna.';
	@override String get requestingPermissions => 'Begär...';
}

// Path: settings.about
class _TranslationsSettingsAboutSv implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om';
	@override String get tagline => 'Snabb, gratis och integritetsfokuserad kalorimedvetenhet';
	@override late final _TranslationsSettingsAboutOurStorySv ourStory = _TranslationsSettingsAboutOurStorySv._(_root);
	@override late final _TranslationsSettingsAboutPrivacySv privacy = _TranslationsSettingsAboutPrivacySv._(_root);
	@override late final _TranslationsSettingsAboutDeveloperSv developer = _TranslationsSettingsAboutDeveloperSv._(_root);
	@override late final _TranslationsSettingsAboutFeedbackSv feedback = _TranslationsSettingsAboutFeedbackSv._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoSv implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Bygg ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastSv implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Frukostdags! 🍳';
	@override String get body => 'Glöm inte att logga din frukost';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchSv implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lunchdags! 🥗';
	@override String get body => 'Dags att logga din lunch';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerSv implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Middagstid! 🍽️';
	@override String get body => 'Glöm inte att logga din middag';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackSv implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mellanmålstid! 🍎';
	@override String get body => 'Dags för ett hälsosamt mellanmål';
}

// Path: notifications.test
class _TranslationsNotificationsTestSv implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testavisering';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapSv implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} tillhandahåller uppskattad näringsinformation. Noggrannheten beror på dina inmatningar och variationer i mat. Använd som en vägledning, inte som en definitiv källa. Rådfråga en professionell för personliga kostråd.';
	@override late final _TranslationsDisclaimerSnapPortionSizeSv portionSize = _TranslationsDisclaimerSnapPortionSizeSv._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsSv preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsSv._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsSv ingredients = _TranslationsDisclaimerSnapIngredientsSv._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsSv databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsSv._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateSv implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om viktuppskattningen';
	@override String get description => 'Den projicerade viktförändringen är en teoretisk uppskattning baserad på den enkla modellen kalorier in vs. kalorier ut. Den är endast avsedd som motivation, inte som en förutsägelse av din faktiska vikt.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracySv calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracySv._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsSv biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsSv._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightSv waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightSv._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceSv professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceSv._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsSv implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get description => 'Dessa mått hjälper dig att förstå kroppens energibehov och vägleda dina näringsmål.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrSv bmr = _TranslationsDisclaimerHealthMetricsBmrSv._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeSv tdee = _TranslationsDisclaimerHealthMetricsTdeeSv._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalSv dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalSv._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureSv implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uppskattning av kaloriförbrukning';
	@override String get description => 'När Health Connect-data inte är tillgängliga uppskattar vi dagens förbrända kalorier med din basalmetabolism (BMR) och aktivitetsnivå (TDEE), skalat efter hur stor del av dagen som har passerat.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedSv howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedSv._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceSv professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceSv._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionSv implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Smart matigenkänning';
	@override String get description => 'Ta ett foto så identifierar AI din måltid';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisSv implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-analys';
	@override String get description => 'Få omedelbara näringsfakta från dina beskrivningar';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationSv implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hälsointegration';
	@override String get description => 'Anslut med Health Connect för bättre insikter';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesSv implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Undervikt';
	@override String get healthyWeight => 'Hälsosam vikt';
	@override String get overweight => 'Övervikt';
	@override String get obese => 'Fetma';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesSv implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Vi kan hjälpa dig att skapa en hälsosam plan för att nå en balanserad vikt med näringstäta måltider.';
	@override String get healthy => 'Bra jobbat! Du ligger inom ett hälsosamt spann. Vi hjälper dig att behålla vitalitet och energinivåer.';
	@override String overweight({required Object appLabel}) => '${appLabel} förenklar din resa med AI-driven spårning så att du bekvämt når ditt mål.';
	@override String get obese => 'Vi finns här för att stötta dig med personlig vägledning och hållbara strategier för dina hälsomål.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingSv implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatisk kalorispårning';
	@override String get description => 'Spåra förbrända kalorier från dina träningsappar';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsSv implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Insikter om framsteg';
	@override String get description => 'Få detaljerade insikter om dina hälsotrender';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationSv implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sömlös integration';
	@override String get description => 'Synka data från dina favorit-hälsoappar';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessSv implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du är inte ensam';
	@override String get genericMessage => 'Forskning visar att konsekvent registrering är den främsta indikatorn för långsiktig framgång.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'För en ${age}-årig ${gender} som vill ${goal} är konsekvent registrering den främsta framgångsfaktorn.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} gör det 10x enklare än att göra det manuellt.';
	@override String get getStartedTitle => 'Redo att komma igång?';
	@override String get tipPhoto => 'Fota dina måltider för omedelbar analys';
	@override String get tipConsistency => 'Registrera konsekvent för att se meningsfulla framsteg';
	@override String get tipProgress => 'Följ dina framsteg dagligen för att hålla motivationen';
	@override String get button => 'Nu kör vi';
	@override String get defaultGender => 'person';
	@override String get defaultGoal => 'en hälsosammare version av dig';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileSv implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din hälsoprofil';
	@override String bmiDescription({required Object bmi}) => 'Baserat på dina mått är ditt BMI ${bmi}.';
	@override String get finalizeDescription => 'Låt oss färdigställa din profil för att anpassa din upplevelse.';
	@override String get goalGain => 'gå upp';
	@override String get goalLose => 'gå ner';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'För att nå ditt mål kommer du att ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Du är på din målvikt! Vi hjälper dig att behålla den.';
	@override String get button => 'Nu kör vi';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleSv implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Strålande start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har tagit första steget mot ${goalText}. Eftersom du är ${activityText} kommer ${appLabel} att justera dina mål efter din livsstil.';
	@override String get personalizedTargets => 'Personliga kalorimål';
	@override String get aiMealDetection => 'AI-driven måltidsdetektering';
	@override String get macroBreakdowns => 'Detaljerade makronäringsfördelningar';
	@override String get button => 'Nu kör vi';
	@override String get defaultGoal => 'dina mål';
	@override String get defaultActivity => 'aktiv';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightSv implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gå ner i vikt';
	@override String get description => 'Skapa ett kaloriunderskott för att gå ner i vikt';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightSv implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Behåll vikten';
	@override String get description => 'Behåll din nuvarande vikt';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightSv implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gå upp i vikt';
	@override String get description => 'Skapa ett kaloriöverskott för att gå upp i vikt';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentarySv implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentarySv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Stillasittande';
	@override String get description => 'Lite eller ingen träning';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveSv implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lätt aktiv';
	@override String get description => 'Lätt träning 1–3 dagar/vecka';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveSv implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Måttligt aktiv';
	@override String get description => 'Måttlig träning 3–5 dagar/vecka';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveSv implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mycket aktiv';
	@override String get description => 'Hård träning 6–7 dagar/vecka';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveSv implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extremt aktiv';
	@override String get description => 'Mycket hård träning, fysiskt arbete';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableSv implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect är inte tillgängligt';
	@override String get description => 'Health Connect är inte tillgängligt på den här enheten. Installera Health Connect från Play Store (Android 9+) eller uppdatera till Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsSv implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Behörigheter';
	@override String get description => 'Följande behörigheter begärs för att möjliggöra Health Connect-integration:';
	@override String get granted => 'Beviljad';
	@override String get notGranted => 'Ej beviljad';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedSv caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedSv._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadSv nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadSv._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteSv nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteSv._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStorySv implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStorySv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vår berättelse';
	@override String content({required Object appLabel}) => '${appLabel} föddes ur en enkel frustration: de flesta kaloriräknare är antingen överdrivet komplicerade, kräver ständig manuell inmatning, tar ut höga abonnemangsavgifter eller kompromissar med din integritet.\n\nSom ensam utvecklare ville jag bygga något enklare och rättvisare — en app som använder AI för att minska ansträngningen, är snabb och gratis att använda och behandlar din hälsodata med respekt.\n\n${appLabel} är appen jag önskade fanns: inga konton, ingen spårning, inga annonser — bara tydliga, praktiska insikter och dina hälsomål.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacySv implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacySv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din integritet är viktig';
	@override String get description => 'Integritet är inte en eftertanke — det är en designprincip. Så här ser det ut i praktiken:';
	@override String get noAccounts => 'Inga konton krävs\nAnvänd appen direkt. Inga registreringar, inga identiteter.';
	@override String noTracking({required Object appLabel}) => 'Ingen beteendespårning\n${appLabel} övervakar inte din aktivitet, bygger inte användarprofiler och spårar dig inte över appar eller webbplatser.';
	@override String noAds({required Object appLabel}) => 'Annonsfri som standard\n${appLabel} är byggd för att fungera utan annonser eller datadriven intäktsmodell.';
	@override String get noDataSelling => 'Ingen försäljning av data\nDin hälsodata säljs eller delas aldrig med tredje part.';
	@override String get localStorage => 'Lokalförst lagring\nDin data stannar på din enhet.';
	@override String get privacyPolicy => 'Integritetspolicy';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperSv implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Byggd av en ensam utvecklare';
	@override String description({required Object appLabel}) => '${appLabel} byggs och underhålls av en ensam utvecklare med fokus på lugn, integritetsrespekterande hälsomjukvara.\n\nFeedback läses personligen och hjälper till att forma appens riktning.';
	@override String get website => 'Webbplats';
	@override String get email => 'E-post';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackSv implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Gillar du ${appLabel}?';
	@override String description({required Object appLabel}) => 'Din feedback hjälper till att göra ${appLabel} bättre för alla.';
	@override String get rateApp => 'Betygsätt på Play Store';
	@override String get sendFeedback => 'Skicka feedback';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeSv implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Portionsstorlek';
	@override String get description => 'Noggrannheten i uppskattningarna beror i hög grad på din korrekta bedömning av portionsstorleken.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsSv implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tillagningsmetoder';
	@override String description({required Object appLabel}) => 'Tillagningsmetoder kan avsevärt förändra näringsinnehållet i maten. ${appLabel}s uppskattningar tar inte alltid hänsyn till dessa variationer.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsSv implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredienser';
	@override String get description => 'Komplexa rätter med många dolda ingredienser kan leda till mindre exakta uppskattningar.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsSv implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Databasbegränsningar';
	@override String description({required Object appLabel}) => '${appLabel}s matdatabas är omfattande men innehåller kanske inte varje enskilt livsmedel eller variant.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracySv implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracySv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kaloriprecision';
	@override String get description => 'Denna uppskattning är bara så korrekt som ditt spårade kaloriintag och din förbrukning. Felaktig loggning leder till en felaktig prognos.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsSv implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologiska faktorer';
	@override String description({required Object appLabel}) => 'Faktisk viktminskning/-ökning påverkas av ämnesomsättning, hormoner, sömn, stress, vätskenivåer och andra individuella faktorer som ${appLabel} inte kan mäta.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightSv implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vattenvikt och svängningar';
	@override String get description => 'Normal dagsvikt kan variera avsevärt på grund av vätskeretention, matsmältning och timing. Uppskattningen tar inte hänsyn till dessa dagliga variationer.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceSv implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionell vägledning';
	@override String get description => 'Använd inte denna uppskattning för medicinska beslut. Rådfråga alltid vårdpersonal eller legitimerad dietist för personliga råd om viktkontroll.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrSv implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR), eller basalmetabolism, är antalet kalorier din kropp förbrukar i vila för att upprätthålla grundläggande funktioner som andning och cirkulation. BMR beror på ålder, kön, längd och vikt. En högre BMR innebär att kroppen förbrukar fler kalorier i vila, ofta tack vare mer muskelmassa, yngre ålder eller att vara man. En lägre BMR tyder ofta på mindre muskelmassa, högre ålder eller att vara kvinna.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeSv implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE), total daglig energiförbrukning, är de totala kalorier du förbrukar per dag, inklusive din BMR plus kalorier från fysisk aktivitet och vardagsrörelse. TDEE beror på din BMR och aktivitetsnivå. En högre TDEE betyder att du förbrukar fler kalorier totalt, vanligtvis genom att vara mer aktiv eller ha högre BMR. En lägre TDEE tyder på mindre daglig aktivitet eller lägre BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalSv implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagligt mål';
	@override String get description => 'Ditt dagliga mål är ditt rekommenderade dagliga kaloriintag baserat på din TDEE och ditt viktmål. För viktnedgång äter du färre kalorier än din TDEE. För viktunderhåll matchar du din TDEE. För viktuppgång äter du fler kalorier än din TDEE. Detta hjälper dig att nå önskad viktförändring i en hälsosam takt.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedSv implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Så beräknas uppskattningen';
	@override String get description => 'Vi beräknar din TDEE (baserat på din profil) och multiplicerar den med den andel av dagen som har förflutit (timmar + minuter) / 24 för att uppskatta förbrukade kalorier hittills.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceSv implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionell vägledning';
	@override String get description => 'Använd inte denna uppskattning för medicinska beslut. Rådfråga alltid vårdpersonal eller legitimerad dietist för personliga råd.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedSv implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Läsa total förbränning av kalorier';
	@override String get description => 'Tillåter appen att läsa dina totalt förbrända kalorier från Health Connect.';
	@override String get usage => 'Denna behörighet används för att visa din dagliga kaloriförbrukning i appen, vilket hjälper dig att förstå din totala energiförbrukning under dagen.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadSv implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Läsa näringsdata';
	@override String get description => 'Tillåter appen att läsa näringsdata från Health Connect.';
	@override String get usage => 'Denna behörighet låter appen läsa näringsinformation som kan ha loggats av andra appar anslutna till Health Connect, för att ge en heltäckande bild av din nutrition.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteSv implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skriva näringsdata';
	@override String get description => 'Tillåter appen att skriva näringsdata till Health Connect.';
	@override String get usage => 'Denna behörighet låter appen synka dina loggade måltider till Health Connect, så att din näringsdata blir tillgänglig för andra hälso- och träningsappar du använder.';
}

/// The flat map containing all translations for locale <sv>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsSv {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Svenska',
			'flag' => '🇸🇪',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Du har gjort för många förfrågningar. Vänta en stund innan du försöker igen.',
			'errors.networkError' => 'Nätverksfel. Kontrollera din internetanslutning.',
			'errors.unknownError' => 'Något gick fel. Försök igen senare.',
			'errors.loadingProfileData' => 'Fel vid inläsning av profildata',
			'errors.somethingWentWrong' => 'Något gick fel.',
			'errors.retry' => 'Försök igen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Välkommen till ${appLabel}',
			'onboarding.subtitle' => 'Din personliga näringskompis, driven av AI',
			'onboarding.getStarted' => 'Kom igång',
			'onboarding.features.foodRecognition.title' => 'Smart matigenkänning',
			'onboarding.features.foodRecognition.description' => 'Ta ett foto så identifierar AI din måltid',
			'onboarding.features.aiAnalysis.title' => 'AI-analys',
			'onboarding.features.aiAnalysis.description' => 'Få omedelbara näringsfakta från dina beskrivningar',
			'onboarding.features.healthIntegration.title' => 'Hälsointegration',
			'onboarding.features.healthIntegration.description' => 'Anslut med Health Connect för bättre insikter',
			'onboarding.gender.title' => 'Vilket kön har du?',
			'onboarding.gender.description' => 'Kön hjälper oss att beräkna din basalmetabolism (BMR) mer exakt.',
			'onboarding.gender.next' => 'Nästa',
			'onboarding.height.title' => 'Hur lång är du?',
			'onboarding.height.description' => 'Din längd hjälper oss att beräkna ditt BMI och din energibehov mer exakt.',
			'onboarding.height.metric' => 'Metriskt',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Nästa',
			'onboarding.weight.currentTitle' => 'Vad väger du nu?',
			'onboarding.weight.currentDescription' => 'Din nuvarande vikt är viktig för att vi ska kunna anpassa dina dagliga mål.',
			'onboarding.weight.targetTitle' => 'Vad är din målvikt?',
			'onboarding.weight.targetDescription' => 'Att sätta ett viktmål hjälper oss att planera långsiktigt.',
			'onboarding.weight.metric' => 'Metriskt',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Nästa',
			'onboarding.age.title' => 'När är din födelsedag?',
			'onboarding.age.description' => 'Din ålder hjälper oss att beräkna ditt kaloribehov mer exakt.',
			'onboarding.age.next' => 'Nästa',
			'onboarding.bmiScale.underweight' => 'Undervikt',
			'onboarding.bmiScale.healthy' => 'Hälsosam',
			'onboarding.bmiScale.overweight' => 'Övervikt',
			'onboarding.bmiScale.obese' => 'Fetma',
			'onboarding.bmiScale.categories.underweight' => 'Undervikt',
			'onboarding.bmiScale.categories.healthyWeight' => 'Hälsosam vikt',
			'onboarding.bmiScale.categories.overweight' => 'Övervikt',
			'onboarding.bmiScale.categories.obese' => 'Fetma',
			'onboarding.bmiScale.messages.underweight' => 'Vi kan hjälpa dig att skapa en hälsosam plan för att nå en balanserad vikt med näringstäta måltider.',
			'onboarding.bmiScale.messages.healthy' => 'Bra jobbat! Du ligger inom ett hälsosamt spann. Vi hjälper dig att behålla vitalitet och energinivåer.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} förenklar din resa med AI-driven spårning så att du bekvämt når ditt mål.',
			'onboarding.bmiScale.messages.obese' => 'Vi finns här för att stötta dig med personlig vägledning och hållbara strategier för dina hälsomål.',
			'onboarding.weightGoal.title' => 'Vad är ditt mål?',
			'onboarding.weightGoal.description' => 'Välj det mål som bäst beskriver vad du vill uppnå',
			'onboarding.activityLevel.title' => 'Hur aktiv är du?',
			'onboarding.activityLevel.description' => 'Detta hjälper oss att beräkna ditt dagliga kaloribehov mer exakt',
			'onboarding.healthConnect.title' => 'Anslut med Health Connect',
			'onboarding.healthConnect.description' => 'Synka din hälsodata för bättre insikter och automatisk kalorispårning',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatisk kalorispårning',
			'onboarding.healthConnect.automaticTracking.description' => 'Spåra förbrända kalorier från dina träningsappar',
			'onboarding.healthConnect.progressInsights.title' => 'Insikter om framsteg',
			'onboarding.healthConnect.progressInsights.description' => 'Få detaljerade insikter om dina hälsotrender',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Sömlös integration',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synka data från dina favorit-hälsoappar',
			'onboarding.healthConnect.connected' => 'Health Connect anslutet',
			'onboarding.healthConnect.notConnected' => 'Health Connect inte anslutet',
			'onboarding.healthConnect.setup' => 'Konfigurera Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Hoppa över för tillfället',
			'onboarding.healthConnect.statusConnected' => 'Health Connect är anslutet.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect har anslutits!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Behörighet nekad. Aktivera Health Connect-behörigheter från telefonens inställningar för ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Fel vid konfiguration av Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Du är inte ensam',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Forskning visar att konsekvent registrering är den främsta indikatorn för långsiktig framgång.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'För en ${age}-årig ${gender} som vill ${goal} är konsekvent registrering den främsta framgångsfaktorn.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} gör det 10x enklare än att göra det manuellt.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Redo att komma igång?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Fota dina måltider för omedelbar analys',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Registrera konsekvent för att se meningsfulla framsteg',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Följ dina framsteg dagligen för att hålla motivationen',
			'onboarding.reinforcement.trackingSuccess.button' => 'Nu kör vi',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'person',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'en hälsosammare version av dig',
			'onboarding.reinforcement.healthProfile.title' => 'Din hälsoprofil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Baserat på dina mått är ditt BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Låt oss färdigställa din profil för att anpassa din upplevelse.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'gå upp',
			'onboarding.reinforcement.healthProfile.goalLose' => 'gå ner',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'För att nå ditt mål kommer du att ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Du är på din målvikt! Vi hjälper dig att behålla den.',
			'onboarding.reinforcement.healthProfile.button' => 'Nu kör vi',
			'onboarding.reinforcement.goalLifestyle.title' => 'Strålande start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har tagit första steget mot ${goalText}. Eftersom du är ${activityText} kommer ${appLabel} att justera dina mål efter din livsstil.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personliga kalorimål',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-driven måltidsdetektering',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detaljerade makronäringsfördelningar',
			'onboarding.reinforcement.goalLifestyle.button' => 'Nu kör vi',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'dina mål',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiv',
			'tabs.dashboard' => 'Översikt',
			'tabs.history' => 'Historik',
			'home.aiSummary.title' => 'Din AI-sammanfattning',
			'home.aiSummary.logMore' => 'Logga fler måltider de kommande dagarna för att få personliga AI-insikter.',
			'home.aiSummary.loading' => 'Laddar din sammanfattning...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} måltider loggade',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Balanspoäng ${score}',
			'home.aiSummary.topFoods' => 'Topplivsmedel',
			'home.aiSummary.trendUp' => 'Kalorier på uppgång',
			'home.aiSummary.trendDown' => 'Kalorier på nedgång',
			'home.aiSummary.trendSteady' => 'Kalorierna ligger stabilt',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Uppdaterad ${time}',
			'home.dailyGoal.title' => 'Ställ in ditt dagliga mål',
			'home.dailyGoal.titleSet' => 'Ditt dagliga mål',
			'home.dailyGoal.description' => 'Redo att påbörja din hälsoresa? Sätt ditt dagliga kalori­mål nedan för att kickstarta din utveckling.',
			'home.dailyGoal.descriptionSet' => 'Din kompass är inställd! Detta är ditt dagliga kalorimål som vägleder dig.',
			'home.dailyGoal.yourGoal' => 'Ditt mål',
			'home.dailyGoal.goal' => 'Mål',
			'home.dailyGoal.dailyCalories' => 'Dagliga kalorier (kcal)',
			'home.dailyGoal.setGoal' => 'Sätt mål',
			'home.dailyGoal.intake' => 'Intag',
			'home.dailyGoal.burned' => 'Förbränt',
			'home.dailyGoal.weightImpact' => 'Viktpåverkan',
			'home.dailyGoal.estLoss' => 'Beräknad minskning på',
			'home.dailyGoal.estGain' => 'Beräknad ökning på',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Dagens sammanfattning',
			'home.dailySummary.calories' => 'Kalorier',
			'home.dailySummary.carbs' => 'Kolhydrater',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Fett',
			'home.dailySummary.fiber' => 'Fiber',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Makrodiagram',
			'home.intakeProgress.title' => 'Dagens makrofördelning',
			'home.intakeProgress.target' => 'Mål',
			'home.intakeProgress.current' => 'Nuvarande',
			'home.intakeHistory.title' => '7 dagars makrohistorik',
			'home.intakeHistory.trendTitle' => 'Dagens trend',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Topp: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Ingen historik ännu',
			'home.intakeHistory.startLogging' => 'Börja logga måltider för att se dina\n7-dagars makrotrender här',
			'home.mealLog.title' => 'Loggade måltider',
			'home.mealLog.emptyMessage' => 'Ta en bild av din senaste måltid för att logga den här.',
			'home.mealLog.noMealsToday' => 'Inga måltider registrerade idag',
			'home.mealLog.seeAllMeals' => 'Visa alla måltider',
			'home.mealDescription.title' => 'Snabbtillägg med AI',
			'home.mealDescription.description' => 'Beskriv din måltid så sköter AI resten.',
			'home.mealDescription.hint' => 't.ex. Till frukost åt jag en stor skål havregrynsgröt med en skivad banan och en skopa vassle ...',
			'home.mealDescription.analyzeMeal' => 'Analysera måltid',
			'home.favoriteMeals.title' => 'Favoritmåltider',
			'home.favoriteMeals.description' => 'Lägg snabbt till en av dina favoritmåltider.',
			'home.favoriteMeals.noFavorites' => 'Inga favoritmåltider ännu.',
			'home.favoriteMeals.addFavoriteHint' => 'Klicka på stjärnan på en måltid för att markera den som favorit.',
			'home.favoriteMeals.seeAll' => 'Visa alla',
			'home.favoriteMeals.add' => 'Lägg till',
			'home.mealSnap.title' => 'Fota och spåra din måltid',
			'home.mealSnap.description' => 'Använd kameran för att ta en bild av din mat för AI-analys.',
			'home.mealSnap.openCamera' => 'Öppna kamera',
			'home.mealSnap.gallery' => 'Galleri',
			'home.mealSnap.compressingPhoto' => 'Optimerar foto…',
			'home.mealSnap.uploadingPhoto' => 'Laddar upp foto…',
			'home.connectHealth.title' => 'Synka med Health Connect',
			'home.connectHealth.description' => 'Synka din näringsdata med Health Connect',
			'home.connectHealth.install' => 'Installera',
			'home.connectHealth.connect' => 'Anslut',
			'history.noMeals' => 'Inga måltider registrerade',
			'history.emptyMessage' => 'Ta en bild av din senaste måltid för att logga den här.',
			'history.today' => 'Idag',
			'history.yesterday' => 'Igår',
			'meal.ohNo' => 'Åh nej!',
			'meal.delete' => 'Ta bort',
			'meal.editMeal' => 'Redigera måltid',
			'meal.addMeal' => 'Lägg till måltid',
			'meal.saveMeal' => 'Spara måltid',
			'meal.save' => 'Spara',
			'meal.mealName' => 'Måltidsnamn',
			'meal.mealNameHint' => 't.ex. Äggröra med rostat bröd',
			'meal.mealQuantity' => 'Måltidsmängd',
			'meal.mealQuantityHint' => 't.ex. 1 skål, 2 skivor',
			'meal.timeOfMeal' => 'Tid för måltid',
			'meal.timeOfMealHint' => 'Välj tiden då du åt din måltid',
			'meal.mealType' => 'Måltidstyp',
			'meal.nutrition.calories' => 'Kalorier',
			'meal.nutrition.carbs' => 'Kolhydrater (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Fett (g)',
			'meal.nutrition.fiber' => 'Fiber (g)',
			'meal.deleteConfirmation.title' => 'Ta bort måltid',
			'meal.deleteConfirmation.message' => 'Är du säker på att du vill ta bort denna måltidspost?',
			'meal.deleteConfirmation.cancel' => 'Avbryt',
			'meal.deleteConfirmation.delete' => 'Ta bort',
			'meal.addedToLog' => 'Måltiden har lagts till i din logg!',
			'meal.couldNotAdd' => ({required Object error}) => 'Kunde inte lägga till måltid: ${error}',
			'meal.savedSuccessfully' => 'Måltiden har lagts till!',
			'meal.updatedSuccessfully' => 'Måltiden har uppdaterats!',
			'meal.errorSaving' => ({required Object error}) => 'Fel vid sparande av måltid: ${error}',
			'meal.removedFromFavorites' => 'Togs bort från favoriter!',
			'meal.savedAsFavorite' => 'Måltid sparad som favorit!',
			'meal.unfavorite' => 'Ta bort favorit',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Kunde inte uppdatera favorit: ${error}',
			'meal.feedbackThanks' => 'Tack för din feedback!',
			'meal.reanalysisUpdated' => 'Uppdaterade måltidsanalysen baserat på din feedback.',
			'meal.failedToProcess' => ({required Object error}) => 'Kunde inte bearbeta: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Kunde inte bearbeta bild: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Fel vid komprimering av bild: ${error}',
			'meal.failedToSave' => 'Misslyckades med att spara data. Försök igen.',
			'meal.skip' => 'Hoppa över',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Fråga ${current} av ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Inga frågor tillgängliga',
			'meal.questionFlow.next' => 'Nästa',
			'meal.questionFlow.continueLabel' => 'Fortsätt',
			'meal.analysis.title' => 'AI-måltidsanalys',
			'meal.analysis.stepStarted' => 'Startar…',
			'meal.analysis.stepDecomposition' => 'Förstår din måltid…',
			'meal.analysis.stepIngredients' => 'Matchar ingredienser med näringsdata…',
			'meal.analysis.stepUncertainty' => 'Kontrollerar tillförlitlighet…',
			'meal.analysis.stepMealTypeQuestion' => 'Snart klart…',
			'meal.analysis.stepResult' => 'Slutför resultatet…',
			'meal.analysis.stepError' => 'Något gick fel',
			'meal.analysis.stepDefault' => 'Analyserar din måltid…',
			'meal.analysis.progressUnderstand' => 'Förstå',
			'meal.analysis.progressMatch' => 'Matcha',
			'meal.analysis.progressCheck' => 'Kontrollera',
			'meal.analysis.progressMealType' => 'Väljer måltidstyp',
			'meal.analysis.progressFinish' => 'Slutför',
			'meal.analysis.detectedIngredientHeading' => 'Ingredienser vi upptäcker',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} till',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingredienser identifierade',
			'meal.analysis.ingredientsPending' => 'Skannar ingredienser…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'Vad ser fel ut?',
			'meal.feedback.subtitle' => 'Hjälp oss att förbättra analysen genom att välja ett eller flera problem.',
			'meal.feedback.tellUsMore' => 'Berätta mer',
			'meal.feedback.describeIncorrect' => 'Beskriv vad som var fel',
			'meal.feedback.submit' => 'Skicka',
			'meal.feedback.issueFoodIdentification' => 'Matidentifiering',
			'meal.feedback.issuePortionSize' => 'Portionsstorlek',
			'meal.feedback.issueCalorieDistribution' => 'Kalorifördelning',
			'meal.feedback.issueMacrosWrong' => 'Makron är fel',
			'meal.feedback.issueMissingItems' => 'Saknade objekt',
			'meal.feedback.issueExtraItems' => 'Extra objekt',
			'meal.feedback.issueOther' => 'Annat',
			'favorites.title' => 'Favoriter',
			'favorites.empty' => 'Inga favoritmåltider ännu.',
			'favorites.searchPlaceholder' => 'Sök favoritmåltider',
			'favorites.searchEmptyTitle' => 'Inga favoriter matchar din sökning',
			'favorites.searchEmptySubtitle' => 'Prova ett annat måltidsnamn, en annan mängd eller måltidstyp.',
			'favorites.sortLabel' => 'Sortera favoriter',
			'favorites.undo' => 'Ångra',
			'favorites.removed' => ({required Object name}) => 'Tog bort ${name} från favoriter',
			'favorites.sortOptions.recent' => 'Senaste',
			'favorites.sortOptions.calories' => 'Kalorier',
			'favorites.sortOptions.alphabetical' => 'A–Ö',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Ingen profildata hittades',
			'profile.yourProfile' => 'Din profil',
			'profile.viewAndManage' => 'Visa och hantera din hälsoinformation',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'GRUNDLÄGGANDE INFORMATION',
			'profile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'profile.sections.calculatedValues' => 'BERÄKNADE VÄRDEN',
			'profile.gender' => 'Kön',
			'profile.height' => 'Längd',
			'profile.weight' => 'Vikt',
			'profile.age' => 'Ålder',
			'profile.weightGoal' => 'Viktmål',
			'profile.targetWeight' => 'Målvikt',
			'profile.activityLevel' => 'Aktivitetsnivå',
			'profile.healthMetrics' => 'Hälsomått',
			'profile.notSet' => 'Inte angivet',
			'profile.years' => 'år',
			'profile.updatedSuccessfully' => 'Profilen uppdaterades!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Dagligt mål',
			'profile.calculatedValues.calPerDay' => 'kcal/dag',
			'profile.calculatedValues.notAvailable' => 'Ej tillgängligt',
			'healthScore.title' => 'Hälsopoäng',
			'healthScore.whyThisScore' => 'Varför denna poäng?',
			'healthScore.note' => 'Denna poäng är en AI-uppskattning baserad på identifierade ingredienser och näringstäthet. Rådfråga alltid en professionell för kostråd.',
			'healthScore.unhealthy' => 'Ohälsosam',
			'healthScore.healthy' => 'Hälsosam',
			'healthScore.neutral' => 'Neutral',
			'editProfile.title' => 'Redigera profil',
			'editProfile.sections.personalInformation' => 'PERSONLIG INFORMATION',
			'editProfile.sections.physicalMeasurements' => 'FYSISKA MÅTT',
			'editProfile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'editProfile.gender' => 'Kön',
			'editProfile.dateOfBirth' => 'Födelsedatum',
			'editProfile.height' => 'Längd',
			'editProfile.weight' => 'Vikt',
			'editProfile.weightGoal' => 'Viktmål',
			'editProfile.activityLevel' => 'Aktivitetsnivå',
			'editProfile.metric' => 'Metriskt',
			'editProfile.imperial' => 'Imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metriskt (cm)',
			'editProfile.imperialFtIn' => 'Imperial (fot/tum)',
			'editProfile.metricKg' => 'Metriskt (kg)',
			'editProfile.imperialLbs' => 'Imperial (lbs)',
			'editProfile.genders.male' => 'Man',
			'editProfile.genders.female' => 'Kvinna',
			'editProfile.genders.other' => 'Annat',
			'editProfile.weightGoals.loseWeight.name' => 'Gå ner i vikt',
			'editProfile.weightGoals.loseWeight.description' => 'Skapa ett kaloriunderskott för att gå ner i vikt',
			'editProfile.weightGoals.maintainWeight.name' => 'Behåll vikten',
			'editProfile.weightGoals.maintainWeight.description' => 'Behåll din nuvarande vikt',
			'editProfile.weightGoals.gainWeight.name' => 'Gå upp i vikt',
			'editProfile.weightGoals.gainWeight.description' => 'Skapa ett kaloriöverskott för att gå upp i vikt',
			'editProfile.activityLevels.sedentary.name' => 'Stillasittande',
			'editProfile.activityLevels.sedentary.description' => 'Lite eller ingen träning',
			'editProfile.activityLevels.lightlyActive.name' => 'Lätt aktiv',
			'editProfile.activityLevels.lightlyActive.description' => 'Lätt träning 1–3 dagar/vecka',
			'editProfile.activityLevels.moderatelyActive.name' => 'Måttligt aktiv',
			'editProfile.activityLevels.moderatelyActive.description' => 'Måttlig träning 3–5 dagar/vecka',
			'editProfile.activityLevels.veryActive.name' => 'Mycket aktiv',
			'editProfile.activityLevels.veryActive.description' => 'Hård träning 6–7 dagar/vecka',
			'editProfile.activityLevels.extremelyActive.name' => 'Extremt aktiv',
			'editProfile.activityLevels.extremelyActive.description' => 'Mycket hård träning, fysiskt arbete',
			'settings.title' => 'Inställningar',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'SPRÅK & ENHETER',
			'settings.sections.notifications' => 'AVISERINGAR',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'SUPPORT & JURIDIK',
			'settings.sections.about' => 'OM',
			'settings.sections.dangerZone' => 'RISKZON',
			'settings.sections.developer' => 'UTVECKLARE',
			'settings.editProfile.title' => 'Redigera profil',
			'settings.editProfile.subtitle' => 'Uppdatera din personliga information',
			'settings.language.title' => 'Språk',
			'settings.language.subtitle' => 'Välj ditt föredragna språk',
			'settings.language.searchHint' => 'Sök språk...',
			'settings.language.noResults' => 'Inga resultat hittades',
			'settings.heightUnit.title' => 'Längdenhet',
			'settings.weightUnit.title' => 'Viktenhet',
			'settings.mealReminders.title' => 'Måltidspåminnelser',
			'settings.mealReminders.subtitle' => 'Håll kursen med passande aviseringar',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Ljust',
			'settings.theme.dark' => 'Mörkt',
			'settings.theme.system' => 'System',
			'settings.sendFeedback.title' => 'Skicka feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Hjälp oss förbättra ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback för ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Vänligen lämna din feedback nedan:',
			'settings.sendFeedback.appVersion' => 'Appversion',
			'settings.sendFeedback.device' => 'Enhet',
			'settings.sendFeedback.osVersion' => 'OS-version',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Exportera måltidshistorik',
			'settings.exportMealHistory.subtitle' => 'Dela en CSV med dina loggade måltider',
			'settings.exportMealHistory.shareText' => 'Din Calorify-export av måltidshistorik',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Kunde inte exportera måltidshistorik: ${error}',
			'settings.clearAllData.title' => 'Rensa all data',
			'settings.clearAllData.subtitle' => 'Radera all din information oåterkalleligt',
			'settings.clearAllData.confirmationTitle' => 'Rensa all data?',
			'settings.clearAllData.confirmationMessage' => 'Denna åtgärd kan inte ångras. Alla dina loggade måltider, favoriter och profilinställningar kommer att raderas permanent.',
			'settings.clearAllData.cancel' => 'Avbryt',
			'settings.clearAllData.clearEverything' => 'Rensa allt',
			'settings.debugOptions.title' => 'Felsökningsalternativ',
			'settings.developerModeEnabled' => 'Utvecklarläge aktiverat!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Visa och hantera behörigheter',
			'settings.healthConnect.unavailable.title' => 'Health Connect är inte tillgängligt',
			'settings.healthConnect.unavailable.description' => 'Health Connect är inte tillgängligt på den här enheten. Installera Health Connect från Play Store (Android 9+) eller uppdatera till Android 14+.',
			'settings.healthConnect.permissions.title' => 'Behörigheter',
			'settings.healthConnect.permissions.description' => 'Följande behörigheter begärs för att möjliggöra Health Connect-integration:',
			'settings.healthConnect.permissions.granted' => 'Beviljad',
			'settings.healthConnect.permissions.notGranted' => 'Ej beviljad',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Läsa total förbränning av kalorier',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Tillåter appen att läsa dina totalt förbrända kalorier från Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Denna behörighet används för att visa din dagliga kaloriförbrukning i appen, vilket hjälper dig att förstå din totala energiförbrukning under dagen.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Läsa näringsdata',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Tillåter appen att läsa näringsdata från Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Denna behörighet låter appen läsa näringsinformation som kan ha loggats av andra appar anslutna till Health Connect, för att ge en heltäckande bild av din nutrition.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Skriva näringsdata',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Tillåter appen att skriva näringsdata till Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Denna behörighet låter appen synka dina loggade måltider till Health Connect, så att din näringsdata blir tillgänglig för andra hälso- och träningsappar du använder.',
			'settings.healthConnect.managePermissions' => 'Hantera behörigheter',
			'settings.healthConnect.openSettings' => 'Öppna inställningarna för Health Connect',
			'settings.healthConnect.requestPermissions' => 'Begär behörigheter',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Behörighetsbegäran avbröts eller misslyckades. Försök igen eller ge behörigheter manuellt i Health Connect-inställningarna.',
			'settings.healthConnect.permissionRequestFailed' => 'Det gick inte att begära behörigheter. Försök igen eller ge behörigheter manuellt i Health Connect-inställningarna.',
			'settings.healthConnect.requestingPermissions' => 'Begär...',
			'settings.about.title' => 'Om',
			'settings.about.tagline' => 'Snabb, gratis och integritetsfokuserad kalorimedvetenhet',
			'settings.about.ourStory.title' => 'Vår berättelse',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} föddes ur en enkel frustration: de flesta kaloriräknare är antingen överdrivet komplicerade, kräver ständig manuell inmatning, tar ut höga abonnemangsavgifter eller kompromissar med din integritet.\n\nSom ensam utvecklare ville jag bygga något enklare och rättvisare — en app som använder AI för att minska ansträngningen, är snabb och gratis att använda och behandlar din hälsodata med respekt.\n\n${appLabel} är appen jag önskade fanns: inga konton, ingen spårning, inga annonser — bara tydliga, praktiska insikter och dina hälsomål.',
			'settings.about.privacy.title' => 'Din integritet är viktig',
			'settings.about.privacy.description' => 'Integritet är inte en eftertanke — det är en designprincip. Så här ser det ut i praktiken:',
			'settings.about.privacy.noAccounts' => 'Inga konton krävs\nAnvänd appen direkt. Inga registreringar, inga identiteter.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Ingen beteendespårning\n${appLabel} övervakar inte din aktivitet, bygger inte användarprofiler och spårar dig inte över appar eller webbplatser.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Annonsfri som standard\n${appLabel} är byggd för att fungera utan annonser eller datadriven intäktsmodell.',
			'settings.about.privacy.noDataSelling' => 'Ingen försäljning av data\nDin hälsodata säljs eller delas aldrig med tredje part.',
			'settings.about.privacy.localStorage' => 'Lokalförst lagring\nDin data stannar på din enhet.',
			'settings.about.privacy.privacyPolicy' => 'Integritetspolicy',
			'settings.about.developer.title' => 'Byggd av en ensam utvecklare',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} byggs och underhålls av en ensam utvecklare med fokus på lugn, integritetsrespekterande hälsomjukvara.\n\nFeedback läses personligen och hjälper till att forma appens riktning.',
			'settings.about.developer.website' => 'Webbplats',
			'settings.about.developer.email' => 'E-post',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Gillar du ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Din feedback hjälper till att göra ${appLabel} bättre för alla.',
			'settings.about.feedback.rateApp' => 'Betygsätt på Play Store',
			'settings.about.feedback.sendFeedback' => 'Skicka feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Bygg ${buildNumber}',
			'reminders.title' => 'Håll kursen med påminnelser',
			'reminders.description' => 'Få varsamma påminnelser om att logga dina måltider och vara konsekvent med dina näringsmål',
			'reminders.notificationsEnabled' => 'Aviseringar aktiverade',
			'reminders.notificationsDisabled' => 'Aviseringar inaktiverade',
			'reminders.enabledSubtitle' => 'Du kommer att få måltidspåminnelser',
			'reminders.disabledSubtitle' => 'Aktivera aviseringar för att få måltidspåminnelser',
			'reminders.mealReminders' => 'Måltidspåminnelser',
			'reminders.breakfast' => 'Frukost',
			'reminders.lunch' => 'Lunch',
			'reminders.dinner' => 'Middag',
			'reminders.snack' => 'Mellanmål',
			'reminders.unknown' => 'Okänt',
			'reminders.change' => 'Ändra',
			'reminders.enableNotifications' => 'Aktivera aviseringar',
			'reminders.skipForNow' => 'Hoppa över för tillfället',
			'reminders.saveChanges' => 'Spara ändringar',
			'reminders.enabledSuccessfully' => 'Aviseringar har aktiverats!',
			'reminders.permissionDenied' => 'Aviseringsbehörighet nekad',
			'reminders.errorEnabling' => ({required Object error}) => 'Fel vid aktivering av aviseringar: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Fel vid slutförande av konfiguration: ${error}',
			'notifications.breakfast.title' => 'Frukostdags! 🍳',
			'notifications.breakfast.body' => 'Glöm inte att logga din frukost',
			'notifications.lunch.title' => 'Lunchdags! 🥗',
			'notifications.lunch.body' => 'Dags att logga din lunch',
			'notifications.dinner.title' => 'Middagstid! 🍽️',
			'notifications.dinner.body' => 'Glöm inte att logga din middag',
			'notifications.snack.title' => 'Mellanmålstid! 🍎',
			'notifications.snack.body' => 'Dags för ett hälsosamt mellanmål',
			'notifications.test.title' => 'Testavisering',
			'login.title' => 'Logga in',
			'login.signInWithGoogle' => 'Logga in med Google',
			'login.signInFailed' => 'Google-inloggning misslyckades eller avbröts.',
			'disclaimer.pleaseNote' => 'Observera',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} tillhandahåller uppskattad näringsinformation. Noggrannheten beror på dina inmatningar och variationer i mat. Använd som en vägledning, inte som en definitiv källa. Rådfråga en professionell för personliga kostråd.',
			'disclaimer.snap.portionSize.title' => 'Portionsstorlek',
			'disclaimer.snap.portionSize.description' => 'Noggrannheten i uppskattningarna beror i hög grad på din korrekta bedömning av portionsstorleken.',
			'disclaimer.snap.preparationMethods.title' => 'Tillagningsmetoder',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Tillagningsmetoder kan avsevärt förändra näringsinnehållet i maten. ${appLabel}s uppskattningar tar inte alltid hänsyn till dessa variationer.',
			'disclaimer.snap.ingredients.title' => 'Ingredienser',
			'disclaimer.snap.ingredients.description' => 'Komplexa rätter med många dolda ingredienser kan leda till mindre exakta uppskattningar.',
			'disclaimer.snap.databaseLimitations.title' => 'Databasbegränsningar',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}s matdatabas är omfattande men innehåller kanske inte varje enskilt livsmedel eller variant.',
			'disclaimer.weightEstimate.title' => 'Om viktuppskattningen',
			'disclaimer.weightEstimate.description' => 'Den projicerade viktförändringen är en teoretisk uppskattning baserad på den enkla modellen kalorier in vs. kalorier ut. Den är endast avsedd som motivation, inte som en förutsägelse av din faktiska vikt.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kaloriprecision',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Denna uppskattning är bara så korrekt som ditt spårade kaloriintag och din förbrukning. Felaktig loggning leder till en felaktig prognos.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologiska faktorer',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Faktisk viktminskning/-ökning påverkas av ämnesomsättning, hormoner, sömn, stress, vätskenivåer och andra individuella faktorer som ${appLabel} inte kan mäta.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Vattenvikt och svängningar',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normal dagsvikt kan variera avsevärt på grund av vätskeretention, matsmältning och timing. Uppskattningen tar inte hänsyn till dessa dagliga variationer.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Professionell vägledning',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Använd inte denna uppskattning för medicinska beslut. Rådfråga alltid vårdpersonal eller legitimerad dietist för personliga råd om viktkontroll.',
			'disclaimer.healthMetrics.description' => 'Dessa mått hjälper dig att förstå kroppens energibehov och vägleda dina näringsmål.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR), eller basalmetabolism, är antalet kalorier din kropp förbrukar i vila för att upprätthålla grundläggande funktioner som andning och cirkulation. BMR beror på ålder, kön, längd och vikt. En högre BMR innebär att kroppen förbrukar fler kalorier i vila, ofta tack vare mer muskelmassa, yngre ålder eller att vara man. En lägre BMR tyder ofta på mindre muskelmassa, högre ålder eller att vara kvinna.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE), total daglig energiförbrukning, är de totala kalorier du förbrukar per dag, inklusive din BMR plus kalorier från fysisk aktivitet och vardagsrörelse. TDEE beror på din BMR och aktivitetsnivå. En högre TDEE betyder att du förbrukar fler kalorier totalt, vanligtvis genom att vara mer aktiv eller ha högre BMR. En lägre TDEE tyder på mindre daglig aktivitet eller lägre BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Dagligt mål',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Ditt dagliga mål är ditt rekommenderade dagliga kaloriintag baserat på din TDEE och ditt viktmål. För viktnedgång äter du färre kalorier än din TDEE. För viktunderhåll matchar du din TDEE. För viktuppgång äter du fler kalorier än din TDEE. Detta hjälper dig att nå önskad viktförändring i en hälsosam takt.',
			'disclaimer.calorieExpenditure.title' => 'Uppskattning av kaloriförbrukning',
			'disclaimer.calorieExpenditure.description' => 'När Health Connect-data inte är tillgängliga uppskattar vi dagens förbrända kalorier med din basalmetabolism (BMR) och aktivitetsnivå (TDEE), skalat efter hur stor del av dagen som har passerat.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Så beräknas uppskattningen',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Vi beräknar din TDEE (baserat på din profil) och multiplicerar den med den andel av dagen som har förflutit (timmar + minuter) / 24 för att uppskatta förbrukade kalorier hittills.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Professionell vägledning',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Använd inte denna uppskattning för medicinska beslut. Rådfråga alltid vårdpersonal eller legitimerad dietist för personliga råd.',
			'common.close' => 'Stäng',
			'common.kContinue' => 'Fortsätt',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Gillar du ${appLabel}?',
			'feedbackRating.yes' => 'Ja, jag gillar den',
			'feedbackRating.no' => 'Inte riktigt',
			'feedbackRating.rateStepHeading' => 'Betygsätt på Play Store',
			'feedbackRating.emailStepHeading' => 'Skicka feedback via e-post',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Ett snabbt betyg hjälper andra att hitta ${appLabel} och håller utvecklingen igång. Vill du ta en minut och lämna ett?',
			'feedbackRating.shareFeedbackViaEmail' => 'Din feedback styr vad som kommer härnäst — vi läser varje meddelande. Vill du dela dina tankar via e-post?',
			'feedbackRating.rateCta' => 'Betygsätt på Play Store',
			'feedbackRating.maybeLater' => 'Kanske senare',
			'feedbackRating.sendFeedback' => 'Skicka feedback',
			'feedbackRating.noThanks' => 'Nej tack',
			'feedbackRating.aboutUsDescription' => 'Gjord med omsorg av ett litet team. Vi fokuserar på integritet, enkelhet och att hjälpa dig bygga bättre matvanor.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Nyfiken på vilka som står bakom ${appLabel}? Se ',
			'feedbackRating.aboutUsLinkLabel' => 'Om oss',
			'feedbackRating.thankYouMessage' => 'Tack! Vi frågar igen en annan gång.',
			'health.syncFailed' => 'Kunde inte synka till Health Connect',
			'health.mealSynced' => 'Måltid synkad med Health Connect',
			_ => null,
		};
	}
}
