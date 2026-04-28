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
class TranslationsHi with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.hi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

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
	@override late final _TranslationsCommonHi common = _TranslationsCommonHi._(_root);
	@override late final _TranslationsFeedbackRatingHi feedbackRating = _TranslationsFeedbackRatingHi._(_root);
	@override late final _TranslationsHealthHi health = _TranslationsHealthHi._(_root);
}

// Path: errors
class _TranslationsErrorsHi implements TranslationsErrorsEn {
	_TranslationsErrorsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'आपने बहुत अधिक अनुरोध किए हैं। कृपया दोबारा प्रयास करने से पहले कुछ क्षण प्रतीक्षा करें।';
	@override String get networkError => 'नेटवर्क त्रुटि। कृपया अपना इंटरनेट कनेक्शन जांचें।';
	@override String get unknownError => 'कुछ गलत हो गया। कृपया बाद में पुन: प्रयास करें।';
	@override String get loadingProfileData => 'प्रोफाइल डेटा लोड करने में त्रुटि';
	@override String get somethingWentWrong => 'कुछ गलत हो गया।';
	@override String get retry => 'पुनः प्रयास करें';
}

// Path: onboarding
class _TranslationsOnboardingHi implements TranslationsOnboardingEn {
	_TranslationsOnboardingHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} में आपका स्वागत है';
	@override String get subtitle => 'AI द्वारा संचालित आपका व्यक्तिगत पोषण साथी';
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
class _TranslationsTabsHi implements TranslationsTabsEn {
	_TranslationsTabsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'डैशबोर्ड';
	@override String get history => 'इतिहास';
}

// Path: home
class _TranslationsHomeHi implements TranslationsHomeEn {
	_TranslationsHomeHi._(this._root);

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
class _TranslationsHistoryHi implements TranslationsHistoryEn {
	_TranslationsHistoryHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'कोई भोजन रिकॉर्ड नहीं';
	@override String get emptyMessage => 'यहां लॉग करने के लिए अपने पिछले भोजन की तस्वीर लें।';
	@override String get today => 'आज';
	@override String get yesterday => 'कल';
}

// Path: meal
class _TranslationsMealHi implements TranslationsMealEn {
	_TranslationsMealHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'अरे नहीं!';
	@override String get delete => 'हटाएं';
	@override String get editMeal => 'भोजन संपादित करें';
	@override String get addMeal => 'भोजन जोड़ें';
	@override String get saveMeal => 'भोजन सहेजें';
	@override String get save => 'सहेजें';
	@override String get mealName => 'भोजन का नाम';
	@override String get mealNameHint => 'उदा., टोस्ट के साथ स्क्रैम्बल्ड अंडे';
	@override String get mealQuantity => 'भोजन की मात्रा';
	@override String get mealQuantityHint => 'उदा., 1 कटोरी, 2 स्लाइस';
	@override String get timeOfMeal => 'भोजन का समय';
	@override String get timeOfMealHint => 'वह समय चुनें जब आपने भोजन किया था';
	@override String get mealType => 'भोजन प्रकार';
	@override late final _TranslationsMealNutritionHi nutrition = _TranslationsMealNutritionHi._(_root);
	@override late final _TranslationsMealDeleteConfirmationHi deleteConfirmation = _TranslationsMealDeleteConfirmationHi._(_root);
	@override String get addedToLog => 'भोजन आपके लॉग में जोड़ा गया!';
	@override String couldNotAdd({required Object error}) => 'भोजन जोड़ नहीं सके: ${error}';
	@override String get savedSuccessfully => 'भोजन सफलतापूर्वक जोड़ा गया!';
	@override String get updatedSuccessfully => 'भोजन सफलतापूर्वक अपडेट किया गया!';
	@override String errorSaving({required Object error}) => 'भोजन सहेजते समय त्रुटि: ${error}';
	@override String get removedFromFavorites => 'पसंदीदा से हटाया गया!';
	@override String get savedAsFavorite => 'भोजन को पसंदीदा के रूप में सहेजा गया!';
	@override String get unfavorite => 'पसंदीदा हटाएं';
	@override String couldNotUpdateFavorite({required Object error}) => 'पसंदीदा अपडेट नहीं कर सके: ${error}';
	@override String get feedbackThanks => 'प्रतिक्रिया के लिए धन्यवाद!';
	@override String get reanalysisUpdated => 'आपकी प्रतिक्रिया के आधार पर भोजन विश्लेषण अपडेट किया गया।';
	@override String failedToProcess({required Object error}) => 'प्रोसेस करने में विफल: ${error}';
	@override String failedToProcessImage({required Object error}) => 'छवि प्रोसेस करने में विफल: ${error}';
	@override String errorCompressingImage({required Object error}) => 'छवि संपीड़ित करते समय त्रुटि: ${error}';
	@override String get failedToSave => 'डेटा सहेजने में विफल। कृपया पुन: प्रयास करें।';
	@override String get skip => 'छोड़ें';
	@override late final _TranslationsMealVariationHi variation = _TranslationsMealVariationHi._(_root);
	@override late final _TranslationsMealAnalysisHi analysis = _TranslationsMealAnalysisHi._(_root);
	@override late final _TranslationsMealFeedbackHi feedback = _TranslationsMealFeedbackHi._(_root);
}

// Path: favorites
class _TranslationsFavoritesHi implements TranslationsFavoritesEn {
	_TranslationsFavoritesHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पसंदीदा';
	@override String get empty => 'अभी तक कोई पसंदीदा भोजन नहीं।';
	@override String get searchPlaceholder => 'पसंदीदा भोजन खोजें';
	@override String get searchEmptyTitle => 'आपकी खोज से कोई पसंदीदा नहीं मिला';
	@override String get searchEmptySubtitle => 'कोई अलग भोजन नाम, मात्रा, या भोजन प्रकार आज़माएं।';
	@override String get sortLabel => 'पसंदीदा क्रमबद्ध करें';
	@override String get undo => 'पूर्ववत करें';
	@override String removed({required Object name}) => '${name} को पसंदीदा से हटाया गया';
	@override late final _TranslationsFavoritesSortOptionsHi sortOptions = _TranslationsFavoritesSortOptionsHi._(_root);
}

// Path: profile
class _TranslationsProfileHi implements TranslationsProfileEn {
	_TranslationsProfileHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफाइल';
	@override String get noProfileData => 'कोई प्रोफाइल डेटा नहीं मिला';
	@override String get yourProfile => 'आपकी प्रोफाइल';
	@override String get viewAndManage => 'अपनी स्वास्थ्य जानकारी देखें और प्रबंधित करें';
	@override late final _TranslationsProfileSectionsHi sections = _TranslationsProfileSectionsHi._(_root);
	@override String get gender => 'लिंग';
	@override String get height => 'ऊंचाई';
	@override String get weight => 'वजन';
	@override String get age => 'आयु';
	@override String get weightGoal => 'वजन लक्ष्य';
	@override String get targetWeight => 'लक्ष्य वजन';
	@override String get activityLevel => 'गतिविधि स्तर';
	@override String get healthMetrics => 'स्वास्थ्य मीट्रिक्स';
	@override String get notSet => 'सेट नहीं';
	@override String get years => 'वर्ष';
	@override String get updatedSuccessfully => 'प्रोफाइल सफलतापूर्वक अपडेट की गई!';
	@override late final _TranslationsProfileCalculatedValuesHi calculatedValues = _TranslationsProfileCalculatedValuesHi._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreHi implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'हेल्थ स्कोर';
	@override String get whyThisScore => 'यह स्कोर क्यों?';
	@override String get note => 'यह स्कोर पहचानी गई सामग्रियों और पोषण घनत्व के आधार पर AI अनुमान है। आहार संबंधी सलाह के लिए हमेशा किसी पेशेवर से परामर्श लें।';
	@override String get unhealthy => 'अस्वस्थ';
	@override String get healthy => 'स्वस्थ';
	@override String get neutral => 'तटस्थ';
}

// Path: editProfile
class _TranslationsEditProfileHi implements TranslationsEditProfileEn {
	_TranslationsEditProfileHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफाइल संपादित करें';
	@override late final _TranslationsEditProfileSectionsHi sections = _TranslationsEditProfileSectionsHi._(_root);
	@override String get gender => 'लिंग';
	@override String get dateOfBirth => 'जन्मतिथि';
	@override String get height => 'ऊंचाई';
	@override String get weight => 'वजन';
	@override String get weightGoal => 'वजन लक्ष्य';
	@override String get activityLevel => 'गतिविधि स्तर';
	@override String get metric => 'मेट्रिक';
	@override String get imperial => 'इम्पीरियल';
	@override String get unitCm => 'सेमी';
	@override String get unitFt => 'फुट';
	@override String get unitKg => 'किग्रा';
	@override String get unitLbs => 'पाउंड';
	@override String get metricCm => 'मेट्रिक (सेमी)';
	@override String get imperialFtIn => 'इम्पीरियल (फुट/इंच)';
	@override String get metricKg => 'मेट्रिक (किग्रा)';
	@override String get imperialLbs => 'इम्पीरियल (lbs)';
	@override late final _TranslationsEditProfileGendersHi genders = _TranslationsEditProfileGendersHi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsHi weightGoals = _TranslationsEditProfileWeightGoalsHi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsHi activityLevels = _TranslationsEditProfileActivityLevelsHi._(_root);
}

// Path: settings
class _TranslationsSettingsHi implements TranslationsSettingsEn {
	_TranslationsSettingsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सेटिंग्स';
	@override late final _TranslationsSettingsSectionsHi sections = _TranslationsSettingsSectionsHi._(_root);
	@override late final _TranslationsSettingsEditProfileHi editProfile = _TranslationsSettingsEditProfileHi._(_root);
	@override late final _TranslationsSettingsLanguageHi language = _TranslationsSettingsLanguageHi._(_root);
	@override late final _TranslationsSettingsHeightUnitHi heightUnit = _TranslationsSettingsHeightUnitHi._(_root);
	@override late final _TranslationsSettingsWeightUnitHi weightUnit = _TranslationsSettingsWeightUnitHi._(_root);
	@override late final _TranslationsSettingsMealRemindersHi mealReminders = _TranslationsSettingsMealRemindersHi._(_root);
	@override late final _TranslationsSettingsThemeHi theme = _TranslationsSettingsThemeHi._(_root);
	@override late final _TranslationsSettingsSendFeedbackHi sendFeedback = _TranslationsSettingsSendFeedbackHi._(_root);
	@override late final _TranslationsSettingsExportMealHistoryHi exportMealHistory = _TranslationsSettingsExportMealHistoryHi._(_root);
	@override late final _TranslationsSettingsClearAllDataHi clearAllData = _TranslationsSettingsClearAllDataHi._(_root);
	@override late final _TranslationsSettingsDebugOptionsHi debugOptions = _TranslationsSettingsDebugOptionsHi._(_root);
	@override String get developerModeEnabled => 'डेवलपर मोड सक्षम!';
	@override late final _TranslationsSettingsHealthConnectHi healthConnect = _TranslationsSettingsHealthConnectHi._(_root);
	@override late final _TranslationsSettingsAboutHi about = _TranslationsSettingsAboutHi._(_root);
	@override late final _TranslationsSettingsAppInfoHi appInfo = _TranslationsSettingsAppInfoHi._(_root);
}

// Path: reminders
class _TranslationsRemindersHi implements TranslationsRemindersEn {
	_TranslationsRemindersHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'रिमाइंडर के साथ ट्रैक पर रहें';
	@override String get description => 'अपने भोजन को लॉग करने और पोषण लक्ष्यों के साथ निरंतर बने रहने के लिए कोमल रिमाइंडर प्राप्त करें';
	@override String get notificationsEnabled => 'सूचनाएं सक्षम';
	@override String get notificationsDisabled => 'सूचनाएं अक्षम';
	@override String get enabledSubtitle => 'आपको भोजन रिमाइंडर मिलेंगे';
	@override String get disabledSubtitle => 'भोजन रिमाइंडर पाने के लिए सूचनाएं सक्षम करें';
	@override String get mealReminders => 'भोजन रिमाइंडर';
	@override String get breakfast => 'नाश्ता';
	@override String get lunch => 'दोपहर का भोजन';
	@override String get dinner => 'रात का खाना';
	@override String get snack => 'स्नैक';
	@override String get unknown => 'अज्ञात';
	@override String get change => 'बदलें';
	@override String get enableNotifications => 'सूचनाएं सक्षम करें';
	@override String get skipForNow => 'फिलहाल छोड़ें';
	@override String get saveChanges => 'परिवर्तन सहेजें';
	@override String get enabledSuccessfully => 'सूचनाएं सफलतापूर्वक सक्षम की गईं!';
	@override String get permissionDenied => 'सूचना अनुमति अस्वीकृत';
	@override String errorEnabling({required Object error}) => 'सूचनाएं सक्षम करते समय त्रुटि: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'सेटअप पूरा करते समय त्रुटि: ${error}';
}

// Path: notifications
class _TranslationsNotificationsHi implements TranslationsNotificationsEn {
	_TranslationsNotificationsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastHi breakfast = _TranslationsNotificationsBreakfastHi._(_root);
	@override late final _TranslationsNotificationsLunchHi lunch = _TranslationsNotificationsLunchHi._(_root);
	@override late final _TranslationsNotificationsDinnerHi dinner = _TranslationsNotificationsDinnerHi._(_root);
	@override late final _TranslationsNotificationsSnackHi snack = _TranslationsNotificationsSnackHi._(_root);
	@override late final _TranslationsNotificationsTestHi test = _TranslationsNotificationsTestHi._(_root);
}

// Path: login
class _TranslationsLoginHi implements TranslationsLoginEn {
	_TranslationsLoginHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'लॉगिन';
	@override String get signInWithGoogle => 'Google से साइन इन करें';
	@override String get signInFailed => 'Google साइन-इन विफल रहा या रद्द कर दिया गया।';
}

// Path: disclaimer
class _TranslationsDisclaimerHi implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'कृपया ध्यान दें';
	@override late final _TranslationsDisclaimerSnapHi snap = _TranslationsDisclaimerSnapHi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateHi weightEstimate = _TranslationsDisclaimerWeightEstimateHi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsHi healthMetrics = _TranslationsDisclaimerHealthMetricsHi._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureHi calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureHi._(_root);
}

