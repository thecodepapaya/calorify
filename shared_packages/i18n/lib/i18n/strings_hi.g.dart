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
class TranslationsHi extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.hi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsHi _root = this; // ignore: unused_field

	@override 
	TranslationsHi $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHi(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'हिन्दी';
	@override String get flag => '🇮🇳';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsHi errors = _TranslationsErrorsHi._(_root);
	@override late final _TranslationsOnboardingHi onboarding = _TranslationsOnboardingHi._(_root);
	@override late final _TranslationsTabsHi tabs = _TranslationsTabsHi._(_root);
	@override late final _TranslationsHomeHi home = _TranslationsHomeHi._(_root);
	@override late final _TranslationsHistoryHi history = _TranslationsHistoryHi._(_root);
	@override late final _TranslationsMealHi meal = _TranslationsMealHi._(_root);
	@override late final _TranslationsFavoritesHi favorites = _TranslationsFavoritesHi._(_root);
	@override late final _TranslationsProfileHi profile = _TranslationsProfileHi._(_root);
	@override late final _TranslationsHealthScoreHi healthScore = _TranslationsHealthScoreHi._(_root);
	@override late final _TranslationsEditProfileHi editProfile = _TranslationsEditProfileHi._(_root);
	@override late final _TranslationsSettingsHi settings = _TranslationsSettingsHi._(_root);
	@override late final _TranslationsRemindersHi reminders = _TranslationsRemindersHi._(_root);
	@override late final _TranslationsNotificationsHi notifications = _TranslationsNotificationsHi._(_root);
	@override late final _TranslationsLoginHi login = _TranslationsLoginHi._(_root);
	@override late final _TranslationsDisclaimerHi disclaimer = _TranslationsDisclaimerHi._(_root);
	@override late final _TranslationsLocalNutritionPhase4Hi localNutritionPhase4 = _TranslationsLocalNutritionPhase4Hi._(_root);
	@override late final _TranslationsCommonHi common = _TranslationsCommonHi._(_root);
	@override late final _TranslationsFeedbackRatingHi feedbackRating = _TranslationsFeedbackRatingHi._(_root);
	@override late final _TranslationsHealthHi health = _TranslationsHealthHi._(_root);
}

// Path: errors
class _TranslationsErrorsHi extends TranslationsErrorsEn {
	_TranslationsErrorsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'आपने बहुत अधिक अनुरोध किए हैं। कृपया कुछ क्षण प्रतीक्षा करके पुन: प्रयास करें।';
	@override String get networkError => 'नेटवर्क त्रुटि। कृपया अपने इंटरनेट कनेक्शन की जाँच करें।';
	@override String get unknownError => 'कुछ गलत हुआ। कृपया बाद में पुनः प्रयास करें।';
	@override String get loadingProfileData => 'प्रोफ़ाइल डेटा लोड करने में त्रुटि';
	@override String get somethingWentWrong => 'कुछ गलत हुआ।';
	@override String get retry => 'पुनः प्रयास करें';
}

// Path: onboarding
class _TranslationsOnboardingHi extends TranslationsOnboardingEn {
	_TranslationsOnboardingHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'स्वागत है ${appLabel} में';
	@override String get subtitle => 'आपका व्यक्तिगत पोषण साथी, AI द्वारा संचालित';
	@override String get getStarted => 'शुरू करें';
	@override late final _TranslationsOnboardingFeaturesHi features = _TranslationsOnboardingFeaturesHi._(_root);
	@override late final _TranslationsOnboardingGenderHi gender = _TranslationsOnboardingGenderHi._(_root);
	@override late final _TranslationsOnboardingHeightHi height = _TranslationsOnboardingHeightHi._(_root);
	@override late final _TranslationsOnboardingWeightHi weight = _TranslationsOnboardingWeightHi._(_root);
	@override late final _TranslationsOnboardingAgeHi age = _TranslationsOnboardingAgeHi._(_root);
	@override late final _TranslationsOnboardingBmiScaleHi bmiScale = _TranslationsOnboardingBmiScaleHi._(_root);
	@override late final _TranslationsOnboardingWeightGoalHi weightGoal = _TranslationsOnboardingWeightGoalHi._(_root);
	@override late final _TranslationsOnboardingActivityLevelHi activityLevel = _TranslationsOnboardingActivityLevelHi._(_root);
	@override late final _TranslationsOnboardingHealthConnectHi healthConnect = _TranslationsOnboardingHealthConnectHi._(_root);
	@override late final _TranslationsOnboardingReinforcementHi reinforcement = _TranslationsOnboardingReinforcementHi._(_root);
}

// Path: tabs
class _TranslationsTabsHi extends TranslationsTabsEn {
	_TranslationsTabsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'डैशबोर्ड';
	@override String get history => 'इतिहास';
}

// Path: home
class _TranslationsHomeHi extends TranslationsHomeEn {
	_TranslationsHomeHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryHi aiSummary = _TranslationsHomeAiSummaryHi._(_root);
	@override late final _TranslationsHomeDailyGoalHi dailyGoal = _TranslationsHomeDailyGoalHi._(_root);
	@override late final _TranslationsHomeDailySummaryHi dailySummary = _TranslationsHomeDailySummaryHi._(_root);
	@override late final _TranslationsHomeIntakeProgressHi intakeProgress = _TranslationsHomeIntakeProgressHi._(_root);
	@override late final _TranslationsHomeIntakeHistoryHi intakeHistory = _TranslationsHomeIntakeHistoryHi._(_root);
	@override late final _TranslationsHomeMealLogHi mealLog = _TranslationsHomeMealLogHi._(_root);
	@override late final _TranslationsHomeMealDescriptionHi mealDescription = _TranslationsHomeMealDescriptionHi._(_root);
	@override late final _TranslationsHomeFavoriteMealsHi favoriteMeals = _TranslationsHomeFavoriteMealsHi._(_root);
	@override late final _TranslationsHomeMealSnapHi mealSnap = _TranslationsHomeMealSnapHi._(_root);
	@override late final _TranslationsHomeConnectHealthHi connectHealth = _TranslationsHomeConnectHealthHi._(_root);
}

// Path: history
class _TranslationsHistoryHi extends TranslationsHistoryEn {
	_TranslationsHistoryHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'कोई भोजन रिकॉर्ड नहीं';
	@override String get emptyMessage => 'यहाँ लॉग करने के लिए अपनी आखिरी भोजन की तस्वीर लें।';
	@override String get today => 'आज';
	@override String get yesterday => 'कल';
}

// Path: meal
class _TranslationsMealHi extends TranslationsMealEn {
	_TranslationsMealHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'ओह नहीं!';
	@override String get delete => 'हटाएँ';
	@override String get editMeal => 'भोजन संपादित करें';
	@override String get addMeal => 'भोजन जोड़ें';
	@override String get saveMeal => 'भोजन सहेजें';
	@override String get save => 'सहेजें';
	@override String get mealName => 'भोजन का नाम';
	@override String get mealNameHint => 'उदा., स्क्रॅम्बल्ड एग्स के साथ टोस्ट';
	@override String get nameRequired => 'सहेजने से पहले भोजन का नाम दर्ज करें।';
	@override String get mealQuantity => 'भोजन मात्रा';
	@override String get mealQuantityHint => 'उदा., 1 कटोरा, 2 स्लाइस';
	@override String get timeOfMeal => 'भोजन का समय';
	@override String get timeOfMealHint => 'जिस समय आपने भोजन किया था उसे चुनें';
	@override String get mealType => 'भोजन का प्रकार';
	@override late final _TranslationsMealNutritionHi nutrition = _TranslationsMealNutritionHi._(_root);
	@override late final _TranslationsMealDeleteConfirmationHi deleteConfirmation = _TranslationsMealDeleteConfirmationHi._(_root);
	@override String get addedToLog => 'भोजन आपके लॉग में जोड़ा गया!';
	@override String couldNotAdd({required Object error}) => 'भोजन जोड़ने में असमर्थ: ${error}';
	@override String get savedSuccessfully => 'भोजन सफलतापूर्वक जोड़ा गया!';
	@override String get updatedSuccessfully => 'भोजन सफलतापूर्वक अपडेट किया गया!';
	@override String errorSaving({required Object error}) => 'भोजन सहेजने में त्रुटि: ${error}';
	@override String get removedFromFavorites => 'पसंदीदा से हटाया गया!';
	@override String get savedAsFavorite => 'भोजन पसंदीदा के रूप में सहेजा गया!';
	@override String get unfavorite => 'पसंदीदा हटाएं';
	@override String couldNotUpdateFavorite({required Object error}) => 'पसंदीदा अपडेट नहीं कर सके: ${error}';
	@override String get feedbackThanks => 'फीडबैक के लिए धन्यवाद!';
	@override String get reanalysisUpdated => 'आपकी प्रतिक्रिया के आधार पर भोजन विश्लेषण अपडेट किया गया।';
	@override String failedToProcess({required Object error}) => 'प्रोसेस करने में विफल: ${error}';
	@override String failedToProcessImage({required Object error}) => 'इमेज प्रोसेस करने में विफल: ${error}';
	@override String errorCompressingImage({required Object error}) => 'इमेज संकुचित करते समय त्रुटि: ${error}';
	@override String get failedToSave => 'डेटा सहेजने में विफल। कृपया पुनः प्रयास करें।';
	@override String get skip => 'अनदेखा करें';
	@override late final _TranslationsMealQuestionFlowHi questionFlow = _TranslationsMealQuestionFlowHi._(_root);
	@override late final _TranslationsMealAnalysisHi analysis = _TranslationsMealAnalysisHi._(_root);
	@override late final _TranslationsMealLocalInferenceHi localInference = _TranslationsMealLocalInferenceHi._(_root);
	@override late final _TranslationsMealFeedbackHi feedback = _TranslationsMealFeedbackHi._(_root);
}

// Path: favorites
class _TranslationsFavoritesHi extends TranslationsFavoritesEn {
	_TranslationsFavoritesHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पसंदीदा';
	@override String get empty => 'अभी कोई पसंदीदा भोजन नहीं।';
	@override String get searchPlaceholder => 'पसंदीदा भोजन खोजें';
	@override String get searchEmptyTitle => 'आपकी खोज से कोई पसंदीदा मेल नहीं खाता';
	@override String get searchEmptySubtitle => 'किसी अलग भोजन का नाम, मात्रा, या भोजन प्रकार आज़माएँ।';
	@override String get sortLabel => 'पसंदीदा सॉर्ट करें';
	@override String get undo => 'पूर्ववत करें';
	@override String removed({required Object name}) => '${name} को पसंदीदा से हटाया गया';
	@override late final _TranslationsFavoritesSortOptionsHi sortOptions = _TranslationsFavoritesSortOptionsHi._(_root);
}

// Path: profile
class _TranslationsProfileHi extends TranslationsProfileEn {
	_TranslationsProfileHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफ़ाइल';
	@override String get noProfileData => 'कोई प्रोफ़ाइल डेटा नहीं मिला';
	@override String get yourProfile => 'आपकी प्रोफ़ाइल';
	@override String get viewAndManage => 'अपनी स्वास्थ्य जानकारी देखें और प्रबंधित करें';
	@override late final _TranslationsProfileSectionsHi sections = _TranslationsProfileSectionsHi._(_root);
	@override String get gender => 'लिंग';
	@override String get height => 'ऊँचाई';
	@override String get weight => 'वजन';
	@override String get age => 'आयु';
	@override String get weightGoal => 'वजन लक्ष्य';
	@override String get targetWeight => 'लक्ष्य वजन';
	@override String get activityLevel => 'गतिविधि स्तर';
	@override String get healthMetrics => 'स्वास्थ्य मेट्रिक्स';
	@override String get notSet => 'सेट नहीं किया गया';
	@override String get years => 'साल';
	@override String get updatedSuccessfully => 'प्रोफ़ाइल सफलतापूर्वक अपडेट हुई!';
	@override late final _TranslationsProfileCalculatedValuesHi calculatedValues = _TranslationsProfileCalculatedValuesHi._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreHi extends TranslationsHealthScoreEn {
	_TranslationsHealthScoreHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'हेल्थ स्कोर';
	@override String get whyThisScore => 'यह स्कोर क्यों?';
	@override String get note => 'यह स्कोर पहचानी गई सामग्री और पोषण घनत्व के आधार पर AI का अनुमान है। व्यक्तिगत आहार सलाह के लिए हमेशा किसी पेशेवर से परामर्श करें।';
	@override String get unhealthy => 'अस्वस्थ';
	@override String get healthy => 'स्वस्थ';
	@override String get neutral => 'तटस्थ';
}

// Path: editProfile
class _TranslationsEditProfileHi extends TranslationsEditProfileEn {
	_TranslationsEditProfileHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफ़ाइल संपादित करें';
	@override late final _TranslationsEditProfileSectionsHi sections = _TranslationsEditProfileSectionsHi._(_root);
	@override String get gender => 'लिंग';
	@override String get dateOfBirth => 'जन्मतिथि';
	@override String get height => 'ऊँचाई';
	@override String get weight => 'वजन';
	@override String get weightGoal => 'वजन लक्ष्य';
	@override String get activityLevel => 'गतिविधि स्तर';
	@override String get metric => 'मेट्रिक';
	@override String get imperial => 'इम्पीरियल';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'पाउंड';
	@override String get metricCm => 'मेट्रिक (cm)';
	@override String get imperialFtIn => 'इम्पीरियल (ft/in)';
	@override String get metricKg => 'मेट्रिक (kg)';
	@override String get imperialLbs => 'इम्पीरियल (lbs)';
	@override late final _TranslationsEditProfileGendersHi genders = _TranslationsEditProfileGendersHi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsHi weightGoals = _TranslationsEditProfileWeightGoalsHi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsHi activityLevels = _TranslationsEditProfileActivityLevelsHi._(_root);
}

// Path: settings
class _TranslationsSettingsHi extends TranslationsSettingsEn {
	_TranslationsSettingsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सेटिंग्स';
	@override late final _TranslationsSettingsSectionsHi sections = _TranslationsSettingsSectionsHi._(_root);
	@override late final _TranslationsSettingsEditProfileHi editProfile = _TranslationsSettingsEditProfileHi._(_root);
	@override late final _TranslationsSettingsLanguageHi language = _TranslationsSettingsLanguageHi._(_root);
	@override late final _TranslationsSettingsHeightUnitHi heightUnit = _TranslationsSettingsHeightUnitHi._(_root);
	@override late final _TranslationsSettingsWeightUnitHi weightUnit = _TranslationsSettingsWeightUnitHi._(_root);
	@override late final _TranslationsSettingsMealRemindersHi mealReminders = _TranslationsSettingsMealRemindersHi._(_root);
	@override late final _TranslationsSettingsLocalInferenceHi localInference = _TranslationsSettingsLocalInferenceHi._(_root);
	@override late final _TranslationsSettingsThemeHi theme = _TranslationsSettingsThemeHi._(_root);
	@override late final _TranslationsSettingsSendFeedbackHi sendFeedback = _TranslationsSettingsSendFeedbackHi._(_root);
	@override late final _TranslationsSettingsExportMealHistoryHi exportMealHistory = _TranslationsSettingsExportMealHistoryHi._(_root);
	@override late final _TranslationsSettingsClearAllDataHi clearAllData = _TranslationsSettingsClearAllDataHi._(_root);
	@override late final _TranslationsSettingsDebugOptionsHi debugOptions = _TranslationsSettingsDebugOptionsHi._(_root);
	@override String get developerModeEnabled => 'डेवलपर मोड सक्षम किया गया!';
	@override late final _TranslationsSettingsHealthConnectHi healthConnect = _TranslationsSettingsHealthConnectHi._(_root);
	@override late final _TranslationsSettingsAboutHi about = _TranslationsSettingsAboutHi._(_root);
	@override late final _TranslationsSettingsAppInfoHi appInfo = _TranslationsSettingsAppInfoHi._(_root);
}

// Path: reminders
class _TranslationsRemindersHi extends TranslationsRemindersEn {
	_TranslationsRemindersHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अनुस्मारक के साथ ट्रैक पर रहें';
	@override String get description => 'भोजन लॉग करने के लिए कोमल अनुस्मारक प्राप्त करें और अपने पोषण लक्ष्यों के साथ सुसंगत रहें';
	@override String get notificationsEnabled => 'सूचनाएँ सक्षम हैं';
	@override String get notificationsDisabled => 'सूचनाएँ अक्षम हैं';
	@override String get enabledSubtitle => 'आप भोजन अनुस्मारक प्राप्त करेंगे';
	@override String get disabledSubtitle => 'भोजन अनुस्मारक प्राप्त करने के लिए सूचनाएँ सक्षम करें';
	@override String get mealReminders => 'भोजन अनुस्मारक';
	@override String get breakfast => 'नाश्ता';
	@override String get lunch => 'दोपहर का खाना';
	@override String get dinner => 'रात का खाना';
	@override String get snack => 'नाश्ता';
	@override String get unknown => 'अज्ञात';
	@override String get change => 'बदलें';
	@override String get enableNotifications => 'सूचनाएँ सक्षम करें';
	@override String get skipForNow => 'अभी छोड़ें';
	@override String get saveChanges => 'परिवर्तन सहेजें';
	@override String get enabledSuccessfully => 'सूचनाएँ सफलतापूर्वक सक्षम हुईं!';
	@override String get permissionDenied => 'सूचना अनुमति अस्वीकृत';
	@override String errorEnabling({required Object error}) => 'सूचनाएँ सक्षम करने में त्रुटि: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'सेटअप पूरा करने में त्रुटि: ${error}';
}

// Path: notifications
class _TranslationsNotificationsHi extends TranslationsNotificationsEn {
	_TranslationsNotificationsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastHi breakfast = _TranslationsNotificationsBreakfastHi._(_root);
	@override late final _TranslationsNotificationsLunchHi lunch = _TranslationsNotificationsLunchHi._(_root);
	@override late final _TranslationsNotificationsDinnerHi dinner = _TranslationsNotificationsDinnerHi._(_root);
	@override late final _TranslationsNotificationsSnackHi snack = _TranslationsNotificationsSnackHi._(_root);
	@override late final _TranslationsNotificationsTestHi test = _TranslationsNotificationsTestHi._(_root);
}

// Path: login
class _TranslationsLoginHi extends TranslationsLoginEn {
	_TranslationsLoginHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'लॉगिन';
	@override String get signInWithGoogle => 'Google के साथ साइन इन करें';
	@override String get signInFailed => 'Google साइन-इन विफल हुआ या रद्द कर दिया गया।';
}

// Path: disclaimer
class _TranslationsDisclaimerHi extends TranslationsDisclaimerEn {
	_TranslationsDisclaimerHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'कृपया ध्यान दें';
	@override late final _TranslationsDisclaimerSnapHi snap = _TranslationsDisclaimerSnapHi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateHi weightEstimate = _TranslationsDisclaimerWeightEstimateHi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsHi healthMetrics = _TranslationsDisclaimerHealthMetricsHi._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureHi calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureHi._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4Hi extends TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4Hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'पोषण जानकारी डाउनलोड किए गए USDA पैक से मिली';
	@override String get nutritionCached => 'पोषण जानकारी डिवाइस की USDA कैश से मिली';
	@override String get nutritionMixed => 'पोषण जानकारी डाउनलोड की गई, कैश की गई और रिमोट USDA पंक्तियों से जोड़ी गई';
	@override String get calculationLocal => 'कैलोरी और मैक्रो की गणना इस डिवाइस पर की गई';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: डाउनलोड किया गया USDA पैक';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: डिवाइस की USDA कैश';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: Calorify के ज़रिए प्राप्त USDA पंक्ति';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: नियत पोषण स्थिरांक';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · डेटासेट ${datasetVersion}';
	@override String get portionSmaller => 'छोटी';
	@override String get portionEstimated => 'अनुमानित';
	@override String get portionLarger => 'बड़ी';
	@override String portionQuestion({required Object ingredient}) => '${ingredient} के लिए कौन-सी मात्रा सबसे करीब थी?';
	@override String get mealTypeQuestion => 'यह कौन-सा भोजन था?';
	@override String get localNutritionTip => 'सत्यापित स्थानीय पोषण डेटा से गणना की गई।';
	@override String get offlineNutritionTitle => 'पोषण डेटा डाउनलोड करें';
	@override String get offlineNutritionSubtitle => 'जब हर सामग्री शामिल हो, तब इस डिवाइस पर सत्यापित USDA पंक्तियों और नियत गणना का उपयोग करें।';
	@override String get offlineNutritionUnavailable => 'ऐप के इस संस्करण के लिए स्थानीय पोषण डेटा उपलब्ध नहीं है।';
	@override String get offlineNutritionNotDownloaded => 'कोई सत्यापित पोषण पैक डाउनलोड नहीं किया गया है।';
	@override String get offlineNutritionInstalling => 'पोषण डेटा डाउनलोड और सत्यापित किया जा रहा है…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'पैक ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} कैश की गई USDA पंक्तियाँ · ${size}';
	@override String get offlineNutritionUpdate => 'अपडेट की जाँच करें';
	@override String get offlineNutritionClear => 'स्थानीय पोषण डेटा साफ़ करें';
	@override String get offlineNutritionClearTitle => 'स्थानीय पोषण डेटा साफ़ करें?';
	@override String get offlineNutritionClearBody => 'इससे डाउनलोड किया गया USDA पैक और लुकअप कैश हट जाएगा। दर्ज किए गए भोजन में सहेजते समय उपयोग किया गया सटीक पोषण स्नैपशॉट बना रहेगा।';
	@override String get offlineNutritionClearConfirm => 'डेटा साफ़ करें';
	@override String offlineNutritionInstallFailed({required Object error}) => 'स्थानीय पोषण डेटा डाउनलोड और सत्यापित नहीं किया जा सका: ${error}';
	@override String get offlineNutritionCleared => 'स्थानीय पोषण डेटा साफ़ किया गया';
}

