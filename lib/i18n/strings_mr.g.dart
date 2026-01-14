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
class TranslationsMr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsMr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.mr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <mr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsMr _root = this; // ignore: unused_field

	@override 
	TranslationsMr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsMr(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'मराठी';
	@override String get flag => '🇮🇳';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsOnboardingMr onboarding = _TranslationsOnboardingMr._(_root);
	@override late final _TranslationsTabsMr tabs = _TranslationsTabsMr._(_root);
	@override late final _TranslationsHomeMr home = _TranslationsHomeMr._(_root);
	@override late final _TranslationsHistoryMr history = _TranslationsHistoryMr._(_root);
	@override late final _TranslationsMealMr meal = _TranslationsMealMr._(_root);
	@override late final _TranslationsFavoritesMr favorites = _TranslationsFavoritesMr._(_root);
	@override late final _TranslationsProfileMr profile = _TranslationsProfileMr._(_root);
	@override late final _TranslationsHealthScoreMr healthScore = _TranslationsHealthScoreMr._(_root);
	@override late final _TranslationsEditProfileMr editProfile = _TranslationsEditProfileMr._(_root);
	@override late final _TranslationsSettingsMr settings = _TranslationsSettingsMr._(_root);
	@override late final _TranslationsRemindersMr reminders = _TranslationsRemindersMr._(_root);
	@override late final _TranslationsNotificationsMr notifications = _TranslationsNotificationsMr._(_root);
	@override late final _TranslationsLoginMr login = _TranslationsLoginMr._(_root);
	@override late final _TranslationsDisclaimerMr disclaimer = _TranslationsDisclaimerMr._(_root);
	@override late final _TranslationsCommonMr common = _TranslationsCommonMr._(_root);
	@override late final _TranslationsErrorsMr errors = _TranslationsErrorsMr._(_root);
	@override late final _TranslationsDebugMr debug = _TranslationsDebugMr._(_root);
	@override late final _TranslationsHealthMr health = _TranslationsHealthMr._(_root);
}

// Path: onboarding
class _TranslationsOnboardingMr implements TranslationsOnboardingEn {
	_TranslationsOnboardingMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} मध्ये स्वागत आहे';
	@override String get subtitle => 'AI द्वारे समर्थित आपल्या वैयक्तिक आहार सहकारी';
	@override String get getStarted => 'आरंभ करा';
	@override late final _TranslationsOnboardingFeaturesMr features = _TranslationsOnboardingFeaturesMr._(_root);
	@override late final _TranslationsOnboardingGenderMr gender = _TranslationsOnboardingGenderMr._(_root);
	@override late final _TranslationsOnboardingHeightMr height = _TranslationsOnboardingHeightMr._(_root);
	@override late final _TranslationsOnboardingWeightMr weight = _TranslationsOnboardingWeightMr._(_root);
	@override late final _TranslationsOnboardingAgeMr age = _TranslationsOnboardingAgeMr._(_root);
	@override late final _TranslationsOnboardingBmiScaleMr bmiScale = _TranslationsOnboardingBmiScaleMr._(_root);
	@override late final _TranslationsOnboardingWeightGoalMr weightGoal = _TranslationsOnboardingWeightGoalMr._(_root);
	@override late final _TranslationsOnboardingActivityLevelMr activityLevel = _TranslationsOnboardingActivityLevelMr._(_root);
	@override late final _TranslationsOnboardingHealthConnectMr healthConnect = _TranslationsOnboardingHealthConnectMr._(_root);
	@override late final _TranslationsOnboardingReinforcementMr reinforcement = _TranslationsOnboardingReinforcementMr._(_root);
}

// Path: tabs
class _TranslationsTabsMr implements TranslationsTabsEn {
	_TranslationsTabsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'डॅशबोर्ड';
	@override String get history => 'इतिहास';
}

// Path: home
class _TranslationsHomeMr implements TranslationsHomeEn {
	_TranslationsHomeMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalMr dailyGoal = _TranslationsHomeDailyGoalMr._(_root);
	@override late final _TranslationsHomeDailySummaryMr dailySummary = _TranslationsHomeDailySummaryMr._(_root);
	@override late final _TranslationsHomeIntakeProgressMr intakeProgress = _TranslationsHomeIntakeProgressMr._(_root);
	@override late final _TranslationsHomeIntakeHistoryMr intakeHistory = _TranslationsHomeIntakeHistoryMr._(_root);
	@override late final _TranslationsHomeMealLogMr mealLog = _TranslationsHomeMealLogMr._(_root);
	@override late final _TranslationsHomeMealDescriptionMr mealDescription = _TranslationsHomeMealDescriptionMr._(_root);
	@override late final _TranslationsHomeFavoriteMealsMr favoriteMeals = _TranslationsHomeFavoriteMealsMr._(_root);
	@override late final _TranslationsHomeMealSnapMr mealSnap = _TranslationsHomeMealSnapMr._(_root);
	@override late final _TranslationsHomeConnectHealthMr connectHealth = _TranslationsHomeConnectHealthMr._(_root);
}

// Path: history
class _TranslationsHistoryMr implements TranslationsHistoryEn {
	_TranslationsHistoryMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'कोणतीही जेवण नोंदलेली नाही';
	@override String get emptyMessage => 'तुमच्या शेवटच्या जेवणाचा फोटो घेऊन येथे लॉग करा.';
	@override String get today => 'आज';
	@override String get yesterday => 'गेल्या दिवस';
}

// Path: meal
class _TranslationsMealMr implements TranslationsMealEn {
	_TranslationsMealMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'अरेरे!';
	@override String get delete => 'Delete';
	@override String get editMeal => 'जेवण संपादित करा';
	@override String get addMeal => 'जेवण जोडा';
	@override String get saveMeal => 'जेवण जतन करा';
	@override String get save => 'जतन करा';
	@override String get mealName => 'जेवणाचे नाव';
	@override String get mealQuantity => 'जेवणाचे प्रमाण';
	@override String get mealQuantityHint => 'उदाहरणार्थ, 1 ताट, 2 तुकडे';
	@override String get timeOfMeal => 'जेवणाची वेळ';
	@override String get timeOfMealHint => 'तुम्ही जेव्हा तुमचे जेवण केले तेव्हा वेळ निवडा';
	@override String get mealType => 'जेवणाचा प्रकार';
	@override late final _TranslationsMealNutritionMr nutrition = _TranslationsMealNutritionMr._(_root);
	@override late final _TranslationsMealDeleteConfirmationMr deleteConfirmation = _TranslationsMealDeleteConfirmationMr._(_root);
	@override String get addedToLog => 'जेवण तुमच्या नोंदीत जोडले गेले!';
	@override String couldNotAdd({required Object error}) => 'जेवण जोडता येईल नाही: ${error}';
	@override String get removedFromFavorites => 'आवडत्या सूचीतील काढले!';
	@override String get savedAsFavorite => 'जेवण आवडते म्हणून जतन केले!';
	@override String couldNotUpdateFavorite({required Object error}) => 'आवडत्या अद्यतन करता येऊ शकत नाही: ${error}';
	@override String failedToProcess({required Object error}) => 'प्रक्रियेत अयशस्वी: ${error}';
	@override String failedToProcessImage({required Object error}) => 'प्रतिमा प्रक्रियेत अयशस्वी: ${error}';
	@override String errorCompressingImage({required Object error}) => 'प्रतिमा संकुचनात त्रुटी: ${error}';
	@override String get failedToSave => 'डेटा जतन करण्यात अयशस्वी झाले. कृपया पुन्हा प्रयत्न करा.';
}

// Path: favorites
class _TranslationsFavoritesMr implements TranslationsFavoritesEn {
	_TranslationsFavoritesMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'आवडत्या';
	@override String get empty => 'अद्याप कोणतीही आवडती जेवण नाही.';
}

// Path: profile
class _TranslationsProfileMr implements TranslationsProfileEn {
	_TranslationsProfileMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफाइल';
	@override String get noProfileData => 'कोई प्रोफाइल डेटा नाही';
	@override String get yourProfile => 'तुमचा प्रोफाइल';
	@override String get viewAndManage => 'तुमची आरोग्य माहिती पहा आणि व्यवस्थापित करा';
	@override late final _TranslationsProfileSectionsMr sections = _TranslationsProfileSectionsMr._(_root);
	@override String get gender => 'लिंग';
	@override String get height => 'उंची';
	@override String get weight => 'वजन';
	@override String get age => 'वय';
	@override String get weightGoal => 'वजन लक्ष्य';
	@override String get activityLevel => 'क्रियाकलाप पातळी';
	@override String get healthMetrics => 'आरोग्य मेट्रिक्स';
	@override String get notSet => 'संचित नाही';
	@override String get years => 'वर्ष';
	@override String get updatedSuccessfully => 'प्रोफाइल यशस्वीरित्या अद्यतनित झाले!';
	@override late final _TranslationsProfileCalculatedValuesMr calculatedValues = _TranslationsProfileCalculatedValuesMr._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreMr implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'आरोग्य स्कोर';
	@override String get whyThisScore => 'हा स्कोर का?';
	@override String get note => 'हा स्कोर ओळखलेल्या घटकांवर आणि पोषण गरजेवर आधारित एक AI अंदाज आहे. आहार सल्ल्यासाठी नेहमी एक तज्ञांशी संपर्क साधा.';
	@override String get unhealthy => 'आरोग्यदायी नाही';
	@override String get healthy => 'आरोग्यदायी';
	@override String get neutral => 'तटस्थ';
}