// Path: common
class _TranslationsCommonHi implements TranslationsCommonEn {
	_TranslationsCommonHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get close => 'बंद करें';
	@override String get kContinue => 'जारी रखें';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingHi implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel} पसंद आ रहा है?';
	@override String get yes => 'हाँ, मुझे पसंद आ रहा है';
	@override String get no => 'ज़्यादा नहीं';
	@override String get rateStepHeading => 'प्ले स्टोर पर रेट करें';
	@override String get emailStepHeading => 'ईमेल से फीडबैक भेजें';
	@override String soloDevMessage({required Object appLabel}) => 'एक त्वरित रेटिंग दूसरों को ${appLabel} खोजने में मदद करती है और विकास जारी रखती है। क्या आप एक क्षण निकालकर रेटिंग देंगे?';
	@override String get shareFeedbackViaEmail => 'आपकी प्रतिक्रिया अगला कदम तय करती है — हम हर संदेश पढ़ते हैं। क्या आप ईमेल से अपने विचार साझा करना चाहेंगे?';
	@override String get rateCta => 'प्ले स्टोर पर रेट करें';
	@override String get maybeLater => 'शायद बाद में';
	@override String get sendFeedback => 'फीडबैक भेजें';
	@override String get noThanks => 'नहीं, धन्यवाद';
	@override String get aboutUsDescription => 'एक छोटी टीम द्वारा देखभाल के साथ बनाया गया। हम गोपनीयता, सादगी, और बेहतर खान-पान की आदतें बनाने में आपकी मदद पर केंद्रित हैं।';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'जानना चाहते हैं कि ${appLabel} के पीछे कौन है? देखें ';
	@override String get aboutUsLinkLabel => 'हमारे बारे में';
	@override String get thankYouMessage => 'धन्यवाद! हम आपसे फिर किसी और समय पूछेंगे।';
}

// Path: health
class _TranslationsHealthHi implements TranslationsHealthEn {
	_TranslationsHealthHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect के साथ सिंक नहीं हो सका';
	@override String get mealSynced => 'भोजन Health Connect के साथ सिंक हो गया';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesHi implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionHi foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionHi._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisHi aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisHi._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationHi healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationHi._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderHi implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपका लिंग क्या है?';
	@override String get description => 'लिंग हमें आपकी आधारभूत मेटाबोलिक दर (BMR) सटीक रूप से गणना करने में मदद करता है।';
	@override String get next => 'आगे';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightHi implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपकी ऊंचाई कितनी है?';
	@override String get description => 'आपकी ऊंचाई हमें आपका BMI और ऊर्जा आवश्यकताएं सटीक रूप से गणना करने में मदद करती है।';
	@override String get metric => 'मेट्रिक';
	@override String get imperial => 'इम्पीरियल';
	@override String get next => 'आगे';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightHi implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'आपका वर्तमान वजन क्या है?';
	@override String get currentDescription => 'आपका वर्तमान वजन आपके दैनिक लक्ष्यों को व्यक्तिगत बनाने के लिए आवश्यक है।';
	@override String get targetTitle => 'आपका लक्ष्य वजन क्या है?';
	@override String get targetDescription => 'लक्ष्य वजन तय करने से हमें आपका दीर्घकालिक प्लान निर्धारित करने में मदद मिलती है।';
	@override String get metric => 'मेट्रिक';
	@override String get imperial => 'इम्पीरियल';
	@override String get next => 'आगे';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeHi implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपका जन्मदिन कब है?';
	@override String get description => 'आपकी उम्र हमें आपकी कैलोरी आवश्यकताओं की सटीक गणना करने में मदद करती है।';
	@override String get next => 'आगे';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleHi implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleHi._(this._root);

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
class _TranslationsOnboardingWeightGoalHi implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपका लक्ष्य क्या है?';
	@override String get description => 'वह लक्ष्य चुनें जो आपकी इच्छा को सबसे अच्छी तरह दर्शाता है';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelHi implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आप कितने सक्रिय हैं?';
	@override String get description => 'यह हमें आपकी दैनिक कैलोरी आवश्यकताओं की अधिक सटीक गणना करने में मदद करता है';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectHi implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect से कनेक्ट करें';
	@override String get description => 'बेहतर इनसाइट्स और स्वचालित कैलोरी ट्रैकिंग के लिए अपना स्वास्थ्य डेटा सिंक करें';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingHi automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingHi._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsHi progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsHi._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationHi seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationHi._(_root);
	@override String get connected => 'Health Connect कनेक्टेड';
	@override String get notConnected => 'Health Connect कनेक्टेड नहीं';
	@override String get setup => 'Health Connect सेटअप करें';
	@override String get skipForNow => 'फिलहाल छोड़ें';
	@override String get statusConnected => 'Health Connect कनेक्टेड है।';
	@override String get statusSuccess => 'Health Connect सफलतापूर्वक कनेक्ट हो गया!';
	@override String statusPermissionDenied({required Object appLabel}) => 'अनुमति अस्वीकृत। कृपया ${appLabel} के लिए अपने फ़ोन सेटिंग्स में Health Connect अनुमतियां सक्षम करें।';
	@override String statusError({required Object error}) => 'Health Connect सेटअप करते समय त्रुटि: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementHi implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessHi trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessHi._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileHi healthProfile = _TranslationsOnboardingReinforcementHealthProfileHi._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleHi goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleHi._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryHi implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपका AI सारांश';
	@override String get logMore => 'अपने व्यक्तिगत AI इनसाइट्स पाने के लिए अगले कुछ दिनों में और भोजन लॉग करें।';
	@override String get loading => 'आपका सारांश लोड हो रहा है...';
	@override String mealCount({required Object count}) => '${count} भोजन लॉग किए गए';
	@override String macroBalanceScore({required Object score}) => 'संतुलन स्कोर ${score}';
	@override String get topFoods => 'शीर्ष खाद्य पदार्थ';
	@override String get trendUp => 'कैलोरी बढ़ रही हैं';
	@override String get trendDown => 'कैलोरी घट रही हैं';
	@override String get trendSteady => 'कैलोरी स्थिर हैं';
	@override String generatedAt({required Object time}) => 'अद्यतन ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalHi implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अपना दैनिक लक्ष्य सेट करें';
	@override String get titleSet => 'आपका दैनिक लक्ष्य';
	@override String get description => 'क्या आप अपनी वेलनेस यात्रा शुरू करने के लिए तैयार हैं? अपनी प्रगति शुरू करने के लिए नीचे अपना दैनिक कैलोरी लक्ष्य सेट करें।';
	@override String get descriptionSet => 'आपका कंपास सेट हो गया है! यह आपका मार्गदर्शन करने के लिए दैनिक कैलोरी लक्ष्य है।';
	@override String get yourGoal => 'आपका लक्ष्य';
	@override String get goal => 'लक्ष्य';
	@override String get dailyCalories => 'दैनिक कैलोरी (kcal)';
	@override String get setGoal => 'लक्ष्य निर्धारित करें';
	@override String get intake => 'सेवन';
	@override String get burned => 'जली';
	@override String get weightImpact => 'वजन पर प्रभाव';
	@override String get estLoss => 'अनुमानित कमी';
	@override String get estGain => 'अनुमानित बढ़ोतरी';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryHi implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'दैनिक सारांश';
	@override String get calories => 'कैलोरी';
	@override String get carbs => 'कार्ब्स';
	@override String get protein => 'प्रोटीन';
	@override String get fat => 'वसा';
	@override String get fiber => 'फाइबर';
	@override String get grams => 'ग्राम';
	@override String get chartAccessibilityLabel => 'मैक्रो चार्ट';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressHi implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आज का मैक्रो विभाजन';
	@override String get target => 'लक्ष्य';
	@override String get current => 'वर्तमान';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryHi implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '7-दिन का मैक्रो इतिहास';
	@override String get trendTitle => 'आज की प्रवृत्ति';
	@override String peakHour({required Object hour}) => 'उच्चतम: ${hour}:00';
	@override String get noHistoryYet => 'अभी तक कोई इतिहास नहीं';
	@override String get startLogging => 'यहां अपनी 7-दिन की मैक्रो प्रवृत्तियां देखने के लिए\nभोजन लॉग करना शुरू करें';
}

// Path: home.mealLog
class _TranslationsHomeMealLogHi implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'लॉग किए गए भोजन';
	@override String get emptyMessage => 'यहां लॉग करने के लिए अपने पिछले भोजन की तस्वीर लें।';
	@override String get noMealsToday => 'आज के लिए कोई भोजन रिकॉर्ड नहीं';
	@override String get seeAllMeals => 'सभी भोजन देखें';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionHi implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI से त्वरित जोड़';
	@override String get description => 'अपने भोजन का वर्णन करें, और बाकी काम AI पर छोड़ दें।';
	@override String get hint => 'उदा. नाश्ते में मैंने केले के स्लाइस और व्हे की एक स्कूप के साथ ओटमील का बड़ा कटोरा लिया ...';
	@override String get analyzeMeal => 'भोजन का विश्लेषण करें';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsHi implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पसंदीदा भोजन';
	@override String get description => 'अपने पसंदीदा भोजन में से किसी एक को जल्दी से जोड़ें।';
	@override String get noFavorites => 'अभी तक कोई पसंदीदा भोजन नहीं।';
	@override String get addFavoriteHint => 'किसी भोजन पर स्टार क्लिक करके उसे पसंदीदा चिह्नित करें।';
	@override String get seeAll => 'सभी देखें';
	@override String get add => 'जोड़ें';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapHi implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'तस्वीर लें और अपना भोजन ट्रैक करें';
	@override String get description => 'AI विश्लेषण के लिए अपने भोजन की फोटो लें।';
	@override String get openCamera => 'कैमरा खोलें';
	@override String get gallery => 'गैलरी';
	@override String get compressingPhoto => 'फोटो अनुकूलित की जा रही है…';
	@override String get uploadingPhoto => 'फोटो अपलोड हो रही है…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthHi implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect से सिंक करें';
	@override String get description => 'अपना पोषण डेटा Health Connect से सिंक करें';
	@override String get install => 'इंस्टॉल करें';
	@override String get connect => 'कनेक्ट करें';
}

