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
class TranslationsTe with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.te,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <te>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsTe _root = this; // ignore: unused_field

	@override 
	TranslationsTe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTe(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'తెలుగు';
	@override String get flag => '🇮🇳';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsTe errors = _TranslationsErrorsTe._(_root);
	@override late final _TranslationsOnboardingTe onboarding = _TranslationsOnboardingTe._(_root);
	@override late final _TranslationsTabsTe tabs = _TranslationsTabsTe._(_root);
	@override late final _TranslationsHomeTe home = _TranslationsHomeTe._(_root);
	@override late final _TranslationsHistoryTe history = _TranslationsHistoryTe._(_root);
	@override late final _TranslationsMealTe meal = _TranslationsMealTe._(_root);
	@override late final _TranslationsFavoritesTe favorites = _TranslationsFavoritesTe._(_root);
	@override late final _TranslationsProfileTe profile = _TranslationsProfileTe._(_root);
	@override late final _TranslationsHealthScoreTe healthScore = _TranslationsHealthScoreTe._(_root);
	@override late final _TranslationsEditProfileTe editProfile = _TranslationsEditProfileTe._(_root);
	@override late final _TranslationsSettingsTe settings = _TranslationsSettingsTe._(_root);
	@override late final _TranslationsRemindersTe reminders = _TranslationsRemindersTe._(_root);
	@override late final _TranslationsNotificationsTe notifications = _TranslationsNotificationsTe._(_root);
	@override late final _TranslationsLoginTe login = _TranslationsLoginTe._(_root);
	@override late final _TranslationsDisclaimerTe disclaimer = _TranslationsDisclaimerTe._(_root);
	@override late final _TranslationsCommonTe common = _TranslationsCommonTe._(_root);
	@override late final _TranslationsFeedbackRatingTe feedbackRating = _TranslationsFeedbackRatingTe._(_root);
	@override late final _TranslationsHealthTe health = _TranslationsHealthTe._(_root);
}

// Path: errors
class _TranslationsErrorsTe implements TranslationsErrorsEn {
	_TranslationsErrorsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'మీరు బాగా ఎక్కువ అభ్యర్థనలు చేసారు. దయచేసి కాసేపు ఆగి మళ్లీ ప్రయత్నించండి.';
	@override String get networkError => 'నెట్‌వర్క్ లోపం. దయచేసి మీ ఇంటర్నెట్ కనెక్షన్‌ని తనిఖీ చేయండి.';
	@override String get unknownError => 'ఏదో తప్పు జరిగింది. దయచేసి కొంతసేపటి తర్వాత మళ్లీ ప్రయత్నించండి.';
	@override String get loadingProfileData => 'ప్రొఫైల్ డాటాను లోడ్ చేయడంలో లోపం';
	@override String get somethingWentWrong => 'ఏదో తప్పు జరిగింది.';
	@override String get retry => 'మళ్లీ ప్రయత్నించండి';
}

// Path: onboarding
class _TranslationsOnboardingTe implements TranslationsOnboardingEn {
	_TranslationsOnboardingTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel}కి స్వాగతం';
	@override String get subtitle => 'AI తో నడిచే మీ వ్యక్తిగత పోషక సహచరి';
	@override String get getStarted => 'ప్రారంభించండి';
	@override late final _TranslationsOnboardingFeaturesTe features = _TranslationsOnboardingFeaturesTe._(_root);
	@override late final _TranslationsOnboardingGenderTe gender = _TranslationsOnboardingGenderTe._(_root);
	@override late final _TranslationsOnboardingHeightTe height = _TranslationsOnboardingHeightTe._(_root);
	@override late final _TranslationsOnboardingWeightTe weight = _TranslationsOnboardingWeightTe._(_root);
	@override late final _TranslationsOnboardingAgeTe age = _TranslationsOnboardingAgeTe._(_root);
	@override late final _TranslationsOnboardingBmiScaleTe bmiScale = _TranslationsOnboardingBmiScaleTe._(_root);
	@override late final _TranslationsOnboardingWeightGoalTe weightGoal = _TranslationsOnboardingWeightGoalTe._(_root);
	@override late final _TranslationsOnboardingActivityLevelTe activityLevel = _TranslationsOnboardingActivityLevelTe._(_root);
	@override late final _TranslationsOnboardingHealthConnectTe healthConnect = _TranslationsOnboardingHealthConnectTe._(_root);
	@override late final _TranslationsOnboardingReinforcementTe reinforcement = _TranslationsOnboardingReinforcementTe._(_root);
}

// Path: tabs
class _TranslationsTabsTe implements TranslationsTabsEn {
	_TranslationsTabsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'డాష్‌బోర్డ్';
	@override String get history => 'చరిత్ర';
}

// Path: home
class _TranslationsHomeTe implements TranslationsHomeEn {
	_TranslationsHomeTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryTe aiSummary = _TranslationsHomeAiSummaryTe._(_root);
	@override late final _TranslationsHomeDailyGoalTe dailyGoal = _TranslationsHomeDailyGoalTe._(_root);
	@override late final _TranslationsHomeDailySummaryTe dailySummary = _TranslationsHomeDailySummaryTe._(_root);
	@override late final _TranslationsHomeIntakeProgressTe intakeProgress = _TranslationsHomeIntakeProgressTe._(_root);
	@override late final _TranslationsHomeIntakeHistoryTe intakeHistory = _TranslationsHomeIntakeHistoryTe._(_root);
	@override late final _TranslationsHomeMealLogTe mealLog = _TranslationsHomeMealLogTe._(_root);
	@override late final _TranslationsHomeMealDescriptionTe mealDescription = _TranslationsHomeMealDescriptionTe._(_root);
	@override late final _TranslationsHomeFavoriteMealsTe favoriteMeals = _TranslationsHomeFavoriteMealsTe._(_root);
	@override late final _TranslationsHomeMealSnapTe mealSnap = _TranslationsHomeMealSnapTe._(_root);
	@override late final _TranslationsHomeConnectHealthTe connectHealth = _TranslationsHomeConnectHealthTe._(_root);
}

// Path: history
class _TranslationsHistoryTe implements TranslationsHistoryEn {
	_TranslationsHistoryTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'ఏ భోజనాలు నమోదు కాలేదు';
	@override String get emptyMessage => 'మీ చివరి భోజనం ఫోటో తీసి ఇక్కడ లాగ్ చేయండి.';
	@override String get today => 'ఈ రోజు';
	@override String get yesterday => 'నిన్న';
}

// Path: meal
class _TranslationsMealTe implements TranslationsMealEn {
	_TranslationsMealTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'అయ్యో!';
	@override String get delete => 'తొలగించండి';
	@override String get editMeal => 'భోజనం సవరించండి';
	@override String get addMeal => 'భోజనం జోడించండి';
	@override String get saveMeal => 'భోజనం సేవ్ చేయండి';
	@override String get save => 'సేవ్';
	@override String get mealName => 'భోజన పేరు';
	@override String get mealNameHint => 'ఉదా., టోస్ట్‌తో స్క్రాంబుల్ ఎగ్స్';
	@override String get mealQuantity => 'భోజన పరిమాణం';
	@override String get mealQuantityHint => 'ఉదా., 1 బౌల్, 2 ముక్కలు';
	@override String get timeOfMeal => 'భోజనం చేసిన సమయం';
	@override String get timeOfMealHint => 'మీరు భోజనం చేసిన సమయాన్ని ఎంచుకోండి';
	@override String get mealType => 'భోజనం రకం';
	@override late final _TranslationsMealNutritionTe nutrition = _TranslationsMealNutritionTe._(_root);
	@override late final _TranslationsMealDeleteConfirmationTe deleteConfirmation = _TranslationsMealDeleteConfirmationTe._(_root);
	@override String get addedToLog => 'భోజనం మీ లాగ్‌లో జోడించబడింది!';
	@override String couldNotAdd({required Object error}) => 'భోజనం జోడించలేకపోయాం: ${error}';
	@override String get savedSuccessfully => 'భోజనం విజయవంతంగా జోడించబడింది!';
	@override String get updatedSuccessfully => 'భోజనం విజయవంతంగా అప్‌డేట్ అయింది!';
	@override String errorSaving({required Object error}) => 'భోజనం సేవ్ చేయడంలో లోపం: ${error}';
	@override String get removedFromFavorites => 'ఇష్టాల నుండి తొలగించబడింది!';
	@override String get savedAsFavorite => 'భోజనం ఫేవరిట్‌గా సేవ్ అయింది!';
	@override String get unfavorite => 'ఫేవరిట్ తీసేయండి';
	@override String couldNotUpdateFavorite({required Object error}) => 'ఫేవరిట్ అప్‌డేట్ చేయలేకపోయాం: ${error}';
	@override String get feedbackThanks => 'ఫీడ్‌బ్యాక్‌కు ధన్యవాదాలు!';
	@override String get reanalysisUpdated => 'మీ ఫీడ్‌బ్యాక్ ఆధారంగా విశ్లేషణను అప్‌డేట్ చేసాం.';
	@override String failedToProcess({required Object error}) => 'ప్రాసెస్ చేయడంలో వైఫల్యం: ${error}';
	@override String failedToProcessImage({required Object error}) => 'చిత్రాన్ని ప్రాసెస్ చేయడంలో వైఫల్యం: ${error}';
	@override String errorCompressingImage({required Object error}) => 'చిత్రాన్ని కంప్రెస్ చేయడంలో లోపం: ${error}';
	@override String get failedToSave => 'డేటాను సేవ్ చేయలేకపోయాం. దయచేసి మళ్లీ ప్రయత్నించండి.';
	@override String get skip => 'దాటవేయండి';
	@override late final _TranslationsMealVariationTe variation = _TranslationsMealVariationTe._(_root);
	@override late final _TranslationsMealAnalysisTe analysis = _TranslationsMealAnalysisTe._(_root);
	@override late final _TranslationsMealFeedbackTe feedback = _TranslationsMealFeedbackTe._(_root);
}

// Path: favorites
class _TranslationsFavoritesTe implements TranslationsFavoritesEn {
	_TranslationsFavoritesTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఇష్టాలు';
	@override String get empty => 'ఇంకా ఇష్టమైన భోజనాలు లేవు.';
	@override String get searchPlaceholder => 'ఇష్టమైన భోజనాలను వెతకండి';
	@override String get searchEmptyTitle => 'మీ శోధనకు సరిపడే ఇష్టాలు లేవు';
	@override String get searchEmptySubtitle => 'వేరే భోజన పేరు, పరిమాణం లేదా రకం ప్రయత్నించండి.';
	@override String get sortLabel => 'ఇష్టాలను క్రమబద్ధీకరించండి';
	@override String get undo => 'రద్దు చేయండి';
	@override String removed({required Object name}) => '${name} ను ఇష్టాల నుండి తొలగించాం';
	@override late final _TranslationsFavoritesSortOptionsTe sortOptions = _TranslationsFavoritesSortOptionsTe._(_root);
}

// Path: profile
class _TranslationsProfileTe implements TranslationsProfileEn {
	_TranslationsProfileTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ప్రొఫైల్';
	@override String get noProfileData => 'ప్రొఫైల్ డేటా కనుగొనబడలేదు';
	@override String get yourProfile => 'మీ ప్రొఫైల్';
	@override String get viewAndManage => 'మీ ఆరోగ్య సమాచారాన్ని చూడండి మరియు నిర్వహించండి';
	@override late final _TranslationsProfileSectionsTe sections = _TranslationsProfileSectionsTe._(_root);
	@override String get gender => 'లింగం';
	@override String get height => 'ఎత్తు';
	@override String get weight => 'బరువు';
	@override String get age => 'వయస్సు';
	@override String get weightGoal => 'బరువు లక్ష్యం';
	@override String get targetWeight => 'లక్ష్య బరువు';
	@override String get activityLevel => 'క్రియాశీల స్థాయి';
	@override String get healthMetrics => 'ఆరోగ్య మీట్రిక్స్';
	@override String get notSet => 'సెట్ కాలేదు';
	@override String get years => 'సంవత్సరాలు';
	@override String get updatedSuccessfully => 'ప్రొఫైల్ విజయవంతంగా అప్‌డేట్ అయింది!';
	@override late final _TranslationsProfileCalculatedValuesTe calculatedValues = _TranslationsProfileCalculatedValuesTe._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreTe implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'హెల్త్ స్కోరు';
	@override String get whyThisScore => 'ఈ స్కోరు ఎందుకు?';
	@override String get note => 'ఈ స్కోరు గుర్తించిన పదార్థాలు మరియు పోషక సాంద్రత ఆధారంగా AI అంచనా. వ్యక్తిగత ఆహార సలహాల కోసం ఎల్లప్పుడూ నిపుణుడిని సంప్రదించండి.';
	@override String get unhealthy => 'అనారోగ్యకరం';
	@override String get healthy => 'ఆరోగ్యకరం';
	@override String get neutral => 'తటస్థ';
}

// Path: editProfile
class _TranslationsEditProfileTe implements TranslationsEditProfileEn {
	_TranslationsEditProfileTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ప్రొఫైల్ సవరించండి';
	@override late final _TranslationsEditProfileSectionsTe sections = _TranslationsEditProfileSectionsTe._(_root);
	@override String get gender => 'లింగం';
	@override String get dateOfBirth => 'పుట్టిన తేదీ';
	@override String get height => 'ఎత్తు';
	@override String get weight => 'బరువు';
	@override String get weightGoal => 'బరువు లక్ష్యం';
	@override String get activityLevel => 'క్రియాశీల స్థాయి';
	@override String get metric => 'మెట్రిక్';
	@override String get imperial => 'ఇంపీరియల్';
	@override String get unitCm => 'సెం.మీ';
	@override String get unitFt => 'అడుగులు';
	@override String get unitKg => 'కిలోలు';
	@override String get unitLbs => 'పౌండ్లు';
	@override String get metricCm => 'మెట్రిక్ (సెం.మీ)';
	@override String get imperialFtIn => 'ఇంపీరియల్ (అడుగులు/అంగుళాలు)';
	@override String get metricKg => 'మెట్రిక్ (కిలోలు)';
	@override String get imperialLbs => 'ఇంపీరియల్ (పౌండ్లు)';
	@override late final _TranslationsEditProfileGendersTe genders = _TranslationsEditProfileGendersTe._(_root);
	@override late final _TranslationsEditProfileWeightGoalsTe weightGoals = _TranslationsEditProfileWeightGoalsTe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsTe activityLevels = _TranslationsEditProfileActivityLevelsTe._(_root);
}

