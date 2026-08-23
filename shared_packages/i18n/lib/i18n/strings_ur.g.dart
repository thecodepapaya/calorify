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
class TranslationsUr extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsUr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ur,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ur>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsUr _root = this; // ignore: unused_field

	@override 
	TranslationsUr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsUr(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'اردو';
	@override String get flag => '🇵🇰';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$ur errors = _Translations$errors$ur._(_root);
	@override late final _Translations$onboarding$ur onboarding = _Translations$onboarding$ur._(_root);
	@override late final _Translations$tabs$ur tabs = _Translations$tabs$ur._(_root);
	@override late final _Translations$home$ur home = _Translations$home$ur._(_root);
	@override late final _Translations$history$ur history = _Translations$history$ur._(_root);
	@override late final _Translations$meal$ur meal = _Translations$meal$ur._(_root);
	@override late final _Translations$favorites$ur favorites = _Translations$favorites$ur._(_root);
	@override late final _Translations$profile$ur profile = _Translations$profile$ur._(_root);
	@override late final _Translations$healthScore$ur healthScore = _Translations$healthScore$ur._(_root);
	@override late final _Translations$editProfile$ur editProfile = _Translations$editProfile$ur._(_root);
	@override late final _Translations$settings$ur settings = _Translations$settings$ur._(_root);
	@override late final _Translations$reminders$ur reminders = _Translations$reminders$ur._(_root);
	@override late final _Translations$notifications$ur notifications = _Translations$notifications$ur._(_root);
	@override late final _Translations$login$ur login = _Translations$login$ur._(_root);
	@override late final _Translations$disclaimer$ur disclaimer = _Translations$disclaimer$ur._(_root);
	@override late final _Translations$localNutritionPhase4$ur localNutritionPhase4 = _Translations$localNutritionPhase4$ur._(_root);
	@override late final _Translations$common$ur common = _Translations$common$ur._(_root);
	@override late final _Translations$feedbackRating$ur feedbackRating = _Translations$feedbackRating$ur._(_root);
	@override late final _Translations$health$ur health = _Translations$health$ur._(_root);
}

// Path: errors
class _Translations$errors$ur extends Translations$errors$en {
	_Translations$errors$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'آپ نے بہت زیادہ درخواستیں کی ہیں۔ براہِ کرم دوبارہ کوشش کرنے سے پہلے تھوڑا انتظار کریں۔';
	@override String get networkError => 'نیٹ ورک میں خرابی۔ براہِ کرم اپنا انٹرنیٹ کنکشن چیک کریں۔';
	@override String get unknownError => 'کچھ غلط ہو گیا۔ براہِ کرم بعد میں دوبارہ کوشش کریں۔';
	@override String get loadingProfileData => 'پروفائل ڈیٹا لوڈ کرنے میں خرابی';
	@override String get somethingWentWrong => 'کچھ غلط ہو گیا۔';
	@override String get retry => 'دوبارہ کوشش کریں';
}

// Path: onboarding
class _Translations$onboarding$ur extends Translations$onboarding$en {
	_Translations$onboarding$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} میں خوش آمدید';
	@override String get subtitle => 'آپ کا ذاتی غذائیت کا ساتھی، AI کی طاقت کے ساتھ';
	@override String get getStarted => 'شروع کریں';
	@override late final _Translations$onboarding$features$ur features = _Translations$onboarding$features$ur._(_root);
	@override late final _Translations$onboarding$gender$ur gender = _Translations$onboarding$gender$ur._(_root);
	@override late final _Translations$onboarding$height$ur height = _Translations$onboarding$height$ur._(_root);
	@override late final _Translations$onboarding$weight$ur weight = _Translations$onboarding$weight$ur._(_root);
	@override late final _Translations$onboarding$age$ur age = _Translations$onboarding$age$ur._(_root);
	@override late final _Translations$onboarding$bmiScale$ur bmiScale = _Translations$onboarding$bmiScale$ur._(_root);
	@override late final _Translations$onboarding$weightGoal$ur weightGoal = _Translations$onboarding$weightGoal$ur._(_root);
	@override late final _Translations$onboarding$activityLevel$ur activityLevel = _Translations$onboarding$activityLevel$ur._(_root);
	@override late final _Translations$onboarding$healthConnect$ur healthConnect = _Translations$onboarding$healthConnect$ur._(_root);
	@override late final _Translations$onboarding$reinforcement$ur reinforcement = _Translations$onboarding$reinforcement$ur._(_root);
}

// Path: tabs
class _Translations$tabs$ur extends Translations$tabs$en {
	_Translations$tabs$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'ڈیش بورڈ';
	@override String get history => 'ہسٹری';
}

// Path: home
class _Translations$home$ur extends Translations$home$en {
	_Translations$home$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$ur aiSummary = _Translations$home$aiSummary$ur._(_root);
	@override late final _Translations$home$dailyGoal$ur dailyGoal = _Translations$home$dailyGoal$ur._(_root);
	@override late final _Translations$home$dailySummary$ur dailySummary = _Translations$home$dailySummary$ur._(_root);
	@override late final _Translations$home$intakeProgress$ur intakeProgress = _Translations$home$intakeProgress$ur._(_root);
	@override late final _Translations$home$intakeHistory$ur intakeHistory = _Translations$home$intakeHistory$ur._(_root);
	@override late final _Translations$home$mealLog$ur mealLog = _Translations$home$mealLog$ur._(_root);
	@override late final _Translations$home$mealDescription$ur mealDescription = _Translations$home$mealDescription$ur._(_root);
	@override late final _Translations$home$favoriteMeals$ur favoriteMeals = _Translations$home$favoriteMeals$ur._(_root);
	@override late final _Translations$home$mealSnap$ur mealSnap = _Translations$home$mealSnap$ur._(_root);
	@override late final _Translations$home$connectHealth$ur connectHealth = _Translations$home$connectHealth$ur._(_root);
}

// Path: history
class _Translations$history$ur extends Translations$history$en {
	_Translations$history$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'کوئی کھانا ریکارڈ نہیں ہوا';
	@override String get emptyMessage => 'اپنے آخری کھانے کی تصویر لے کر یہاں لاگ کریں۔';
	@override String get today => 'آج';
	@override String get yesterday => 'گزشتہ روز';
}

// Path: meal
class _Translations$meal$ur extends Translations$meal$en {
	_Translations$meal$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'اوہ نہیں!';
	@override String get delete => 'حذف کریں';
	@override String get editMeal => 'کھانے میں ترمیم کریں';
	@override String get addMeal => 'کھانا شامل کریں';
	@override String get saveMeal => 'کھانا محفوظ کریں';
	@override String get save => 'محفوظ کریں';
	@override String get mealName => 'کھانے کا نام';
	@override String get mealNameHint => 'مثلاً، آملیٹ کے ساتھ ٹوسٹ';
	@override String get nameRequired => 'محفوظ کرنے سے پہلے کھانے کا نام درج کریں۔';
	@override String get mealQuantity => 'کھانے کی مقدار';
	@override String get mealQuantityHint => 'مثلاً، 1 پیالہ، 2 سلائس';
	@override String get timeOfMeal => 'کھانے کا وقت';
	@override String get timeOfMealHint => 'وہ وقت منتخب کریں جب آپ نے کھایا';
	@override String get mealType => 'کھانے کی قسم';
	@override late final _Translations$meal$nutrition$ur nutrition = _Translations$meal$nutrition$ur._(_root);
	@override late final _Translations$meal$deleteConfirmation$ur deleteConfirmation = _Translations$meal$deleteConfirmation$ur._(_root);
	@override String get addedToLog => 'کھانا آپ کے لاگ میں شامل کر دیا گیا!';
	@override String couldNotAdd({required Object error}) => 'کھانا شامل نہیں کیا جا سکا: ${error}';
	@override String get savedSuccessfully => 'کھانا کامیابی سے شامل ہو گیا!';
	@override String get updatedSuccessfully => 'کھانے میں کامیابی سے تازہ کاری ہوئی!';
	@override String errorSaving({required Object error}) => 'کھانا محفوظ کرنے میں خرابی: ${error}';
	@override String get removedFromFavorites => 'پسندیدہ سے ہٹا دیا گیا!';
	@override String get savedAsFavorite => 'کھانا پسندیدہ کے طور پر محفوظ کیا گیا!';
	@override String get unfavorite => 'پسندیدہ ختم کریں';
	@override String couldNotUpdateFavorite({required Object error}) => 'پسندیدہ اپ ڈیٹ نہیں ہو سکا: ${error}';
	@override String get feedbackThanks => 'رائے دینے کا شکریہ!';
	@override String get reanalysisUpdated => 'آپ کی رائے کی بنیاد پر کھانے کا تجزیہ اپ ڈیٹ کیا گیا۔';
	@override String failedToProcess({required Object error}) => 'عمل کرنے میں ناکامی: ${error}';
	@override String failedToProcessImage({required Object error}) => 'تصویر پروسس کرنے میں ناکامی: ${error}';
	@override String errorCompressingImage({required Object error}) => 'تصویر کمپریس کرنے میں خرابی: ${error}';
	@override String get failedToSave => 'ڈیٹا محفوظ کرنے میں ناکامی۔ براہِ کرم دوبارہ کوشش کریں۔';
	@override String get skip => 'اسکِپ کریں';
	@override late final _Translations$meal$questionFlow$ur questionFlow = _Translations$meal$questionFlow$ur._(_root);
	@override late final _Translations$meal$analysis$ur analysis = _Translations$meal$analysis$ur._(_root);
	@override late final _Translations$meal$localInference$ur localInference = _Translations$meal$localInference$ur._(_root);
	@override late final _Translations$meal$feedback$ur feedback = _Translations$meal$feedback$ur._(_root);
}

// Path: favorites
class _Translations$favorites$ur extends Translations$favorites$en {
	_Translations$favorites$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پسندیدہ';
	@override String get empty => 'ابھی کوئی پسندیدہ کھانا نہیں ہے۔';
	@override String get searchPlaceholder => 'پسندیدہ کھانے تلاش کریں';
	@override String get searchEmptyTitle => 'آپ کے تلاش سے کوئی پسندیدہ میل نہیں ملا';
	@override String get searchEmptySubtitle => 'کسی مختلف کھانے کا نام، مقدار، یا قسم آزمائیں۔';
	@override String get sortLabel => 'پسندیدہ ترتیب دیں';
	@override String get undo => 'واپس کریں';
	@override String removed({required Object name}) => '${name} کو پسندیدہ سے ہٹا دیا گیا';
	@override late final _Translations$favorites$sortOptions$ur sortOptions = _Translations$favorites$sortOptions$ur._(_root);
}

// Path: profile
class _Translations$profile$ur extends Translations$profile$en {
	_Translations$profile$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروفائل';
	@override String get noProfileData => 'کوئی پروفائل ڈیٹا نہیں ملا';
	@override String get yourProfile => 'آپ کا پروفائل';
	@override String get viewAndManage => 'اپنی صحت کی معلومات دیکھیں اور منظم کریں';
	@override late final _Translations$profile$sections$ur sections = _Translations$profile$sections$ur._(_root);
	@override String get gender => 'صنف';
	@override String get height => 'قد';
	@override String get weight => 'وزن';
	@override String get age => 'عمر';
	@override String get weightGoal => 'وزن کا ہدف';
	@override String get targetWeight => 'ہدف وزن';
	@override String get activityLevel => 'سرگرمی کی سطح';
	@override String get healthMetrics => 'صحت کے میٹرکس';
	@override String get notSet => 'متقرر نہیں';
	@override String get years => 'سال';
	@override String get updatedSuccessfully => 'پروفائل کامیابی سے اپ ڈیٹ ہو گیا!';
	@override late final _Translations$profile$calculatedValues$ur calculatedValues = _Translations$profile$calculatedValues$ur._(_root);
}

// Path: healthScore
class _Translations$healthScore$ur extends Translations$healthScore$en {
	_Translations$healthScore$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'صحت اسکور';
	@override String get whyThisScore => 'یہ اسکور کیوں؟';
	@override String get note => 'یہ اسکور AI کی ایک تخمینی درجہ بندی ہے جس کی بنیاد شناخت شدہ اجزاء اور غذائی کثافت ہے۔ ذاتی مشورے کے لیے ہمیشہ کسی ماہر سے رجوع کریں۔';
	@override String get unhealthy => 'غیر صحت مند';
	@override String get healthy => 'صحت مند';
	@override String get neutral => 'درمیانی';
}

// Path: editProfile
class _Translations$editProfile$ur extends Translations$editProfile$en {
	_Translations$editProfile$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروفائل ترمیم کریں';
	@override late final _Translations$editProfile$sections$ur sections = _Translations$editProfile$sections$ur._(_root);
	@override String get gender => 'صنف';
	@override String get dateOfBirth => 'تاریخ پیدائش';
	@override String get height => 'قد';
	@override String get weight => 'وزن';
	@override String get weightGoal => 'وزن کا ہدف';
	@override String get activityLevel => 'سرگرمی کی سطح';
	@override String get metric => 'میٹرک';
	@override String get imperial => 'امپیریل';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'پاؤنڈ';
	@override String get metricCm => 'میٹرک (cm)';
	@override String get imperialFtIn => 'امپیریل (ft/in)';
	@override String get metricKg => 'میٹرک (kg)';
	@override String get imperialLbs => 'امپیریل (lbs)';
	@override late final _Translations$editProfile$genders$ur genders = _Translations$editProfile$genders$ur._(_root);
	@override late final _Translations$editProfile$weightGoals$ur weightGoals = _Translations$editProfile$weightGoals$ur._(_root);
	@override late final _Translations$editProfile$activityLevels$ur activityLevels = _Translations$editProfile$activityLevels$ur._(_root);
}

// Path: settings
class _Translations$settings$ur extends Translations$settings$en {
	_Translations$settings$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ترتیبات';
	@override late final _Translations$settings$sections$ur sections = _Translations$settings$sections$ur._(_root);
	@override late final _Translations$settings$editProfile$ur editProfile = _Translations$settings$editProfile$ur._(_root);
	@override late final _Translations$settings$language$ur language = _Translations$settings$language$ur._(_root);
	@override late final _Translations$settings$heightUnit$ur heightUnit = _Translations$settings$heightUnit$ur._(_root);
	@override late final _Translations$settings$weightUnit$ur weightUnit = _Translations$settings$weightUnit$ur._(_root);
	@override late final _Translations$settings$mealReminders$ur mealReminders = _Translations$settings$mealReminders$ur._(_root);
	@override late final _Translations$settings$localInference$ur localInference = _Translations$settings$localInference$ur._(_root);
	@override late final _Translations$settings$theme$ur theme = _Translations$settings$theme$ur._(_root);
	@override late final _Translations$settings$sendFeedback$ur sendFeedback = _Translations$settings$sendFeedback$ur._(_root);
	@override late final _Translations$settings$exportMealHistory$ur exportMealHistory = _Translations$settings$exportMealHistory$ur._(_root);
	@override late final _Translations$settings$clearAllData$ur clearAllData = _Translations$settings$clearAllData$ur._(_root);
	@override late final _Translations$settings$debugOptions$ur debugOptions = _Translations$settings$debugOptions$ur._(_root);
	@override String get developerModeEnabled => 'ڈیولپر موڈ فعال ہو گیا!';
	@override late final _Translations$settings$healthConnect$ur healthConnect = _Translations$settings$healthConnect$ur._(_root);
	@override late final _Translations$settings$about$ur about = _Translations$settings$about$ur._(_root);
	@override late final _Translations$settings$appInfo$ur appInfo = _Translations$settings$appInfo$ur._(_root);
}

// Path: reminders
class _Translations$reminders$ur extends Translations$reminders$en {
	_Translations$reminders$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'یاددہانیوں کے ساتھ راستے پر رہیں';
	@override String get description => 'کھانے لاگ کرنے کے ہلکے یاددہانیاں حاصل کریں اور اپنے غذائی اہداف کے ساتھ مستقل رہیں';
	@override String get notificationsEnabled => 'اطلاعات فعال ہیں';
	@override String get notificationsDisabled => 'اطلاعات غیر فعال ہیں';
	@override String get enabledSubtitle => 'آپ کو کھانے کی یاددہانی ملیں گی';
	@override String get disabledSubtitle => 'کھانے کی یاددہانی کے لیے اطلاعات فعال کریں';
	@override String get mealReminders => 'کھانے کی یاددہانیاں';
	@override String get breakfast => 'ناشتا';
	@override String get lunch => 'دوپہر کا کھانا';
	@override String get dinner => 'رات کا کھانا';
	@override String get snack => 'سنیک';
	@override String get unknown => 'نامعلوم';
	@override String get change => 'تبدیلی کریں';
	@override String get enableNotifications => 'اطلاعات فعال کریں';
	@override String get skipForNow => 'اسے ابھی چھوڑ دیں';
	@override String get saveChanges => 'تبدیلیاں محفوظ کریں';
	@override String get enabledSuccessfully => 'اطلاعات کامیابی سے فعال ہو گئیں!';
	@override String get permissionDenied => 'اطلاعات کی اجازت نامنظور';
	@override String errorEnabling({required Object error}) => 'اطلاعات فعال کرنے میں خرابی: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'سیٹ اپ مکمل کرنے میں خرابی: ${error}';
}

// Path: notifications
class _Translations$notifications$ur extends Translations$notifications$en {
	_Translations$notifications$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$ur breakfast = _Translations$notifications$breakfast$ur._(_root);
	@override late final _Translations$notifications$lunch$ur lunch = _Translations$notifications$lunch$ur._(_root);
	@override late final _Translations$notifications$dinner$ur dinner = _Translations$notifications$dinner$ur._(_root);
	@override late final _Translations$notifications$snack$ur snack = _Translations$notifications$snack$ur._(_root);
	@override late final _Translations$notifications$test$ur test = _Translations$notifications$test$ur._(_root);
}

