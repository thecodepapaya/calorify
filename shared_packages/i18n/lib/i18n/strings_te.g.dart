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
class TranslationsTe extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.te,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <te>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

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
	@override late final _TranslationsLocalNutritionPhase4Te localNutritionPhase4 = _TranslationsLocalNutritionPhase4Te._(_root);
	@override late final _TranslationsCommonTe common = _TranslationsCommonTe._(_root);
	@override late final _TranslationsFeedbackRatingTe feedbackRating = _TranslationsFeedbackRatingTe._(_root);
	@override late final _TranslationsHealthTe health = _TranslationsHealthTe._(_root);
}

// Path: errors
class _TranslationsErrorsTe extends TranslationsErrorsEn {
	_TranslationsErrorsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'మీరు చాలా అభ్యర్థనలు చేశారు. దయచేసి మళ్ళీ ప్రయత్నించే ముందు కాసేపు వేచి ఉండండి.';
	@override String get networkError => 'నెట్‌వర్క్ లోపం. దయచేసి మీ ఇంటర్నెట్ కనెక్షన్‌ని తనిఖీ చేయండి.';
	@override String get unknownError => 'ఏదో తప్పు జరిగింది. దయచేసి తర్వాత మళ్ళీ ప్రయత్నించండి.';
	@override String get loadingProfileData => 'ప్రొఫైల్ డేటాను లోడ్ చేయడంలో లోపం';
	@override String get somethingWentWrong => 'ఏదో తప్పు జరిగింది.';
	@override String get retry => 'మళ్ళీ ప్రయత్నించండి';
}

// Path: onboarding
class _TranslationsOnboardingTe extends TranslationsOnboardingEn {
	_TranslationsOnboardingTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel}కి స్వాగతం';
	@override String get subtitle => 'AI ద్వారా ఆధారితమైన మీ వ్యక్తిగత పోషకాహార సహచరుడు';
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
class _TranslationsTabsTe extends TranslationsTabsEn {
	_TranslationsTabsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'డాష్‌బోర్డ్';
	@override String get history => 'చరిత్ర';
}

// Path: home
class _TranslationsHomeTe extends TranslationsHomeEn {
	_TranslationsHomeTe._(TranslationsTe root) : this._root = root, super.internal(root);

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
class _TranslationsHistoryTe extends TranslationsHistoryEn {
	_TranslationsHistoryTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'భోజనాలు నమోదు చేయబడలేదు';
	@override String get emptyMessage => 'ఇక్కడ లాగ్ చేయడానికి మీ చివరి భోజనం చిత్రాన్ని తీయండి.';
	@override String get today => 'ఈ రోజు';
	@override String get yesterday => 'నిన్న';
}

// Path: meal
class _TranslationsMealTe extends TranslationsMealEn {
	_TranslationsMealTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'అయ్యో!';
	@override String get delete => 'తొలగించు';
	@override String get editMeal => 'భోజనాన్ని సవరించండి';
	@override String get addMeal => 'భోజనాన్ని జోడించండి';
	@override String get saveMeal => 'భోజనాన్ని సేవ్ చేయండి';
	@override String get save => 'సేవ్ చేయండి';
	@override String get mealName => 'భోజనం పేరు';
	@override String get mealNameHint => 'ఉదా., టోస్ట్‌తో స్క్రాంబుల్డ్ ఎగ్స్';
	@override String get nameRequired => 'సేవ్ చేసే ముందు భోజనం పేరును నమోదు చేయండి.';
	@override String get mealQuantity => 'భోజనం పరిమాణం';
	@override String get mealQuantityHint => 'ఉదా., 1 గిన్నె, 2 ముక్కలు';
	@override String get timeOfMeal => 'భోజనం సమయం';
	@override String get timeOfMealHint => 'మీరు భోజనం చేసిన సమయాన్ని ఎంచుకోండి';
	@override String get mealType => 'భోజనం రకం';
	@override late final _TranslationsMealNutritionTe nutrition = _TranslationsMealNutritionTe._(_root);
	@override late final _TranslationsMealDeleteConfirmationTe deleteConfirmation = _TranslationsMealDeleteConfirmationTe._(_root);
	@override String get addedToLog => 'భోజనం మీ లాగ్‌కు జోడించబడింది!';
	@override String couldNotAdd({required Object error}) => 'భోజనాన్ని జోడించలేకపోయింది: ${error}';
	@override String get savedSuccessfully => 'భోజనం విజయవంతంగా జోడించబడింది!';
	@override String get updatedSuccessfully => 'భోజనం విజయవంతంగా నవీకరించబడింది!';
	@override String errorSaving({required Object error}) => 'భోజనాన్ని సేవ్ చేయడంలో లోపం: ${error}';
	@override String get removedFromFavorites => 'ఇష్టమైన వాటి నుండి తీసివేయబడింది!';
	@override String get savedAsFavorite => 'భోజనం ఇష్టమైనదిగా సేవ్ చేయబడింది!';
	@override String get unfavorite => 'ఇష్టమైనది కాదని గుర్తించండి';
	@override String couldNotUpdateFavorite({required Object error}) => 'ఇష్టమైనది నవీకరించలేకపోయింది: ${error}';
	@override String get feedbackThanks => 'అభిప్రాయానికి ధన్యవాదాలు!';
	@override String get reanalysisUpdated => 'మీ అభిప్రాయం ఆధారంగా భోజన విశ్లేషణ నవీకరించబడింది.';
	@override String failedToProcess({required Object error}) => 'ప్రాసెస్ చేయడంలో విఫలమైంది: ${error}';
	@override String failedToProcessImage({required Object error}) => 'చిత్రాన్ని ప్రాసెస్ చేయడంలో విఫలమైంది: ${error}';
	@override String errorCompressingImage({required Object error}) => 'చిత్రాన్ని కుదించడంలో లోపం: ${error}';
	@override String get failedToSave => 'డేటాను సేవ్ చేయడంలో విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి.';
	@override String get skip => 'దాటవేయి';
	@override late final _TranslationsMealQuestionFlowTe questionFlow = _TranslationsMealQuestionFlowTe._(_root);
	@override late final _TranslationsMealAnalysisTe analysis = _TranslationsMealAnalysisTe._(_root);
	@override late final _TranslationsMealLocalInferenceTe localInference = _TranslationsMealLocalInferenceTe._(_root);
	@override late final _TranslationsMealFeedbackTe feedback = _TranslationsMealFeedbackTe._(_root);
}

// Path: favorites
class _TranslationsFavoritesTe extends TranslationsFavoritesEn {
	_TranslationsFavoritesTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఇష్టమైనవి';
	@override String get empty => 'ఇంకా ఇష్టమైన భోజనాలు లేవు.';
	@override String get searchPlaceholder => 'ఇష్టమైన భోజనాలను శోధించండి';
	@override String get searchEmptyTitle => 'మీ శోధనకు సరిపోయే ఇష్టమైనవి లేవు';
	@override String get searchEmptySubtitle => 'వేరే భోజనం పేరు, పరిమాణం లేదా భోజనం రకాన్ని ప్రయత్నించండి.';
	@override String get sortLabel => 'ఇష్టమైన వాటిని క్రమబద్ధీకరించండి';
	@override String get undo => 'రద్దు చేయి';
	@override String removed({required Object name}) => 'ఇష్టమైన వాటి నుండి ${name} తీసివేయబడింది';
	@override late final _TranslationsFavoritesSortOptionsTe sortOptions = _TranslationsFavoritesSortOptionsTe._(_root);
}

// Path: profile
class _TranslationsProfileTe extends TranslationsProfileEn {
	_TranslationsProfileTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ప్రొఫైల్';
	@override String get noProfileData => 'ప్రొఫైల్ డేటా కనుగొనబడలేదు';
	@override String get yourProfile => 'మీ ప్రొఫైల్';
	@override String get viewAndManage => 'మీ ఆరోగ్య సమాచారాన్ని వీక్షించండి మరియు నిర్వహించండి';
	@override late final _TranslationsProfileSectionsTe sections = _TranslationsProfileSectionsTe._(_root);
	@override String get gender => 'లింగం';
	@override String get height => 'ఎత్తు';
	@override String get weight => 'బరువు';
	@override String get age => 'వయస్సు';
	@override String get weightGoal => 'బరువు లక్ష్యం';
	@override String get targetWeight => 'లక్ష్య బరువు';
	@override String get activityLevel => 'కార్యాచరణ స్థాయి';
	@override String get healthMetrics => 'ఆరోగ్య కొలమానాలు';
	@override String get notSet => 'సెట్ చేయబడలేదు';
	@override String get years => 'సంవత్సరాలు';
	@override String get updatedSuccessfully => 'ప్రొఫైల్ విజయవంతంగా నవీకరించబడింది!';
	@override late final _TranslationsProfileCalculatedValuesTe calculatedValues = _TranslationsProfileCalculatedValuesTe._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreTe extends TranslationsHealthScoreEn {
	_TranslationsHealthScoreTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఆరోగ్య స్కోర్';
	@override String get whyThisScore => 'ఈ స్కోర్ ఎందుకు?';
	@override String get note => 'ఈ స్కోర్ గుర్తించిన పదార్థాలు మరియు పోషక సాంద్రత ఆధారంగా AI అంచనా. ఆహార సలహా కోసం ఎల్లప్పుడూ నిపుణుడిని సంప్రదించండి.';
	@override String get unhealthy => 'ఆరోగ్యకరం కాదు';
	@override String get healthy => 'ఆరోగ్యకరమైనది';
	@override String get neutral => 'తటస్థ';
}

// Path: editProfile
class _TranslationsEditProfileTe extends TranslationsEditProfileEn {
	_TranslationsEditProfileTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ప్రొఫైల్‌ను సవరించండి';
	@override late final _TranslationsEditProfileSectionsTe sections = _TranslationsEditProfileSectionsTe._(_root);
	@override String get gender => 'లింగం';
	@override String get dateOfBirth => 'పుట్టిన తేదీ';
	@override String get height => 'ఎత్తు';
	@override String get weight => 'బరువు';
	@override String get weightGoal => 'బరువు లక్ష్యం';
	@override String get activityLevel => 'కార్యాచరణ స్థాయి';
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
class _TranslationsSettingsTe extends TranslationsSettingsEn {
	_TranslationsSettingsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'సెట్టింగ్‌లు';
	@override late final _TranslationsSettingsSectionsTe sections = _TranslationsSettingsSectionsTe._(_root);
	@override late final _TranslationsSettingsEditProfileTe editProfile = _TranslationsSettingsEditProfileTe._(_root);
	@override late final _TranslationsSettingsLanguageTe language = _TranslationsSettingsLanguageTe._(_root);
	@override late final _TranslationsSettingsHeightUnitTe heightUnit = _TranslationsSettingsHeightUnitTe._(_root);
	@override late final _TranslationsSettingsWeightUnitTe weightUnit = _TranslationsSettingsWeightUnitTe._(_root);
	@override late final _TranslationsSettingsMealRemindersTe mealReminders = _TranslationsSettingsMealRemindersTe._(_root);
	@override late final _TranslationsSettingsLocalInferenceTe localInference = _TranslationsSettingsLocalInferenceTe._(_root);
	@override late final _TranslationsSettingsThemeTe theme = _TranslationsSettingsThemeTe._(_root);
	@override late final _TranslationsSettingsSendFeedbackTe sendFeedback = _TranslationsSettingsSendFeedbackTe._(_root);
	@override late final _TranslationsSettingsExportMealHistoryTe exportMealHistory = _TranslationsSettingsExportMealHistoryTe._(_root);
	@override late final _TranslationsSettingsClearAllDataTe clearAllData = _TranslationsSettingsClearAllDataTe._(_root);
	@override late final _TranslationsSettingsDebugOptionsTe debugOptions = _TranslationsSettingsDebugOptionsTe._(_root);
	@override String get developerModeEnabled => 'డెవలపర్ మోడ్ ప్రారంభించబడింది!';
	@override late final _TranslationsSettingsHealthConnectTe healthConnect = _TranslationsSettingsHealthConnectTe._(_root);
	@override late final _TranslationsSettingsAboutTe about = _TranslationsSettingsAboutTe._(_root);
	@override late final _TranslationsSettingsAppInfoTe appInfo = _TranslationsSettingsAppInfoTe._(_root);
}

// Path: reminders
class _TranslationsRemindersTe extends TranslationsRemindersEn {
	_TranslationsRemindersTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'రిమైండర్‌లతో ట్రాక్‌లో ఉండండి';
	@override String get description => 'మీ భోజనాన్ని లాగ్ చేయడానికి మరియు మీ పోషకాహార లక్ష్యాలతో స్థిరంగా ఉండటానికి సున్నితమైన రిమైండర్‌లను పొందండి';
	@override String get notificationsEnabled => 'నోటిఫికేషన్‌లు ప్రారంభించబడ్డాయి';
	@override String get notificationsDisabled => 'నోటిఫికేషన్‌లు నిలిపివేయబడ్డాయి';
	@override String get enabledSubtitle => 'మీరు భోజన రిమైండర్‌లను అందుకుంటారు';
	@override String get disabledSubtitle => 'భోజన రిమైండర్‌లను పొందడానికి నోటిఫికేషన్‌లను ప్రారంభించండి';
	@override String get mealReminders => 'భోజన రిమైండర్‌లు';
	@override String get breakfast => 'అల్పాహారం';
	@override String get lunch => 'మధ్యాహ్న భోజనం';
	@override String get dinner => 'రాత్రి భోజనం';
	@override String get snack => 'చిరుతిండి';
	@override String get unknown => 'తెలియదు';
	@override String get change => 'మార్చండి';
	@override String get enableNotifications => 'నోటిఫికేషన్‌లను ప్రారంభించండి';
	@override String get skipForNow => 'ఇప్పుడిప్పుడే దాటవేయండి';
	@override String get saveChanges => 'మార్పులను సేవ్ చేయండి';
	@override String get enabledSuccessfully => 'నోటిఫికేషన్‌లు విజయవంతంగా ప్రారంభించబడ్డాయి!';
	@override String get permissionDenied => 'నోటిఫికేషన్ అనుమతి నిరాకరించబడింది';
	@override String errorEnabling({required Object error}) => 'నోటిఫికేషన్‌లను ప్రారంభించడంలో లోపం: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'సెటప్‌ను పూర్తి చేయడంలో లోపం: ${error}';
}

// Path: notifications
class _TranslationsNotificationsTe extends TranslationsNotificationsEn {
	_TranslationsNotificationsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastTe breakfast = _TranslationsNotificationsBreakfastTe._(_root);
	@override late final _TranslationsNotificationsLunchTe lunch = _TranslationsNotificationsLunchTe._(_root);
	@override late final _TranslationsNotificationsDinnerTe dinner = _TranslationsNotificationsDinnerTe._(_root);
	@override late final _TranslationsNotificationsSnackTe snack = _TranslationsNotificationsSnackTe._(_root);
	@override late final _TranslationsNotificationsTestTe test = _TranslationsNotificationsTestTe._(_root);
}

// Path: login
class _TranslationsLoginTe extends TranslationsLoginEn {
	_TranslationsLoginTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'లాగిన్';
	@override String get signInWithGoogle => 'Googleతో సైన్ ఇన్ చేయండి';
	@override String get signInFailed => 'Google సైన్-ఇన్ విఫలమైంది లేదా రద్దు చేయబడింది.';
}

// Path: disclaimer
class _TranslationsDisclaimerTe extends TranslationsDisclaimerEn {
	_TranslationsDisclaimerTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'దయచేసి గమనించండి';
	@override late final _TranslationsDisclaimerSnapTe snap = _TranslationsDisclaimerSnapTe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateTe weightEstimate = _TranslationsDisclaimerWeightEstimateTe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTe healthMetrics = _TranslationsDisclaimerHealthMetricsTe._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureTe calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureTe._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4Te extends TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4Te._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'డౌన్‌లోడ్ చేసిన USDA ప్యాక్ నుంచి పోషక విలువలు సరిపోల్చబడ్డాయి';
	@override String get nutritionCached => 'పరికరంలోని USDA క్యాష్ నుంచి పోషక విలువలు సరిపోల్చబడ్డాయి';
	@override String get nutritionMixed => 'డౌన్‌లోడ్ చేసిన, క్యాష్ చేసిన మరియు రిమోట్ USDA వరుసల నుంచి పోషక విలువలు కలపబడ్డాయి';
	@override String get calculationLocal => 'ఈ పరికరంలో కేలరీలు మరియు మాక్రోలు లెక్కించబడ్డాయి';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: డౌన్‌లోడ్ చేసిన USDA ప్యాక్';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: పరికరంలోని USDA క్యాష్';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: Calorify ద్వారా పొందిన USDA వరుస';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: నిర్ధారిత పోషక స్థిరాంకం';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · డేటాసెట్ ${datasetVersion}';
	@override String get portionSmaller => 'చిన్నది';
	@override String get portionEstimated => 'అంచనా';
	@override String get portionLarger => 'పెద్దది';
	@override String portionQuestion({required Object ingredient}) => '${ingredient}కు ఏ పరిమాణం అత్యంత దగ్గరగా ఉంది?';
	@override String get mealTypeQuestion => 'ఇది ఏ భోజనం?';
	@override String get localNutritionTip => 'ధృవీకరించిన స్థానిక పోషక డేటా నుంచి లెక్కించబడింది.';
	@override String get offlineNutritionTitle => 'పోషక డేటాను డౌన్‌లోడ్ చేయండి';
	@override String get offlineNutritionSubtitle => 'ప్రతి పదార్థం అందుబాటులో ఉన్నప్పుడు ఈ పరికరంలో ధృవీకరించిన USDA వరుసలు మరియు నిర్ధారిత లెక్కింపును ఉపయోగించండి.';
	@override String get offlineNutritionUnavailable => 'ఈ యాప్ విడుదలకు స్థానిక పోషక డేటా అందుబాటులో లేదు.';
	@override String get offlineNutritionNotDownloaded => 'ధృవీకరించిన పోషక ప్యాక్ ఏదీ డౌన్‌లోడ్ కాలేదు.';
	@override String get offlineNutritionInstalling => 'పోషక డేటాను డౌన్‌లోడ్ చేసి ధృవీకరిస్తోంది…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'ప్యాక్ ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} క్యాష్ చేసిన USDA వరుసలు · ${size}';
	@override String get offlineNutritionUpdate => 'అప్‌డేట్ కోసం తనిఖీ చేయండి';
	@override String get offlineNutritionClear => 'స్థానిక పోషక డేటాను తొలగించండి';
	@override String get offlineNutritionClearTitle => 'స్థానిక పోషక డేటాను తొలగించాలా?';
	@override String get offlineNutritionClearBody => 'ఇది డౌన్‌లోడ్ చేసిన USDA ప్యాక్ మరియు శోధన క్యాష్‌ను తొలగిస్తుంది. నమోదు చేసిన భోజనాలు సేవ్ చేసినప్పుడు ఉపయోగించిన ఖచ్చితమైన పోషక స్నాప్‌షాట్‌ను ఉంచుకుంటాయి.';
	@override String get offlineNutritionClearConfirm => 'డేటాను తొలగించండి';
	@override String offlineNutritionInstallFailed({required Object error}) => 'స్థానిక పోషక డేటాను డౌన్‌లోడ్ చేసి ధృవీకరించలేకపోయింది: ${error}';
	@override String get offlineNutritionCleared => 'స్థానిక పోషక డేటా తొలగించబడింది';
}

// Path: common
class _TranslationsCommonTe extends TranslationsCommonEn {
	_TranslationsCommonTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get close => 'మూసివేయి';
	@override String get kContinue => 'కొనసాగించు';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingTe extends TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel} ఆనందిస్తున్నారా?';
	@override String get yes => 'అవును, నేను ఆనందిస్తున్నాను';
	@override String get no => 'నిజంగా లేదు';
	@override String get rateStepHeading => 'ప్లే స్టోర్‌లో రేట్ చేయండి';
	@override String get emailStepHeading => 'ఇమెయిల్ ద్వారా అభిప్రాయాన్ని పంపండి';
	@override String soloDevMessage({required Object appLabel}) => 'త్వరిత రేటింగ్ ఇతరులకు ${appLabel} కనుగొనడంలో సహాయపడుతుంది మరియు అభివృద్ధిని కొనసాగిస్తుంది. మీరు ఒక క్షణం రేటింగ్ ఇవ్వగలరా?';
	@override String get shareFeedbackViaEmail => 'మీ అభిప్రాయం తదుపరి ఏమి వస్తుందో రూపొందిస్తుంది — మేము ప్రతి సందేశాన్ని చదువుతాము. మీరు ఇమెయిల్ ద్వారా మీ ఆలోచనలను పంచుకోవాలనుకుంటున్నారా?';
	@override String get rateCta => 'ప్లే స్టోర్‌లో రేట్ చేయండి';
	@override String get maybeLater => 'బహుశా తర్వాత';
	@override String get sendFeedback => 'అభిప్రాయాన్ని పంపండి';
	@override String get noThanks => 'వద్దు, ధన్యవాదాలు';
	@override String get aboutUsDescription => 'ఒక చిన్న బృందం ద్వారా శ్రద్ధగా తయారు చేయబడింది. మేము గోప్యత, సరళత మరియు మెరుగైన ఆహారపు అలవాట్లను నిర్మించడంలో మీకు సహాయపడటంపై దృష్టి సారించాము.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '${appLabel} వెనుక ఎవరున్నారో తెలుసుకోవాలనుకుంటున్నారా? చూడండి ';
	@override String get aboutUsLinkLabel => 'మా గురించి';
	@override String get thankYouMessage => 'ధన్యవాదాలు! మేము మరోసారి అడుగుతాము.';
}

// Path: health
class _TranslationsHealthTe extends TranslationsHealthEn {
	_TranslationsHealthTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connectకి సమకాలీకరించలేకపోయింది';
	@override String get mealSynced => 'భోజనం Health Connectతో సమకాలీకరించబడింది';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesTe extends TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionTe foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionTe._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisTe aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisTe._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationTe healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationTe._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderTe extends TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ లింగం ఏమిటి?';
	@override String get description => 'మీ బేసల్ మెటబాలిక్ రేటు (BMR)ని ఖచ్చితంగా లెక్కించడానికి లింగం మాకు సహాయపడుతుంది.';
	@override String get next => 'తదుపరి';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightTe extends TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీరు ఎంత పొడవు ఉన్నారు?';
	@override String get description => 'మీ BMI మరియు శక్తి అవసరాలను ఖచ్చితంగా లెక్కించడానికి మీ ఎత్తు మాకు సహాయపడుతుంది.';
	@override String get metric => 'మెట్రిక్';
	@override String get imperial => 'ఇంపీరియల్';
	@override String get next => 'తదుపరి';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightTe extends TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'మీ ప్రస్తుత బరువు ఎంత?';
	@override String get currentDescription => 'మీ రోజువారీ లక్ష్యాలను వ్యక్తిగతీకరించడానికి మీ ప్రస్తుత బరువు చాలా అవసరం.';
	@override String get targetTitle => 'మీ లక్ష్య బరువు ఎంత?';
	@override String get targetDescription => 'లక్ష్య బరువును సెట్ చేయడం మీ దీర్ఘకాలిక ప్రణాళికను నిర్ణయించడంలో మాకు సహాయపడుతుంది.';
	@override String get metric => 'మెట్రిక్';
	@override String get imperial => 'ఇంపీరియల్';
	@override String get next => 'తదుపరి';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeTe extends TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ పుట్టినరోజు ఎప్పుడు?';
	@override String get description => 'మీ కేలరీల అవసరాలను ఖచ్చితంగా లెక్కించడానికి మీ వయస్సు మాకు సహాయపడుతుంది.';
	@override String get next => 'తదుపరి';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleTe extends TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'తక్కువ';
	@override String get healthy => 'ఆరోగ్యకరమైన';
	@override String get overweight => 'ఎక్కువ';
	@override String get obese => 'స్థూలకాయం';
	@override late final _TranslationsOnboardingBmiScaleCategoriesTe categories = _TranslationsOnboardingBmiScaleCategoriesTe._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesTe messages = _TranslationsOnboardingBmiScaleMessagesTe._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalTe extends TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ లక్ష్యం ఏమిటి?';
	@override String get description => 'మీరు సాధించాలనుకుంటున్న దానిని ఉత్తమంగా వివరించే లక్ష్యాన్ని ఎంచుకోండి';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelTe extends TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీరు ఎంత చురుకుగా ఉంటారు?';
	@override String get description => 'ఇది మీ రోజువారీ కేలరీల అవసరాలను మరింత ఖచ్చితంగా లెక్కించడానికి మాకు సహాయపడుతుంది';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectTe extends TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connectతో కనెక్ట్ అవ్వండి';
	@override String get description => 'మీ రోజువారీ లక్ష్యంలో బర్న్ అయిన కేలరీలను ఉపయోగించండి మరియు కావాలనుకుంటే లాగ్ చేసిన భోజనాలను Health Connectతో పంచుకోండి.';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingTe automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingTe._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsTe progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsTe._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationTe seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationTe._(_root);
	@override String get connected => 'Health Connect కనెక్ట్ చేయబడింది';
	@override String get notConnected => 'Health Connect కనెక్ట్ చేయబడలేదు';
	@override String get setup => 'Health Connectను సెటప్ చేయండి';
	@override String get skipForNow => 'ఇప్పుడప్పుడే వద్దు';
	@override String get statusConnected => 'Health Connect కనెక్ట్ చేయబడింది.';
	@override String get statusSuccess => 'Health Connect విజయవంతంగా కనెక్ట్ చేయబడింది!';
	@override String get statusNotConnected => 'మీరు ప్రారంభించాలనుకునే Health Connect ఫీచర్‌లను ఎంచుకోండి.';
	@override String get statusPartial => 'Health Connect పాక్షికంగా కనెక్ట్ చేయబడింది. రెండు ఫీచర్‌లను ఉపయోగించడానికి మిగిలిన అనుమతిని ప్రారంభించండి.';
	@override String get statusProviderUpdateRequired => 'కొనసాగించడానికి Health Connectను ఇన్‌స్టాల్ చేయండి లేదా అప్‌డేట్ చేయండి.';
	@override String get statusUnavailable => 'ఈ పరికరంలో Health Connectకు మద్దతు లేదు.';
	@override String get installOrUpdate => 'ఇన్‌స్టాల్ చేయండి లేదా అప్‌డేట్ చేయండి';
	@override String get manageAccess => 'యాక్సెస్‌ను నిర్వహించండి';
	@override String statusPermissionDenied({required Object appLabel}) => 'అనుమతి నిరాకరించబడింది. దయచేసి ${appLabel} కోసం మీ ఫోన్ సెట్టింగ్‌ల నుండి Health Connect అనుమతులను ప్రారంభించండి.';
	@override String statusError({required Object error}) => 'Health Connectను సెటప్ చేయడంలో లోపం: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementTe extends TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessTe trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessTe._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileTe healthProfile = _TranslationsOnboardingReinforcementHealthProfileTe._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleTe goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleTe._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryTe extends TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ AI సారాంశం';
	@override String get logMore => 'మీ వ్యక్తిగతీకరించిన AI అంతర్దృష్టులను పొందడానికి రాబోయే కొన్ని రోజులలో మరిన్ని భోజనాలను లాగ్ చేయండి.';
	@override String get loading => 'మీ సారాంశాన్ని లోడ్ చేస్తోంది...';
	@override String mealCount({required Object count}) => '${count} భోజనాలు లాగ్ చేయబడ్డాయి';
	@override String macroBalanceScore({required Object score}) => 'బ్యాలెన్స్ స్కోర్ ${score}';
	@override String get topFoods => 'అగ్ర ఆహారాలు';
	@override String get trendUp => 'కేలరీలు పెరుగుతున్నాయి';
	@override String get trendDown => 'కేలరీలు తగ్గుతున్నాయి';
	@override String get trendSteady => 'కేలరీలు స్థిరంగా ఉన్నాయి';
	@override String generatedAt({required Object time}) => '${time} నవీకరించబడింది';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalTe extends TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ రోజువారీ లక్ష్యాన్ని సెట్ చేయండి';
	@override String get titleSet => 'మీ రోజువారీ లక్ష్యం';
	@override String get description => 'మీ ఆరోగ్య ప్రయాణాన్ని ప్రారంభించడానికి సిద్ధంగా ఉన్నారా? మీ పురోగతిని ప్రారంభించడానికి మీ రోజువారీ కేలరీల లక్ష్యాన్ని క్రింద సెట్ చేయండి.';
	@override String get descriptionSet => 'మీ దిక్సూచి సెట్ చేయబడింది! ఇది మీకు మార్గనిర్దేశం చేయడానికి మీ రోజువారీ కేలరీల లక్ష్యం.';
	@override String get yourGoal => 'మీ లక్ష్యం';
	@override String get goal => 'లక్ష్యం';
	@override String get dailyCalories => 'రోజువారీ కేలరీలు (kcal)';
	@override String get setGoal => 'లక్ష్యాన్ని సెట్ చేయండి';
	@override String get intake => 'సేవనం';
	@override String get burned => 'ఖర్చయినవి';
	@override String get weightImpact => 'బరువు ప్రభావం';
	@override String get estLoss => 'అంచనా నష్టం';
	@override String get estGain => 'అంచనా లాభం';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryTe extends TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'రోజువారీ సారాంశం';
	@override String get calories => 'కేలరీలు';
	@override String get carbs => 'కార్బోహైడ్రేట్లు';
	@override String get protein => 'ప్రోటీన్';
	@override String get fat => 'కొవ్వు';
	@override String get fiber => 'ఫైబర్';
	@override String get grams => 'గ్రాములు';
	@override String get chartAccessibilityLabel => 'మాక్రోస్ చార్ట్';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressTe extends TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'నేటి మాక్రో స్ప్లిట్';
	@override String get target => 'లక్ష్యం';
	@override String get current => 'ప్రస్తుతం';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryTe extends TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => '7-రోజుల మాక్రో చరిత్ర';
	@override String get trendTitle => 'నేటి ట్రెండ్';
	@override String peakHour({required Object hour}) => 'గరిష్ట సమయం: ${hour}:00';
	@override String get noHistoryYet => 'ఇంకా చరిత్ర లేదు';
	@override String get startLogging => 'మీ 7-రోజుల మాక్రో ట్రెండ్‌లను ఇక్కడ చూడటానికి\nభోజనాలను లాగింగ్ చేయడం ప్రారంభించండి';
}

// Path: home.mealLog
class _TranslationsHomeMealLogTe extends TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'లాగ్ చేయబడిన భోజనాలు';
	@override String get emptyMessage => 'ఇక్కడ లాగ్ చేయడానికి మీ చివరి భోజనం చిత్రాన్ని తీయండి.';
	@override String get noMealsToday => 'ఈ రోజుకు భోజనాలు నమోదు చేయబడలేదు';
	@override String get seeAllMeals => 'అన్ని భోజనాలను చూడండి';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionTe extends TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI తో త్వరగా జోడించండి';
	@override String get description => 'మీ భోజనాన్ని వివరించండి మరియు AI వివరాలను నిర్వహించనివ్వండి.';
	@override String get hint => 'ఉదా. అల్పాహారం కోసం నేను ఒక పెద్ద గిన్నె ఓట్‌మీల్, ఒక అరటిపండు ముక్కలు మరియు ఒక స్కూప్ వే ...';
	@override String get analyzeMeal => 'భోజనాన్ని విశ్లేషించండి';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsTe extends TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఇష్టమైన భోజనాలు';
	@override String get description => 'మీ ఇష్టమైన భోజనాలలో ఒకదాన్ని త్వరగా జోడించండి.';
	@override String get noFavorites => 'ఇంకా ఇష్టమైన భోజనాలు లేవు.';
	@override String get addFavoriteHint => 'భోజనంపై నక్షత్రాన్ని క్లిక్ చేసి దాన్ని ఇష్టమైనదిగా గుర్తించండి.';
	@override String get seeAll => 'అన్నీ చూడండి';
	@override String get add => 'జోడించు';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapTe extends TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ భోజనాన్ని స్నాప్ చేయండి & ట్రాక్ చేయండి';
	@override String get description => 'AI విశ్లేషణ కోసం మీ ఆహారం చిత్రాన్ని తీయడానికి మీ కెమెరాను ఉపయోగించండి.';
	@override String get openCamera => 'కెమెరాను తెరవండి';
	@override String get gallery => 'గ్యాలరీ';
	@override String get compressingPhoto => 'ఫోటోను ఆప్టిమైజ్ చేస్తోంది…';
	@override String get uploadingPhoto => 'ఫోటోను అప్‌లోడ్ చేస్తోంది…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthTe extends TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect తో సమకాలీకరించండి';
	@override String get description => 'మీ లక్ష్యంలో బర్న్ అయిన కేలరీలను ఉపయోగించండి మరియు లాగ్ చేసిన భోజనాలను పంచుకోండి';
	@override String get install => 'ఇన్‌స్టాల్ చేయండి లేదా అప్‌డేట్ చేయండి';
	@override String get connect => 'కనెక్ట్ చేయండి';
}

