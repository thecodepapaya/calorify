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
	@override String get rateLimitExceeded => 'Du har gjort för många förfrågningar. Vänta en liten stund och försök igen.';
	@override String get networkError => 'Nätverksfel. Kontrollera din internetanslutning.';
	@override String get unknownError => 'Något gick fel. Försök igen senare.';
	@override String get loadingProfileData => 'Fel vid inläsning av profildata';
	@override String get somethingWentWrong => 'Något gick fel.';
}

// Path: onboarding
class _TranslationsOnboardingSv implements TranslationsOnboardingEn {
	_TranslationsOnboardingSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Välkommen till ${appLabel}';
	@override String get subtitle => 'Din personliga kostkompis som drivs av AI';
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
	@override String get dashboard => 'Instrumentbräda';
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
	@override String get emptyMessage => 'Ta en bild av din senaste måltid för att logga här.';
	@override String get today => 'Idag';
	@override String get yesterday => 'Igår';
}

// Path: meal
class _TranslationsMealSv implements TranslationsMealEn {
	_TranslationsMealSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Åh nej!';
	@override String get delete => 'Radera';
	@override String get editMeal => 'Redigera måltid';
	@override String get addMeal => 'Lägg till måltid';
	@override String get saveMeal => 'Spara måltid';
	@override String get save => 'Spara';
	@override String get mealName => 'Måltidens namn';
	@override String get mealNameHint => 't.ex., Äggröra med rostat bröd';
	@override String get mealQuantity => 'Måltidens mängd';
	@override String get mealQuantityHint => 't.ex. 1 skål, 2 skivor';
	@override String get timeOfMeal => 'Måltidens tid';
	@override String get timeOfMealHint => 'Välj den tid du hade din måltid';
	@override String get mealType => 'Måltidstyp';
	@override late final _TranslationsMealNutritionSv nutrition = _TranslationsMealNutritionSv._(_root);
	@override late final _TranslationsMealDeleteConfirmationSv deleteConfirmation = _TranslationsMealDeleteConfirmationSv._(_root);
	@override String get addedToLog => 'Måltid tillagd till din logg!';
	@override String couldNotAdd({required Object error}) => 'Kunde inte lägga till måltid: ${error}';
	@override String get savedSuccessfully => 'Måltid tillagd!';
	@override String get updatedSuccessfully => 'Måltid uppdaterad!';
	@override String errorSaving({required Object error}) => 'Fel vid sparning av måltid: ${error}';
	@override String get removedFromFavorites => 'Borttagen från favoriter!';
	@override String get savedAsFavorite => 'Måltid sparad som favorit!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Kunde inte uppdatera favorit: ${error}';
	@override String failedToProcess({required Object error}) => 'Misslyckades med att bearbeta: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Misslyckades med att bearbeta bilden: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Fel vid komprimering av bild: ${error}';
	@override String get failedToSave => 'Misslyckades med att spara data. Vänligen försök igen.';
	@override String get skip => 'Hoppa över';
	@override late final _TranslationsMealVariationSv variation = _TranslationsMealVariationSv._(_root);
}

// Path: favorites
class _TranslationsFavoritesSv implements TranslationsFavoritesEn {
	_TranslationsFavoritesSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoriter';
	@override String get empty => 'Inga favoritmåltider ännu.';
}

// Path: profile
class _TranslationsProfileSv implements TranslationsProfileEn {
	_TranslationsProfileSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Ingen profildata hittad';
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
	@override String get notSet => 'Inte inställd';
	@override String get years => 'år';
	@override String get updatedSuccessfully => 'Profilen uppdaterades framgångsrikt!';
	@override late final _TranslationsProfileCalculatedValuesSv calculatedValues = _TranslationsProfileCalculatedValuesSv._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreSv implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hälsopoäng';
	@override String get whyThisScore => 'Varför denna poäng?';
	@override String get note => 'Denna poäng är en AI-uppskattning baserad på de identifierade ingredienserna och den näringsmässiga densiteten. Rådgör alltid med en professionell för kostråd.';
	@override String get unhealthy => 'Ohälsosam';
	@override String get healthy => 'Hälsosam';
	@override String get neutral => 'Neutral';
}

// Path: editProfile
class _TranslationsEditProfileSv implements TranslationsEditProfileEn {
	_TranslationsEditProfileSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Redigera Profil';
	@override late final _TranslationsEditProfileSectionsSv sections = _TranslationsEditProfileSectionsSv._(_root);
	@override String get gender => 'Kön';
	@override String get dateOfBirth => 'Födelsedatum';
	@override String get height => 'Längd';
	@override String get weight => 'Vikt';
	@override String get weightGoal => 'Viktmål';
	@override String get activityLevel => 'Aktivitetsnivå';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metrisk (cm)';
	@override String get imperialFtIn => 'Imperial (ft/in)';
	@override String get metricKg => 'Metrisk (kg)';
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
	@override String get title => 'Håll dig på rätt spår med påminnelser';
	@override String get description => 'Få milda påminnelser för att logga dina måltider och hålla dig konsekvent med dina näringsmål';
	@override String get notificationsEnabled => 'Notiser aktiverade';
	@override String get notificationsDisabled => 'Notiser inaktiverade';
	@override String get enabledSubtitle => 'Du kommer att få måltidspåminnelser';
	@override String get disabledSubtitle => 'Aktivera notifieringar för att få måltidspåminnelser';
	@override String get mealReminders => 'Måltidspåminnelser';
	@override String get breakfast => 'Frukost';
	@override String get lunch => 'Lunch';
	@override String get dinner => 'Middag';
	@override String get snack => 'Mellanmål';
	@override String get unknown => 'Okänd';
	@override String get change => 'Ändra';
	@override String get enableNotifications => 'Aktivera notifieringar';
	@override String get skipForNow => 'Hoppa över för nu';
	@override String get saveChanges => 'Spara ändringar';
	@override String get enabledSuccessfully => 'Notifieringar aktiverades framgångsrikt!';
	@override String get permissionDenied => 'Åtkomst till notifieringar nekad';
	@override String errorEnabling({required Object error}) => 'Fel vid aktivering av notifieringar: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Fel vid slutförande av installation: ${error}';
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
	@override String get pleaseNote => 'Vänligen notera';
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
	@override String enjoyingQuestion({required Object appLabel}) => 'Tycker du om ${appLabel}?';
	@override String get yes => 'Ja, jag gillar det';
	@override String get no => 'Inte riktigt';
	@override String get rateStepHeading => 'Betygsätt i Google Play';
	@override String get emailStepHeading => 'Skicka feedback via e-post';
	@override String soloDevMessage({required Object appLabel}) => 'En snabb bedömning hjälper andra att hitta ${appLabel} och håller utvecklingen igång. Skulle du ta en stund och ge ett betyg?';
	@override String get shareFeedbackViaEmail => 'Din feedback påverkar vad som kommer härnäst — vi läser varje meddelande. Vill du dela dina tankar via e-post?';
	@override String get rateCta => 'Betygsätt i Google Play';
	@override String get maybeLater => 'Kanske senare';
	@override String get sendFeedback => 'Skicka feedback';
	@override String get noThanks => 'Nej tack';
	@override String get aboutUsDescription => 'Skapad med omsorg av ett litet team. Vi prioriterar integritet, enkelhet och att hjälpa dig utveckla hälsosammare matvanor.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Nyfiken på vem som ligger bakom ${appLabel}? Se ';
	@override String get aboutUsLinkLabel => 'Om oss';
	@override String get thankYouMessage => 'Tack! Vi frågar igen vid ett annat tillfälle.';
}

