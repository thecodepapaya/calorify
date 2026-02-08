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
	@override late final _TranslationsErrorsHi errors = _TranslationsErrorsHi._(_root);
	@override late final _TranslationsDebugHi debug = _TranslationsDebugHi._(_root);
	@override late final _TranslationsHealthHi health = _TranslationsHealthHi._(_root);
}

// Path: onboarding
class _TranslationsOnboardingHi implements TranslationsOnboardingEn {
	_TranslationsOnboardingHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} में आपका स्वागत है';
	@override String get subtitle => 'AI द्वारा समर्थित आपका व्यक्तिगत पोषण साथी';
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
	@override String get noMeals => 'कोई भोजन रिकॉर्ड नहीं है';
	@override String get emptyMessage => 'यहां अपने पिछले भोजन की तस्वीर लें।';
	@override String get today => 'आज';
	@override String get yesterday => 'कल';
}

// Path: meal
class _TranslationsMealHi implements TranslationsMealEn {
	_TranslationsMealHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'हे भगवान!';
	@override String get delete => 'हटाएं';
	@override String get editMeal => 'भोजन संपादित करें';
	@override String get addMeal => 'भोजन जोड़ें';
	@override String get saveMeal => 'भोजन सहेजें';
	@override String get save => 'सहेजें';
	@override String get mealName => 'भोजन का नाम';
	@override String get mealNameHint => 'उदा., अंडे की भुर्ज़ा और टोस्ट';
	@override String get mealQuantity => 'भोजन की मात्रा';
	@override String get mealQuantityHint => 'जैसे, 1 बाउल, 2 स्लाइस';
	@override String get timeOfMeal => 'भोजन का समय';
	@override String get timeOfMealHint => 'चुनें जब आपने भोजन किया';
	@override String get mealType => 'भोजन का प्रकार';
	@override late final _TranslationsMealNutritionHi nutrition = _TranslationsMealNutritionHi._(_root);
	@override late final _TranslationsMealDeleteConfirmationHi deleteConfirmation = _TranslationsMealDeleteConfirmationHi._(_root);
	@override String get addedToLog => 'भोजन को आपके लॉग में जोड़ा गया!';
	@override String couldNotAdd({required Object error}) => 'भोजन जोड़ने में असफल: ${error}';
	@override String get savedSuccessfully => 'भोजन सफलतापूर्वक जोड़ा गया!';
	@override String get updatedSuccessfully => 'भोजन सफलतापूर्वक अपडेट किया गया!';
	@override String errorSaving({required Object error}) => 'भोजन सहेजने में त्रुटि: ${error}';
	@override String get removedFromFavorites => 'पसंदीदा से हटा दिया गया!';
	@override String get savedAsFavorite => 'भोजन को पसंदीदा के रूप में सहेजा गया!';
	@override String couldNotUpdateFavorite({required Object error}) => 'पसंदीदा को अपडेट करने में असफल: ${error}';
	@override String failedToProcess({required Object error}) => 'प्रक्रिया में विफल: ${error}';
	@override String failedToProcessImage({required Object error}) => 'चित्र को संसाधित करने में विफल: ${error}';
	@override String errorCompressingImage({required Object error}) => 'छवि संकुचन में त्रुटि: ${error}';
	@override String get failedToSave => 'डाटा सहेजने में विफल। कृपया फिर से प्रयास करें।';
	@override String get skip => 'छोड़ें';
	@override late final _TranslationsMealVariationHi variation = _TranslationsMealVariationHi._(_root);
}

// Path: favorites
class _TranslationsFavoritesHi implements TranslationsFavoritesEn {
	_TranslationsFavoritesHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पसंदीदा';
	@override String get empty => 'अभी तक कोई पसंदीदा भोजन नहीं।';
}

// Path: profile
class _TranslationsProfileHi implements TranslationsProfileEn {
	_TranslationsProfileHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफ़ाइल';
	@override String get noProfileData => 'कोई प्रोफ़ाइल डेटा नहीं मिला';
	@override String get yourProfile => 'आपकी प्रोफ़ाइल';
	@override String get viewAndManage => 'अपने स्वास्थ्य की जानकारी देखें और प्रबंधित करें';
	@override late final _TranslationsProfileSectionsHi sections = _TranslationsProfileSectionsHi._(_root);
	@override String get gender => 'लिंग';
	@override String get height => 'ऊँचाई';
	@override String get weight => 'वजन';
	@override String get age => 'उम्र';
	@override String get weightGoal => 'वजन लक्ष्य';
	@override String get targetWeight => 'लक्ष्य वजन';
	@override String get activityLevel => 'गतिविधि स्तर';
	@override String get healthMetrics => 'स्वास्थ्य मैट्रिक्स';
	@override String get notSet => 'अन्यथा सेट नहीं किया गया';
	@override String get years => 'साल';
	@override String get updatedSuccessfully => 'प्रोफ़ाइल सफलतापूर्वक अपडेट की गई!';
	@override late final _TranslationsProfileCalculatedValuesHi calculatedValues = _TranslationsProfileCalculatedValuesHi._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreHi implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्वास्थ्य स्कोर';
	@override String get whyThisScore => 'यह स्कोर क्यों?';
	@override String get note => 'यह स्कोर पहचाने गए सामग्री और पोषण घनत्व पर आधारित AI अनुमान है। हमेशा आहार सलाह के लिए एक पेशेवर से संपर्क करें।';
	@override String get unhealthy => 'अस्वस्थ';
	@override String get healthy => 'स्वस्थ';
	@override String get neutral => 'तटस्थ';
}

// Path: editProfile
class _TranslationsEditProfileHi implements TranslationsEditProfileEn {
	_TranslationsEditProfileHi._(this._root);

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
	@override String get metric => 'मीट्रिक';
	@override String get imperial => 'इम्पीरियल';
	@override String get metricCm => 'मीट्रिक (सेमी)';
	@override String get imperialFtIn => 'इम्पीरियल (फुट/इंच)';
	@override String get metricKg => 'मीट्रिक (किलो)';
	@override String get imperialLbs => 'इम्पीरियल (पाउंड)';
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
	@override late final _TranslationsSettingsClearAllDataHi clearAllData = _TranslationsSettingsClearAllDataHi._(_root);
	@override late final _TranslationsSettingsDebugOptionsHi debugOptions = _TranslationsSettingsDebugOptionsHi._(_root);
	@override String get developerModeEnabled => 'डेवलपर मोड सक्षम किया गया है!';
	@override late final _TranslationsSettingsHealthConnectHi healthConnect = _TranslationsSettingsHealthConnectHi._(_root);
	@override late final _TranslationsSettingsAboutHi about = _TranslationsSettingsAboutHi._(_root);
	@override late final _TranslationsSettingsAppInfoHi appInfo = _TranslationsSettingsAppInfoHi._(_root);
}

// Path: reminders
class _TranslationsRemindersHi implements TranslationsRemindersEn {
	_TranslationsRemindersHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अनुस्मारक के साथ ट्रैक पर रहें';
	@override String get description => 'अपने भोजन का लॉग बनाने और अपने पोषण लक्ष्यों के प्रति स्थिर रहने के लिए स्वच्छ अनुस्मारक प्राप्त करें';
	@override String get notificationsEnabled => 'सूचनाएँ सक्षम हैं';
	@override String get notificationsDisabled => 'सूचनाएँ असक्षम हैं';
	@override String get enabledSubtitle => 'आपको भोजन अनुस्मारक प्राप्त होंगे';
	@override String get disabledSubtitle => 'भोजन अनुस्मारक पाने के लिए सूचनाएं सक्रिय करें';
	@override String get mealReminders => 'भोजन अनुस्मारक';
	@override String get breakfast => 'नाश्ता';
	@override String get lunch => 'दोपहर का भोजन';
	@override String get dinner => 'रात्रि भोजन';
	@override String get snack => 'नाश्ता';
	@override String get unknown => 'अज्ञात';
	@override String get change => 'बदलें';
	@override String get enableNotifications => 'सूचनाएँ सक्षम करें';
	@override String get skipForNow => 'अभी छोड़ें';
	@override String get saveChanges => 'परिवर्तनों को सहेजें';
	@override String get enabledSuccessfully => 'सूचनाएँ सफलतापूर्वक सक्षम की गईं!';
	@override String get permissionDenied => 'सूचना अनुमति अस्वीकृत';
	@override String errorEnabling({required Object error}) => 'सूचनाओं को सक्षम करने में त्रुटि: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'सेटअप पूरा करने में त्रुटि: ${error}';
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
	@override String get title => 'लॉगिन करें';
	@override String get signInWithGoogle => 'Google के साथ साइन इन करें';
	@override String get signInFailed => 'Google Sign-In असफल हुआ या रद्द कर दिया गया।';
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
	@override String enjoyingQuestion({required Object appLabel}) => 'क्या आप ${appLabel} का आनंद ले रहे हैं? आपका अनुभव हमारे लिए महत्वपूर्ण है।';
	@override String get yes => 'हाँ, मुझे यह पसंद आ रहा है';
	@override String get no => 'ज़्यादा नहीं';
	@override String soloDevMessage({required Object appLabel}) => '${appLabel} एक व्यक्ति द्वारा विकसित किया गया है। एक छोटी सी Play Store रेटिंग दूसरों को इसे खोजने में मदद करती है और विकास जारी रखने में सहायक होती है — यह वास्तव में मदद करता है। क्या आप एक मिनट लेकर रेटिंग छोड़ सकते हैं?';
	@override String shareFeedbackViaEmail({required Object appLabel}) => '${appLabel} एक व्यक्ति द्वारा बनाया गया है। आपकी प्रतिक्रिया वाकई यह तय करती है कि आगे क्या आएगा — और हम हर संदेश पढ़ते हैं। क्या आप ईमेल के जरिए अपनी राय साझा करना चाहेंगे?';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'जानना चाहेंगे कि ${appLabel} के पीछे कौन है? देखें ';
	@override String get aboutUsLinkLabel => 'हमारे बारे में';
}

// Path: errors
class _TranslationsErrorsHi implements TranslationsErrorsEn {
	_TranslationsErrorsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'प्रोफ़ाइल डेटा लोड करने में त्रुटि';
	@override String get somethingWentWrong => 'कुछ गलत हुआ।';
}

