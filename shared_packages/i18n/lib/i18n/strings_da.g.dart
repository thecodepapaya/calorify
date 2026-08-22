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
	@override late final _TranslationsLocalNutritionPhase4Da localNutritionPhase4 = _TranslationsLocalNutritionPhase4Da._(_root);
	@override late final _TranslationsCommonDa common = _TranslationsCommonDa._(_root);
	@override late final _TranslationsFeedbackRatingDa feedbackRating = _TranslationsFeedbackRatingDa._(_root);
	@override late final _TranslationsHealthDa health = _TranslationsHealthDa._(_root);
}

// Path: errors
class _TranslationsErrorsDa implements TranslationsErrorsEn {
	_TranslationsErrorsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Du har sendt for mange anmodninger. Vent et øjeblik før du prøver igen.';
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
	@override String get subtitle => 'Din personlige ernæringsassistent drevet af AI';
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
	@override String get noMeals => 'Ingen registrerede måltider';
	@override String get emptyMessage => 'Tag et billede af dit sidste måltid for at registrere det her.';
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
	@override String get mealName => 'Måltidets navn';
	@override String get mealNameHint => 'fx. Røræg med toast';
	@override String get nameRequired => 'Indtast et navn på måltidet, før du gemmer.';
	@override String get mealQuantity => 'Mængde';
	@override String get mealQuantityHint => 'fx. 1 skål, 2 skiver';
	@override String get timeOfMeal => 'Tidspunkt for måltid';
	@override String get timeOfMealHint => 'Vælg tidspunktet for dit måltid';
	@override String get mealType => 'Måltidstype';
	@override late final _TranslationsMealNutritionDa nutrition = _TranslationsMealNutritionDa._(_root);
	@override late final _TranslationsMealDeleteConfirmationDa deleteConfirmation = _TranslationsMealDeleteConfirmationDa._(_root);
	@override String get addedToLog => 'Måltid føjet til din log!';
	@override String couldNotAdd({required Object error}) => 'Kunne ikke tilføje måltid: ${error}';
	@override String get savedSuccessfully => 'Måltid tilføjet!';
	@override String get updatedSuccessfully => 'Måltid opdateret!';
	@override String errorSaving({required Object error}) => 'Fejl ved gemning af måltid: ${error}';
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
	@override late final _TranslationsMealLocalInferenceDa localInference = _TranslationsMealLocalInferenceDa._(_root);
	@override late final _TranslationsMealFeedbackDa feedback = _TranslationsMealFeedbackDa._(_root);
}

// Path: favorites
class _TranslationsFavoritesDa implements TranslationsFavoritesEn {
	_TranslationsFavoritesDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritter';
	@override String get empty => 'Ingen favoritmåltider endnu.';
	@override String get searchPlaceholder => 'Søg i favoritter';
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
	@override String get viewAndManage => 'Se og administrer dine sundhedsoplysninger';
	@override late final _TranslationsProfileSectionsDa sections = _TranslationsProfileSectionsDa._(_root);
	@override String get gender => 'Køn';
	@override String get height => 'Højde';
	@override String get weight => 'Vægt';
	@override String get age => 'Alder';
	@override String get weightGoal => 'Vægtmål';
	@override String get targetWeight => 'Målvægt';
	@override String get activityLevel => 'Aktivitetsniveau';
	@override String get healthMetrics => 'Sundhedsparametre';
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
	@override String get note => 'Denne score er et AI-estimat baseret på identificerede ingredienser og ernæringstætheden. Konsulter altid en professionel for kostråd.';
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
	@override late final _TranslationsSettingsLocalInferenceDa localInference = _TranslationsSettingsLocalInferenceDa._(_root);
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
	@override String get title => 'Hold dig på sporet med påmindelser';
	@override String get description => 'Få blide påmindelser om at registrere dine måltider og holde fast i dine ernæringsmål';
	@override String get notificationsEnabled => 'Notifikationer aktiveret';
	@override String get notificationsDisabled => 'Notifikationer deaktiveret';
	@override String get enabledSubtitle => 'Du vil modtage måltidspåmindelser';
	@override String get disabledSubtitle => 'Aktivér notifikationer for at få måltidspåmindelser';
	@override String get mealReminders => 'Måltidspåmindelser';
	@override String get breakfast => 'Morgenmad';
	@override String get lunch => 'Frokost';
	@override String get dinner => 'Aftensmad';
	@override String get snack => 'Mellemmåltid';
	@override String get unknown => 'Ukendt';
	@override String get change => 'Skift';
	@override String get enableNotifications => 'Aktivér notifikationer';
	@override String get skipForNow => 'Spring over for nu';
	@override String get saveChanges => 'Gem ændringer';
	@override String get enabledSuccessfully => 'Notifikationer aktiveret!';
	@override String get permissionDenied => 'Tilladelse til notifikationer afvist';
	@override String errorEnabling({required Object error}) => 'Fejl ved aktivering af notifikationer: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Fejl ved fuldførelse af opsætning: ${error}';
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

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4Da implements TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4Da._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'Nutrition matched from the downloaded USDA pack';
	@override String get nutritionCached => 'Nutrition matched from the on-device USDA cache';
	@override String get nutritionMixed => 'Nutrition combined from downloaded, cached, and remote USDA rows';
	@override String get calculationLocal => 'Calories and macros calculated on this device';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: downloaded USDA pack';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: on-device USDA cache';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: USDA row fetched through Calorify';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: deterministic nutrition constant';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · dataset ${datasetVersion}';
	@override String get portionSmaller => 'Smaller';
	@override String get portionEstimated => 'Estimated';
	@override String get portionLarger => 'Larger';
	@override String portionQuestion({required Object ingredient}) => 'Which portion was closest for ${ingredient}?';
	@override String get mealTypeQuestion => 'Which meal was this?';
	@override String get localNutritionTip => 'Calculated from verified local nutrition data.';
	@override String get offlineNutritionTitle => 'Download nutrition data';
	@override String get offlineNutritionSubtitle => 'Use verified USDA rows and deterministic calculation on this device when every ingredient is covered.';
	@override String get offlineNutritionUnavailable => 'Local nutrition data is not available for this app release.';
	@override String get offlineNutritionNotDownloaded => 'No verified nutrition pack is downloaded.';
	@override String get offlineNutritionInstalling => 'Downloading and verifying nutrition data…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Pack ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} cached USDA rows · ${size}';
	@override String get offlineNutritionUpdate => 'Check for update';
	@override String get offlineNutritionClear => 'Clear local nutrition data';
	@override String get offlineNutritionClearTitle => 'Clear local nutrition data?';
	@override String get offlineNutritionClearBody => 'This removes the downloaded USDA pack and lookup cache. Logged meals keep the exact nutrition snapshot used when they were saved.';
	@override String get offlineNutritionClearConfirm => 'Clear data';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Could not download and verify local nutrition data: ${error}';
	@override String get offlineNutritionCleared => 'Local nutrition data cleared';
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
	@override String get yes => 'Ja, jeg er glad for den';
	@override String get no => 'Ikke rigtig';
	@override String get rateStepHeading => 'Giv bedømmelse på Play Store';
	@override String get emailStepHeading => 'Send feedback via e-mail';
	@override String soloDevMessage({required Object appLabel}) => 'En hurtig vurdering hjælper andre med at finde ${appLabel} og holder udviklingen i gang. Vil du give en vurdering?';
	@override String get shareFeedbackViaEmail => 'Din feedback former det, der kommer næste — vi læser alle beskeder. Vil du dele dine tanker via e-mail?';
	@override String get rateCta => 'Giv vurdering på Play Store';
	@override String get maybeLater => 'Måske senere';
	@override String get sendFeedback => 'Giv feedback';
	@override String get noThanks => 'Nej tak';
	@override String get aboutUsDescription => 'Lavede med omtanke af et lille team. Vi fokuserer på privatliv, enkelhed og at hjælpe dig med bedre spisevaner.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Nysgerrig efter hvem der står bag ${appLabel}? Se ';
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
	@override String get description => 'Køn hjælper os med at beregne dit basale stofskifte (BMR) mere præcist.';
	@override String get next => 'Næste';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightDa implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvor høj er du?';
	@override String get description => 'Din højde hjælper os med at beregne din BMI og energibehov præcist.';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperial';
	@override String get next => 'Næste';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightDa implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Hvad er din aktuelle vægt?';
	@override String get currentDescription => 'Din aktuelle vægt er vigtig for at tilpasse dine daglige mål.';
	@override String get targetTitle => 'Hvad er din målvægt?';
	@override String get targetDescription => 'At sætte en målvægt hjælper os med at bestemme din langsigtede plan.';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Imperial';
	@override String get next => 'Næste';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeDa implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvornår er din fødselsdag?';
	@override String get description => 'Din alder hjælper os med at beregne dit kaloriebehov præcist.';
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
	@override String get description => 'Det hjælper os med at beregne dit daglige kaloriebehov mere præcist';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectDa implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Forbind med Health Connect';
	@override String get description => 'Synkroniser dine sundhedsdata for bedre indsigt og automatisk kaloritælling';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingDa automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingDa._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsDa progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsDa._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationDa seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationDa._(_root);
	@override String get connected => 'Health Connect forbundet';
	@override String get notConnected => 'Health Connect ikke forbundet';
	@override String get setup => 'Opsæt Health Connect';
	@override String get skipForNow => 'Spring over for nu';
	@override String get statusConnected => 'Health Connect er forbundet.';
	@override String get statusSuccess => 'Health Connect er blevet tilsluttet!';
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
	@override String get title => 'Din AI-opsummering';
	@override String get logMore => 'Registrer flere måltider de næste par dage for at få dine personlige AI-indsigter.';
	@override String get loading => 'Indlæser din opsummering...';
	@override String mealCount({required Object count}) => '${count} måltider registreret';
	@override String macroBalanceScore({required Object score}) => 'Balance-score ${score}';
	@override String get topFoods => 'Topfødevarer';
	@override String get trendUp => 'Kalorier stiger';
	@override String get trendDown => 'Kalorier falder';
	@override String get trendSteady => 'Kalorier stabiliserer sig';
	@override String generatedAt({required Object time}) => 'Opdateret ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalDa implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sæt dit daglige mål';
	@override String get titleSet => 'Dit daglige mål';
	@override String get description => 'Klar til at starte din wellness-rejse? Sæt dit daglige kaloriemål nedenfor for at kickstarte din fremgang.';
	@override String get descriptionSet => 'Din kurs er sat! Dette er dit daglige kaloriemål som vejledning.';
	@override String get yourGoal => 'Dit mål';
	@override String get goal => 'Mål';
	@override String get dailyCalories => 'Daglige kalorier (kcal)';
	@override String get setGoal => 'Indstil mål';
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
	@override String get title => 'Dagsoversigt';
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Kulhydrater';
	@override String get protein => 'Protein';
	@override String get fat => 'Fedt';
	@override String get fiber => 'Fibre';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Makrofordelingsdiagram';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressDa implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagens makrofordeling';
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
	@override String get emptyMessage => 'Tag et billede af dit sidste måltid for at registrere det her.';
	@override String get noMealsToday => 'Ingen måltider registreret i dag';
	@override String get seeAllMeals => 'Se alle måltider';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionDa implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hurtigtilføj med AI';
	@override String get description => 'Beskriv dit måltid, og lad AI klare detaljerne.';
	@override String get hint => 'fx. Til morgenmad spiste jeg en stor skål havregryn med en skivet banan og en skefuld valle ...';
	@override String get analyzeMeal => 'Analyser måltid';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsDa implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritmåltider';
	@override String get description => 'Tilføj hurtigt et af dine yndlingsmåltider.';
	@override String get noFavorites => 'Ingen favoritmåltider endnu.';
	@override String get addFavoriteHint => 'Klik på stjernen på et måltid for at markere det som favorit.';
	@override String get seeAll => 'Se alle';
	@override String get add => 'Tilføj';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapDa implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tag billede og registrer dit måltid';
	@override String get description => 'Brug dit kamera til at tage et billede af din mad til AI-analyse.';
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
	@override String get title => 'Synkroniser med Health Connect';
	@override String get description => 'Synkroniser dine ernæringsdata med Health Connect';
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
	@override String get noQuestionsAvailable => 'Ingen spørgsmål tilgængelige';
	@override String get next => 'Næste';
	@override String get continueLabel => 'Fortsæt';
}

