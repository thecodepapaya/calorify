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
class TranslationsDa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.da,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <da>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsDa _root = this; // ignore: unused_field

	@override 
	TranslationsDa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDa(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Dansk';
	@override String get flag => '🇩🇰';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsDa errors = _TranslationsErrorsDa._(_root);
	@override late final _TranslationsOnboardingDa onboarding = _TranslationsOnboardingDa._(_root);
	@override late final _TranslationsTabsDa tabs = _TranslationsTabsDa._(_root);
	@override late final _TranslationsHomeDa home = _TranslationsHomeDa._(_root);
	@override late final _TranslationsHistoryDa history = _TranslationsHistoryDa._(_root);
	@override late final _TranslationsMealDa meal = _TranslationsMealDa._(_root);
	@override late final _TranslationsFavoritesDa favorites = _TranslationsFavoritesDa._(_root);
	@override late final _TranslationsProfileDa profile = _TranslationsProfileDa._(_root);
	@override late final _TranslationsHealthScoreDa healthScore = _TranslationsHealthScoreDa._(_root);
	@override late final _TranslationsEditProfileDa editProfile = _TranslationsEditProfileDa._(_root);
	@override late final _TranslationsSettingsDa settings = _TranslationsSettingsDa._(_root);
	@override late final _TranslationsRemindersDa reminders = _TranslationsRemindersDa._(_root);
	@override late final _TranslationsNotificationsDa notifications = _TranslationsNotificationsDa._(_root);
	@override late final _TranslationsLoginDa login = _TranslationsLoginDa._(_root);
	@override late final _TranslationsDisclaimerDa disclaimer = _TranslationsDisclaimerDa._(_root);
	@override late final _TranslationsCommonDa common = _TranslationsCommonDa._(_root);
	@override late final _TranslationsFeedbackRatingDa feedbackRating = _TranslationsFeedbackRatingDa._(_root);
	@override late final _TranslationsHealthDa health = _TranslationsHealthDa._(_root);
}

// Path: errors
class _TranslationsErrorsDa implements TranslationsErrorsEn {
	_TranslationsErrorsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Du har foretaget for mange forespørgsler. Vent et øjeblik, før du prøver igen.';
	@override String get networkError => 'Netværksfejl. Tjek din internetforbindelse.';
	@override String get unknownError => 'Noget gik galt. Prøv igen senere.';
	@override String get loadingProfileData => 'Fejl ved indlæsning af profildata';
	@override String get somethingWentWrong => 'Noget gik galt.';
	@override String get retry => 'Prøv igen';
}

// Path: onboarding
class _TranslationsOnboardingDa implements TranslationsOnboardingEn {
	_TranslationsOnboardingDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Velkommen til ${appLabel}';
	@override String get subtitle => 'Din personlige ernæringsmakker drevet af AI';
	@override String get getStarted => 'Kom i gang';
	@override late final _TranslationsOnboardingFeaturesDa features = _TranslationsOnboardingFeaturesDa._(_root);
	@override late final _TranslationsOnboardingGenderDa gender = _TranslationsOnboardingGenderDa._(_root);
	@override late final _TranslationsOnboardingHeightDa height = _TranslationsOnboardingHeightDa._(_root);
	@override late final _TranslationsOnboardingWeightDa weight = _TranslationsOnboardingWeightDa._(_root);
	@override late final _TranslationsOnboardingAgeDa age = _TranslationsOnboardingAgeDa._(_root);
	@override late final _TranslationsOnboardingBmiScaleDa bmiScale = _TranslationsOnboardingBmiScaleDa._(_root);
	@override late final _TranslationsOnboardingWeightGoalDa weightGoal = _TranslationsOnboardingWeightGoalDa._(_root);
	@override late final _TranslationsOnboardingActivityLevelDa activityLevel = _TranslationsOnboardingActivityLevelDa._(_root);
	@override late final _TranslationsOnboardingHealthConnectDa healthConnect = _TranslationsOnboardingHealthConnectDa._(_root);
	@override late final _TranslationsOnboardingReinforcementDa reinforcement = _TranslationsOnboardingReinforcementDa._(_root);
}

// Path: tabs
class _TranslationsTabsDa implements TranslationsTabsEn {
	_TranslationsTabsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Oversigt';
	@override String get history => 'Historik';
}

// Path: home
class _TranslationsHomeDa implements TranslationsHomeEn {
	_TranslationsHomeDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryDa aiSummary = _TranslationsHomeAiSummaryDa._(_root);
	@override late final _TranslationsHomeDailyGoalDa dailyGoal = _TranslationsHomeDailyGoalDa._(_root);
	@override late final _TranslationsHomeDailySummaryDa dailySummary = _TranslationsHomeDailySummaryDa._(_root);
	@override late final _TranslationsHomeIntakeProgressDa intakeProgress = _TranslationsHomeIntakeProgressDa._(_root);
	@override late final _TranslationsHomeIntakeHistoryDa intakeHistory = _TranslationsHomeIntakeHistoryDa._(_root);
	@override late final _TranslationsHomeMealLogDa mealLog = _TranslationsHomeMealLogDa._(_root);
	@override late final _TranslationsHomeMealDescriptionDa mealDescription = _TranslationsHomeMealDescriptionDa._(_root);
	@override late final _TranslationsHomeFavoriteMealsDa favoriteMeals = _TranslationsHomeFavoriteMealsDa._(_root);
	@override late final _TranslationsHomeMealSnapDa mealSnap = _TranslationsHomeMealSnapDa._(_root);
	@override late final _TranslationsHomeConnectHealthDa connectHealth = _TranslationsHomeConnectHealthDa._(_root);
}

// Path: history
class _TranslationsHistoryDa implements TranslationsHistoryEn {
	_TranslationsHistoryDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Ingen måltider registreret';
	@override String get emptyMessage => 'Tag et billede af dit seneste måltid for at logge det her.';
	@override String get today => 'I dag';
	@override String get yesterday => 'I går';
}

// Path: meal
class _TranslationsMealDa implements TranslationsMealEn {
	_TranslationsMealDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Åh nej!';
	@override String get delete => 'Slet';
	@override String get editMeal => 'Rediger måltid';
	@override String get addMeal => 'Tilføj måltid';
	@override String get saveMeal => 'Gem måltid';
	@override String get save => 'Gem';
	@override String get mealName => 'Måltidsnavn';
	@override String get mealNameHint => 'f.eks. røræg med toast';
	@override String get mealQuantity => 'Måltidsmængde';
	@override String get mealQuantityHint => 'f.eks. 1 skål, 2 skiver';
	@override String get timeOfMeal => 'Tidspunkt for måltid';
	@override String get timeOfMealHint => 'Vælg tidspunktet, hvor du spiste';
	@override String get mealType => 'Måltidstype';
	@override late final _TranslationsMealNutritionDa nutrition = _TranslationsMealNutritionDa._(_root);
	@override late final _TranslationsMealDeleteConfirmationDa deleteConfirmation = _TranslationsMealDeleteConfirmationDa._(_root);
	@override String get addedToLog => 'Måltid tilføjet til din log!';
	@override String couldNotAdd({required Object error}) => 'Kunne ikke tilføje måltid: ${error}';
	@override String get savedSuccessfully => 'Måltid tilføjet!';
	@override String get updatedSuccessfully => 'Måltid opdateret!';
	@override String errorSaving({required Object error}) => 'Fejl ved lagring af måltid: ${error}';
	@override String get removedFromFavorites => 'Fjernet fra favoritter!';
	@override String get savedAsFavorite => 'Måltid gemt som favorit!';
	@override String get unfavorite => 'Fjern favorit';
	@override String couldNotUpdateFavorite({required Object error}) => 'Kunne ikke opdatere favorit: ${error}';
	@override String get feedbackThanks => 'Tak for din feedback!';
	@override String get reanalysisUpdated => 'Opdaterede måltidsanalysen baseret på din feedback.';
	@override String failedToProcess({required Object error}) => 'Kunne ikke behandle: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Kunne ikke behandle billede: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Fejl ved komprimering af billede: ${error}';
	@override String get failedToSave => 'Kunne ikke gemme data. Prøv igen.';
	@override String get skip => 'Spring over';
	@override late final _TranslationsMealQuestionFlowDa questionFlow = _TranslationsMealQuestionFlowDa._(_root);
	@override late final _TranslationsMealAnalysisDa analysis = _TranslationsMealAnalysisDa._(_root);
	@override late final _TranslationsMealFeedbackDa feedback = _TranslationsMealFeedbackDa._(_root);
}

// Path: favorites
class _TranslationsFavoritesDa implements TranslationsFavoritesEn {
	_TranslationsFavoritesDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritter';
	@override String get empty => 'Ingen favoritmåltider endnu.';
	@override String get searchPlaceholder => 'Søg i favoritmåltider';
	@override String get searchEmptyTitle => 'Ingen favoritter matcher din søgning';
	@override String get searchEmptySubtitle => 'Prøv et andet måltidsnavn, mængde eller måltidstype.';
	@override String get sortLabel => 'Sorter favoritter';
	@override String get undo => 'Fortryd';
	@override String removed({required Object name}) => 'Fjernede ${name} fra favoritter';
	@override late final _TranslationsFavoritesSortOptionsDa sortOptions = _TranslationsFavoritesSortOptionsDa._(_root);
}

// Path: profile
class _TranslationsProfileDa implements TranslationsProfileEn {
	_TranslationsProfileDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Ingen profildata fundet';
	@override String get yourProfile => 'Din profil';
	@override String get viewAndManage => 'Se og administrer dine helbredsoplysninger';
	@override late final _TranslationsProfileSectionsDa sections = _TranslationsProfileSectionsDa._(_root);
	@override String get gender => 'Køn';
	@override String get height => 'Højde';
	@override String get weight => 'Vægt';
	@override String get age => 'Alder';
	@override String get weightGoal => 'Vægtmål';
	@override String get targetWeight => 'Målvægt';
	@override String get activityLevel => 'Aktivitetsniveau';
	@override String get healthMetrics => 'Sundhedsmål';
	@override String get notSet => 'Ikke angivet';
	@override String get years => 'år';
	@override String get updatedSuccessfully => 'Profil opdateret!';
	@override late final _TranslationsProfileCalculatedValuesDa calculatedValues = _TranslationsProfileCalculatedValuesDa._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreDa implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sundhedsscore';
	@override String get whyThisScore => 'Hvorfor denne score?';
	@override String get note => 'Denne score er et AI-skøn baseret på identificerede ingredienser og næringstæthed. Rådfør dig altid med en professionel for kostvejledning.';
	@override String get unhealthy => 'Usund';
	@override String get healthy => 'Sund';
	@override String get neutral => 'Neutral';
}