// Path: debug
class _TranslationsDebugHi implements TranslationsDebugEn {
	_TranslationsDebugHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'डिबग विकल्प';
	@override late final _TranslationsDebugSectionsHi sections = _TranslationsDebugSectionsHi._(_root);
	@override String get showActiveNotifications => 'सक्रिय सूचनाएँ दिखाएँ';
	@override String get scheduleTestNotification => 'परीक्षण सूचना निर्धारित करें (10 सेकंड)';
	@override String get triggerBreakfastNotification => 'नाश्ता सूचना ट्रिगर करें';
	@override String get cancelAllNotifications => 'सभी सूचनाएँ रद्द करें';
	@override String get activeNotifications => 'सक्रिय सूचनाएँ';
	@override String get noTitle => 'कोई शीर्षक नहीं';
	@override String get noBody => 'कोई सामग्री नहीं';
	@override String get fetchTodaysSteps => 'आज के कदम प्राप्त करें';
	@override String get fetchTodaysCalories => 'आज की कैलोरी प्राप्त करें';
	@override String get fetchLatestWeight => 'नवीनतम वजन प्राप्त करें';
	@override String get fetchLatestHeight => 'नवीनतम ऊँचाई प्राप्त करें';
	@override String get writeTestWeight => 'परीक्षण वजन (70 किलोग्राम) लिखें';
	@override String get writeTestHeight => 'परीक्षण ऊँचाई (175 सेमी) लिखें';
	@override String get syncLast7Days => 'पिछले 7 दिनों को सिंक करें';
	@override String get sync7DaysTitle => '7-दिन की सिंक';
	@override String get checkCurrentLocale => 'वर्तमान लोकल देखें';
	@override String get currentLocale => 'वर्तमान लोकल';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'भाषा: ${languageCode}\nदेश: ${countryCode}\nइकाई प्रणाली: ${unitSystem}';
	@override String get latestWeight => 'नवीनतम वजन';
	@override String get latestHeight => 'नवीनतम ऊँचाई';
	@override String get todaysCalories => 'आज की कैलोरी';
	@override String totalCaloriesBurned({required Object calories}) => 'कुल कैलोरी जल गई: ${calories}';
	@override String syncSuccess({required Object count}) => 'पिछले 7 दिनों में कदमों, कैलोरी और वजन के लिए ${count} डेटा बिंदुओं को सफलतापूर्वक प्राप्त किया गया।';
	@override String get noWeightData => 'पिछले 30 दिनों में कोई वजन डेटा नहीं मिला।';
	@override String get noHeightData => 'पिछले वर्ष में कोई ऊँचाई डेटा नहीं मिला।';
	@override String get noCalorieData => 'आज के लिए कोई कैलोरी डेटा नहीं मिला।';
	@override String get weightWritten => 'सफलतापूर्वक परीक्षण वजन (70 किलोग्राम) लिखा गया।';
	@override String get weightWriteFailed => 'परीक्षण वजन लिखने में विफल।';
	@override String get heightWritten => 'सफलतापूर्वक परीक्षण ऊँचाई (175 सेमी) लिखी गई।';
	@override String get heightWriteFailed => 'परीक्षण ऊँचाई लिखने में विफल।';
	@override String get noNotifications => 'कोई सक्रिय सूचनाएँ नहीं।';
	@override String get testNotificationScheduled => 'परीक्षण सूचना 10 सेकंड बाद निर्धारित की गई है।';
	@override String get testNotificationBody => 'यह 10 सेकंड बाद निर्धारित की गई परीक्षण सूचना है।';
	@override String get breakfastNotificationTriggered => 'नाश्ते की सूचना ट्रिगर की गई।';
	@override String get allNotificationsCancelled => 'सभी सूचनाएँ रद्द कर दी गई हैं।';
	@override String get fetchingData => 'पिछले 7 दिनों के लिए डेटा प्राप्त कर रहे हैं...';
	@override String id({required Object id}) => 'ID: ${id}';
	@override String get showFeedbackRatingSheet => 'प्रतिक्रिया / रेटिंग शीट दिखाएँ';
	@override String get clearUserPreferences => 'उपयोगकर्ता प्राथमिकताएँ साफ़ करें';
	@override String get clearUserPreferencesConfirmationTitle => 'उपयोगकर्ता प्राथमिकताएँ साफ़ करें?';
	@override String get clearUserPreferencesConfirmationMessage => 'थीम, भाषा और फीडबैक की प्राथमिकताएँ रीसेट हो जाएँगी। भोजन और प्रोफ़ाइल प्रभावित नहीं होंगे।';
	@override String get clearUserProfile => 'उपयोगकर्ता प्रोफ़ाइल साफ़ करें';
	@override String get clearUserProfileConfirmationTitle => 'उपयोगकर्ता प्रोफ़ाइल साफ़ करें?';
	@override String get clearUserProfileConfirmationMessage => 'आपके प्रोफ़ाइल डेटा (दैनिक लक्ष्य, ऊँचाई, वजन, आदि) मिटा दिए जाएंगे। भोजन और प्राथमिकताएँ प्रभावित नहीं होंगी।';
	@override String get clear => 'साफ़ करें';
	@override String get cancel => 'रद्द करें';
}

// Path: health
class _TranslationsHealthHi implements TranslationsHealthEn {
	_TranslationsHealthHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect से सिंक नहीं हो पाया';
	@override String get mealSynced => 'भोजन Health Connect के साथ सिंक किया गया';
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
	@override String get description => 'लिंग हमें आपके बुनियादी चयापचय दर (BMR) की सटीक गणना करने में मदद करता है।';
	@override String get next => 'आगे';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightHi implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपकी ऊँचाई क्या है?';
	@override String get description => 'आपकी ऊँचाई हमें आपके BMI और ऊर्जा की जरूरतों की सटीक गणना करने में मदद करती है।';
	@override String get metric => ' मीट्रिक';
	@override String get imperial => 'इम्पीरियल';
	@override String get next => 'आगे';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightHi implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'आपका वर्तमान वजन क्या है?';
	@override String get currentDescription => 'आपका वर्तमान वजन आपके दैनिक लक्ष्यों को व्यक्तिगत करने के लिए आवश्यक है।';
	@override String get targetTitle => 'आपका लक्ष्य वजन क्या है?';
	@override String get targetDescription => 'एक लक्ष्य वजन निर्धारित करने से हमें आपकी दीर्घकालिक योजना तय करने में मदद मिलती है।';
	@override String get metric => 'मीट्रिक';
	@override String get imperial => 'इम्पीरियल';
	@override String get next => 'आगे';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeHi implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपकी जन्मतिथि कब है?';
	@override String get description => 'आपकी उम्र हमें आपके कैलोरी की जरूरतों की सटीक गणना करने में मदद करती है।';
	@override String get next => 'आगे';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleHi implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'अल्पवज़न';
	@override String get healthy => 'स्वस्थ';
	@override String get overweight => 'अधिक वजन';
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
	@override String get description => 'उस लक्ष्य का चयन करें जो सबसे अच्छी तरह से यह वर्णन करता है कि आप क्या हासिल करना चाहते हैं';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelHi implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आप कितने सक्रिय हैं?';
	@override String get description => 'यह हमें आपकी दैनिक कैलोरी की जरूरतों की अधिक सही गणना करने में मदद करता है';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectHi implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect से कनेक्ट करें';
	@override String get description => 'बेहतर अंतर्दृष्टियों और स्वचालित कैलोरी ट्रैकिंग के लिए अपने स्वास्थ्य डेटा को सिंक करें';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingHi automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingHi._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsHi progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsHi._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationHi seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationHi._(_root);
	@override String get connected => 'Health Connect जुड़ा हुआ है';
	@override String get notConnected => 'Health Connect जुड़ा नहीं है';
	@override String get setup => 'Health Connect सेट करें';
	@override String get skipForNow => 'अभी छोड़ें';
	@override String get statusConnected => 'Health Connect जुड़ गया है।';
	@override String get statusSuccess => 'Health Connect सफलतापूर्वक जुड़ गया है!';
	@override String statusPermissionDenied({required Object appLabel}) => 'अनुमति अस्वीकृत। कृपया अपने फोन की सेटिंग्स से ${appLabel} के लिए स्वास्थ्य संयोजन अनुमतियाँ सक्षम करें।';
	@override String statusError({required Object error}) => 'Health Connect सेट करने में त्रुटि: ${error}';
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

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalHi implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अपना दैनिक लक्ष्य सेट करें';
	@override String get titleSet => 'आपका दैनिक लक्ष्य';
	@override String get description => 'क्या आप अपने स्वास्थ्य यात्रा पर निकलने के लिए तैयार हैं? नीचे अपना दैनिक कैलोरी लक्ष्य सेट करें ताकि आपको अपनी प्रगति शुरू हो सके।';
	@override String get descriptionSet => 'आपका दिशा-निर्देशक सेट हो गया है! यह आपका दैनिक कैलोरी लक्ष्य है जो आपको मार्गदर्शन करेगा।';
	@override String get yourGoal => 'आपका लक्ष्य';
	@override String get dailyCalories => 'दैनिक कैलोरी (kcal)';
	@override String get setGoal => 'लक्ष्य सेट करें';
	@override String get intake => 'इंटेक';
	@override String get burned => 'जलाई गई';
	@override String get weightImpact => 'वजन प्रभाव';
	@override String get estLoss => 'अनुमानित कमी';
	@override String get estGain => 'अनुमानित बढ़त';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryHi implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'दैनिक सारांश';
	@override String get calories => 'कैलोरी';
	@override String get carbs => 'कार्बोहाइड्रेट';
	@override String get protein => 'प्रोटीन';
	@override String get fat => 'वसा';
	@override String get fiber => 'फाइबर';
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
	@override String get noHistoryYet => 'कोई इतिहास नहीं है';
	@override String get startLogging => 'अपने भोजन को लॉग करना शुरू करें ताकि आप यहां अपने 7-दिन के मैक्रो रुझान देख सकें।';
}

// Path: home.mealLog
class _TranslationsHomeMealLogHi implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'लॉग की गई भोजन';
	@override String get emptyMessage => 'यहां अपने पिछले भोजन की तस्वीर लें।';
	@override String get noMealsToday => 'आज के लिए कोई भोजन रिकॉर्ड नहीं है';
	@override String get seeAllMeals => 'सभी भोजन देखें';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionHi implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI के साथ त्वरित जोड़';
	@override String get description => 'अपने भोजन का वर्णन करें, और AI को विवरण संभालने दें।';
	@override String get hint => 'जैसे, नाश्ते में मैंने बड़े बाउल में ओटमील और एक केले के टुकड़े के साथ एक स्कूप प्रोटीन लिया...';
	@override String get analyzeMeal => 'भोजन का विश्लेषण करें';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsHi implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पसंदीदा भोजन';
	@override String get description => 'अपने पसंदीदा भोजन में से एक को जल्दी से जोड़ें।';
	@override String get noFavorites => 'अभी तक कोई पसंदीदा भोजन नहीं।';
	@override String get addFavoriteHint => 'एक भोजन पर स्टार पर क्लिक करें ताकि उसे पसंदीदा के रूप में चिह्नित किया जा सके।';
	@override String get seeAll => 'सभी देखें';
	@override String get add => 'जोड़ें';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapHi implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'फोटो लें और अपने भोजन को ट्रैक करें';
	@override String get description => 'AI विश्लेषण के लिए अपने भोजन की एक तस्वीर लेने के लिए अपने कैमरे का उपयोग करें।';
	@override String get openCamera => 'कैमरा खोलें';
	@override String get gallery => 'गैलरी';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthHi implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect से सिंक करें';
	@override String get description => 'अपने पोषण डेटा को Health Connect के साथ सिंक करें';
	@override String get install => 'स्थापित करें';
	@override String get connect => 'कनेक्ट करें';
}

// Path: meal.nutrition
class _TranslationsMealNutritionHi implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get calories => 'कैलोरी';
	@override String get carbs => 'कार्बोहाइड्रेट (ग्राम)';
	@override String get protein => 'प्रोटीन (ग्राम)';
	@override String get fat => 'वसा (ग्राम)';
	@override String get fiber => 'फाइबर (ग्राम)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationHi implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भोजन हटाएं';
	@override String get message => 'क्या आप वास्तव में इस भोजन प्रविष्टि को हटाना चाहते हैं?';
	@override String get cancel => 'रद्द करें';
	@override String get delete => 'हटाएं';
}

// Path: meal.variation
class _TranslationsMealVariationHi implements TranslationsMealVariationEn {
	_TranslationsMealVariationHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'प्रश्न ${current} में से ${total}';
	@override String get noVariationsAvailable => 'कोई विकल्प उपलब्ध नहीं है';
}

