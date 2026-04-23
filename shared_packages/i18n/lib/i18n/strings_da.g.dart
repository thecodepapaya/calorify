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
	@override String get rateLimitExceeded => 'Du har foretaget for mange forespørgsler. Vent venligst et øjeblik, og prøv igen.';
	@override String get networkError => 'Netværksfejl. Tjek venligst din internetforbindelse.';
	@override String get unknownError => 'Noget gik galt. Prøv venligst igen senere.';
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
	@override String get subtitle => 'Din personlige ernæringseftersyn drevet af AI';
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
	@override String get dashboard => 'Instrumentbræt';
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
	@override String get emptyMessage => 'Tag et billede af dit sidste måltid for at logge her.';
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
	@override String get editMeal => 'Rediger Måltid';
	@override String get addMeal => 'Tilføj Måltid';
	@override String get saveMeal => 'Gem Måltid';
	@override String get save => 'Gem';
	@override String get mealName => 'Måltid Navn';
	@override String get mealNameHint => 'f.eks. Røræg med toast';
	@override String get mealQuantity => 'Måltid Mængde';
	@override String get mealQuantityHint => 'f.eks. 1 skål, 2 skiver';
	@override String get timeOfMeal => 'Tidspunkt for Måltid';
	@override String get timeOfMealHint => 'Vælg det tidspunkt, hvornår du havde dit måltid';
	@override String get mealType => 'Måltidstype';
	@override late final _TranslationsMealNutritionDa nutrition = _TranslationsMealNutritionDa._(_root);
	@override late final _TranslationsMealDeleteConfirmationDa deleteConfirmation = _TranslationsMealDeleteConfirmationDa._(_root);
	@override String get addedToLog => 'Måltid tilføjet til din log!';
	@override String couldNotAdd({required Object error}) => 'Kunne ikke tilføje måltid: ${error}';
	@override String get savedSuccessfully => 'Måltid tilføjet!';
	@override String get updatedSuccessfully => 'Måltid opdateret!';
	@override String errorSaving({required Object error}) => 'Kunne ikke gemme måltidet: ${error}';
	@override String get removedFromFavorites => 'Fjernet fra favoritter!';
	@override String get savedAsFavorite => 'Måltid gemt som favorit!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Kunne ikke opdatere favorit: ${error}';
	@override String failedToProcess({required Object error}) => 'Kunne ikke behandle: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Kunne ikke behandle billede: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Fejl ved komprimering af billede: ${error}';
	@override String get failedToSave => 'Kunne ikke gemme data. Prøv igen.';
	@override String get skip => 'Spring over';
	@override late final _TranslationsMealVariationDa variation = _TranslationsMealVariationDa._(_root);
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
	@override String get searchEmptySubtitle => 'Prøv et andet måltidsnavn, en anden mængde eller en anden måltidstype.';
	@override String get sortLabel => 'Sorter favoritter';
	@override String get undo => 'Fortryd';
	@override String removed({required Object name}) => 'Fjernet ${name} fra favoritterne';
	@override late final _TranslationsFavoritesSortOptionsDa sortOptions = _TranslationsFavoritesSortOptionsDa._(_root);
}

// Path: profile
class _TranslationsProfileDa implements TranslationsProfileEn {
	_TranslationsProfileDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Ingen profildata fundet';
	@override String get yourProfile => 'Din Profil';
	@override String get viewAndManage => 'Se og administrer dine sundhedsoplysninger';
	@override late final _TranslationsProfileSectionsDa sections = _TranslationsProfileSectionsDa._(_root);
	@override String get gender => 'Køn';
	@override String get height => 'Højde';
	@override String get weight => 'Vægt';
	@override String get age => 'Alder';
	@override String get weightGoal => 'Vægtmål';
	@override String get targetWeight => 'Målvægt';
	@override String get activityLevel => 'Aktivitetsniveau';
	@override String get healthMetrics => 'Sundhedsmetrikker';
	@override String get notSet => 'Ikke indstillet';
	@override String get years => 'år';
	@override String get updatedSuccessfully => 'Profil opdateret med succes!';
	@override late final _TranslationsProfileCalculatedValuesDa calculatedValues = _TranslationsProfileCalculatedValuesDa._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreDa implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sundhedsscore';
	@override String get whyThisScore => 'Hvorfor denne score?';
	@override String get note => 'Denne score er et AI estimat baseret på de identificerede ingredienser og næringsmæssig tæthed. Konsulter altid en professionel for diætvejledning.';
	@override String get unhealthy => 'Usund';
	@override String get healthy => 'Sund';
	@override String get neutral => 'Neutral';
}

// Path: editProfile
class _TranslationsEditProfileDa implements TranslationsEditProfileEn {
	_TranslationsEditProfileDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rediger Profil';
	@override late final _TranslationsEditProfileSectionsDa sections = _TranslationsEditProfileSectionsDa._(_root);
	@override String get gender => 'Køn';
	@override String get dateOfBirth => 'Fødselsdato';
	@override String get height => 'Højde';
	@override String get weight => 'Vægt';
	@override String get weightGoal => 'Vægtmål';
	@override String get activityLevel => 'Aktivitetsniveau';
	@override String get metric => 'Metisk';
	@override String get imperial => 'Imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metisk (cm)';
	@override String get imperialFtIn => 'Imperial (ft/in)';
	@override String get metricKg => 'Metisk (kg)';
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
	@override String get title => 'Hold dig på sporet med påmindelser';
	@override String get description => 'Få blide påmindelser om at logge dine måltider og forblive konsekvent med dine ernæringsmål';
	@override String get notificationsEnabled => 'Notifikationer Aktiveret';
	@override String get notificationsDisabled => 'Notifikationer Deaktiveret';
	@override String get enabledSubtitle => 'Du vil modtage måltidspåmindelser';
	@override String get disabledSubtitle => 'Aktivér notifikationer for at få måltidspåmindelser';
	@override String get mealReminders => 'Måltidspåmindelser';
	@override String get breakfast => 'Morgenmad';
	@override String get lunch => 'Frokost';
	@override String get dinner => 'Aftensmad';
	@override String get snack => 'Snack';
	@override String get unknown => 'Ukendt';
	@override String get change => 'Ændre';
	@override String get enableNotifications => 'Aktivér Notifikationer';
	@override String get skipForNow => 'Spring over for nu';
	@override String get saveChanges => 'Gem Ændringer';
	@override String get enabledSuccessfully => 'Notifikationer aktiveret med succes!';
	@override String get permissionDenied => 'Notifikations tilladelse nægtet';
	@override String errorEnabling({required Object error}) => 'Fejl ved aktivering af notifikationer: ${error}';
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
	@override String get title => 'Log Ind';
	@override String get signInWithGoogle => 'Log ind med Google';
	@override String get signInFailed => 'Google Login fejlede eller blev annulleret.';
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
	@override String get yes => 'Ja, jeg nyder den';
	@override String get no => 'Ikke rigtigt';
	@override String get rateStepHeading => 'Bedøm os i Google Play';
	@override String get emailStepHeading => 'Giv feedback via e-mail';
	@override String soloDevMessage({required Object appLabel}) => 'En hurtig vurdering hjælper andre med at finde ${appLabel} og holder udviklingen i gang. Vil du tage et øjeblik til at give en vurdering?';
	@override String get shareFeedbackViaEmail => 'Din feedback former, hvad der kommer fremover — vi læser hver besked. Vil du gerne dele dine tanker via e-mail?';
	@override String get rateCta => 'Bedøm i Play Butik';
	@override String get maybeLater => 'Måske senere';
	@override String get sendFeedback => 'Send os feedback';
	@override String get noThanks => 'Nej tak';
	@override String get aboutUsDescription => 'Skabt med omhu af et lille team. Vi er fokuserede på dit privatliv, enkelhed og på at hjælpe dig med at opbygge sundere spisevaner.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Nysgerrig efter, hvem der står bag ${appLabel}? Se ';
	@override String get aboutUsLinkLabel => 'Om os';
	@override String get thankYouMessage => 'Tak! Vi spørger igen på et andet tidspunkt.';
}