// Path: meal.nutrition
class _TranslationsMealNutritionTe extends TranslationsMealNutritionEn {
	_TranslationsMealNutritionTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get calories => 'కేలరీలు';
	@override String get carbs => 'కార్బోహైడ్రేట్లు (g)';
	@override String get protein => 'ప్రోటీన్ (g)';
	@override String get fat => 'కొవ్వు (g)';
	@override String get fiber => 'ఫైబర్ (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationTe extends TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'భోజనాన్ని తొలగించండి';
	@override String get message => 'మీరు ఈ భోజన ఎంట్రీని తొలగించాలనుకుంటున్నారా?';
	@override String get cancel => 'రద్దు చేయండి';
	@override String get delete => 'తొలగించు';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowTe extends TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String progress({required Object total, required Object current}) => '${total}లో ప్రశ్న ${current}';
	@override String get noQuestionsAvailable => 'ప్రశ్నలు అందుబాటులో లేవు';
	@override String get next => 'తరువాత';
	@override String get continueLabel => 'కొనసాగించు';
}

// Path: meal.analysis
class _TranslationsMealAnalysisTe extends TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ భోజనాన్ని విశ్లేషిస్తోంది';
	@override String get stepStarted => 'ప్రారంభిస్తోంది…';
	@override String get stepDecomposition => 'మీ భోజనాన్ని అర్థం చేసుకుంటోంది…';
	@override String get stepIngredients => 'పోషకాహార డేటాతో పదార్థాలను సరిపోల్చుతోంది…';
	@override String get stepUncertainty => 'విశ్వాసాన్ని తనిఖీ చేస్తోంది…';
	@override String get stepMealTypeQuestion => 'దాదాపు పూర్తయింది…';
	@override String get stepResult => 'మీ ఫలితాన్ని ఖరారు చేస్తోంది…';
	@override String get stepError => 'ఏదో తప్పు జరిగింది';
	@override String get stepDefault => 'మీ భోజనాన్ని విశ్లేషిస్తోంది…';
	@override String get progressUnderstand => 'మీ భోజనాన్ని అర్థం చేసుకుంటోంది';
	@override String get progressMatch => 'పదార్థాల పోషకాహారాన్ని వెతుకుతోంది';
	@override String get progressCheck => 'భాగాలు మరియు విశ్వాసాన్ని తనిఖీ చేస్తోంది';
	@override String get progressMealType => 'భోజన రకాన్ని ఎంచుకుంటోంది';
	@override String get progressFinish => 'కేలరీలు మరియు మాక్రోలను లెక్కిస్తోంది';
	@override String get detectedIngredientHeading => 'మేము గుర్తించిన పదార్థాలు';
	@override String ingredientsOverflow({required Object count}) => 'మరిన్ని ${count}';
	@override String ingredientsLine({required Object count}) => '${count} పదార్థాలు గుర్తించబడ్డాయి';
	@override String get ingredientsPending => 'పదార్థాలను స్కాన్ చేస్తోంది…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'చిట్కా: స్థిరత్వం పరిపూర్ణతను అధిగమిస్తుంది—సాధారణ లాగ్‌లు ముఖ్యమైన నమూనాలను వెల్లడిస్తాయి.';
	@override String get offlineTip1 => 'చిట్కా: ఫోటోల కోసం, సహజ కాంతి మరియు పై నుండి వీక్షణ భాగం ఖచ్చితత్వానికి సహాయపడతాయి.';
	@override String get offlineTip2 => 'చిట్కా: పానీయాలు, సాస్‌లు మరియు వంట నూనెను పేర్కొనండి—అవి ప్రజలు తరచుగా మరచిపోయే కేలరీలను జోడిస్తాయి.';
	@override String get offlineTip3 => 'చిట్కా: త్వరిత భాగం గమనిక (1 గిన్నె, పెద్ద కాఫీ) అంచనాలను చాలా పదునుగా చేస్తుంది.';
	@override String get offlineTip4 => 'చిట్కా: భోజనం తర్వాత లాగింగ్ చేయడం అలవాటును ఇంకా పెంచుతుంది; పరిపూర్ణత ఐచ్ఛికం.';
	@override String get offlineTip5 => 'చిట్కా: కేలరీలు చాలా మారినప్పుడు (వేయించినవి vs కాల్చినవి) ఆహారాన్ని ఎలా వండారో చెప్పండి.';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceTe extends TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'గుర్తించిన పదార్థాలను సమీక్షించండి';
	@override String get reviewSubtitle => 'ఇది మీ పరికరంలో విశ్లేషించబడింది. పోషక విలువలు లెక్కించే ముందు పేర్లను లేదా పరిమాణాలను సరిచేసుకోండి.';
	@override String get mealName => 'భోజనం పేరు';
	@override String get ingredient => 'పదార్థం';
	@override String get grams => 'అంచనా వేసిన గ్రాములు';
	@override String get removeIngredient => 'పదార్థాన్ని తొలగించు';
	@override String get continueLabel => 'కొనసాగించు';
	@override String get invalidProposal => 'కనీసం ఒక పదార్థాన్ని జోడించండి మరియు సరైన గ్రాముల పరిమాణాన్ని ఉపయోగించండి.';
	@override String get localUnavailable => 'ఆన్-డివైస్ విశ్లేషణ ప్రస్తుతం అందుబాటులో లేదు.';
	@override String get calculationDetails => 'ఇది ఎలా లెక్కించబడింది';
	@override String get interpretationLocal => 'ఈ పరికరంలో విశ్లేషించబడిన పదార్థాలు';
	@override String get interpretationCloud => 'క్లౌడ్‌లో విశ్లేషించబడిన పదార్థాలు';
	@override String get interpretationManual => 'మీరు సమీక్షించిన లేదా సవరించిన పదార్థాలు';
	@override String get nutritionRemote => 'Calorify ద్వారా USDA నుండి సేకరించిన పోషక విలువలు';
	@override String get nutritionFallback => 'కొన్ని పోషక విలువలు రిమోట్‌గా అంచనా వేయబడ్డాయి';
	@override String get calculationServer => 'క్యాలరీలు మరియు మాక్రోలు Calorify ద్వారా లెక్కించబడ్డాయి';
	@override String get fallbackUsed => 'స్థానిక విశ్లేషణ విఫలమై క్లౌడ్ ప్రాసెసింగ్‌కు మారింది';
	@override String get noRawContent => 'డయాగ్నోస్టిక్ రసీదులలో మీ భోజనం టెక్స్ట్ లేదా ఫోటో ఉండవు.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackTe extends TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఏమి తప్పుగా కనిపిస్తుంది?';
	@override String get subtitle => 'ఒకటి లేదా అంతకంటే ఎక్కువ సమస్యలను ఎంచుకోవడం ద్వారా విశ్లేషణను మెరుగుపరచడంలో మాకు సహాయపడండి.';
	@override String get tellUsMore => 'మరింత చెప్పండి';
	@override String get describeIncorrect => 'ఏమి తప్పుగా ఉందో వివరించండి';
	@override String get submit => 'సమర్పించు';
	@override String get issueFoodIdentification => 'ఆహార గుర్తింపు';
	@override String get issuePortionSize => 'భాగం పరిమాణం';
	@override String get issueCalorieDistribution => 'కేలరీల పంపిణీ';
	@override String get issueMacrosWrong => 'మాక్రోలు తప్పుగా ఉన్నాయి';
	@override String get issueMissingItems => 'తప్పిపోయిన అంశాలు';
	@override String get issueExtraItems => 'అదనపు అంశాలు';
	@override String get issueOther => 'ఇతర';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsTe extends TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get recent => 'ఇటీవలి';
	@override String get calories => 'కేలరీలు';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsTe extends TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ప్రొఫైల్';
	@override String get basicInformation => 'ప్రాథమిక సమాచారం';
	@override String get goalsAndActivity => 'లక్ష్యాలు & కార్యాచరణ';
	@override String get calculatedValues => 'లెక్కించిన విలువలు';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesTe extends TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'రోజువారీ లక్ష్యం';
	@override String get calPerDay => 'cal/రోజు';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsTe extends TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'వ్యక్తిగత సమాచారం';
	@override String get physicalMeasurements => 'శారీరక కొలతలు';
	@override String get goalsAndActivity => 'లక్ష్యాలు & కార్యాచరణ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersTe extends TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get male => 'పురుషుడు';
	@override String get female => 'స్త్రీ';
	@override String get other => 'ఇతర';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsTe extends TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightTe loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightTe._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightTe maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightTe._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightTe gainWeight = _TranslationsEditProfileWeightGoalsGainWeightTe._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsTe extends TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryTe sedentary = _TranslationsEditProfileActivityLevelsSedentaryTe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveTe lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveTe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveTe moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveTe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveTe veryActive = _TranslationsEditProfileActivityLevelsVeryActiveTe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveTe extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveTe._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsTe extends TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'ప్రొఫైల్';
	@override String get localization => 'స్థానికీకరణ';
	@override String get notifications => 'నోటిఫికేషన్‌లు';
	@override String get healthConnect => 'హెల్త్ కనెక్ట్';
	@override String get localInference => 'ఆన్-డివైస్ విశ్లేషణ';
	@override String get supportAndLegal => 'మద్దతు & చట్టపరమైన';
	@override String get about => 'గురించి';
	@override String get dangerZone => 'డేంజర్ జోన్';
	@override String get developer => 'డెవలపర్';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileTe extends TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ప్రొఫైల్‌ను సవరించండి';
	@override String get subtitle => 'మీ వ్యక్తిగత సమాచారాన్ని నవీకరించండి';
}