// Path: common
class _TranslationsCommonHi extends TranslationsCommonEn {
	_TranslationsCommonHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get close => 'बंद करें';
	@override String get kContinue => 'जारी रखें';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingHi extends TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel} का आनंद ले रहे हैं?';
	@override String get yes => 'हाँ, मुझे यह पसंद आ रहा है';
	@override String get no => 'वास्तव में नहीं';
	@override String get rateStepHeading => 'Play Store पर रेट करें';
	@override String get emailStepHeading => 'ईमेल से फीडबैक भेजें';
	@override String soloDevMessage({required Object appLabel}) => 'एक त्वरित रेटिंग दूसरों को ${appLabel} खोजने में मदद करती है और विकास को जारी रखने में मदद करती है। क्या आप एक मिनट लेकर रेट कर देंगे?';
	@override String get shareFeedbackViaEmail => 'आपकी प्रतिक्रिया आने वाले बदलावों को आकार देती है — हम हर संदेश पढ़ते हैं। क्या आप ईमेल के माध्यम से अपनी प्रतिक्रियाएँ साझा करना चाहेंगे?';
	@override String get rateCta => 'Play Store पर रेट करें';
	@override String get maybeLater => 'शायद बाद में';
	@override String get sendFeedback => 'फीडबैक भेजें';
	@override String get noThanks => 'नहीं धन्यवाद';
	@override String get aboutUsDescription => 'एक छोटे टीम द्वारा ध्यान से बनाया गया। हम प्राइवेसी, सरलता और बेहतर खाने की आदतें बनाने पर केंद्रित हैं।';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '${appLabel} के पीछे कौन है, यह जानना चाहते हैं? देखें ';
	@override String get aboutUsLinkLabel => 'हमारे बारे में';
	@override String get thankYouMessage => 'धन्यवाद! हम फिर किसी समय पूछेंगे।';
}

// Path: health
class _TranslationsHealthHi extends TranslationsHealthEn {
	_TranslationsHealthHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect से सिंक नहीं कर सके';
	@override String get mealSynced => 'भोजन Health Connect के साथ सिंक हो गया';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesHi extends TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionHi foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionHi._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisHi aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisHi._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationHi healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationHi._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderHi extends TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपका जेंडर क्या है?';
	@override String get description => 'जेंडर हमें आपका बेसल मेटाबोलिक रेट (BMR) ठीक से गणना करने में मदद करता है।';
	@override String get next => 'अगला';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightHi extends TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपकी ऊँचाई कितनी है?';
	@override String get description => 'आपकी ऊँचाई से BMI और ऊर्जा आवश्यकताओं की सटीक गणना करने में मदद मिलती है।';
	@override String get metric => 'मेट्रिक';
	@override String get imperial => 'इम्पीरियल';
	@override String get next => 'अगला';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightHi extends TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'आपका वर्तमान वजन क्या है?';
	@override String get currentDescription => 'आपका वर्तमान वजन आपकी दैनिक लक्ष्यों को व्यक्तिगत बनाने के लिए आवश्यक है।';
	@override String get targetTitle => 'आपका लक्ष्य वजन क्या है?';
	@override String get targetDescription => 'लक्ष्य वजन सेट करने से लंबी अवधि की योजना निर्धारित करने में मदद मिलती है।';
	@override String get metric => 'मेट्रिक';
	@override String get imperial => 'इम्पीरियल';
	@override String get next => 'अगला';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeHi extends TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपका जन्मदिन कब है?';
	@override String get description => 'आपकी आयु हमें आपकी कैलोरी आवश्यकता सटीक रूप से गणना करने में मदद करती है।';
	@override String get next => 'अगला';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleHi extends TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'कम';
	@override String get healthy => 'स्वस्थ';
	@override String get overweight => 'अधिक';
	@override String get obese => 'मोटापा';
	@override late final _TranslationsOnboardingBmiScaleCategoriesHi categories = _TranslationsOnboardingBmiScaleCategoriesHi._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesHi messages = _TranslationsOnboardingBmiScaleMessagesHi._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalHi extends TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपका लक्ष्य क्या है?';
	@override String get description => 'वह लक्ष्य चुनें जो सबसे अच्छी तरह बताता है कि आप क्या हासिल करना चाहते हैं';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelHi extends TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आप कितने सक्रिय हैं?';
	@override String get description => 'यह हमें आपकी दैनिक कैलोरी आवश्यकताओं को अधिक सटीक रूप से गणना करने में मदद करता है';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectHi extends TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect से कनेक्ट करें';
	@override String get description => 'बेहतर जानकारी और स्वचालित कैलोरी ट्रैकिंग के लिए अपने स्वास्थ्य डेटा को सिंक करें';
	@override String get overviewDescription => 'अपने दैनिक लक्ष्य में खर्च हुई कैलोरी का उपयोग करें और चाहें तो लॉग किए गए भोजन Health Connect के साथ साझा करें।';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingHi automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingHi._(_root);
	@override late final _TranslationsOnboardingHealthConnectCaloriesBurnedHi caloriesBurned = _TranslationsOnboardingHealthConnectCaloriesBurnedHi._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsHi progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsHi._(_root);
	@override late final _TranslationsOnboardingHealthConnectShareLoggedMealsHi shareLoggedMeals = _TranslationsOnboardingHealthConnectShareLoggedMealsHi._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationHi seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationHi._(_root);
	@override late final _TranslationsOnboardingHealthConnectUserControlHi userControl = _TranslationsOnboardingHealthConnectUserControlHi._(_root);
	@override String get connected => 'Health Connect कनेक्टेड';
	@override String get notConnected => 'Health Connect कनेक्ट नहीं है';
	@override String get setup => 'Health Connect सेटअप करें';
	@override String get skipForNow => 'अभी छोड़ें';
	@override String get statusConnected => 'Health Connect जुड़ा हुआ है।';
	@override String get statusSuccess => 'Health Connect सफलतापूर्वक जुड़ चुका है!';
	@override String get statusNotConnected => 'वे Health Connect सुविधाएँ चुनें जिन्हें आप चालू करना चाहते हैं।';
	@override String get statusPartial => 'Health Connect आंशिक रूप से जुड़ा है। दोनों सुविधाओं का उपयोग करने के लिए शेष अनुमति चालू करें।';
	@override String get statusProviderUpdateRequired => 'जारी रखने के लिए Health Connect इंस्टॉल या अपडेट करें।';
	@override String get statusUnavailable => 'यह डिवाइस Health Connect का समर्थन नहीं करता।';
	@override String get installOrUpdate => 'इंस्टॉल या अपडेट करें';
	@override String get manageAccess => 'एक्सेस प्रबंधित करें';
	@override String statusPermissionDenied({required Object appLabel}) => 'अनुमति अस्वीकृत। कृपया ${appLabel} के लिए अपने फोन सेटिंग्स से Health Connect अनुमतियाँ सक्षम करें।';
	@override String statusError({required Object error}) => 'Health Connect सेटअप में त्रुटि: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementHi extends TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessHi trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessHi._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileHi healthProfile = _TranslationsOnboardingReinforcementHealthProfileHi._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleHi goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleHi._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryHi extends TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपका AI सारांश';
	@override String get logMore => 'व्यक्तिगत AI इनसाइट्स पाने के लिए अगले कुछ दिनों में और भोजन लॉग करें।';
	@override String get loading => 'आपका सारांश लोड हो रहा है...';
	@override String mealCount({required Object count}) => '${count} भोजन लॉग किए';
	@override String macroBalanceScore({required Object score}) => 'संतुलन स्कोर ${score}';
	@override String get topFoods => 'शीर्ष खाद्य पदार्थ';
	@override String get trendUp => 'कैलोरीज़ बढ़ रही हैं';
	@override String get trendDown => 'कैलोरीज़ घट रही हैं';
	@override String get trendSteady => 'कैलोरीज़ स्थिर बनी हुई हैं';
	@override String generatedAt({required Object time}) => 'अपडेट किया गया ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalHi extends TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अपना दैनिक लक्ष्य सेट करें';
	@override String get titleSet => 'आपका दैनिक लक्ष्य';
	@override String get description => 'क्या आप अपनी वेलनेस यात्रा शुरू करने के लिए तैयार हैं? अपनी प्रगति शुरू करने के लिए नीचे अपना दैनिक कैलोरी लक्ष्य सेट करें।';
	@override String get descriptionSet => 'आपकी दिशा तय हो चुकी है! यह आपका दैनिक कैलोरी लक्ष्य है जो आपकी मार्गदर्शिका करेगा।';
	@override String get yourGoal => 'आपका लक्ष्य';
	@override String get goal => 'लक्ष्य';
	@override String get dailyCalories => 'दैनिक कैलोरी (kcal)';
	@override String get setGoal => 'लक्ष्य सेट करें';
	@override String get intake => 'सेवन';
	@override String get burned => 'बर्न';
	@override String get weightImpact => 'वजन प्रभाव';
	@override String get estLoss => 'अनुमानित घटाव';
	@override String get estGain => 'अनुमानित वृद्धि';
	@override String get kcal => 'किलो कैलोरी';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryHi extends TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'दैनिक सारांश';
	@override String get calories => 'कैलोरी';
	@override String get carbs => 'कार्बोहाइड्रेट';
	@override String get protein => 'प्रोटीन';
	@override String get fat => 'वसा';
	@override String get fiber => 'फाइबर';
	@override String get grams => 'ग्राम';
	@override String get chartAccessibilityLabel => 'माइक्रो-न्यूट्रिएंट चार्ट';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressHi extends TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आज का मैक्रो विभाजन';
	@override String get target => 'लक्ष्य';
	@override String get current => 'वर्तमान';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryHi extends TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '7-दिन का मैक्रो इतिहास';
	@override String get trendTitle => 'आज का रुझान';
	@override String peakHour({required Object hour}) => 'पीक: ${hour}:00';
	@override String get noHistoryYet => 'अभी तक कोई इतिहास नहीं';
	@override String get startLogging => 'यहाँ अपने भोजन लॉग करना शुरू करें\nताकि आप अपना 7-दिन मैक्रो रुझान देख सकें';
}

// Path: home.mealLog
class _TranslationsHomeMealLogHi extends TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'लॉग किए गए भोजन';
	@override String get emptyMessage => 'यहाँ लॉग करने के लिए अपनी आखिरी भोजन की तस्वीर लें।';
	@override String get noMealsToday => 'आज के लिए कोई भोजन रिकॉर्ड नहीं';
	@override String get seeAllMeals => 'सभी भोजन देखें';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionHi extends TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI के साथ त्वरित जोड़';
	@override String get description => 'अपने भोजन का वर्णन करें, और AI विवरण संभालेगा।';
	@override String get hint => 'उदा. नाश्ते में मैंने ओटमील का बड़ा कटोरा, कटा केला और एक स्कूप व्हे लिया ...';
	@override String get analyzeMeal => 'भोजन विश्लेषण करें';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsHi extends TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पसंदीदा भोजन';
	@override String get description => 'अपने पसंदीदा भोजन को तेजी से जोड़ें।';
	@override String get noFavorites => 'अभी कोई पसंदीदा भोजन नहीं है।';
	@override String get addFavoriteHint => 'किसी भोजन पर स्टार क्लिक करके उसे पसंदीदा बनाएं।';
	@override String get seeAll => 'सभी देखें';
	@override String get add => 'जोड़ें';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapHi extends TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'फोटो लें और अपना भोजन ट्रैक करें';
	@override String get description => 'AI विश्लेषण के लिए अपने खाने की तस्वीर लेने के लिए अपना कैमरा उपयोग करें।';
	@override String get openCamera => 'कैमरा खोलें';
	@override String get gallery => 'गैलरी';
	@override String get compressingPhoto => 'फ़ोटो अनुकूलित की जा रही है…';
	@override String get uploadingPhoto => 'फ़ोटो अपलोड हो रही है…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthHi extends TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect से सिंक करें';
	@override String get description => 'अपना पोषण डेटा Health Connect से सिंक करें';
	@override String get dataUseDescription => 'अपने लक्ष्य में खर्च हुई कैलोरी का उपयोग करें और लॉग किए गए भोजन साझा करें';
	@override String get install => 'इंस्टॉल करें';
	@override String get installOrUpdate => 'इंस्टॉल या अपडेट करें';
	@override String get connect => 'कनेक्ट करें';
}