// Path: health
class _TranslationsHealthDa implements TranslationsHealthEn {
	_TranslationsHealthDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Kunne ikke synkronisere med Health Connect';
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
	@override String get description => 'Køn hjælper os med nøjagtigt at beregne din basale stofskiftehastighed (BMR).';
	@override String get next => 'Næste';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightDa implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvor høj er du?';
	@override String get description => 'Din højde hjælper os med nøjagtigt at beregne din BMI og energibehov.';
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
	@override String get currentDescription => 'Din nuværende vægt er essentiel for at tilpasse dine daglige mål.';
	@override String get targetTitle => 'Hvad er din målvægt?';
	@override String get targetDescription => 'At sætte et mål for vægten hjælper os med at bestemme din langsigtede plan.';
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
	@override String get description => 'Din alder hjælper os med nøjagtigt at beregne dit kaloriebehov.';
	@override String get next => 'Næste';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleDa implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Undervejet';
	@override String get healthy => 'Sund';
	@override String get overweight => 'Overvægtig';
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
	@override String get description => 'Vælg det mål, der bedst beskriver, hvad du ønsker at opnå';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelDa implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvor aktiv er du?';
	@override String get description => 'Dette hjælper os med mere nøjagtigt at beregne dit daglige kaloriebehov';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectDa implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Forbind med Health Connect';
	@override String get description => 'Synkroniser din sundhedsdata for bedre indsigt og automatisk kalorieregistrering';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingDa automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingDa._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsDa progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsDa._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationDa seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationDa._(_root);
	@override String get connected => 'Health Connect Forbundet';
	@override String get notConnected => 'Health Connect Ikke Forbundet';
	@override String get setup => 'Opsæt Health Connect';
	@override String get skipForNow => 'Spring over for nu';
	@override String get statusConnected => 'Health Connect er forbundet.';
	@override String get statusSuccess => 'Health Connect er blevet forbundet med succes!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Adgang nægtet. Aktiver venligst Health Connect-tilladelser fra din telephones indstillinger for ${appLabel}.';
	@override String statusError({required Object error}) => 'Fejl under opsætning af Health Connect: ${error}';
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
	@override String get logMore => 'Registrer flere måltider i løbet af de næste par dage for at få dine personlige AI-indsigter.';
	@override String get loading => 'Indlæser din opsummering...';
	@override String mealCount({required Object count}) => '${count} måltider registreret';
	@override String macroBalanceScore({required Object score}) => 'Balance-score ${score}';
	@override String get topFoods => 'Topfødevarer';
	@override String get trendUp => 'Kalorieindtag stiger';
	@override String get trendDown => 'Kalorieindtag falder';
	@override String get trendSteady => 'Kalorieindtag er stabilt';
	@override String generatedAt({required Object time}) => 'Opdateret ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalDa implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sæt Dit Daglige Mål';
	@override String get titleSet => 'Dit Daglige Mål';
	@override String get description => 'Klar til at påbegynde din wellnessrejse? Sæt dit daglige kalorie mål nedenfor for at kickstarte din fremgang.';
	@override String get descriptionSet => 'Dit kompas er indstillet! Dette er dit daglige kaloriemål for at vejlede dig.';
	@override String get yourGoal => 'Dit Mål';
	@override String get goal => 'Mål';
	@override String get dailyCalories => 'Daglige kalorier (kcal)';
	@override String get setGoal => 'Sæt Mål';
	@override String get intake => 'Indtagelse';
	@override String get burned => 'Forbrændt';
	@override String get weightImpact => 'Vægtpåvirkning';
	@override String get estLoss => 'Est. tab af';
	@override String get estGain => 'Est. gevinst af';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryDa implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Daglig Oversigt';
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Kulhydrater';
	@override String get protein => 'Protein';
	@override String get fat => 'Fedt';
	@override String get fiber => 'Fiber';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Diagram over makronæringsstoffer';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressDa implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagens Makrofordeling';
	@override String get target => 'Mål';
	@override String get current => 'Nuværende';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryDa implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => '7-Dages Makrohistorik';
	@override String get noHistoryYet => 'Ingen historie endnu';
	@override String get startLogging => 'Begynd at logge måltider for at se dine\n7-dages makrotrends her';
}

// Path: home.mealLog
class _TranslationsHomeMealLogDa implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Loggede Måltider';
	@override String get emptyMessage => 'Tag et billede af dit sidste måltid for at logge her.';
	@override String get noMealsToday => 'Ingen måltider registreret for i dag';
	@override String get seeAllMeals => 'Se alle måltider';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionDa implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hurtig Tilføjelse med AI';
	@override String get description => 'Beskriv dit måltid, og lad AI håndtere detaljerne.';
	@override String get hint => 'f.eks. Til morgenmad havde jeg en stor skål havregryn med en skivet banan og en ske valle ...';
	@override String get analyzeMeal => 'Analyser måltid';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsDa implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritmåltider';
	@override String get description => 'Tilsæt hurtigt et af dine favoritmåltider.';
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
	@override String get title => 'Tag & Spor Dit Måltid';
	@override String get description => 'Brug dit kamera til at tage et billede af din mad til AI-analyse.';
	@override String get openCamera => 'Åbn Kamera';
	@override String get gallery => 'Galleri';
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
	@override String get fiber => 'Fiber (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationDa implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Slet Måltid';
	@override String get message => 'Er du sikker på, at du vil slette denne måltidsindtastning?';
	@override String get cancel => 'Annuller';
	@override String get delete => 'Slet';
}

// Path: meal.variation
class _TranslationsMealVariationDa implements TranslationsMealVariationEn {
	_TranslationsMealVariationDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Spørgsmål ${current} af ${total}';
	@override String get noVariationsAvailable => 'Ingen variationer tilgængelige';
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
	@override String get basicInformation => 'GRUNDLÆGGENDE OPLYSNINGER';
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
	@override String get dailyGoal => 'Dagligt Mål';
	@override String get calPerDay => 'kal/dag';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsDa implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSONLIGE OPLYSNINGER';
	@override String get physicalMeasurements => 'FYSISKE MÅLINGER';
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
	@override String get supportAndLegal => 'SUPPORT & JURIDISK';
	@override String get about => 'OM';
	@override String get dangerZone => 'FAREZONE';
	@override String get developer => 'UDVIKLER';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileDa implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rediger Profil';
	@override String get subtitle => 'Opdater dine personlige oplysninger';
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
	@override String get title => 'Højde Enhed';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitDa implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vægt Enhed';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersDa implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Måltidspåmindelser';
	@override String get subtitle => 'Hold dig på sporet med rettidige alarmer';
}