// Path: editProfile
class _TranslationsEditProfileDa implements TranslationsEditProfileEn {
	_TranslationsEditProfileDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rediger profil';
	@override late final _TranslationsEditProfileSectionsDa sections = _TranslationsEditProfileSectionsDa._(_root);
	@override String get gender => 'Køn';
	@override String get dateOfBirth => 'Fødselsdato';
	@override String get height => 'Højde';
	@override String get weight => 'Vægt';
	@override String get weightGoal => 'Vægtmål';
	@override String get activityLevel => 'Aktivitetsniveau';
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
	@override late final _TranslationsEditProfileGendersDa genders = _TranslationsEditProfileGendersDa._(_root);
	@override late final _TranslationsEditProfileWeightGoalsDa weightGoals = _TranslationsEditProfileWeightGoalsDa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsDa activityLevels = _TranslationsEditProfileActivityLevelsDa._(_root);
}

// Path: settings
class _TranslationsSettingsDa implements TranslationsSettingsEn {
	_TranslationsSettingsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Indstillinger';
	@override late final _TranslationsSettingsSectionsDa sections = _TranslationsSettingsSectionsDa._(_root);
	@override late final _TranslationsSettingsEditProfileDa editProfile = _TranslationsSettingsEditProfileDa._(_root);
	@override late final _TranslationsSettingsLanguageDa language = _TranslationsSettingsLanguageDa._(_root);
	@override late final _TranslationsSettingsHeightUnitDa heightUnit = _TranslationsSettingsHeightUnitDa._(_root);
	@override late final _TranslationsSettingsWeightUnitDa weightUnit = _TranslationsSettingsWeightUnitDa._(_root);
	@override late final _TranslationsSettingsMealRemindersDa mealReminders = _TranslationsSettingsMealRemindersDa._(_root);
	@override late final _TranslationsSettingsThemeDa theme = _TranslationsSettingsThemeDa._(_root);
	@override late final _TranslationsSettingsSendFeedbackDa sendFeedback = _TranslationsSettingsSendFeedbackDa._(_root);
	@override late final _TranslationsSettingsExportMealHistoryDa exportMealHistory = _TranslationsSettingsExportMealHistoryDa._(_root);
	@override late final _TranslationsSettingsClearAllDataDa clearAllData = _TranslationsSettingsClearAllDataDa._(_root);
	@override late final _TranslationsSettingsDebugOptionsDa debugOptions = _TranslationsSettingsDebugOptionsDa._(_root);
	@override String get developerModeEnabled => 'Udviklertilstand aktiveret!';
	@override late final _TranslationsSettingsHealthConnectDa healthConnect = _TranslationsSettingsHealthConnectDa._(_root);
	@override late final _TranslationsSettingsAboutDa about = _TranslationsSettingsAboutDa._(_root);
	@override late final _TranslationsSettingsAppInfoDa appInfo = _TranslationsSettingsAppInfoDa._(_root);
}

// Path: reminders
class _TranslationsRemindersDa implements TranslationsRemindersEn {
	_TranslationsRemindersDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hold kursen med påmindelser';
	@override String get description => 'Få blide påmindelser om at registrere dine måltider og være konsekvent med dine ernæringsmål';
	@override String get notificationsEnabled => 'Meddelelser aktiveret';
	@override String get notificationsDisabled => 'Meddelelser deaktiveret';
	@override String get enabledSubtitle => 'Du vil modtage måltidspåmindelser';
	@override String get disabledSubtitle => 'Aktivér meddelelser for at få måltidspåmindelser';
	@override String get mealReminders => 'Måltidspåmindelser';
	@override String get breakfast => 'Morgenmad';
	@override String get lunch => 'Frokost';
	@override String get dinner => 'Aftensmad';
	@override String get snack => 'Snack';
	@override String get unknown => 'Ukendt';
	@override String get change => 'Ændr';
	@override String get enableNotifications => 'Aktivér meddelelser';
	@override String get skipForNow => 'Spring over for nu';
	@override String get saveChanges => 'Gem ændringer';
	@override String get enabledSuccessfully => 'Meddelelser blev aktiveret!';
	@override String get permissionDenied => 'Tilladelse til meddelelser blev afvist';
	@override String errorEnabling({required Object error}) => 'Fejl ved aktivering af meddelelser: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Fejl ved færdiggørelse af opsætning: ${error}';
}

// Path: notifications
class _TranslationsNotificationsDa implements TranslationsNotificationsEn {
	_TranslationsNotificationsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastDa breakfast = _TranslationsNotificationsBreakfastDa._(_root);
	@override late final _TranslationsNotificationsLunchDa lunch = _TranslationsNotificationsLunchDa._(_root);
	@override late final _TranslationsNotificationsDinnerDa dinner = _TranslationsNotificationsDinnerDa._(_root);
	@override late final _TranslationsNotificationsSnackDa snack = _TranslationsNotificationsSnackDa._(_root);
	@override late final _TranslationsNotificationsTestDa test = _TranslationsNotificationsTestDa._(_root);
}

// Path: login
class _TranslationsLoginDa implements TranslationsLoginEn {
	_TranslationsLoginDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Log ind';
	@override String get signInWithGoogle => 'Log ind med Google';
	@override String get signInFailed => 'Google-login mislykkedes eller blev annulleret.';
}

// Path: disclaimer
class _TranslationsDisclaimerDa implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Bemærk venligst';
	@override late final _TranslationsDisclaimerSnapDa snap = _TranslationsDisclaimerSnapDa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateDa weightEstimate = _TranslationsDisclaimerWeightEstimateDa._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDa healthMetrics = _TranslationsDisclaimerHealthMetricsDa._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureDa calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureDa._(_root);
}

// Path: common
class _TranslationsCommonDa implements TranslationsCommonEn {
	_TranslationsCommonDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get close => 'Luk';
	@override String get kContinue => 'Fortsæt';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingDa implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Nyder du ${appLabel}?';
	@override String get yes => 'Ja, jeg kan lide den';
	@override String get no => 'Ikke rigtigt';
	@override String get rateStepHeading => 'Bedøm i Play Butik';
	@override String get emailStepHeading => 'Send feedback via email';
	@override String soloDevMessage({required Object appLabel}) => 'En hurtig bedømmelse hjælper andre med at finde ${appLabel} og holder udviklingen i gang. Vil du tage et øjeblik til at give en bedømmelse?';
	@override String get shareFeedbackViaEmail => 'Din feedback former, hvad der kommer næste — vi læser hver besked. Vil du dele dine tanker via email?';
	@override String get rateCta => 'Bedøm i Play Butik';
	@override String get maybeLater => 'Måske senere';
	@override String get sendFeedback => 'Send feedback';
	@override String get noThanks => 'Nej tak';
	@override String get aboutUsDescription => 'Lavet med omhu af et lille team. Vi fokuserer på privatliv, enkelhed og at hjælpe dig med at opbygge bedre spisevaner.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Nysgerrig på, hvem der står bag ${appLabel}? Se ';
	@override String get aboutUsLinkLabel => 'Om os';
	@override String get thankYouMessage => 'Tak! Vi spørger igen en anden gang.';
}