// Path: settings
class _TranslationsSettingsTe implements TranslationsSettingsEn {
	_TranslationsSettingsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'సెట్టింగ్‌లు';
	@override late final _TranslationsSettingsSectionsTe sections = _TranslationsSettingsSectionsTe._(_root);
	@override late final _TranslationsSettingsEditProfileTe editProfile = _TranslationsSettingsEditProfileTe._(_root);
	@override late final _TranslationsSettingsLanguageTe language = _TranslationsSettingsLanguageTe._(_root);
	@override late final _TranslationsSettingsHeightUnitTe heightUnit = _TranslationsSettingsHeightUnitTe._(_root);
	@override late final _TranslationsSettingsWeightUnitTe weightUnit = _TranslationsSettingsWeightUnitTe._(_root);
	@override late final _TranslationsSettingsMealRemindersTe mealReminders = _TranslationsSettingsMealRemindersTe._(_root);
	@override late final _TranslationsSettingsThemeTe theme = _TranslationsSettingsThemeTe._(_root);
	@override late final _TranslationsSettingsSendFeedbackTe sendFeedback = _TranslationsSettingsSendFeedbackTe._(_root);
	@override late final _TranslationsSettingsExportMealHistoryTe exportMealHistory = _TranslationsSettingsExportMealHistoryTe._(_root);
	@override late final _TranslationsSettingsClearAllDataTe clearAllData = _TranslationsSettingsClearAllDataTe._(_root);
	@override late final _TranslationsSettingsDebugOptionsTe debugOptions = _TranslationsSettingsDebugOptionsTe._(_root);
	@override String get developerModeEnabled => 'డెవలపర్ మోడ్ ఎనేబుల్ అయింది!';
	@override late final _TranslationsSettingsHealthConnectTe healthConnect = _TranslationsSettingsHealthConnectTe._(_root);
	@override late final _TranslationsSettingsAboutTe about = _TranslationsSettingsAboutTe._(_root);
	@override late final _TranslationsSettingsAppInfoTe appInfo = _TranslationsSettingsAppInfoTe._(_root);
}

// Path: reminders
class _TranslationsRemindersTe implements TranslationsRemindersEn {
	_TranslationsRemindersTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'రిమైండర్లతో ట్రాక్‌లో ఉండండి';
	@override String get description => 'మీ భోజనాలను లాగ్ చేయడానికి మరియు మీ పోషక లక్ష్యాల్లో స్థిరంగా ఉండడానికి మృదువైన రిమైండర్లు పొందండి';
	@override String get notificationsEnabled => 'నోటిఫికేషన్‌లు ఎనేబుల్ అయ్యాయి';
	@override String get notificationsDisabled => 'నోటిఫికేషన్‌లు డిసేబుల్ అయ్యాయి';
	@override String get enabledSubtitle => 'మీకు భోజనం రిమైండర్లు వస్తాయి';
	@override String get disabledSubtitle => 'భోజనం రిమైండర్లు పొందడానికి నోటిఫికేషన్‌లను ఎనేబుల్ చేయండి';
	@override String get mealReminders => 'భోజనం రిమైండర్లు';
	@override String get breakfast => 'అల్పాహారం';
	@override String get lunch => 'మధ్యాహ్న భోజనం';
	@override String get dinner => 'విందు';
	@override String get snack => 'స్నాక్';
	@override String get unknown => 'తెలియదు';
	@override String get change => 'మార్చండి';
	@override String get enableNotifications => 'నోటిఫికేషన్‌లు ఎనేబుల్ చేయండి';
	@override String get skipForNow => 'ఇప్పటికి దాటేయండి';
	@override String get saveChanges => 'మార్పులు సేవ్ చేయండి';
	@override String get enabledSuccessfully => 'నోటిఫికేషన్‌లు విజయవంతంగా ఎనేబుల్ అయ్యాయి!';
	@override String get permissionDenied => 'నోటిఫికేషన్ అనుమతి తిరస్కరించబడింది';
	@override String errorEnabling({required Object error}) => 'నోటిఫికేషన్‌లను ఎనేబుల్ చేయడంలో లోపం: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'సెటప్ పూర్తి చేయడంలో లోపం: ${error}';
}

// Path: notifications
class _TranslationsNotificationsTe implements TranslationsNotificationsEn {
	_TranslationsNotificationsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastTe breakfast = _TranslationsNotificationsBreakfastTe._(_root);
	@override late final _TranslationsNotificationsLunchTe lunch = _TranslationsNotificationsLunchTe._(_root);
	@override late final _TranslationsNotificationsDinnerTe dinner = _TranslationsNotificationsDinnerTe._(_root);
	@override late final _TranslationsNotificationsSnackTe snack = _TranslationsNotificationsSnackTe._(_root);
	@override late final _TranslationsNotificationsTestTe test = _TranslationsNotificationsTestTe._(_root);
}

// Path: login
class _TranslationsLoginTe implements TranslationsLoginEn {
	_TranslationsLoginTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'లాగిన్';
	@override String get signInWithGoogle => 'Google తో సైన్ ఇన్ చేయండి';
	@override String get signInFailed => 'Google సైన్-ఇన్ విఫలమైంది లేదా రద్దు చేయబడింది.';
}

// Path: disclaimer
class _TranslationsDisclaimerTe implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'దయచేసి గమనించండి';
	@override late final _TranslationsDisclaimerSnapTe snap = _TranslationsDisclaimerSnapTe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateTe weightEstimate = _TranslationsDisclaimerWeightEstimateTe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTe healthMetrics = _TranslationsDisclaimerHealthMetricsTe._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureTe calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureTe._(_root);
}

// Path: common
class _TranslationsCommonTe implements TranslationsCommonEn {
	_TranslationsCommonTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get close => 'మూసివేయండి';
	@override String get kContinue => 'కొనసాగించండి';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingTe implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel} ను ఇష్టపడుతున్నారా?';
	@override String get yes => 'అవును, నచ్చింది';
	@override String get no => 'అంతగా కాదు';
	@override String get rateStepHeading => 'ప్లే స్టోర్‌లో రేట్ చేయండి';
	@override String get emailStepHeading => 'ఈమెయిల్ ద్వారా ఫీడ్‌బ్యాక్ పంపండి';
	@override String soloDevMessage({required Object appLabel}) => 'ఒక చిట్టి రేటింగ్ ఇతరులకు ${appLabel} కనుగొనడంలో సహాయపడుతుంది మరియు డెవలప్‌మెంట్‌ని కొనసాగిస్తుంది. ఒక నిమిషం సమయం ఇస్తారా?';
	@override String get shareFeedbackViaEmail => 'మీ ఫీడ్‌బ్యాక్ తర్వాతి దిశను నిర్ణయిస్తుంది — ప్రతి సందేశాన్ని మేము చదువుతాం. ఈమెయిల్ ద్వారా మీ ఆలోచనలు పంచుకోవాలనుకుంటున్నారా?';
	@override String get rateCta => 'ప్లే స్టోర్‌లో రేట్ చేయండి';
	@override String get maybeLater => 'తర్వాత చూద్దాం';
	@override String get sendFeedback => 'ఫీడ్‌బ్యాక్ పంపండి';
	@override String get noThanks => 'వద్దు, ధన్యవాదాలు';
	@override String get aboutUsDescription => 'చిన్న బృందం ప్రేమతో రూపొందించింది. మేము గోప్యత, సరళత, మరియు మెరుగైన ఆహార అలవాట్లకు సహాయపడడంపై దృష్టి పెడుతున్నాం.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '${appLabel} వెనుక ఎవరు ఉన్నారో తెలుసుకోవాలనుకుంటున్నారా? చూడండి ';
	@override String get aboutUsLinkLabel => 'మా గురించి';
	@override String get thankYouMessage => 'ధన్యవాదాలు! మేము మరోసారి అడుగుతాం.';
}

// Path: health
class _TranslationsHealthTe implements TranslationsHealthEn {
	_TranslationsHealthTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect కు సింక్ చేయలేకపోయాం';
	@override String get mealSynced => 'భోజనం Health Connect తో సింక్ అయింది';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesTe implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionTe foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionTe._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisTe aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisTe._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationTe healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationTe._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderTe implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ లింగం ఏమిటి?';
	@override String get description => 'లింగం మీ బేసల్ మెటబాలిక్ రేటు (BMR) ను ఖచ్చితంగా లెక్కించడానికి సహాయపడుతుంది.';
	@override String get next => 'తదుపరి';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightTe implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ ఎత్తు ఎంత?';
	@override String get description => 'మీ ఎత్తు ఆధారంగా మేము మీ BMI మరియు శక్తి అవసరాలను ఖచ్చితంగా లెక్కిస్తాం.';
	@override String get metric => 'మెట్రిక్';
	@override String get imperial => 'ఇంపీరియల్';
	@override String get next => 'తదుపరి';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightTe implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'మీ ప్రస్తుత బరువు ఎంత?';
	@override String get currentDescription => 'మీ రోజువారీ లక్ష్యాలను వ్యక్తిగతీకరించడానికి మీ ప్రస్తుత బరువు అవసరం.';
	@override String get targetTitle => 'మీ లక్ష్య బరువు ఎంత?';
	@override String get targetDescription => 'లక్ష్య బరువు నిర్ణయించడం దీర్ఘకాలిక ప్లాన్‌ని నిర్ణయించడంలో సహాయపడుతుంది.';
	@override String get metric => 'మెట్రిక్';
	@override String get imperial => 'ఇంపీరియల్';
	@override String get next => 'తదుపరి';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeTe implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ పుట్టినరోజు ఎప్పుడు?';
	@override String get description => 'మీ వయస్సు మీ కాలోరీ అవసరాలను ఖచ్చితంగా లెక్కించడానికి సహాయపడుతుంది.';
	@override String get next => 'తదుపరి';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleTe implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'తక్కువ';
	@override String get healthy => 'ఆరోగ్యకరమైన';
	@override String get overweight => 'అధిక';
	@override String get obese => 'అధిక స్థూలకాయం';
	@override late final _TranslationsOnboardingBmiScaleCategoriesTe categories = _TranslationsOnboardingBmiScaleCategoriesTe._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesTe messages = _TranslationsOnboardingBmiScaleMessagesTe._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalTe implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ లక్ష్యం ఏమిటి?';
	@override String get description => 'మీరు సాధించాలనుకుంటున్న లక్ష్యానికి సరిపోయే ఎంపికను ఎంచుకోండి';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelTe implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ క్రియాశీలత ఎంత?';
	@override String get description => 'ఇది మీ రోజువారీ కాలోరీ అవసరాలను మరింత ఖచ్చితంగా లెక్కించడంలో సహాయపడుతుంది';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectTe implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ని కనెక్ట్ చేయండి';
	@override String get description => 'మెరుగైన అవగాహనల కోసం మరియు ఆటోమేటిక్ కాలరీ ట్రాకింగ్ కోసం మీ హెల్త్ డేటాను సింక్ చేయండి';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingTe automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingTe._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsTe progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsTe._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationTe seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationTe._(_root);
	@override String get connected => 'Health Connect కనెక్ట్ అయింది';
	@override String get notConnected => 'Health Connect కనెక్ట్ కాలేదు';
	@override String get setup => 'Health Connect సెటప్';
	@override String get skipForNow => 'ఇప్పటికి దాటేయండి';
	@override String get statusConnected => 'Health Connect కనెక్ట్ అయింది.';
	@override String get statusSuccess => 'Health Connect విజయవంతంగా కనెక్ట్ అయింది!';
	@override String statusPermissionDenied({required Object appLabel}) => 'అనుమతి నిరాకరించబడింది. ${appLabel} కోసం మీ ఫోన్ సెట్టింగ్స్‌లో Health Connect అనుమతులను ప్రారంభించండి.';
	@override String statusError({required Object error}) => 'Health Connect సెటప్ చేయడంలో లోపం: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementTe implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessTe trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessTe._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileTe healthProfile = _TranslationsOnboardingReinforcementHealthProfileTe._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleTe goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleTe._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryTe implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ AI సారాంశం';
	@override String get logMore => 'తదుపరి కొన్ని రోజులలో మరిన్ని భోజనాలను లాగ్ చేయండి, మీకు వ్యక్తిగతీకరించిన AI అవగాహన్లు అందుతాయి.';
	@override String get loading => 'మీ సారాంశాన్ని లోడ్ చేస్తున్నాం...';
	@override String mealCount({required Object count}) => '${count} భోజనాలు నమోదు చేసారు';
	@override String macroBalanceScore({required Object score}) => 'బ్యాలెన్స్ స్కోరు ${score}';
	@override String get topFoods => 'టాప్ ఫుడ్స్';
	@override String get trendUp => 'కాలోరీలు పెరుగుతున్నాయి';
	@override String get trendDown => 'కాలోరీలు తగ్గుతున్నాయి';
	@override String get trendSteady => 'కాలోరీలు స్థిరంగా ఉన్నాయి';
	@override String generatedAt({required Object time}) => '${time} న అప్‌డేట్ అయ్యింది';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalTe implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ రోజువారీ లక్ష్యం సెట్ చేయండి';
	@override String get titleSet => 'మీ రోజువారీ లక్ష్యం';
	@override String get description => 'మీ వెల్‌నెస్ ప్రయాణాన్ని ప్రారంభించడానికి సిద్ధమా? క్రింది రోజువారీ కాలోరీ లక్ష్యాన్ని సెట్ చేసి మీ పురోగతిని ప్రారంభించండి.';
	@override String get descriptionSet => 'మీ దిశ నిర్ణయించబడింది! ఇది మీను దారితీసే రోజువారీ కాలోరీ లక్ష్యం.';
	@override String get yourGoal => 'మీ లక్ష్యం';
	@override String get goal => 'లక్ష్యం';
	@override String get dailyCalories => 'రోజుకు కాలోరీలు (kcal)';
	@override String get setGoal => 'లక్ష్యం సెట్ చేయండి';
	@override String get intake => 'తిన్నవి';
	@override String get burned => 'ఖర్చైనవి';
	@override String get weightImpact => 'బరువుపై ప్రభావం';
	@override String get estLoss => 'అంచనా తగ్గుదల';
	@override String get estGain => 'అంచనా పెరుగుదల';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryTe implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'దైనందిన సారాంశం';
	@override String get calories => 'కాలోరీలు';
	@override String get carbs => 'కార్బ్స్';
	@override String get protein => 'ప్రోటీన్';
	@override String get fat => 'ఫ్యాట్';
	@override String get fiber => 'ఫైబర్';
	@override String get grams => 'గ్రాములు';
	@override String get chartAccessibilityLabel => 'మాక్రోస్ చార్ట్';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressTe implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఈరోజు మాక్రో విభజన';
	@override String get target => 'లక్ష్యం';
	@override String get current => 'ప్రస్తుతము';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryTe implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => '7-రోజుల మాక్రో చరిత్ర';
	@override String get trendTitle => 'ఈరోజు ధోరణి';
	@override String peakHour({required Object hour}) => 'పీక్: ${hour}:00';
	@override String get noHistoryYet => 'ఇంకా చరిత్ర లేదు';
	@override String get startLogging => 'ఇక్కడ మీ 7-రోజుల మాక్రో ధోరణులను చూడడానికి\nభోజనాలను లాగ్ చేయడం ప్రారంభించండి';
}