// Path: login
class _Translations$login$ur extends Translations$login$en {
	_Translations$login$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'لاگ ان';
	@override String get signInWithGoogle => 'Google سے سائن ان کریں';
	@override String get signInFailed => 'Google سائن ان ناکام ہوا یا منسوخ کر دیا گیا۔';
}

// Path: disclaimer
class _Translations$disclaimer$ur extends Translations$disclaimer$en {
	_Translations$disclaimer$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'براہِ کرم نوٹ کریں';
	@override late final _Translations$disclaimer$snap$ur snap = _Translations$disclaimer$snap$ur._(_root);
	@override late final _Translations$disclaimer$weightEstimate$ur weightEstimate = _Translations$disclaimer$weightEstimate$ur._(_root);
	@override late final _Translations$disclaimer$healthMetrics$ur healthMetrics = _Translations$disclaimer$healthMetrics$ur._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$ur calorieExpenditure = _Translations$disclaimer$calorieExpenditure$ur._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$ur extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'غذائیت ڈاؤن لوڈ کیے گئے USDA پیک سے ملائی گئی';
	@override String get nutritionCached => 'غذائیت ڈیوائس کی USDA کیش سے ملائی گئی';
	@override String get nutritionMixed => 'غذائیت ڈاؤن لوڈ، کیش شدہ اور ریموٹ USDA قطاروں سے یکجا کی گئی';
	@override String get calculationLocal => 'اس ڈیوائس پر کیلوریز اور میکروز کا حساب لگایا گیا';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: ڈاؤن لوڈ کیا گیا USDA پیک';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: ڈیوائس کی USDA کیش';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: Calorify کے ذریعے حاصل کی گئی USDA قطار';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: متعین غذائی مستقل';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · ڈیٹاسیٹ ${datasetVersion}';
	@override String get portionSmaller => 'کم';
	@override String get portionEstimated => 'تخمینی';
	@override String get portionLarger => 'زیادہ';
	@override String portionQuestion({required Object ingredient}) => '${ingredient} کے لیے کون سی مقدار سب سے قریب تھی؟';
	@override String get mealTypeQuestion => 'یہ کون سا کھانا تھا؟';
	@override String get localNutritionTip => 'تصدیق شدہ مقامی غذائی ڈیٹا سے حساب لگایا گیا۔';
	@override String get offlineNutritionTitle => 'غذائی ڈیٹا ڈاؤن لوڈ کریں';
	@override String get offlineNutritionSubtitle => 'جب ہر جزو شامل ہو تو اس ڈیوائس پر تصدیق شدہ USDA قطاریں اور متعین حساب استعمال کریں۔';
	@override String get offlineNutritionUnavailable => 'ایپ کے اس ورژن کے لیے مقامی غذائی ڈیٹا دستیاب نہیں ہے۔';
	@override String get offlineNutritionNotDownloaded => 'کوئی تصدیق شدہ غذائی پیک ڈاؤن لوڈ نہیں کیا گیا۔';
	@override String get offlineNutritionInstalling => 'غذائی ڈیٹا ڈاؤن لوڈ اور تصدیق کیا جا رہا ہے…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'پیک ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} کیش شدہ USDA قطاریں · ${size}';
	@override String get offlineNutritionUpdate => 'اپ ڈیٹ چیک کریں';
	@override String get offlineNutritionClear => 'مقامی غذائی ڈیٹا صاف کریں';
	@override String get offlineNutritionClearTitle => 'مقامی غذائی ڈیٹا صاف کریں؟';
	@override String get offlineNutritionClearBody => 'اس سے ڈاؤن لوڈ کیا گیا USDA پیک اور تلاش کی کیش ہٹ جائے گی۔ محفوظ کیے گئے کھانے عین وہی غذائی اسنیپ شاٹ برقرار رکھیں گے جو محفوظ کرتے وقت استعمال ہوا تھا۔';
	@override String get offlineNutritionClearConfirm => 'ڈیٹا صاف کریں';
	@override String offlineNutritionInstallFailed({required Object error}) => 'مقامی غذائی ڈیٹا ڈاؤن لوڈ اور تصدیق نہیں کیا جا سکا: ${error}';
	@override String get offlineNutritionCleared => 'مقامی غذائی ڈیٹا صاف کر دیا گیا';
}

// Path: common
class _Translations$common$ur extends Translations$common$en {
	_Translations$common$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get close => 'بند کریں';
	@override String get kContinue => 'جاری رکھیں';
}

// Path: feedbackRating
class _Translations$feedbackRating$ur extends Translations$feedbackRating$en {
	_Translations$feedbackRating$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel} پسند آ رہا ہے؟';
	@override String get yes => 'ہاں، پسند آ رہا ہے';
	@override String get no => 'زیادہ نہیں';
	@override String get rateStepHeading => 'Play Store پر ریٹ کریں';
	@override String get emailStepHeading => 'ای میل کے ذریعے فیڈ بیک بھیجیں';
	@override String soloDevMessage({required Object appLabel}) => 'ایک مختصر ریٹنگ دوسروں کو ${appLabel} تلاش کرنے میں مدد دیتی ہے اور ترقی کو جاری رکھنے میں مدد کرتی ہے۔ کیا آپ ایک لمحہ نکال کر ریٹ کریں گے؟';
	@override String get shareFeedbackViaEmail => 'آپ کی رائے آئندہ کی تشکیل کرتی ہے — ہم ہر پیغام پڑھتے ہیں۔ کیا آپ ای میل کے ذریعے خیالات شیئر کرنا چاہیں گے؟';
	@override String get rateCta => 'Play Store پر ریٹ کریں';
	@override String get maybeLater => 'شاید بعد میں';
	@override String get sendFeedback => 'رائے بھیجیں';
	@override String get noThanks => 'نہيں شکریہ';
	@override String get aboutUsDescription => 'احتیاط کے ساتھ چھوٹے گروپ نے بنایا گیا۔ ہم رازداری، سادگی، اور بہتر کھانے کی عادات بنانے پر توجہ دیتے ہیں۔';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'جانیے ${appLabel} کے پیچھے کون ہے؟ دیکھیں ';
	@override String get aboutUsLinkLabel => 'ہمارے بارے میں';
	@override String get thankYouMessage => 'شکریہ! ہم کسی اور وقت دوبارہ پوچھیں گے۔';
}

// Path: health
class _Translations$health$ur extends Translations$health$en {
	_Translations$health$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect کے ساتھ ہم وقت نہیں ہو سکا';
	@override String get mealSynced => 'کھانا Health Connect کے ساتھ ہم وقت ہو گیا';
}

// Path: onboarding.features
class _Translations$onboarding$features$ur extends Translations$onboarding$features$en {
	_Translations$onboarding$features$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$ur foodRecognition = _Translations$onboarding$features$foodRecognition$ur._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$ur aiAnalysis = _Translations$onboarding$features$aiAnalysis$ur._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$ur healthIntegration = _Translations$onboarding$features$healthIntegration$ur._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$ur extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کی صنف کیا ہے؟';
	@override String get description => 'صنف ہمیں آپ کا بنیادی میٹابولک ریٹ (BMR) درست طور پر حساب کرنے میں مدد دیتی ہے۔';
	@override String get next => 'اگلا';
}

// Path: onboarding.height
class _Translations$onboarding$height$ur extends Translations$onboarding$height$en {
	_Translations$onboarding$height$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کی قد کتنی ہے؟';
	@override String get description => 'آپ کی قد BMI اور توانائی کی ضروریات درست طور پر حساب کرنے میں مدد دیتی ہے۔';
	@override String get metric => 'میٹرک';
	@override String get imperial => 'امپیریل';
	@override String get next => 'اگلا';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$ur extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'آپ کا موجودہ وزن کیا ہے؟';
	@override String get currentDescription => 'روزانہ کے مقاصد کو ذاتی بنانے کے لیے آپ کا موجودہ وزن ضروری ہے۔';
	@override String get targetTitle => 'آپ کا ہدف وزن کیا ہے؟';
	@override String get targetDescription => 'ہدف وزن مقرر کرنے سے ہم آپ کا طویل المدتی منصوبہ تشکیل دے سکتے ہیں۔';
	@override String get metric => 'میٹرک';
	@override String get imperial => 'امپیریل';
	@override String get next => 'اگلا';
}

// Path: onboarding.age
class _Translations$onboarding$age$ur extends Translations$onboarding$age$en {
	_Translations$onboarding$age$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کی تاریخِ پیدائش کب ہے؟';
	@override String get description => 'آپ کی عمر ہمیں کیلوریز کی ضروریات درست طور پر حساب کرنے میں مدد دیتی ہے۔';
	@override String get next => 'اگلا';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$ur extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'کم';
	@override String get healthy => 'صحتمند';
	@override String get overweight => 'زیادہ';
	@override String get obese => 'موٹاپا';
	@override late final _Translations$onboarding$bmiScale$categories$ur categories = _Translations$onboarding$bmiScale$categories$ur._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$ur messages = _Translations$onboarding$bmiScale$messages$ur._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$ur extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کا مقصد کیا ہے؟';
	@override String get description => 'وہ مقصد منتخب کریں جو آپ کی خواہش کو بہترین طور پر بیان کرتا ہے';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$ur extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کتنے متحرک ہیں؟';
	@override String get description => 'یہ ہمیں آپ کی روزانہ کیلوری کی ضروریات زیادہ درست طور پر حساب کرنے میں مدد دیتا ہے';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$ur extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect سے جڑیں';
	@override String get description => 'بہتر بصیرت اور خودکار کیلوری ٹریکنگ کے لیے اپنے صحت کے ڈیٹا کو ہم وقت کریں';
	@override String get overviewDescription => 'اپنے روزانہ ہدف میں جلنے والی کیلوریز استعمال کریں اور چاہیں تو لاگ کیے گئے کھانے Health Connect کے ساتھ شیئر کریں۔';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$ur automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$ur._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$ur caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$ur._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$ur progressInsights = _Translations$onboarding$healthConnect$progressInsights$ur._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$ur shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$ur._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$ur seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$ur._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$ur userControl = _Translations$onboarding$healthConnect$userControl$ur._(_root);
	@override String get connected => 'Health Connect مربوط ہے';
	@override String get notConnected => 'Health Connect مربوط نہیں ہے';
	@override String get setup => 'Health Connect سیٹ اپ کریں';
	@override String get skipForNow => 'اسے ابھی چھوڑ دیں';
	@override String get statusConnected => 'Health Connect مربوط ہو چکا ہے۔';
	@override String get statusSuccess => 'Health Connect کامیابی سے مربوط ہو گیا!';
	@override String get statusNotConnected => 'Health Connect کی وہ خصوصیات منتخب کریں جنہیں آپ فعال کرنا چاہتے ہیں۔';
	@override String get statusPartial => 'Health Connect جزوی طور پر منسلک ہے۔ دونوں خصوصیات استعمال کرنے کے لیے باقی اجازت فعال کریں۔';
	@override String get statusProviderUpdateRequired => 'جاری رکھنے کے لیے Health Connect انسٹال یا اپ ڈیٹ کریں۔';
	@override String get statusUnavailable => 'اس ڈیوائس پر Health Connect معاون نہیں ہے۔';
	@override String get installOrUpdate => 'انسٹال یا اپ ڈیٹ کریں';
	@override String get manageAccess => 'رسائی کا نظم کریں';
	@override String statusPermissionDenied({required Object appLabel}) => 'اجازت نامنظور۔ براہِ کرم ${appLabel} کے لیے Health Connect کی اجازتیں اپنے فون کی سیٹنگز میں فعال کریں۔';
	@override String statusError({required Object error}) => 'Health Connect سیٹ کرنے میں خرابی: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$ur extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$ur trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$ur._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$ur healthProfile = _Translations$onboarding$reinforcement$healthProfile$ur._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$ur goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$ur._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$ur extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کا AI خلاصہ';
	@override String get logMore => 'اپنی ذاتی AI بصیرت حاصل کرنے کے لیے اگلے چند دنوں میں مزید کھانے لاگ کریں۔';
	@override String get loading => 'آپ کا خلاصہ لوڈ کیا جا رہا ہے...';
	@override String mealCount({required Object count}) => '${count} کھانے لاگ کیے گئے';
	@override String macroBalanceScore({required Object score}) => 'بیلنس اسکور ${score}';
	@override String get topFoods => 'مقبول کھانے';
	@override String get trendUp => 'کیلوریز میں اضافہ ہو رہا ہے';
	@override String get trendDown => 'کیلوریز میں کمی ہو رہی ہے';
	@override String get trendSteady => 'کیلوریز مستحکم ہیں';
	@override String generatedAt({required Object time}) => 'تازہ کیا گیا ${time}';
}

// Path: home.dailyGoal
class _Translations$home$dailyGoal$ur extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اپنا روزانہ ہدف مقرر کریں';
	@override String get titleSet => 'آپ کا روزانہ ہدف';
	@override String get description => 'کیا آپ اپنی فلاح و بہبود کے سفر کا آغاز کرنے کے لیے تیار ہیں؟ اپنی پیش رفت شروع کرنے کے لیے ذیل میں اپنا روزانہ کیلوری ہدف مقرر کریں۔';
	@override String get descriptionSet => 'آپ کا کمپاس سیٹ ہو گیا ہے! یہ آپ کی رہنمائی کے لیے روزانہ کیلوری ہدف ہے۔';
	@override String get yourGoal => 'آپ کا ہدف';
	@override String get goal => 'ہدف';
	@override String get dailyCalories => 'روزانہ کیلوریز (kcal)';
	@override String get setGoal => 'ہدف مقرر کریں';
	@override String get intake => 'انٹیک';
	@override String get burned => 'جلائی گئی';
	@override String get weightImpact => 'وزن پر اثر';
	@override String get estLoss => 'تخمینی کمی';
	@override String get estGain => 'تخمینی اضافہ';
	@override String get kcal => 'کلو کیلوری';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$ur extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'روزانہ کا خلاصہ';
	@override String get calories => 'کیلوریز';
	@override String get carbs => 'کاربس';
	@override String get protein => 'پروٹین';
	@override String get fat => 'چکنائی';
	@override String get fiber => 'فائبر';
	@override String get grams => 'گرام';
	@override String get chartAccessibilityLabel => 'میکروز چارٹ';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$ur extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آج کا میکرو تقسیم';
	@override String get target => 'ہدف';
	@override String get current => 'موجودہ';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$ur extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => '7 روزہ میکرو ہسٹری';
	@override String get trendTitle => 'آج کا رجحان';
	@override String peakHour({required Object hour}) => 'عروج: ${hour}:00';
	@override String get noHistoryYet => 'ابھی تک کوئی ہسٹری نہیں';
	@override String get startLogging => 'یہاں اپنے کھانے لاگ کرنا شروع کریں تاکہ آپ\n7 روزہ میکرو رجحانات دیکھ سکیں';
}

// Path: home.mealLog
class _Translations$home$mealLog$ur extends Translations$home$mealLog$en {
	_Translations$home$mealLog$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'لاگ کیے گئے کھانے';
	@override String get emptyMessage => 'اپنے آخری کھانے کی تصویر لے کر یہاں لاگ کریں۔';
	@override String get noMealsToday => 'آج کے لیے کوئی کھانا ریکارڈ نہیں ہوا';
	@override String get seeAllMeals => 'تمام کھانے دیکھیں';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$ur extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI سے فوری اضافہ';
	@override String get description => 'اپنے کھانے کو بیان کریں، اور تفصیلات AI پر چھوڑ دیں۔';
	@override String get hint => 'مثلاً: ناشتے میں میں نے اوٹس کا بڑا پیالہ، کٹا ہوا کیلا اور ایک اسکوپ وِی پروٹین لیا…';
	@override String get analyzeMeal => 'کھانے کا تجزیہ کریں';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$ur extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پسندیدہ کھانے';
	@override String get description => 'اپنے پسندیدہ کھانوں میں سے جلدی شامل کریں۔';
	@override String get noFavorites => 'ابھی کوئی پسندیدہ کھانا نہیں ہے۔';
	@override String get addFavoriteHint => 'کسی کھانے پر ستارے پر کلک کریں تا کہ اسے پسندیدہ نشان زد کریں۔';
	@override String get seeAll => 'سب دیکھیں';
	@override String get add => 'شامل کریں';
}

// Path: home.mealSnap
class _Translations$home$mealSnap$ur extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اپنے کھانے کی تصویر لے کر ٹریک کریں';
	@override String get description => 'AI تجزیے کے لیے اپنے کھانے کی تصویر لینے کے لیے کیمرہ استعمال کریں۔';
	@override String get openCamera => 'کیمرہ کھولیں';
	@override String get gallery => 'گیلری';
	@override String get compressingPhoto => 'تصویر کو بہتر کیا جا رہا ہے…';
	@override String get uploadingPhoto => 'تصویر اپ لوڈ کی جا رہی ہے…';
}