// Path: health
class _TranslationsHealthSv implements TranslationsHealthEn {
	_TranslationsHealthSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Kunde inte synkronisera med Health Connect';
	@override String get mealSynced => 'Måltid synkroniserad med Health Connect';
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
	@override String get title => 'Vad är ditt kön?';
	@override String get description => 'Kön hjälper oss att korrekt beräkna din basalmetaboliska hastighet (BMR).';
	@override String get next => 'Nästa';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightSv implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hur lång är du?';
	@override String get description => 'Din längd hjälper oss att beräkna din BMI och energibehov korrekt.';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperial';
	@override String get next => 'Nästa';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightSv implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Vad väger du för närvarande?';
	@override String get currentDescription => 'Din nuvarande vikt är viktig för att anpassa dina dagliga mål.';
	@override String get targetTitle => 'Vad är din målvikt?';
	@override String get targetDescription => 'Att sätta en målvikt hjälper oss att bestämma din långsiktiga plan.';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperial';
	@override String get next => 'Nästa';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeSv implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'När är din födelsedag?';
	@override String get description => 'Din ålder hjälper oss att korrekt beräkna dina kaloribehov.';
	@override String get next => 'Nästa';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleSv implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Underviktig';
	@override String get healthy => 'Hälsosam';
	@override String get overweight => 'Överviktig';
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
	@override String get title => 'Anslut till Health Connect';
	@override String get description => 'Synkronisera din hälsodata för bättre insikter och automatisk kalori spårning';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingSv automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingSv._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsSv progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsSv._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationSv seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationSv._(_root);
	@override String get connected => 'Health Connect Ansluten';
	@override String get notConnected => 'Health Connect Inte Ansluten';
	@override String get setup => 'Ställ in Health Connect';
	@override String get skipForNow => 'Hoppa över för nu';
	@override String get statusConnected => 'Health Connect är ansluten.';
	@override String get statusSuccess => 'Health Connect har anslutits framgångsrikt!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Åtkomst nekad. Vänligen aktivera Health Connect-behörigheter från dina telefoninställningar för ${appLabel}.';
	@override String statusError({required Object error}) => 'Fel vid inställning av Health Connect: ${error}';
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
	@override String get logMore => 'Logga fler måltider under de närmaste dagarna för att få dina personliga AI-insikter.';
	@override String get loading => 'Hämtar din sammanfattning...';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalSv implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ställ in ditt dagliga mål';
	@override String get titleSet => 'Ditt dagliga mål';
	@override String get description => 'Redo att påbörja din wellness-resa? Ställ in ditt dagliga kalorimål nedan för att kickstarta din progress.';
	@override String get descriptionSet => 'Din kompass är inställd! Detta är ditt dagliga kalorimål för att vägleda dig.';
	@override String get yourGoal => 'Ditt mål';
	@override String get goal => 'Mål';
	@override String get dailyCalories => 'Dagliga kalorier (kcal)';
	@override String get setGoal => 'Ställ in mål';
	@override String get intake => 'Intag';
	@override String get burned => 'Bränt';
	@override String get weightImpact => 'Viktpåverkan';
	@override String get estLoss => 'Beräknad förlust av';
	@override String get estGain => 'Beräknad ökning av';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummarySv implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummarySv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Daglig sammanfattning';
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Kolhydrater';
	@override String get protein => 'Protein';
	@override String get fat => 'Fett';
	@override String get fiber => 'Fiber';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Diagram över makronutrienter';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressSv implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagens makrofördelning';
	@override String get target => 'Mål';
	@override String get current => 'Aktuell';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistorySv implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistorySv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => '7-dagars makrohistorik';
	@override String get noHistoryYet => 'Ingen historik ännu';
	@override String get startLogging => 'Börja logga måltider för att se dina\n7-dagars makrotrender här';
}

// Path: home.mealLog
class _TranslationsHomeMealLogSv implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Loggade måltider';
	@override String get emptyMessage => 'Ta en bild av din senaste måltid för att logga här.';
	@override String get noMealsToday => 'Inga måltider registrerade för idag';
	@override String get seeAllMeals => 'Se alla måltider';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionSv implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snabbt tillägg med AI';
	@override String get description => 'Beskriv din måltid och låt AI hantera detaljerna.';
	@override String get hint => 't.ex. Till frukost hade jag en stor skål havregryn med en skivad banan och en skopa vassle ...';
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
	@override String get seeAll => 'Se alla';
	@override String get add => 'Lägg till';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapSv implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snap & Spåra din måltid';
	@override String get description => 'Använd din kamera för att ta en bild av din mat för AI-analys.';
	@override String get openCamera => 'Öppna kamera';
	@override String get gallery => 'Galleri';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthSv implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synkronisera med Health Connect';
	@override String get description => 'Synkronisera din näringsdata med Health Connect';
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
	@override String get title => 'Radera måltid';
	@override String get message => 'Är du säker på att du vill radera detta måltidsinlägg?';
	@override String get cancel => 'Avbryt';
	@override String get delete => 'Radera';
}