// Path: health
class _TranslationsHealthDa implements TranslationsHealthEn {
	_TranslationsHealthDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Kunne ikke synkronisere til Health Connect';
	@override String get mealSynced => 'Måltid synkroniseret med Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesDa implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionDa foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionDa._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisDa aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisDa._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationDa healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationDa._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderDa implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvad er dit køn?';
	@override String get description => 'Køn hjælper os med præcist at beregne din basale forbrænding (BMR).';
	@override String get next => 'Næste';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightDa implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvor høj er du?';
	@override String get description => 'Din højde hjælper os med at beregne dit BMI og dine energibehov nøjagtigt.';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperial';
	@override String get next => 'Næste';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightDa implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Hvad er din nuværende vægt?';
	@override String get currentDescription => 'Din nuværende vægt er vigtig for at personliggøre dine daglige mål.';
	@override String get targetTitle => 'Hvad er din målvægt?';
	@override String get targetDescription => 'At sætte en målvægt hjælper os med at lægge en langsigtet plan.';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperial';
	@override String get next => 'Næste';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeDa implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvornår har du fødselsdag?';
	@override String get description => 'Din alder hjælper os med præcist at beregne dit kaloriebudget.';
	@override String get next => 'Næste';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleDa implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Undervægt';
	@override String get healthy => 'Sund';
	@override String get overweight => 'Overvægt';
	@override String get obese => 'Fedme';
	@override late final _TranslationsOnboardingBmiScaleCategoriesDa categories = _TranslationsOnboardingBmiScaleCategoriesDa._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesDa messages = _TranslationsOnboardingBmiScaleMessagesDa._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalDa implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvad er dit mål?';
	@override String get description => 'Vælg det mål, der bedst beskriver, hvad du vil opnå';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelDa implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvor aktiv er du?';
	@override String get description => 'Det hjælper os med at beregne dine daglige kaloriebehov mere præcist';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectDa implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Forbind med Health Connect';
	@override String get description => 'Synkronisér dine sundhedsdata for bedre indsigter og automatisk kaloriesporing';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingDa automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingDa._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsDa progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsDa._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationDa seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationDa._(_root);
	@override String get connected => 'Health Connect tilsluttet';
	@override String get notConnected => 'Health Connect ikke tilsluttet';
	@override String get setup => 'Opsæt Health Connect';
	@override String get skipForNow => 'Spring over for nu';
	@override String get statusConnected => 'Health Connect er forbundet.';
	@override String get statusSuccess => 'Health Connect er forbundet med succes!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Tilladelse afvist. Aktivér Health Connect-tilladelser i telefonens indstillinger for ${appLabel}.';
	@override String statusError({required Object error}) => 'Fejl ved opsætning af Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementDa implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessDa trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessDa._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileDa healthProfile = _TranslationsOnboardingReinforcementHealthProfileDa._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleDa goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleDa._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryDa implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din AI-oversigt';
	@override String get logMore => 'Registrér flere måltider de kommende dage for at få dine personlige AI-indsigter.';
	@override String get loading => 'Indlæser din oversigt...';
	@override String mealCount({required Object count}) => '${count} måltider registreret';
	@override String macroBalanceScore({required Object score}) => 'Balancescore ${score}';
	@override String get topFoods => 'Topmadvarer';
	@override String get trendUp => 'Kalorier i stigende tendens';
	@override String get trendDown => 'Kalorier i faldende tendens';
	@override String get trendSteady => 'Kalorier er stabile';
	@override String generatedAt({required Object time}) => 'Opdateret ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalDa implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sæt dit daglige mål';
	@override String get titleSet => 'Dit daglige mål';
	@override String get description => 'Klar til at starte din wellness-rejse? Sæt dit daglige kaloriemål nedenfor for at kickstarte dine fremskridt.';
	@override String get descriptionSet => 'Din kompasretning er sat! Dette er dit daglige kaloriemål, der guider dig.';
	@override String get yourGoal => 'Dit mål';
	@override String get goal => 'Mål';
	@override String get dailyCalories => 'Daglige kalorier (kcal)';
	@override String get setGoal => 'Sæt mål';
	@override String get intake => 'Indtag';
	@override String get burned => 'Forbrændt';
	@override String get weightImpact => 'Vægtpåvirkning';
	@override String get estLoss => 'Ansl. tab på';
	@override String get estGain => 'Ansl. stigning på';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryDa implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Daglig oversigt';
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Kulhydrater';
	@override String get protein => 'Protein';
	@override String get fat => 'Fedt';
	@override String get fiber => 'Fibre';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Makrodiagram';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressDa implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagens makro-fordeling';
	@override String get target => 'Mål';
	@override String get current => 'Nuværende';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryDa implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => '7-dages makrohistorik';
	@override String get trendTitle => 'Dagens tendens';
	@override String peakHour({required Object hour}) => 'Top: ${hour}:00';
	@override String get noHistoryYet => 'Ingen historik endnu';
	@override String get startLogging => 'Begynd at registrere måltider for at se dine\n7-dages makrotendenser her';
}

// Path: home.mealLog
class _TranslationsHomeMealLogDa implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Registrerede måltider';
	@override String get emptyMessage => 'Tag et billede af dit seneste måltid for at logge det her.';
	@override String get noMealsToday => 'Ingen måltider registreret i dag';
	@override String get seeAllMeals => 'Se alle måltider';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionDa implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hurtig tilføj med AI';
	@override String get description => 'Beskriv dit måltid, og lad AI klare detaljerne.';
	@override String get hint => 'f.eks. Til morgenmad fik jeg en stor skål havregryn med en skåret banan og en scoop valle ...';
	@override String get analyzeMeal => 'Analyser måltid';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsDa implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritmåltider';
	@override String get description => 'Tilføj hurtigt et af dine favoritmåltider.';
	@override String get noFavorites => 'Ingen favoritmåltider endnu.';
	@override String get addFavoriteHint => 'Tryk på stjernen på et måltid for at markere det som favorit.';
	@override String get seeAll => 'Se alle';
	@override String get add => 'Tilføj';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapDa implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tag et billede og spor dit måltid';
	@override String get description => 'Brug kameraet til at tage et billede af din mad til AI-analyse.';
	@override String get openCamera => 'Åbn kamera';
	@override String get gallery => 'Galleri';
	@override String get compressingPhoto => 'Optimerer foto…';
	@override String get uploadingPhoto => 'Uploader foto…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthDa implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synk med Health Connect';
	@override String get description => 'Synkronisér dine ernæringsdata med Health Connect';
	@override String get install => 'Installer';
	@override String get connect => 'Forbind';
}

// Path: meal.nutrition
class _TranslationsMealNutritionDa implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Kulhydrater (g)';
	@override String get protein => 'Protein (g)';
	@override String get fat => 'Fedt (g)';
	@override String get fiber => 'Fibre (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationDa implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Slet måltid';
	@override String get message => 'Er du sikker på, at du vil slette denne måltidsregistrering?';
	@override String get cancel => 'Annuller';
	@override String get delete => 'Slet';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowDa implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Spørgsmål ${current} af ${total}';
	@override String get noQuestionsAvailable => 'Ingen tilgængelige spørgsmål';
	@override String get next => 'Næste';
	@override String get continueLabel => 'Fortsæt';
}

// Path: meal.analysis
class _TranslationsMealAnalysisDa implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-måltidsanalyse';
	@override String get stepStarted => 'Går i gang…';
	@override String get stepDecomposition => 'Forstår dit måltid…';
	@override String get stepIngredients => 'Matcher ingredienser med næringsdata…';
	@override String get stepUncertainty => 'Tjekker sikkerhed…';
	@override String get stepMealTypeQuestion => 'Næsten færdig…';
	@override String get stepResult => 'Færdiggør dit resultat…';
	@override String get stepError => 'Noget gik galt';
	@override String get stepDefault => 'Analyserer dit måltid…';
	@override String get progressUnderstand => 'Forstå';
	@override String get progressMatch => 'Match';
	@override String get progressCheck => 'Tjek';
	@override String get progressMealType => 'Vælger måltidstype';
	@override String get progressFinish => 'Færdig';
	@override String get detectedIngredientHeading => 'Ingredienser, vi genkender';
	@override String ingredientsOverflow({required Object count}) => '${count} flere';
	@override String ingredientsLine({required Object count}) => '${count} ingredienser registreret';
	@override String get ingredientsPending => 'Scanner ingredienser…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackDa implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvad ser forkert ud?';
	@override String get subtitle => 'Hjælp os med at forbedre analysen ved at vælge et eller flere problemer.';
	@override String get tellUsMore => 'Fortæl os mere';
	@override String get describeIncorrect => 'Beskriv, hvad der var forkert';
	@override String get submit => 'Indsend';
	@override String get issueFoodIdentification => 'Madidentifikation';
	@override String get issuePortionSize => 'Portionsstørrelse';
	@override String get issueCalorieDistribution => 'Kaloriefordeling';
	@override String get issueMacrosWrong => 'Makroer er forkerte';
	@override String get issueMissingItems => 'Manglende elementer';
	@override String get issueExtraItems => 'Ekstra elementer';
	@override String get issueOther => 'Andet';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsDa implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Seneste';
	@override String get calories => 'Kalorier';
	@override String get alphabetical => 'A-Å';
}

// Path: profile.sections
class _TranslationsProfileSectionsDa implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'BASISOPLYSNINGER';
	@override String get goalsAndActivity => 'MÅL & AKTIVITET';
	@override String get calculatedValues => 'BEREGNEDE VÆRDIER';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesDa implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Dagligt mål';
	@override String get calPerDay => 'kcal/dag';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsDa implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSONLIGE OPLYSNINGER';
	@override String get physicalMeasurements => 'FYSISKE MÅL';
	@override String get goalsAndActivity => 'MÅL & AKTIVITET';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersDa implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get male => 'Mand';
	@override String get female => 'Kvinde';
	@override String get other => 'Andet';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsDa implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightDa loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightDa._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightDa maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightDa._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightDa gainWeight = _TranslationsEditProfileWeightGoalsGainWeightDa._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsDa implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryDa sedentary = _TranslationsEditProfileActivityLevelsSedentaryDa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveDa lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveDa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveDa moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveDa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveDa veryActive = _TranslationsEditProfileActivityLevelsVeryActiveDa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveDa extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveDa._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsDa implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALISERING';
	@override String get notifications => 'MEDDELELSER';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'SUPPORT & JURA';
	@override String get about => 'OM';
	@override String get dangerZone => 'FAREZONE';
	@override String get developer => 'UDVIKLER';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileDa implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rediger profil';
	@override String get subtitle => 'Opdatér dine personlige oplysninger';
}

// Path: settings.language
class _TranslationsSettingsLanguageDa implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sprog';
	@override String get subtitle => 'Vælg dit foretrukne sprog';
	@override String get searchHint => 'Søg efter sprog...';
	@override String get noResults => 'Ingen resultater fundet';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitDa implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Højdeenhed';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitDa implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vægtenhed';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersDa implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Måltidspåmindelser';
	@override String get subtitle => 'Hold kursen med rettidige påmindelser';
}

// Path: settings.theme
class _TranslationsSettingsThemeDa implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Lyst';
	@override String get dark => 'Mørkt';
	@override String get system => 'System';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackDa implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Send feedback';
	@override String subtitle({required Object appLabel}) => 'Hjælp os med at forbedre ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} app-feedback';
	@override String get emailBodyPrefix => 'Angiv venligst din feedback nedenfor:';
	@override String get appVersion => 'Appversion';
	@override String get device => 'Enhed';
	@override String get osVersion => 'OS-version';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryDa implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eksporter måltidshistorik';
	@override String get subtitle => 'Del en CSV-fil med dine registrerede måltider';
	@override String get shareText => 'Din Calorify-eksport af måltidshistorik';
	@override String failed({required Object error}) => 'Kunne ikke eksportere måltidshistorik: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataDa implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ryd alle data';
	@override String get subtitle => 'Slet alle dine oplysninger uden mulighed for gendannelse';
	@override String get confirmationTitle => 'Ryd alle data?';
	@override String get confirmationMessage => 'Denne handling kan ikke fortrydes. Alle dine registrerede måltider, favoritter og profilindstillinger bliver slettet permanent.';
	@override String get cancel => 'Annuller';
	@override String get clearEverything => 'Ryd alt';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsDa implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fejlfindingsindstillinger';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectDa implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Se og administrer tilladelser';
	@override late final _TranslationsSettingsHealthConnectUnavailableDa unavailable = _TranslationsSettingsHealthConnectUnavailableDa._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsDa permissions = _TranslationsSettingsHealthConnectPermissionsDa._(_root);
	@override String get managePermissions => 'Administrer tilladelser';
	@override String get openSettings => 'Åbn Health Connect-indstillinger';
	@override String get requestPermissions => 'Anmod om tilladelser';
	@override String get permissionRequestCancelledOrFailed => 'Anmodning om tilladelser blev annulleret eller mislykkedes. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillingerne.';
	@override String get permissionRequestFailed => 'Kunne ikke anmode om tilladelser. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillingerne.';
	@override String get requestingPermissions => 'Anmoder...';
}