// Path: home.connectHealth
class _Translations$home$connectHealth$ur extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect کے ساتھ ہم وقت کریں';
	@override String get description => 'اپنے غذائی ڈیٹا کو Health Connect کے ساتھ ہم وقت کریں';
	@override String get dataUseDescription => 'اپنے ہدف میں جلنے والی کیلوریز استعمال کریں اور لاگ کیے گئے کھانے شیئر کریں';
	@override String get install => 'انسٹال کریں';
	@override String get installOrUpdate => 'انسٹال یا اپ ڈیٹ کریں';
	@override String get connect => 'کنیکٹ کریں';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$ur extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get calories => 'کیلوریز';
	@override String get carbs => 'کاربس (گ)';
	@override String get protein => 'پروٹین (گ)';
	@override String get fat => 'چکنائی (گ)';
	@override String get fiber => 'فائبر (گ)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$ur extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کھانے کو حذف کریں';
	@override String get message => 'کیا آپ واقعی اس کھانے کا اندراج حذف کرنا چاہتے ہیں؟';
	@override String get cancel => 'منسوخ کریں';
	@override String get delete => 'حذف کریں';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$ur extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'سوال ${current} از ${total}';
	@override String get noQuestionsAvailable => 'کوئی سوال دستیاب نہیں';
	@override String get next => 'اگلا';
	@override String get continueLabel => 'جاری رکھیں';
}

// Path: meal.analysis
class _Translations$meal$analysis$ur extends Translations$meal$analysis$en {
	_Translations$meal$analysis$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کے کھانے کا تجزیہ ہو رہا ہے';
	@override String get stepStarted => 'شروع کیا جا رہا ہے…';
	@override String get stepDecomposition => 'آپ کے کھانے کو سمجھا جا رہا ہے…';
	@override String get stepIngredients => 'اجزاء کو غذائی ڈیٹا سے ملایا جا رہا ہے…';
	@override String get stepUncertainty => 'اعتماد چیک کیا جا رہا ہے…';
	@override String get stepMealTypeQuestion => 'جلد ہی مکمل…';
	@override String get stepResult => 'نتیجہ حتمی شکل دے رہے ہیں…';
	@override String get stepError => 'کچھ غلط ہو گیا';
	@override String get stepDefault => 'آپ کے کھانے کا تجزیہ…';
	@override String get progressUnderstand => 'آپ کے کھانے کو سمجھنا';
	@override String get progressMatch => 'اجزاء کی غذائیت تلاش کی جا رہی ہے';
	@override String get progressCheck => 'حصوں اور اعتماد کی جانچ';
	@override String get progressMealType => 'کھانے کی قسم منتخب کی جا رہی ہے';
	@override String get progressFinish => 'کیلوریز اور میکروز کا حساب لگایا جا رہا ہے';
	@override String get detectedIngredientHeading => 'جو اجزاء ہم دیکھ رہے ہیں';
	@override String ingredientsOverflow({required Object count}) => '${count} مزید';
	@override String ingredientsLine({required Object count}) => '${count} اجزاء معلوم ہوئے';
	@override String get ingredientsPending => 'اجزاء اسکین کیے جا رہے ہیں…';
	@override String mealPreviewDescription({required Object text}) => '”${text}“';
	@override String get offlineTip0 => 'ٹپ: استقامت کمالیت پر غالب ہے — باقاعدہ لاگ وہ پیٹرن ظاہر کرتے ہیں جو اہم ہیں۔';
	@override String get offlineTip1 => 'ٹپ: تصویروں کے لیے قدرتی روشنی اور اوپر سے منظر حصوں کی درستگی میں مدد دیتی ہے۔';
	@override String get offlineTip2 => 'ٹپ: مشروبات، ساسز اور پکانے کا تیل ضرور بتائیں — یہ کیلوریز میں اضافہ کرتے ہیں جو اکثر بھول جاتے ہیں۔';
	@override String get offlineTip3 => 'ٹپ: ایک مختصر حصہ نوٹ (مثلاً 1 پیالہ، بڑا کافی) اندازوں کو بہت بہتر بناتا ہے۔';
	@override String get offlineTip4 => 'ٹپ: کھانے کے بعد لاگ کرنا بھی عادت بناتا ہے؛ کمال ضروری نہیں۔';
	@override String get offlineTip5 => 'ٹپ: جب پکانے کا طریقہ کیلوریز پر بہت اثر ڈالے تو بتائیں (تلّا ہوا بمقابلہ بیک کیا ہوا)۔';
}

// Path: meal.localInference
class _Translations$meal$localInference$ur extends Translations$meal$localInference$en {
	_Translations$meal$localInference$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'جائزہ شدہ اجزاء دیکھیں';
	@override String get reviewSubtitle => 'یہ آپ کے ڈیوائس پر ترتیب دیا گیا تھا۔ غذائیت کے حساب سے پہلے ناموں یا مقدار کی تصحیح کریں۔';
	@override String get mealName => 'کھانے کا نام';
	@override String get ingredient => 'اجزاء';
	@override String get grams => 'تخمینہ گرام';
	@override String get removeIngredient => 'اجزاء ہٹائیں';
	@override String get continueLabel => 'جاری رکھیں';
	@override String get invalidProposal => 'کم از کم ایک جزو شامل کریں اور گرام کی مثبت مقدار استعمال کریں۔';
	@override String get localUnavailable => 'آن-ڈیوائس تجزیہ اس وقت دستیاب نہیں ہے۔';
	@override String get calculationDetails => 'اس کا حساب کیسے لگایا گیا';
	@override String get interpretationLocal => 'اس ڈیوائس پر ترتیب دیے گئے اجزاء';
	@override String get interpretationCloud => 'کلاؤڈ میں ترتیب دیے گئے اجزاء';
	@override String get interpretationManual => 'آپ کے ذریعے جائزہ لیے گئے یا تبدیل کیے گئے اجزاء';
	@override String get nutritionRemote => 'USDA سے Calorify کے ذریعے حاصل کردہ غذائیت';
	@override String get nutritionFallback => 'کچھ غذائی اقدار کا تخمینہ ریموٹلی لگایا گیا';
	@override String get calculationServer => 'کیلوریز اور میکروز کا حساب Calorify نے لگایا';
	@override String get fallbackUsed => 'مقامی تجزیہ کلاؤڈ پروسیسنگ پر منتقل ہو گیا';
	@override String get noRawContent => 'تشخیصی رسیدوں میں آپ کے کھانے کی تحریر یا تصویر شامل نہیں ہوتی۔';
}

// Path: meal.feedback
class _Translations$meal$feedback$ur extends Translations$meal$feedback$en {
	_Translations$meal$feedback$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کون سی بات غلط لگی؟';
	@override String get subtitle => 'کئی مسائل میں سے ایک یا زیادہ منتخب کر کے تجزیے کو بہتر بنانے میں ہماری مدد کریں۔';
	@override String get tellUsMore => 'ہمیں مزید بتائیں';
	@override String get describeIncorrect => 'بتائیں کیا غلط تھا';
	@override String get submit => 'جمع کریں';
	@override String get issueFoodIdentification => 'کھانے کی شناخت';
	@override String get issuePortionSize => 'حصہ کا سائز';
	@override String get issueCalorieDistribution => 'کیلوری تقسیم';
	@override String get issueMacrosWrong => 'میکروز غلط ہیں';
	@override String get issueMissingItems => 'غائب اشیاء';
	@override String get issueExtraItems => 'اضافی اشیاء';
	@override String get issueOther => 'دوسرا';
}

// Path: favorites.sortOptions
class _Translations$favorites$sortOptions$ur extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get recent => 'حالیہ';
	@override String get calories => 'کیلوریز';
	@override String get alphabetical => 'حروف تہجی';
}

// Path: profile.sections
class _Translations$profile$sections$ur extends Translations$profile$sections$en {
	_Translations$profile$sections$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'پروفائل';
	@override String get basicInformation => 'بنیادی معلومات';
	@override String get goalsAndActivity => 'اہداف اور سرگرمی';
	@override String get calculatedValues => 'محاسبہ شدہ اقدار';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$ur extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'روزانہ ہدف';
	@override String get calPerDay => 'cal/دن';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$ur extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ذاتی معلومات';
	@override String get physicalMeasurements => 'جسمانی پیمائشیں';
	@override String get goalsAndActivity => 'اہداف اور سرگرمی';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$ur extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get male => 'مرد';
	@override String get female => 'عورت';
	@override String get other => 'دیگر';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$ur extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$ur loseWeight = _Translations$editProfile$weightGoals$loseWeight$ur._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$ur maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$ur._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$ur gainWeight = _Translations$editProfile$weightGoals$gainWeight$ur._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$ur extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$ur sedentary = _Translations$editProfile$activityLevels$sedentary$ur._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$ur lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$ur._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$ur moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$ur._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$ur veryActive = _Translations$editProfile$activityLevels$veryActive$ur._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$ur extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$ur._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$ur extends Translations$settings$sections$en {
	_Translations$settings$sections$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'پروفائل';
	@override String get localization => 'لوکلائزیشن';
	@override String get notifications => 'اطلاعات';
	@override String get healthConnect => 'Health Connect';
	@override String get localInference => 'آن-ڈیوائس تجزیہ';
	@override String get supportAndLegal => 'سپورٹ اور قانونی';
	@override String get about => 'ایپ کے بارے میں';
	@override String get dangerZone => 'خطرناک علاقے';
	@override String get developer => 'ڈیولپر';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$ur extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروفائل ترمیم کریں';
	@override String get subtitle => 'اپنی ذاتی معلومات اپڈیٹ کریں';
}

// Path: settings.language
class _Translations$settings$language$ur extends Translations$settings$language$en {
	_Translations$settings$language$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'زبان';
	@override String get subtitle => 'اپنی پسندیدہ زبان منتخب کریں';
	@override String get searchHint => 'زبانیں تلاش کریں...';
	@override String get noResults => 'کوئی نتیجہ نہیں ملا';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$ur extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قد کی اکائی';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$ur extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وزن کی اکائی';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$ur extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کھانے کی یاددہانیاں';
	@override String get subtitle => 'بروقت اعلانات کے ساتھ راستے پر رہیں';
}

// Path: settings.localInference
class _Translations$settings$localInference$ur extends Translations$settings$localInference$en {
	_Translations$settings$localInference$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آن-ڈیوائس کھانے کا تجزیہ';
	@override String get subtitle => 'غذائیت کے حساب سے پہلے Gemini Nano کے ذریعے معاون کھانے ترتیب دیں';
	@override String get unavailable => 'اس ڈیوائس پر دستیاب نہیں ہے';
	@override String get rolloutUnavailable => 'مطابقہ ہارڈ ویئر مل گیا، لیکن یہ فیچر اس ایپ ریلیز کے لیے فعال نہیں ہے';
	@override String get modelSetup => 'اسے فعال کرنے سے پہلے Gemini Nano کا ڈاؤن لوڈ مکمل ہونا ضروری ہے';
	@override String get useLocalTitle => 'آن-ڈیوائس تجزیہ استعمال کریں';
	@override String get useLocalSubtitle => 'اختیاری اور ڈیفالٹ طور پر بند۔ پیچیدہ کھانوں کے لیے نتائج کم قابل اعتماد ہو سکتے ہیں۔';
	@override String get disclosureTitle => 'آن-ڈیوائس تجزیہ فعال کرنے سے پہلے';
	@override String get disclosureBody => 'Gemini Nano معاون Android ڈیوائسز پر اجزاء کی شناخت اور مقدار کا تخمینہ لگا سکتا ہے۔ آپ کا جائزہ لیا گیا تجویز کردہ جزو USDA غذائی بنیاد اور حساب کے لیے Calorify کو بھیجا جاتا ہے۔';
	@override String get disclosureLimit1 => 'پیچیدہ پکوان، چھپے ہوئے اجزاء، اور مقدار کی شناخت غلط ہو سکتی ہے۔';
	@override String get disclosureLimit2 => 'ڈاؤن لوڈنگ، مصروفیت، بیک گراؤنڈ میں ہونے، یا ڈیوائس کی حدود کی وجہ سے ماڈل دستیاب نہیں ہو سکتا۔';
	@override String get disclosureLimit3 => 'اگر مقامی ترتیب مکمل نہیں ہو پاتی، تو یہ بیٹا ورژن خود بخود آپ کے کھانے کی اصل تفصیل کلاؤڈ تجزیہ کے لیے Calorify کو بھیج دیتا ہے۔';
	@override String get acknowledgement => 'میں سمجھتا/سمجھتی ہوں کہ مجھے شناخت شدہ اجزاء اور مقدار کا جائزہ لینا چاہیے۔';
	@override String get enable => 'تسلیم کریں اور فعال کریں';
	@override String get cancel => 'منسوخ کریں';
}

// Path: settings.theme
class _Translations$settings$theme$ur extends Translations$settings$theme$en {
	_Translations$settings$theme$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تھیم';
	@override String get light => 'ہلکا';
	@override String get dark => 'تاریک';
	@override String get system => 'سسٹم';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$ur extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'رائے بھیجیں';
	@override String subtitle({required Object appLabel}) => 'ہمیں بہتر بنانے میں مدد کریں ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} ایپ تاثرات';
	@override String get emailBodyPrefix => 'براہِ کرم نیچے اپنی رائے لکھیں:';
	@override String get appVersion => 'ایپ ورژن';
	@override String get device => 'ڈیوائس';
	@override String get osVersion => 'OS ورژن';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _Translations$settings$exportMealHistory$ur extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کھانے کی ہسٹری برآمد کریں';
	@override String get subtitle => 'اپنے لاگ کیے گئے کھانوں کا CSV شیئر کریں';
	@override String get shareText => 'آپ کی Calorify کھانے کی ہسٹری ایکسپورٹ';
	@override String failed({required Object error}) => 'کھانے کی ہسٹری برآمد نہیں ہو سکی: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$ur extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تمام ڈیٹا صاف کریں';
	@override String get subtitle => 'آپ کی تمام معلومات کو ناقابلِ واپسی طور پر حذف کریں';
	@override String get localOnlySubtitle => 'اس ڈیوائس پر محفوظ Calorify ڈیٹا حذف کریں';
	@override String get confirmationTitle => 'تمام ڈیٹا صاف کر دوں؟';
	@override String get confirmationMessage => 'یہ عمل واپس نہیں کیا جا سکتا۔ آپ کے تمام لاگ کیے گئے کھانے، پسندیدہ اور پروفائل سیٹنگز مستقل طور پر حذف ہو جائیں گے۔';
	@override String get localOnlyConfirmationMessage => 'یہ اس ڈیوائس سے لاگ کیے گئے کھانے، پسندیدہ اشیا اور پروفائل سیٹنگز مستقل طور پر حذف کر دے گا۔ Health Connect میں پہلے شیئر کیے گئے کھانے اور Health Connect کی رسائی کو سیٹنگز > Health Connect میں الگ سے منظم کیا جاتا ہے۔';
	@override String get cancel => 'منسوخ کریں';
	@override String get clearEverything => 'سب کچھ صاف کریں';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$ur extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ڈیبگ آپشنز';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$ur extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'اجازتیں دیکھیں اور منظم کریں';
	@override late final _Translations$settings$healthConnect$unavailable$ur unavailable = _Translations$settings$healthConnect$unavailable$ur._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$ur updateRequired = _Translations$settings$healthConnect$updateRequired$ur._(_root);
	@override late final _Translations$settings$healthConnect$permissions$ur permissions = _Translations$settings$healthConnect$permissions$ur._(_root);
	@override String get managePermissions => 'اجازتیں منظم کریں';
	@override String get openSettings => 'Health Connect سیٹنگز کھولیں';
	@override String get disconnect => 'Health Connect کا رابطہ منقطع کریں';
	@override String get disconnectConfirmationTitle => 'Health Connect کا رابطہ منقطع کریں؟';
	@override String get disconnectConfirmationMessage => 'Calorify کی Health Connect تک رسائی ختم ہو جائے گی۔ وہاں پہلے سے لکھا گیا ڈیٹا حذف نہیں ہوگا۔';
	@override String get disconnectConfirmationAction => 'رابطہ منقطع کریں';
	@override String get deleteSyncedMeals => 'Health Connect سے Calorify کے کھانے حذف کریں';
	@override String get deleteSyncedMealsConfirmationTitle => 'ہم وقت کیے گئے کھانے حذف کریں؟';
	@override String get deleteSyncedMealsConfirmationMessage => 'Calorify کے اس ورژن سے Health Connect میں ہم وقت کیے گئے کھانے حذف کریں؟ آپ کا مقامی کھانوں کا ریکارڈ تبدیل نہیں ہوگا۔ Calorify کی پرانی اندراجات کو Health Connect میں ڈیٹا کا نظم کریں کے ذریعے الگ سے حذف کرنا پڑ سکتا ہے۔';
	@override String get deleteSyncedMealsConfirmationAction => 'ہم وقت کیے گئے کھانے حذف کریں';
	@override String get deleteSyncedMealsSuccess => 'Health Connect سے Calorify کے کھانے حذف کر دیے گئے۔';
	@override String get deleteSyncedMealsFailed => 'ہم وقت کیے گئے کھانے حذف نہیں ہو سکے۔ دوبارہ کوشش کریں۔';
	@override String get connectionPartial => 'Health Connect کی کچھ خصوصیات فعال ہیں۔';
	@override String get connectionComplete => 'Health Connect کی دونوں خصوصیات فعال ہیں۔';
	@override String get actionFailed => 'Health Connect نہیں کھولا جا سکا۔ دوبارہ کوشش کریں۔';
	@override String get requestPermissions => 'اجازتیں درخواست کریں';
	@override String get permissionRequestCancelledOrFailed => 'اجازت کی درخواست منسوخ یا ناکام ہو گئی۔ براہِ کرم دوبارہ کوشش کریں یا Health Connect سیٹنگز میں دستی طور پر اجازتیں دیں۔';
	@override String get permissionRequestFailed => 'اجازتیں درخواست کرنے میں ناکامی۔ براہِ کرم دوبارہ کوشش کریں یا Health Connect کی سیٹنگز میں دستی طور پر اجازت دیں۔';
	@override String get requestingPermissions => 'درخواست بھیجی جا رہی ہے...';
}

// Path: settings.about
class _Translations$settings$about$ur extends Translations$settings$about$en {
	_Translations$settings$about$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ایپ کے بارے میں';
	@override String get tagline => 'تیز، مفت، اور رازداری کو مقدم رکھنے والی کیلوری آگاہی';
	@override late final _Translations$settings$about$ourStory$ur ourStory = _Translations$settings$about$ourStory$ur._(_root);
	@override late final _Translations$settings$about$privacy$ur privacy = _Translations$settings$about$privacy$ur._(_root);
	@override late final _Translations$settings$about$developer$ur developer = _Translations$settings$about$developer$ur._(_root);
	@override late final _Translations$settings$about$feedback$ur feedback = _Translations$settings$about$feedback$ur._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$ur extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify ورژن ${version}';
	@override String build({required Object buildNumber}) => 'بلڈ ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$ur extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ناشتے کا وقت! 🍳';
	@override String get body => 'اپنا ناشتہ لاگ کرنا نہ بھولیں';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$ur extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'دوپہر کے کھانے کا وقت! 🥗';
	@override String get body => 'اپنا دوپہر کا کھانا لاگ کرنے کا وقت ہے';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$ur extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'رات کے کھانے کا وقت! 🍽️';
	@override String get body => 'اپنا رات کا کھانا لاگ کرنا نہ بھولیں';
}

// Path: notifications.snack
class _Translations$notifications$snack$ur extends Translations$notifications$snack$en {
	_Translations$notifications$snack$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'سنیک کا وقت! 🍎';
	@override String get body => 'صحت مند سنیک لینے کا وقت ہے';
}

// Path: notifications.test
class _Translations$notifications$test$ur extends Translations$notifications$test$en {
	_Translations$notifications$test$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ٹیسٹ نوٹیفیکیشن';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$ur extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} تخمینی غذائی معلومات فراہم کرتا ہے۔ درستگی آپ کے داخل کیے گئے ڈیٹا اور کھانے کی اقسام پر منحصر ہے۔ اسے رہنما سمجھیں، حتمی ماخذ کے طور پر نہیں۔ ذاتی غذائی مشورے کے لیے کسی ماہر سے رجوع کریں۔';
	@override late final _Translations$disclaimer$snap$portionSize$ur portionSize = _Translations$disclaimer$snap$portionSize$ur._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$ur preparationMethods = _Translations$disclaimer$snap$preparationMethods$ur._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$ur ingredients = _Translations$disclaimer$snap$ingredients$ur._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$ur databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$ur._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$ur extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وزن کے اندازے کے بارے میں';
	@override String get description => 'پیش گوئی شدہ وزن کی تبدیلی ایک نظریاتی اندازہ ہے جو سادہ کیلوری-ان بمقابلہ کیلوری-آؤٹ ماڈل پر مبنی ہے۔ یہ محرک رہنمائی کے لیے ہے، حقیقی وزن کی پیش گوئی کے طور پر نہیں۔';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$ur calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$ur._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$ur biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$ur._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$ur waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$ur._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$ur professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$ur._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$ur extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get description => 'یہ میٹرکس آپ کی جسم کی توانائی کی ضروریات سمجھنے اور غذائی اہداف کی رہنمائی کے لیے ہیں۔';
	@override late final _Translations$disclaimer$healthMetrics$bmr$ur bmr = _Translations$disclaimer$healthMetrics$bmr$ur._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$ur tdee = _Translations$disclaimer$healthMetrics$tdee$ur._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$ur dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$ur._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$ur extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کیلوری اخراج کا اندازہ';
	@override String get description => 'جب Health Connect کا ڈیٹا دستیاب نہیں ہوتا تو ہم آج جلائی گئی کیلوریز کا اندازہ آپ کے BMR اور سرگرمی کی سطح (TDEE) کی بنیاد پر نکالتے ہیں، اور دن میں گزرے حصے کے تناسب کے مطابق اس کو ایڈجسٹ کرتے ہیں۔';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$ur howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$ur._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$ur professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$ur._(_root);
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$ur extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اسمارٹ کھانے کی شناخت';
	@override String get description => 'تصویر لیں اور AI آپ کے کھانے کی شناخت کرے گا۔';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$ur extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI تجزیہ';
	@override String get description => 'اپنی تفصیل سے فوری غذائی معلومات حاصل کریں۔';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$ur extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect کے ساتھ انضمام';
	@override String get description => 'بہتر بصیرت کے لیے Health Connect سے مربوط کریں۔';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$ur extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'کم وزن';
	@override String get healthyWeight => 'صحتمند وزن';
	@override String get overweight => 'زیادہ وزن';
	@override String get obese => 'موٹاپا';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$ur extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ہم آپ کی مدد کر سکتے ہیں ایک متوازن وزن تک پہنچنے کے لیے غذائیت سے بھرپور کھانوں کے ساتھ ایک صحت مند منصوبہ بنانے میں۔';
	@override String get healthy => 'زبردست! آپ صحتمند رینج میں ہیں۔ ہم آپ کی توانائی اور چست طرزِ زندگی برقرار رکھنے میں مدد کریں گے۔';
	@override String overweight({required Object appLabel}) => '${appLabel} آپ کے سفر کو آسان بنائے گا—AI سے چلنے والی ٹریکنگ کے ذریعے آپ آرام سے اپنے ہدف تک پہنچ سکیں گے۔';
	@override String get obese => 'ہم آپ کے ساتھ ہیں ذاتی مشورے اور پائیدار حکمتِ عملیاں فراہم کر کے تاکہ آپ اپنے صحت کے مقاصد حاصل کریں۔';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$ur extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'خودکار کیلوری ٹریکنگ';
	@override String get description => 'اپنی فٹنس ایپس سے جلائی گئی کیلوریز کو ٹریک کریں';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$ur extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'جلنے والی کیلوریز';
	@override String get description => 'Health Connect سے آج جلنے والی کل کیلوریز پڑھیں';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$ur extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پیش رفت کی بصیرت';
	@override String get description => 'اپنی صحت کے رجحانات کے مفصل تجزیے حاصل کریں';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$ur extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'لاگ کیے گئے کھانے شیئر کریں';
	@override String get description => 'Calorify میں لاگ کیے گئے کھانے Health Connect میں لکھیں';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$ur extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'بلا رکاوٹ انضمام';
	@override String get description => 'اپنی پسندیدہ صحت کی ایپس سے ڈیٹا ہم وقت کریں';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$ur extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اختیار آپ کے ہاتھ میں ہے';
	@override String get description => 'دونوں میں سے کوئی بھی اجازت منتخب کریں اور کسی بھی وقت رسائی تبدیل کریں';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$ur extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ اکیلے نہیں ہیں';
	@override String get genericMessage => 'تحقیقات بتاتی ہیں کہ مستقل ٹریکنگ طویل مدتی کامیابی کی سب سے اہم نشاندہی کرتی ہے۔';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'ایک ${age} سالہ ${gender} کے لیے جو ${goal} چاہتا ہے، مستقل ٹریکنگ کامیابی کی سب سے بڑی پیش گوئی ہے۔';
	@override String closingMessage({required Object appLabel}) => '${appLabel} اسے دستی طریقے سے کرنے کے مقابلے میں 10 گنا آسان بناتا ہے۔';
	@override String get getStartedTitle => 'شروع کرنے کے لیے تیار ہیں؟';
	@override String get tipPhoto => 'فوری تجزیے کے لیے اپنے کھانوں کی تصویر لیں';
	@override String get tipConsistency => 'بامقصد پیش رفت دیکھنے کے لیے مستقل لاگ کریں';
	@override String get tipProgress => 'حوصلہ برقرار رکھنے کے لیے روزانہ اپنی پیش رفت ٹریک کریں';
	@override String get button => 'چلیں';
	@override String get defaultGender => 'فرد';
	@override String get defaultGoal => 'زیادہ صحت مند آپ';
}

// Path: onboarding.reinforcement.healthProfile
class _Translations$onboarding$reinforcement$healthProfile$ur extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کا صحت پروفائل';
	@override String bmiDescription({required Object bmi}) => 'آپ کے میٹرکس کی بنیاد پر، آپ کا BMI ${bmi} ہے۔';
	@override String get finalizeDescription => 'آئیے آپ کا پروفائل حتمی شکل دیں تاکہ تجربہ ذاتی ہو سکے۔';
	@override String get goalGain => 'وزن میں اضافہ';
	@override String get goalLose => 'وزن میں کمی';
	@override String goalReach({required Object diff, required Object unit, required Object direction}) => 'اپنے ہدف تک پہنچنے کے لیے آپ ${diff} ${unit} ${direction} کریں گے۔';
	@override String get goalReached => 'آپ اپنے ہدف کے وزن پر ہیں! ہم اسے برقرار رکھنے میں آپ کی مدد کریں گے۔';
	@override String get button => 'چلیں';
}