// Path: meal.analysis
class _TranslationsMealAnalysisDa implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyserer dit måltid';
	@override String get stepStarted => 'Starter…';
	@override String get stepDecomposition => 'Forstår dit måltid…';
	@override String get stepIngredients => 'Matcher ingredienser til ernæringsdata…';
	@override String get stepUncertainty => 'Tjekker sikkerhed…';
	@override String get stepMealTypeQuestion => 'Næsten færdig…';
	@override String get stepResult => 'Færdiggør resultatet…';
	@override String get stepError => 'Noget gik galt';
	@override String get stepDefault => 'Analysere dit måltid…';
	@override String get progressUnderstand => 'Forståelse af måltid';
	@override String get progressMatch => 'Slår ingrediensers næring op';
	@override String get progressCheck => 'Tjekker portioner og sikkerhed';
	@override String get progressMealType => 'Vælger måltidstype';
	@override String get progressFinish => 'Beregn kalorier og makroer';
	@override String get detectedIngredientHeading => 'Ingredienser vi genkender';
	@override String ingredientsOverflow({required Object count}) => '${count} mere';
	@override String ingredientsLine({required Object count}) => '${count} ingredienser registreret';
	@override String get ingredientsPending => 'Scanner ingredienser…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Konsistens slår perfektion—regelmæssige registreringer afslører de vigtige mønstre.';
	@override String get offlineTip1 => 'Tip: Til fotos hjælper naturligt lys og et top-down-perspektiv med portionsnøjagtigheden.';
	@override String get offlineTip2 => 'Tip: Angiv drikkevarer, saucer og madolie—de tilføjer kalorier, som mange glemmer.';
	@override String get offlineTip3 => 'Tip: En hurtig portionsnote (1 skål, stor kaffe) gør estimaterne meget skarpere.';
	@override String get offlineTip4 => 'Tip: At registrere efter måltidet bygger stadig vanen; perfektion er valgfrit.';
	@override String get offlineTip5 => 'Tip: Angiv, hvordan maden er tilberedt, når det ændrer kalorier meget (stegt vs. bagt).';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceDa implements TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Gennemse detekterede ingredienser';
	@override String get reviewSubtitle => 'Dette blev fortolket på din enhed. Ret navne eller portioner, før næringsindholdet beregnes.';
	@override String get mealName => 'Måltidets navn';
	@override String get ingredient => 'Ingrediens';
	@override String get grams => 'Estimeret antal gram';
	@override String get removeIngredient => 'Fjern ingrediens';
	@override String get continueLabel => 'Fortsæt';
	@override String get invalidProposal => 'Tilføj mindst én ingrediens og brug et positivt antal gram.';
	@override String get localUnavailable => 'Analyse på enheden er ikke tilgængelig lige nu.';
	@override String get calculationDetails => 'Sådan blev dette beregnet';
	@override String get interpretationLocal => 'Ingredienser fortolket på denne enhed';
	@override String get interpretationCloud => 'Ingredienser fortolket i skyen';
	@override String get interpretationManual => 'Ingredienser gennemset eller redigeret af dig';
	@override String get nutritionRemote => 'Næringsindhold hentet fra USDA via Calorify';
	@override String get nutritionFallback => 'Nogle næringsværdier blev estimeret eksternt';
	@override String get calculationServer => 'Kalorier og makronæringsstoffer beregnet af Calorify';
	@override String get fallbackUsed => 'Lokal analyse skiftede til cloud-behandling';
	@override String get noRawContent => 'Diagnostiske kvitteringer indeholder ikke din måltidstekst eller dit foto.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackDa implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvad ser forkert ud?';
	@override String get subtitle => 'Hjælp os med at forbedre analysen ved at vælge ét eller flere problemer.';
	@override String get tellUsMore => 'Fortæl os mere';
	@override String get describeIncorrect => 'Beskriv hvad der var forkert';
	@override String get submit => 'Send';
	@override String get issueFoodIdentification => 'Madgenkendelse';
	@override String get issuePortionSize => 'Portionsstørrelse';
	@override String get issueCalorieDistribution => 'Kaloriefordeling';
	@override String get issueMacrosWrong => 'Makroer er forkerte';
	@override String get issueMissingItems => 'Mangler varer';
	@override String get issueExtraItems => 'Ekstra varer';
	@override String get issueOther => 'Andet';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsDa implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Nyeste';
	@override String get calories => 'Kalorier';
	@override String get alphabetical => 'A-Å';
}

// Path: profile.sections
class _TranslationsProfileSectionsDa implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'BASALE OPLYSNINGER';
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
	@override String get dailyGoal => 'Dagsmål';
	@override String get calPerDay => 'cal/dag';
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
	@override String get notifications => 'NOTIFIKATIONER';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get localInference => 'ANALYSE PÅ ENHED';
	@override String get supportAndLegal => 'SUPPORT & JURA';
	@override String get about => 'OM';
	@override String get dangerZone => 'FARLIG ZONE';
	@override String get developer => 'UDVIKLER';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileDa implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rediger profil';
	@override String get subtitle => 'Opdater dine oplysninger';
}