// Path: meal.nutrition
class _TranslationsMealNutritionHi implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get calories => 'कैलोरी';
	@override String get carbs => 'कार्ब्स (g)';
	@override String get protein => 'प्रोटीन (g)';
	@override String get fat => 'वसा (g)';
	@override String get fiber => 'फाइबर (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationHi implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भोजन हटाएं';
	@override String get message => 'क्या आप वाकई इस भोजन प्रविष्टि को हटाना चाहते हैं?';
	@override String get cancel => 'रद्द करें';
	@override String get delete => 'हटाएं';
}

// Path: meal.variation
class _TranslationsMealVariationHi implements TranslationsMealVariationEn {
	_TranslationsMealVariationHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String question({required Object total, required Object current}) => 'प्रश्न ${total} में से ${current}';
	@override String get noVariationsAvailable => 'कोई वैरिएशन उपलब्ध नहीं';
}

// Path: meal.analysis
class _TranslationsMealAnalysisHi implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI भोजन विश्लेषण';
	@override String get reassurance => 'यह आमतौर पर कुछ सेकंड लेता है।';
	@override String get stepStarted => 'शुरू किया जा रहा है…';
	@override String get stepDecomposition => 'आपके भोजन को समझा जा रहा है…';
	@override String get stepIngredients => 'सामग्री को पोषण डेटा से मिलाया जा रहा है…';
	@override String get stepUncertainty => 'विश्वास स्तर जांचा जा रहा है…';
	@override String get stepMealTypeQuestion => 'लगभग हो गया…';
	@override String get stepResult => 'आपका परिणाम अंतिम रूप दिया जा रहा है…';
	@override String get stepError => 'कुछ गलत हो गया';
	@override String get stepDefault => 'आपके भोजन का विश्लेषण किया जा रहा है…';
	@override String get progressUnderstand => 'समझें';
	@override String get progressMatch => 'मिलान';
	@override String get progressCheck => 'जांच';
	@override String get progressFinish => 'समाप्त';
	@override String ingredientsLine({required Object count}) => '${count} सामग्री पहचानी गई';
	@override String get ingredientsPending => 'सामग्री स्कैन की जा रही हैं…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackHi implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

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
class _TranslationsFavoritesSortOptionsHi implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get recent => 'हाल के';
	@override String get calories => 'कैलोरी';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsHi implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'प्रोफाइल';
	@override String get basicInformation => 'मूल जानकारी';
	@override String get goalsAndActivity => 'लक्ष्य और गतिविधि';
	@override String get calculatedValues => 'गणना किए गए मान';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesHi implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'दैनिक लक्ष्य';
	@override String get calPerDay => 'cal/day';
	@override String get notAvailable => 'उपलब्ध नहीं';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsHi implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'व्यक्तिगत जानकारी';
	@override String get physicalMeasurements => 'शारीरिक माप';
	@override String get goalsAndActivity => 'लक्ष्य और गतिविधि';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersHi implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get male => 'पुरुष';
	@override String get female => 'महिला';
	@override String get other => 'अन्य';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsHi implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightHi loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightHi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightHi maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightHi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightHi gainWeight = _TranslationsEditProfileWeightGoalsGainWeightHi._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsHi implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryHi sedentary = _TranslationsEditProfileActivityLevelsSedentaryHi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveHi lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveHi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveHi moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveHi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveHi veryActive = _TranslationsEditProfileActivityLevelsVeryActiveHi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveHi extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveHi._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsHi implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'प्रोफाइल';
	@override String get localization => 'स्थानीयकरण';
	@override String get notifications => 'सूचनाएं';
	@override String get healthConnect => 'Health Connect';
	@override String get supportAndLegal => 'सपोर्ट और कानूनी';
	@override String get about => 'हमारे बारे में';
	@override String get dangerZone => 'खतरे का क्षेत्र';
	@override String get developer => 'डेवलपर';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileHi implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफाइल संपादित करें';
	@override String get subtitle => 'अपनी व्यक्तिगत जानकारी अपडेट करें';
}

// Path: settings.language
class _TranslationsSettingsLanguageHi implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भाषा';
	@override String get subtitle => 'अपनी पसंदीदा भाषा चुनें';
	@override String get searchHint => 'भाषाएं खोजें...';
	@override String get noResults => 'कोई परिणाम नहीं मिला';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitHi implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'ऊंचाई इकाई';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitHi implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'वजन इकाई';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersHi implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भोजन रिमाइंडर';
	@override String get subtitle => 'समय पर अलर्ट के साथ ट्रैक पर रहें';
}

// Path: settings.theme
class _TranslationsSettingsThemeHi implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'थीम';
	@override String get light => 'लाइट';
	@override String get dark => 'डार्क';
	@override String get system => 'सिस्टम';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackHi implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'फीडबैक भेजें';
	@override String subtitle({required Object appLabel}) => '${appLabel} को बेहतर बनाने में हमारी मदद करें';
	@override String emailSubject({required Object appLabel}) => '${appLabel} ऐप फीडबैक';
	@override String get emailBodyPrefix => 'कृपया नीचे अपनी प्रतिक्रिया दें:';
	@override String get appVersion => 'ऐप वर्ज़न';
	@override String get device => 'डिवाइस';
	@override String get osVersion => 'OS वर्ज़न';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryHi implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भोजन इतिहास एक्सपोर्ट करें';
	@override String get subtitle => 'अपने लॉग किए गए भोजन का CSV साझा करें';
	@override String get shareText => 'आपका Calorify भोजन इतिहास निर्यात';
	@override String failed({required Object error}) => 'भोजन इतिहास एक्सपोर्ट नहीं कर सके: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataHi implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सारा डेटा साफ़ करें';
	@override String get subtitle => 'अपनी सारी जानकारी अपरिवर्तनीय रूप से हटा दें';
	@override String get confirmationTitle => 'सारा डेटा साफ़ करें?';
	@override String get confirmationMessage => 'इस क्रिया को पूर्ववत नहीं किया जा सकता। आपके सभी लॉग किए गए भोजन, पसंदीदा, और प्रोफाइल सेटिंग्स स्थायी रूप से हटा दी जाएंगी।';
	@override String get cancel => 'रद्द करें';
	@override String get clearEverything => 'सब कुछ साफ़ करें';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsHi implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'डीबग विकल्प';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectHi implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'अनुमतियां देखें और प्रबंधित करें';
	@override late final _TranslationsSettingsHealthConnectUnavailableHi unavailable = _TranslationsSettingsHealthConnectUnavailableHi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsHi permissions = _TranslationsSettingsHealthConnectPermissionsHi._(_root);
	@override String get managePermissions => 'अनुमतियां प्रबंधित करें';
	@override String get openSettings => 'Health Connect सेटिंग्स खोलें';
	@override String get requestPermissions => 'अनुमतियां अनुरोध करें';
	@override String get permissionRequestCancelledOrFailed => 'अनुमति अनुरोध रद्द या विफल हो गया। कृपया पुन: प्रयास करें या Health Connect सेटिंग्स में मैन्युअल रूप से अनुमतियां दें।';
	@override String get permissionRequestFailed => 'अनुमतियों का अनुरोध करने में असमर्थ। कृपया पुन: प्रयास करें या Health Connect सेटिंग्स में मैन्युअल रूप से अनुमतियां दें।';
	@override String get requestingPermissions => 'अनुमतियों का अनुरोध किया जा रहा है...';
}

// Path: settings.about
class _TranslationsSettingsAboutHi implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'हमारे बारे में';
	@override String get tagline => 'तेज़, मुफ़्त, और गोपनीयता-प्रथम कैलोरी जागरूकता';
	@override late final _TranslationsSettingsAboutOurStoryHi ourStory = _TranslationsSettingsAboutOurStoryHi._(_root);
	@override late final _TranslationsSettingsAboutPrivacyHi privacy = _TranslationsSettingsAboutPrivacyHi._(_root);
	@override late final _TranslationsSettingsAboutDeveloperHi developer = _TranslationsSettingsAboutDeveloperHi._(_root);
	@override late final _TranslationsSettingsAboutFeedbackHi feedback = _TranslationsSettingsAboutFeedbackHi._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoHi implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'बिल्ड ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastHi implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'नाश्ते का समय! 🍳';
	@override String get body => 'अपना नाश्ता लॉग करना न भूलें';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchHi implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'लंच का समय! 🥗';
	@override String get body => 'अपना लंच लॉग करने का समय';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerHi implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'डिनर का समय! 🍽️';
	@override String get body => 'अपना डिनर लॉग करना न भूलें';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackHi implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्नैक टाइम! 🍎';
	@override String get body => 'एक हेल्दी स्नैक का समय';
}