// Path: settings.language
class _TranslationsSettingsLanguageTe extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'భాష';
	@override String get subtitle => 'మీకు నచ్చిన భాషను ఎంచుకోండి';
	@override String get searchHint => 'భాషలను శోధించండి...';
	@override String get noResults => 'ఫలితాలు కనుగొనబడలేదు';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitTe extends TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఎత్తు యూనిట్';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitTe extends TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'బరువు యూనిట్';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersTe extends TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'భోజన రిమైండర్‌లు';
	@override String get subtitle => 'సమయానుకూల హెచ్చరికలతో ట్రాక్‌లో ఉండండి';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceTe extends TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఆన్-డివైస్ భోజన విశ్లేషణ';
	@override String get subtitle => 'పోషక విలువలు లెక్కించే ముందు Gemini Nano తో మద్దతు ఉన్న భోజనాలను విశ్లేషించండి';
	@override String get unavailable => 'ఈ పరికరంలో అందుబాటులో లేదు';
	@override String get rolloutUnavailable => 'మద్దతు ఉన్న హార్డ్‌వేర్ ఉంది, కానీ ఈ యాప్ వెర్షన్‌లో ఈ ఫీచర్ ఎనేబుల్ చేయబడలేదు';
	@override String get modelSetup => 'దీనిని ఎనేబుల్ చేయడానికి ముందు Gemini Nano డౌన్‌లోడ్ పూర్తి కావాలి';
	@override String get useLocalTitle => 'ఆన్-డివైస్ విశ్లేషణను ఉపయోగించు';
	@override String get useLocalSubtitle => 'ఇది ఐచ్ఛికం మరియు డిఫాల్ట్‌గా ఆఫ్ చేయబడి ఉంటుంది. సంక్లిష్టమైన భోజనాలకు ఫలితాలు తక్కువ ఖచ్చితత్వంతో ఉండవచ్చు.';
	@override String get disclosureTitle => 'ఆన్-డివైస్ విశ్లేషణను ఎనేబుల్ చేసే ముందు';
	@override String get disclosureBody => 'మద్దతు ఉన్న Android పరికరాలలో Gemini Nano పదార్థాలను గుర్తించగలదు మరియు పరిమాణాలను అంచనా వేయగలదు. మీరు సమీక్షించిన పదార్థాల ప్రతిపాదన USDA పోషక విశ్లేషణ మరియు గణన కోసం Calorifyకి పంపబడుతుంది.';
	@override String get disclosureLimit1 => 'సంక్లిష్టమైన వంటకాలు, దాగి ఉన్న పదార్థాలు మరియు పరిమాణాలు తప్పుగా గుర్తించబడవచ్చు.';
	@override String get disclosureLimit2 => 'డౌన్‌లోడ్ అవుతున్నప్పుడు, బిజీగా ఉన్నప్పుడు, బ్యాక్‌గ్రౌండ్‌లో ఉన్నప్పుడు లేదా పరికర పరిమితుల వల్ల మోడల్ అందుబాటులో ఉండకపోవచ్చు.';
	@override String get disclosureLimit3 => 'స్థానిక విశ్లేషణ పూర్తి కాకపోతే, ఈ బీటా వెర్షన్ మీ అసలు భోజన వివరణను క్లౌడ్ విశ్లేషణ కోసం స్వయంచాలకంగా Calorifyకి పంపుతుంది.';
	@override String get acknowledgement => 'గుర్తించిన పదార్థాలను మరియు పరిమాణాలను నేను సమీక్షించాలో నాకు అర్థమైంది.';
	@override String get enable => 'అంగీకరించి ఎనేబుల్ చేయి';
	@override String get cancel => 'రద్దు చేయి';
}

// Path: settings.theme
class _TranslationsSettingsThemeTe extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'థీమ్';
	@override String get light => 'లేత';
	@override String get dark => 'ముదురు';
	@override String get system => 'సిస్టమ్';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackTe extends TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'అభిప్రాయాన్ని పంపండి';
	@override String subtitle({required Object appLabel}) => '${appLabel}ను మెరుగుపరచడంలో మాకు సహాయపడండి';
	@override String emailSubject({required Object appLabel}) => '${appLabel} యాప్ అభిప్రాయం';
	@override String get emailBodyPrefix => 'దయచేసి మీ అభిప్రాయాన్ని క్రింద అందించండి:';
	@override String get appVersion => 'యాప్ వెర్షన్';
	@override String get device => 'పరికరము';
	@override String get osVersion => 'OS వెర్షన్';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryTe extends TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'భోజన చరిత్రను ఎగుమతి చేయండి';
	@override String get subtitle => 'మీ లాగ్ చేయబడిన భోజనాల CSVని షేర్ చేయండి';
	@override String get shareText => 'మీ Calorify భోజన చరిత్ర ఎగుమతి';
	@override String failed({required Object error}) => 'భోజన చరిత్రను ఎగుమతి చేయలేకపోయింది: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataTe extends TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'అన్ని డేటాను క్లియర్ చేయండి';
	@override String get subtitle => 'ఈ పరికరంలో నిల్వ చేసిన Calorify డేటాను తొలగించండి';
	@override String get confirmationTitle => 'అన్ని డేటాను క్లియర్ చేయాలా?';
	@override String get confirmationMessage => 'ఇది ఈ పరికరం నుండి లాగ్ చేసిన భోజనాలు, ఇష్టమైనవి మరియు ప్రొఫైల్ సెట్టింగ్‌లను శాశ్వతంగా తొలగిస్తుంది. Health Connectకు ఇప్పటికే పంచుకున్న భోజనాలు మరియు Health Connect యాక్సెస్‌ను సెట్టింగ్‌లు > Health Connectలో విడిగా నిర్వహించాలి.';
	@override String get cancel => 'రద్దు చేయండి';
	@override String get clearEverything => 'అన్నీ క్లియర్ చేయండి';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsTe extends TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'డీబగ్ ఎంపికలు';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectTe extends TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'హెల్త్ కనెక్ట్';
	@override String get subtitle => 'అనుమతులను వీక్షించండి మరియు నిర్వహించండి';
	@override late final _TranslationsSettingsHealthConnectUnavailableTe unavailable = _TranslationsSettingsHealthConnectUnavailableTe._(_root);
	@override late final _TranslationsSettingsHealthConnectUpdateRequiredTe updateRequired = _TranslationsSettingsHealthConnectUpdateRequiredTe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsTe permissions = _TranslationsSettingsHealthConnectPermissionsTe._(_root);
	@override String get managePermissions => 'అనుమతులను నిర్వహించండి';
	@override String get openSettings => 'హెల్త్ కనెక్ట్ సెట్టింగ్‌లను తెరవండి';
	@override String get disconnect => 'Health Connectను డిస్‌కనెక్ట్ చేయండి';
	@override String get disconnectConfirmationTitle => 'Health Connectను డిస్‌కనెక్ట్ చేయాలా?';
	@override String get disconnectConfirmationMessage => 'Calorifyకి Health Connect యాక్సెస్ పోతుంది. ఇప్పటికే అక్కడ రాసిన డేటా తొలగించబడదు.';
	@override String get disconnectConfirmationAction => 'డిస్‌కనెక్ట్ చేయండి';
	@override String get deleteSyncedMeals => 'Health Connect నుండి Calorify భోజనాలను తొలగించండి';
	@override String get deleteSyncedMealsConfirmationTitle => 'సమకాలీకరించిన భోజనాలను తొలగించాలా?';
	@override String get deleteSyncedMealsConfirmationMessage => 'ఈ Calorify వెర్షన్ సమకాలీకరించిన భోజనాలను Health Connect నుండి తొలగించాలా? మీ స్థానిక భోజన లాగ్ మారదు. పాత Calorify ఎంట్రీలను Health Connectలో డేటాను నిర్వహించండి ద్వారా ఇంకా తొలగించాల్సి రావచ్చు.';
	@override String get deleteSyncedMealsConfirmationAction => 'సమకాలీకరించిన భోజనాలను తొలగించండి';
	@override String get deleteSyncedMealsSuccess => 'Calorify భోజనాలు Health Connect నుండి తొలగించబడ్డాయి.';
	@override String get deleteSyncedMealsFailed => 'సమకాలీకరించిన భోజనాలను తొలగించలేకపోయాం. దయచేసి మళ్లీ ప్రయత్నించండి.';
	@override String get connectionPartial => 'కొన్ని Health Connect ఫీచర్‌లు ప్రారంభించబడ్డాయి.';
	@override String get connectionComplete => 'రెండు Health Connect ఫీచర్‌లు ప్రారంభించబడ్డాయి.';
	@override String get actionFailed => 'Health Connectను తెరవలేకపోయాం. దయచేసి మళ్లీ ప్రయత్నించండి.';
	@override String get requestPermissions => 'అనుమతులను అభ్యర్థించండి';
	@override String get permissionRequestCancelledOrFailed => 'అనుమతి అభ్యర్థన రద్దు చేయబడింది లేదా విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి లేదా హెల్త్ కనెక్ట్ సెట్టింగ్‌లలో అనుమతులను మాన్యువల్‌గా మంజూరు చేయండి.';
	@override String get permissionRequestFailed => 'అనుమతులను అభ్యర్థించలేకపోయింది. దయచేసి మళ్లీ ప్రయత్నించండి లేదా హెల్త్ కనెక్ట్ సెట్టింగ్‌లలో అనుమతులను మాన్యువల్‌గా మంజూరు చేయండి.';
	@override String get requestingPermissions => 'అభ్యర్థిస్తోంది...';
}

// Path: settings.about
class _TranslationsSettingsAboutTe extends TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'గురించి';
	@override String get tagline => 'వేగవంతమైన, ఉచిత మరియు గోప్యత-మొదటి కేలరీల అవగాహన';
	@override late final _TranslationsSettingsAboutOurStoryTe ourStory = _TranslationsSettingsAboutOurStoryTe._(_root);
	@override late final _TranslationsSettingsAboutPrivacyTe privacy = _TranslationsSettingsAboutPrivacyTe._(_root);
	@override late final _TranslationsSettingsAboutDeveloperTe developer = _TranslationsSettingsAboutDeveloperTe._(_root);
	@override late final _TranslationsSettingsAboutFeedbackTe feedback = _TranslationsSettingsAboutFeedbackTe._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoTe extends TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'బిల్డ్ ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastTe extends TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'అల్పాహారం సమయం! 🍳';
	@override String get body => 'మీ అల్పాహారాన్ని లాగ్ చేయడం మర్చిపోవద్దు';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchTe extends TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మధ్యాహ్న భోజనం సమయం! 🥗';
	@override String get body => 'మీ మధ్యాహ్న భోజనాన్ని లాగ్ చేయడానికి సమయం';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerTe extends TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'రాత్రి భోజనం సమయం! 🍽️';
	@override String get body => 'మీ రాత్రి భోజనాన్ని లాగ్ చేయడం మర్చిపోవద్దు';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackTe extends TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'చిరుతిండి సమయం! 🍎';
	@override String get body => 'ఆరోగ్యకరమైన చిరుతిండికి సమయం';
}

