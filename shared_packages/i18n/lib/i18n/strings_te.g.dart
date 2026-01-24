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
	@override late final _TranslationsErrorsTe errors = _TranslationsErrorsTe._(_root);
	@override late final _TranslationsDebugTe debug = _TranslationsDebugTe._(_root);
	@override late final _TranslationsHealthTe health = _TranslationsHealthTe._(_root);
}

// Path: onboarding
class _TranslationsOnboardingTe implements TranslationsOnboardingEn {
	_TranslationsOnboardingTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} లో స్వాగతం';
	@override String get subtitle => 'మీ వ్యక్తిగత పోషణ సహాయకుడు AI తో';
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
	@override String get dashboard => 'డాష్బోర్డు';
	@override String get history => 'చరిత్ర';
}

// Path: home
class _TranslationsHomeTe implements TranslationsHomeEn {
	_TranslationsHomeTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
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
	@override String get noMeals => 'లోగా డేటా లేదు';
	@override String get emptyMessage => 'మీ చివరి భోజనానికి ఒక ఫొటో తీసి ఇక్కడ నమోదు చేయండి.';
	@override String get today => 'ఈ రోజు';
	@override String get yesterday => 'నిన్న';
}

// Path: meal
class _TranslationsMealTe implements TranslationsMealEn {
	_TranslationsMealTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'ఓహ్ లేదు!';
	@override String get delete => 'తొలగించు';
	@override String get editMeal => 'భోజనాన్ని సంపాదించు';
	@override String get addMeal => 'భోజనాన్ని చేర్చండి';
	@override String get saveMeal => 'భోజనాన్ని నిల్వ చేయు';
	@override String get save => 'సేవ్';
	@override String get mealName => 'భోజనంలోని పేరు';
	@override String get mealQuantity => 'భోజనంలోని పరిమాణం';
	@override String get mealQuantityHint => 'ఉదా: 1 ప్యాకెట్, 2 తుక్కలు';
	@override String get timeOfMeal => 'భోజన సమయం';
	@override String get timeOfMealHint => 'మీరు మీ భోజనాన్ని తీసుకున్న సమయాన్ని ఎంచుకోండి';
	@override String get mealType => 'భోజన పురుషత్వం';
	@override late final _TranslationsMealNutritionTe nutrition = _TranslationsMealNutritionTe._(_root);
	@override late final _TranslationsMealDeleteConfirmationTe deleteConfirmation = _TranslationsMealDeleteConfirmationTe._(_root);
	@override String get addedToLog => 'భోజనం మీ లాగ్ కు చేరిష్టించబడింది!';
	@override String couldNotAdd({required Object error}) => 'భోజనాన్ని చేర్చలేకపోయినా: ${error}';
	@override String get removedFromFavorites => 'ప్రియమైనదుల నుంచి తొలగించబడింది!';
	@override String get savedAsFavorite => 'భోజనం ప్రియమైనదిగా నిల్వ చేయబడింది!';
	@override String couldNotUpdateFavorite({required Object error}) => 'ప్రియమైనదిని నవీకరించలేకపోయింది: ${error}';
	@override String failedToProcess({required Object error}) => 'సాధనం చేయడంలో వైఫల్యం: ${error}';
	@override String failedToProcessImage({required Object error}) => 'చిత్రాన్ని చదవడంలో విఫలమైంది: ${error}';
	@override String errorCompressingImage({required Object error}) => 'చిత్రం సంకోచించడంలో వైఫల్యం: ${error}';
	@override String get failedToSave => 'డేటాను నిల్వ చేయడంలో విఫలమైంది. ప్రస్తుత మధ్యలో ప్రయత్నించండి.';
}

// Path: favorites
class _TranslationsFavoritesTe implements TranslationsFavoritesEn {
	_TranslationsFavoritesTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ప్రియమైనవి';
	@override String get empty => 'ఇప్పటివరకు ప్రియమైన భోజనాలు లేవు.';
}

// Path: profile
class _TranslationsProfileTe implements TranslationsProfileEn {
	_TranslationsProfileTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ప్రొఫైల్';
	@override String get noProfileData => 'ప్రొఫైల్ డేటా లేదు';
	@override String get yourProfile => 'మీ ప్రొఫైల్';
	@override String get viewAndManage => 'మీ ఆరోగ్య సమాచారాన్ని చూడండి మరియు నిర్వహించండి';
	@override late final _TranslationsProfileSectionsTe sections = _TranslationsProfileSectionsTe._(_root);
	@override String get gender => 'లింగం';
	@override String get height => 'ఊపరితనం';
	@override String get weight => 'బరువు';
	@override String get age => 'వయస్సు';
	@override String get weightGoal => 'బరువు లక్ష్యం';
	@override String get targetWeight => 'లక్ష్య బరువు';
	@override String get activityLevel => 'యాక్టివిటీ స్థాయి';
	@override String get healthMetrics => 'ఆరోగ్య మెట్రిక్‌లు';
	@override String get notSet => 'సెట్ కాలేదు';
	@override String get years => 'సంవత్సరాలు';
	@override String get updatedSuccessfully => 'ప్రొఫైల్ విజయవంతంగా నవీకరించబడింది!';
	@override late final _TranslationsProfileCalculatedValuesTe calculatedValues = _TranslationsProfileCalculatedValuesTe._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreTe implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఆరోగ్య స్కోర్';
	@override String get whyThisScore => 'ఈ స్కోర్ ఎందుకు?';
	@override String get note => 'మీ ఆరోగ్యాన్ని సమర్థవంతంగా అంచనా వేయడానికి జరిగిన తీయకుండా ఈ స్కోరు పేషేష్ మరియు పోషక సందర్భాల ఆధారంగా ఉండవచ్చు. ఎప్పుడూ పూర్వ సలహా కోసం ఒక నిపుణుడిని సంప్రదించండి.';
	@override String get unhealthy => 'ఆరోగ్యకరమైనది కాదు';
	@override String get healthy => 'ఆరోగ్యకరమైనది';
	@override String get neutral => 'నత్వర్రేణు';
}

// Path: editProfile
class _TranslationsEditProfileTe implements TranslationsEditProfileEn {
	_TranslationsEditProfileTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ప్రొఫైల్ క్రింది';
	@override late final _TranslationsEditProfileSectionsTe sections = _TranslationsEditProfileSectionsTe._(_root);
	@override String get gender => 'లింగం';
	@override String get dateOfBirth => 'పుట్టిన తేదీ';
	@override String get height => 'ఊపరితనం';
	@override String get weight => 'బరువు';
	@override String get weightGoal => 'బరువు లక్ష్యం';
	@override String get activityLevel => 'యాక్టివిటీ స్థాయి';
	@override String get metric => 'మెట్రిక్';
	@override String get imperial => 'ఇంపీరియల్';
	@override String get metricCm => 'మెట్రిక్ (సెం)';
	@override String get imperialFtIn => 'ఇంపీరియల్ (అంగుళాలు)';
	@override String get metricKg => 'మెట్రిక్ (కేజీలు)';
	@override String get imperialLbs => 'ఇంపీరియల్ (పౌండ్స్)';
	@override late final _TranslationsEditProfileGendersTe genders = _TranslationsEditProfileGendersTe._(_root);
	@override late final _TranslationsEditProfileWeightGoalsTe weightGoals = _TranslationsEditProfileWeightGoalsTe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsTe activityLevels = _TranslationsEditProfileActivityLevelsTe._(_root);
}

// Path: settings
class _TranslationsSettingsTe implements TranslationsSettingsEn {
	_TranslationsSettingsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'సెట్టింగులు';
	@override late final _TranslationsSettingsSectionsTe sections = _TranslationsSettingsSectionsTe._(_root);
	@override late final _TranslationsSettingsEditProfileTe editProfile = _TranslationsSettingsEditProfileTe._(_root);
	@override late final _TranslationsSettingsLanguageTe language = _TranslationsSettingsLanguageTe._(_root);
	@override late final _TranslationsSettingsHeightUnitTe heightUnit = _TranslationsSettingsHeightUnitTe._(_root);
	@override late final _TranslationsSettingsWeightUnitTe weightUnit = _TranslationsSettingsWeightUnitTe._(_root);
	@override late final _TranslationsSettingsMealRemindersTe mealReminders = _TranslationsSettingsMealRemindersTe._(_root);
	@override late final _TranslationsSettingsThemeTe theme = _TranslationsSettingsThemeTe._(_root);
	@override late final _TranslationsSettingsSendFeedbackTe sendFeedback = _TranslationsSettingsSendFeedbackTe._(_root);
	@override late final _TranslationsSettingsClearAllDataTe clearAllData = _TranslationsSettingsClearAllDataTe._(_root);
	@override late final _TranslationsSettingsDebugOptionsTe debugOptions = _TranslationsSettingsDebugOptionsTe._(_root);
	@override String get developerModeEnabled => 'డెవలపర్ మోడ్ సాధనంలో ఉంది!';
	@override late final _TranslationsSettingsHealthConnectTe healthConnect = _TranslationsSettingsHealthConnectTe._(_root);
	@override late final _TranslationsSettingsAboutTe about = _TranslationsSettingsAboutTe._(_root);
}

// Path: reminders
class _TranslationsRemindersTe implements TranslationsRemindersEn {
	_TranslationsRemindersTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'సమయానికి కప్పడం';
	@override String get description => 'మీ భోజనాలను లాగ్ చేయడానికి మరియు మీ పోషక లక్ష్యాలతో కర్రీగా ఉండాలి';
	@override String get notificationsEnabled => 'గమనికలు చేర్చబడ్డాయి';
	@override String get notificationsDisabled => 'గమనికలు ప్రాధమికం';
	@override String get enabledSubtitle => 'మీకు భోజనాన్ని గుర్తించారు';
	@override String get disabledSubtitle => 'భోజనాన్ని గుర్తించడానికి గమనికలకు అనుమతులు ఇవ్వండి';
	@override String get mealReminders => 'భోజన మరణాలు';
	@override String get breakfast => 'నాస్తా';
	@override String get lunch => 'మధ్యాహ్న భోజనం';
	@override String get dinner => 'రాత్రి భోజనం';
	@override String get snack => 'స్నాక్';
	@override String get unknown => 'తెలియని';
	@override String get change => 'మార్చు';
	@override String get enableNotifications => 'గమనికలను ఎంచుకోండి';
	@override String get skipForNow => 'ఇప్పుడు మానుకోండి';
	@override String get saveChanges => 'మార్గాలను సేవ్ చేయండి';
	@override String get enabledSuccessfully => 'గమనికలు విజయవంతంగా ప్రారంభించారు!';
	@override String get permissionDenied => 'గమనికల అనుమతి అంగీకరించబడలేదు';
	@override String errorEnabling({required Object error}) => 'గమనికలు ప్రారంభించడంలో వైఫల్యం: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'శుభ్రమైన సెటప్ పొరపులు: ${error}';
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
	@override String get signInWithGoogle => 'గూగుల్ తో లాగిన్ కావాలి';
	@override String get signInFailed => 'గూగుల్ సైన్-ఇన్ విఫలమైంది లేదా రద్దు చేయబడింది.';
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
}

// Path: common
class _TranslationsCommonTe implements TranslationsCommonEn {
	_TranslationsCommonTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get close => 'క్లోజ్';
	@override String get kContinue => 'కొనసాగించండి';
}

// Path: errors
class _TranslationsErrorsTe implements TranslationsErrorsEn {
	_TranslationsErrorsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'ప్రొఫైల్ డేటా లోడింగ్ లోపం';
	@override String get somethingWentWrong => 'ఏదో తప్పు జరిగింది.';
}