// Path: settings.language
class _TranslationsSettingsLanguageDa implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sprog';
	@override String get subtitle => 'Vælg dit foretrukne sprog';
	@override String get searchHint => 'Søg sprog...';
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
	@override String get subtitle => 'Hold dig på sporet med rettidige påmindelser';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceDa implements TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Måltidsanalyse på enheden';
	@override String get subtitle => 'Fortolk understøttede måltider med Gemini Nano, før næringsindholdet beregnes';
	@override String get unavailable => 'Ikke tilgængelig på denne enhed';
	@override String get rolloutUnavailable => 'Understøttet hardware fundet, men denne funktion er ikke aktiveret for denne app-version';
	@override String get modelSetup => 'Gemini Nano skal færdiggøre download, før dette kan aktiveres';
	@override String get useLocalTitle => 'Brug analyse på enheden';
	@override String get useLocalSubtitle => 'Valgfrit og deaktiveret som standard. Resultaterne kan være mindre pålidelige for komplekse måltider.';
	@override String get disclosureTitle => 'Før du aktiverer analyse på enheden';
	@override String get disclosureBody => 'Gemini Nano kan identificere ingredienser og estimere portioner på understøttede Android-enheder. Dit gennemsete forslag til ingredienser sendes til Calorify for USDA-næringsvalidering og beregning.';
	@override String get disclosureLimit1 => 'Komplekse retter, skjulte ingredienser og portionsstørrelser kan blive identificeret forkert.';
	@override String get disclosureLimit2 => 'Modellen kan være utilgængelig under download, når den er optaget, kører i baggrunden eller er begrænset af enheden.';
	@override String get disclosureLimit3 => 'Hvis den lokale fortolkning ikke kan færdiggøres, sender denne beta automatisk din oprindelige måltidsbeskrivelse til Calorify for cloud-analyse.';
	@override String get acknowledgement => 'Jeg forstår, at jeg bør gennemse detekterede ingredienser og portioner.';
	@override String get enable => 'Bekræft og aktiver';
	@override String get cancel => 'Annuller';
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
	@override String emailSubject({required Object appLabel}) => '${appLabel} App-feedback';
	@override String get emailBodyPrefix => 'Angiv venligst din feedback nedenfor:';
	@override String get appVersion => 'App-version';
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
	@override String get subtitle => 'Del en CSV med dine registrerede måltider';
	@override String get shareText => 'Din Calorify-måltidshistorik';
	@override String failed({required Object error}) => 'Kunne ikke eksportere måltidshistorik: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataDa implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Slet alle data';
	@override String get subtitle => 'Slet permanent alle dine oplysninger';
	@override String get confirmationTitle => 'Slette alle data?';
	@override String get confirmationMessage => 'Denne handling kan ikke fortrydes. Alle dine registrerede måltider, favoritter og profilindstillinger vil blive permanent slettet.';
	@override String get cancel => 'Annuller';
	@override String get clearEverything => 'Slet alt';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsDa implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fejlfindingindstillinger';
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
	@override String get permissionRequestCancelledOrFailed => 'Anmodning om tilladelser blev annulleret eller fejlede. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillingerne.';
	@override String get permissionRequestFailed => 'Kan ikke anmode om tilladelser. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillingerne.';
	@override String get requestingPermissions => 'Anmoder...';
}

// Path: settings.about
class _TranslationsSettingsAboutDa implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om';
	@override String get tagline => 'Hurtig, gratis og privatlivsfokusseret kalorieindsigt';
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
	@override String get title => 'Morgenmadstid! 🍳';
	@override String get body => 'Glem ikke at registrere din morgenmad';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchDa implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Frokosttid! 🥗';
	@override String get body => 'Tid til at registrere din frokost';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerDa implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aftensmadstid! 🍽️';
	@override String get body => 'Glem ikke at registrere din aftensmad';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackDa implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snacktid! 🍎';
	@override String get body => 'Tid til en sund snack';
}