// Path: meal.variation
class _TranslationsMealVariationSv implements TranslationsMealVariationEn {
	_TranslationsMealVariationSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Fråga ${current} av ${total}';
	@override String get noVariationsAvailable => 'Inga varianter tillgängliga';
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
	@override String get calPerDay => 'kal/dag';
	@override String get notAvailable => 'N/A';
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
	@override String get localization => 'LOKALISERING';
	@override String get notifications => 'NOTIFIERINGAR';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'SUPPORT & JURIDIK';
	@override String get about => 'OM';
	@override String get dangerZone => 'FARLIG ZON';
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
	@override String get subtitle => 'Håll dig på rätt spår med tidsenliga påminnelser';
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
	@override String get title => 'Skicka återkoppling';
	@override String subtitle({required Object appLabel}) => 'Hjälp oss att förbättra ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Feedback för ${appLabel} App';
	@override String get emailBodyPrefix => 'Vänligen ge din återkoppling nedan:';
	@override String get appVersion => 'Appversion';
	@override String get device => 'Enhet';
	@override String get osVersion => 'OS-version';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataSv implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rensa all data';
	@override String get subtitle => 'Ta bort all din information oåterkalleligt';
	@override String get confirmationTitle => 'Rensa all data?';
	@override String get confirmationMessage => 'Denna åtgärd kan inte ångras. Alla dina registrerade måltider, favoriter och profilinställningar kommer att raderas permanent.';
	@override String get cancel => 'Avbryt';
	@override String get clearEverything => 'Rensa allt';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsSv implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debugalternativ';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectSv implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hälsokoppling';
	@override String get subtitle => 'Visa och hantera behörigheter';
	@override late final _TranslationsSettingsHealthConnectUnavailableSv unavailable = _TranslationsSettingsHealthConnectUnavailableSv._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsSv permissions = _TranslationsSettingsHealthConnectPermissionsSv._(_root);
	@override String get managePermissions => 'Hantera Behörigheter';
	@override String get openSettings => 'Öppna inställningar för Hälsokoppling';
	@override String get requestPermissions => 'Begär behörigheter';
	@override String get permissionRequestCancelledOrFailed => 'Behörighetsbegäran avbröts eller misslyckades. Vänligen försök igen eller ge behörigheter manuellt i inställningarna för Health Connect.';
	@override String get permissionRequestFailed => 'Det gick inte att begära behörigheter. Vänligen försök igen eller ge behörigheter manuellt i inställningarna för Health Connect.';
	@override String get requestingPermissions => 'Requesting...';
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
	@override String get title => 'Frukosttid! 🍳';
	@override String get body => 'Glöm inte att logga din frukost';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchSv implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lunchtid! 🥗';
	@override String get body => 'Dags att logga din lunch';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerSv implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Middagtid! 🍽️';
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
	@override String get title => 'Testnotifikation';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapSv implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} ger uppskattad näringsinformation. Noggrannheten beror på din inmatning och livsmedelsvariationer. Använd som en guide, inte som en definitiv källa. Konsultera en professionell för personlig kostrådgivning.';
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
	@override String get title => 'Om viktuppskattning';
	@override String get description => 'Den projicerade viktförändringen är en teoretisk uppskattning baserad på den enkla modellen kalorier in vs. kalorier ut. Den är avsedd för motivationsvägledning endast, inte som en förutsägelse av din faktiska vikt.';
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
	@override String get description => 'När Health Connect-data inte är tillgänglig uppskattar vi dagens förbrukade kalorier med hjälp av din basalmetabolism (BMR) och aktivitetsnivå (TDEE), anpassat efter hur stor del av dagen som har passerat.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedSv howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedSv._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceSv professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceSv._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionSv implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Smart Matigenkänning';
	@override String get description => 'Ta en bild och låt AI identifiera din måltid';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisSv implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-analys';
	@override String get description => 'Få omedelbar näringsinformation från dina beskrivningar';
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
	@override String get underweight => 'Underviktig';
	@override String get healthyWeight => 'Hälsosam vikt';
	@override String get overweight => 'Överviktig';
	@override String get obese => 'Fetma';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesSv implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Vi kan hjälpa dig att bygga en hälsosam plan för att nå en balanserad vikt med näringsrika måltider.';
	@override String get healthy => 'Bra jobbat! Du är inom ett hälsosamt intervall. Vi hjälper dig att bibehålla din vitalitet och energinivåer.';
	@override String overweight({required Object appLabel}) => '${appLabel} kommer att förenkla din resa med AI-driven spårning för att hjälpa dig nå ditt mål på ett bekvämt sätt.';
	@override String get obese => 'Vi är här för att stödja dig med personlig vägledning och hållbara strategier för dina hälsomål.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingSv implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatisk kalorispårning';
	@override String get description => 'Spåra kalorier brända från dina träningsappar';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsSv implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Framstegsinsikter';
	@override String get description => 'Få detaljerade insikter om dina hälsotrender';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationSv implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sömlös integration';
	@override String get description => 'Synkronisera data från dina favorithälsoappar';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessSv implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du är inte ensam';
	@override String get genericMessage => 'Forskning visar att konsekvent spårning är den främsta indikatorn på långsiktig framgång.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'För en ${age}-årig ${gender} som vill ${goal}, är konsekvent spårning den främsta indikatorn på framgång.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} gör det 10 gånger enklare än att göra det manuellt.';
	@override String get getStartedTitle => 'Redo att komma igång?';
	@override String get tipPhoto => 'Ta ett foto på dina måltider för omedelbar analys';
	@override String get tipConsistency => 'Logga konsekvent för att se meningsfulla framsteg';
	@override String get tipProgress => 'Följ dina framsteg dagligen för att hålla motivationen hög';
	@override String get button => 'Låt oss gå';
	@override String get defaultGender => 'individ';
	@override String get defaultGoal => 'hälsosammare du';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileSv implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din Hälsoprofil';
	@override String bmiDescription({required Object bmi}) => 'Baserat på dina mått är din BMI ${bmi}.';
	@override String get finalizeDescription => 'Låt oss slutföra din profil för att anpassa din upplevelse.';
	@override String get goalGain => 'gå upp';
	@override String get goalLose => 'gå ner';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'För att nå ditt mål måste du ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Du är på din målvikten! Vi hjälper dig att bibehålla den.';
	@override String get button => 'Låt oss gå';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleSv implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Utmärkt Start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har tagit det första steget mot ${goalText}. Eftersom du är ${activityText}, kommer ${appLabel} att justera dina mål för att matcha din livsstil.';
	@override String get personalizedTargets => 'Anpassade kalorimål';
	@override String get aiMealDetection => 'AI-driven måltidsdetektion';
	@override String get macroBreakdowns => 'Detaljerade makronäringsämnesfördelningar';
	@override String get button => 'Låt oss gå';
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
	@override String get name => 'Behålla vikt';
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
	@override String get description => 'Lätt träning 1-3 dagar/vecka';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveSv implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Måttligt aktiv';
	@override String get description => 'Måttlig träning 3-5 dagar/vecka';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveSv implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mycket aktiv';
	@override String get description => 'Hård träning 6-7 dagar/vecka';
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
	@override String get title => 'Hälsokoppling Otillgänglig';
	@override String get description => 'Hälsokoppling är inte tillgänglig på denna enhet. Det krävs Android 14 eller senare.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsSv implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Behörigheter';
	@override String get description => 'Följande behörigheter begärs för att tillhandahålla integrering med Hälsokoppling:';
	@override String get granted => 'Beviljad';
	@override String get notGranted => 'Ej Beviljad';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedSv caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedSv._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadSv nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadSv._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteSv nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteSv._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStorySv implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStorySv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vår Historia';
	@override String content({required Object appLabel}) => '${appLabel} föddes ur en enkel frustration: de flesta kaloritracking-appar är antingen överdrivet komplicerade, kräver konstant manuell inmatning, tar ut höga abonnemangsavgifter eller kompromissar med integriteten.\n\nSom en oberoende utvecklare ville jag bygga något enklare och rättvisare — en app som använder AI för att minska ansträngningen, förblir snabb och gratis att använda, och hanterar din hälsodata med respekt.\n\n${appLabel} är appen jag önskar fanns: inga konton, ingen spårning, inga annonser — bara tydliga, praktiska insikter och dina hälsomål.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacySv implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacySv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din Integritet Är Viktig';
	@override String get description => 'Integritet är inte en eftertanke — det är en designprincip. Här är vad det innebär i praktiken:';
	@override String get noAccounts => 'Inga konton krävs\nAnvänd appen direkt. Inga registreringar, inga identiteter.';
	@override String noTracking({required Object appLabel}) => 'Ingen beteendesporing\n${appLabel} övervakar inte din aktivitet, bygger användarprofiler, eller spårar dig över appar eller webbplatser.';
	@override String noAds({required Object appLabel}) => 'Annonsfri av design\n${appLabel} är byggd för att fungera utan annonser eller datadriven monetisering.';
	@override String get noDataSelling => 'Ingen försäljning av data\nDin hälsodata säljs aldrig eller delas med tredje part.';
	@override String get localStorage => 'Lokal lagring först\nDin data stannar på din enhet.';
	@override String get privacyPolicy => 'Integritetspolicy';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperSv implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Byggd av en Oberoende Utvecklare';
	@override String description({required Object appLabel}) => '${appLabel} är byggd och underhållen av en enda oberoende utvecklare som fokuserar på att skapa lugn, integritetsrespekterande hälsoprogramvara.\n\nFeedback läses personligen och hjälper till att forma riktningen för appen.';
	@override String get website => 'Hemsida';
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
	@override String get sendFeedback => 'Skicka Feedback';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeSv implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Portionsstorlek';
	@override String get description => 'Noggrannheten i uppskattningarna beror starkt på din korrekta bedömning av portionsstorleken.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsSv implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tillagningsmetoder';
	@override String description({required Object appLabel}) => 'Tillagningsmetoder kan avsevärt påverka den näringsmässiga halten i maten. ${appLabel}s uppskattningar kan inte alltid ta hänsyn till dessa variationer.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsSv implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredienser';
	@override String get description => 'Komplexa rätter med många dolda ingredienser kan leda till mindre noggranna uppskattningar.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsSv implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Databasbegränsningar';
	@override String description({required Object appLabel}) => '${appLabel}s livsmedelsdatabas är omfattande men kanske inte inkluderar varje enskild livsmedelsartikel eller variation.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracySv implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracySv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalorinoggrannhet';
	@override String get description => 'Denna uppskattning är bara så noggrann som ditt spårade kaloriintag och dina utgifter. Onoggrann loggning leder till felaktiga projektioner.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsSv implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologiska faktorer';
	@override String description({required Object appLabel}) => 'Verklig viktminskning/ökning påverkas av ämnesomsättning, hormoner, sömn, stress, hydrering och andra individuella faktorer som ${appLabel} inte kan mäta.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightSv implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vattenvikt & Fluktuationer';
	@override String get description => 'Normal dagsvikt kan fluktuera betydligt på grund av vattenretention, matsmältning och timing. Uppskattningen tar inte hänsyn till dessa dagliga förändringar.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceSv implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionell vägledning';
	@override String get description => 'Använd inte denna uppskattning för att fatta medicinska beslut. Rådgör alltid med en vårdpersonal eller registrerad dietist för personlig viktstyrning rådgivning.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrSv implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolisk Hastighet (BMR) är antalet kalorier din kropp förbränner i vila för att upprätthålla grundläggande funktioner som andning och cirkulation. BMR beror på din ålder, kön, längd och vikt. En högre BMR betyder att din kropp naturligt förbränner fler kalorier i vila, ofta på grund av mer muskelmassa, yngre ålder eller manligt kön. En lägre BMR indikerar vanligtvis mindre muskelmassa, äldre ålder, eller kvinnligt kön.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeSv implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Totalt Dagligt Energibehov (TDEE) är de totala kalorier du förbränner per dag, inklusive din BMR plus kalorier från fysisk aktivitet och daglig rörelse. TDEE beror på din BMR och aktivitetsnivå. En högre TDEE innebär att du förbränner fler kalorier totalt, vanligtvis på grund av att du är mer aktiv eller har en högre BMR. En lägre TDEE tyder på mindre daglig aktivitet eller en lägre BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalSv implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagligt Mål';
	@override String get description => 'Dagligt Mål är ditt rekommenderade dagliga kaloriintag baserat på din TDEE och viktmål. För viktnedgång konsumerar du färre kalorier än din TDEE. För vikthållning matchar du din TDEE. För viktökning konsumerar du fler kalorier än din TDEE. Detta hjälper dig att uppnå din önskade viktförändring i en hälsosam takt.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedSv implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hur uppskattningen beräknas';
	@override String get description => 'Vi beräknar din TDEE (baserat på din profil) och multiplicerar den med andelen av dagen som förflutit (timmar + minuter) / 24 för att uppskatta hur många kalorier som förbrukats hittills.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceSv implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionell vägledning';
	@override String get description => 'Använd inte denna uppskattning som underlag för medicinska beslut. Rådgör alltid med vårdpersonal eller en legitimerad dietist för personligt anpassade råd om vikt- och hälsohantering.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedSv implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Läsa Totala Brända Kalorier';
	@override String get description => 'Tillåter appen att läsa dina totala brända kalorier från Hälsokoppling.';
	@override String get usage => 'Denna behörighet används för att visa din dagliga kaloriförbränning i appen, vilket hjälper dig att förstå din totala energiförbrukning under dagen.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadSv implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Läsa Näringsdata';
	@override String get description => 'Tillåter appen att läsa näringsdata från Hälsokoppling.';
	@override String get usage => 'Denna behörighet gör att appen kan läsa näringsinformation som kan ha loggats av andra appar kopplade till Hälsokoppling, vilket ger en heltäckande bild av din nutrition.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteSv implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteSv._(this._root);

	final TranslationsSv _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skriva Näringsdata';
	@override String get description => 'Tillåter appen att skriva näringsdata till Hälsokoppling.';
	@override String get usage => 'Denna behörighet gör att appen kan synkronisera dina loggade måltider till Hälsokoppling, vilket gör din näringsdata tillgänglig för andra hälso- och fitnessappar du använder.';
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
			'errors.rateLimitExceeded' => 'Du har gjort för många förfrågningar. Vänta en liten stund och försök igen.',
			'errors.networkError' => 'Nätverksfel. Kontrollera din internetanslutning.',
			'errors.unknownError' => 'Något gick fel. Försök igen senare.',
			'errors.loadingProfileData' => 'Fel vid inläsning av profildata',
			'errors.somethingWentWrong' => 'Något gick fel.',
			'onboarding.welcome' => ({required Object appLabel}) => 'Välkommen till ${appLabel}',
			'onboarding.subtitle' => 'Din personliga kostkompis som drivs av AI',
			'onboarding.getStarted' => 'Kom igång',
			'onboarding.features.foodRecognition.title' => 'Smart Matigenkänning',
			'onboarding.features.foodRecognition.description' => 'Ta en bild och låt AI identifiera din måltid',
			'onboarding.features.aiAnalysis.title' => 'AI-analys',
			'onboarding.features.aiAnalysis.description' => 'Få omedelbar näringsinformation från dina beskrivningar',
			'onboarding.features.healthIntegration.title' => 'Hälsointegration',
			'onboarding.features.healthIntegration.description' => 'Anslut med Health Connect för bättre insikter',
			'onboarding.gender.title' => 'Vad är ditt kön?',
			'onboarding.gender.description' => 'Kön hjälper oss att korrekt beräkna din basalmetaboliska hastighet (BMR).',
			'onboarding.gender.next' => 'Nästa',
			'onboarding.height.title' => 'Hur lång är du?',
			'onboarding.height.description' => 'Din längd hjälper oss att beräkna din BMI och energibehov korrekt.',
			'onboarding.height.metric' => 'Metrisk',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Nästa',
			'onboarding.weight.currentTitle' => 'Vad väger du för närvarande?',
			'onboarding.weight.currentDescription' => 'Din nuvarande vikt är viktig för att anpassa dina dagliga mål.',
			'onboarding.weight.targetTitle' => 'Vad är din målvikt?',
			'onboarding.weight.targetDescription' => 'Att sätta en målvikt hjälper oss att bestämma din långsiktiga plan.',
			'onboarding.weight.metric' => 'Metrisk',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Nästa',
			'onboarding.age.title' => 'När är din födelsedag?',
			'onboarding.age.description' => 'Din ålder hjälper oss att korrekt beräkna dina kaloribehov.',
			'onboarding.age.next' => 'Nästa',
			'onboarding.bmiScale.underweight' => 'Underviktig',
			'onboarding.bmiScale.healthy' => 'Hälsosam',
			'onboarding.bmiScale.overweight' => 'Överviktig',
			'onboarding.bmiScale.obese' => 'Fetma',
			'onboarding.bmiScale.categories.underweight' => 'Underviktig',
			'onboarding.bmiScale.categories.healthyWeight' => 'Hälsosam vikt',
			'onboarding.bmiScale.categories.overweight' => 'Överviktig',
			'onboarding.bmiScale.categories.obese' => 'Fetma',
			'onboarding.bmiScale.messages.underweight' => 'Vi kan hjälpa dig att bygga en hälsosam plan för att nå en balanserad vikt med näringsrika måltider.',
			'onboarding.bmiScale.messages.healthy' => 'Bra jobbat! Du är inom ett hälsosamt intervall. Vi hjälper dig att bibehålla din vitalitet och energinivåer.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} kommer att förenkla din resa med AI-driven spårning för att hjälpa dig nå ditt mål på ett bekvämt sätt.',
			'onboarding.bmiScale.messages.obese' => 'Vi är här för att stödja dig med personlig vägledning och hållbara strategier för dina hälsomål.',
			'onboarding.weightGoal.title' => 'Vad är ditt mål?',
			'onboarding.weightGoal.description' => 'Välj det mål som bäst beskriver vad du vill uppnå',
			'onboarding.activityLevel.title' => 'Hur aktiv är du?',
			'onboarding.activityLevel.description' => 'Detta hjälper oss att beräkna ditt dagliga kaloribehov mer exakt',
			'onboarding.healthConnect.title' => 'Anslut till Health Connect',
			'onboarding.healthConnect.description' => 'Synkronisera din hälsodata för bättre insikter och automatisk kalori spårning',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatisk kalorispårning',
			'onboarding.healthConnect.automaticTracking.description' => 'Spåra kalorier brända från dina träningsappar',
			'onboarding.healthConnect.progressInsights.title' => 'Framstegsinsikter',
			'onboarding.healthConnect.progressInsights.description' => 'Få detaljerade insikter om dina hälsotrender',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Sömlös integration',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synkronisera data från dina favorithälsoappar',
			'onboarding.healthConnect.connected' => 'Health Connect Ansluten',
			'onboarding.healthConnect.notConnected' => 'Health Connect Inte Ansluten',
			'onboarding.healthConnect.setup' => 'Ställ in Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Hoppa över för nu',
			'onboarding.healthConnect.statusConnected' => 'Health Connect är ansluten.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect har anslutits framgångsrikt!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Åtkomst nekad. Vänligen aktivera Health Connect-behörigheter från dina telefoninställningar för ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Fel vid inställning av Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Du är inte ensam',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Forskning visar att konsekvent spårning är den främsta indikatorn på långsiktig framgång.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'För en ${age}-årig ${gender} som vill ${goal}, är konsekvent spårning den främsta indikatorn på framgång.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} gör det 10 gånger enklare än att göra det manuellt.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Redo att komma igång?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Ta ett foto på dina måltider för omedelbar analys',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Logga konsekvent för att se meningsfulla framsteg',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Följ dina framsteg dagligen för att hålla motivationen hög',
			'onboarding.reinforcement.trackingSuccess.button' => 'Låt oss gå',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individ',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'hälsosammare du',
			'onboarding.reinforcement.healthProfile.title' => 'Din Hälsoprofil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Baserat på dina mått är din BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Låt oss slutföra din profil för att anpassa din upplevelse.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'gå upp',
			'onboarding.reinforcement.healthProfile.goalLose' => 'gå ner',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'För att nå ditt mål måste du ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Du är på din målvikten! Vi hjälper dig att bibehålla den.',
			'onboarding.reinforcement.healthProfile.button' => 'Låt oss gå',
			'onboarding.reinforcement.goalLifestyle.title' => 'Utmärkt Start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har tagit det första steget mot ${goalText}. Eftersom du är ${activityText}, kommer ${appLabel} att justera dina mål för att matcha din livsstil.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Anpassade kalorimål',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-driven måltidsdetektion',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detaljerade makronäringsämnesfördelningar',
			'onboarding.reinforcement.goalLifestyle.button' => 'Låt oss gå',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'dina mål',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiv',
			'tabs.dashboard' => 'Instrumentbräda',
			'tabs.history' => 'Historik',
			'home.aiSummary.title' => 'Din AI-sammanfattning',
			'home.aiSummary.logMore' => 'Logga fler måltider under de närmaste dagarna för att få dina personliga AI-insikter.',
			'home.aiSummary.loading' => 'Hämtar din sammanfattning...',
			'home.dailyGoal.title' => 'Ställ in ditt dagliga mål',
			'home.dailyGoal.titleSet' => 'Ditt dagliga mål',
			'home.dailyGoal.description' => 'Redo att påbörja din wellness-resa? Ställ in ditt dagliga kalorimål nedan för att kickstarta din progress.',
			'home.dailyGoal.descriptionSet' => 'Din kompass är inställd! Detta är ditt dagliga kalorimål för att vägleda dig.',
			'home.dailyGoal.yourGoal' => 'Ditt mål',
			'home.dailyGoal.goal' => 'Mål',
			'home.dailyGoal.dailyCalories' => 'Dagliga kalorier (kcal)',
			'home.dailyGoal.setGoal' => 'Ställ in mål',
			'home.dailyGoal.intake' => 'Intag',
			'home.dailyGoal.burned' => 'Bränt',
			'home.dailyGoal.weightImpact' => 'Viktpåverkan',
			'home.dailyGoal.estLoss' => 'Beräknad förlust av',
			'home.dailyGoal.estGain' => 'Beräknad ökning av',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Daglig sammanfattning',
			'home.dailySummary.calories' => 'Kalorier',
			'home.dailySummary.carbs' => 'Kolhydrater',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Fett',
			'home.dailySummary.fiber' => 'Fiber',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Diagram över makronutrienter',
			'home.intakeProgress.title' => 'Dagens makrofördelning',
			'home.intakeProgress.target' => 'Mål',
			'home.intakeProgress.current' => 'Aktuell',
			'home.intakeHistory.title' => '7-dagars makrohistorik',
			'home.intakeHistory.noHistoryYet' => 'Ingen historik ännu',
			'home.intakeHistory.startLogging' => 'Börja logga måltider för att se dina\n7-dagars makrotrender här',
			'home.mealLog.title' => 'Loggade måltider',
			'home.mealLog.emptyMessage' => 'Ta en bild av din senaste måltid för att logga här.',
			'home.mealLog.noMealsToday' => 'Inga måltider registrerade för idag',
			'home.mealLog.seeAllMeals' => 'Se alla måltider',
			'home.mealDescription.title' => 'Snabbt tillägg med AI',
			'home.mealDescription.description' => 'Beskriv din måltid och låt AI hantera detaljerna.',
			'home.mealDescription.hint' => 't.ex. Till frukost hade jag en stor skål havregryn med en skivad banan och en skopa vassle ...',
			'home.mealDescription.analyzeMeal' => 'Analysera måltid',
			'home.favoriteMeals.title' => 'Favoritmåltider',
			'home.favoriteMeals.description' => 'Lägg snabbt till en av dina favoritmåltider.',
			'home.favoriteMeals.noFavorites' => 'Inga favoritmåltider ännu.',
			'home.favoriteMeals.addFavoriteHint' => 'Klicka på stjärnan på en måltid för att markera den som favorit.',
			'home.favoriteMeals.seeAll' => 'Se alla',
			'home.favoriteMeals.add' => 'Lägg till',
			'home.mealSnap.title' => 'Snap & Spåra din måltid',
			'home.mealSnap.description' => 'Använd din kamera för att ta en bild av din mat för AI-analys.',
			'home.mealSnap.openCamera' => 'Öppna kamera',
			'home.mealSnap.gallery' => 'Galleri',
			'home.connectHealth.title' => 'Synkronisera med Health Connect',
			'home.connectHealth.description' => 'Synkronisera din näringsdata med Health Connect',
			'home.connectHealth.install' => 'Installera',
			'home.connectHealth.connect' => 'Anslut',
			'history.noMeals' => 'Inga måltider registrerade',
			'history.emptyMessage' => 'Ta en bild av din senaste måltid för att logga här.',
			'history.today' => 'Idag',
			'history.yesterday' => 'Igår',
			'meal.ohNo' => 'Åh nej!',
			'meal.delete' => 'Radera',
			'meal.editMeal' => 'Redigera måltid',
			'meal.addMeal' => 'Lägg till måltid',
			'meal.saveMeal' => 'Spara måltid',
			'meal.save' => 'Spara',
			'meal.mealName' => 'Måltidens namn',
			'meal.mealNameHint' => 't.ex., Äggröra med rostat bröd',
			'meal.mealQuantity' => 'Måltidens mängd',
			'meal.mealQuantityHint' => 't.ex. 1 skål, 2 skivor',
			'meal.timeOfMeal' => 'Måltidens tid',
			'meal.timeOfMealHint' => 'Välj den tid du hade din måltid',
			'meal.mealType' => 'Måltidstyp',
			'meal.nutrition.calories' => 'Kalorier',
			'meal.nutrition.carbs' => 'Kolhydrater (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Fett (g)',
			'meal.nutrition.fiber' => 'Fiber (g)',
			'meal.deleteConfirmation.title' => 'Radera måltid',
			'meal.deleteConfirmation.message' => 'Är du säker på att du vill radera detta måltidsinlägg?',
			'meal.deleteConfirmation.cancel' => 'Avbryt',
			'meal.deleteConfirmation.delete' => 'Radera',
			'meal.addedToLog' => 'Måltid tillagd till din logg!',
			'meal.couldNotAdd' => ({required Object error}) => 'Kunde inte lägga till måltid: ${error}',
			'meal.savedSuccessfully' => 'Måltid tillagd!',
			'meal.updatedSuccessfully' => 'Måltid uppdaterad!',
			'meal.errorSaving' => ({required Object error}) => 'Fel vid sparning av måltid: ${error}',
			'meal.removedFromFavorites' => 'Borttagen från favoriter!',
			'meal.savedAsFavorite' => 'Måltid sparad som favorit!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Kunde inte uppdatera favorit: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Misslyckades med att bearbeta: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Misslyckades med att bearbeta bilden: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Fel vid komprimering av bild: ${error}',
			'meal.failedToSave' => 'Misslyckades med att spara data. Vänligen försök igen.',
			'meal.skip' => 'Hoppa över',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Fråga ${current} av ${total}',
			'meal.variation.noVariationsAvailable' => 'Inga varianter tillgängliga',
			'favorites.title' => 'Favoriter',
			'favorites.empty' => 'Inga favoritmåltider ännu.',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Ingen profildata hittad',
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
			'profile.notSet' => 'Inte inställd',
			'profile.years' => 'år',
			'profile.updatedSuccessfully' => 'Profilen uppdaterades framgångsrikt!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Dagligt mål',
			'profile.calculatedValues.calPerDay' => 'kal/dag',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Hälsopoäng',
			'healthScore.whyThisScore' => 'Varför denna poäng?',
			'healthScore.note' => 'Denna poäng är en AI-uppskattning baserad på de identifierade ingredienserna och den näringsmässiga densiteten. Rådgör alltid med en professionell för kostråd.',
			'healthScore.unhealthy' => 'Ohälsosam',
			'healthScore.healthy' => 'Hälsosam',
			'healthScore.neutral' => 'Neutral',
			'editProfile.title' => 'Redigera Profil',
			'editProfile.sections.personalInformation' => 'PERSONLIG INFORMATION',
			'editProfile.sections.physicalMeasurements' => 'FYSISKA MÅTT',
			'editProfile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'editProfile.gender' => 'Kön',
			'editProfile.dateOfBirth' => 'Födelsedatum',
			'editProfile.height' => 'Längd',
			'editProfile.weight' => 'Vikt',
			'editProfile.weightGoal' => 'Viktmål',
			'editProfile.activityLevel' => 'Aktivitetsnivå',
			'editProfile.metric' => 'Metrisk',
			'editProfile.imperial' => 'Imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metrisk (cm)',
			'editProfile.imperialFtIn' => 'Imperial (ft/in)',
			'editProfile.metricKg' => 'Metrisk (kg)',
			'editProfile.imperialLbs' => 'Imperial (lbs)',
			'editProfile.genders.male' => 'Man',
			'editProfile.genders.female' => 'Kvinna',
			'editProfile.genders.other' => 'Annat',
			'editProfile.weightGoals.loseWeight.name' => 'Gå ner i vikt',
			'editProfile.weightGoals.loseWeight.description' => 'Skapa ett kaloriunderskott för att gå ner i vikt',
			'editProfile.weightGoals.maintainWeight.name' => 'Behålla vikt',
			'editProfile.weightGoals.maintainWeight.description' => 'Behåll din nuvarande vikt',
			'editProfile.weightGoals.gainWeight.name' => 'Gå upp i vikt',
			'editProfile.weightGoals.gainWeight.description' => 'Skapa ett kaloriöverskott för att gå upp i vikt',
			'editProfile.activityLevels.sedentary.name' => 'Stillasittande',
			'editProfile.activityLevels.sedentary.description' => 'Lite eller ingen träning',
			'editProfile.activityLevels.lightlyActive.name' => 'Lätt aktiv',
			'editProfile.activityLevels.lightlyActive.description' => 'Lätt träning 1-3 dagar/vecka',
			'editProfile.activityLevels.moderatelyActive.name' => 'Måttligt aktiv',
			'editProfile.activityLevels.moderatelyActive.description' => 'Måttlig träning 3-5 dagar/vecka',
			'editProfile.activityLevels.veryActive.name' => 'Mycket aktiv',
			'editProfile.activityLevels.veryActive.description' => 'Hård träning 6-7 dagar/vecka',
			'editProfile.activityLevels.extremelyActive.name' => 'Extremt aktiv',
			'editProfile.activityLevels.extremelyActive.description' => 'Mycket hård träning, fysiskt arbete',
			'settings.title' => 'Inställningar',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALISERING',
			'settings.sections.notifications' => 'NOTIFIERINGAR',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'SUPPORT & JURIDIK',
			'settings.sections.about' => 'OM',
			'settings.sections.dangerZone' => 'FARLIG ZON',
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
			'settings.mealReminders.subtitle' => 'Håll dig på rätt spår med tidsenliga påminnelser',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Ljust',
			'settings.theme.dark' => 'Mörkt',
			'settings.theme.system' => 'System',
			'settings.sendFeedback.title' => 'Skicka återkoppling',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Hjälp oss att förbättra ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback för ${appLabel} App',
			'settings.sendFeedback.emailBodyPrefix' => 'Vänligen ge din återkoppling nedan:',
			'settings.sendFeedback.appVersion' => 'Appversion',
			'settings.sendFeedback.device' => 'Enhet',
			'settings.sendFeedback.osVersion' => 'OS-version',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Rensa all data',
			'settings.clearAllData.subtitle' => 'Ta bort all din information oåterkalleligt',
			'settings.clearAllData.confirmationTitle' => 'Rensa all data?',
			'settings.clearAllData.confirmationMessage' => 'Denna åtgärd kan inte ångras. Alla dina registrerade måltider, favoriter och profilinställningar kommer att raderas permanent.',
			'settings.clearAllData.cancel' => 'Avbryt',
			'settings.clearAllData.clearEverything' => 'Rensa allt',
			'settings.debugOptions.title' => 'Debugalternativ',
			'settings.developerModeEnabled' => 'Utvecklarläge aktiverat!',
			'settings.healthConnect.title' => 'Hälsokoppling',
			'settings.healthConnect.subtitle' => 'Visa och hantera behörigheter',
			'settings.healthConnect.unavailable.title' => 'Hälsokoppling Otillgänglig',
			'settings.healthConnect.unavailable.description' => 'Hälsokoppling är inte tillgänglig på denna enhet. Det krävs Android 14 eller senare.',
			'settings.healthConnect.permissions.title' => 'Behörigheter',
			'settings.healthConnect.permissions.description' => 'Följande behörigheter begärs för att tillhandahålla integrering med Hälsokoppling:',
			'settings.healthConnect.permissions.granted' => 'Beviljad',
			'settings.healthConnect.permissions.notGranted' => 'Ej Beviljad',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Läsa Totala Brända Kalorier',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Tillåter appen att läsa dina totala brända kalorier från Hälsokoppling.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Denna behörighet används för att visa din dagliga kaloriförbränning i appen, vilket hjälper dig att förstå din totala energiförbrukning under dagen.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Läsa Näringsdata',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Tillåter appen att läsa näringsdata från Hälsokoppling.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Denna behörighet gör att appen kan läsa näringsinformation som kan ha loggats av andra appar kopplade till Hälsokoppling, vilket ger en heltäckande bild av din nutrition.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Skriva Näringsdata',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Tillåter appen att skriva näringsdata till Hälsokoppling.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Denna behörighet gör att appen kan synkronisera dina loggade måltider till Hälsokoppling, vilket gör din näringsdata tillgänglig för andra hälso- och fitnessappar du använder.',
			'settings.healthConnect.managePermissions' => 'Hantera Behörigheter',
			'settings.healthConnect.openSettings' => 'Öppna inställningar för Hälsokoppling',
			'settings.healthConnect.requestPermissions' => 'Begär behörigheter',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Behörighetsbegäran avbröts eller misslyckades. Vänligen försök igen eller ge behörigheter manuellt i inställningarna för Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Det gick inte att begära behörigheter. Vänligen försök igen eller ge behörigheter manuellt i inställningarna för Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'Om',
			'settings.about.tagline' => 'Snabb, gratis och integritetsfokuserad kalorimedvetenhet',
			'settings.about.ourStory.title' => 'Vår Historia',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} föddes ur en enkel frustration: de flesta kaloritracking-appar är antingen överdrivet komplicerade, kräver konstant manuell inmatning, tar ut höga abonnemangsavgifter eller kompromissar med integriteten.\n\nSom en oberoende utvecklare ville jag bygga något enklare och rättvisare — en app som använder AI för att minska ansträngningen, förblir snabb och gratis att använda, och hanterar din hälsodata med respekt.\n\n${appLabel} är appen jag önskar fanns: inga konton, ingen spårning, inga annonser — bara tydliga, praktiska insikter och dina hälsomål.',
			'settings.about.privacy.title' => 'Din Integritet Är Viktig',
			'settings.about.privacy.description' => 'Integritet är inte en eftertanke — det är en designprincip. Här är vad det innebär i praktiken:',
			'settings.about.privacy.noAccounts' => 'Inga konton krävs\nAnvänd appen direkt. Inga registreringar, inga identiteter.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Ingen beteendesporing\n${appLabel} övervakar inte din aktivitet, bygger användarprofiler, eller spårar dig över appar eller webbplatser.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Annonsfri av design\n${appLabel} är byggd för att fungera utan annonser eller datadriven monetisering.',
			'settings.about.privacy.noDataSelling' => 'Ingen försäljning av data\nDin hälsodata säljs aldrig eller delas med tredje part.',
			'settings.about.privacy.localStorage' => 'Lokal lagring först\nDin data stannar på din enhet.',
			'settings.about.privacy.privacyPolicy' => 'Integritetspolicy',
			'settings.about.developer.title' => 'Byggd av en Oberoende Utvecklare',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} är byggd och underhållen av en enda oberoende utvecklare som fokuserar på att skapa lugn, integritetsrespekterande hälsoprogramvara.\n\nFeedback läses personligen och hjälper till att forma riktningen för appen.',
			'settings.about.developer.website' => 'Hemsida',
			'settings.about.developer.email' => 'E-post',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Gillar du ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Din feedback hjälper till att göra ${appLabel} bättre för alla.',
			'settings.about.feedback.rateApp' => 'Betygsätt på Play Store',
			'settings.about.feedback.sendFeedback' => 'Skicka Feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Bygg ${buildNumber}',
			'reminders.title' => 'Håll dig på rätt spår med påminnelser',
			'reminders.description' => 'Få milda påminnelser för att logga dina måltider och hålla dig konsekvent med dina näringsmål',
			'reminders.notificationsEnabled' => 'Notiser aktiverade',
			'reminders.notificationsDisabled' => 'Notiser inaktiverade',
			'reminders.enabledSubtitle' => 'Du kommer att få måltidspåminnelser',
			'reminders.disabledSubtitle' => 'Aktivera notifieringar för att få måltidspåminnelser',
			'reminders.mealReminders' => 'Måltidspåminnelser',
			'reminders.breakfast' => 'Frukost',
			'reminders.lunch' => 'Lunch',
			'reminders.dinner' => 'Middag',
			'reminders.snack' => 'Mellanmål',
			'reminders.unknown' => 'Okänd',
			'reminders.change' => 'Ändra',
			'reminders.enableNotifications' => 'Aktivera notifieringar',
			'reminders.skipForNow' => 'Hoppa över för nu',
			'reminders.saveChanges' => 'Spara ändringar',
			'reminders.enabledSuccessfully' => 'Notifieringar aktiverades framgångsrikt!',
			'reminders.permissionDenied' => 'Åtkomst till notifieringar nekad',
			'reminders.errorEnabling' => ({required Object error}) => 'Fel vid aktivering av notifieringar: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Fel vid slutförande av installation: ${error}',
			'notifications.breakfast.title' => 'Frukosttid! 🍳',
			'notifications.breakfast.body' => 'Glöm inte att logga din frukost',
			'notifications.lunch.title' => 'Lunchtid! 🥗',
			'notifications.lunch.body' => 'Dags att logga din lunch',
			'notifications.dinner.title' => 'Middagtid! 🍽️',
			'notifications.dinner.body' => 'Glöm inte att logga din middag',
			'notifications.snack.title' => 'Mellanmålstid! 🍎',
			'notifications.snack.body' => 'Dags för ett hälsosamt mellanmål',
			'notifications.test.title' => 'Testnotifikation',
			'login.title' => 'Logga in',
			'login.signInWithGoogle' => 'Logga in med Google',
			'login.signInFailed' => 'Google-inloggning misslyckades eller avbröts.',
			'disclaimer.pleaseNote' => 'Vänligen notera',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} ger uppskattad näringsinformation. Noggrannheten beror på din inmatning och livsmedelsvariationer. Använd som en guide, inte som en definitiv källa. Konsultera en professionell för personlig kostrådgivning.',
			'disclaimer.snap.portionSize.title' => 'Portionsstorlek',
			'disclaimer.snap.portionSize.description' => 'Noggrannheten i uppskattningarna beror starkt på din korrekta bedömning av portionsstorleken.',
			'disclaimer.snap.preparationMethods.title' => 'Tillagningsmetoder',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Tillagningsmetoder kan avsevärt påverka den näringsmässiga halten i maten. ${appLabel}s uppskattningar kan inte alltid ta hänsyn till dessa variationer.',
			'disclaimer.snap.ingredients.title' => 'Ingredienser',
			'disclaimer.snap.ingredients.description' => 'Komplexa rätter med många dolda ingredienser kan leda till mindre noggranna uppskattningar.',
			'disclaimer.snap.databaseLimitations.title' => 'Databasbegränsningar',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}s livsmedelsdatabas är omfattande men kanske inte inkluderar varje enskild livsmedelsartikel eller variation.',
			'disclaimer.weightEstimate.title' => 'Om viktuppskattning',
			'disclaimer.weightEstimate.description' => 'Den projicerade viktförändringen är en teoretisk uppskattning baserad på den enkla modellen kalorier in vs. kalorier ut. Den är avsedd för motivationsvägledning endast, inte som en förutsägelse av din faktiska vikt.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalorinoggrannhet',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Denna uppskattning är bara så noggrann som ditt spårade kaloriintag och dina utgifter. Onoggrann loggning leder till felaktiga projektioner.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologiska faktorer',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Verklig viktminskning/ökning påverkas av ämnesomsättning, hormoner, sömn, stress, hydrering och andra individuella faktorer som ${appLabel} inte kan mäta.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Vattenvikt & Fluktuationer',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normal dagsvikt kan fluktuera betydligt på grund av vattenretention, matsmältning och timing. Uppskattningen tar inte hänsyn till dessa dagliga förändringar.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Professionell vägledning',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Använd inte denna uppskattning för att fatta medicinska beslut. Rådgör alltid med en vårdpersonal eller registrerad dietist för personlig viktstyrning rådgivning.',
			'disclaimer.healthMetrics.description' => 'Dessa mått hjälper dig att förstå kroppens energibehov och vägleda dina näringsmål.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolisk Hastighet (BMR) är antalet kalorier din kropp förbränner i vila för att upprätthålla grundläggande funktioner som andning och cirkulation. BMR beror på din ålder, kön, längd och vikt. En högre BMR betyder att din kropp naturligt förbränner fler kalorier i vila, ofta på grund av mer muskelmassa, yngre ålder eller manligt kön. En lägre BMR indikerar vanligtvis mindre muskelmassa, äldre ålder, eller kvinnligt kön.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Totalt Dagligt Energibehov (TDEE) är de totala kalorier du förbränner per dag, inklusive din BMR plus kalorier från fysisk aktivitet och daglig rörelse. TDEE beror på din BMR och aktivitetsnivå. En högre TDEE innebär att du förbränner fler kalorier totalt, vanligtvis på grund av att du är mer aktiv eller har en högre BMR. En lägre TDEE tyder på mindre daglig aktivitet eller en lägre BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Dagligt Mål',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Dagligt Mål är ditt rekommenderade dagliga kaloriintag baserat på din TDEE och viktmål. För viktnedgång konsumerar du färre kalorier än din TDEE. För vikthållning matchar du din TDEE. För viktökning konsumerar du fler kalorier än din TDEE. Detta hjälper dig att uppnå din önskade viktförändring i en hälsosam takt.',
			'disclaimer.calorieExpenditure.title' => 'Uppskattning av kaloriförbrukning',
			'disclaimer.calorieExpenditure.description' => 'När Health Connect-data inte är tillgänglig uppskattar vi dagens förbrukade kalorier med hjälp av din basalmetabolism (BMR) och aktivitetsnivå (TDEE), anpassat efter hur stor del av dagen som har passerat.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Hur uppskattningen beräknas',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Vi beräknar din TDEE (baserat på din profil) och multiplicerar den med andelen av dagen som förflutit (timmar + minuter) / 24 för att uppskatta hur många kalorier som förbrukats hittills.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Professionell vägledning',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Använd inte denna uppskattning som underlag för medicinska beslut. Rådgör alltid med vårdpersonal eller en legitimerad dietist för personligt anpassade råd om vikt- och hälsohantering.',
			'common.close' => 'Stäng',
			'common.kContinue' => 'Fortsätt',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Tycker du om ${appLabel}?',
			'feedbackRating.yes' => 'Ja, jag gillar det',
			'feedbackRating.no' => 'Inte riktigt',
			'feedbackRating.rateStepHeading' => 'Betygsätt i Google Play',
			'feedbackRating.emailStepHeading' => 'Skicka feedback via e-post',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'En snabb bedömning hjälper andra att hitta ${appLabel} och håller utvecklingen igång. Skulle du ta en stund och ge ett betyg?',
			'feedbackRating.shareFeedbackViaEmail' => 'Din feedback påverkar vad som kommer härnäst — vi läser varje meddelande. Vill du dela dina tankar via e-post?',
			'feedbackRating.rateCta' => 'Betygsätt i Google Play',
			'feedbackRating.maybeLater' => 'Kanske senare',
			'feedbackRating.sendFeedback' => 'Skicka feedback',
			'feedbackRating.noThanks' => 'Nej tack',
			'feedbackRating.aboutUsDescription' => 'Skapad med omsorg av ett litet team. Vi prioriterar integritet, enkelhet och att hjälpa dig utveckla hälsosammare matvanor.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Nyfiken på vem som ligger bakom ${appLabel}? Se ',
			'feedbackRating.aboutUsLinkLabel' => 'Om oss',
			'feedbackRating.thankYouMessage' => 'Tack! Vi frågar igen vid ett annat tillfälle.',
			'health.syncFailed' => 'Kunde inte synkronisera med Health Connect',
			'health.mealSynced' => 'Måltid synkroniserad med Health Connect',
			_ => null,
		};
	}
}