// Path: debug
class _TranslationsDebugTe implements TranslationsDebugEn {
	_TranslationsDebugTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'డిబగ్ ఆప్షన్స్';
	@override late final _TranslationsDebugSectionsTe sections = _TranslationsDebugSectionsTe._(_root);
	@override String get showActiveNotifications => 'సకాలంలో గమనికలను చూపు';
	@override String get scheduleTestNotification => 'పరీక్ష గమనికను షెడ్యూల్ చేయండి (10సె)';
	@override String get triggerBreakfastNotification => 'అనాంర్త్న ఫలిపట్టు భోజనం గమనిక';
	@override String get cancelAllNotifications => 'అన్నీ గమనికలను రద్దు చేయండి';
	@override String get activeNotifications => 'సక్రమ గమనికలు';
	@override String get noTitle => 'శీర్షిక లేదు';
	@override String get noBody => 'శరీర లేదు';
	@override String get fetchTodaysSteps => 'ఈ రోజు యొక్క దారులు పొందండి';
	@override String get fetchTodaysCalories => 'ఈ రోజు యొక్క కేలొరీలు పొందండి';
	@override String get fetchLatestWeight => 'తాజా బరువు పొందండి';
	@override String get fetchLatestHeight => 'తాజా ఎత్తు పొందండి';
	@override String get writeTestWeight => 'టెస్ట్ బరువును రాయండి (70కేజీ)';
	@override String get writeTestHeight => 'టెస్ట్ ఎత్తును రాయండి (175సెం)';
	@override String get syncLast7Days => 'మునుపటి 7 రోజుల సమాచారానికి సింక్';
	@override String get sync7DaysTitle => '7-రోజుల సింక్';
	@override String get checkCurrentLocale => 'ప్రస్తుత స్థానాన్ని తనిఖీ చేయండి';
	@override String get currentLocale => 'ప్రస్తుత స్థానిక సంస్థాన';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'భాష: ${languageCode}\nచిత్రం: ${countryCode}\nయూనిట్ వ్యవస్థ: ${unitSystem}';
	@override String get latestWeight => 'తాజా బరువు';
	@override String get latestHeight => 'తాజా ఎత్తు';
	@override String get todaysCalories => 'ఈరోజు యొక్క కేలొరీలు';
	@override String totalCaloriesBurned({required Object calories}) => '${calories} మొత్తం కేలొరీలు వెలికితీయబడ్డాయి.';
	@override String syncSuccess({required Object count}) => 'గత 7 రోజులకు ${count} డేటా పాయింట్లను విజయవంతంగా పొందించారు.';
	@override String get noWeightData => 'గత 30 రోజులలో ఎక్క పట్టిన బరువు లభించలేదు.';
	@override String get noHeightData => 'గత 1 సంవత్సరంలో ఎక్క పట్టిన ఎత్తు లభించలేదు.';
	@override String get noCalorieData => 'ఈ రోజు కేలొరీని పొందలేకపోయింది.';
	@override String get weightWritten => '70కేజీ లో బరువును విజయవంతంగా రాశారు.';
	@override String get weightWriteFailed => 'బరువును రాయడంలో విఫలమైంది.';
	@override String get heightWritten => '175సెం ఎత్తును విజయవంతంగా రాశారు.';
	@override String get heightWriteFailed => 'ఎత్తును రాయడంలో విఫలమైంది.';
	@override String get noNotifications => 'సక్రమ గమనికలు లేవు.';
	@override String get testNotificationScheduled => '10 సెకన్లలో పరీక్ష గమనిక షెడ్యూల్ చేయబడింది.';
	@override String get testNotificationBody => 'ఇది 10 సెకన్లలో షెడ్యూల్ చేయబడిన పరీక్ష గమనిక.';
	@override String get breakfastNotificationTriggered => 'నాస్తా ద్వారా గమనిక చూపింది.';
	@override String get allNotificationsCancelled => 'అన్ని గమనికలు రద్దు చేయబడ్డాయి.';
	@override String get fetchingData => 'గత 7 రోజుల సమాచారం పొందడం...';
	@override String id({required Object id}) => 'ID: ${id}';
}

// Path: health
class _TranslationsHealthTe implements TranslationsHealthEn {
	_TranslationsHealthTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'హెల్త్ కనెక్ట్ కు సింక్ చేయడంలో విఫలమైంది';
	@override String get mealSynced => 'భోజనం హెల్త్ కనెక్ట్ తో సింక్ చేయబడింది';
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
	@override String get description => 'లింగం మనకు మీ బేసల్ మెటబాలిక్ రేట్ (BMR)ను ఖచ్చితంగా లెక్కించటానికి సహాయపడుతుంది.';
	@override String get next => 'తరువాత';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightTe implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ ఎత్తు ఎంత?';
	@override String get description => 'మీ ఎత్తు మీ BMI మరియు శక్తి అవసరాలను ఖచ్చితంగా లెక్కించడానికి సహాయపడుతుంది.';
	@override String get metric => 'మెట్రిక్';
	@override String get imperial => 'ఇంపీరియల్';
	@override String get next => 'తరువాత';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightTe implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'మీ ప్రస్తుత బరువు ఎంత?';
	@override String get currentDescription => 'మీ ప్రస్తుత బరువు మీ రోజువారీ లక్ష్యాలను వ్యక్తిగతీకరించడానికి అవసరం.';
	@override String get targetTitle => 'మీ లక్ష్య బరువు ఎంత?';
	@override String get targetDescription => 'లక్ష్య బరువును ఏర్పరచడం మా దీర్ఘకాలిక ఆలోచనను నిర్ధారించడంలో సహాయపడుతుంది.';
	@override String get metric => 'మెట్రిక్';
	@override String get imperial => 'ఇంపీరియల్';
	@override String get next => 'తరువాత';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeTe implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ పుట్టినరోజు ఎప్పుడు?';
	@override String get description => 'మీ వయస్సు మీ కేలొరీ అవసరాలను ఖచ్చితంగా లెక్కించడంలో సహాయపడుతుంది.';
	@override String get next => 'తరువాత';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleTe implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'తక్కువ బరువు';
	@override String get healthy => 'ఆరోగ్యకరమైన';
	@override String get overweight => 'అధిక బరువు';
	@override String get obese => 'స్థూలకాయం';
	@override late final _TranslationsOnboardingBmiScaleCategoriesTe categories = _TranslationsOnboardingBmiScaleCategoriesTe._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesTe messages = _TranslationsOnboardingBmiScaleMessagesTe._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalTe implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ లక్ష్యం ఏమంటి?';
	@override String get description => 'మీరు సాధించాలని కోరుకునే లక్ష్యాన్ని వర్ణించండి';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelTe implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ యాక్టివ్ స్థాయి ఎంత?';
	@override String get description => 'ఇది మీ రోజుల కేలొరీ అవసరాలు ఖచ్చితంగా లెక్కించడంలో సహాయపడుతుంది';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectTe implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'హెల్త్ కనెక్ట్ తో కనెక్ట్ చేయండి';
	@override String get description => 'భిన్నమైన సమాచారం మరియు ఆటోమేటిక్ కేలొరీ ట్రాకింగ్ కోసం మీ ఆరోగ్య డేటాను సింక్ చేయండి';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingTe automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingTe._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsTe progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsTe._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationTe seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationTe._(_root);
	@override String get connected => 'హెల్త్ కనెక్ట్ కనెక్ట్ అయ్యింది';
	@override String get notConnected => 'హెల్త్ కనెక్ట్ కనెక్ట్ కాని';
	@override String get setup => 'హెల్త్ కనెక్ట్ సెట్టప్ చేయండి';
	@override String get skipForNow => 'ఇప్పుడు అభ్యాసించండి';
	@override String get statusConnected => 'హెల్త్ కనెక్ట్ కనెక్ట్ అయింది.';
	@override String get statusSuccess => 'హెల్త్ కనెక్ట్ విజయం సుస్పష్టం అయింది!';
	@override String statusPermissionDenied({required Object appLabel}) => 'అనుమతి అంగీకరించలేదు. దయచేసి ${appLabel} కోసం మీ ఫోన్ సెట్టింగ్‌లలో హెల్త్ కనెక్ట్ అనుమతులను నిరాకరించండి.';
	@override String statusError({required Object error}) => 'హెల్త్ కనెక్ట్ ను సెటప్ చేయడం లో లోపం: ${error}';
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

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalTe implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ రోజువారీ లక్ష్యాన్ని సెట్ చేయండి';
	@override String get titleSet => 'మీ రోజువారీ లక్ష్యం';
	@override String get description => 'మీ ఆరోగ్య ప్రయాణం ప్రారంభించడానికి సిద్ధమైనారా? మీ ప్రగతిని ప్రారంభించడానికి కింద మీ రోజువారీ కేలొరీ లక్ష్యాన్ని సెట్ చేయండి.';
	@override String get descriptionSet => 'మీ కొలతలు సృష్టించబడ్డాయి! ఇదే మీ దిశగా మార్గదర్శకంగా ఉంటుంది.';
	@override String get yourGoal => 'మీ లక్ష్యం';
	@override String get dailyCalories => 'రోజువారీ కేలొరీలు (kcal)';
	@override String get setGoal => 'లక్ష్యం నియమించు';
	@override String get intake => 'ఆహారం';
	@override String get burned => 'బర్న్';
	@override String get weightImpact => 'బరువు ప్రభావం';
	@override String get estLoss => 'అనుమానిస్థాయిలో నష్ట పరిణామం';
	@override String get estGain => 'అనుమానిస్థాయిలో లాభ పరిణామం';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryTe implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'రోజు విడివిడిగా';
	@override String get calories => 'కేలొరీలు';
	@override String get carbs => 'కార్బ్స్';
	@override String get protein => 'ప్రోటీన్';
	@override String get fat => 'కొవ్వు';
	@override String get fiber => 'ఫైబర్';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressTe implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఈ రోజు యొక్క మాక్రో విభజన';
	@override String get target => 'లక్ష్యం';
	@override String get current => 'ప్రస్తుత';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryTe implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => '7-రోజుల మాక్రో చరిత్ర';
	@override String get noHistoryYet => 'ఇప్పటివరకు చరిత్ర లేదు';
	@override String get startLogging => 'మీ భోజనాలను లాగ్ చేయడం ప్రారంభించడం ద్వారా మీ\n7-రోజుల మాక్రో ధోరణులను ఇక్కడ చూడండి';
}

// Path: home.mealLog
class _TranslationsHomeMealLogTe implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'లాగ్ చేసిన భోజనలు';
	@override String get emptyMessage => 'మీ చివరి భోజనానికి ఒక ఫొటో తీసి ఇక్కడ నమోదు చేయండి.';
	@override String get noMealsToday => 'ఈ రోజు భోజనం నమోదు చేయడంలేదు';
	@override String get seeAllMeals => 'అన్ని భోజనాలను చూడండి';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionTe implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI తో త్వరిత చేర్చు';
	@override String get description => 'మీ భోజనాన్ని వర్ణించండి, AI వివరాలను నిర్వహించనివ్వండి.';
	@override String get hint => 'ఉదా: నేను ప్రతి రోజున ఒక పెద్ద తిన్న ప్రోటీన్ పానీయం మరియు ఒక నష్టభోజనాన్ని కలిగుంటాను ...';
	@override String get analyzeMeal => 'భోజనాన్ని విశ్లేషించండి';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsTe implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ప్రియమైన భోజనాలు';
	@override String get description => 'మీ ప్రియమైన భోజనాలను త్వరితంగా చేర్చండి.';
	@override String get noFavorites => 'ఇప్పటివరకు ప్రియమైన భోజనాలు లేవు.';
	@override String get addFavoriteHint => 'ఒక భోజనాన్ని ప్రియంగా గుర్తించడానికి నక్షత్రంపై క్లిక్ చేయండి.';
	@override String get seeAll => 'అన్ని చూడండి';
	@override String get add => 'చేర్చండి';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapTe implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఫొటో తీసి మీ భోజనాన్ని ట్రాక్ చేయండి';
	@override String get description => 'AI విశ్లేషణ కోసం మీ ఆహారానికి మైక్రోాన్ని ఘనంగా దృష్టించండి.';
	@override String get openCamera => 'కెమెరాను తెరవండి';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthTe implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'హెల్త్ కనెక్ట్ తో సింక్ చేయండి';
	@override String get description => 'మీ పోషకాలు డేటా హెల్త్ కనెక్ట్ తో సింక్ చేయండి';
	@override String get install => 'సంస్థాపన చేయండి';
	@override String get connect => 'కనెక్ట్ చేయండి';
}

// Path: meal.nutrition
class _TranslationsMealNutritionTe implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get calories => 'కేలొరీలు';
	@override String get carbs => 'కార్బ్స్ (గ్రా)';
	@override String get protein => 'ప్రోటీన్ (గ్రా)';
	@override String get fat => 'కొవ్వు (గ్రా)';
	@override String get fiber => 'ఫైబర్ (గ్రా)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationTe implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'భోజనాన్ని తొలగించండి';
	@override String get message => 'మీరు ఈ భోజనాన్ని తొలగించాలని నిర్ధారించుకుంటున్నారా?';
	@override String get cancel => 'రద్దు';
	@override String get delete => 'తొలగించు';
}