// Path: profile.sections
class _TranslationsProfileSectionsHi implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'प्रोफ़ाइल';
	@override String get basicInformation => 'बुनियादी जानकारी';
	@override String get goalsAndActivity => 'लक्ष्य और सक्रियता';
	@override String get calculatedValues => 'गणना की गई मान';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesHi implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'दैनिक लक्ष्य';
	@override String get calPerDay => 'कैलोरी / दिन';
	@override String get notAvailable => 'उपलब्ध नहीं';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsHi implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'व्यक्तिगत जानकारी';
	@override String get physicalMeasurements => 'शारीरिक माप';
	@override String get goalsAndActivity => 'लक्ष्य और सक्रियता';
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
	@override String get profile => 'प्रोफ़ाइल';
	@override String get localization => 'स्थानीयकरण';
	@override String get notifications => 'सूचनाएँ';
	@override String get healthConnect => 'स्वास्थ्य कनेक्ट';
	@override String get supportAndLegal => 'समर्थन और कानूनी';
	@override String get about => 'के बारे में';
	@override String get dangerZone => 'खतरे का क्षेत्र';
	@override String get developer => 'डेवलपर';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileHi implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफ़ाइल संपादित करें';
	@override String get subtitle => 'अपनी व्यक्तिगत जानकारी अपडेट करें';
}

// Path: settings.language
class _TranslationsSettingsLanguageHi implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भाषा';
	@override String get subtitle => 'अपनी पसंदीदा भाषा चुनें';
	@override String get searchHint => 'भाषाएँ खोजें...';
	@override String get noResults => 'कोई परिणाम नहीं मिला';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitHi implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'ऊँचाई इकाई';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitHi implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'वजन यूनिट';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersHi implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भोजन अनुस्मारक';
	@override String get subtitle => 'समय पर सूचनाओं के साथ ट्रैक पर रहें';
}

// Path: settings.theme
class _TranslationsSettingsThemeHi implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'थीम';
	@override String get light => 'हल्का';
	@override String get dark => 'गहरा';
	@override String get system => 'सिस्टम';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackHi implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रतिक्रिया भेजें';
	@override String subtitle({required Object appLabel}) => '${appLabel} में सुधार करने में मदद करें';
	@override String emailSubject({required Object appLabel}) => '${appLabel} ऐप फीडबैक';
	@override String get emailBodyPrefix => 'कृपया नीचे अपनी प्रतिक्रिया दें:';
	@override String get appVersion => 'ऐप संस्करण';
	@override String get device => 'डिवाइस';
	@override String get osVersion => 'ओएस संस्करण';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataHi implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सारे डेटा मिटाएं';
	@override String get subtitle => 'आपकी सारी जानकारी को स्थायी रूप से हटा दें';
	@override String get confirmationTitle => 'सारे डेटा मिटाने के लिए?';
	@override String get confirmationMessage => 'यह क्रिया पूर्ववत नहीं की जा सकती। आपकी सभी लॉग की गई भोजन, पसंदीदा और प्रोफ़ाइल सेटिंग्स स्थायी रूप से हटा दी जाएंगी।';
	@override String get cancel => 'रद्द करें';
	@override String get clearEverything => 'सब कुछ मिटाएं';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsHi implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'डिबग विकल्प';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectHi implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्वास्थ्य कनेक्ट';
	@override String get subtitle => 'अनुमतियों को देखें और प्रबंधित करें';
	@override late final _TranslationsSettingsHealthConnectUnavailableHi unavailable = _TranslationsSettingsHealthConnectUnavailableHi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsHi permissions = _TranslationsSettingsHealthConnectPermissionsHi._(_root);
	@override String get managePermissions => 'अनुमतियाँ प्रबंधित करें';
	@override String get openSettings => 'स्वास्थ्य कनेक्ट सेटिंग्स खोलें';
	@override String get requestPermissions => 'अनुमतियाँ मांगें';
	@override String get permissionRequestCancelledOrFailed => 'अनुमति अनुरोध रद्द हो गया या विफल रहा। कृपया फिर से प्रयास करें या स्वास्थ्य कनेक्ट सेटिंग्स में मैन्युअली अनुमतियाँ दें।';
	@override String get permissionRequestFailed => 'अनुमतियाँ मांगने में असमर्थ। कृपया फिर से प्रयास करें या स्वास्थ्य कनेक्ट सेटिंग्स में मैन्युअली अनुमतियाँ दें।';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutHi implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'हमारे बारे में';
	@override String get tagline => 'तेज़, मुफ्त, और गोपनीयता-प्रथम कैलोरी जागरूकता';
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
	@override String get body => 'अपने नाश्ते को लॉग करना न भूलें';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchHi implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'दोपहर का भोजन! 🥗';
	@override String get body => 'अपने दोपहर के भोजन को लॉग करने का समय';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerHi implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'रात्रि भोजन का समय! 🍽️';
	@override String get body => 'अपने रात्रि भोजन को लॉग करना न भूलें';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackHi implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'नाश्ते का समय! 🍎';
	@override String get body => 'एक स्वस्थ नाश्ते का समय';
}