// Path: notifications.test
class _TranslationsNotificationsTestTe extends TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'పరీక్ష నోటిఫికేషన్';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapTe extends TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} అంచనా వేసిన పోషకాహార సమాచారాన్ని అందిస్తుంది. ఖచ్చితత్వం మీ ఇన్‌పుట్ & ఆహార వైవిధ్యాలపై ఆధారపడి ఉంటుంది. దీన్ని ఒక మార్గదర్శకంగా ఉపయోగించండి, ఖచ్చితమైన మూలంగా కాదు. వ్యక్తిగతీకరించిన ఆహార సలహా కోసం ఒక నిపుణుడిని సంప్రదించండి.';
	@override late final _TranslationsDisclaimerSnapPortionSizeTe portionSize = _TranslationsDisclaimerSnapPortionSizeTe._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsTe preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsTe._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsTe ingredients = _TranslationsDisclaimerSnapIngredientsTe._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsTe databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsTe._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateTe extends TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'బరువు అంచనా గురించి';
	@override String get description => 'అంచనా వేసిన బరువు మార్పు అనేది సాధారణ క్యాలరీ-ఇన్ వర్సెస్ క్యాలరీ-అవుట్ మోడల్ ఆధారంగా ఒక సైద్ధాంతిక అంచనా. ఇది ప్రేరణాత్మక మార్గదర్శకత్వం కోసం మాత్రమే ఉద్దేశించబడింది, మీ వాస్తవ బరువు యొక్క అంచనాగా కాదు.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyTe calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyTe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsTe biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsTe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightTe waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightTe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTe professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTe._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsTe extends TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get description => 'ఈ కొలమానాలు మీ శరీరం యొక్క శక్తి అవసరాలను అర్థం చేసుకోవడానికి మరియు మీ పోషకాహార లక్ష్యాలకు మార్గనిర్దేశం చేయడానికి మీకు సహాయపడతాయి.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrTe bmr = _TranslationsDisclaimerHealthMetricsBmrTe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeTe tdee = _TranslationsDisclaimerHealthMetricsTdeeTe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalTe dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalTe._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureTe extends TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'క్యాలరీ వ్యయం అంచనా';
	@override String get description => 'Health Connect డేటా అందుబాటులో లేనప్పుడు, మీ బేసల్ మెటబాలిక్ రేట్ (BMR) మరియు కార్యాచరణ స్థాయి (TDEE) ఉపయోగించి ఈ రోజు బర్న్ చేసిన కేలరీలను మేము అంచనా వేస్తాము, రోజులో గడిచిన భాగానికి స్కేల్ చేయబడింది.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedTe howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedTe._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTe professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTe._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionTe extends TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'స్మార్ట్ ఫుడ్ రికగ్నిషన్';
	@override String get description => 'ఫోటో తీయండి మరియు AI మీ భోజనాన్ని గుర్తించనివ్వండి';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisTe extends TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI విశ్లేషణ';
	@override String get description => 'మీ వివరణల నుండి తక్షణ పోషకాహార వాస్తవాలను పొందండి';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationTe extends TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఆరోగ్య అనుసంధానం';
	@override String get description => 'మెరుగైన అంతర్దృష్టుల కోసం Health Connectతో కనెక్ట్ అవ్వండి';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesTe extends TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'తక్కువ బరువు';
	@override String get healthyWeight => 'ఆరోగ్యకరమైన బరువు';
	@override String get overweight => 'ఎక్కువ బరువు';
	@override String get obese => 'స్థూలకాయం';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesTe extends TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'పోషకాలు అధికంగా ఉండే భోజనంతో సమతుల్య బరువును చేరుకోవడానికి ఆరోగ్యకరమైన ప్రణాళికను రూపొందించడంలో మేము మీకు సహాయపడతాము.';
	@override String get healthy => 'గొప్ప పని! మీరు ఆరోగ్యకరమైన పరిధిలో ఉన్నారు. మీ జీవశక్తిని మరియు శక్తి స్థాయిలను నిర్వహించడానికి మేము మీకు సహాయపడతాము.';
	@override String overweight({required Object appLabel}) => '${appLabel} మీ లక్ష్యాన్ని సులభంగా చేరుకోవడానికి AI-ఆధారిత ట్రాకింగ్‌తో మీ ప్రయాణాన్ని సులభతరం చేస్తుంది.';
	@override String get obese => 'మీ ఆరోగ్య లక్ష్యాల కోసం వ్యక్తిగతీకరించిన మార్గదర్శకత్వం మరియు స్థిరమైన వ్యూహాలతో మీకు మద్దతు ఇవ్వడానికి మేము ఇక్కడ ఉన్నాము.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingTe extends TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'బర్న్ అయిన కేలరీలు';
	@override String get description => 'Health Connect నుండి ఈ రోజు బర్న్ అయిన మొత్తం కేలరీలను చదవండి';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsTe extends TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'లాగ్ చేసిన భోజనాలను పంచుకోండి';
	@override String get description => 'Calorifyలో మీరు లాగ్ చేసిన భోజనాలను Health Connectకు రాయండి';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationTe extends TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'నియంత్రణ మీ చేతుల్లోనే';
	@override String get description => 'రెండు అనుమతుల్లో మీకు కావలసినదాన్ని ఎంచుకుని, ఎప్పుడైనా యాక్సెస్‌ను మార్చండి';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessTe extends TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీరు ఒంటరిగా లేరు';
	@override String get genericMessage => 'స్థిరమైన ట్రాకింగ్ దీర్ఘకాలిక విజయాన్ని అంచనా వేసే #1 అంశం అని పరిశోధనలు చెబుతున్నాయి.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age} సంవత్సరాల ${gender} ${goal} చేయాలనుకునే వారికి, స్థిరమైన ట్రాకింగ్ విజయాన్ని అంచనా వేసే #1 అంశం.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} మాన్యువల్‌గా చేయడం కంటే 10 రెట్లు సులభతరం చేస్తుంది.';
	@override String get getStartedTitle => 'ప్రారంభించడానికి సిద్ధంగా ఉన్నారా?';
	@override String get tipPhoto => 'తక్షణ విశ్లేషణ కోసం మీ భోజనం ఫోటో తీయండి';
	@override String get tipConsistency => 'అర్ధవంతమైన పురోగతిని చూడటానికి స్థిరంగా లాగ్ చేయండి';
	@override String get tipProgress => 'ప్రేరణతో ఉండటానికి మీ పురోగతిని రోజువారీ ట్రాక్ చేయండి';
	@override String get button => 'వెళ్దాం';
	@override String get defaultGender => 'వ్యక్తి';
	@override String get defaultGoal => 'ఆరోగ్యకరమైన మీరు';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileTe extends TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ ఆరోగ్య ప్రొఫైల్';
	@override String bmiDescription({required Object bmi}) => 'మీ కొలమానాల ఆధారంగా, మీ BMI ${bmi}.';
	@override String get finalizeDescription => 'మీ అనుభవాన్ని అనుకూలీకరించడానికి మీ ప్రొఫైల్‌ను ఖరారు చేద్దాం.';
	@override String get goalGain => 'పెంచుకోండి';
	@override String get goalLose => 'తగ్గించుకోండి';
	@override String goalReach({required Object diff, required Object unit, required Object direction}) => 'మీ లక్ష్యాన్ని చేరుకోవడానికి, మీరు ${diff} ${unit} ${direction} చేయాలి.';
	@override String get goalReached => 'మీరు మీ లక్ష్య బరువు వద్ద ఉన్నారు! దానిని నిర్వహించడానికి మేము మీకు సహాయపడతాము.';
	@override String get button => 'వెళ్దాం';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleTe extends TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'అద్భుతమైన ప్రారంభం!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'మీరు ${goalText} వైపు మొదటి అడుగు వేశారు. మీరు ${activityText} కాబట్టి, ${appLabel} మీ జీవనశైలికి సరిపోయేలా మీ లక్ష్యాలను సర్దుబాటు చేస్తుంది.';
	@override String get personalizedTargets => 'వ్యక్తిగతీకరించిన కేలరీల లక్ష్యాలు';
	@override String get aiMealDetection => 'AI-ఆధారిత భోజన గుర్తింపు';
	@override String get macroBreakdowns => 'వివరణాత్మక స్థూల-పోషక విచ్ఛిన్నాలు';
	@override String get button => 'వెళ్దాం';
	@override String get defaultGoal => 'మీ లక్ష్యాలు';
	@override String get defaultActivity => 'చురుకుగా';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightTe extends TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'బరువు తగ్గడం';
	@override String get description => 'బరువు తగ్గడానికి కేలరీల లోటును సృష్టించండి';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightTe extends TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'బరువును నిర్వహించడం';
	@override String get description => 'మీ ప్రస్తుత బరువును నిర్వహించండి';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightTe extends TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'బరువు పెరగడం';
	@override String get description => 'బరువు పెరగడానికి కేలరీల మిగులును సృష్టించండి';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryTe extends TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'నిశ్చలమైన';
	@override String get description => 'తక్కువ లేదా వ్యాయామం లేదు';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveTe extends TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'తేలికపాటి చురుకుదనం';
	@override String get description => 'వారానికి 1-3 రోజులు తేలికపాటి వ్యాయామం';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveTe extends TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'మితమైన చురుకుదనం';
	@override String get description => 'వారానికి 3-5 రోజులు మితమైన వ్యాయామం';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveTe extends TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'చాలా చురుకుదనం';
	@override String get description => 'వారానికి 6-7 రోజులు కఠినమైన వ్యాయామం';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveTe extends TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get name => 'అత్యంత చురుకుదనం';
	@override String get description => 'చాలా కఠినమైన వ్యాయామం, శారీరక ఉద్యోగం';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableTe extends TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'హెల్త్ కనెక్ట్ అందుబాటులో లేదు';
	@override String get description => 'ఈ పరికరంలో Health Connectకు మద్దతు లేదు.';
}