// Path: editProfile
class _TranslationsEditProfileMr implements TranslationsEditProfileEn {
	_TranslationsEditProfileMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफाइल संपादित करा';
	@override late final _TranslationsEditProfileSectionsMr sections = _TranslationsEditProfileSectionsMr._(_root);
	@override String get gender => 'लिंग';
	@override String get dateOfBirth => 'जन्मतारीख';
	@override String get height => 'उंची';
	@override String get weight => 'वजन';
	@override String get weightGoal => 'वजन लक्ष्य';
	@override String get activityLevel => 'क्रियाकलाप पातळी';
	@override String get metric => 'मेट्रिक';
	@override String get imperial => 'इंपीरियल';
	@override String get metricCm => 'मेट्रिक (सेंटिमीटर)';
	@override String get imperialFtIn => 'इंपीरियल (फूट/इंच)';
	@override String get metricKg => 'मेट्रिक (किलोग्राम)';
	@override String get imperialLbs => 'इंपीरियल (पाउंड)';
	@override late final _TranslationsEditProfileGendersMr genders = _TranslationsEditProfileGendersMr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMr weightGoals = _TranslationsEditProfileWeightGoalsMr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsMr activityLevels = _TranslationsEditProfileActivityLevelsMr._(_root);
}

// Path: settings
class _TranslationsSettingsMr implements TranslationsSettingsEn {
	_TranslationsSettingsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'सेटिंग्ज';
	@override late final _TranslationsSettingsSectionsMr sections = _TranslationsSettingsSectionsMr._(_root);
	@override late final _TranslationsSettingsEditProfileMr editProfile = _TranslationsSettingsEditProfileMr._(_root);
	@override late final _TranslationsSettingsLanguageMr language = _TranslationsSettingsLanguageMr._(_root);
	@override late final _TranslationsSettingsHeightUnitMr heightUnit = _TranslationsSettingsHeightUnitMr._(_root);
	@override late final _TranslationsSettingsWeightUnitMr weightUnit = _TranslationsSettingsWeightUnitMr._(_root);
	@override late final _TranslationsSettingsMealRemindersMr mealReminders = _TranslationsSettingsMealRemindersMr._(_root);
	@override late final _TranslationsSettingsThemeMr theme = _TranslationsSettingsThemeMr._(_root);
	@override late final _TranslationsSettingsSendFeedbackMr sendFeedback = _TranslationsSettingsSendFeedbackMr._(_root);
	@override late final _TranslationsSettingsClearAllDataMr clearAllData = _TranslationsSettingsClearAllDataMr._(_root);
	@override late final _TranslationsSettingsDebugOptionsMr debugOptions = _TranslationsSettingsDebugOptionsMr._(_root);
	@override String get developerModeEnabled => 'डेव्हलपर मोड सक्षम झाला आहे!';
}

// Path: reminders
class _TranslationsRemindersMr implements TranslationsRemindersEn {
	_TranslationsRemindersMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'आठवणीसह ट्रॅकवर राहा';
	@override String get description => 'तुमच्या जेवणांचे लॉग करण्यासाठी आणि तुमच्या पोषण लक्ष्याशी स्थिर राहण्यासाठी सौम्य आठवणी मिळवा';
	@override String get notificationsEnabled => 'सूचनाएं सक्षम आहेत';
	@override String get notificationsDisabled => 'सूचनाएं अक्षम आहेत';
	@override String get enabledSubtitle => 'तुम्हाला जेवण आठवणी मिळतील';
	@override String get disabledSubtitle => 'जेवणाच्या आठवणी मिळवण्यासाठी सूचनाएं सक्षम करा';
	@override String get mealReminders => 'जेवणाच्या आठवणी';
	@override String get breakfast => 'नाश्ता';
	@override String get lunch => 'दुपारचे जेवण';
	@override String get dinner => 'रात्रीचे जेवण';
	@override String get snack => 'स्नॅक';
	@override String get unknown => 'अज्ञात';
	@override String get change => 'बदल';
	@override String get enableNotifications => 'सूचनाएं सक्षम करा';
	@override String get skipForNow => 'आता वगळा';
	@override String get saveChanges => 'बदल जतन करा';
	@override String get enabledSuccessfully => 'सूचनाएं यशस्वीरित्या सक्षम झाल्या!';
	@override String get permissionDenied => 'सूचना परवानगी नाकारली';
	@override String errorEnabling({required Object error}) => 'सूचनाएं सक्षम करण्यात त्रुटी: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'सेटअप पूर्ण करण्यात त्रुटी: ${error}';
}

// Path: notifications
class _TranslationsNotificationsMr implements TranslationsNotificationsEn {
	_TranslationsNotificationsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastMr breakfast = _TranslationsNotificationsBreakfastMr._(_root);
	@override late final _TranslationsNotificationsLunchMr lunch = _TranslationsNotificationsLunchMr._(_root);
	@override late final _TranslationsNotificationsDinnerMr dinner = _TranslationsNotificationsDinnerMr._(_root);
	@override late final _TranslationsNotificationsSnackMr snack = _TranslationsNotificationsSnackMr._(_root);
	@override late final _TranslationsNotificationsTestMr test = _TranslationsNotificationsTestMr._(_root);
}

// Path: login
class _TranslationsLoginMr implements TranslationsLoginEn {
	_TranslationsLoginMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'लॉगिन';
	@override String get signInWithGoogle => 'गूगलसह साइन इन करा';
	@override String get signInFailed => 'गूगल साइन-इन अयशस्वी किंवा रद्द केले.';
}

// Path: disclaimer
class _TranslationsDisclaimerMr implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'कृपया लक्षात घ्या';
	@override late final _TranslationsDisclaimerSnapMr snap = _TranslationsDisclaimerSnapMr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateMr weightEstimate = _TranslationsDisclaimerWeightEstimateMr._(_root);
}

// Path: common
class _TranslationsCommonMr implements TranslationsCommonEn {
	_TranslationsCommonMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get close => 'निकाल';
	@override String get kContinue => 'संपूर्ण करा';
}

// Path: errors
class _TranslationsErrorsMr implements TranslationsErrorsEn {
	_TranslationsErrorsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'प्रोफाइल डेटा लोड करण्यास त्रुटी';
	@override String get somethingWentWrong => 'काहीतरी चुकलं.';
}

// Path: debug
class _TranslationsDebugMr implements TranslationsDebugEn {
	_TranslationsDebugMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'डिबग पर्याय';
	@override late final _TranslationsDebugSectionsMr sections = _TranslationsDebugSectionsMr._(_root);
	@override String get showActiveNotifications => 'सक्रिय सूचनाएं दर्शवा';
	@override String get scheduleTestNotification => 'चाचणी सूचना वेळापत्रक ठरवा (10सेकंद)';
	@override String get triggerBreakfastNotification => 'नाश्ता सूचना ट्रिगर करा';
	@override String get cancelAllNotifications => 'सर्व सूचना रद्द करा';
	@override String get activeNotifications => 'सक्रिय सूचनाएं';
	@override String get noTitle => 'कोई शीर्षक नाही';
	@override String get noBody => 'कोई सामग्री नाही';
	@override String get fetchTodaysSteps => 'आजच्या पायऱ्या मिळवा';
	@override String get fetchTodaysCalories => 'आजच्या कॅलोरी मिळवा';
	@override String get fetchLatestWeight => 'ताज्या वजनाचे मिळवा';
	@override String get fetchLatestHeight => 'ताज्या उंचितचे मिळवा';
	@override String get writeTestWeight => 'परीक्षण वजन (70किग्रॅ) लिहा';
	@override String get writeTestHeight => 'परीक्षण उंची (175सेंटीमीटर) लिहा';
	@override String get syncLast7Days => 'गेल्या 7 दिवसांचा समक्रमण करा';
	@override String get sync7DaysTitle => '7-दिवस समक्रमण';
	@override String get checkCurrentLocale => 'सध्या भाषाशुद्धता तपासा';
	@override String get currentLocale => 'सध्या भाषाशुद्धता';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'भाषा: ${languageCode}\nदेश: ${countryCode}\nयुनिट प्रणाली: ${unitSystem}';
	@override String get latestWeight => 'ताजं वजन';
	@override String get latestHeight => 'ताजं उंची';
	@override String get todaysCalories => 'आजच्या कॅलोरी';
	@override String totalCaloriesBurned({required Object calories}) => 'गेल्या 7 दिवसांत जळलेल्या कॅलोरी: ${calories}';
	@override String syncSuccess({required Object count}) => 'गेल्या 7 दिवसात पायऱ्या, कॅलोरी आणि वजन यासाठी ${count} डेटा पॉइंट यशस्वीरित्या मिळवले.';
	@override String get noWeightData => 'गेल्या 30 दिवसात वजन डेटा मिळाला नाही.';
	@override String get noHeightData => 'गेल्या 1 वर्षात उंची डेटा मिळालो नाही.';
	@override String get noCalorieData => 'आजच्या कॅलोरीसाठी डेटा मिळाला नाही.';
	@override String get weightWritten => 'परीक्षण वजन (70किग्रॅ) यशस्वीरित्या लिहले.';
	@override String get weightWriteFailed => 'परीक्षण वजन लिहण्यात अयशस्वी.';
	@override String get heightWritten => 'परीक्षण उंची (175सेंटीमीटर) यशस्वीरित्या लिहले.';
	@override String get heightWriteFailed => 'परीक्षण उंची लिहण्यात अयशस्वी.';
	@override String get noNotifications => 'कोई सक्रिय सूचनाएं नाहीत.';
	@override String get testNotificationScheduled => '10 सेकंदांवर चाचणी सूचना वेळापत्रक ठरवलेली आहे.';
	@override String get testNotificationBody => 'ही चाचणी सूचना 10 सेकंदांवर वेळापत्र्कित आहे.';
	@override String get breakfastNotificationTriggered => 'नाश्ता सूचना ट्रिगर झाला.';
	@override String get allNotificationsCancelled => 'सर्व सूचनाएं रद्द झाल्या.';
	@override String get fetchingData => 'गेल्या 7 दिवसांचा डेटा प्राप्त करत आहे...';
	@override String id({required Object id}) => 'ID: ${id}';
}

