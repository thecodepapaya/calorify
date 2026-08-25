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
	@override late final _Translations$errors$hi errors = _Translations$errors$hi._(_root);
	@override late final _Translations$onboarding$hi onboarding = _Translations$onboarding$hi._(_root);
	@override late final _Translations$tabs$hi tabs = _Translations$tabs$hi._(_root);
	@override late final _Translations$home$hi home = _Translations$home$hi._(_root);
	@override late final _Translations$history$hi history = _Translations$history$hi._(_root);
	@override late final _Translations$meal$hi meal = _Translations$meal$hi._(_root);
	@override late final _Translations$favorites$hi favorites = _Translations$favorites$hi._(_root);
	@override late final _Translations$profile$hi profile = _Translations$profile$hi._(_root);
	@override late final _Translations$healthScore$hi healthScore = _Translations$healthScore$hi._(_root);
	@override late final _Translations$editProfile$hi editProfile = _Translations$editProfile$hi._(_root);
	@override late final _Translations$settings$hi settings = _Translations$settings$hi._(_root);
	@override late final _Translations$reminders$hi reminders = _Translations$reminders$hi._(_root);
	@override late final _Translations$notifications$hi notifications = _Translations$notifications$hi._(_root);
	@override late final _Translations$login$hi login = _Translations$login$hi._(_root);
	@override late final _Translations$disclaimer$hi disclaimer = _Translations$disclaimer$hi._(_root);
	@override late final _Translations$localNutritionPhase4$hi localNutritionPhase4 = _Translations$localNutritionPhase4$hi._(_root);
	@override late final _Translations$watch$hi watch = _Translations$watch$hi._(_root);
	@override late final _Translations$common$hi common = _Translations$common$hi._(_root);
	@override late final _Translations$feedbackRating$hi feedbackRating = _Translations$feedbackRating$hi._(_root);
	@override late final _Translations$health$hi health = _Translations$health$hi._(_root);
}