// Path: settings.healthConnect.updateRequired
class _TranslationsSettingsHealthConnectUpdateRequiredTe extends TranslationsSettingsHealthConnectUpdateRequiredEn {
	_TranslationsSettingsHealthConnectUpdateRequiredTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connectపై శ్రద్ధ అవసరం';
	@override String get description => 'యాక్సెస్‌ను నిర్వహించే ముందు Health Connectను ఇన్‌స్టాల్ చేయండి లేదా అప్‌డేట్ చేయండి.';
	@override String get action => 'ఇన్‌స్టాల్ చేయండి లేదా అప్‌డేట్ చేయండి';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsTe extends TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'అనుమతులు';
	@override String get description => 'హెల్త్ కనెక్ట్ ఇంటిగ్రేషన్‌ను అందించడానికి క్రింది అనుమతులు అభ్యర్థించబడ్డాయి:';
	@override String get granted => 'మంజూరు చేయబడింది';
	@override String get notGranted => 'మంజూరు చేయబడలేదు';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTe caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadTe nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadTe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteTe nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteTe._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryTe extends TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మా కథ';
	@override String content({required Object appLabel}) => '${appLabel} ఒక సాధారణ నిరాశ నుండి పుట్టింది: చాలా కేలరీల ట్రాకింగ్ యాప్‌లు చాలా క్లిష్టంగా ఉంటాయి, నిరంతరం మాన్యువల్ ఇన్‌పుట్‌ను డిమాండ్ చేస్తాయి, అధిక సబ్‌స్క్రిప్షన్ ఫీజులను వసూలు చేస్తాయి లేదా గోప్యతపై రాజీపడతాయి.\n\nఒక సోలో డెవలపర్‌గా, నేను సరళమైన మరియు సరసమైనదాన్ని నిర్మించాలనుకున్నాను — ప్రయత్నాన్ని తగ్గించడానికి AIని ఉపయోగించే, వేగంగా మరియు ఉచితంగా ఉపయోగించడానికి, మరియు మీ ఆరోగ్య డేటాను గౌరవించే యాప్.\n\n${appLabel} నేను కోరుకున్న యాప్: ఖాతాలు లేవు, ట్రాకింగ్ లేదు, ప్రకటనలు లేవు — కేవలం స్పష్టమైన, ఆచరణాత్మక అంతర్దృష్టులు మరియు మీ ఆరోగ్య లక్ష్యాలు.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyTe extends TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ గోప్యత ముఖ్యం';
	@override String get description => 'గోప్యత అనేది ఒక ఆలోచన కాదు — ఇది ఒక డిజైన్ సూత్రం. ఆచరణలో దాని అర్థం ఇక్కడ ఉంది:';
	@override String get noAccounts => 'ఖాతాలు అవసరం లేదు\nయాప్‌ను వెంటనే ఉపయోగించండి. సైన్-అప్‌లు లేవు, గుర్తింపులు లేవు.';
	@override String noTracking({required Object appLabel}) => 'పరిమిత విశ్లేషణలు మరియు డయాగ్నస్టిక్స్\nవిశ్వసనీయతను మెరుగుపరచడానికి ${appLabel} ప్రాథమిక యాప్ ఈవెంట్‌లు మరియు క్రాష్ డయాగ్నస్టిక్స్‌ను ఉపయోగిస్తుంది. ఆరోగ్య రికార్డ్ విలువలను ప్రకటనల కోసం ఉపయోగించరు లేదా విక్రయించరు.';
	@override String noAds({required Object appLabel}) => 'డిజైన్ ద్వారా ప్రకటనలు లేవు\n${appLabel} ప్రకటనలు లేదా డేటా-ఆధారిత మానిటైజేషన్ లేకుండా పని చేయడానికి నిర్మించబడింది.';
	@override String get noDataSelling => 'డేటా అమ్మకం లేదు\nమీ ఆరోగ్య డేటా ఎప్పుడూ విక్రయించబడదు లేదా మూడవ పక్షాలతో భాగస్వామ్యం చేయబడదు.';
	@override String get localStorage => 'స్థానికంగా-మొదటి నిల్వ\nమీ డేటా మీ పరికరంలోనే ఉంటుంది.';
	@override String get privacyPolicy => 'గోప్యతా విధానం';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperTe extends TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ఒక సోలో డెవలపర్ ద్వారా నిర్మించబడింది';
	@override String description({required Object appLabel}) => '${appLabel} ఒకే సోలో డెవలపర్ ద్వారా నిర్మించబడింది మరియు నిర్వహించబడుతుంది, ప్రశాంతమైన, గోప్యతను గౌరవించే ఆరోగ్య సాఫ్ట్‌వేర్‌ను రూపొందించడంపై దృష్టి సారించారు.\n\nఅభిప్రాయం వ్యక్తిగతంగా చదవబడుతుంది మరియు యాప్ దిశను రూపొందించడంలో సహాయపడుతుంది.';
	@override String get website => 'వెబ్‌సైట్';
	@override String get email => 'ఇమెయిల్';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackTe extends TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} ఆనందిస్తున్నారా?';
	@override String description({required Object appLabel}) => 'మీ అభిప్రాయం ${appLabel} అందరికీ మెరుగ్గా ఉండటానికి సహాయపడుతుంది.';
	@override String get rateApp => 'ప్లే స్టోర్‌లో రేట్ చేయండి';
	@override String get sendFeedback => 'అభిప్రాయాన్ని పంపండి';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeTe extends TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'భాగం పరిమాణం';
	@override String get description => 'అంచనాల ఖచ్చితత్వం మీ భాగం పరిమాణం యొక్క సరైన అంచనాపై ఎక్కువగా ఆధారపడి ఉంటుంది.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsTe extends TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'తయారీ పద్ధతులు';
	@override String description({required Object appLabel}) => 'వంట పద్ధతులు ఆహారం యొక్క పోషక కంటెంట్‌ను గణనీయంగా మార్చగలవు. ${appLabel} అంచనాలు ఈ వైవిధ్యాలను ఎల్లప్పుడూ పరిగణనలోకి తీసుకోకపోవచ్చు.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsTe extends TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'పదార్థాలు';
	@override String get description => 'అనేక దాచిన పదార్థాలతో కూడిన సంక్లిష్ట వంటకాలు తక్కువ ఖచ్చితమైన అంచనాలకు దారితీయవచ్చు.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsTe extends TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'డేటాబేస్ పరిమితులు';
	@override String description({required Object appLabel}) => '${appLabel} యొక్క ఆహార డేటాబేస్ విస్తృతమైనది కానీ ప్రతి ఒక్క ఆహార వస్తువు లేదా వైవిధ్యాన్ని కలిగి ఉండకపోవచ్చు.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyTe extends TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'క్యాలరీ ఖచ్చితత్వం';
	@override String get description => 'ఈ అంచనా మీ ట్రాక్ చేయబడిన క్యాలరీ తీసుకోవడం మరియు ఖర్చు చేసినంత ఖచ్చితమైనది. తప్పు లాగింగ్ తప్పు అంచనాకు దారి తీస్తుంది.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsTe extends TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'జీవసంబంధ కారకాలు';
	@override String description({required Object appLabel}) => 'వాస్తవ బరువు తగ్గడం/పెరగడం జీవక్రియ, హార్మోన్లు, నిద్ర, ఒత్తిడి, హైడ్రేషన్ మరియు ${appLabel} కొలవలేని ఇతర వ్యక్తిగత కారకాలచే ప్రభావితమవుతుంది.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightTe extends TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'నీటి బరువు & హెచ్చుతగ్గులు';
	@override String get description => 'నీటి నిలుపుదల, జీర్ణక్రియ మరియు సమయం కారణంగా సాధారణ రోజువారీ బరువు గణనీయంగా హెచ్చుతగ్గులకు లోనవుతుంది. ఈ అంచనా ఈ రోజువారీ మార్పులను పరిగణనలోకి తీసుకోదు.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTe extends TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'వృత్తిపరమైన మార్గదర్శకత్వం';
	@override String get description => 'వైద్య నిర్ణయాలు తీసుకోవడానికి ఈ అంచనాను ఉపయోగించవద్దు. వ్యక్తిగతీకరించిన బరువు నిర్వహణ సలహా కోసం ఎల్లప్పుడూ ఆరోగ్య సంరక్షణ నిపుణుడిని లేదా రిజిస్టర్డ్ డైటీషియన్‌ను సంప్రదించండి.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrTe extends TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'బేసల్ మెటబాలిక్ రేట్ (BMR) అనేది శ్వాస మరియు రక్త ప్రసరణ వంటి ప్రాథమిక విధులను నిర్వహించడానికి మీ శరీరం విశ్రాంతి సమయంలో బర్న్ చేసే కేలరీల సంఖ్య. BMR మీ వయస్సు, లింగం, ఎత్తు మరియు బరువుపై ఆధారపడి ఉంటుంది. అధిక BMR అంటే మీ శరీరం సహజంగా విశ్రాంతి సమయంలో ఎక్కువ కేలరీలను బర్న్ చేస్తుంది, తరచుగా ఎక్కువ కండర ద్రవ్యరాశి, తక్కువ వయస్సు లేదా పురుషుడు కావడం వల్ల. తక్కువ BMR సాధారణంగా తక్కువ కండర ద్రవ్యరాశి, ఎక్కువ వయస్సు లేదా స్త్రీ కావడం వల్ల సూచిస్తుంది.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeTe extends TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'మొత్తం రోజువారీ శక్తి వ్యయం (TDEE) అనేది మీ BMRతో పాటు శారీరక శ్రమ మరియు రోజువారీ కదలికల నుండి వచ్చే కేలరీలతో సహా మీరు రోజుకు బర్న్ చేసే మొత్తం కేలరీలు. TDEE మీ BMR మరియు కార్యాచరణ స్థాయిపై ఆధారపడి ఉంటుంది. అధిక TDEE అంటే మీరు మొత్తం మీద ఎక్కువ కేలరీలను బర్న్ చేస్తారు, సాధారణంగా మరింత చురుకుగా ఉండటం లేదా అధిక BMR కలిగి ఉండటం వల్ల. తక్కువ TDEE తక్కువ రోజువారీ కార్యాచరణ లేదా తక్కువ BMRను సూచిస్తుంది.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalTe extends TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'రోజువారీ లక్ష్యం';
	@override String get description => 'రోజువారీ లక్ష్యం అనేది మీ TDEE మరియు బరువు లక్ష్యం ఆధారంగా మీ సిఫార్సు చేయబడిన రోజువారీ కేలరీల తీసుకోవడం. బరువు తగ్గడం కోసం, మీరు మీ TDEE కంటే తక్కువ కేలరీలను తీసుకుంటారు. బరువు నిర్వహణ కోసం, మీరు మీ TDEEకి సరిపోతారు. బరువు పెరగడం కోసం, మీరు మీ TDEE కంటే ఎక్కువ కేలరీలను తీసుకుంటారు. ఇది ఆరోగ్యకరమైన వేగంతో మీ కోరుకున్న బరువు మార్పును సాధించడంలో మీకు సహాయపడుతుంది.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedTe extends TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'అంచనా ఎలా లెక్కించబడుతుంది';
	@override String get description => 'మేము మీ TDEE (మీ ప్రొఫైల్ ఆధారంగా)ని లెక్కిస్తాము మరియు ఇప్పటివరకు బర్న్ చేసిన కేలరీలను అంచనా వేయడానికి గడిచిన రోజులో (గంటలు + నిమిషాలు) / 24 భిన్నంతో గుణిస్తాము.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTe extends TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'వృత్తిపరమైన మార్గదర్శకత్వం';
	@override String get description => 'వైద్య నిర్ణయాలు తీసుకోవడానికి ఈ అంచనాను ఉపయోగించవద్దు. వ్యక్తిగతీకరించిన బరువు నిర్వహణ సలహా కోసం ఎల్లప్పుడూ ఆరోగ్య సంరక్షణ నిపుణుడిని లేదా రిజిస్టర్డ్ డైటీషియన్‌ను సంప్రదించండి.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTe extends TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మొత్తం బర్న్ చేయబడిన కేలరీలను చదవండి';
	@override String get description => 'హెల్త్ కనెక్ట్ నుండి మీ మొత్తం బర్న్ చేయబడిన కేలరీలను చదవడానికి యాప్‌ను అనుమతిస్తుంది.';
	@override String get usage => 'ఈ అనుమతి యాప్‌లో మీ రోజువారీ కేలరీల బర్న్‌ను ప్రదర్శించడానికి ఉపయోగించబడుతుంది, రోజంతా మీ మొత్తం శక్తి వ్యయాన్ని అర్థం చేసుకోవడానికి మీకు సహాయపడుతుంది.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadTe extends TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'పోషకాహార డేటాను చదవండి';
	@override String get description => 'హెల్త్ కనెక్ట్ నుండి పోషకాహార డేటాను చదవడానికి యాప్‌ను అనుమతిస్తుంది.';
	@override String get usage => 'ఈ అనుమతి హెల్త్ కనెక్ట్‌కు కనెక్ట్ చేయబడిన ఇతర యాప్‌ల ద్వారా లాగ్ చేయబడిన పోషకాహార సమాచారాన్ని చదవడానికి యాప్‌ను అనుమతిస్తుంది, మీ పోషకాహారం యొక్క సమగ్ర వీక్షణను అందిస్తుంది.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteTe extends TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteTe._(TranslationsTe root) : this._root = root, super.internal(root);

	final TranslationsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'పోషకాహార డేటాను వ్రాయండి';
	@override String get description => 'హెల్త్ కనెక్ట్‌కు పోషకాహార డేటాను వ్రాయడానికి యాప్‌ను అనుమతిస్తుంది.';
	@override String get usage => 'ఈ అనుమతి మీ లాగ్ చేయబడిన భోజనాలను హెల్త్ కనెక్ట్‌కు సమకాలీకరించడానికి యాప్‌ను అనుమతిస్తుంది, మీరు ఉపయోగించే ఇతర ఆరోగ్యం మరియు ఫిట్‌నెస్ యాప్‌లకు మీ పోషకాహార డేటాను అందుబాటులో ఉంచుతుంది.';
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
			'errors.rateLimitExceeded' => 'మీరు చాలా అభ్యర్థనలు చేశారు. దయచేసి మళ్ళీ ప్రయత్నించే ముందు కాసేపు వేచి ఉండండి.',
			'errors.networkError' => 'నెట్‌వర్క్ లోపం. దయచేసి మీ ఇంటర్నెట్ కనెక్షన్‌ని తనిఖీ చేయండి.',
			'errors.unknownError' => 'ఏదో తప్పు జరిగింది. దయచేసి తర్వాత మళ్ళీ ప్రయత్నించండి.',
			'errors.loadingProfileData' => 'ప్రొఫైల్ డేటాను లోడ్ చేయడంలో లోపం',
			'errors.somethingWentWrong' => 'ఏదో తప్పు జరిగింది.',
			'errors.retry' => 'మళ్ళీ ప్రయత్నించండి',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel}కి స్వాగతం',
			'onboarding.subtitle' => 'AI ద్వారా ఆధారితమైన మీ వ్యక్తిగత పోషకాహార సహచరుడు',
			'onboarding.getStarted' => 'ప్రారంభించండి',
			'onboarding.features.foodRecognition.title' => 'స్మార్ట్ ఫుడ్ రికగ్నిషన్',
			'onboarding.features.foodRecognition.description' => 'ఫోటో తీయండి మరియు AI మీ భోజనాన్ని గుర్తించనివ్వండి',
			'onboarding.features.aiAnalysis.title' => 'AI విశ్లేషణ',
			'onboarding.features.aiAnalysis.description' => 'మీ వివరణల నుండి తక్షణ పోషకాహార వాస్తవాలను పొందండి',
			'onboarding.features.healthIntegration.title' => 'ఆరోగ్య అనుసంధానం',
			'onboarding.features.healthIntegration.description' => 'మెరుగైన అంతర్దృష్టుల కోసం Health Connectతో కనెక్ట్ అవ్వండి',
			'onboarding.gender.title' => 'మీ లింగం ఏమిటి?',
			'onboarding.gender.description' => 'మీ బేసల్ మెటబాలిక్ రేటు (BMR)ని ఖచ్చితంగా లెక్కించడానికి లింగం మాకు సహాయపడుతుంది.',
			'onboarding.gender.next' => 'తదుపరి',
			'onboarding.height.title' => 'మీరు ఎంత పొడవు ఉన్నారు?',
			'onboarding.height.description' => 'మీ BMI మరియు శక్తి అవసరాలను ఖచ్చితంగా లెక్కించడానికి మీ ఎత్తు మాకు సహాయపడుతుంది.',
			'onboarding.height.metric' => 'మెట్రిక్',
			'onboarding.height.imperial' => 'ఇంపీరియల్',
			'onboarding.height.next' => 'తదుపరి',
			'onboarding.weight.currentTitle' => 'మీ ప్రస్తుత బరువు ఎంత?',
			'onboarding.weight.currentDescription' => 'మీ రోజువారీ లక్ష్యాలను వ్యక్తిగతీకరించడానికి మీ ప్రస్తుత బరువు చాలా అవసరం.',
			'onboarding.weight.targetTitle' => 'మీ లక్ష్య బరువు ఎంత?',
			'onboarding.weight.targetDescription' => 'లక్ష్య బరువును సెట్ చేయడం మీ దీర్ఘకాలిక ప్రణాళికను నిర్ణయించడంలో మాకు సహాయపడుతుంది.',
			'onboarding.weight.metric' => 'మెట్రిక్',
			'onboarding.weight.imperial' => 'ఇంపీరియల్',
			'onboarding.weight.next' => 'తదుపరి',
			'onboarding.age.title' => 'మీ పుట్టినరోజు ఎప్పుడు?',
			'onboarding.age.description' => 'మీ కేలరీల అవసరాలను ఖచ్చితంగా లెక్కించడానికి మీ వయస్సు మాకు సహాయపడుతుంది.',
			'onboarding.age.next' => 'తదుపరి',
			'onboarding.bmiScale.underweight' => 'తక్కువ',
			'onboarding.bmiScale.healthy' => 'ఆరోగ్యకరమైన',
			'onboarding.bmiScale.overweight' => 'ఎక్కువ',
			'onboarding.bmiScale.obese' => 'స్థూలకాయం',
			'onboarding.bmiScale.categories.underweight' => 'తక్కువ బరువు',
			'onboarding.bmiScale.categories.healthyWeight' => 'ఆరోగ్యకరమైన బరువు',
			'onboarding.bmiScale.categories.overweight' => 'ఎక్కువ బరువు',
			'onboarding.bmiScale.categories.obese' => 'స్థూలకాయం',
			'onboarding.bmiScale.messages.underweight' => 'పోషకాలు అధికంగా ఉండే భోజనంతో సమతుల్య బరువును చేరుకోవడానికి ఆరోగ్యకరమైన ప్రణాళికను రూపొందించడంలో మేము మీకు సహాయపడతాము.',
			'onboarding.bmiScale.messages.healthy' => 'గొప్ప పని! మీరు ఆరోగ్యకరమైన పరిధిలో ఉన్నారు. మీ జీవశక్తిని మరియు శక్తి స్థాయిలను నిర్వహించడానికి మేము మీకు సహాయపడతాము.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} మీ లక్ష్యాన్ని సులభంగా చేరుకోవడానికి AI-ఆధారిత ట్రాకింగ్‌తో మీ ప్రయాణాన్ని సులభతరం చేస్తుంది.',
			'onboarding.bmiScale.messages.obese' => 'మీ ఆరోగ్య లక్ష్యాల కోసం వ్యక్తిగతీకరించిన మార్గదర్శకత్వం మరియు స్థిరమైన వ్యూహాలతో మీకు మద్దతు ఇవ్వడానికి మేము ఇక్కడ ఉన్నాము.',
			'onboarding.weightGoal.title' => 'మీ లక్ష్యం ఏమిటి?',
			'onboarding.weightGoal.description' => 'మీరు సాధించాలనుకుంటున్న దానిని ఉత్తమంగా వివరించే లక్ష్యాన్ని ఎంచుకోండి',
			'onboarding.activityLevel.title' => 'మీరు ఎంత చురుకుగా ఉంటారు?',
			'onboarding.activityLevel.description' => 'ఇది మీ రోజువారీ కేలరీల అవసరాలను మరింత ఖచ్చితంగా లెక్కించడానికి మాకు సహాయపడుతుంది',
			'onboarding.healthConnect.title' => 'Health Connectతో కనెక్ట్ అవ్వండి',
			'onboarding.healthConnect.description' => 'మీ రోజువారీ లక్ష్యంలో బర్న్ అయిన కేలరీలను ఉపయోగించండి మరియు కావాలనుకుంటే లాగ్ చేసిన భోజనాలను Health Connectతో పంచుకోండి.',
			'onboarding.healthConnect.automaticTracking.title' => 'బర్న్ అయిన కేలరీలు',
			'onboarding.healthConnect.automaticTracking.description' => 'Health Connect నుండి ఈ రోజు బర్న్ అయిన మొత్తం కేలరీలను చదవండి',
			'onboarding.healthConnect.progressInsights.title' => 'లాగ్ చేసిన భోజనాలను పంచుకోండి',
			'onboarding.healthConnect.progressInsights.description' => 'Calorifyలో మీరు లాగ్ చేసిన భోజనాలను Health Connectకు రాయండి',
			'onboarding.healthConnect.seamlessIntegration.title' => 'నియంత్రణ మీ చేతుల్లోనే',
			'onboarding.healthConnect.seamlessIntegration.description' => 'రెండు అనుమతుల్లో మీకు కావలసినదాన్ని ఎంచుకుని, ఎప్పుడైనా యాక్సెస్‌ను మార్చండి',
			'onboarding.healthConnect.connected' => 'Health Connect కనెక్ట్ చేయబడింది',
			'onboarding.healthConnect.notConnected' => 'Health Connect కనెక్ట్ చేయబడలేదు',
			'onboarding.healthConnect.setup' => 'Health Connectను సెటప్ చేయండి',
			'onboarding.healthConnect.skipForNow' => 'ఇప్పుడప్పుడే వద్దు',
			'onboarding.healthConnect.statusConnected' => 'Health Connect కనెక్ట్ చేయబడింది.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect విజయవంతంగా కనెక్ట్ చేయబడింది!',
			'onboarding.healthConnect.statusNotConnected' => 'మీరు ప్రారంభించాలనుకునే Health Connect ఫీచర్‌లను ఎంచుకోండి.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect పాక్షికంగా కనెక్ట్ చేయబడింది. రెండు ఫీచర్‌లను ఉపయోగించడానికి మిగిలిన అనుమతిని ప్రారంభించండి.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'కొనసాగించడానికి Health Connectను ఇన్‌స్టాల్ చేయండి లేదా అప్‌డేట్ చేయండి.',
			'onboarding.healthConnect.statusUnavailable' => 'ఈ పరికరంలో Health Connectకు మద్దతు లేదు.',
			'onboarding.healthConnect.installOrUpdate' => 'ఇన్‌స్టాల్ చేయండి లేదా అప్‌డేట్ చేయండి',
			'onboarding.healthConnect.manageAccess' => 'యాక్సెస్‌ను నిర్వహించండి',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'అనుమతి నిరాకరించబడింది. దయచేసి ${appLabel} కోసం మీ ఫోన్ సెట్టింగ్‌ల నుండి Health Connect అనుమతులను ప్రారంభించండి.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connectను సెటప్ చేయడంలో లోపం: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'మీరు ఒంటరిగా లేరు',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'స్థిరమైన ట్రాకింగ్ దీర్ఘకాలిక విజయాన్ని అంచనా వేసే #1 అంశం అని పరిశోధనలు చెబుతున్నాయి.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age} సంవత్సరాల ${gender} ${goal} చేయాలనుకునే వారికి, స్థిరమైన ట్రాకింగ్ విజయాన్ని అంచనా వేసే #1 అంశం.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} మాన్యువల్‌గా చేయడం కంటే 10 రెట్లు సులభతరం చేస్తుంది.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'ప్రారంభించడానికి సిద్ధంగా ఉన్నారా?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'తక్షణ విశ్లేషణ కోసం మీ భోజనం ఫోటో తీయండి',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'అర్ధవంతమైన పురోగతిని చూడటానికి స్థిరంగా లాగ్ చేయండి',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'ప్రేరణతో ఉండటానికి మీ పురోగతిని రోజువారీ ట్రాక్ చేయండి',
			'onboarding.reinforcement.trackingSuccess.button' => 'వెళ్దాం',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'వ్యక్తి',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'ఆరోగ్యకరమైన మీరు',
			'onboarding.reinforcement.healthProfile.title' => 'మీ ఆరోగ్య ప్రొఫైల్',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'మీ కొలమానాల ఆధారంగా, మీ BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'మీ అనుభవాన్ని అనుకూలీకరించడానికి మీ ప్రొఫైల్‌ను ఖరారు చేద్దాం.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'పెంచుకోండి',
			'onboarding.reinforcement.healthProfile.goalLose' => 'తగ్గించుకోండి',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object diff, required Object unit, required Object direction}) => 'మీ లక్ష్యాన్ని చేరుకోవడానికి, మీరు ${diff} ${unit} ${direction} చేయాలి.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'మీరు మీ లక్ష్య బరువు వద్ద ఉన్నారు! దానిని నిర్వహించడానికి మేము మీకు సహాయపడతాము.',
			'onboarding.reinforcement.healthProfile.button' => 'వెళ్దాం',
			'onboarding.reinforcement.goalLifestyle.title' => 'అద్భుతమైన ప్రారంభం!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'మీరు ${goalText} వైపు మొదటి అడుగు వేశారు. మీరు ${activityText} కాబట్టి, ${appLabel} మీ జీవనశైలికి సరిపోయేలా మీ లక్ష్యాలను సర్దుబాటు చేస్తుంది.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'వ్యక్తిగతీకరించిన కేలరీల లక్ష్యాలు',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-ఆధారిత భోజన గుర్తింపు',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'వివరణాత్మక స్థూల-పోషక విచ్ఛిన్నాలు',
			'onboarding.reinforcement.goalLifestyle.button' => 'వెళ్దాం',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'మీ లక్ష్యాలు',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'చురుకుగా',
			'tabs.dashboard' => 'డాష్‌బోర్డ్',
			'tabs.history' => 'చరిత్ర',
			'home.aiSummary.title' => 'మీ AI సారాంశం',
			'home.aiSummary.logMore' => 'మీ వ్యక్తిగతీకరించిన AI అంతర్దృష్టులను పొందడానికి రాబోయే కొన్ని రోజులలో మరిన్ని భోజనాలను లాగ్ చేయండి.',
			'home.aiSummary.loading' => 'మీ సారాంశాన్ని లోడ్ చేస్తోంది...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} భోజనాలు లాగ్ చేయబడ్డాయి',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'బ్యాలెన్స్ స్కోర్ ${score}',
			'home.aiSummary.topFoods' => 'అగ్ర ఆహారాలు',
			'home.aiSummary.trendUp' => 'కేలరీలు పెరుగుతున్నాయి',
			'home.aiSummary.trendDown' => 'కేలరీలు తగ్గుతున్నాయి',
			'home.aiSummary.trendSteady' => 'కేలరీలు స్థిరంగా ఉన్నాయి',
			'home.aiSummary.generatedAt' => ({required Object time}) => '${time} నవీకరించబడింది',
			'home.dailyGoal.title' => 'మీ రోజువారీ లక్ష్యాన్ని సెట్ చేయండి',
			'home.dailyGoal.titleSet' => 'మీ రోజువారీ లక్ష్యం',
			'home.dailyGoal.description' => 'మీ ఆరోగ్య ప్రయాణాన్ని ప్రారంభించడానికి సిద్ధంగా ఉన్నారా? మీ పురోగతిని ప్రారంభించడానికి మీ రోజువారీ కేలరీల లక్ష్యాన్ని క్రింద సెట్ చేయండి.',
			'home.dailyGoal.descriptionSet' => 'మీ దిక్సూచి సెట్ చేయబడింది! ఇది మీకు మార్గనిర్దేశం చేయడానికి మీ రోజువారీ కేలరీల లక్ష్యం.',
			'home.dailyGoal.yourGoal' => 'మీ లక్ష్యం',
			'home.dailyGoal.goal' => 'లక్ష్యం',
			'home.dailyGoal.dailyCalories' => 'రోజువారీ కేలరీలు (kcal)',
			'home.dailyGoal.setGoal' => 'లక్ష్యాన్ని సెట్ చేయండి',
			'home.dailyGoal.intake' => 'సేవనం',
			'home.dailyGoal.burned' => 'ఖర్చయినవి',
			'home.dailyGoal.weightImpact' => 'బరువు ప్రభావం',
			'home.dailyGoal.estLoss' => 'అంచనా నష్టం',
			'home.dailyGoal.estGain' => 'అంచనా లాభం',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'రోజువారీ సారాంశం',
			'home.dailySummary.calories' => 'కేలరీలు',
			'home.dailySummary.carbs' => 'కార్బోహైడ్రేట్లు',
			'home.dailySummary.protein' => 'ప్రోటీన్',
			'home.dailySummary.fat' => 'కొవ్వు',
			'home.dailySummary.fiber' => 'ఫైబర్',
			'home.dailySummary.grams' => 'గ్రాములు',
			'home.dailySummary.chartAccessibilityLabel' => 'మాక్రోస్ చార్ట్',
			'home.intakeProgress.title' => 'నేటి మాక్రో స్ప్లిట్',
			'home.intakeProgress.target' => 'లక్ష్యం',
			'home.intakeProgress.current' => 'ప్రస్తుతం',
			'home.intakeHistory.title' => '7-రోజుల మాక్రో చరిత్ర',
			'home.intakeHistory.trendTitle' => 'నేటి ట్రెండ్',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'గరిష్ట సమయం: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'ఇంకా చరిత్ర లేదు',
			'home.intakeHistory.startLogging' => 'మీ 7-రోజుల మాక్రో ట్రెండ్‌లను ఇక్కడ చూడటానికి\nభోజనాలను లాగింగ్ చేయడం ప్రారంభించండి',
			'home.mealLog.title' => 'లాగ్ చేయబడిన భోజనాలు',
			'home.mealLog.emptyMessage' => 'ఇక్కడ లాగ్ చేయడానికి మీ చివరి భోజనం చిత్రాన్ని తీయండి.',
			'home.mealLog.noMealsToday' => 'ఈ రోజుకు భోజనాలు నమోదు చేయబడలేదు',
			'home.mealLog.seeAllMeals' => 'అన్ని భోజనాలను చూడండి',
			'home.mealDescription.title' => 'AI తో త్వరగా జోడించండి',
			'home.mealDescription.description' => 'మీ భోజనాన్ని వివరించండి మరియు AI వివరాలను నిర్వహించనివ్వండి.',
			'home.mealDescription.hint' => 'ఉదా. అల్పాహారం కోసం నేను ఒక పెద్ద గిన్నె ఓట్‌మీల్, ఒక అరటిపండు ముక్కలు మరియు ఒక స్కూప్ వే ...',
			'home.mealDescription.analyzeMeal' => 'భోజనాన్ని విశ్లేషించండి',
			'home.favoriteMeals.title' => 'ఇష్టమైన భోజనాలు',
			'home.favoriteMeals.description' => 'మీ ఇష్టమైన భోజనాలలో ఒకదాన్ని త్వరగా జోడించండి.',
			'home.favoriteMeals.noFavorites' => 'ఇంకా ఇష్టమైన భోజనాలు లేవు.',
			'home.favoriteMeals.addFavoriteHint' => 'భోజనంపై నక్షత్రాన్ని క్లిక్ చేసి దాన్ని ఇష్టమైనదిగా గుర్తించండి.',
			'home.favoriteMeals.seeAll' => 'అన్నీ చూడండి',
			'home.favoriteMeals.add' => 'జోడించు',
			'home.mealSnap.title' => 'మీ భోజనాన్ని స్నాప్ చేయండి & ట్రాక్ చేయండి',
			'home.mealSnap.description' => 'AI విశ్లేషణ కోసం మీ ఆహారం చిత్రాన్ని తీయడానికి మీ కెమెరాను ఉపయోగించండి.',
			'home.mealSnap.openCamera' => 'కెమెరాను తెరవండి',
			'home.mealSnap.gallery' => 'గ్యాలరీ',
			'home.mealSnap.compressingPhoto' => 'ఫోటోను ఆప్టిమైజ్ చేస్తోంది…',
			'home.mealSnap.uploadingPhoto' => 'ఫోటోను అప్‌లోడ్ చేస్తోంది…',
			'home.connectHealth.title' => 'Health Connect తో సమకాలీకరించండి',
			'home.connectHealth.description' => 'మీ లక్ష్యంలో బర్న్ అయిన కేలరీలను ఉపయోగించండి మరియు లాగ్ చేసిన భోజనాలను పంచుకోండి',
			'home.connectHealth.install' => 'ఇన్‌స్టాల్ చేయండి లేదా అప్‌డేట్ చేయండి',
			'home.connectHealth.connect' => 'కనెక్ట్ చేయండి',
			'history.noMeals' => 'భోజనాలు నమోదు చేయబడలేదు',
			'history.emptyMessage' => 'ఇక్కడ లాగ్ చేయడానికి మీ చివరి భోజనం చిత్రాన్ని తీయండి.',
			'history.today' => 'ఈ రోజు',
			'history.yesterday' => 'నిన్న',
			'meal.ohNo' => 'అయ్యో!',
			'meal.delete' => 'తొలగించు',
			'meal.editMeal' => 'భోజనాన్ని సవరించండి',
			'meal.addMeal' => 'భోజనాన్ని జోడించండి',
			'meal.saveMeal' => 'భోజనాన్ని సేవ్ చేయండి',
			'meal.save' => 'సేవ్ చేయండి',
			'meal.mealName' => 'భోజనం పేరు',
			'meal.mealNameHint' => 'ఉదా., టోస్ట్‌తో స్క్రాంబుల్డ్ ఎగ్స్',
			'meal.nameRequired' => 'సేవ్ చేసే ముందు భోజనం పేరును నమోదు చేయండి.',
			'meal.mealQuantity' => 'భోజనం పరిమాణం',
			'meal.mealQuantityHint' => 'ఉదా., 1 గిన్నె, 2 ముక్కలు',
			'meal.timeOfMeal' => 'భోజనం సమయం',
			'meal.timeOfMealHint' => 'మీరు భోజనం చేసిన సమయాన్ని ఎంచుకోండి',
			'meal.mealType' => 'భోజనం రకం',
			'meal.nutrition.calories' => 'కేలరీలు',
			'meal.nutrition.carbs' => 'కార్బోహైడ్రేట్లు (g)',
			'meal.nutrition.protein' => 'ప్రోటీన్ (g)',
			'meal.nutrition.fat' => 'కొవ్వు (g)',
			'meal.nutrition.fiber' => 'ఫైబర్ (g)',
			'meal.deleteConfirmation.title' => 'భోజనాన్ని తొలగించండి',
			'meal.deleteConfirmation.message' => 'మీరు ఈ భోజన ఎంట్రీని తొలగించాలనుకుంటున్నారా?',
			'meal.deleteConfirmation.cancel' => 'రద్దు చేయండి',
			'meal.deleteConfirmation.delete' => 'తొలగించు',
			'meal.addedToLog' => 'భోజనం మీ లాగ్‌కు జోడించబడింది!',
			'meal.couldNotAdd' => ({required Object error}) => 'భోజనాన్ని జోడించలేకపోయింది: ${error}',
			'meal.savedSuccessfully' => 'భోజనం విజయవంతంగా జోడించబడింది!',
			'meal.updatedSuccessfully' => 'భోజనం విజయవంతంగా నవీకరించబడింది!',
			'meal.errorSaving' => ({required Object error}) => 'భోజనాన్ని సేవ్ చేయడంలో లోపం: ${error}',
			'meal.removedFromFavorites' => 'ఇష్టమైన వాటి నుండి తీసివేయబడింది!',
			'meal.savedAsFavorite' => 'భోజనం ఇష్టమైనదిగా సేవ్ చేయబడింది!',
			'meal.unfavorite' => 'ఇష్టమైనది కాదని గుర్తించండి',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'ఇష్టమైనది నవీకరించలేకపోయింది: ${error}',
			'meal.feedbackThanks' => 'అభిప్రాయానికి ధన్యవాదాలు!',
			'meal.reanalysisUpdated' => 'మీ అభిప్రాయం ఆధారంగా భోజన విశ్లేషణ నవీకరించబడింది.',
			'meal.failedToProcess' => ({required Object error}) => 'ప్రాసెస్ చేయడంలో విఫలమైంది: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'చిత్రాన్ని ప్రాసెస్ చేయడంలో విఫలమైంది: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'చిత్రాన్ని కుదించడంలో లోపం: ${error}',
			'meal.failedToSave' => 'డేటాను సేవ్ చేయడంలో విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి.',
			'meal.skip' => 'దాటవేయి',
			'meal.questionFlow.progress' => ({required Object total, required Object current}) => '${total}లో ప్రశ్న ${current}',
			'meal.questionFlow.noQuestionsAvailable' => 'ప్రశ్నలు అందుబాటులో లేవు',
			'meal.questionFlow.next' => 'తరువాత',
			'meal.questionFlow.continueLabel' => 'కొనసాగించు',
			'meal.analysis.title' => 'మీ భోజనాన్ని విశ్లేషిస్తోంది',
			'meal.analysis.stepStarted' => 'ప్రారంభిస్తోంది…',
			'meal.analysis.stepDecomposition' => 'మీ భోజనాన్ని అర్థం చేసుకుంటోంది…',
			'meal.analysis.stepIngredients' => 'పోషకాహార డేటాతో పదార్థాలను సరిపోల్చుతోంది…',
			'meal.analysis.stepUncertainty' => 'విశ్వాసాన్ని తనిఖీ చేస్తోంది…',
			'meal.analysis.stepMealTypeQuestion' => 'దాదాపు పూర్తయింది…',
			'meal.analysis.stepResult' => 'మీ ఫలితాన్ని ఖరారు చేస్తోంది…',
			'meal.analysis.stepError' => 'ఏదో తప్పు జరిగింది',
			'meal.analysis.stepDefault' => 'మీ భోజనాన్ని విశ్లేషిస్తోంది…',
			'meal.analysis.progressUnderstand' => 'మీ భోజనాన్ని అర్థం చేసుకుంటోంది',
			'meal.analysis.progressMatch' => 'పదార్థాల పోషకాహారాన్ని వెతుకుతోంది',
			'meal.analysis.progressCheck' => 'భాగాలు మరియు విశ్వాసాన్ని తనిఖీ చేస్తోంది',
			'meal.analysis.progressMealType' => 'భోజన రకాన్ని ఎంచుకుంటోంది',
			'meal.analysis.progressFinish' => 'కేలరీలు మరియు మాక్రోలను లెక్కిస్తోంది',
			'meal.analysis.detectedIngredientHeading' => 'మేము గుర్తించిన పదార్థాలు',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => 'మరిన్ని ${count}',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} పదార్థాలు గుర్తించబడ్డాయి',
			'meal.analysis.ingredientsPending' => 'పదార్థాలను స్కాన్ చేస్తోంది…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'చిట్కా: స్థిరత్వం పరిపూర్ణతను అధిగమిస్తుంది—సాధారణ లాగ్‌లు ముఖ్యమైన నమూనాలను వెల్లడిస్తాయి.',
			'meal.analysis.offlineTip1' => 'చిట్కా: ఫోటోల కోసం, సహజ కాంతి మరియు పై నుండి వీక్షణ భాగం ఖచ్చితత్వానికి సహాయపడతాయి.',
			'meal.analysis.offlineTip2' => 'చిట్కా: పానీయాలు, సాస్‌లు మరియు వంట నూనెను పేర్కొనండి—అవి ప్రజలు తరచుగా మరచిపోయే కేలరీలను జోడిస్తాయి.',
			'meal.analysis.offlineTip3' => 'చిట్కా: త్వరిత భాగం గమనిక (1 గిన్నె, పెద్ద కాఫీ) అంచనాలను చాలా పదునుగా చేస్తుంది.',
			'meal.analysis.offlineTip4' => 'చిట్కా: భోజనం తర్వాత లాగింగ్ చేయడం అలవాటును ఇంకా పెంచుతుంది; పరిపూర్ణత ఐచ్ఛికం.',
			'meal.analysis.offlineTip5' => 'చిట్కా: కేలరీలు చాలా మారినప్పుడు (వేయించినవి vs కాల్చినవి) ఆహారాన్ని ఎలా వండారో చెప్పండి.',
			'meal.localInference.reviewTitle' => 'గుర్తించిన పదార్థాలను సమీక్షించండి',
			'meal.localInference.reviewSubtitle' => 'ఇది మీ పరికరంలో విశ్లేషించబడింది. పోషక విలువలు లెక్కించే ముందు పేర్లను లేదా పరిమాణాలను సరిచేసుకోండి.',
			'meal.localInference.mealName' => 'భోజనం పేరు',
			'meal.localInference.ingredient' => 'పదార్థం',
			'meal.localInference.grams' => 'అంచనా వేసిన గ్రాములు',
			'meal.localInference.removeIngredient' => 'పదార్థాన్ని తొలగించు',
			'meal.localInference.continueLabel' => 'కొనసాగించు',
			'meal.localInference.invalidProposal' => 'కనీసం ఒక పదార్థాన్ని జోడించండి మరియు సరైన గ్రాముల పరిమాణాన్ని ఉపయోగించండి.',
			'meal.localInference.localUnavailable' => 'ఆన్-డివైస్ విశ్లేషణ ప్రస్తుతం అందుబాటులో లేదు.',
			'meal.localInference.calculationDetails' => 'ఇది ఎలా లెక్కించబడింది',
			'meal.localInference.interpretationLocal' => 'ఈ పరికరంలో విశ్లేషించబడిన పదార్థాలు',
			'meal.localInference.interpretationCloud' => 'క్లౌడ్‌లో విశ్లేషించబడిన పదార్థాలు',
			'meal.localInference.interpretationManual' => 'మీరు సమీక్షించిన లేదా సవరించిన పదార్థాలు',
			'meal.localInference.nutritionRemote' => 'Calorify ద్వారా USDA నుండి సేకరించిన పోషక విలువలు',
			'meal.localInference.nutritionFallback' => 'కొన్ని పోషక విలువలు రిమోట్‌గా అంచనా వేయబడ్డాయి',
			'meal.localInference.calculationServer' => 'క్యాలరీలు మరియు మాక్రోలు Calorify ద్వారా లెక్కించబడ్డాయి',
			'meal.localInference.fallbackUsed' => 'స్థానిక విశ్లేషణ విఫలమై క్లౌడ్ ప్రాసెసింగ్‌కు మారింది',
			'meal.localInference.noRawContent' => 'డయాగ్నోస్టిక్ రసీదులలో మీ భోజనం టెక్స్ట్ లేదా ఫోటో ఉండవు.',
			'meal.feedback.title' => 'ఏమి తప్పుగా కనిపిస్తుంది?',
			'meal.feedback.subtitle' => 'ఒకటి లేదా అంతకంటే ఎక్కువ సమస్యలను ఎంచుకోవడం ద్వారా విశ్లేషణను మెరుగుపరచడంలో మాకు సహాయపడండి.',
			'meal.feedback.tellUsMore' => 'మరింత చెప్పండి',
			'meal.feedback.describeIncorrect' => 'ఏమి తప్పుగా ఉందో వివరించండి',
			'meal.feedback.submit' => 'సమర్పించు',
			'meal.feedback.issueFoodIdentification' => 'ఆహార గుర్తింపు',
			'meal.feedback.issuePortionSize' => 'భాగం పరిమాణం',
			'meal.feedback.issueCalorieDistribution' => 'కేలరీల పంపిణీ',
			'meal.feedback.issueMacrosWrong' => 'మాక్రోలు తప్పుగా ఉన్నాయి',
			'meal.feedback.issueMissingItems' => 'తప్పిపోయిన అంశాలు',
			'meal.feedback.issueExtraItems' => 'అదనపు అంశాలు',
			'meal.feedback.issueOther' => 'ఇతర',
			'favorites.title' => 'ఇష్టమైనవి',
			'favorites.empty' => 'ఇంకా ఇష్టమైన భోజనాలు లేవు.',
			'favorites.searchPlaceholder' => 'ఇష్టమైన భోజనాలను శోధించండి',
			'favorites.searchEmptyTitle' => 'మీ శోధనకు సరిపోయే ఇష్టమైనవి లేవు',
			'favorites.searchEmptySubtitle' => 'వేరే భోజనం పేరు, పరిమాణం లేదా భోజనం రకాన్ని ప్రయత్నించండి.',
			'favorites.sortLabel' => 'ఇష్టమైన వాటిని క్రమబద్ధీకరించండి',
			'favorites.undo' => 'రద్దు చేయి',
			'favorites.removed' => ({required Object name}) => 'ఇష్టమైన వాటి నుండి ${name} తీసివేయబడింది',
			'favorites.sortOptions.recent' => 'ఇటీవలి',
			'favorites.sortOptions.calories' => 'కేలరీలు',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'ప్రొఫైల్',
			'profile.noProfileData' => 'ప్రొఫైల్ డేటా కనుగొనబడలేదు',
			'profile.yourProfile' => 'మీ ప్రొఫైల్',
			'profile.viewAndManage' => 'మీ ఆరోగ్య సమాచారాన్ని వీక్షించండి మరియు నిర్వహించండి',
			'profile.sections.profile' => 'ప్రొఫైల్',
			'profile.sections.basicInformation' => 'ప్రాథమిక సమాచారం',
			'profile.sections.goalsAndActivity' => 'లక్ష్యాలు & కార్యాచరణ',
			'profile.sections.calculatedValues' => 'లెక్కించిన విలువలు',
			'profile.gender' => 'లింగం',
			'profile.height' => 'ఎత్తు',
			'profile.weight' => 'బరువు',
			'profile.age' => 'వయస్సు',
			'profile.weightGoal' => 'బరువు లక్ష్యం',
			'profile.targetWeight' => 'లక్ష్య బరువు',
			'profile.activityLevel' => 'కార్యాచరణ స్థాయి',
			'profile.healthMetrics' => 'ఆరోగ్య కొలమానాలు',
			'profile.notSet' => 'సెట్ చేయబడలేదు',
			'profile.years' => 'సంవత్సరాలు',
			'profile.updatedSuccessfully' => 'ప్రొఫైల్ విజయవంతంగా నవీకరించబడింది!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'రోజువారీ లక్ష్యం',
			'profile.calculatedValues.calPerDay' => 'cal/రోజు',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'ఆరోగ్య స్కోర్',
			'healthScore.whyThisScore' => 'ఈ స్కోర్ ఎందుకు?',
			'healthScore.note' => 'ఈ స్కోర్ గుర్తించిన పదార్థాలు మరియు పోషక సాంద్రత ఆధారంగా AI అంచనా. ఆహార సలహా కోసం ఎల్లప్పుడూ నిపుణుడిని సంప్రదించండి.',
			'healthScore.unhealthy' => 'ఆరోగ్యకరం కాదు',
			'healthScore.healthy' => 'ఆరోగ్యకరమైనది',
			'healthScore.neutral' => 'తటస్థ',
			'editProfile.title' => 'ప్రొఫైల్‌ను సవరించండి',
			'editProfile.sections.personalInformation' => 'వ్యక్తిగత సమాచారం',
			'editProfile.sections.physicalMeasurements' => 'శారీరక కొలతలు',
			'editProfile.sections.goalsAndActivity' => 'లక్ష్యాలు & కార్యాచరణ',
			'editProfile.gender' => 'లింగం',
			'editProfile.dateOfBirth' => 'పుట్టిన తేదీ',
			'editProfile.height' => 'ఎత్తు',
			'editProfile.weight' => 'బరువు',
			'editProfile.weightGoal' => 'బరువు లక్ష్యం',
			'editProfile.activityLevel' => 'కార్యాచరణ స్థాయి',
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
			'editProfile.genders.female' => 'స్త్రీ',
			'editProfile.genders.other' => 'ఇతర',
			'editProfile.weightGoals.loseWeight.name' => 'బరువు తగ్గడం',
			'editProfile.weightGoals.loseWeight.description' => 'బరువు తగ్గడానికి కేలరీల లోటును సృష్టించండి',
			'editProfile.weightGoals.maintainWeight.name' => 'బరువును నిర్వహించడం',
			'editProfile.weightGoals.maintainWeight.description' => 'మీ ప్రస్తుత బరువును నిర్వహించండి',
			'editProfile.weightGoals.gainWeight.name' => 'బరువు పెరగడం',
			'editProfile.weightGoals.gainWeight.description' => 'బరువు పెరగడానికి కేలరీల మిగులును సృష్టించండి',
			'editProfile.activityLevels.sedentary.name' => 'నిశ్చలమైన',
			'editProfile.activityLevels.sedentary.description' => 'తక్కువ లేదా వ్యాయామం లేదు',
			'editProfile.activityLevels.lightlyActive.name' => 'తేలికపాటి చురుకుదనం',
			'editProfile.activityLevels.lightlyActive.description' => 'వారానికి 1-3 రోజులు తేలికపాటి వ్యాయామం',
			'editProfile.activityLevels.moderatelyActive.name' => 'మితమైన చురుకుదనం',
			'editProfile.activityLevels.moderatelyActive.description' => 'వారానికి 3-5 రోజులు మితమైన వ్యాయామం',
			'editProfile.activityLevels.veryActive.name' => 'చాలా చురుకుదనం',
			'editProfile.activityLevels.veryActive.description' => 'వారానికి 6-7 రోజులు కఠినమైన వ్యాయామం',
			'editProfile.activityLevels.extremelyActive.name' => 'అత్యంత చురుకుదనం',
			'editProfile.activityLevels.extremelyActive.description' => 'చాలా కఠినమైన వ్యాయామం, శారీరక ఉద్యోగం',
			'settings.title' => 'సెట్టింగ్‌లు',
			'settings.sections.profile' => 'ప్రొఫైల్',
			'settings.sections.localization' => 'స్థానికీకరణ',
			'settings.sections.notifications' => 'నోటిఫికేషన్‌లు',
			'settings.sections.healthConnect' => 'హెల్త్ కనెక్ట్',
			'settings.sections.localInference' => 'ఆన్-డివైస్ విశ్లేషణ',
			'settings.sections.supportAndLegal' => 'మద్దతు & చట్టపరమైన',
			'settings.sections.about' => 'గురించి',
			'settings.sections.dangerZone' => 'డేంజర్ జోన్',
			'settings.sections.developer' => 'డెవలపర్',
			'settings.editProfile.title' => 'ప్రొఫైల్‌ను సవరించండి',
			'settings.editProfile.subtitle' => 'మీ వ్యక్తిగత సమాచారాన్ని నవీకరించండి',
			'settings.language.title' => 'భాష',
			'settings.language.subtitle' => 'మీకు నచ్చిన భాషను ఎంచుకోండి',
			'settings.language.searchHint' => 'భాషలను శోధించండి...',
			'settings.language.noResults' => 'ఫలితాలు కనుగొనబడలేదు',
			'settings.heightUnit.title' => 'ఎత్తు యూనిట్',
			'settings.weightUnit.title' => 'బరువు యూనిట్',
			'settings.mealReminders.title' => 'భోజన రిమైండర్‌లు',
			'settings.mealReminders.subtitle' => 'సమయానుకూల హెచ్చరికలతో ట్రాక్‌లో ఉండండి',
			'settings.localInference.title' => 'ఆన్-డివైస్ భోజన విశ్లేషణ',
			'settings.localInference.subtitle' => 'పోషక విలువలు లెక్కించే ముందు Gemini Nano తో మద్దతు ఉన్న భోజనాలను విశ్లేషించండి',
			'settings.localInference.unavailable' => 'ఈ పరికరంలో అందుబాటులో లేదు',
			'settings.localInference.rolloutUnavailable' => 'మద్దతు ఉన్న హార్డ్‌వేర్ ఉంది, కానీ ఈ యాప్ వెర్షన్‌లో ఈ ఫీచర్ ఎనేబుల్ చేయబడలేదు',
			'settings.localInference.modelSetup' => 'దీనిని ఎనేబుల్ చేయడానికి ముందు Gemini Nano డౌన్‌లోడ్ పూర్తి కావాలి',
			'settings.localInference.useLocalTitle' => 'ఆన్-డివైస్ విశ్లేషణను ఉపయోగించు',
			'settings.localInference.useLocalSubtitle' => 'ఇది ఐచ్ఛికం మరియు డిఫాల్ట్‌గా ఆఫ్ చేయబడి ఉంటుంది. సంక్లిష్టమైన భోజనాలకు ఫలితాలు తక్కువ ఖచ్చితత్వంతో ఉండవచ్చు.',
			'settings.localInference.disclosureTitle' => 'ఆన్-డివైస్ విశ్లేషణను ఎనేబుల్ చేసే ముందు',
			'settings.localInference.disclosureBody' => 'మద్దతు ఉన్న Android పరికరాలలో Gemini Nano పదార్థాలను గుర్తించగలదు మరియు పరిమాణాలను అంచనా వేయగలదు. మీరు సమీక్షించిన పదార్థాల ప్రతిపాదన USDA పోషక విశ్లేషణ మరియు గణన కోసం Calorifyకి పంపబడుతుంది.',
			'settings.localInference.disclosureLimit1' => 'సంక్లిష్టమైన వంటకాలు, దాగి ఉన్న పదార్థాలు మరియు పరిమాణాలు తప్పుగా గుర్తించబడవచ్చు.',
			'settings.localInference.disclosureLimit2' => 'డౌన్‌లోడ్ అవుతున్నప్పుడు, బిజీగా ఉన్నప్పుడు, బ్యాక్‌గ్రౌండ్‌లో ఉన్నప్పుడు లేదా పరికర పరిమితుల వల్ల మోడల్ అందుబాటులో ఉండకపోవచ్చు.',
			'settings.localInference.disclosureLimit3' => 'స్థానిక విశ్లేషణ పూర్తి కాకపోతే, ఈ బీటా వెర్షన్ మీ అసలు భోజన వివరణను క్లౌడ్ విశ్లేషణ కోసం స్వయంచాలకంగా Calorifyకి పంపుతుంది.',
			'settings.localInference.acknowledgement' => 'గుర్తించిన పదార్థాలను మరియు పరిమాణాలను నేను సమీక్షించాలో నాకు అర్థమైంది.',
			'settings.localInference.enable' => 'అంగీకరించి ఎనేబుల్ చేయి',
			'settings.localInference.cancel' => 'రద్దు చేయి',
			'settings.theme.title' => 'థీమ్',
			'settings.theme.light' => 'లేత',
			'settings.theme.dark' => 'ముదురు',
			'settings.theme.system' => 'సిస్టమ్',
			'settings.sendFeedback.title' => 'అభిప్రాయాన్ని పంపండి',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel}ను మెరుగుపరచడంలో మాకు సహాయపడండి',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} యాప్ అభిప్రాయం',
			'settings.sendFeedback.emailBodyPrefix' => 'దయచేసి మీ అభిప్రాయాన్ని క్రింద అందించండి:',
			'settings.sendFeedback.appVersion' => 'యాప్ వెర్షన్',
			'settings.sendFeedback.device' => 'పరికరము',
			'settings.sendFeedback.osVersion' => 'OS వెర్షన్',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'భోజన చరిత్రను ఎగుమతి చేయండి',
			'settings.exportMealHistory.subtitle' => 'మీ లాగ్ చేయబడిన భోజనాల CSVని షేర్ చేయండి',
			'settings.exportMealHistory.shareText' => 'మీ Calorify భోజన చరిత్ర ఎగుమతి',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'భోజన చరిత్రను ఎగుమతి చేయలేకపోయింది: ${error}',
			'settings.clearAllData.title' => 'అన్ని డేటాను క్లియర్ చేయండి',
			'settings.clearAllData.subtitle' => 'ఈ పరికరంలో నిల్వ చేసిన Calorify డేటాను తొలగించండి',
			'settings.clearAllData.confirmationTitle' => 'అన్ని డేటాను క్లియర్ చేయాలా?',
			'settings.clearAllData.confirmationMessage' => 'ఇది ఈ పరికరం నుండి లాగ్ చేసిన భోజనాలు, ఇష్టమైనవి మరియు ప్రొఫైల్ సెట్టింగ్‌లను శాశ్వతంగా తొలగిస్తుంది. Health Connectకు ఇప్పటికే పంచుకున్న భోజనాలు మరియు Health Connect యాక్సెస్‌ను సెట్టింగ్‌లు > Health Connectలో విడిగా నిర్వహించాలి.',
			'settings.clearAllData.cancel' => 'రద్దు చేయండి',
			'settings.clearAllData.clearEverything' => 'అన్నీ క్లియర్ చేయండి',
			'settings.debugOptions.title' => 'డీబగ్ ఎంపికలు',
			'settings.developerModeEnabled' => 'డెవలపర్ మోడ్ ప్రారంభించబడింది!',
			'settings.healthConnect.title' => 'హెల్త్ కనెక్ట్',
			'settings.healthConnect.subtitle' => 'అనుమతులను వీక్షించండి మరియు నిర్వహించండి',
			'settings.healthConnect.unavailable.title' => 'హెల్త్ కనెక్ట్ అందుబాటులో లేదు',
			'settings.healthConnect.unavailable.description' => 'ఈ పరికరంలో Health Connectకు మద్దతు లేదు.',
			'settings.healthConnect.updateRequired.title' => 'Health Connectపై శ్రద్ధ అవసరం',
			'settings.healthConnect.updateRequired.description' => 'యాక్సెస్‌ను నిర్వహించే ముందు Health Connectను ఇన్‌స్టాల్ చేయండి లేదా అప్‌డేట్ చేయండి.',
			'settings.healthConnect.updateRequired.action' => 'ఇన్‌స్టాల్ చేయండి లేదా అప్‌డేట్ చేయండి',
			'settings.healthConnect.permissions.title' => 'అనుమతులు',
			'settings.healthConnect.permissions.description' => 'హెల్త్ కనెక్ట్ ఇంటిగ్రేషన్‌ను అందించడానికి క్రింది అనుమతులు అభ్యర్థించబడ్డాయి:',
			'settings.healthConnect.permissions.granted' => 'మంజూరు చేయబడింది',
			'settings.healthConnect.permissions.notGranted' => 'మంజూరు చేయబడలేదు',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'మొత్తం బర్న్ చేయబడిన కేలరీలను చదవండి',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'హెల్త్ కనెక్ట్ నుండి మీ మొత్తం బర్న్ చేయబడిన కేలరీలను చదవడానికి యాప్‌ను అనుమతిస్తుంది.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'ఈ అనుమతి యాప్‌లో మీ రోజువారీ కేలరీల బర్న్‌ను ప్రదర్శించడానికి ఉపయోగించబడుతుంది, రోజంతా మీ మొత్తం శక్తి వ్యయాన్ని అర్థం చేసుకోవడానికి మీకు సహాయపడుతుంది.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'పోషకాహార డేటాను చదవండి',
			'settings.healthConnect.permissions.nutritionRead.description' => 'హెల్త్ కనెక్ట్ నుండి పోషకాహార డేటాను చదవడానికి యాప్‌ను అనుమతిస్తుంది.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'ఈ అనుమతి హెల్త్ కనెక్ట్‌కు కనెక్ట్ చేయబడిన ఇతర యాప్‌ల ద్వారా లాగ్ చేయబడిన పోషకాహార సమాచారాన్ని చదవడానికి యాప్‌ను అనుమతిస్తుంది, మీ పోషకాహారం యొక్క సమగ్ర వీక్షణను అందిస్తుంది.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'పోషకాహార డేటాను వ్రాయండి',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'హెల్త్ కనెక్ట్‌కు పోషకాహార డేటాను వ్రాయడానికి యాప్‌ను అనుమతిస్తుంది.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'ఈ అనుమతి మీ లాగ్ చేయబడిన భోజనాలను హెల్త్ కనెక్ట్‌కు సమకాలీకరించడానికి యాప్‌ను అనుమతిస్తుంది, మీరు ఉపయోగించే ఇతర ఆరోగ్యం మరియు ఫిట్‌నెస్ యాప్‌లకు మీ పోషకాహార డేటాను అందుబాటులో ఉంచుతుంది.',
			'settings.healthConnect.managePermissions' => 'అనుమతులను నిర్వహించండి',
			'settings.healthConnect.openSettings' => 'హెల్త్ కనెక్ట్ సెట్టింగ్‌లను తెరవండి',
			'settings.healthConnect.disconnect' => 'Health Connectను డిస్‌కనెక్ట్ చేయండి',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Health Connectను డిస్‌కనెక్ట్ చేయాలా?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorifyకి Health Connect యాక్సెస్ పోతుంది. ఇప్పటికే అక్కడ రాసిన డేటా తొలగించబడదు.',
			'settings.healthConnect.disconnectConfirmationAction' => 'డిస్‌కనెక్ట్ చేయండి',
			'settings.healthConnect.deleteSyncedMeals' => 'Health Connect నుండి Calorify భోజనాలను తొలగించండి',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'సమకాలీకరించిన భోజనాలను తొలగించాలా?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'ఈ Calorify వెర్షన్ సమకాలీకరించిన భోజనాలను Health Connect నుండి తొలగించాలా? మీ స్థానిక భోజన లాగ్ మారదు. పాత Calorify ఎంట్రీలను Health Connectలో డేటాను నిర్వహించండి ద్వారా ఇంకా తొలగించాల్సి రావచ్చు.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'సమకాలీకరించిన భోజనాలను తొలగించండి',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Calorify భోజనాలు Health Connect నుండి తొలగించబడ్డాయి.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'సమకాలీకరించిన భోజనాలను తొలగించలేకపోయాం. దయచేసి మళ్లీ ప్రయత్నించండి.',
			'settings.healthConnect.connectionPartial' => 'కొన్ని Health Connect ఫీచర్‌లు ప్రారంభించబడ్డాయి.',
			'settings.healthConnect.connectionComplete' => 'రెండు Health Connect ఫీచర్‌లు ప్రారంభించబడ్డాయి.',
			'settings.healthConnect.actionFailed' => 'Health Connectను తెరవలేకపోయాం. దయచేసి మళ్లీ ప్రయత్నించండి.',
			'settings.healthConnect.requestPermissions' => 'అనుమతులను అభ్యర్థించండి',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'అనుమతి అభ్యర్థన రద్దు చేయబడింది లేదా విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి లేదా హెల్త్ కనెక్ట్ సెట్టింగ్‌లలో అనుమతులను మాన్యువల్‌గా మంజూరు చేయండి.',
			'settings.healthConnect.permissionRequestFailed' => 'అనుమతులను అభ్యర్థించలేకపోయింది. దయచేసి మళ్లీ ప్రయత్నించండి లేదా హెల్త్ కనెక్ట్ సెట్టింగ్‌లలో అనుమతులను మాన్యువల్‌గా మంజూరు చేయండి.',
			'settings.healthConnect.requestingPermissions' => 'అభ్యర్థిస్తోంది...',
			'settings.about.title' => 'గురించి',
			'settings.about.tagline' => 'వేగవంతమైన, ఉచిత మరియు గోప్యత-మొదటి కేలరీల అవగాహన',
			'settings.about.ourStory.title' => 'మా కథ',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} ఒక సాధారణ నిరాశ నుండి పుట్టింది: చాలా కేలరీల ట్రాకింగ్ యాప్‌లు చాలా క్లిష్టంగా ఉంటాయి, నిరంతరం మాన్యువల్ ఇన్‌పుట్‌ను డిమాండ్ చేస్తాయి, అధిక సబ్‌స్క్రిప్షన్ ఫీజులను వసూలు చేస్తాయి లేదా గోప్యతపై రాజీపడతాయి.\n\nఒక సోలో డెవలపర్‌గా, నేను సరళమైన మరియు సరసమైనదాన్ని నిర్మించాలనుకున్నాను — ప్రయత్నాన్ని తగ్గించడానికి AIని ఉపయోగించే, వేగంగా మరియు ఉచితంగా ఉపయోగించడానికి, మరియు మీ ఆరోగ్య డేటాను గౌరవించే యాప్.\n\n${appLabel} నేను కోరుకున్న యాప్: ఖాతాలు లేవు, ట్రాకింగ్ లేదు, ప్రకటనలు లేవు — కేవలం స్పష్టమైన, ఆచరణాత్మక అంతర్దృష్టులు మరియు మీ ఆరోగ్య లక్ష్యాలు.',
			'settings.about.privacy.title' => 'మీ గోప్యత ముఖ్యం',
			'settings.about.privacy.description' => 'గోప్యత అనేది ఒక ఆలోచన కాదు — ఇది ఒక డిజైన్ సూత్రం. ఆచరణలో దాని అర్థం ఇక్కడ ఉంది:',
			'settings.about.privacy.noAccounts' => 'ఖాతాలు అవసరం లేదు\nయాప్‌ను వెంటనే ఉపయోగించండి. సైన్-అప్‌లు లేవు, గుర్తింపులు లేవు.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'పరిమిత విశ్లేషణలు మరియు డయాగ్నస్టిక్స్\nవిశ్వసనీయతను మెరుగుపరచడానికి ${appLabel} ప్రాథమిక యాప్ ఈవెంట్‌లు మరియు క్రాష్ డయాగ్నస్టిక్స్‌ను ఉపయోగిస్తుంది. ఆరోగ్య రికార్డ్ విలువలను ప్రకటనల కోసం ఉపయోగించరు లేదా విక్రయించరు.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'డిజైన్ ద్వారా ప్రకటనలు లేవు\n${appLabel} ప్రకటనలు లేదా డేటా-ఆధారిత మానిటైజేషన్ లేకుండా పని చేయడానికి నిర్మించబడింది.',
			'settings.about.privacy.noDataSelling' => 'డేటా అమ్మకం లేదు\nమీ ఆరోగ్య డేటా ఎప్పుడూ విక్రయించబడదు లేదా మూడవ పక్షాలతో భాగస్వామ్యం చేయబడదు.',
			'settings.about.privacy.localStorage' => 'స్థానికంగా-మొదటి నిల్వ\nమీ డేటా మీ పరికరంలోనే ఉంటుంది.',
			'settings.about.privacy.privacyPolicy' => 'గోప్యతా విధానం',
			'settings.about.developer.title' => 'ఒక సోలో డెవలపర్ ద్వారా నిర్మించబడింది',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} ఒకే సోలో డెవలపర్ ద్వారా నిర్మించబడింది మరియు నిర్వహించబడుతుంది, ప్రశాంతమైన, గోప్యతను గౌరవించే ఆరోగ్య సాఫ్ట్‌వేర్‌ను రూపొందించడంపై దృష్టి సారించారు.\n\nఅభిప్రాయం వ్యక్తిగతంగా చదవబడుతుంది మరియు యాప్ దిశను రూపొందించడంలో సహాయపడుతుంది.',
			'settings.about.developer.website' => 'వెబ్‌సైట్',
			'settings.about.developer.email' => 'ఇమెయిల్',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel} ఆనందిస్తున్నారా?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'మీ అభిప్రాయం ${appLabel} అందరికీ మెరుగ్గా ఉండటానికి సహాయపడుతుంది.',
			'settings.about.feedback.rateApp' => 'ప్లే స్టోర్‌లో రేట్ చేయండి',
			'settings.about.feedback.sendFeedback' => 'అభిప్రాయాన్ని పంపండి',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'బిల్డ్ ${buildNumber}',
			'reminders.title' => 'రిమైండర్‌లతో ట్రాక్‌లో ఉండండి',
			'reminders.description' => 'మీ భోజనాన్ని లాగ్ చేయడానికి మరియు మీ పోషకాహార లక్ష్యాలతో స్థిరంగా ఉండటానికి సున్నితమైన రిమైండర్‌లను పొందండి',
			'reminders.notificationsEnabled' => 'నోటిఫికేషన్‌లు ప్రారంభించబడ్డాయి',
			'reminders.notificationsDisabled' => 'నోటిఫికేషన్‌లు నిలిపివేయబడ్డాయి',
			'reminders.enabledSubtitle' => 'మీరు భోజన రిమైండర్‌లను అందుకుంటారు',
			'reminders.disabledSubtitle' => 'భోజన రిమైండర్‌లను పొందడానికి నోటిఫికేషన్‌లను ప్రారంభించండి',
			'reminders.mealReminders' => 'భోజన రిమైండర్‌లు',
			'reminders.breakfast' => 'అల్పాహారం',
			'reminders.lunch' => 'మధ్యాహ్న భోజనం',
			'reminders.dinner' => 'రాత్రి భోజనం',
			'reminders.snack' => 'చిరుతిండి',
			'reminders.unknown' => 'తెలియదు',
			'reminders.change' => 'మార్చండి',
			'reminders.enableNotifications' => 'నోటిఫికేషన్‌లను ప్రారంభించండి',
			'reminders.skipForNow' => 'ఇప్పుడిప్పుడే దాటవేయండి',
			'reminders.saveChanges' => 'మార్పులను సేవ్ చేయండి',
			'reminders.enabledSuccessfully' => 'నోటిఫికేషన్‌లు విజయవంతంగా ప్రారంభించబడ్డాయి!',
			'reminders.permissionDenied' => 'నోటిఫికేషన్ అనుమతి నిరాకరించబడింది',
			'reminders.errorEnabling' => ({required Object error}) => 'నోటిఫికేషన్‌లను ప్రారంభించడంలో లోపం: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'సెటప్‌ను పూర్తి చేయడంలో లోపం: ${error}',
			'notifications.breakfast.title' => 'అల్పాహారం సమయం! 🍳',
			'notifications.breakfast.body' => 'మీ అల్పాహారాన్ని లాగ్ చేయడం మర్చిపోవద్దు',
			'notifications.lunch.title' => 'మధ్యాహ్న భోజనం సమయం! 🥗',
			'notifications.lunch.body' => 'మీ మధ్యాహ్న భోజనాన్ని లాగ్ చేయడానికి సమయం',
			'notifications.dinner.title' => 'రాత్రి భోజనం సమయం! 🍽️',
			'notifications.dinner.body' => 'మీ రాత్రి భోజనాన్ని లాగ్ చేయడం మర్చిపోవద్దు',
			'notifications.snack.title' => 'చిరుతిండి సమయం! 🍎',
			'notifications.snack.body' => 'ఆరోగ్యకరమైన చిరుతిండికి సమయం',
			'notifications.test.title' => 'పరీక్ష నోటిఫికేషన్',
			'login.title' => 'లాగిన్',
			'login.signInWithGoogle' => 'Googleతో సైన్ ఇన్ చేయండి',
			'login.signInFailed' => 'Google సైన్-ఇన్ విఫలమైంది లేదా రద్దు చేయబడింది.',
			'disclaimer.pleaseNote' => 'దయచేసి గమనించండి',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} అంచనా వేసిన పోషకాహార సమాచారాన్ని అందిస్తుంది. ఖచ్చితత్వం మీ ఇన్‌పుట్ & ఆహార వైవిధ్యాలపై ఆధారపడి ఉంటుంది. దీన్ని ఒక మార్గదర్శకంగా ఉపయోగించండి, ఖచ్చితమైన మూలంగా కాదు. వ్యక్తిగతీకరించిన ఆహార సలహా కోసం ఒక నిపుణుడిని సంప్రదించండి.',
			'disclaimer.snap.portionSize.title' => 'భాగం పరిమాణం',
			'disclaimer.snap.portionSize.description' => 'అంచనాల ఖచ్చితత్వం మీ భాగం పరిమాణం యొక్క సరైన అంచనాపై ఎక్కువగా ఆధారపడి ఉంటుంది.',
			'disclaimer.snap.preparationMethods.title' => 'తయారీ పద్ధతులు',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'వంట పద్ధతులు ఆహారం యొక్క పోషక కంటెంట్‌ను గణనీయంగా మార్చగలవు. ${appLabel} అంచనాలు ఈ వైవిధ్యాలను ఎల్లప్పుడూ పరిగణనలోకి తీసుకోకపోవచ్చు.',
			'disclaimer.snap.ingredients.title' => 'పదార్థాలు',
			'disclaimer.snap.ingredients.description' => 'అనేక దాచిన పదార్థాలతో కూడిన సంక్లిష్ట వంటకాలు తక్కువ ఖచ్చితమైన అంచనాలకు దారితీయవచ్చు.',
			'disclaimer.snap.databaseLimitations.title' => 'డేటాబేస్ పరిమితులు',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} యొక్క ఆహార డేటాబేస్ విస్తృతమైనది కానీ ప్రతి ఒక్క ఆహార వస్తువు లేదా వైవిధ్యాన్ని కలిగి ఉండకపోవచ్చు.',
			'disclaimer.weightEstimate.title' => 'బరువు అంచనా గురించి',
			_ => null,
		} ?? switch (path) {
			'disclaimer.weightEstimate.description' => 'అంచనా వేసిన బరువు మార్పు అనేది సాధారణ క్యాలరీ-ఇన్ వర్సెస్ క్యాలరీ-అవుట్ మోడల్ ఆధారంగా ఒక సైద్ధాంతిక అంచనా. ఇది ప్రేరణాత్మక మార్గదర్శకత్వం కోసం మాత్రమే ఉద్దేశించబడింది, మీ వాస్తవ బరువు యొక్క అంచనాగా కాదు.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'క్యాలరీ ఖచ్చితత్వం',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'ఈ అంచనా మీ ట్రాక్ చేయబడిన క్యాలరీ తీసుకోవడం మరియు ఖర్చు చేసినంత ఖచ్చితమైనది. తప్పు లాగింగ్ తప్పు అంచనాకు దారి తీస్తుంది.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'జీవసంబంధ కారకాలు',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'వాస్తవ బరువు తగ్గడం/పెరగడం జీవక్రియ, హార్మోన్లు, నిద్ర, ఒత్తిడి, హైడ్రేషన్ మరియు ${appLabel} కొలవలేని ఇతర వ్యక్తిగత కారకాలచే ప్రభావితమవుతుంది.',
			'disclaimer.weightEstimate.waterWeight.title' => 'నీటి బరువు & హెచ్చుతగ్గులు',
			'disclaimer.weightEstimate.waterWeight.description' => 'నీటి నిలుపుదల, జీర్ణక్రియ మరియు సమయం కారణంగా సాధారణ రోజువారీ బరువు గణనీయంగా హెచ్చుతగ్గులకు లోనవుతుంది. ఈ అంచనా ఈ రోజువారీ మార్పులను పరిగణనలోకి తీసుకోదు.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'వృత్తిపరమైన మార్గదర్శకత్వం',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'వైద్య నిర్ణయాలు తీసుకోవడానికి ఈ అంచనాను ఉపయోగించవద్దు. వ్యక్తిగతీకరించిన బరువు నిర్వహణ సలహా కోసం ఎల్లప్పుడూ ఆరోగ్య సంరక్షణ నిపుణుడిని లేదా రిజిస్టర్డ్ డైటీషియన్‌ను సంప్రదించండి.',
			'disclaimer.healthMetrics.description' => 'ఈ కొలమానాలు మీ శరీరం యొక్క శక్తి అవసరాలను అర్థం చేసుకోవడానికి మరియు మీ పోషకాహార లక్ష్యాలకు మార్గనిర్దేశం చేయడానికి మీకు సహాయపడతాయి.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'బేసల్ మెటబాలిక్ రేట్ (BMR) అనేది శ్వాస మరియు రక్త ప్రసరణ వంటి ప్రాథమిక విధులను నిర్వహించడానికి మీ శరీరం విశ్రాంతి సమయంలో బర్న్ చేసే కేలరీల సంఖ్య. BMR మీ వయస్సు, లింగం, ఎత్తు మరియు బరువుపై ఆధారపడి ఉంటుంది. అధిక BMR అంటే మీ శరీరం సహజంగా విశ్రాంతి సమయంలో ఎక్కువ కేలరీలను బర్న్ చేస్తుంది, తరచుగా ఎక్కువ కండర ద్రవ్యరాశి, తక్కువ వయస్సు లేదా పురుషుడు కావడం వల్ల. తక్కువ BMR సాధారణంగా తక్కువ కండర ద్రవ్యరాశి, ఎక్కువ వయస్సు లేదా స్త్రీ కావడం వల్ల సూచిస్తుంది.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'మొత్తం రోజువారీ శక్తి వ్యయం (TDEE) అనేది మీ BMRతో పాటు శారీరక శ్రమ మరియు రోజువారీ కదలికల నుండి వచ్చే కేలరీలతో సహా మీరు రోజుకు బర్న్ చేసే మొత్తం కేలరీలు. TDEE మీ BMR మరియు కార్యాచరణ స్థాయిపై ఆధారపడి ఉంటుంది. అధిక TDEE అంటే మీరు మొత్తం మీద ఎక్కువ కేలరీలను బర్న్ చేస్తారు, సాధారణంగా మరింత చురుకుగా ఉండటం లేదా అధిక BMR కలిగి ఉండటం వల్ల. తక్కువ TDEE తక్కువ రోజువారీ కార్యాచరణ లేదా తక్కువ BMRను సూచిస్తుంది.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'రోజువారీ లక్ష్యం',
			'disclaimer.healthMetrics.dailyGoal.description' => 'రోజువారీ లక్ష్యం అనేది మీ TDEE మరియు బరువు లక్ష్యం ఆధారంగా మీ సిఫార్సు చేయబడిన రోజువారీ కేలరీల తీసుకోవడం. బరువు తగ్గడం కోసం, మీరు మీ TDEE కంటే తక్కువ కేలరీలను తీసుకుంటారు. బరువు నిర్వహణ కోసం, మీరు మీ TDEEకి సరిపోతారు. బరువు పెరగడం కోసం, మీరు మీ TDEE కంటే ఎక్కువ కేలరీలను తీసుకుంటారు. ఇది ఆరోగ్యకరమైన వేగంతో మీ కోరుకున్న బరువు మార్పును సాధించడంలో మీకు సహాయపడుతుంది.',
			'disclaimer.calorieExpenditure.title' => 'క్యాలరీ వ్యయం అంచనా',
			'disclaimer.calorieExpenditure.description' => 'Health Connect డేటా అందుబాటులో లేనప్పుడు, మీ బేసల్ మెటబాలిక్ రేట్ (BMR) మరియు కార్యాచరణ స్థాయి (TDEE) ఉపయోగించి ఈ రోజు బర్న్ చేసిన కేలరీలను మేము అంచనా వేస్తాము, రోజులో గడిచిన భాగానికి స్కేల్ చేయబడింది.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'అంచనా ఎలా లెక్కించబడుతుంది',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'మేము మీ TDEE (మీ ప్రొఫైల్ ఆధారంగా)ని లెక్కిస్తాము మరియు ఇప్పటివరకు బర్న్ చేసిన కేలరీలను అంచనా వేయడానికి గడిచిన రోజులో (గంటలు + నిమిషాలు) / 24 భిన్నంతో గుణిస్తాము.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'వృత్తిపరమైన మార్గదర్శకత్వం',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'వైద్య నిర్ణయాలు తీసుకోవడానికి ఈ అంచనాను ఉపయోగించవద్దు. వ్యక్తిగతీకరించిన బరువు నిర్వహణ సలహా కోసం ఎల్లప్పుడూ ఆరోగ్య సంరక్షణ నిపుణుడిని లేదా రిజిస్టర్డ్ డైటీషియన్‌ను సంప్రదించండి.',
			'localNutritionPhase4.nutritionBundled' => 'డౌన్‌లోడ్ చేసిన USDA ప్యాక్ నుంచి పోషక విలువలు సరిపోల్చబడ్డాయి',
			'localNutritionPhase4.nutritionCached' => 'పరికరంలోని USDA క్యాష్ నుంచి పోషక విలువలు సరిపోల్చబడ్డాయి',
			'localNutritionPhase4.nutritionMixed' => 'డౌన్‌లోడ్ చేసిన, క్యాష్ చేసిన మరియు రిమోట్ USDA వరుసల నుంచి పోషక విలువలు కలపబడ్డాయి',
			'localNutritionPhase4.calculationLocal' => 'ఈ పరికరంలో కేలరీలు మరియు మాక్రోలు లెక్కించబడ్డాయి',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: డౌన్‌లోడ్ చేసిన USDA ప్యాక్',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: పరికరంలోని USDA క్యాష్',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: Calorify ద్వారా పొందిన USDA వరుస',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: నిర్ధారిత పోషక స్థిరాంకం',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · డేటాసెట్ ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'చిన్నది',
			'localNutritionPhase4.portionEstimated' => 'అంచనా',
			'localNutritionPhase4.portionLarger' => 'పెద్దది',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => '${ingredient}కు ఏ పరిమాణం అత్యంత దగ్గరగా ఉంది?',
			'localNutritionPhase4.mealTypeQuestion' => 'ఇది ఏ భోజనం?',
			'localNutritionPhase4.localNutritionTip' => 'ధృవీకరించిన స్థానిక పోషక డేటా నుంచి లెక్కించబడింది.',
			'localNutritionPhase4.offlineNutritionTitle' => 'పోషక డేటాను డౌన్‌లోడ్ చేయండి',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'ప్రతి పదార్థం అందుబాటులో ఉన్నప్పుడు ఈ పరికరంలో ధృవీకరించిన USDA వరుసలు మరియు నిర్ధారిత లెక్కింపును ఉపయోగించండి.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'ఈ యాప్ విడుదలకు స్థానిక పోషక డేటా అందుబాటులో లేదు.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'ధృవీకరించిన పోషక ప్యాక్ ఏదీ డౌన్‌లోడ్ కాలేదు.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'పోషక డేటాను డౌన్‌లోడ్ చేసి ధృవీకరిస్తోంది…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'ప్యాక్ ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} క్యాష్ చేసిన USDA వరుసలు · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'అప్‌డేట్ కోసం తనిఖీ చేయండి',
			'localNutritionPhase4.offlineNutritionClear' => 'స్థానిక పోషక డేటాను తొలగించండి',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'స్థానిక పోషక డేటాను తొలగించాలా?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'ఇది డౌన్‌లోడ్ చేసిన USDA ప్యాక్ మరియు శోధన క్యాష్‌ను తొలగిస్తుంది. నమోదు చేసిన భోజనాలు సేవ్ చేసినప్పుడు ఉపయోగించిన ఖచ్చితమైన పోషక స్నాప్‌షాట్‌ను ఉంచుకుంటాయి.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'డేటాను తొలగించండి',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'స్థానిక పోషక డేటాను డౌన్‌లోడ్ చేసి ధృవీకరించలేకపోయింది: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'స్థానిక పోషక డేటా తొలగించబడింది',
			'common.close' => 'మూసివేయి',
			'common.kContinue' => 'కొనసాగించు',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel} ఆనందిస్తున్నారా?',
			'feedbackRating.yes' => 'అవును, నేను ఆనందిస్తున్నాను',
			'feedbackRating.no' => 'నిజంగా లేదు',
			'feedbackRating.rateStepHeading' => 'ప్లే స్టోర్‌లో రేట్ చేయండి',
			'feedbackRating.emailStepHeading' => 'ఇమెయిల్ ద్వారా అభిప్రాయాన్ని పంపండి',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'త్వరిత రేటింగ్ ఇతరులకు ${appLabel} కనుగొనడంలో సహాయపడుతుంది మరియు అభివృద్ధిని కొనసాగిస్తుంది. మీరు ఒక క్షణం రేటింగ్ ఇవ్వగలరా?',
			'feedbackRating.shareFeedbackViaEmail' => 'మీ అభిప్రాయం తదుపరి ఏమి వస్తుందో రూపొందిస్తుంది — మేము ప్రతి సందేశాన్ని చదువుతాము. మీరు ఇమెయిల్ ద్వారా మీ ఆలోచనలను పంచుకోవాలనుకుంటున్నారా?',
			'feedbackRating.rateCta' => 'ప్లే స్టోర్‌లో రేట్ చేయండి',
			'feedbackRating.maybeLater' => 'బహుశా తర్వాత',
			'feedbackRating.sendFeedback' => 'అభిప్రాయాన్ని పంపండి',
			'feedbackRating.noThanks' => 'వద్దు, ధన్యవాదాలు',
			'feedbackRating.aboutUsDescription' => 'ఒక చిన్న బృందం ద్వారా శ్రద్ధగా తయారు చేయబడింది. మేము గోప్యత, సరళత మరియు మెరుగైన ఆహారపు అలవాట్లను నిర్మించడంలో మీకు సహాయపడటంపై దృష్టి సారించాము.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '${appLabel} వెనుక ఎవరున్నారో తెలుసుకోవాలనుకుంటున్నారా? చూడండి ',
			'feedbackRating.aboutUsLinkLabel' => 'మా గురించి',
			'feedbackRating.thankYouMessage' => 'ధన్యవాదాలు! మేము మరోసారి అడుగుతాము.',
			'health.syncFailed' => 'Health Connectకి సమకాలీకరించలేకపోయింది',
			'health.mealSynced' => 'భోజనం Health Connectతో సమకాలీకరించబడింది',
			_ => null,
		};
	}
}