// Path: settings.about
class _TranslationsSettingsAboutDa implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om';
	@override String get tagline => 'Hurtig, gratis og med privatlivet først i fokus for kaloriebevidsthed';
	@override late final _TranslationsSettingsAboutOurStoryDa ourStory = _TranslationsSettingsAboutOurStoryDa._(_root);
	@override late final _TranslationsSettingsAboutPrivacyDa privacy = _TranslationsSettingsAboutPrivacyDa._(_root);
	@override late final _TranslationsSettingsAboutDeveloperDa developer = _TranslationsSettingsAboutDeveloperDa._(_root);
	@override late final _TranslationsSettingsAboutFeedbackDa feedback = _TranslationsSettingsAboutFeedbackDa._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoDa implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastDa implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tid til morgenmad! 🍳';
	@override String get body => 'Glem ikke at registrere din morgenmad';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchDa implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tid til frokost! 🥗';
	@override String get body => 'Tid til at registrere din frokost';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerDa implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tid til aftensmad! 🍽️';
	@override String get body => 'Glem ikke at registrere din aftensmad';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackDa implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tid til en snack! 🍎';
	@override String get body => 'Tid til en sund snack';
}

// Path: notifications.test
class _TranslationsNotificationsTestDa implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testmeddelelse';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapDa implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} giver estimerede næringsoplysninger. Nøjagtigheden afhænger af dine input og variationer i maden. Brug det som vejledning, ikke som en endelig kilde. Rådfør dig med en professionel for personlig kostvejledning.';
	@override late final _TranslationsDisclaimerSnapPortionSizeDa portionSize = _TranslationsDisclaimerSnapPortionSizeDa._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsDa preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsDa._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsDa ingredients = _TranslationsDisclaimerSnapIngredientsDa._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsDa databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsDa._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateDa implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om vægtestimatet';
	@override String get description => 'Det projicerede vægtskifte er et teoretisk estimat baseret på en simpel ind-ud-kaloriemodel. Det er kun tiltænkt som motivation, ikke som en forudsigelse af din faktiske vægt.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyDa calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyDa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsDa biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsDa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightDa waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightDa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceDa professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceDa._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsDa implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get description => 'Disse målinger hjælper dig med at forstå kroppens energibehov og guider dine ernæringsmål.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrDa bmr = _TranslationsDisclaimerHealthMetricsBmrDa._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeDa tdee = _TranslationsDisclaimerHealthMetricsTdeeDa._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalDa dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalDa._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureDa implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimat af kalorieforbrug';
	@override String get description => 'Når Health Connect-data ikke er tilgængelige, estimerer vi dagens forbrændte kalorier ved at bruge din basale forbrænding (BMR) og aktivitetsniveau (TDEE), skaleret efter den del af dagen, der er gået.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedDa howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedDa._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDa professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDa._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionDa implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Smart madgenkendelse';
	@override String get description => 'Tag et foto, og lad AI identificere dit måltid';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisDa implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-analyse';
	@override String get description => 'Få øjeblikkelige næringsfakta fra dine beskrivelser';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationDa implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sundhedsintegration';
	@override String get description => 'Forbind med Health Connect for bedre indsigter';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesDa implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Undervægt';
	@override String get healthyWeight => 'Sund vægt';
	@override String get overweight => 'Overvægt';
	@override String get obese => 'Fedme';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesDa implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Vi kan hjælpe dig med en sund plan for at nå en balanceret vægt med næringstætte måltider.';
	@override String get healthy => 'Godt gået! Du er i et sundt område. Vi hjælper dig med at bevare vitalitet og energiniveau.';
	@override String overweight({required Object appLabel}) => '${appLabel} gør rejsen nemmere med AI-drevet sporing, så du når dit mål mere komfortabelt.';
	@override String get obese => 'Vi er her for at støtte dig med personlig vejledning og bæredygtige strategier til dine sundhedsmål.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingDa implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatisk kaloriesporing';
	@override String get description => 'Spor forbrændte kalorier fra dine fitness-apps';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsDa implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fremskridtsindsigter';
	@override String get description => 'Få detaljerede indsigter i dine sundhedstendenser';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationDa implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sømløs integration';
	@override String get description => 'Synkronisér data fra dine yndlings-sundhedsapps';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessDa implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du er ikke alene';
	@override String get genericMessage => 'Forskning viser, at konsekvent registrering er den vigtigste indikator for langsigtet succes.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'For en ${age}-årig ${gender}, der ønsker at ${goal}, er konsekvent registrering den vigtigste indikator for succes.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} gør det 10x lettere end manuelt.';
	@override String get getStartedTitle => 'Klar til at komme i gang?';
	@override String get tipPhoto => 'Tag et foto af dine måltider for øjeblikkelig analyse';
	@override String get tipConsistency => 'Registrer konsekvent for at se meningsfulde fremskridt';
	@override String get tipProgress => 'Følg dine fremskridt dagligt for at bevare motivationen';
	@override String get button => 'Lad os gå i gang';
	@override String get defaultGender => 'person';
	@override String get defaultGoal => 'en sundere udgave af dig';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileDa implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din sundhedsprofil';
	@override String bmiDescription({required Object bmi}) => 'Baseret på dine mål er dit BMI ${bmi}.';
	@override String get finalizeDescription => 'Lad os færdiggøre din profil for at tilpasse din oplevelse.';
	@override String get goalGain => 'tage på';
	@override String get goalLose => 'tabe dig';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'For at nå dit mål skal du ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Du er ved din målvægt! Vi hjælper dig med at vedligeholde den.';
	@override String get button => 'Lad os gå i gang';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleDa implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fremragende start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har taget det første skridt mod ${goalText}. Da du er ${activityText}, vil ${appLabel} justere dine mål, så de passer til din livsstil.';
	@override String get personalizedTargets => 'Personlige kaloriemål';
	@override String get aiMealDetection => 'AI-drevet måltidsgenkendelse';
	@override String get macroBreakdowns => 'Detaljerede makronæringsstof-fordelinger';
	@override String get button => 'Lad os gå i gang';
	@override String get defaultGoal => 'dine mål';
	@override String get defaultActivity => 'aktiv';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightDa implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tabe sig';
	@override String get description => 'Skab kalorieunderskud for vægttab';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightDa implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Vedligeholde vægt';
	@override String get description => 'Bevar din nuværende vægt';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightDa implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tage på i vægt';
	@override String get description => 'Skab kalorieoverskud for at tage på';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryDa implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Stillestående';
	@override String get description => 'Lidt eller ingen motion';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveDa implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Let aktiv';
	@override String get description => 'Let motion 1-3 dage/uge';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveDa implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderat aktiv';
	@override String get description => 'Moderat motion 3-5 dage/uge';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveDa implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Meget aktiv';
	@override String get description => 'Hård motion 6-7 dage/uge';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveDa implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ekstremt aktiv';
	@override String get description => 'Meget hård motion, fysisk arbejde';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableDa implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ikke tilgængelig';
	@override String get description => 'Health Connect er ikke tilgængelig på denne enhed. Installer Health Connect fra Play Butik (Android 9+) eller opdatér til Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsDa implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tilladelser';
	@override String get description => 'Følgende tilladelser anmodes om for at give Health Connect-integration:';
	@override String get granted => 'Tilladt';
	@override String get notGranted => 'Ikke tilladt';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDa caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDa._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadDa nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadDa._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteDa nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteDa._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryDa implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vores historie';
	@override String content({required Object appLabel}) => '${appLabel} blev skabt ud fra en enkel frustration: De fleste kalorietæller-apps er enten alt for komplicerede, kræver konstant manuel indtastning, koster dyre abonnementer eller går på kompromis med privatlivet.\n\nSom solo-udvikler ville jeg bygge noget enklere og mere fair — en app, der bruger AI til at mindske indsatsen, forbliver hurtig og gratis at bruge, og som behandler dine sundhedsdata med respekt.\n\n${appLabel} er den app, jeg selv manglede: ingen konti, ingen sporing, ingen reklamer — bare klare, praktiske indsigter og fokus på dine sundhedsmål.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyDa implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dit privatliv betyder noget';
	@override String get description => 'Privatliv er ikke en eftertanke — det er et designprincip. Det betyder i praksis:';
	@override String get noAccounts => 'Ingen konti påkrævet\nBrug appen med det samme. Ingen tilmelding, ingen identiteter.';
	@override String noTracking({required Object appLabel}) => 'Ingen adfærdssporing\n${appLabel} overvåger ikke din aktivitet, opbygger ikke brugsprofiler og sporer dig ikke på tværs af apps eller websites.';
	@override String noAds({required Object appLabel}) => 'Reklamefri som udgangspunkt\n${appLabel} er bygget til at fungere uden reklamer eller datadrevet indtjening.';
	@override String get noDataSelling => 'Intet salg af data\nDine sundhedsdata bliver aldrig solgt eller delt med tredjeparter.';
	@override String get localStorage => 'Lokalførst-lagring\nDine data forbliver på din enhed.';
	@override String get privacyPolicy => 'Privatlivspolitik';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperDa implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bygget af en solo-udvikler';
	@override String description({required Object appLabel}) => '${appLabel} er bygget og vedligeholdt af en enkelt udvikler med fokus på rolig, privatlivsrespekterende sundhedssoftware.\n\nFeedback læses personligt og er med til at forme appens retning.';
	@override String get website => 'Hjemmeside';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackDa implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Nyder du ${appLabel}?';
	@override String description({required Object appLabel}) => 'Din feedback hjælper med at gøre ${appLabel} bedre for alle.';
	@override String get rateApp => 'Bedøm i Play Butik';
	@override String get sendFeedback => 'Send feedback';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeDa implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Portionsstørrelse';
	@override String get description => 'Nøjagtigheden af estimaterne afhænger i høj grad af din korrekte vurdering af portionsstørrelsen.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsDa implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tilberedningsmetoder';
	@override String description({required Object appLabel}) => 'Tilberedning kan ændre fødevarers næringsindhold markant. ${appLabel}s estimater tager ikke altid højde for disse variationer.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsDa implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredienser';
	@override String get description => 'Komplekse retter med mange skjulte ingredienser kan føre til mindre præcise estimater.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsDa implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Databasebegrænsninger';
	@override String description({required Object appLabel}) => '${appLabel}s fødevaredatabase er omfattende, men indeholder muligvis ikke alle fødevarer eller variationer.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyDa implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalorienøjagtighed';
	@override String get description => 'Dette estimat er kun så nøjagtigt som dit registrerede kalorieindtag og -forbrug. Unøjagtig registrering giver et unøjagtigt estimat.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsDa implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologiske faktorer';
	@override String description({required Object appLabel}) => 'Faktisk vægttab/-øgning påvirkes af stofskifte, hormoner, søvn, stress, hydrering og andre individuelle faktorer, som ${appLabel} ikke kan måle.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightDa implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vandvægt og udsving';
	@override String get description => 'Din daglige vægt kan svinge betydeligt pga. væskeretention, fordøjelse og timing. Estimatet tager ikke højde for disse daglige variationer.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceDa implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionel vejledning';
	@override String get description => 'Brug ikke dette estimat til medicinske beslutninger. Rådfør dig altid med en sundhedsprofessionel eller klinisk diætist for personlig rådgivning.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrDa implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) er antallet af kalorier, din krop forbrænder i hvile for at opretholde basale funktioner som vejrtrækning og blodcirkulation. BMR afhænger af din alder, dit køn, din højde og din vægt. En højere BMR betyder, at din krop naturligt forbrænder flere kalorier i hvile, ofte pga. mere muskelmasse, yngre alder eller mandligt køn. En lavere BMR indikerer typisk mindre muskelmasse, højere alder eller kvindeligt køn.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeDa implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) er de samlede kalorier, du forbrænder pr. dag, inklusive din BMR plus kalorier fra fysisk aktivitet og daglig bevægelse. TDEE afhænger af din BMR og dit aktivitetsniveau. En højere TDEE betyder, at du forbrænder flere kalorier samlet set, typisk ved at være mere aktiv eller have en højere BMR. En lavere TDEE antyder mindre daglig aktivitet eller en lavere BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalDa implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagligt mål';
	@override String get description => 'Dit daglige mål er dit anbefalede daglige kalorieindtag baseret på din TDEE og dit vægtmål. For vægttab spiser du færre kalorier end din TDEE. For vedligeholdelse matcher du din TDEE. For vægtøgning spiser du flere kalorier end din TDEE. Det hjælper dig med at nå din ønskede vægtændring i et sundt tempo.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedDa implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sådan beregnes estimatet';
	@override String get description => 'Vi beregner din TDEE (baseret på din profil) og ganger den med andelen af dagen, der er gået (timer + minutter) / 24 for at estimere kalorier forbrændt indtil nu.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDa implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionel vejledning';
	@override String get description => 'Brug ikke dette estimat til medicinske beslutninger. Rådfør dig altid med en sundhedsprofessionel eller klinisk diætist for personlig rådgivning.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDa implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Læs samlede forbrændte kalorier';
	@override String get description => 'Giver appen adgang til at læse dine samlede forbrændte kalorier fra Health Connect.';
	@override String get usage => 'Denne tilladelse bruges til at vise dit daglige kalorieforbrug i appen, så du forstår din samlede energiudgift i løbet af dagen.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadDa implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Læs ernæringsdata';
	@override String get description => 'Giver appen adgang til at læse ernæringsdata fra Health Connect.';
	@override String get usage => 'Denne tilladelse gør det muligt for appen at læse ernæringsoplysninger, som kan være registreret af andre apps forbundet til Health Connect, for at give et samlet overblik over din ernæring.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteDa implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skriv ernæringsdata';
	@override String get description => 'Giver appen adgang til at skrive ernæringsdata til Health Connect.';
	@override String get usage => 'Denne tilladelse gør det muligt at synkronisere dine registrerede måltider til Health Connect, så dine ernæringsdata er tilgængelige i andre sundheds- og fitnessapps, du bruger.';
}