// Path: health
class _TranslationsHealthMr implements TranslationsHealthEn {
	_TranslationsHealthMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect शी समक्रमण करण्यात अयशय झाला';
	@override String get mealSynced => 'जेवण Health Connect शी समक्रमित झाला';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesMr implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionMr foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionMr._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisMr aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisMr._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationMr healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationMr._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderMr implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'तुमचा लिंग काय आहे?';
	@override String get description => 'लिंग आपल्याला तुमचा बायसाल मेटाबॉलिक रेट (BMR) अचूकपणे गणना करण्यात मदत करते.';
	@override String get next => 'पुढे';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightMr implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'तुमची उंची किती आहे?';
	@override String get description => 'तुमची उंची आपल्याला तुमचा BMI आणि ऊर्जा आवश्यकतांमध्ये अचूकपणे गणना करण्यात मदत करते.';
	@override String get metric => 'मेट्रिक';
	@override String get imperial => 'इंपीरियल';
	@override String get next => 'पुढे';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightMr implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'तुमचा वर्तमान वजन काय आहे?';
	@override String get currentDescription => 'तुमचे वर्तमान वजन आपल्या दैनिक लक्ष्यांनुसार वैयक्तिकृत करण्यासाठी महत्वाचे आहे.';
	@override String get targetTitle => 'तुमचा लक्ष्य वजन काय आहे?';
	@override String get targetDescription => 'लक्ष्य वजन निश्चित करणे आपल्याला तुमच्या दीर्घकालीन योजनेचे निर्धारण करण्यात मदत करते.';
	@override String get metric => 'मेट्रिक';
	@override String get imperial => 'इंपीरियल';
	@override String get next => 'पुढे';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeMr implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'तुमचा जन्मदिन कोणता आहे?';
	@override String get description => 'तुमचे वय आपल्या कॅलोरी आवश्यकतांमध्ये अचूकपणे गणना करण्यात मदत करते.';
	@override String get next => 'पुढे';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleMr implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'कमी वजन';
	@override String get healthy => 'आरोग्यपूर्ण';
	@override String get overweight => 'अधिक वजन';
	@override String get obese => 'स्थूल';
	@override late final _TranslationsOnboardingBmiScaleCategoriesMr categories = _TranslationsOnboardingBmiScaleCategoriesMr._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesMr messages = _TranslationsOnboardingBmiScaleMessagesMr._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalMr implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'तुमचा उद्देश काय आहे?';
	@override String get description => 'जो उद्देश तुम्हाला साध्य करायचा आहे तो निवडा';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelMr implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'तुम्ही किती सक्रिय आहात?';
	@override String get description => 'हे आपल्याला अधिक अचूक प्रकारे तुमच्या दैनिक कॅलोरी आवश्यकतांमध्ये गणना करण्यात मदत करते';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectMr implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect शी संपर्क साधा';
	@override String get description => 'चांगल्या अंतर्दृष्टीसाठी तुमच्या आरोग्य डेटा समक्रमित करा आणि स्वयंचलित कॅलोरी ट्रॅकिंग मिळवा';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingMr automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingMr._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsMr progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsMr._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationMr seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationMr._(_root);
	@override String get connected => 'Health Connect जोडलेलं आहे';
	@override String get notConnected => 'Health Connect जोडलेलं नाही';
	@override String get setup => 'Health Connect सेटअप करा';
	@override String get skipForNow => 'आता वगळा';
	@override String get statusConnected => 'Health Connect जोडलेलं आहे.';
	@override String get statusSuccess => 'Health Connect यशस्वीरित्या जोडले गेले आहे!';
	@override String statusPermissionDenied({required Object appLabel}) => 'परवानगी नाकारली. ${appLabel} साठी तुमच्या फोन सेटिंग्ज वापरून Health Connectची परवानग्या सक्षम करा.';
	@override String statusError({required Object error}) => 'Health Connect सेटअप करताना त्रुटी: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementMr implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessMr trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessMr._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileMr healthProfile = _TranslationsOnboardingReinforcementHealthProfileMr._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleMr goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleMr._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalMr implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'तुमचा दैनिक लक्ष्य सेट करा';
	@override String get titleSet => 'तुमचा दैनिक लक्ष्य';
	@override String get description => 'तुमच्या आरोग्य प्रवासावर प्रारंभ करण्यासाठी, खाली तुमचा दैनिक कॅलोरी लक्ष्य सेट करा.';
	@override String get descriptionSet => 'तुमचा गाइड सेट झाला आहे! हा तुमचा दैनिक कॅलोरी लक्ष्य आहे.';
	@override String get yourGoal => 'तुमचा लक्ष्य';
	@override String get dailyCalories => 'दैनिक कॅलोरी (कैलोरी)';
	@override String get setGoal => 'लक्ष्य सेट करा';
	@override String get intake => 'आहार';
	@override String get burned => 'जळलेले';
	@override String get weightImpact => 'वजन परिणाम';
	@override String get estLoss => 'अनुमानित कमी';
	@override String get estGain => 'अनुमानित वाढ';
	@override String get kcal => 'कॅलोरी';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryMr implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'दैनिक सारांश';
	@override String get calories => 'कॅलोरी';
	@override String get carbs => 'कार्ब्स';
	@override String get protein => 'प्रोटीन';
	@override String get fat => 'तळ';
	@override String get fiber => 'आहार तंतू';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressMr implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'आजच्या मॅक्रो स्प्लिट';
	@override String get target => 'लक्ष्य';
	@override String get current => 'सध्याचे';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryMr implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => '7-दिवस मॅक्रो इतिहास';
	@override String get noHistoryYet => 'अद्याप कोणता इतिहास नाही';
	@override String get startLogging => 'तुमच्या 7-दिवस मॅक्रो ट्रेंड येथे पाहण्यासाठी जेवण लॉगिंग प्रारंभ करा';
}

// Path: home.mealLog
class _TranslationsHomeMealLogMr implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'लॉग केलेले जेवण';
	@override String get emptyMessage => 'तुमच्या शेवटच्या जेवणाचा फोटो घेऊन येथे लॉग करा.';
	@override String get noMealsToday => 'आज कोणतीही जेवण नोंदलेले नाही';
	@override String get seeAllMeals => 'सर्व जेवण पहा';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionMr implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI सह तात्काळ जोडा';
	@override String get description => 'तुमच्या जेवणाचे वर्णन करा, आणि AI तपशील हाताळू दे.';
	@override String get hint => 'उदाहरणार्थ, मला नाश्त्यासाठी एका मोठ्या ताटात ओट्स आणि एका कापलेल्या केळीच्या स्कूप सह ...';
	@override String get analyzeMeal => 'जेवणाचे विश्लेषण करा';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsMr implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'आवडती जेवण';
	@override String get description => 'तुमच्या आवडत्या जेवणांपैकी एक झटपट जोडा.';
	@override String get noFavorites => 'अद्याप कोणतीही आवडती जेवण नाही.';
	@override String get addFavoriteHint => 'आवडत्या म्हणून ठरवण्यासाठी एका जेवणावर तारा क्लिक करा.';
	@override String get seeAll => 'सर्व पहा';
	@override String get add => 'जोडा';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapMr implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'फोटो काढा आणि आपल्या जेवणाचे ट्रॅक करा';
	@override String get description => 'AI विश्लेषणासाठी तुमल्या फूडचा फोटो काढण्यासाठी तुमचा कॅमेरा वापरा.';
	@override String get openCamera => 'कॅमेरा उघडा';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthMr implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect शी समक्रमित करा';
	@override String get description => 'तुमचे पोषण डेटा Health Connect सह समक्रमित करा';
	@override String get install => 'इंस्टॉल करा';
	@override String get connect => 'जोडा';
}

// Path: meal.nutrition
class _TranslationsMealNutritionMr implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get calories => 'कॅलोरी';
	@override String get carbs => 'कार्ब्स (ग्रॅम)';
	@override String get protein => 'प्रोटीन (ग्रॅम)';
	@override String get fat => 'तळ (ग्रॅम)';
	@override String get fiber => 'आहार तंतू (ग्रॅम)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationMr implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'जेवण हटवा';
	@override String get message => 'तुम्ही हे जेवण नोंद हटवू इच्छिता का?';
	@override String get cancel => 'रद्द करा';
	@override String get delete => 'हटवा';
}