// Path: home.mealLog
class _TranslationsHomeMealLogTe implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'నమోదైన భోజనాలు';
	@override String get emptyMessage => 'మీ చివరి భోజనం ఫోటో తీసి ఇక్కడ లాగ్ చేయండి.';
	@override String get noMealsToday => 'ఈరోజు ఎలాంటి భోజనాలు నమోదు కాలేదు';
	@override String get seeAllMeals => 'అన్నీ చూడండి';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionTe implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI తో క్విక్ యాడ్';
	@override String get description => 'మీ భోజనాన్ని వివరిస్తే, మిగతాదంతా AI చూసుకుంటుంది.';
	@override String get hint => 'ఉదా: బ్రేక్‌ఫాస్ట్‌కు నేను పెద్ద బౌల్ ఓట్‌మీల్‌తో పాటు స్లైస్ చేసిన అరటి మరియు ఒక స్కూప్ వే తీసుకున్నాను ...';
	@override String get analyzeMeal => 'భోజనం విశ్లేషించండి';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsTe implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఇష్టమైన భోజనాలు';
	@override String get description => 'మీ ఇష్టమైన భోజనాల్లో ఒకదాన్ని త్వరగా జోడించండి.';
	@override String get noFavorites => 'ఇంకా ఇష్టమైన భోజనాలు లేవు.';
	@override String get addFavoriteHint => 'ఒక భోజనాన్ని ఫేవరిట్‌గా గుర్తించడానికి స్టార్‌పై నొక్కండి.';
	@override String get seeAll => 'అన్నీ చూడండి';
	@override String get add => 'జోడించండి';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapTe implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'స్నాప్ చేసి మీ భోజనాన్ని ట్రాక్ చేయండి';
	@override String get description => 'AI విశ్లేషణ కోసం మీ ఆహారం ఫోటో తీయడానికి కెమెరాను ఉపయోగించండి.';
	@override String get openCamera => 'కెమెరా తెరవండి';
	@override String get gallery => 'గ్యాలరీ';
	@override String get compressingPhoto => 'ఫోటోను ఆప్టిమైజ్ చేస్తున్నాం…';
	@override String get uploadingPhoto => 'ఫోటోను అప్‌లోడ్ చేస్తున్నాం…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthTe implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect తో సింక్ చేయండి';
	@override String get description => 'మీ పోషక డేటాను Health Connect తో సింక్ చేయండి';
	@override String get install => 'ఇన్‌స్టాల్';
	@override String get connect => 'కనెక్ట్';
}

// Path: meal.nutrition
class _TranslationsMealNutritionTe implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get calories => 'కాలోరీలు';
	@override String get carbs => 'కార్బ్స్ (గ్రా)';
	@override String get protein => 'ప్రోటీన్ (గ్రా)';
	@override String get fat => 'ఫ్యాట్ (గ్రా)';
	@override String get fiber => 'ఫైబర్ (గ్రా)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationTe implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'భోజనం తొలగించు';
	@override String get message => 'ఈ భోజన ఎంట్రీని నిజంగా తొలగించాలనుకుంటున్నారా?';
	@override String get cancel => 'రద్దు';
	@override String get delete => 'తొలగించండి';
}

// Path: meal.variation
class _TranslationsMealVariationTe implements TranslationsMealVariationEn {
	_TranslationsMealVariationTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String question({required Object total, required Object current}) => '${total} లో ${current} ప్రశ్న';
	@override String get noVariationsAvailable => 'వేరియేషన్లు లేవు';
}

// Path: meal.analysis
class _TranslationsMealAnalysisTe implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI భోజనం విశ్లేషణ';
	@override String get reassurance => 'ఇది సాధారణంగా కొన్ని సెకన్లు పడుతుంది.';
	@override String get stepStarted => 'ప్రారంభిస్తున్నాం…';
	@override String get stepDecomposition => 'మీ భోజనాన్ని అర్థం చేసుకుంటున్నాం…';
	@override String get stepIngredients => 'పదార్థాలను పోషక డేటాతో సరిపోలుస్తున్నాం…';
	@override String get stepUncertainty => 'నమ్మకాన్ని పరీక్షిస్తున్నాం…';
	@override String get stepMealTypeQuestion => 'ఇంకా కొద్దిసేపట్లో…';
	@override String get stepResult => 'మీ ఫలితాన్ని పూర్తిచేస్తున్నాం…';
	@override String get stepError => 'ఏదో తప్పు జరిగింది';
	@override String get stepDefault => 'మీ భోజనాన్ని విశ్లేషిస్తున్నాం…';
	@override String get progressUnderstand => 'అర్థం';
	@override String get progressMatch => 'మ్యాచ్';
	@override String get progressCheck => 'చెక్';
	@override String get progressFinish => 'ఫినిష్';
	@override String ingredientsLine({required Object count}) => '${count} పదార్థాలు గుర్తించబడ్డాయి';
	@override String get ingredientsPending => 'పదార్థాలను స్కాన్ చేస్తున్నారు…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackTe implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

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
class _TranslationsFavoritesSortOptionsTe implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get recent => 'ఇటీవలి';
	@override String get calories => 'కాలోరీలు';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsTe implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ప్రొఫైల్';
	@override String get basicInformation => 'మూల సమాచారం';
	@override String get goalsAndActivity => 'లక్ష్యాలు & క్రియాశీలత';
	@override String get calculatedValues => 'లెక్కించబడిన విలువలు';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesTe implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'రోజువారీ లక్ష్యం';
	@override String get calPerDay => 'cal/రోజు';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsTe implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'వ్యక్తిగత సమాచారం';
	@override String get physicalMeasurements => 'భౌతిక కొలతలు';
	@override String get goalsAndActivity => 'లక్ష్యాలు & క్రియాశీలత';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersTe implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get male => 'పురుషుడు';
	@override String get female => 'మహిళ';
	@override String get other => 'ఇతరులు';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsTe implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightTe loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightTe._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightTe maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightTe._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightTe gainWeight = _TranslationsEditProfileWeightGoalsGainWeightTe._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsTe implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryTe sedentary = _TranslationsEditProfileActivityLevelsSedentaryTe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveTe lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveTe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveTe moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveTe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveTe veryActive = _TranslationsEditProfileActivityLevelsVeryActiveTe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveTe extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveTe._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsTe implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ప్రొఫైల్';
	@override String get localization => 'లోకలైజేషన్';
	@override String get notifications => 'నోటిఫికేషన్‌లు';
	@override String get healthConnect => 'హెల్త్ కనెక్ట్';
	@override String get supportAndLegal => 'సపోర్ట్ & లీగల్';
	@override String get about => 'గురించి';
	@override String get dangerZone => 'డేంజర్ జోన్';
	@override String get developer => 'డెవలపర్';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileTe implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ప్రొఫైల్ సవరించండి';
	@override String get subtitle => 'మీ వ్యక్తిగత సమాచారాన్ని అప్‌డేట్ చేయండి';
}

// Path: settings.language
class _TranslationsSettingsLanguageTe implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'భాష';
	@override String get subtitle => 'మీకు ఇష్టమైన భాషను ఎంచుకోండి';
	@override String get searchHint => 'భాషలను వెతకండి...';
	@override String get noResults => 'ఫలితాలు లభించలేదు';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitTe implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఎత్తు యూనిట్';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitTe implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'బరువు యూనిట్';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersTe implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'భోజనం రిమైండర్లు';
	@override String get subtitle => 'సమయోచిత హెచ్చరికలతో ట్రాక్‌లో ఉండండి';
}

// Path: settings.theme
class _TranslationsSettingsThemeTe implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'థీమ్';
	@override String get light => 'లైట్';
	@override String get dark => 'డార్క్';
	@override String get system => 'సిస్టమ్';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackTe implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఫీడ్‌బ్యాక్ పంపండి';
	@override String subtitle({required Object appLabel}) => '${appLabel} ను మెరుగుపరిచేందుకు సహకరించండి';
	@override String emailSubject({required Object appLabel}) => '${appLabel} యాప్ ఫీడ్‌బ్యాక్';
	@override String get emailBodyPrefix => 'దయచేసి క్రింద మీ ఫీడ్‌బ్యాక్ ఇవ్వండి:';
	@override String get appVersion => 'యాప్ వెర్షన్';
	@override String get device => 'పరికరం';
	@override String get osVersion => 'OS వెర్షన్';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryTe implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీల్ చరిత్ర ఎగుమతి';
	@override String get subtitle => 'మీ లాగ్ చేసిన భోజనాల CSV ని షేర్ చేయండి';
	@override String get shareText => 'మీ Calorify మీల్ చరిత్ర ఎగుమతి';
	@override String failed({required Object error}) => 'మీల్ చరిత్రను ఎగుమతి చేయలేకపోయాం: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataTe implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'అన్నీ డేటా క్లియర్ చేయండి';
	@override String get subtitle => 'మీ మొత్తం సమాచారాన్ని తిరిగి రాని విధంగా తొలగించండి';
	@override String get confirmationTitle => 'అన్నీ డేటా క్లియర్ చేయాలా?';
	@override String get confirmationMessage => 'ఈ చర్యను తిరిగి తీసుకోలేరు. మీరు లాగ్ చేసిన భోజనాలు, ఇష్టాలు, మరియు ప్రొఫైల్ సెట్టింగ్‌లు శాశ్వతంగా తొలగించబడతాయి.';
	@override String get cancel => 'రద్దు';
	@override String get clearEverything => 'అన్నీ తొలగించండి';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsTe implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'డీబగ్ ఎంపికలు';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectTe implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'హెల్త్ కనెక్ట్';
	@override String get subtitle => 'అనుమతులను చూడండి మరియు నిర్వహించండి';
	@override late final _TranslationsSettingsHealthConnectUnavailableTe unavailable = _TranslationsSettingsHealthConnectUnavailableTe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsTe permissions = _TranslationsSettingsHealthConnectPermissionsTe._(_root);
	@override String get managePermissions => 'అనుమతులను నిర్వహించండి';
	@override String get openSettings => 'Health Connect సెట్టింగ్‌లను తెరవండి';
	@override String get requestPermissions => 'అనుమతులు కోరండి';
	@override String get permissionRequestCancelledOrFailed => 'అనుమతి అభ్యర్థన రద్దు చేయబడింది లేదా విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి లేదా Health Connect సెట్టింగ్‌లలో చేతితో అనుమతులు ఇవ్వండి.';
	@override String get permissionRequestFailed => 'అనుమతులను కోరలేకపోయాం. దయచేసి మళ్లీ ప్రయత్నించండి లేదా Health Connect సెట్టింగ్‌లలో చేతితో అనుమతులు ఇవ్వండి.';
	@override String get requestingPermissions => 'కోరుతున్నాం...';
}

// Path: settings.about
class _TranslationsSettingsAboutTe implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'గురించి';
	@override String get tagline => 'వేగంగా, ఉచితంగా, మరియు గోప్యత-ముందు కాలోరీ అవగాహన';
	@override late final _TranslationsSettingsAboutOurStoryTe ourStory = _TranslationsSettingsAboutOurStoryTe._(_root);
	@override late final _TranslationsSettingsAboutPrivacyTe privacy = _TranslationsSettingsAboutPrivacyTe._(_root);
	@override late final _TranslationsSettingsAboutDeveloperTe developer = _TranslationsSettingsAboutDeveloperTe._(_root);
	@override late final _TranslationsSettingsAboutFeedbackTe feedback = _TranslationsSettingsAboutFeedbackTe._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoTe implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'బిల్డ్ ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastTe implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'అల్పాహార సమయం! 🍳';
	@override String get body => 'మీ అల్పాహారాన్ని లాగ్ చేయడం మర్చిపోవద్దు';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchTe implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మధ్యాహ్న భోజన సమయం! 🥗';
	@override String get body => 'మీ మధ్యాహ్న భోజనాన్ని లాగ్ చేసే సమయం';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerTe implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'విందు సమయం! 🍽️';
	@override String get body => 'మీ విందును లాగ్ చేయడం మర్చిపోవద్దు';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackTe implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'స్నాక్ సమయం! 🍎';
	@override String get body => 'ఒక ఆరోగ్యకరమైన స్నాక్ సమయం';
}