// Path: meal.nutrition
class _TranslationsMealNutritionHi extends TranslationsMealNutritionEn {
	_TranslationsMealNutritionHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get calories => 'कैलोरी';
	@override String get carbs => 'कार्बोहाइड्रेट (g)';
	@override String get protein => 'प्रोटीन (g)';
	@override String get fat => 'वसा (g)';
	@override String get fiber => 'फाइबर (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationHi extends TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भोजन हटाएं';
	@override String get message => 'क्या आप सुनिश्चित हैं कि आप इस भोजन प्रविष्टि को हटाना चाहते हैं?';
	@override String get cancel => 'रद्द करें';
	@override String get delete => 'हटाएँ';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowHi extends TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'प्रश्न ${current} / ${total}';
	@override String get noQuestionsAvailable => 'कोई प्रश्न उपलब्ध नहीं';
	@override String get next => 'अगला';
	@override String get continueLabel => 'जारी रखें';
}

// Path: meal.analysis
class _TranslationsMealAnalysisHi extends TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपके भोजन का विश्लेषण किया जा रहा है';
	@override String get stepStarted => 'शुरू किया जा रहा है…';
	@override String get stepDecomposition => 'आपके भोजन को समझना…';
	@override String get stepIngredients => 'सामग्री को पोषण डेटा से मेल करना…';
	@override String get stepUncertainty => 'विश्वास की जाँच कर रहे हैं…';
	@override String get stepMealTypeQuestion => 'लगभग पूरा…';
	@override String get stepResult => 'आपका परिणाम अंतिम रूप दे रहे हैं…';
	@override String get stepError => 'कुछ गलत हुआ';
	@override String get stepDefault => 'आपके भोजन का विश्लेषण किया जा रहा है…';
	@override String get progressUnderstand => 'आपके भोजन को समझना';
	@override String get progressMatch => 'सामग्री का पोषण देखना';
	@override String get progressCheck => 'पोरशन और विश्वास की जाँच';
	@override String get progressMealType => 'भोजन प्रकार चुनना';
	@override String get progressFinish => 'कैलोरी और मैक्रोज़ की गणना';
	@override String get detectedIngredientHeading => 'सामग्री जो हम देख रहे हैं';
	@override String ingredientsOverflow({required Object count}) => '${count} और';
	@override String ingredientsLine({required Object count}) => '${count} सामग्री पहचान की गई';
	@override String get ingredientsPending => 'सामग्री स्कैन हो रही है…';
	@override String mealPreviewDescription({required Object text}) => '“${text}”';
	@override String get offlineTip0 => 'सूचना: नियमितता पूर्णता से महत्वपूर्ण है—नियमित लॉग उन पैटर्न को उजागर करते हैं जो मायने रखते हैं।';
	@override String get offlineTip1 => 'सूचना: फ़ोटो के लिए, प्राकृतिक रोशनी और ऊपर से लिया गया दृश्य मात्रा की सटीकता में मदद करते हैं।';
	@override String get offlineTip2 => 'टिप: पेय, सॉस और खाना पकाने का तेल भी बताएं — ये कैलोरी जोड़ते हैं जिन्हें लोग अक्सर भूल जाते हैं।';
	@override String get offlineTip3 => 'सूचना: एक त्वरित भाग नोट (1 कटोरा, बड़ा कॉफ़ी) अनुमान को काफी तीक्ष्ण बनाता है।';
	@override String get offlineTip4 => 'सूचना: भोजन के बाद लॉग करना भी आदत बनाता है; पूर्णता वैकल्पिक है।';
	@override String get offlineTip5 => 'सूचना: जब कैलोरीज़ बहुत बदलती हों तो बताएं कि भोजन कैसे पकाया गया था (तला हुआ बनाम बेक्ड)।';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceHi extends TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'पहचाने गए इंग्रीडिएंट्स की समीक्षा करें';
	@override String get reviewSubtitle => 'यह आपके डिवाइस पर इंटरप्रेट किया गया था। पोषण की गणना से पहले नाम या मात्रा को सही करें।';
	@override String get mealName => 'भोजन का नाम';
	@override String get ingredient => 'इंग्रीडिएंट';
	@override String get grams => 'अनुमानित ग्राम';
	@override String get removeIngredient => 'इंग्रीडिएंट हटाएँ';
	@override String get continueLabel => 'जारी रखें';
	@override String get invalidProposal => 'कम से कम एक इंग्रीडिएंट जोड़ें और ग्राम की मात्रा सकारात्मक रखें।';
	@override String get localUnavailable => 'ऑन-डिवाइस विश्लेषण अभी उपलब्ध नहीं है।';
	@override String get calculationDetails => 'इसकी गणना कैसे की गई';
	@override String get interpretationLocal => 'इस डिवाइस पर इंटरप्रेट किए गए इंग्रीडिएंट्स';
	@override String get interpretationCloud => 'क्लाउड में इंटरप्रेट किए गए इंग्रीडिएंट्स';
	@override String get interpretationManual => 'आपके द्वारा समीक्षा किए गए या संपादित किए गए इंग्रीडिएंट्स';
	@override String get nutritionRemote => 'Calorify के माध्यम से USDA से प्राप्त पोषण';
	@override String get nutritionFallback => 'कुछ पोषण मूल्यों का अनुमान रिमोटली लगाया गया था';
	@override String get calculationServer => 'कैलोरी और मैक्रोज़ की गणना Calorify द्वारा की गई';
	@override String get fallbackUsed => 'लोकल विश्लेषण क्लाउड प्रोसेसिंग पर स्विच हो गया';
	@override String get noRawContent => 'डायग्नोस्टिक रसीदों में आपके भोजन का टेक्स्ट या फोटो शामिल नहीं होता है।';
}

// Path: meal.feedback
class _TranslationsMealFeedbackHi extends TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'क्या गलत दिख रहा है?';
	@override String get subtitle => 'कृपया एक या अधिक समस्याओं का चयन करके हमें विश्लेषण सुधारने में मदद करें।';
	@override String get tellUsMore => 'हमें और बताएं';
	@override String get describeIncorrect => 'क्या गलत था इसका विवरण दें';
	@override String get submit => 'जमा करें';
	@override String get issueFoodIdentification => 'भोजन पहचान';
	@override String get issuePortionSize => 'पोरशन साइज';
	@override String get issueCalorieDistribution => 'कैलोरी वितरण';
	@override String get issueMacrosWrong => 'मैक्रोज़ गलत हैं';
	@override String get issueMissingItems => 'गायब आइटम';
	@override String get issueExtraItems => 'अतिरिक्त आइटम';
	@override String get issueOther => 'अन्य';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsHi extends TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get recent => 'हालिया';
	@override String get calories => 'कैलोरी';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsHi extends TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'प्रोफ़ाइल';
	@override String get basicInformation => 'बुनियादी जानकारी';
	@override String get goalsAndActivity => 'लक्ष्य और गतिविधि';
	@override String get calculatedValues => 'गणना किए गए मान';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesHi extends TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'दैनिक लक्ष्य';
	@override String get calPerDay => 'cal/दिन';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsHi extends TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'व्यक्तिगत जानकारी';
	@override String get physicalMeasurements => 'शारीरिक माप';
	@override String get goalsAndActivity => 'लक्ष्य और गतिविधि';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersHi extends TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get male => 'पुरुष';
	@override String get female => 'महिला';
	@override String get other => 'अन्य';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsHi extends TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightHi loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightHi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightHi maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightHi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightHi gainWeight = _TranslationsEditProfileWeightGoalsGainWeightHi._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsHi extends TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryHi sedentary = _TranslationsEditProfileActivityLevelsSedentaryHi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveHi lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveHi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveHi moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveHi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveHi veryActive = _TranslationsEditProfileActivityLevelsVeryActiveHi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveHi extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveHi._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsHi extends TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'प्रोफ़ाइल';
	@override String get localization => 'स्थानीयकरण';
	@override String get notifications => 'सूचनाएँ';
	@override String get healthConnect => 'Health Connect';
	@override String get localInference => 'ऑन-डिवाइस विश्लेषण';
	@override String get supportAndLegal => 'सहायता और कानूनी';
	@override String get about => 'बारे में';
	@override String get dangerZone => 'जोखिम क्षेत्र';
	@override String get developer => 'डेवलपर';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileHi extends TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफ़ाइल संपादित करें';
	@override String get subtitle => 'अपनी व्यक्तिगत जानकारी अपडेट करें';
}

// Path: settings.language
class _TranslationsSettingsLanguageHi extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भाषा';
	@override String get subtitle => 'अपनी पसंदीदा भाषा चुनें';
	@override String get searchHint => 'भाषाएँ खोजें...';
	@override String get noResults => 'कोई परिणाम नहीं मिला';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitHi extends TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'ऊँचाई की इकाई';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitHi extends TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'वजन की इकाई';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersHi extends TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भोजन अनुस्मारक';
	@override String get subtitle => 'समय पर अलर्ट के साथ ट्रैक पर रहें';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceHi extends TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'ऑन-डिवाइस मील विश्लेषण';
	@override String get subtitle => 'पोषण की गणना से पहले Gemini Nano के साथ समर्थित भोजन को इंटरप्रेट करें';
	@override String get unavailable => 'इस डिवाइस पर उपलब्ध नहीं है';
	@override String get rolloutUnavailable => 'उपयुक्त हार्डवेयर मिला, लेकिन यह सुविधा इस ऐप रिलीज़ के लिए सक्षम नहीं है';
	@override String get modelSetup => 'इसे सक्षम करने से पहले Gemini Nano का डाउनलोड पूरा होना आवश्यक है';
	@override String get useLocalTitle => 'ऑन-डिवाइस विश्लेषण का उपयोग करें';
	@override String get useLocalSubtitle => 'वैकल्पिक और डिफ़ॉल्ट रूप से बंद। जटिल भोजन के लिए परिणाम कम विश्वसनीय हो सकते हैं।';
	@override String get disclosureTitle => 'ऑन-डिवाइस विश्लेषण सक्षम करने से पहले';
	@override String get disclosureBody => 'Gemini Nano समर्थित Android डिवाइसों पर इंग्रीडिएंट्स की पहचान कर सकता है और मात्रा का अनुमान लगा सकता है। आपके द्वारा समीक्षा किया गया इंग्रीडिएंट प्रस्ताव USDA पोषण ग्राउंडिंग और गणना के लिए Calorify को भेजा जाता है।';
	@override String get disclosureLimit1 => 'जटिल व्यंजन, छिपे हुए इंग्रीडिएंट्स और मात्रा का आकार गलत पहचाना जा सकता है।';
	@override String get disclosureLimit2 => 'डाउनलोडिंग के दौरान, व्यस्त होने पर, बैकग्राउंड में होने पर, या डिवाइस की सीमाओं के कारण मॉडल अनुपलब्ध हो सकता है।';
	@override String get disclosureLimit3 => 'यदि लोकल इंटरप्रिटेशन पूरा नहीं हो पाता है, तो यह बीटा स्वचालित रूप से आपके मूल भोजन विवरण को क्लाउड विश्लेषण के लिए Calorify को भेज देता है।';
	@override String get acknowledgement => 'मैं समझता/समझती हूँ कि मुझे पहचाने गए इंग्रीडिएंट्स और मात्रा की समीक्षा करनी चाहिए।';
	@override String get enable => 'स्वीकार करें और सक्षम करें';
	@override String get cancel => 'रद्द करें';
}

// Path: settings.theme
class _TranslationsSettingsThemeHi extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'थीम';
	@override String get light => 'लाइट';
	@override String get dark => 'डार्क';
	@override String get system => 'सिस्टम';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackHi extends TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'फीडबैक भेजें';
	@override String subtitle({required Object appLabel}) => '${appLabel} को बेहतर बनाने में मदद करें';
	@override String emailSubject({required Object appLabel}) => '${appLabel} ऐप प्रतिक्रिया';
	@override String get emailBodyPrefix => 'कृपया नीचे अपनी प्रतिक्रिया दें:';
	@override String get appVersion => 'ऐप संस्करण';
	@override String get device => 'डिवाइस';
	@override String get osVersion => 'OS संस्करण';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryHi extends TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भोजन इतिहास एक्सपोर्ट करें';
	@override String get subtitle => 'अपने लॉग किए गए भोजन का CSV साझा करें';
	@override String get shareText => 'आपका Calorify भोजन इतिहास निर्यात';
	@override String failed({required Object error}) => 'भोजन इतिहास एक्सपोर्ट नहीं कर सके: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataHi extends TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सभी डेटा साफ़ करें';
	@override String get subtitle => 'अपनी सभी जानकारी को अपरिवर्तनीय रूप से हटाएं';
	@override String get localOnlySubtitle => 'इस डिवाइस पर संग्रहीत Calorify डेटा हटाएँ';
	@override String get confirmationTitle => 'सभी डेटा साफ़ करें?';
	@override String get confirmationMessage => 'यह क्रिया पूर्ववत नहीं की जा सकती। आपके सभी लॉग किए गए भोजन, पसंदीदा और प्रोफ़ाइल सेटिंग्स स्थायी रूप से हटा दिए जाएंगे।';
	@override String get localOnlyConfirmationMessage => 'यह इस डिवाइस से लॉग किए गए भोजन, पसंदीदा और प्रोफ़ाइल सेटिंग्स स्थायी रूप से हटा देगा। Health Connect में पहले साझा किए गए भोजन और Health Connect एक्सेस को सेटिंग्स > Health Connect में अलग से प्रबंधित किया जाता है।';
	@override String get cancel => 'रद्द करें';
	@override String get clearEverything => 'सब कुछ साफ़ करें';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsHi extends TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'डिबग विकल्प';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectHi extends TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'अनुमतियाँ देखें और प्रबंधित करें';
	@override late final _TranslationsSettingsHealthConnectUnavailableHi unavailable = _TranslationsSettingsHealthConnectUnavailableHi._(_root);
	@override late final _TranslationsSettingsHealthConnectUpdateRequiredHi updateRequired = _TranslationsSettingsHealthConnectUpdateRequiredHi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsHi permissions = _TranslationsSettingsHealthConnectPermissionsHi._(_root);
	@override String get managePermissions => 'अनुमतियाँ प्रबंधित करें';
	@override String get openSettings => 'Health Connect सेटिंग्स खोलें';
	@override String get disconnect => 'Health Connect डिस्कनेक्ट करें';
	@override String get disconnectConfirmationTitle => 'Health Connect डिस्कनेक्ट करें?';
	@override String get disconnectConfirmationMessage => 'Calorify की Health Connect तक पहुँच समाप्त हो जाएगी। वहाँ पहले से लिखा गया डेटा नहीं हटेगा।';
	@override String get disconnectConfirmationAction => 'डिस्कनेक्ट करें';
	@override String get deleteSyncedMeals => 'Health Connect से Calorify के भोजन हटाएँ';
	@override String get deleteSyncedMealsConfirmationTitle => 'सिंक किए गए भोजन हटाएँ?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Calorify के इस संस्करण से Health Connect में सिंक किए गए भोजन हटाएँ? आपका स्थानीय भोजन लॉग नहीं बदलेगा। Calorify की पुरानी प्रविष्टियाँ Health Connect में डेटा प्रबंधित करें विकल्प से अलग से हटानी पड़ सकती हैं।';
	@override String get deleteSyncedMealsConfirmationAction => 'सिंक किए गए भोजन हटाएँ';
	@override String get deleteSyncedMealsSuccess => 'Health Connect से Calorify के भोजन हटा दिए गए।';
	@override String get deleteSyncedMealsFailed => 'सिंक किए गए भोजन नहीं हटाए जा सके। फिर से कोशिश करें।';
	@override String get connectionPartial => 'Health Connect की कुछ सुविधाएँ चालू हैं।';
	@override String get connectionComplete => 'Health Connect की दोनों सुविधाएँ चालू हैं।';
	@override String get actionFailed => 'Health Connect नहीं खोला जा सका। फिर से कोशिश करें।';
	@override String get requestPermissions => 'अनुमतियाँ अनुरोध करें';
	@override String get permissionRequestCancelledOrFailed => 'अनुमति अनुरोध रद्द या विफल रहा। कृपया फिर से प्रयास करें या Health Connect सेटिंग्स में मैन्युअली अनुमतियाँ दें।';
	@override String get permissionRequestFailed => 'अनुमतियाँ अनुरोध करने में असमर्थ। कृपया पुनः प्रयास करें या Health Connect सेटिंग्स में मैन्युअली अनुमतियाँ दें।';
	@override String get requestingPermissions => 'अनुरोध कर रहे हैं...';
}