// Path: notifications.test
class _TranslationsNotificationsTestHi implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'परीक्षण अधिसूचना';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapHi implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} अनुमानित पोषण जानकारी प्रदान करता है। सटीकता आपके इनपुट और भोजन के बदलावों पर निर्भर करती है। इसे मार्गदर्शन के रूप में उपयोग करें, अंतिम स्रोत के रूप में नहीं। व्यक्तिगत आहार सलाह के लिए किसी पेशेवर से परामर्श लें।';
	@override late final _TranslationsDisclaimerSnapPortionSizeHi portionSize = _TranslationsDisclaimerSnapPortionSizeHi._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsHi preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsHi._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsHi ingredients = _TranslationsDisclaimerSnapIngredientsHi._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsHi databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsHi._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateHi implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'वजन अनुमान के बारे में';
	@override String get description => 'प्रोजेक्टेड वजन परिवर्तन एक सैद्धांतिक अनुमान है जो सरल कैलोरी-इन बनाम कैलोरी-आउट मॉडल पर आधारित है। यह केवल प्रेरक मार्गदर्शन के लिए है, आपके वास्तविक वजन की भविष्यवाणी के रूप में नहीं।';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyHi calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyHi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsHi biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsHi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightHi waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightHi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHi professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHi._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsHi implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get description => 'ये मीट्रिक आपको आपके शरीर की ऊर्जा आवश्यकताओं को समझने और आपके पोषण लक्ष्यों का मार्गदर्शन करने में मदद करते हैं।';
	@override late final _TranslationsDisclaimerHealthMetricsBmrHi bmr = _TranslationsDisclaimerHealthMetricsBmrHi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeHi tdee = _TranslationsDisclaimerHealthMetricsTdeeHi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalHi dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalHi._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureHi implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कैलोरी खर्च अनुमान';
	@override String get description => 'जब Health Connect डेटा उपलब्ध नहीं होता, तो हम आज की जली कैलोरी का अनुमान आपके बेसल मेटाबोलिक रेट (BMR) और गतिविधि स्तर (TDEE) के आधार पर, बीते हुए दिन के हिस्से के अनुसार स्केल करके लगाते हैं।';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedHi howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedHi._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHi professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHi._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionHi implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्मार्ट फूड रिकॉग्निशन';
	@override String get description => 'फोटो लें और AI को आपका भोजन पहचानने दें';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisHi implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI विश्लेषण';
	@override String get description => 'अपनी विवरणों से तुरंत पोषण तथ्य पाएं';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationHi implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'हेल्थ इंटीग्रेशन';
	@override String get description => 'बेहतर इनसाइट्स के लिए Health Connect से कनेक्ट करें';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesHi implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'कम वजन';
	@override String get healthyWeight => 'स्वस्थ वजन';
	@override String get overweight => 'अधिक वजन';
	@override String get obese => 'मोटापा';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesHi implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'हम पोषक तत्वों से भरपूर भोजन के साथ संतुलित वजन तक पहुंचने के लिए एक स्वस्थ योजना बनाने में आपकी मदद कर सकते हैं।';
	@override String get healthy => 'बहुत बढ़िया! आप स्वस्थ श्रेणी में हैं। हम आपकी ऊर्जा और स्फूर्ति बनाए रखने में मदद करेंगे।';
	@override String overweight({required Object appLabel}) => '${appLabel} AI-संचालित ट्रैकिंग के साथ आपकी यात्रा को सरल बनाएगा, ताकि आप आराम से अपने लक्ष्य तक पहुंचें।';
	@override String get obese => 'हम आपके स्वास्थ्य लक्ष्यों के लिए व्यक्तिगत मार्गदर्शन और टिकाऊ रणनीतियों के साथ आपका साथ देने के लिए यहाँ हैं।';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingHi implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्वचालित कैलोरी ट्रैकिंग';
	@override String get description => 'अपने फिटनेस ऐप्स से जली कैलोरी ट्रैक करें';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsHi implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रगति इनसाइट्स';
	@override String get description => 'अपने स्वास्थ्य रुझानों पर विस्तृत इनसाइट्स पाएं';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationHi implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सीमलेस इंटीग्रेशन';
	@override String get description => 'अपने पसंदीदा हेल्थ ऐप्स से डेटा सिंक करें';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessHi implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आप अकेले नहीं हैं';
	@override String get genericMessage => 'अनुसंधान दिखाता है कि निरंतर ट्रैकिंग दीर्घकालिक सफलता का नंबर 1 संकेतक है।';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'एक ${age} वर्षीय ${gender} जो ${goal} का लक्ष्य रखता/रखती है, उसके लिए निरंतर ट्रैकिंग सफलता का नंबर 1 संकेतक है।';
	@override String closingMessage({required Object appLabel}) => '${appLabel} इसे मैन्युअली करने की तुलना में 10 गुना आसान बना देता है।';
	@override String get getStartedTitle => 'शुरू करने के लिए तैयार?';
	@override String get tipPhoto => 'तुरंत विश्लेषण के लिए अपने भोजन की फोटो लें';
	@override String get tipConsistency => 'अर्थपूर्ण प्रगति देखने के लिए नियमित रूप से लॉग करें';
	@override String get tipProgress => 'प्रेरित रहने के लिए रोज़ अपनी प्रगति ट्रैक करें';
	@override String get button => 'चलिए शुरू करें';
	@override String get defaultGender => 'व्यक्ति';
	@override String get defaultGoal => 'और स्वस्थ आप';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileHi implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपकी स्वास्थ्य प्रोफाइल';
	@override String bmiDescription({required Object bmi}) => 'आपके मेट्रिक्स के आधार पर, आपका BMI ${bmi} है।';
	@override String get finalizeDescription => 'आइए आपका प्रोफाइल फाइनल करें ताकि हम आपका अनुभव कस्टमाइज़ कर सकें।';
	@override String get goalGain => 'बढ़ाना';
	@override String get goalLose => 'घटाना';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'लक्ष्य तक पहुँचने के लिए, आपको ${direction} ${diff} ${unit} करना होगा।';
	@override String get goalReached => 'आप अपने लक्ष्य वजन पर हैं! हम इसे बनाए रखने में आपकी मदद करेंगे।';
	@override String get button => 'चलिए शुरू करें';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleHi implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'शानदार शुरुआत!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'आपने ${goalText} की ओर पहला कदम उठाया है। चूंकि आप ${activityText} हैं, ${appLabel} आपके लक्ष्यों को आपकी जीवनशैली के अनुरूप समायोजित करेगा।';
	@override String get personalizedTargets => 'व्यक्तिगत कैलोरी लक्ष्य';
	@override String get aiMealDetection => 'AI-संचालित भोजन पहचान';
	@override String get macroBreakdowns => 'विस्तृत मैक्रो-पोषक विभाजन';
	@override String get button => 'चलिए शुरू करें';
	@override String get defaultGoal => 'आपके लक्ष्य';
	@override String get defaultActivity => 'सक्रिय';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightHi implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'वजन घटाएं';
	@override String get description => 'कैलोरी डेफिसिट बनाकर वजन घटाएं';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightHi implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'वजन बनाए रखें';
	@override String get description => 'अपना वर्तमान वजन बनाए रखें';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightHi implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'वजन बढ़ाएं';
	@override String get description => 'कैलोरी सरप्लस बनाकर वजन बढ़ाएं';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryHi implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'बैठक-आधारित';
	@override String get description => 'बहुत कम या कोई व्यायाम नहीं';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveHi implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'हल्के सक्रिय';
	@override String get description => 'हल्का व्यायाम 1-3 दिन/सप्ताह';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveHi implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'मध्यम रूप से सक्रिय';
	@override String get description => 'मध्यम व्यायाम 3-5 दिन/सप्ताह';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveHi implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'बहुत सक्रिय';
	@override String get description => 'कठिन व्यायाम 6-7 दिन/सप्ताह';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveHi implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'बेहद सक्रिय';
	@override String get description => 'बहुत कठिन व्यायाम, शारीरिक कार्य';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableHi implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect उपलब्ध नहीं';
	@override String get description => 'इस डिवाइस पर Health Connect उपलब्ध नहीं है। कृपया प्ले स्टोर (Android 9+) से Health Connect इंस्टॉल करें या Android 14+ पर अपडेट करें।';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsHi implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अनुमतियां';
	@override String get description => 'Health Connect इंटीग्रेशन प्रदान करने के लिए निम्नलिखित अनुमतियों का अनुरोध किया जाता है:';
	@override String get granted => 'अनुमति दी गई';
	@override String get notGranted => 'अनुमति नहीं दी गई';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHi caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadHi nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadHi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteHi nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteHi._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryHi implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'हमारी कहानी';
	@override String content({required Object appLabel}) => '${appLabel} एक सरल निराशा से पैदा हुआ: ज्यादातर कैलोरी ट्रैकिंग ऐप्स या तो बहुत जटिल हैं, लगातार मैन्युअल इनपुट मांगते हैं, भारी सब्सक्रिप्शन फ़ीस लेते हैं, या गोपनीयता से समझौता करते हैं।\n\nएक सोलो डेवलपर के रूप में, मैंने कुछ सरल और न्यायसंगत बनाना चाहा — ऐसा ऐप जो AI का उपयोग करके मेहनत कम करे, तेज़ और मुफ़्त रहे, और आपके स्वास्थ्य डेटा का सम्मान करे।\n\n${appLabel} वह ऐप है जिसकी मुझे तलाश थी: न अकाउंट, न ट्रैकिंग, न विज्ञापन — बस साफ़, व्यावहारिक इनसाइट्स और आपके स्वास्थ्य लक्ष्य।';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyHi implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपकी गोपनीयता महत्वपूर्ण है';
	@override String get description => 'गोपनीयता बाद में जोड़ी जाने वाली चीज़ नहीं — यह एक डिज़ाइन सिद्धांत है। व्यवहार में इसका मतलब है:';
	@override String get noAccounts => 'कोई अकाउंट नहीं चाहिए\nऐप तुरंत उपयोग करें। न साइन-अप, न पहचान।';
	@override String noTracking({required Object appLabel}) => 'कोई व्यवहार ट्रैकिंग नहीं\n${appLabel} आपकी गतिविधि की निगरानी नहीं करता, उपयोग प्रोफाइल नहीं बनाता, या आपको ऐप्स/वेबसाइट्स पर ट्रैक नहीं करता।';
	@override String noAds({required Object appLabel}) => 'विज्ञापन-मुक्त डिज़ाइन\n${appLabel} विज्ञापनों या डेटा-चालित कमाई के बिना काम करने के लिए बनाया गया है।';
	@override String get noDataSelling => 'कोई डेटा बेचना नहीं\nआपका स्वास्थ्य डेटा कभी तीसरे पक्ष को बेचा या साझा नहीं किया जाता।';
	@override String get localStorage => 'लोकल-प्रथम स्टोरेज\nआपका डेटा आपके डिवाइस पर ही रहता है।';
	@override String get privacyPolicy => 'गोपनीयता नीति';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperHi implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'एक सोलो डेवलपर द्वारा बनाया गया';
	@override String description({required Object appLabel}) => '${appLabel} एक सिंगल सोलो डेवलपर द्वारा बनाया और मेंटेन किया जाता है, जो शांत, गोपनीयता-सम्मानित हेल्थ सॉफ्टवेयर बनाने पर केंद्रित है।\n\nफीडबैक व्यक्तिगत रूप से पढ़ा जाता है और ऐप की दिशा तय करने में मदद करता है।';
	@override String get website => 'वेबसाइट';
	@override String get email => 'ईमेल';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackHi implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} पसंद आ रहा है?';
	@override String description({required Object appLabel}) => 'आपका फीडबैक ${appLabel} को सभी के लिए बेहतर बनाने में मदद करता है।';
	@override String get rateApp => 'प्ले स्टोर पर रेट करें';
	@override String get sendFeedback => 'फीडबैक भेजें';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeHi implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पोर्टियन साइज़';
	@override String get description => 'अनुमानों की सटीकता आपके द्वारा निर्धारित पोर्टियन साइज़ की शुद्धता पर काफी निर्भर करती है।';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsHi implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'तैयारी के तरीके';
	@override String description({required Object appLabel}) => 'कुकिंग तरीके भोजन के पोषण को काफी बदल सकते हैं। ${appLabel} के अनुमान हमेशा इन भिन्नताओं का हिसाब नहीं कर पाते।';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsHi implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सामग्री';
	@override String get description => 'कई छिपी सामग्रियों वाले जटिल व्यंजन कम सटीक अनुमानों का कारण बन सकते हैं।';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsHi implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'डेटाबेस सीमाएं';
	@override String description({required Object appLabel}) => '${appLabel} का फूड डेटाबेस व्यापक है, लेकिन इसमें हर एक भोजन आइटम या वैरिएशन शामिल होना जरूरी नहीं।';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyHi implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कैलोरी सटीकता';
	@override String get description => 'यह अनुमान आपके द्वारा ट्रैक किए गए कैलोरी सेवन और खर्च की सटीकता जितना ही सटीक है। गलत लॉगिंग गलत प्रोजेक्शन देगी।';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsHi implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'जैविक कारक';
	@override String description({required Object appLabel}) => 'वास्तविक वजन घटाव/बढ़ाव मेटाबोलिज्म, हार्मोन, नींद, तनाव, हाइड्रेशन, और अन्य व्यक्तिगत कारकों से प्रभावित होता है जिसे ${appLabel} माप नहीं सकता।';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightHi implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'जल वजन और उतार-चढ़ाव';
	@override String get description => 'सामान्य दैनिक वजन जल प्रतिधारण, पाचन, और समय के कारण काफी उतार-चढ़ाव कर सकता है। यह अनुमान इन दैनिक परिवर्तनों का हिसाब नहीं रखता।';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHi implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पेशेवर मार्गदर्शन';
	@override String get description => 'कृपया किसी चिकित्सीय निर्णय के लिए इस अनुमान का उपयोग न करें। व्यक्तिगत वजन प्रबंधन सलाह के लिए हमेशा किसी स्वास्थ्य पेशेवर या पंजीकृत डायटीशियन से परामर्श लें।';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrHi implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'बेसल मेटाबोलिक रेट (BMR) वह कैलोरी होती है जो आपका शरीर आराम की अवस्था में, सांस लेने और रक्त संचार जैसे बुनियादी कार्यों को बनाए रखने के लिए जलाता है। BMR आपकी उम्र, लिंग, ऊंचाई और वजन पर निर्भर करता है। उच्च BMR का मतलब है कि आपका शरीर स्वाभाविक रूप से अधिक कैलोरी जलाता है, जो अक्सर अधिक मांसपेशियों, कम उम्र, या पुरुष होने के कारण होता है। कम BMR आमतौर पर कम मांसपेशियों, अधिक उम्र, या महिला होने को दर्शाता है।';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeHi implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'टोटल डेली एनर्जी एक्सपेंडिचर (TDEE) वह कुल कैलोरी है जो आप एक दिन में जलाते हैं, जिसमें आपका BMR तथा शारीरिक गतिविधि और दैनिक मूवमेंट से जली कैलोरी शामिल हैं। TDEE आपके BMR और गतिविधि स्तर पर निर्भर करता है। उच्च TDEE का मतलब आप कुल मिलाकर अधिक कैलोरी जलाते हैं, आमतौर पर अधिक सक्रिय होने या उच्च BMR के कारण। कम TDEE कम दैनिक गतिविधि या कम BMR का संकेत देता है।';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalHi implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'दैनिक लक्ष्य';
	@override String get description => 'दैनिक लक्ष्य आपका अनुशंसित दैनिक कैलोरी सेवन है जो आपके TDEE और वजन लक्ष्य पर आधारित है। वजन घटाने के लिए, आप TDEE से कम कैलोरी लेते हैं। वजन बनाए रखने के लिए, आप TDEE के बराबर लेते हैं। वजन बढ़ाने के लिए, आप TDEE से अधिक लेते हैं। यह आपको स्वस्थ गति से अपने वांछित वजन परिवर्तन को प्राप्त करने में मदद करता है।';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedHi implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अनुमान कैसे लगाया जाता है';
	@override String get description => 'हम आपके प्रोफाइल के आधार पर TDEE की गणना करते हैं और इसे अब तक बीते दिन के अंश (घंटे + मिनट) / 24 से गुणा करते हैं ताकि अभी तक जली कैलोरी का अनुमान लगाया जा सके।';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHi implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पेशेवर मार्गदर्शन';
	@override String get description => 'कृपया किसी चिकित्सीय निर्णय के लिए इस अनुमान का उपयोग न करें। व्यक्तिगत वजन प्रबंधन सलाह के लिए हमेशा किसी स्वास्थ्य पेशेवर या पंजीकृत डायटीशियन से परामर्श लें।';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHi implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कुल जली कैलोरी पढ़ें';
	@override String get description => 'ऐप को Health Connect से आपकी कुल जली कैलोरी पढ़ने की अनुमति देता है।';
	@override String get usage => 'यह अनुमति ऐप में आपकी दैनिक कैलोरी बर्न दिखाने के लिए उपयोग की जाती है, जिससे आप पूरे दिन की ऊर्जा खपत समझ सकें।';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadHi implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पोषण डेटा पढ़ें';
	@override String get description => 'ऐप को Health Connect से पोषण डेटा पढ़ने की अनुमति देता है।';
	@override String get usage => 'यह अनुमति अन्य ऐप्स द्वारा Health Connect में लॉग किए गए पोषण डेटा को पढ़ने देती है, ताकि आपके पोषण का समग्र दृश्य मिल सके।';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteHi implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पोषण डेटा लिखें';
	@override String get description => 'ऐप को Health Connect में पोषण डेटा लिखने की अनुमति देता है।';
	@override String get usage => 'यह अनुमति आपके लॉग किए गए भोजन को Health Connect के साथ सिंक करने देती है, ताकि अन्य स्वास्थ्य और फिटनेस ऐप्स में आपका पोषण डेटा उपलब्ध रहे।';
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
			'errors.rateLimitExceeded' => 'आपने बहुत अधिक अनुरोध किए हैं। कृपया दोबारा प्रयास करने से पहले कुछ क्षण प्रतीक्षा करें।',
			'errors.networkError' => 'नेटवर्क त्रुटि। कृपया अपना इंटरनेट कनेक्शन जांचें।',
			'errors.unknownError' => 'कुछ गलत हो गया। कृपया बाद में पुन: प्रयास करें।',
			'errors.loadingProfileData' => 'प्रोफाइल डेटा लोड करने में त्रुटि',
			'errors.somethingWentWrong' => 'कुछ गलत हो गया।',
			'errors.retry' => 'पुनः प्रयास करें',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel} में आपका स्वागत है',
			'onboarding.subtitle' => 'AI द्वारा संचालित आपका व्यक्तिगत पोषण साथी',
			'onboarding.getStarted' => 'शुरू करें',
			'onboarding.features.foodRecognition.title' => 'स्मार्ट फूड रिकॉग्निशन',
			'onboarding.features.foodRecognition.description' => 'फोटो लें और AI को आपका भोजन पहचानने दें',
			'onboarding.features.aiAnalysis.title' => 'AI विश्लेषण',
			'onboarding.features.aiAnalysis.description' => 'अपनी विवरणों से तुरंत पोषण तथ्य पाएं',
			'onboarding.features.healthIntegration.title' => 'हेल्थ इंटीग्रेशन',
			'onboarding.features.healthIntegration.description' => 'बेहतर इनसाइट्स के लिए Health Connect से कनेक्ट करें',
			'onboarding.gender.title' => 'आपका लिंग क्या है?',
			'onboarding.gender.description' => 'लिंग हमें आपकी आधारभूत मेटाबोलिक दर (BMR) सटीक रूप से गणना करने में मदद करता है।',
			'onboarding.gender.next' => 'आगे',
			'onboarding.height.title' => 'आपकी ऊंचाई कितनी है?',
			'onboarding.height.description' => 'आपकी ऊंचाई हमें आपका BMI और ऊर्जा आवश्यकताएं सटीक रूप से गणना करने में मदद करती है।',
			'onboarding.height.metric' => 'मेट्रिक',
			'onboarding.height.imperial' => 'इम्पीरियल',
			'onboarding.height.next' => 'आगे',
			'onboarding.weight.currentTitle' => 'आपका वर्तमान वजन क्या है?',
			'onboarding.weight.currentDescription' => 'आपका वर्तमान वजन आपके दैनिक लक्ष्यों को व्यक्तिगत बनाने के लिए आवश्यक है।',
			'onboarding.weight.targetTitle' => 'आपका लक्ष्य वजन क्या है?',
			'onboarding.weight.targetDescription' => 'लक्ष्य वजन तय करने से हमें आपका दीर्घकालिक प्लान निर्धारित करने में मदद मिलती है।',
			'onboarding.weight.metric' => 'मेट्रिक',
			'onboarding.weight.imperial' => 'इम्पीरियल',
			'onboarding.weight.next' => 'आगे',
			'onboarding.age.title' => 'आपका जन्मदिन कब है?',
			'onboarding.age.description' => 'आपकी उम्र हमें आपकी कैलोरी आवश्यकताओं की सटीक गणना करने में मदद करती है।',
			'onboarding.age.next' => 'आगे',
			'onboarding.bmiScale.underweight' => 'कम',
			'onboarding.bmiScale.healthy' => 'स्वस्थ',
			'onboarding.bmiScale.overweight' => 'अधिक',
			'onboarding.bmiScale.obese' => 'मोटापा',
			'onboarding.bmiScale.categories.underweight' => 'कम वजन',
			'onboarding.bmiScale.categories.healthyWeight' => 'स्वस्थ वजन',
			'onboarding.bmiScale.categories.overweight' => 'अधिक वजन',
			'onboarding.bmiScale.categories.obese' => 'मोटापा',
			'onboarding.bmiScale.messages.underweight' => 'हम पोषक तत्वों से भरपूर भोजन के साथ संतुलित वजन तक पहुंचने के लिए एक स्वस्थ योजना बनाने में आपकी मदद कर सकते हैं।',
			'onboarding.bmiScale.messages.healthy' => 'बहुत बढ़िया! आप स्वस्थ श्रेणी में हैं। हम आपकी ऊर्जा और स्फूर्ति बनाए रखने में मदद करेंगे।',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} AI-संचालित ट्रैकिंग के साथ आपकी यात्रा को सरल बनाएगा, ताकि आप आराम से अपने लक्ष्य तक पहुंचें।',
			'onboarding.bmiScale.messages.obese' => 'हम आपके स्वास्थ्य लक्ष्यों के लिए व्यक्तिगत मार्गदर्शन और टिकाऊ रणनीतियों के साथ आपका साथ देने के लिए यहाँ हैं।',
			'onboarding.weightGoal.title' => 'आपका लक्ष्य क्या है?',
			'onboarding.weightGoal.description' => 'वह लक्ष्य चुनें जो आपकी इच्छा को सबसे अच्छी तरह दर्शाता है',
			'onboarding.activityLevel.title' => 'आप कितने सक्रिय हैं?',
			'onboarding.activityLevel.description' => 'यह हमें आपकी दैनिक कैलोरी आवश्यकताओं की अधिक सटीक गणना करने में मदद करता है',
			'onboarding.healthConnect.title' => 'Health Connect से कनेक्ट करें',
			'onboarding.healthConnect.description' => 'बेहतर इनसाइट्स और स्वचालित कैलोरी ट्रैकिंग के लिए अपना स्वास्थ्य डेटा सिंक करें',
			'onboarding.healthConnect.automaticTracking.title' => 'स्वचालित कैलोरी ट्रैकिंग',
			'onboarding.healthConnect.automaticTracking.description' => 'अपने फिटनेस ऐप्स से जली कैलोरी ट्रैक करें',
			'onboarding.healthConnect.progressInsights.title' => 'प्रगति इनसाइट्स',
			'onboarding.healthConnect.progressInsights.description' => 'अपने स्वास्थ्य रुझानों पर विस्तृत इनसाइट्स पाएं',
			'onboarding.healthConnect.seamlessIntegration.title' => 'सीमलेस इंटीग्रेशन',
			'onboarding.healthConnect.seamlessIntegration.description' => 'अपने पसंदीदा हेल्थ ऐप्स से डेटा सिंक करें',
			'onboarding.healthConnect.connected' => 'Health Connect कनेक्टेड',
			'onboarding.healthConnect.notConnected' => 'Health Connect कनेक्टेड नहीं',
			'onboarding.healthConnect.setup' => 'Health Connect सेटअप करें',
			'onboarding.healthConnect.skipForNow' => 'फिलहाल छोड़ें',
			'onboarding.healthConnect.statusConnected' => 'Health Connect कनेक्टेड है।',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect सफलतापूर्वक कनेक्ट हो गया!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'अनुमति अस्वीकृत। कृपया ${appLabel} के लिए अपने फ़ोन सेटिंग्स में Health Connect अनुमतियां सक्षम करें।',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect सेटअप करते समय त्रुटि: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'आप अकेले नहीं हैं',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'अनुसंधान दिखाता है कि निरंतर ट्रैकिंग दीर्घकालिक सफलता का नंबर 1 संकेतक है।',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'एक ${age} वर्षीय ${gender} जो ${goal} का लक्ष्य रखता/रखती है, उसके लिए निरंतर ट्रैकिंग सफलता का नंबर 1 संकेतक है।',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} इसे मैन्युअली करने की तुलना में 10 गुना आसान बना देता है।',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'शुरू करने के लिए तैयार?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'तुरंत विश्लेषण के लिए अपने भोजन की फोटो लें',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'अर्थपूर्ण प्रगति देखने के लिए नियमित रूप से लॉग करें',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'प्रेरित रहने के लिए रोज़ अपनी प्रगति ट्रैक करें',
			'onboarding.reinforcement.trackingSuccess.button' => 'चलिए शुरू करें',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'व्यक्ति',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'और स्वस्थ आप',
			'onboarding.reinforcement.healthProfile.title' => 'आपकी स्वास्थ्य प्रोफाइल',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'आपके मेट्रिक्स के आधार पर, आपका BMI ${bmi} है।',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'आइए आपका प्रोफाइल फाइनल करें ताकि हम आपका अनुभव कस्टमाइज़ कर सकें।',
			'onboarding.reinforcement.healthProfile.goalGain' => 'बढ़ाना',
			'onboarding.reinforcement.healthProfile.goalLose' => 'घटाना',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'लक्ष्य तक पहुँचने के लिए, आपको ${direction} ${diff} ${unit} करना होगा।',
			'onboarding.reinforcement.healthProfile.goalReached' => 'आप अपने लक्ष्य वजन पर हैं! हम इसे बनाए रखने में आपकी मदद करेंगे।',
			'onboarding.reinforcement.healthProfile.button' => 'चलिए शुरू करें',
			'onboarding.reinforcement.goalLifestyle.title' => 'शानदार शुरुआत!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'आपने ${goalText} की ओर पहला कदम उठाया है। चूंकि आप ${activityText} हैं, ${appLabel} आपके लक्ष्यों को आपकी जीवनशैली के अनुरूप समायोजित करेगा।',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'व्यक्तिगत कैलोरी लक्ष्य',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-संचालित भोजन पहचान',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'विस्तृत मैक्रो-पोषक विभाजन',
			'onboarding.reinforcement.goalLifestyle.button' => 'चलिए शुरू करें',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'आपके लक्ष्य',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'सक्रिय',
			'tabs.dashboard' => 'डैशबोर्ड',
			'tabs.history' => 'इतिहास',
			'home.aiSummary.title' => 'आपका AI सारांश',
			'home.aiSummary.logMore' => 'अपने व्यक्तिगत AI इनसाइट्स पाने के लिए अगले कुछ दिनों में और भोजन लॉग करें।',
			'home.aiSummary.loading' => 'आपका सारांश लोड हो रहा है...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} भोजन लॉग किए गए',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'संतुलन स्कोर ${score}',
			'home.aiSummary.topFoods' => 'शीर्ष खाद्य पदार्थ',
			'home.aiSummary.trendUp' => 'कैलोरी बढ़ रही हैं',
			'home.aiSummary.trendDown' => 'कैलोरी घट रही हैं',
			'home.aiSummary.trendSteady' => 'कैलोरी स्थिर हैं',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'अद्यतन ${time}',
			'home.dailyGoal.title' => 'अपना दैनिक लक्ष्य सेट करें',
			'home.dailyGoal.titleSet' => 'आपका दैनिक लक्ष्य',
			'home.dailyGoal.description' => 'क्या आप अपनी वेलनेस यात्रा शुरू करने के लिए तैयार हैं? अपनी प्रगति शुरू करने के लिए नीचे अपना दैनिक कैलोरी लक्ष्य सेट करें।',
			'home.dailyGoal.descriptionSet' => 'आपका कंपास सेट हो गया है! यह आपका मार्गदर्शन करने के लिए दैनिक कैलोरी लक्ष्य है।',
			'home.dailyGoal.yourGoal' => 'आपका लक्ष्य',
			'home.dailyGoal.goal' => 'लक्ष्य',
			'home.dailyGoal.dailyCalories' => 'दैनिक कैलोरी (kcal)',
			'home.dailyGoal.setGoal' => 'लक्ष्य निर्धारित करें',
			'home.dailyGoal.intake' => 'सेवन',
			'home.dailyGoal.burned' => 'जली',
			'home.dailyGoal.weightImpact' => 'वजन पर प्रभाव',
			'home.dailyGoal.estLoss' => 'अनुमानित कमी',
			'home.dailyGoal.estGain' => 'अनुमानित बढ़ोतरी',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'दैनिक सारांश',
			'home.dailySummary.calories' => 'कैलोरी',
			'home.dailySummary.carbs' => 'कार्ब्स',
			'home.dailySummary.protein' => 'प्रोटीन',
			'home.dailySummary.fat' => 'वसा',
			'home.dailySummary.fiber' => 'फाइबर',
			'home.dailySummary.grams' => 'ग्राम',
			'home.dailySummary.chartAccessibilityLabel' => 'मैक्रो चार्ट',
			'home.intakeProgress.title' => 'आज का मैक्रो विभाजन',
			'home.intakeProgress.target' => 'लक्ष्य',
			'home.intakeProgress.current' => 'वर्तमान',
			'home.intakeHistory.title' => '7-दिन का मैक्रो इतिहास',
			'home.intakeHistory.trendTitle' => 'आज की प्रवृत्ति',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'उच्चतम: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'अभी तक कोई इतिहास नहीं',
			'home.intakeHistory.startLogging' => 'यहां अपनी 7-दिन की मैक्रो प्रवृत्तियां देखने के लिए\nभोजन लॉग करना शुरू करें',
			'home.mealLog.title' => 'लॉग किए गए भोजन',
			'home.mealLog.emptyMessage' => 'यहां लॉग करने के लिए अपने पिछले भोजन की तस्वीर लें।',
			'home.mealLog.noMealsToday' => 'आज के लिए कोई भोजन रिकॉर्ड नहीं',
			'home.mealLog.seeAllMeals' => 'सभी भोजन देखें',
			'home.mealDescription.title' => 'AI से त्वरित जोड़',
			'home.mealDescription.description' => 'अपने भोजन का वर्णन करें, और बाकी काम AI पर छोड़ दें।',
			'home.mealDescription.hint' => 'उदा. नाश्ते में मैंने केले के स्लाइस और व्हे की एक स्कूप के साथ ओटमील का बड़ा कटोरा लिया ...',
			'home.mealDescription.analyzeMeal' => 'भोजन का विश्लेषण करें',
			'home.favoriteMeals.title' => 'पसंदीदा भोजन',
			'home.favoriteMeals.description' => 'अपने पसंदीदा भोजन में से किसी एक को जल्दी से जोड़ें।',
			'home.favoriteMeals.noFavorites' => 'अभी तक कोई पसंदीदा भोजन नहीं।',
			'home.favoriteMeals.addFavoriteHint' => 'किसी भोजन पर स्टार क्लिक करके उसे पसंदीदा चिह्नित करें।',
			'home.favoriteMeals.seeAll' => 'सभी देखें',
			'home.favoriteMeals.add' => 'जोड़ें',
			'home.mealSnap.title' => 'तस्वीर लें और अपना भोजन ट्रैक करें',
			'home.mealSnap.description' => 'AI विश्लेषण के लिए अपने भोजन की फोटो लें।',
			'home.mealSnap.openCamera' => 'कैमरा खोलें',
			'home.mealSnap.gallery' => 'गैलरी',
			'home.mealSnap.compressingPhoto' => 'फोटो अनुकूलित की जा रही है…',
			'home.mealSnap.uploadingPhoto' => 'फोटो अपलोड हो रही है…',
			'home.connectHealth.title' => 'Health Connect से सिंक करें',
			'home.connectHealth.description' => 'अपना पोषण डेटा Health Connect से सिंक करें',
			'home.connectHealth.install' => 'इंस्टॉल करें',
			'home.connectHealth.connect' => 'कनेक्ट करें',
			'history.noMeals' => 'कोई भोजन रिकॉर्ड नहीं',
			'history.emptyMessage' => 'यहां लॉग करने के लिए अपने पिछले भोजन की तस्वीर लें।',
			'history.today' => 'आज',
			'history.yesterday' => 'कल',
			'meal.ohNo' => 'अरे नहीं!',
			'meal.delete' => 'हटाएं',
			'meal.editMeal' => 'भोजन संपादित करें',
			'meal.addMeal' => 'भोजन जोड़ें',
			'meal.saveMeal' => 'भोजन सहेजें',
			'meal.save' => 'सहेजें',
			'meal.mealName' => 'भोजन का नाम',
			'meal.mealNameHint' => 'उदा., टोस्ट के साथ स्क्रैम्बल्ड अंडे',
			'meal.mealQuantity' => 'भोजन की मात्रा',
			'meal.mealQuantityHint' => 'उदा., 1 कटोरी, 2 स्लाइस',
			'meal.timeOfMeal' => 'भोजन का समय',
			'meal.timeOfMealHint' => 'वह समय चुनें जब आपने भोजन किया था',
			'meal.mealType' => 'भोजन प्रकार',
			'meal.nutrition.calories' => 'कैलोरी',
			'meal.nutrition.carbs' => 'कार्ब्स (g)',
			'meal.nutrition.protein' => 'प्रोटीन (g)',
			'meal.nutrition.fat' => 'वसा (g)',
			'meal.nutrition.fiber' => 'फाइबर (g)',
			'meal.deleteConfirmation.title' => 'भोजन हटाएं',
			'meal.deleteConfirmation.message' => 'क्या आप वाकई इस भोजन प्रविष्टि को हटाना चाहते हैं?',
			'meal.deleteConfirmation.cancel' => 'रद्द करें',
			'meal.deleteConfirmation.delete' => 'हटाएं',
			'meal.addedToLog' => 'भोजन आपके लॉग में जोड़ा गया!',
			'meal.couldNotAdd' => ({required Object error}) => 'भोजन जोड़ नहीं सके: ${error}',
			'meal.savedSuccessfully' => 'भोजन सफलतापूर्वक जोड़ा गया!',
			'meal.updatedSuccessfully' => 'भोजन सफलतापूर्वक अपडेट किया गया!',
			'meal.errorSaving' => ({required Object error}) => 'भोजन सहेजते समय त्रुटि: ${error}',
			'meal.removedFromFavorites' => 'पसंदीदा से हटाया गया!',
			'meal.savedAsFavorite' => 'भोजन को पसंदीदा के रूप में सहेजा गया!',
			'meal.unfavorite' => 'पसंदीदा हटाएं',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'पसंदीदा अपडेट नहीं कर सके: ${error}',
			'meal.feedbackThanks' => 'प्रतिक्रिया के लिए धन्यवाद!',
			'meal.reanalysisUpdated' => 'आपकी प्रतिक्रिया के आधार पर भोजन विश्लेषण अपडेट किया गया।',
			'meal.failedToProcess' => ({required Object error}) => 'प्रोसेस करने में विफल: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'छवि प्रोसेस करने में विफल: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'छवि संपीड़ित करते समय त्रुटि: ${error}',
			'meal.failedToSave' => 'डेटा सहेजने में विफल। कृपया पुन: प्रयास करें।',
			'meal.skip' => 'छोड़ें',
			'meal.variation.question' => ({required Object total, required Object current}) => 'प्रश्न ${total} में से ${current}',
			'meal.variation.noVariationsAvailable' => 'कोई वैरिएशन उपलब्ध नहीं',
			'meal.analysis.title' => 'AI भोजन विश्लेषण',
			'meal.analysis.reassurance' => 'यह आमतौर पर कुछ सेकंड लेता है।',
			'meal.analysis.stepStarted' => 'शुरू किया जा रहा है…',
			'meal.analysis.stepDecomposition' => 'आपके भोजन को समझा जा रहा है…',
			'meal.analysis.stepIngredients' => 'सामग्री को पोषण डेटा से मिलाया जा रहा है…',
			'meal.analysis.stepUncertainty' => 'विश्वास स्तर जांचा जा रहा है…',
			'meal.analysis.stepMealTypeQuestion' => 'लगभग हो गया…',
			'meal.analysis.stepResult' => 'आपका परिणाम अंतिम रूप दिया जा रहा है…',
			'meal.analysis.stepError' => 'कुछ गलत हो गया',
			'meal.analysis.stepDefault' => 'आपके भोजन का विश्लेषण किया जा रहा है…',
			'meal.analysis.progressUnderstand' => 'समझें',
			'meal.analysis.progressMatch' => 'मिलान',
			'meal.analysis.progressCheck' => 'जांच',
			'meal.analysis.progressFinish' => 'समाप्त',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} सामग्री पहचानी गई',
			'meal.analysis.ingredientsPending' => 'सामग्री स्कैन की जा रही हैं…',
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
			'favorites.title' => 'पसंदीदा',
			'favorites.empty' => 'अभी तक कोई पसंदीदा भोजन नहीं।',
			'favorites.searchPlaceholder' => 'पसंदीदा भोजन खोजें',
			'favorites.searchEmptyTitle' => 'आपकी खोज से कोई पसंदीदा नहीं मिला',
			'favorites.searchEmptySubtitle' => 'कोई अलग भोजन नाम, मात्रा, या भोजन प्रकार आज़माएं।',
			'favorites.sortLabel' => 'पसंदीदा क्रमबद्ध करें',
			'favorites.undo' => 'पूर्ववत करें',
			'favorites.removed' => ({required Object name}) => '${name} को पसंदीदा से हटाया गया',
			'favorites.sortOptions.recent' => 'हाल के',
			'favorites.sortOptions.calories' => 'कैलोरी',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'प्रोफाइल',
			'profile.noProfileData' => 'कोई प्रोफाइल डेटा नहीं मिला',
			'profile.yourProfile' => 'आपकी प्रोफाइल',
			'profile.viewAndManage' => 'अपनी स्वास्थ्य जानकारी देखें और प्रबंधित करें',
			'profile.sections.profile' => 'प्रोफाइल',
			'profile.sections.basicInformation' => 'मूल जानकारी',
			'profile.sections.goalsAndActivity' => 'लक्ष्य और गतिविधि',
			'profile.sections.calculatedValues' => 'गणना किए गए मान',
			'profile.gender' => 'लिंग',
			'profile.height' => 'ऊंचाई',
			'profile.weight' => 'वजन',
			'profile.age' => 'आयु',
			'profile.weightGoal' => 'वजन लक्ष्य',
			'profile.targetWeight' => 'लक्ष्य वजन',
			'profile.activityLevel' => 'गतिविधि स्तर',
			'profile.healthMetrics' => 'स्वास्थ्य मीट्रिक्स',
			'profile.notSet' => 'सेट नहीं',
			'profile.years' => 'वर्ष',
			'profile.updatedSuccessfully' => 'प्रोफाइल सफलतापूर्वक अपडेट की गई!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'दैनिक लक्ष्य',
			'profile.calculatedValues.calPerDay' => 'cal/day',
			'profile.calculatedValues.notAvailable' => 'उपलब्ध नहीं',
			'healthScore.title' => 'हेल्थ स्कोर',
			'healthScore.whyThisScore' => 'यह स्कोर क्यों?',
			'healthScore.note' => 'यह स्कोर पहचानी गई सामग्रियों और पोषण घनत्व के आधार पर AI अनुमान है। आहार संबंधी सलाह के लिए हमेशा किसी पेशेवर से परामर्श लें।',
			'healthScore.unhealthy' => 'अस्वस्थ',
			'healthScore.healthy' => 'स्वस्थ',
			'healthScore.neutral' => 'तटस्थ',
			'editProfile.title' => 'प्रोफाइल संपादित करें',
			'editProfile.sections.personalInformation' => 'व्यक्तिगत जानकारी',
			'editProfile.sections.physicalMeasurements' => 'शारीरिक माप',
			'editProfile.sections.goalsAndActivity' => 'लक्ष्य और गतिविधि',
			'editProfile.gender' => 'लिंग',
			'editProfile.dateOfBirth' => 'जन्मतिथि',
			'editProfile.height' => 'ऊंचाई',
			'editProfile.weight' => 'वजन',
			'editProfile.weightGoal' => 'वजन लक्ष्य',
			'editProfile.activityLevel' => 'गतिविधि स्तर',
			'editProfile.metric' => 'मेट्रिक',
			'editProfile.imperial' => 'इम्पीरियल',
			'editProfile.unitCm' => 'सेमी',
			'editProfile.unitFt' => 'फुट',
			'editProfile.unitKg' => 'किग्रा',
			'editProfile.unitLbs' => 'पाउंड',
			'editProfile.metricCm' => 'मेट्रिक (सेमी)',
			'editProfile.imperialFtIn' => 'इम्पीरियल (फुट/इंच)',
			'editProfile.metricKg' => 'मेट्रिक (किग्रा)',
			'editProfile.imperialLbs' => 'इम्पीरियल (lbs)',
			'editProfile.genders.male' => 'पुरुष',
			'editProfile.genders.female' => 'महिला',
			'editProfile.genders.other' => 'अन्य',
			'editProfile.weightGoals.loseWeight.name' => 'वजन घटाएं',
			'editProfile.weightGoals.loseWeight.description' => 'कैलोरी डेफिसिट बनाकर वजन घटाएं',
			'editProfile.weightGoals.maintainWeight.name' => 'वजन बनाए रखें',
			'editProfile.weightGoals.maintainWeight.description' => 'अपना वर्तमान वजन बनाए रखें',
			'editProfile.weightGoals.gainWeight.name' => 'वजन बढ़ाएं',
			'editProfile.weightGoals.gainWeight.description' => 'कैलोरी सरप्लस बनाकर वजन बढ़ाएं',
			'editProfile.activityLevels.sedentary.name' => 'बैठक-आधारित',
			'editProfile.activityLevels.sedentary.description' => 'बहुत कम या कोई व्यायाम नहीं',
			'editProfile.activityLevels.lightlyActive.name' => 'हल्के सक्रिय',
			'editProfile.activityLevels.lightlyActive.description' => 'हल्का व्यायाम 1-3 दिन/सप्ताह',
			'editProfile.activityLevels.moderatelyActive.name' => 'मध्यम रूप से सक्रिय',
			'editProfile.activityLevels.moderatelyActive.description' => 'मध्यम व्यायाम 3-5 दिन/सप्ताह',
			'editProfile.activityLevels.veryActive.name' => 'बहुत सक्रिय',
			'editProfile.activityLevels.veryActive.description' => 'कठिन व्यायाम 6-7 दिन/सप्ताह',
			'editProfile.activityLevels.extremelyActive.name' => 'बेहद सक्रिय',
			'editProfile.activityLevels.extremelyActive.description' => 'बहुत कठिन व्यायाम, शारीरिक कार्य',
			'settings.title' => 'सेटिंग्स',
			'settings.sections.profile' => 'प्रोफाइल',
			'settings.sections.localization' => 'स्थानीयकरण',
			'settings.sections.notifications' => 'सूचनाएं',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.supportAndLegal' => 'सपोर्ट और कानूनी',
			'settings.sections.about' => 'हमारे बारे में',
			'settings.sections.dangerZone' => 'खतरे का क्षेत्र',
			'settings.sections.developer' => 'डेवलपर',
			'settings.editProfile.title' => 'प्रोफाइल संपादित करें',
			'settings.editProfile.subtitle' => 'अपनी व्यक्तिगत जानकारी अपडेट करें',
			'settings.language.title' => 'भाषा',
			'settings.language.subtitle' => 'अपनी पसंदीदा भाषा चुनें',
			'settings.language.searchHint' => 'भाषाएं खोजें...',
			'settings.language.noResults' => 'कोई परिणाम नहीं मिला',
			'settings.heightUnit.title' => 'ऊंचाई इकाई',
			'settings.weightUnit.title' => 'वजन इकाई',
			'settings.mealReminders.title' => 'भोजन रिमाइंडर',
			'settings.mealReminders.subtitle' => 'समय पर अलर्ट के साथ ट्रैक पर रहें',
			'settings.theme.title' => 'थीम',
			'settings.theme.light' => 'लाइट',
			'settings.theme.dark' => 'डार्क',
			'settings.theme.system' => 'सिस्टम',
			'settings.sendFeedback.title' => 'फीडबैक भेजें',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} को बेहतर बनाने में हमारी मदद करें',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} ऐप फीडबैक',
			'settings.sendFeedback.emailBodyPrefix' => 'कृपया नीचे अपनी प्रतिक्रिया दें:',
			'settings.sendFeedback.appVersion' => 'ऐप वर्ज़न',
			'settings.sendFeedback.device' => 'डिवाइस',
			'settings.sendFeedback.osVersion' => 'OS वर्ज़न',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'भोजन इतिहास एक्सपोर्ट करें',
			'settings.exportMealHistory.subtitle' => 'अपने लॉग किए गए भोजन का CSV साझा करें',
			'settings.exportMealHistory.shareText' => 'आपका Calorify भोजन इतिहास निर्यात',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'भोजन इतिहास एक्सपोर्ट नहीं कर सके: ${error}',
			'settings.clearAllData.title' => 'सारा डेटा साफ़ करें',
			'settings.clearAllData.subtitle' => 'अपनी सारी जानकारी अपरिवर्तनीय रूप से हटा दें',
			'settings.clearAllData.confirmationTitle' => 'सारा डेटा साफ़ करें?',
			'settings.clearAllData.confirmationMessage' => 'इस क्रिया को पूर्ववत नहीं किया जा सकता। आपके सभी लॉग किए गए भोजन, पसंदीदा, और प्रोफाइल सेटिंग्स स्थायी रूप से हटा दी जाएंगी।',
			'settings.clearAllData.cancel' => 'रद्द करें',
			'settings.clearAllData.clearEverything' => 'सब कुछ साफ़ करें',
			'settings.debugOptions.title' => 'डीबग विकल्प',
			'settings.developerModeEnabled' => 'डेवलपर मोड सक्षम!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'अनुमतियां देखें और प्रबंधित करें',
			'settings.healthConnect.unavailable.title' => 'Health Connect उपलब्ध नहीं',
			'settings.healthConnect.unavailable.description' => 'इस डिवाइस पर Health Connect उपलब्ध नहीं है। कृपया प्ले स्टोर (Android 9+) से Health Connect इंस्टॉल करें या Android 14+ पर अपडेट करें।',
			'settings.healthConnect.permissions.title' => 'अनुमतियां',
			'settings.healthConnect.permissions.description' => 'Health Connect इंटीग्रेशन प्रदान करने के लिए निम्नलिखित अनुमतियों का अनुरोध किया जाता है:',
			'settings.healthConnect.permissions.granted' => 'अनुमति दी गई',
			'settings.healthConnect.permissions.notGranted' => 'अनुमति नहीं दी गई',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'कुल जली कैलोरी पढ़ें',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'ऐप को Health Connect से आपकी कुल जली कैलोरी पढ़ने की अनुमति देता है।',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'यह अनुमति ऐप में आपकी दैनिक कैलोरी बर्न दिखाने के लिए उपयोग की जाती है, जिससे आप पूरे दिन की ऊर्जा खपत समझ सकें।',
			'settings.healthConnect.permissions.nutritionRead.title' => 'पोषण डेटा पढ़ें',
			'settings.healthConnect.permissions.nutritionRead.description' => 'ऐप को Health Connect से पोषण डेटा पढ़ने की अनुमति देता है।',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'यह अनुमति अन्य ऐप्स द्वारा Health Connect में लॉग किए गए पोषण डेटा को पढ़ने देती है, ताकि आपके पोषण का समग्र दृश्य मिल सके।',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'पोषण डेटा लिखें',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'ऐप को Health Connect में पोषण डेटा लिखने की अनुमति देता है।',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'यह अनुमति आपके लॉग किए गए भोजन को Health Connect के साथ सिंक करने देती है, ताकि अन्य स्वास्थ्य और फिटनेस ऐप्स में आपका पोषण डेटा उपलब्ध रहे।',
			'settings.healthConnect.managePermissions' => 'अनुमतियां प्रबंधित करें',
			'settings.healthConnect.openSettings' => 'Health Connect सेटिंग्स खोलें',
			'settings.healthConnect.requestPermissions' => 'अनुमतियां अनुरोध करें',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'अनुमति अनुरोध रद्द या विफल हो गया। कृपया पुन: प्रयास करें या Health Connect सेटिंग्स में मैन्युअल रूप से अनुमतियां दें।',
			'settings.healthConnect.permissionRequestFailed' => 'अनुमतियों का अनुरोध करने में असमर्थ। कृपया पुन: प्रयास करें या Health Connect सेटिंग्स में मैन्युअल रूप से अनुमतियां दें।',
			'settings.healthConnect.requestingPermissions' => 'अनुमतियों का अनुरोध किया जा रहा है...',
			'settings.about.title' => 'हमारे बारे में',
			'settings.about.tagline' => 'तेज़, मुफ़्त, और गोपनीयता-प्रथम कैलोरी जागरूकता',
			'settings.about.ourStory.title' => 'हमारी कहानी',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} एक सरल निराशा से पैदा हुआ: ज्यादातर कैलोरी ट्रैकिंग ऐप्स या तो बहुत जटिल हैं, लगातार मैन्युअल इनपुट मांगते हैं, भारी सब्सक्रिप्शन फ़ीस लेते हैं, या गोपनीयता से समझौता करते हैं।\n\nएक सोलो डेवलपर के रूप में, मैंने कुछ सरल और न्यायसंगत बनाना चाहा — ऐसा ऐप जो AI का उपयोग करके मेहनत कम करे, तेज़ और मुफ़्त रहे, और आपके स्वास्थ्य डेटा का सम्मान करे।\n\n${appLabel} वह ऐप है जिसकी मुझे तलाश थी: न अकाउंट, न ट्रैकिंग, न विज्ञापन — बस साफ़, व्यावहारिक इनसाइट्स और आपके स्वास्थ्य लक्ष्य।',
			'settings.about.privacy.title' => 'आपकी गोपनीयता महत्वपूर्ण है',
			'settings.about.privacy.description' => 'गोपनीयता बाद में जोड़ी जाने वाली चीज़ नहीं — यह एक डिज़ाइन सिद्धांत है। व्यवहार में इसका मतलब है:',
			'settings.about.privacy.noAccounts' => 'कोई अकाउंट नहीं चाहिए\nऐप तुरंत उपयोग करें। न साइन-अप, न पहचान।',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'कोई व्यवहार ट्रैकिंग नहीं\n${appLabel} आपकी गतिविधि की निगरानी नहीं करता, उपयोग प्रोफाइल नहीं बनाता, या आपको ऐप्स/वेबसाइट्स पर ट्रैक नहीं करता।',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'विज्ञापन-मुक्त डिज़ाइन\n${appLabel} विज्ञापनों या डेटा-चालित कमाई के बिना काम करने के लिए बनाया गया है।',
			'settings.about.privacy.noDataSelling' => 'कोई डेटा बेचना नहीं\nआपका स्वास्थ्य डेटा कभी तीसरे पक्ष को बेचा या साझा नहीं किया जाता।',
			'settings.about.privacy.localStorage' => 'लोकल-प्रथम स्टोरेज\nआपका डेटा आपके डिवाइस पर ही रहता है।',
			'settings.about.privacy.privacyPolicy' => 'गोपनीयता नीति',
			'settings.about.developer.title' => 'एक सोलो डेवलपर द्वारा बनाया गया',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} एक सिंगल सोलो डेवलपर द्वारा बनाया और मेंटेन किया जाता है, जो शांत, गोपनीयता-सम्मानित हेल्थ सॉफ्टवेयर बनाने पर केंद्रित है।\n\nफीडबैक व्यक्तिगत रूप से पढ़ा जाता है और ऐप की दिशा तय करने में मदद करता है।',
			'settings.about.developer.website' => 'वेबसाइट',
			'settings.about.developer.email' => 'ईमेल',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel} पसंद आ रहा है?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'आपका फीडबैक ${appLabel} को सभी के लिए बेहतर बनाने में मदद करता है।',
			'settings.about.feedback.rateApp' => 'प्ले स्टोर पर रेट करें',
			'settings.about.feedback.sendFeedback' => 'फीडबैक भेजें',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'बिल्ड ${buildNumber}',
			'reminders.title' => 'रिमाइंडर के साथ ट्रैक पर रहें',
			'reminders.description' => 'अपने भोजन को लॉग करने और पोषण लक्ष्यों के साथ निरंतर बने रहने के लिए कोमल रिमाइंडर प्राप्त करें',
			'reminders.notificationsEnabled' => 'सूचनाएं सक्षम',
			'reminders.notificationsDisabled' => 'सूचनाएं अक्षम',
			'reminders.enabledSubtitle' => 'आपको भोजन रिमाइंडर मिलेंगे',
			'reminders.disabledSubtitle' => 'भोजन रिमाइंडर पाने के लिए सूचनाएं सक्षम करें',
			'reminders.mealReminders' => 'भोजन रिमाइंडर',
			'reminders.breakfast' => 'नाश्ता',
			'reminders.lunch' => 'दोपहर का भोजन',
			'reminders.dinner' => 'रात का खाना',
			'reminders.snack' => 'स्नैक',
			'reminders.unknown' => 'अज्ञात',
			'reminders.change' => 'बदलें',
			'reminders.enableNotifications' => 'सूचनाएं सक्षम करें',
			'reminders.skipForNow' => 'फिलहाल छोड़ें',
			'reminders.saveChanges' => 'परिवर्तन सहेजें',
			'reminders.enabledSuccessfully' => 'सूचनाएं सफलतापूर्वक सक्षम की गईं!',
			'reminders.permissionDenied' => 'सूचना अनुमति अस्वीकृत',
			'reminders.errorEnabling' => ({required Object error}) => 'सूचनाएं सक्षम करते समय त्रुटि: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'सेटअप पूरा करते समय त्रुटि: ${error}',
			'notifications.breakfast.title' => 'नाश्ते का समय! 🍳',
			'notifications.breakfast.body' => 'अपना नाश्ता लॉग करना न भूलें',
			'notifications.lunch.title' => 'लंच का समय! 🥗',
			'notifications.lunch.body' => 'अपना लंच लॉग करने का समय',
			'notifications.dinner.title' => 'डिनर का समय! 🍽️',
			'notifications.dinner.body' => 'अपना डिनर लॉग करना न भूलें',
			'notifications.snack.title' => 'स्नैक टाइम! 🍎',
			'notifications.snack.body' => 'एक हेल्दी स्नैक का समय',
			'notifications.test.title' => 'परीक्षण अधिसूचना',
			'login.title' => 'लॉगिन',
			'login.signInWithGoogle' => 'Google से साइन इन करें',
			'login.signInFailed' => 'Google साइन-इन विफल रहा या रद्द कर दिया गया।',
			'disclaimer.pleaseNote' => 'कृपया ध्यान दें',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} अनुमानित पोषण जानकारी प्रदान करता है। सटीकता आपके इनपुट और भोजन के बदलावों पर निर्भर करती है। इसे मार्गदर्शन के रूप में उपयोग करें, अंतिम स्रोत के रूप में नहीं। व्यक्तिगत आहार सलाह के लिए किसी पेशेवर से परामर्श लें।',
			'disclaimer.snap.portionSize.title' => 'पोर्टियन साइज़',
			'disclaimer.snap.portionSize.description' => 'अनुमानों की सटीकता आपके द्वारा निर्धारित पोर्टियन साइज़ की शुद्धता पर काफी निर्भर करती है।',
			'disclaimer.snap.preparationMethods.title' => 'तैयारी के तरीके',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'कुकिंग तरीके भोजन के पोषण को काफी बदल सकते हैं। ${appLabel} के अनुमान हमेशा इन भिन्नताओं का हिसाब नहीं कर पाते।',
			'disclaimer.snap.ingredients.title' => 'सामग्री',
			'disclaimer.snap.ingredients.description' => 'कई छिपी सामग्रियों वाले जटिल व्यंजन कम सटीक अनुमानों का कारण बन सकते हैं।',
			'disclaimer.snap.databaseLimitations.title' => 'डेटाबेस सीमाएं',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} का फूड डेटाबेस व्यापक है, लेकिन इसमें हर एक भोजन आइटम या वैरिएशन शामिल होना जरूरी नहीं।',
			'disclaimer.weightEstimate.title' => 'वजन अनुमान के बारे में',
			'disclaimer.weightEstimate.description' => 'प्रोजेक्टेड वजन परिवर्तन एक सैद्धांतिक अनुमान है जो सरल कैलोरी-इन बनाम कैलोरी-आउट मॉडल पर आधारित है। यह केवल प्रेरक मार्गदर्शन के लिए है, आपके वास्तविक वजन की भविष्यवाणी के रूप में नहीं।',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'कैलोरी सटीकता',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'यह अनुमान आपके द्वारा ट्रैक किए गए कैलोरी सेवन और खर्च की सटीकता जितना ही सटीक है। गलत लॉगिंग गलत प्रोजेक्शन देगी।',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'जैविक कारक',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'वास्तविक वजन घटाव/बढ़ाव मेटाबोलिज्म, हार्मोन, नींद, तनाव, हाइड्रेशन, और अन्य व्यक्तिगत कारकों से प्रभावित होता है जिसे ${appLabel} माप नहीं सकता।',
			'disclaimer.weightEstimate.waterWeight.title' => 'जल वजन और उतार-चढ़ाव',
			'disclaimer.weightEstimate.waterWeight.description' => 'सामान्य दैनिक वजन जल प्रतिधारण, पाचन, और समय के कारण काफी उतार-चढ़ाव कर सकता है। यह अनुमान इन दैनिक परिवर्तनों का हिसाब नहीं रखता।',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'पेशेवर मार्गदर्शन',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'कृपया किसी चिकित्सीय निर्णय के लिए इस अनुमान का उपयोग न करें। व्यक्तिगत वजन प्रबंधन सलाह के लिए हमेशा किसी स्वास्थ्य पेशेवर या पंजीकृत डायटीशियन से परामर्श लें।',
			'disclaimer.healthMetrics.description' => 'ये मीट्रिक आपको आपके शरीर की ऊर्जा आवश्यकताओं को समझने और आपके पोषण लक्ष्यों का मार्गदर्शन करने में मदद करते हैं।',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'बेसल मेटाबोलिक रेट (BMR) वह कैलोरी होती है जो आपका शरीर आराम की अवस्था में, सांस लेने और रक्त संचार जैसे बुनियादी कार्यों को बनाए रखने के लिए जलाता है। BMR आपकी उम्र, लिंग, ऊंचाई और वजन पर निर्भर करता है। उच्च BMR का मतलब है कि आपका शरीर स्वाभाविक रूप से अधिक कैलोरी जलाता है, जो अक्सर अधिक मांसपेशियों, कम उम्र, या पुरुष होने के कारण होता है। कम BMR आमतौर पर कम मांसपेशियों, अधिक उम्र, या महिला होने को दर्शाता है।',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'टोटल डेली एनर्जी एक्सपेंडिचर (TDEE) वह कुल कैलोरी है जो आप एक दिन में जलाते हैं, जिसमें आपका BMR तथा शारीरिक गतिविधि और दैनिक मूवमेंट से जली कैलोरी शामिल हैं। TDEE आपके BMR और गतिविधि स्तर पर निर्भर करता है। उच्च TDEE का मतलब आप कुल मिलाकर अधिक कैलोरी जलाते हैं, आमतौर पर अधिक सक्रिय होने या उच्च BMR के कारण। कम TDEE कम दैनिक गतिविधि या कम BMR का संकेत देता है।',
			'disclaimer.healthMetrics.dailyGoal.title' => 'दैनिक लक्ष्य',
			'disclaimer.healthMetrics.dailyGoal.description' => 'दैनिक लक्ष्य आपका अनुशंसित दैनिक कैलोरी सेवन है जो आपके TDEE और वजन लक्ष्य पर आधारित है। वजन घटाने के लिए, आप TDEE से कम कैलोरी लेते हैं। वजन बनाए रखने के लिए, आप TDEE के बराबर लेते हैं। वजन बढ़ाने के लिए, आप TDEE से अधिक लेते हैं। यह आपको स्वस्थ गति से अपने वांछित वजन परिवर्तन को प्राप्त करने में मदद करता है।',
			'disclaimer.calorieExpenditure.title' => 'कैलोरी खर्च अनुमान',
			'disclaimer.calorieExpenditure.description' => 'जब Health Connect डेटा उपलब्ध नहीं होता, तो हम आज की जली कैलोरी का अनुमान आपके बेसल मेटाबोलिक रेट (BMR) और गतिविधि स्तर (TDEE) के आधार पर, बीते हुए दिन के हिस्से के अनुसार स्केल करके लगाते हैं।',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'अनुमान कैसे लगाया जाता है',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'हम आपके प्रोफाइल के आधार पर TDEE की गणना करते हैं और इसे अब तक बीते दिन के अंश (घंटे + मिनट) / 24 से गुणा करते हैं ताकि अभी तक जली कैलोरी का अनुमान लगाया जा सके।',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'पेशेवर मार्गदर्शन',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'कृपया किसी चिकित्सीय निर्णय के लिए इस अनुमान का उपयोग न करें। व्यक्तिगत वजन प्रबंधन सलाह के लिए हमेशा किसी स्वास्थ्य पेशेवर या पंजीकृत डायटीशियन से परामर्श लें।',
			'common.close' => 'बंद करें',
			'common.kContinue' => 'जारी रखें',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel} पसंद आ रहा है?',
			'feedbackRating.yes' => 'हाँ, मुझे पसंद आ रहा है',
			'feedbackRating.no' => 'ज़्यादा नहीं',
			'feedbackRating.rateStepHeading' => 'प्ले स्टोर पर रेट करें',
			'feedbackRating.emailStepHeading' => 'ईमेल से फीडबैक भेजें',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'एक त्वरित रेटिंग दूसरों को ${appLabel} खोजने में मदद करती है और विकास जारी रखती है। क्या आप एक क्षण निकालकर रेटिंग देंगे?',
			'feedbackRating.shareFeedbackViaEmail' => 'आपकी प्रतिक्रिया अगला कदम तय करती है — हम हर संदेश पढ़ते हैं। क्या आप ईमेल से अपने विचार साझा करना चाहेंगे?',
			'feedbackRating.rateCta' => 'प्ले स्टोर पर रेट करें',
			'feedbackRating.maybeLater' => 'शायद बाद में',
			'feedbackRating.sendFeedback' => 'फीडबैक भेजें',
			'feedbackRating.noThanks' => 'नहीं, धन्यवाद',
			'feedbackRating.aboutUsDescription' => 'एक छोटी टीम द्वारा देखभाल के साथ बनाया गया। हम गोपनीयता, सादगी, और बेहतर खान-पान की आदतें बनाने में आपकी मदद पर केंद्रित हैं।',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'जानना चाहते हैं कि ${appLabel} के पीछे कौन है? देखें ',
			'feedbackRating.aboutUsLinkLabel' => 'हमारे बारे में',
			'feedbackRating.thankYouMessage' => 'धन्यवाद! हम आपसे फिर किसी और समय पूछेंगे।',
			'health.syncFailed' => 'Health Connect के साथ सिंक नहीं हो सका',
			'health.mealSynced' => 'भोजन Health Connect के साथ सिंक हो गया',
			_ => null,
		};
	}
}