// Path: notifications.test
class _TranslationsNotificationsTestDa implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testnotifikation';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapDa implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} giver estimerede ernæringsoplysninger. Nøjagtigheden afhænger af dine input og madvarianter. Brug som vejledning, ikke som endelig kilde. Kontakt en professionel for personlig kostrådgivning.';
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
	@override String get description => 'Den prognosticerede vægtændring er et teoretisk estimat baseret på en simpel kalorie-ind vs. kalorie-ud-model. Den er kun tænkt som motivationsvejledning, ikke som en forudsigelse af din faktiske vægt.';
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
	@override String get description => 'Disse målinger hjælper dig med at forstå din krops energibehov og vejlede dine ernæringsmål.';
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
	@override String get description => 'Når Health Connect-data ikke er tilgængelige, estimerer vi dagens forbrændte kalorier ved hjælp af dit BMR og aktivitetsniveau (TDEE), skaleret efter den del af dagen, der er gået.';
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
	@override String get description => 'Få øjeblikkelige ernæringsoplysninger ud fra din beskrivelse';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationDa implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sundhedsintegration';
	@override String get description => 'Forbind med Health Connect for bedre indsigt';
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
	@override String get underweight => 'Vi kan hjælpe dig med at skabe en sund plan for at nå en afbalanceret vægt med næringstætte måltider.';
	@override String get healthy => 'Godt gået! Du er i en sund zone. Vi hjælper dig med at bevare din energi og vitalitet.';
	@override String overweight({required Object appLabel}) => '${appLabel} vil forenkle din rejse med AI-drevet tracking, så du komfortabelt kan nå dit mål.';
	@override String get obese => 'Vi er her for at støtte dig med personlig vejledning og bæredygtige strategier til dine sundhedsmål.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingDa implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatisk kaloritælling';
	@override String get description => 'Registrer forbrændte kalorier fra dine træningsapps';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsDa implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fremskridtsindsigt';
	@override String get description => 'Få detaljerede indsigter i dine sundhedstendenser';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationDa implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sømløs integration';
	@override String get description => 'Synkroniser data fra dine foretrukne sundhedsapps';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessDa implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du er ikke alene';
	@override String get genericMessage => 'Forskning viser, at konsekvent tracking er den største indikator for langsigtet succes.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'For en ${age}-årig ${gender}, der ønsker at ${goal}, er konsekvent tracking den vigtigste faktor for succes.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} gør det 10x lettere end at gøre det manuelt.';
	@override String get getStartedTitle => 'Klar til at komme i gang?';
	@override String get tipPhoto => 'Tag et billede af dine måltider for øjeblikkelig analyse';
	@override String get tipConsistency => 'Log konsekvent for at se mærkbare fremskridt';
	@override String get tipProgress => 'Følg din udvikling dagligt for at holde motivationen';
	@override String get button => 'Lad os gå i gang';
	@override String get defaultGender => 'person';
	@override String get defaultGoal => 'et sundere dig';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileDa implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din sundhedsprofil';
	@override String bmiDescription({required Object bmi}) => 'Baseret på dine målinger er din BMI ${bmi}.';
	@override String get finalizeDescription => 'Lad os færdiggøre din profil for at tilpasse din oplevelse.';
	@override String get goalGain => 'tage på';
	@override String get goalLose => 'tabe';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'For at nå dit mål vil du ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Du er på din målvægt! Vi hjælper dig med at bevare den.';
	@override String get button => 'Lad os gå i gang';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleDa implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fremragende start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har taget det første skridt mod ${goalText}. Da du er ${activityText}, tilpasser ${appLabel} dine mål til din livsstil.';
	@override String get personalizedTargets => 'Personlige kaloriemål';
	@override String get aiMealDetection => 'AI-drevet måltidsdetektion';
	@override String get macroBreakdowns => 'Detaljeret fordeling af makronæringsstoffer';
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
	@override String get description => 'Skab et kalorieunderskud for at tabe dig';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightDa implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Vedligehold vægt';
	@override String get description => 'Vedligehold din nuværende vægt';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightDa implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tage på';
	@override String get description => 'Skab et kalorieoverskud for at tage på';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryDa implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Inaktiv';
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
	@override String get description => 'Meget hård motion eller fysisk arbejde';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableDa implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ikke tilgængelig';
	@override String get description => 'Health Connect er ikke tilgængelig på denne enhed. Installer Health Connect fra Play Store (Android 9+) eller opdater til Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsDa implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tilladelser';
	@override String get description => 'Følgende tilladelser anmodes om for at give Health Connect-integration:';
	@override String get granted => 'Givet';
	@override String get notGranted => 'Ikke givet';
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
	@override String content({required Object appLabel}) => '${appLabel} blev født af en enkel frustration: de fleste kalorietræningsapps er enten for komplicerede, kræver konstant manuel indtastning, koster høje abonnementer eller går på kompromis med privatlivet.\n\nSom solo-udvikler ville jeg lave noget enklere og mere retfærdigt — en app, der bruger AI til at reducere indsatsen, forbliver hurtig og gratis at bruge, og behandler dine sundhedsdata med respekt.\n\n${appLabel} er den app, jeg ønskede fandtes: ingen konti, ingen tracking, ingen annoncer — bare klare, praktiske indsigter og dine sundhedsmål.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyDa implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dit privatliv betyder noget';
	@override String get description => 'Privatliv er ikke en eftertanke — det er et designprincip. Det betyder i praksis:';
	@override String get noAccounts => 'Ingen konti nødvendige\nBrug appen med det samme. Ingen tilmeldinger, ingen identiteter.';
	@override String noTracking({required Object appLabel}) => 'Ingen adfærds­overvågning\n${appLabel} overvåger ikke din aktivitet, opbygger ikke brugermodeller og følger dig ikke på tværs af apps eller websites.';
	@override String noAds({required Object appLabel}) => 'Reklamefrit design\n${appLabel} er bygget til at fungere uden annoncer eller datadrevet monetarisering.';
	@override String get noDataSelling => 'Ingen salg af data\nDine sundhedsdata sælges eller deles aldrig med tredjeparter.';
	@override String get localStorage => 'Lokal lagring i første række\nDine data bliver på din enhed.';
	@override String get privacyPolicy => 'Privatlivspolitik';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperDa implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Udviklet af en solo-udvikler';
	@override String description({required Object appLabel}) => '${appLabel} er bygget og vedligeholdt af én solo-udvikler med fokus på roligt, privatlivsrespektende sundhedssoftware.\n\nFeedback læses personligt og hjælper med at forme appens retning.';
	@override String get website => 'Hjemmeside';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackDa implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Nyder du ${appLabel}?';
	@override String description({required Object appLabel}) => 'Din feedback gør ${appLabel} bedre for alle.';
	@override String get rateApp => 'Giv vurdering på Play Store';
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
	@override String description({required Object appLabel}) => 'Tilberedningsmetoder kan ændre madens næringsindhold betydeligt. ${appLabel}\'s estimater tager ikke altid højde for disse variationer.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsDa implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredienser';
	@override String get description => 'Komplekse retter med mange skjulte ingredienser kan give mindre nøjagtige estimater.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsDa implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Databasebegrænsninger';
	@override String description({required Object appLabel}) => '${appLabel}\'s fødevaredatabase er omfattende, men indeholder muligvis ikke alle fødevarer eller variationer.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyDa implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalorienøjagtighed';
	@override String get description => 'Dette estimat er kun så nøjagtigt som din registrerede kalorieindtagelse og -forbrug. Unøjagtig registrering giver et unøjagtigt skøn.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsDa implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologiske faktorer';
	@override String description({required Object appLabel}) => 'Faktisk vægttab/-stigning påvirkes af stofskifte, hormoner, søvn, stress, væskebalance og andre individuelle faktorer, som ${appLabel} ikke kan måle.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightDa implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vandvægt og udsving';
	@override String get description => 'Normal daglig vægt kan svinge betydeligt pga. væskeretention, fordøjelse og timing. Estimatet tager ikke højde for disse daglige ændringer.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceDa implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionel vejledning';
	@override String get description => 'Brug ikke dette estimat til medicinske beslutninger. Kontakt altid en sundhedsprofessionel eller registreret diætist for personlig vægtstyringsrådgivning.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrDa implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) er det antal kalorier, din krop forbrænder i hvile for at opretholde basale funktioner som vejrtrækning og cirkulation. BMR afhænger af din alder, køn, højde og vægt. En højere BMR betyder, at din krop naturligt forbrænder flere kalorier i hvile, ofte på grund af mere muskelmasse, yngre alder eller at være mand. En lavere BMR indikerer typisk mindre muskelmasse, højere alder eller at være kvinde.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeDa implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) er de samlede kalorier, du forbrænder pr. dag, inkl. din BMR plus kalorier fra fysisk aktivitet og daglig bevægelse. TDEE afhænger af din BMR og aktivitetsniveau. En højere TDEE betyder, at du forbrænder flere kalorier samlet, normalt pga. mere aktivitet eller højere BMR. En lavere TDEE antyder mindre daglig aktivitet eller lavere BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalDa implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagsmål';
	@override String get description => 'Dagsmål er dit anbefalede daglige kalorieindtag baseret på din TDEE og dit vægtmål. For vægttab indtager du færre kalorier end din TDEE. For vedligehold matcher du din TDEE. For vægtøgning indtager du flere kalorier end din TDEE. Dette hjælper dig med at nå din ønskede vægtændring i et sundt tempo.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedDa implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvordan estimatet beregnes';
	@override String get description => 'Vi beregner din TDEE (baseret på din profil) og ganger den med den passerede del af dagen (timer + minutter) / 24 for at estimere forbrændte kalorier indtil nu.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDa implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionel vejledning';
	@override String get description => 'Brug ikke dette estimat til medicinske beslutninger. Kontakt altid en sundhedsprofessionel eller registreret diætist for personlig vægtstyringsrådgivning.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDa implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Læs totale forbrændte kalorier';
	@override String get description => 'Giver appen mulighed for at læse dine totale forbrændte kalorier fra Health Connect.';
	@override String get usage => 'Denne tilladelse bruges til at vise din daglige kalorieförbrænding i appen og hjælper dig med at forstå dit samlede energiforbrug i løbet af dagen.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadDa implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Læs ernæringsdata';
	@override String get description => 'Giver appen mulighed for at læse ernæringsdata fra Health Connect.';
	@override String get usage => 'Denne tilladelse gør det muligt for appen at læse ernæringsoplysninger, der kan være registreret af andre apps tilsluttet Health Connect, og giver et samlet overblik over din ernæring.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteDa implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skriv ernæringsdata';
	@override String get description => 'Giver appen mulighed for at skrive ernæringsdata til Health Connect.';
	@override String get usage => 'Denne tilladelse gør det muligt for appen at synkronisere dine registrerede måltider til Health Connect, så dine ernæringsdata bliver tilgængelige for andre sundheds- og træningsapps, du bruger.';
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
			'errors.rateLimitExceeded' => 'Du har sendt for mange anmodninger. Vent et øjeblik før du prøver igen.',
			'errors.networkError' => 'Netværksfejl. Tjek din internetforbindelse.',
			'errors.unknownError' => 'Noget gik galt. Prøv igen senere.',
			'errors.loadingProfileData' => 'Fejl ved indlæsning af profildata',
			'errors.somethingWentWrong' => 'Noget gik galt.',
			'errors.retry' => 'Prøv igen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Velkommen til ${appLabel}',
			'onboarding.subtitle' => 'Din personlige ernæringsassistent drevet af AI',
			'onboarding.getStarted' => 'Kom i gang',
			'onboarding.features.foodRecognition.title' => 'Smart madgenkendelse',
			'onboarding.features.foodRecognition.description' => 'Tag et foto, og lad AI identificere dit måltid',
			'onboarding.features.aiAnalysis.title' => 'AI-analyse',
			'onboarding.features.aiAnalysis.description' => 'Få øjeblikkelige ernæringsoplysninger ud fra din beskrivelse',
			'onboarding.features.healthIntegration.title' => 'Sundhedsintegration',
			'onboarding.features.healthIntegration.description' => 'Forbind med Health Connect for bedre indsigt',
			'onboarding.gender.title' => 'Hvad er dit køn?',
			'onboarding.gender.description' => 'Køn hjælper os med at beregne dit basale stofskifte (BMR) mere præcist.',
			'onboarding.gender.next' => 'Næste',
			'onboarding.height.title' => 'Hvor høj er du?',
			'onboarding.height.description' => 'Din højde hjælper os med at beregne din BMI og energibehov præcist.',
			'onboarding.height.metric' => 'Metrisk',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Næste',
			'onboarding.weight.currentTitle' => 'Hvad er din aktuelle vægt?',
			'onboarding.weight.currentDescription' => 'Din aktuelle vægt er vigtig for at tilpasse dine daglige mål.',
			'onboarding.weight.targetTitle' => 'Hvad er din målvægt?',
			'onboarding.weight.targetDescription' => 'At sætte en målvægt hjælper os med at bestemme din langsigtede plan.',
			'onboarding.weight.metric' => 'Metrisk',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Næste',
			'onboarding.age.title' => 'Hvornår er din fødselsdag?',
			'onboarding.age.description' => 'Din alder hjælper os med at beregne dit kaloriebehov præcist.',
			'onboarding.age.next' => 'Næste',
			'onboarding.bmiScale.underweight' => 'Undervægt',
			'onboarding.bmiScale.healthy' => 'Sund',
			'onboarding.bmiScale.overweight' => 'Overvægt',
			'onboarding.bmiScale.obese' => 'Fedme',
			'onboarding.bmiScale.categories.underweight' => 'Undervægt',
			'onboarding.bmiScale.categories.healthyWeight' => 'Sund vægt',
			'onboarding.bmiScale.categories.overweight' => 'Overvægt',
			'onboarding.bmiScale.categories.obese' => 'Fedme',
			'onboarding.bmiScale.messages.underweight' => 'Vi kan hjælpe dig med at skabe en sund plan for at nå en afbalanceret vægt med næringstætte måltider.',
			'onboarding.bmiScale.messages.healthy' => 'Godt gået! Du er i en sund zone. Vi hjælper dig med at bevare din energi og vitalitet.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} vil forenkle din rejse med AI-drevet tracking, så du komfortabelt kan nå dit mål.',
			'onboarding.bmiScale.messages.obese' => 'Vi er her for at støtte dig med personlig vejledning og bæredygtige strategier til dine sundhedsmål.',
			'onboarding.weightGoal.title' => 'Hvad er dit mål?',
			'onboarding.weightGoal.description' => 'Vælg det mål, der bedst beskriver, hvad du vil opnå',
			'onboarding.activityLevel.title' => 'Hvor aktiv er du?',
			'onboarding.activityLevel.description' => 'Det hjælper os med at beregne dit daglige kaloriebehov mere præcist',
			'onboarding.healthConnect.title' => 'Forbind med Health Connect',
			'onboarding.healthConnect.description' => 'Synkroniser dine sundhedsdata for bedre indsigt og automatisk kaloritælling',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatisk kaloritælling',
			'onboarding.healthConnect.automaticTracking.description' => 'Registrer forbrændte kalorier fra dine træningsapps',
			'onboarding.healthConnect.progressInsights.title' => 'Fremskridtsindsigt',
			'onboarding.healthConnect.progressInsights.description' => 'Få detaljerede indsigter i dine sundhedstendenser',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Sømløs integration',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synkroniser data fra dine foretrukne sundhedsapps',
			'onboarding.healthConnect.connected' => 'Health Connect forbundet',
			'onboarding.healthConnect.notConnected' => 'Health Connect ikke forbundet',
			'onboarding.healthConnect.setup' => 'Opsæt Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Spring over for nu',
			'onboarding.healthConnect.statusConnected' => 'Health Connect er forbundet.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect er blevet tilsluttet!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Tilladelse afvist. Aktivér Health Connect-tilladelser i telefonens indstillinger for ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Fejl ved opsætning af Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Du er ikke alene',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Forskning viser, at konsekvent tracking er den største indikator for langsigtet succes.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'For en ${age}-årig ${gender}, der ønsker at ${goal}, er konsekvent tracking den vigtigste faktor for succes.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} gør det 10x lettere end at gøre det manuelt.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Klar til at komme i gang?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Tag et billede af dine måltider for øjeblikkelig analyse',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Log konsekvent for at se mærkbare fremskridt',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Følg din udvikling dagligt for at holde motivationen',
			'onboarding.reinforcement.trackingSuccess.button' => 'Lad os gå i gang',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'person',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'et sundere dig',
			'onboarding.reinforcement.healthProfile.title' => 'Din sundhedsprofil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Baseret på dine målinger er din BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Lad os færdiggøre din profil for at tilpasse din oplevelse.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'tage på',
			'onboarding.reinforcement.healthProfile.goalLose' => 'tabe',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'For at nå dit mål vil du ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Du er på din målvægt! Vi hjælper dig med at bevare den.',
			'onboarding.reinforcement.healthProfile.button' => 'Lad os gå i gang',
			'onboarding.reinforcement.goalLifestyle.title' => 'Fremragende start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har taget det første skridt mod ${goalText}. Da du er ${activityText}, tilpasser ${appLabel} dine mål til din livsstil.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personlige kaloriemål',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-drevet måltidsdetektion',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detaljeret fordeling af makronæringsstoffer',
			'onboarding.reinforcement.goalLifestyle.button' => 'Lad os gå i gang',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'dine mål',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiv',
			'tabs.dashboard' => 'Oversigt',
			'tabs.history' => 'Historik',
			'home.aiSummary.title' => 'Din AI-opsummering',
			'home.aiSummary.logMore' => 'Registrer flere måltider de næste par dage for at få dine personlige AI-indsigter.',
			'home.aiSummary.loading' => 'Indlæser din opsummering...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} måltider registreret',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Balance-score ${score}',
			'home.aiSummary.topFoods' => 'Topfødevarer',
			'home.aiSummary.trendUp' => 'Kalorier stiger',
			'home.aiSummary.trendDown' => 'Kalorier falder',
			'home.aiSummary.trendSteady' => 'Kalorier stabiliserer sig',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Opdateret ${time}',
			'home.dailyGoal.title' => 'Sæt dit daglige mål',
			'home.dailyGoal.titleSet' => 'Dit daglige mål',
			'home.dailyGoal.description' => 'Klar til at starte din wellness-rejse? Sæt dit daglige kaloriemål nedenfor for at kickstarte din fremgang.',
			'home.dailyGoal.descriptionSet' => 'Din kurs er sat! Dette er dit daglige kaloriemål som vejledning.',
			'home.dailyGoal.yourGoal' => 'Dit mål',
			'home.dailyGoal.goal' => 'Mål',
			'home.dailyGoal.dailyCalories' => 'Daglige kalorier (kcal)',
			'home.dailyGoal.setGoal' => 'Indstil mål',
			'home.dailyGoal.intake' => 'Indtag',
			'home.dailyGoal.burned' => 'Forbrændt',
			'home.dailyGoal.weightImpact' => 'Vægtpåvirkning',
			'home.dailyGoal.estLoss' => 'Ansl. tab på',
			'home.dailyGoal.estGain' => 'Ansl. stigning på',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Dagsoversigt',
			'home.dailySummary.calories' => 'Kalorier',
			'home.dailySummary.carbs' => 'Kulhydrater',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Fedt',
			'home.dailySummary.fiber' => 'Fibre',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Makrofordelingsdiagram',
			'home.intakeProgress.title' => 'Dagens makrofordeling',
			'home.intakeProgress.target' => 'Mål',
			'home.intakeProgress.current' => 'Nuværende',
			'home.intakeHistory.title' => '7-dages makrohistorik',
			'home.intakeHistory.trendTitle' => 'Dagens tendens',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Top: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Ingen historik endnu',
			'home.intakeHistory.startLogging' => 'Begynd at registrere måltider for at se dine\n7-dages makrotendenser her',
			'home.mealLog.title' => 'Registrerede måltider',
			'home.mealLog.emptyMessage' => 'Tag et billede af dit sidste måltid for at registrere det her.',
			'home.mealLog.noMealsToday' => 'Ingen måltider registreret i dag',
			'home.mealLog.seeAllMeals' => 'Se alle måltider',
			'home.mealDescription.title' => 'Hurtigtilføj med AI',
			'home.mealDescription.description' => 'Beskriv dit måltid, og lad AI klare detaljerne.',
			'home.mealDescription.hint' => 'fx. Til morgenmad spiste jeg en stor skål havregryn med en skivet banan og en skefuld valle ...',
			'home.mealDescription.analyzeMeal' => 'Analyser måltid',
			'home.favoriteMeals.title' => 'Favoritmåltider',
			'home.favoriteMeals.description' => 'Tilføj hurtigt et af dine yndlingsmåltider.',
			'home.favoriteMeals.noFavorites' => 'Ingen favoritmåltider endnu.',
			'home.favoriteMeals.addFavoriteHint' => 'Klik på stjernen på et måltid for at markere det som favorit.',
			'home.favoriteMeals.seeAll' => 'Se alle',
			'home.favoriteMeals.add' => 'Tilføj',
			'home.mealSnap.title' => 'Tag billede og registrer dit måltid',
			'home.mealSnap.description' => 'Brug dit kamera til at tage et billede af din mad til AI-analyse.',
			'home.mealSnap.openCamera' => 'Åbn kamera',
			'home.mealSnap.gallery' => 'Galleri',
			'home.mealSnap.compressingPhoto' => 'Optimerer foto…',
			'home.mealSnap.uploadingPhoto' => 'Uploader foto…',
			'home.connectHealth.title' => 'Synkroniser med Health Connect',
			'home.connectHealth.description' => 'Synkroniser dine ernæringsdata med Health Connect',
			'home.connectHealth.install' => 'Installer',
			'home.connectHealth.connect' => 'Forbind',
			'history.noMeals' => 'Ingen registrerede måltider',
			'history.emptyMessage' => 'Tag et billede af dit sidste måltid for at registrere det her.',
			'history.today' => 'I dag',
			'history.yesterday' => 'I går',
			'meal.ohNo' => 'Åh nej!',
			'meal.delete' => 'Slet',
			'meal.editMeal' => 'Rediger måltid',
			'meal.addMeal' => 'Tilføj måltid',
			'meal.saveMeal' => 'Gem måltid',
			'meal.save' => 'Gem',
			'meal.mealName' => 'Måltidets navn',
			'meal.mealNameHint' => 'fx. Røræg med toast',
			'meal.nameRequired' => 'Indtast et navn på måltidet, før du gemmer.',
			'meal.mealQuantity' => 'Mængde',
			'meal.mealQuantityHint' => 'fx. 1 skål, 2 skiver',
			'meal.timeOfMeal' => 'Tidspunkt for måltid',
			'meal.timeOfMealHint' => 'Vælg tidspunktet for dit måltid',
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
			'meal.addedToLog' => 'Måltid føjet til din log!',
			'meal.couldNotAdd' => ({required Object error}) => 'Kunne ikke tilføje måltid: ${error}',
			'meal.savedSuccessfully' => 'Måltid tilføjet!',
			'meal.updatedSuccessfully' => 'Måltid opdateret!',
			'meal.errorSaving' => ({required Object error}) => 'Fejl ved gemning af måltid: ${error}',
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
			'meal.questionFlow.noQuestionsAvailable' => 'Ingen spørgsmål tilgængelige',
			'meal.questionFlow.next' => 'Næste',
			'meal.questionFlow.continueLabel' => 'Fortsæt',
			'meal.analysis.title' => 'Analyserer dit måltid',
			'meal.analysis.stepStarted' => 'Starter…',
			'meal.analysis.stepDecomposition' => 'Forstår dit måltid…',
			'meal.analysis.stepIngredients' => 'Matcher ingredienser til ernæringsdata…',
			'meal.analysis.stepUncertainty' => 'Tjekker sikkerhed…',
			'meal.analysis.stepMealTypeQuestion' => 'Næsten færdig…',
			'meal.analysis.stepResult' => 'Færdiggør resultatet…',
			'meal.analysis.stepError' => 'Noget gik galt',
			'meal.analysis.stepDefault' => 'Analysere dit måltid…',
			'meal.analysis.progressUnderstand' => 'Forståelse af måltid',
			'meal.analysis.progressMatch' => 'Slår ingrediensers næring op',
			'meal.analysis.progressCheck' => 'Tjekker portioner og sikkerhed',
			'meal.analysis.progressMealType' => 'Vælger måltidstype',
			'meal.analysis.progressFinish' => 'Beregn kalorier og makroer',
			'meal.analysis.detectedIngredientHeading' => 'Ingredienser vi genkender',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} mere',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingredienser registreret',
			'meal.analysis.ingredientsPending' => 'Scanner ingredienser…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Konsistens slår perfektion—regelmæssige registreringer afslører de vigtige mønstre.',
			'meal.analysis.offlineTip1' => 'Tip: Til fotos hjælper naturligt lys og et top-down-perspektiv med portionsnøjagtigheden.',
			'meal.analysis.offlineTip2' => 'Tip: Angiv drikkevarer, saucer og madolie—de tilføjer kalorier, som mange glemmer.',
			'meal.analysis.offlineTip3' => 'Tip: En hurtig portionsnote (1 skål, stor kaffe) gør estimaterne meget skarpere.',
			'meal.analysis.offlineTip4' => 'Tip: At registrere efter måltidet bygger stadig vanen; perfektion er valgfrit.',
			'meal.analysis.offlineTip5' => 'Tip: Angiv, hvordan maden er tilberedt, når det ændrer kalorier meget (stegt vs. bagt).',
			'meal.localInference.reviewTitle' => 'Gennemse detekterede ingredienser',
			'meal.localInference.reviewSubtitle' => 'Dette blev fortolket på din enhed. Ret navne eller portioner, før næringsindholdet beregnes.',
			'meal.localInference.mealName' => 'Måltidets navn',
			'meal.localInference.ingredient' => 'Ingrediens',
			'meal.localInference.grams' => 'Estimeret antal gram',
			'meal.localInference.removeIngredient' => 'Fjern ingrediens',
			'meal.localInference.continueLabel' => 'Fortsæt',
			'meal.localInference.invalidProposal' => 'Tilføj mindst én ingrediens og brug et positivt antal gram.',
			'meal.localInference.localUnavailable' => 'Analyse på enheden er ikke tilgængelig lige nu.',
			'meal.localInference.calculationDetails' => 'Sådan blev dette beregnet',
			'meal.localInference.interpretationLocal' => 'Ingredienser fortolket på denne enhed',
			'meal.localInference.interpretationCloud' => 'Ingredienser fortolket i skyen',
			'meal.localInference.interpretationManual' => 'Ingredienser gennemset eller redigeret af dig',
			'meal.localInference.nutritionRemote' => 'Næringsindhold hentet fra USDA via Calorify',
			'meal.localInference.nutritionFallback' => 'Nogle næringsværdier blev estimeret eksternt',
			'meal.localInference.calculationServer' => 'Kalorier og makronæringsstoffer beregnet af Calorify',
			'meal.localInference.fallbackUsed' => 'Lokal analyse skiftede til cloud-behandling',
			'meal.localInference.noRawContent' => 'Diagnostiske kvitteringer indeholder ikke din måltidstekst eller dit foto.',
			'meal.feedback.title' => 'Hvad ser forkert ud?',
			'meal.feedback.subtitle' => 'Hjælp os med at forbedre analysen ved at vælge ét eller flere problemer.',
			'meal.feedback.tellUsMore' => 'Fortæl os mere',
			'meal.feedback.describeIncorrect' => 'Beskriv hvad der var forkert',
			'meal.feedback.submit' => 'Send',
			'meal.feedback.issueFoodIdentification' => 'Madgenkendelse',
			'meal.feedback.issuePortionSize' => 'Portionsstørrelse',
			'meal.feedback.issueCalorieDistribution' => 'Kaloriefordeling',
			'meal.feedback.issueMacrosWrong' => 'Makroer er forkerte',
			'meal.feedback.issueMissingItems' => 'Mangler varer',
			'meal.feedback.issueExtraItems' => 'Ekstra varer',
			'meal.feedback.issueOther' => 'Andet',
			'favorites.title' => 'Favoritter',
			'favorites.empty' => 'Ingen favoritmåltider endnu.',
			'favorites.searchPlaceholder' => 'Søg i favoritter',
			'favorites.searchEmptyTitle' => 'Ingen favoritter matcher din søgning',
			'favorites.searchEmptySubtitle' => 'Prøv et andet måltidsnavn, mængde eller måltidstype.',
			'favorites.sortLabel' => 'Sorter favoritter',
			'favorites.undo' => 'Fortryd',
			'favorites.removed' => ({required Object name}) => 'Fjernede ${name} fra favoritter',
			'favorites.sortOptions.recent' => 'Nyeste',
			'favorites.sortOptions.calories' => 'Kalorier',
			'favorites.sortOptions.alphabetical' => 'A-Å',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Ingen profildata fundet',
			'profile.yourProfile' => 'Din profil',
			'profile.viewAndManage' => 'Se og administrer dine sundhedsoplysninger',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'BASALE OPLYSNINGER',
			'profile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'profile.sections.calculatedValues' => 'BEREGNEDE VÆRDIER',
			'profile.gender' => 'Køn',
			'profile.height' => 'Højde',
			'profile.weight' => 'Vægt',
			'profile.age' => 'Alder',
			'profile.weightGoal' => 'Vægtmål',
			'profile.targetWeight' => 'Målvægt',
			'profile.activityLevel' => 'Aktivitetsniveau',
			'profile.healthMetrics' => 'Sundhedsparametre',
			'profile.notSet' => 'Ikke angivet',
			'profile.years' => 'år',
			'profile.updatedSuccessfully' => 'Profil opdateret!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Dagsmål',
			'profile.calculatedValues.calPerDay' => 'cal/dag',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Sundhedsscore',
			'healthScore.whyThisScore' => 'Hvorfor denne score?',
			'healthScore.note' => 'Denne score er et AI-estimat baseret på identificerede ingredienser og ernæringstætheden. Konsulter altid en professionel for kostråd.',
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
			'editProfile.weightGoals.loseWeight.description' => 'Skab et kalorieunderskud for at tabe dig',
			'editProfile.weightGoals.maintainWeight.name' => 'Vedligehold vægt',
			'editProfile.weightGoals.maintainWeight.description' => 'Vedligehold din nuværende vægt',
			'editProfile.weightGoals.gainWeight.name' => 'Tage på',
			'editProfile.weightGoals.gainWeight.description' => 'Skab et kalorieoverskud for at tage på',
			'editProfile.activityLevels.sedentary.name' => 'Inaktiv',
			'editProfile.activityLevels.sedentary.description' => 'Lidt eller ingen motion',
			'editProfile.activityLevels.lightlyActive.name' => 'Let aktiv',
			'editProfile.activityLevels.lightlyActive.description' => 'Let motion 1-3 dage/uge',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderat aktiv',
			'editProfile.activityLevels.moderatelyActive.description' => 'Moderat motion 3-5 dage/uge',
			'editProfile.activityLevels.veryActive.name' => 'Meget aktiv',
			'editProfile.activityLevels.veryActive.description' => 'Hård motion 6-7 dage/uge',
			'editProfile.activityLevels.extremelyActive.name' => 'Ekstremt aktiv',
			'editProfile.activityLevels.extremelyActive.description' => 'Meget hård motion eller fysisk arbejde',
			'settings.title' => 'Indstillinger',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALISERING',
			'settings.sections.notifications' => 'NOTIFIKATIONER',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.localInference' => 'ANALYSE PÅ ENHED',
			'settings.sections.supportAndLegal' => 'SUPPORT & JURA',
			'settings.sections.about' => 'OM',
			'settings.sections.dangerZone' => 'FARLIG ZONE',
			'settings.sections.developer' => 'UDVIKLER',
			'settings.editProfile.title' => 'Rediger profil',
			'settings.editProfile.subtitle' => 'Opdater dine oplysninger',
			'settings.language.title' => 'Sprog',
			'settings.language.subtitle' => 'Vælg dit foretrukne sprog',
			'settings.language.searchHint' => 'Søg sprog...',
			'settings.language.noResults' => 'Ingen resultater fundet',
			'settings.heightUnit.title' => 'Højdeenhed',
			'settings.weightUnit.title' => 'Vægtenhed',
			'settings.mealReminders.title' => 'Måltidspåmindelser',
			'settings.mealReminders.subtitle' => 'Hold dig på sporet med rettidige påmindelser',
			'settings.localInference.title' => 'Måltidsanalyse på enheden',
			'settings.localInference.subtitle' => 'Fortolk understøttede måltider med Gemini Nano, før næringsindholdet beregnes',
			'settings.localInference.unavailable' => 'Ikke tilgængelig på denne enhed',
			'settings.localInference.rolloutUnavailable' => 'Understøttet hardware fundet, men denne funktion er ikke aktiveret for denne app-version',
			'settings.localInference.modelSetup' => 'Gemini Nano skal færdiggøre download, før dette kan aktiveres',
			'settings.localInference.useLocalTitle' => 'Brug analyse på enheden',
			'settings.localInference.useLocalSubtitle' => 'Valgfrit og deaktiveret som standard. Resultaterne kan være mindre pålidelige for komplekse måltider.',
			'settings.localInference.disclosureTitle' => 'Før du aktiverer analyse på enheden',
			'settings.localInference.disclosureBody' => 'Gemini Nano kan identificere ingredienser og estimere portioner på understøttede Android-enheder. Dit gennemsete forslag til ingredienser sendes til Calorify for USDA-næringsvalidering og beregning.',
			'settings.localInference.disclosureLimit1' => 'Komplekse retter, skjulte ingredienser og portionsstørrelser kan blive identificeret forkert.',
			'settings.localInference.disclosureLimit2' => 'Modellen kan være utilgængelig under download, når den er optaget, kører i baggrunden eller er begrænset af enheden.',
			'settings.localInference.disclosureLimit3' => 'Hvis den lokale fortolkning ikke kan færdiggøres, sender denne beta automatisk din oprindelige måltidsbeskrivelse til Calorify for cloud-analyse.',
			'settings.localInference.acknowledgement' => 'Jeg forstår, at jeg bør gennemse detekterede ingredienser og portioner.',
			'settings.localInference.enable' => 'Bekræft og aktiver',
			'settings.localInference.cancel' => 'Annuller',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Lyst',
			'settings.theme.dark' => 'Mørkt',
			'settings.theme.system' => 'System',
			'settings.sendFeedback.title' => 'Send feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Hjælp os med at forbedre ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} App-feedback',
			'settings.sendFeedback.emailBodyPrefix' => 'Angiv venligst din feedback nedenfor:',
			'settings.sendFeedback.appVersion' => 'App-version',
			'settings.sendFeedback.device' => 'Enhed',
			'settings.sendFeedback.osVersion' => 'OS-version',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Eksporter måltidshistorik',
			'settings.exportMealHistory.subtitle' => 'Del en CSV med dine registrerede måltider',
			'settings.exportMealHistory.shareText' => 'Din Calorify-måltidshistorik',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Kunne ikke eksportere måltidshistorik: ${error}',
			'settings.clearAllData.title' => 'Slet alle data',
			'settings.clearAllData.subtitle' => 'Slet permanent alle dine oplysninger',
			'settings.clearAllData.confirmationTitle' => 'Slette alle data?',
			'settings.clearAllData.confirmationMessage' => 'Denne handling kan ikke fortrydes. Alle dine registrerede måltider, favoritter og profilindstillinger vil blive permanent slettet.',
			'settings.clearAllData.cancel' => 'Annuller',
			'settings.clearAllData.clearEverything' => 'Slet alt',
			'settings.debugOptions.title' => 'Fejlfindingindstillinger',
			'settings.developerModeEnabled' => 'Udviklertilstand aktiveret!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Se og administrer tilladelser',
			'settings.healthConnect.unavailable.title' => 'Health Connect ikke tilgængelig',
			'settings.healthConnect.unavailable.description' => 'Health Connect er ikke tilgængelig på denne enhed. Installer Health Connect fra Play Store (Android 9+) eller opdater til Android 14+.',
			'settings.healthConnect.permissions.title' => 'Tilladelser',
			'settings.healthConnect.permissions.description' => 'Følgende tilladelser anmodes om for at give Health Connect-integration:',
			'settings.healthConnect.permissions.granted' => 'Givet',
			'settings.healthConnect.permissions.notGranted' => 'Ikke givet',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Læs totale forbrændte kalorier',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Giver appen mulighed for at læse dine totale forbrændte kalorier fra Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Denne tilladelse bruges til at vise din daglige kalorieförbrænding i appen og hjælper dig med at forstå dit samlede energiforbrug i løbet af dagen.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Læs ernæringsdata',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Giver appen mulighed for at læse ernæringsdata fra Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Denne tilladelse gør det muligt for appen at læse ernæringsoplysninger, der kan være registreret af andre apps tilsluttet Health Connect, og giver et samlet overblik over din ernæring.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Skriv ernæringsdata',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Giver appen mulighed for at skrive ernæringsdata til Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Denne tilladelse gør det muligt for appen at synkronisere dine registrerede måltider til Health Connect, så dine ernæringsdata bliver tilgængelige for andre sundheds- og træningsapps, du bruger.',
			'settings.healthConnect.managePermissions' => 'Administrer tilladelser',
			'settings.healthConnect.openSettings' => 'Åbn Health Connect-indstillinger',
			'settings.healthConnect.requestPermissions' => 'Anmod om tilladelser',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Anmodning om tilladelser blev annulleret eller fejlede. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillingerne.',
			'settings.healthConnect.permissionRequestFailed' => 'Kan ikke anmode om tilladelser. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillingerne.',
			'settings.healthConnect.requestingPermissions' => 'Anmoder...',
			'settings.about.title' => 'Om',
			'settings.about.tagline' => 'Hurtig, gratis og privatlivsfokusseret kalorieindsigt',
			'settings.about.ourStory.title' => 'Vores historie',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} blev født af en enkel frustration: de fleste kalorietræningsapps er enten for komplicerede, kræver konstant manuel indtastning, koster høje abonnementer eller går på kompromis med privatlivet.\n\nSom solo-udvikler ville jeg lave noget enklere og mere retfærdigt — en app, der bruger AI til at reducere indsatsen, forbliver hurtig og gratis at bruge, og behandler dine sundhedsdata med respekt.\n\n${appLabel} er den app, jeg ønskede fandtes: ingen konti, ingen tracking, ingen annoncer — bare klare, praktiske indsigter og dine sundhedsmål.',
			'settings.about.privacy.title' => 'Dit privatliv betyder noget',
			'settings.about.privacy.description' => 'Privatliv er ikke en eftertanke — det er et designprincip. Det betyder i praksis:',
			'settings.about.privacy.noAccounts' => 'Ingen konti nødvendige\nBrug appen med det samme. Ingen tilmeldinger, ingen identiteter.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Ingen adfærds­overvågning\n${appLabel} overvåger ikke din aktivitet, opbygger ikke brugermodeller og følger dig ikke på tværs af apps eller websites.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Reklamefrit design\n${appLabel} er bygget til at fungere uden annoncer eller datadrevet monetarisering.',
			'settings.about.privacy.noDataSelling' => 'Ingen salg af data\nDine sundhedsdata sælges eller deles aldrig med tredjeparter.',
			'settings.about.privacy.localStorage' => 'Lokal lagring i første række\nDine data bliver på din enhed.',
			'settings.about.privacy.privacyPolicy' => 'Privatlivspolitik',
			'settings.about.developer.title' => 'Udviklet af en solo-udvikler',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} er bygget og vedligeholdt af én solo-udvikler med fokus på roligt, privatlivsrespektende sundhedssoftware.\n\nFeedback læses personligt og hjælper med at forme appens retning.',
			'settings.about.developer.website' => 'Hjemmeside',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Nyder du ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Din feedback gør ${appLabel} bedre for alle.',
			'settings.about.feedback.rateApp' => 'Giv vurdering på Play Store',
			'settings.about.feedback.sendFeedback' => 'Send feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Hold dig på sporet med påmindelser',
			'reminders.description' => 'Få blide påmindelser om at registrere dine måltider og holde fast i dine ernæringsmål',
			'reminders.notificationsEnabled' => 'Notifikationer aktiveret',
			'reminders.notificationsDisabled' => 'Notifikationer deaktiveret',
			'reminders.enabledSubtitle' => 'Du vil modtage måltidspåmindelser',
			'reminders.disabledSubtitle' => 'Aktivér notifikationer for at få måltidspåmindelser',
			'reminders.mealReminders' => 'Måltidspåmindelser',
			'reminders.breakfast' => 'Morgenmad',
			'reminders.lunch' => 'Frokost',
			'reminders.dinner' => 'Aftensmad',
			'reminders.snack' => 'Mellemmåltid',
			'reminders.unknown' => 'Ukendt',
			'reminders.change' => 'Skift',
			'reminders.enableNotifications' => 'Aktivér notifikationer',
			'reminders.skipForNow' => 'Spring over for nu',
			'reminders.saveChanges' => 'Gem ændringer',
			'reminders.enabledSuccessfully' => 'Notifikationer aktiveret!',
			'reminders.permissionDenied' => 'Tilladelse til notifikationer afvist',
			'reminders.errorEnabling' => ({required Object error}) => 'Fejl ved aktivering af notifikationer: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Fejl ved fuldførelse af opsætning: ${error}',
			'notifications.breakfast.title' => 'Morgenmadstid! 🍳',
			'notifications.breakfast.body' => 'Glem ikke at registrere din morgenmad',
			'notifications.lunch.title' => 'Frokosttid! 🥗',
			'notifications.lunch.body' => 'Tid til at registrere din frokost',
			'notifications.dinner.title' => 'Aftensmadstid! 🍽️',
			'notifications.dinner.body' => 'Glem ikke at registrere din aftensmad',
			'notifications.snack.title' => 'Snacktid! 🍎',
			'notifications.snack.body' => 'Tid til en sund snack',
			'notifications.test.title' => 'Testnotifikation',
			'login.title' => 'Log ind',
			'login.signInWithGoogle' => 'Log ind med Google',
			'login.signInFailed' => 'Google-login mislykkedes eller blev annulleret.',
			'disclaimer.pleaseNote' => 'Bemærk venligst',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} giver estimerede ernæringsoplysninger. Nøjagtigheden afhænger af dine input og madvarianter. Brug som vejledning, ikke som endelig kilde. Kontakt en professionel for personlig kostrådgivning.',
			'disclaimer.snap.portionSize.title' => 'Portionsstørrelse',
			'disclaimer.snap.portionSize.description' => 'Nøjagtigheden af estimaterne afhænger i høj grad af din korrekte vurdering af portionsstørrelsen.',
			'disclaimer.snap.preparationMethods.title' => 'Tilberedningsmetoder',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Tilberedningsmetoder kan ændre madens næringsindhold betydeligt. ${appLabel}\'s estimater tager ikke altid højde for disse variationer.',
			'disclaimer.snap.ingredients.title' => 'Ingredienser',
			'disclaimer.snap.ingredients.description' => 'Komplekse retter med mange skjulte ingredienser kan give mindre nøjagtige estimater.',
			'disclaimer.snap.databaseLimitations.title' => 'Databasebegrænsninger',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}\'s fødevaredatabase er omfattende, men indeholder muligvis ikke alle fødevarer eller variationer.',
			'disclaimer.weightEstimate.title' => 'Om vægtestimatet',
			'disclaimer.weightEstimate.description' => 'Den prognosticerede vægtændring er et teoretisk estimat baseret på en simpel kalorie-ind vs. kalorie-ud-model. Den er kun tænkt som motivationsvejledning, ikke som en forudsigelse af din faktiske vægt.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalorienøjagtighed',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Dette estimat er kun så nøjagtigt som din registrerede kalorieindtagelse og -forbrug. Unøjagtig registrering giver et unøjagtigt skøn.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologiske faktorer',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Faktisk vægttab/-stigning påvirkes af stofskifte, hormoner, søvn, stress, væskebalance og andre individuelle faktorer, som ${appLabel} ikke kan måle.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Vandvægt og udsving',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normal daglig vægt kan svinge betydeligt pga. væskeretention, fordøjelse og timing. Estimatet tager ikke højde for disse daglige ændringer.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Professionel vejledning',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Brug ikke dette estimat til medicinske beslutninger. Kontakt altid en sundhedsprofessionel eller registreret diætist for personlig vægtstyringsrådgivning.',
			'disclaimer.healthMetrics.description' => 'Disse målinger hjælper dig med at forstå din krops energibehov og vejlede dine ernæringsmål.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR) er det antal kalorier, din krop forbrænder i hvile for at opretholde basale funktioner som vejrtrækning og cirkulation. BMR afhænger af din alder, køn, højde og vægt. En højere BMR betyder, at din krop naturligt forbrænder flere kalorier i hvile, ofte på grund af mere muskelmasse, yngre alder eller at være mand. En lavere BMR indikerer typisk mindre muskelmasse, højere alder eller at være kvinde.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE) er de samlede kalorier, du forbrænder pr. dag, inkl. din BMR plus kalorier fra fysisk aktivitet og daglig bevægelse. TDEE afhænger af din BMR og aktivitetsniveau. En højere TDEE betyder, at du forbrænder flere kalorier samlet, normalt pga. mere aktivitet eller højere BMR. En lavere TDEE antyder mindre daglig aktivitet eller lavere BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Dagsmål',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Dagsmål er dit anbefalede daglige kalorieindtag baseret på din TDEE og dit vægtmål. For vægttab indtager du færre kalorier end din TDEE. For vedligehold matcher du din TDEE. For vægtøgning indtager du flere kalorier end din TDEE. Dette hjælper dig med at nå din ønskede vægtændring i et sundt tempo.',
			'disclaimer.calorieExpenditure.title' => 'Estimat af kalorieforbrug',
			'disclaimer.calorieExpenditure.description' => 'Når Health Connect-data ikke er tilgængelige, estimerer vi dagens forbrændte kalorier ved hjælp af dit BMR og aktivitetsniveau (TDEE), skaleret efter den del af dagen, der er gået.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Hvordan estimatet beregnes',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Vi beregner din TDEE (baseret på din profil) og ganger den med den passerede del af dagen (timer + minutter) / 24 for at estimere forbrændte kalorier indtil nu.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Professionel vejledning',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Brug ikke dette estimat til medicinske beslutninger. Kontakt altid en sundhedsprofessionel eller registreret diætist for personlig vægtstyringsrådgivning.',
			_ => null,
		} ?? switch (path) {
			'localNutritionPhase4.nutritionBundled' => 'Nutrition matched from the downloaded USDA pack',
			'localNutritionPhase4.nutritionCached' => 'Nutrition matched from the on-device USDA cache',
			'localNutritionPhase4.nutritionMixed' => 'Nutrition combined from downloaded, cached, and remote USDA rows',
			'localNutritionPhase4.calculationLocal' => 'Calories and macros calculated on this device',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: downloaded USDA pack',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: on-device USDA cache',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: USDA row fetched through Calorify',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: deterministic nutrition constant',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · dataset ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'Smaller',
			'localNutritionPhase4.portionEstimated' => 'Estimated',
			'localNutritionPhase4.portionLarger' => 'Larger',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Which portion was closest for ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Which meal was this?',
			'localNutritionPhase4.localNutritionTip' => 'Calculated from verified local nutrition data.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Download nutrition data',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Use verified USDA rows and deterministic calculation on this device when every ingredient is covered.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Local nutrition data is not available for this app release.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'No verified nutrition pack is downloaded.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Downloading and verifying nutrition data…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Pack ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} cached USDA rows · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Check for update',
			'localNutritionPhase4.offlineNutritionClear' => 'Clear local nutrition data',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Clear local nutrition data?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'This removes the downloaded USDA pack and lookup cache. Logged meals keep the exact nutrition snapshot used when they were saved.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Clear data',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Could not download and verify local nutrition data: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Local nutrition data cleared',
			'common.close' => 'Luk',
			'common.kContinue' => 'Fortsæt',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Nyder du ${appLabel}?',
			'feedbackRating.yes' => 'Ja, jeg er glad for den',
			'feedbackRating.no' => 'Ikke rigtig',
			'feedbackRating.rateStepHeading' => 'Giv bedømmelse på Play Store',
			'feedbackRating.emailStepHeading' => 'Send feedback via e-mail',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'En hurtig vurdering hjælper andre med at finde ${appLabel} og holder udviklingen i gang. Vil du give en vurdering?',
			'feedbackRating.shareFeedbackViaEmail' => 'Din feedback former det, der kommer næste — vi læser alle beskeder. Vil du dele dine tanker via e-mail?',
			'feedbackRating.rateCta' => 'Giv vurdering på Play Store',
			'feedbackRating.maybeLater' => 'Måske senere',
			'feedbackRating.sendFeedback' => 'Giv feedback',
			'feedbackRating.noThanks' => 'Nej tak',
			'feedbackRating.aboutUsDescription' => 'Lavede med omtanke af et lille team. Vi fokuserer på privatliv, enkelhed og at hjælpe dig med bedre spisevaner.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Nysgerrig efter hvem der står bag ${appLabel}? Se ',
			'feedbackRating.aboutUsLinkLabel' => 'Om os',
			'feedbackRating.thankYouMessage' => 'Tak! Vi spørger igen en anden gang.',
			'health.syncFailed' => 'Kunne ikke synkronisere til Health Connect',
			'health.mealSynced' => 'Måltid synkroniseret med Health Connect',
			_ => null,
		};
	}
}