// Path: onboarding.reinforcement.goalLifestyle
class _Translations$onboarding$reinforcement$goalLifestyle$ur extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'شاندار آغاز!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'آپ نے ${goalText} کی جانب پہلا قدم اٹھایا ہے۔ چونکہ آپ ${activityText} ہیں، ${appLabel} آپ کے طرزِ زندگی کے مطابق آپ کے اہداف کو ایڈجسٹ کرے گا۔';
	@override String get personalizedTargets => 'ذاتی کیلوری اہداف';
	@override String get aiMealDetection => 'AI سے چلنے والی کھانے کی شناخت';
	@override String get macroBreakdowns => 'میکرو غذائی اجزاء کا تفصیلی تقسیم';
	@override String get button => 'چلیں';
	@override String get defaultGoal => 'آپ کے اہداف';
	@override String get defaultActivity => 'فعال';
}

// Path: editProfile.weightGoals.loseWeight
class _Translations$editProfile$weightGoals$loseWeight$ur extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'وزن کم کریں';
	@override String get description => 'وزن کم کرنے کے لیے کیلوری خسارہ بنائیں';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$ur extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'وزن برقرار رکھیں';
	@override String get description => 'اپنا موجودہ وزن برقرار رکھیں';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$ur extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'وزن بڑھائیں';
	@override String get description => 'وزن بڑھانے کے لیے کیلوری سرپلس بنائیں';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$ur extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'کم متحرک';
	@override String get description => 'کم یا بالکل ورزش نہیں';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$ur extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'ہلکا فعال';
	@override String get description => 'ہلکی ورزش 1-3 دن/ہفتہ';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$ur extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'درمیانی طور پر فعال';
	@override String get description => 'درمیانی ورزش 3-5 دن/ہفتہ';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$ur extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'بہت فعال';
	@override String get description => 'سخت ورزش 6-7 دن/ہفتہ';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$ur extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'انتہائی فعال';
	@override String get description => 'بہت سخت ورزش، جسمانی ملازمت';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$ur extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect دستیاب نہیں';
	@override String get description => 'اس ڈیوائس پر Health Connect دستیاب نہیں ہے۔ براہِ کرم Play Store سے Health Connect انسٹال کریں (Android 9+) یا Android 14+ پر اپ ڈیٹ کریں۔';
	@override String get unsupportedDescription => 'اس ڈیوائس پر Health Connect معاون نہیں ہے۔';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$ur extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect پر توجہ درکار ہے';
	@override String get description => 'رسائی کا نظم کرنے سے پہلے Health Connect انسٹال یا اپ ڈیٹ کریں۔';
	@override String get action => 'انسٹال یا اپ ڈیٹ کریں';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$ur extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اجازتیں';
	@override String get description => 'Health Connect انضمام کے لیے درج ذیل اجازتیں درکار ہیں:';
	@override String get granted => 'اجازت دی گئی';
	@override String get notGranted => 'اجازت نہیں دی گئی';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$ur caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$ur._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$ur nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$ur._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$ur nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$ur._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$ur extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ہماری کہانی';
	@override String content({required Object appLabel}) => '${appLabel} ایک سادہ مایوسی سے پیدا ہوا تھا: زیادہ تر کیلوری ٹریکنگ ایپس یا تو ضرورت سے زیادہ پیچیدہ ہیں، مسلسل دستی اندراج کا تقاضا کرتی ہیں، زیادہ سبسکرپشن فیس لیتی ہیں، یا رازداری کا خیال نہیں رکھتیں۔\n\nایک سولو ڈویلپر کی حیثیت سے، میں نے کچھ ایسا بنانا چاہا جو سادہ اور منصفانہ ہو — ایک ایسی ایپ جو AI استعمال کر کے محنت کم کرے، تیز اور مفت رہے، اور آپ کے صحت کے ڈیٹا کا احترام کرے۔\n\n${appLabel} وہ ایپ ہے جس کا میں چاہتا تھا کہ موجود ہو: کوئی اکاؤنٹس نہیں، کوئی ٹریکنگ نہیں، کوئی اشتہارات نہیں — صرف واضح، عملی بصیرت اور آپ کے صحت کے مقاصد۔';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$ur extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کی رازداری اہم ہے';
	@override String get description => 'رازداری کوئی ثانوی خیال نہیں — یہ ڈیزائن کا اصول ہے۔ عملی طور پر اس کا مطلب یہ ہے:';
	@override String get noAccounts => 'اکاؤنٹس درکار نہیں\nفوراً ایپ استعمال کریں۔ کوئی سائن اپ، کوئی شناختی ریکارڈ نہیں۔';
	@override String noTracking({required Object appLabel}) => 'کوئی رویّہ ٹریکنگ نہیں\n${appLabel} آپ کی سرگرمی کی نگرانی نہیں کرتا، استعمال کے پروفائلز نہیں بناتا، اور آپ کو ایپس یا ویب سائٹس کے درمیان ٹریک نہیں کرتا۔';
	@override String analyticsDisclosure({required Object appLabel}) => 'محدود تجزیات اور تشخیص\nقابلِ اعتماد کارکردگی بہتر بنانے کے لیے ${appLabel} ایپ کے بنیادی واقعات اور کریش تشخیص استعمال کرتا ہے۔ صحت کے ریکارڈ کی اقدار اشتہارات کے لیے استعمال یا فروخت نہیں کی جاتیں۔';
	@override String noAds({required Object appLabel}) => 'اشتہارات سے پاک ڈیزائن\n${appLabel} بغیر اشتہارات یا ڈیٹا پر مبنی منافع کے کام کرنے کے لیے بنایا گیا ہے۔';
	@override String get noDataSelling => 'کوئی ڈیٹا فروخت نہیں\nآپ کا صحت کا ڈیٹا کسی تیسرے فریق کو فروخت یا شیئر نہیں کیا جاتا۔';
	@override String get localStorage => 'لوکل-فرسٹ اسٹوریج\nآپ کا ڈیٹا آپ کے ڈیوائس پر ہی رہتا ہے۔';
	@override String get privacyPolicy => 'پرائیویسی پالیسی';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$ur extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ایک سولو ڈویلپر نے بنایا';
	@override String description({required Object appLabel}) => '${appLabel} ایک واحد سولو ڈویلپر کے ذریعے بنایا اور برقرار رکھا جاتا ہے جو پرسکون، رازداری کا احترام کرنے والا صحت سافٹ ویئر تیار کرنے پر مرکوز ہے۔\n\nفیڈبیک ذاتی طور پر پڑھا جاتا ہے اور ایپ کی سمت طے کرنے میں مدد دیتا ہے۔';
	@override String get website => 'ویب سائٹ';
	@override String get email => 'ای میل';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$ur extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} پسند آ رہا ہے؟';
	@override String description({required Object appLabel}) => 'آپ کی رائے ${appLabel} کو سب کے لیے بہتر بنانے میں مدد کرتی ہے۔';
	@override String get rateApp => 'Play Store پر ریٹ کریں';
	@override String get sendFeedback => 'رائے بھیجیں';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$ur extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حصے کا سائز';
	@override String get description => 'اندازوں کی درستگی کا انحصار بڑے پیمانے پر آپ کے حصے کے صحیح اندازے پر ہوتا ہے۔';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$ur extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تیاری کے طریقے';
	@override String description({required Object appLabel}) => 'پکانے کے طریقے غذائی مواد کو نمایاں طور پر بدل سکتے ہیں۔ ${appLabel} کے اندازے ہمیشہ ان تبدیلیوں کو مدِ نظر نہیں رکھ سکتے۔';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$ur extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اجزاء';
	@override String get description => 'پیچیدہ پکوان جن میں بہت سے پوشیدہ اجزاء ہوں، کم درست اندازوں کا باعث بن سکتے ہیں۔';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$ur extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ڈیٹا بیس کی حدود';
	@override String description({required Object appLabel}) => '${appLabel} کا فوڈ ڈیٹا بیس وسیع ہے مگر ہو سکتا ہے ہر خوراک یا ویرینٹ شامل نہ ہو۔';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$ur extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کیلوری درستگی';
	@override String get description => 'یہ اندازہ صرف اسی حد تک درست ہے جتنا آپ نے اپنی کیلوری انٹیک اور اخراج کو درست طور پر ٹریک کیا ہو۔ غیر درست لاگنگ غلط پیش گوئی کا باعث بنے گی۔';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$ur extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حیاتیاتی عوامل';
	@override String description({required Object appLabel}) => 'حقیقی وزن میں تبدیلی میٹابولزم، ہارمونز، نیند، تناؤ، ہائیڈریشن، اور دیگر ذاتی عوامل سے متاثر ہوتی ہے جن کا ${appLabel} اندازہ نہیں لگا سکتا۔';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$ur extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پانی کا وزن اور اتار چڑھاؤ';
	@override String get description => 'روزانہ کا وزن پانی برقرار رکھنے، ہضم اور وقت کی وجہ سے کافی بدل سکتا ہے۔ یہ اندازہ ان روزانہ تبدیلیوں کو مدِ نظر نہیں رکھتا۔';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$ur extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پیشہ ورانہ رہنمائی';
	@override String get description => 'اس اندازے کو طبی فیصلوں کے لیے استعمال نہ کریں۔ ذاتی وزن انتظام کے مشورے کے لیے ہمیشہ کسی ہیلتھ پروفیشنل یا رجسٹرڈ ڈائیٹیشین سے رجوع کریں۔';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$ur extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'بیک-میٹابولک ریٹ (BMR) وہ کیلوریز ہیں جو آپ کا جسم آرام کی حالت میں بنیادی افعال برقرار رکھنے کے لیے جلاتا ہے، جیسے سانس لینا اور گردش۔ BMR آپ کی عمر، صنف، قد، اور وزن پر منحصر ہوتا ہے۔ زیادہ BMR کا مطلب ہے کہ آپ کا جسم آرام کے وقت زیادہ کیلوریز جلاتا ہے، اکثر زیادہ مسلز، چھوٹی عمر، یا مرد ہونے کی وجہ سے۔ کم BMR عام طور پر کم مسلز، بڑی عمر، یا عورت ہونے کی طرف اشارہ کرتا ہے۔';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$ur extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'کل روزانہ توانائی اخراج (TDEE) آپ کی مجموعی روزانہ جلائی گئی کیلوریز ہیں، جس میں آپ کا BMR اور جسمانی سرگرمی سے جلائی گئی کیلوریز شامل ہیں۔ TDEE آپ کے BMR اور سرگرمی کی سطح پر منحصر ہوتا ہے۔ زیادہ TDEE کا مطلب ہے آپ مجموعی طور پر زیادہ کیلوریز جلاتے ہیں، عام طور پر زیادہ فعال ہونے یا زیادہ BMR کی وجہ سے۔ کم TDEE کم روزمرہ سرگرمی یا کم BMR کی نشاندہی کرتا ہے۔';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$ur extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'روزانہ ہدف';
	@override String get description => 'روزانہ ہدف آپ کا تجویز کردہ روزانہ کیلوری انٹیک ہے جو آپ کے TDEE اور وزن کے ہدف کی بنیاد پر ہے۔ وزن کم کرنے کے لیے آپ اپنے TDEE سے کم کیلوریز کھاتے ہیں۔ وزن برقرار رکھنے کے لیے آپ اپنے TDEE کے برابر کھاتے ہیں۔ وزن بڑھانے کے لیے آپ اپنے TDEE سے زیادہ کیلوریز کھاتے ہیں۔ یہ آپ کو صحت مند رفتار سے مطلوبہ وزن تبدیلی حاصل کرنے میں مدد دیتا ہے۔';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$ur extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'یہ اندازہ کیسے نکالا جاتا ہے';
	@override String get description => 'ہم آپ کا TDEE (آپ کے پروفائل کی بنیاد پر) حساب کرتے ہیں اور دن کے گزرے ہوئے حصے (گھنٹے + منٹ) / 24 سے ضرب دے کر آج تک جلائی گئی کیلوریز کا اندازہ لگاتے ہیں۔';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$ur extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پیشہ ورانہ رہنمائی';
	@override String get description => 'اس اندازے کو طبی فیصلوں کے لیے استعمال نہ کریں۔ ذاتی وزن انتظام کے مشورے کے لیے ہمیشہ کسی ہیلتھ پروفیشنل یا رجسٹرڈ ڈائیٹیشن سے رجوع کریں۔';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$ur extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کل جلائی گئی کیلوریز پڑھیں';
	@override String get description => 'ایپ کو Health Connect سے آپ کی کل جلائی گئی کیلوریز پڑھنے کی اجازت دیتا ہے۔';
	@override String get usage => 'یہ اجازت ایپ میں آپ کی روزانہ جلائی گئی کیلوریز دکھانے کے لیے استعمال ہوتی ہے، جو آپ کو دن بھر کی کل توانائی خرچ سمجھنے میں مدد دیتی ہے۔';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$ur extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'غذائی ڈیٹا پڑھیں';
	@override String get description => 'ایپ کو Health Connect سے غذائی ڈیٹا پڑھنے کی اجازت دیتا ہے۔';
	@override String get usage => 'یہ اجازت ایپ کو دوسرے مربوط ایپس سے لاگ کیے گئے غذائی معلومات پڑھنے دیتی ہے، جو آپ کے غذائیت کا جامع منظر فراہم کرتی ہے۔';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$ur extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$ur._(TranslationsUr root) : this._root = root, super.internal(root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'غذائی ڈیٹا لکھیں';
	@override String get description => 'ایپ کو غذائی ڈیٹا Health Connect میں لکھنے کی اجازت دیتا ہے۔';
	@override String get usage => 'یہ اجازت ایپ کو آپ کے لاگ کیے گئے کھانوں کو Health Connect میں سنک کرنے دیتی ہے، جس سے آپ کا غذائی ڈیٹا آپ کی دوسری صحت و فٹنس ایپس کے لیے دستیاب ہو جاتا ہے۔';
}