// Path: profile.sections
class _TranslationsProfileSectionsTe implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ప్రొఫైల్';
	@override String get basicInformation => 'ప్రాథమిక సమాచారం';
	@override String get goalsAndActivity => 'లక్ష్యాలు & యాక్టివిటీ';
	@override String get calculatedValues => 'లెక్కించిన విలువలు';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesTe implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'రోజువారీ లక్ష్యం';
	@override String get calPerDay => 'కేల/రోజు';
	@override String get notAvailable => 'అందుబాటులో లేదు';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsTe implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'వ్యక్తిగత సమాచారం';
	@override String get physicalMeasurements => 'శారీరక కొలతలు';
	@override String get goalsAndActivity => 'లక్ష్యాలు & యాక్టివిటీ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersTe implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get male => 'పురుష';
	@override String get female => 'స్త్రీ';
	@override String get other => 'ఇతర';
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
	@override String get localization => 'స్థానికీకరణ';
	@override String get notifications => 'అవగాహనలు';
	@override String get healthConnect => 'హెల్త్ కనెక్ట్';
	@override String get supportAndLegal => 'మద్దతు & న్యాయ';
	@override String get about => 'గురించి';
	@override String get dangerZone => 'పోలిక మాండి';
	@override String get developer => 'డెవలపర్';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileTe implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ప్రొఫైల్ క్రింది';
	@override String get subtitle => 'మీ వ్యక్తిగత సమాచారాన్ని నవీకరించండి';
}

// Path: settings.language
class _TranslationsSettingsLanguageTe implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'భాష';
	@override String get subtitle => 'మీ ఇష్టమైన భాషను ఎంచుకోండి';
	@override String get searchHint => 'భాషలను శోధించండి...';
	@override String get noResults => 'ఫలితాలు లవు';
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
	@override String get title => 'భోజన మరుగుదలను';
	@override String get subtitle => 'సమయానికి ముగింపు సందేశాలను తోడ్పించగలము';
}

// Path: settings.theme
class _TranslationsSettingsThemeTe implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'థీమ్';
	@override String get light => 'దివి';
	@override String get dark => 'ఇరుక';
	@override String get system => 'సిస్టమ్';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackTe implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఫీడ్‌బ్యాక్ పంపండి';
	@override String subtitle({required Object appLabel}) => '${appLabel}ను మెరుగుపరచడం';
	@override String emailSubject({required Object appLabel}) => '${appLabel} యాప్ ఫీడ్‌బ్యాక్';
	@override String get emailBodyPrefix => 'దయచేసి మీ అభిప్రాయాన్ని ఇక్కడ నమోదు చేయండి:';
	@override String get appVersion => 'యాప్ వెర్షన్';
	@override String get device => 'పరికరం';
	@override String get osVersion => 'OS వెర్షన్';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataTe implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'అన్ని డేటాను క్లియర్ చేయండి';
	@override String get subtitle => 'మీ సమాచారం కార్యరహితంగా తొలగించండి';
	@override String get confirmationTitle => 'అన్ని డేటాను క్లియర్ చేయాలనుకుంటున్నారు?';
	@override String get confirmationMessage => 'ఈ చర్యను తిరిగి లేదు. మీరు నమోదు చేసిన అన్ని భోజనాలు, ప్రియమైనవి, మరియు ప్రొఫైల్ సెట్టింగులు శాశ్వతంగా తొలగించబడత్ర.';
	@override String get cancel => 'రద్దు';
	@override String get clearEverything => 'అన్నీ క్లియర్ చేయండి';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsTe implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'డిబగ్ ఆప్షన్స్';
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
	@override String get openSettings => 'ఆరోగ్య కనెక్ట్ సెట్టింగ్స్‌ను తెరువు';
	@override String get requestPermissions => 'ఆమోదాల కోసం అభ్యర్థన చేయండి';
	@override String get permissionRequestCancelledOrFailed => 'అనుమతి అభ్యర్థన రద్దు చేయబడింది లేదా విఫలమైంది. దయచేసి మళ్ళీ ప్రయత్నించండి లేదా ఆరోగ్య కనెక్ట్ సెట్టింగ్స్‌లో యాధృచ్ఛిక అనుమతులు ఇవ్వండి.';
	@override String get permissionRequestFailed => 'అనుమతుల కోసం అభ్యర్థన ఇవ్వడం విఫలమైంది. దయచేసి మళ్ళీ ప్రయత్నించండి లేదా ఆరోగ్య కనెక్ట్ సెట్టింగ్స్‌లో యాధృచ్ఛిక అనుమతులు ఇవ్వండి.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutTe implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'గురించి';
	@override String get tagline => 'త్వరిత, ఉచిత మరియు గోప్యతా ప్రాధాన్యత కల్గిన కేలరీ అవగాహన';
	@override late final _TranslationsSettingsAboutOurStoryTe ourStory = _TranslationsSettingsAboutOurStoryTe._(_root);
	@override late final _TranslationsSettingsAboutPrivacyTe privacy = _TranslationsSettingsAboutPrivacyTe._(_root);
	@override late final _TranslationsSettingsAboutDeveloperTe developer = _TranslationsSettingsAboutDeveloperTe._(_root);
	@override late final _TranslationsSettingsAboutFeedbackTe feedback = _TranslationsSettingsAboutFeedbackTe._(_root);
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastTe implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'నాస్తా సమయం! 🍳';
	@override String get body => 'మీ నాస్తా నమోదు చేయడం మర్చిపోద్దు';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchTe implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మధ్యాహ్న భోజనం సమయం! 🥗';
	@override String get body => 'మీ మధ్యాహ్న భోజనాన్ని నమోదు చేయడానికి సమయం';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerTe implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'రాత్రి భోజన సమయం! 🍽️';
	@override String get body => 'మీ రాత్రి భోజనాన్ని నమోదు చేయడం మర్చిపోద్దు';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackTe implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'స్నాక్ సమయం! 🍎';
	@override String get body => 'ఆరోగ్యకరమైన స్నాక్ సాధించుటకు సమయం';
}