// Path: settings.about
class _TranslationsSettingsAboutHi extends TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'बारे में';
	@override String get tagline => 'तेज़, मुफ्त, और प्राइवेसी-फर्स्ट कैलोरी अवेयरनेस';
	@override late final _TranslationsSettingsAboutOurStoryHi ourStory = _TranslationsSettingsAboutOurStoryHi._(_root);
	@override late final _TranslationsSettingsAboutPrivacyHi privacy = _TranslationsSettingsAboutPrivacyHi._(_root);
	@override late final _TranslationsSettingsAboutDeveloperHi developer = _TranslationsSettingsAboutDeveloperHi._(_root);
	@override late final _TranslationsSettingsAboutFeedbackHi feedback = _TranslationsSettingsAboutFeedbackHi._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoHi extends TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify संस्करण ${version}';
	@override String build({required Object buildNumber}) => 'बिल्ड ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastHi extends TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'नाश्ते का समय! 🍳';
	@override String get body => 'अपने नाश्ते को लॉग करना न भूलें';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchHi extends TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'लंच समय! 🥗';
	@override String get body => 'अपने लंच को लॉग करने का समय है';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerHi extends TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'डिनर का समय! 🍽️';
	@override String get body => 'अपने डिनर को लॉग करना न भूलें';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackHi extends TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'नाश्ते का समय! 🍎';
	@override String get body => 'एक स्वस्थ नाश्ता करने का समय है';
}

// Path: notifications.test
class _TranslationsNotificationsTestHi extends TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'टेस्ट नोटिफिकेशन';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapHi extends TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} अनुमानित पोषण जानकारी प्रदान करता है। सटीकता आपके इनपुट और खाद्य विविधताओं पर निर्भर करती है। इसे मार्गदर्शक के रूप में उपयोग करें, निर्णायक स्रोत के रूप में नहीं। व्यक्तिगत आहार सलाह के लिए किसी पेशेवर से परामर्श करें।';
	@override late final _TranslationsDisclaimerSnapPortionSizeHi portionSize = _TranslationsDisclaimerSnapPortionSizeHi._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsHi preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsHi._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsHi ingredients = _TranslationsDisclaimerSnapIngredientsHi._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsHi databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsHi._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateHi extends TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'वजन अनुमान के बारे में';
	@override String get description => 'प्रोजेक्टेड वजन परिवर्तन एक सैद्धान्तिक अनुमान है जो सरल कैलोरी-इन बनाम कैलोरी-आउट मॉडल पर आधारित है। यह केवल प्रेरणादायक मार्गदर्शन के लिए है, आपके वास्तविक वजन की भविष्यवाणी के लिए नहीं।';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyHi calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyHi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsHi biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsHi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightHi waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightHi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHi professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHi._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsHi extends TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get description => 'ये मेट्रिक्स आपको आपके शरीर की ऊर्जा आवश्यकता समझने में मदद करते हैं और आपके पोषण लक्ष्यों का मार्गदर्शन करते हैं।';
	@override late final _TranslationsDisclaimerHealthMetricsBmrHi bmr = _TranslationsDisclaimerHealthMetricsBmrHi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeHi tdee = _TranslationsDisclaimerHealthMetricsTdeeHi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalHi dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalHi._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureHi extends TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कैलोरी व्यय अनुमान';
	@override String get description => 'जब Health Connect डेटा उपलब्ध नहीं होता, तो हम आज के जलाए गए कैलोरी का अनुमान आपके Basal Metabolic Rate (BMR) और गतिविधि स्तर (TDEE) का उपयोग करके लगाते हैं, दिन के बीते हिस्से के अनुपात के अनुसार समायोजित कर के।';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedHi howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedHi._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHi professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHi._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionHi extends TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्मार्ट फ़ूड पहचान';
	@override String get description => 'एक फ़ोटो लें और AI आपके भोजन को पहचानें';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisHi extends TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI विश्लेषण';
	@override String get description => 'अपने विवरणों से त्वरित पोषण तथ्य पाएं';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationHi extends TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect एकीकरण';
	@override String get description => 'बेहतर जानकारी के लिए Health Connect से कनेक्ट करें';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesHi extends TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'कम वजन';
	@override String get healthyWeight => 'स्वस्थ वजन';
	@override String get overweight => 'अधिक वजन';
	@override String get obese => 'मोटापा';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesHi extends TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'हम आपकी मदद करेंगे एक संतुलित वजन तक पहुँचने के लिए पौष्टिक-घने भोजन के साथ एक स्वस्थ योजना बनाने में।';
	@override String get healthy => 'शाबाश! आप स्वस्थ सीमा में हैं। हम आपकी ऊर्जा और तंदरुस्ती बनाए रखने में मदद करेंगे।';
	@override String overweight({required Object appLabel}) => '${appLabel} AI-संचालित ट्रैकिंग से आपका सफर सरल बनाएगा ताकि आप आराम से अपना लक्ष्य प्राप्त कर सकें।';
	@override String get obese => 'हम व्यक्तिगत मार्गदर्शन और स्थायी रणनीतियों के साथ आपके स्वास्थ्य लक्ष्यों में आपका समर्थन करने के लिए यहाँ हैं।';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingHi extends TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्वचालित कैलोरी ट्रैकिंग';
	@override String get description => 'अपने फिटनेस ऐप्स से जलाए गए कैलोरी को ट्रैक करें';
}

// Path: onboarding.healthConnect.caloriesBurned
class _TranslationsOnboardingHealthConnectCaloriesBurnedHi extends TranslationsOnboardingHealthConnectCaloriesBurnedEn {
	_TranslationsOnboardingHealthConnectCaloriesBurnedHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'खर्च हुई कैलोरी';
	@override String get description => 'Health Connect से आज खर्च हुई कुल कैलोरी पढ़ें';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsHi extends TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रगति इनसाइट्स';
	@override String get description => 'अपने स्वास्थ्य रुझानों के बारे में विस्तृत जानकारी पाएं';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _TranslationsOnboardingHealthConnectShareLoggedMealsHi extends TranslationsOnboardingHealthConnectShareLoggedMealsEn {
	_TranslationsOnboardingHealthConnectShareLoggedMealsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'लॉग किए गए भोजन साझा करें';
	@override String get description => 'Calorify में लॉग किए गए भोजन Health Connect में लिखें';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationHi extends TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'बिना रुकावट एकीकरण';
	@override String get description => 'अपने पसंदीदा स्वास्थ्य ऐप्स से डेटा सिंक करें';
}

// Path: onboarding.healthConnect.userControl
class _TranslationsOnboardingHealthConnectUserControlHi extends TranslationsOnboardingHealthConnectUserControlEn {
	_TranslationsOnboardingHealthConnectUserControlHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'नियंत्रण आपके हाथ में है';
	@override String get description => 'दोनों में से कोई भी अनुमति चुनें और किसी भी समय एक्सेस बदलें';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessHi extends TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आप अकेले नहीं हैं';
	@override String get genericMessage => 'अनुसंधान दिखाता है कि लगातार ट्रैकिंग दीर्घकालिक सफलता का नंबर 1 पूर्वसूचक है।';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'एक ${age} वर्षीय ${gender} के लिए जो ${goal} चाहता है, लगातार ट्रैकिंग सफलता की सबसे बड़ी भविष्यवाणी है।';
	@override String closingMessage({required Object appLabel}) => '${appLabel} इसे मैन्युअल तरीके से करने की तुलना में 10x आसान बनाता है।';
	@override String get getStartedTitle => 'शुरू करने के लिए तैयार?';
	@override String get tipPhoto => 'त्वरित विश्लेषण के लिए अपने भोजन की फोटो लें';
	@override String get tipConsistency => 'महत्त्वपूर्ण प्रगति देखने के लिए नियमित रूप से लॉग करें';
	@override String get tipProgress => 'प्रेरित रहने के लिए अपना प्रगति दैनिक रूप से ट्रैक करें';
	@override String get button => 'चलो चलते हैं';
	@override String get defaultGender => 'व्यक्ति';
	@override String get defaultGoal => 'स्वस्थ आप';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileHi extends TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपकी स्वास्थ्य प्रोफ़ाइल';
	@override String bmiDescription({required Object bmi}) => 'आपके मेट्रिक्स के आधार पर आपका BMI ${bmi} है।';
	@override String get finalizeDescription => 'आपके अनुभव को अनुकूलित करने के लिए चलिए आपकी प्रोफ़ाइल को अंतिम रूप देते हैं।';
	@override String get goalGain => 'बढ़ाना';
	@override String get goalLose => 'कम करना';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'अपने लक्ष्य तक पहुँचने के लिए, आप ${direction} ${diff} ${unit}।';
	@override String get goalReached => 'आप अपने लक्ष्य वजन पर हैं! हम इसे बनाए रखने में आपकी मदद करेंगे।';
	@override String get button => 'चलो चलते हैं';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleHi extends TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'बेहतरीन शुरुआत!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'आपने ${goalText} की दिशा में पहला कदम उठाया है। चूँकि आप ${activityText} हैं, ${appLabel} आपके लक्ष्यों को आपकी जीवनशैली के अनुरूप समायोजित करेगा।';
	@override String get personalizedTargets => 'व्यक्तिगत कैलोरी लक्ष्य';
	@override String get aiMealDetection => 'AI-संचालित भोजन पहचान';
	@override String get macroBreakdowns => 'माइक्रो-न्यूट्रिएंट का विस्तृत विभाजन';
	@override String get button => 'चलो चलते हैं';
	@override String get defaultGoal => 'आपके लक्ष्य';
	@override String get defaultActivity => 'गतिशील';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightHi extends TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'वजन घटाएँ';
	@override String get description => 'वजन घटाने के लिए कैलोरी घाटा बनाएं';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightHi extends TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'वजन बनाए रखें';
	@override String get description => 'अपना वर्तमान वजन बनाए रखें';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightHi extends TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'वजन बढ़ाएँ';
	@override String get description => 'वजन बढ़ाने के लिए कैलोरी अधिशेष बनाएं';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryHi extends TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'निष्क्रिय';
	@override String get description => 'बिल्कुल या बहुत कम व्यायाम';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveHi extends TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'हल्का सक्रिय';
	@override String get description => 'हल्का व्यायाम 1-3 दिन/सप्ताह';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveHi extends TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'मध्यम सक्रिय';
	@override String get description => 'मध्यम व्यायाम 3-5 दिन/सप्ताह';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveHi extends TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'बहुत सक्रिय';
	@override String get description => 'कठोर व्यायाम 6-7 दिन/सप्ताह';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveHi extends TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'अत्यधिक सक्रिय';
	@override String get description => 'बहुत कठोर व्यायाम, शारीरिक काम';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableHi extends TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect उपलब्ध नहीं';
	@override String get description => 'यह डिवाइस पर Health Connect उपलब्ध नहीं है। कृपया Play Store से Health Connect इंस्टॉल करें (Android 9+) या Android 14+ पर अपडेट करें।';
	@override String get unsupportedDescription => 'यह डिवाइस Health Connect का समर्थन नहीं करता।';
}

// Path: settings.healthConnect.updateRequired
class _TranslationsSettingsHealthConnectUpdateRequiredHi extends TranslationsSettingsHealthConnectUpdateRequiredEn {
	_TranslationsSettingsHealthConnectUpdateRequiredHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect पर ध्यान देना ज़रूरी है';
	@override String get description => 'एक्सेस प्रबंधित करने से पहले Health Connect इंस्टॉल या अपडेट करें।';
	@override String get action => 'इंस्टॉल या अपडेट करें';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsHi extends TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अनुमतियाँ';
	@override String get description => 'Health Connect एकीकरण प्रदान करने के लिए निम्नलिखित अनुमतियाँ मांगी जा रही हैं:';
	@override String get granted => 'अनुमोदित';
	@override String get notGranted => 'अनुमोदित नहीं';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHi caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadHi nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadHi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteHi nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteHi._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryHi extends TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'हमारी कहानी';
	@override String content({required Object appLabel}) => '${appLabel} एक साधारण निराशा से जन्मा: ज़्यादातर कैलोरी ट्रैकिंग ऐप या तो अत्यधिक जटिल हैं, लगातार मैन्युअल इनपुट माँगते हैं, ऊँची सदस्यता फीस लेते हैं, या प्राइवेसी से समझौता करते हैं।\n\nएक सोलो डेवलपर के रूप में, मैंने कुछ सरल और निष्पक्ष बनाना चाहा — एक ऐसा ऐप जो मेहनत कम करने के लिए AI का उपयोग करे, तेज़ और मुफ्त रहे, और आपके स्वास्थ्य डेटा का सम्मान करे।\n\n${appLabel} वह ऐप है जिसकी मैंने चाह थी: कोई अकाउंट नहीं, कोई ट्रैकिंग नहीं, कोई विज्ञापन नहीं — सिर्फ़ स्पष्ट, व्यावहारिक इनसाइट और आपके स्वास्थ्य लक्ष्य।';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyHi extends TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपकी प्राइवेसी महत्वपूर्ण है';
	@override String get description => 'प्राइवेसी कोई बाद की चिंता नहीं है — यह डिज़ाइन का सिद्धांत है। इसका व्यवहार में क्या मतलब है:';
	@override String get noAccounts => 'किसी अकाउंट की आवश्यकता नहीं\nऐप तुरंत उपयोग करें। कोई साइन-अप नहीं, कोई पहचान नहीं।';
	@override String noTracking({required Object appLabel}) => 'कोई व्यवहारिक ट्रैकिंग नहीं\n${appLabel} आपकी गतिविधि की निगरानी नहीं करता, उपयोग प्रोफ़ाइल नहीं बनाता, और न ही आपको ऐप्स या वेबसाइटों में ट्रैक करता है।';
	@override String analyticsDisclosure({required Object appLabel}) => 'सीमित एनालिटिक्स और डायग्नोस्टिक्स\nविश्वसनीयता बेहतर करने के लिए ${appLabel} ऐप के बुनियादी इवेंट और क्रैश डायग्नोस्टिक्स का उपयोग करता है। स्वास्थ्य रिकॉर्ड के मान विज्ञापन के लिए उपयोग या बेचे नहीं जाते।';
	@override String noAds({required Object appLabel}) => 'डिज़ाइन के अनुसार ऐड-फ़्री\n${appLabel} बिना विज्ञापनों या डेटा-आधारित मुद्रीकरण के काम करने के लिए बनाया गया है।';
	@override String get noDataSelling => 'डेटा बिक्री नहीं\nआपका स्वास्थ्य डेटा कभी भी बेचा या तृतीय पक्ष के साथ साझा नहीं किया जाएगा।';
	@override String get localStorage => 'लोकल-फर्स्ट स्टोरेज\nआपका डेटा आपके डिवाइस पर ही रहता है।';
	@override String get privacyPolicy => 'गोपनीयता नीति';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperHi extends TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'एक एकल डेवलपर द्वारा निर्मित';
	@override String description({required Object appLabel}) => '${appLabel} एक अकेले डेवलपर द्वारा बनाया और बनाए रखा जाता है जो शांत, प्राइवेसी-सम्बद्ध स्वास्थ्य सॉफ़्टवेयर बनाने पर केंद्रित है।\n\nफीडबैक व्यक्तिगत रूप से पढ़ा जाता है और ऐप की दिशा को आकार देने में मदद करता है।';
	@override String get website => 'वेबसाइट';
	@override String get email => 'ईमेल';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackHi extends TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} का आनंद ले रहे हैं?';
	@override String description({required Object appLabel}) => 'आपका फीडबैक ${appLabel} को सभी के लिए बेहतर बनाने में मदद करता है।';
	@override String get rateApp => 'Play Store पर रेट करें';
	@override String get sendFeedback => 'फीडबैक भेजें';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeHi extends TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पोरशन साइज';
	@override String get description => 'अनुमानों की सटीकता आपके द्वारा सही पोरशन साइज के आकलन पर बहुत निर्भर करती है।';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsHi extends TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'तैयारी की विधियाँ';
	@override String description({required Object appLabel}) => 'खाना पकाने की विधियाँ खाद्य के पोषण सामग्री को काफी बदल सकती हैं। ${appLabel} के अनुमान हमेशा इन परिवर्तनों को ध्यान में नहीं रख सकते हैं।';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsHi extends TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सामग्री';
	@override String get description => 'कई छिपी हुई सामग्रियों वाले जटिल व्यंजन कम सटीक अनुमान दे सकते हैं।';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsHi extends TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'डेटाबेस सीमाएँ';
	@override String description({required Object appLabel}) => '${appLabel} का फ़ूड डेटाबेस व्यापक है परन्तु हर एक खाद्य आइटम या विविधता शामिल न हो सकती है।';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyHi extends TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कैलोरी सटीकता';
	@override String get description => 'यह अनुमान आपके ट्रैक किए गए कैलोरी इनटेक और व्यय के जितना सटीक होगा उतना ही सही होगा। गलत लॉगिंग अनुचित प्रक्षेपण देगी।';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsHi extends TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'जैविक कारक';
	@override String description({required Object appLabel}) => 'वास्तविक वजन घटाना/बढ़ना चयापचय, हार्मोन, नींद, तनाव, हाइड्रेशन और अन्य व्यक्तिगत कारकों से प्रभावित होता है जिन्हें ${appLabel} माप नहीं सकता।';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightHi extends TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'जल वजन और उतार-चढ़ाव';
	@override String get description => 'सामान्य दैनिक वजन पानी के अस्थायी संचयन, पाचन और समय के कारण काफी बदल सकता है। यह अनुमान इन दैनिक परिवर्तनों को ध्यान में नहीं रखता।';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHi extends TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पेशेवर मार्गदर्शन';
	@override String get description => 'इस अनुमान का उपयोग चिकित्सा निर्णय लेने के लिए न करें। व्यक्तिगत वजन प्रबंधन सलाह के लिए हमेशा किसी स्वास्थ्य पेशेवर या पंजीकृत आहार विशेषज्ञ से परामर्श करें।';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrHi extends TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) वे कैलोरी हैं जो आपका शरीर आराम की स्थिति में बुनियादी कार्य (जैसे साँस लेना और परिसंचरण) बनाए रखने के लिए जलाता है। BMR आपकी आयु, जेंडर, ऊँचाई और वजन पर निर्भर करता है। उच्च BMR का अर्थ है कि आपका शरीर आराम में स्वाभाविक रूप से अधिक कैलोरी जलाता है, अक्सर अधिक मांसपेशी द्रव्यमान, कम आयु, या पुरुष होने के कारण। कम BMR आम तौर पर कम मांसपेशी द्रव्यमान, उच्च आयु, या महिला होने को संकेत करता है।';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeHi extends TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) वे कुल कैलोरी हैं जो आप प्रतिदिन जलाते हैं, जिसमें आपका BMR और शारीरिक गतिविधि व दैनिक गति से जलने वाली कैलोरी शामिल है। TDEE आपके BMR और गतिविधि स्तर पर निर्भर करता है। उच्च TDEE का अर्थ है कि आप कुल मिलाकर अधिक कैलोरी जलाते हैं, आमतौर पर अधिक सक्रिय होने या उच्च BMR होने के कारण। कम TDEE कम दैनिक गतिविधि या कम BMR का संकेत देता है।';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalHi extends TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'दैनिक लक्ष्य';
	@override String get description => 'दैनिक लक्ष्य आपका TDEE और वजन लक्ष्य के आधार पर सुझाई गई दैनिक कैलोरी खपत है। वजन घटाने के लिए, आप TDEE से कम कैलोरी लेते हैं। वजन बनाए रखने के लिए, आप TDEE से मेल खाते हैं। वजन बढ़ाने के लिए, आप TDEE से अधिक कैलोरी लेते हैं। यह आपको स्वास्थ्यवर्धक गति से वांछित वजन परिवर्तन प्राप्त करने में मदद करता है।';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedHi extends TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अनुमान कैसे गणना किया गया';
	@override String get description => 'हम आपका TDEE (आपकी प्रोफ़ाइल के आधार पर) गणना करते हैं और दिन के बीते हिस्से (घंटे + मिनट) / 24 से गुणा करके अब तक जलाए गए कैलोरी का अनुमान लगाते हैं।';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHi extends TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पेशेवर मार्गदर्शन';
	@override String get description => 'इस अनुमान का उपयोग चिकित्सा निर्णय लेने के लिए न करें। व्यक्तिगत वजन प्रबंधन सलाह के लिए हमेशा किसी स्वास्थ्य पेशेवर या पंजीकृत आहार विशेषज्ञ से परामर्श करें।';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHi extends TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कुल जलाए गए कैलोरी पढ़ें';
	@override String get description => 'ऐप को Health Connect से आपके कुल जलाए गए कैलोरी पढ़ने की अनुमति देता है।';
	@override String get usage => 'यह अनुमति ऐप में आपका दैनिक कैलोरी बर्न दिखाने के लिए उपयोग की जाती है, जिससे आप दिन भर की कुल ऊर्जा व्यय समझ सकें।';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadHi extends TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पोषण डेटा पढ़ें';
	@override String get description => 'ऐप को Health Connect से पोषण डेटा पढ़ने की अनुमति देता है।';
	@override String get usage => 'यह अनुमति ऐप को अन्य कनेक्ट किए गए ऐप्स द्वारा लॉग किए गए पोषण जानकारी पढ़ने की अनुमति देती है, जिससे आपके पोषण का समग्र दृश्य मिलता है।';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteHi extends TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteHi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पोषण डेटा लिखें';
	@override String get description => 'ऐप को Health Connect में पोषण डेटा लिखने की अनुमति देता है।';
	@override String get usage => 'यह अनुमति ऐप को आपके लॉग किए गए भोजन को Health Connect में सिंक करने की अनुमति देती है, जिससे आपका पोषण डेटा अन्य स्वास्थ्य और फिटनेस ऐप्स के लिए उपलब्ध हो जाता है।';
}