// Path: notifications.test
class _TranslationsNotificationsTestHi implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'परीक्षण सूचना';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapHi implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} अनुमानित पोषण संबंधी जानकारी प्रदान करता है। सटीकता आपके इनपुट और खाद्य प्रकारों पर निर्भर करती है। इसे एक मार्गदर्शक के रूप में उपयोग करें, न कि एक निश्चित स्रोत के रूप में। व्यक्तिगत आहार सलाह के लिए पेशेवर से परामर्श करें।';
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
	@override String get description => 'अनुमानित वजन परिवर्तन कैलोरी-इन बनाम कैलोरी-आउट के सरल मॉडल पर आधारित एक सैद्धांतिक अनुमान है। इसका उद्देश्य केवल प्रेरक मार्गदर्शन प्रदान करना है, न कि आपके वास्तविक वजन की भविष्यवाणी करना।';
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
	@override String get description => 'ये मीट्रिक आपके शरीर की ऊर्जा की जरूरतों को समझने में मदद करते हैं और आपके पोषण लक्ष्यों का मार्गदर्शन करते हैं।';
	@override late final _TranslationsDisclaimerHealthMetricsBmrHi bmr = _TranslationsDisclaimerHealthMetricsBmrHi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeHi tdee = _TranslationsDisclaimerHealthMetricsTdeeHi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalHi dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalHi._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsHi implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'सूचनाएँ';
	@override String get healthConnect => 'Health Connect';
	@override String get feedback => 'प्रतिक्रिया';
	@override String get dataReset => 'डेटा रीसेट';
	@override String get appInfo => 'ऐप जानकारी';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionHi implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्मार्ट खाद्य पहचान';
	@override String get description => 'एक फोटो लें और AI को अपने भोजन की पहचान करने दें';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisHi implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI विश्लेषण';
	@override String get description => 'अपने विवरणों से तुरंत पोषण तथ्यों को प्राप्त करें';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationHi implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्वास्थ्य एकीकरण';
	@override String get description => 'बेहतर अंतर्दृष्टियों के लिए Health Connect से जोड़ें';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesHi implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'अल्पवज़न';
	@override String get healthyWeight => 'स्वस्थ वजन';
	@override String get overweight => 'अधिक वजन';
	@override String get obese => 'मोटापा';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesHi implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'हम आपको पोषक-घने भोजन के साथ संतुलित वजन पाने के लिए एक स्वस्थ योजना बनाने में मदद कर सकते हैं।';
	@override String get healthy => 'बढ़िया काम! आप स्वस्थ सीमा में हैं। हम आपकी जीवन शक्ति और ऊर्जा स्तर बनाए रखने में मदद करेंगे।';
	@override String overweight({required Object appLabel}) => '${appLabel} आपके सफर को सरल बनाएगा, AI-संचालित ट्रैकिंग के साथ ताकि आप आराम से अपने लक्ष्य को हासिल कर सकें।';
	@override String get obese => 'हम आपके स्वास्थ्य लक्ष्यों के लिए व्यक्तिगत मार्गदर्शन और स्थायी रणनीतियों के साथ समर्थन करने के लिए यहां हैं।';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingHi implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्वचालित कैलोरी ट्रैकिंग';
	@override String get description => 'अपने फिटनेस ऐप से जलती हुई कैलोरी को ट्रैक करें';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsHi implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रगति अंतर्दृष्टियाँ';
	@override String get description => 'अपने स्वास्थ्य के रुझानों पर विस्तृत अंतर्दृष्टि प्राप्त करें';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationHi implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'संपूर्ण एकीकरण';
	@override String get description => 'अपने पसंदीदा स्वास्थ्य ऐप्स से डेटा सिंक करें';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessHi implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आप अकेले नहीं हैं';
	@override String get genericMessage => 'अध्ययन दर्शाते हैं कि लगातार ट्रैकिंग दीर्घकालिक सफलता का #1 भविष्यवक्ता है।';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'एक ${age} वर्षीय ${gender} के लिए जो ${goal} देख रहा है, लगातार ट्रैकिंग सफलता का #1 भविष्यवक्ता है।';
	@override String closingMessage({required Object appLabel}) => '${appLabel} इसे मैन्युअल रूप से करने से 10 गुना आसान बना देता है।';
	@override String get getStartedTitle => 'शुरू करने के लिए तैयार हैं?';
	@override String get tipPhoto => 'तत्काल विश्लेषण के लिए अपने भोजन की फोटो लें';
	@override String get tipConsistency => 'अर्थपूर्ण प्रगति देखने के लिए लगातार लॉग करें';
	@override String get tipProgress => 'प्रेरित रहने के लिए रोज़ाना अपनी प्रगति को ट्रैक करें';
	@override String get button => 'चलें';
	@override String get defaultGender => 'व्यक्ति';
	@override String get defaultGoal => 'स्वस्थ आप';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileHi implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपकी स्वास्थ्य प्रोफ़ाइल';
	@override String bmiDescription({required Object bmi}) => 'आपकी मेट्रिक्स के आधार पर, आपका BMI ${bmi} है।';
	@override String get finalizeDescription => 'आपके अनुभव को अनुकूलित करने के लिए अपनी प्रोफ़ाइल को अंतिम रूप दें।';
	@override String get goalGain => 'बढ़ाना';
	@override String get goalLose => 'कम करना';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'अपने लक्ष्य तक पहुंचने के लिए, आपको ${direction} ${diff} ${unit} चाहिए।';
	@override String get goalReached => 'आप अपने लक्ष्य वजन पर हैं! हम इसमें मदद करेंगे।';
	@override String get button => 'चलें';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleHi implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'शानदार शुरुआत!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'आपने ${goalText} की ओर पहला कदम बढ़ाया है। चूंकि आप ${activityText} हैं, ${appLabel} आपके लक्ष्यों को आपके जीवनशैली के अनुसार समायोजित करेगा।';
	@override String get personalizedTargets => 'व्यक्तिगत कैलोरी लक्ष्य';
	@override String get aiMealDetection => 'AI-संचालित भोजन पहचान';
	@override String get macroBreakdowns => 'विस्तृत मैक्रो-न्यूट्रिएंट विवरण';
	@override String get button => 'चलें';
	@override String get defaultGoal => 'आपके लक्ष्य';
	@override String get defaultActivity => 'सक्रिय';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightHi implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'वजन कम करना';
	@override String get description => 'वजन घटाने के लिए कैलोरी कमी बनाएं';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightHi implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'वजन बनाए रखें';
	@override String get description => 'अपने वर्तमान वजन को बनाए रखें';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightHi implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'वजन बढ़ाना';
	@override String get description => 'वजन बढ़ाने के लिए कैलोरी अधिशेष बनाएं';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryHi implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'कम सक्रिय';
	@override String get description => 'थोड़ा बहुत भी व्यायाम नहीं';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveHi implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'हल्का सक्रिय';
	@override String get description => 'हल्का व्यायाम 1-3 दिन/सप्ताह';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveHi implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'मध्यम सक्रिय';
	@override String get description => 'मध्यम व्यायाम 3-5 दिन/सप्ताह';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveHi implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'बहुत सक्रिय';
	@override String get description => 'कठोर व्यायाम 6-7 दिन/सप्ताह';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveHi implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'अत्यधिक सक्रिय';
	@override String get description => 'बहुत कठिन व्यायाम, शारीरिक नौकरी';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableHi implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect उपलब्ध नहीं है';
	@override String get description => 'Health Connect इस डिवाइस पर उपलब्ध नहीं है। कृपया Play Store से Health Connect इंस्टॉल करें (Android 9+) या Android 14+ पर अपडेट करें।';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsHi implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अनुमतियाँ';
	@override String get description => 'स्वास्थ्य कनेक्ट एकीकरण प्रदान करने के लिए निम्नलिखित अनुमतियों की आवश्यकता है:';
	@override String get granted => 'अनुमत';
	@override String get notGranted => 'अनुमत नहीं';
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
	@override String content({required Object appLabel}) => '${appLabel} का जन्म एक साधारण निराशा से हुआ: अधिकांश कैलोरी ट्रैकिंग ऐप या तो अत्यधिक जटिल हैं, निरंतर मैनुअल इनपुट की मांग करते हैं, उच्च सदस्यता शुल्क लेते हैं, या गोपनीयता से समझौता करते हैं।\n\nएक स्वतंत्र डेवलपर के रूप में, मैंने कुछ सरल और निष्पक्ष बनाने की इच्छा की — एक ऐसा ऐप जो एआई का उपयोग करके प्रयास को कम करता है, उपयोग में तेज और मुफ्त रहता है, और आपके स्वास्थ्य डेटा का सम्मान करता है।\n\n${appLabel} वह ऐप है जिसकी मुझे अपेक्षा थी: कोई खाते नहीं, कोई ट्रैकिंग नहीं, कोई विज्ञापन नहीं — बस स्पष्ट, व्यावहारिक अंतर्दृष्टियाँ और आपके स्वास्थ्य लक्ष्य।';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyHi implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपकी गोपनीयता महत्वपूर्ण है';
	@override String get description => 'गोपनीयता कोई उप-चिंता नहीं है — यह एक डिज़ाइन सिद्धांत है। इसका अर्थ प्रथा में यह है:';
	@override String get noAccounts => 'कोई खाता आवश्यक नहीं\nतुरंत ऐप का उपयोग करें। कोई साइन-अप नहीं, कोई पहचान नहीं।';
	@override String noTracking({required Object appLabel}) => 'कोई व्यवहार ट्रैकिंग नहीं\n${appLabel} आपकी गतिविधियों की निगरानी नहीं करता, उपयोग प्रोफाइल नहीं बनाता, या आपको ऐप्स या वेबसाइटों में ट्रैक नहीं करता।';
	@override String noAds({required Object appLabel}) => 'डिजाइन द्वारा विज्ञापन-मुक्त\n${appLabel} बिना विज्ञापनों या डेटा-आधारित मुद्रीकरण के काम करने के लिए बनाया गया है।';
	@override String get noDataSelling => 'कोई डेटा बिक्री नहीं\nआपका स्वास्थ्य डेटा कभी भी बेचा या तीसरे पक्ष के साथ साझा नहीं किया जाता।';
	@override String get localStorage => 'स्थानीय-प्रथम भंडारण\nआपका डेटा आपके डिवाइस पर रहता है।';
	@override String get privacyPolicy => 'गोपनीयता नीति';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperHi implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'एक स्वतंत्र डेवलपर द्वारा बनाया गया';
	@override String description({required Object appLabel}) => '${appLabel} एक अकेले स्वतंत्र डेवलपर द्वारा बनाया और बनाए रखा गया है, जो शांत, गोपनीयता-आदर स्वास्थ्य सॉफ़्टवेयर बनाने पर ध्यान केंद्रित करता है।\n\nफीडबैक व्यक्तिगत रूप से पढ़ा जाता है और ऐप की दिशा को आकार देने में मदद करता है।';
	@override String get website => 'वेबसाइट';
	@override String get email => 'ईमेल';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackHi implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'क्या आपको ${appLabel} पसंद आ रहा है?';
	@override String description({required Object appLabel}) => 'आपका फीडबैक ${appLabel} को हर किसी के लिए बेहतर बनाने में मदद करता है।';
	@override String get rateApp => 'प्ले स्टोर पर रेट करें';
	@override String get sendFeedback => 'प्रतिक्रिया भेजें';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeHi implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भाग का आकार';
	@override String get description => 'अनुमानों की सटीकता आपके हिस्से के आकार के सही आकलन पर बहुत अधिक निर्भर करती है।';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsHi implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पकाने के तरीके';
	@override String description({required Object appLabel}) => 'खाने के पकाने के तरीके पोषण संबंधी सामग्री को महत्वपूर्ण रूप से बदल सकते हैं। ${appLabel} के अनुमान हमेशा इन भिन्नताओं पर विचार नहीं कर सकते।';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsHi implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सामग्री';
	@override String get description => 'जटिल व्यंजन जिनमें कई छिपी हुई सामग्री होती हैं उनमें कम सटीकता के अनुमान हो सकते हैं।';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsHi implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'डेटाबेस सीमाएँ';
	@override String description({required Object appLabel}) => '${appLabel} का खाद्य डेटाबेस विस्तृत है लेकिन इसमें प्रत्येक खाद्य पदार्थ या भिन्नता शामिल नहीं हो सकती।';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyHi implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कैलोरी सटीकता';
	@override String get description => 'यह अनुमान केवल आपकी ट्रैक की गई कैलोरी सेवन और व्यय के रूप में सटीक है। गलत लॉगिंग का परिणाम गलत प्रक्षेपण में होगा।';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsHi implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'जीवविज्ञान संबंधी कारक';
	@override String description({required Object appLabel}) => 'वास्तविक वजन घटाने/बढ़ाने पर चयापचय, हार्मोन, नींद, तनाव, जलयोजन और अन्य व्यक्तिगत कारकों का प्रभाव होता है, जिसे ${appLabel} माप नहीं सकता।';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightHi implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'जल का वजन और उतार-चढ़ाव';
	@override String get description => 'सामान्य दैनिक वजन जल संरक्षण, पाचन और समय के कारण महत्वपूर्ण रूप से बदल सकता है। अनुमान इन दैनिक परिवर्तनों को ध्यान में नहीं रखता।';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceHi implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पेशेवर मार्गदर्शन';
	@override String get description => 'इस अनुमान का उपयोग चिकित्सा निर्णय लेने के लिए न करें। हमेशा व्यक्तिगत वजन प्रबंधन सलाह के लिए एक स्वास्थ्य देखभाल पेशेवर या पंजीकृत आहार विशेषज्ञ से परामर्श करें।';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrHi implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'बीएमआर';
	@override String get description => 'आधार चयापचय दर (बीएमआर) वह संख्या है, जो आपके शरीर आराम करते समय बुनियादी फंक्शंस जैसे कि श्वसन और संचार को बनाए रखने के लिए जलती है। बीएमआर आपकी आयु, लिंग, ऊँचाई और वजन पर निर्भर करता है। एक उच्च बीएमआर का मतलब है कि आपका शरीर स्वाभाविक रूप से आराम करते समय अधिक कैलोरी जलाता है, अक्सर अधिक मांसपेशी द्रव्यमान, युवा आयु, या पुरुष होने के कारण। एक निम्न बीएमआर आमतौर पर कम मांसपेशी द्रव्यमान, अधिक आयु, या महिला होने का संकेत देता है।';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeHi implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'टीडीईई';
	@override String get description => 'कुल दैनिक ऊर्जा व्यय (टीडीईई) वह कुल कैलोरी है जो आप प्रति दिन जलाते हैं, जिसमें आपकी बीएमआर और शारीरिक गतिविधि और दैनिक गति से प्राप्त कैलोरी शामिल हैं। टीडीईई आपकी बीएमआर और गतिविधि स्तर पर निर्भर करता है। एक उच्च टीडीईई का मतलब है कि आप कुल मिलाकर अधिक कैलोरी जलाते हैं, आमतौर पर अधिक सक्रिय होने या उच्च बीएमआर होने के कारण। एक निम्न टीडीईई कम दैनिक गतिविधि या निम्न बीएमआर का संकेत देता है।';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalHi implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'दैनिक लक्ष्य';
	@override String get description => 'दैनिक लक्ष्य आपके टीडीईई और वजन लक्ष्य के आधार पर आपकी अनुशंसित दैनिक कैलोरी की मात्रा है। वजन घटाने के लिए, आप अपने टीडीईई से कम कैलोरी का सेवन करते हैं। वजन बनाए रखने के लिए, आप अपने टीडीईई के बराबर खाते हैं। वजन बढ़ाने के लिए, आप अपने टीडीईई से अधिक कैलोरी का सेवन करते हैं। यह आपको एक स्वस्थ गति से आपके इच्छित वजन परिवर्तन को प्राप्त करने में मदद करता है।';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHi implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कुल कैलोरी बर्न पढ़ें';
	@override String get description => 'ऐप को स्वास्थ्य कनेक्ट से आपकी कुल कैलोरी बर्न पढ़ने की अनुमति देता है।';
	@override String get usage => 'यह अनुमति आपको ऐप में आपके दैनिक कैलोरी बर्न को प्रदर्शित करने के लिए उपयोग की जाती है, जिससे आप दिनभर अपनी कुल ऊर्जा व्यय को समझ सकें।';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadHi implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पोषण डेटा पढ़ें';
	@override String get description => 'ऐप को स्वास्थ्य कनेक्ट से पोषण डेटा पढ़ने की अनुमति देता है।';
	@override String get usage => 'यह अनुमति ऐप को स्वास्थ्य कनेक्ट से जुड़े अन्य ऐप्स द्वारा लॉग किए गए पोषण जानकारी को पढ़ने की अनुमति देती है, जिससे आपके पोषण का व्यापक दृश्य प्रदान किया जा सके।';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteHi implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पोषण डेटा लिखें';
	@override String get description => 'ऐप को स्वास्थ्य कनेक्ट में पोषण डेटा लिखने की अनुमति देता है।';
	@override String get usage => 'यह अनुमति ऐप को आपके लॉग किए गए भोजन को स्वास्थ्य कनेक्ट के साथ समन्वयित करने की अनुमति देती है, जिससे आपका पोषण डेटा आप द्वारा उपयोग किए जाने वाले अन्य स्वास्थ्य और फिटनेस ऐप्स के लिए उपलब्ध होता है।';
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
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel} में आपका स्वागत है',
			'onboarding.subtitle' => 'AI द्वारा समर्थित आपका व्यक्तिगत पोषण साथी',
			'onboarding.getStarted' => 'शुरू करें',
			'onboarding.features.foodRecognition.title' => 'स्मार्ट खाद्य पहचान',
			'onboarding.features.foodRecognition.description' => 'एक फोटो लें और AI को अपने भोजन की पहचान करने दें',
			'onboarding.features.aiAnalysis.title' => 'AI विश्लेषण',
			'onboarding.features.aiAnalysis.description' => 'अपने विवरणों से तुरंत पोषण तथ्यों को प्राप्त करें',
			'onboarding.features.healthIntegration.title' => 'स्वास्थ्य एकीकरण',
			'onboarding.features.healthIntegration.description' => 'बेहतर अंतर्दृष्टियों के लिए Health Connect से जोड़ें',
			'onboarding.gender.title' => 'आपका लिंग क्या है?',
			'onboarding.gender.description' => 'लिंग हमें आपके बुनियादी चयापचय दर (BMR) की सटीक गणना करने में मदद करता है।',
			'onboarding.gender.next' => 'आगे',
			'onboarding.height.title' => 'आपकी ऊँचाई क्या है?',
			'onboarding.height.description' => 'आपकी ऊँचाई हमें आपके BMI और ऊर्जा की जरूरतों की सटीक गणना करने में मदद करती है।',
			'onboarding.height.metric' => ' मीट्रिक',
			'onboarding.height.imperial' => 'इम्पीरियल',
			'onboarding.height.next' => 'आगे',
			'onboarding.weight.currentTitle' => 'आपका वर्तमान वजन क्या है?',
			'onboarding.weight.currentDescription' => 'आपका वर्तमान वजन आपके दैनिक लक्ष्यों को व्यक्तिगत करने के लिए आवश्यक है।',
			'onboarding.weight.targetTitle' => 'आपका लक्ष्य वजन क्या है?',
			'onboarding.weight.targetDescription' => 'एक लक्ष्य वजन निर्धारित करने से हमें आपकी दीर्घकालिक योजना तय करने में मदद मिलती है।',
			'onboarding.weight.metric' => 'मीट्रिक',
			'onboarding.weight.imperial' => 'इम्पीरियल',
			'onboarding.weight.next' => 'आगे',
			'onboarding.age.title' => 'आपकी जन्मतिथि कब है?',
			'onboarding.age.description' => 'आपकी उम्र हमें आपके कैलोरी की जरूरतों की सटीक गणना करने में मदद करती है।',
			'onboarding.age.next' => 'आगे',
			'onboarding.bmiScale.underweight' => 'अल्पवज़न',
			'onboarding.bmiScale.healthy' => 'स्वस्थ',
			'onboarding.bmiScale.overweight' => 'अधिक वजन',
			'onboarding.bmiScale.obese' => 'मोटापा',
			'onboarding.bmiScale.categories.underweight' => 'अल्पवज़न',
			'onboarding.bmiScale.categories.healthyWeight' => 'स्वस्थ वजन',
			'onboarding.bmiScale.categories.overweight' => 'अधिक वजन',
			'onboarding.bmiScale.categories.obese' => 'मोटापा',
			'onboarding.bmiScale.messages.underweight' => 'हम आपको पोषक-घने भोजन के साथ संतुलित वजन पाने के लिए एक स्वस्थ योजना बनाने में मदद कर सकते हैं।',
			'onboarding.bmiScale.messages.healthy' => 'बढ़िया काम! आप स्वस्थ सीमा में हैं। हम आपकी जीवन शक्ति और ऊर्जा स्तर बनाए रखने में मदद करेंगे।',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} आपके सफर को सरल बनाएगा, AI-संचालित ट्रैकिंग के साथ ताकि आप आराम से अपने लक्ष्य को हासिल कर सकें।',
			'onboarding.bmiScale.messages.obese' => 'हम आपके स्वास्थ्य लक्ष्यों के लिए व्यक्तिगत मार्गदर्शन और स्थायी रणनीतियों के साथ समर्थन करने के लिए यहां हैं।',
			'onboarding.weightGoal.title' => 'आपका लक्ष्य क्या है?',
			'onboarding.weightGoal.description' => 'उस लक्ष्य का चयन करें जो सबसे अच्छी तरह से यह वर्णन करता है कि आप क्या हासिल करना चाहते हैं',
			'onboarding.activityLevel.title' => 'आप कितने सक्रिय हैं?',
			'onboarding.activityLevel.description' => 'यह हमें आपकी दैनिक कैलोरी की जरूरतों की अधिक सही गणना करने में मदद करता है',
			'onboarding.healthConnect.title' => 'Health Connect से कनेक्ट करें',
			'onboarding.healthConnect.description' => 'बेहतर अंतर्दृष्टियों और स्वचालित कैलोरी ट्रैकिंग के लिए अपने स्वास्थ्य डेटा को सिंक करें',
			'onboarding.healthConnect.automaticTracking.title' => 'स्वचालित कैलोरी ट्रैकिंग',
			'onboarding.healthConnect.automaticTracking.description' => 'अपने फिटनेस ऐप से जलती हुई कैलोरी को ट्रैक करें',
			'onboarding.healthConnect.progressInsights.title' => 'प्रगति अंतर्दृष्टियाँ',
			'onboarding.healthConnect.progressInsights.description' => 'अपने स्वास्थ्य के रुझानों पर विस्तृत अंतर्दृष्टि प्राप्त करें',
			'onboarding.healthConnect.seamlessIntegration.title' => 'संपूर्ण एकीकरण',
			'onboarding.healthConnect.seamlessIntegration.description' => 'अपने पसंदीदा स्वास्थ्य ऐप्स से डेटा सिंक करें',
			'onboarding.healthConnect.connected' => 'Health Connect जुड़ा हुआ है',
			'onboarding.healthConnect.notConnected' => 'Health Connect जुड़ा नहीं है',
			'onboarding.healthConnect.setup' => 'Health Connect सेट करें',
			'onboarding.healthConnect.skipForNow' => 'अभी छोड़ें',
			'onboarding.healthConnect.statusConnected' => 'Health Connect जुड़ गया है।',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect सफलतापूर्वक जुड़ गया है!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'अनुमति अस्वीकृत। कृपया अपने फोन की सेटिंग्स से ${appLabel} के लिए स्वास्थ्य संयोजन अनुमतियाँ सक्षम करें।',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect सेट करने में त्रुटि: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'आप अकेले नहीं हैं',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'अध्ययन दर्शाते हैं कि लगातार ट्रैकिंग दीर्घकालिक सफलता का #1 भविष्यवक्ता है।',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'एक ${age} वर्षीय ${gender} के लिए जो ${goal} देख रहा है, लगातार ट्रैकिंग सफलता का #1 भविष्यवक्ता है।',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} इसे मैन्युअल रूप से करने से 10 गुना आसान बना देता है।',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'शुरू करने के लिए तैयार हैं?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'तत्काल विश्लेषण के लिए अपने भोजन की फोटो लें',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'अर्थपूर्ण प्रगति देखने के लिए लगातार लॉग करें',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'प्रेरित रहने के लिए रोज़ाना अपनी प्रगति को ट्रैक करें',
			'onboarding.reinforcement.trackingSuccess.button' => 'चलें',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'व्यक्ति',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'स्वस्थ आप',
			'onboarding.reinforcement.healthProfile.title' => 'आपकी स्वास्थ्य प्रोफ़ाइल',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'आपकी मेट्रिक्स के आधार पर, आपका BMI ${bmi} है।',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'आपके अनुभव को अनुकूलित करने के लिए अपनी प्रोफ़ाइल को अंतिम रूप दें।',
			'onboarding.reinforcement.healthProfile.goalGain' => 'बढ़ाना',
			'onboarding.reinforcement.healthProfile.goalLose' => 'कम करना',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'अपने लक्ष्य तक पहुंचने के लिए, आपको ${direction} ${diff} ${unit} चाहिए।',
			'onboarding.reinforcement.healthProfile.goalReached' => 'आप अपने लक्ष्य वजन पर हैं! हम इसमें मदद करेंगे।',
			'onboarding.reinforcement.healthProfile.button' => 'चलें',
			'onboarding.reinforcement.goalLifestyle.title' => 'शानदार शुरुआत!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'आपने ${goalText} की ओर पहला कदम बढ़ाया है। चूंकि आप ${activityText} हैं, ${appLabel} आपके लक्ष्यों को आपके जीवनशैली के अनुसार समायोजित करेगा।',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'व्यक्तिगत कैलोरी लक्ष्य',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-संचालित भोजन पहचान',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'विस्तृत मैक्रो-न्यूट्रिएंट विवरण',
			'onboarding.reinforcement.goalLifestyle.button' => 'चलें',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'आपके लक्ष्य',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'सक्रिय',
			'tabs.dashboard' => 'डैशबोर्ड',
			'tabs.history' => 'इतिहास',
			'home.dailyGoal.title' => 'अपना दैनिक लक्ष्य सेट करें',
			'home.dailyGoal.titleSet' => 'आपका दैनिक लक्ष्य',
			'home.dailyGoal.description' => 'क्या आप अपने स्वास्थ्य यात्रा पर निकलने के लिए तैयार हैं? नीचे अपना दैनिक कैलोरी लक्ष्य सेट करें ताकि आपको अपनी प्रगति शुरू हो सके।',
			'home.dailyGoal.descriptionSet' => 'आपका दिशा-निर्देशक सेट हो गया है! यह आपका दैनिक कैलोरी लक्ष्य है जो आपको मार्गदर्शन करेगा।',
			'home.dailyGoal.yourGoal' => 'आपका लक्ष्य',
			'home.dailyGoal.dailyCalories' => 'दैनिक कैलोरी (kcal)',
			'home.dailyGoal.setGoal' => 'लक्ष्य सेट करें',
			'home.dailyGoal.intake' => 'इंटेक',
			'home.dailyGoal.burned' => 'जलाई गई',
			'home.dailyGoal.weightImpact' => 'वजन प्रभाव',
			'home.dailyGoal.estLoss' => 'अनुमानित कमी',
			'home.dailyGoal.estGain' => 'अनुमानित बढ़त',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'दैनिक सारांश',
			'home.dailySummary.calories' => 'कैलोरी',
			'home.dailySummary.carbs' => 'कार्बोहाइड्रेट',
			'home.dailySummary.protein' => 'प्रोटीन',
			'home.dailySummary.fat' => 'वसा',
			'home.dailySummary.fiber' => 'फाइबर',
			'home.intakeProgress.title' => 'आज का मैक्रो विभाजन',
			'home.intakeProgress.target' => 'लक्ष्य',
			'home.intakeProgress.current' => 'वर्तमान',
			'home.intakeHistory.title' => '7-दिन का मैक्रो इतिहास',
			'home.intakeHistory.noHistoryYet' => 'कोई इतिहास नहीं है',
			'home.intakeHistory.startLogging' => 'अपने भोजन को लॉग करना शुरू करें ताकि आप यहां अपने 7-दिन के मैक्रो रुझान देख सकें।',
			'home.mealLog.title' => 'लॉग की गई भोजन',
			'home.mealLog.emptyMessage' => 'यहां अपने पिछले भोजन की तस्वीर लें।',
			'home.mealLog.noMealsToday' => 'आज के लिए कोई भोजन रिकॉर्ड नहीं है',
			'home.mealLog.seeAllMeals' => 'सभी भोजन देखें',
			'home.mealDescription.title' => 'AI के साथ त्वरित जोड़',
			'home.mealDescription.description' => 'अपने भोजन का वर्णन करें, और AI को विवरण संभालने दें।',
			'home.mealDescription.hint' => 'जैसे, नाश्ते में मैंने बड़े बाउल में ओटमील और एक केले के टुकड़े के साथ एक स्कूप प्रोटीन लिया...',
			'home.mealDescription.analyzeMeal' => 'भोजन का विश्लेषण करें',
			'home.favoriteMeals.title' => 'पसंदीदा भोजन',
			'home.favoriteMeals.description' => 'अपने पसंदीदा भोजन में से एक को जल्दी से जोड़ें।',
			'home.favoriteMeals.noFavorites' => 'अभी तक कोई पसंदीदा भोजन नहीं।',
			'home.favoriteMeals.addFavoriteHint' => 'एक भोजन पर स्टार पर क्लिक करें ताकि उसे पसंदीदा के रूप में चिह्नित किया जा सके।',
			'home.favoriteMeals.seeAll' => 'सभी देखें',
			'home.favoriteMeals.add' => 'जोड़ें',
			'home.mealSnap.title' => 'फोटो लें और अपने भोजन को ट्रैक करें',
			'home.mealSnap.description' => 'AI विश्लेषण के लिए अपने भोजन की एक तस्वीर लेने के लिए अपने कैमरे का उपयोग करें।',
			'home.mealSnap.openCamera' => 'कैमरा खोलें',
			'home.mealSnap.gallery' => 'गैलरी',
			'home.connectHealth.title' => 'Health Connect से सिंक करें',
			'home.connectHealth.description' => 'अपने पोषण डेटा को Health Connect के साथ सिंक करें',
			'home.connectHealth.install' => 'स्थापित करें',
			'home.connectHealth.connect' => 'कनेक्ट करें',
			'history.noMeals' => 'कोई भोजन रिकॉर्ड नहीं है',
			'history.emptyMessage' => 'यहां अपने पिछले भोजन की तस्वीर लें।',
			'history.today' => 'आज',
			'history.yesterday' => 'कल',
			'meal.ohNo' => 'हे भगवान!',
			'meal.delete' => 'हटाएं',
			'meal.editMeal' => 'भोजन संपादित करें',
			'meal.addMeal' => 'भोजन जोड़ें',
			'meal.saveMeal' => 'भोजन सहेजें',
			'meal.save' => 'सहेजें',
			'meal.mealName' => 'भोजन का नाम',
			'meal.mealNameHint' => 'उदा., अंडे की भुर्ज़ा और टोस्ट',
			'meal.mealQuantity' => 'भोजन की मात्रा',
			'meal.mealQuantityHint' => 'जैसे, 1 बाउल, 2 स्लाइस',
			'meal.timeOfMeal' => 'भोजन का समय',
			'meal.timeOfMealHint' => 'चुनें जब आपने भोजन किया',
			'meal.mealType' => 'भोजन का प्रकार',
			'meal.nutrition.calories' => 'कैलोरी',
			'meal.nutrition.carbs' => 'कार्बोहाइड्रेट (ग्राम)',
			'meal.nutrition.protein' => 'प्रोटीन (ग्राम)',
			'meal.nutrition.fat' => 'वसा (ग्राम)',
			'meal.nutrition.fiber' => 'फाइबर (ग्राम)',
			'meal.deleteConfirmation.title' => 'भोजन हटाएं',
			'meal.deleteConfirmation.message' => 'क्या आप वास्तव में इस भोजन प्रविष्टि को हटाना चाहते हैं?',
			'meal.deleteConfirmation.cancel' => 'रद्द करें',
			'meal.deleteConfirmation.delete' => 'हटाएं',
			'meal.addedToLog' => 'भोजन को आपके लॉग में जोड़ा गया!',
			'meal.couldNotAdd' => ({required Object error}) => 'भोजन जोड़ने में असफल: ${error}',
			'meal.savedSuccessfully' => 'भोजन सफलतापूर्वक जोड़ा गया!',
			'meal.updatedSuccessfully' => 'भोजन सफलतापूर्वक अपडेट किया गया!',
			'meal.errorSaving' => ({required Object error}) => 'भोजन सहेजने में त्रुटि: ${error}',
			'meal.removedFromFavorites' => 'पसंदीदा से हटा दिया गया!',
			'meal.savedAsFavorite' => 'भोजन को पसंदीदा के रूप में सहेजा गया!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'पसंदीदा को अपडेट करने में असफल: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'प्रक्रिया में विफल: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'चित्र को संसाधित करने में विफल: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'छवि संकुचन में त्रुटि: ${error}',
			'meal.failedToSave' => 'डाटा सहेजने में विफल। कृपया फिर से प्रयास करें।',
			'meal.skip' => 'छोड़ें',
			'meal.variation.question' => ({required Object current, required Object total}) => 'प्रश्न ${current} में से ${total}',
			'meal.variation.noVariationsAvailable' => 'कोई विकल्प उपलब्ध नहीं है',
			'favorites.title' => 'पसंदीदा',
			'favorites.empty' => 'अभी तक कोई पसंदीदा भोजन नहीं।',
			'profile.title' => 'प्रोफ़ाइल',
			'profile.noProfileData' => 'कोई प्रोफ़ाइल डेटा नहीं मिला',
			'profile.yourProfile' => 'आपकी प्रोफ़ाइल',
			'profile.viewAndManage' => 'अपने स्वास्थ्य की जानकारी देखें और प्रबंधित करें',
			'profile.sections.profile' => 'प्रोफ़ाइल',
			'profile.sections.basicInformation' => 'बुनियादी जानकारी',
			'profile.sections.goalsAndActivity' => 'लक्ष्य और सक्रियता',
			'profile.sections.calculatedValues' => 'गणना की गई मान',
			'profile.gender' => 'लिंग',
			'profile.height' => 'ऊँचाई',
			'profile.weight' => 'वजन',
			'profile.age' => 'उम्र',
			'profile.weightGoal' => 'वजन लक्ष्य',
			'profile.targetWeight' => 'लक्ष्य वजन',
			'profile.activityLevel' => 'गतिविधि स्तर',
			'profile.healthMetrics' => 'स्वास्थ्य मैट्रिक्स',
			'profile.notSet' => 'अन्यथा सेट नहीं किया गया',
			'profile.years' => 'साल',
			'profile.updatedSuccessfully' => 'प्रोफ़ाइल सफलतापूर्वक अपडेट की गई!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'दैनिक लक्ष्य',
			'profile.calculatedValues.calPerDay' => 'कैलोरी / दिन',
			'profile.calculatedValues.notAvailable' => 'उपलब्ध नहीं',
			'healthScore.title' => 'स्वास्थ्य स्कोर',
			'healthScore.whyThisScore' => 'यह स्कोर क्यों?',
			'healthScore.note' => 'यह स्कोर पहचाने गए सामग्री और पोषण घनत्व पर आधारित AI अनुमान है। हमेशा आहार सलाह के लिए एक पेशेवर से संपर्क करें।',
			'healthScore.unhealthy' => 'अस्वस्थ',
			'healthScore.healthy' => 'स्वस्थ',
			'healthScore.neutral' => 'तटस्थ',
			'editProfile.title' => 'प्रोफ़ाइल संपादित करें',
			'editProfile.sections.personalInformation' => 'व्यक्तिगत जानकारी',
			'editProfile.sections.physicalMeasurements' => 'शारीरिक माप',
			'editProfile.sections.goalsAndActivity' => 'लक्ष्य और सक्रियता',
			'editProfile.gender' => 'लिंग',
			'editProfile.dateOfBirth' => 'जन्मतिथि',
			'editProfile.height' => 'ऊँचाई',
			'editProfile.weight' => 'वजन',
			'editProfile.weightGoal' => 'वजन लक्ष्य',
			'editProfile.activityLevel' => 'गतिविधि स्तर',
			'editProfile.metric' => 'मीट्रिक',
			'editProfile.imperial' => 'इम्पीरियल',
			'editProfile.metricCm' => 'मीट्रिक (सेमी)',
			'editProfile.imperialFtIn' => 'इम्पीरियल (फुट/इंच)',
			'editProfile.metricKg' => 'मीट्रिक (किलो)',
			'editProfile.imperialLbs' => 'इम्पीरियल (पाउंड)',
			'editProfile.genders.male' => 'पुरुष',
			'editProfile.genders.female' => 'महिला',
			'editProfile.genders.other' => 'अन्य',
			'editProfile.weightGoals.loseWeight.name' => 'वजन कम करना',
			'editProfile.weightGoals.loseWeight.description' => 'वजन घटाने के लिए कैलोरी कमी बनाएं',
			'editProfile.weightGoals.maintainWeight.name' => 'वजन बनाए रखें',
			'editProfile.weightGoals.maintainWeight.description' => 'अपने वर्तमान वजन को बनाए रखें',
			'editProfile.weightGoals.gainWeight.name' => 'वजन बढ़ाना',
			'editProfile.weightGoals.gainWeight.description' => 'वजन बढ़ाने के लिए कैलोरी अधिशेष बनाएं',
			'editProfile.activityLevels.sedentary.name' => 'कम सक्रिय',
			'editProfile.activityLevels.sedentary.description' => 'थोड़ा बहुत भी व्यायाम नहीं',
			'editProfile.activityLevels.lightlyActive.name' => 'हल्का सक्रिय',
			'editProfile.activityLevels.lightlyActive.description' => 'हल्का व्यायाम 1-3 दिन/सप्ताह',
			'editProfile.activityLevels.moderatelyActive.name' => 'मध्यम सक्रिय',
			'editProfile.activityLevels.moderatelyActive.description' => 'मध्यम व्यायाम 3-5 दिन/सप्ताह',
			'editProfile.activityLevels.veryActive.name' => 'बहुत सक्रिय',
			'editProfile.activityLevels.veryActive.description' => 'कठोर व्यायाम 6-7 दिन/सप्ताह',
			'editProfile.activityLevels.extremelyActive.name' => 'अत्यधिक सक्रिय',
			'editProfile.activityLevels.extremelyActive.description' => 'बहुत कठिन व्यायाम, शारीरिक नौकरी',
			'settings.title' => 'सेटिंग्स',
			'settings.sections.profile' => 'प्रोफ़ाइल',
			'settings.sections.localization' => 'स्थानीयकरण',
			'settings.sections.notifications' => 'सूचनाएँ',
			'settings.sections.healthConnect' => 'स्वास्थ्य कनेक्ट',
			'settings.sections.supportAndLegal' => 'समर्थन और कानूनी',
			'settings.sections.about' => 'के बारे में',
			'settings.sections.dangerZone' => 'खतरे का क्षेत्र',
			'settings.sections.developer' => 'डेवलपर',
			'settings.editProfile.title' => 'प्रोफ़ाइल संपादित करें',
			'settings.editProfile.subtitle' => 'अपनी व्यक्तिगत जानकारी अपडेट करें',
			'settings.language.title' => 'भाषा',
			'settings.language.subtitle' => 'अपनी पसंदीदा भाषा चुनें',
			'settings.language.searchHint' => 'भाषाएँ खोजें...',
			'settings.language.noResults' => 'कोई परिणाम नहीं मिला',
			'settings.heightUnit.title' => 'ऊँचाई इकाई',
			'settings.weightUnit.title' => 'वजन यूनिट',
			'settings.mealReminders.title' => 'भोजन अनुस्मारक',
			'settings.mealReminders.subtitle' => 'समय पर सूचनाओं के साथ ट्रैक पर रहें',
			'settings.theme.title' => 'थीम',
			'settings.theme.light' => 'हल्का',
			'settings.theme.dark' => 'गहरा',
			'settings.theme.system' => 'सिस्टम',
			'settings.sendFeedback.title' => 'प्रतिक्रिया भेजें',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} में सुधार करने में मदद करें',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} ऐप फीडबैक',
			'settings.sendFeedback.emailBodyPrefix' => 'कृपया नीचे अपनी प्रतिक्रिया दें:',
			'settings.sendFeedback.appVersion' => 'ऐप संस्करण',
			'settings.sendFeedback.device' => 'डिवाइस',
			'settings.sendFeedback.osVersion' => 'ओएस संस्करण',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'सारे डेटा मिटाएं',
			'settings.clearAllData.subtitle' => 'आपकी सारी जानकारी को स्थायी रूप से हटा दें',
			'settings.clearAllData.confirmationTitle' => 'सारे डेटा मिटाने के लिए?',
			'settings.clearAllData.confirmationMessage' => 'यह क्रिया पूर्ववत नहीं की जा सकती। आपकी सभी लॉग की गई भोजन, पसंदीदा और प्रोफ़ाइल सेटिंग्स स्थायी रूप से हटा दी जाएंगी।',
			'settings.clearAllData.cancel' => 'रद्द करें',
			'settings.clearAllData.clearEverything' => 'सब कुछ मिटाएं',
			'settings.debugOptions.title' => 'डिबग विकल्प',
			'settings.developerModeEnabled' => 'डेवलपर मोड सक्षम किया गया है!',
			'settings.healthConnect.title' => 'स्वास्थ्य कनेक्ट',
			'settings.healthConnect.subtitle' => 'अनुमतियों को देखें और प्रबंधित करें',
			'settings.healthConnect.unavailable.title' => 'Health Connect उपलब्ध नहीं है',
			'settings.healthConnect.unavailable.description' => 'Health Connect इस डिवाइस पर उपलब्ध नहीं है। कृपया Play Store से Health Connect इंस्टॉल करें (Android 9+) या Android 14+ पर अपडेट करें।',
			'settings.healthConnect.permissions.title' => 'अनुमतियाँ',
			'settings.healthConnect.permissions.description' => 'स्वास्थ्य कनेक्ट एकीकरण प्रदान करने के लिए निम्नलिखित अनुमतियों की आवश्यकता है:',
			'settings.healthConnect.permissions.granted' => 'अनुमत',
			'settings.healthConnect.permissions.notGranted' => 'अनुमत नहीं',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'कुल कैलोरी बर्न पढ़ें',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'ऐप को स्वास्थ्य कनेक्ट से आपकी कुल कैलोरी बर्न पढ़ने की अनुमति देता है।',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'यह अनुमति आपको ऐप में आपके दैनिक कैलोरी बर्न को प्रदर्शित करने के लिए उपयोग की जाती है, जिससे आप दिनभर अपनी कुल ऊर्जा व्यय को समझ सकें।',
			'settings.healthConnect.permissions.nutritionRead.title' => 'पोषण डेटा पढ़ें',
			'settings.healthConnect.permissions.nutritionRead.description' => 'ऐप को स्वास्थ्य कनेक्ट से पोषण डेटा पढ़ने की अनुमति देता है।',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'यह अनुमति ऐप को स्वास्थ्य कनेक्ट से जुड़े अन्य ऐप्स द्वारा लॉग किए गए पोषण जानकारी को पढ़ने की अनुमति देती है, जिससे आपके पोषण का व्यापक दृश्य प्रदान किया जा सके।',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'पोषण डेटा लिखें',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'ऐप को स्वास्थ्य कनेक्ट में पोषण डेटा लिखने की अनुमति देता है।',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'यह अनुमति ऐप को आपके लॉग किए गए भोजन को स्वास्थ्य कनेक्ट के साथ समन्वयित करने की अनुमति देती है, जिससे आपका पोषण डेटा आप द्वारा उपयोग किए जाने वाले अन्य स्वास्थ्य और फिटनेस ऐप्स के लिए उपलब्ध होता है।',
			'settings.healthConnect.managePermissions' => 'अनुमतियाँ प्रबंधित करें',
			'settings.healthConnect.openSettings' => 'स्वास्थ्य कनेक्ट सेटिंग्स खोलें',
			'settings.healthConnect.requestPermissions' => 'अनुमतियाँ मांगें',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'अनुमति अनुरोध रद्द हो गया या विफल रहा। कृपया फिर से प्रयास करें या स्वास्थ्य कनेक्ट सेटिंग्स में मैन्युअली अनुमतियाँ दें।',
			'settings.healthConnect.permissionRequestFailed' => 'अनुमतियाँ मांगने में असमर्थ। कृपया फिर से प्रयास करें या स्वास्थ्य कनेक्ट सेटिंग्स में मैन्युअली अनुमतियाँ दें।',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'हमारे बारे में',
			'settings.about.tagline' => 'तेज़, मुफ्त, और गोपनीयता-प्रथम कैलोरी जागरूकता',
			'settings.about.ourStory.title' => 'हमारी कहानी',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} का जन्म एक साधारण निराशा से हुआ: अधिकांश कैलोरी ट्रैकिंग ऐप या तो अत्यधिक जटिल हैं, निरंतर मैनुअल इनपुट की मांग करते हैं, उच्च सदस्यता शुल्क लेते हैं, या गोपनीयता से समझौता करते हैं।\n\nएक स्वतंत्र डेवलपर के रूप में, मैंने कुछ सरल और निष्पक्ष बनाने की इच्छा की — एक ऐसा ऐप जो एआई का उपयोग करके प्रयास को कम करता है, उपयोग में तेज और मुफ्त रहता है, और आपके स्वास्थ्य डेटा का सम्मान करता है।\n\n${appLabel} वह ऐप है जिसकी मुझे अपेक्षा थी: कोई खाते नहीं, कोई ट्रैकिंग नहीं, कोई विज्ञापन नहीं — बस स्पष्ट, व्यावहारिक अंतर्दृष्टियाँ और आपके स्वास्थ्य लक्ष्य।',
			'settings.about.privacy.title' => 'आपकी गोपनीयता महत्वपूर्ण है',
			'settings.about.privacy.description' => 'गोपनीयता कोई उप-चिंता नहीं है — यह एक डिज़ाइन सिद्धांत है। इसका अर्थ प्रथा में यह है:',
			'settings.about.privacy.noAccounts' => 'कोई खाता आवश्यक नहीं\nतुरंत ऐप का उपयोग करें। कोई साइन-अप नहीं, कोई पहचान नहीं।',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'कोई व्यवहार ट्रैकिंग नहीं\n${appLabel} आपकी गतिविधियों की निगरानी नहीं करता, उपयोग प्रोफाइल नहीं बनाता, या आपको ऐप्स या वेबसाइटों में ट्रैक नहीं करता।',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'डिजाइन द्वारा विज्ञापन-मुक्त\n${appLabel} बिना विज्ञापनों या डेटा-आधारित मुद्रीकरण के काम करने के लिए बनाया गया है।',
			'settings.about.privacy.noDataSelling' => 'कोई डेटा बिक्री नहीं\nआपका स्वास्थ्य डेटा कभी भी बेचा या तीसरे पक्ष के साथ साझा नहीं किया जाता।',
			'settings.about.privacy.localStorage' => 'स्थानीय-प्रथम भंडारण\nआपका डेटा आपके डिवाइस पर रहता है।',
			'settings.about.privacy.privacyPolicy' => 'गोपनीयता नीति',
			'settings.about.developer.title' => 'एक स्वतंत्र डेवलपर द्वारा बनाया गया',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} एक अकेले स्वतंत्र डेवलपर द्वारा बनाया और बनाए रखा गया है, जो शांत, गोपनीयता-आदर स्वास्थ्य सॉफ़्टवेयर बनाने पर ध्यान केंद्रित करता है।\n\nफीडबैक व्यक्तिगत रूप से पढ़ा जाता है और ऐप की दिशा को आकार देने में मदद करता है।',
			'settings.about.developer.website' => 'वेबसाइट',
			'settings.about.developer.email' => 'ईमेल',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'क्या आपको ${appLabel} पसंद आ रहा है?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'आपका फीडबैक ${appLabel} को हर किसी के लिए बेहतर बनाने में मदद करता है।',
			'settings.about.feedback.rateApp' => 'प्ले स्टोर पर रेट करें',
			'settings.about.feedback.sendFeedback' => 'प्रतिक्रिया भेजें',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'बिल्ड ${buildNumber}',
			'reminders.title' => 'अनुस्मारक के साथ ट्रैक पर रहें',
			'reminders.description' => 'अपने भोजन का लॉग बनाने और अपने पोषण लक्ष्यों के प्रति स्थिर रहने के लिए स्वच्छ अनुस्मारक प्राप्त करें',
			'reminders.notificationsEnabled' => 'सूचनाएँ सक्षम हैं',
			'reminders.notificationsDisabled' => 'सूचनाएँ असक्षम हैं',
			'reminders.enabledSubtitle' => 'आपको भोजन अनुस्मारक प्राप्त होंगे',
			'reminders.disabledSubtitle' => 'भोजन अनुस्मारक पाने के लिए सूचनाएं सक्रिय करें',
			'reminders.mealReminders' => 'भोजन अनुस्मारक',
			'reminders.breakfast' => 'नाश्ता',
			'reminders.lunch' => 'दोपहर का भोजन',
			'reminders.dinner' => 'रात्रि भोजन',
			'reminders.snack' => 'नाश्ता',
			'reminders.unknown' => 'अज्ञात',
			'reminders.change' => 'बदलें',
			'reminders.enableNotifications' => 'सूचनाएँ सक्षम करें',
			'reminders.skipForNow' => 'अभी छोड़ें',
			'reminders.saveChanges' => 'परिवर्तनों को सहेजें',
			'reminders.enabledSuccessfully' => 'सूचनाएँ सफलतापूर्वक सक्षम की गईं!',
			'reminders.permissionDenied' => 'सूचना अनुमति अस्वीकृत',
			'reminders.errorEnabling' => ({required Object error}) => 'सूचनाओं को सक्षम करने में त्रुटि: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'सेटअप पूरा करने में त्रुटि: ${error}',
			'notifications.breakfast.title' => 'नाश्ते का समय! 🍳',
			'notifications.breakfast.body' => 'अपने नाश्ते को लॉग करना न भूलें',
			'notifications.lunch.title' => 'दोपहर का भोजन! 🥗',
			'notifications.lunch.body' => 'अपने दोपहर के भोजन को लॉग करने का समय',
			'notifications.dinner.title' => 'रात्रि भोजन का समय! 🍽️',
			'notifications.dinner.body' => 'अपने रात्रि भोजन को लॉग करना न भूलें',
			'notifications.snack.title' => 'नाश्ते का समय! 🍎',
			'notifications.snack.body' => 'एक स्वस्थ नाश्ते का समय',
			'notifications.test.title' => 'परीक्षण सूचना',
			'login.title' => 'लॉगिन करें',
			'login.signInWithGoogle' => 'Google के साथ साइन इन करें',
			'login.signInFailed' => 'Google Sign-In असफल हुआ या रद्द कर दिया गया।',
			'disclaimer.pleaseNote' => 'कृपया ध्यान दें',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} अनुमानित पोषण संबंधी जानकारी प्रदान करता है। सटीकता आपके इनपुट और खाद्य प्रकारों पर निर्भर करती है। इसे एक मार्गदर्शक के रूप में उपयोग करें, न कि एक निश्चित स्रोत के रूप में। व्यक्तिगत आहार सलाह के लिए पेशेवर से परामर्श करें।',
			'disclaimer.snap.portionSize.title' => 'भाग का आकार',
			'disclaimer.snap.portionSize.description' => 'अनुमानों की सटीकता आपके हिस्से के आकार के सही आकलन पर बहुत अधिक निर्भर करती है।',
			'disclaimer.snap.preparationMethods.title' => 'पकाने के तरीके',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'खाने के पकाने के तरीके पोषण संबंधी सामग्री को महत्वपूर्ण रूप से बदल सकते हैं। ${appLabel} के अनुमान हमेशा इन भिन्नताओं पर विचार नहीं कर सकते।',
			'disclaimer.snap.ingredients.title' => 'सामग्री',
			'disclaimer.snap.ingredients.description' => 'जटिल व्यंजन जिनमें कई छिपी हुई सामग्री होती हैं उनमें कम सटीकता के अनुमान हो सकते हैं।',
			'disclaimer.snap.databaseLimitations.title' => 'डेटाबेस सीमाएँ',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} का खाद्य डेटाबेस विस्तृत है लेकिन इसमें प्रत्येक खाद्य पदार्थ या भिन्नता शामिल नहीं हो सकती।',
			'disclaimer.weightEstimate.title' => 'वजन अनुमान के बारे में',
			'disclaimer.weightEstimate.description' => 'अनुमानित वजन परिवर्तन कैलोरी-इन बनाम कैलोरी-आउट के सरल मॉडल पर आधारित एक सैद्धांतिक अनुमान है। इसका उद्देश्य केवल प्रेरक मार्गदर्शन प्रदान करना है, न कि आपके वास्तविक वजन की भविष्यवाणी करना।',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'कैलोरी सटीकता',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'यह अनुमान केवल आपकी ट्रैक की गई कैलोरी सेवन और व्यय के रूप में सटीक है। गलत लॉगिंग का परिणाम गलत प्रक्षेपण में होगा।',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'जीवविज्ञान संबंधी कारक',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'वास्तविक वजन घटाने/बढ़ाने पर चयापचय, हार्मोन, नींद, तनाव, जलयोजन और अन्य व्यक्तिगत कारकों का प्रभाव होता है, जिसे ${appLabel} माप नहीं सकता।',
			'disclaimer.weightEstimate.waterWeight.title' => 'जल का वजन और उतार-चढ़ाव',
			'disclaimer.weightEstimate.waterWeight.description' => 'सामान्य दैनिक वजन जल संरक्षण, पाचन और समय के कारण महत्वपूर्ण रूप से बदल सकता है। अनुमान इन दैनिक परिवर्तनों को ध्यान में नहीं रखता।',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'पेशेवर मार्गदर्शन',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'इस अनुमान का उपयोग चिकित्सा निर्णय लेने के लिए न करें। हमेशा व्यक्तिगत वजन प्रबंधन सलाह के लिए एक स्वास्थ्य देखभाल पेशेवर या पंजीकृत आहार विशेषज्ञ से परामर्श करें।',
			'disclaimer.healthMetrics.description' => 'ये मीट्रिक आपके शरीर की ऊर्जा की जरूरतों को समझने में मदद करते हैं और आपके पोषण लक्ष्यों का मार्गदर्शन करते हैं।',
			'disclaimer.healthMetrics.bmr.title' => 'बीएमआर',
			'disclaimer.healthMetrics.bmr.description' => 'आधार चयापचय दर (बीएमआर) वह संख्या है, जो आपके शरीर आराम करते समय बुनियादी फंक्शंस जैसे कि श्वसन और संचार को बनाए रखने के लिए जलती है। बीएमआर आपकी आयु, लिंग, ऊँचाई और वजन पर निर्भर करता है। एक उच्च बीएमआर का मतलब है कि आपका शरीर स्वाभाविक रूप से आराम करते समय अधिक कैलोरी जलाता है, अक्सर अधिक मांसपेशी द्रव्यमान, युवा आयु, या पुरुष होने के कारण। एक निम्न बीएमआर आमतौर पर कम मांसपेशी द्रव्यमान, अधिक आयु, या महिला होने का संकेत देता है।',
			'disclaimer.healthMetrics.tdee.title' => 'टीडीईई',
			'disclaimer.healthMetrics.tdee.description' => 'कुल दैनिक ऊर्जा व्यय (टीडीईई) वह कुल कैलोरी है जो आप प्रति दिन जलाते हैं, जिसमें आपकी बीएमआर और शारीरिक गतिविधि और दैनिक गति से प्राप्त कैलोरी शामिल हैं। टीडीईई आपकी बीएमआर और गतिविधि स्तर पर निर्भर करता है। एक उच्च टीडीईई का मतलब है कि आप कुल मिलाकर अधिक कैलोरी जलाते हैं, आमतौर पर अधिक सक्रिय होने या उच्च बीएमआर होने के कारण। एक निम्न टीडीईई कम दैनिक गतिविधि या निम्न बीएमआर का संकेत देता है।',
			'disclaimer.healthMetrics.dailyGoal.title' => 'दैनिक लक्ष्य',
			'disclaimer.healthMetrics.dailyGoal.description' => 'दैनिक लक्ष्य आपके टीडीईई और वजन लक्ष्य के आधार पर आपकी अनुशंसित दैनिक कैलोरी की मात्रा है। वजन घटाने के लिए, आप अपने टीडीईई से कम कैलोरी का सेवन करते हैं। वजन बनाए रखने के लिए, आप अपने टीडीईई के बराबर खाते हैं। वजन बढ़ाने के लिए, आप अपने टीडीईई से अधिक कैलोरी का सेवन करते हैं। यह आपको एक स्वस्थ गति से आपके इच्छित वजन परिवर्तन को प्राप्त करने में मदद करता है।',
			'common.close' => 'बंद करें',
			'common.kContinue' => 'जारी रखें',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'क्या आप ${appLabel} का आनंद ले रहे हैं? आपका अनुभव हमारे लिए महत्वपूर्ण है।',
			'feedbackRating.yes' => 'हाँ, मुझे यह पसंद आ रहा है',
			'feedbackRating.no' => 'ज़्यादा नहीं',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => '${appLabel} एक व्यक्ति द्वारा विकसित किया गया है। एक छोटी सी Play Store रेटिंग दूसरों को इसे खोजने में मदद करती है और विकास जारी रखने में सहायक होती है — यह वास्तव में मदद करता है। क्या आप एक मिनट लेकर रेटिंग छोड़ सकते हैं?',
			'feedbackRating.shareFeedbackViaEmail' => ({required Object appLabel}) => '${appLabel} एक व्यक्ति द्वारा बनाया गया है। आपकी प्रतिक्रिया वाकई यह तय करती है कि आगे क्या आएगा — और हम हर संदेश पढ़ते हैं। क्या आप ईमेल के जरिए अपनी राय साझा करना चाहेंगे?',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'जानना चाहेंगे कि ${appLabel} के पीछे कौन है? देखें ',
			'feedbackRating.aboutUsLinkLabel' => 'हमारे बारे में',
			'errors.loadingProfileData' => 'प्रोफ़ाइल डेटा लोड करने में त्रुटि',
			'errors.somethingWentWrong' => 'कुछ गलत हुआ।',
			'debug.title' => 'डिबग विकल्प',
			'debug.sections.notifications' => 'सूचनाएँ',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.feedback' => 'प्रतिक्रिया',
			'debug.sections.dataReset' => 'डेटा रीसेट',
			'debug.sections.appInfo' => 'ऐप जानकारी',
			'debug.showActiveNotifications' => 'सक्रिय सूचनाएँ दिखाएँ',
			'debug.scheduleTestNotification' => 'परीक्षण सूचना निर्धारित करें (10 सेकंड)',
			'debug.triggerBreakfastNotification' => 'नाश्ता सूचना ट्रिगर करें',
			'debug.cancelAllNotifications' => 'सभी सूचनाएँ रद्द करें',
			'debug.activeNotifications' => 'सक्रिय सूचनाएँ',
			'debug.noTitle' => 'कोई शीर्षक नहीं',
			'debug.noBody' => 'कोई सामग्री नहीं',
			'debug.fetchTodaysSteps' => 'आज के कदम प्राप्त करें',
			'debug.fetchTodaysCalories' => 'आज की कैलोरी प्राप्त करें',
			'debug.fetchLatestWeight' => 'नवीनतम वजन प्राप्त करें',
			'debug.fetchLatestHeight' => 'नवीनतम ऊँचाई प्राप्त करें',
			'debug.writeTestWeight' => 'परीक्षण वजन (70 किलोग्राम) लिखें',
			'debug.writeTestHeight' => 'परीक्षण ऊँचाई (175 सेमी) लिखें',
			'debug.syncLast7Days' => 'पिछले 7 दिनों को सिंक करें',
			'debug.sync7DaysTitle' => '7-दिन की सिंक',
			'debug.checkCurrentLocale' => 'वर्तमान लोकल देखें',
			'debug.currentLocale' => 'वर्तमान लोकल',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'भाषा: ${languageCode}\nदेश: ${countryCode}\nइकाई प्रणाली: ${unitSystem}',
			'debug.latestWeight' => 'नवीनतम वजन',
			'debug.latestHeight' => 'नवीनतम ऊँचाई',
			'debug.todaysCalories' => 'आज की कैलोरी',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'कुल कैलोरी जल गई: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'पिछले 7 दिनों में कदमों, कैलोरी और वजन के लिए ${count} डेटा बिंदुओं को सफलतापूर्वक प्राप्त किया गया।',
			'debug.noWeightData' => 'पिछले 30 दिनों में कोई वजन डेटा नहीं मिला।',
			'debug.noHeightData' => 'पिछले वर्ष में कोई ऊँचाई डेटा नहीं मिला।',
			'debug.noCalorieData' => 'आज के लिए कोई कैलोरी डेटा नहीं मिला।',
			'debug.weightWritten' => 'सफलतापूर्वक परीक्षण वजन (70 किलोग्राम) लिखा गया।',
			'debug.weightWriteFailed' => 'परीक्षण वजन लिखने में विफल।',
			'debug.heightWritten' => 'सफलतापूर्वक परीक्षण ऊँचाई (175 सेमी) लिखी गई।',
			'debug.heightWriteFailed' => 'परीक्षण ऊँचाई लिखने में विफल।',
			'debug.noNotifications' => 'कोई सक्रिय सूचनाएँ नहीं।',
			'debug.testNotificationScheduled' => 'परीक्षण सूचना 10 सेकंड बाद निर्धारित की गई है।',
			'debug.testNotificationBody' => 'यह 10 सेकंड बाद निर्धारित की गई परीक्षण सूचना है।',
			'debug.breakfastNotificationTriggered' => 'नाश्ते की सूचना ट्रिगर की गई।',
			'debug.allNotificationsCancelled' => 'सभी सूचनाएँ रद्द कर दी गई हैं।',
			'debug.fetchingData' => 'पिछले 7 दिनों के लिए डेटा प्राप्त कर रहे हैं...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'debug.showFeedbackRatingSheet' => 'प्रतिक्रिया / रेटिंग शीट दिखाएँ',
			'debug.clearUserPreferences' => 'उपयोगकर्ता प्राथमिकताएँ साफ़ करें',
			'debug.clearUserPreferencesConfirmationTitle' => 'उपयोगकर्ता प्राथमिकताएँ साफ़ करें?',
			'debug.clearUserPreferencesConfirmationMessage' => 'थीम, भाषा और फीडबैक की प्राथमिकताएँ रीसेट हो जाएँगी। भोजन और प्रोफ़ाइल प्रभावित नहीं होंगे।',
			'debug.clearUserProfile' => 'उपयोगकर्ता प्रोफ़ाइल साफ़ करें',
			'debug.clearUserProfileConfirmationTitle' => 'उपयोगकर्ता प्रोफ़ाइल साफ़ करें?',
			'debug.clearUserProfileConfirmationMessage' => 'आपके प्रोफ़ाइल डेटा (दैनिक लक्ष्य, ऊँचाई, वजन, आदि) मिटा दिए जाएंगे। भोजन और प्राथमिकताएँ प्रभावित नहीं होंगी।',
			'debug.clear' => 'साफ़ करें',
			'debug.cancel' => 'रद्द करें',
			'health.syncFailed' => 'Health Connect से सिंक नहीं हो पाया',
			'health.mealSynced' => 'भोजन Health Connect के साथ सिंक किया गया',
			_ => null,
		};
	}
}