// Path: notifications.test
class _TranslationsNotificationsTestTe implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'టెస్ట్ నోటిఫికేషన్';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapTe implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} అంచనా పోషక సమాచారాన్ని అందిస్తుంది. ఖచ్చితత్వం మీ ఇన్‌పుట్ & ఆహార భిన్నత్వాలపై ఆధారపడి ఉంటుంది. ఇది మార్గదర్శకంగా మాత్రమే; ఖచ్చితమైన మూలంగా కాదు. వ్యక్తిగత సలహాల కోసం నిపుణుడిని సంప్రదించండి.';
	@override late final _TranslationsDisclaimerSnapPortionSizeTe portionSize = _TranslationsDisclaimerSnapPortionSizeTe._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsTe preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsTe._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsTe ingredients = _TranslationsDisclaimerSnapIngredientsTe._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsTe databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsTe._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateTe implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'బరువు అంచనా గురించి';
	@override String get description => 'ప్రతిపాదిత బరువు మార్పు సులభమైన కాలోరీ-ఇన్ vs. కాలోరీ-అవుట్ నమూనాపై ఆధారపడిన సైద్ధాంతిక అంచనా మాత్రమే. ఇది ప్రేరణ కోసం మార్గదర్శకత్వం; మీ వాస్తవ బరువు అంచనా కాదు.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyTe calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyTe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsTe biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsTe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightTe waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightTe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTe professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTe._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsTe implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get description => 'ఈ ప్రమాణాలు మీ శరీరానికి అవసరమైన శక్తిని అర్థం చేసుకోవడంలో, మీ పోషకాహార లక్ష్యాలకు మార్గనిర్దేశం చేయడంలో సహాయపడతాయి.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrTe bmr = _TranslationsDisclaimerHealthMetricsBmrTe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeTe tdee = _TranslationsDisclaimerHealthMetricsTdeeTe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalTe dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalTe._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureTe implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'కేలరీ వ్యయం అంచనా';
	@override String get description => 'హెల్త్ కనెక్ట్ డేటా అందుబాటులో లేకపోతే, మీ బేసల్ మెటబాలిక్ రేట్ (BMR) మరియు కార్యకలాప స్థాయి (TDEE) ఆధారంగా, ఇప్పటివరకు గడిచిన రోజులోని భాగానికి అనుగుణంగా సవరించి, ఈరోజు దహనం చేసిన కేలరీలను అంచనా వేస్తాము.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedTe howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedTe._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTe professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTe._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionTe implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'స్మార్ట్ ఫుడ్ గుర్తింపు';
	@override String get description => 'ఒక ఫోటో తీయండి, మీ భోజనాన్ని AI గుర్తిస్తుంది';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisTe implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI విశ్లేషణ';
	@override String get description => 'మీ వివరణల నుంచి తక్షణ పోషక సమాచారం పొందండి';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationTe implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'హెల్త్ ఇంటిగ్రేషన్';
	@override String get description => 'మెరుగైన అవగాహన కోసం Health Connect ను కనెక్ట్ చేయండి';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesTe implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'తక్కువ బరువు';
	@override String get healthyWeight => 'ఆరోగ్యకర బరువు';
	@override String get overweight => 'అధిక బరువు';
	@override String get obese => 'ఒబీస్';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesTe implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'సరైన పౌష్టికాహారం ఉన్న భోజనాలతో సమతుల్య బరువుకు చేరడానికి మేము మీకు సహాయకమైన ప్రణాళిక రూపొందిస్తాం.';
	@override String get healthy => 'చాలా బాగుంది! మీరు ఆరోగ్యకర పరిధిలో ఉన్నారు. మీ ఉత్సాహం మరియు శక్తి స్థాయిలను మేము నిలబెట్టేందుకు సహాయపడతాం.';
	@override String overweight({required Object appLabel}) => '${appLabel} మీ ప్రయాణాన్ని AI ఆధారిత ట్రాకింగ్‌తో సులభతరం చేస్తుంది, మీరు ఆత్మవిశ్వాసంతో లక్ష్యాన్ని చేరుకునేలా.';
	@override String get obese => 'మీ ఆరోగ్య లక్ష్యాల కోసం వ్యక్తిగత మార్గదర్శనం మరియు నిలకడైన వ్యూహాలతో మేము మీకు తోడుగా ఉంటాం.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingTe implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఆటోమేటిక్ కాలరీ ట్రాకింగ్';
	@override String get description => 'మీ ఫిట్నెస్ యాప్‌ల నుండి ఖర్చైన కాలోరీలను ట్రాక్ చేయండి';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsTe implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ప్రోగ్రెస్ ఇన్సైట్స్';
	@override String get description => 'మీ ఆరోగ్య ధోరణులపై విపులమైన అవగాహన పొందండి';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationTe implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'సాఫీ ఇంటిగ్రేషన్';
	@override String get description => 'మీకు ఇష్టమైన హెల్త్ యాప్‌ల నుండి డేటాను సింక్ చేయండి';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessTe implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీరు ఒంటరిగా లేరు';
	@override String get genericMessage => 'సతత ట్రాకింగ్ దీర్ఘకాలిక విజయానికి #1 సూచిక అని పరిశోధనలు చూపిస్తున్నాయి.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age} సంవత్సరాల ${gender} గా ${goal} కోరుకుంటే, సతత ట్రాకింగ్ విజయం సాధించడానికి #1 సూచిక.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} చేతితో చేసే దానికంటే 10 రెట్లు సులభం చేస్తుంది.';
	@override String get getStartedTitle => 'ప్రారంభించడానికి సిద్ధమా?';
	@override String get tipPhoto => 'తక్షణ విశ్లేషణ కోసం మీ భోజనాల ఫోటోలు తీయండి';
	@override String get tipConsistency => 'అర్థవంతమైన పురోగతిని చూడటానికి నిరంతరం నమోదు చేయండి';
	@override String get tipProgress => 'ప్రేరణగా ఉండేందుకు మీ పురోగతిని ప్రతిదినం ట్రాక్ చేయండి';
	@override String get button => 'లెట్స్ గో';
	@override String get defaultGender => 'వ్యక్తి';
	@override String get defaultGoal => 'ఆరోగ్యకరమైన మీరు';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileTe implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ ఆరోగ్య ప్రొఫైల్';
	@override String bmiDescription({required Object bmi}) => 'మీ ప్రమాణాల ఆధారంగా, మీ BMI ${bmi}.';
	@override String get finalizeDescription => 'మీ అనుభవాన్ని అనుకూలీకరించడానికి ప్రొఫైల్‌ని పూర్తి చేద్దాం.';
	@override String get goalGain => 'పెంచుకోవడం';
	@override String get goalLose => 'తగ్గించడం';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'మీ లక్ష్యాన్ని చేరడానికి, మీరు ${direction} ${diff} ${unit} చేయాలి.';
	@override String get goalReached => 'మీరు మీ లక్ష్య బరువులోనే ఉన్నారు! దీన్ని నిలబెట్టేందుకు మేము సహాయపడతాం.';
	@override String get button => 'లెట్స్ గో';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleTe implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'అద్భుతమైన ప్రారంభం!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'మీరు ${goalText} వైపు మొదటి అడుగు వేశారు. మీరు ${activityText} కాబట్టి, ${appLabel} మీ జీవనశైలికి సరిపోయేలా లక్ష్యాలను సర్దుబాటు చేస్తుంది.';
	@override String get personalizedTargets => 'వ్యక్తిగతీకరించిన కాలోరీ లక్ష్యాలు';
	@override String get aiMealDetection => 'AI ఆధారిత భోజనం గుర్తింపు';
	@override String get macroBreakdowns => 'వివరమైన మాక్రో-న్యూట్రియంట్ విభజనలు';
	@override String get button => 'లెట్స్ గో';
	@override String get defaultGoal => 'మీ లక్ష్యాలు';
	@override String get defaultActivity => 'క్రియాశీలంగా';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightTe implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'బరువు తగ్గండి';
	@override String get description => 'కాలోరీ లోటు సృష్టించి బరువు తగ్గండి';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightTe implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'బరువు నిలుపుకోండి';
	@override String get description => 'మీ ప్రస్తుత బరువును నిలుపుకోండి';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightTe implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'బరువు పెంచుకోండి';
	@override String get description => 'కాలోరీ అధిక్యత సృష్టించి బరువు పెంచుకోండి';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryTe implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'సేదింత';
	@override String get description => 'వ్యాయామం దాదాపు లేకపోవడం';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveTe implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'తేలికగా క్రియాశీలం';
	@override String get description => 'తేలిక వ్యాయామం వారానికి 1-3 రోజులు';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveTe implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'మోస్తరు క్రియాశీలం';
	@override String get description => 'మధ్యస్థ వ్యాయామం వారానికి 3-5 రోజులు';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveTe implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'చాలా క్రియాశీలం';
	@override String get description => 'కఠిన వ్యాయామం వారానికి 6-7 రోజులు';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveTe implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'అత్యంత క్రియాశీలం';
	@override String get description => 'అత్యంత కఠిన వ్యాయామం, శారీరక పని';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableTe implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect అందుబాటులో లేదు';
	@override String get description => 'ఈ పరికరంలో Health Connect అందుబాటులో లేదు. దయచేసి ప్లే స్టోర్ (Android 9+) నుండి Health Connect ఇన్‌స్టాల్ చేయండి లేదా Android 14+ కి అప్డేట్ చేయండి.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsTe implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'అనుమతులు';
	@override String get description => 'Health Connect ఇంటిగ్రేషన్ ఇవ్వడానికి ఈ అనుమతులు కావాలి:';
	@override String get granted => 'ఇచ్చింది';
	@override String get notGranted => 'ఇవ్వలేదు';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTe caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadTe nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadTe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteTe nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteTe._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryTe implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మా కథ';
	@override String content({required Object appLabel}) => '${appLabel} ఒక సులభమైన నిరాశ నుంచి పుట్టింది: చాలా కాలరీ ట్రాకింగ్ యాప్‌లు అతి క్లిష్టం, నిరంతర మాన్యువల్ ఇన్‌పుట్ కోరుతాయి, అధిక చందాలు వసూలు చేస్తాయి లేదా గోప్యతను పరిరక్షించవు.\n\nఒక సోలో డెవలపర్‌గా, నేను సులభమైన మరియు న్యాయమైనదాన్ని నిర్మించాలని అనుకున్నాను — శ్రమను తగ్గించడానికి AI ని ఉపయోగించే, వేగంగా మరియు ఉచితంగా ఉండే, మరియు మీ ఆరోగ్య డేటాను గౌరవించే యాప్.\n\n${appLabel} నేను ఉండాలని ఆశించిన యాప్: అకౌంట్‌లు లేవు, ట్రాకింగ్ లేదు, ప్రకటనలు లేవు — మీ ఆరోగ్య లక్ష్యాల కోసం స్పష్టమైన, ప్రాయోగిక అవగాహన మాత్రమే.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyTe implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ గోప్యత ముఖ్యం';
	@override String get description => 'గోప్యత అనేది తర్వాత ఆలోచన కాదు — అది డిజైన్ సూత్రం. ఆచరణలో దాని అర్థం ఇదే:';
	@override String get noAccounts => 'అకౌంట్‌లు అవసరం లేదు\nయాప్‌ను వెంటనే ఉపయోగించండి. సైన్-అప్స్, ఐడెంటిటీలు లేవు.';
	@override String noTracking({required Object appLabel}) => 'ప్రవర్తనా ట్రాకింగ్ లేదు\n${appLabel} మీ కార్యకలాపాలను గమనించదు, వినియోగ ప్రొఫైల్‌లు తయారు చేయదు లేదా యాప్‌లు/వెబ్‌సైట్లలో మీను ట్రాక్ చేయదు.';
	@override String noAds({required Object appLabel}) => 'జ్ఞాపక ప్రకటనలు లేవు\n${appLabel} ప్రకటనలు లేదా డేటా-ఆధారిత మనీటైజేషన్ లేకుండా పనిచేయడానికి రూపొందించబడింది.';
	@override String get noDataSelling => 'డేటా విక్రయం లేదు\nమీ ఆరోగ్య డేటా ఎప్పుడూ తృతీయపక్షాలతో అమ్మబడదు లేదా పంచుకోబడదు.';
	@override String get localStorage => 'లోకల్-ఫస్ట్ స్టోరేజ్\nమీ డేటా మీ పరికరంలోనే ఉంటుంది.';
	@override String get privacyPolicy => 'గోప్యతా విధానం';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperTe implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఒక సోలో డెవలపర్ చేత నిర్మించబడింది';
	@override String description({required Object appLabel}) => '${appLabel} ప్రశాంతంగా, గోప్యతను గౌరవించే ఆరోగ్య సాఫ్ట్‌వేర్‌ను నిర్మించే ఒకే ఒక్క డెవలపర్ చేత రూపొందించబడింది మరియు నిర్వహించబడుతుంది.\n\nఫీడ్‌బ్యాక్‌ను వ్యక్తిగతంగా చదివి, యాప్ దిశను నిర్దేశించడంలో సహాయం చేస్తుంది.';
	@override String get website => 'వెబ్‌సైట్';
	@override String get email => 'ఈమెయిల్';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackTe implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} ను ఇష్టపడుతున్నారా?';
	@override String description({required Object appLabel}) => 'మీ ఫీడ్‌బ్యాక్ ${appLabel} ను అందరికీ మెరుగ్గా మార్చడంలో సహాయపడుతుంది.';
	@override String get rateApp => 'ప్లే స్టోర్‌లో రేట్ చేయండి';
	@override String get sendFeedback => 'ఫీడ్‌బ్యాక్ పంపండి';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeTe implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'పోర్షన్ పరిమాణం';
	@override String get description => 'అంచనాల ఖచ్చితత్వం మీ సరైన పోర్షన్ పరిమాణ అంచనాపై బలంగా ఆధారపడుతుంది.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsTe implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'తయారీ పద్ధతులు';
	@override String description({required Object appLabel}) => 'వంట విధానాలు ఆహారంలోని పోషక కంటెంట్‌ను గణనీయంగా మార్చవచ్చు. ${appLabel} అంచనాలు ఎల్లప్పుడూ ఈ వ్యత్యాసాలను పరిగణనలోకి తీసుకోకపోవచ్చు.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsTe implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'పదార్థాలు';
	@override String get description => 'చాలా దాచిన పదార్థాలున్న కాంప్లెక్స్ వంటకాలు తక్కువ ఖచ్చితమైన అంచనాలకు దారితీయవచ్చు.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsTe implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'డేటాబేస్ పరిమితులు';
	@override String description({required Object appLabel}) => '${appLabel} యొక్క ఫుడ్ డేటాబేస్ విస్తృతమైనదే అయినప్పటికీ ప్రతి ఆహార అంశం లేదా వేరియేషన్ అందులో ఉండకపోవచ్చు.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyTe implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'కాలోరీ ఖచ్చితత్వం';
	@override String get description => 'ఈ అంచనా మీ ట్రాక్ చేసిన కాలోరీ తీసుకురావడం మరియు ఖర్చు చేయడం ఎంత ఖచ్చితమో అంతే ఖచ్చితంగా ఉంటుంది. తప్పుగా లాగ్ చేస్తే అంచనా కూడా తప్పవుతుంది.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsTe implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'జీవశాస్త్ర కారకాలు';
	@override String description({required Object appLabel}) => 'నిజమైన బరువు తగ్గుదల/పెరుగుదల మీద మెటబాలిజం, హార్మోన్లు, నిద్ర, ఒత్తిడి, హైడ్రేషన్ వంటి అంశాలు ప్రభావం చూపుతాయి; ${appLabel} వీటిని కొలవలేడు.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightTe implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'నీటి బరువు & మార్పులు';
	@override String get description => 'నిత్యం నీరు నిల్వ, జీర్ణక్రియ, సమయాల వల్ల బరువు గణనీయంగా మారవచ్చు. ఈ అంచనా ఆ రోజువారీ మార్పులను పరిగణనలోకి తీసుకోదు.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTe implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'నిపుణుల మార్గదర్శనం';
	@override String get description => 'వైద్య నిర్ణయాల కోసం ఈ అంచనాను ఉపయోగించవద్దు. వ్యక్తిగత బరువు నిర్వహణ సలహాల కోసం ఎల్లప్పుడూ వైద్య నిపుణుడిని లేదా నమోదు చేసిన డైటీషియన్‌ను సంప్రదించండి.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrTe implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'బేసల్ మెటబాలిక్ రేట్ (BMR) అనేది శ్వాస, రక్త ప్రసరణ వంటి ప్రాథమిక కార్యాలను కొనసాగించడానికి, మీ శరీరం విశ్రాంతిలో ఉండగానే ఖర్చు చేసే కేలరీల సంఖ్య. BMR మీ వయసు, లింగం, ఎత్తు, బరువు మీద ఆధారపడి ఉంటుంది. ఎక్కువ BMR అంటే విశ్రాంతిలోనే మీ శరీరం సహజంగానే మరిన్ని కేలరీలను దహనం చేస్తోంది అని అర్థం; ఇది సాధారణంగా ఎక్కువ కండర ద్రవ్యరాశి, తక్కువ వయస్సు, లేదా పురుషుడు కావడం వంటివల్ల జరుగుతుంది. తక్కువ BMR సాధారణంగా తక్కువ కండర ద్రవ్యరాశి, ఎక్కువ వయస్సు, లేదా మహిళ కావడం సూచిస్తుంది.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeTe implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'టోటల్ డైలీ ఎనర్జీ ఎక్స్‌పెండిచర్ (TDEE) అనేది రోజులో మీరు దహనం చేసే మొత్తం కేలరీలు; ఇందులో మీ BMR తో పాటు శారీరక కార్యాచరణలు మరియు దినచర్య కదలికల ద్వారా దహనం అయ్యే కేలరీలు కూడా చేరుతాయి. TDEE మీ BMR మరియు కార్యకలాపాల స్థాయిపై ఆధారపడి ఉంటుంది. ఎక్కువ TDEE అంటే మొత్తం మీద మీరు ఎక్కువ కేలరీలు దహనం చేస్తున్నారనే అర్థం; ఇది సాధారణంగా ఎక్కువగా చురుకుగా ఉండడం లేదా అధిక BMR కారణంగా ఉంటుంది. తక్కువ TDEE అంటే తక్కువ దినసరి కార్యాచరణ లేదా తక్కువ BMR ని సూచిస్తుంది.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalTe implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'రోజువారీ లక్ష్యం';
	@override String get description => 'రోజువారీ లక్ష్యం అనేది మీ TDEE మరియు బరువు లక్ష్యాన్ని ఆధారంగా సూచించబడే రోజువారీ కేలరీ తీసుకోవలసిన పరిమాణం. బరువు తగ్గడానికి, మీ TDEE కంటే తక్కువ కేలరీలు తీసుకోవాలి. బరువును నిలుపుకోవడానికి, మీ TDEE కి సరిసమానంగా తీసుకోవాలి. బరువు పెరగడానికి, మీ TDEE కంటే ఎక్కువ కేలరీలు తీసుకోవాలి. ఇలా చేయడం వల్ల మీకు కావలసిన బరువు మార్పును ఆరోగ్యకరమైన గమ్యంతో సాధించడానికి సహాయపడుతుంది.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedTe implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఈ అంచనాను ఎలా లెక్కిస్తాము';
	@override String get description => 'మీ ప్రొఫైల్ ఆధారంగా TDEE ను లెక్కించి, గడిచిన రోజు భాగం (గంటలు + నిమిషాలు) / 24 తో దానిని గుణించి, ఇప్పటివరకు దహనం చేసిన కేలరీలను అంచనా వేస్తాము.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTe implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'వైద్య నిపుణుల మార్గదర్శకం';
	@override String get description => 'వైద్య నిర్ణయాల కోసం ఈ అంచనాను ఉపయోగించవద్దు. వ్యక్తిగత బరువు నిర్వహణ సలహాల కోసం ఎల్లప్పుడూ ఆరోగ్య సంరక్షణ నిపుణుడు లేదా రిజిస్టర్డ్ డైటీషియన్‌ను సంప్రదించండి.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTe implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మొత్తం ఖర్చైన కాలోరీలను చదవండి';
	@override String get description => 'యాప్‌కు Health Connect నుండి మీరు ఖర్చు చేసిన మొత్తం కాలోరీలను చదవడానికి అనుమతిస్తుంది.';
	@override String get usage => 'ఈ అనుమతి రోజంతా మీ మొత్తం శక్తి వినియోగాన్ని అర్థం చేసుకోవడానికి యాప్‌లో రోజువారీ కాలోరీ బర్న్ చూపించేందుకు ఉపయోగించబడుతుంది.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadTe implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'పోషక డేటాను చదవండి';
	@override String get description => 'యాప్‌కు Health Connect నుండి పోషక డేటాను చదవడానికి అనుమతిస్తుంది.';
	@override String get usage => 'ఈ అనుమతి ఇతర యాప్‌లు Health Connect కి లాగ్ చేసిన పోషక సమాచారాన్ని చదవడానికి యాప్‌కు సహాయపడుతుంది, తద్వారా మీ పోషకతపై సమగ్ర దృశ్యం లభిస్తుంది.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteTe implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'పోషక డేటాను రాయండి';
	@override String get description => 'యాప్‌కు Health Connect కు పోషక డాటాను రాయడానికి అనుమతిస్తుంది.';
	@override String get usage => 'ఈ అనుమతి మీరు లాగ్ చేసిన భోజనాలను Health Connect తో సింక్ చేయడానికి యాప్‌ను అనుమతిస్తుంది, తద్వారా మీరు ఉపయోగిస్తున్న ఇతర ఆరోగ్య మరియు ఫిట్‌నెస్ యాప్‌లకు మీ డేటా అందుబాటులో ఉంటుంది.';
}