// Path: settings.theme
class _TranslationsSettingsThemeDa implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Lys';
	@override String get dark => 'Mørk';
	@override String get system => 'System';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackDa implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Send Feedback';
	@override String subtitle({required Object appLabel}) => 'Hjælp os med at forbedre ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} App Feedback';
	@override String get emailBodyPrefix => 'Venligst giv din feedback nedenfor:';
	@override String get appVersion => 'App Version';
	@override String get device => 'Enhed';
	@override String get osVersion => 'OS Version';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryDa implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eksporter måltidshistorik';
	@override String get subtitle => 'Del en CSV med dine registrerede måltider';
	@override String get shareText => 'Din Calorify-eksport af måltidshistorik';
	@override String failed({required Object error}) => 'Kunne ikke eksportere måltidshistorik: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataDa implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Slet Al Data';
	@override String get subtitle => 'Slet alle dine oplysninger uigenkaldeligt';
	@override String get confirmationTitle => 'Slet Al Data?';
	@override String get confirmationMessage => 'Denne handling kan ikke fortrydes. Alle dine loggede måltider, favoritter og profilindstillinger vil blive permanent slettet.';
	@override String get cancel => 'Annuller';
	@override String get clearEverything => 'Slet Alt';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsDa implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug Indstillinger';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectDa implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sundhedsforbindelse';
	@override String get subtitle => 'Se og administrer tilladelser';
	@override late final _TranslationsSettingsHealthConnectUnavailableDa unavailable = _TranslationsSettingsHealthConnectUnavailableDa._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsDa permissions = _TranslationsSettingsHealthConnectPermissionsDa._(_root);
	@override String get managePermissions => 'Administrer Tilladelser';
	@override String get openSettings => 'Åbn sundhedsforbindelsesindstillinger';
	@override String get requestPermissions => 'Anmod om tilladelser';
	@override String get permissionRequestCancelledOrFailed => 'Anmodningen om tilladelser blev annulleret eller mislykkedes. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillinger.';
	@override String get permissionRequestFailed => 'Kunne ikke anmode om tilladelser. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillinger.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutDa implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om';
	@override String get tagline => 'Hurtig, gratis og privatlivsorienteret kaloriebevidsthed';
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
	@override String get body => 'Glem ikke at logge din morgenmad';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchDa implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Frokosttid! 🥗';
	@override String get body => 'Tid til at logge din frokost';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerDa implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aftensmadstid! 🍽️';
	@override String get body => 'Glem ikke at logge din aftensmad';
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
	@override String description({required Object appLabel}) => '${appLabel} giver estimeret ernæringsinfo. Nøjagtighed afhænger af din input og fødevarevariationer. Brug det som en vejledning, ikke en definit kilde. Konsulter en professionel for personlig kostrådgivning.';
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
	@override String get title => 'Om Vægtestimering';
	@override String get description => 'Den forventede vægtændring er et teoretisk estimat baseret på den simple kalorie-inde vs. kalorie-ude model. Det er beregnet til motivationsvejledning, ikke som en forudsigelse af din faktiske vægt.';
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
	@override String get title => 'Anslået kalorieforbrug';
	@override String get description => 'Når Health Connect-data ikke er tilgængelige, estimerer vi, hvor mange kalorier du har forbrændt i dag ved at bruge din basale stofskiftehastighed (BMR) og dit aktivitetsniveau (TDEE), tilpasset den del af dagen, der er passeret.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedDa howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedDa._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDa professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDa._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionDa implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intelligent Madgenkendelse';
	@override String get description => 'Tag et billede og lad AI identificere dit måltid';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisDa implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI Analyse';
	@override String get description => 'Få øjeblikkelig ernæringsinformation fra dine beskrivelser';
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
	@override String get underweight => 'Undervejet';
	@override String get healthyWeight => 'Sund vægt';
	@override String get overweight => 'Overvægtig';
	@override String get obese => 'Fedme';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesDa implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Vi kan hjælpe dig med at opbygge en sund plan for at nå en balanceret vægt med næringsrige måltider.';
	@override String get healthy => 'Godt klaret! Du er inden for en sund rækkevidde. Vi hjælper dig med at opretholde din vitalitet og energiniveau.';
	@override String overweight({required Object appLabel}) => '${appLabel} vil forenkle din rejse med AI-drevet tracking for at hjælpe dig med at nå dit mål komfortabelt.';
	@override String get obese => 'Vi er her for at støtte dig med personlig vejledning og bæredygtige strategier for dine sundhedsmål.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingDa implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatisk Kalorieregistrering';
	@override String get description => 'Registrer kalorier forbrugt fra dine fitness-apps';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsDa implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fremskridtsindsigt';
	@override String get description => 'Få detaljerede indsigter i dine sundhedstræk';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationDa implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Problemfri Integration';
	@override String get description => 'Synkroniser data fra dine yndlings sundhedsapps';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessDa implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du er ikke alene';
	@override String get genericMessage => 'Forskning viser, at konsekvent sporing er den vigtigste indikator for langsigtet succes.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'For en ${age} år gammel ${gender} der ønsker at ${goal}, er konsekvent sporing den vigtigste indikator for succes.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} gør det 10 gange lettere end at gøre det manuelt.';
	@override String get getStartedTitle => 'Klar til at komme i gang?';
	@override String get tipPhoto => 'Tag et billede af dine måltider for øjeblikkelig analyse';
	@override String get tipConsistency => 'Log konsekvent for at se meningsfuld fremgang';
	@override String get tipProgress => 'Hold øje med dine fremskridt dagligt for at forblive motiveret';
	@override String get button => 'Lad os gå';
	@override String get defaultGender => 'individ';
	@override String get defaultGoal => 'en sundere dig';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileDa implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din Sundhedsprofil';
	@override String bmiDescription({required Object bmi}) => 'Baseret på dine målinger, er din BMI ${bmi}.';
	@override String get finalizeDescription => 'Lad os færdiggøre din profil for at tilpasse din oplevelse.';
	@override String get goalGain => 'tage på';
	@override String get goalLose => 'tabe';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'For at nå dit mål, skal du ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Du er på din målvægt! Vi hjælper dig med at opretholde den.';
	@override String get button => 'Lad os gå';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleDa implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fremragende Start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har taget det første skridt mod ${goalText}. Da du er ${activityText}, vil ${appLabel} justere dine mål til at matche din livsstil.';
	@override String get personalizedTargets => 'Personlige kaloriemål';
	@override String get aiMealDetection => 'AI-drevet måltidsdetektion';
	@override String get macroBreakdowns => 'Detaljerede makronæringsopgørelser';
	@override String get button => 'Lad os gå';
	@override String get defaultGoal => 'dine mål';
	@override String get defaultActivity => 'aktiv';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightDa implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tabe Vægt';
	@override String get description => 'Skab et kalorieunderskud for at tabe vægt';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightDa implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Opretholde Vægt';
	@override String get description => 'Oprethold din nuværende vægt';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightDa implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tage På Vægt';
	@override String get description => 'Skab et kalorieoverskud for at tage på vægt';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryDa implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Stillestående';
	@override String get description => 'Lidt til ingen motion';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveDa implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Let Aktiv';
	@override String get description => 'Let motion 1-3 dage/uge';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveDa implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderat Aktiv';
	@override String get description => 'Moderat motion 3-5 dage/uge';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveDa implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Meget Aktiv';
	@override String get description => 'Hård motion 6-7 dage/uge';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveDa implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ekstremt Aktiv';
	@override String get description => 'Meget hård motion, fysisk arbejde';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableDa implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect utilgængelig';
	@override String get description => 'Health Connect er ikke tilgængelig på denne enhed. Installer venligst Health Connect fra Play Store (Android 9+) eller opdater til Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsDa implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tilladelser';
	@override String get description => 'Følgende tilladelser anmodes om for at give integration med Sundhedsforbindelse:';
	@override String get granted => 'Givet';
	@override String get notGranted => 'Ikke Givet';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDa caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDa._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadDa nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadDa._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteDa nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteDa._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryDa implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vores Historie';
	@override String content({required Object appLabel}) => '${appLabel} opstod fra en simpel frustration: de fleste kaloritæknings-apps er enten alt for komplicerede, kræver konstant manuel indtastning, tager høje abonnementafgifter, eller indskrænker på privatlivets fred.\n\nSom en uafhængig udvikler ønskede jeg at bygge noget enklere og mere retfærdigt — en app, der bruger AI til at reducere indsatsen, forbliver hurtig og gratis at bruge, og behandler dine sundhedsdata med respekt.\n\n${appLabel} er den app, jeg ville ønske fandtes: ingen konti, ingen sporing, ingen annoncer — blot klare, praktiske indsigter og dine sundhedsmål.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyDa implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dit Privatliv Tæller';
	@override String get description => 'Privatliv er ikke en eftertanke — det er et designprincip. Her er hvad det betyder i praksis:';
	@override String get noAccounts => 'Ingen konti kræves\nBrug appen med det samme. Ingen tilmeldinger, ingen identiteter.';
	@override String noTracking({required Object appLabel}) => 'Ingen adfærdssporing\n${appLabel} overvåger ikke din aktivitet, opbygger brugsprofiler eller sporer dig på tværs af apps eller hjemmesider.';
	@override String noAds({required Object appLabel}) => 'Annoncefri fra grunden\n${appLabel} er bygget til at fungere uden annoncer eller datadrevet monetisering.';
	@override String get noDataSelling => 'Intet datasalg\nDine sundhedsdata sælges aldrig eller deles med tredjeparter.';
	@override String get localStorage => 'Lokalt først lagring\nDine data forbliver på din enhed.';
	@override String get privacyPolicy => 'Privatlivspolitik';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperDa implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bygget af en Uafhængig Udvikler';
	@override String description({required Object appLabel}) => '${appLabel} er bygget og vedligeholdt af en enkelt uafhængig udvikler, der fokuserer på at skabe rolig, privatlivsrespekterende sundhedssoftware.\n\nFeedback læses personligt og hjælper med at forme retningen for appen.';
	@override String get website => 'Hjemmeside';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackDa implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Nyder du ${appLabel}?';
	@override String description({required Object appLabel}) => 'Din feedback hjælper med at forbedre ${appLabel} for alle.';
	@override String get rateApp => 'Bedøm på Play Store';
	@override String get sendFeedback => 'Send Feedback';
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
	@override String description({required Object appLabel}) => 'Tilberedningsmetoder kan betydeligt ændre den ernæringsmæssige værdi af mad. ${appLabel}\'s estimater medregner ikke altid disse variationer.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsDa implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredienser';
	@override String get description => 'Komplekse retter med mange skjulte ingredienser kan føre til mindre præcise estimeringer.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsDa implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Database Begrænsninger';
	@override String description({required Object appLabel}) => '${appLabel}\'s fødevaredatabase er omfattende, men den inkluderer muligvis ikke hver enkelt fødevare eller variation.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyDa implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalorie Nøjagtighed';
	@override String get description => 'Dette estimat er kun så præcist som dit registrerede kalorieindtag og udgifter. Unøjagtig registrering vil resultere i en unøjagtig projektion.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsDa implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologiske Faktorer';
	@override String description({required Object appLabel}) => 'Egentlig vægttab/-øgning påvirkes af stofskifte, hormoner, søvn, stress, hydrering og andre individuelle faktorer, som ${appLabel} ikke kan måle.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightDa implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vandvægt & Fluktuationer';
	@override String get description => 'Normal daglig vægt kan fluktuere betydeligt på grund af vandretention, fordøjelse og timing. Estimatet tager ikke højde for disse daglige ændringer.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceDa implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionel Vejledning';
	@override String get description => 'Brug ikke dette estimat til at træffe medicinske beslutninger. Konsulter altid en sundhedsfaglig professionel eller registreret diætist for personlig vægtstyring.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrDa implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolisk Rate (BMR) er det antal kalorier, din krop forbrænder i hvile for at opretholde grundlæggende funktioner som vejrtrækning og cirkulation. BMR afhænger af din alder, køn, højde og vægt. En højere BMR betyder, at din krop naturligt forbrænder flere kalorier i hvile, ofte på grund af mere muskelmasse, yngre alder eller mandligt køn. En lavere BMR indikerer typisk mindre muskelmasse, ældre alder eller kvindeligt køn.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeDa implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daglig Energiforbrug (TDEE) er det samlede antal kalorier, du forbrænder pr. dag, inklusive din BMR plus kalorier fra fysisk aktivitet og daglig bevægelse. TDEE afhænger af din BMR og aktivitetsniveau. En højere TDEE betyder, at du forbrænder flere kalorier samlet, ofte fordi du er mere aktiv eller har en højere BMR. En lavere TDEE antyder mindre daglig aktivitet eller en lavere BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalDa implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagligt Mål';
	@override String get description => 'Dagligt Mål er dit anbefalede daglige kalorieindtag baseret på din TDEE og vægtmål. For vægttab indtager du færre kalorier end din TDEE. For vægtvedligeholdelse matcher du din TDEE. For vægtøgning indtager du flere kalorier end din TDEE. Dette hjælper dig med at opnå din ønskede vægtændring i et sundt tempo.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedDa implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sådan beregnes estimatet';
	@override String get description => 'Vi beregner dit TDEE (baseret på din profil) og ganger det med den andel af dagen, der er gået (timer + minutter) / 24 for at anslå, hvor mange kalorier der er forbrændt indtil nu.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDa implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionel vejledning';
	@override String get description => 'Brug ikke dette estimat til at træffe medicinske beslutninger. Kontakt altid en sundhedsprofessionel eller en autoriseret diætist for personlig rådgivning om vægtstyring.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDa implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Læs Totale Forbrændte Kalorier';
	@override String get description => 'Giver appen mulighed for at læse dine totale forbrændte kalorier fra Sundhedsforbindelse.';
	@override String get usage => 'Denne tilladelse bruges til at vise dit daglige kalorieforbrug i appen, så du bedre kan forstå dit samlede energiforbrug i løbet af dagen.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadDa implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Læs Ernæringsdata';
	@override String get description => 'Giver appen mulighed for at læse ernæringsdata fra Sundhedsforbindelse.';
	@override String get usage => 'Denne tilladelse gør det muligt for appen at læse ernæringsoplysninger, der kan være blevet logget af andre apps, der er tilsluttet Sundhedsforbindelse, og giver dig et samlet overblik over din ernæring.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteDa implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteDa._(this._root);

	final TranslationsDa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skriv Ernæringsdata';
	@override String get description => 'Giver appen mulighed for at skrive ernæringsdata til Sundhedsforbindelse.';
	@override String get usage => 'Denne tilladelse gør det muligt for appen at synkronisere dine loggede måltider til Sundhedsforbindelse, så dine ernæringsdata bliver tilgængelige for andre sundheds- og fitnessapps, du bruger.';
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
			'errors.rateLimitExceeded' => 'Du har foretaget for mange forespørgsler. Vent venligst et øjeblik, og prøv igen.',
			'errors.networkError' => 'Netværksfejl. Tjek venligst din internetforbindelse.',
			'errors.unknownError' => 'Noget gik galt. Prøv venligst igen senere.',
			'errors.loadingProfileData' => 'Fejl ved indlæsning af profildata',
			'errors.somethingWentWrong' => 'Noget gik galt.',
			'errors.retry' => 'Prøv igen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Velkommen til ${appLabel}',
			'onboarding.subtitle' => 'Din personlige ernæringseftersyn drevet af AI',
			'onboarding.getStarted' => 'Kom i gang',
			'onboarding.features.foodRecognition.title' => 'Intelligent Madgenkendelse',
			'onboarding.features.foodRecognition.description' => 'Tag et billede og lad AI identificere dit måltid',
			'onboarding.features.aiAnalysis.title' => 'AI Analyse',
			'onboarding.features.aiAnalysis.description' => 'Få øjeblikkelig ernæringsinformation fra dine beskrivelser',
			'onboarding.features.healthIntegration.title' => 'Sundhedsintegration',
			'onboarding.features.healthIntegration.description' => 'Forbind med Health Connect for bedre indsigt',
			'onboarding.gender.title' => 'Hvad er dit køn?',
			'onboarding.gender.description' => 'Køn hjælper os med nøjagtigt at beregne din basale stofskiftehastighed (BMR).',
			'onboarding.gender.next' => 'Næste',
			'onboarding.height.title' => 'Hvor høj er du?',
			'onboarding.height.description' => 'Din højde hjælper os med nøjagtigt at beregne din BMI og energibehov.',
			'onboarding.height.metric' => 'Metrisk',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Næste',
			'onboarding.weight.currentTitle' => 'Hvad er din nuværende vægt?',
			'onboarding.weight.currentDescription' => 'Din nuværende vægt er essentiel for at tilpasse dine daglige mål.',
			'onboarding.weight.targetTitle' => 'Hvad er din målvægt?',
			'onboarding.weight.targetDescription' => 'At sætte et mål for vægten hjælper os med at bestemme din langsigtede plan.',
			'onboarding.weight.metric' => 'Metrisk',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Næste',
			'onboarding.age.title' => 'Hvornår har du fødselsdag?',
			'onboarding.age.description' => 'Din alder hjælper os med nøjagtigt at beregne dit kaloriebehov.',
			'onboarding.age.next' => 'Næste',
			'onboarding.bmiScale.underweight' => 'Undervejet',
			'onboarding.bmiScale.healthy' => 'Sund',
			'onboarding.bmiScale.overweight' => 'Overvægtig',
			'onboarding.bmiScale.obese' => 'Fedme',
			'onboarding.bmiScale.categories.underweight' => 'Undervejet',
			'onboarding.bmiScale.categories.healthyWeight' => 'Sund vægt',
			'onboarding.bmiScale.categories.overweight' => 'Overvægtig',
			'onboarding.bmiScale.categories.obese' => 'Fedme',
			'onboarding.bmiScale.messages.underweight' => 'Vi kan hjælpe dig med at opbygge en sund plan for at nå en balanceret vægt med næringsrige måltider.',
			'onboarding.bmiScale.messages.healthy' => 'Godt klaret! Du er inden for en sund rækkevidde. Vi hjælper dig med at opretholde din vitalitet og energiniveau.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} vil forenkle din rejse med AI-drevet tracking for at hjælpe dig med at nå dit mål komfortabelt.',
			'onboarding.bmiScale.messages.obese' => 'Vi er her for at støtte dig med personlig vejledning og bæredygtige strategier for dine sundhedsmål.',
			'onboarding.weightGoal.title' => 'Hvad er dit mål?',
			'onboarding.weightGoal.description' => 'Vælg det mål, der bedst beskriver, hvad du ønsker at opnå',
			'onboarding.activityLevel.title' => 'Hvor aktiv er du?',
			'onboarding.activityLevel.description' => 'Dette hjælper os med mere nøjagtigt at beregne dit daglige kaloriebehov',
			'onboarding.healthConnect.title' => 'Forbind med Health Connect',
			'onboarding.healthConnect.description' => 'Synkroniser din sundhedsdata for bedre indsigt og automatisk kalorieregistrering',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatisk Kalorieregistrering',
			'onboarding.healthConnect.automaticTracking.description' => 'Registrer kalorier forbrugt fra dine fitness-apps',
			'onboarding.healthConnect.progressInsights.title' => 'Fremskridtsindsigt',
			'onboarding.healthConnect.progressInsights.description' => 'Få detaljerede indsigter i dine sundhedstræk',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Problemfri Integration',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synkroniser data fra dine yndlings sundhedsapps',
			'onboarding.healthConnect.connected' => 'Health Connect Forbundet',
			'onboarding.healthConnect.notConnected' => 'Health Connect Ikke Forbundet',
			'onboarding.healthConnect.setup' => 'Opsæt Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Spring over for nu',
			'onboarding.healthConnect.statusConnected' => 'Health Connect er forbundet.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect er blevet forbundet med succes!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Adgang nægtet. Aktiver venligst Health Connect-tilladelser fra din telephones indstillinger for ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Fejl under opsætning af Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Du er ikke alene',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Forskning viser, at konsekvent sporing er den vigtigste indikator for langsigtet succes.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'For en ${age} år gammel ${gender} der ønsker at ${goal}, er konsekvent sporing den vigtigste indikator for succes.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} gør det 10 gange lettere end at gøre det manuelt.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Klar til at komme i gang?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Tag et billede af dine måltider for øjeblikkelig analyse',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Log konsekvent for at se meningsfuld fremgang',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Hold øje med dine fremskridt dagligt for at forblive motiveret',
			'onboarding.reinforcement.trackingSuccess.button' => 'Lad os gå',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individ',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'en sundere dig',
			'onboarding.reinforcement.healthProfile.title' => 'Din Sundhedsprofil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Baseret på dine målinger, er din BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Lad os færdiggøre din profil for at tilpasse din oplevelse.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'tage på',
			'onboarding.reinforcement.healthProfile.goalLose' => 'tabe',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'For at nå dit mål, skal du ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Du er på din målvægt! Vi hjælper dig med at opretholde den.',
			'onboarding.reinforcement.healthProfile.button' => 'Lad os gå',
			'onboarding.reinforcement.goalLifestyle.title' => 'Fremragende Start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har taget det første skridt mod ${goalText}. Da du er ${activityText}, vil ${appLabel} justere dine mål til at matche din livsstil.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personlige kaloriemål',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-drevet måltidsdetektion',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detaljerede makronæringsopgørelser',
			'onboarding.reinforcement.goalLifestyle.button' => 'Lad os gå',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'dine mål',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiv',
			'tabs.dashboard' => 'Instrumentbræt',
			'tabs.history' => 'Historik',
			'home.aiSummary.title' => 'Din AI-opsummering',
			'home.aiSummary.logMore' => 'Registrer flere måltider i løbet af de næste par dage for at få dine personlige AI-indsigter.',
			'home.aiSummary.loading' => 'Indlæser din opsummering...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} måltider registreret',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Balance-score ${score}',
			'home.aiSummary.topFoods' => 'Topfødevarer',
			'home.aiSummary.trendUp' => 'Kalorieindtag stiger',
			'home.aiSummary.trendDown' => 'Kalorieindtag falder',
			'home.aiSummary.trendSteady' => 'Kalorieindtag er stabilt',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Opdateret ${time}',
			'home.dailyGoal.title' => 'Sæt Dit Daglige Mål',
			'home.dailyGoal.titleSet' => 'Dit Daglige Mål',
			'home.dailyGoal.description' => 'Klar til at påbegynde din wellnessrejse? Sæt dit daglige kalorie mål nedenfor for at kickstarte din fremgang.',
			'home.dailyGoal.descriptionSet' => 'Dit kompas er indstillet! Dette er dit daglige kaloriemål for at vejlede dig.',
			'home.dailyGoal.yourGoal' => 'Dit Mål',
			'home.dailyGoal.goal' => 'Mål',
			'home.dailyGoal.dailyCalories' => 'Daglige kalorier (kcal)',
			'home.dailyGoal.setGoal' => 'Sæt Mål',
			'home.dailyGoal.intake' => 'Indtagelse',
			'home.dailyGoal.burned' => 'Forbrændt',
			'home.dailyGoal.weightImpact' => 'Vægtpåvirkning',
			'home.dailyGoal.estLoss' => 'Est. tab af',
			'home.dailyGoal.estGain' => 'Est. gevinst af',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Daglig Oversigt',
			'home.dailySummary.calories' => 'Kalorier',
			'home.dailySummary.carbs' => 'Kulhydrater',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Fedt',
			'home.dailySummary.fiber' => 'Fiber',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Diagram over makronæringsstoffer',
			'home.intakeProgress.title' => 'Dagens Makrofordeling',
			'home.intakeProgress.target' => 'Mål',
			'home.intakeProgress.current' => 'Nuværende',
			'home.intakeHistory.title' => '7-Dages Makrohistorik',
			'home.intakeHistory.noHistoryYet' => 'Ingen historie endnu',
			'home.intakeHistory.startLogging' => 'Begynd at logge måltider for at se dine\n7-dages makrotrends her',
			'home.mealLog.title' => 'Loggede Måltider',
			'home.mealLog.emptyMessage' => 'Tag et billede af dit sidste måltid for at logge her.',
			'home.mealLog.noMealsToday' => 'Ingen måltider registreret for i dag',
			'home.mealLog.seeAllMeals' => 'Se alle måltider',
			'home.mealDescription.title' => 'Hurtig Tilføjelse med AI',
			'home.mealDescription.description' => 'Beskriv dit måltid, og lad AI håndtere detaljerne.',
			'home.mealDescription.hint' => 'f.eks. Til morgenmad havde jeg en stor skål havregryn med en skivet banan og en ske valle ...',
			'home.mealDescription.analyzeMeal' => 'Analyser måltid',
			'home.favoriteMeals.title' => 'Favoritmåltider',
			'home.favoriteMeals.description' => 'Tilsæt hurtigt et af dine favoritmåltider.',
			'home.favoriteMeals.noFavorites' => 'Ingen favoritmåltider endnu.',
			'home.favoriteMeals.addFavoriteHint' => 'Klik på stjernen på et måltid for at markere det som favorit.',
			'home.favoriteMeals.seeAll' => 'Se alle',
			'home.favoriteMeals.add' => 'Tilføj',
			'home.mealSnap.title' => 'Tag & Spor Dit Måltid',
			'home.mealSnap.description' => 'Brug dit kamera til at tage et billede af din mad til AI-analyse.',
			'home.mealSnap.openCamera' => 'Åbn Kamera',
			'home.mealSnap.gallery' => 'Galleri',
			'home.connectHealth.title' => 'Synkroniser med Health Connect',
			'home.connectHealth.description' => 'Synkroniser dine ernæringsdata med Health Connect',
			'home.connectHealth.install' => 'Installer',
			'home.connectHealth.connect' => 'Forbind',
			'history.noMeals' => 'Ingen måltider registreret',
			'history.emptyMessage' => 'Tag et billede af dit sidste måltid for at logge her.',
			'history.today' => 'I dag',
			'history.yesterday' => 'I går',
			'meal.ohNo' => 'Åh nej!',
			'meal.delete' => 'Slet',
			'meal.editMeal' => 'Rediger Måltid',
			'meal.addMeal' => 'Tilføj Måltid',
			'meal.saveMeal' => 'Gem Måltid',
			'meal.save' => 'Gem',
			'meal.mealName' => 'Måltid Navn',
			'meal.mealNameHint' => 'f.eks. Røræg med toast',
			'meal.mealQuantity' => 'Måltid Mængde',
			'meal.mealQuantityHint' => 'f.eks. 1 skål, 2 skiver',
			'meal.timeOfMeal' => 'Tidspunkt for Måltid',
			'meal.timeOfMealHint' => 'Vælg det tidspunkt, hvornår du havde dit måltid',
			'meal.mealType' => 'Måltidstype',
			'meal.nutrition.calories' => 'Kalorier',
			'meal.nutrition.carbs' => 'Kulhydrater (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Fedt (g)',
			'meal.nutrition.fiber' => 'Fiber (g)',
			'meal.deleteConfirmation.title' => 'Slet Måltid',
			'meal.deleteConfirmation.message' => 'Er du sikker på, at du vil slette denne måltidsindtastning?',
			'meal.deleteConfirmation.cancel' => 'Annuller',
			'meal.deleteConfirmation.delete' => 'Slet',
			'meal.addedToLog' => 'Måltid tilføjet til din log!',
			'meal.couldNotAdd' => ({required Object error}) => 'Kunne ikke tilføje måltid: ${error}',
			'meal.savedSuccessfully' => 'Måltid tilføjet!',
			'meal.updatedSuccessfully' => 'Måltid opdateret!',
			'meal.errorSaving' => ({required Object error}) => 'Kunne ikke gemme måltidet: ${error}',
			'meal.removedFromFavorites' => 'Fjernet fra favoritter!',
			'meal.savedAsFavorite' => 'Måltid gemt som favorit!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Kunne ikke opdatere favorit: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Kunne ikke behandle: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Kunne ikke behandle billede: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Fejl ved komprimering af billede: ${error}',
			'meal.failedToSave' => 'Kunne ikke gemme data. Prøv igen.',
			'meal.skip' => 'Spring over',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Spørgsmål ${current} af ${total}',
			'meal.variation.noVariationsAvailable' => 'Ingen variationer tilgængelige',
			'favorites.title' => 'Favoritter',
			'favorites.empty' => 'Ingen favoritmåltider endnu.',
			'favorites.searchPlaceholder' => 'Søg i favoritmåltider',
			'favorites.searchEmptyTitle' => 'Ingen favoritter matcher din søgning',
			'favorites.searchEmptySubtitle' => 'Prøv et andet måltidsnavn, en anden mængde eller en anden måltidstype.',
			'favorites.sortLabel' => 'Sorter favoritter',
			'favorites.undo' => 'Fortryd',
			'favorites.removed' => ({required Object name}) => 'Fjernet ${name} fra favoritterne',
			'favorites.sortOptions.recent' => 'Seneste',
			'favorites.sortOptions.calories' => 'Kalorier',
			'favorites.sortOptions.alphabetical' => 'A-Å',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Ingen profildata fundet',
			'profile.yourProfile' => 'Din Profil',
			'profile.viewAndManage' => 'Se og administrer dine sundhedsoplysninger',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'GRUNDLÆGGENDE OPLYSNINGER',
			'profile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'profile.sections.calculatedValues' => 'BEREGNEDE VÆRDIER',
			'profile.gender' => 'Køn',
			'profile.height' => 'Højde',
			'profile.weight' => 'Vægt',
			'profile.age' => 'Alder',
			'profile.weightGoal' => 'Vægtmål',
			'profile.targetWeight' => 'Målvægt',
			'profile.activityLevel' => 'Aktivitetsniveau',
			'profile.healthMetrics' => 'Sundhedsmetrikker',
			'profile.notSet' => 'Ikke indstillet',
			'profile.years' => 'år',
			'profile.updatedSuccessfully' => 'Profil opdateret med succes!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Dagligt Mål',
			'profile.calculatedValues.calPerDay' => 'kal/dag',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Sundhedsscore',
			'healthScore.whyThisScore' => 'Hvorfor denne score?',
			'healthScore.note' => 'Denne score er et AI estimat baseret på de identificerede ingredienser og næringsmæssig tæthed. Konsulter altid en professionel for diætvejledning.',
			'healthScore.unhealthy' => 'Usund',
			'healthScore.healthy' => 'Sund',
			'healthScore.neutral' => 'Neutral',
			'editProfile.title' => 'Rediger Profil',
			'editProfile.sections.personalInformation' => 'PERSONLIGE OPLYSNINGER',
			'editProfile.sections.physicalMeasurements' => 'FYSISKE MÅLINGER',
			'editProfile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'editProfile.gender' => 'Køn',
			'editProfile.dateOfBirth' => 'Fødselsdato',
			'editProfile.height' => 'Højde',
			'editProfile.weight' => 'Vægt',
			'editProfile.weightGoal' => 'Vægtmål',
			'editProfile.activityLevel' => 'Aktivitetsniveau',
			'editProfile.metric' => 'Metisk',
			'editProfile.imperial' => 'Imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metisk (cm)',
			'editProfile.imperialFtIn' => 'Imperial (ft/in)',
			'editProfile.metricKg' => 'Metisk (kg)',
			'editProfile.imperialLbs' => 'Imperial (lbs)',
			'editProfile.genders.male' => 'Mand',
			'editProfile.genders.female' => 'Kvinde',
			'editProfile.genders.other' => 'Andet',
			'editProfile.weightGoals.loseWeight.name' => 'Tabe Vægt',
			'editProfile.weightGoals.loseWeight.description' => 'Skab et kalorieunderskud for at tabe vægt',
			'editProfile.weightGoals.maintainWeight.name' => 'Opretholde Vægt',
			'editProfile.weightGoals.maintainWeight.description' => 'Oprethold din nuværende vægt',
			'editProfile.weightGoals.gainWeight.name' => 'Tage På Vægt',
			'editProfile.weightGoals.gainWeight.description' => 'Skab et kalorieoverskud for at tage på vægt',
			'editProfile.activityLevels.sedentary.name' => 'Stillestående',
			'editProfile.activityLevels.sedentary.description' => 'Lidt til ingen motion',
			'editProfile.activityLevels.lightlyActive.name' => 'Let Aktiv',
			'editProfile.activityLevels.lightlyActive.description' => 'Let motion 1-3 dage/uge',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderat Aktiv',
			'editProfile.activityLevels.moderatelyActive.description' => 'Moderat motion 3-5 dage/uge',
			'editProfile.activityLevels.veryActive.name' => 'Meget Aktiv',
			'editProfile.activityLevels.veryActive.description' => 'Hård motion 6-7 dage/uge',
			'editProfile.activityLevels.extremelyActive.name' => 'Ekstremt Aktiv',
			'editProfile.activityLevels.extremelyActive.description' => 'Meget hård motion, fysisk arbejde',
			'settings.title' => 'Indstillinger',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALISERING',
			'settings.sections.notifications' => 'NOTIFIKATIONER',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'SUPPORT & JURIDISK',
			'settings.sections.about' => 'OM',
			'settings.sections.dangerZone' => 'FAREZONE',
			'settings.sections.developer' => 'UDVIKLER',
			'settings.editProfile.title' => 'Rediger Profil',
			'settings.editProfile.subtitle' => 'Opdater dine personlige oplysninger',
			'settings.language.title' => 'Sprog',
			'settings.language.subtitle' => 'Vælg dit foretrukne sprog',
			'settings.language.searchHint' => 'Søg efter sprog...',
			'settings.language.noResults' => 'Ingen resultater fundet',
			'settings.heightUnit.title' => 'Højde Enhed',
			'settings.weightUnit.title' => 'Vægt Enhed',
			'settings.mealReminders.title' => 'Måltidspåmindelser',
			'settings.mealReminders.subtitle' => 'Hold dig på sporet med rettidige alarmer',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Lys',
			'settings.theme.dark' => 'Mørk',
			'settings.theme.system' => 'System',
			'settings.sendFeedback.title' => 'Send Feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Hjælp os med at forbedre ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} App Feedback',
			'settings.sendFeedback.emailBodyPrefix' => 'Venligst giv din feedback nedenfor:',
			'settings.sendFeedback.appVersion' => 'App Version',
			'settings.sendFeedback.device' => 'Enhed',
			'settings.sendFeedback.osVersion' => 'OS Version',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Eksporter måltidshistorik',
			'settings.exportMealHistory.subtitle' => 'Del en CSV med dine registrerede måltider',
			'settings.exportMealHistory.shareText' => 'Din Calorify-eksport af måltidshistorik',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Kunne ikke eksportere måltidshistorik: ${error}',
			'settings.clearAllData.title' => 'Slet Al Data',
			'settings.clearAllData.subtitle' => 'Slet alle dine oplysninger uigenkaldeligt',
			'settings.clearAllData.confirmationTitle' => 'Slet Al Data?',
			'settings.clearAllData.confirmationMessage' => 'Denne handling kan ikke fortrydes. Alle dine loggede måltider, favoritter og profilindstillinger vil blive permanent slettet.',
			'settings.clearAllData.cancel' => 'Annuller',
			'settings.clearAllData.clearEverything' => 'Slet Alt',
			'settings.debugOptions.title' => 'Debug Indstillinger',
			'settings.developerModeEnabled' => 'Udviklertilstand aktiveret!',
			'settings.healthConnect.title' => 'Sundhedsforbindelse',
			'settings.healthConnect.subtitle' => 'Se og administrer tilladelser',
			'settings.healthConnect.unavailable.title' => 'Health Connect utilgængelig',
			'settings.healthConnect.unavailable.description' => 'Health Connect er ikke tilgængelig på denne enhed. Installer venligst Health Connect fra Play Store (Android 9+) eller opdater til Android 14+.',
			'settings.healthConnect.permissions.title' => 'Tilladelser',
			'settings.healthConnect.permissions.description' => 'Følgende tilladelser anmodes om for at give integration med Sundhedsforbindelse:',
			'settings.healthConnect.permissions.granted' => 'Givet',
			'settings.healthConnect.permissions.notGranted' => 'Ikke Givet',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Læs Totale Forbrændte Kalorier',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Giver appen mulighed for at læse dine totale forbrændte kalorier fra Sundhedsforbindelse.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Denne tilladelse bruges til at vise dit daglige kalorieforbrug i appen, så du bedre kan forstå dit samlede energiforbrug i løbet af dagen.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Læs Ernæringsdata',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Giver appen mulighed for at læse ernæringsdata fra Sundhedsforbindelse.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Denne tilladelse gør det muligt for appen at læse ernæringsoplysninger, der kan være blevet logget af andre apps, der er tilsluttet Sundhedsforbindelse, og giver dig et samlet overblik over din ernæring.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Skriv Ernæringsdata',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Giver appen mulighed for at skrive ernæringsdata til Sundhedsforbindelse.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Denne tilladelse gør det muligt for appen at synkronisere dine loggede måltider til Sundhedsforbindelse, så dine ernæringsdata bliver tilgængelige for andre sundheds- og fitnessapps, du bruger.',
			'settings.healthConnect.managePermissions' => 'Administrer Tilladelser',
			'settings.healthConnect.openSettings' => 'Åbn sundhedsforbindelsesindstillinger',
			'settings.healthConnect.requestPermissions' => 'Anmod om tilladelser',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Anmodningen om tilladelser blev annulleret eller mislykkedes. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillinger.',
			'settings.healthConnect.permissionRequestFailed' => 'Kunne ikke anmode om tilladelser. Prøv igen eller giv tilladelser manuelt i Health Connect-indstillinger.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'Om',
			'settings.about.tagline' => 'Hurtig, gratis og privatlivsorienteret kaloriebevidsthed',
			'settings.about.ourStory.title' => 'Vores Historie',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} opstod fra en simpel frustration: de fleste kaloritæknings-apps er enten alt for komplicerede, kræver konstant manuel indtastning, tager høje abonnementafgifter, eller indskrænker på privatlivets fred.\n\nSom en uafhængig udvikler ønskede jeg at bygge noget enklere og mere retfærdigt — en app, der bruger AI til at reducere indsatsen, forbliver hurtig og gratis at bruge, og behandler dine sundhedsdata med respekt.\n\n${appLabel} er den app, jeg ville ønske fandtes: ingen konti, ingen sporing, ingen annoncer — blot klare, praktiske indsigter og dine sundhedsmål.',
			'settings.about.privacy.title' => 'Dit Privatliv Tæller',
			'settings.about.privacy.description' => 'Privatliv er ikke en eftertanke — det er et designprincip. Her er hvad det betyder i praksis:',
			'settings.about.privacy.noAccounts' => 'Ingen konti kræves\nBrug appen med det samme. Ingen tilmeldinger, ingen identiteter.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Ingen adfærdssporing\n${appLabel} overvåger ikke din aktivitet, opbygger brugsprofiler eller sporer dig på tværs af apps eller hjemmesider.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Annoncefri fra grunden\n${appLabel} er bygget til at fungere uden annoncer eller datadrevet monetisering.',
			'settings.about.privacy.noDataSelling' => 'Intet datasalg\nDine sundhedsdata sælges aldrig eller deles med tredjeparter.',
			'settings.about.privacy.localStorage' => 'Lokalt først lagring\nDine data forbliver på din enhed.',
			'settings.about.privacy.privacyPolicy' => 'Privatlivspolitik',
			'settings.about.developer.title' => 'Bygget af en Uafhængig Udvikler',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} er bygget og vedligeholdt af en enkelt uafhængig udvikler, der fokuserer på at skabe rolig, privatlivsrespekterende sundhedssoftware.\n\nFeedback læses personligt og hjælper med at forme retningen for appen.',
			'settings.about.developer.website' => 'Hjemmeside',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Nyder du ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Din feedback hjælper med at forbedre ${appLabel} for alle.',
			'settings.about.feedback.rateApp' => 'Bedøm på Play Store',
			'settings.about.feedback.sendFeedback' => 'Send Feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Hold dig på sporet med påmindelser',
			'reminders.description' => 'Få blide påmindelser om at logge dine måltider og forblive konsekvent med dine ernæringsmål',
			'reminders.notificationsEnabled' => 'Notifikationer Aktiveret',
			'reminders.notificationsDisabled' => 'Notifikationer Deaktiveret',
			'reminders.enabledSubtitle' => 'Du vil modtage måltidspåmindelser',
			'reminders.disabledSubtitle' => 'Aktivér notifikationer for at få måltidspåmindelser',
			'reminders.mealReminders' => 'Måltidspåmindelser',
			'reminders.breakfast' => 'Morgenmad',
			'reminders.lunch' => 'Frokost',
			'reminders.dinner' => 'Aftensmad',
			'reminders.snack' => 'Snack',
			'reminders.unknown' => 'Ukendt',
			'reminders.change' => 'Ændre',
			'reminders.enableNotifications' => 'Aktivér Notifikationer',
			'reminders.skipForNow' => 'Spring over for nu',
			'reminders.saveChanges' => 'Gem Ændringer',
			'reminders.enabledSuccessfully' => 'Notifikationer aktiveret med succes!',
			'reminders.permissionDenied' => 'Notifikations tilladelse nægtet',
			'reminders.errorEnabling' => ({required Object error}) => 'Fejl ved aktivering af notifikationer: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Fejl ved færdiggørelse af opsætning: ${error}',
			'notifications.breakfast.title' => 'Morgenmadstid! 🍳',
			'notifications.breakfast.body' => 'Glem ikke at logge din morgenmad',
			'notifications.lunch.title' => 'Frokosttid! 🥗',
			'notifications.lunch.body' => 'Tid til at logge din frokost',
			'notifications.dinner.title' => 'Aftensmadstid! 🍽️',
			'notifications.dinner.body' => 'Glem ikke at logge din aftensmad',
			'notifications.snack.title' => 'Snacktid! 🍎',
			'notifications.snack.body' => 'Tid til en sund snack',
			'notifications.test.title' => 'Testnotifikation',
			'login.title' => 'Log Ind',
			'login.signInWithGoogle' => 'Log ind med Google',
			'login.signInFailed' => 'Google Login fejlede eller blev annulleret.',
			'disclaimer.pleaseNote' => 'Bemærk venligst',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} giver estimeret ernæringsinfo. Nøjagtighed afhænger af din input og fødevarevariationer. Brug det som en vejledning, ikke en definit kilde. Konsulter en professionel for personlig kostrådgivning.',
			'disclaimer.snap.portionSize.title' => 'Portionsstørrelse',
			'disclaimer.snap.portionSize.description' => 'Nøjagtigheden af estimaterne afhænger i høj grad af din korrekte vurdering af portionsstørrelsen.',
			'disclaimer.snap.preparationMethods.title' => 'Tilberedningsmetoder',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Tilberedningsmetoder kan betydeligt ændre den ernæringsmæssige værdi af mad. ${appLabel}\'s estimater medregner ikke altid disse variationer.',
			'disclaimer.snap.ingredients.title' => 'Ingredienser',
			'disclaimer.snap.ingredients.description' => 'Komplekse retter med mange skjulte ingredienser kan føre til mindre præcise estimeringer.',
			'disclaimer.snap.databaseLimitations.title' => 'Database Begrænsninger',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}\'s fødevaredatabase er omfattende, men den inkluderer muligvis ikke hver enkelt fødevare eller variation.',
			'disclaimer.weightEstimate.title' => 'Om Vægtestimering',
			'disclaimer.weightEstimate.description' => 'Den forventede vægtændring er et teoretisk estimat baseret på den simple kalorie-inde vs. kalorie-ude model. Det er beregnet til motivationsvejledning, ikke som en forudsigelse af din faktiske vægt.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalorie Nøjagtighed',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Dette estimat er kun så præcist som dit registrerede kalorieindtag og udgifter. Unøjagtig registrering vil resultere i en unøjagtig projektion.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologiske Faktorer',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Egentlig vægttab/-øgning påvirkes af stofskifte, hormoner, søvn, stress, hydrering og andre individuelle faktorer, som ${appLabel} ikke kan måle.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Vandvægt & Fluktuationer',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normal daglig vægt kan fluktuere betydeligt på grund af vandretention, fordøjelse og timing. Estimatet tager ikke højde for disse daglige ændringer.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Professionel Vejledning',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Brug ikke dette estimat til at træffe medicinske beslutninger. Konsulter altid en sundhedsfaglig professionel eller registreret diætist for personlig vægtstyring.',
			'disclaimer.healthMetrics.description' => 'Disse målinger hjælper dig med at forstå din krops energibehov og vejlede dine ernæringsmål.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolisk Rate (BMR) er det antal kalorier, din krop forbrænder i hvile for at opretholde grundlæggende funktioner som vejrtrækning og cirkulation. BMR afhænger af din alder, køn, højde og vægt. En højere BMR betyder, at din krop naturligt forbrænder flere kalorier i hvile, ofte på grund af mere muskelmasse, yngre alder eller mandligt køn. En lavere BMR indikerer typisk mindre muskelmasse, ældre alder eller kvindeligt køn.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daglig Energiforbrug (TDEE) er det samlede antal kalorier, du forbrænder pr. dag, inklusive din BMR plus kalorier fra fysisk aktivitet og daglig bevægelse. TDEE afhænger af din BMR og aktivitetsniveau. En højere TDEE betyder, at du forbrænder flere kalorier samlet, ofte fordi du er mere aktiv eller har en højere BMR. En lavere TDEE antyder mindre daglig aktivitet eller en lavere BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Dagligt Mål',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Dagligt Mål er dit anbefalede daglige kalorieindtag baseret på din TDEE og vægtmål. For vægttab indtager du færre kalorier end din TDEE. For vægtvedligeholdelse matcher du din TDEE. For vægtøgning indtager du flere kalorier end din TDEE. Dette hjælper dig med at opnå din ønskede vægtændring i et sundt tempo.',
			'disclaimer.calorieExpenditure.title' => 'Anslået kalorieforbrug',
			'disclaimer.calorieExpenditure.description' => 'Når Health Connect-data ikke er tilgængelige, estimerer vi, hvor mange kalorier du har forbrændt i dag ved at bruge din basale stofskiftehastighed (BMR) og dit aktivitetsniveau (TDEE), tilpasset den del af dagen, der er passeret.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Sådan beregnes estimatet',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Vi beregner dit TDEE (baseret på din profil) og ganger det med den andel af dagen, der er gået (timer + minutter) / 24 for at anslå, hvor mange kalorier der er forbrændt indtil nu.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Professionel vejledning',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Brug ikke dette estimat til at træffe medicinske beslutninger. Kontakt altid en sundhedsprofessionel eller en autoriseret diætist for personlig rådgivning om vægtstyring.',
			'common.close' => 'Luk',
			'common.kContinue' => 'Fortsæt',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Nyder du ${appLabel}?',
			'feedbackRating.yes' => 'Ja, jeg nyder den',
			'feedbackRating.no' => 'Ikke rigtigt',
			'feedbackRating.rateStepHeading' => 'Bedøm os i Google Play',
			'feedbackRating.emailStepHeading' => 'Giv feedback via e-mail',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'En hurtig vurdering hjælper andre med at finde ${appLabel} og holder udviklingen i gang. Vil du tage et øjeblik til at give en vurdering?',
			'feedbackRating.shareFeedbackViaEmail' => 'Din feedback former, hvad der kommer fremover — vi læser hver besked. Vil du gerne dele dine tanker via e-mail?',
			'feedbackRating.rateCta' => 'Bedøm i Play Butik',
			'feedbackRating.maybeLater' => 'Måske senere',
			'feedbackRating.sendFeedback' => 'Send os feedback',
			'feedbackRating.noThanks' => 'Nej tak',
			'feedbackRating.aboutUsDescription' => 'Skabt med omhu af et lille team. Vi er fokuserede på dit privatliv, enkelhed og på at hjælpe dig med at opbygge sundere spisevaner.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Nysgerrig efter, hvem der står bag ${appLabel}? Se ',
			'feedbackRating.aboutUsLinkLabel' => 'Om os',
			'feedbackRating.thankYouMessage' => 'Tak! Vi spørger igen på et andet tidspunkt.',
			'health.syncFailed' => 'Kunne ikke synkronisere med Health Connect',
			'health.mealSynced' => 'Måltid synkroniseret med Health Connect',
			_ => null,
		};
	}
}