// Path: profile.sections
class _TranslationsProfileSectionsMr implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'प्रोफाइल';
	@override String get basicInformation => 'मूलभूत माहिती';
	@override String get goalsAndActivity => 'उद्दिष्टे आणि क्रियाकलाप';
	@override String get calculatedValues => 'गणना केलेले मूल्य';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesMr implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'दैनिक लक्ष्य';
	@override String get calPerDay => 'कॅल/दिवस';
	@override String get notAvailable => 'उपलब्ध नाही';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsMr implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'व्यक्तिगत माहिती';
	@override String get physicalMeasurements => 'शारीरिक मोजमाप';
	@override String get goalsAndActivity => 'उद्दिष्टे आणि क्रियाकलाप';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersMr implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get male => 'पुरुष';
	@override String get female => 'महिला';
	@override String get other => 'इतर';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsMr implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightMr loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightMr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightMr maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightMr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightMr gainWeight = _TranslationsEditProfileWeightGoalsGainWeightMr._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsMr implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryMr sedentary = _TranslationsEditProfileActivityLevelsSedentaryMr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveMr lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveMr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveMr moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveMr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveMr veryActive = _TranslationsEditProfileActivityLevelsVeryActiveMr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveMr extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveMr._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsMr implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'प्रोफाइल';
	@override String get localization => 'आंतरराष्ट्रीयकरण';
	@override String get notifications => 'सूचना';
	@override String get supportAndLegal => 'सहाय्य आणि कायदेशीर';
	@override String get dangerZone => 'धोकादायक क्षेत्र';
	@override String get developer => 'डेव्हलपर';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileMr implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफाइल संपादित करा';
	@override String get subtitle => 'तुमची वैयक्तिक माहिती अद्यतनित करा';
}

// Path: settings.language
class _TranslationsSettingsLanguageMr implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'भाषा';
	@override String get subtitle => 'तुमची आवडती भाषा निवडा';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitMr implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'उंचाई युनिट';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitMr implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'वजन युनिट';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersMr implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'जेवणाच्या आठवणी';
	@override String get subtitle => 'वेळेवर सूचना करून मार्गदर्शन करा';
}

// Path: settings.theme
class _TranslationsSettingsThemeMr implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'थीम';
	@override String get subtitle => 'तुमची आवडती थीम निवडा';
	@override String get light => 'प्रकाशित';
	@override String get dark => 'काळा';
	@override String get system => 'सिस्टम';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackMr implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'अभिप्राय पाठवा';
	@override String subtitle({required Object appLabel}) => '${appLabel} सुधारण्यासाठी मदत करा';
	@override String emailSubject({required Object appLabel}) => '${appLabel} अँप अभिप्राय';
	@override String get emailBodyPrefix => 'कृपया खाली तुमचा अभिप्राय द्या:';
	@override String get appVersion => 'अँप आवृत्ती';
	@override String get device => 'यंत्र';
	@override String get osVersion => 'OS आवृत्ती';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataMr implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'सर्व डेटा हजामती';
	@override String get subtitle => 'तुमची सर्व माहिती अशक्तपणे हटवा';
	@override String get confirmationTitle => 'सर्व डेटा हजामती?';
	@override String get confirmationMessage => 'ही क्रिया रद्द केली जाऊ शकत नाही. तुमची सर्व नोंदलेली जेवणं, आवडत्या, आणि प्रोफाइल सेटिंग्ज कायमच्या हटविल्या जातील.';
	@override String get cancel => 'रद्द करा';
	@override String get clearEverything => 'सर्व हजामती';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsMr implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'डिबग पर्याय';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastMr implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'नाश्ता वेळ! 🍳';
	@override String get body => 'तुमचा नाश्ता लॉग करायला विसरू नका';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchMr implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'दुपारचे जेवण! 🥗';
	@override String get body => 'तुमचा दुपारचा जेवण लॉग करण्याची वेळ';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerMr implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'रात्रीचे जेवण! 🍽️';
	@override String get body => 'तुमचा रात्रीचा जेवण लॉग करायला विसरू नका';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackMr implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्नॅक वेळ! 🍎';
	@override String get body => 'आरोग्यदायी स्नॅकचा वेळ';
}

// Path: notifications.test
class _TranslationsNotificationsTestMr implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'चाचणी सूचना';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapMr implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} अंदाजित पोषण माहिती प्रदान करते. अचूकता तुमच्या इनपुट आणि खाद्य वैकल्पिकतेवर अवलंबून आहे. मार्गदर्शक म्हणून वापरा, नथेच एक अंतिम स्रोत नाही. वैयक्तिक आहार सल्ल्यासाठी नेहमी एक व्यावसायिकांशी सल्ला घ्या.';
	@override late final _TranslationsDisclaimerSnapPortionSizeMr portionSize = _TranslationsDisclaimerSnapPortionSizeMr._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsMr preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsMr._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsMr ingredients = _TranslationsDisclaimerSnapIngredientsMr._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsMr databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsMr._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateMr implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'वजन अंदाजाबद्दल';
	@override String get description => 'अंदाजित वजन बदल एक साधा कॅलोरी-इन विरुद्ध कॅलोरी-आउट मॉडेलावर आधारित आहे. हे प्रेरणादायी मार्गदर्शकासाठी केवळ असते, तुमच्या वास्तविक वजनाच्या गणनेच्या रूपात नाही.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyMr calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyMr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsMr biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsMr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightMr waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightMr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceMr professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceMr._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsMr implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'सूचना';
	@override String get healthConnect => 'Health Connect';
	@override String get appInfo => 'अँप माहिती';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionMr implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्मार्ट फूड ओळख';
	@override String get description => 'एक फोटो घेऊन AI ला तुमचा आहार ओळखू द्या';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisMr implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI विश्लेषण';
	@override String get description => 'तुमच्या वर्णनांमधून क्षणात पोषण माहिती मिळवा';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationMr implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'आरोग्य एकत्रीकरण';
	@override String get description => 'चांगल्या तज्ञांसाठी Health Connect शी संपर्क साधा';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesMr implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'कमी वजन';
	@override String get healthyWeight => 'आरोग्यपूर्ण वजन';
	@override String get overweight => 'अधिक वजन';
	@override String get obese => 'स्थूल';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesMr implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'आम्ही तुम्हाला पोषणयुक्त आहारासह संतुलित वजन गाठण्यासाठी आरोग्यपूर्ण योजना तयार करण्यात मदत करू.';
	@override String get healthy => 'चांगला काम! तुम्ही आरोग्यपूर्ण श्रेणीमध्ये आहात. आम्ही तुम्हाला तुमच्या जीवनशक्ती आणि ऊर्जा स्तर राखण्यासाठी मदत करू.';
	@override String overweight({required Object appLabel}) => '${appLabel} तुम्हाला आरामात तुमच्या लक्षात गाठण्यासाठी AI-सक्षम ट्रॅकिंगसह तुमचा प्रवास सहज करेल.';
	@override String get obese => 'आम्ही तुम्हाला वैयक्तिकृत मार्गदर्शन आणि तुमच्या आरोग्याच्या उद्दिष्टांसाठी टिकाऊ धोरणे प्रकट करण्यात मदत करण्यासाठी येथे आहोत.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingMr implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्वयंचलित कॅलोरी ट्रॅकिंग';
	@override String get description => 'तुमच्या फिटनेस अॅपमधून जळलेल्या कॅलोरी ट्रॅक करा';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsMr implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रगतीचा आढावा';
	@override String get description => 'तुमच्या आरोग्याच्या प्रगती ट्रेंडमध्ये सखोल अंतर्दृष्टी मिळवा';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationMr implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'सुचारु समाकलन';
	@override String get description => 'तुमच्या आवडत्या आरोग्य Apps पासून डेटा समक्रमित करा';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessMr implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'तुम्ही एकटे नाही';
	@override String get genericMessage => 'संशोधनाने सिद्ध केले आहे की सतत ट्रॅकिंग दीर्घकालीन यशाचा #1 संकेत आहे.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'एक ${age} वर्षांचा ${gender} जो ${goal} साधायचा आहे, त्याच्या यशाचा #1 संकेत सतत ट्रॅकिंग आहे.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} हे manually करण्यापेक्षा 10x सोपे बनवितो.';
	@override String get getStartedTitle => 'आरंभ करण्यासाठी तयार आहात?';
	@override String get tipPhoto => 'तुमच्या खाण्याच्या गोष्टींचा फोटो घ्या त्वरित विश्लेषणासाठी';
	@override String get tipConsistency => 'महत्त्वपूर्ण प्रगती पाहण्यासाठी स्थिरपणे लॉग करा';
	@override String get tipProgress => 'प्रेरित रहाण्यासाठी दररोज तुमची प्रगती ट्रॅक करा';
	@override String get button => 'चला';
	@override String get defaultGender => 'व्यक्ती';
	@override String get defaultGoal => 'आरोग्यपूर्ण तुम्ही';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileMr implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'तुमचा आरोग्य प्रोफाइल';
	@override String bmiDescription({required Object bmi}) => 'तुमच्या मेट्रिक्सच्या आधारे, तुमचा BMI आहे ${bmi}.';
	@override String get finalizeDescription => 'चालू सेवा वैयक्तिकृत करण्यासाठी तुमचा प्रोफाइल पूर्ण करूया.';
	@override String get goalGain => 'वाढणे';
	@override String get goalLose => 'लॉस';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'तुमच्या लक्ष्य साध्य करण्यासाठी तुम्हाला ${direction} ${diff} ${unit} आवश्यक आहे.';
	@override String get goalReached => 'तुम्ही तुमच्या लक्ष्य वजनावर असाल! आम्ही तुम्हाला ते राखण्यात मदत करू.';
	@override String get button => 'चला';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleMr implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'उत्कृष्ट सुरुवात!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'तुम्ही ${goalText} च्या दिशेने पहिल्या पायऱ्यावर आहात. तुम्ही ${activityText} आहात, ${appLabel} तुमच्या जीवनशैलीशी जुळवून तुमचे लक्ष्य समायोजित करेल.';
	@override String get personalizedTargets => 'वैयक्तिकृत कॅलोरी लक्ष्य';
	@override String get aiMealDetection => 'AI-सक्षम आहार शोध';
	@override String get macroBreakdowns => 'सखोल मॅक्रो-न्यूट्रींट विभाजने';
	@override String get button => 'चला';
	@override String get defaultGoal => 'तुमच्या लक्ष्यांनुसार';
	@override String get defaultActivity => 'सक्रिय';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightMr implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get name => 'वजन कमी';
	@override String get description => 'वजन कमी करण्यासाठी कॅलोरी कमी करा';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightMr implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get name => 'वजन राखणे';
	@override String get description => 'तुमचे वर्तमान वजन राखा';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightMr implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get name => 'वजन वाढवा';
	@override String get description => 'वजन वाढवण्यासाठी कॅलोरी वाढवा';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryMr implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get name => 'अवसाधित';
	@override String get description => 'कमी करून व्यायाम';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveMr implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get name => 'थोडा सक्रिय';
	@override String get description => 'प्रति आठवड्यात 1-3 दिवस हलका व्यायाम';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveMr implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get name => 'मध्यम सक्रिय';
	@override String get description => 'प्रति आठवड्यात 3-5 दिवस मध्यम व्यायाम';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveMr implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get name => 'अतिसक्रिय';
	@override String get description => 'प्रति आठवड्यात 6-7 दिवस कठोर व्यायाम';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveMr implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get name => 'अतिशक्तिशाली';
	@override String get description => 'अत्यंत कठोर व्यायाम, शारीरिक काम';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeMr implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'पोषणाकरता प्रमाण';
	@override String get description => 'अंदाजांच्या अचूकतेसाठी तुमच्या प्रमाणाच्या अचूक मूल्यांकनावर अवलंबून आहे.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsMr implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'तयारी पद्धती';
	@override String description({required Object appLabel}) => 'पाकक कला खाद्य पदार्थांच्या पोषण घटकावर लक्षणीय प्रभाव निर्माण करू शकते. ${appLabel} च्या अंदाजाने या बदलांचा आपल्याला कधी कधी विचार केला नाही.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsMr implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'घटक';
	@override String get description => 'अनेक लपलेल्या घटक असलेल्या जटिल पदार्थांमुळे कमी अचुकतेची अंदाज येऊ शकतात.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsMr implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'डेटाबेस मर्यादा';
	@override String description({required Object appLabel}) => '${appLabel} चा फूड डेटाबेस विस्तृत आहे पण प्रत्येक खाद्य वस्तू किंवा विकल्प समाविष्ट करत नाही.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyMr implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'कॅलोरी अचूकता';
	@override String get description => 'या अंदाजाची अचूकता तुम्ही ट्रॅक केलेल्या कॅलोरी इनटेक आणि खर्चावर अवलंबून आहे. चुकीच्या लॉगिंगमुळे अयोग्य कल्पना येईल.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsMr implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'जैविक घटक';
	@override String description({required Object appLabel}) => 'खरंच वजन कमी/वाढ त्याच्यातील मेटाबॉलिझम, हार्मोन्स, झोप, ताण, जलयोजन आणि इतर वैयक्तिक घटकांवर अवलंबून असतात जे ${appLabel} मोजू शकत नाही.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightMr implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'जल वजन आणि झुकाव';
	@override String get description => 'सामान्य दैनिक वजन जल संरक्षण, पचन आणि वेळेसाठी लक्षणीय प्रमाणात बदलू शकते. या अंदाजात या दैनिक बदलांचा विचार केलेला नाही.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceMr implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceMr._(this._root);

	final TranslationsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'व्यावसायिक मार्गदर्शन';
	@override String get description => 'या अंदाजाचा उपयोग वैद्यकीय निर्णय घेण्यासाठी करू नका. वैयक्तिक वजन व्यवस्थापन सल्ल्यासाठी नेहमी एक आरोग्य व्यावसायिक किंवा प्रर registrations आहारतज्ञांची सल्ला घ्या.';
}