/// The flat map containing all translations for locale <ur>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsUr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'اردو',
			'flag' => '🇵🇰',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'آپ نے بہت زیادہ درخواستیں کی ہیں۔ براہِ کرم دوبارہ کوشش کرنے سے پہلے تھوڑا انتظار کریں۔',
			'errors.networkError' => 'نیٹ ورک میں خرابی۔ براہِ کرم اپنا انٹرنیٹ کنکشن چیک کریں۔',
			'errors.unknownError' => 'کچھ غلط ہو گیا۔ براہِ کرم بعد میں دوبارہ کوشش کریں۔',
			'errors.loadingProfileData' => 'پروفائل ڈیٹا لوڈ کرنے میں خرابی',
			'errors.somethingWentWrong' => 'کچھ غلط ہو گیا۔',
			'errors.retry' => 'دوبارہ کوشش کریں',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel} میں خوش آمدید',
			'onboarding.subtitle' => 'آپ کا ذاتی غذائیت کا ساتھی، AI کی طاقت کے ساتھ',
			'onboarding.getStarted' => 'شروع کریں',
			'onboarding.features.foodRecognition.title' => 'اسمارٹ کھانے کی شناخت',
			'onboarding.features.foodRecognition.description' => 'تصویر لیں اور AI آپ کے کھانے کی شناخت کرے گا۔',
			'onboarding.features.aiAnalysis.title' => 'AI تجزیہ',
			'onboarding.features.aiAnalysis.description' => 'اپنی تفصیل سے فوری غذائی معلومات حاصل کریں۔',
			'onboarding.features.healthIntegration.title' => 'Health Connect کے ساتھ انضمام',
			'onboarding.features.healthIntegration.description' => 'بہتر بصیرت کے لیے Health Connect سے مربوط کریں۔',
			'onboarding.gender.title' => 'آپ کی صنف کیا ہے؟',
			'onboarding.gender.description' => 'صنف ہمیں آپ کا بنیادی میٹابولک ریٹ (BMR) درست طور پر حساب کرنے میں مدد دیتی ہے۔',
			'onboarding.gender.next' => 'اگلا',
			'onboarding.height.title' => 'آپ کی قد کتنی ہے؟',
			'onboarding.height.description' => 'آپ کی قد BMI اور توانائی کی ضروریات درست طور پر حساب کرنے میں مدد دیتی ہے۔',
			'onboarding.height.metric' => 'میٹرک',
			'onboarding.height.imperial' => 'امپیریل',
			'onboarding.height.next' => 'اگلا',
			'onboarding.weight.currentTitle' => 'آپ کا موجودہ وزن کیا ہے؟',
			'onboarding.weight.currentDescription' => 'روزانہ کے مقاصد کو ذاتی بنانے کے لیے آپ کا موجودہ وزن ضروری ہے۔',
			'onboarding.weight.targetTitle' => 'آپ کا ہدف وزن کیا ہے؟',
			'onboarding.weight.targetDescription' => 'ہدف وزن مقرر کرنے سے ہم آپ کا طویل المدتی منصوبہ تشکیل دے سکتے ہیں۔',
			'onboarding.weight.metric' => 'میٹرک',
			'onboarding.weight.imperial' => 'امپیریل',
			'onboarding.weight.next' => 'اگلا',
			'onboarding.age.title' => 'آپ کی تاریخِ پیدائش کب ہے؟',
			'onboarding.age.description' => 'آپ کی عمر ہمیں کیلوریز کی ضروریات درست طور پر حساب کرنے میں مدد دیتی ہے۔',
			'onboarding.age.next' => 'اگلا',
			'onboarding.bmiScale.underweight' => 'کم',
			'onboarding.bmiScale.healthy' => 'صحتمند',
			'onboarding.bmiScale.overweight' => 'زیادہ',
			'onboarding.bmiScale.obese' => 'موٹاپا',
			'onboarding.bmiScale.categories.underweight' => 'کم وزن',
			'onboarding.bmiScale.categories.healthyWeight' => 'صحتمند وزن',
			'onboarding.bmiScale.categories.overweight' => 'زیادہ وزن',
			'onboarding.bmiScale.categories.obese' => 'موٹاپا',
			'onboarding.bmiScale.messages.underweight' => 'ہم آپ کی مدد کر سکتے ہیں ایک متوازن وزن تک پہنچنے کے لیے غذائیت سے بھرپور کھانوں کے ساتھ ایک صحت مند منصوبہ بنانے میں۔',
			'onboarding.bmiScale.messages.healthy' => 'زبردست! آپ صحتمند رینج میں ہیں۔ ہم آپ کی توانائی اور چست طرزِ زندگی برقرار رکھنے میں مدد کریں گے۔',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} آپ کے سفر کو آسان بنائے گا—AI سے چلنے والی ٹریکنگ کے ذریعے آپ آرام سے اپنے ہدف تک پہنچ سکیں گے۔',
			'onboarding.bmiScale.messages.obese' => 'ہم آپ کے ساتھ ہیں ذاتی مشورے اور پائیدار حکمتِ عملیاں فراہم کر کے تاکہ آپ اپنے صحت کے مقاصد حاصل کریں۔',
			'onboarding.weightGoal.title' => 'آپ کا مقصد کیا ہے؟',
			'onboarding.weightGoal.description' => 'وہ مقصد منتخب کریں جو آپ کی خواہش کو بہترین طور پر بیان کرتا ہے',
			'onboarding.activityLevel.title' => 'آپ کتنے متحرک ہیں؟',
			'onboarding.activityLevel.description' => 'یہ ہمیں آپ کی روزانہ کیلوری کی ضروریات زیادہ درست طور پر حساب کرنے میں مدد دیتا ہے',
			'onboarding.healthConnect.title' => 'Health Connect سے جڑیں',
			'onboarding.healthConnect.description' => 'بہتر بصیرت اور خودکار کیلوری ٹریکنگ کے لیے اپنے صحت کے ڈیٹا کو ہم وقت کریں',
			'onboarding.healthConnect.overviewDescription' => 'اپنے روزانہ ہدف میں جلنے والی کیلوریز استعمال کریں اور چاہیں تو لاگ کیے گئے کھانے Health Connect کے ساتھ شیئر کریں۔',
			'onboarding.healthConnect.automaticTracking.title' => 'خودکار کیلوری ٹریکنگ',
			'onboarding.healthConnect.automaticTracking.description' => 'اپنی فٹنس ایپس سے جلائی گئی کیلوریز کو ٹریک کریں',
			'onboarding.healthConnect.caloriesBurned.title' => 'جلنے والی کیلوریز',
			'onboarding.healthConnect.caloriesBurned.description' => 'Health Connect سے آج جلنے والی کل کیلوریز پڑھیں',
			'onboarding.healthConnect.progressInsights.title' => 'پیش رفت کی بصیرت',
			'onboarding.healthConnect.progressInsights.description' => 'اپنی صحت کے رجحانات کے مفصل تجزیے حاصل کریں',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'لاگ کیے گئے کھانے شیئر کریں',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Calorify میں لاگ کیے گئے کھانے Health Connect میں لکھیں',
			'onboarding.healthConnect.seamlessIntegration.title' => 'بلا رکاوٹ انضمام',
			'onboarding.healthConnect.seamlessIntegration.description' => 'اپنی پسندیدہ صحت کی ایپس سے ڈیٹا ہم وقت کریں',
			'onboarding.healthConnect.userControl.title' => 'اختیار آپ کے ہاتھ میں ہے',
			'onboarding.healthConnect.userControl.description' => 'دونوں میں سے کوئی بھی اجازت منتخب کریں اور کسی بھی وقت رسائی تبدیل کریں',
			'onboarding.healthConnect.connected' => 'Health Connect مربوط ہے',
			'onboarding.healthConnect.notConnected' => 'Health Connect مربوط نہیں ہے',
			'onboarding.healthConnect.setup' => 'Health Connect سیٹ اپ کریں',
			'onboarding.healthConnect.skipForNow' => 'اسے ابھی چھوڑ دیں',
			'onboarding.healthConnect.statusConnected' => 'Health Connect مربوط ہو چکا ہے۔',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect کامیابی سے مربوط ہو گیا!',
			'onboarding.healthConnect.statusNotConnected' => 'Health Connect کی وہ خصوصیات منتخب کریں جنہیں آپ فعال کرنا چاہتے ہیں۔',
			'onboarding.healthConnect.statusPartial' => 'Health Connect جزوی طور پر منسلک ہے۔ دونوں خصوصیات استعمال کرنے کے لیے باقی اجازت فعال کریں۔',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'جاری رکھنے کے لیے Health Connect انسٹال یا اپ ڈیٹ کریں۔',
			'onboarding.healthConnect.statusUnavailable' => 'اس ڈیوائس پر Health Connect معاون نہیں ہے۔',
			'onboarding.healthConnect.installOrUpdate' => 'انسٹال یا اپ ڈیٹ کریں',
			'onboarding.healthConnect.manageAccess' => 'رسائی کا نظم کریں',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'اجازت نامنظور۔ براہِ کرم ${appLabel} کے لیے Health Connect کی اجازتیں اپنے فون کی سیٹنگز میں فعال کریں۔',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect سیٹ کرنے میں خرابی: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'آپ اکیلے نہیں ہیں',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'تحقیقات بتاتی ہیں کہ مستقل ٹریکنگ طویل مدتی کامیابی کی سب سے اہم نشاندہی کرتی ہے۔',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'ایک ${age} سالہ ${gender} کے لیے جو ${goal} چاہتا ہے، مستقل ٹریکنگ کامیابی کی سب سے بڑی پیش گوئی ہے۔',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} اسے دستی طریقے سے کرنے کے مقابلے میں 10 گنا آسان بناتا ہے۔',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'شروع کرنے کے لیے تیار ہیں؟',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'فوری تجزیے کے لیے اپنے کھانوں کی تصویر لیں',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'بامقصد پیش رفت دیکھنے کے لیے مستقل لاگ کریں',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'حوصلہ برقرار رکھنے کے لیے روزانہ اپنی پیش رفت ٹریک کریں',
			'onboarding.reinforcement.trackingSuccess.button' => 'چلیں',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'فرد',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'زیادہ صحت مند آپ',
			'onboarding.reinforcement.healthProfile.title' => 'آپ کا صحت پروفائل',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'آپ کے میٹرکس کی بنیاد پر، آپ کا BMI ${bmi} ہے۔',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'آئیے آپ کا پروفائل حتمی شکل دیں تاکہ تجربہ ذاتی ہو سکے۔',
			'onboarding.reinforcement.healthProfile.goalGain' => 'وزن میں اضافہ',
			'onboarding.reinforcement.healthProfile.goalLose' => 'وزن میں کمی',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object diff, required Object unit, required Object direction}) => 'اپنے ہدف تک پہنچنے کے لیے آپ ${diff} ${unit} ${direction} کریں گے۔',
			'onboarding.reinforcement.healthProfile.goalReached' => 'آپ اپنے ہدف کے وزن پر ہیں! ہم اسے برقرار رکھنے میں آپ کی مدد کریں گے۔',
			'onboarding.reinforcement.healthProfile.button' => 'چلیں',
			'onboarding.reinforcement.goalLifestyle.title' => 'شاندار آغاز!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'آپ نے ${goalText} کی جانب پہلا قدم اٹھایا ہے۔ چونکہ آپ ${activityText} ہیں، ${appLabel} آپ کے طرزِ زندگی کے مطابق آپ کے اہداف کو ایڈجسٹ کرے گا۔',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'ذاتی کیلوری اہداف',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI سے چلنے والی کھانے کی شناخت',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'میکرو غذائی اجزاء کا تفصیلی تقسیم',
			'onboarding.reinforcement.goalLifestyle.button' => 'چلیں',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'آپ کے اہداف',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'فعال',
			'tabs.dashboard' => 'ڈیش بورڈ',
			'tabs.history' => 'ہسٹری',
			'home.aiSummary.title' => 'آپ کا AI خلاصہ',
			'home.aiSummary.logMore' => 'اپنی ذاتی AI بصیرت حاصل کرنے کے لیے اگلے چند دنوں میں مزید کھانے لاگ کریں۔',
			'home.aiSummary.loading' => 'آپ کا خلاصہ لوڈ کیا جا رہا ہے...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} کھانے لاگ کیے گئے',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'بیلنس اسکور ${score}',
			'home.aiSummary.topFoods' => 'مقبول کھانے',
			'home.aiSummary.trendUp' => 'کیلوریز میں اضافہ ہو رہا ہے',
			'home.aiSummary.trendDown' => 'کیلوریز میں کمی ہو رہی ہے',
			'home.aiSummary.trendSteady' => 'کیلوریز مستحکم ہیں',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'تازہ کیا گیا ${time}',
			'home.dailyGoal.title' => 'اپنا روزانہ ہدف مقرر کریں',
			'home.dailyGoal.titleSet' => 'آپ کا روزانہ ہدف',
			'home.dailyGoal.description' => 'کیا آپ اپنی فلاح و بہبود کے سفر کا آغاز کرنے کے لیے تیار ہیں؟ اپنی پیش رفت شروع کرنے کے لیے ذیل میں اپنا روزانہ کیلوری ہدف مقرر کریں۔',
			'home.dailyGoal.descriptionSet' => 'آپ کا کمپاس سیٹ ہو گیا ہے! یہ آپ کی رہنمائی کے لیے روزانہ کیلوری ہدف ہے۔',
			'home.dailyGoal.yourGoal' => 'آپ کا ہدف',
			'home.dailyGoal.goal' => 'ہدف',
			'home.dailyGoal.dailyCalories' => 'روزانہ کیلوریز (kcal)',
			'home.dailyGoal.setGoal' => 'ہدف مقرر کریں',
			'home.dailyGoal.intake' => 'انٹیک',
			'home.dailyGoal.burned' => 'جلائی گئی',
			'home.dailyGoal.weightImpact' => 'وزن پر اثر',
			'home.dailyGoal.estLoss' => 'تخمینی کمی',
			'home.dailyGoal.estGain' => 'تخمینی اضافہ',
			'home.dailyGoal.kcal' => 'کلو کیلوری',
			'home.dailySummary.title' => 'روزانہ کا خلاصہ',
			'home.dailySummary.calories' => 'کیلوریز',
			'home.dailySummary.carbs' => 'کاربس',
			'home.dailySummary.protein' => 'پروٹین',
			'home.dailySummary.fat' => 'چکنائی',
			'home.dailySummary.fiber' => 'فائبر',
			'home.dailySummary.grams' => 'گرام',
			'home.dailySummary.chartAccessibilityLabel' => 'میکروز چارٹ',
			'home.intakeProgress.title' => 'آج کا میکرو تقسیم',
			'home.intakeProgress.target' => 'ہدف',
			'home.intakeProgress.current' => 'موجودہ',
			'home.intakeHistory.title' => '7 روزہ میکرو ہسٹری',
			'home.intakeHistory.trendTitle' => 'آج کا رجحان',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'عروج: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'ابھی تک کوئی ہسٹری نہیں',
			'home.intakeHistory.startLogging' => 'یہاں اپنے کھانے لاگ کرنا شروع کریں تاکہ آپ\n7 روزہ میکرو رجحانات دیکھ سکیں',
			'home.mealLog.title' => 'لاگ کیے گئے کھانے',
			'home.mealLog.emptyMessage' => 'اپنے آخری کھانے کی تصویر لے کر یہاں لاگ کریں۔',
			'home.mealLog.noMealsToday' => 'آج کے لیے کوئی کھانا ریکارڈ نہیں ہوا',
			'home.mealLog.seeAllMeals' => 'تمام کھانے دیکھیں',
			'home.mealDescription.title' => 'AI سے فوری اضافہ',
			'home.mealDescription.description' => 'اپنے کھانے کو بیان کریں، اور تفصیلات AI پر چھوڑ دیں۔',
			'home.mealDescription.hint' => 'مثلاً: ناشتے میں میں نے اوٹس کا بڑا پیالہ، کٹا ہوا کیلا اور ایک اسکوپ وِی پروٹین لیا…',
			'home.mealDescription.analyzeMeal' => 'کھانے کا تجزیہ کریں',
			'home.favoriteMeals.title' => 'پسندیدہ کھانے',
			'home.favoriteMeals.description' => 'اپنے پسندیدہ کھانوں میں سے جلدی شامل کریں۔',
			'home.favoriteMeals.noFavorites' => 'ابھی کوئی پسندیدہ کھانا نہیں ہے۔',
			'home.favoriteMeals.addFavoriteHint' => 'کسی کھانے پر ستارے پر کلک کریں تا کہ اسے پسندیدہ نشان زد کریں۔',
			'home.favoriteMeals.seeAll' => 'سب دیکھیں',
			'home.favoriteMeals.add' => 'شامل کریں',
			'home.mealSnap.title' => 'اپنے کھانے کی تصویر لے کر ٹریک کریں',
			'home.mealSnap.description' => 'AI تجزیے کے لیے اپنے کھانے کی تصویر لینے کے لیے کیمرہ استعمال کریں۔',
			'home.mealSnap.openCamera' => 'کیمرہ کھولیں',
			'home.mealSnap.gallery' => 'گیلری',
			'home.mealSnap.compressingPhoto' => 'تصویر کو بہتر کیا جا رہا ہے…',
			'home.mealSnap.uploadingPhoto' => 'تصویر اپ لوڈ کی جا رہی ہے…',
			'home.connectHealth.title' => 'Health Connect کے ساتھ ہم وقت کریں',
			'home.connectHealth.description' => 'اپنے غذائی ڈیٹا کو Health Connect کے ساتھ ہم وقت کریں',
			'home.connectHealth.dataUseDescription' => 'اپنے ہدف میں جلنے والی کیلوریز استعمال کریں اور لاگ کیے گئے کھانے شیئر کریں',
			'home.connectHealth.install' => 'انسٹال کریں',
			'home.connectHealth.installOrUpdate' => 'انسٹال یا اپ ڈیٹ کریں',
			'home.connectHealth.connect' => 'کنیکٹ کریں',
			'history.noMeals' => 'کوئی کھانا ریکارڈ نہیں ہوا',
			'history.emptyMessage' => 'اپنے آخری کھانے کی تصویر لے کر یہاں لاگ کریں۔',
			'history.today' => 'آج',
			'history.yesterday' => 'گزشتہ روز',
			'meal.ohNo' => 'اوہ نہیں!',
			'meal.delete' => 'حذف کریں',
			'meal.editMeal' => 'کھانے میں ترمیم کریں',
			'meal.addMeal' => 'کھانا شامل کریں',
			'meal.saveMeal' => 'کھانا محفوظ کریں',
			'meal.save' => 'محفوظ کریں',
			'meal.mealName' => 'کھانے کا نام',
			'meal.mealNameHint' => 'مثلاً، آملیٹ کے ساتھ ٹوسٹ',
			'meal.nameRequired' => 'محفوظ کرنے سے پہلے کھانے کا نام درج کریں۔',
			'meal.mealQuantity' => 'کھانے کی مقدار',
			'meal.mealQuantityHint' => 'مثلاً، 1 پیالہ، 2 سلائس',
			'meal.timeOfMeal' => 'کھانے کا وقت',
			'meal.timeOfMealHint' => 'وہ وقت منتخب کریں جب آپ نے کھایا',
			'meal.mealType' => 'کھانے کی قسم',
			'meal.nutrition.calories' => 'کیلوریز',
			'meal.nutrition.carbs' => 'کاربس (گ)',
			'meal.nutrition.protein' => 'پروٹین (گ)',
			'meal.nutrition.fat' => 'چکنائی (گ)',
			'meal.nutrition.fiber' => 'فائبر (گ)',
			'meal.deleteConfirmation.title' => 'کھانے کو حذف کریں',
			'meal.deleteConfirmation.message' => 'کیا آپ واقعی اس کھانے کا اندراج حذف کرنا چاہتے ہیں؟',
			'meal.deleteConfirmation.cancel' => 'منسوخ کریں',
			'meal.deleteConfirmation.delete' => 'حذف کریں',
			'meal.addedToLog' => 'کھانا آپ کے لاگ میں شامل کر دیا گیا!',
			'meal.couldNotAdd' => ({required Object error}) => 'کھانا شامل نہیں کیا جا سکا: ${error}',
			'meal.savedSuccessfully' => 'کھانا کامیابی سے شامل ہو گیا!',
			'meal.updatedSuccessfully' => 'کھانے میں کامیابی سے تازہ کاری ہوئی!',
			'meal.errorSaving' => ({required Object error}) => 'کھانا محفوظ کرنے میں خرابی: ${error}',
			'meal.removedFromFavorites' => 'پسندیدہ سے ہٹا دیا گیا!',
			'meal.savedAsFavorite' => 'کھانا پسندیدہ کے طور پر محفوظ کیا گیا!',
			'meal.unfavorite' => 'پسندیدہ ختم کریں',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'پسندیدہ اپ ڈیٹ نہیں ہو سکا: ${error}',
			'meal.feedbackThanks' => 'رائے دینے کا شکریہ!',
			'meal.reanalysisUpdated' => 'آپ کی رائے کی بنیاد پر کھانے کا تجزیہ اپ ڈیٹ کیا گیا۔',
			'meal.failedToProcess' => ({required Object error}) => 'عمل کرنے میں ناکامی: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'تصویر پروسس کرنے میں ناکامی: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'تصویر کمپریس کرنے میں خرابی: ${error}',
			'meal.failedToSave' => 'ڈیٹا محفوظ کرنے میں ناکامی۔ براہِ کرم دوبارہ کوشش کریں۔',
			'meal.skip' => 'اسکِپ کریں',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'سوال ${current} از ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'کوئی سوال دستیاب نہیں',
			'meal.questionFlow.next' => 'اگلا',
			'meal.questionFlow.continueLabel' => 'جاری رکھیں',
			'meal.analysis.title' => 'آپ کے کھانے کا تجزیہ ہو رہا ہے',
			'meal.analysis.stepStarted' => 'شروع کیا جا رہا ہے…',
			'meal.analysis.stepDecomposition' => 'آپ کے کھانے کو سمجھا جا رہا ہے…',
			'meal.analysis.stepIngredients' => 'اجزاء کو غذائی ڈیٹا سے ملایا جا رہا ہے…',
			'meal.analysis.stepUncertainty' => 'اعتماد چیک کیا جا رہا ہے…',
			'meal.analysis.stepMealTypeQuestion' => 'جلد ہی مکمل…',
			'meal.analysis.stepResult' => 'نتیجہ حتمی شکل دے رہے ہیں…',
			'meal.analysis.stepError' => 'کچھ غلط ہو گیا',
			'meal.analysis.stepDefault' => 'آپ کے کھانے کا تجزیہ…',
			'meal.analysis.progressUnderstand' => 'آپ کے کھانے کو سمجھنا',
			'meal.analysis.progressMatch' => 'اجزاء کی غذائیت تلاش کی جا رہی ہے',
			'meal.analysis.progressCheck' => 'حصوں اور اعتماد کی جانچ',
			'meal.analysis.progressMealType' => 'کھانے کی قسم منتخب کی جا رہی ہے',
			'meal.analysis.progressFinish' => 'کیلوریز اور میکروز کا حساب لگایا جا رہا ہے',
			'meal.analysis.detectedIngredientHeading' => 'جو اجزاء ہم دیکھ رہے ہیں',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} مزید',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} اجزاء معلوم ہوئے',
			'meal.analysis.ingredientsPending' => 'اجزاء اسکین کیے جا رہے ہیں…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '”${text}“',
			'meal.analysis.offlineTip0' => 'ٹپ: استقامت کمالیت پر غالب ہے — باقاعدہ لاگ وہ پیٹرن ظاہر کرتے ہیں جو اہم ہیں۔',
			'meal.analysis.offlineTip1' => 'ٹپ: تصویروں کے لیے قدرتی روشنی اور اوپر سے منظر حصوں کی درستگی میں مدد دیتی ہے۔',
			'meal.analysis.offlineTip2' => 'ٹپ: مشروبات، ساسز اور پکانے کا تیل ضرور بتائیں — یہ کیلوریز میں اضافہ کرتے ہیں جو اکثر بھول جاتے ہیں۔',
			'meal.analysis.offlineTip3' => 'ٹپ: ایک مختصر حصہ نوٹ (مثلاً 1 پیالہ، بڑا کافی) اندازوں کو بہت بہتر بناتا ہے۔',
			'meal.analysis.offlineTip4' => 'ٹپ: کھانے کے بعد لاگ کرنا بھی عادت بناتا ہے؛ کمال ضروری نہیں۔',
			'meal.analysis.offlineTip5' => 'ٹپ: جب پکانے کا طریقہ کیلوریز پر بہت اثر ڈالے تو بتائیں (تلّا ہوا بمقابلہ بیک کیا ہوا)۔',
			'meal.localInference.reviewTitle' => 'جائزہ شدہ اجزاء دیکھیں',
			'meal.localInference.reviewSubtitle' => 'یہ آپ کے ڈیوائس پر ترتیب دیا گیا تھا۔ غذائیت کے حساب سے پہلے ناموں یا مقدار کی تصحیح کریں۔',
			'meal.localInference.mealName' => 'کھانے کا نام',
			'meal.localInference.ingredient' => 'اجزاء',
			'meal.localInference.grams' => 'تخمینہ گرام',
			'meal.localInference.removeIngredient' => 'اجزاء ہٹائیں',
			'meal.localInference.continueLabel' => 'جاری رکھیں',
			'meal.localInference.invalidProposal' => 'کم از کم ایک جزو شامل کریں اور گرام کی مثبت مقدار استعمال کریں۔',
			'meal.localInference.localUnavailable' => 'آن-ڈیوائس تجزیہ اس وقت دستیاب نہیں ہے۔',
			'meal.localInference.calculationDetails' => 'اس کا حساب کیسے لگایا گیا',
			'meal.localInference.interpretationLocal' => 'اس ڈیوائس پر ترتیب دیے گئے اجزاء',
			'meal.localInference.interpretationCloud' => 'کلاؤڈ میں ترتیب دیے گئے اجزاء',
			'meal.localInference.interpretationManual' => 'آپ کے ذریعے جائزہ لیے گئے یا تبدیل کیے گئے اجزاء',
			'meal.localInference.nutritionRemote' => 'USDA سے Calorify کے ذریعے حاصل کردہ غذائیت',
			'meal.localInference.nutritionFallback' => 'کچھ غذائی اقدار کا تخمینہ ریموٹلی لگایا گیا',
			'meal.localInference.calculationServer' => 'کیلوریز اور میکروز کا حساب Calorify نے لگایا',
			'meal.localInference.fallbackUsed' => 'مقامی تجزیہ کلاؤڈ پروسیسنگ پر منتقل ہو گیا',
			'meal.localInference.noRawContent' => 'تشخیصی رسیدوں میں آپ کے کھانے کی تحریر یا تصویر شامل نہیں ہوتی۔',
			'meal.feedback.title' => 'کون سی بات غلط لگی؟',
			'meal.feedback.subtitle' => 'کئی مسائل میں سے ایک یا زیادہ منتخب کر کے تجزیے کو بہتر بنانے میں ہماری مدد کریں۔',
			'meal.feedback.tellUsMore' => 'ہمیں مزید بتائیں',
			'meal.feedback.describeIncorrect' => 'بتائیں کیا غلط تھا',
			'meal.feedback.submit' => 'جمع کریں',
			'meal.feedback.issueFoodIdentification' => 'کھانے کی شناخت',
			'meal.feedback.issuePortionSize' => 'حصہ کا سائز',
			'meal.feedback.issueCalorieDistribution' => 'کیلوری تقسیم',
			'meal.feedback.issueMacrosWrong' => 'میکروز غلط ہیں',
			'meal.feedback.issueMissingItems' => 'غائب اشیاء',
			'meal.feedback.issueExtraItems' => 'اضافی اشیاء',
			'meal.feedback.issueOther' => 'دوسرا',
			'favorites.title' => 'پسندیدہ',
			'favorites.empty' => 'ابھی کوئی پسندیدہ کھانا نہیں ہے۔',
			'favorites.searchPlaceholder' => 'پسندیدہ کھانے تلاش کریں',
			'favorites.searchEmptyTitle' => 'آپ کے تلاش سے کوئی پسندیدہ میل نہیں ملا',
			'favorites.searchEmptySubtitle' => 'کسی مختلف کھانے کا نام، مقدار، یا قسم آزمائیں۔',
			'favorites.sortLabel' => 'پسندیدہ ترتیب دیں',
			'favorites.undo' => 'واپس کریں',
			'favorites.removed' => ({required Object name}) => '${name} کو پسندیدہ سے ہٹا دیا گیا',
			'favorites.sortOptions.recent' => 'حالیہ',
			'favorites.sortOptions.calories' => 'کیلوریز',
			'favorites.sortOptions.alphabetical' => 'حروف تہجی',
			'profile.title' => 'پروفائل',
			'profile.noProfileData' => 'کوئی پروفائل ڈیٹا نہیں ملا',
			'profile.yourProfile' => 'آپ کا پروفائل',
			'profile.viewAndManage' => 'اپنی صحت کی معلومات دیکھیں اور منظم کریں',
			'profile.sections.profile' => 'پروفائل',
			'profile.sections.basicInformation' => 'بنیادی معلومات',
			'profile.sections.goalsAndActivity' => 'اہداف اور سرگرمی',
			'profile.sections.calculatedValues' => 'محاسبہ شدہ اقدار',
			'profile.gender' => 'صنف',
			'profile.height' => 'قد',
			'profile.weight' => 'وزن',
			'profile.age' => 'عمر',
			'profile.weightGoal' => 'وزن کا ہدف',
			'profile.targetWeight' => 'ہدف وزن',
			'profile.activityLevel' => 'سرگرمی کی سطح',
			'profile.healthMetrics' => 'صحت کے میٹرکس',
			'profile.notSet' => 'متقرر نہیں',
			'profile.years' => 'سال',
			'profile.updatedSuccessfully' => 'پروفائل کامیابی سے اپ ڈیٹ ہو گیا!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'روزانہ ہدف',
			'profile.calculatedValues.calPerDay' => 'cal/دن',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'صحت اسکور',
			'healthScore.whyThisScore' => 'یہ اسکور کیوں؟',
			'healthScore.note' => 'یہ اسکور AI کی ایک تخمینی درجہ بندی ہے جس کی بنیاد شناخت شدہ اجزاء اور غذائی کثافت ہے۔ ذاتی مشورے کے لیے ہمیشہ کسی ماہر سے رجوع کریں۔',
			'healthScore.unhealthy' => 'غیر صحت مند',
			'healthScore.healthy' => 'صحت مند',
			'healthScore.neutral' => 'درمیانی',
			'editProfile.title' => 'پروفائل ترمیم کریں',
			'editProfile.sections.personalInformation' => 'ذاتی معلومات',
			'editProfile.sections.physicalMeasurements' => 'جسمانی پیمائشیں',
			'editProfile.sections.goalsAndActivity' => 'اہداف اور سرگرمی',
			'editProfile.gender' => 'صنف',
			'editProfile.dateOfBirth' => 'تاریخ پیدائش',
			'editProfile.height' => 'قد',
			'editProfile.weight' => 'وزن',
			'editProfile.weightGoal' => 'وزن کا ہدف',
			'editProfile.activityLevel' => 'سرگرمی کی سطح',
			'editProfile.metric' => 'میٹرک',
			'editProfile.imperial' => 'امپیریل',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'پاؤنڈ',
			'editProfile.metricCm' => 'میٹرک (cm)',
			'editProfile.imperialFtIn' => 'امپیریل (ft/in)',
			'editProfile.metricKg' => 'میٹرک (kg)',
			'editProfile.imperialLbs' => 'امپیریل (lbs)',
			'editProfile.genders.male' => 'مرد',
			'editProfile.genders.female' => 'عورت',
			'editProfile.genders.other' => 'دیگر',
			'editProfile.weightGoals.loseWeight.name' => 'وزن کم کریں',
			'editProfile.weightGoals.loseWeight.description' => 'وزن کم کرنے کے لیے کیلوری خسارہ بنائیں',
			'editProfile.weightGoals.maintainWeight.name' => 'وزن برقرار رکھیں',
			'editProfile.weightGoals.maintainWeight.description' => 'اپنا موجودہ وزن برقرار رکھیں',
			'editProfile.weightGoals.gainWeight.name' => 'وزن بڑھائیں',
			'editProfile.weightGoals.gainWeight.description' => 'وزن بڑھانے کے لیے کیلوری سرپلس بنائیں',
			'editProfile.activityLevels.sedentary.name' => 'کم متحرک',
			'editProfile.activityLevels.sedentary.description' => 'کم یا بالکل ورزش نہیں',
			'editProfile.activityLevels.lightlyActive.name' => 'ہلکا فعال',
			'editProfile.activityLevels.lightlyActive.description' => 'ہلکی ورزش 1-3 دن/ہفتہ',
			'editProfile.activityLevels.moderatelyActive.name' => 'درمیانی طور پر فعال',
			'editProfile.activityLevels.moderatelyActive.description' => 'درمیانی ورزش 3-5 دن/ہفتہ',
			'editProfile.activityLevels.veryActive.name' => 'بہت فعال',
			'editProfile.activityLevels.veryActive.description' => 'سخت ورزش 6-7 دن/ہفتہ',
			'editProfile.activityLevels.extremelyActive.name' => 'انتہائی فعال',
			'editProfile.activityLevels.extremelyActive.description' => 'بہت سخت ورزش، جسمانی ملازمت',
			'settings.title' => 'ترتیبات',
			'settings.sections.profile' => 'پروفائل',
			'settings.sections.localization' => 'لوکلائزیشن',
			'settings.sections.notifications' => 'اطلاعات',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.localInference' => 'آن-ڈیوائس تجزیہ',
			'settings.sections.supportAndLegal' => 'سپورٹ اور قانونی',
			'settings.sections.about' => 'ایپ کے بارے میں',
			'settings.sections.dangerZone' => 'خطرناک علاقے',
			'settings.sections.developer' => 'ڈیولپر',
			'settings.editProfile.title' => 'پروفائل ترمیم کریں',
			'settings.editProfile.subtitle' => 'اپنی ذاتی معلومات اپڈیٹ کریں',
			'settings.language.title' => 'زبان',
			'settings.language.subtitle' => 'اپنی پسندیدہ زبان منتخب کریں',
			'settings.language.searchHint' => 'زبانیں تلاش کریں...',
			'settings.language.noResults' => 'کوئی نتیجہ نہیں ملا',
			'settings.heightUnit.title' => 'قد کی اکائی',
			'settings.weightUnit.title' => 'وزن کی اکائی',
			'settings.mealReminders.title' => 'کھانے کی یاددہانیاں',
			'settings.mealReminders.subtitle' => 'بروقت اعلانات کے ساتھ راستے پر رہیں',
			'settings.localInference.title' => 'آن-ڈیوائس کھانے کا تجزیہ',
			'settings.localInference.subtitle' => 'غذائیت کے حساب سے پہلے Gemini Nano کے ذریعے معاون کھانے ترتیب دیں',
			'settings.localInference.unavailable' => 'اس ڈیوائس پر دستیاب نہیں ہے',
			'settings.localInference.rolloutUnavailable' => 'مطابقہ ہارڈ ویئر مل گیا، لیکن یہ فیچر اس ایپ ریلیز کے لیے فعال نہیں ہے',
			'settings.localInference.modelSetup' => 'اسے فعال کرنے سے پہلے Gemini Nano کا ڈاؤن لوڈ مکمل ہونا ضروری ہے',
			'settings.localInference.useLocalTitle' => 'آن-ڈیوائس تجزیہ استعمال کریں',
			'settings.localInference.useLocalSubtitle' => 'اختیاری اور ڈیفالٹ طور پر بند۔ پیچیدہ کھانوں کے لیے نتائج کم قابل اعتماد ہو سکتے ہیں۔',
			'settings.localInference.disclosureTitle' => 'آن-ڈیوائس تجزیہ فعال کرنے سے پہلے',
			'settings.localInference.disclosureBody' => 'Gemini Nano معاون Android ڈیوائسز پر اجزاء کی شناخت اور مقدار کا تخمینہ لگا سکتا ہے۔ آپ کا جائزہ لیا گیا تجویز کردہ جزو USDA غذائی بنیاد اور حساب کے لیے Calorify کو بھیجا جاتا ہے۔',
			'settings.localInference.disclosureLimit1' => 'پیچیدہ پکوان، چھپے ہوئے اجزاء، اور مقدار کی شناخت غلط ہو سکتی ہے۔',
			'settings.localInference.disclosureLimit2' => 'ڈاؤن لوڈنگ، مصروفیت، بیک گراؤنڈ میں ہونے، یا ڈیوائس کی حدود کی وجہ سے ماڈل دستیاب نہیں ہو سکتا۔',
			'settings.localInference.disclosureLimit3' => 'اگر مقامی ترتیب مکمل نہیں ہو پاتی، تو یہ بیٹا ورژن خود بخود آپ کے کھانے کی اصل تفصیل کلاؤڈ تجزیہ کے لیے Calorify کو بھیج دیتا ہے۔',
			'settings.localInference.acknowledgement' => 'میں سمجھتا/سمجھتی ہوں کہ مجھے شناخت شدہ اجزاء اور مقدار کا جائزہ لینا چاہیے۔',
			'settings.localInference.enable' => 'تسلیم کریں اور فعال کریں',
			'settings.localInference.cancel' => 'منسوخ کریں',
			'settings.theme.title' => 'تھیم',
			'settings.theme.light' => 'ہلکا',
			'settings.theme.dark' => 'تاریک',
			'settings.theme.system' => 'سسٹم',
			'settings.sendFeedback.title' => 'رائے بھیجیں',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'ہمیں بہتر بنانے میں مدد کریں ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} ایپ تاثرات',
			'settings.sendFeedback.emailBodyPrefix' => 'براہِ کرم نیچے اپنی رائے لکھیں:',
			'settings.sendFeedback.appVersion' => 'ایپ ورژن',
			'settings.sendFeedback.device' => 'ڈیوائس',
			'settings.sendFeedback.osVersion' => 'OS ورژن',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'کھانے کی ہسٹری برآمد کریں',
			'settings.exportMealHistory.subtitle' => 'اپنے لاگ کیے گئے کھانوں کا CSV شیئر کریں',
			'settings.exportMealHistory.shareText' => 'آپ کی Calorify کھانے کی ہسٹری ایکسپورٹ',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'کھانے کی ہسٹری برآمد نہیں ہو سکی: ${error}',
			'settings.clearAllData.title' => 'تمام ڈیٹا صاف کریں',
			'settings.clearAllData.subtitle' => 'آپ کی تمام معلومات کو ناقابلِ واپسی طور پر حذف کریں',
			'settings.clearAllData.localOnlySubtitle' => 'اس ڈیوائس پر محفوظ Calorify ڈیٹا حذف کریں',
			'settings.clearAllData.confirmationTitle' => 'تمام ڈیٹا صاف کر دوں؟',
			'settings.clearAllData.confirmationMessage' => 'یہ عمل واپس نہیں کیا جا سکتا۔ آپ کے تمام لاگ کیے گئے کھانے، پسندیدہ اور پروفائل سیٹنگز مستقل طور پر حذف ہو جائیں گے۔',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'یہ اس ڈیوائس سے لاگ کیے گئے کھانے، پسندیدہ اشیا اور پروفائل سیٹنگز مستقل طور پر حذف کر دے گا۔ Health Connect میں پہلے شیئر کیے گئے کھانے اور Health Connect کی رسائی کو سیٹنگز > Health Connect میں الگ سے منظم کیا جاتا ہے۔',
			'settings.clearAllData.cancel' => 'منسوخ کریں',
			'settings.clearAllData.clearEverything' => 'سب کچھ صاف کریں',
			'settings.debugOptions.title' => 'ڈیبگ آپشنز',
			'settings.developerModeEnabled' => 'ڈیولپر موڈ فعال ہو گیا!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'اجازتیں دیکھیں اور منظم کریں',
			'settings.healthConnect.unavailable.title' => 'Health Connect دستیاب نہیں',
			'settings.healthConnect.unavailable.description' => 'اس ڈیوائس پر Health Connect دستیاب نہیں ہے۔ براہِ کرم Play Store سے Health Connect انسٹال کریں (Android 9+) یا Android 14+ پر اپ ڈیٹ کریں۔',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'اس ڈیوائس پر Health Connect معاون نہیں ہے۔',
			'settings.healthConnect.updateRequired.title' => 'Health Connect پر توجہ درکار ہے',
			'settings.healthConnect.updateRequired.description' => 'رسائی کا نظم کرنے سے پہلے Health Connect انسٹال یا اپ ڈیٹ کریں۔',
			'settings.healthConnect.updateRequired.action' => 'انسٹال یا اپ ڈیٹ کریں',
			'settings.healthConnect.permissions.title' => 'اجازتیں',
			'settings.healthConnect.permissions.description' => 'Health Connect انضمام کے لیے درج ذیل اجازتیں درکار ہیں:',
			'settings.healthConnect.permissions.granted' => 'اجازت دی گئی',
			'settings.healthConnect.permissions.notGranted' => 'اجازت نہیں دی گئی',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'کل جلائی گئی کیلوریز پڑھیں',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'ایپ کو Health Connect سے آپ کی کل جلائی گئی کیلوریز پڑھنے کی اجازت دیتا ہے۔',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'یہ اجازت ایپ میں آپ کی روزانہ جلائی گئی کیلوریز دکھانے کے لیے استعمال ہوتی ہے، جو آپ کو دن بھر کی کل توانائی خرچ سمجھنے میں مدد دیتی ہے۔',
			'settings.healthConnect.permissions.nutritionRead.title' => 'غذائی ڈیٹا پڑھیں',
			'settings.healthConnect.permissions.nutritionRead.description' => 'ایپ کو Health Connect سے غذائی ڈیٹا پڑھنے کی اجازت دیتا ہے۔',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'یہ اجازت ایپ کو دوسرے مربوط ایپس سے لاگ کیے گئے غذائی معلومات پڑھنے دیتی ہے، جو آپ کے غذائیت کا جامع منظر فراہم کرتی ہے۔',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'غذائی ڈیٹا لکھیں',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'ایپ کو غذائی ڈیٹا Health Connect میں لکھنے کی اجازت دیتا ہے۔',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'یہ اجازت ایپ کو آپ کے لاگ کیے گئے کھانوں کو Health Connect میں سنک کرنے دیتی ہے، جس سے آپ کا غذائی ڈیٹا آپ کی دوسری صحت و فٹنس ایپس کے لیے دستیاب ہو جاتا ہے۔',
			'settings.healthConnect.managePermissions' => 'اجازتیں منظم کریں',
			'settings.healthConnect.openSettings' => 'Health Connect سیٹنگز کھولیں',
			'settings.healthConnect.disconnect' => 'Health Connect کا رابطہ منقطع کریں',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Health Connect کا رابطہ منقطع کریں؟',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify کی Health Connect تک رسائی ختم ہو جائے گی۔ وہاں پہلے سے لکھا گیا ڈیٹا حذف نہیں ہوگا۔',
			'settings.healthConnect.disconnectConfirmationAction' => 'رابطہ منقطع کریں',
			'settings.healthConnect.deleteSyncedMeals' => 'Health Connect سے Calorify کے کھانے حذف کریں',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'ہم وقت کیے گئے کھانے حذف کریں؟',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Calorify کے اس ورژن سے Health Connect میں ہم وقت کیے گئے کھانے حذف کریں؟ آپ کا مقامی کھانوں کا ریکارڈ تبدیل نہیں ہوگا۔ Calorify کی پرانی اندراجات کو Health Connect میں ڈیٹا کا نظم کریں کے ذریعے الگ سے حذف کرنا پڑ سکتا ہے۔',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'ہم وقت کیے گئے کھانے حذف کریں',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Health Connect سے Calorify کے کھانے حذف کر دیے گئے۔',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'ہم وقت کیے گئے کھانے حذف نہیں ہو سکے۔ دوبارہ کوشش کریں۔',
			'settings.healthConnect.connectionPartial' => 'Health Connect کی کچھ خصوصیات فعال ہیں۔',
			'settings.healthConnect.connectionComplete' => 'Health Connect کی دونوں خصوصیات فعال ہیں۔',
			'settings.healthConnect.actionFailed' => 'Health Connect نہیں کھولا جا سکا۔ دوبارہ کوشش کریں۔',
			'settings.healthConnect.requestPermissions' => 'اجازتیں درخواست کریں',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'اجازت کی درخواست منسوخ یا ناکام ہو گئی۔ براہِ کرم دوبارہ کوشش کریں یا Health Connect سیٹنگز میں دستی طور پر اجازتیں دیں۔',
			'settings.healthConnect.permissionRequestFailed' => 'اجازتیں درخواست کرنے میں ناکامی۔ براہِ کرم دوبارہ کوشش کریں یا Health Connect کی سیٹنگز میں دستی طور پر اجازت دیں۔',
			'settings.healthConnect.requestingPermissions' => 'درخواست بھیجی جا رہی ہے...',
			'settings.about.title' => 'ایپ کے بارے میں',
			'settings.about.tagline' => 'تیز، مفت، اور رازداری کو مقدم رکھنے والی کیلوری آگاہی',
			'settings.about.ourStory.title' => 'ہماری کہانی',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} ایک سادہ مایوسی سے پیدا ہوا تھا: زیادہ تر کیلوری ٹریکنگ ایپس یا تو ضرورت سے زیادہ پیچیدہ ہیں، مسلسل دستی اندراج کا تقاضا کرتی ہیں، زیادہ سبسکرپشن فیس لیتی ہیں، یا رازداری کا خیال نہیں رکھتیں۔\n\nایک سولو ڈویلپر کی حیثیت سے، میں نے کچھ ایسا بنانا چاہا جو سادہ اور منصفانہ ہو — ایک ایسی ایپ جو AI استعمال کر کے محنت کم کرے، تیز اور مفت رہے، اور آپ کے صحت کے ڈیٹا کا احترام کرے۔\n\n${appLabel} وہ ایپ ہے جس کا میں چاہتا تھا کہ موجود ہو: کوئی اکاؤنٹس نہیں، کوئی ٹریکنگ نہیں، کوئی اشتہارات نہیں — صرف واضح، عملی بصیرت اور آپ کے صحت کے مقاصد۔',
			'settings.about.privacy.title' => 'آپ کی رازداری اہم ہے',
			'settings.about.privacy.description' => 'رازداری کوئی ثانوی خیال نہیں — یہ ڈیزائن کا اصول ہے۔ عملی طور پر اس کا مطلب یہ ہے:',
			'settings.about.privacy.noAccounts' => 'اکاؤنٹس درکار نہیں\nفوراً ایپ استعمال کریں۔ کوئی سائن اپ، کوئی شناختی ریکارڈ نہیں۔',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'کوئی رویّہ ٹریکنگ نہیں\n${appLabel} آپ کی سرگرمی کی نگرانی نہیں کرتا، استعمال کے پروفائلز نہیں بناتا، اور آپ کو ایپس یا ویب سائٹس کے درمیان ٹریک نہیں کرتا۔',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'محدود تجزیات اور تشخیص\nقابلِ اعتماد کارکردگی بہتر بنانے کے لیے ${appLabel} ایپ کے بنیادی واقعات اور کریش تشخیص استعمال کرتا ہے۔ صحت کے ریکارڈ کی اقدار اشتہارات کے لیے استعمال یا فروخت نہیں کی جاتیں۔',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'اشتہارات سے پاک ڈیزائن\n${appLabel} بغیر اشتہارات یا ڈیٹا پر مبنی منافع کے کام کرنے کے لیے بنایا گیا ہے۔',
			'settings.about.privacy.noDataSelling' => 'کوئی ڈیٹا فروخت نہیں\nآپ کا صحت کا ڈیٹا کسی تیسرے فریق کو فروخت یا شیئر نہیں کیا جاتا۔',
			'settings.about.privacy.localStorage' => 'لوکل-فرسٹ اسٹوریج\nآپ کا ڈیٹا آپ کے ڈیوائس پر ہی رہتا ہے۔',
			'settings.about.privacy.privacyPolicy' => 'پرائیویسی پالیسی',
			'settings.about.developer.title' => 'ایک سولو ڈویلپر نے بنایا',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} ایک واحد سولو ڈویلپر کے ذریعے بنایا اور برقرار رکھا جاتا ہے جو پرسکون، رازداری کا احترام کرنے والا صحت سافٹ ویئر تیار کرنے پر مرکوز ہے۔\n\nفیڈبیک ذاتی طور پر پڑھا جاتا ہے اور ایپ کی سمت طے کرنے میں مدد دیتا ہے۔',
			'settings.about.developer.website' => 'ویب سائٹ',
			'settings.about.developer.email' => 'ای میل',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel} پسند آ رہا ہے؟',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'آپ کی رائے ${appLabel} کو سب کے لیے بہتر بنانے میں مدد کرتی ہے۔',
			'settings.about.feedback.rateApp' => 'Play Store پر ریٹ کریں',
			'settings.about.feedback.sendFeedback' => 'رائے بھیجیں',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify ورژن ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'بلڈ ${buildNumber}',
			'reminders.title' => 'یاددہانیوں کے ساتھ راستے پر رہیں',
			'reminders.description' => 'کھانے لاگ کرنے کے ہلکے یاددہانیاں حاصل کریں اور اپنے غذائی اہداف کے ساتھ مستقل رہیں',
			'reminders.notificationsEnabled' => 'اطلاعات فعال ہیں',
			'reminders.notificationsDisabled' => 'اطلاعات غیر فعال ہیں',
			'reminders.enabledSubtitle' => 'آپ کو کھانے کی یاددہانی ملیں گی',
			'reminders.disabledSubtitle' => 'کھانے کی یاددہانی کے لیے اطلاعات فعال کریں',
			'reminders.mealReminders' => 'کھانے کی یاددہانیاں',
			'reminders.breakfast' => 'ناشتا',
			'reminders.lunch' => 'دوپہر کا کھانا',
			'reminders.dinner' => 'رات کا کھانا',
			'reminders.snack' => 'سنیک',
			'reminders.unknown' => 'نامعلوم',
			'reminders.change' => 'تبدیلی کریں',
			'reminders.enableNotifications' => 'اطلاعات فعال کریں',
			'reminders.skipForNow' => 'اسے ابھی چھوڑ دیں',
			'reminders.saveChanges' => 'تبدیلیاں محفوظ کریں',
			'reminders.enabledSuccessfully' => 'اطلاعات کامیابی سے فعال ہو گئیں!',
			'reminders.permissionDenied' => 'اطلاعات کی اجازت نامنظور',
			'reminders.errorEnabling' => ({required Object error}) => 'اطلاعات فعال کرنے میں خرابی: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'سیٹ اپ مکمل کرنے میں خرابی: ${error}',
			'notifications.breakfast.title' => 'ناشتے کا وقت! 🍳',
			'notifications.breakfast.body' => 'اپنا ناشتہ لاگ کرنا نہ بھولیں',
			'notifications.lunch.title' => 'دوپہر کے کھانے کا وقت! 🥗',
			'notifications.lunch.body' => 'اپنا دوپہر کا کھانا لاگ کرنے کا وقت ہے',
			'notifications.dinner.title' => 'رات کے کھانے کا وقت! 🍽️',
			'notifications.dinner.body' => 'اپنا رات کا کھانا لاگ کرنا نہ بھولیں',
			'notifications.snack.title' => 'سنیک کا وقت! 🍎',
			'notifications.snack.body' => 'صحت مند سنیک لینے کا وقت ہے',
			'notifications.test.title' => 'ٹیسٹ نوٹیفیکیشن',
			'login.title' => 'لاگ ان',
			_ => null,
		} ?? switch (path) {
			'login.signInWithGoogle' => 'Google سے سائن ان کریں',
			'login.signInFailed' => 'Google سائن ان ناکام ہوا یا منسوخ کر دیا گیا۔',
			'disclaimer.pleaseNote' => 'براہِ کرم نوٹ کریں',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} تخمینی غذائی معلومات فراہم کرتا ہے۔ درستگی آپ کے داخل کیے گئے ڈیٹا اور کھانے کی اقسام پر منحصر ہے۔ اسے رہنما سمجھیں، حتمی ماخذ کے طور پر نہیں۔ ذاتی غذائی مشورے کے لیے کسی ماہر سے رجوع کریں۔',
			'disclaimer.snap.portionSize.title' => 'حصے کا سائز',
			'disclaimer.snap.portionSize.description' => 'اندازوں کی درستگی کا انحصار بڑے پیمانے پر آپ کے حصے کے صحیح اندازے پر ہوتا ہے۔',
			'disclaimer.snap.preparationMethods.title' => 'تیاری کے طریقے',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'پکانے کے طریقے غذائی مواد کو نمایاں طور پر بدل سکتے ہیں۔ ${appLabel} کے اندازے ہمیشہ ان تبدیلیوں کو مدِ نظر نہیں رکھ سکتے۔',
			'disclaimer.snap.ingredients.title' => 'اجزاء',
			'disclaimer.snap.ingredients.description' => 'پیچیدہ پکوان جن میں بہت سے پوشیدہ اجزاء ہوں، کم درست اندازوں کا باعث بن سکتے ہیں۔',
			'disclaimer.snap.databaseLimitations.title' => 'ڈیٹا بیس کی حدود',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} کا فوڈ ڈیٹا بیس وسیع ہے مگر ہو سکتا ہے ہر خوراک یا ویرینٹ شامل نہ ہو۔',
			'disclaimer.weightEstimate.title' => 'وزن کے اندازے کے بارے میں',
			'disclaimer.weightEstimate.description' => 'پیش گوئی شدہ وزن کی تبدیلی ایک نظریاتی اندازہ ہے جو سادہ کیلوری-ان بمقابلہ کیلوری-آؤٹ ماڈل پر مبنی ہے۔ یہ محرک رہنمائی کے لیے ہے، حقیقی وزن کی پیش گوئی کے طور پر نہیں۔',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'کیلوری درستگی',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'یہ اندازہ صرف اسی حد تک درست ہے جتنا آپ نے اپنی کیلوری انٹیک اور اخراج کو درست طور پر ٹریک کیا ہو۔ غیر درست لاگنگ غلط پیش گوئی کا باعث بنے گی۔',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'حیاتیاتی عوامل',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'حقیقی وزن میں تبدیلی میٹابولزم، ہارمونز، نیند، تناؤ، ہائیڈریشن، اور دیگر ذاتی عوامل سے متاثر ہوتی ہے جن کا ${appLabel} اندازہ نہیں لگا سکتا۔',
			'disclaimer.weightEstimate.waterWeight.title' => 'پانی کا وزن اور اتار چڑھاؤ',
			'disclaimer.weightEstimate.waterWeight.description' => 'روزانہ کا وزن پانی برقرار رکھنے، ہضم اور وقت کی وجہ سے کافی بدل سکتا ہے۔ یہ اندازہ ان روزانہ تبدیلیوں کو مدِ نظر نہیں رکھتا۔',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'پیشہ ورانہ رہنمائی',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'اس اندازے کو طبی فیصلوں کے لیے استعمال نہ کریں۔ ذاتی وزن انتظام کے مشورے کے لیے ہمیشہ کسی ہیلتھ پروفیشنل یا رجسٹرڈ ڈائیٹیشین سے رجوع کریں۔',
			'disclaimer.healthMetrics.description' => 'یہ میٹرکس آپ کی جسم کی توانائی کی ضروریات سمجھنے اور غذائی اہداف کی رہنمائی کے لیے ہیں۔',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'بیک-میٹابولک ریٹ (BMR) وہ کیلوریز ہیں جو آپ کا جسم آرام کی حالت میں بنیادی افعال برقرار رکھنے کے لیے جلاتا ہے، جیسے سانس لینا اور گردش۔ BMR آپ کی عمر، صنف، قد، اور وزن پر منحصر ہوتا ہے۔ زیادہ BMR کا مطلب ہے کہ آپ کا جسم آرام کے وقت زیادہ کیلوریز جلاتا ہے، اکثر زیادہ مسلز، چھوٹی عمر، یا مرد ہونے کی وجہ سے۔ کم BMR عام طور پر کم مسلز، بڑی عمر، یا عورت ہونے کی طرف اشارہ کرتا ہے۔',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'کل روزانہ توانائی اخراج (TDEE) آپ کی مجموعی روزانہ جلائی گئی کیلوریز ہیں، جس میں آپ کا BMR اور جسمانی سرگرمی سے جلائی گئی کیلوریز شامل ہیں۔ TDEE آپ کے BMR اور سرگرمی کی سطح پر منحصر ہوتا ہے۔ زیادہ TDEE کا مطلب ہے آپ مجموعی طور پر زیادہ کیلوریز جلاتے ہیں، عام طور پر زیادہ فعال ہونے یا زیادہ BMR کی وجہ سے۔ کم TDEE کم روزمرہ سرگرمی یا کم BMR کی نشاندہی کرتا ہے۔',
			'disclaimer.healthMetrics.dailyGoal.title' => 'روزانہ ہدف',
			'disclaimer.healthMetrics.dailyGoal.description' => 'روزانہ ہدف آپ کا تجویز کردہ روزانہ کیلوری انٹیک ہے جو آپ کے TDEE اور وزن کے ہدف کی بنیاد پر ہے۔ وزن کم کرنے کے لیے آپ اپنے TDEE سے کم کیلوریز کھاتے ہیں۔ وزن برقرار رکھنے کے لیے آپ اپنے TDEE کے برابر کھاتے ہیں۔ وزن بڑھانے کے لیے آپ اپنے TDEE سے زیادہ کیلوریز کھاتے ہیں۔ یہ آپ کو صحت مند رفتار سے مطلوبہ وزن تبدیلی حاصل کرنے میں مدد دیتا ہے۔',
			'disclaimer.calorieExpenditure.title' => 'کیلوری اخراج کا اندازہ',
			'disclaimer.calorieExpenditure.description' => 'جب Health Connect کا ڈیٹا دستیاب نہیں ہوتا تو ہم آج جلائی گئی کیلوریز کا اندازہ آپ کے BMR اور سرگرمی کی سطح (TDEE) کی بنیاد پر نکالتے ہیں، اور دن میں گزرے حصے کے تناسب کے مطابق اس کو ایڈجسٹ کرتے ہیں۔',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'یہ اندازہ کیسے نکالا جاتا ہے',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'ہم آپ کا TDEE (آپ کے پروفائل کی بنیاد پر) حساب کرتے ہیں اور دن کے گزرے ہوئے حصے (گھنٹے + منٹ) / 24 سے ضرب دے کر آج تک جلائی گئی کیلوریز کا اندازہ لگاتے ہیں۔',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'پیشہ ورانہ رہنمائی',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'اس اندازے کو طبی فیصلوں کے لیے استعمال نہ کریں۔ ذاتی وزن انتظام کے مشورے کے لیے ہمیشہ کسی ہیلتھ پروفیشنل یا رجسٹرڈ ڈائیٹیشن سے رجوع کریں۔',
			'localNutritionPhase4.nutritionBundled' => 'غذائیت ڈاؤن لوڈ کیے گئے USDA پیک سے ملائی گئی',
			'localNutritionPhase4.nutritionCached' => 'غذائیت ڈیوائس کی USDA کیش سے ملائی گئی',
			'localNutritionPhase4.nutritionMixed' => 'غذائیت ڈاؤن لوڈ، کیش شدہ اور ریموٹ USDA قطاروں سے یکجا کی گئی',
			'localNutritionPhase4.calculationLocal' => 'اس ڈیوائس پر کیلوریز اور میکروز کا حساب لگایا گیا',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: ڈاؤن لوڈ کیا گیا USDA پیک',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: ڈیوائس کی USDA کیش',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: Calorify کے ذریعے حاصل کی گئی USDA قطار',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: متعین غذائی مستقل',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · ڈیٹاسیٹ ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'کم',
			'localNutritionPhase4.portionEstimated' => 'تخمینی',
			'localNutritionPhase4.portionLarger' => 'زیادہ',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => '${ingredient} کے لیے کون سی مقدار سب سے قریب تھی؟',
			'localNutritionPhase4.mealTypeQuestion' => 'یہ کون سا کھانا تھا؟',
			'localNutritionPhase4.localNutritionTip' => 'تصدیق شدہ مقامی غذائی ڈیٹا سے حساب لگایا گیا۔',
			'localNutritionPhase4.offlineNutritionTitle' => 'غذائی ڈیٹا ڈاؤن لوڈ کریں',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'جب ہر جزو شامل ہو تو اس ڈیوائس پر تصدیق شدہ USDA قطاریں اور متعین حساب استعمال کریں۔',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'ایپ کے اس ورژن کے لیے مقامی غذائی ڈیٹا دستیاب نہیں ہے۔',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'کوئی تصدیق شدہ غذائی پیک ڈاؤن لوڈ نہیں کیا گیا۔',
			'localNutritionPhase4.offlineNutritionInstalling' => 'غذائی ڈیٹا ڈاؤن لوڈ اور تصدیق کیا جا رہا ہے…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'پیک ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} کیش شدہ USDA قطاریں · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'اپ ڈیٹ چیک کریں',
			'localNutritionPhase4.offlineNutritionClear' => 'مقامی غذائی ڈیٹا صاف کریں',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'مقامی غذائی ڈیٹا صاف کریں؟',
			'localNutritionPhase4.offlineNutritionClearBody' => 'اس سے ڈاؤن لوڈ کیا گیا USDA پیک اور تلاش کی کیش ہٹ جائے گی۔ محفوظ کیے گئے کھانے عین وہی غذائی اسنیپ شاٹ برقرار رکھیں گے جو محفوظ کرتے وقت استعمال ہوا تھا۔',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'ڈیٹا صاف کریں',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'مقامی غذائی ڈیٹا ڈاؤن لوڈ اور تصدیق نہیں کیا جا سکا: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'مقامی غذائی ڈیٹا صاف کر دیا گیا',
			'common.close' => 'بند کریں',
			'common.kContinue' => 'جاری رکھیں',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel} پسند آ رہا ہے؟',
			'feedbackRating.yes' => 'ہاں، پسند آ رہا ہے',
			'feedbackRating.no' => 'زیادہ نہیں',
			'feedbackRating.rateStepHeading' => 'Play Store پر ریٹ کریں',
			'feedbackRating.emailStepHeading' => 'ای میل کے ذریعے فیڈ بیک بھیجیں',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'ایک مختصر ریٹنگ دوسروں کو ${appLabel} تلاش کرنے میں مدد دیتی ہے اور ترقی کو جاری رکھنے میں مدد کرتی ہے۔ کیا آپ ایک لمحہ نکال کر ریٹ کریں گے؟',
			'feedbackRating.shareFeedbackViaEmail' => 'آپ کی رائے آئندہ کی تشکیل کرتی ہے — ہم ہر پیغام پڑھتے ہیں۔ کیا آپ ای میل کے ذریعے خیالات شیئر کرنا چاہیں گے؟',
			'feedbackRating.rateCta' => 'Play Store پر ریٹ کریں',
			'feedbackRating.maybeLater' => 'شاید بعد میں',
			'feedbackRating.sendFeedback' => 'رائے بھیجیں',
			'feedbackRating.noThanks' => 'نہيں شکریہ',
			'feedbackRating.aboutUsDescription' => 'احتیاط کے ساتھ چھوٹے گروپ نے بنایا گیا۔ ہم رازداری، سادگی، اور بہتر کھانے کی عادات بنانے پر توجہ دیتے ہیں۔',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'جانیے ${appLabel} کے پیچھے کون ہے؟ دیکھیں ',
			'feedbackRating.aboutUsLinkLabel' => 'ہمارے بارے میں',
			'feedbackRating.thankYouMessage' => 'شکریہ! ہم کسی اور وقت دوبارہ پوچھیں گے۔',
			'health.syncFailed' => 'Health Connect کے ساتھ ہم وقت نہیں ہو سکا',
			'health.mealSynced' => 'کھانا Health Connect کے ساتھ ہم وقت ہو گیا',
			_ => null,
		};
	}
}