// Path: notifications.test
class _TranslationsNotificationsTestTe implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'పరీక్ష గమనిక';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapTe implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} అంచనా పెట్టిన పోషిణ సమాచారం అందిస్తుంది. ఖచ్చితత్వం మీ సమాచారం & ఆహార రకాల ఆధారంగా ఉంటుంది. ఈ అది జ్ఞాన మార్గదర్శకంగా ఉపయోగించండి, ఖచ్చితమైన మూలాలుగా కాదు. వ్యక్తిగత పోషణ సలహాలో పరిశోధనా నవీనత ఫలితంగా నిపుణుడితో అభిప్రాయం ఇవ్వండి.';
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
	@override String get description => 'అంచనా ప్రాతిపదికలో కేలొరీ-లోపు బరువు మార్పులు అంచనా పెంచడం కోసం మాత్రమే ఉద్దేశించబడ్డాయి, మీ నిజమైన బరువును కనిపెట్టడానికి కాదు.';
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
	@override String get description => 'ఈ మృతులు మీ శరీరం యొక్క శక్తి అవసరాలను తెలుసుకోవడంలో మరియు మీ పోషణ లక్ష్యాలను మార్గనిర్ధేశం చేయడంలో సహాయపడతాయి.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrTe bmr = _TranslationsDisclaimerHealthMetricsBmrTe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeTe tdee = _TranslationsDisclaimerHealthMetricsTdeeTe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalTe dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalTe._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsTe implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'గమనికలు';
	@override String get healthConnect => 'హెల్త్ కనెక్ట్';
	@override String get appInfo => 'యాప్ సమాచారం';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionTe implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'స్మార్ట్ ఆహారం గుర్తింపు';
	@override String get description => 'ఒక ఫొటో తీసి, AI మీ భోజనాన్ని గుర్తించనివ్వండి';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisTe implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI విశ్లేషణ';
	@override String get description => 'మీ వర్ణనల నుండి తక్షణ పోషక విశ్లేషణను పొందండి';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationTe implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఆరోగ్య సమన్వయం';
	@override String get description => 'మరింత సమాచారం కోసం హెల్త్ కనెక్ట్ తో కనెక్ట్ చేయండి';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesTe implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'తక్కువ బరువు';
	@override String get healthyWeight => 'ఆరోగ్యకరమైన బరువు';
	@override String get overweight => 'అధిక బరువు';
	@override String get obese => 'స్థూలకాయం';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesTe implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'సంతులిత బరువును చేరడానికి పోషక-సంపన్న భోజనాలతో ఆరోగ్యకరమైన ప్రణాళికను నిర్మించడంలో మీకు సహాయపడతాము.';
	@override String get healthy => 'చక్కగా! మీరు ఆరోగ్యకరమైన పరిధిలో ఉన్నారు. మీ ఉత్సాహం మరియు శక్తి స్థాయిలను కొనసాగించడంలో మీకు సహాయపడతాము.';
	@override String overweight({required Object appLabel}) => '${appLabel} మీ లక్ష్యాన్ని సౌకర్యంగా చేరడానికి AI ఆధారిత ట్రాకింగ్ తో మీ పయనాన్ని సరళంగా చేస్తుంది.';
	@override String get obese => 'మీ ఆరోగ్య లక్ష్యాలకు వ్యక్తిగత మార్గదర్శకం మరియు స్థిరమైన వ్యూహాలతో మిమ్మల్ని మద్దతు కోసం ఇక్కడ ఉన్నాము.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingTe implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఆటోమేటిక్ కేలొరీ ట్రాకింగ్';
	@override String get description => 'మీ ఫిట్‌నెస్ యాప్‌ల నుండి కాల్చిన కేలొరీలను ట్రాక్ చేయండి';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsTe implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ప్రోగ్రెస్ సమాచారం';
	@override String get description => 'మీ ఆరోగ్య ధోరణులపై వివరణాత్మక సమాచారం పొందండి';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationTe implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'సాధారణ సమన్వయం';
	@override String get description => 'మీ ఇష్టమైన ఆరోగ్య యాప్‌ల నుండి డేటాను సింక్ చేయండి';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessTe implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీరు ఒంటరిగా లేరు';
	@override String get genericMessage => 'నిరంతరంగా ట్రాకింగ్ చేయడం అనేది దీర్ఘకాలిక విజయానికి #1 సూచిక అని పరిశోధన చూపిస్తుంది.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'ఒక ${age} సంవత్సరాల ${gender} గా ${goal} చేయాలని అనుకుంటున్నట్లయితే, నిరంతరంగా ట్రాకింగ్ చేయడం విజయానికి #1 సూచిక.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} ఇది మాన్యువల్ గా చేయడం కన్నా 10 రెట్లు సులభం చేస్తుంది.';
	@override String get getStartedTitle => 'ప్రారంభించడానికి సిద్ధమా?';
	@override String get tipPhoto => 'తక్షణ విశ్లేషణ కోసం మీ భోజనాలను ఫొటో తీసుకోండి';
	@override String get tipConsistency => 'సరైన మార్గదర్శకాలతో చూస్తున్న పరిణామాలను చూనుముట';
	@override String get tipProgress => 'సమయానికి మీ పురోగతిని ట్రాక్ చేయండి మరియు ప్రోత్సాహాన్ని కొనసాగించండి';
	@override String get button => 'ప్రారంభిద్దాం';
	@override String get defaultGender => 'వ్యక్తి';
	@override String get defaultGoal => 'ఆరోగ్యకరమైన మీరు';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileTe implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ ఆరోగ్య ప్రొఫైల్';
	@override String bmiDescription({required Object bmi}) => 'మీ నిఘా ఆధారంగా, మీ BMI ${bmi}.';
	@override String get finalizeDescription => 'మీ అనుభవాన్ని వ్యక్తిగతీకరించడానికి మీ ప్రొఫైల్ ని పూర్తి చేద్దాం.';
	@override String get goalGain => 'ఎదురుచు';
	@override String get goalLose => 'తక్కువ';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'మీ లక్ష్యాన్ని చేరడానికి, మీరు ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'మీరు మీ లక్ష్య బరువులో ఉన్నారు! మేము దాన్ని కొనసాగించడంలో మీకు సహాయపడతాం.';
	@override String get button => 'ప్రారంభిద్దాం';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleTe implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'అద్భుతమైన ప్రారంభం!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'మీరు ${goalText} వైపు మొదటి అడుగు వేశారు. మీరు ${activityText} గా ఉంkerman, ${appLabel} మీ లక్ష్యాలను మీ జీవనశైలికి సరిపోల్చుతుంది.';
	@override String get personalizedTargets => 'ఆర్థిక కేలొరీ లక్ష్యాలు';
	@override String get aiMealDetection => 'AI ఆధారిత భోజన గుర్తింపు';
	@override String get macroBreakdowns => 'వివిరించిన మాక్రో-అవసరాలు';
	@override String get button => 'ప్రారంభిద్దాం';
	@override String get defaultGoal => 'మీ లక్ష్యాలు';
	@override String get defaultActivity => 'యాక్టివ్';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightTe implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'బరువు కోల్పోవడం';
	@override String get description => 'బరువు తగ్గించడానికి కేలొరీ లోపాన్ని సృష్టించండి';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightTe implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'బరువును నిలుపు';
	@override String get description => 'మీ ప్రస్తుత బరువును నిలుపు చేయండి';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightTe implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'బరువును పెంచడం';
	@override String get description => 'బరువు పెంచడానికి కేలొరీ అధికతను ఆకట్టుకోండి';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryTe implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'ఆసక్తి లేని';
	@override String get description => 'తక్కువ వ్యాయామం';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveTe implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'సులభంగా యాక్టీవ్';
	@override String get description => 'ప్రతి వారం 1-3 రోజులు చాలా కొద్దిగా వ్యాయామం';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveTe implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'మోస్తారు యాక్టీవ్';
	@override String get description => 'ప్రతి వారం 3-5 రోజులు మోస్తారు వ్యాయామం';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveTe implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'చాలా యాక్టీవ్';
	@override String get description => 'ప్రతి వారం 6-7 రోజుల క్రత్యం వ్యాయామం';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveTe implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'అత్యంత యాక్టివ్';
	@override String get description => 'చాలా తీవ్రమైన వ్యాయామం, శారీరక పని';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableTe implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'హెల్త్ కనెక్ట్ అందుబాటులో లేదు';
	@override String get description => 'ఈ పరికరంపై హెల్త్ కనెక్ట్ అందుబాటులో లేదు. ఇది Android 14 లేదా నూతన సంస్కరణని అవసరం చేసింది.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsTe implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'అనుమతులు';
	@override String get description => 'హెల్త్ కనెక్ట్ సమ్మేళనాన్ని అందించేందుకు కోరిన అనుమతులు:';
	@override String get granted => 'అనుమతించారు';
	@override String get notGranted => 'అనుమతించుకోలేదు';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTe caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadTe nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadTe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteTe nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteTe._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryTe implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మా గాథ';
	@override String content({required Object appLabel}) => '${appLabel} ఒక సాధారణ నిరాశ నుండి పుట్టింది: చాలా కేలరీ ట్రాకింగ్ యాప్స్ లేదా పూర్తిగా కష్టమైనవి, నిరంతర మానవ ఇన్‌పుట్‌ను కోరేవి, అధిక సభ్యత్వ ఫీజులను వసూలు చేసే విధంగా ఉంటాయి లేదా గోప్యతను తీవ్రంగా పరిగణించవు.\n\nఒక ఇండీ డెవలపర్ గా, నేను మరింత సులభమైన మరియు సమానమైన దాంట్లో నిర్మించాలనుకున్నాను - AIను ఉపయోగించి కృషిని తగ్గించేది, ఉపయోగించడానికి వేగంగా మరియు ఉచితంగా ఉండి, మీ ఆరోగ్య డేటా పెద్దగా గౌరవించాలి.\n\n${appLabel} నాకు ఉండాలనుకుంటున్న యాప్: ఎలాంటి ఖాతాలు లేదు, ఎవ్వరికీ అనుసరిస్తే లేదు, వ్యాప్తి లేదు - కేవలం స్పష్టమైన, ప్రాయోగిక అవగాహన మరియు మీ ఆరోగ్య లక్ష్యాలు.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyTe implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ గోప్యత ముఖ్యమైనది';
	@override String get description => 'గోప్యత అనేది తీరులోకి తీసుకువచ్చే అంశం కాదు - ఇది ఒక డిజైన్ ప్రిన్సిపల్. ప్రాక్టీస్‌లో అర్థం ఏమిటో ఇక్కడ ఉంది:';
	@override String get noAccounts => 'ఏ ఖాతాలు అవసరం లేదు\nయాప్‌ను వెంటనే ఉపయోగించండి. ఎలాంటి సైన్-అప్‌లు, ఎలాంటి ఐడెంటిటీలు లేవు.';
	@override String noTracking({required Object appLabel}) => 'ఏ ప్రవర్తన అనుసరించడం లేదు\n${appLabel} మీ కార్యకలాపాలను మానిటర్ చేయదు, ఉపయోగం ప్రొఫైల్స్‌ను నిర్మించదు, లేదా మీను యాప్‌లు లేదా వెబ్‌సైట్లపై అనుసరించదు.';
	@override String noAds({required Object appLabel}) => 'డిజైన్ ప్రకారంగా ప్రకటనలు ఉండవు\n${appLabel} ప్రకటనలు లేదా డేటా ఆధారిత ఆదాయ మోడల్ లేకుండా పనిచేయడానికి నిర్మించబడింది.';
	@override String get noDataSelling => 'డేటా అమ్మకం లేదు\nమీ ఆరోగ్య డేటా ఎప్పుడూ అమ్మబడదు లేదా మూడవ పక్షాలతో పంచుకోబడదు.';
	@override String get localStorage => 'స్థానిక ప్రథమ నిల్వ\nమీ డేటా మీ పరికరంలోనే ఉంటుంది.';
	@override String get privacyPolicy => 'గోప్యతా విధానం';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperTe implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఒక ఇండీ డెవలపర్ చేత నిర్మించబడింది';
	@override String description({required Object appLabel}) => '${appLabel} నిశ్చితంగా, గోప్యతా గౌరవించే ఆరోగ్య సాఫ్ట్‌వేర్ సృష్టించడంపై దృష్టి పెట్టిన ఒక వ్యక్తిగత ఇండీ డెవలపర్ ద్వారా రూపొందించబడింది.\n\nచురుకైన అభిప్రాయాలను వ్యక్తిగతంగా చదువుతారు మరియు ఆ యాప్ యొక్క దిశను ఆకృతీకరించడంలో సహాయపడతాయి.';
	@override String get website => 'వెబ్‌సైట్';
	@override String get email => 'ఇమెయిల్';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackTe implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} మీకు నచ్చిందా?';
	@override String description({required Object appLabel}) => 'మీ అభిప్రాయాలు ${appLabel} ను అందరికీ మెరుగుపరిచేందుకు సహాయపడుతుంది.';
	@override String get rateApp => 'ప్రత్యేక దుకాణంలో రేట్ చేయండి';
	@override String get sendFeedback => 'అభిప్రాయం పంపండి';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeTe implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'పోర్షన్ పరిమాణం';
	@override String get description => 'అంచనాల ఖచ్చితత్వం మీ సరైన అభ్యాసం ఆధారంగా ఉంటుంది.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsTe implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'సిద్ధీకరణ పద్ధతులు';
	@override String description({required Object appLabel}) => 'క్షా మోతాదులో కీలకంగా ఉంటుంది. ${appLabel} రన్ను అంచనాల పరిష్కారాలు ఈ మార్పులు ఎప్పుడూ పరిశీలిస్తాయి.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsTe implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'కూరగాయలు';
	@override String get description => 'వివిధ రకాల లోపులను కలిగి ఉండే సంక్లిష్ట వంటకాలు కొంత అంచన్లను ఉన్నత అసమర్ధతం లభిస్తుంది.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsTe implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'డాటాబేస్ పరిమితులు';
	@override String description({required Object appLabel}) => '${appLabel} యొక్క ఆహారం డేటాబేస్ విస్తృతం కానవడంతో కానీ అన్ని ఆహార చిహ్నాలతో ఉండకపోవచ్చు.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyTe implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'కేలొరీ ఖచ్చితత్వం';
	@override String get description => 'ఈ అంచనా మీ ట్రాక్ కేలొరీ అందించిన ఖచ్చితంగా మంచిని మాత్రమే అవుతుంది. ఖచ్చితమైన లాగర్లు ఖచ్చితమైన అంచనాలను ఇవ్వడం.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsTe implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'జీవశాస్త్ర కారకాలు';
	@override String description({required Object appLabel}) => 'నిర్వహణ, హార్మోన్లు, నిద్ర, ఒత్తిడి, నీటి సరఫరా మరియు ${appLabel} కొలిచే ఇతర వ్యక్తిగత పరిస్థితులు వంటి అవిధేయాలను ప్రభావితం చేస్తుంది.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightTe implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'నీటి బరువు & మార్పులు';
	@override String get description => 'ప్రతి రోజున బరువు ఎక్కువగా ఉపచ్చులు మరియు వేగం వల్ల వ్యత్యాసాలు మరియు నీటి తట్టువులెవరూ ఉన్నాయి. అంచనా ఈ రోజువారీ మార్పులను జోడించాలి లేదు.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTe implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'పోతు ప్రాజ్ఞానం';
	@override String get description => 'ఈ అంచనాను వైద్య నిర్ణయాల కోసం ఉపయోగించకండి. ఎప్పుడూ వ్యక్తిగత బరువు నిర్వహణ సమాచారానికి ఒక ఆరోగ్య నిపుణుడిని సంప్రదించండి.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrTe implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'అధిక పునరుత్పత్తి రేటు (BMR) అంటే మీ శరీరం విశ్రాంతిలో ఉన్నప్పుడు శ్వాస మరియు చరిత్ర వంటి మౌలిక కార్యకలాపాలను నిర్వహించడానికి ఎంత ఉక్కు కరిగిస్తుందో. BMR మీ వయసు, లింగం, ఎత్తు మరియు బరువుపైన ఆధారపడి ఉంటుంది. అధిక BMR అంటే మీ శరీరం విశ్రాంతిలోనే ఎక్కువ కేలరీలను కరిగించేది, సాధారణంగా ఎక్కువ కండర మాస్, యువ వయస్సు లేదా పురుషత్వం కారణంగా. తక్కువ BMR సాధారణంగా తక్కువ కండర మాస్, వృద్ధ వయస్సు లేదా మహిళా లైంగికతను సూచిస్తుంది.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeTe implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'మొత్తం రోజు శక్తి ఖర్చు (TDEE) అంటే మీరు ప్రతి రోజూ కరిగించే మొత్తం కేలరీలు, అందులో మీ BMR మరియు శారీరక కార్యకలాపాల నుండి కేలరీస్ కలవు. TDEE మీ BMR మరియు కార్యకలాప స్థాయి పై ఆధారపడి ఉంటుంది. అధిక TDEE అంటే మీరు మొత్తం కేలરીలను ఎక్కువగా కరిగిస్తారు, సాధారణంగా ఎక్కువ కార్యకలాపం చేయడం లేదా అధిక BMR వల్ల. తక్కువ TDEE అంటే తక్కువ రోజు కార్యకలాపం లేదా తక్కువ BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalTe implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'రోజు లక్ష్యం';
	@override String get description => 'రోజు లక్ష్యం అంటే మీ TDEE మరియు బరువు లక్ష్యం ఆధారంగా మీకు సిఫారసు చేసిన ప్రతిరోజు కేలరీ తీసుకొనే పరిమాణం. బరువు తగ్గేందుకు, మీరు మీ TDEE కన్నా తక్కువ కేలరీలను తీసుకుంటారు. బరువు నిర్వహణకు, మీరు మీ TDEE సరిపోల్చుతారు. బరువు పెరగడం కోసం, మీరు మీ TDEE కన్నా ఎక్కువ కేలరీలు తీసుకుంటారు. ఇది మీ ఆశించిన బరువు మార్పును ఆరోగ్యకరమైన రీతిలో సాధించడంలో సహాయ పడుతుంది.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTe implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మొత్తం కాలరీస్ బర్న్డ్ చదవండి';
	@override String get description => 'ఈ అనుమతి ఆరోగ్య అనుసంధానంలో నుండి మీ మొత్తం కాలరీలు బర్న్ చేయడం చదవడాన్ని అనుమతిస్తుంది.';
	@override String get usage => 'ఈ అనుమతి అప్లికేషన్ లో మీ రోజువారీ కాలరీ బర్న్ చూపించడానికి ఉపయోగిస్తారు, ఇది మీరు మీ రోజంతా మొత్తంగా మీ శక్తి వరకు అర్థం చేసుకోవడంలో సహాయపడుతుంది.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadTe implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'పోషకాహార సమాచారం చదవండి';
	@override String get description => 'ఈ అనుమతి ఆరోగ్య అనుసంధానంలో నుండి పోషకాహార సమాచారాన్ని చదవడాన్ని అనుమతిస్తుంది.';
	@override String get usage => 'ఈ అనుమతి ఆరోగ్య అనుసంధానానికి అనుసంధానించిన ఇతర అప్లికేషన్ల ద్వారా లాగ్ చేయబడిన పోషక సమాచారం చదవడానికి అనుమతిస్తుంది, అది మీ పోషకాహారాన్ని సమగ్రంగా చూడడంలో సహాయపడుతుంది.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteTe implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteTe._(this._root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'పోషకాహార సమాచారం వ్రాయండి';
	@override String get description => 'ఈ అనుమతి ఆరోగ్య అనుసంధానానికి పోషకాహార సమాచారాన్ని వ్రాయడాన్ని అనుమతిస్తుంది.';
	@override String get usage => 'ఈ అనుమతి మీరు లాగ్ చేసిన భోజనం యొక్క సమాచారాన్ని ఆరోగ్య అనుసంధానానికి సమసమయం చేయడం అనుమతిస్తుంది, దీని ద్వారా మీరు ఉపయోగించే ఇతర ఆరోగ్య మరియు ఫిట్నెస్ అప్లికేషన్లకు మీ పోషకాహార సమాచారాన్ని అందుబాటులో ఉంచుతుంది.';
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
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel} లో స్వాగతం',
			'onboarding.subtitle' => 'మీ వ్యక్తిగత పోషణ సహాయకుడు AI తో',
			'onboarding.getStarted' => 'ప్రారంభించండి',
			'onboarding.features.foodRecognition.title' => 'స్మార్ట్ ఆహారం గుర్తింపు',
			'onboarding.features.foodRecognition.description' => 'ఒక ఫొటో తీసి, AI మీ భోజనాన్ని గుర్తించనివ్వండి',
			'onboarding.features.aiAnalysis.title' => 'AI విశ్లేషణ',
			'onboarding.features.aiAnalysis.description' => 'మీ వర్ణనల నుండి తక్షణ పోషక విశ్లేషణను పొందండి',
			'onboarding.features.healthIntegration.title' => 'ఆరోగ్య సమన్వయం',
			'onboarding.features.healthIntegration.description' => 'మరింత సమాచారం కోసం హెల్త్ కనెక్ట్ తో కనెక్ట్ చేయండి',
			'onboarding.gender.title' => 'మీ లింగం ఏమిటి?',
			'onboarding.gender.description' => 'లింగం మనకు మీ బేసల్ మెటబాలిక్ రేట్ (BMR)ను ఖచ్చితంగా లెక్కించటానికి సహాయపడుతుంది.',
			'onboarding.gender.next' => 'తరువాత',
			'onboarding.height.title' => 'మీ ఎత్తు ఎంత?',
			'onboarding.height.description' => 'మీ ఎత్తు మీ BMI మరియు శక్తి అవసరాలను ఖచ్చితంగా లెక్కించడానికి సహాయపడుతుంది.',
			'onboarding.height.metric' => 'మెట్రిక్',
			'onboarding.height.imperial' => 'ఇంపీరియల్',
			'onboarding.height.next' => 'తరువాత',
			'onboarding.weight.currentTitle' => 'మీ ప్రస్తుత బరువు ఎంత?',
			'onboarding.weight.currentDescription' => 'మీ ప్రస్తుత బరువు మీ రోజువారీ లక్ష్యాలను వ్యక్తిగతీకరించడానికి అవసరం.',
			'onboarding.weight.targetTitle' => 'మీ లక్ష్య బరువు ఎంత?',
			'onboarding.weight.targetDescription' => 'లక్ష్య బరువును ఏర్పరచడం మా దీర్ఘకాలిక ఆలోచనను నిర్ధారించడంలో సహాయపడుతుంది.',
			'onboarding.weight.metric' => 'మెట్రిక్',
			'onboarding.weight.imperial' => 'ఇంపీరియల్',
			'onboarding.weight.next' => 'తరువాత',
			'onboarding.age.title' => 'మీ పుట్టినరోజు ఎప్పుడు?',
			'onboarding.age.description' => 'మీ వయస్సు మీ కేలొరీ అవసరాలను ఖచ్చితంగా లెక్కించడంలో సహాయపడుతుంది.',
			'onboarding.age.next' => 'తరువాత',
			'onboarding.bmiScale.underweight' => 'తక్కువ బరువు',
			'onboarding.bmiScale.healthy' => 'ఆరోగ్యకరమైన',
			'onboarding.bmiScale.overweight' => 'అధిక బరువు',
			'onboarding.bmiScale.obese' => 'స్థూలకాయం',
			'onboarding.bmiScale.categories.underweight' => 'తక్కువ బరువు',
			'onboarding.bmiScale.categories.healthyWeight' => 'ఆరోగ్యకరమైన బరువు',
			'onboarding.bmiScale.categories.overweight' => 'అధిక బరువు',
			'onboarding.bmiScale.categories.obese' => 'స్థూలకాయం',
			'onboarding.bmiScale.messages.underweight' => 'సంతులిత బరువును చేరడానికి పోషక-సంపన్న భోజనాలతో ఆరోగ్యకరమైన ప్రణాళికను నిర్మించడంలో మీకు సహాయపడతాము.',
			'onboarding.bmiScale.messages.healthy' => 'చక్కగా! మీరు ఆరోగ్యకరమైన పరిధిలో ఉన్నారు. మీ ఉత్సాహం మరియు శక్తి స్థాయిలను కొనసాగించడంలో మీకు సహాయపడతాము.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} మీ లక్ష్యాన్ని సౌకర్యంగా చేరడానికి AI ఆధారిత ట్రాకింగ్ తో మీ పయనాన్ని సరళంగా చేస్తుంది.',
			'onboarding.bmiScale.messages.obese' => 'మీ ఆరోగ్య లక్ష్యాలకు వ్యక్తిగత మార్గదర్శకం మరియు స్థిరమైన వ్యూహాలతో మిమ్మల్ని మద్దతు కోసం ఇక్కడ ఉన్నాము.',
			'onboarding.weightGoal.title' => 'మీ లక్ష్యం ఏమంటి?',
			'onboarding.weightGoal.description' => 'మీరు సాధించాలని కోరుకునే లక్ష్యాన్ని వర్ణించండి',
			'onboarding.activityLevel.title' => 'మీ యాక్టివ్ స్థాయి ఎంత?',
			'onboarding.activityLevel.description' => 'ఇది మీ రోజుల కేలొరీ అవసరాలు ఖచ్చితంగా లెక్కించడంలో సహాయపడుతుంది',
			'onboarding.healthConnect.title' => 'హెల్త్ కనెక్ట్ తో కనెక్ట్ చేయండి',
			'onboarding.healthConnect.description' => 'భిన్నమైన సమాచారం మరియు ఆటోమేటిక్ కేలొరీ ట్రాకింగ్ కోసం మీ ఆరోగ్య డేటాను సింక్ చేయండి',
			'onboarding.healthConnect.automaticTracking.title' => 'ఆటోమేటిక్ కేలొరీ ట్రాకింగ్',
			'onboarding.healthConnect.automaticTracking.description' => 'మీ ఫిట్‌నెస్ యాప్‌ల నుండి కాల్చిన కేలొరీలను ట్రాక్ చేయండి',
			'onboarding.healthConnect.progressInsights.title' => 'ప్రోగ్రెస్ సమాచారం',
			'onboarding.healthConnect.progressInsights.description' => 'మీ ఆరోగ్య ధోరణులపై వివరణాత్మక సమాచారం పొందండి',
			'onboarding.healthConnect.seamlessIntegration.title' => 'సాధారణ సమన్వయం',
			'onboarding.healthConnect.seamlessIntegration.description' => 'మీ ఇష్టమైన ఆరోగ్య యాప్‌ల నుండి డేటాను సింక్ చేయండి',
			'onboarding.healthConnect.connected' => 'హెల్త్ కనెక్ట్ కనెక్ట్ అయ్యింది',
			'onboarding.healthConnect.notConnected' => 'హెల్త్ కనెక్ట్ కనెక్ట్ కాని',
			'onboarding.healthConnect.setup' => 'హెల్త్ కనెక్ట్ సెట్టప్ చేయండి',
			'onboarding.healthConnect.skipForNow' => 'ఇప్పుడు అభ్యాసించండి',
			'onboarding.healthConnect.statusConnected' => 'హెల్త్ కనెక్ట్ కనెక్ట్ అయింది.',
			'onboarding.healthConnect.statusSuccess' => 'హెల్త్ కనెక్ట్ విజయం సుస్పష్టం అయింది!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'అనుమతి అంగీకరించలేదు. దయచేసి ${appLabel} కోసం మీ ఫోన్ సెట్టింగ్‌లలో హెల్త్ కనెక్ట్ అనుమతులను నిరాకరించండి.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'హెల్త్ కనెక్ట్ ను సెటప్ చేయడం లో లోపం: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'మీరు ఒంటరిగా లేరు',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'నిరంతరంగా ట్రాకింగ్ చేయడం అనేది దీర్ఘకాలిక విజయానికి #1 సూచిక అని పరిశోధన చూపిస్తుంది.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'ఒక ${age} సంవత్సరాల ${gender} గా ${goal} చేయాలని అనుకుంటున్నట్లయితే, నిరంతరంగా ట్రాకింగ్ చేయడం విజయానికి #1 సూచిక.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} ఇది మాన్యువల్ గా చేయడం కన్నా 10 రెట్లు సులభం చేస్తుంది.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'ప్రారంభించడానికి సిద్ధమా?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'తక్షణ విశ్లేషణ కోసం మీ భోజనాలను ఫొటో తీసుకోండి',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'సరైన మార్గదర్శకాలతో చూస్తున్న పరిణామాలను చూనుముట',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'సమయానికి మీ పురోగతిని ట్రాక్ చేయండి మరియు ప్రోత్సాహాన్ని కొనసాగించండి',
			'onboarding.reinforcement.trackingSuccess.button' => 'ప్రారంభిద్దాం',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'వ్యక్తి',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'ఆరోగ్యకరమైన మీరు',
			'onboarding.reinforcement.healthProfile.title' => 'మీ ఆరోగ్య ప్రొఫైల్',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'మీ నిఘా ఆధారంగా, మీ BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'మీ అనుభవాన్ని వ్యక్తిగతీకరించడానికి మీ ప్రొఫైల్ ని పూర్తి చేద్దాం.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'ఎదురుచు',
			'onboarding.reinforcement.healthProfile.goalLose' => 'తక్కువ',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'మీ లక్ష్యాన్ని చేరడానికి, మీరు ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'మీరు మీ లక్ష్య బరువులో ఉన్నారు! మేము దాన్ని కొనసాగించడంలో మీకు సహాయపడతాం.',
			'onboarding.reinforcement.healthProfile.button' => 'ప్రారంభిద్దాం',
			'onboarding.reinforcement.goalLifestyle.title' => 'అద్భుతమైన ప్రారంభం!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'మీరు ${goalText} వైపు మొదటి అడుగు వేశారు. మీరు ${activityText} గా ఉంkerman, ${appLabel} మీ లక్ష్యాలను మీ జీవనశైలికి సరిపోల్చుతుంది.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'ఆర్థిక కేలొరీ లక్ష్యాలు',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI ఆధారిత భోజన గుర్తింపు',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'వివిరించిన మాక్రో-అవసరాలు',
			'onboarding.reinforcement.goalLifestyle.button' => 'ప్రారంభిద్దాం',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'మీ లక్ష్యాలు',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'యాక్టివ్',
			'tabs.dashboard' => 'డాష్బోర్డు',
			'tabs.history' => 'చరిత్ర',
			'home.dailyGoal.title' => 'మీ రోజువారీ లక్ష్యాన్ని సెట్ చేయండి',
			'home.dailyGoal.titleSet' => 'మీ రోజువారీ లక్ష్యం',
			'home.dailyGoal.description' => 'మీ ఆరోగ్య ప్రయాణం ప్రారంభించడానికి సిద్ధమైనారా? మీ ప్రగతిని ప్రారంభించడానికి కింద మీ రోజువారీ కేలొరీ లక్ష్యాన్ని సెట్ చేయండి.',
			'home.dailyGoal.descriptionSet' => 'మీ కొలతలు సృష్టించబడ్డాయి! ఇదే మీ దిశగా మార్గదర్శకంగా ఉంటుంది.',
			'home.dailyGoal.yourGoal' => 'మీ లక్ష్యం',
			'home.dailyGoal.dailyCalories' => 'రోజువారీ కేలొరీలు (kcal)',
			'home.dailyGoal.setGoal' => 'లక్ష్యం నియమించు',
			'home.dailyGoal.intake' => 'ఆహారం',
			'home.dailyGoal.burned' => 'బర్న్',
			'home.dailyGoal.weightImpact' => 'బరువు ప్రభావం',
			'home.dailyGoal.estLoss' => 'అనుమానిస్థాయిలో నష్ట పరిణామం',
			'home.dailyGoal.estGain' => 'అనుమానిస్థాయిలో లాభ పరిణామం',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'రోజు విడివిడిగా',
			'home.dailySummary.calories' => 'కేలొరీలు',
			'home.dailySummary.carbs' => 'కార్బ్స్',
			'home.dailySummary.protein' => 'ప్రోటీన్',
			'home.dailySummary.fat' => 'కొవ్వు',
			'home.dailySummary.fiber' => 'ఫైబర్',
			'home.intakeProgress.title' => 'ఈ రోజు యొక్క మాక్రో విభజన',
			'home.intakeProgress.target' => 'లక్ష్యం',
			'home.intakeProgress.current' => 'ప్రస్తుత',
			'home.intakeHistory.title' => '7-రోజుల మాక్రో చరిత్ర',
			'home.intakeHistory.noHistoryYet' => 'ఇప్పటివరకు చరిత్ర లేదు',
			'home.intakeHistory.startLogging' => 'మీ భోజనాలను లాగ్ చేయడం ప్రారంభించడం ద్వారా మీ\n7-రోజుల మాక్రో ధోరణులను ఇక్కడ చూడండి',
			'home.mealLog.title' => 'లాగ్ చేసిన భోజనలు',
			'home.mealLog.emptyMessage' => 'మీ చివరి భోజనానికి ఒక ఫొటో తీసి ఇక్కడ నమోదు చేయండి.',
			'home.mealLog.noMealsToday' => 'ఈ రోజు భోజనం నమోదు చేయడంలేదు',
			'home.mealLog.seeAllMeals' => 'అన్ని భోజనాలను చూడండి',
			'home.mealDescription.title' => 'AI తో త్వరిత చేర్చు',
			'home.mealDescription.description' => 'మీ భోజనాన్ని వర్ణించండి, AI వివరాలను నిర్వహించనివ్వండి.',
			'home.mealDescription.hint' => 'ఉదా: నేను ప్రతి రోజున ఒక పెద్ద తిన్న ప్రోటీన్ పానీయం మరియు ఒక నష్టభోజనాన్ని కలిగుంటాను ...',
			'home.mealDescription.analyzeMeal' => 'భోజనాన్ని విశ్లేషించండి',
			'home.favoriteMeals.title' => 'ప్రియమైన భోజనాలు',
			'home.favoriteMeals.description' => 'మీ ప్రియమైన భోజనాలను త్వరితంగా చేర్చండి.',
			'home.favoriteMeals.noFavorites' => 'ఇప్పటివరకు ప్రియమైన భోజనాలు లేవు.',
			'home.favoriteMeals.addFavoriteHint' => 'ఒక భోజనాన్ని ప్రియంగా గుర్తించడానికి నక్షత్రంపై క్లిక్ చేయండి.',
			'home.favoriteMeals.seeAll' => 'అన్ని చూడండి',
			'home.favoriteMeals.add' => 'చేర్చండి',
			'home.mealSnap.title' => 'ఫొటో తీసి మీ భోజనాన్ని ట్రాక్ చేయండి',
			'home.mealSnap.description' => 'AI విశ్లేషణ కోసం మీ ఆహారానికి మైక్రోాన్ని ఘనంగా దృష్టించండి.',
			'home.mealSnap.openCamera' => 'కెమెరాను తెరవండి',
			'home.connectHealth.title' => 'హెల్త్ కనెక్ట్ తో సింక్ చేయండి',
			'home.connectHealth.description' => 'మీ పోషకాలు డేటా హెల్త్ కనెక్ట్ తో సింక్ చేయండి',
			'home.connectHealth.install' => 'సంస్థాపన చేయండి',
			'home.connectHealth.connect' => 'కనెక్ట్ చేయండి',
			'history.noMeals' => 'లోగా డేటా లేదు',
			'history.emptyMessage' => 'మీ చివరి భోజనానికి ఒక ఫొటో తీసి ఇక్కడ నమోదు చేయండి.',
			'history.today' => 'ఈ రోజు',
			'history.yesterday' => 'నిన్న',
			'meal.ohNo' => 'ఓహ్ లేదు!',
			'meal.delete' => 'తొలగించు',
			'meal.editMeal' => 'భోజనాన్ని సంపాదించు',
			'meal.addMeal' => 'భోజనాన్ని చేర్చండి',
			'meal.saveMeal' => 'భోజనాన్ని నిల్వ చేయు',
			'meal.save' => 'సేవ్',
			'meal.mealName' => 'భోజనంలోని పేరు',
			'meal.mealQuantity' => 'భోజనంలోని పరిమాణం',
			'meal.mealQuantityHint' => 'ఉదా: 1 ప్యాకెట్, 2 తుక్కలు',
			'meal.timeOfMeal' => 'భోజన సమయం',
			'meal.timeOfMealHint' => 'మీరు మీ భోజనాన్ని తీసుకున్న సమయాన్ని ఎంచుకోండి',
			'meal.mealType' => 'భోజన పురుషత్వం',
			'meal.nutrition.calories' => 'కేలొరీలు',
			'meal.nutrition.carbs' => 'కార్బ్స్ (గ్రా)',
			'meal.nutrition.protein' => 'ప్రోటీన్ (గ్రా)',
			'meal.nutrition.fat' => 'కొవ్వు (గ్రా)',
			'meal.nutrition.fiber' => 'ఫైబర్ (గ్రా)',
			'meal.deleteConfirmation.title' => 'భోజనాన్ని తొలగించండి',
			'meal.deleteConfirmation.message' => 'మీరు ఈ భోజనాన్ని తొలగించాలని నిర్ధారించుకుంటున్నారా?',
			'meal.deleteConfirmation.cancel' => 'రద్దు',
			'meal.deleteConfirmation.delete' => 'తొలగించు',
			'meal.addedToLog' => 'భోజనం మీ లాగ్ కు చేరిష్టించబడింది!',
			'meal.couldNotAdd' => ({required Object error}) => 'భోజనాన్ని చేర్చలేకపోయినా: ${error}',
			'meal.removedFromFavorites' => 'ప్రియమైనదుల నుంచి తొలగించబడింది!',
			'meal.savedAsFavorite' => 'భోజనం ప్రియమైనదిగా నిల్వ చేయబడింది!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'ప్రియమైనదిని నవీకరించలేకపోయింది: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'సాధనం చేయడంలో వైఫల్యం: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'చిత్రాన్ని చదవడంలో విఫలమైంది: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'చిత్రం సంకోచించడంలో వైఫల్యం: ${error}',
			'meal.failedToSave' => 'డేటాను నిల్వ చేయడంలో విఫలమైంది. ప్రస్తుత మధ్యలో ప్రయత్నించండి.',
			'favorites.title' => 'ప్రియమైనవి',
			'favorites.empty' => 'ఇప్పటివరకు ప్రియమైన భోజనాలు లేవు.',
			'profile.title' => 'ప్రొఫైల్',
			'profile.noProfileData' => 'ప్రొఫైల్ డేటా లేదు',
			'profile.yourProfile' => 'మీ ప్రొఫైల్',
			'profile.viewAndManage' => 'మీ ఆరోగ్య సమాచారాన్ని చూడండి మరియు నిర్వహించండి',
			'profile.sections.profile' => 'ప్రొఫైల్',
			'profile.sections.basicInformation' => 'ప్రాథమిక సమాచారం',
			'profile.sections.goalsAndActivity' => 'లక్ష్యాలు & యాక్టివిటీ',
			'profile.sections.calculatedValues' => 'లెక్కించిన విలువలు',
			'profile.gender' => 'లింగం',
			'profile.height' => 'ఊపరితనం',
			'profile.weight' => 'బరువు',
			'profile.age' => 'వయస్సు',
			'profile.weightGoal' => 'బరువు లక్ష్యం',
			'profile.targetWeight' => 'లక్ష్య బరువు',
			'profile.activityLevel' => 'యాక్టివిటీ స్థాయి',
			'profile.healthMetrics' => 'ఆరోగ్య మెట్రిక్‌లు',
			'profile.notSet' => 'సెట్ కాలేదు',
			'profile.years' => 'సంవత్సరాలు',
			'profile.updatedSuccessfully' => 'ప్రొఫైల్ విజయవంతంగా నవీకరించబడింది!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'రోజువారీ లక్ష్యం',
			'profile.calculatedValues.calPerDay' => 'కేల/రోజు',
			'profile.calculatedValues.notAvailable' => 'అందుబాటులో లేదు',
			'healthScore.title' => 'ఆరోగ్య స్కోర్',
			'healthScore.whyThisScore' => 'ఈ స్కోర్ ఎందుకు?',
			'healthScore.note' => 'మీ ఆరోగ్యాన్ని సమర్థవంతంగా అంచనా వేయడానికి జరిగిన తీయకుండా ఈ స్కోరు పేషేష్ మరియు పోషక సందర్భాల ఆధారంగా ఉండవచ్చు. ఎప్పుడూ పూర్వ సలహా కోసం ఒక నిపుణుడిని సంప్రదించండి.',
			'healthScore.unhealthy' => 'ఆరోగ్యకరమైనది కాదు',
			'healthScore.healthy' => 'ఆరోగ్యకరమైనది',
			'healthScore.neutral' => 'నత్వర్రేణు',
			'editProfile.title' => 'ప్రొఫైల్ క్రింది',
			'editProfile.sections.personalInformation' => 'వ్యక్తిగత సమాచారం',
			'editProfile.sections.physicalMeasurements' => 'శారీరక కొలతలు',
			'editProfile.sections.goalsAndActivity' => 'లక్ష్యాలు & యాక్టివిటీ',
			'editProfile.gender' => 'లింగం',
			'editProfile.dateOfBirth' => 'పుట్టిన తేదీ',
			'editProfile.height' => 'ఊపరితనం',
			'editProfile.weight' => 'బరువు',
			'editProfile.weightGoal' => 'బరువు లక్ష్యం',
			'editProfile.activityLevel' => 'యాక్టివిటీ స్థాయి',
			'editProfile.metric' => 'మెట్రిక్',
			'editProfile.imperial' => 'ఇంపీరియల్',
			'editProfile.metricCm' => 'మెట్రిక్ (సెం)',
			'editProfile.imperialFtIn' => 'ఇంపీరియల్ (అంగుళాలు)',
			'editProfile.metricKg' => 'మెట్రిక్ (కేజీలు)',
			'editProfile.imperialLbs' => 'ఇంపీరియల్ (పౌండ్స్)',
			'editProfile.genders.male' => 'పురుష',
			'editProfile.genders.female' => 'స్త్రీ',
			'editProfile.genders.other' => 'ఇతర',
			'editProfile.weightGoals.loseWeight.name' => 'బరువు కోల్పోవడం',
			'editProfile.weightGoals.loseWeight.description' => 'బరువు తగ్గించడానికి కేలొరీ లోపాన్ని సృష్టించండి',
			'editProfile.weightGoals.maintainWeight.name' => 'బరువును నిలుపు',
			'editProfile.weightGoals.maintainWeight.description' => 'మీ ప్రస్తుత బరువును నిలుపు చేయండి',
			'editProfile.weightGoals.gainWeight.name' => 'బరువును పెంచడం',
			'editProfile.weightGoals.gainWeight.description' => 'బరువు పెంచడానికి కేలొరీ అధికతను ఆకట్టుకోండి',
			'editProfile.activityLevels.sedentary.name' => 'ఆసక్తి లేని',
			'editProfile.activityLevels.sedentary.description' => 'తక్కువ వ్యాయామం',
			'editProfile.activityLevels.lightlyActive.name' => 'సులభంగా యాక్టీవ్',
			'editProfile.activityLevels.lightlyActive.description' => 'ప్రతి వారం 1-3 రోజులు చాలా కొద్దిగా వ్యాయామం',
			'editProfile.activityLevels.moderatelyActive.name' => 'మోస్తారు యాక్టీవ్',
			'editProfile.activityLevels.moderatelyActive.description' => 'ప్రతి వారం 3-5 రోజులు మోస్తారు వ్యాయామం',
			'editProfile.activityLevels.veryActive.name' => 'చాలా యాక్టీవ్',
			'editProfile.activityLevels.veryActive.description' => 'ప్రతి వారం 6-7 రోజుల క్రత్యం వ్యాయామం',
			'editProfile.activityLevels.extremelyActive.name' => 'అత్యంత యాక్టివ్',
			'editProfile.activityLevels.extremelyActive.description' => 'చాలా తీవ్రమైన వ్యాయామం, శారీరక పని',
			'settings.title' => 'సెట్టింగులు',
			'settings.sections.profile' => 'ప్రొఫైల్',
			'settings.sections.localization' => 'స్థానికీకరణ',
			'settings.sections.notifications' => 'అవగాహనలు',
			'settings.sections.healthConnect' => 'హెల్త్ కనెక్ట్',
			'settings.sections.supportAndLegal' => 'మద్దతు & న్యాయ',
			'settings.sections.about' => 'గురించి',
			'settings.sections.dangerZone' => 'పోలిక మాండి',
			'settings.sections.developer' => 'డెవలపర్',
			'settings.editProfile.title' => 'ప్రొఫైల్ క్రింది',
			'settings.editProfile.subtitle' => 'మీ వ్యక్తిగత సమాచారాన్ని నవీకరించండి',
			'settings.language.title' => 'భాష',
			'settings.language.subtitle' => 'మీ ఇష్టమైన భాషను ఎంచుకోండి',
			'settings.language.searchHint' => 'భాషలను శోధించండి...',
			'settings.language.noResults' => 'ఫలితాలు లవు',
			'settings.heightUnit.title' => 'ఎత్తు యూనిట్',
			'settings.weightUnit.title' => 'బరువు యూనిట్',
			'settings.mealReminders.title' => 'భోజన మరుగుదలను',
			'settings.mealReminders.subtitle' => 'సమయానికి ముగింపు సందేశాలను తోడ్పించగలము',
			'settings.theme.title' => 'థీమ్',
			'settings.theme.light' => 'దివి',
			'settings.theme.dark' => 'ఇరుక',
			'settings.theme.system' => 'సిస్టమ్',
			'settings.sendFeedback.title' => 'ఫీడ్‌బ్యాక్ పంపండి',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel}ను మెరుగుపరచడం',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} యాప్ ఫీడ్‌బ్యాక్',
			'settings.sendFeedback.emailBodyPrefix' => 'దయచేసి మీ అభిప్రాయాన్ని ఇక్కడ నమోదు చేయండి:',
			'settings.sendFeedback.appVersion' => 'యాప్ వెర్షన్',
			'settings.sendFeedback.device' => 'పరికరం',
			'settings.sendFeedback.osVersion' => 'OS వెర్షన్',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'అన్ని డేటాను క్లియర్ చేయండి',
			'settings.clearAllData.subtitle' => 'మీ సమాచారం కార్యరహితంగా తొలగించండి',
			'settings.clearAllData.confirmationTitle' => 'అన్ని డేటాను క్లియర్ చేయాలనుకుంటున్నారు?',
			'settings.clearAllData.confirmationMessage' => 'ఈ చర్యను తిరిగి లేదు. మీరు నమోదు చేసిన అన్ని భోజనాలు, ప్రియమైనవి, మరియు ప్రొఫైల్ సెట్టింగులు శాశ్వతంగా తొలగించబడత్ర.',
			'settings.clearAllData.cancel' => 'రద్దు',
			'settings.clearAllData.clearEverything' => 'అన్నీ క్లియర్ చేయండి',
			'settings.debugOptions.title' => 'డిబగ్ ఆప్షన్స్',
			'settings.developerModeEnabled' => 'డెవలపర్ మోడ్ సాధనంలో ఉంది!',
			'settings.healthConnect.title' => 'హెల్త్ కనెక్ట్',
			'settings.healthConnect.subtitle' => 'అనుమతులను చూడండి మరియు నిర్వహించండి',
			'settings.healthConnect.unavailable.title' => 'హెల్త్ కనెక్ట్ అందుబాటులో లేదు',
			'settings.healthConnect.unavailable.description' => 'ఈ పరికరంపై హెల్త్ కనెక్ట్ అందుబాటులో లేదు. ఇది Android 14 లేదా నూతన సంస్కరణని అవసరం చేసింది.',
			'settings.healthConnect.permissions.title' => 'అనుమతులు',
			'settings.healthConnect.permissions.description' => 'హెల్త్ కనెక్ట్ సమ్మేళనాన్ని అందించేందుకు కోరిన అనుమతులు:',
			'settings.healthConnect.permissions.granted' => 'అనుమతించారు',
			'settings.healthConnect.permissions.notGranted' => 'అనుమతించుకోలేదు',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'మొత్తం కాలరీస్ బర్న్డ్ చదవండి',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'ఈ అనుమతి ఆరోగ్య అనుసంధానంలో నుండి మీ మొత్తం కాలరీలు బర్న్ చేయడం చదవడాన్ని అనుమతిస్తుంది.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'ఈ అనుమతి అప్లికేషన్ లో మీ రోజువారీ కాలరీ బర్న్ చూపించడానికి ఉపయోగిస్తారు, ఇది మీరు మీ రోజంతా మొత్తంగా మీ శక్తి వరకు అర్థం చేసుకోవడంలో సహాయపడుతుంది.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'పోషకాహార సమాచారం చదవండి',
			'settings.healthConnect.permissions.nutritionRead.description' => 'ఈ అనుమతి ఆరోగ్య అనుసంధానంలో నుండి పోషకాహార సమాచారాన్ని చదవడాన్ని అనుమతిస్తుంది.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'ఈ అనుమతి ఆరోగ్య అనుసంధానానికి అనుసంధానించిన ఇతర అప్లికేషన్ల ద్వారా లాగ్ చేయబడిన పోషక సమాచారం చదవడానికి అనుమతిస్తుంది, అది మీ పోషకాహారాన్ని సమగ్రంగా చూడడంలో సహాయపడుతుంది.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'పోషకాహార సమాచారం వ్రాయండి',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'ఈ అనుమతి ఆరోగ్య అనుసంధానానికి పోషకాహార సమాచారాన్ని వ్రాయడాన్ని అనుమతిస్తుంది.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'ఈ అనుమతి మీరు లాగ్ చేసిన భోజనం యొక్క సమాచారాన్ని ఆరోగ్య అనుసంధానానికి సమసమయం చేయడం అనుమతిస్తుంది, దీని ద్వారా మీరు ఉపయోగించే ఇతర ఆరోగ్య మరియు ఫిట్నెస్ అప్లికేషన్లకు మీ పోషకాహార సమాచారాన్ని అందుబాటులో ఉంచుతుంది.',
			'settings.healthConnect.managePermissions' => 'అనుమతులను నిర్వహించండి',
			'settings.healthConnect.openSettings' => 'ఆరోగ్య కనెక్ట్ సెట్టింగ్స్‌ను తెరువు',
			'settings.healthConnect.requestPermissions' => 'ఆమోదాల కోసం అభ్యర్థన చేయండి',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'అనుమతి అభ్యర్థన రద్దు చేయబడింది లేదా విఫలమైంది. దయచేసి మళ్ళీ ప్రయత్నించండి లేదా ఆరోగ్య కనెక్ట్ సెట్టింగ్స్‌లో యాధృచ్ఛిక అనుమతులు ఇవ్వండి.',
			'settings.healthConnect.permissionRequestFailed' => 'అనుమతుల కోసం అభ్యర్థన ఇవ్వడం విఫలమైంది. దయచేసి మళ్ళీ ప్రయత్నించండి లేదా ఆరోగ్య కనెక్ట్ సెట్టింగ్స్‌లో యాధృచ్ఛిక అనుమతులు ఇవ్వండి.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'గురించి',
			'settings.about.tagline' => 'త్వరిత, ఉచిత మరియు గోప్యతా ప్రాధాన్యత కల్గిన కేలరీ అవగాహన',
			'settings.about.ourStory.title' => 'మా గాథ',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} ఒక సాధారణ నిరాశ నుండి పుట్టింది: చాలా కేలరీ ట్రాకింగ్ యాప్స్ లేదా పూర్తిగా కష్టమైనవి, నిరంతర మానవ ఇన్‌పుట్‌ను కోరేవి, అధిక సభ్యత్వ ఫీజులను వసూలు చేసే విధంగా ఉంటాయి లేదా గోప్యతను తీవ్రంగా పరిగణించవు.\n\nఒక ఇండీ డెవలపర్ గా, నేను మరింత సులభమైన మరియు సమానమైన దాంట్లో నిర్మించాలనుకున్నాను - AIను ఉపయోగించి కృషిని తగ్గించేది, ఉపయోగించడానికి వేగంగా మరియు ఉచితంగా ఉండి, మీ ఆరోగ్య డేటా పెద్దగా గౌరవించాలి.\n\n${appLabel} నాకు ఉండాలనుకుంటున్న యాప్: ఎలాంటి ఖాతాలు లేదు, ఎవ్వరికీ అనుసరిస్తే లేదు, వ్యాప్తి లేదు - కేవలం స్పష్టమైన, ప్రాయోగిక అవగాహన మరియు మీ ఆరోగ్య లక్ష్యాలు.',
			'settings.about.privacy.title' => 'మీ గోప్యత ముఖ్యమైనది',
			'settings.about.privacy.description' => 'గోప్యత అనేది తీరులోకి తీసుకువచ్చే అంశం కాదు - ఇది ఒక డిజైన్ ప్రిన్సిపల్. ప్రాక్టీస్‌లో అర్థం ఏమిటో ఇక్కడ ఉంది:',
			'settings.about.privacy.noAccounts' => 'ఏ ఖాతాలు అవసరం లేదు\nయాప్‌ను వెంటనే ఉపయోగించండి. ఎలాంటి సైన్-అప్‌లు, ఎలాంటి ఐడెంటిటీలు లేవు.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'ఏ ప్రవర్తన అనుసరించడం లేదు\n${appLabel} మీ కార్యకలాపాలను మానిటర్ చేయదు, ఉపయోగం ప్రొఫైల్స్‌ను నిర్మించదు, లేదా మీను యాప్‌లు లేదా వెబ్‌సైట్లపై అనుసరించదు.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'డిజైన్ ప్రకారంగా ప్రకటనలు ఉండవు\n${appLabel} ప్రకటనలు లేదా డేటా ఆధారిత ఆదాయ మోడల్ లేకుండా పనిచేయడానికి నిర్మించబడింది.',
			'settings.about.privacy.noDataSelling' => 'డేటా అమ్మకం లేదు\nమీ ఆరోగ్య డేటా ఎప్పుడూ అమ్మబడదు లేదా మూడవ పక్షాలతో పంచుకోబడదు.',
			'settings.about.privacy.localStorage' => 'స్థానిక ప్రథమ నిల్వ\nమీ డేటా మీ పరికరంలోనే ఉంటుంది.',
			'settings.about.privacy.privacyPolicy' => 'గోప్యతా విధానం',
			'settings.about.developer.title' => 'ఒక ఇండీ డెవలపర్ చేత నిర్మించబడింది',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} నిశ్చితంగా, గోప్యతా గౌరవించే ఆరోగ్య సాఫ్ట్‌వేర్ సృష్టించడంపై దృష్టి పెట్టిన ఒక వ్యక్తిగత ఇండీ డెవలపర్ ద్వారా రూపొందించబడింది.\n\nచురుకైన అభిప్రాయాలను వ్యక్తిగతంగా చదువుతారు మరియు ఆ యాప్ యొక్క దిశను ఆకృతీకరించడంలో సహాయపడతాయి.',
			'settings.about.developer.website' => 'వెబ్‌సైట్',
			'settings.about.developer.email' => 'ఇమెయిల్',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel} మీకు నచ్చిందా?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'మీ అభిప్రాయాలు ${appLabel} ను అందరికీ మెరుగుపరిచేందుకు సహాయపడుతుంది.',
			'settings.about.feedback.rateApp' => 'ప్రత్యేక దుకాణంలో రేట్ చేయండి',
			'settings.about.feedback.sendFeedback' => 'అభిప్రాయం పంపండి',
			'reminders.title' => 'సమయానికి కప్పడం',
			'reminders.description' => 'మీ భోజనాలను లాగ్ చేయడానికి మరియు మీ పోషక లక్ష్యాలతో కర్రీగా ఉండాలి',
			'reminders.notificationsEnabled' => 'గమనికలు చేర్చబడ్డాయి',
			'reminders.notificationsDisabled' => 'గమనికలు ప్రాధమికం',
			'reminders.enabledSubtitle' => 'మీకు భోజనాన్ని గుర్తించారు',
			'reminders.disabledSubtitle' => 'భోజనాన్ని గుర్తించడానికి గమనికలకు అనుమతులు ఇవ్వండి',
			'reminders.mealReminders' => 'భోజన మరణాలు',
			'reminders.breakfast' => 'నాస్తా',
			'reminders.lunch' => 'మధ్యాహ్న భోజనం',
			'reminders.dinner' => 'రాత్రి భోజనం',
			'reminders.snack' => 'స్నాక్',
			'reminders.unknown' => 'తెలియని',
			'reminders.change' => 'మార్చు',
			'reminders.enableNotifications' => 'గమనికలను ఎంచుకోండి',
			'reminders.skipForNow' => 'ఇప్పుడు మానుకోండి',
			'reminders.saveChanges' => 'మార్గాలను సేవ్ చేయండి',
			'reminders.enabledSuccessfully' => 'గమనికలు విజయవంతంగా ప్రారంభించారు!',
			'reminders.permissionDenied' => 'గమనికల అనుమతి అంగీకరించబడలేదు',
			'reminders.errorEnabling' => ({required Object error}) => 'గమనికలు ప్రారంభించడంలో వైఫల్యం: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'శుభ్రమైన సెటప్ పొరపులు: ${error}',
			'notifications.breakfast.title' => 'నాస్తా సమయం! 🍳',
			'notifications.breakfast.body' => 'మీ నాస్తా నమోదు చేయడం మర్చిపోద్దు',
			'notifications.lunch.title' => 'మధ్యాహ్న భోజనం సమయం! 🥗',
			'notifications.lunch.body' => 'మీ మధ్యాహ్న భోజనాన్ని నమోదు చేయడానికి సమయం',
			'notifications.dinner.title' => 'రాత్రి భోజన సమయం! 🍽️',
			'notifications.dinner.body' => 'మీ రాత్రి భోజనాన్ని నమోదు చేయడం మర్చిపోద్దు',
			'notifications.snack.title' => 'స్నాక్ సమయం! 🍎',
			'notifications.snack.body' => 'ఆరోగ్యకరమైన స్నాక్ సాధించుటకు సమయం',
			'notifications.test.title' => 'పరీక్ష గమనిక',
			'login.title' => 'లాగిన్',
			'login.signInWithGoogle' => 'గూగుల్ తో లాగిన్ కావాలి',
			'login.signInFailed' => 'గూగుల్ సైన్-ఇన్ విఫలమైంది లేదా రద్దు చేయబడింది.',
			'disclaimer.pleaseNote' => 'దయచేసి గమనించండి',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} అంచనా పెట్టిన పోషిణ సమాచారం అందిస్తుంది. ఖచ్చితత్వం మీ సమాచారం & ఆహార రకాల ఆధారంగా ఉంటుంది. ఈ అది జ్ఞాన మార్గదర్శకంగా ఉపయోగించండి, ఖచ్చితమైన మూలాలుగా కాదు. వ్యక్తిగత పోషణ సలహాలో పరిశోధనా నవీనత ఫలితంగా నిపుణుడితో అభిప్రాయం ఇవ్వండి.',
			'disclaimer.snap.portionSize.title' => 'పోర్షన్ పరిమాణం',
			'disclaimer.snap.portionSize.description' => 'అంచనాల ఖచ్చితత్వం మీ సరైన అభ్యాసం ఆధారంగా ఉంటుంది.',
			'disclaimer.snap.preparationMethods.title' => 'సిద్ధీకరణ పద్ధతులు',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'క్షా మోతాదులో కీలకంగా ఉంటుంది. ${appLabel} రన్ను అంచనాల పరిష్కారాలు ఈ మార్పులు ఎప్పుడూ పరిశీలిస్తాయి.',
			'disclaimer.snap.ingredients.title' => 'కూరగాయలు',
			'disclaimer.snap.ingredients.description' => 'వివిధ రకాల లోపులను కలిగి ఉండే సంక్లిష్ట వంటకాలు కొంత అంచన్లను ఉన్నత అసమర్ధతం లభిస్తుంది.',
			'disclaimer.snap.databaseLimitations.title' => 'డాటాబేస్ పరిమితులు',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} యొక్క ఆహారం డేటాబేస్ విస్తృతం కానవడంతో కానీ అన్ని ఆహార చిహ్నాలతో ఉండకపోవచ్చు.',
			'disclaimer.weightEstimate.title' => 'బరువు అంచనా గురించి',
			'disclaimer.weightEstimate.description' => 'అంచనా ప్రాతిపదికలో కేలొరీ-లోపు బరువు మార్పులు అంచనా పెంచడం కోసం మాత్రమే ఉద్దేశించబడ్డాయి, మీ నిజమైన బరువును కనిపెట్టడానికి కాదు.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'కేలొరీ ఖచ్చితత్వం',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'ఈ అంచనా మీ ట్రాక్ కేలొరీ అందించిన ఖచ్చితంగా మంచిని మాత్రమే అవుతుంది. ఖచ్చితమైన లాగర్లు ఖచ్చితమైన అంచనాలను ఇవ్వడం.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'జీవశాస్త్ర కారకాలు',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'నిర్వహణ, హార్మోన్లు, నిద్ర, ఒత్తిడి, నీటి సరఫరా మరియు ${appLabel} కొలిచే ఇతర వ్యక్తిగత పరిస్థితులు వంటి అవిధేయాలను ప్రభావితం చేస్తుంది.',
			'disclaimer.weightEstimate.waterWeight.title' => 'నీటి బరువు & మార్పులు',
			'disclaimer.weightEstimate.waterWeight.description' => 'ప్రతి రోజున బరువు ఎక్కువగా ఉపచ్చులు మరియు వేగం వల్ల వ్యత్యాసాలు మరియు నీటి తట్టువులెవరూ ఉన్నాయి. అంచనా ఈ రోజువారీ మార్పులను జోడించాలి లేదు.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'పోతు ప్రాజ్ఞానం',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'ఈ అంచనాను వైద్య నిర్ణయాల కోసం ఉపయోగించకండి. ఎప్పుడూ వ్యక్తిగత బరువు నిర్వహణ సమాచారానికి ఒక ఆరోగ్య నిపుణుడిని సంప్రదించండి.',
			'disclaimer.healthMetrics.description' => 'ఈ మృతులు మీ శరీరం యొక్క శక్తి అవసరాలను తెలుసుకోవడంలో మరియు మీ పోషణ లక్ష్యాలను మార్గనిర్ధేశం చేయడంలో సహాయపడతాయి.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'అధిక పునరుత్పత్తి రేటు (BMR) అంటే మీ శరీరం విశ్రాంతిలో ఉన్నప్పుడు శ్వాస మరియు చరిత్ర వంటి మౌలిక కార్యకలాపాలను నిర్వహించడానికి ఎంత ఉక్కు కరిగిస్తుందో. BMR మీ వయసు, లింగం, ఎత్తు మరియు బరువుపైన ఆధారపడి ఉంటుంది. అధిక BMR అంటే మీ శరీరం విశ్రాంతిలోనే ఎక్కువ కేలరీలను కరిగించేది, సాధారణంగా ఎక్కువ కండర మాస్, యువ వయస్సు లేదా పురుషత్వం కారణంగా. తక్కువ BMR సాధారణంగా తక్కువ కండర మాస్, వృద్ధ వయస్సు లేదా మహిళా లైంగికతను సూచిస్తుంది.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'మొత్తం రోజు శక్తి ఖర్చు (TDEE) అంటే మీరు ప్రతి రోజూ కరిగించే మొత్తం కేలరీలు, అందులో మీ BMR మరియు శారీరక కార్యకలాపాల నుండి కేలరీస్ కలవు. TDEE మీ BMR మరియు కార్యకలాప స్థాయి పై ఆధారపడి ఉంటుంది. అధిక TDEE అంటే మీరు మొత్తం కేలરીలను ఎక్కువగా కరిగిస్తారు, సాధారణంగా ఎక్కువ కార్యకలాపం చేయడం లేదా అధిక BMR వల్ల. తక్కువ TDEE అంటే తక్కువ రోజు కార్యకలాపం లేదా తక్కువ BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'రోజు లక్ష్యం',
			'disclaimer.healthMetrics.dailyGoal.description' => 'రోజు లక్ష్యం అంటే మీ TDEE మరియు బరువు లక్ష్యం ఆధారంగా మీకు సిఫారసు చేసిన ప్రతిరోజు కేలరీ తీసుకొనే పరిమాణం. బరువు తగ్గేందుకు, మీరు మీ TDEE కన్నా తక్కువ కేలరీలను తీసుకుంటారు. బరువు నిర్వహణకు, మీరు మీ TDEE సరిపోల్చుతారు. బరువు పెరగడం కోసం, మీరు మీ TDEE కన్నా ఎక్కువ కేలరీలు తీసుకుంటారు. ఇది మీ ఆశించిన బరువు మార్పును ఆరోగ్యకరమైన రీతిలో సాధించడంలో సహాయ పడుతుంది.',
			'common.close' => 'క్లోజ్',
			'common.kContinue' => 'కొనసాగించండి',
			'errors.loadingProfileData' => 'ప్రొఫైల్ డేటా లోడింగ్ లోపం',
			'errors.somethingWentWrong' => 'ఏదో తప్పు జరిగింది.',
			'debug.title' => 'డిబగ్ ఆప్షన్స్',
			'debug.sections.notifications' => 'గమనికలు',
			'debug.sections.healthConnect' => 'హెల్త్ కనెక్ట్',
			'debug.sections.appInfo' => 'యాప్ సమాచారం',
			'debug.showActiveNotifications' => 'సకాలంలో గమనికలను చూపు',
			'debug.scheduleTestNotification' => 'పరీక్ష గమనికను షెడ్యూల్ చేయండి (10సె)',
			'debug.triggerBreakfastNotification' => 'అనాంర్త్న ఫలిపట్టు భోజనం గమనిక',
			'debug.cancelAllNotifications' => 'అన్నీ గమనికలను రద్దు చేయండి',
			'debug.activeNotifications' => 'సక్రమ గమనికలు',
			'debug.noTitle' => 'శీర్షిక లేదు',
			'debug.noBody' => 'శరీర లేదు',
			'debug.fetchTodaysSteps' => 'ఈ రోజు యొక్క దారులు పొందండి',
			'debug.fetchTodaysCalories' => 'ఈ రోజు యొక్క కేలొరీలు పొందండి',
			'debug.fetchLatestWeight' => 'తాజా బరువు పొందండి',
			'debug.fetchLatestHeight' => 'తాజా ఎత్తు పొందండి',
			'debug.writeTestWeight' => 'టెస్ట్ బరువును రాయండి (70కేజీ)',
			'debug.writeTestHeight' => 'టెస్ట్ ఎత్తును రాయండి (175సెం)',
			'debug.syncLast7Days' => 'మునుపటి 7 రోజుల సమాచారానికి సింక్',
			'debug.sync7DaysTitle' => '7-రోజుల సింక్',
			'debug.checkCurrentLocale' => 'ప్రస్తుత స్థానాన్ని తనిఖీ చేయండి',
			'debug.currentLocale' => 'ప్రస్తుత స్థానిక సంస్థాన',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'భాష: ${languageCode}\nచిత్రం: ${countryCode}\nయూనిట్ వ్యవస్థ: ${unitSystem}',
			'debug.latestWeight' => 'తాజా బరువు',
			'debug.latestHeight' => 'తాజా ఎత్తు',
			'debug.todaysCalories' => 'ఈరోజు యొక్క కేలొరీలు',
			'debug.totalCaloriesBurned' => ({required Object calories}) => '${calories} మొత్తం కేలొరీలు వెలికితీయబడ్డాయి.',
			'debug.syncSuccess' => ({required Object count}) => 'గత 7 రోజులకు ${count} డేటా పాయింట్లను విజయవంతంగా పొందించారు.',
			'debug.noWeightData' => 'గత 30 రోజులలో ఎక్క పట్టిన బరువు లభించలేదు.',
			'debug.noHeightData' => 'గత 1 సంవత్సరంలో ఎక్క పట్టిన ఎత్తు లభించలేదు.',
			'debug.noCalorieData' => 'ఈ రోజు కేలొరీని పొందలేకపోయింది.',
			'debug.weightWritten' => '70కేజీ లో బరువును విజయవంతంగా రాశారు.',
			'debug.weightWriteFailed' => 'బరువును రాయడంలో విఫలమైంది.',
			'debug.heightWritten' => '175సెం ఎత్తును విజయవంతంగా రాశారు.',
			'debug.heightWriteFailed' => 'ఎత్తును రాయడంలో విఫలమైంది.',
			'debug.noNotifications' => 'సక్రమ గమనికలు లేవు.',
			'debug.testNotificationScheduled' => '10 సెకన్లలో పరీక్ష గమనిక షెడ్యూల్ చేయబడింది.',
			'debug.testNotificationBody' => 'ఇది 10 సెకన్లలో షెడ్యూల్ చేయబడిన పరీక్ష గమనిక.',
			'debug.breakfastNotificationTriggered' => 'నాస్తా ద్వారా గమనిక చూపింది.',
			'debug.allNotificationsCancelled' => 'అన్ని గమనికలు రద్దు చేయబడ్డాయి.',
			'debug.fetchingData' => 'గత 7 రోజుల సమాచారం పొందడం...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'health.syncFailed' => 'హెల్త్ కనెక్ట్ కు సింక్ చేయడంలో విఫలమైంది',
			'health.mealSynced' => 'భోజనం హెల్త్ కనెక్ట్ తో సింక్ చేయబడింది',
			_ => null,
		};
	}
}