/// The flat map containing all translations for locale <mr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsMr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'मराठी',
			'flag' => '🇮🇳',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel} मध्ये स्वागत आहे',
			'onboarding.subtitle' => 'AI द्वारे समर्थित आपल्या वैयक्तिक आहार सहकारी',
			'onboarding.getStarted' => 'आरंभ करा',
			'onboarding.features.foodRecognition.title' => 'स्मार्ट फूड ओळख',
			'onboarding.features.foodRecognition.description' => 'एक फोटो घेऊन AI ला तुमचा आहार ओळखू द्या',
			'onboarding.features.aiAnalysis.title' => 'AI विश्लेषण',
			'onboarding.features.aiAnalysis.description' => 'तुमच्या वर्णनांमधून क्षणात पोषण माहिती मिळवा',
			'onboarding.features.healthIntegration.title' => 'आरोग्य एकत्रीकरण',
			'onboarding.features.healthIntegration.description' => 'चांगल्या तज्ञांसाठी Health Connect शी संपर्क साधा',
			'onboarding.gender.title' => 'तुमचा लिंग काय आहे?',
			'onboarding.gender.description' => 'लिंग आपल्याला तुमचा बायसाल मेटाबॉलिक रेट (BMR) अचूकपणे गणना करण्यात मदत करते.',
			'onboarding.gender.next' => 'पुढे',
			'onboarding.height.title' => 'तुमची उंची किती आहे?',
			'onboarding.height.description' => 'तुमची उंची आपल्याला तुमचा BMI आणि ऊर्जा आवश्यकतांमध्ये अचूकपणे गणना करण्यात मदत करते.',
			'onboarding.height.metric' => 'मेट्रिक',
			'onboarding.height.imperial' => 'इंपीरियल',
			'onboarding.height.next' => 'पुढे',
			'onboarding.weight.currentTitle' => 'तुमचा वर्तमान वजन काय आहे?',
			'onboarding.weight.currentDescription' => 'तुमचे वर्तमान वजन आपल्या दैनिक लक्ष्यांनुसार वैयक्तिकृत करण्यासाठी महत्वाचे आहे.',
			'onboarding.weight.targetTitle' => 'तुमचा लक्ष्य वजन काय आहे?',
			'onboarding.weight.targetDescription' => 'लक्ष्य वजन निश्चित करणे आपल्याला तुमच्या दीर्घकालीन योजनेचे निर्धारण करण्यात मदत करते.',
			'onboarding.weight.metric' => 'मेट्रिक',
			'onboarding.weight.imperial' => 'इंपीरियल',
			'onboarding.weight.next' => 'पुढे',
			'onboarding.age.title' => 'तुमचा जन्मदिन कोणता आहे?',
			'onboarding.age.description' => 'तुमचे वय आपल्या कॅलोरी आवश्यकतांमध्ये अचूकपणे गणना करण्यात मदत करते.',
			'onboarding.age.next' => 'पुढे',
			'onboarding.bmiScale.underweight' => 'कमी वजन',
			'onboarding.bmiScale.healthy' => 'आरोग्यपूर्ण',
			'onboarding.bmiScale.overweight' => 'अधिक वजन',
			'onboarding.bmiScale.obese' => 'स्थूल',
			'onboarding.bmiScale.categories.underweight' => 'कमी वजन',
			'onboarding.bmiScale.categories.healthyWeight' => 'आरोग्यपूर्ण वजन',
			'onboarding.bmiScale.categories.overweight' => 'अधिक वजन',
			'onboarding.bmiScale.categories.obese' => 'स्थूल',
			'onboarding.bmiScale.messages.underweight' => 'आम्ही तुम्हाला पोषणयुक्त आहारासह संतुलित वजन गाठण्यासाठी आरोग्यपूर्ण योजना तयार करण्यात मदत करू.',
			'onboarding.bmiScale.messages.healthy' => 'चांगला काम! तुम्ही आरोग्यपूर्ण श्रेणीमध्ये आहात. आम्ही तुम्हाला तुमच्या जीवनशक्ती आणि ऊर्जा स्तर राखण्यासाठी मदत करू.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} तुम्हाला आरामात तुमच्या लक्षात गाठण्यासाठी AI-सक्षम ट्रॅकिंगसह तुमचा प्रवास सहज करेल.',
			'onboarding.bmiScale.messages.obese' => 'आम्ही तुम्हाला वैयक्तिकृत मार्गदर्शन आणि तुमच्या आरोग्याच्या उद्दिष्टांसाठी टिकाऊ धोरणे प्रकट करण्यात मदत करण्यासाठी येथे आहोत.',
			'onboarding.weightGoal.title' => 'तुमचा उद्देश काय आहे?',
			'onboarding.weightGoal.description' => 'जो उद्देश तुम्हाला साध्य करायचा आहे तो निवडा',
			'onboarding.activityLevel.title' => 'तुम्ही किती सक्रिय आहात?',
			'onboarding.activityLevel.description' => 'हे आपल्याला अधिक अचूक प्रकारे तुमच्या दैनिक कॅलोरी आवश्यकतांमध्ये गणना करण्यात मदत करते',
			'onboarding.healthConnect.title' => 'Health Connect शी संपर्क साधा',
			'onboarding.healthConnect.description' => 'चांगल्या अंतर्दृष्टीसाठी तुमच्या आरोग्य डेटा समक्रमित करा आणि स्वयंचलित कॅलोरी ट्रॅकिंग मिळवा',
			'onboarding.healthConnect.automaticTracking.title' => 'स्वयंचलित कॅलोरी ट्रॅकिंग',
			'onboarding.healthConnect.automaticTracking.description' => 'तुमच्या फिटनेस अॅपमधून जळलेल्या कॅलोरी ट्रॅक करा',
			'onboarding.healthConnect.progressInsights.title' => 'प्रगतीचा आढावा',
			'onboarding.healthConnect.progressInsights.description' => 'तुमच्या आरोग्याच्या प्रगती ट्रेंडमध्ये सखोल अंतर्दृष्टी मिळवा',
			'onboarding.healthConnect.seamlessIntegration.title' => 'सुचारु समाकलन',
			'onboarding.healthConnect.seamlessIntegration.description' => 'तुमच्या आवडत्या आरोग्य Apps पासून डेटा समक्रमित करा',
			'onboarding.healthConnect.connected' => 'Health Connect जोडलेलं आहे',
			'onboarding.healthConnect.notConnected' => 'Health Connect जोडलेलं नाही',
			'onboarding.healthConnect.setup' => 'Health Connect सेटअप करा',
			'onboarding.healthConnect.skipForNow' => 'आता वगळा',
			'onboarding.healthConnect.statusConnected' => 'Health Connect जोडलेलं आहे.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect यशस्वीरित्या जोडले गेले आहे!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'परवानगी नाकारली. ${appLabel} साठी तुमच्या फोन सेटिंग्ज वापरून Health Connectची परवानग्या सक्षम करा.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect सेटअप करताना त्रुटी: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'तुम्ही एकटे नाही',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'संशोधनाने सिद्ध केले आहे की सतत ट्रॅकिंग दीर्घकालीन यशाचा #1 संकेत आहे.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'एक ${age} वर्षांचा ${gender} जो ${goal} साधायचा आहे, त्याच्या यशाचा #1 संकेत सतत ट्रॅकिंग आहे.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} हे manually करण्यापेक्षा 10x सोपे बनवितो.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'आरंभ करण्यासाठी तयार आहात?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'तुमच्या खाण्याच्या गोष्टींचा फोटो घ्या त्वरित विश्लेषणासाठी',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'महत्त्वपूर्ण प्रगती पाहण्यासाठी स्थिरपणे लॉग करा',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'प्रेरित रहाण्यासाठी दररोज तुमची प्रगती ट्रॅक करा',
			'onboarding.reinforcement.trackingSuccess.button' => 'चला',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'व्यक्ती',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'आरोग्यपूर्ण तुम्ही',
			'onboarding.reinforcement.healthProfile.title' => 'तुमचा आरोग्य प्रोफाइल',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'तुमच्या मेट्रिक्सच्या आधारे, तुमचा BMI आहे ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'चालू सेवा वैयक्तिकृत करण्यासाठी तुमचा प्रोफाइल पूर्ण करूया.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'वाढणे',
			'onboarding.reinforcement.healthProfile.goalLose' => 'लॉस',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'तुमच्या लक्ष्य साध्य करण्यासाठी तुम्हाला ${direction} ${diff} ${unit} आवश्यक आहे.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'तुम्ही तुमच्या लक्ष्य वजनावर असाल! आम्ही तुम्हाला ते राखण्यात मदत करू.',
			'onboarding.reinforcement.healthProfile.button' => 'चला',
			'onboarding.reinforcement.goalLifestyle.title' => 'उत्कृष्ट सुरुवात!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'तुम्ही ${goalText} च्या दिशेने पहिल्या पायऱ्यावर आहात. तुम्ही ${activityText} आहात, ${appLabel} तुमच्या जीवनशैलीशी जुळवून तुमचे लक्ष्य समायोजित करेल.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'वैयक्तिकृत कॅलोरी लक्ष्य',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-सक्षम आहार शोध',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'सखोल मॅक्रो-न्यूट्रींट विभाजने',
			'onboarding.reinforcement.goalLifestyle.button' => 'चला',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'तुमच्या लक्ष्यांनुसार',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'सक्रिय',
			'tabs.dashboard' => 'डॅशबोर्ड',
			'tabs.history' => 'इतिहास',
			'home.dailyGoal.title' => 'तुमचा दैनिक लक्ष्य सेट करा',
			'home.dailyGoal.titleSet' => 'तुमचा दैनिक लक्ष्य',
			'home.dailyGoal.description' => 'तुमच्या आरोग्य प्रवासावर प्रारंभ करण्यासाठी, खाली तुमचा दैनिक कॅलोरी लक्ष्य सेट करा.',
			'home.dailyGoal.descriptionSet' => 'तुमचा गाइड सेट झाला आहे! हा तुमचा दैनिक कॅलोरी लक्ष्य आहे.',
			'home.dailyGoal.yourGoal' => 'तुमचा लक्ष्य',
			'home.dailyGoal.dailyCalories' => 'दैनिक कॅलोरी (कैलोरी)',
			'home.dailyGoal.setGoal' => 'लक्ष्य सेट करा',
			'home.dailyGoal.intake' => 'आहार',
			'home.dailyGoal.burned' => 'जळलेले',
			'home.dailyGoal.weightImpact' => 'वजन परिणाम',
			'home.dailyGoal.estLoss' => 'अनुमानित कमी',
			'home.dailyGoal.estGain' => 'अनुमानित वाढ',
			'home.dailyGoal.kcal' => 'कॅलोरी',
			'home.dailySummary.title' => 'दैनिक सारांश',
			'home.dailySummary.calories' => 'कॅलोरी',
			'home.dailySummary.carbs' => 'कार्ब्स',
			'home.dailySummary.protein' => 'प्रोटीन',
			'home.dailySummary.fat' => 'तळ',
			'home.dailySummary.fiber' => 'आहार तंतू',
			'home.intakeProgress.title' => 'आजच्या मॅक्रो स्प्लिट',
			'home.intakeProgress.target' => 'लक्ष्य',
			'home.intakeProgress.current' => 'सध्याचे',
			'home.intakeHistory.title' => '7-दिवस मॅक्रो इतिहास',
			'home.intakeHistory.noHistoryYet' => 'अद्याप कोणता इतिहास नाही',
			'home.intakeHistory.startLogging' => 'तुमच्या 7-दिवस मॅक्रो ट्रेंड येथे पाहण्यासाठी जेवण लॉगिंग प्रारंभ करा',
			'home.mealLog.title' => 'लॉग केलेले जेवण',
			'home.mealLog.emptyMessage' => 'तुमच्या शेवटच्या जेवणाचा फोटो घेऊन येथे लॉग करा.',
			'home.mealLog.noMealsToday' => 'आज कोणतीही जेवण नोंदलेले नाही',
			'home.mealLog.seeAllMeals' => 'सर्व जेवण पहा',
			'home.mealDescription.title' => 'AI सह तात्काळ जोडा',
			'home.mealDescription.description' => 'तुमच्या जेवणाचे वर्णन करा, आणि AI तपशील हाताळू दे.',
			'home.mealDescription.hint' => 'उदाहरणार्थ, मला नाश्त्यासाठी एका मोठ्या ताटात ओट्स आणि एका कापलेल्या केळीच्या स्कूप सह ...',
			'home.mealDescription.analyzeMeal' => 'जेवणाचे विश्लेषण करा',
			'home.favoriteMeals.title' => 'आवडती जेवण',
			'home.favoriteMeals.description' => 'तुमच्या आवडत्या जेवणांपैकी एक झटपट जोडा.',
			'home.favoriteMeals.noFavorites' => 'अद्याप कोणतीही आवडती जेवण नाही.',
			'home.favoriteMeals.addFavoriteHint' => 'आवडत्या म्हणून ठरवण्यासाठी एका जेवणावर तारा क्लिक करा.',
			'home.favoriteMeals.seeAll' => 'सर्व पहा',
			'home.favoriteMeals.add' => 'जोडा',
			'home.mealSnap.title' => 'फोटो काढा आणि आपल्या जेवणाचे ट्रॅक करा',
			'home.mealSnap.description' => 'AI विश्लेषणासाठी तुमल्या फूडचा फोटो काढण्यासाठी तुमचा कॅमेरा वापरा.',
			'home.mealSnap.openCamera' => 'कॅमेरा उघडा',
			'home.connectHealth.title' => 'Health Connect शी समक्रमित करा',
			'home.connectHealth.description' => 'तुमचे पोषण डेटा Health Connect सह समक्रमित करा',
			'home.connectHealth.install' => 'इंस्टॉल करा',
			'home.connectHealth.connect' => 'जोडा',
			'history.noMeals' => 'कोणतीही जेवण नोंदलेली नाही',
			'history.emptyMessage' => 'तुमच्या शेवटच्या जेवणाचा फोटो घेऊन येथे लॉग करा.',
			'history.today' => 'आज',
			'history.yesterday' => 'गेल्या दिवस',
			'meal.ohNo' => 'अरेरे!',
			'meal.delete' => 'Delete',
			'meal.editMeal' => 'जेवण संपादित करा',
			'meal.addMeal' => 'जेवण जोडा',
			'meal.saveMeal' => 'जेवण जतन करा',
			'meal.save' => 'जतन करा',
			'meal.mealName' => 'जेवणाचे नाव',
			'meal.mealQuantity' => 'जेवणाचे प्रमाण',
			'meal.mealQuantityHint' => 'उदाहरणार्थ, 1 ताट, 2 तुकडे',
			'meal.timeOfMeal' => 'जेवणाची वेळ',
			'meal.timeOfMealHint' => 'तुम्ही जेव्हा तुमचे जेवण केले तेव्हा वेळ निवडा',
			'meal.mealType' => 'जेवणाचा प्रकार',
			'meal.nutrition.calories' => 'कॅलोरी',
			'meal.nutrition.carbs' => 'कार्ब्स (ग्रॅम)',
			'meal.nutrition.protein' => 'प्रोटीन (ग्रॅम)',
			'meal.nutrition.fat' => 'तळ (ग्रॅम)',
			'meal.nutrition.fiber' => 'आहार तंतू (ग्रॅम)',
			'meal.deleteConfirmation.title' => 'जेवण हटवा',
			'meal.deleteConfirmation.message' => 'तुम्ही हे जेवण नोंद हटवू इच्छिता का?',
			'meal.deleteConfirmation.cancel' => 'रद्द करा',
			'meal.deleteConfirmation.delete' => 'हटवा',
			'meal.addedToLog' => 'जेवण तुमच्या नोंदीत जोडले गेले!',
			'meal.couldNotAdd' => ({required Object error}) => 'जेवण जोडता येईल नाही: ${error}',
			'meal.removedFromFavorites' => 'आवडत्या सूचीतील काढले!',
			'meal.savedAsFavorite' => 'जेवण आवडते म्हणून जतन केले!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'आवडत्या अद्यतन करता येऊ शकत नाही: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'प्रक्रियेत अयशस्वी: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'प्रतिमा प्रक्रियेत अयशस्वी: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'प्रतिमा संकुचनात त्रुटी: ${error}',
			'meal.failedToSave' => 'डेटा जतन करण्यात अयशस्वी झाले. कृपया पुन्हा प्रयत्न करा.',
			'favorites.title' => 'आवडत्या',
			'favorites.empty' => 'अद्याप कोणतीही आवडती जेवण नाही.',
			'profile.title' => 'प्रोफाइल',
			'profile.noProfileData' => 'कोई प्रोफाइल डेटा नाही',
			'profile.yourProfile' => 'तुमचा प्रोफाइल',
			'profile.viewAndManage' => 'तुमची आरोग्य माहिती पहा आणि व्यवस्थापित करा',
			'profile.sections.profile' => 'प्रोफाइल',
			'profile.sections.basicInformation' => 'मूलभूत माहिती',
			'profile.sections.goalsAndActivity' => 'उद्दिष्टे आणि क्रियाकलाप',
			'profile.sections.calculatedValues' => 'गणना केलेले मूल्य',
			'profile.gender' => 'लिंग',
			'profile.height' => 'उंची',
			'profile.weight' => 'वजन',
			'profile.age' => 'वय',
			'profile.weightGoal' => 'वजन लक्ष्य',
			'profile.activityLevel' => 'क्रियाकलाप पातळी',
			'profile.healthMetrics' => 'आरोग्य मेट्रिक्स',
			'profile.notSet' => 'संचित नाही',
			'profile.years' => 'वर्ष',
			'profile.updatedSuccessfully' => 'प्रोफाइल यशस्वीरित्या अद्यतनित झाले!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'दैनिक लक्ष्य',
			'profile.calculatedValues.calPerDay' => 'कॅल/दिवस',
			'profile.calculatedValues.notAvailable' => 'उपलब्ध नाही',
			'healthScore.title' => 'आरोग्य स्कोर',
			'healthScore.whyThisScore' => 'हा स्कोर का?',
			'healthScore.note' => 'हा स्कोर ओळखलेल्या घटकांवर आणि पोषण गरजेवर आधारित एक AI अंदाज आहे. आहार सल्ल्यासाठी नेहमी एक तज्ञांशी संपर्क साधा.',
			'healthScore.unhealthy' => 'आरोग्यदायी नाही',
			'healthScore.healthy' => 'आरोग्यदायी',
			'healthScore.neutral' => 'तटस्थ',
			'editProfile.title' => 'प्रोफाइल संपादित करा',
			'editProfile.sections.personalInformation' => 'व्यक्तिगत माहिती',
			'editProfile.sections.physicalMeasurements' => 'शारीरिक मोजमाप',
			'editProfile.sections.goalsAndActivity' => 'उद्दिष्टे आणि क्रियाकलाप',
			'editProfile.gender' => 'लिंग',
			'editProfile.dateOfBirth' => 'जन्मतारीख',
			'editProfile.height' => 'उंची',
			'editProfile.weight' => 'वजन',
			'editProfile.weightGoal' => 'वजन लक्ष्य',
			'editProfile.activityLevel' => 'क्रियाकलाप पातळी',
			'editProfile.metric' => 'मेट्रिक',
			'editProfile.imperial' => 'इंपीरियल',
			'editProfile.metricCm' => 'मेट्रिक (सेंटिमीटर)',
			'editProfile.imperialFtIn' => 'इंपीरियल (फूट/इंच)',
			'editProfile.metricKg' => 'मेट्रिक (किलोग्राम)',
			'editProfile.imperialLbs' => 'इंपीरियल (पाउंड)',
			'editProfile.genders.male' => 'पुरुष',
			'editProfile.genders.female' => 'महिला',
			'editProfile.genders.other' => 'इतर',
			'editProfile.weightGoals.loseWeight.name' => 'वजन कमी',
			'editProfile.weightGoals.loseWeight.description' => 'वजन कमी करण्यासाठी कॅलोरी कमी करा',
			'editProfile.weightGoals.maintainWeight.name' => 'वजन राखणे',
			'editProfile.weightGoals.maintainWeight.description' => 'तुमचे वर्तमान वजन राखा',
			'editProfile.weightGoals.gainWeight.name' => 'वजन वाढवा',
			'editProfile.weightGoals.gainWeight.description' => 'वजन वाढवण्यासाठी कॅलोरी वाढवा',
			'editProfile.activityLevels.sedentary.name' => 'अवसाधित',
			'editProfile.activityLevels.sedentary.description' => 'कमी करून व्यायाम',
			'editProfile.activityLevels.lightlyActive.name' => 'थोडा सक्रिय',
			'editProfile.activityLevels.lightlyActive.description' => 'प्रति आठवड्यात 1-3 दिवस हलका व्यायाम',
			'editProfile.activityLevels.moderatelyActive.name' => 'मध्यम सक्रिय',
			'editProfile.activityLevels.moderatelyActive.description' => 'प्रति आठवड्यात 3-5 दिवस मध्यम व्यायाम',
			'editProfile.activityLevels.veryActive.name' => 'अतिसक्रिय',
			'editProfile.activityLevels.veryActive.description' => 'प्रति आठवड्यात 6-7 दिवस कठोर व्यायाम',
			'editProfile.activityLevels.extremelyActive.name' => 'अतिशक्तिशाली',
			'editProfile.activityLevels.extremelyActive.description' => 'अत्यंत कठोर व्यायाम, शारीरिक काम',
			'settings.title' => 'सेटिंग्ज',
			'settings.sections.profile' => 'प्रोफाइल',
			'settings.sections.localization' => 'आंतरराष्ट्रीयकरण',
			'settings.sections.notifications' => 'सूचना',
			'settings.sections.supportAndLegal' => 'सहाय्य आणि कायदेशीर',
			'settings.sections.dangerZone' => 'धोकादायक क्षेत्र',
			'settings.sections.developer' => 'डेव्हलपर',
			'settings.editProfile.title' => 'प्रोफाइल संपादित करा',
			'settings.editProfile.subtitle' => 'तुमची वैयक्तिक माहिती अद्यतनित करा',
			'settings.language.title' => 'भाषा',
			'settings.language.subtitle' => 'तुमची आवडती भाषा निवडा',
			'settings.heightUnit.title' => 'उंचाई युनिट',
			'settings.weightUnit.title' => 'वजन युनिट',
			'settings.mealReminders.title' => 'जेवणाच्या आठवणी',
			'settings.mealReminders.subtitle' => 'वेळेवर सूचना करून मार्गदर्शन करा',
			'settings.theme.title' => 'थीम',
			'settings.theme.subtitle' => 'तुमची आवडती थीम निवडा',
			'settings.theme.light' => 'प्रकाशित',
			'settings.theme.dark' => 'काळा',
			'settings.theme.system' => 'सिस्टम',
			'settings.sendFeedback.title' => 'अभिप्राय पाठवा',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} सुधारण्यासाठी मदत करा',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} अँप अभिप्राय',
			'settings.sendFeedback.emailBodyPrefix' => 'कृपया खाली तुमचा अभिप्राय द्या:',
			'settings.sendFeedback.appVersion' => 'अँप आवृत्ती',
			'settings.sendFeedback.device' => 'यंत्र',
			'settings.sendFeedback.osVersion' => 'OS आवृत्ती',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'सर्व डेटा हजामती',
			'settings.clearAllData.subtitle' => 'तुमची सर्व माहिती अशक्तपणे हटवा',
			'settings.clearAllData.confirmationTitle' => 'सर्व डेटा हजामती?',
			'settings.clearAllData.confirmationMessage' => 'ही क्रिया रद्द केली जाऊ शकत नाही. तुमची सर्व नोंदलेली जेवणं, आवडत्या, आणि प्रोफाइल सेटिंग्ज कायमच्या हटविल्या जातील.',
			'settings.clearAllData.cancel' => 'रद्द करा',
			'settings.clearAllData.clearEverything' => 'सर्व हजामती',
			'settings.debugOptions.title' => 'डिबग पर्याय',
			'settings.developerModeEnabled' => 'डेव्हलपर मोड सक्षम झाला आहे!',
			'reminders.title' => 'आठवणीसह ट्रॅकवर राहा',
			'reminders.description' => 'तुमच्या जेवणांचे लॉग करण्यासाठी आणि तुमच्या पोषण लक्ष्याशी स्थिर राहण्यासाठी सौम्य आठवणी मिळवा',
			'reminders.notificationsEnabled' => 'सूचनाएं सक्षम आहेत',
			'reminders.notificationsDisabled' => 'सूचनाएं अक्षम आहेत',
			'reminders.enabledSubtitle' => 'तुम्हाला जेवण आठवणी मिळतील',
			'reminders.disabledSubtitle' => 'जेवणाच्या आठवणी मिळवण्यासाठी सूचनाएं सक्षम करा',
			'reminders.mealReminders' => 'जेवणाच्या आठवणी',
			'reminders.breakfast' => 'नाश्ता',
			'reminders.lunch' => 'दुपारचे जेवण',
			'reminders.dinner' => 'रात्रीचे जेवण',
			'reminders.snack' => 'स्नॅक',
			'reminders.unknown' => 'अज्ञात',
			'reminders.change' => 'बदल',
			'reminders.enableNotifications' => 'सूचनाएं सक्षम करा',
			'reminders.skipForNow' => 'आता वगळा',
			'reminders.saveChanges' => 'बदल जतन करा',
			'reminders.enabledSuccessfully' => 'सूचनाएं यशस्वीरित्या सक्षम झाल्या!',
			'reminders.permissionDenied' => 'सूचना परवानगी नाकारली',
			'reminders.errorEnabling' => ({required Object error}) => 'सूचनाएं सक्षम करण्यात त्रुटी: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'सेटअप पूर्ण करण्यात त्रुटी: ${error}',
			'notifications.breakfast.title' => 'नाश्ता वेळ! 🍳',
			'notifications.breakfast.body' => 'तुमचा नाश्ता लॉग करायला विसरू नका',
			'notifications.lunch.title' => 'दुपारचे जेवण! 🥗',
			'notifications.lunch.body' => 'तुमचा दुपारचा जेवण लॉग करण्याची वेळ',
			'notifications.dinner.title' => 'रात्रीचे जेवण! 🍽️',
			'notifications.dinner.body' => 'तुमचा रात्रीचा जेवण लॉग करायला विसरू नका',
			'notifications.snack.title' => 'स्नॅक वेळ! 🍎',
			'notifications.snack.body' => 'आरोग्यदायी स्नॅकचा वेळ',
			'notifications.test.title' => 'चाचणी सूचना',
			'login.title' => 'लॉगिन',
			'login.signInWithGoogle' => 'गूगलसह साइन इन करा',
			'login.signInFailed' => 'गूगल साइन-इन अयशस्वी किंवा रद्द केले.',
			'disclaimer.pleaseNote' => 'कृपया लक्षात घ्या',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} अंदाजित पोषण माहिती प्रदान करते. अचूकता तुमच्या इनपुट आणि खाद्य वैकल्पिकतेवर अवलंबून आहे. मार्गदर्शक म्हणून वापरा, नथेच एक अंतिम स्रोत नाही. वैयक्तिक आहार सल्ल्यासाठी नेहमी एक व्यावसायिकांशी सल्ला घ्या.',
			'disclaimer.snap.portionSize.title' => 'पोषणाकरता प्रमाण',
			'disclaimer.snap.portionSize.description' => 'अंदाजांच्या अचूकतेसाठी तुमच्या प्रमाणाच्या अचूक मूल्यांकनावर अवलंबून आहे.',
			'disclaimer.snap.preparationMethods.title' => 'तयारी पद्धती',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'पाकक कला खाद्य पदार्थांच्या पोषण घटकावर लक्षणीय प्रभाव निर्माण करू शकते. ${appLabel} च्या अंदाजाने या बदलांचा आपल्याला कधी कधी विचार केला नाही.',
			'disclaimer.snap.ingredients.title' => 'घटक',
			'disclaimer.snap.ingredients.description' => 'अनेक लपलेल्या घटक असलेल्या जटिल पदार्थांमुळे कमी अचुकतेची अंदाज येऊ शकतात.',
			'disclaimer.snap.databaseLimitations.title' => 'डेटाबेस मर्यादा',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} चा फूड डेटाबेस विस्तृत आहे पण प्रत्येक खाद्य वस्तू किंवा विकल्प समाविष्ट करत नाही.',
			'disclaimer.weightEstimate.title' => 'वजन अंदाजाबद्दल',
			'disclaimer.weightEstimate.description' => 'अंदाजित वजन बदल एक साधा कॅलोरी-इन विरुद्ध कॅलोरी-आउट मॉडेलावर आधारित आहे. हे प्रेरणादायी मार्गदर्शकासाठी केवळ असते, तुमच्या वास्तविक वजनाच्या गणनेच्या रूपात नाही.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'कॅलोरी अचूकता',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'या अंदाजाची अचूकता तुम्ही ट्रॅक केलेल्या कॅलोरी इनटेक आणि खर्चावर अवलंबून आहे. चुकीच्या लॉगिंगमुळे अयोग्य कल्पना येईल.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'जैविक घटक',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'खरंच वजन कमी/वाढ त्याच्यातील मेटाबॉलिझम, हार्मोन्स, झोप, ताण, जलयोजन आणि इतर वैयक्तिक घटकांवर अवलंबून असतात जे ${appLabel} मोजू शकत नाही.',
			'disclaimer.weightEstimate.waterWeight.title' => 'जल वजन आणि झुकाव',
			'disclaimer.weightEstimate.waterWeight.description' => 'सामान्य दैनिक वजन जल संरक्षण, पचन आणि वेळेसाठी लक्षणीय प्रमाणात बदलू शकते. या अंदाजात या दैनिक बदलांचा विचार केलेला नाही.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'व्यावसायिक मार्गदर्शन',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'या अंदाजाचा उपयोग वैद्यकीय निर्णय घेण्यासाठी करू नका. वैयक्तिक वजन व्यवस्थापन सल्ल्यासाठी नेहमी एक आरोग्य व्यावसायिक किंवा प्रर registrations आहारतज्ञांची सल्ला घ्या.',
			'common.close' => 'निकाल',
			'common.kContinue' => 'संपूर्ण करा',
			'errors.loadingProfileData' => 'प्रोफाइल डेटा लोड करण्यास त्रुटी',
			'errors.somethingWentWrong' => 'काहीतरी चुकलं.',
			'debug.title' => 'डिबग पर्याय',
			'debug.sections.notifications' => 'सूचना',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.appInfo' => 'अँप माहिती',
			'debug.showActiveNotifications' => 'सक्रिय सूचनाएं दर्शवा',
			'debug.scheduleTestNotification' => 'चाचणी सूचना वेळापत्रक ठरवा (10सेकंद)',
			'debug.triggerBreakfastNotification' => 'नाश्ता सूचना ट्रिगर करा',
			'debug.cancelAllNotifications' => 'सर्व सूचना रद्द करा',
			'debug.activeNotifications' => 'सक्रिय सूचनाएं',
			'debug.noTitle' => 'कोई शीर्षक नाही',
			'debug.noBody' => 'कोई सामग्री नाही',
			'debug.fetchTodaysSteps' => 'आजच्या पायऱ्या मिळवा',
			'debug.fetchTodaysCalories' => 'आजच्या कॅलोरी मिळवा',
			'debug.fetchLatestWeight' => 'ताज्या वजनाचे मिळवा',
			'debug.fetchLatestHeight' => 'ताज्या उंचितचे मिळवा',
			'debug.writeTestWeight' => 'परीक्षण वजन (70किग्रॅ) लिहा',
			'debug.writeTestHeight' => 'परीक्षण उंची (175सेंटीमीटर) लिहा',
			'debug.syncLast7Days' => 'गेल्या 7 दिवसांचा समक्रमण करा',
			'debug.sync7DaysTitle' => '7-दिवस समक्रमण',
			'debug.checkCurrentLocale' => 'सध्या भाषाशुद्धता तपासा',
			'debug.currentLocale' => 'सध्या भाषाशुद्धता',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'भाषा: ${languageCode}\nदेश: ${countryCode}\nयुनिट प्रणाली: ${unitSystem}',
			'debug.latestWeight' => 'ताजं वजन',
			'debug.latestHeight' => 'ताजं उंची',
			'debug.todaysCalories' => 'आजच्या कॅलोरी',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'गेल्या 7 दिवसांत जळलेल्या कॅलोरी: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'गेल्या 7 दिवसात पायऱ्या, कॅलोरी आणि वजन यासाठी ${count} डेटा पॉइंट यशस्वीरित्या मिळवले.',
			'debug.noWeightData' => 'गेल्या 30 दिवसात वजन डेटा मिळाला नाही.',
			'debug.noHeightData' => 'गेल्या 1 वर्षात उंची डेटा मिळालो नाही.',
			'debug.noCalorieData' => 'आजच्या कॅलोरीसाठी डेटा मिळाला नाही.',
			'debug.weightWritten' => 'परीक्षण वजन (70किग्रॅ) यशस्वीरित्या लिहले.',
			'debug.weightWriteFailed' => 'परीक्षण वजन लिहण्यात अयशस्वी.',
			'debug.heightWritten' => 'परीक्षण उंची (175सेंटीमीटर) यशस्वीरित्या लिहले.',
			'debug.heightWriteFailed' => 'परीक्षण उंची लिहण्यात अयशस्वी.',
			'debug.noNotifications' => 'कोई सक्रिय सूचनाएं नाहीत.',
			'debug.testNotificationScheduled' => '10 सेकंदांवर चाचणी सूचना वेळापत्रक ठरवलेली आहे.',
			'debug.testNotificationBody' => 'ही चाचणी सूचना 10 सेकंदांवर वेळापत्र्कित आहे.',
			'debug.breakfastNotificationTriggered' => 'नाश्ता सूचना ट्रिगर झाला.',
			'debug.allNotificationsCancelled' => 'सर्व सूचनाएं रद्द झाल्या.',
			'debug.fetchingData' => 'गेल्या 7 दिवसांचा डेटा प्राप्त करत आहे...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'health.syncFailed' => 'Health Connect शी समक्रमण करण्यात अयशय झाला',
			'health.mealSynced' => 'जेवण Health Connect शी समक्रमित झाला',
			_ => null,
		};
	}
}