/// The flat map containing all translations for locale <da>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Dansk',
			'flag' => '🇩🇰',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Du har foretaget for mange forespørgsler. Vent et øjeblik, før du prøver igen.',
			'errors.networkError' => 'Netværksfejl. Tjek din internetforbindelse.',
			'errors.unknownError' => 'Noget gik galt. Prøv igen senere.',
			'errors.loadingProfileData' => 'Fejl ved indlæsning af profildata',
			'errors.somethingWentWrong' => 'Noget gik galt.',
			'errors.retry' => 'Prøv igen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Velkommen til ${appLabel}',
			'onboarding.subtitle' => 'Din personlige ernæringsmakker drevet af AI',
			'onboarding.getStarted' => 'Kom i gang',
			'onboarding.features.foodRecognition.title' => 'Smart madgenkendelse',
			'onboarding.features.foodRecognition.description' => 'Tag et foto, og lad AI identificere dit måltid',
			'onboarding.features.aiAnalysis.title' => 'AI-analyse',
			'onboarding.features.aiAnalysis.description' => 'Få øjeblikkelige næringsfakta fra dine beskrivelser',
			'onboarding.features.healthIntegration.title' => 'Sundhedsintegration',
			'onboarding.features.healthIntegration.description' => 'Forbind med Health Connect for bedre indsigter',
			'onboarding.gender.title' => 'Hvad er dit køn?',
			'onboarding.gender.description' => 'Køn hjælper os med præcist at beregne din basale forbrænding (BMR).',
			'onboarding.gender.next' => 'Næste',
			'onboarding.height.title' => 'Hvor høj er du?',
			'onboarding.height.description' => 'Din højde hjælper os med at beregne dit BMI og dine energibehov nøjagtigt.',
			'onboarding.height.metric' => 'Metrisk',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Næste',
			'onboarding.weight.currentTitle' => 'Hvad er din nuværende vægt?',
			'onboarding.weight.currentDescription' => 'Din nuværende vægt er vigtig for at personliggøre dine daglige mål.',
			'onboarding.weight.targetTitle' => 'Hvad er din målvægt?',
			'onboarding.weight.targetDescription' => 'At sætte en målvægt hjælper os med at lægge en langsigtet plan.',
			'onboarding.weight.metric' => 'Metrisk',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Næste',
			'onboarding.age.title' => 'Hvornår har du fødselsdag?',
			'onboarding.age.description' => 'Din alder hjælper os med præcist at beregne dit kaloriebudget.',
			'onboarding.age.next' => 'Næste',
			'onboarding.bmiScale.underweight' => 'Undervægt',
			'onboarding.bmiScale.healthy' => 'Sund',
			'onboarding.bmiScale.overweight' => 'Overvægt',
			'onboarding.bmiScale.obese' => 'Fedme',
			'onboarding.bmiScale.categories.underweight' => 'Undervægt',
			'onboarding.bmiScale.categories.healthyWeight' => 'Sund vægt',
			'onboarding.bmiScale.categories.overweight' => 'Overvægt',
			'onboarding.bmiScale.categories.obese' => 'Fedme',
			'onboarding.bmiScale.messages.underweight' => 'Vi kan hjælpe dig med en sund plan for at nå en balanceret vægt med næringstætte måltider.',
			'onboarding.bmiScale.messages.healthy' => 'Godt gået! Du er i et sundt område. Vi hjælper dig med at bevare vitalitet og energiniveau.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} gør rejsen nemmere med AI-drevet sporing, så du når dit mål mere komfortabelt.',
			'onboarding.bmiScale.messages.obese' => 'Vi er her for at støtte dig med personlig vejledning og bæredygtige strategier til dine sundhedsmål.',
			'onboarding.weightGoal.title' => 'Hvad er dit mål?',
			'onboarding.weightGoal.description' => 'Vælg det mål, der bedst beskriver, hvad du vil opnå',
			'onboarding.activityLevel.title' => 'Hvor aktiv er du?',
			'onboarding.activityLevel.description' => 'Det hjælper os med at beregne dine daglige kaloriebehov mere præcist',
			'onboarding.healthConnect.title' => 'Forbind med Health Connect',
			'onboarding.healthConnect.description' => 'Synkronisér dine sundhedsdata for bedre indsigter og automatisk kaloriesporing',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatisk kaloriesporing',
			'onboarding.healthConnect.automaticTracking.description' => 'Spor forbrændte kalorier fra dine fitness-apps',
			'onboarding.healthConnect.progressInsights.title' => 'Fremskridtsindsigter',
			'onboarding.healthConnect.progressInsights.description' => 'Få detaljerede indsigter i dine sundhedstendenser',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Sømløs integration',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synkronisér data fra dine yndlings-sundhedsapps',
			'onboarding.healthConnect.connected' => 'Health Connect tilsluttet',
			'onboarding.healthConnect.notConnected' => 'Health Connect ikke tilsluttet',
			'onboarding.healthConnect.setup' => 'Opsæt Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Spring over for nu',
			'onboarding.healthConnect.statusConnected' => 'Health Connect er forbundet.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect er forbundet med succes!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Tilladelse afvist. Aktivér Health Connect-tilladelser i telefonens indstillinger for ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Fejl ved opsætning af Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Du er ikke alene',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Forskning viser, at konsekvent registrering er den vigtigste indikator for langsigtet succes.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'For en ${age}-årig ${gender}, der ønsker at ${goal}, er konsekvent registrering den vigtigste indikator for succes.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} gør det 10x lettere end manuelt.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Klar til at komme i gang?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Tag et foto af dine måltider for øjeblikkelig analyse',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Registrer konsekvent for at se meningsfulde fremskridt',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Følg dine fremskridt dagligt for at bevare motivationen',
			'onboarding.reinforcement.trackingSuccess.button' => 'Lad os gå i gang',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'person',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'en sundere udgave af dig',
			'onboarding.reinforcement.healthProfile.title' => 'Din sundhedsprofil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Baseret på dine mål er dit BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Lad os færdiggøre din profil for at tilpasse din oplevelse.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'tage på',
			'onboarding.reinforcement.healthProfile.goalLose' => 'tabe dig',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'For at nå dit mål skal du ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Du er ved din målvægt! Vi hjælper dig med at vedligeholde den.',
			'onboarding.reinforcement.healthProfile.button' => 'Lad os gå i gang',
			'onboarding.reinforcement.goalLifestyle.title' => 'Fremragende start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har taget det første skridt mod ${goalText}. Da du er ${activityText}, vil ${appLabel} justere dine mål, så de passer til din livsstil.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personlige kaloriemål',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-drevet måltidsgenkendelse',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detaljerede makronæringsstof-fordelinger',
			'onboarding.reinforcement.goalLifestyle.button' => 'Lad os gå i gang',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'dine mål',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiv',
			'tabs.dashboard' => 'Oversigt',
			'tabs.history' => 'Historik',
			'home.aiSummary.title' => 'Din AI-oversigt',
			'home.aiSummary.logMore' => 'Registrér flere måltider de kommende dage for at få dine personlige AI-indsigter.',
			'home.aiSummary.loading' => 'Indlæser din oversigt...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} måltider registreret',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Balancescore ${score}',
			'home.aiSummary.topFoods' => 'Topmadvarer',
			'home.aiSummary.trendUp' => 'Kalorier i stigende tendens',
			'home.aiSummary.trendDown' => 'Kalorier i faldende tendens',
			'home.aiSummary.trendSteady' => 'Kalorier er stabile',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Opdateret ${time}',
			'home.dailyGoal.title' => 'Sæt dit daglige mål',
			'home.dailyGoal.titleSet' => 'Dit daglige mål',
			'home.dailyGoal.description' => 'Klar til at starte din wellness-rejse? Sæt dit daglige kaloriemål nedenfor for at kickstarte dine fremskridt.',
			'home.dailyGoal.descriptionSet' => 'Din kompasretning er sat! Dette er dit daglige kaloriemål, der guider dig.',
			'home.dailyGoal.yourGoal' => 'Dit mål',
			'home.dailyGoal.goal' => 'Mål',
			'home.dailyGoal.dailyCalories' => 'Daglige kalorier (kcal)',
			'home.dailyGoal.setGoal' => 'Sæt mål',
			'home.dailyGoal.intake' => 'Indtag',
			'home.dailyGoal.burned' => 'Forbrændt',
			'home.dailyGoal.weightImpact' => 'Vægtpåvirkning',
			'home.dailyGoal.estLoss' => 'Ansl. tab på',
			'home.dailyGoal.estGain' => 'Ansl. stigning på',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Daglig oversigt',
			'home.dailySummary.calories' => 'Kalorier',
			'home.dailySummary.carbs' => 'Kulhydrater',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Fedt',
			'home.dailySummary.fiber' => 'Fibre',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Makrodiagram',
			'home.intakeProgress.title' => 'Dagens makro-fordeling',
			'home.intakeProgress.target' => 'Mål',
			'home.intakeProgress.current' => 'Nuværende',
			'home.intakeHistory.title' => '7-dages makrohistorik',
			'home.intakeHistory.trendTitle' => 'Dagens tendens',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Top: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Ingen historik endnu',
			'home.intakeHistory.startLogging' => 'Begynd at registrere måltider for at se dine\n7-dages makrotendenser her',
			'home.mealLog.title' => 'Registrerede måltider',
			'home.mealLog.emptyMessage' => 'Tag et billede af dit seneste måltid for at logge det her.',
			'home.mealLog.noMealsToday' => 'Ingen måltider registreret i dag',
			'home.mealLog.seeAllMeals' => 'Se alle måltider',
			'home.mealDescription.title' => 'Hurtig tilføj med AI',
			'home.mealDescription.description' => 'Beskriv dit måltid, og lad AI klare detaljerne.',
			'home.mealDescription.hint' => 'f.eks. Til morgenmad fik jeg en stor skål havregryn med en skåret banan og en scoop valle ...',
			'home.mealDescription.analyzeMeal' => 'Analyser måltid',
			'home.favoriteMeals.title' => 'Favoritmåltider',
			'home.favoriteMeals.description' => 'Tilføj hurtigt et af dine favoritmåltider.',
			'home.favoriteMeals.noFavorites' => 'Ingen favoritmåltider endnu.',
			'home.favoriteMeals.addFavoriteHint' => 'Tryk på stjernen på et måltid for at markere det som favorit.',
			'home.favoriteMeals.seeAll' => 'Se alle',
			'home.favoriteMeals.add' => 'Tilføj',
			'home.mealSnap.title' => 'Tag et billede og spor dit måltid',
			'home.mealSnap.description' => 'Brug kameraet til at tage et billede af din mad til AI-analyse.',
			'home.mealSnap.openCamera' => 'Åbn kamera',
			'home.mealSnap.gallery' => 'Galleri',
			'home.mealSnap.compressingPhoto' => 'Optimerer foto…',
			'home.mealSnap.uploadingPhoto' => 'Uploader foto…',
			'home.connectHealth.title' => 'Synk med Health Connect',
			'home.connectHealth.description' => 'Synkronisér dine ernæringsdata med Health Connect',
			'home.connectHealth.install' => 'Installer',
			'home.connectHealth.connect' => 'Forbind',
			'history.noMeals' => 'Ingen måltider registreret',
			'history.emptyMessage' => 'Tag et billede af dit seneste måltid for at logge det her.',
			'history.today' => 'I dag',
			'history.yesterday' => 'I går',
			'meal.ohNo' => 'Åh nej!',
			'meal.delete' => 'Slet',
			'meal.editMeal' => 'Rediger måltid',
			'meal.addMeal' => 'Tilføj måltid',
			'meal.saveMeal' => 'Gem måltid',
			'meal.save' => 'Gem',
			'meal.mealName' => 'Måltidsnavn',
			'meal.mealNameHint' => 'f.eks. røræg med toast',
			'meal.mealQuantity' => 'Måltidsmængde',
			'meal.mealQuantityHint' => 'f.eks. 1 skål, 2 skiver',
			'meal.timeOfMeal' => 'Tidspunkt for måltid',
			'meal.timeOfMealHint' => 'Vælg tidspunktet, hvor du spiste',
			'meal.mealType' => 'Måltidstype',
			'meal.nutrition.calories' => 'Kalorier',
			'meal.nutrition.carbs' => 'Kulhydrater (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Fedt (g)',
			'meal.nutrition.fiber' => 'Fibre (g)',
			'meal.deleteConfirmation.title' => 'Slet måltid',
			'meal.deleteConfirmation.message' => 'Er du sikker på, at du vil slette denne måltidsregistrering?',
			'meal.deleteConfirmation.cancel' => 'Annuller',
			'meal.deleteConfirmation.delete' => 'Slet',
			'meal.addedToLog' => 'Måltid tilføjet til din log!',
			'meal.couldNotAdd' => ({required Object error}) => 'Kunne ikke tilføje måltid: ${error}',
			'meal.savedSuccessfully' => 'Måltid tilføjet!',
			'meal.updatedSuccessfully' => 'Måltid opdateret!',
			'meal.errorSaving' => ({required Object error}) => 'Fejl ved lagring af måltid: ${error}',
			'meal.removedFromFavorites' => 'Fjernet fra favoritter!',
			'meal.savedAsFavorite' => 'Måltid gemt som favorit!',
			'meal.unfavorite' => 'Fjern favorit',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Kunne ikke opdatere favorit: ${error}',
			'meal.feedbackThanks' => 'Tak for din feedback!',
			'meal.reanalysisUpdated' => 'Opdaterede måltidsanalysen baseret på din feedback.',
			'meal.failedToProcess' => ({required Object error}) => 'Kunne ikke behandle: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Kunne ikke behandle billede: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Fejl ved komprimering af billede: ${error}',
			'meal.failedToSave' => 'Kunne ikke gemme data. Prøv igen.',
			'meal.skip' => 'Spring over',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Spørgsmål ${current} af ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Ingen tilgængelige spørgsmål',
			'meal.questionFlow.next' => 'Næste',
			'meal.questionFlow.continueLabel' => 'Fortsæt',
			'meal.analysis.title' => 'AI-måltidsanalyse',
			'meal.analysis.stepStarted' => 'Går i gang…',
			'meal.analysis.stepDecomposition' => 'Forstår dit måltid…',
			'meal.analysis.stepIngredients' => 'Matcher ingredienser med næringsdata…',
			'meal.analysis.stepUncertainty' => 'Tjekker sikkerhed…',
			'meal.analysis.stepMealTypeQuestion' => 'Næsten færdig…',
			'meal.analysis.stepResult' => 'Færdiggør dit resultat…',
			'meal.analysis.stepError' => 'Noget gik galt',
			'meal.analysis.stepDefault' => 'Analyserer dit måltid…',
			'meal.analysis.progressUnderstand' => 'Forstå',
			'meal.analysis.progressMatch' => 'Match',
			'meal.analysis.progressCheck' => 'Tjek',
			'meal.analysis.progressMealType' => 'Vælger måltidstype',
			'meal.analysis.progressFinish' => 'Færdig',
			'meal.analysis.detectedIngredientHeading' => 'Ingredienser, vi genkender',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} flere',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingredienser registreret',
			'meal.analysis.ingredientsPending' => 'Scanner ingredienser…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'Hvad ser forkert ud?',
			'meal.feedback.subtitle' => 'Hjælp os med at forbedre analysen ved at vælge et eller flere problemer.',
			'meal.feedback.tellUsMore' => 'Fortæl os mere',
			'meal.feedback.describeIncorrect' => 'Beskriv, hvad der var forkert',
			'meal.feedback.submit' => 'Indsend',
			'meal.feedback.issueFoodIdentification' => 'Madidentifikation',
			'meal.feedback.issuePortionSize' => 'Portionsstørrelse',
			'meal.feedback.issueCalorieDistribution' => 'Kaloriefordeling',
			'meal.feedback.issueMacrosWrong' => 'Makroer er forkerte',
			'meal.feedback.issueMissingItems' => 'Manglende elementer',
			'meal.feedback.issueExtraItems' => 'Ekstra elementer',
			'meal.feedback.issueOther' => 'Andet',
			'favorites.title' => 'Favoritter',
			'favorites.empty' => 'Ingen favoritmåltider endnu.',
			'favorites.searchPlaceholder' => 'Søg i favoritmåltider',
			'favorites.searchEmptyTitle' => 'Ingen favoritter matcher din søgning',
			'favorites.searchEmptySubtitle' => 'Prøv et andet måltidsnavn, mængde eller måltidstype.',
			'favorites.sortLabel' => 'Sorter favoritter',
			'favorites.undo' => 'Fortryd',
			'favorites.removed' => ({required Object name}) => 'Fjernede ${name} fra favoritter',
			'favorites.sortOptions.recent' => 'Seneste',
			'favorites.sortOptions.calories' => 'Kalorier',
			'favorites.sortOptions.alphabetical' => 'A-Å',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Ingen profildata fundet',
			'profile.yourProfile' => 'Din profil',
			'profile.viewAndManage' => 'Se og administrer dine helbredsoplysninger',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'BASISOPLYSNINGER',
			'profile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'profile.sections.calculatedValues' => 'BEREGNEDE VÆRDIER',
			'profile.gender' => 'Køn',
			'profile.height' => 'Højde',
			'profile.weight' => 'Vægt',
			'profile.age' => 'Alder',
			'profile.weightGoal' => 'Vægtmål',
			'profile.targetWeight' => 'Målvægt',
			'profile.activityLevel' => 'Aktivitetsniveau',
			'profile.healthMetrics' => 'Sundhedsmål',
			'profile.notSet' => 'Ikke angivet',
			'profile.years' => 'år',
			'profile.updatedSuccessfully' => 'Profil opdateret!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Dagligt mål',
			'profile.calculatedValues.calPerDay' => 'kcal/dag',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Sundhedsscore',
			'healthScore.whyThisScore' => 'Hvorfor denne score?',
			'healthScore.note' => 'Denne score er et AI-skøn baseret på identificerede ingredienser og næringstæthed. Rådfør dig altid med en professionel for kostvejledning.',
			'healthScore.unhealthy' => 'Usund',
			'healthScore.healthy' => 'Sund',
			'healthScore.neutral' => 'Neutral',
			'editProfile.title' => 'Rediger profil',
			'editProfile.sections.personalInformation' => 'PERSONLIGE OPLYSNINGER',
			'editProfile.sections.physicalMeasurements' => 'FYSISKE MÅL',
			'editProfile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'editProfile.gender' => 'Køn',
			'editProfile.dateOfBirth' => 'Fødselsdato',
			'editProfile.height' => 'Højde',
			'editProfile.weight' => 'Vægt',
			'editProfile.weightGoal' => 'Vægtmål',
			'editProfile.activityLevel' => 'Aktivitetsniveau',
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
			'editProfile.genders.male' => 'Mand',
			'editProfile.genders.female' => 'Kvinde',
			'editProfile.genders.other' => 'Andet',
			'editProfile.weightGoals.loseWeight.name' => 'Tabe sig',
			'editProfile.weightGoals.loseWeight.description' => 'Skab kalorieunderskud for vægttab',
			'editProfile.weightGoals.maintainWeight.name' => 'Vedligeholde vægt',
			'editProfile.weightGoals.maintainWeight.description' => 'Bevar din nuværende vægt',
			'editProfile.weightGoals.gainWeight.name' => 'Tage på i vægt',
			'editProfile.weightGoals.gainWeight.description' => 'Skab kalorieoverskud for at tage på',
			'editProfile.activityLevels.sedentary.name' => 'Stillestående',
			'editProfile.activityLevels.sedentary.description' => 'Lidt eller ingen motion',
			'editProfile.activityLevels.lightlyActive.name' => 'Let aktiv',
			'editProfile.activityLevels.lightlyActive.description' => 'Let motion 1-3 dage/uge',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderat aktiv',
			'editProfile.activityLevels.moderatelyActive.description' => 'Moderat motion 3-5 dage/uge',
			'editProfile.activityLevels.veryActive.name' => 'Meget aktiv',
			'editProfile.activityLevels.veryActive.description' => 'Hård motion 6-7 dage/uge',
			'editProfile.activityLevels.extremelyActive.name' => 'Ekstremt aktiv',
			'editProfile.activityLevels.extremelyActive.description' => 'Meget hård motion, fysisk arbejde',
			'settings.title' => 'Indstillinger',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALISERING',
			'settings.sections.notifications' => 'MEDDELELSER',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'SUPPORT & JURA',
			'settings.sections.about' => 'OM',
			'settings.sections.dangerZone' => 'FAREZONE',
			'settings.sections.developer' => 'UDVIKLER',
			'settings.editProfile.title' => 'Rediger profil',
			'settings.editProfile.subtitle' => 'Opdatér dine personlige oplysninger',
			'settings.language.title' => 'Sprog',
			'settings.language.subtitle' => 'Vælg dit foretrukne sprog',
			'settings.language.searchHint' => 'Søg efter sprog...',
			'settings.language.noResults' => 'Ingen resultater fundet',
			'settings.heightUnit.title' => 'Højdeenhed',
			'settings.weightUnit.title' => 'Vægtenhed',
			'settings.mealReminders.title' => 'Måltidspåmindelser',
			'settings.mealReminders.subtitle' => 'Hold kursen med rettidige påmindelser',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Lyst',
			'settings.theme.dark' => 'Mørkt',
			'settings.theme.system' => 'System',
			'settings.sendFeedback.title' => 'Send feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Hjælp os med at forbedre ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} app-feedback',
			'settings.sendFeedback.emailBodyPrefix' => 'Angiv venligst din feedback nedenfor:',
			'settings.sendFeedback.appVersion' => 'Appversion',
			'settings.sendFeedback.device' => 'Enhed',
			'settings.sendFeedback.osVersion' => 'OS-version',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Eksporter måltidshistorik',
			'settings.exportMealHistory.subtitle' => 'Del en CSV-fil med dine registrerede måltider',
			'settings.exportMealHistory.shareText' => 'Din Calorify-eksport af måltidshistorik',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Kunne ikke eksportere måltidshistorik: ${error}',
			'settings.clearAllData.title' => 'Ryd alle data',
			'settings.clearAllData.subtitle' => 'Slet alle dine oplysninger uden mulighed for gendannelse',
			'settings.clearAllData.confirmationTitle' => 'Ryd alle data?',
			'settings.clearAllData.confirmationMessage' => 'Denne handling kan ikke fortrydes. Alle dine registrerede måltider, favoritter og profilindstillinger bliver slettet permanent.',
			'settings.clearAllData.cancel' => 'Annuller',
			'settings.clearAllData.clearEverything' => 'Ryd alt',
			'settings.debugOptions.title' => 'Fejlfindingsindstillinger',
			'settings.developerModeEnabled' => 'Udviklertilstand aktiveret!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Se og administrer tilladelser',
			'settings.healthConnect.unavailable.title' => 'Health Connect ikke tilgængelig',
			'settings.healthConnect.unavailable.description' => 'Health Connect er ikke tilgængelig på denne enhed. Installer Health Connect fra Play Butik (Android 9+) eller opdatér til Android 14+.',
			'settings.healthConnect.permissions.title' => 'Tilladelser',
			'settings.healthConnect.permissions.description' => 'Følgende tilladelser anmodes om for at give Health Connect-integration:',
			'settings.healthConnect.permissions.granted' => 'Tilladt',
			'settings.healthConnect.permissions.notGranted' => 'Ikke tilladt',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Læs samlede forbrændte kalorier',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Giver appen adgang til at læse dine samlede forbrændte kalorier fra Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Denne tilladelse bruges til at vise dit daglige kalorieforbrug i appen, så du forstår din samlede energiudgift i løbet af dagen.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Læs ernæringsdata',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Giver appen adgang til at læse ernæringsdata fra Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Denne tilladelse gør det muligt for appen at læse ernæringsoplysninger, som kan være registreret af andre apps forbundet til Health Connect, for at give et samlet overblik over din ernæring.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Skriv ernæringsdata',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Giver appen adgang til at skrive ernæringsdata til Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Denne tilladelse gør det muligt at synkronisere dine registrerede måltider til Health Connect, så dine ernæringsdata er tilgængelige i andre sundheds- og fitnessapps, du bruger.',
			'settings.healthConnect.managePermissions' => 'Administrer tilladelser',
			'settings.healthConnect.openSettings' => 'Åbn Health Connect-indstillinger',
			'settings.healthConnect.requestPermissions' => 'Anmod om tilladelser',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Anmodning om tilladelser blev annulleret eller mislykkedes. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillingerne.',
			'settings.healthConnect.permissionRequestFailed' => 'Kunne ikke anmode om tilladelser. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillingerne.',
			'settings.healthConnect.requestingPermissions' => 'Anmoder...',
			'settings.about.title' => 'Om',
			'settings.about.tagline' => 'Hurtig, gratis og med privatlivet først i fokus for kaloriebevidsthed',
			'settings.about.ourStory.title' => 'Vores historie',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} blev skabt ud fra en enkel frustration: De fleste kalorietæller-apps er enten alt for komplicerede, kræver konstant manuel indtastning, koster dyre abonnementer eller går på kompromis med privatlivet.\n\nSom solo-udvikler ville jeg bygge noget enklere og mere fair — en app, der bruger AI til at mindske indsatsen, forbliver hurtig og gratis at bruge, og som behandler dine sundhedsdata med respekt.\n\n${appLabel} er den app, jeg selv manglede: ingen konti, ingen sporing, ingen reklamer — bare klare, praktiske indsigter og fokus på dine sundhedsmål.',
			'settings.about.privacy.title' => 'Dit privatliv betyder noget',
			'settings.about.privacy.description' => 'Privatliv er ikke en eftertanke — det er et designprincip. Det betyder i praksis:',
			'settings.about.privacy.noAccounts' => 'Ingen konti påkrævet\nBrug appen med det samme. Ingen tilmelding, ingen identiteter.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Ingen adfærdssporing\n${appLabel} overvåger ikke din aktivitet, opbygger ikke brugsprofiler og sporer dig ikke på tværs af apps eller websites.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Reklamefri som udgangspunkt\n${appLabel} er bygget til at fungere uden reklamer eller datadrevet indtjening.',
			'settings.about.privacy.noDataSelling' => 'Intet salg af data\nDine sundhedsdata bliver aldrig solgt eller delt med tredjeparter.',
			'settings.about.privacy.localStorage' => 'Lokalførst-lagring\nDine data forbliver på din enhed.',
			'settings.about.privacy.privacyPolicy' => 'Privatlivspolitik',
			'settings.about.developer.title' => 'Bygget af en solo-udvikler',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} er bygget og vedligeholdt af en enkelt udvikler med fokus på rolig, privatlivsrespekterende sundhedssoftware.\n\nFeedback læses personligt og er med til at forme appens retning.',
			'settings.about.developer.website' => 'Hjemmeside',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Nyder du ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Din feedback hjælper med at gøre ${appLabel} bedre for alle.',
			'settings.about.feedback.rateApp' => 'Bedøm i Play Butik',
			'settings.about.feedback.sendFeedback' => 'Send feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Hold kursen med påmindelser',
			'reminders.description' => 'Få blide påmindelser om at registrere dine måltider og være konsekvent med dine ernæringsmål',
			'reminders.notificationsEnabled' => 'Meddelelser aktiveret',
			'reminders.notificationsDisabled' => 'Meddelelser deaktiveret',
			'reminders.enabledSubtitle' => 'Du vil modtage måltidspåmindelser',
			'reminders.disabledSubtitle' => 'Aktivér meddelelser for at få måltidspåmindelser',
			'reminders.mealReminders' => 'Måltidspåmindelser',
			'reminders.breakfast' => 'Morgenmad',
			'reminders.lunch' => 'Frokost',
			'reminders.dinner' => 'Aftensmad',
			'reminders.snack' => 'Snack',
			'reminders.unknown' => 'Ukendt',
			'reminders.change' => 'Ændr',
			'reminders.enableNotifications' => 'Aktivér meddelelser',
			'reminders.skipForNow' => 'Spring over for nu',
			'reminders.saveChanges' => 'Gem ændringer',
			'reminders.enabledSuccessfully' => 'Meddelelser blev aktiveret!',
			'reminders.permissionDenied' => 'Tilladelse til meddelelser blev afvist',
			'reminders.errorEnabling' => ({required Object error}) => 'Fejl ved aktivering af meddelelser: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Fejl ved færdiggørelse af opsætning: ${error}',
			'notifications.breakfast.title' => 'Tid til morgenmad! 🍳',
			'notifications.breakfast.body' => 'Glem ikke at registrere din morgenmad',
			'notifications.lunch.title' => 'Tid til frokost! 🥗',
			'notifications.lunch.body' => 'Tid til at registrere din frokost',
			'notifications.dinner.title' => 'Tid til aftensmad! 🍽️',
			'notifications.dinner.body' => 'Glem ikke at registrere din aftensmad',
			'notifications.snack.title' => 'Tid til en snack! 🍎',
			'notifications.snack.body' => 'Tid til en sund snack',
			'notifications.test.title' => 'Testmeddelelse',
			'login.title' => 'Log ind',
			'login.signInWithGoogle' => 'Log ind med Google',
			'login.signInFailed' => 'Google-login mislykkedes eller blev annulleret.',
			'disclaimer.pleaseNote' => 'Bemærk venligst',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} giver estimerede næringsoplysninger. Nøjagtigheden afhænger af dine input og variationer i maden. Brug det som vejledning, ikke som en endelig kilde. Rådfør dig med en professionel for personlig kostvejledning.',
			'disclaimer.snap.portionSize.title' => 'Portionsstørrelse',
			'disclaimer.snap.portionSize.description' => 'Nøjagtigheden af estimaterne afhænger i høj grad af din korrekte vurdering af portionsstørrelsen.',
			'disclaimer.snap.preparationMethods.title' => 'Tilberedningsmetoder',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Tilberedning kan ændre fødevarers næringsindhold markant. ${appLabel}s estimater tager ikke altid højde for disse variationer.',
			'disclaimer.snap.ingredients.title' => 'Ingredienser',
			'disclaimer.snap.ingredients.description' => 'Komplekse retter med mange skjulte ingredienser kan føre til mindre præcise estimater.',
			'disclaimer.snap.databaseLimitations.title' => 'Databasebegrænsninger',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}s fødevaredatabase er omfattende, men indeholder muligvis ikke alle fødevarer eller variationer.',
			'disclaimer.weightEstimate.title' => 'Om vægtestimatet',
			'disclaimer.weightEstimate.description' => 'Det projicerede vægtskifte er et teoretisk estimat baseret på en simpel ind-ud-kaloriemodel. Det er kun tiltænkt som motivation, ikke som en forudsigelse af din faktiske vægt.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalorienøjagtighed',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Dette estimat er kun så nøjagtigt som dit registrerede kalorieindtag og -forbrug. Unøjagtig registrering giver et unøjagtigt estimat.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologiske faktorer',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Faktisk vægttab/-øgning påvirkes af stofskifte, hormoner, søvn, stress, hydrering og andre individuelle faktorer, som ${appLabel} ikke kan måle.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Vandvægt og udsving',
			'disclaimer.weightEstimate.waterWeight.description' => 'Din daglige vægt kan svinge betydeligt pga. væskeretention, fordøjelse og timing. Estimatet tager ikke højde for disse daglige variationer.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Professionel vejledning',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Brug ikke dette estimat til medicinske beslutninger. Rådfør dig altid med en sundhedsprofessionel eller klinisk diætist for personlig rådgivning.',
			'disclaimer.healthMetrics.description' => 'Disse målinger hjælper dig med at forstå kroppens energibehov og guider dine ernæringsmål.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR) er antallet af kalorier, din krop forbrænder i hvile for at opretholde basale funktioner som vejrtrækning og blodcirkulation. BMR afhænger af din alder, dit køn, din højde og din vægt. En højere BMR betyder, at din krop naturligt forbrænder flere kalorier i hvile, ofte pga. mere muskelmasse, yngre alder eller mandligt køn. En lavere BMR indikerer typisk mindre muskelmasse, højere alder eller kvindeligt køn.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE) er de samlede kalorier, du forbrænder pr. dag, inklusive din BMR plus kalorier fra fysisk aktivitet og daglig bevægelse. TDEE afhænger af din BMR og dit aktivitetsniveau. En højere TDEE betyder, at du forbrænder flere kalorier samlet set, typisk ved at være mere aktiv eller have en højere BMR. En lavere TDEE antyder mindre daglig aktivitet eller en lavere BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Dagligt mål',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Dit daglige mål er dit anbefalede daglige kalorieindtag baseret på din TDEE og dit vægtmål. For vægttab spiser du færre kalorier end din TDEE. For vedligeholdelse matcher du din TDEE. For vægtøgning spiser du flere kalorier end din TDEE. Det hjælper dig med at nå din ønskede vægtændring i et sundt tempo.',
			'disclaimer.calorieExpenditure.title' => 'Estimat af kalorieforbrug',
			'disclaimer.calorieExpenditure.description' => 'Når Health Connect-data ikke er tilgængelige, estimerer vi dagens forbrændte kalorier ved at bruge din basale forbrænding (BMR) og aktivitetsniveau (TDEE), skaleret efter den del af dagen, der er gået.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Sådan beregnes estimatet',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Vi beregner din TDEE (baseret på din profil) og ganger den med andelen af dagen, der er gået (timer + minutter) / 24 for at estimere kalorier forbrændt indtil nu.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Professionel vejledning',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Brug ikke dette estimat til medicinske beslutninger. Rådfør dig altid med en sundhedsprofessionel eller klinisk diætist for personlig rådgivning.',
			'common.close' => 'Luk',
			'common.kContinue' => 'Fortsæt',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Nyder du ${appLabel}?',
			'feedbackRating.yes' => 'Ja, jeg kan lide den',
			'feedbackRating.no' => 'Ikke rigtigt',
			'feedbackRating.rateStepHeading' => 'Bedøm i Play Butik',
			'feedbackRating.emailStepHeading' => 'Send feedback via email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'En hurtig bedømmelse hjælper andre med at finde ${appLabel} og holder udviklingen i gang. Vil du tage et øjeblik til at give en bedømmelse?',
			'feedbackRating.shareFeedbackViaEmail' => 'Din feedback former, hvad der kommer næste — vi læser hver besked. Vil du dele dine tanker via email?',
			'feedbackRating.rateCta' => 'Bedøm i Play Butik',
			'feedbackRating.maybeLater' => 'Måske senere',
			'feedbackRating.sendFeedback' => 'Send feedback',
			'feedbackRating.noThanks' => 'Nej tak',
			'feedbackRating.aboutUsDescription' => 'Lavet med omhu af et lille team. Vi fokuserer på privatliv, enkelhed og at hjælpe dig med at opbygge bedre spisevaner.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Nysgerrig på, hvem der står bag ${appLabel}? Se ',
			'feedbackRating.aboutUsLinkLabel' => 'Om os',
			'feedbackRating.thankYouMessage' => 'Tak! Vi spørger igen en anden gang.',
			'health.syncFailed' => 'Kunne ikke synkronisere til Health Connect',
			'health.mealSynced' => 'Måltid synkroniseret med Health Connect',
			_ => null,
		};
	}
}