/// The flat map containing all translations for locale <hi>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsHi {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'हिन्दी',
			'flag' => '🇮🇳',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'आपने बहुत अधिक अनुरोध किए हैं। कृपया कुछ क्षण प्रतीक्षा करके पुन: प्रयास करें।',
			'errors.networkError' => 'नेटवर्क त्रुटि। कृपया अपने इंटरनेट कनेक्शन की जाँच करें।',
			'errors.unknownError' => 'कुछ गलत हुआ। कृपया बाद में पुनः प्रयास करें।',
			'errors.loadingProfileData' => 'प्रोफ़ाइल डेटा लोड करने में त्रुटि',
			'errors.somethingWentWrong' => 'कुछ गलत हुआ।',
			'errors.retry' => 'पुनः प्रयास करें',
			'onboarding.welcome' => ({required Object appLabel}) => 'स्वागत है ${appLabel} में',
			'onboarding.subtitle' => 'आपका व्यक्तिगत पोषण साथी, AI द्वारा संचालित',
			'onboarding.getStarted' => 'शुरू करें',
			'onboarding.features.foodRecognition.title' => 'स्मार्ट फ़ूड पहचान',
			'onboarding.features.foodRecognition.description' => 'एक फ़ोटो लें और AI आपके भोजन को पहचानें',
			'onboarding.features.aiAnalysis.title' => 'AI विश्लेषण',
			'onboarding.features.aiAnalysis.description' => 'अपने विवरणों से त्वरित पोषण तथ्य पाएं',
			'onboarding.features.healthIntegration.title' => 'Health Connect एकीकरण',
			'onboarding.features.healthIntegration.description' => 'बेहतर जानकारी के लिए Health Connect से कनेक्ट करें',
			'onboarding.gender.title' => 'आपका जेंडर क्या है?',
			'onboarding.gender.description' => 'जेंडर हमें आपका बेसल मेटाबोलिक रेट (BMR) ठीक से गणना करने में मदद करता है।',
			'onboarding.gender.next' => 'अगला',
			'onboarding.height.title' => 'आपकी ऊँचाई कितनी है?',
			'onboarding.height.description' => 'आपकी ऊँचाई से BMI और ऊर्जा आवश्यकताओं की सटीक गणना करने में मदद मिलती है।',
			'onboarding.height.metric' => 'मेट्रिक',
			'onboarding.height.imperial' => 'इम्पीरियल',
			'onboarding.height.next' => 'अगला',
			'onboarding.weight.currentTitle' => 'आपका वर्तमान वजन क्या है?',
			'onboarding.weight.currentDescription' => 'आपका वर्तमान वजन आपकी दैनिक लक्ष्यों को व्यक्तिगत बनाने के लिए आवश्यक है।',
			'onboarding.weight.targetTitle' => 'आपका लक्ष्य वजन क्या है?',
			'onboarding.weight.targetDescription' => 'लक्ष्य वजन सेट करने से लंबी अवधि की योजना निर्धारित करने में मदद मिलती है।',
			'onboarding.weight.metric' => 'मेट्रिक',
			'onboarding.weight.imperial' => 'इम्पीरियल',
			'onboarding.weight.next' => 'अगला',
			'onboarding.age.title' => 'आपका जन्मदिन कब है?',
			'onboarding.age.description' => 'आपकी आयु हमें आपकी कैलोरी आवश्यकता सटीक रूप से गणना करने में मदद करती है।',
			'onboarding.age.next' => 'अगला',
			'onboarding.bmiScale.underweight' => 'कम',
			'onboarding.bmiScale.healthy' => 'स्वस्थ',
			'onboarding.bmiScale.overweight' => 'अधिक',
			'onboarding.bmiScale.obese' => 'मोटापा',
			'onboarding.bmiScale.categories.underweight' => 'कम वजन',
			'onboarding.bmiScale.categories.healthyWeight' => 'स्वस्थ वजन',
			'onboarding.bmiScale.categories.overweight' => 'अधिक वजन',
			'onboarding.bmiScale.categories.obese' => 'मोटापा',
			'onboarding.bmiScale.messages.underweight' => 'हम आपकी मदद करेंगे एक संतुलित वजन तक पहुँचने के लिए पौष्टिक-घने भोजन के साथ एक स्वस्थ योजना बनाने में।',
			'onboarding.bmiScale.messages.healthy' => 'शाबाश! आप स्वस्थ सीमा में हैं। हम आपकी ऊर्जा और तंदरुस्ती बनाए रखने में मदद करेंगे।',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} AI-संचालित ट्रैकिंग से आपका सफर सरल बनाएगा ताकि आप आराम से अपना लक्ष्य प्राप्त कर सकें।',
			'onboarding.bmiScale.messages.obese' => 'हम व्यक्तिगत मार्गदर्शन और स्थायी रणनीतियों के साथ आपके स्वास्थ्य लक्ष्यों में आपका समर्थन करने के लिए यहाँ हैं।',
			'onboarding.weightGoal.title' => 'आपका लक्ष्य क्या है?',
			'onboarding.weightGoal.description' => 'वह लक्ष्य चुनें जो सबसे अच्छी तरह बताता है कि आप क्या हासिल करना चाहते हैं',
			'onboarding.activityLevel.title' => 'आप कितने सक्रिय हैं?',
			'onboarding.activityLevel.description' => 'यह हमें आपकी दैनिक कैलोरी आवश्यकताओं को अधिक सटीक रूप से गणना करने में मदद करता है',
			'onboarding.healthConnect.title' => 'Health Connect से कनेक्ट करें',
			'onboarding.healthConnect.description' => 'बेहतर जानकारी और स्वचालित कैलोरी ट्रैकिंग के लिए अपने स्वास्थ्य डेटा को सिंक करें',
			'onboarding.healthConnect.overviewDescription' => 'अपने दैनिक लक्ष्य में खर्च हुई कैलोरी का उपयोग करें और चाहें तो लॉग किए गए भोजन Health Connect के साथ साझा करें।',
			'onboarding.healthConnect.automaticTracking.title' => 'स्वचालित कैलोरी ट्रैकिंग',
			'onboarding.healthConnect.automaticTracking.description' => 'अपने फिटनेस ऐप्स से जलाए गए कैलोरी को ट्रैक करें',
			'onboarding.healthConnect.caloriesBurned.title' => 'खर्च हुई कैलोरी',
			'onboarding.healthConnect.caloriesBurned.description' => 'Health Connect से आज खर्च हुई कुल कैलोरी पढ़ें',
			'onboarding.healthConnect.progressInsights.title' => 'प्रगति इनसाइट्स',
			'onboarding.healthConnect.progressInsights.description' => 'अपने स्वास्थ्य रुझानों के बारे में विस्तृत जानकारी पाएं',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'लॉग किए गए भोजन साझा करें',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Calorify में लॉग किए गए भोजन Health Connect में लिखें',
			'onboarding.healthConnect.seamlessIntegration.title' => 'बिना रुकावट एकीकरण',
			'onboarding.healthConnect.seamlessIntegration.description' => 'अपने पसंदीदा स्वास्थ्य ऐप्स से डेटा सिंक करें',
			'onboarding.healthConnect.userControl.title' => 'नियंत्रण आपके हाथ में है',
			'onboarding.healthConnect.userControl.description' => 'दोनों में से कोई भी अनुमति चुनें और किसी भी समय एक्सेस बदलें',
			'onboarding.healthConnect.connected' => 'Health Connect कनेक्टेड',
			'onboarding.healthConnect.notConnected' => 'Health Connect कनेक्ट नहीं है',
			'onboarding.healthConnect.setup' => 'Health Connect सेटअप करें',
			'onboarding.healthConnect.skipForNow' => 'अभी छोड़ें',
			'onboarding.healthConnect.statusConnected' => 'Health Connect जुड़ा हुआ है।',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect सफलतापूर्वक जुड़ चुका है!',
			'onboarding.healthConnect.statusNotConnected' => 'वे Health Connect सुविधाएँ चुनें जिन्हें आप चालू करना चाहते हैं।',
			'onboarding.healthConnect.statusPartial' => 'Health Connect आंशिक रूप से जुड़ा है। दोनों सुविधाओं का उपयोग करने के लिए शेष अनुमति चालू करें।',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'जारी रखने के लिए Health Connect इंस्टॉल या अपडेट करें।',
			'onboarding.healthConnect.statusUnavailable' => 'यह डिवाइस Health Connect का समर्थन नहीं करता।',
			'onboarding.healthConnect.installOrUpdate' => 'इंस्टॉल या अपडेट करें',
			'onboarding.healthConnect.manageAccess' => 'एक्सेस प्रबंधित करें',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'अनुमति अस्वीकृत। कृपया ${appLabel} के लिए अपने फोन सेटिंग्स से Health Connect अनुमतियाँ सक्षम करें।',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect सेटअप में त्रुटि: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'आप अकेले नहीं हैं',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'अनुसंधान दिखाता है कि लगातार ट्रैकिंग दीर्घकालिक सफलता का नंबर 1 पूर्वसूचक है।',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'एक ${age} वर्षीय ${gender} के लिए जो ${goal} चाहता है, लगातार ट्रैकिंग सफलता की सबसे बड़ी भविष्यवाणी है।',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} इसे मैन्युअल तरीके से करने की तुलना में 10x आसान बनाता है।',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'शुरू करने के लिए तैयार?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'त्वरित विश्लेषण के लिए अपने भोजन की फोटो लें',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'महत्त्वपूर्ण प्रगति देखने के लिए नियमित रूप से लॉग करें',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'प्रेरित रहने के लिए अपना प्रगति दैनिक रूप से ट्रैक करें',
			'onboarding.reinforcement.trackingSuccess.button' => 'चलो चलते हैं',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'व्यक्ति',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'स्वस्थ आप',
			'onboarding.reinforcement.healthProfile.title' => 'आपकी स्वास्थ्य प्रोफ़ाइल',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'आपके मेट्रिक्स के आधार पर आपका BMI ${bmi} है।',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'आपके अनुभव को अनुकूलित करने के लिए चलिए आपकी प्रोफ़ाइल को अंतिम रूप देते हैं।',
			'onboarding.reinforcement.healthProfile.goalGain' => 'बढ़ाना',
			'onboarding.reinforcement.healthProfile.goalLose' => 'कम करना',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'अपने लक्ष्य तक पहुँचने के लिए, आप ${direction} ${diff} ${unit}।',
			'onboarding.reinforcement.healthProfile.goalReached' => 'आप अपने लक्ष्य वजन पर हैं! हम इसे बनाए रखने में आपकी मदद करेंगे।',
			'onboarding.reinforcement.healthProfile.button' => 'चलो चलते हैं',
			'onboarding.reinforcement.goalLifestyle.title' => 'बेहतरीन शुरुआत!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'आपने ${goalText} की दिशा में पहला कदम उठाया है। चूँकि आप ${activityText} हैं, ${appLabel} आपके लक्ष्यों को आपकी जीवनशैली के अनुरूप समायोजित करेगा।',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'व्यक्तिगत कैलोरी लक्ष्य',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-संचालित भोजन पहचान',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'माइक्रो-न्यूट्रिएंट का विस्तृत विभाजन',
			'onboarding.reinforcement.goalLifestyle.button' => 'चलो चलते हैं',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'आपके लक्ष्य',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'गतिशील',
			'tabs.dashboard' => 'डैशबोर्ड',
			'tabs.history' => 'इतिहास',
			'home.aiSummary.title' => 'आपका AI सारांश',
			'home.aiSummary.logMore' => 'व्यक्तिगत AI इनसाइट्स पाने के लिए अगले कुछ दिनों में और भोजन लॉग करें।',
			'home.aiSummary.loading' => 'आपका सारांश लोड हो रहा है...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} भोजन लॉग किए',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'संतुलन स्कोर ${score}',
			'home.aiSummary.topFoods' => 'शीर्ष खाद्य पदार्थ',
			'home.aiSummary.trendUp' => 'कैलोरीज़ बढ़ रही हैं',
			'home.aiSummary.trendDown' => 'कैलोरीज़ घट रही हैं',
			'home.aiSummary.trendSteady' => 'कैलोरीज़ स्थिर बनी हुई हैं',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'अपडेट किया गया ${time}',
			'home.dailyGoal.title' => 'अपना दैनिक लक्ष्य सेट करें',
			'home.dailyGoal.titleSet' => 'आपका दैनिक लक्ष्य',
			'home.dailyGoal.description' => 'क्या आप अपनी वेलनेस यात्रा शुरू करने के लिए तैयार हैं? अपनी प्रगति शुरू करने के लिए नीचे अपना दैनिक कैलोरी लक्ष्य सेट करें।',
			'home.dailyGoal.descriptionSet' => 'आपकी दिशा तय हो चुकी है! यह आपका दैनिक कैलोरी लक्ष्य है जो आपकी मार्गदर्शिका करेगा।',
			'home.dailyGoal.yourGoal' => 'आपका लक्ष्य',
			'home.dailyGoal.goal' => 'लक्ष्य',
			'home.dailyGoal.dailyCalories' => 'दैनिक कैलोरी (kcal)',
			'home.dailyGoal.setGoal' => 'लक्ष्य सेट करें',
			'home.dailyGoal.intake' => 'सेवन',
			'home.dailyGoal.burned' => 'बर्न',
			'home.dailyGoal.weightImpact' => 'वजन प्रभाव',
			'home.dailyGoal.estLoss' => 'अनुमानित घटाव',
			'home.dailyGoal.estGain' => 'अनुमानित वृद्धि',
			'home.dailyGoal.kcal' => 'किलो कैलोरी',
			'home.dailySummary.title' => 'दैनिक सारांश',
			'home.dailySummary.calories' => 'कैलोरी',
			'home.dailySummary.carbs' => 'कार्बोहाइड्रेट',
			'home.dailySummary.protein' => 'प्रोटीन',
			'home.dailySummary.fat' => 'वसा',
			'home.dailySummary.fiber' => 'फाइबर',
			'home.dailySummary.grams' => 'ग्राम',
			'home.dailySummary.chartAccessibilityLabel' => 'माइक्रो-न्यूट्रिएंट चार्ट',
			'home.intakeProgress.title' => 'आज का मैक्रो विभाजन',
			'home.intakeProgress.target' => 'लक्ष्य',
			'home.intakeProgress.current' => 'वर्तमान',
			'home.intakeHistory.title' => '7-दिन का मैक्रो इतिहास',
			'home.intakeHistory.trendTitle' => 'आज का रुझान',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'पीक: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'अभी तक कोई इतिहास नहीं',
			'home.intakeHistory.startLogging' => 'यहाँ अपने भोजन लॉग करना शुरू करें\nताकि आप अपना 7-दिन मैक्रो रुझान देख सकें',
			'home.mealLog.title' => 'लॉग किए गए भोजन',
			'home.mealLog.emptyMessage' => 'यहाँ लॉग करने के लिए अपनी आखिरी भोजन की तस्वीर लें।',
			'home.mealLog.noMealsToday' => 'आज के लिए कोई भोजन रिकॉर्ड नहीं',
			'home.mealLog.seeAllMeals' => 'सभी भोजन देखें',
			'home.mealDescription.title' => 'AI के साथ त्वरित जोड़',
			'home.mealDescription.description' => 'अपने भोजन का वर्णन करें, और AI विवरण संभालेगा।',
			'home.mealDescription.hint' => 'उदा. नाश्ते में मैंने ओटमील का बड़ा कटोरा, कटा केला और एक स्कूप व्हे लिया ...',
			'home.mealDescription.analyzeMeal' => 'भोजन विश्लेषण करें',
			'home.favoriteMeals.title' => 'पसंदीदा भोजन',
			'home.favoriteMeals.description' => 'अपने पसंदीदा भोजन को तेजी से जोड़ें।',
			'home.favoriteMeals.noFavorites' => 'अभी कोई पसंदीदा भोजन नहीं है।',
			'home.favoriteMeals.addFavoriteHint' => 'किसी भोजन पर स्टार क्लिक करके उसे पसंदीदा बनाएं।',
			'home.favoriteMeals.seeAll' => 'सभी देखें',
			'home.favoriteMeals.add' => 'जोड़ें',
			'home.mealSnap.title' => 'फोटो लें और अपना भोजन ट्रैक करें',
			'home.mealSnap.description' => 'AI विश्लेषण के लिए अपने खाने की तस्वीर लेने के लिए अपना कैमरा उपयोग करें।',
			'home.mealSnap.openCamera' => 'कैमरा खोलें',
			'home.mealSnap.gallery' => 'गैलरी',
			'home.mealSnap.compressingPhoto' => 'फ़ोटो अनुकूलित की जा रही है…',
			'home.mealSnap.uploadingPhoto' => 'फ़ोटो अपलोड हो रही है…',
			'home.connectHealth.title' => 'Health Connect से सिंक करें',
			'home.connectHealth.description' => 'अपना पोषण डेटा Health Connect से सिंक करें',
			'home.connectHealth.dataUseDescription' => 'अपने लक्ष्य में खर्च हुई कैलोरी का उपयोग करें और लॉग किए गए भोजन साझा करें',
			'home.connectHealth.install' => 'इंस्टॉल करें',
			'home.connectHealth.installOrUpdate' => 'इंस्टॉल या अपडेट करें',
			'home.connectHealth.connect' => 'कनेक्ट करें',
			'history.noMeals' => 'कोई भोजन रिकॉर्ड नहीं',
			'history.emptyMessage' => 'यहाँ लॉग करने के लिए अपनी आखिरी भोजन की तस्वीर लें।',
			'history.today' => 'आज',
			'history.yesterday' => 'कल',
			'meal.ohNo' => 'ओह नहीं!',
			'meal.delete' => 'हटाएँ',
			'meal.editMeal' => 'भोजन संपादित करें',
			'meal.addMeal' => 'भोजन जोड़ें',
			'meal.saveMeal' => 'भोजन सहेजें',
			'meal.save' => 'सहेजें',
			'meal.mealName' => 'भोजन का नाम',
			'meal.mealNameHint' => 'उदा., स्क्रॅम्बल्ड एग्स के साथ टोस्ट',
			'meal.nameRequired' => 'सहेजने से पहले भोजन का नाम दर्ज करें।',
			'meal.mealQuantity' => 'भोजन मात्रा',
			'meal.mealQuantityHint' => 'उदा., 1 कटोरा, 2 स्लाइस',
			'meal.timeOfMeal' => 'भोजन का समय',
			'meal.timeOfMealHint' => 'जिस समय आपने भोजन किया था उसे चुनें',
			'meal.mealType' => 'भोजन का प्रकार',
			'meal.nutrition.calories' => 'कैलोरी',
			'meal.nutrition.carbs' => 'कार्बोहाइड्रेट (g)',
			'meal.nutrition.protein' => 'प्रोटीन (g)',
			'meal.nutrition.fat' => 'वसा (g)',
			'meal.nutrition.fiber' => 'फाइबर (g)',
			'meal.deleteConfirmation.title' => 'भोजन हटाएं',
			'meal.deleteConfirmation.message' => 'क्या आप सुनिश्चित हैं कि आप इस भोजन प्रविष्टि को हटाना चाहते हैं?',
			'meal.deleteConfirmation.cancel' => 'रद्द करें',
			'meal.deleteConfirmation.delete' => 'हटाएँ',
			'meal.addedToLog' => 'भोजन आपके लॉग में जोड़ा गया!',
			'meal.couldNotAdd' => ({required Object error}) => 'भोजन जोड़ने में असमर्थ: ${error}',
			'meal.savedSuccessfully' => 'भोजन सफलतापूर्वक जोड़ा गया!',
			'meal.updatedSuccessfully' => 'भोजन सफलतापूर्वक अपडेट किया गया!',
			'meal.errorSaving' => ({required Object error}) => 'भोजन सहेजने में त्रुटि: ${error}',
			'meal.removedFromFavorites' => 'पसंदीदा से हटाया गया!',
			'meal.savedAsFavorite' => 'भोजन पसंदीदा के रूप में सहेजा गया!',
			'meal.unfavorite' => 'पसंदीदा हटाएं',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'पसंदीदा अपडेट नहीं कर सके: ${error}',
			'meal.feedbackThanks' => 'फीडबैक के लिए धन्यवाद!',
			'meal.reanalysisUpdated' => 'आपकी प्रतिक्रिया के आधार पर भोजन विश्लेषण अपडेट किया गया।',
			'meal.failedToProcess' => ({required Object error}) => 'प्रोसेस करने में विफल: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'इमेज प्रोसेस करने में विफल: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'इमेज संकुचित करते समय त्रुटि: ${error}',
			'meal.failedToSave' => 'डेटा सहेजने में विफल। कृपया पुनः प्रयास करें।',
			'meal.skip' => 'अनदेखा करें',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'प्रश्न ${current} / ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'कोई प्रश्न उपलब्ध नहीं',
			'meal.questionFlow.next' => 'अगला',
			'meal.questionFlow.continueLabel' => 'जारी रखें',
			'meal.analysis.title' => 'आपके भोजन का विश्लेषण किया जा रहा है',
			'meal.analysis.stepStarted' => 'शुरू किया जा रहा है…',
			'meal.analysis.stepDecomposition' => 'आपके भोजन को समझना…',
			'meal.analysis.stepIngredients' => 'सामग्री को पोषण डेटा से मेल करना…',
			'meal.analysis.stepUncertainty' => 'विश्वास की जाँच कर रहे हैं…',
			'meal.analysis.stepMealTypeQuestion' => 'लगभग पूरा…',
			'meal.analysis.stepResult' => 'आपका परिणाम अंतिम रूप दे रहे हैं…',
			'meal.analysis.stepError' => 'कुछ गलत हुआ',
			'meal.analysis.stepDefault' => 'आपके भोजन का विश्लेषण किया जा रहा है…',
			'meal.analysis.progressUnderstand' => 'आपके भोजन को समझना',
			'meal.analysis.progressMatch' => 'सामग्री का पोषण देखना',
			'meal.analysis.progressCheck' => 'पोरशन और विश्वास की जाँच',
			'meal.analysis.progressMealType' => 'भोजन प्रकार चुनना',
			'meal.analysis.progressFinish' => 'कैलोरी और मैक्रोज़ की गणना',
			'meal.analysis.detectedIngredientHeading' => 'सामग्री जो हम देख रहे हैं',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} और',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} सामग्री पहचान की गई',
			'meal.analysis.ingredientsPending' => 'सामग्री स्कैन हो रही है…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '“${text}”',
			'meal.analysis.offlineTip0' => 'सूचना: नियमितता पूर्णता से महत्वपूर्ण है—नियमित लॉग उन पैटर्न को उजागर करते हैं जो मायने रखते हैं।',
			'meal.analysis.offlineTip1' => 'सूचना: फ़ोटो के लिए, प्राकृतिक रोशनी और ऊपर से लिया गया दृश्य मात्रा की सटीकता में मदद करते हैं।',
			'meal.analysis.offlineTip2' => 'टिप: पेय, सॉस और खाना पकाने का तेल भी बताएं — ये कैलोरी जोड़ते हैं जिन्हें लोग अक्सर भूल जाते हैं।',
			'meal.analysis.offlineTip3' => 'सूचना: एक त्वरित भाग नोट (1 कटोरा, बड़ा कॉफ़ी) अनुमान को काफी तीक्ष्ण बनाता है।',
			'meal.analysis.offlineTip4' => 'सूचना: भोजन के बाद लॉग करना भी आदत बनाता है; पूर्णता वैकल्पिक है।',
			'meal.analysis.offlineTip5' => 'सूचना: जब कैलोरीज़ बहुत बदलती हों तो बताएं कि भोजन कैसे पकाया गया था (तला हुआ बनाम बेक्ड)।',
			'meal.localInference.reviewTitle' => 'पहचाने गए इंग्रीडिएंट्स की समीक्षा करें',
			'meal.localInference.reviewSubtitle' => 'यह आपके डिवाइस पर इंटरप्रेट किया गया था। पोषण की गणना से पहले नाम या मात्रा को सही करें।',
			'meal.localInference.mealName' => 'भोजन का नाम',
			'meal.localInference.ingredient' => 'इंग्रीडिएंट',
			'meal.localInference.grams' => 'अनुमानित ग्राम',
			'meal.localInference.removeIngredient' => 'इंग्रीडिएंट हटाएँ',
			'meal.localInference.continueLabel' => 'जारी रखें',
			'meal.localInference.invalidProposal' => 'कम से कम एक इंग्रीडिएंट जोड़ें और ग्राम की मात्रा सकारात्मक रखें।',
			'meal.localInference.localUnavailable' => 'ऑन-डिवाइस विश्लेषण अभी उपलब्ध नहीं है।',
			'meal.localInference.calculationDetails' => 'इसकी गणना कैसे की गई',
			'meal.localInference.interpretationLocal' => 'इस डिवाइस पर इंटरप्रेट किए गए इंग्रीडिएंट्स',
			'meal.localInference.interpretationCloud' => 'क्लाउड में इंटरप्रेट किए गए इंग्रीडिएंट्स',
			'meal.localInference.interpretationManual' => 'आपके द्वारा समीक्षा किए गए या संपादित किए गए इंग्रीडिएंट्स',
			'meal.localInference.nutritionRemote' => 'Calorify के माध्यम से USDA से प्राप्त पोषण',
			'meal.localInference.nutritionFallback' => 'कुछ पोषण मूल्यों का अनुमान रिमोटली लगाया गया था',
			'meal.localInference.calculationServer' => 'कैलोरी और मैक्रोज़ की गणना Calorify द्वारा की गई',
			'meal.localInference.fallbackUsed' => 'लोकल विश्लेषण क्लाउड प्रोसेसिंग पर स्विच हो गया',
			'meal.localInference.noRawContent' => 'डायग्नोस्टिक रसीदों में आपके भोजन का टेक्स्ट या फोटो शामिल नहीं होता है।',
			'meal.feedback.title' => 'क्या गलत दिख रहा है?',
			'meal.feedback.subtitle' => 'कृपया एक या अधिक समस्याओं का चयन करके हमें विश्लेषण सुधारने में मदद करें।',
			'meal.feedback.tellUsMore' => 'हमें और बताएं',
			'meal.feedback.describeIncorrect' => 'क्या गलत था इसका विवरण दें',
			'meal.feedback.submit' => 'जमा करें',
			'meal.feedback.issueFoodIdentification' => 'भोजन पहचान',
			'meal.feedback.issuePortionSize' => 'पोरशन साइज',
			'meal.feedback.issueCalorieDistribution' => 'कैलोरी वितरण',
			'meal.feedback.issueMacrosWrong' => 'मैक्रोज़ गलत हैं',
			'meal.feedback.issueMissingItems' => 'गायब आइटम',
			'meal.feedback.issueExtraItems' => 'अतिरिक्त आइटम',
			'meal.feedback.issueOther' => 'अन्य',
			'favorites.title' => 'पसंदीदा',
			'favorites.empty' => 'अभी कोई पसंदीदा भोजन नहीं।',
			'favorites.searchPlaceholder' => 'पसंदीदा भोजन खोजें',
			'favorites.searchEmptyTitle' => 'आपकी खोज से कोई पसंदीदा मेल नहीं खाता',
			'favorites.searchEmptySubtitle' => 'किसी अलग भोजन का नाम, मात्रा, या भोजन प्रकार आज़माएँ।',
			'favorites.sortLabel' => 'पसंदीदा सॉर्ट करें',
			'favorites.undo' => 'पूर्ववत करें',
			'favorites.removed' => ({required Object name}) => '${name} को पसंदीदा से हटाया गया',
			'favorites.sortOptions.recent' => 'हालिया',
			'favorites.sortOptions.calories' => 'कैलोरी',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'प्रोफ़ाइल',
			'profile.noProfileData' => 'कोई प्रोफ़ाइल डेटा नहीं मिला',
			'profile.yourProfile' => 'आपकी प्रोफ़ाइल',
			'profile.viewAndManage' => 'अपनी स्वास्थ्य जानकारी देखें और प्रबंधित करें',
			'profile.sections.profile' => 'प्रोफ़ाइल',
			'profile.sections.basicInformation' => 'बुनियादी जानकारी',
			'profile.sections.goalsAndActivity' => 'लक्ष्य और गतिविधि',
			'profile.sections.calculatedValues' => 'गणना किए गए मान',
			'profile.gender' => 'लिंग',
			'profile.height' => 'ऊँचाई',
			'profile.weight' => 'वजन',
			'profile.age' => 'आयु',
			'profile.weightGoal' => 'वजन लक्ष्य',
			'profile.targetWeight' => 'लक्ष्य वजन',
			'profile.activityLevel' => 'गतिविधि स्तर',
			'profile.healthMetrics' => 'स्वास्थ्य मेट्रिक्स',
			'profile.notSet' => 'सेट नहीं किया गया',
			'profile.years' => 'साल',
			'profile.updatedSuccessfully' => 'प्रोफ़ाइल सफलतापूर्वक अपडेट हुई!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'दैनिक लक्ष्य',
			'profile.calculatedValues.calPerDay' => 'cal/दिन',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'हेल्थ स्कोर',
			'healthScore.whyThisScore' => 'यह स्कोर क्यों?',
			'healthScore.note' => 'यह स्कोर पहचानी गई सामग्री और पोषण घनत्व के आधार पर AI का अनुमान है। व्यक्तिगत आहार सलाह के लिए हमेशा किसी पेशेवर से परामर्श करें।',
			'healthScore.unhealthy' => 'अस्वस्थ',
			'healthScore.healthy' => 'स्वस्थ',
			'healthScore.neutral' => 'तटस्थ',
			'editProfile.title' => 'प्रोफ़ाइल संपादित करें',
			'editProfile.sections.personalInformation' => 'व्यक्तिगत जानकारी',
			'editProfile.sections.physicalMeasurements' => 'शारीरिक माप',
			'editProfile.sections.goalsAndActivity' => 'लक्ष्य और गतिविधि',
			'editProfile.gender' => 'लिंग',
			'editProfile.dateOfBirth' => 'जन्मतिथि',
			'editProfile.height' => 'ऊँचाई',
			'editProfile.weight' => 'वजन',
			'editProfile.weightGoal' => 'वजन लक्ष्य',
			'editProfile.activityLevel' => 'गतिविधि स्तर',
			'editProfile.metric' => 'मेट्रिक',
			'editProfile.imperial' => 'इम्पीरियल',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'पाउंड',
			'editProfile.metricCm' => 'मेट्रिक (cm)',
			'editProfile.imperialFtIn' => 'इम्पीरियल (ft/in)',
			'editProfile.metricKg' => 'मेट्रिक (kg)',
			'editProfile.imperialLbs' => 'इम्पीरियल (lbs)',
			'editProfile.genders.male' => 'पुरुष',
			'editProfile.genders.female' => 'महिला',
			'editProfile.genders.other' => 'अन्य',
			'editProfile.weightGoals.loseWeight.name' => 'वजन घटाएँ',
			'editProfile.weightGoals.loseWeight.description' => 'वजन घटाने के लिए कैलोरी घाटा बनाएं',
			'editProfile.weightGoals.maintainWeight.name' => 'वजन बनाए रखें',
			'editProfile.weightGoals.maintainWeight.description' => 'अपना वर्तमान वजन बनाए रखें',
			'editProfile.weightGoals.gainWeight.name' => 'वजन बढ़ाएँ',
			'editProfile.weightGoals.gainWeight.description' => 'वजन बढ़ाने के लिए कैलोरी अधिशेष बनाएं',
			'editProfile.activityLevels.sedentary.name' => 'निष्क्रिय',
			'editProfile.activityLevels.sedentary.description' => 'बिल्कुल या बहुत कम व्यायाम',
			'editProfile.activityLevels.lightlyActive.name' => 'हल्का सक्रिय',
			'editProfile.activityLevels.lightlyActive.description' => 'हल्का व्यायाम 1-3 दिन/सप्ताह',
			'editProfile.activityLevels.moderatelyActive.name' => 'मध्यम सक्रिय',
			'editProfile.activityLevels.moderatelyActive.description' => 'मध्यम व्यायाम 3-5 दिन/सप्ताह',
			'editProfile.activityLevels.veryActive.name' => 'बहुत सक्रिय',
			'editProfile.activityLevels.veryActive.description' => 'कठोर व्यायाम 6-7 दिन/सप्ताह',
			'editProfile.activityLevels.extremelyActive.name' => 'अत्यधिक सक्रिय',
			'editProfile.activityLevels.extremelyActive.description' => 'बहुत कठोर व्यायाम, शारीरिक काम',
			'settings.title' => 'सेटिंग्स',
			'settings.sections.profile' => 'प्रोफ़ाइल',
			'settings.sections.localization' => 'स्थानीयकरण',
			'settings.sections.notifications' => 'सूचनाएँ',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.localInference' => 'ऑन-डिवाइस विश्लेषण',
			'settings.sections.supportAndLegal' => 'सहायता और कानूनी',
			'settings.sections.about' => 'बारे में',
			'settings.sections.dangerZone' => 'जोखिम क्षेत्र',
			'settings.sections.developer' => 'डेवलपर',
			'settings.editProfile.title' => 'प्रोफ़ाइल संपादित करें',
			'settings.editProfile.subtitle' => 'अपनी व्यक्तिगत जानकारी अपडेट करें',
			'settings.language.title' => 'भाषा',
			'settings.language.subtitle' => 'अपनी पसंदीदा भाषा चुनें',
			'settings.language.searchHint' => 'भाषाएँ खोजें...',
			'settings.language.noResults' => 'कोई परिणाम नहीं मिला',
			'settings.heightUnit.title' => 'ऊँचाई की इकाई',
			'settings.weightUnit.title' => 'वजन की इकाई',
			'settings.mealReminders.title' => 'भोजन अनुस्मारक',
			'settings.mealReminders.subtitle' => 'समय पर अलर्ट के साथ ट्रैक पर रहें',
			'settings.localInference.title' => 'ऑन-डिवाइस मील विश्लेषण',
			'settings.localInference.subtitle' => 'पोषण की गणना से पहले Gemini Nano के साथ समर्थित भोजन को इंटरप्रेट करें',
			'settings.localInference.unavailable' => 'इस डिवाइस पर उपलब्ध नहीं है',
			'settings.localInference.rolloutUnavailable' => 'उपयुक्त हार्डवेयर मिला, लेकिन यह सुविधा इस ऐप रिलीज़ के लिए सक्षम नहीं है',
			'settings.localInference.modelSetup' => 'इसे सक्षम करने से पहले Gemini Nano का डाउनलोड पूरा होना आवश्यक है',
			'settings.localInference.useLocalTitle' => 'ऑन-डिवाइस विश्लेषण का उपयोग करें',
			'settings.localInference.useLocalSubtitle' => 'वैकल्पिक और डिफ़ॉल्ट रूप से बंद। जटिल भोजन के लिए परिणाम कम विश्वसनीय हो सकते हैं।',
			'settings.localInference.disclosureTitle' => 'ऑन-डिवाइस विश्लेषण सक्षम करने से पहले',
			'settings.localInference.disclosureBody' => 'Gemini Nano समर्थित Android डिवाइसों पर इंग्रीडिएंट्स की पहचान कर सकता है और मात्रा का अनुमान लगा सकता है। आपके द्वारा समीक्षा किया गया इंग्रीडिएंट प्रस्ताव USDA पोषण ग्राउंडिंग और गणना के लिए Calorify को भेजा जाता है।',
			'settings.localInference.disclosureLimit1' => 'जटिल व्यंजन, छिपे हुए इंग्रीडिएंट्स और मात्रा का आकार गलत पहचाना जा सकता है।',
			'settings.localInference.disclosureLimit2' => 'डाउनलोडिंग के दौरान, व्यस्त होने पर, बैकग्राउंड में होने पर, या डिवाइस की सीमाओं के कारण मॉडल अनुपलब्ध हो सकता है।',
			'settings.localInference.disclosureLimit3' => 'यदि लोकल इंटरप्रिटेशन पूरा नहीं हो पाता है, तो यह बीटा स्वचालित रूप से आपके मूल भोजन विवरण को क्लाउड विश्लेषण के लिए Calorify को भेज देता है।',
			'settings.localInference.acknowledgement' => 'मैं समझता/समझती हूँ कि मुझे पहचाने गए इंग्रीडिएंट्स और मात्रा की समीक्षा करनी चाहिए।',
			'settings.localInference.enable' => 'स्वीकार करें और सक्षम करें',
			'settings.localInference.cancel' => 'रद्द करें',
			'settings.theme.title' => 'थीम',
			'settings.theme.light' => 'लाइट',
			'settings.theme.dark' => 'डार्क',
			'settings.theme.system' => 'सिस्टम',
			'settings.sendFeedback.title' => 'फीडबैक भेजें',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} को बेहतर बनाने में मदद करें',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} ऐप प्रतिक्रिया',
			'settings.sendFeedback.emailBodyPrefix' => 'कृपया नीचे अपनी प्रतिक्रिया दें:',
			'settings.sendFeedback.appVersion' => 'ऐप संस्करण',
			'settings.sendFeedback.device' => 'डिवाइस',
			'settings.sendFeedback.osVersion' => 'OS संस्करण',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'भोजन इतिहास एक्सपोर्ट करें',
			'settings.exportMealHistory.subtitle' => 'अपने लॉग किए गए भोजन का CSV साझा करें',
			'settings.exportMealHistory.shareText' => 'आपका Calorify भोजन इतिहास निर्यात',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'भोजन इतिहास एक्सपोर्ट नहीं कर सके: ${error}',
			'settings.clearAllData.title' => 'सभी डेटा साफ़ करें',
			'settings.clearAllData.subtitle' => 'अपनी सभी जानकारी को अपरिवर्तनीय रूप से हटाएं',
			'settings.clearAllData.localOnlySubtitle' => 'इस डिवाइस पर संग्रहीत Calorify डेटा हटाएँ',
			'settings.clearAllData.confirmationTitle' => 'सभी डेटा साफ़ करें?',
			'settings.clearAllData.confirmationMessage' => 'यह क्रिया पूर्ववत नहीं की जा सकती। आपके सभी लॉग किए गए भोजन, पसंदीदा और प्रोफ़ाइल सेटिंग्स स्थायी रूप से हटा दिए जाएंगे।',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'यह इस डिवाइस से लॉग किए गए भोजन, पसंदीदा और प्रोफ़ाइल सेटिंग्स स्थायी रूप से हटा देगा। Health Connect में पहले साझा किए गए भोजन और Health Connect एक्सेस को सेटिंग्स > Health Connect में अलग से प्रबंधित किया जाता है।',
			'settings.clearAllData.cancel' => 'रद्द करें',
			'settings.clearAllData.clearEverything' => 'सब कुछ साफ़ करें',
			'settings.debugOptions.title' => 'डिबग विकल्प',
			'settings.developerModeEnabled' => 'डेवलपर मोड सक्षम किया गया!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'अनुमतियाँ देखें और प्रबंधित करें',
			'settings.healthConnect.unavailable.title' => 'Health Connect उपलब्ध नहीं',
			'settings.healthConnect.unavailable.description' => 'यह डिवाइस पर Health Connect उपलब्ध नहीं है। कृपया Play Store से Health Connect इंस्टॉल करें (Android 9+) या Android 14+ पर अपडेट करें।',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'यह डिवाइस Health Connect का समर्थन नहीं करता।',
			'settings.healthConnect.updateRequired.title' => 'Health Connect पर ध्यान देना ज़रूरी है',
			'settings.healthConnect.updateRequired.description' => 'एक्सेस प्रबंधित करने से पहले Health Connect इंस्टॉल या अपडेट करें।',
			'settings.healthConnect.updateRequired.action' => 'इंस्टॉल या अपडेट करें',
			'settings.healthConnect.permissions.title' => 'अनुमतियाँ',
			'settings.healthConnect.permissions.description' => 'Health Connect एकीकरण प्रदान करने के लिए निम्नलिखित अनुमतियाँ मांगी जा रही हैं:',
			'settings.healthConnect.permissions.granted' => 'अनुमोदित',
			'settings.healthConnect.permissions.notGranted' => 'अनुमोदित नहीं',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'कुल जलाए गए कैलोरी पढ़ें',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'ऐप को Health Connect से आपके कुल जलाए गए कैलोरी पढ़ने की अनुमति देता है।',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'यह अनुमति ऐप में आपका दैनिक कैलोरी बर्न दिखाने के लिए उपयोग की जाती है, जिससे आप दिन भर की कुल ऊर्जा व्यय समझ सकें।',
			'settings.healthConnect.permissions.nutritionRead.title' => 'पोषण डेटा पढ़ें',
			'settings.healthConnect.permissions.nutritionRead.description' => 'ऐप को Health Connect से पोषण डेटा पढ़ने की अनुमति देता है।',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'यह अनुमति ऐप को अन्य कनेक्ट किए गए ऐप्स द्वारा लॉग किए गए पोषण जानकारी पढ़ने की अनुमति देती है, जिससे आपके पोषण का समग्र दृश्य मिलता है।',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'पोषण डेटा लिखें',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'ऐप को Health Connect में पोषण डेटा लिखने की अनुमति देता है।',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'यह अनुमति ऐप को आपके लॉग किए गए भोजन को Health Connect में सिंक करने की अनुमति देती है, जिससे आपका पोषण डेटा अन्य स्वास्थ्य और फिटनेस ऐप्स के लिए उपलब्ध हो जाता है।',
			'settings.healthConnect.managePermissions' => 'अनुमतियाँ प्रबंधित करें',
			'settings.healthConnect.openSettings' => 'Health Connect सेटिंग्स खोलें',
			'settings.healthConnect.disconnect' => 'Health Connect डिस्कनेक्ट करें',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Health Connect डिस्कनेक्ट करें?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify की Health Connect तक पहुँच समाप्त हो जाएगी। वहाँ पहले से लिखा गया डेटा नहीं हटेगा।',
			'settings.healthConnect.disconnectConfirmationAction' => 'डिस्कनेक्ट करें',
			'settings.healthConnect.deleteSyncedMeals' => 'Health Connect से Calorify के भोजन हटाएँ',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'सिंक किए गए भोजन हटाएँ?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Calorify के इस संस्करण से Health Connect में सिंक किए गए भोजन हटाएँ? आपका स्थानीय भोजन लॉग नहीं बदलेगा। Calorify की पुरानी प्रविष्टियाँ Health Connect में डेटा प्रबंधित करें विकल्प से अलग से हटानी पड़ सकती हैं।',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'सिंक किए गए भोजन हटाएँ',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Health Connect से Calorify के भोजन हटा दिए गए।',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'सिंक किए गए भोजन नहीं हटाए जा सके। फिर से कोशिश करें।',
			'settings.healthConnect.connectionPartial' => 'Health Connect की कुछ सुविधाएँ चालू हैं।',
			'settings.healthConnect.connectionComplete' => 'Health Connect की दोनों सुविधाएँ चालू हैं।',
			'settings.healthConnect.actionFailed' => 'Health Connect नहीं खोला जा सका। फिर से कोशिश करें।',
			'settings.healthConnect.requestPermissions' => 'अनुमतियाँ अनुरोध करें',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'अनुमति अनुरोध रद्द या विफल रहा। कृपया फिर से प्रयास करें या Health Connect सेटिंग्स में मैन्युअली अनुमतियाँ दें।',
			'settings.healthConnect.permissionRequestFailed' => 'अनुमतियाँ अनुरोध करने में असमर्थ। कृपया पुनः प्रयास करें या Health Connect सेटिंग्स में मैन्युअली अनुमतियाँ दें।',
			'settings.healthConnect.requestingPermissions' => 'अनुरोध कर रहे हैं...',
			'settings.about.title' => 'बारे में',
			'settings.about.tagline' => 'तेज़, मुफ्त, और प्राइवेसी-फर्स्ट कैलोरी अवेयरनेस',
			'settings.about.ourStory.title' => 'हमारी कहानी',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} एक साधारण निराशा से जन्मा: ज़्यादातर कैलोरी ट्रैकिंग ऐप या तो अत्यधिक जटिल हैं, लगातार मैन्युअल इनपुट माँगते हैं, ऊँची सदस्यता फीस लेते हैं, या प्राइवेसी से समझौता करते हैं।\n\nएक सोलो डेवलपर के रूप में, मैंने कुछ सरल और निष्पक्ष बनाना चाहा — एक ऐसा ऐप जो मेहनत कम करने के लिए AI का उपयोग करे, तेज़ और मुफ्त रहे, और आपके स्वास्थ्य डेटा का सम्मान करे।\n\n${appLabel} वह ऐप है जिसकी मैंने चाह थी: कोई अकाउंट नहीं, कोई ट्रैकिंग नहीं, कोई विज्ञापन नहीं — सिर्फ़ स्पष्ट, व्यावहारिक इनसाइट और आपके स्वास्थ्य लक्ष्य।',
			'settings.about.privacy.title' => 'आपकी प्राइवेसी महत्वपूर्ण है',
			'settings.about.privacy.description' => 'प्राइवेसी कोई बाद की चिंता नहीं है — यह डिज़ाइन का सिद्धांत है। इसका व्यवहार में क्या मतलब है:',
			'settings.about.privacy.noAccounts' => 'किसी अकाउंट की आवश्यकता नहीं\nऐप तुरंत उपयोग करें। कोई साइन-अप नहीं, कोई पहचान नहीं।',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'कोई व्यवहारिक ट्रैकिंग नहीं\n${appLabel} आपकी गतिविधि की निगरानी नहीं करता, उपयोग प्रोफ़ाइल नहीं बनाता, और न ही आपको ऐप्स या वेबसाइटों में ट्रैक करता है।',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'सीमित एनालिटिक्स और डायग्नोस्टिक्स\nविश्वसनीयता बेहतर करने के लिए ${appLabel} ऐप के बुनियादी इवेंट और क्रैश डायग्नोस्टिक्स का उपयोग करता है। स्वास्थ्य रिकॉर्ड के मान विज्ञापन के लिए उपयोग या बेचे नहीं जाते।',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'डिज़ाइन के अनुसार ऐड-फ़्री\n${appLabel} बिना विज्ञापनों या डेटा-आधारित मुद्रीकरण के काम करने के लिए बनाया गया है।',
			'settings.about.privacy.noDataSelling' => 'डेटा बिक्री नहीं\nआपका स्वास्थ्य डेटा कभी भी बेचा या तृतीय पक्ष के साथ साझा नहीं किया जाएगा।',
			'settings.about.privacy.localStorage' => 'लोकल-फर्स्ट स्टोरेज\nआपका डेटा आपके डिवाइस पर ही रहता है।',
			'settings.about.privacy.privacyPolicy' => 'गोपनीयता नीति',
			'settings.about.developer.title' => 'एक एकल डेवलपर द्वारा निर्मित',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} एक अकेले डेवलपर द्वारा बनाया और बनाए रखा जाता है जो शांत, प्राइवेसी-सम्बद्ध स्वास्थ्य सॉफ़्टवेयर बनाने पर केंद्रित है।\n\nफीडबैक व्यक्तिगत रूप से पढ़ा जाता है और ऐप की दिशा को आकार देने में मदद करता है।',
			'settings.about.developer.website' => 'वेबसाइट',
			'settings.about.developer.email' => 'ईमेल',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel} का आनंद ले रहे हैं?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'आपका फीडबैक ${appLabel} को सभी के लिए बेहतर बनाने में मदद करता है।',
			'settings.about.feedback.rateApp' => 'Play Store पर रेट करें',
			'settings.about.feedback.sendFeedback' => 'फीडबैक भेजें',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify संस्करण ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'बिल्ड ${buildNumber}',
			'reminders.title' => 'अनुस्मारक के साथ ट्रैक पर रहें',
			'reminders.description' => 'भोजन लॉग करने के लिए कोमल अनुस्मारक प्राप्त करें और अपने पोषण लक्ष्यों के साथ सुसंगत रहें',
			'reminders.notificationsEnabled' => 'सूचनाएँ सक्षम हैं',
			'reminders.notificationsDisabled' => 'सूचनाएँ अक्षम हैं',
			'reminders.enabledSubtitle' => 'आप भोजन अनुस्मारक प्राप्त करेंगे',
			'reminders.disabledSubtitle' => 'भोजन अनुस्मारक प्राप्त करने के लिए सूचनाएँ सक्षम करें',
			'reminders.mealReminders' => 'भोजन अनुस्मारक',
			'reminders.breakfast' => 'नाश्ता',
			'reminders.lunch' => 'दोपहर का खाना',
			'reminders.dinner' => 'रात का खाना',
			'reminders.snack' => 'नाश्ता',
			'reminders.unknown' => 'अज्ञात',
			'reminders.change' => 'बदलें',
			'reminders.enableNotifications' => 'सूचनाएँ सक्षम करें',
			'reminders.skipForNow' => 'अभी छोड़ें',
			'reminders.saveChanges' => 'परिवर्तन सहेजें',
			'reminders.enabledSuccessfully' => 'सूचनाएँ सफलतापूर्वक सक्षम हुईं!',
			'reminders.permissionDenied' => 'सूचना अनुमति अस्वीकृत',
			'reminders.errorEnabling' => ({required Object error}) => 'सूचनाएँ सक्षम करने में त्रुटि: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'सेटअप पूरा करने में त्रुटि: ${error}',
			'notifications.breakfast.title' => 'नाश्ते का समय! 🍳',
			'notifications.breakfast.body' => 'अपने नाश्ते को लॉग करना न भूलें',
			'notifications.lunch.title' => 'लंच समय! 🥗',
			'notifications.lunch.body' => 'अपने लंच को लॉग करने का समय है',
			'notifications.dinner.title' => 'डिनर का समय! 🍽️',
			'notifications.dinner.body' => 'अपने डिनर को लॉग करना न भूलें',
			'notifications.snack.title' => 'नाश्ते का समय! 🍎',
			'notifications.snack.body' => 'एक स्वस्थ नाश्ता करने का समय है',
			'notifications.test.title' => 'टेस्ट नोटिफिकेशन',
			'login.title' => 'लॉगिन',
			_ => null,
		} ?? switch (path) {
			'login.signInWithGoogle' => 'Google के साथ साइन इन करें',
			'login.signInFailed' => 'Google साइन-इन विफल हुआ या रद्द कर दिया गया।',
			'disclaimer.pleaseNote' => 'कृपया ध्यान दें',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} अनुमानित पोषण जानकारी प्रदान करता है। सटीकता आपके इनपुट और खाद्य विविधताओं पर निर्भर करती है। इसे मार्गदर्शक के रूप में उपयोग करें, निर्णायक स्रोत के रूप में नहीं। व्यक्तिगत आहार सलाह के लिए किसी पेशेवर से परामर्श करें।',
			'disclaimer.snap.portionSize.title' => 'पोरशन साइज',
			'disclaimer.snap.portionSize.description' => 'अनुमानों की सटीकता आपके द्वारा सही पोरशन साइज के आकलन पर बहुत निर्भर करती है।',
			'disclaimer.snap.preparationMethods.title' => 'तैयारी की विधियाँ',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'खाना पकाने की विधियाँ खाद्य के पोषण सामग्री को काफी बदल सकती हैं। ${appLabel} के अनुमान हमेशा इन परिवर्तनों को ध्यान में नहीं रख सकते हैं।',
			'disclaimer.snap.ingredients.title' => 'सामग्री',
			'disclaimer.snap.ingredients.description' => 'कई छिपी हुई सामग्रियों वाले जटिल व्यंजन कम सटीक अनुमान दे सकते हैं।',
			'disclaimer.snap.databaseLimitations.title' => 'डेटाबेस सीमाएँ',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} का फ़ूड डेटाबेस व्यापक है परन्तु हर एक खाद्य आइटम या विविधता शामिल न हो सकती है।',
			'disclaimer.weightEstimate.title' => 'वजन अनुमान के बारे में',
			'disclaimer.weightEstimate.description' => 'प्रोजेक्टेड वजन परिवर्तन एक सैद्धान्तिक अनुमान है जो सरल कैलोरी-इन बनाम कैलोरी-आउट मॉडल पर आधारित है। यह केवल प्रेरणादायक मार्गदर्शन के लिए है, आपके वास्तविक वजन की भविष्यवाणी के लिए नहीं।',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'कैलोरी सटीकता',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'यह अनुमान आपके ट्रैक किए गए कैलोरी इनटेक और व्यय के जितना सटीक होगा उतना ही सही होगा। गलत लॉगिंग अनुचित प्रक्षेपण देगी।',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'जैविक कारक',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'वास्तविक वजन घटाना/बढ़ना चयापचय, हार्मोन, नींद, तनाव, हाइड्रेशन और अन्य व्यक्तिगत कारकों से प्रभावित होता है जिन्हें ${appLabel} माप नहीं सकता।',
			'disclaimer.weightEstimate.waterWeight.title' => 'जल वजन और उतार-चढ़ाव',
			'disclaimer.weightEstimate.waterWeight.description' => 'सामान्य दैनिक वजन पानी के अस्थायी संचयन, पाचन और समय के कारण काफी बदल सकता है। यह अनुमान इन दैनिक परिवर्तनों को ध्यान में नहीं रखता।',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'पेशेवर मार्गदर्शन',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'इस अनुमान का उपयोग चिकित्सा निर्णय लेने के लिए न करें। व्यक्तिगत वजन प्रबंधन सलाह के लिए हमेशा किसी स्वास्थ्य पेशेवर या पंजीकृत आहार विशेषज्ञ से परामर्श करें।',
			'disclaimer.healthMetrics.description' => 'ये मेट्रिक्स आपको आपके शरीर की ऊर्जा आवश्यकता समझने में मदद करते हैं और आपके पोषण लक्ष्यों का मार्गदर्शन करते हैं।',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR) वे कैलोरी हैं जो आपका शरीर आराम की स्थिति में बुनियादी कार्य (जैसे साँस लेना और परिसंचरण) बनाए रखने के लिए जलाता है। BMR आपकी आयु, जेंडर, ऊँचाई और वजन पर निर्भर करता है। उच्च BMR का अर्थ है कि आपका शरीर आराम में स्वाभाविक रूप से अधिक कैलोरी जलाता है, अक्सर अधिक मांसपेशी द्रव्यमान, कम आयु, या पुरुष होने के कारण। कम BMR आम तौर पर कम मांसपेशी द्रव्यमान, उच्च आयु, या महिला होने को संकेत करता है।',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE) वे कुल कैलोरी हैं जो आप प्रतिदिन जलाते हैं, जिसमें आपका BMR और शारीरिक गतिविधि व दैनिक गति से जलने वाली कैलोरी शामिल है। TDEE आपके BMR और गतिविधि स्तर पर निर्भर करता है। उच्च TDEE का अर्थ है कि आप कुल मिलाकर अधिक कैलोरी जलाते हैं, आमतौर पर अधिक सक्रिय होने या उच्च BMR होने के कारण। कम TDEE कम दैनिक गतिविधि या कम BMR का संकेत देता है।',
			'disclaimer.healthMetrics.dailyGoal.title' => 'दैनिक लक्ष्य',
			'disclaimer.healthMetrics.dailyGoal.description' => 'दैनिक लक्ष्य आपका TDEE और वजन लक्ष्य के आधार पर सुझाई गई दैनिक कैलोरी खपत है। वजन घटाने के लिए, आप TDEE से कम कैलोरी लेते हैं। वजन बनाए रखने के लिए, आप TDEE से मेल खाते हैं। वजन बढ़ाने के लिए, आप TDEE से अधिक कैलोरी लेते हैं। यह आपको स्वास्थ्यवर्धक गति से वांछित वजन परिवर्तन प्राप्त करने में मदद करता है।',
			'disclaimer.calorieExpenditure.title' => 'कैलोरी व्यय अनुमान',
			'disclaimer.calorieExpenditure.description' => 'जब Health Connect डेटा उपलब्ध नहीं होता, तो हम आज के जलाए गए कैलोरी का अनुमान आपके Basal Metabolic Rate (BMR) और गतिविधि स्तर (TDEE) का उपयोग करके लगाते हैं, दिन के बीते हिस्से के अनुपात के अनुसार समायोजित कर के।',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'अनुमान कैसे गणना किया गया',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'हम आपका TDEE (आपकी प्रोफ़ाइल के आधार पर) गणना करते हैं और दिन के बीते हिस्से (घंटे + मिनट) / 24 से गुणा करके अब तक जलाए गए कैलोरी का अनुमान लगाते हैं।',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'पेशेवर मार्गदर्शन',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'इस अनुमान का उपयोग चिकित्सा निर्णय लेने के लिए न करें। व्यक्तिगत वजन प्रबंधन सलाह के लिए हमेशा किसी स्वास्थ्य पेशेवर या पंजीकृत आहार विशेषज्ञ से परामर्श करें।',
			'localNutritionPhase4.nutritionBundled' => 'पोषण जानकारी डाउनलोड किए गए USDA पैक से मिली',
			'localNutritionPhase4.nutritionCached' => 'पोषण जानकारी डिवाइस की USDA कैश से मिली',
			'localNutritionPhase4.nutritionMixed' => 'पोषण जानकारी डाउनलोड की गई, कैश की गई और रिमोट USDA पंक्तियों से जोड़ी गई',
			'localNutritionPhase4.calculationLocal' => 'कैलोरी और मैक्रो की गणना इस डिवाइस पर की गई',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: डाउनलोड किया गया USDA पैक',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: डिवाइस की USDA कैश',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: Calorify के ज़रिए प्राप्त USDA पंक्ति',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: नियत पोषण स्थिरांक',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · डेटासेट ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'छोटी',
			'localNutritionPhase4.portionEstimated' => 'अनुमानित',
			'localNutritionPhase4.portionLarger' => 'बड़ी',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => '${ingredient} के लिए कौन-सी मात्रा सबसे करीब थी?',
			'localNutritionPhase4.mealTypeQuestion' => 'यह कौन-सा भोजन था?',
			'localNutritionPhase4.localNutritionTip' => 'सत्यापित स्थानीय पोषण डेटा से गणना की गई।',
			'localNutritionPhase4.offlineNutritionTitle' => 'पोषण डेटा डाउनलोड करें',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'जब हर सामग्री शामिल हो, तब इस डिवाइस पर सत्यापित USDA पंक्तियों और नियत गणना का उपयोग करें।',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'ऐप के इस संस्करण के लिए स्थानीय पोषण डेटा उपलब्ध नहीं है।',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'कोई सत्यापित पोषण पैक डाउनलोड नहीं किया गया है।',
			'localNutritionPhase4.offlineNutritionInstalling' => 'पोषण डेटा डाउनलोड और सत्यापित किया जा रहा है…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'पैक ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} कैश की गई USDA पंक्तियाँ · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'अपडेट की जाँच करें',
			'localNutritionPhase4.offlineNutritionClear' => 'स्थानीय पोषण डेटा साफ़ करें',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'स्थानीय पोषण डेटा साफ़ करें?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'इससे डाउनलोड किया गया USDA पैक और लुकअप कैश हट जाएगा। दर्ज किए गए भोजन में सहेजते समय उपयोग किया गया सटीक पोषण स्नैपशॉट बना रहेगा।',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'डेटा साफ़ करें',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'स्थानीय पोषण डेटा डाउनलोड और सत्यापित नहीं किया जा सका: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'स्थानीय पोषण डेटा साफ़ किया गया',
			'common.close' => 'बंद करें',
			'common.kContinue' => 'जारी रखें',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel} का आनंद ले रहे हैं?',
			'feedbackRating.yes' => 'हाँ, मुझे यह पसंद आ रहा है',
			'feedbackRating.no' => 'वास्तव में नहीं',
			'feedbackRating.rateStepHeading' => 'Play Store पर रेट करें',
			'feedbackRating.emailStepHeading' => 'ईमेल से फीडबैक भेजें',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'एक त्वरित रेटिंग दूसरों को ${appLabel} खोजने में मदद करती है और विकास को जारी रखने में मदद करती है। क्या आप एक मिनट लेकर रेट कर देंगे?',
			'feedbackRating.shareFeedbackViaEmail' => 'आपकी प्रतिक्रिया आने वाले बदलावों को आकार देती है — हम हर संदेश पढ़ते हैं। क्या आप ईमेल के माध्यम से अपनी प्रतिक्रियाएँ साझा करना चाहेंगे?',
			'feedbackRating.rateCta' => 'Play Store पर रेट करें',
			'feedbackRating.maybeLater' => 'शायद बाद में',
			'feedbackRating.sendFeedback' => 'फीडबैक भेजें',
			'feedbackRating.noThanks' => 'नहीं धन्यवाद',
			'feedbackRating.aboutUsDescription' => 'एक छोटे टीम द्वारा ध्यान से बनाया गया। हम प्राइवेसी, सरलता और बेहतर खाने की आदतें बनाने पर केंद्रित हैं।',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '${appLabel} के पीछे कौन है, यह जानना चाहते हैं? देखें ',
			'feedbackRating.aboutUsLinkLabel' => 'हमारे बारे में',
			'feedbackRating.thankYouMessage' => 'धन्यवाद! हम फिर किसी समय पूछेंगे।',
			'health.syncFailed' => 'Health Connect से सिंक नहीं कर सके',
			'health.mealSynced' => 'भोजन Health Connect के साथ सिंक हो गया',
			_ => null,
		};
	}
}