// Path: errors
class _Translations$errors$hi extends Translations$errors$en {
	_Translations$errors$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$hi extends Translations$onboarding$en {
	_Translations$onboarding$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'स्वागत है ${appLabel} में';
	@override String get subtitle => 'आपका व्यक्तिगत पोषण साथी, AI द्वारा संचालित';
	@override String get getStarted => 'शुरू करें';
	@override late final _Translations$onboarding$features$hi features = _Translations$onboarding$features$hi._(_root);
	@override late final _Translations$onboarding$gender$hi gender = _Translations$onboarding$gender$hi._(_root);
	@override late final _Translations$onboarding$height$hi height = _Translations$onboarding$height$hi._(_root);
	@override late final _Translations$onboarding$weight$hi weight = _Translations$onboarding$weight$hi._(_root);
	@override late final _Translations$onboarding$age$hi age = _Translations$onboarding$age$hi._(_root);
	@override late final _Translations$onboarding$bmiScale$hi bmiScale = _Translations$onboarding$bmiScale$hi._(_root);
	@override late final _Translations$onboarding$weightGoal$hi weightGoal = _Translations$onboarding$weightGoal$hi._(_root);
	@override late final _Translations$onboarding$activityLevel$hi activityLevel = _Translations$onboarding$activityLevel$hi._(_root);
	@override late final _Translations$onboarding$healthConnect$hi healthConnect = _Translations$onboarding$healthConnect$hi._(_root);
	@override late final _Translations$onboarding$reinforcement$hi reinforcement = _Translations$onboarding$reinforcement$hi._(_root);
}

// Path: tabs
class _Translations$tabs$hi extends Translations$tabs$en {
	_Translations$tabs$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'डैशबोर्ड';
	@override String get history => 'इतिहास';
}

// Path: home
class _Translations$home$hi extends Translations$home$en {
	_Translations$home$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$hi aiSummary = _Translations$home$aiSummary$hi._(_root);
	@override late final _Translations$home$dailyGoal$hi dailyGoal = _Translations$home$dailyGoal$hi._(_root);
	@override late final _Translations$home$dailySummary$hi dailySummary = _Translations$home$dailySummary$hi._(_root);
	@override late final _Translations$home$intakeProgress$hi intakeProgress = _Translations$home$intakeProgress$hi._(_root);
	@override late final _Translations$home$intakeHistory$hi intakeHistory = _Translations$home$intakeHistory$hi._(_root);
	@override late final _Translations$home$mealLog$hi mealLog = _Translations$home$mealLog$hi._(_root);
	@override late final _Translations$home$mealDescription$hi mealDescription = _Translations$home$mealDescription$hi._(_root);
	@override late final _Translations$home$favoriteMeals$hi favoriteMeals = _Translations$home$favoriteMeals$hi._(_root);
	@override late final _Translations$home$mealSnap$hi mealSnap = _Translations$home$mealSnap$hi._(_root);
	@override late final _Translations$home$connectHealth$hi connectHealth = _Translations$home$connectHealth$hi._(_root);
}

// Path: history
class _Translations$history$hi extends Translations$history$en {
	_Translations$history$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'कोई भोजन रिकॉर्ड नहीं';
	@override String get emptyMessage => 'यहाँ लॉग करने के लिए अपनी आखिरी भोजन की तस्वीर लें।';
	@override String get today => 'आज';
	@override String get yesterday => 'कल';
}

// Path: meal
class _Translations$meal$hi extends Translations$meal$en {
	_Translations$meal$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
	@override late final _Translations$meal$nutrition$hi nutrition = _Translations$meal$nutrition$hi._(_root);
	@override late final _Translations$meal$deleteConfirmation$hi deleteConfirmation = _Translations$meal$deleteConfirmation$hi._(_root);
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
	@override late final _Translations$meal$questionFlow$hi questionFlow = _Translations$meal$questionFlow$hi._(_root);
	@override late final _Translations$meal$analysis$hi analysis = _Translations$meal$analysis$hi._(_root);
	@override late final _Translations$meal$localInference$hi localInference = _Translations$meal$localInference$hi._(_root);
	@override late final _Translations$meal$feedback$hi feedback = _Translations$meal$feedback$hi._(_root);
}

// Path: favorites
class _Translations$favorites$hi extends Translations$favorites$en {
	_Translations$favorites$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
	@override late final _Translations$favorites$sortOptions$hi sortOptions = _Translations$favorites$sortOptions$hi._(_root);
}

// Path: profile
class _Translations$profile$hi extends Translations$profile$en {
	_Translations$profile$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफ़ाइल';
	@override String get noProfileData => 'कोई प्रोफ़ाइल डेटा नहीं मिला';
	@override String get yourProfile => 'आपकी प्रोफ़ाइल';
	@override String get viewAndManage => 'अपनी स्वास्थ्य जानकारी देखें और प्रबंधित करें';
	@override late final _Translations$profile$sections$hi sections = _Translations$profile$sections$hi._(_root);
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
	@override late final _Translations$profile$calculatedValues$hi calculatedValues = _Translations$profile$calculatedValues$hi._(_root);
}

// Path: healthScore
class _Translations$healthScore$hi extends Translations$healthScore$en {
	_Translations$healthScore$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$hi extends Translations$editProfile$en {
	_Translations$editProfile$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफ़ाइल संपादित करें';
	@override late final _Translations$editProfile$sections$hi sections = _Translations$editProfile$sections$hi._(_root);
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
	@override late final _Translations$editProfile$genders$hi genders = _Translations$editProfile$genders$hi._(_root);
	@override late final _Translations$editProfile$weightGoals$hi weightGoals = _Translations$editProfile$weightGoals$hi._(_root);
	@override late final _Translations$editProfile$activityLevels$hi activityLevels = _Translations$editProfile$activityLevels$hi._(_root);
}

// Path: settings
class _Translations$settings$hi extends Translations$settings$en {
	_Translations$settings$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सेटिंग्स';
	@override late final _Translations$settings$sections$hi sections = _Translations$settings$sections$hi._(_root);
	@override late final _Translations$settings$editProfile$hi editProfile = _Translations$settings$editProfile$hi._(_root);
	@override late final _Translations$settings$language$hi language = _Translations$settings$language$hi._(_root);
	@override late final _Translations$settings$heightUnit$hi heightUnit = _Translations$settings$heightUnit$hi._(_root);
	@override late final _Translations$settings$weightUnit$hi weightUnit = _Translations$settings$weightUnit$hi._(_root);
	@override late final _Translations$settings$mealReminders$hi mealReminders = _Translations$settings$mealReminders$hi._(_root);
	@override late final _Translations$settings$localInference$hi localInference = _Translations$settings$localInference$hi._(_root);
	@override late final _Translations$settings$theme$hi theme = _Translations$settings$theme$hi._(_root);
	@override late final _Translations$settings$sendFeedback$hi sendFeedback = _Translations$settings$sendFeedback$hi._(_root);
	@override late final _Translations$settings$exportMealHistory$hi exportMealHistory = _Translations$settings$exportMealHistory$hi._(_root);
	@override late final _Translations$settings$clearAllData$hi clearAllData = _Translations$settings$clearAllData$hi._(_root);
	@override late final _Translations$settings$debugOptions$hi debugOptions = _Translations$settings$debugOptions$hi._(_root);
	@override String get developerModeEnabled => 'डेवलपर मोड सक्षम किया गया!';
	@override late final _Translations$settings$healthConnect$hi healthConnect = _Translations$settings$healthConnect$hi._(_root);
	@override late final _Translations$settings$about$hi about = _Translations$settings$about$hi._(_root);
	@override late final _Translations$settings$appInfo$hi appInfo = _Translations$settings$appInfo$hi._(_root);
}

// Path: reminders
class _Translations$reminders$hi extends Translations$reminders$en {
	_Translations$reminders$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$notifications$hi extends Translations$notifications$en {
	_Translations$notifications$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$hi breakfast = _Translations$notifications$breakfast$hi._(_root);
	@override late final _Translations$notifications$lunch$hi lunch = _Translations$notifications$lunch$hi._(_root);
	@override late final _Translations$notifications$dinner$hi dinner = _Translations$notifications$dinner$hi._(_root);
	@override late final _Translations$notifications$snack$hi snack = _Translations$notifications$snack$hi._(_root);
	@override late final _Translations$notifications$test$hi test = _Translations$notifications$test$hi._(_root);
}

// Path: login
class _Translations$login$hi extends Translations$login$en {
	_Translations$login$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'लॉगिन';
	@override String get signInWithGoogle => 'Google के साथ साइन इन करें';
	@override String get signInFailed => 'Google साइन-इन विफल हुआ या रद्द कर दिया गया।';
}

// Path: disclaimer
class _Translations$disclaimer$hi extends Translations$disclaimer$en {
	_Translations$disclaimer$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'कृपया ध्यान दें';
	@override late final _Translations$disclaimer$snap$hi snap = _Translations$disclaimer$snap$hi._(_root);
	@override late final _Translations$disclaimer$weightEstimate$hi weightEstimate = _Translations$disclaimer$weightEstimate$hi._(_root);
	@override late final _Translations$disclaimer$healthMetrics$hi healthMetrics = _Translations$disclaimer$healthMetrics$hi._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$hi calorieExpenditure = _Translations$disclaimer$calorieExpenditure$hi._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$hi extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
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

// Path: watch
class _Translations$watch$hi extends Translations$watch$en {
	_Translations$watch$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify वॉच';
	@override late final _Translations$watch$common$hi common = _Translations$watch$common$hi._(_root);
	@override late final _Translations$watch$nutrition$hi nutrition = _Translations$watch$nutrition$hi._(_root);
	@override late final _Translations$watch$sync$hi sync = _Translations$watch$sync$hi._(_root);
	@override late final _Translations$watch$home$hi home = _Translations$watch$home$hi._(_root);
	@override late final _Translations$watch$history$hi history = _Translations$watch$history$hi._(_root);
	@override late final _Translations$watch$favorites$hi favorites = _Translations$watch$favorites$hi._(_root);
	@override late final _Translations$watch$meal$hi meal = _Translations$watch$meal$hi._(_root);
	@override late final _Translations$watch$voice$hi voice = _Translations$watch$voice$hi._(_root);
	@override late final _Translations$watch$result$hi result = _Translations$watch$result$hi._(_root);
}

// Path: common
class _Translations$common$hi extends Translations$common$en {
	_Translations$common$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'बीटा';
	@override String get close => 'बंद करें';
	@override String get kContinue => 'जारी रखें';
}

// Path: feedbackRating
class _Translations$feedbackRating$hi extends Translations$feedbackRating$en {
	_Translations$feedbackRating$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$health$hi extends Translations$health$en {
	_Translations$health$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect से सिंक नहीं कर सके';
	@override String get mealSynced => 'भोजन Health Connect के साथ सिंक हो गया';
}

// Path: onboarding.features
class _Translations$onboarding$features$hi extends Translations$onboarding$features$en {
	_Translations$onboarding$features$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$hi foodRecognition = _Translations$onboarding$features$foodRecognition$hi._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$hi aiAnalysis = _Translations$onboarding$features$aiAnalysis$hi._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$hi healthIntegration = _Translations$onboarding$features$healthIntegration$hi._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$hi extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपका जेंडर क्या है?';
	@override String get description => 'जेंडर हमें आपका बेसल मेटाबोलिक रेट (BMR) ठीक से गणना करने में मदद करता है।';
	@override String get next => 'अगला';
}

// Path: onboarding.height
class _Translations$onboarding$height$hi extends Translations$onboarding$height$en {
	_Translations$onboarding$height$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपकी ऊँचाई कितनी है?';
	@override String get description => 'आपकी ऊँचाई से BMI और ऊर्जा आवश्यकताओं की सटीक गणना करने में मदद मिलती है।';
	@override String get metric => 'मेट्रिक';
	@override String get imperial => 'इम्पीरियल';
	@override String get next => 'अगला';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$hi extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$age$hi extends Translations$onboarding$age$en {
	_Translations$onboarding$age$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपका जन्मदिन कब है?';
	@override String get description => 'आपकी आयु हमें आपकी कैलोरी आवश्यकता सटीक रूप से गणना करने में मदद करती है।';
	@override String get next => 'अगला';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$hi extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'कम';
	@override String get healthy => 'स्वस्थ';
	@override String get overweight => 'अधिक';
	@override String get obese => 'मोटापा';
	@override late final _Translations$onboarding$bmiScale$categories$hi categories = _Translations$onboarding$bmiScale$categories$hi._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$hi messages = _Translations$onboarding$bmiScale$messages$hi._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$hi extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपका लक्ष्य क्या है?';
	@override String get description => 'वह लक्ष्य चुनें जो सबसे अच्छी तरह बताता है कि आप क्या हासिल करना चाहते हैं';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$hi extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आप कितने सक्रिय हैं?';
	@override String get description => 'यह हमें आपकी दैनिक कैलोरी आवश्यकताओं को अधिक सटीक रूप से गणना करने में मदद करता है';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$hi extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect से कनेक्ट करें';
	@override String get description => 'बेहतर जानकारी और स्वचालित कैलोरी ट्रैकिंग के लिए अपने स्वास्थ्य डेटा को सिंक करें';
	@override String get overviewDescription => 'अपने दैनिक लक्ष्य में खर्च हुई कैलोरी का उपयोग करें और चाहें तो लॉग किए गए भोजन Health Connect के साथ साझा करें।';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$hi automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$hi._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$hi caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$hi._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$hi progressInsights = _Translations$onboarding$healthConnect$progressInsights$hi._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$hi shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$hi._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$hi seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$hi._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$hi userControl = _Translations$onboarding$healthConnect$userControl$hi._(_root);
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
class _Translations$onboarding$reinforcement$hi extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$hi trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$hi._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$hi healthProfile = _Translations$onboarding$reinforcement$healthProfile$hi._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$hi goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$hi._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$hi extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$home$dailyGoal$hi extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$home$dailySummary$hi extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$home$intakeProgress$hi extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आज का मैक्रो विभाजन';
	@override String get target => 'लक्ष्य';
	@override String get current => 'वर्तमान';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$hi extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '7-दिन का मैक्रो इतिहास';
	@override String get trendTitle => 'आज का रुझान';
	@override String peakHour({required Object hour}) => 'पीक: ${hour}:00';
	@override String get noHistoryYet => 'अभी तक कोई इतिहास नहीं';
	@override String get startLogging => 'यहाँ अपने भोजन लॉग करना शुरू करें\nताकि आप अपना 7-दिन मैक्रो रुझान देख सकें';
}

// Path: home.mealLog
class _Translations$home$mealLog$hi extends Translations$home$mealLog$en {
	_Translations$home$mealLog$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'लॉग किए गए भोजन';
	@override String get emptyMessage => 'यहाँ लॉग करने के लिए अपनी आखिरी भोजन की तस्वीर लें।';
	@override String get noMealsToday => 'आज के लिए कोई भोजन रिकॉर्ड नहीं';
	@override String get seeAllMeals => 'सभी भोजन देखें';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$hi extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI के साथ त्वरित जोड़';
	@override String get description => 'अपने भोजन का वर्णन करें, और AI विवरण संभालेगा।';
	@override String get hint => 'उदा. नाश्ते में मैंने ओटमील का बड़ा कटोरा, कटा केला और एक स्कूप व्हे लिया ...';
	@override String get analyzeMeal => 'भोजन विश्लेषण करें';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$hi extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$home$mealSnap$hi extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$home$connectHealth$hi extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect से सिंक करें';
	@override String get description => 'अपना पोषण डेटा Health Connect से सिंक करें';
	@override String get install => 'इंस्टॉल करें';
	@override String get dataUseDescription => 'अपने लक्ष्य में खर्च हुई कैलोरी का उपयोग करें और लॉग किए गए भोजन साझा करें';
	@override String get installOrUpdate => 'इंस्टॉल या अपडेट करें';
	@override String get connect => 'कनेक्ट करें';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$hi extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get calories => 'कैलोरी';
	@override String get carbs => 'कार्बोहाइड्रेट (g)';
	@override String get protein => 'प्रोटीन (g)';
	@override String get fat => 'वसा (g)';
	@override String get fiber => 'फाइबर (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$hi extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भोजन हटाएं';
	@override String get message => 'क्या आप सुनिश्चित हैं कि आप इस भोजन प्रविष्टि को हटाना चाहते हैं?';
	@override String get cancel => 'रद्द करें';
	@override String get delete => 'हटाएँ';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$hi extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'प्रश्न ${current} / ${total}';
	@override String get noQuestionsAvailable => 'कोई प्रश्न उपलब्ध नहीं';
	@override String get next => 'अगला';
	@override String get continueLabel => 'जारी रखें';
	@override String get countQuestion => 'मात्रा चुनें';
	@override String get itemSizeQuestion => 'आइटम का आकार चुनें';
	@override String get portionSizeQuestion => 'भाग का आकार चुनें';
	@override String get option6plus => '6 या अधिक';
	@override String get optionSmall => 'छोटा';
	@override String get optionRegular => 'नियमित';
	@override String get optionLarge => 'बड़ा';
	@override String get optionThin => 'पतला';
	@override String get optionThick => 'मोटा';
	@override String get optionMini => 'मिनी';
	@override String get optionStuffed => 'भरा हुआ';
	@override String get optionHeavy => 'भारी';
	@override String get optionSmaller => 'छोटा';
	@override String get optionTypical => 'विशिष्ट';
	@override String get optionLarger => 'बड़ा';
}

// Path: meal.analysis
class _Translations$meal$analysis$hi extends Translations$meal$analysis$en {
	_Translations$meal$analysis$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
	@override String get noFoodTip => 'कोई भोजन नहीं मिला। कोई दूसरी तस्वीर या विवरण आज़माएँ।';
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
class _Translations$meal$localInference$hi extends Translations$meal$localInference$en {
	_Translations$meal$localInference$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
}

// Path: meal.feedback
class _Translations$meal$feedback$hi extends Translations$meal$feedback$en {
	_Translations$meal$feedback$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$favorites$sortOptions$hi extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get recent => 'हालिया';
	@override String get calories => 'कैलोरी';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _Translations$profile$sections$hi extends Translations$profile$sections$en {
	_Translations$profile$sections$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'प्रोफ़ाइल';
	@override String get basicInformation => 'बुनियादी जानकारी';
	@override String get goalsAndActivity => 'लक्ष्य और गतिविधि';
	@override String get calculatedValues => 'गणना किए गए मान';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$hi extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'दैनिक लक्ष्य';
	@override String get calPerDay => 'cal/दिन';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$hi extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'व्यक्तिगत जानकारी';
	@override String get physicalMeasurements => 'शारीरिक माप';
	@override String get goalsAndActivity => 'लक्ष्य और गतिविधि';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$hi extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get male => 'पुरुष';
	@override String get female => 'महिला';
	@override String get other => 'अन्य';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$hi extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$hi loseWeight = _Translations$editProfile$weightGoals$loseWeight$hi._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$hi maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$hi._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$hi gainWeight = _Translations$editProfile$weightGoals$gainWeight$hi._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$hi extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$hi sedentary = _Translations$editProfile$activityLevels$sedentary$hi._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$hi lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$hi._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$hi moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$hi._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$hi veryActive = _Translations$editProfile$activityLevels$veryActive$hi._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$hi extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$hi._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$hi extends Translations$settings$sections$en {
	_Translations$settings$sections$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$settings$editProfile$hi extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफ़ाइल संपादित करें';
	@override String get subtitle => 'अपनी व्यक्तिगत जानकारी अपडेट करें';
}

// Path: settings.language
class _Translations$settings$language$hi extends Translations$settings$language$en {
	_Translations$settings$language$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भाषा';
	@override String get subtitle => 'अपनी पसंदीदा भाषा चुनें';
	@override String get searchHint => 'भाषाएँ खोजें...';
	@override String get noResults => 'कोई परिणाम नहीं मिला';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$hi extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'ऊँचाई की इकाई';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$hi extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'वजन की इकाई';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$hi extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भोजन अनुस्मारक';
	@override String get subtitle => 'समय पर अलर्ट के साथ ट्रैक पर रहें';
}

// Path: settings.localInference
class _Translations$settings$localInference$hi extends Translations$settings$localInference$en {
	_Translations$settings$localInference$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$settings$theme$hi extends Translations$settings$theme$en {
	_Translations$settings$theme$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'थीम';
	@override String get light => 'लाइट';
	@override String get dark => 'डार्क';
	@override String get system => 'सिस्टम';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$hi extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$settings$exportMealHistory$hi extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भोजन इतिहास एक्सपोर्ट करें';
	@override String get subtitle => 'अपने लॉग किए गए भोजन का CSV साझा करें';
	@override String get shareText => 'आपका Calorify भोजन इतिहास निर्यात';
	@override String failed({required Object error}) => 'भोजन इतिहास एक्सपोर्ट नहीं कर सके: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$hi extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$settings$debugOptions$hi extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'डिबग विकल्प';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$hi extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'अनुमतियाँ देखें और प्रबंधित करें';
	@override late final _Translations$settings$healthConnect$unavailable$hi unavailable = _Translations$settings$healthConnect$unavailable$hi._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$hi updateRequired = _Translations$settings$healthConnect$updateRequired$hi._(_root);
	@override late final _Translations$settings$healthConnect$permissions$hi permissions = _Translations$settings$healthConnect$permissions$hi._(_root);
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
class _Translations$settings$about$hi extends Translations$settings$about$en {
	_Translations$settings$about$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'बारे में';
	@override String get tagline => 'तेज़, मुफ्त, और प्राइवेसी-फर्स्ट कैलोरी अवेयरनेस';
	@override late final _Translations$settings$about$ourStory$hi ourStory = _Translations$settings$about$ourStory$hi._(_root);
	@override late final _Translations$settings$about$privacy$hi privacy = _Translations$settings$about$privacy$hi._(_root);
	@override late final _Translations$settings$about$developer$hi developer = _Translations$settings$about$developer$hi._(_root);
	@override late final _Translations$settings$about$feedback$hi feedback = _Translations$settings$about$feedback$hi._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$hi extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify संस्करण ${version}';
	@override String build({required Object buildNumber}) => 'बिल्ड ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$hi extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'नाश्ते का समय! 🍳';
	@override String get body => 'अपने नाश्ते को लॉग करना न भूलें';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$hi extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'लंच समय! 🥗';
	@override String get body => 'अपने लंच को लॉग करने का समय है';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$hi extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'डिनर का समय! 🍽️';
	@override String get body => 'अपने डिनर को लॉग करना न भूलें';
}

// Path: notifications.snack
class _Translations$notifications$snack$hi extends Translations$notifications$snack$en {
	_Translations$notifications$snack$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'नाश्ते का समय! 🍎';
	@override String get body => 'एक स्वस्थ नाश्ता करने का समय है';
}

// Path: notifications.test
class _Translations$notifications$test$hi extends Translations$notifications$test$en {
	_Translations$notifications$test$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'टेस्ट नोटिफिकेशन';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$hi extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} अनुमानित पोषण जानकारी प्रदान करता है। सटीकता आपके इनपुट और खाद्य विविधताओं पर निर्भर करती है। इसे मार्गदर्शक के रूप में उपयोग करें, निर्णायक स्रोत के रूप में नहीं। व्यक्तिगत आहार सलाह के लिए किसी पेशेवर से परामर्श करें।';
	@override late final _Translations$disclaimer$snap$portionSize$hi portionSize = _Translations$disclaimer$snap$portionSize$hi._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$hi preparationMethods = _Translations$disclaimer$snap$preparationMethods$hi._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$hi ingredients = _Translations$disclaimer$snap$ingredients$hi._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$hi databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$hi._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$hi extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'वजन अनुमान के बारे में';
	@override String get description => 'प्रोजेक्टेड वजन परिवर्तन एक सैद्धान्तिक अनुमान है जो सरल कैलोरी-इन बनाम कैलोरी-आउट मॉडल पर आधारित है। यह केवल प्रेरणादायक मार्गदर्शन के लिए है, आपके वास्तविक वजन की भविष्यवाणी के लिए नहीं।';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$hi calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$hi._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$hi biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$hi._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$hi waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$hi._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$hi professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$hi._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$hi extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get description => 'ये मेट्रिक्स आपको आपके शरीर की ऊर्जा आवश्यकता समझने में मदद करते हैं और आपके पोषण लक्ष्यों का मार्गदर्शन करते हैं।';
	@override late final _Translations$disclaimer$healthMetrics$bmr$hi bmr = _Translations$disclaimer$healthMetrics$bmr$hi._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$hi tdee = _Translations$disclaimer$healthMetrics$tdee$hi._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$hi dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$hi._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$hi extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कैलोरी व्यय अनुमान';
	@override String get description => 'जब Health Connect डेटा उपलब्ध नहीं होता, तो हम आज के जलाए गए कैलोरी का अनुमान आपके Basal Metabolic Rate (BMR) और गतिविधि स्तर (TDEE) का उपयोग करके लगाते हैं, दिन के बीते हिस्से के अनुपात के अनुसार समायोजित कर के।';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$hi howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$hi._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$hi professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$hi._(_root);
}

// Path: watch.common
class _Translations$watch$common$hi extends Translations$watch$common$en {
	_Translations$watch$common$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get back => 'वापस';
	@override String get cancel => 'रद्द करें';
	@override String get delete => 'हटाएँ';
	@override String get retry => 'पुनः प्रयास करें';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$hi extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'पोषक तत्व';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} ग्राम';
	@override String get protein => 'प्रोटीन';
	@override String get carbs => 'कार्ब्स';
	@override String get fat => 'वसा';
	@override String get fiber => 'फाइबर';
}

// Path: watch.sync
class _Translations$watch$sync$hi extends Translations$watch$sync$en {
	_Translations$watch$sync$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'फोन के साथ सिंक करें';
	@override String get syncing => 'सिंक हो रहा है…';
	@override String get synced => 'सिंक हुआ';
	@override String get syncedJustNow => 'अभी-अभी सिंक हुआ';
	@override String syncedMinutesAgo({required Object minutes}) => '${minutes}m पहले सिंक हुआ';
	@override String get failed => 'सिंक विफल';
	@override String get phoneDisconnected => 'फोन कनेक्ट नहीं है';
	@override String get tapToSync => 'सिंक करने के लिए टैप करें';
	@override String get refreshFailed => 'रिफ्रेश नहीं हो सका। अपने फोन की जाँच करें।';
	@override String get openPhone => 'अपने फोन में Calorify खोलें, फिर रिफ्रेश पर टैप करें।';
}

// Path: watch.home
class _Translations$watch$home$hi extends Translations$watch$home$en {
	_Translations$watch$home$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get today => 'आज';
	@override String calorieSummary({required Object goal, required Object consumed, required Object status}) => '${goal} में से ${consumed} कैलोरी खाईं। ${status}.';
	@override String overGoal({required Object calories}) => '${calories} लक्ष्य से ज्यादा';
	@override String remaining({required Object calories}) => '${calories} शेष';
	@override String left({required Object calories}) => '${calories} बचे';
	@override String goal({required Object calories}) => '${calories} kcal लक्ष्य';
	@override String get logMeal => 'भोजन लॉग करें';
	@override String get todayMeals => 'आज के भोजन';
	@override String todayMealsCount({required Object count}) => 'आज के भोजन, ${count}';
	@override String viewMore({required Object count}) => 'और ${count} देखें';
	@override String viewMoreSemantics({required Object count}) => '${count} और भोजन, सभी देखने के लिए टैप करें';
	@override String get noMeals => 'कोई भोजन दर्ज नहीं है';
	@override String get noMealsSemantics => 'आज कोई भोजन दर्ज नहीं हुआ';
	@override String get tapLog => 'शुरू करने के लिए \'लॉग\' पर टैप करें';
	@override String get removedFromQueue => 'भोजन को ऑफ़लाइन कतार से हटा दिया गया।';
	@override String get removedOffline => 'भोजन ऑफ़लाइन हटाया गया। यह आपके फोन के पुनः कनेक्ट होते ही सिंक हो जाएगा।';
	@override String get deleteFailed => 'भोजन हटाया नहीं जा सका';
}

// Path: watch.history
class _Translations$watch$history$hi extends Translations$watch$history$en {
	_Translations$watch$history$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आज के भोजन';
	@override String get refresh => 'भोजन ताज़ा करें';
	@override String get loadFailed => 'भोजन लोड नहीं कर पाए';
	@override String get syncFailed => 'सिंक नहीं कर सके';
	@override String get emptyTitle => 'अभी तक कोई भोजन नहीं';
	@override String get emptyMessage => 'यहाँ देखने के लिए होम से भोजन लॉग करें।';
}

// Path: watch.favorites
class _Translations$watch$favorites$hi extends Translations$watch$favorites$en {
	_Translations$watch$favorites$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पसंदीदा';
	@override String get refresh => 'पसंदीदा ताज़ा करें';
	@override String get loadFailed => 'पसंदीदा लोड नहीं कर पाए';
	@override String get syncFailed => 'सिंक नहीं कर सके';
	@override String get emptyTitle => 'अभी तक कोई पसंदीदा नहीं';
	@override String get emptyMessage => 'फोन ऐप में भोजन को स्टार करें—यहाँ एक टैप में लॉग कर पाएँगे।';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} कैलोरी। लॉग करने के लिए टैप करें।';
	@override String logged({required Object name}) => '${name} लॉग किया गया!';
	@override String savedOffline({required Object name}) => '${name} ऑफ़लाइन सहेजा गया। यह आपके फोन के पुनः कनेक्ट होते ही सिंक हो जाएगा।';
	@override String get saveFailed => 'भोजन सहेजा नहीं जा सका। कृपया फिर से प्रयास करें।';
	@override String get log => 'लॉग';
}

// Path: watch.meal
class _Translations$watch$meal$hi extends Translations$watch$meal$en {
	_Translations$watch$meal$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} कैलोरी, ${time} पर लॉग किया गया।';
	@override String get longPressDelete => 'हटाने के लिए लंबा प्रेस करें।';
	@override String get deleteTitle => 'भोजन हटाएँ?';
}

// Path: watch.voice
class _Translations$watch$voice$hi extends Translations$watch$voice$en {
	_Translations$watch$voice$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'वॉइस भोजन लॉग';
	@override String get processing => 'आपके भोजन की जाँच की जा रही है…';
	@override String get processingDescription => 'मात्रा और पोषण का अनुमान लगाया जा रहा है';
	@override String get listening => 'सुन रहा है';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'रिकॉर्डिंग रोकें';
	@override String get start => 'रिकॉर्डिंग शुरू करने के लिए टैप करें';
	@override String get starting => 'माइक्रोफोन शुरू किया जा रहा है…';
	@override String get prompt => 'टैप करें, फिर अपने भोजन का वर्णन करें';
	@override String get tapToRetry => 'पुनः प्रयास करने के लिए टैप करें';
	@override String get example => 'उदाहरण: “2 रोटी और दाल”';
	@override String get unavailable => 'वॉइस इनपुट उपलब्ध नहीं है। वॉच सेटिंग्स में माइक्रोफोन की अनुमति जांचें।';
	@override String get didNotStart => 'माइक्रोफोन शुरू नहीं हुआ। पुनः प्रयास के लिए टैप करें।';
	@override String get startFailed => 'रिकॉर्डिंग शुरू नहीं हो सकी। माइक्रोफोन अनुमतियाँ जांचें।';
	@override String get allowMicrophone => 'वॉइस से भोजन लॉग करने के लिए माइक्रोफोन एक्सेस की अनुमति दें।';
	@override String get needsConnection => 'वॉइस रिकग्निशन के लिए कनेक्शन चाहिए। पुनः प्रयास के लिए टैप करें।';
	@override String get microphoneUnavailable => 'माइक्रोफोन उपलब्ध नहीं है। पुनः प्रयास करने के लिए टैप करें।';
	@override String get microphoneBusy => 'माइक्रोफोन व्यस्त है। कुछ क्षण प्रतीक्षा करें और फिर पुनः प्रयास करें।';
	@override String get languageUnsupported => 'वॉइस इनपुट वॉच की भाषा का समर्थन नहीं करता।';
	@override String get temporarilyBusy => 'वॉइस इनपुट अस्थायी रूप से व्यस्त है। कुछ क्षण प्रतीक्षा करें और फिर पुनः प्रयास करें।';
	@override String get notRecognized => 'साफ़ नहीं सुन पाया। माइक्रोफ़ोन पर टैप करें और फिर प्रयास करें।';
	@override String get noSpeech => 'कोई भाषा नहीं मिली। फिर से कोशिश करने के लिए माइक्रोफ़ोन पर टैप करें।';
	@override String get analysisFailed => 'विश्लेषण विफल हुआ। कृपया पुनः प्रयास करें।';
	@override String get mealNotIdentified => 'उस भोजन की पहचान नहीं हो पाई। इसे अलग तरीके से वर्णन करके देखें।';
}

// Path: watch.result
class _Translations$watch$result$hi extends Translations$watch$result$en {
	_Translations$watch$result$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'भोजन विवरण';
	@override String get savedOffline => 'ऑफ़लाइन सहेजा गया';
	@override String get logged => 'लॉग किया गया!';
	@override String get mealFound => 'भोजन मिला';
	@override String get estimatedEnergy => 'अनुमानित ऊर्जा';
	@override String get logMeal => 'भोजन लॉग करें';
	@override String get logging => 'लॉग किया जा रहा है…';
	@override String get logAnother => 'एक और लॉग करें';
	@override String get goingBack => 'वापस जा रहे हैं…';
	@override String get savedOfflineMessage => 'भोजन ऑफ़लाइन सहेजा गया। यह आपके फोन के पुनः कनेक्ट होते ही सिंक हो जाएगा।';
	@override String get saveFailed => 'भोजन सहेजा नहीं जा सका। कृपया फिर से प्रयास करें।';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$hi extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्मार्ट फ़ूड पहचान';
	@override String get description => 'एक फ़ोटो लें और AI आपके भोजन को पहचानें';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$hi extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI विश्लेषण';
	@override String get description => 'अपने विवरणों से त्वरित पोषण तथ्य पाएं';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$hi extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect एकीकरण';
	@override String get description => 'बेहतर जानकारी के लिए Health Connect से कनेक्ट करें';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$hi extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'कम वजन';
	@override String get healthyWeight => 'स्वस्थ वजन';
	@override String get overweight => 'अधिक वजन';
	@override String get obese => 'मोटापा';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$hi extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'हम आपकी मदद करेंगे एक संतुलित वजन तक पहुँचने के लिए पौष्टिक-घने भोजन के साथ एक स्वस्थ योजना बनाने में।';
	@override String get healthy => 'शाबाश! आप स्वस्थ सीमा में हैं। हम आपकी ऊर्जा और तंदरुस्ती बनाए रखने में मदद करेंगे।';
	@override String overweight({required Object appLabel}) => '${appLabel} AI-संचालित ट्रैकिंग से आपका सफर सरल बनाएगा ताकि आप आराम से अपना लक्ष्य प्राप्त कर सकें।';
	@override String get obese => 'हम व्यक्तिगत मार्गदर्शन और स्थायी रणनीतियों के साथ आपके स्वास्थ्य लक्ष्यों में आपका समर्थन करने के लिए यहाँ हैं।';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$hi extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'स्वचालित कैलोरी ट्रैकिंग';
	@override String get description => 'अपने फिटनेस ऐप्स से जलाए गए कैलोरी को ट्रैक करें';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$hi extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'खर्च हुई कैलोरी';
	@override String get description => 'Health Connect से आज खर्च हुई कुल कैलोरी पढ़ें';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$hi extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रगति इनसाइट्स';
	@override String get description => 'अपने स्वास्थ्य रुझानों के बारे में विस्तृत जानकारी पाएं';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$hi extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'लॉग किए गए भोजन साझा करें';
	@override String get description => 'Calorify में लॉग किए गए भोजन Health Connect में लिखें';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$hi extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'बिना रुकावट एकीकरण';
	@override String get description => 'अपने पसंदीदा स्वास्थ्य ऐप्स से डेटा सिंक करें';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$hi extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'नियंत्रण आपके हाथ में है';
	@override String get description => 'दोनों में से कोई भी अनुमति चुनें और किसी भी समय एक्सेस बदलें';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$hi extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$healthProfile$hi extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$goalLifestyle$hi extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$weightGoals$loseWeight$hi extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'वजन घटाएँ';
	@override String get description => 'वजन घटाने के लिए कैलोरी घाटा बनाएं';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$hi extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'वजन बनाए रखें';
	@override String get description => 'अपना वर्तमान वजन बनाए रखें';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$hi extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'वजन बढ़ाएँ';
	@override String get description => 'वजन बढ़ाने के लिए कैलोरी अधिशेष बनाएं';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$hi extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'निष्क्रिय';
	@override String get description => 'बिल्कुल या बहुत कम व्यायाम';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$hi extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'हल्का सक्रिय';
	@override String get description => 'हल्का व्यायाम 1-3 दिन/सप्ताह';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$hi extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'मध्यम सक्रिय';
	@override String get description => 'मध्यम व्यायाम 3-5 दिन/सप्ताह';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$hi extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'बहुत सक्रिय';
	@override String get description => 'कठोर व्यायाम 6-7 दिन/सप्ताह';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$hi extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get name => 'अत्यधिक सक्रिय';
	@override String get description => 'बहुत कठोर व्यायाम, शारीरिक काम';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$hi extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect उपलब्ध नहीं';
	@override String get description => 'यह डिवाइस पर Health Connect उपलब्ध नहीं है। कृपया Play Store से Health Connect इंस्टॉल करें (Android 9+) या Android 14+ पर अपडेट करें।';
	@override String get unsupportedDescription => 'यह डिवाइस Health Connect का समर्थन नहीं करता।';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$hi extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect पर ध्यान देना ज़रूरी है';
	@override String get description => 'एक्सेस प्रबंधित करने से पहले Health Connect इंस्टॉल या अपडेट करें।';
	@override String get action => 'इंस्टॉल या अपडेट करें';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$hi extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अनुमतियाँ';
	@override String get description => 'Health Connect एकीकरण प्रदान करने के लिए निम्नलिखित अनुमतियाँ मांगी जा रही हैं:';
	@override String get granted => 'अनुमोदित';
	@override String get notGranted => 'अनुमोदित नहीं';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$hi caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$hi._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$hi nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$hi._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$hi nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$hi._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$hi extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'हमारी कहानी';
	@override String content({required Object appLabel}) => '${appLabel} एक साधारण निराशा से जन्मा: ज़्यादातर कैलोरी ट्रैकिंग ऐप या तो अत्यधिक जटिल हैं, लगातार मैन्युअल इनपुट माँगते हैं, ऊँची सदस्यता फीस लेते हैं, या प्राइवेसी से समझौता करते हैं।\n\nएक सोलो डेवलपर के रूप में, मैंने कुछ सरल और निष्पक्ष बनाना चाहा — एक ऐसा ऐप जो मेहनत कम करने के लिए AI का उपयोग करे, तेज़ और मुफ्त रहे, और आपके स्वास्थ्य डेटा का सम्मान करे।\n\n${appLabel} वह ऐप है जिसकी मैंने चाह थी: कोई अकाउंट नहीं, कोई ट्रैकिंग नहीं, कोई विज्ञापन नहीं — सिर्फ़ स्पष्ट, व्यावहारिक इनसाइट और आपके स्वास्थ्य लक्ष्य।';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$hi extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
class _Translations$settings$about$developer$hi extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'एक एकल डेवलपर द्वारा निर्मित';
	@override String description({required Object appLabel}) => '${appLabel} एक अकेले डेवलपर द्वारा बनाया और बनाए रखा जाता है जो शांत, प्राइवेसी-सम्बद्ध स्वास्थ्य सॉफ़्टवेयर बनाने पर केंद्रित है।\n\nफीडबैक व्यक्तिगत रूप से पढ़ा जाता है और ऐप की दिशा को आकार देने में मदद करता है।';
	@override String get website => 'वेबसाइट';
	@override String get email => 'ईमेल';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$hi extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} का आनंद ले रहे हैं?';
	@override String description({required Object appLabel}) => 'आपका फीडबैक ${appLabel} को सभी के लिए बेहतर बनाने में मदद करता है।';
	@override String get rateApp => 'Play Store पर रेट करें';
	@override String get sendFeedback => 'फीडबैक भेजें';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$hi extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पोरशन साइज';
	@override String get description => 'अनुमानों की सटीकता आपके द्वारा सही पोरशन साइज के आकलन पर बहुत निर्भर करती है।';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$hi extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'तैयारी की विधियाँ';
	@override String description({required Object appLabel}) => 'खाना पकाने की विधियाँ खाद्य के पोषण सामग्री को काफी बदल सकती हैं। ${appLabel} के अनुमान हमेशा इन परिवर्तनों को ध्यान में नहीं रख सकते हैं।';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$hi extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सामग्री';
	@override String get description => 'कई छिपी हुई सामग्रियों वाले जटिल व्यंजन कम सटीक अनुमान दे सकते हैं।';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$hi extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'डेटाबेस सीमाएँ';
	@override String description({required Object appLabel}) => '${appLabel} का फ़ूड डेटाबेस व्यापक है परन्तु हर एक खाद्य आइटम या विविधता शामिल न हो सकती है।';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$hi extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कैलोरी सटीकता';
	@override String get description => 'यह अनुमान आपके ट्रैक किए गए कैलोरी इनटेक और व्यय के जितना सटीक होगा उतना ही सही होगा। गलत लॉगिंग अनुचित प्रक्षेपण देगी।';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$hi extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'जैविक कारक';
	@override String description({required Object appLabel}) => 'वास्तविक वजन घटाना/बढ़ना चयापचय, हार्मोन, नींद, तनाव, हाइड्रेशन और अन्य व्यक्तिगत कारकों से प्रभावित होता है जिन्हें ${appLabel} माप नहीं सकता।';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$hi extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'जल वजन और उतार-चढ़ाव';
	@override String get description => 'सामान्य दैनिक वजन पानी के अस्थायी संचयन, पाचन और समय के कारण काफी बदल सकता है। यह अनुमान इन दैनिक परिवर्तनों को ध्यान में नहीं रखता।';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$hi extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पेशेवर मार्गदर्शन';
	@override String get description => 'इस अनुमान का उपयोग चिकित्सा निर्णय लेने के लिए न करें। व्यक्तिगत वजन प्रबंधन सलाह के लिए हमेशा किसी स्वास्थ्य पेशेवर या पंजीकृत आहार विशेषज्ञ से परामर्श करें।';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$hi extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) वे कैलोरी हैं जो आपका शरीर आराम की स्थिति में बुनियादी कार्य (जैसे साँस लेना और परिसंचरण) बनाए रखने के लिए जलाता है। BMR आपकी आयु, जेंडर, ऊँचाई और वजन पर निर्भर करता है। उच्च BMR का अर्थ है कि आपका शरीर आराम में स्वाभाविक रूप से अधिक कैलोरी जलाता है, अक्सर अधिक मांसपेशी द्रव्यमान, कम आयु, या पुरुष होने के कारण। कम BMR आम तौर पर कम मांसपेशी द्रव्यमान, उच्च आयु, या महिला होने को संकेत करता है।';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$hi extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) वे कुल कैलोरी हैं जो आप प्रतिदिन जलाते हैं, जिसमें आपका BMR और शारीरिक गतिविधि व दैनिक गति से जलने वाली कैलोरी शामिल है। TDEE आपके BMR और गतिविधि स्तर पर निर्भर करता है। उच्च TDEE का अर्थ है कि आप कुल मिलाकर अधिक कैलोरी जलाते हैं, आमतौर पर अधिक सक्रिय होने या उच्च BMR होने के कारण। कम TDEE कम दैनिक गतिविधि या कम BMR का संकेत देता है।';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$hi extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'दैनिक लक्ष्य';
	@override String get description => 'दैनिक लक्ष्य आपका TDEE और वजन लक्ष्य के आधार पर सुझाई गई दैनिक कैलोरी खपत है। वजन घटाने के लिए, आप TDEE से कम कैलोरी लेते हैं। वजन बनाए रखने के लिए, आप TDEE से मेल खाते हैं। वजन बढ़ाने के लिए, आप TDEE से अधिक कैलोरी लेते हैं। यह आपको स्वास्थ्यवर्धक गति से वांछित वजन परिवर्तन प्राप्त करने में मदद करता है।';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$hi extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अनुमान कैसे गणना किया गया';
	@override String get description => 'हम आपका TDEE (आपकी प्रोफ़ाइल के आधार पर) गणना करते हैं और दिन के बीते हिस्से (घंटे + मिनट) / 24 से गुणा करके अब तक जलाए गए कैलोरी का अनुमान लगाते हैं।';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$hi extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पेशेवर मार्गदर्शन';
	@override String get description => 'इस अनुमान का उपयोग चिकित्सा निर्णय लेने के लिए न करें। व्यक्तिगत वजन प्रबंधन सलाह के लिए हमेशा किसी स्वास्थ्य पेशेवर या पंजीकृत आहार विशेषज्ञ से परामर्श करें।';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$hi extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कुल जलाए गए कैलोरी पढ़ें';
	@override String get description => 'ऐप को Health Connect से आपके कुल जलाए गए कैलोरी पढ़ने की अनुमति देता है।';
	@override String get usage => 'यह अनुमति ऐप में आपका दैनिक कैलोरी बर्न दिखाने के लिए उपयोग की जाती है, जिससे आप दिन भर की कुल ऊर्जा व्यय समझ सकें।';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$hi extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$hi._(TranslationsHi root) : this._root = root, super.internal(root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पोषण डेटा पढ़ें';
	@override String get description => 'ऐप को Health Connect से पोषण डेटा पढ़ने की अनुमति देता है।';
	@override String get usage => 'यह अनुमति ऐप को अन्य कनेक्ट किए गए ऐप्स द्वारा लॉग किए गए पोषण जानकारी पढ़ने की अनुमति देती है, जिससे आपके पोषण का समग्र दृश्य मिलता है।';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$hi extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$hi._(TranslationsHi root) : this._root = root, super.internal(root);

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
			'home.connectHealth.install' => 'इंस्टॉल करें',
			'home.connectHealth.dataUseDescription' => 'अपने लक्ष्य में खर्च हुई कैलोरी का उपयोग करें और लॉग किए गए भोजन साझा करें',
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
			'meal.questionFlow.countQuestion' => 'मात्रा चुनें',
			'meal.questionFlow.itemSizeQuestion' => 'आइटम का आकार चुनें',
			'meal.questionFlow.portionSizeQuestion' => 'भाग का आकार चुनें',
			'meal.questionFlow.option6plus' => '6 या अधिक',
			'meal.questionFlow.optionSmall' => 'छोटा',
			'meal.questionFlow.optionRegular' => 'नियमित',
			'meal.questionFlow.optionLarge' => 'बड़ा',
			'meal.questionFlow.optionThin' => 'पतला',
			'meal.questionFlow.optionThick' => 'मोटा',
			'meal.questionFlow.optionMini' => 'मिनी',
			'meal.questionFlow.optionStuffed' => 'भरा हुआ',
			'meal.questionFlow.optionHeavy' => 'भारी',
			'meal.questionFlow.optionSmaller' => 'छोटा',
			'meal.questionFlow.optionTypical' => 'विशिष्ट',
			'meal.questionFlow.optionLarger' => 'बड़ा',
			'meal.analysis.title' => 'आपके भोजन का विश्लेषण किया जा रहा है',
			'meal.analysis.stepStarted' => 'शुरू किया जा रहा है…',
			'meal.analysis.stepDecomposition' => 'आपके भोजन को समझना…',
			'meal.analysis.stepIngredients' => 'सामग्री को पोषण डेटा से मेल करना…',
			'meal.analysis.stepUncertainty' => 'विश्वास की जाँच कर रहे हैं…',
			'meal.analysis.stepMealTypeQuestion' => 'लगभग पूरा…',
			'meal.analysis.stepResult' => 'आपका परिणाम अंतिम रूप दे रहे हैं…',
			'meal.analysis.stepError' => 'कुछ गलत हुआ',
			'meal.analysis.noFoodTip' => 'कोई भोजन नहीं मिला। कोई दूसरी तस्वीर या विवरण आज़माएँ।',
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
			_ => null,
		} ?? switch (path) {
			'notifications.lunch.body' => 'अपने लंच को लॉग करने का समय है',
			'notifications.dinner.title' => 'डिनर का समय! 🍽️',
			'notifications.dinner.body' => 'अपने डिनर को लॉग करना न भूलें',
			'notifications.snack.title' => 'नाश्ते का समय! 🍎',
			'notifications.snack.body' => 'एक स्वस्थ नाश्ता करने का समय है',
			'notifications.test.title' => 'टेस्ट नोटिफिकेशन',
			'login.title' => 'लॉगिन',
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
			'watch.appTitle' => 'Calorify वॉच',
			'watch.common.back' => 'वापस',
			'watch.common.cancel' => 'रद्द करें',
			'watch.common.delete' => 'हटाएँ',
			'watch.common.retry' => 'पुनः प्रयास करें',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'पोषक तत्व',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} ग्राम',
			'watch.nutrition.protein' => 'प्रोटीन',
			'watch.nutrition.carbs' => 'कार्ब्स',
			'watch.nutrition.fat' => 'वसा',
			'watch.nutrition.fiber' => 'फाइबर',
			'watch.sync.syncWithPhone' => 'फोन के साथ सिंक करें',
			'watch.sync.syncing' => 'सिंक हो रहा है…',
			'watch.sync.synced' => 'सिंक हुआ',
			'watch.sync.syncedJustNow' => 'अभी-अभी सिंक हुआ',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => '${minutes}m पहले सिंक हुआ',
			'watch.sync.failed' => 'सिंक विफल',
			'watch.sync.phoneDisconnected' => 'फोन कनेक्ट नहीं है',
			'watch.sync.tapToSync' => 'सिंक करने के लिए टैप करें',
			'watch.sync.refreshFailed' => 'रिफ्रेश नहीं हो सका। अपने फोन की जाँच करें।',
			'watch.sync.openPhone' => 'अपने फोन में Calorify खोलें, फिर रिफ्रेश पर टैप करें।',
			'watch.home.today' => 'आज',
			'watch.home.calorieSummary' => ({required Object goal, required Object consumed, required Object status}) => '${goal} में से ${consumed} कैलोरी खाईं। ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} लक्ष्य से ज्यादा',
			'watch.home.remaining' => ({required Object calories}) => '${calories} शेष',
			'watch.home.left' => ({required Object calories}) => '${calories} बचे',
			'watch.home.goal' => ({required Object calories}) => '${calories} kcal लक्ष्य',
			'watch.home.logMeal' => 'भोजन लॉग करें',
			'watch.home.todayMeals' => 'आज के भोजन',
			'watch.home.todayMealsCount' => ({required Object count}) => 'आज के भोजन, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'और ${count} देखें',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} और भोजन, सभी देखने के लिए टैप करें',
			'watch.home.noMeals' => 'कोई भोजन दर्ज नहीं है',
			'watch.home.noMealsSemantics' => 'आज कोई भोजन दर्ज नहीं हुआ',
			'watch.home.tapLog' => 'शुरू करने के लिए \'लॉग\' पर टैप करें',
			'watch.home.removedFromQueue' => 'भोजन को ऑफ़लाइन कतार से हटा दिया गया।',
			'watch.home.removedOffline' => 'भोजन ऑफ़लाइन हटाया गया। यह आपके फोन के पुनः कनेक्ट होते ही सिंक हो जाएगा।',
			'watch.home.deleteFailed' => 'भोजन हटाया नहीं जा सका',
			'watch.history.title' => 'आज के भोजन',
			'watch.history.refresh' => 'भोजन ताज़ा करें',
			'watch.history.loadFailed' => 'भोजन लोड नहीं कर पाए',
			'watch.history.syncFailed' => 'सिंक नहीं कर सके',
			'watch.history.emptyTitle' => 'अभी तक कोई भोजन नहीं',
			'watch.history.emptyMessage' => 'यहाँ देखने के लिए होम से भोजन लॉग करें।',
			'watch.favorites.title' => 'पसंदीदा',
			'watch.favorites.refresh' => 'पसंदीदा ताज़ा करें',
			'watch.favorites.loadFailed' => 'पसंदीदा लोड नहीं कर पाए',
			'watch.favorites.syncFailed' => 'सिंक नहीं कर सके',
			'watch.favorites.emptyTitle' => 'अभी तक कोई पसंदीदा नहीं',
			'watch.favorites.emptyMessage' => 'फोन ऐप में भोजन को स्टार करें—यहाँ एक टैप में लॉग कर पाएँगे।',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} कैलोरी। लॉग करने के लिए टैप करें।',
			'watch.favorites.logged' => ({required Object name}) => '${name} लॉग किया गया!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} ऑफ़लाइन सहेजा गया। यह आपके फोन के पुनः कनेक्ट होते ही सिंक हो जाएगा।',
			'watch.favorites.saveFailed' => 'भोजन सहेजा नहीं जा सका। कृपया फिर से प्रयास करें।',
			'watch.favorites.log' => 'लॉग',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} कैलोरी, ${time} पर लॉग किया गया।',
			'watch.meal.longPressDelete' => 'हटाने के लिए लंबा प्रेस करें।',
			'watch.meal.deleteTitle' => 'भोजन हटाएँ?',
			'watch.voice.title' => 'वॉइस भोजन लॉग',
			'watch.voice.processing' => 'आपके भोजन की जाँच की जा रही है…',
			'watch.voice.processingDescription' => 'मात्रा और पोषण का अनुमान लगाया जा रहा है',
			'watch.voice.listening' => 'सुन रहा है',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'रिकॉर्डिंग रोकें',
			'watch.voice.start' => 'रिकॉर्डिंग शुरू करने के लिए टैप करें',
			'watch.voice.starting' => 'माइक्रोफोन शुरू किया जा रहा है…',
			'watch.voice.prompt' => 'टैप करें, फिर अपने भोजन का वर्णन करें',
			'watch.voice.tapToRetry' => 'पुनः प्रयास करने के लिए टैप करें',
			'watch.voice.example' => 'उदाहरण: “2 रोटी और दाल”',
			'watch.voice.unavailable' => 'वॉइस इनपुट उपलब्ध नहीं है। वॉच सेटिंग्स में माइक्रोफोन की अनुमति जांचें।',
			'watch.voice.didNotStart' => 'माइक्रोफोन शुरू नहीं हुआ। पुनः प्रयास के लिए टैप करें।',
			'watch.voice.startFailed' => 'रिकॉर्डिंग शुरू नहीं हो सकी। माइक्रोफोन अनुमतियाँ जांचें।',
			'watch.voice.allowMicrophone' => 'वॉइस से भोजन लॉग करने के लिए माइक्रोफोन एक्सेस की अनुमति दें।',
			'watch.voice.needsConnection' => 'वॉइस रिकग्निशन के लिए कनेक्शन चाहिए। पुनः प्रयास के लिए टैप करें।',
			'watch.voice.microphoneUnavailable' => 'माइक्रोफोन उपलब्ध नहीं है। पुनः प्रयास करने के लिए टैप करें।',
			'watch.voice.microphoneBusy' => 'माइक्रोफोन व्यस्त है। कुछ क्षण प्रतीक्षा करें और फिर पुनः प्रयास करें।',
			'watch.voice.languageUnsupported' => 'वॉइस इनपुट वॉच की भाषा का समर्थन नहीं करता।',
			'watch.voice.temporarilyBusy' => 'वॉइस इनपुट अस्थायी रूप से व्यस्त है। कुछ क्षण प्रतीक्षा करें और फिर पुनः प्रयास करें।',
			'watch.voice.notRecognized' => 'साफ़ नहीं सुन पाया। माइक्रोफ़ोन पर टैप करें और फिर प्रयास करें।',
			'watch.voice.noSpeech' => 'कोई भाषा नहीं मिली। फिर से कोशिश करने के लिए माइक्रोफ़ोन पर टैप करें।',
			'watch.voice.analysisFailed' => 'विश्लेषण विफल हुआ। कृपया पुनः प्रयास करें।',
			'watch.voice.mealNotIdentified' => 'उस भोजन की पहचान नहीं हो पाई। इसे अलग तरीके से वर्णन करके देखें।',
			'watch.result.title' => 'भोजन विवरण',
			'watch.result.savedOffline' => 'ऑफ़लाइन सहेजा गया',
			'watch.result.logged' => 'लॉग किया गया!',
			'watch.result.mealFound' => 'भोजन मिला',
			'watch.result.estimatedEnergy' => 'अनुमानित ऊर्जा',
			'watch.result.logMeal' => 'भोजन लॉग करें',
			'watch.result.logging' => 'लॉग किया जा रहा है…',
			'watch.result.logAnother' => 'एक और लॉग करें',
			'watch.result.goingBack' => 'वापस जा रहे हैं…',
			'watch.result.savedOfflineMessage' => 'भोजन ऑफ़लाइन सहेजा गया। यह आपके फोन के पुनः कनेक्ट होते ही सिंक हो जाएगा।',
			'watch.result.saveFailed' => 'भोजन सहेजा नहीं जा सका। कृपया फिर से प्रयास करें।',
			'common.betaTag' => 'बीटा',
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