/// The flat map containing all translations for locale <te>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTe {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'తెలుగు',
			'flag' => '🇮🇳',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'మీరు బాగా ఎక్కువ అభ్యర్థనలు చేసారు. దయచేసి కాసేపు ఆగి మళ్లీ ప్రయత్నించండి.',
			'errors.networkError' => 'నెట్‌వర్క్ లోపం. దయచేసి మీ ఇంటర్నెట్ కనెక్షన్‌ని తనిఖీ చేయండి.',
			'errors.unknownError' => 'ఏదో తప్పు జరిగింది. దయచేసి కొంతసేపటి తర్వాత మళ్లీ ప్రయత్నించండి.',
			'errors.loadingProfileData' => 'ప్రొఫైల్ డాటాను లోడ్ చేయడంలో లోపం',
			'errors.somethingWentWrong' => 'ఏదో తప్పు జరిగింది.',
			'errors.retry' => 'మళ్లీ ప్రయత్నించండి',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel}కి స్వాగతం',
			'onboarding.subtitle' => 'AI తో నడిచే మీ వ్యక్తిగత పోషక సహచరి',
			'onboarding.getStarted' => 'ప్రారంభించండి',
			'onboarding.features.foodRecognition.title' => 'స్మార్ట్ ఫుడ్ గుర్తింపు',
			'onboarding.features.foodRecognition.description' => 'ఒక ఫోటో తీయండి, మీ భోజనాన్ని AI గుర్తిస్తుంది',
			'onboarding.features.aiAnalysis.title' => 'AI విశ్లేషణ',
			'onboarding.features.aiAnalysis.description' => 'మీ వివరణల నుంచి తక్షణ పోషక సమాచారం పొందండి',
			'onboarding.features.healthIntegration.title' => 'హెల్త్ ఇంటిగ్రేషన్',
			'onboarding.features.healthIntegration.description' => 'మెరుగైన అవగాహన కోసం Health Connect ను కనెక్ట్ చేయండి',
			'onboarding.gender.title' => 'మీ లింగం ఏమిటి?',
			'onboarding.gender.description' => 'లింగం మీ బేసల్ మెటబాలిక్ రేటు (BMR) ను ఖచ్చితంగా లెక్కించడానికి సహాయపడుతుంది.',
			'onboarding.gender.next' => 'తదుపరి',
			'onboarding.height.title' => 'మీ ఎత్తు ఎంత?',
			'onboarding.height.description' => 'మీ ఎత్తు ఆధారంగా మేము మీ BMI మరియు శక్తి అవసరాలను ఖచ్చితంగా లెక్కిస్తాం.',
			'onboarding.height.metric' => 'మెట్రిక్',
			'onboarding.height.imperial' => 'ఇంపీరియల్',
			'onboarding.height.next' => 'తదుపరి',
			'onboarding.weight.currentTitle' => 'మీ ప్రస్తుత బరువు ఎంత?',
			'onboarding.weight.currentDescription' => 'మీ రోజువారీ లక్ష్యాలను వ్యక్తిగతీకరించడానికి మీ ప్రస్తుత బరువు అవసరం.',
			'onboarding.weight.targetTitle' => 'మీ లక్ష్య బరువు ఎంత?',
			'onboarding.weight.targetDescription' => 'లక్ష్య బరువు నిర్ణయించడం దీర్ఘకాలిక ప్లాన్‌ని నిర్ణయించడంలో సహాయపడుతుంది.',
			'onboarding.weight.metric' => 'మెట్రిక్',
			'onboarding.weight.imperial' => 'ఇంపీరియల్',
			'onboarding.weight.next' => 'తదుపరి',
			'onboarding.age.title' => 'మీ పుట్టినరోజు ఎప్పుడు?',
			'onboarding.age.description' => 'మీ వయస్సు మీ కాలోరీ అవసరాలను ఖచ్చితంగా లెక్కించడానికి సహాయపడుతుంది.',
			'onboarding.age.next' => 'తదుపరి',
			'onboarding.bmiScale.underweight' => 'తక్కువ',
			'onboarding.bmiScale.healthy' => 'ఆరోగ్యకరమైన',
			'onboarding.bmiScale.overweight' => 'అధిక',
			'onboarding.bmiScale.obese' => 'అధిక స్థూలకాయం',
			'onboarding.bmiScale.categories.underweight' => 'తక్కువ బరువు',
			'onboarding.bmiScale.categories.healthyWeight' => 'ఆరోగ్యకర బరువు',
			'onboarding.bmiScale.categories.overweight' => 'అధిక బరువు',
			'onboarding.bmiScale.categories.obese' => 'ఒబీస్',
			'onboarding.bmiScale.messages.underweight' => 'సరైన పౌష్టికాహారం ఉన్న భోజనాలతో సమతుల్య బరువుకు చేరడానికి మేము మీకు సహాయకమైన ప్రణాళిక రూపొందిస్తాం.',
			'onboarding.bmiScale.messages.healthy' => 'చాలా బాగుంది! మీరు ఆరోగ్యకర పరిధిలో ఉన్నారు. మీ ఉత్సాహం మరియు శక్తి స్థాయిలను మేము నిలబెట్టేందుకు సహాయపడతాం.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} మీ ప్రయాణాన్ని AI ఆధారిత ట్రాకింగ్‌తో సులభతరం చేస్తుంది, మీరు ఆత్మవిశ్వాసంతో లక్ష్యాన్ని చేరుకునేలా.',
			'onboarding.bmiScale.messages.obese' => 'మీ ఆరోగ్య లక్ష్యాల కోసం వ్యక్తిగత మార్గదర్శనం మరియు నిలకడైన వ్యూహాలతో మేము మీకు తోడుగా ఉంటాం.',
			'onboarding.weightGoal.title' => 'మీ లక్ష్యం ఏమిటి?',
			'onboarding.weightGoal.description' => 'మీరు సాధించాలనుకుంటున్న లక్ష్యానికి సరిపోయే ఎంపికను ఎంచుకోండి',
			'onboarding.activityLevel.title' => 'మీ క్రియాశీలత ఎంత?',
			'onboarding.activityLevel.description' => 'ఇది మీ రోజువారీ కాలోరీ అవసరాలను మరింత ఖచ్చితంగా లెక్కించడంలో సహాయపడుతుంది',
			'onboarding.healthConnect.title' => 'Health Connect ని కనెక్ట్ చేయండి',
			'onboarding.healthConnect.description' => 'మెరుగైన అవగాహనల కోసం మరియు ఆటోమేటిక్ కాలరీ ట్రాకింగ్ కోసం మీ హెల్త్ డేటాను సింక్ చేయండి',
			'onboarding.healthConnect.automaticTracking.title' => 'ఆటోమేటిక్ కాలరీ ట్రాకింగ్',
			'onboarding.healthConnect.automaticTracking.description' => 'మీ ఫిట్నెస్ యాప్‌ల నుండి ఖర్చైన కాలోరీలను ట్రాక్ చేయండి',
			'onboarding.healthConnect.progressInsights.title' => 'ప్రోగ్రెస్ ఇన్సైట్స్',
			'onboarding.healthConnect.progressInsights.description' => 'మీ ఆరోగ్య ధోరణులపై విపులమైన అవగాహన పొందండి',
			'onboarding.healthConnect.seamlessIntegration.title' => 'సాఫీ ఇంటిగ్రేషన్',
			'onboarding.healthConnect.seamlessIntegration.description' => 'మీకు ఇష్టమైన హెల్త్ యాప్‌ల నుండి డేటాను సింక్ చేయండి',
			'onboarding.healthConnect.connected' => 'Health Connect కనెక్ట్ అయింది',
			'onboarding.healthConnect.notConnected' => 'Health Connect కనెక్ట్ కాలేదు',
			'onboarding.healthConnect.setup' => 'Health Connect సెటప్',
			'onboarding.healthConnect.skipForNow' => 'ఇప్పటికి దాటేయండి',
			'onboarding.healthConnect.statusConnected' => 'Health Connect కనెక్ట్ అయింది.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect విజయవంతంగా కనెక్ట్ అయింది!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'అనుమతి నిరాకరించబడింది. ${appLabel} కోసం మీ ఫోన్ సెట్టింగ్స్‌లో Health Connect అనుమతులను ప్రారంభించండి.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect సెటప్ చేయడంలో లోపం: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'మీరు ఒంటరిగా లేరు',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'సతత ట్రాకింగ్ దీర్ఘకాలిక విజయానికి #1 సూచిక అని పరిశోధనలు చూపిస్తున్నాయి.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age} సంవత్సరాల ${gender} గా ${goal} కోరుకుంటే, సతత ట్రాకింగ్ విజయం సాధించడానికి #1 సూచిక.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} చేతితో చేసే దానికంటే 10 రెట్లు సులభం చేస్తుంది.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'ప్రారంభించడానికి సిద్ధమా?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'తక్షణ విశ్లేషణ కోసం మీ భోజనాల ఫోటోలు తీయండి',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'అర్థవంతమైన పురోగతిని చూడటానికి నిరంతరం నమోదు చేయండి',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'ప్రేరణగా ఉండేందుకు మీ పురోగతిని ప్రతిదినం ట్రాక్ చేయండి',
			'onboarding.reinforcement.trackingSuccess.button' => 'లెట్స్ గో',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'వ్యక్తి',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'ఆరోగ్యకరమైన మీరు',
			'onboarding.reinforcement.healthProfile.title' => 'మీ ఆరోగ్య ప్రొఫైల్',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'మీ ప్రమాణాల ఆధారంగా, మీ BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'మీ అనుభవాన్ని అనుకూలీకరించడానికి ప్రొఫైల్‌ని పూర్తి చేద్దాం.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'పెంచుకోవడం',
			'onboarding.reinforcement.healthProfile.goalLose' => 'తగ్గించడం',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'మీ లక్ష్యాన్ని చేరడానికి, మీరు ${direction} ${diff} ${unit} చేయాలి.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'మీరు మీ లక్ష్య బరువులోనే ఉన్నారు! దీన్ని నిలబెట్టేందుకు మేము సహాయపడతాం.',
			'onboarding.reinforcement.healthProfile.button' => 'లెట్స్ గో',
			'onboarding.reinforcement.goalLifestyle.title' => 'అద్భుతమైన ప్రారంభం!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'మీరు ${goalText} వైపు మొదటి అడుగు వేశారు. మీరు ${activityText} కాబట్టి, ${appLabel} మీ జీవనశైలికి సరిపోయేలా లక్ష్యాలను సర్దుబాటు చేస్తుంది.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'వ్యక్తిగతీకరించిన కాలోరీ లక్ష్యాలు',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI ఆధారిత భోజనం గుర్తింపు',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'వివరమైన మాక్రో-న్యూట్రియంట్ విభజనలు',
			'onboarding.reinforcement.goalLifestyle.button' => 'లెట్స్ గో',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'మీ లక్ష్యాలు',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'క్రియాశీలంగా',
			'tabs.dashboard' => 'డాష్‌బోర్డ్',
			'tabs.history' => 'చరిత్ర',
			'home.aiSummary.title' => 'మీ AI సారాంశం',
			'home.aiSummary.logMore' => 'తదుపరి కొన్ని రోజులలో మరిన్ని భోజనాలను లాగ్ చేయండి, మీకు వ్యక్తిగతీకరించిన AI అవగాహన్లు అందుతాయి.',
			'home.aiSummary.loading' => 'మీ సారాంశాన్ని లోడ్ చేస్తున్నాం...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} భోజనాలు నమోదు చేసారు',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'బ్యాలెన్స్ స్కోరు ${score}',
			'home.aiSummary.topFoods' => 'టాప్ ఫుడ్స్',
			'home.aiSummary.trendUp' => 'కాలోరీలు పెరుగుతున్నాయి',
			'home.aiSummary.trendDown' => 'కాలోరీలు తగ్గుతున్నాయి',
			'home.aiSummary.trendSteady' => 'కాలోరీలు స్థిరంగా ఉన్నాయి',
			'home.aiSummary.generatedAt' => ({required Object time}) => '${time} న అప్‌డేట్ అయ్యింది',
			'home.dailyGoal.title' => 'మీ రోజువారీ లక్ష్యం సెట్ చేయండి',
			'home.dailyGoal.titleSet' => 'మీ రోజువారీ లక్ష్యం',
			'home.dailyGoal.description' => 'మీ వెల్‌నెస్ ప్రయాణాన్ని ప్రారంభించడానికి సిద్ధమా? క్రింది రోజువారీ కాలోరీ లక్ష్యాన్ని సెట్ చేసి మీ పురోగతిని ప్రారంభించండి.',
			'home.dailyGoal.descriptionSet' => 'మీ దిశ నిర్ణయించబడింది! ఇది మీను దారితీసే రోజువారీ కాలోరీ లక్ష్యం.',
			'home.dailyGoal.yourGoal' => 'మీ లక్ష్యం',
			'home.dailyGoal.goal' => 'లక్ష్యం',
			'home.dailyGoal.dailyCalories' => 'రోజుకు కాలోరీలు (kcal)',
			'home.dailyGoal.setGoal' => 'లక్ష్యం సెట్ చేయండి',
			'home.dailyGoal.intake' => 'తిన్నవి',
			'home.dailyGoal.burned' => 'ఖర్చైనవి',
			'home.dailyGoal.weightImpact' => 'బరువుపై ప్రభావం',
			'home.dailyGoal.estLoss' => 'అంచనా తగ్గుదల',
			'home.dailyGoal.estGain' => 'అంచనా పెరుగుదల',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'దైనందిన సారాంశం',
			'home.dailySummary.calories' => 'కాలోరీలు',
			'home.dailySummary.carbs' => 'కార్బ్స్',
			'home.dailySummary.protein' => 'ప్రోటీన్',
			'home.dailySummary.fat' => 'ఫ్యాట్',
			'home.dailySummary.fiber' => 'ఫైబర్',
			'home.dailySummary.grams' => 'గ్రాములు',
			'home.dailySummary.chartAccessibilityLabel' => 'మాక్రోస్ చార్ట్',
			'home.intakeProgress.title' => 'ఈరోజు మాక్రో విభజన',
			'home.intakeProgress.target' => 'లక్ష్యం',
			'home.intakeProgress.current' => 'ప్రస్తుతము',
			'home.intakeHistory.title' => '7-రోజుల మాక్రో చరిత్ర',
			'home.intakeHistory.trendTitle' => 'ఈరోజు ధోరణి',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'పీక్: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'ఇంకా చరిత్ర లేదు',
			'home.intakeHistory.startLogging' => 'ఇక్కడ మీ 7-రోజుల మాక్రో ధోరణులను చూడడానికి\nభోజనాలను లాగ్ చేయడం ప్రారంభించండి',
			'home.mealLog.title' => 'నమోదైన భోజనాలు',
			'home.mealLog.emptyMessage' => 'మీ చివరి భోజనం ఫోటో తీసి ఇక్కడ లాగ్ చేయండి.',
			'home.mealLog.noMealsToday' => 'ఈరోజు ఎలాంటి భోజనాలు నమోదు కాలేదు',
			'home.mealLog.seeAllMeals' => 'అన్నీ చూడండి',
			'home.mealDescription.title' => 'AI తో క్విక్ యాడ్',
			'home.mealDescription.description' => 'మీ భోజనాన్ని వివరిస్తే, మిగతాదంతా AI చూసుకుంటుంది.',
			'home.mealDescription.hint' => 'ఉదా: బ్రేక్‌ఫాస్ట్‌కు నేను పెద్ద బౌల్ ఓట్‌మీల్‌తో పాటు స్లైస్ చేసిన అరటి మరియు ఒక స్కూప్ వే తీసుకున్నాను ...',
			'home.mealDescription.analyzeMeal' => 'భోజనం విశ్లేషించండి',
			'home.favoriteMeals.title' => 'ఇష్టమైన భోజనాలు',
			'home.favoriteMeals.description' => 'మీ ఇష్టమైన భోజనాల్లో ఒకదాన్ని త్వరగా జోడించండి.',
			'home.favoriteMeals.noFavorites' => 'ఇంకా ఇష్టమైన భోజనాలు లేవు.',
			'home.favoriteMeals.addFavoriteHint' => 'ఒక భోజనాన్ని ఫేవరిట్‌గా గుర్తించడానికి స్టార్‌పై నొక్కండి.',
			'home.favoriteMeals.seeAll' => 'అన్నీ చూడండి',
			'home.favoriteMeals.add' => 'జోడించండి',
			'home.mealSnap.title' => 'స్నాప్ చేసి మీ భోజనాన్ని ట్రాక్ చేయండి',
			'home.mealSnap.description' => 'AI విశ్లేషణ కోసం మీ ఆహారం ఫోటో తీయడానికి కెమెరాను ఉపయోగించండి.',
			'home.mealSnap.openCamera' => 'కెమెరా తెరవండి',
			'home.mealSnap.gallery' => 'గ్యాలరీ',
			'home.mealSnap.compressingPhoto' => 'ఫోటోను ఆప్టిమైజ్ చేస్తున్నాం…',
			'home.mealSnap.uploadingPhoto' => 'ఫోటోను అప్‌లోడ్ చేస్తున్నాం…',
			'home.connectHealth.title' => 'Health Connect తో సింక్ చేయండి',
			'home.connectHealth.description' => 'మీ పోషక డేటాను Health Connect తో సింక్ చేయండి',
			'home.connectHealth.install' => 'ఇన్‌స్టాల్',
			'home.connectHealth.connect' => 'కనెక్ట్',
			'history.noMeals' => 'ఏ భోజనాలు నమోదు కాలేదు',
			'history.emptyMessage' => 'మీ చివరి భోజనం ఫోటో తీసి ఇక్కడ లాగ్ చేయండి.',
			'history.today' => 'ఈ రోజు',
			'history.yesterday' => 'నిన్న',
			'meal.ohNo' => 'అయ్యో!',
			'meal.delete' => 'తొలగించండి',
			'meal.editMeal' => 'భోజనం సవరించండి',
			'meal.addMeal' => 'భోజనం జోడించండి',
			'meal.saveMeal' => 'భోజనం సేవ్ చేయండి',
			'meal.save' => 'సేవ్',
			'meal.mealName' => 'భోజన పేరు',
			'meal.mealNameHint' => 'ఉదా., టోస్ట్‌తో స్క్రాంబుల్ ఎగ్స్',
			'meal.mealQuantity' => 'భోజన పరిమాణం',
			'meal.mealQuantityHint' => 'ఉదా., 1 బౌల్, 2 ముక్కలు',
			'meal.timeOfMeal' => 'భోజనం చేసిన సమయం',
			'meal.timeOfMealHint' => 'మీరు భోజనం చేసిన సమయాన్ని ఎంచుకోండి',
			'meal.mealType' => 'భోజనం రకం',
			'meal.nutrition.calories' => 'కాలోరీలు',
			'meal.nutrition.carbs' => 'కార్బ్స్ (గ్రా)',
			'meal.nutrition.protein' => 'ప్రోటీన్ (గ్రా)',
			'meal.nutrition.fat' => 'ఫ్యాట్ (గ్రా)',
			'meal.nutrition.fiber' => 'ఫైబర్ (గ్రా)',
			'meal.deleteConfirmation.title' => 'భోజనం తొలగించు',
			'meal.deleteConfirmation.message' => 'ఈ భోజన ఎంట్రీని నిజంగా తొలగించాలనుకుంటున్నారా?',
			'meal.deleteConfirmation.cancel' => 'రద్దు',
			'meal.deleteConfirmation.delete' => 'తొలగించండి',
			'meal.addedToLog' => 'భోజనం మీ లాగ్‌లో జోడించబడింది!',
			'meal.couldNotAdd' => ({required Object error}) => 'భోజనం జోడించలేకపోయాం: ${error}',
			'meal.savedSuccessfully' => 'భోజనం విజయవంతంగా జోడించబడింది!',
			'meal.updatedSuccessfully' => 'భోజనం విజయవంతంగా అప్‌డేట్ అయింది!',
			'meal.errorSaving' => ({required Object error}) => 'భోజనం సేవ్ చేయడంలో లోపం: ${error}',
			'meal.removedFromFavorites' => 'ఇష్టాల నుండి తొలగించబడింది!',
			'meal.savedAsFavorite' => 'భోజనం ఫేవరిట్‌గా సేవ్ అయింది!',
			'meal.unfavorite' => 'ఫేవరిట్ తీసేయండి',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'ఫేవరిట్ అప్‌డేట్ చేయలేకపోయాం: ${error}',
			'meal.feedbackThanks' => 'ఫీడ్‌బ్యాక్‌కు ధన్యవాదాలు!',
			'meal.reanalysisUpdated' => 'మీ ఫీడ్‌బ్యాక్ ఆధారంగా విశ్లేషణను అప్‌డేట్ చేసాం.',
			'meal.failedToProcess' => ({required Object error}) => 'ప్రాసెస్ చేయడంలో వైఫల్యం: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'చిత్రాన్ని ప్రాసెస్ చేయడంలో వైఫల్యం: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'చిత్రాన్ని కంప్రెస్ చేయడంలో లోపం: ${error}',
			'meal.failedToSave' => 'డేటాను సేవ్ చేయలేకపోయాం. దయచేసి మళ్లీ ప్రయత్నించండి.',
			'meal.skip' => 'దాటవేయండి',
			'meal.variation.question' => ({required Object total, required Object current}) => '${total} లో ${current} ప్రశ్న',
			'meal.variation.noVariationsAvailable' => 'వేరియేషన్లు లేవు',
			'meal.analysis.title' => 'AI భోజనం విశ్లేషణ',
			'meal.analysis.reassurance' => 'ఇది సాధారణంగా కొన్ని సెకన్లు పడుతుంది.',
			'meal.analysis.stepStarted' => 'ప్రారంభిస్తున్నాం…',
			'meal.analysis.stepDecomposition' => 'మీ భోజనాన్ని అర్థం చేసుకుంటున్నాం…',
			'meal.analysis.stepIngredients' => 'పదార్థాలను పోషక డేటాతో సరిపోలుస్తున్నాం…',
			'meal.analysis.stepUncertainty' => 'నమ్మకాన్ని పరీక్షిస్తున్నాం…',
			'meal.analysis.stepMealTypeQuestion' => 'ఇంకా కొద్దిసేపట్లో…',
			'meal.analysis.stepResult' => 'మీ ఫలితాన్ని పూర్తిచేస్తున్నాం…',
			'meal.analysis.stepError' => 'ఏదో తప్పు జరిగింది',
			'meal.analysis.stepDefault' => 'మీ భోజనాన్ని విశ్లేషిస్తున్నాం…',
			'meal.analysis.progressUnderstand' => 'అర్థం',
			'meal.analysis.progressMatch' => 'మ్యాచ్',
			'meal.analysis.progressCheck' => 'చెక్',
			'meal.analysis.progressFinish' => 'ఫినిష్',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} పదార్థాలు గుర్తించబడ్డాయి',
			'meal.analysis.ingredientsPending' => 'పదార్థాలను స్కాన్ చేస్తున్నారు…',
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
			'favorites.title' => 'ఇష్టాలు',
			'favorites.empty' => 'ఇంకా ఇష్టమైన భోజనాలు లేవు.',
			'favorites.searchPlaceholder' => 'ఇష్టమైన భోజనాలను వెతకండి',
			'favorites.searchEmptyTitle' => 'మీ శోధనకు సరిపడే ఇష్టాలు లేవు',
			'favorites.searchEmptySubtitle' => 'వేరే భోజన పేరు, పరిమాణం లేదా రకం ప్రయత్నించండి.',
			'favorites.sortLabel' => 'ఇష్టాలను క్రమబద్ధీకరించండి',
			'favorites.undo' => 'రద్దు చేయండి',
			'favorites.removed' => ({required Object name}) => '${name} ను ఇష్టాల నుండి తొలగించాం',
			'favorites.sortOptions.recent' => 'ఇటీవలి',
			'favorites.sortOptions.calories' => 'కాలోరీలు',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'ప్రొఫైల్',
			'profile.noProfileData' => 'ప్రొఫైల్ డేటా కనుగొనబడలేదు',
			'profile.yourProfile' => 'మీ ప్రొఫైల్',
			'profile.viewAndManage' => 'మీ ఆరోగ్య సమాచారాన్ని చూడండి మరియు నిర్వహించండి',
			'profile.sections.profile' => 'ప్రొఫైల్',
			'profile.sections.basicInformation' => 'మూల సమాచారం',
			'profile.sections.goalsAndActivity' => 'లక్ష్యాలు & క్రియాశీలత',
			'profile.sections.calculatedValues' => 'లెక్కించబడిన విలువలు',
			'profile.gender' => 'లింగం',
			'profile.height' => 'ఎత్తు',
			'profile.weight' => 'బరువు',
			'profile.age' => 'వయస్సు',
			'profile.weightGoal' => 'బరువు లక్ష్యం',
			'profile.targetWeight' => 'లక్ష్య బరువు',
			'profile.activityLevel' => 'క్రియాశీల స్థాయి',
			'profile.healthMetrics' => 'ఆరోగ్య మీట్రిక్స్',
			'profile.notSet' => 'సెట్ కాలేదు',
			'profile.years' => 'సంవత్సరాలు',
			'profile.updatedSuccessfully' => 'ప్రొఫైల్ విజయవంతంగా అప్‌డేట్ అయింది!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'రోజువారీ లక్ష్యం',
			'profile.calculatedValues.calPerDay' => 'cal/రోజు',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'హెల్త్ స్కోరు',
			'healthScore.whyThisScore' => 'ఈ స్కోరు ఎందుకు?',
			'healthScore.note' => 'ఈ స్కోరు గుర్తించిన పదార్థాలు మరియు పోషక సాంద్రత ఆధారంగా AI అంచనా. వ్యక్తిగత ఆహార సలహాల కోసం ఎల్లప్పుడూ నిపుణుడిని సంప్రదించండి.',
			'healthScore.unhealthy' => 'అనారోగ్యకరం',
			'healthScore.healthy' => 'ఆరోగ్యకరం',
			'healthScore.neutral' => 'తటస్థ',
			'editProfile.title' => 'ప్రొఫైల్ సవరించండి',
			'editProfile.sections.personalInformation' => 'వ్యక్తిగత సమాచారం',
			'editProfile.sections.physicalMeasurements' => 'భౌతిక కొలతలు',
			'editProfile.sections.goalsAndActivity' => 'లక్ష్యాలు & క్రియాశీలత',
			'editProfile.gender' => 'లింగం',
			'editProfile.dateOfBirth' => 'పుట్టిన తేదీ',
			'editProfile.height' => 'ఎత్తు',
			'editProfile.weight' => 'బరువు',
			'editProfile.weightGoal' => 'బరువు లక్ష్యం',
			'editProfile.activityLevel' => 'క్రియాశీల స్థాయి',
			'editProfile.metric' => 'మెట్రిక్',
			'editProfile.imperial' => 'ఇంపీరియల్',
			'editProfile.unitCm' => 'సెం.మీ',
			'editProfile.unitFt' => 'అడుగులు',
			'editProfile.unitKg' => 'కిలోలు',
			'editProfile.unitLbs' => 'పౌండ్లు',
			'editProfile.metricCm' => 'మెట్రిక్ (సెం.మీ)',
			'editProfile.imperialFtIn' => 'ఇంపీరియల్ (అడుగులు/అంగుళాలు)',
			'editProfile.metricKg' => 'మెట్రిక్ (కిలోలు)',
			'editProfile.imperialLbs' => 'ఇంపీరియల్ (పౌండ్లు)',
			'editProfile.genders.male' => 'పురుషుడు',
			'editProfile.genders.female' => 'మహిళ',
			'editProfile.genders.other' => 'ఇతరులు',
			'editProfile.weightGoals.loseWeight.name' => 'బరువు తగ్గండి',
			'editProfile.weightGoals.loseWeight.description' => 'కాలోరీ లోటు సృష్టించి బరువు తగ్గండి',
			'editProfile.weightGoals.maintainWeight.name' => 'బరువు నిలుపుకోండి',
			'editProfile.weightGoals.maintainWeight.description' => 'మీ ప్రస్తుత బరువును నిలుపుకోండి',
			'editProfile.weightGoals.gainWeight.name' => 'బరువు పెంచుకోండి',
			'editProfile.weightGoals.gainWeight.description' => 'కాలోరీ అధిక్యత సృష్టించి బరువు పెంచుకోండి',
			'editProfile.activityLevels.sedentary.name' => 'సేదింత',
			'editProfile.activityLevels.sedentary.description' => 'వ్యాయామం దాదాపు లేకపోవడం',
			'editProfile.activityLevels.lightlyActive.name' => 'తేలికగా క్రియాశీలం',
			'editProfile.activityLevels.lightlyActive.description' => 'తేలిక వ్యాయామం వారానికి 1-3 రోజులు',
			'editProfile.activityLevels.moderatelyActive.name' => 'మోస్తరు క్రియాశీలం',
			'editProfile.activityLevels.moderatelyActive.description' => 'మధ్యస్థ వ్యాయామం వారానికి 3-5 రోజులు',
			'editProfile.activityLevels.veryActive.name' => 'చాలా క్రియాశీలం',
			'editProfile.activityLevels.veryActive.description' => 'కఠిన వ్యాయామం వారానికి 6-7 రోజులు',
			'editProfile.activityLevels.extremelyActive.name' => 'అత్యంత క్రియాశీలం',
			'editProfile.activityLevels.extremelyActive.description' => 'అత్యంత కఠిన వ్యాయామం, శారీరక పని',
			'settings.title' => 'సెట్టింగ్‌లు',
			'settings.sections.profile' => 'ప్రొఫైల్',
			'settings.sections.localization' => 'లోకలైజేషన్',
			'settings.sections.notifications' => 'నోటిఫికేషన్‌లు',
			'settings.sections.healthConnect' => 'హెల్త్ కనెక్ట్',
			'settings.sections.supportAndLegal' => 'సపోర్ట్ & లీగల్',
			'settings.sections.about' => 'గురించి',
			'settings.sections.dangerZone' => 'డేంజర్ జోన్',
			'settings.sections.developer' => 'డెవలపర్',
			'settings.editProfile.title' => 'ప్రొఫైల్ సవరించండి',
			'settings.editProfile.subtitle' => 'మీ వ్యక్తిగత సమాచారాన్ని అప్‌డేట్ చేయండి',
			'settings.language.title' => 'భాష',
			'settings.language.subtitle' => 'మీకు ఇష్టమైన భాషను ఎంచుకోండి',
			'settings.language.searchHint' => 'భాషలను వెతకండి...',
			'settings.language.noResults' => 'ఫలితాలు లభించలేదు',
			'settings.heightUnit.title' => 'ఎత్తు యూనిట్',
			'settings.weightUnit.title' => 'బరువు యూనిట్',
			'settings.mealReminders.title' => 'భోజనం రిమైండర్లు',
			'settings.mealReminders.subtitle' => 'సమయోచిత హెచ్చరికలతో ట్రాక్‌లో ఉండండి',
			'settings.theme.title' => 'థీమ్',
			'settings.theme.light' => 'లైట్',
			'settings.theme.dark' => 'డార్క్',
			'settings.theme.system' => 'సిస్టమ్',
			'settings.sendFeedback.title' => 'ఫీడ్‌బ్యాక్ పంపండి',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} ను మెరుగుపరిచేందుకు సహకరించండి',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} యాప్ ఫీడ్‌బ్యాక్',
			'settings.sendFeedback.emailBodyPrefix' => 'దయచేసి క్రింద మీ ఫీడ్‌బ్యాక్ ఇవ్వండి:',
			'settings.sendFeedback.appVersion' => 'యాప్ వెర్షన్',
			'settings.sendFeedback.device' => 'పరికరం',
			'settings.sendFeedback.osVersion' => 'OS వెర్షన్',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'మీల్ చరిత్ర ఎగుమతి',
			'settings.exportMealHistory.subtitle' => 'మీ లాగ్ చేసిన భోజనాల CSV ని షేర్ చేయండి',
			'settings.exportMealHistory.shareText' => 'మీ Calorify మీల్ చరిత్ర ఎగుమతి',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'మీల్ చరిత్రను ఎగుమతి చేయలేకపోయాం: ${error}',
			'settings.clearAllData.title' => 'అన్నీ డేటా క్లియర్ చేయండి',
			'settings.clearAllData.subtitle' => 'మీ మొత్తం సమాచారాన్ని తిరిగి రాని విధంగా తొలగించండి',
			'settings.clearAllData.confirmationTitle' => 'అన్నీ డేటా క్లియర్ చేయాలా?',
			'settings.clearAllData.confirmationMessage' => 'ఈ చర్యను తిరిగి తీసుకోలేరు. మీరు లాగ్ చేసిన భోజనాలు, ఇష్టాలు, మరియు ప్రొఫైల్ సెట్టింగ్‌లు శాశ్వతంగా తొలగించబడతాయి.',
			'settings.clearAllData.cancel' => 'రద్దు',
			'settings.clearAllData.clearEverything' => 'అన్నీ తొలగించండి',
			'settings.debugOptions.title' => 'డీబగ్ ఎంపికలు',
			'settings.developerModeEnabled' => 'డెవలపర్ మోడ్ ఎనేబుల్ అయింది!',
			'settings.healthConnect.title' => 'హెల్త్ కనెక్ట్',
			'settings.healthConnect.subtitle' => 'అనుమతులను చూడండి మరియు నిర్వహించండి',
			'settings.healthConnect.unavailable.title' => 'Health Connect అందుబాటులో లేదు',
			'settings.healthConnect.unavailable.description' => 'ఈ పరికరంలో Health Connect అందుబాటులో లేదు. దయచేసి ప్లే స్టోర్ (Android 9+) నుండి Health Connect ఇన్‌స్టాల్ చేయండి లేదా Android 14+ కి అప్డేట్ చేయండి.',
			'settings.healthConnect.permissions.title' => 'అనుమతులు',
			'settings.healthConnect.permissions.description' => 'Health Connect ఇంటిగ్రేషన్ ఇవ్వడానికి ఈ అనుమతులు కావాలి:',
			'settings.healthConnect.permissions.granted' => 'ఇచ్చింది',
			'settings.healthConnect.permissions.notGranted' => 'ఇవ్వలేదు',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'మొత్తం ఖర్చైన కాలోరీలను చదవండి',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'యాప్‌కు Health Connect నుండి మీరు ఖర్చు చేసిన మొత్తం కాలోరీలను చదవడానికి అనుమతిస్తుంది.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'ఈ అనుమతి రోజంతా మీ మొత్తం శక్తి వినియోగాన్ని అర్థం చేసుకోవడానికి యాప్‌లో రోజువారీ కాలోరీ బర్న్ చూపించేందుకు ఉపయోగించబడుతుంది.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'పోషక డేటాను చదవండి',
			'settings.healthConnect.permissions.nutritionRead.description' => 'యాప్‌కు Health Connect నుండి పోషక డేటాను చదవడానికి అనుమతిస్తుంది.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'ఈ అనుమతి ఇతర యాప్‌లు Health Connect కి లాగ్ చేసిన పోషక సమాచారాన్ని చదవడానికి యాప్‌కు సహాయపడుతుంది, తద్వారా మీ పోషకతపై సమగ్ర దృశ్యం లభిస్తుంది.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'పోషక డేటాను రాయండి',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'యాప్‌కు Health Connect కు పోషక డాటాను రాయడానికి అనుమతిస్తుంది.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'ఈ అనుమతి మీరు లాగ్ చేసిన భోజనాలను Health Connect తో సింక్ చేయడానికి యాప్‌ను అనుమతిస్తుంది, తద్వారా మీరు ఉపయోగిస్తున్న ఇతర ఆరోగ్య మరియు ఫిట్‌నెస్ యాప్‌లకు మీ డేటా అందుబాటులో ఉంటుంది.',
			'settings.healthConnect.managePermissions' => 'అనుమతులను నిర్వహించండి',
			'settings.healthConnect.openSettings' => 'Health Connect సెట్టింగ్‌లను తెరవండి',
			'settings.healthConnect.requestPermissions' => 'అనుమతులు కోరండి',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'అనుమతి అభ్యర్థన రద్దు చేయబడింది లేదా విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి లేదా Health Connect సెట్టింగ్‌లలో చేతితో అనుమతులు ఇవ్వండి.',
			'settings.healthConnect.permissionRequestFailed' => 'అనుమతులను కోరలేకపోయాం. దయచేసి మళ్లీ ప్రయత్నించండి లేదా Health Connect సెట్టింగ్‌లలో చేతితో అనుమతులు ఇవ్వండి.',
			'settings.healthConnect.requestingPermissions' => 'కోరుతున్నాం...',
			'settings.about.title' => 'గురించి',
			'settings.about.tagline' => 'వేగంగా, ఉచితంగా, మరియు గోప్యత-ముందు కాలోరీ అవగాహన',
			'settings.about.ourStory.title' => 'మా కథ',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} ఒక సులభమైన నిరాశ నుంచి పుట్టింది: చాలా కాలరీ ట్రాకింగ్ యాప్‌లు అతి క్లిష్టం, నిరంతర మాన్యువల్ ఇన్‌పుట్ కోరుతాయి, అధిక చందాలు వసూలు చేస్తాయి లేదా గోప్యతను పరిరక్షించవు.\n\nఒక సోలో డెవలపర్‌గా, నేను సులభమైన మరియు న్యాయమైనదాన్ని నిర్మించాలని అనుకున్నాను — శ్రమను తగ్గించడానికి AI ని ఉపయోగించే, వేగంగా మరియు ఉచితంగా ఉండే, మరియు మీ ఆరోగ్య డేటాను గౌరవించే యాప్.\n\n${appLabel} నేను ఉండాలని ఆశించిన యాప్: అకౌంట్‌లు లేవు, ట్రాకింగ్ లేదు, ప్రకటనలు లేవు — మీ ఆరోగ్య లక్ష్యాల కోసం స్పష్టమైన, ప్రాయోగిక అవగాహన మాత్రమే.',
			'settings.about.privacy.title' => 'మీ గోప్యత ముఖ్యం',
			'settings.about.privacy.description' => 'గోప్యత అనేది తర్వాత ఆలోచన కాదు — అది డిజైన్ సూత్రం. ఆచరణలో దాని అర్థం ఇదే:',
			'settings.about.privacy.noAccounts' => 'అకౌంట్‌లు అవసరం లేదు\nయాప్‌ను వెంటనే ఉపయోగించండి. సైన్-అప్స్, ఐడెంటిటీలు లేవు.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'ప్రవర్తనా ట్రాకింగ్ లేదు\n${appLabel} మీ కార్యకలాపాలను గమనించదు, వినియోగ ప్రొఫైల్‌లు తయారు చేయదు లేదా యాప్‌లు/వెబ్‌సైట్లలో మీను ట్రాక్ చేయదు.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'జ్ఞాపక ప్రకటనలు లేవు\n${appLabel} ప్రకటనలు లేదా డేటా-ఆధారిత మనీటైజేషన్ లేకుండా పనిచేయడానికి రూపొందించబడింది.',
			'settings.about.privacy.noDataSelling' => 'డేటా విక్రయం లేదు\nమీ ఆరోగ్య డేటా ఎప్పుడూ తృతీయపక్షాలతో అమ్మబడదు లేదా పంచుకోబడదు.',
			'settings.about.privacy.localStorage' => 'లోకల్-ఫస్ట్ స్టోరేజ్\nమీ డేటా మీ పరికరంలోనే ఉంటుంది.',
			'settings.about.privacy.privacyPolicy' => 'గోప్యతా విధానం',
			'settings.about.developer.title' => 'ఒక సోలో డెవలపర్ చేత నిర్మించబడింది',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} ప్రశాంతంగా, గోప్యతను గౌరవించే ఆరోగ్య సాఫ్ట్‌వేర్‌ను నిర్మించే ఒకే ఒక్క డెవలపర్ చేత రూపొందించబడింది మరియు నిర్వహించబడుతుంది.\n\nఫీడ్‌బ్యాక్‌ను వ్యక్తిగతంగా చదివి, యాప్ దిశను నిర్దేశించడంలో సహాయం చేస్తుంది.',
			'settings.about.developer.website' => 'వెబ్‌సైట్',
			'settings.about.developer.email' => 'ఈమెయిల్',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel} ను ఇష్టపడుతున్నారా?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'మీ ఫీడ్‌బ్యాక్ ${appLabel} ను అందరికీ మెరుగ్గా మార్చడంలో సహాయపడుతుంది.',
			'settings.about.feedback.rateApp' => 'ప్లే స్టోర్‌లో రేట్ చేయండి',
			'settings.about.feedback.sendFeedback' => 'ఫీడ్‌బ్యాక్ పంపండి',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'బిల్డ్ ${buildNumber}',
			'reminders.title' => 'రిమైండర్లతో ట్రాక్‌లో ఉండండి',
			'reminders.description' => 'మీ భోజనాలను లాగ్ చేయడానికి మరియు మీ పోషక లక్ష్యాల్లో స్థిరంగా ఉండడానికి మృదువైన రిమైండర్లు పొందండి',
			'reminders.notificationsEnabled' => 'నోటిఫికేషన్‌లు ఎనేబుల్ అయ్యాయి',
			'reminders.notificationsDisabled' => 'నోటిఫికేషన్‌లు డిసేబుల్ అయ్యాయి',
			'reminders.enabledSubtitle' => 'మీకు భోజనం రిమైండర్లు వస్తాయి',
			'reminders.disabledSubtitle' => 'భోజనం రిమైండర్లు పొందడానికి నోటిఫికేషన్‌లను ఎనేబుల్ చేయండి',
			'reminders.mealReminders' => 'భోజనం రిమైండర్లు',
			'reminders.breakfast' => 'అల్పాహారం',
			'reminders.lunch' => 'మధ్యాహ్న భోజనం',
			'reminders.dinner' => 'విందు',
			'reminders.snack' => 'స్నాక్',
			'reminders.unknown' => 'తెలియదు',
			'reminders.change' => 'మార్చండి',
			'reminders.enableNotifications' => 'నోటిఫికేషన్‌లు ఎనేబుల్ చేయండి',
			'reminders.skipForNow' => 'ఇప్పటికి దాటేయండి',
			'reminders.saveChanges' => 'మార్పులు సేవ్ చేయండి',
			'reminders.enabledSuccessfully' => 'నోటిఫికేషన్‌లు విజయవంతంగా ఎనేబుల్ అయ్యాయి!',
			'reminders.permissionDenied' => 'నోటిఫికేషన్ అనుమతి తిరస్కరించబడింది',
			'reminders.errorEnabling' => ({required Object error}) => 'నోటిఫికేషన్‌లను ఎనేబుల్ చేయడంలో లోపం: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'సెటప్ పూర్తి చేయడంలో లోపం: ${error}',
			'notifications.breakfast.title' => 'అల్పాహార సమయం! 🍳',
			'notifications.breakfast.body' => 'మీ అల్పాహారాన్ని లాగ్ చేయడం మర్చిపోవద్దు',
			'notifications.lunch.title' => 'మధ్యాహ్న భోజన సమయం! 🥗',
			'notifications.lunch.body' => 'మీ మధ్యాహ్న భోజనాన్ని లాగ్ చేసే సమయం',
			'notifications.dinner.title' => 'విందు సమయం! 🍽️',
			'notifications.dinner.body' => 'మీ విందును లాగ్ చేయడం మర్చిపోవద్దు',
			'notifications.snack.title' => 'స్నాక్ సమయం! 🍎',
			'notifications.snack.body' => 'ఒక ఆరోగ్యకరమైన స్నాక్ సమయం',
			'notifications.test.title' => 'టెస్ట్ నోటిఫికేషన్',
			'login.title' => 'లాగిన్',
			'login.signInWithGoogle' => 'Google తో సైన్ ఇన్ చేయండి',
			'login.signInFailed' => 'Google సైన్-ఇన్ విఫలమైంది లేదా రద్దు చేయబడింది.',
			'disclaimer.pleaseNote' => 'దయచేసి గమనించండి',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} అంచనా పోషక సమాచారాన్ని అందిస్తుంది. ఖచ్చితత్వం మీ ఇన్‌పుట్ & ఆహార భిన్నత్వాలపై ఆధారపడి ఉంటుంది. ఇది మార్గదర్శకంగా మాత్రమే; ఖచ్చితమైన మూలంగా కాదు. వ్యక్తిగత సలహాల కోసం నిపుణుడిని సంప్రదించండి.',
			'disclaimer.snap.portionSize.title' => 'పోర్షన్ పరిమాణం',
			'disclaimer.snap.portionSize.description' => 'అంచనాల ఖచ్చితత్వం మీ సరైన పోర్షన్ పరిమాణ అంచనాపై బలంగా ఆధారపడుతుంది.',
			'disclaimer.snap.preparationMethods.title' => 'తయారీ పద్ధతులు',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'వంట విధానాలు ఆహారంలోని పోషక కంటెంట్‌ను గణనీయంగా మార్చవచ్చు. ${appLabel} అంచనాలు ఎల్లప్పుడూ ఈ వ్యత్యాసాలను పరిగణనలోకి తీసుకోకపోవచ్చు.',
			'disclaimer.snap.ingredients.title' => 'పదార్థాలు',
			'disclaimer.snap.ingredients.description' => 'చాలా దాచిన పదార్థాలున్న కాంప్లెక్స్ వంటకాలు తక్కువ ఖచ్చితమైన అంచనాలకు దారితీయవచ్చు.',
			'disclaimer.snap.databaseLimitations.title' => 'డేటాబేస్ పరిమితులు',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} యొక్క ఫుడ్ డేటాబేస్ విస్తృతమైనదే అయినప్పటికీ ప్రతి ఆహార అంశం లేదా వేరియేషన్ అందులో ఉండకపోవచ్చు.',
			'disclaimer.weightEstimate.title' => 'బరువు అంచనా గురించి',
			'disclaimer.weightEstimate.description' => 'ప్రతిపాదిత బరువు మార్పు సులభమైన కాలోరీ-ఇన్ vs. కాలోరీ-అవుట్ నమూనాపై ఆధారపడిన సైద్ధాంతిక అంచనా మాత్రమే. ఇది ప్రేరణ కోసం మార్గదర్శకత్వం; మీ వాస్తవ బరువు అంచనా కాదు.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'కాలోరీ ఖచ్చితత్వం',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'ఈ అంచనా మీ ట్రాక్ చేసిన కాలోరీ తీసుకురావడం మరియు ఖర్చు చేయడం ఎంత ఖచ్చితమో అంతే ఖచ్చితంగా ఉంటుంది. తప్పుగా లాగ్ చేస్తే అంచనా కూడా తప్పవుతుంది.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'జీవశాస్త్ర కారకాలు',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'నిజమైన బరువు తగ్గుదల/పెరుగుదల మీద మెటబాలిజం, హార్మోన్లు, నిద్ర, ఒత్తిడి, హైడ్రేషన్ వంటి అంశాలు ప్రభావం చూపుతాయి; ${appLabel} వీటిని కొలవలేడు.',
			'disclaimer.weightEstimate.waterWeight.title' => 'నీటి బరువు & మార్పులు',
			'disclaimer.weightEstimate.waterWeight.description' => 'నిత్యం నీరు నిల్వ, జీర్ణక్రియ, సమయాల వల్ల బరువు గణనీయంగా మారవచ్చు. ఈ అంచనా ఆ రోజువారీ మార్పులను పరిగణనలోకి తీసుకోదు.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'నిపుణుల మార్గదర్శనం',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'వైద్య నిర్ణయాల కోసం ఈ అంచనాను ఉపయోగించవద్దు. వ్యక్తిగత బరువు నిర్వహణ సలహాల కోసం ఎల్లప్పుడూ వైద్య నిపుణుడిని లేదా నమోదు చేసిన డైటీషియన్‌ను సంప్రదించండి.',
			'disclaimer.healthMetrics.description' => 'ఈ ప్రమాణాలు మీ శరీరానికి అవసరమైన శక్తిని అర్థం చేసుకోవడంలో, మీ పోషకాహార లక్ష్యాలకు మార్గనిర్దేశం చేయడంలో సహాయపడతాయి.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'బేసల్ మెటబాలిక్ రేట్ (BMR) అనేది శ్వాస, రక్త ప్రసరణ వంటి ప్రాథమిక కార్యాలను కొనసాగించడానికి, మీ శరీరం విశ్రాంతిలో ఉండగానే ఖర్చు చేసే కేలరీల సంఖ్య. BMR మీ వయసు, లింగం, ఎత్తు, బరువు మీద ఆధారపడి ఉంటుంది. ఎక్కువ BMR అంటే విశ్రాంతిలోనే మీ శరీరం సహజంగానే మరిన్ని కేలరీలను దహనం చేస్తోంది అని అర్థం; ఇది సాధారణంగా ఎక్కువ కండర ద్రవ్యరాశి, తక్కువ వయస్సు, లేదా పురుషుడు కావడం వంటివల్ల జరుగుతుంది. తక్కువ BMR సాధారణంగా తక్కువ కండర ద్రవ్యరాశి, ఎక్కువ వయస్సు, లేదా మహిళ కావడం సూచిస్తుంది.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'టోటల్ డైలీ ఎనర్జీ ఎక్స్‌పెండిచర్ (TDEE) అనేది రోజులో మీరు దహనం చేసే మొత్తం కేలరీలు; ఇందులో మీ BMR తో పాటు శారీరక కార్యాచరణలు మరియు దినచర్య కదలికల ద్వారా దహనం అయ్యే కేలరీలు కూడా చేరుతాయి. TDEE మీ BMR మరియు కార్యకలాపాల స్థాయిపై ఆధారపడి ఉంటుంది. ఎక్కువ TDEE అంటే మొత్తం మీద మీరు ఎక్కువ కేలరీలు దహనం చేస్తున్నారనే అర్థం; ఇది సాధారణంగా ఎక్కువగా చురుకుగా ఉండడం లేదా అధిక BMR కారణంగా ఉంటుంది. తక్కువ TDEE అంటే తక్కువ దినసరి కార్యాచరణ లేదా తక్కువ BMR ని సూచిస్తుంది.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'రోజువారీ లక్ష్యం',
			'disclaimer.healthMetrics.dailyGoal.description' => 'రోజువారీ లక్ష్యం అనేది మీ TDEE మరియు బరువు లక్ష్యాన్ని ఆధారంగా సూచించబడే రోజువారీ కేలరీ తీసుకోవలసిన పరిమాణం. బరువు తగ్గడానికి, మీ TDEE కంటే తక్కువ కేలరీలు తీసుకోవాలి. బరువును నిలుపుకోవడానికి, మీ TDEE కి సరిసమానంగా తీసుకోవాలి. బరువు పెరగడానికి, మీ TDEE కంటే ఎక్కువ కేలరీలు తీసుకోవాలి. ఇలా చేయడం వల్ల మీకు కావలసిన బరువు మార్పును ఆరోగ్యకరమైన గమ్యంతో సాధించడానికి సహాయపడుతుంది.',
			'disclaimer.calorieExpenditure.title' => 'కేలరీ వ్యయం అంచనా',
			'disclaimer.calorieExpenditure.description' => 'హెల్త్ కనెక్ట్ డేటా అందుబాటులో లేకపోతే, మీ బేసల్ మెటబాలిక్ రేట్ (BMR) మరియు కార్యకలాప స్థాయి (TDEE) ఆధారంగా, ఇప్పటివరకు గడిచిన రోజులోని భాగానికి అనుగుణంగా సవరించి, ఈరోజు దహనం చేసిన కేలరీలను అంచనా వేస్తాము.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'ఈ అంచనాను ఎలా లెక్కిస్తాము',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'మీ ప్రొఫైల్ ఆధారంగా TDEE ను లెక్కించి, గడిచిన రోజు భాగం (గంటలు + నిమిషాలు) / 24 తో దానిని గుణించి, ఇప్పటివరకు దహనం చేసిన కేలరీలను అంచనా వేస్తాము.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'వైద్య నిపుణుల మార్గదర్శకం',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'వైద్య నిర్ణయాల కోసం ఈ అంచనాను ఉపయోగించవద్దు. వ్యక్తిగత బరువు నిర్వహణ సలహాల కోసం ఎల్లప్పుడూ ఆరోగ్య సంరక్షణ నిపుణుడు లేదా రిజిస్టర్డ్ డైటీషియన్‌ను సంప్రదించండి.',
			'common.close' => 'మూసివేయండి',
			'common.kContinue' => 'కొనసాగించండి',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel} ను ఇష్టపడుతున్నారా?',
			'feedbackRating.yes' => 'అవును, నచ్చింది',
			'feedbackRating.no' => 'అంతగా కాదు',
			'feedbackRating.rateStepHeading' => 'ప్లే స్టోర్‌లో రేట్ చేయండి',
			'feedbackRating.emailStepHeading' => 'ఈమెయిల్ ద్వారా ఫీడ్‌బ్యాక్ పంపండి',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'ఒక చిట్టి రేటింగ్ ఇతరులకు ${appLabel} కనుగొనడంలో సహాయపడుతుంది మరియు డెవలప్‌మెంట్‌ని కొనసాగిస్తుంది. ఒక నిమిషం సమయం ఇస్తారా?',
			'feedbackRating.shareFeedbackViaEmail' => 'మీ ఫీడ్‌బ్యాక్ తర్వాతి దిశను నిర్ణయిస్తుంది — ప్రతి సందేశాన్ని మేము చదువుతాం. ఈమెయిల్ ద్వారా మీ ఆలోచనలు పంచుకోవాలనుకుంటున్నారా?',
			'feedbackRating.rateCta' => 'ప్లే స్టోర్‌లో రేట్ చేయండి',
			'feedbackRating.maybeLater' => 'తర్వాత చూద్దాం',
			'feedbackRating.sendFeedback' => 'ఫీడ్‌బ్యాక్ పంపండి',
			'feedbackRating.noThanks' => 'వద్దు, ధన్యవాదాలు',
			'feedbackRating.aboutUsDescription' => 'చిన్న బృందం ప్రేమతో రూపొందించింది. మేము గోప్యత, సరళత, మరియు మెరుగైన ఆహార అలవాట్లకు సహాయపడడంపై దృష్టి పెడుతున్నాం.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '${appLabel} వెనుక ఎవరు ఉన్నారో తెలుసుకోవాలనుకుంటున్నారా? చూడండి ',
			'feedbackRating.aboutUsLinkLabel' => 'మా గురించి',
			'feedbackRating.thankYouMessage' => 'ధన్యవాదాలు! మేము మరోసారి అడుగుతాం.',
			'health.syncFailed' => 'Health Connect కు సింక్ చేయలేకపోయాం',
			'health.mealSynced' => 'భోజనం Health Connect తో సింక్ అయింది',
			_ => null,
		};
	}
}
