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
class TranslationsUr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsUr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ur,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ur>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsUr _root = this; // ignore: unused_field

	@override 
	TranslationsUr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsUr(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Urdu';
	@override String get flag => '🇵🇰';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsOnboardingUr onboarding = _TranslationsOnboardingUr._(_root);
	@override late final _TranslationsTabsUr tabs = _TranslationsTabsUr._(_root);
	@override late final _TranslationsHomeUr home = _TranslationsHomeUr._(_root);
	@override late final _TranslationsHistoryUr history = _TranslationsHistoryUr._(_root);
	@override late final _TranslationsMealUr meal = _TranslationsMealUr._(_root);
	@override late final _TranslationsFavoritesUr favorites = _TranslationsFavoritesUr._(_root);
	@override late final _TranslationsProfileUr profile = _TranslationsProfileUr._(_root);
	@override late final _TranslationsHealthScoreUr healthScore = _TranslationsHealthScoreUr._(_root);
	@override late final _TranslationsEditProfileUr editProfile = _TranslationsEditProfileUr._(_root);
	@override late final _TranslationsSettingsUr settings = _TranslationsSettingsUr._(_root);
	@override late final _TranslationsRemindersUr reminders = _TranslationsRemindersUr._(_root);
	@override late final _TranslationsNotificationsUr notifications = _TranslationsNotificationsUr._(_root);
	@override late final _TranslationsLoginUr login = _TranslationsLoginUr._(_root);
	@override late final _TranslationsDisclaimerUr disclaimer = _TranslationsDisclaimerUr._(_root);
	@override late final _TranslationsCommonUr common = _TranslationsCommonUr._(_root);
	@override late final _TranslationsErrorsUr errors = _TranslationsErrorsUr._(_root);
	@override late final _TranslationsDebugUr debug = _TranslationsDebugUr._(_root);
	@override late final _TranslationsHealthUr health = _TranslationsHealthUr._(_root);
}

// Path: onboarding
class _TranslationsOnboardingUr implements TranslationsOnboardingEn {
	_TranslationsOnboardingUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} میں خوش آمدید';
	@override String get subtitle => 'آپ کا ذاتی غذائیت ساتھی جو AI کی طاقت سے ہے';
	@override String get getStarted => 'شروع کریں';
	@override late final _TranslationsOnboardingFeaturesUr features = _TranslationsOnboardingFeaturesUr._(_root);
	@override late final _TranslationsOnboardingGenderUr gender = _TranslationsOnboardingGenderUr._(_root);
	@override late final _TranslationsOnboardingHeightUr height = _TranslationsOnboardingHeightUr._(_root);
	@override late final _TranslationsOnboardingWeightUr weight = _TranslationsOnboardingWeightUr._(_root);
	@override late final _TranslationsOnboardingAgeUr age = _TranslationsOnboardingAgeUr._(_root);
	@override late final _TranslationsOnboardingBmiScaleUr bmiScale = _TranslationsOnboardingBmiScaleUr._(_root);
	@override late final _TranslationsOnboardingWeightGoalUr weightGoal = _TranslationsOnboardingWeightGoalUr._(_root);
	@override late final _TranslationsOnboardingActivityLevelUr activityLevel = _TranslationsOnboardingActivityLevelUr._(_root);
	@override late final _TranslationsOnboardingHealthConnectUr healthConnect = _TranslationsOnboardingHealthConnectUr._(_root);
	@override late final _TranslationsOnboardingReinforcementUr reinforcement = _TranslationsOnboardingReinforcementUr._(_root);
}

// Path: tabs
class _TranslationsTabsUr implements TranslationsTabsEn {
	_TranslationsTabsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'ڈیش بورڈ';
	@override String get history => 'تاریخ';
}

// Path: home
class _TranslationsHomeUr implements TranslationsHomeEn {
	_TranslationsHomeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalUr dailyGoal = _TranslationsHomeDailyGoalUr._(_root);
	@override late final _TranslationsHomeDailySummaryUr dailySummary = _TranslationsHomeDailySummaryUr._(_root);
	@override late final _TranslationsHomeIntakeProgressUr intakeProgress = _TranslationsHomeIntakeProgressUr._(_root);
	@override late final _TranslationsHomeIntakeHistoryUr intakeHistory = _TranslationsHomeIntakeHistoryUr._(_root);
	@override late final _TranslationsHomeMealLogUr mealLog = _TranslationsHomeMealLogUr._(_root);
	@override late final _TranslationsHomeMealDescriptionUr mealDescription = _TranslationsHomeMealDescriptionUr._(_root);
	@override late final _TranslationsHomeFavoriteMealsUr favoriteMeals = _TranslationsHomeFavoriteMealsUr._(_root);
	@override late final _TranslationsHomeMealSnapUr mealSnap = _TranslationsHomeMealSnapUr._(_root);
	@override late final _TranslationsHomeConnectHealthUr connectHealth = _TranslationsHomeConnectHealthUr._(_root);
}

// Path: history
class _TranslationsHistoryUr implements TranslationsHistoryEn {
	_TranslationsHistoryUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'کوئی کھانے کا ریکارڈ نہیں';
	@override String get emptyMessage => 'اپنے آخری کھانے کی تصویر لیں اور اسے یہاں درج کریں۔';
	@override String get today => 'آج';
	@override String get yesterday => 'کل';
}

// Path: meal
class _TranslationsMealUr implements TranslationsMealEn {
	_TranslationsMealUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'اوہ نہیں!';
	@override String get delete => 'حذف کریں';
	@override String get editMeal => 'کھانا ترمیم کریں';
	@override String get addMeal => 'کھانا شامل کریں';
	@override String get saveMeal => 'کھانا محفوظ کریں';
	@override String get save => 'محفوظ کریں';
	@override String get mealName => 'کھانے کا نام';
	@override String get mealQuantity => 'کھانے کی مقدار';
	@override String get mealQuantityHint => 'جیسے، 1 پیالی، 2 ٹکڑے';
	@override String get timeOfMeal => 'کھانے کا وقت';
	@override String get timeOfMealHint => 'چنیں کہ آپ نے کھانا کب لیا';
	@override String get mealType => 'کھانے کی قسم';
	@override late final _TranslationsMealNutritionUr nutrition = _TranslationsMealNutritionUr._(_root);
	@override late final _TranslationsMealDeleteConfirmationUr deleteConfirmation = _TranslationsMealDeleteConfirmationUr._(_root);
	@override String get addedToLog => 'کھانا آپ کے لاگ میں شامل کیا گیا!';
	@override String couldNotAdd({required Object error}) => 'کھانا شامل نہیں کیا جا سکا: ${error}';
	@override String get removedFromFavorites => 'پسندیدہ سے ہٹا دیا گیا!';
	@override String get savedAsFavorite => 'کھانا پسندیدہ کے طور پر محفوظ کر لیا گیا!';
	@override String couldNotUpdateFavorite({required Object error}) => 'پسندیدہ کو اپ ڈیٹ نہیں کر سکا: ${error}';
	@override String failedToProcess({required Object error}) => 'عملدرآمد میں ناکامی: ${error}';
	@override String failedToProcessImage({required Object error}) => 'تصویر کے عمل میں ناکامی: ${error}';
	@override String errorCompressingImage({required Object error}) => 'تصویر کمپریس کرنے میں خرابی: ${error}';
	@override String get failedToSave => 'ڈیٹا محفوظ کرنے میں ناکامی. براہ کرم دوبارہ کوشش کریں.';
}

// Path: favorites
class _TranslationsFavoritesUr implements TranslationsFavoritesEn {
	_TranslationsFavoritesUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پسندیدہ';
	@override String get empty => 'ابھی کوئی پسندیدہ کھانے نہیں ہیں۔';
}

// Path: profile
class _TranslationsProfileUr implements TranslationsProfileEn {
	_TranslationsProfileUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروفائل';
	@override String get noProfileData => 'کوئی پروفائل ڈیٹا نہیں ملا';
	@override String get yourProfile => 'آپ کا پروفائل';
	@override String get viewAndManage => 'اپنی صحت کی معلومات دیکھیں اور انتظام کریں';
	@override late final _TranslationsProfileSectionsUr sections = _TranslationsProfileSectionsUr._(_root);
	@override String get gender => 'جنس';
	@override String get height => 'قد';
	@override String get weight => 'وزن';
	@override String get age => 'عمر';
	@override String get weightGoal => 'وزن کا ہدف';
	@override String get activityLevel => 'سرگرمی کی سطح';
	@override String get healthMetrics => 'صحت کے میٹرکس';
	@override String get notSet => 'مقرر نہیں';
	@override String get years => 'سال';
	@override String get updatedSuccessfully => 'پروفائل کامیابی سے اپ ڈیٹ ہو گئی!';
	@override late final _TranslationsProfileCalculatedValuesUr calculatedValues = _TranslationsProfileCalculatedValuesUr._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreUr implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'صحت کا اسکور';
	@override String get whyThisScore => 'یہ اسکور کیوں؟';
	@override String get note => 'یہ اسکور شناخت شدہ اجزاء اور غذائیت کی کثافت کی بنیاد پر AI کا اندازہ ہے۔ ہمیشہ غذائیت کی مشاورت کے لیے پیشہ ور سے مشورہ کریں۔';
	@override String get unhealthy => 'غیر صحت مند';
	@override String get healthy => 'صحت مند';
	@override String get neutral => 'غیر جانبدار';
}

// Path: editProfile
class _TranslationsEditProfileUr implements TranslationsEditProfileEn {
	_TranslationsEditProfileUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروفائل ترمیم کریں';
	@override late final _TranslationsEditProfileSectionsUr sections = _TranslationsEditProfileSectionsUr._(_root);
	@override String get gender => 'جنس';
	@override String get dateOfBirth => 'تاریخ پیدائش';
	@override String get height => 'قد';
	@override String get weight => 'وزن';
	@override String get weightGoal => 'وزن کا ہدف';
	@override String get activityLevel => 'سرگرمی کی سطح';
	@override String get metric => 'میٹرک';
	@override String get imperial => 'امپیریل';
	@override String get metricCm => 'میٹرک (سینٹی میٹر)';
	@override String get imperialFtIn => 'امپیریل (فیٹ/انچ)';
	@override String get metricKg => 'میٹرک (کلو)';
	@override String get imperialLbs => 'امپیریل (پاؤنڈ)';
	@override late final _TranslationsEditProfileGendersUr genders = _TranslationsEditProfileGendersUr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsUr weightGoals = _TranslationsEditProfileWeightGoalsUr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsUr activityLevels = _TranslationsEditProfileActivityLevelsUr._(_root);
}

// Path: settings
class _TranslationsSettingsUr implements TranslationsSettingsEn {
	_TranslationsSettingsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ترتیبات';
	@override late final _TranslationsSettingsSectionsUr sections = _TranslationsSettingsSectionsUr._(_root);
	@override late final _TranslationsSettingsEditProfileUr editProfile = _TranslationsSettingsEditProfileUr._(_root);
	@override late final _TranslationsSettingsLanguageUr language = _TranslationsSettingsLanguageUr._(_root);
	@override late final _TranslationsSettingsHeightUnitUr heightUnit = _TranslationsSettingsHeightUnitUr._(_root);
	@override late final _TranslationsSettingsWeightUnitUr weightUnit = _TranslationsSettingsWeightUnitUr._(_root);
	@override late final _TranslationsSettingsMealRemindersUr mealReminders = _TranslationsSettingsMealRemindersUr._(_root);
	@override late final _TranslationsSettingsThemeUr theme = _TranslationsSettingsThemeUr._(_root);
	@override late final _TranslationsSettingsSendFeedbackUr sendFeedback = _TranslationsSettingsSendFeedbackUr._(_root);
	@override late final _TranslationsSettingsClearAllDataUr clearAllData = _TranslationsSettingsClearAllDataUr._(_root);
	@override late final _TranslationsSettingsDebugOptionsUr debugOptions = _TranslationsSettingsDebugOptionsUr._(_root);
	@override String get developerModeEnabled => 'ڈیولپر موڈ فعال ہو گیا!';
}

// Path: reminders
class _TranslationsRemindersUr implements TranslationsRemindersEn {
	_TranslationsRemindersUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'یاد دہانیوں کے ساتھ ٹریک پر رہیں';
	@override String get description => 'اپنے کھانوں کے اندراج کے لیے آپ کو نرم یاد دہانیاں موصول ہوں گی تاکہ آپ اپنے غذائیت کے اہداف کے ساتھ مستقل رہ سکیں';
	@override String get notificationsEnabled => 'نوٹیفیکیشن فعال ہیں';
	@override String get notificationsDisabled => 'نوٹیفیکیشن غیر فعال ہیں';
	@override String get enabledSubtitle => 'آپ کو کھانے کی یاد دہانیاں موصول ہوں گی';
	@override String get disabledSubtitle => 'کھانے کی یاد دہانیوں کے لیے نوٹیفیکیشن فعال کریں';
	@override String get mealReminders => 'کھانے کی یاد دہانیاں';
	@override String get breakfast => 'ناشتہ';
	@override String get lunch => 'دوپہر کا کھانا';
	@override String get dinner => 'رات کا کھانا';
	@override String get snack => 'اسنک';
	@override String get unknown => 'نامعلوم';
	@override String get change => 'تبدیل کریں';
	@override String get enableNotifications => 'نوٹیفیکیشن فعال کریں';
	@override String get skipForNow => 'ابھی چھوڑ دیں';
	@override String get saveChanges => 'تبدیلیاں محفوظ کریں';
	@override String get enabledSuccessfully => 'نوٹیفیکیشن کامیابی سے فعال ہو گئے!';
	@override String get permissionDenied => 'نوٹیفیکیشن کی اجازت مسترد کر دی گئی';
	@override String errorEnabling({required Object error}) => 'نوٹیفیکیشن کو فعال کرنے میں خرابی: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'سیٹ اپ مکمل کرنے میں خرابی: ${error}';
}

// Path: notifications
class _TranslationsNotificationsUr implements TranslationsNotificationsEn {
	_TranslationsNotificationsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastUr breakfast = _TranslationsNotificationsBreakfastUr._(_root);
	@override late final _TranslationsNotificationsLunchUr lunch = _TranslationsNotificationsLunchUr._(_root);
	@override late final _TranslationsNotificationsDinnerUr dinner = _TranslationsNotificationsDinnerUr._(_root);
	@override late final _TranslationsNotificationsSnackUr snack = _TranslationsNotificationsSnackUr._(_root);
	@override late final _TranslationsNotificationsTestUr test = _TranslationsNotificationsTestUr._(_root);
}

// Path: login
class _TranslationsLoginUr implements TranslationsLoginEn {
	_TranslationsLoginUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'لاگ ان';
	@override String get signInWithGoogle => 'گوگل کے ساتھ سائن ان کریں';
	@override String get signInFailed => 'گوگل سائن ان ناکام ہوا یا منسوخ کر دیا گیا۔';
}

// Path: disclaimer
class _TranslationsDisclaimerUr implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'براہ کرم نوٹ کریں';
	@override late final _TranslationsDisclaimerSnapUr snap = _TranslationsDisclaimerSnapUr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateUr weightEstimate = _TranslationsDisclaimerWeightEstimateUr._(_root);
}

// Path: common
class _TranslationsCommonUr implements TranslationsCommonEn {
	_TranslationsCommonUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get close => 'بند کریں';
	@override String get kContinue => 'جاری رکھیں';
}

// Path: errors
class _TranslationsErrorsUr implements TranslationsErrorsEn {
	_TranslationsErrorsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'پروفائل کا ڈیٹا لوڈ کرنے میں خرابی';
	@override String get somethingWentWrong => 'کچھ غلط ہوگیا۔';
}

// Path: debug
class _TranslationsDebugUr implements TranslationsDebugEn {
	_TranslationsDebugUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ڈیبگ کے اختیارات';
	@override late final _TranslationsDebugSectionsUr sections = _TranslationsDebugSectionsUr._(_root);
	@override String get showActiveNotifications => 'فعال نوٹیفیکیشن دکھائیں';
	@override String get scheduleTestNotification => 'ٹیسٹ نوٹیفیکیشن کا شیڈول بنائیں (10 سیکنڈ)';
	@override String get triggerBreakfastNotification => 'ناشتے کی نوٹیفیکیشن متحرک کریں';
	@override String get cancelAllNotifications => 'تمام نوٹیفیکیشن منسوخ کریں';
	@override String get activeNotifications => 'فعال نوٹیفیکیشن';
	@override String get noTitle => 'کوئی عنوان نہیں';
	@override String get noBody => 'کوئی مواد نہیں';
	@override String get fetchTodaysSteps => 'آج کے قدم حاصل کریں';
	@override String get fetchTodaysCalories => 'آج کی کیلوریز حاصل کریں';
	@override String get fetchLatestWeight => 'آخری وزن حاصل کریں';
	@override String get fetchLatestHeight => 'آخری قد حاصل کریں';
	@override String get writeTestWeight => 'ٹیسٹ وزن لکھیں (70kg)';
	@override String get writeTestHeight => 'ٹیسٹ قد لکھیں (175cm)';
	@override String get syncLast7Days => 'آخری 7 دن ہم آہنگ کریں';
	@override String get sync7DaysTitle => '7 دن کی ہم آہنگی';
	@override String get checkCurrentLocale => 'موجودہ لوکیل چیک کریں';
	@override String get currentLocale => 'موجودہ لوکیل';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'زبان: ${languageCode}\nملک: ${countryCode}\nیونٹ کا نظام: ${unitSystem}';
	@override String get latestWeight => 'آخری وزن';
	@override String get latestHeight => 'آخری قد';
	@override String get todaysCalories => 'آج کی کیلوریز';
	@override String totalCaloriesBurned({required Object calories}) => 'کل جلائی گئی کیلوریز: ${calories}';
	@override String syncSuccess({required Object count}) => 'پچھلے 7 دنوں کے لیے قدم، کیلوریز، اور وزن کے لیے ${count} ڈیٹا پوائنٹس کامیابی سے حاصل کر لیے گئے۔';
	@override String get noWeightData => 'آخری 30 دنوں میں کوئی وزن کا ڈیٹا نہیں ملا۔';
	@override String get noHeightData => 'آخری سال میں کوئی قد کا ڈیٹا نہیں ملا۔';
	@override String get noCalorieData => 'آج کے لیے کوئی کیلوری کا ڈیٹا نہیں ملا۔';
	@override String get weightWritten => 'کامیابی سے ٹیسٹ وزن (70kg) لکھا گیا۔';
	@override String get weightWriteFailed => 'ٹیسٹ وزن لکھنے میں ناکامی.';
	@override String get heightWritten => 'کامیابی سے ٹیسٹ قد (175cm) لکھا گیا۔';
	@override String get heightWriteFailed => 'ٹیسٹ قد لکھنے میں ناکامی.';
	@override String get noNotifications => 'کوئی فعال نوٹیفیکیشن نہیں ہیں۔';
	@override String get testNotificationScheduled => '10 سیکنڈ کے اندر ٹیسٹ نوٹیفیکیشن کا شیڈول بنایا گیا۔';
	@override String get testNotificationBody => 'یہ ایک ٹیسٹ نوٹیفیکیشن ہے جو 10 سیکنڈ کے اندر شیڈول کیا گیا ہے۔';
	@override String get breakfastNotificationTriggered => 'ناشتے کی نوٹیفیکیشن متحرک ہوگئی۔';
	@override String get allNotificationsCancelled => 'تمام نوٹیفیکیشن منسوخ کر دی گئی ہیں۔';
	@override String get fetchingData => 'آخری 7 دنوں کے لیے ڈیٹا حاصل کیا جا رہا ہے...';
	@override String id({required Object id}) => 'ID: ${id}';
}

// Path: health
class _TranslationsHealthUr implements TranslationsHealthEn {
	_TranslationsHealthUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'ہیلتھ کنیکٹ میں ہم آہنگ نہیں ہو سکا';
	@override String get mealSynced => 'کھانا ہیلتھ کنیکٹ کے ساتھ ہم آہنگ ہو گیا';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesUr implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionUr foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionUr._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisUr aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisUr._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationUr healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationUr._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderUr implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کا جنس کیا ہے؟';
	@override String get description => 'جنس ہماری مدد کرتا ہے کہ ہم آپ کی بنیادی میٹابولک ریٹ (BMR) کو درست طریقے سے شمار کریں۔';
	@override String get next => 'اگلا';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightUr implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کی اونچائی کیا ہے؟';
	@override String get description => 'آپ کی اونچائی ہماری مدد کرتی ہے کہ ہم آپ کا BMI اور توانائی کی ضروریات کو درست طریقے سے شمار کریں۔';
	@override String get metric => 'میٹرک';
	@override String get imperial => 'امپیرئل';
	@override String get next => 'اگلا';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightUr implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'آپ کا موجودہ وزن کیا ہے؟';
	@override String get currentDescription => 'آپ کا موجودہ وزن آپ کے روزانہ کے اہداف کو شخصی بنانے کے لئے اہم ہے۔';
	@override String get targetTitle => 'آپ کا ہدف وزن کیا ہے؟';
	@override String get targetDescription => 'ہدف وزن طے کرنا ہماری مدد کرتا ہے کہ ہم آپ کا طویل مدتی منصوبہ طے کریں۔';
	@override String get metric => 'میٹرک';
	@override String get imperial => 'امپیرئل';
	@override String get next => 'اگلا';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeUr implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کی سالگرہ کب ہے؟';
	@override String get description => 'آپ کی عمر ہماری مدد کرتی ہے کہ ہم آپ کی کیلوری کی ضروریات کو درست طریقے سے شمار کریں۔';
	@override String get next => 'اگلا';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleUr implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'کم وزن';
	@override String get healthy => 'صحت مند';
	@override String get overweight => 'زیادہ وزن';
	@override String get obese => 'موٹا';
	@override late final _TranslationsOnboardingBmiScaleCategoriesUr categories = _TranslationsOnboardingBmiScaleCategoriesUr._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesUr messages = _TranslationsOnboardingBmiScaleMessagesUr._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalUr implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کا مقصد کیا ہے؟';
	@override String get description => 'وہ مقصد منتخب کریں جو بیان کرتا ہے کہ آپ کیا حاصل کرنا چاہتے ہیں';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelUr implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کتنے ایکٹو ہیں؟';
	@override String get description => 'یہ ہماری مدد کرتا ہے کہ ہم آپ کی روزانہ کی کیلوری کی ضروریات کو مزید درست طریقے سے شمار کریں';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectUr implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect کے ساتھ جڑیں';
	@override String get description => 'بہتر بصیرت اور خودکار کیلوری ٹریکنگ کے لیے اپنے صحت کے ڈیٹا کو ہم آہنگ کریں';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingUr automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingUr._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsUr progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsUr._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationUr seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationUr._(_root);
	@override String get connected => 'Health Connect جڑا ہوا ہے';
	@override String get notConnected => 'Health Connect جڑا ہوا نہیں ہے';
	@override String get setup => 'Health Connect کو ترتیب دیں';
	@override String get skipForNow => 'فی الحال چھوڑیں';
	@override String get statusConnected => 'Health Connect جڑا ہوا ہے۔';
	@override String get statusSuccess => 'Health Connect کامیابی سے جڑا گیا ہے!';
	@override String statusPermissionDenied({required Object appLabel}) => 'اجازت مسترد کر دی گئی ہے۔ براہ کرم اپنے فون کی سیٹنگز سے ${appLabel} کے لئے Health Connect کی اجازتیں فعال کریں۔';
	@override String statusError({required Object error}) => 'Health Connect ترتیب دینے میں خرابی: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementUr implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessUr trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessUr._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileUr healthProfile = _TranslationsOnboardingReinforcementHealthProfileUr._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleUr goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleUr._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalUr implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اپنا روزانہ کا ہدف مقرر کریں';
	@override String get titleSet => 'آپ کا روزانہ کا ہدف';
	@override String get description => 'کیا آپ اپنی صحت کے سفر کا آغاز کرنے کے لیے تیار ہیں؟ نیچے اپنے روزانہ کے کیلوری کے ہدف کا تعین کریں تاکہ آپ کی ترقی کا آغاز ہو جائے۔';
	@override String get descriptionSet => 'آپ کا کمپاس مقرر ہو گیا ہے! یہ آپ کا روزانہ کیلوری کا ہدف ہے جو آپ کی رہنمائی کرے گا۔';
	@override String get yourGoal => 'آپ کا ہدف';
	@override String get dailyCalories => 'روزانہ کیلوریز (kcal)';
	@override String get setGoal => 'ہدف مقرر کریں';
	@override String get intake => 'استعمال';
	@override String get burned => 'جلائے گئے';
	@override String get weightImpact => 'وزن کا اثر';
	@override String get estLoss => 'اندازاً کمی';
	@override String get estGain => 'اندازاً اضافہ';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryUr implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'روزانہ کا خلاصہ';
	@override String get calories => 'کیلوریز';
	@override String get carbs => 'کاربوہائیڈریٹس';
	@override String get protein => 'پروٹین';
	@override String get fat => 'چربی';
	@override String get fiber => 'ریشہ';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressUr implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آج کی میکرو تقسیم';
	@override String get target => 'ہدف';
	@override String get current => 'موجودہ';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryUr implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => '7 دنوں کی میکرو تاریخ';
	@override String get noHistoryYet => 'ابھی کوئی تاریخ نہیں';
	@override String get startLogging => 'اپنے کھانے کے اندراج شروع کریں تاکہ آپ یہاں اپنی 7 دن کی میکرو کی ٹرینڈز دیکھ سکیں';
}

// Path: home.mealLog
class _TranslationsHomeMealLogUr implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اندراج شدہ کھانے';
	@override String get emptyMessage => 'اپنے آخری کھانے کی تصویر لیں اور اسے یہاں درج کریں۔';
	@override String get noMealsToday => 'آج کے لئے کوئی کھانے کا ریکارڈ نہیں';
	@override String get seeAllMeals => 'تمام کھانے دیکھیں';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionUr implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI کے ذریعے فوری شامل کریں';
	@override String get description => 'اپنے کھانے کی وضاحت کریں اور AI کو تفصیلات کا خیال رکھنے دیں.';
	@override String get hint => 'جیسے، صبح کے ناشتے میں میں نے ایک بڑی پیالی دلیا اور ایک کٹے ہوئے کیلے کے ساتھ ایک سکوب پروٹین لی ...';
	@override String get analyzeMeal => 'کھانے کا تجزیہ کریں';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsUr implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پسندیدہ کھانے';
	@override String get description => 'اپنے پسندیدہ کھانے میں سے ایک کو جلدی شامل کریں۔';
	@override String get noFavorites => 'ابھی کوئی پسندیدہ کھانے نہیں ہیں۔';
	@override String get addFavoriteHint => 'کسی کھانے پر ستارہ دبائیں تاکہ اسے پسندیدہ کے طور پر نشان زد کریں۔';
	@override String get seeAll => 'تمام دیکھیں';
	@override String get add => 'شامل کریں';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapUr implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اپنے کھانے کی تصویر لیں اور ٹریک کریں';
	@override String get description => 'اپنے کھانے کی تصویر لینے کے لیے اپنے کیمرے کا استعمال کریں تاکہ AI اسے تجزیہ کر سکے۔';
	@override String get openCamera => 'کیمرہ کھولیں';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthUr implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ہیلتھ کنیکٹ کے ساتھ ہم آہنگ کریں';
	@override String get description => 'اپنا غذائیت کے ڈیٹا کو ہیلتھ کنیکٹ کے ساتھ ہم آہنگ کریں';
	@override String get install => 'انسٹال کریں';
	@override String get connect => 'ہم آہنگ کریں';
}

// Path: meal.nutrition
class _TranslationsMealNutritionUr implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get calories => 'کیلوریز';
	@override String get carbs => 'کاربوہائیڈریٹس (g)';
	@override String get protein => 'پروٹین (g)';
	@override String get fat => 'چربی (g)';
	@override String get fiber => 'ریشہ (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationUr implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کھانا حذف کریں';
	@override String get message => 'کیا آپ واقعی اس کھانے کا اندراج حذف کرنا چاہتے ہیں؟';
	@override String get cancel => 'کینسل کریں';
	@override String get delete => 'حذف کریں';
}

// Path: profile.sections
class _TranslationsProfileSectionsUr implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'پروفائل';
	@override String get basicInformation => 'بنیادی معلومات';
	@override String get goalsAndActivity => 'اہداف اور سرگرمی';
	@override String get calculatedValues => 'حساب شدہ قیمتیں';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesUr implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'بی ایم آر';
	@override String get tdee => 'ٹی ڈی ای ای';
	@override String get dailyGoal => 'روزانہ کا ہدف';
	@override String get calPerDay => 'کیلوری /دن';
	@override String get notAvailable => 'نہیں دستیاب';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsUr implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ذاتی معلومات';
	@override String get physicalMeasurements => 'جسمانی پیمائش';
	@override String get goalsAndActivity => 'اہداف اور سرگرمی';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersUr implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get male => 'مرد';
	@override String get female => 'عورت';
	@override String get other => 'دیگر';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsUr implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightUr loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightUr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightUr maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightUr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightUr gainWeight = _TranslationsEditProfileWeightGoalsGainWeightUr._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsUr implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryUr sedentary = _TranslationsEditProfileActivityLevelsSedentaryUr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveUr lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveUr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveUr moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveUr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveUr veryActive = _TranslationsEditProfileActivityLevelsVeryActiveUr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveUr extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveUr._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsUr implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'پروفائل';
	@override String get localization => 'ترجمہ';
	@override String get notifications => 'نوٹیفیکیشن';
	@override String get supportAndLegal => 'مدد اور قانونی';
	@override String get dangerZone => 'خطرے کا زون';
	@override String get developer => 'ڈیولپر';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileUr implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروفائل ترمیم کریں';
	@override String get subtitle => 'اپنی ذاتی معلومات کو تازہ کریں';
}

// Path: settings.language
class _TranslationsSettingsLanguageUr implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'زبان';
	@override String get subtitle => 'اپنی پسندیدہ زبان منتخب کریں';
	@override String get searchHint => 'زبانیں تلاش کریں...';
	@override String get noResults => 'کوئی نتائج نہیں ملے';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitUr implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قد کی اکائی';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitUr implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وزن کی اکائی';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersUr implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کھانے کی یاد دہانیاں';
	@override String get subtitle => 'مناسب وقت پر الرٹس کے ساتھ ٹریک پر رہیں';
}

// Path: settings.theme
class _TranslationsSettingsThemeUr implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تھیم';
	@override String get light => 'ہلکا';
	@override String get dark => 'تاریک';
	@override String get system => 'نظام';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackUr implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آراء ارسال کریں';
	@override String subtitle({required Object appLabel}) => '${appLabel} کو بہتر بنانے میں ہماری مدد کریں';
	@override String emailSubject({required Object appLabel}) => '${appLabel} ایپ آراء';
	@override String get emailBodyPrefix => 'براہ کرم نیچے اپنی آراء فراہم کریں:';
	@override String get appVersion => 'ایپ کا ورژن';
	@override String get device => 'آلہ';
	@override String get osVersion => 'او ایس ورژن';
	@override String get uid => 'یو آئی ڈی';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataUr implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تمام ڈیٹا صاف کریں';
	@override String get subtitle => 'اپنی تمام معلومات کو ناقابل واپسی طور پر حذف کریں';
	@override String get confirmationTitle => 'کیا آپ تمام ڈیٹا صاف کرنا چاہتے ہیں؟';
	@override String get confirmationMessage => 'یہ عمل واپس نہیں کیا جا سکتا۔ آپ کے تمام اندراج کردہ کھانے، پسندیدہ، اور پروفائل کی ترتیبات مستقل طور پر حذف ہو جائیں گی۔';
	@override String get cancel => 'کینسل کریں';
	@override String get clearEverything => 'سب کچھ صاف کریں';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsUr implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ڈیبگ کے اختیارات';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastUr implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ناشتے کا وقت! 🍳';
	@override String get body => 'اپنے ناشتہ کا اندراج کرنا نہ بھولیں';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchUr implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'دوپہر کے کھانے کا وقت! 🥗';
	@override String get body => 'اپنے دوپہر کے کھانے کا اندراج کرنے کا وقت';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerUr implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'رات کے کھانے کا وقت! 🍽️';
	@override String get body => 'اپنے رات کے کھانے کا اندراج کرنا نہ بھولیں';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackUr implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اسنیک کا وقت! 🍎';
	@override String get body => 'ایک صحت مند اسنیک کا وقت';
}

// Path: notifications.test
class _TranslationsNotificationsTestUr implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تجرباتی نوٹیفیکیشن';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapUr implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} تخمینی غذائیت کی معلومات فراہم کرتا ہے۔ درستگی آپ کی ان پٹ اور خوراک کی مختلف حالتوں پر منحصر ہے۔ یہ ایک رہنما کے طور پر استعمال کریں، نہ کہ ایک حتمی ماخذ کے طور پر۔ ذاتی غذائیت کی مشاورت کے لیے پیشہ ور کی خدمات حاصل کریں۔';
	@override late final _TranslationsDisclaimerSnapPortionSizeUr portionSize = _TranslationsDisclaimerSnapPortionSizeUr._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsUr preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsUr._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsUr ingredients = _TranslationsDisclaimerSnapIngredientsUr._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsUr databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsUr._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateUr implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وزن کے اندازے کے بارے میں';
	@override String get description => 'وزن میں تبدیلی کا اندازہ نظریاتی ہے جو کیلوری کی زیادہ اور کم کے ماڈل پر مبنی ہے۔ یہ صرف حوصلہ افزائی کی رہنمائی کے لیے ہے، آپ کے اصل وزن کی پیش گوئی کے طور پر نہیں۔';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyUr calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyUr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsUr biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsUr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightUr waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightUr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceUr professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceUr._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsUr implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'نوٹیفیکیشن';
	@override String get healthConnect => 'ہیلتھ کنیکٹ';
	@override String get appInfo => 'ایپ کی معلومات';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionUr implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ذہین غذائی شناخت';
	@override String get description => 'ایک تصویر لیں اور AI کو اپنے کھانے کی شناخت کرنے دیں';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisUr implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI تجزیہ';
	@override String get description => 'اپنی تفصیلات سے فوری غذائیت کی معلومات حاصل کریں';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationUr implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'صحت کا انضمام';
	@override String get description => 'بہتر بصیرت کے لیے Health Connect سے جڑیں';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesUr implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'کم وزن';
	@override String get healthyWeight => 'صحت مند وزن';
	@override String get overweight => 'زیادہ وزن';
	@override String get obese => 'موٹا';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesUr implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ہم آپ کو غذائیت سے بھرپور کھانوں کے ساتھ متوازن وزن تک پہنچنے کے لئے صحت مند منصوبہ بنانے میں مدد کر سکتے ہیں۔';
	@override String get healthy => 'بہت اچھا! آپ صحت مند رینج میں ہیں۔ ہم آپ کی توانائی اور قوت برقرار رکھنے میں مدد کریں گے۔';
	@override String overweight({required Object appLabel}) => '${appLabel} آپ کے سفر کو آسان بنائے گا، AI کی طاقت سے ٹریکنگ کی مدد سے آپ کو آرام سے آپ کے ہدف تک پہنچنے میں مدد کرے گا۔';
	@override String get obese => 'ہم آپ کے صحت کے اہداف کے لئے شخصی رہنمائی اور پائیدار حکمت عملیوں کے ساتھ آپ کی مدد کرنے کے لئے یہاں ہیں۔';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingUr implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'خودکار کیلوری ٹریکنگ';
	@override String get description => 'اپنی صحت کی ایپس سے جلائی گئی کیلوریز کو ٹریک کریں';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsUr implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ترقی کی بصیرت';
	@override String get description => 'آپ کے صحت کے رجحانات کی تفصیلی بصیرت حاصل کریں';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationUr implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ہموار انضمام';
	@override String get description => 'اپنی پسندیدہ صحت ایپس سے ڈیٹا ہم آہنگ کریں';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessUr implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ اکیلے نہیں ہیں';
	@override String get genericMessage => 'تحقیق ظاہر کرتی ہے کہ مستقل ٹریکنگ طویل مدتی کامیابی کا #1 اشارے ہے۔';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'ایک ${age} سالہ ${gender} کے لیے جو ${goal} حاصل کرنا چاہتا ہے، مستقل ٹریکنگ کامیابی کا #1 اشارے ہے۔';
	@override String closingMessage({required Object appLabel}) => '${appLabel} یہ کرنے کے مقابلے میں 10 گنا آسان بناتا ہے جو دستی طور پر کرنے کے لئے۔';
	@override String get getStartedTitle => 'آغاز کرنے کے لیے تیار ہیں؟';
	@override String get tipPhoto => 'اپنے کھانے کی تصویر لیں تاکہ فوری تجزیہ حاصل ہو';
	@override String get tipConsistency => 'معنی خیز ترقی دیکھنے کے لئے مستقل طور پر لاگ کریں';
	@override String get tipProgress => 'حوصلہ افزائی برقرار رکھنے کے لئے روزانہ اپنی ترقی کو ٹریک کریں';
	@override String get button => 'چلو شروع کریں';
	@override String get defaultGender => 'انفرادی';
	@override String get defaultGoal => 'صحت مند آپ';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileUr implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کا پروفائل';
	@override String bmiDescription({required Object bmi}) => 'آپ کے میٹرکس کی بنیاد پر، آپ کا BMI ${bmi} ہے۔';
	@override String get finalizeDescription => 'آئیے آپ کے تجربے کو حسب ضرورت بنانے کے لئے آپ کا پروفائل مکمل کریں۔';
	@override String get goalGain => 'بڑھانا';
	@override String get goalLose => 'کم کرنا';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'اپنا ہدف حاصل کرنے کے لیے، آپ کو ${direction} ${diff} ${unit} کرنا ہوگا۔';
	@override String get goalReached => 'آپ اپنے ہدف وزن پر ہیں! ہم آپ کو اسے برقرار رکھنے میں مدد کریں گے۔';
	@override String get button => 'چلو شروع کریں';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleUr implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'شاندار آغاز!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'آپ نے ${goalText} کے لئے پہلا قدم اٹھایا ہے۔ چونکہ آپ ${activityText} ہیں، ${appLabel} آپ کے طرز زندگی سے میل کھاتے ہوئے آپ کے اہداف کو ایڈجسٹ کرے گا۔';
	@override String get personalizedTargets => 'حسب ضرورت کی کیلوریز کے اہداف';
	@override String get aiMealDetection => 'AI کی طاقت سے کھانے کی شناخت';
	@override String get macroBreakdowns => 'تفصیلی میکرو نیوٹرینٹ تقسیم';
	@override String get button => 'چلو شروع کریں';
	@override String get defaultGoal => 'آپ کے اہداف';
	@override String get defaultActivity => 'ایکٹو';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightUr implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'وزن کم کریں';
	@override String get description => 'وزن کم کرنے کے لیے کیلوری کی کمی کریں';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightUr implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'وزن برقرار رکھیں';
	@override String get description => 'اپنا موجودہ وزن برقرار رکھیں';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightUr implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'وزن بڑھائیں';
	@override String get description => 'وزن بڑھانے کے لیے کیلوری کی اضافت کریں';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryUr implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'سست';
	@override String get description => 'بہت کم ورزش';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveUr implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'ہلکی سرگرمی';
	@override String get description => 'ہلکی ورزش 1-3 دن/ہفتہ';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveUr implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'اعتدال پسند سرگرمی';
	@override String get description => 'اعتدال پسند ورزش 3-5 دن/ہفتہ';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveUr implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'بہت فعال';
	@override String get description => 'کڑی ورزش 6-7 دن/ہفتہ';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveUr implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'انتہائی فعال';
	@override String get description => 'بہت سخت ورزش، جسمانی کام';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeUr implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حصے کا سائز';
	@override String get description => 'تخمینوں کی درستگی آپ کی طرف سے حصے کے صحیح اندازے پر بہت زیادہ منحصر ہے۔';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsUr implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تیاری کے طریقے';
	@override String description({required Object appLabel}) => 'پکانے کے طریقے کھانے کی غذائیت کی مواد کو بڑی حد تک تبدیل کر سکتے ہیں۔ ${appLabel} کے تخمینے ہمیشہ ان مختلف حالتوں کا حساب نہیں لگاتے۔';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsUr implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اجزاء';
	@override String get description => 'پیچیدہ پکوان جن میں بہت سے پوشیدہ اجزاء ہوتے ہیں وہ کم درست اندازوں کی طرف لے جا سکتے ہیں۔';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsUr implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ڈیٹا بیس کی حدود';
	@override String description({required Object appLabel}) => '${appLabel} کا غذائی ڈیٹا بیس وسیع ہے لیکن ہر واحد غذائی چیز یا مختلف حالت کو شامل نہیں کر سکتا۔';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyUr implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کیلوری کی درستگی';
	@override String get description => 'یہ تخمینہ صرف آپ کی ٹریک کردہ کیلوری کے استعمال اور خرچ کرنے کے اعتبار سے درست ہے۔ غلط اندراج کرنے سے غلط تخمینہ ملے گا۔';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsUr implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حیاتیاتی عوامل';
	@override String description({required Object appLabel}) => 'اصل وزن میں کمی/اضافہ میٹابولزم، ہارمونز، نیند، دباؤ، ہائیڈریشن اور دوسری انفرادی عوامل سے متاثر ہوتا ہے جو ${appLabel} نہیں ناپ سکتا۔';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightUr implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پانی کا وزن اور اتار چڑھاؤ';
	@override String get description => 'روزانہ کا معمولی وزن پانی کی زیادتی، ہضم، اور وقت کی وجہ سے بڑی صورت میں تبدیل ہو سکتا ہے۔ یہ تخمینہ ان روزانہ کی تبدیلیوں کا بہ لحاظ نہیں رکھتا۔';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceUr implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پیشہ ورانہ رہنمائی';
	@override String get description => 'اس تخمینے کا استعمال طبی فیصلے کرنے کے لیے نہ کریں۔ ہمیشہ ذاتی وزن کے انتظام کے مشورے کے لیے صحت کی دیکھ بھال کرنے والے پیشہ ور یا رجسٹرڈ غذائی ماہر سے مشورہ کریں۔';
}

/// The flat map containing all translations for locale <ur>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsUr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Urdu',
			'flag' => '🇵🇰',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel} میں خوش آمدید',
			'onboarding.subtitle' => 'آپ کا ذاتی غذائیت ساتھی جو AI کی طاقت سے ہے',
			'onboarding.getStarted' => 'شروع کریں',
			'onboarding.features.foodRecognition.title' => 'ذہین غذائی شناخت',
			'onboarding.features.foodRecognition.description' => 'ایک تصویر لیں اور AI کو اپنے کھانے کی شناخت کرنے دیں',
			'onboarding.features.aiAnalysis.title' => 'AI تجزیہ',
			'onboarding.features.aiAnalysis.description' => 'اپنی تفصیلات سے فوری غذائیت کی معلومات حاصل کریں',
			'onboarding.features.healthIntegration.title' => 'صحت کا انضمام',
			'onboarding.features.healthIntegration.description' => 'بہتر بصیرت کے لیے Health Connect سے جڑیں',
			'onboarding.gender.title' => 'آپ کا جنس کیا ہے؟',
			'onboarding.gender.description' => 'جنس ہماری مدد کرتا ہے کہ ہم آپ کی بنیادی میٹابولک ریٹ (BMR) کو درست طریقے سے شمار کریں۔',
			'onboarding.gender.next' => 'اگلا',
			'onboarding.height.title' => 'آپ کی اونچائی کیا ہے؟',
			'onboarding.height.description' => 'آپ کی اونچائی ہماری مدد کرتی ہے کہ ہم آپ کا BMI اور توانائی کی ضروریات کو درست طریقے سے شمار کریں۔',
			'onboarding.height.metric' => 'میٹرک',
			'onboarding.height.imperial' => 'امپیرئل',
			'onboarding.height.next' => 'اگلا',
			'onboarding.weight.currentTitle' => 'آپ کا موجودہ وزن کیا ہے؟',
			'onboarding.weight.currentDescription' => 'آپ کا موجودہ وزن آپ کے روزانہ کے اہداف کو شخصی بنانے کے لئے اہم ہے۔',
			'onboarding.weight.targetTitle' => 'آپ کا ہدف وزن کیا ہے؟',
			'onboarding.weight.targetDescription' => 'ہدف وزن طے کرنا ہماری مدد کرتا ہے کہ ہم آپ کا طویل مدتی منصوبہ طے کریں۔',
			'onboarding.weight.metric' => 'میٹرک',
			'onboarding.weight.imperial' => 'امپیرئل',
			'onboarding.weight.next' => 'اگلا',
			'onboarding.age.title' => 'آپ کی سالگرہ کب ہے؟',
			'onboarding.age.description' => 'آپ کی عمر ہماری مدد کرتی ہے کہ ہم آپ کی کیلوری کی ضروریات کو درست طریقے سے شمار کریں۔',
			'onboarding.age.next' => 'اگلا',
			'onboarding.bmiScale.underweight' => 'کم وزن',
			'onboarding.bmiScale.healthy' => 'صحت مند',
			'onboarding.bmiScale.overweight' => 'زیادہ وزن',
			'onboarding.bmiScale.obese' => 'موٹا',
			'onboarding.bmiScale.categories.underweight' => 'کم وزن',
			'onboarding.bmiScale.categories.healthyWeight' => 'صحت مند وزن',
			'onboarding.bmiScale.categories.overweight' => 'زیادہ وزن',
			'onboarding.bmiScale.categories.obese' => 'موٹا',
			'onboarding.bmiScale.messages.underweight' => 'ہم آپ کو غذائیت سے بھرپور کھانوں کے ساتھ متوازن وزن تک پہنچنے کے لئے صحت مند منصوبہ بنانے میں مدد کر سکتے ہیں۔',
			'onboarding.bmiScale.messages.healthy' => 'بہت اچھا! آپ صحت مند رینج میں ہیں۔ ہم آپ کی توانائی اور قوت برقرار رکھنے میں مدد کریں گے۔',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} آپ کے سفر کو آسان بنائے گا، AI کی طاقت سے ٹریکنگ کی مدد سے آپ کو آرام سے آپ کے ہدف تک پہنچنے میں مدد کرے گا۔',
			'onboarding.bmiScale.messages.obese' => 'ہم آپ کے صحت کے اہداف کے لئے شخصی رہنمائی اور پائیدار حکمت عملیوں کے ساتھ آپ کی مدد کرنے کے لئے یہاں ہیں۔',
			'onboarding.weightGoal.title' => 'آپ کا مقصد کیا ہے؟',
			'onboarding.weightGoal.description' => 'وہ مقصد منتخب کریں جو بیان کرتا ہے کہ آپ کیا حاصل کرنا چاہتے ہیں',
			'onboarding.activityLevel.title' => 'آپ کتنے ایکٹو ہیں؟',
			'onboarding.activityLevel.description' => 'یہ ہماری مدد کرتا ہے کہ ہم آپ کی روزانہ کی کیلوری کی ضروریات کو مزید درست طریقے سے شمار کریں',
			'onboarding.healthConnect.title' => 'Health Connect کے ساتھ جڑیں',
			'onboarding.healthConnect.description' => 'بہتر بصیرت اور خودکار کیلوری ٹریکنگ کے لیے اپنے صحت کے ڈیٹا کو ہم آہنگ کریں',
			'onboarding.healthConnect.automaticTracking.title' => 'خودکار کیلوری ٹریکنگ',
			'onboarding.healthConnect.automaticTracking.description' => 'اپنی صحت کی ایپس سے جلائی گئی کیلوریز کو ٹریک کریں',
			'onboarding.healthConnect.progressInsights.title' => 'ترقی کی بصیرت',
			'onboarding.healthConnect.progressInsights.description' => 'آپ کے صحت کے رجحانات کی تفصیلی بصیرت حاصل کریں',
			'onboarding.healthConnect.seamlessIntegration.title' => 'ہموار انضمام',
			'onboarding.healthConnect.seamlessIntegration.description' => 'اپنی پسندیدہ صحت ایپس سے ڈیٹا ہم آہنگ کریں',
			'onboarding.healthConnect.connected' => 'Health Connect جڑا ہوا ہے',
			'onboarding.healthConnect.notConnected' => 'Health Connect جڑا ہوا نہیں ہے',
			'onboarding.healthConnect.setup' => 'Health Connect کو ترتیب دیں',
			'onboarding.healthConnect.skipForNow' => 'فی الحال چھوڑیں',
			'onboarding.healthConnect.statusConnected' => 'Health Connect جڑا ہوا ہے۔',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect کامیابی سے جڑا گیا ہے!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'اجازت مسترد کر دی گئی ہے۔ براہ کرم اپنے فون کی سیٹنگز سے ${appLabel} کے لئے Health Connect کی اجازتیں فعال کریں۔',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect ترتیب دینے میں خرابی: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'آپ اکیلے نہیں ہیں',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'تحقیق ظاہر کرتی ہے کہ مستقل ٹریکنگ طویل مدتی کامیابی کا #1 اشارے ہے۔',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'ایک ${age} سالہ ${gender} کے لیے جو ${goal} حاصل کرنا چاہتا ہے، مستقل ٹریکنگ کامیابی کا #1 اشارے ہے۔',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} یہ کرنے کے مقابلے میں 10 گنا آسان بناتا ہے جو دستی طور پر کرنے کے لئے۔',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'آغاز کرنے کے لیے تیار ہیں؟',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'اپنے کھانے کی تصویر لیں تاکہ فوری تجزیہ حاصل ہو',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'معنی خیز ترقی دیکھنے کے لئے مستقل طور پر لاگ کریں',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'حوصلہ افزائی برقرار رکھنے کے لئے روزانہ اپنی ترقی کو ٹریک کریں',
			'onboarding.reinforcement.trackingSuccess.button' => 'چلو شروع کریں',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'انفرادی',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'صحت مند آپ',
			'onboarding.reinforcement.healthProfile.title' => 'آپ کا پروفائل',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'آپ کے میٹرکس کی بنیاد پر، آپ کا BMI ${bmi} ہے۔',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'آئیے آپ کے تجربے کو حسب ضرورت بنانے کے لئے آپ کا پروفائل مکمل کریں۔',
			'onboarding.reinforcement.healthProfile.goalGain' => 'بڑھانا',
			'onboarding.reinforcement.healthProfile.goalLose' => 'کم کرنا',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'اپنا ہدف حاصل کرنے کے لیے، آپ کو ${direction} ${diff} ${unit} کرنا ہوگا۔',
			'onboarding.reinforcement.healthProfile.goalReached' => 'آپ اپنے ہدف وزن پر ہیں! ہم آپ کو اسے برقرار رکھنے میں مدد کریں گے۔',
			'onboarding.reinforcement.healthProfile.button' => 'چلو شروع کریں',
			'onboarding.reinforcement.goalLifestyle.title' => 'شاندار آغاز!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'آپ نے ${goalText} کے لئے پہلا قدم اٹھایا ہے۔ چونکہ آپ ${activityText} ہیں، ${appLabel} آپ کے طرز زندگی سے میل کھاتے ہوئے آپ کے اہداف کو ایڈجسٹ کرے گا۔',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'حسب ضرورت کی کیلوریز کے اہداف',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI کی طاقت سے کھانے کی شناخت',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'تفصیلی میکرو نیوٹرینٹ تقسیم',
			'onboarding.reinforcement.goalLifestyle.button' => 'چلو شروع کریں',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'آپ کے اہداف',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'ایکٹو',
			'tabs.dashboard' => 'ڈیش بورڈ',
			'tabs.history' => 'تاریخ',
			'home.dailyGoal.title' => 'اپنا روزانہ کا ہدف مقرر کریں',
			'home.dailyGoal.titleSet' => 'آپ کا روزانہ کا ہدف',
			'home.dailyGoal.description' => 'کیا آپ اپنی صحت کے سفر کا آغاز کرنے کے لیے تیار ہیں؟ نیچے اپنے روزانہ کے کیلوری کے ہدف کا تعین کریں تاکہ آپ کی ترقی کا آغاز ہو جائے۔',
			'home.dailyGoal.descriptionSet' => 'آپ کا کمپاس مقرر ہو گیا ہے! یہ آپ کا روزانہ کیلوری کا ہدف ہے جو آپ کی رہنمائی کرے گا۔',
			'home.dailyGoal.yourGoal' => 'آپ کا ہدف',
			'home.dailyGoal.dailyCalories' => 'روزانہ کیلوریز (kcal)',
			'home.dailyGoal.setGoal' => 'ہدف مقرر کریں',
			'home.dailyGoal.intake' => 'استعمال',
			'home.dailyGoal.burned' => 'جلائے گئے',
			'home.dailyGoal.weightImpact' => 'وزن کا اثر',
			'home.dailyGoal.estLoss' => 'اندازاً کمی',
			'home.dailyGoal.estGain' => 'اندازاً اضافہ',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'روزانہ کا خلاصہ',
			'home.dailySummary.calories' => 'کیلوریز',
			'home.dailySummary.carbs' => 'کاربوہائیڈریٹس',
			'home.dailySummary.protein' => 'پروٹین',
			'home.dailySummary.fat' => 'چربی',
			'home.dailySummary.fiber' => 'ریشہ',
			'home.intakeProgress.title' => 'آج کی میکرو تقسیم',
			'home.intakeProgress.target' => 'ہدف',
			'home.intakeProgress.current' => 'موجودہ',
			'home.intakeHistory.title' => '7 دنوں کی میکرو تاریخ',
			'home.intakeHistory.noHistoryYet' => 'ابھی کوئی تاریخ نہیں',
			'home.intakeHistory.startLogging' => 'اپنے کھانے کے اندراج شروع کریں تاکہ آپ یہاں اپنی 7 دن کی میکرو کی ٹرینڈز دیکھ سکیں',
			'home.mealLog.title' => 'اندراج شدہ کھانے',
			'home.mealLog.emptyMessage' => 'اپنے آخری کھانے کی تصویر لیں اور اسے یہاں درج کریں۔',
			'home.mealLog.noMealsToday' => 'آج کے لئے کوئی کھانے کا ریکارڈ نہیں',
			'home.mealLog.seeAllMeals' => 'تمام کھانے دیکھیں',
			'home.mealDescription.title' => 'AI کے ذریعے فوری شامل کریں',
			'home.mealDescription.description' => 'اپنے کھانے کی وضاحت کریں اور AI کو تفصیلات کا خیال رکھنے دیں.',
			'home.mealDescription.hint' => 'جیسے، صبح کے ناشتے میں میں نے ایک بڑی پیالی دلیا اور ایک کٹے ہوئے کیلے کے ساتھ ایک سکوب پروٹین لی ...',
			'home.mealDescription.analyzeMeal' => 'کھانے کا تجزیہ کریں',
			'home.favoriteMeals.title' => 'پسندیدہ کھانے',
			'home.favoriteMeals.description' => 'اپنے پسندیدہ کھانے میں سے ایک کو جلدی شامل کریں۔',
			'home.favoriteMeals.noFavorites' => 'ابھی کوئی پسندیدہ کھانے نہیں ہیں۔',
			'home.favoriteMeals.addFavoriteHint' => 'کسی کھانے پر ستارہ دبائیں تاکہ اسے پسندیدہ کے طور پر نشان زد کریں۔',
			'home.favoriteMeals.seeAll' => 'تمام دیکھیں',
			'home.favoriteMeals.add' => 'شامل کریں',
			'home.mealSnap.title' => 'اپنے کھانے کی تصویر لیں اور ٹریک کریں',
			'home.mealSnap.description' => 'اپنے کھانے کی تصویر لینے کے لیے اپنے کیمرے کا استعمال کریں تاکہ AI اسے تجزیہ کر سکے۔',
			'home.mealSnap.openCamera' => 'کیمرہ کھولیں',
			'home.connectHealth.title' => 'ہیلتھ کنیکٹ کے ساتھ ہم آہنگ کریں',
			'home.connectHealth.description' => 'اپنا غذائیت کے ڈیٹا کو ہیلتھ کنیکٹ کے ساتھ ہم آہنگ کریں',
			'home.connectHealth.install' => 'انسٹال کریں',
			'home.connectHealth.connect' => 'ہم آہنگ کریں',
			'history.noMeals' => 'کوئی کھانے کا ریکارڈ نہیں',
			'history.emptyMessage' => 'اپنے آخری کھانے کی تصویر لیں اور اسے یہاں درج کریں۔',
			'history.today' => 'آج',
			'history.yesterday' => 'کل',
			'meal.ohNo' => 'اوہ نہیں!',
			'meal.delete' => 'حذف کریں',
			'meal.editMeal' => 'کھانا ترمیم کریں',
			'meal.addMeal' => 'کھانا شامل کریں',
			'meal.saveMeal' => 'کھانا محفوظ کریں',
			'meal.save' => 'محفوظ کریں',
			'meal.mealName' => 'کھانے کا نام',
			'meal.mealQuantity' => 'کھانے کی مقدار',
			'meal.mealQuantityHint' => 'جیسے، 1 پیالی، 2 ٹکڑے',
			'meal.timeOfMeal' => 'کھانے کا وقت',
			'meal.timeOfMealHint' => 'چنیں کہ آپ نے کھانا کب لیا',
			'meal.mealType' => 'کھانے کی قسم',
			'meal.nutrition.calories' => 'کیلوریز',
			'meal.nutrition.carbs' => 'کاربوہائیڈریٹس (g)',
			'meal.nutrition.protein' => 'پروٹین (g)',
			'meal.nutrition.fat' => 'چربی (g)',
			'meal.nutrition.fiber' => 'ریشہ (g)',
			'meal.deleteConfirmation.title' => 'کھانا حذف کریں',
			'meal.deleteConfirmation.message' => 'کیا آپ واقعی اس کھانے کا اندراج حذف کرنا چاہتے ہیں؟',
			'meal.deleteConfirmation.cancel' => 'کینسل کریں',
			'meal.deleteConfirmation.delete' => 'حذف کریں',
			'meal.addedToLog' => 'کھانا آپ کے لاگ میں شامل کیا گیا!',
			'meal.couldNotAdd' => ({required Object error}) => 'کھانا شامل نہیں کیا جا سکا: ${error}',
			'meal.removedFromFavorites' => 'پسندیدہ سے ہٹا دیا گیا!',
			'meal.savedAsFavorite' => 'کھانا پسندیدہ کے طور پر محفوظ کر لیا گیا!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'پسندیدہ کو اپ ڈیٹ نہیں کر سکا: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'عملدرآمد میں ناکامی: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'تصویر کے عمل میں ناکامی: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'تصویر کمپریس کرنے میں خرابی: ${error}',
			'meal.failedToSave' => 'ڈیٹا محفوظ کرنے میں ناکامی. براہ کرم دوبارہ کوشش کریں.',
			'favorites.title' => 'پسندیدہ',
			'favorites.empty' => 'ابھی کوئی پسندیدہ کھانے نہیں ہیں۔',
			'profile.title' => 'پروفائل',
			'profile.noProfileData' => 'کوئی پروفائل ڈیٹا نہیں ملا',
			'profile.yourProfile' => 'آپ کا پروفائل',
			'profile.viewAndManage' => 'اپنی صحت کی معلومات دیکھیں اور انتظام کریں',
			'profile.sections.profile' => 'پروفائل',
			'profile.sections.basicInformation' => 'بنیادی معلومات',
			'profile.sections.goalsAndActivity' => 'اہداف اور سرگرمی',
			'profile.sections.calculatedValues' => 'حساب شدہ قیمتیں',
			'profile.gender' => 'جنس',
			'profile.height' => 'قد',
			'profile.weight' => 'وزن',
			'profile.age' => 'عمر',
			'profile.weightGoal' => 'وزن کا ہدف',
			'profile.activityLevel' => 'سرگرمی کی سطح',
			'profile.healthMetrics' => 'صحت کے میٹرکس',
			'profile.notSet' => 'مقرر نہیں',
			'profile.years' => 'سال',
			'profile.updatedSuccessfully' => 'پروفائل کامیابی سے اپ ڈیٹ ہو گئی!',
			'profile.calculatedValues.bmr' => 'بی ایم آر',
			'profile.calculatedValues.tdee' => 'ٹی ڈی ای ای',
			'profile.calculatedValues.dailyGoal' => 'روزانہ کا ہدف',
			'profile.calculatedValues.calPerDay' => 'کیلوری /دن',
			'profile.calculatedValues.notAvailable' => 'نہیں دستیاب',
			'healthScore.title' => 'صحت کا اسکور',
			'healthScore.whyThisScore' => 'یہ اسکور کیوں؟',
			'healthScore.note' => 'یہ اسکور شناخت شدہ اجزاء اور غذائیت کی کثافت کی بنیاد پر AI کا اندازہ ہے۔ ہمیشہ غذائیت کی مشاورت کے لیے پیشہ ور سے مشورہ کریں۔',
			'healthScore.unhealthy' => 'غیر صحت مند',
			'healthScore.healthy' => 'صحت مند',
			'healthScore.neutral' => 'غیر جانبدار',
			'editProfile.title' => 'پروفائل ترمیم کریں',
			'editProfile.sections.personalInformation' => 'ذاتی معلومات',
			'editProfile.sections.physicalMeasurements' => 'جسمانی پیمائش',
			'editProfile.sections.goalsAndActivity' => 'اہداف اور سرگرمی',
			'editProfile.gender' => 'جنس',
			'editProfile.dateOfBirth' => 'تاریخ پیدائش',
			'editProfile.height' => 'قد',
			'editProfile.weight' => 'وزن',
			'editProfile.weightGoal' => 'وزن کا ہدف',
			'editProfile.activityLevel' => 'سرگرمی کی سطح',
			'editProfile.metric' => 'میٹرک',
			'editProfile.imperial' => 'امپیریل',
			'editProfile.metricCm' => 'میٹرک (سینٹی میٹر)',
			'editProfile.imperialFtIn' => 'امپیریل (فیٹ/انچ)',
			'editProfile.metricKg' => 'میٹرک (کلو)',
			'editProfile.imperialLbs' => 'امپیریل (پاؤنڈ)',
			'editProfile.genders.male' => 'مرد',
			'editProfile.genders.female' => 'عورت',
			'editProfile.genders.other' => 'دیگر',
			'editProfile.weightGoals.loseWeight.name' => 'وزن کم کریں',
			'editProfile.weightGoals.loseWeight.description' => 'وزن کم کرنے کے لیے کیلوری کی کمی کریں',
			'editProfile.weightGoals.maintainWeight.name' => 'وزن برقرار رکھیں',
			'editProfile.weightGoals.maintainWeight.description' => 'اپنا موجودہ وزن برقرار رکھیں',
			'editProfile.weightGoals.gainWeight.name' => 'وزن بڑھائیں',
			'editProfile.weightGoals.gainWeight.description' => 'وزن بڑھانے کے لیے کیلوری کی اضافت کریں',
			'editProfile.activityLevels.sedentary.name' => 'سست',
			'editProfile.activityLevels.sedentary.description' => 'بہت کم ورزش',
			'editProfile.activityLevels.lightlyActive.name' => 'ہلکی سرگرمی',
			'editProfile.activityLevels.lightlyActive.description' => 'ہلکی ورزش 1-3 دن/ہفتہ',
			'editProfile.activityLevels.moderatelyActive.name' => 'اعتدال پسند سرگرمی',
			'editProfile.activityLevels.moderatelyActive.description' => 'اعتدال پسند ورزش 3-5 دن/ہفتہ',
			'editProfile.activityLevels.veryActive.name' => 'بہت فعال',
			'editProfile.activityLevels.veryActive.description' => 'کڑی ورزش 6-7 دن/ہفتہ',
			'editProfile.activityLevels.extremelyActive.name' => 'انتہائی فعال',
			'editProfile.activityLevels.extremelyActive.description' => 'بہت سخت ورزش، جسمانی کام',
			'settings.title' => 'ترتیبات',
			'settings.sections.profile' => 'پروفائل',
			'settings.sections.localization' => 'ترجمہ',
			'settings.sections.notifications' => 'نوٹیفیکیشن',
			'settings.sections.supportAndLegal' => 'مدد اور قانونی',
			'settings.sections.dangerZone' => 'خطرے کا زون',
			'settings.sections.developer' => 'ڈیولپر',
			'settings.editProfile.title' => 'پروفائل ترمیم کریں',
			'settings.editProfile.subtitle' => 'اپنی ذاتی معلومات کو تازہ کریں',
			'settings.language.title' => 'زبان',
			'settings.language.subtitle' => 'اپنی پسندیدہ زبان منتخب کریں',
			'settings.language.searchHint' => 'زبانیں تلاش کریں...',
			'settings.language.noResults' => 'کوئی نتائج نہیں ملے',
			'settings.heightUnit.title' => 'قد کی اکائی',
			'settings.weightUnit.title' => 'وزن کی اکائی',
			'settings.mealReminders.title' => 'کھانے کی یاد دہانیاں',
			'settings.mealReminders.subtitle' => 'مناسب وقت پر الرٹس کے ساتھ ٹریک پر رہیں',
			'settings.theme.title' => 'تھیم',
			'settings.theme.light' => 'ہلکا',
			'settings.theme.dark' => 'تاریک',
			'settings.theme.system' => 'نظام',
			'settings.sendFeedback.title' => 'آراء ارسال کریں',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} کو بہتر بنانے میں ہماری مدد کریں',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} ایپ آراء',
			'settings.sendFeedback.emailBodyPrefix' => 'براہ کرم نیچے اپنی آراء فراہم کریں:',
			'settings.sendFeedback.appVersion' => 'ایپ کا ورژن',
			'settings.sendFeedback.device' => 'آلہ',
			'settings.sendFeedback.osVersion' => 'او ایس ورژن',
			'settings.sendFeedback.uid' => 'یو آئی ڈی',
			'settings.clearAllData.title' => 'تمام ڈیٹا صاف کریں',
			'settings.clearAllData.subtitle' => 'اپنی تمام معلومات کو ناقابل واپسی طور پر حذف کریں',
			'settings.clearAllData.confirmationTitle' => 'کیا آپ تمام ڈیٹا صاف کرنا چاہتے ہیں؟',
			'settings.clearAllData.confirmationMessage' => 'یہ عمل واپس نہیں کیا جا سکتا۔ آپ کے تمام اندراج کردہ کھانے، پسندیدہ، اور پروفائل کی ترتیبات مستقل طور پر حذف ہو جائیں گی۔',
			'settings.clearAllData.cancel' => 'کینسل کریں',
			'settings.clearAllData.clearEverything' => 'سب کچھ صاف کریں',
			'settings.debugOptions.title' => 'ڈیبگ کے اختیارات',
			'settings.developerModeEnabled' => 'ڈیولپر موڈ فعال ہو گیا!',
			'reminders.title' => 'یاد دہانیوں کے ساتھ ٹریک پر رہیں',
			'reminders.description' => 'اپنے کھانوں کے اندراج کے لیے آپ کو نرم یاد دہانیاں موصول ہوں گی تاکہ آپ اپنے غذائیت کے اہداف کے ساتھ مستقل رہ سکیں',
			'reminders.notificationsEnabled' => 'نوٹیفیکیشن فعال ہیں',
			'reminders.notificationsDisabled' => 'نوٹیفیکیشن غیر فعال ہیں',
			'reminders.enabledSubtitle' => 'آپ کو کھانے کی یاد دہانیاں موصول ہوں گی',
			'reminders.disabledSubtitle' => 'کھانے کی یاد دہانیوں کے لیے نوٹیفیکیشن فعال کریں',
			'reminders.mealReminders' => 'کھانے کی یاد دہانیاں',
			'reminders.breakfast' => 'ناشتہ',
			'reminders.lunch' => 'دوپہر کا کھانا',
			'reminders.dinner' => 'رات کا کھانا',
			'reminders.snack' => 'اسنک',
			'reminders.unknown' => 'نامعلوم',
			'reminders.change' => 'تبدیل کریں',
			'reminders.enableNotifications' => 'نوٹیفیکیشن فعال کریں',
			'reminders.skipForNow' => 'ابھی چھوڑ دیں',
			'reminders.saveChanges' => 'تبدیلیاں محفوظ کریں',
			'reminders.enabledSuccessfully' => 'نوٹیفیکیشن کامیابی سے فعال ہو گئے!',
			'reminders.permissionDenied' => 'نوٹیفیکیشن کی اجازت مسترد کر دی گئی',
			'reminders.errorEnabling' => ({required Object error}) => 'نوٹیفیکیشن کو فعال کرنے میں خرابی: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'سیٹ اپ مکمل کرنے میں خرابی: ${error}',
			'notifications.breakfast.title' => 'ناشتے کا وقت! 🍳',
			'notifications.breakfast.body' => 'اپنے ناشتہ کا اندراج کرنا نہ بھولیں',
			'notifications.lunch.title' => 'دوپہر کے کھانے کا وقت! 🥗',
			'notifications.lunch.body' => 'اپنے دوپہر کے کھانے کا اندراج کرنے کا وقت',
			'notifications.dinner.title' => 'رات کے کھانے کا وقت! 🍽️',
			'notifications.dinner.body' => 'اپنے رات کے کھانے کا اندراج کرنا نہ بھولیں',
			'notifications.snack.title' => 'اسنیک کا وقت! 🍎',
			'notifications.snack.body' => 'ایک صحت مند اسنیک کا وقت',
			'notifications.test.title' => 'تجرباتی نوٹیفیکیشن',
			'login.title' => 'لاگ ان',
			'login.signInWithGoogle' => 'گوگل کے ساتھ سائن ان کریں',
			'login.signInFailed' => 'گوگل سائن ان ناکام ہوا یا منسوخ کر دیا گیا۔',
			'disclaimer.pleaseNote' => 'براہ کرم نوٹ کریں',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} تخمینی غذائیت کی معلومات فراہم کرتا ہے۔ درستگی آپ کی ان پٹ اور خوراک کی مختلف حالتوں پر منحصر ہے۔ یہ ایک رہنما کے طور پر استعمال کریں، نہ کہ ایک حتمی ماخذ کے طور پر۔ ذاتی غذائیت کی مشاورت کے لیے پیشہ ور کی خدمات حاصل کریں۔',
			'disclaimer.snap.portionSize.title' => 'حصے کا سائز',
			'disclaimer.snap.portionSize.description' => 'تخمینوں کی درستگی آپ کی طرف سے حصے کے صحیح اندازے پر بہت زیادہ منحصر ہے۔',
			'disclaimer.snap.preparationMethods.title' => 'تیاری کے طریقے',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'پکانے کے طریقے کھانے کی غذائیت کی مواد کو بڑی حد تک تبدیل کر سکتے ہیں۔ ${appLabel} کے تخمینے ہمیشہ ان مختلف حالتوں کا حساب نہیں لگاتے۔',
			'disclaimer.snap.ingredients.title' => 'اجزاء',
			'disclaimer.snap.ingredients.description' => 'پیچیدہ پکوان جن میں بہت سے پوشیدہ اجزاء ہوتے ہیں وہ کم درست اندازوں کی طرف لے جا سکتے ہیں۔',
			'disclaimer.snap.databaseLimitations.title' => 'ڈیٹا بیس کی حدود',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} کا غذائی ڈیٹا بیس وسیع ہے لیکن ہر واحد غذائی چیز یا مختلف حالت کو شامل نہیں کر سکتا۔',
			'disclaimer.weightEstimate.title' => 'وزن کے اندازے کے بارے میں',
			'disclaimer.weightEstimate.description' => 'وزن میں تبدیلی کا اندازہ نظریاتی ہے جو کیلوری کی زیادہ اور کم کے ماڈل پر مبنی ہے۔ یہ صرف حوصلہ افزائی کی رہنمائی کے لیے ہے، آپ کے اصل وزن کی پیش گوئی کے طور پر نہیں۔',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'کیلوری کی درستگی',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'یہ تخمینہ صرف آپ کی ٹریک کردہ کیلوری کے استعمال اور خرچ کرنے کے اعتبار سے درست ہے۔ غلط اندراج کرنے سے غلط تخمینہ ملے گا۔',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'حیاتیاتی عوامل',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'اصل وزن میں کمی/اضافہ میٹابولزم، ہارمونز، نیند، دباؤ، ہائیڈریشن اور دوسری انفرادی عوامل سے متاثر ہوتا ہے جو ${appLabel} نہیں ناپ سکتا۔',
			'disclaimer.weightEstimate.waterWeight.title' => 'پانی کا وزن اور اتار چڑھاؤ',
			'disclaimer.weightEstimate.waterWeight.description' => 'روزانہ کا معمولی وزن پانی کی زیادتی، ہضم، اور وقت کی وجہ سے بڑی صورت میں تبدیل ہو سکتا ہے۔ یہ تخمینہ ان روزانہ کی تبدیلیوں کا بہ لحاظ نہیں رکھتا۔',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'پیشہ ورانہ رہنمائی',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'اس تخمینے کا استعمال طبی فیصلے کرنے کے لیے نہ کریں۔ ہمیشہ ذاتی وزن کے انتظام کے مشورے کے لیے صحت کی دیکھ بھال کرنے والے پیشہ ور یا رجسٹرڈ غذائی ماہر سے مشورہ کریں۔',
			'common.close' => 'بند کریں',
			'common.kContinue' => 'جاری رکھیں',
			'errors.loadingProfileData' => 'پروفائل کا ڈیٹا لوڈ کرنے میں خرابی',
			'errors.somethingWentWrong' => 'کچھ غلط ہوگیا۔',
			'debug.title' => 'ڈیبگ کے اختیارات',
			'debug.sections.notifications' => 'نوٹیفیکیشن',
			'debug.sections.healthConnect' => 'ہیلتھ کنیکٹ',
			'debug.sections.appInfo' => 'ایپ کی معلومات',
			'debug.showActiveNotifications' => 'فعال نوٹیفیکیشن دکھائیں',
			'debug.scheduleTestNotification' => 'ٹیسٹ نوٹیفیکیشن کا شیڈول بنائیں (10 سیکنڈ)',
			'debug.triggerBreakfastNotification' => 'ناشتے کی نوٹیفیکیشن متحرک کریں',
			'debug.cancelAllNotifications' => 'تمام نوٹیفیکیشن منسوخ کریں',
			'debug.activeNotifications' => 'فعال نوٹیفیکیشن',
			'debug.noTitle' => 'کوئی عنوان نہیں',
			'debug.noBody' => 'کوئی مواد نہیں',
			'debug.fetchTodaysSteps' => 'آج کے قدم حاصل کریں',
			'debug.fetchTodaysCalories' => 'آج کی کیلوریز حاصل کریں',
			'debug.fetchLatestWeight' => 'آخری وزن حاصل کریں',
			'debug.fetchLatestHeight' => 'آخری قد حاصل کریں',
			'debug.writeTestWeight' => 'ٹیسٹ وزن لکھیں (70kg)',
			'debug.writeTestHeight' => 'ٹیسٹ قد لکھیں (175cm)',
			'debug.syncLast7Days' => 'آخری 7 دن ہم آہنگ کریں',
			'debug.sync7DaysTitle' => '7 دن کی ہم آہنگی',
			'debug.checkCurrentLocale' => 'موجودہ لوکیل چیک کریں',
			'debug.currentLocale' => 'موجودہ لوکیل',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'زبان: ${languageCode}\nملک: ${countryCode}\nیونٹ کا نظام: ${unitSystem}',
			'debug.latestWeight' => 'آخری وزن',
			'debug.latestHeight' => 'آخری قد',
			'debug.todaysCalories' => 'آج کی کیلوریز',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'کل جلائی گئی کیلوریز: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'پچھلے 7 دنوں کے لیے قدم، کیلوریز، اور وزن کے لیے ${count} ڈیٹا پوائنٹس کامیابی سے حاصل کر لیے گئے۔',
			'debug.noWeightData' => 'آخری 30 دنوں میں کوئی وزن کا ڈیٹا نہیں ملا۔',
			'debug.noHeightData' => 'آخری سال میں کوئی قد کا ڈیٹا نہیں ملا۔',
			'debug.noCalorieData' => 'آج کے لیے کوئی کیلوری کا ڈیٹا نہیں ملا۔',
			'debug.weightWritten' => 'کامیابی سے ٹیسٹ وزن (70kg) لکھا گیا۔',
			'debug.weightWriteFailed' => 'ٹیسٹ وزن لکھنے میں ناکامی.',
			'debug.heightWritten' => 'کامیابی سے ٹیسٹ قد (175cm) لکھا گیا۔',
			'debug.heightWriteFailed' => 'ٹیسٹ قد لکھنے میں ناکامی.',
			'debug.noNotifications' => 'کوئی فعال نوٹیفیکیشن نہیں ہیں۔',
			'debug.testNotificationScheduled' => '10 سیکنڈ کے اندر ٹیسٹ نوٹیفیکیشن کا شیڈول بنایا گیا۔',
			'debug.testNotificationBody' => 'یہ ایک ٹیسٹ نوٹیفیکیشن ہے جو 10 سیکنڈ کے اندر شیڈول کیا گیا ہے۔',
			'debug.breakfastNotificationTriggered' => 'ناشتے کی نوٹیفیکیشن متحرک ہوگئی۔',
			'debug.allNotificationsCancelled' => 'تمام نوٹیفیکیشن منسوخ کر دی گئی ہیں۔',
			'debug.fetchingData' => 'آخری 7 دنوں کے لیے ڈیٹا حاصل کیا جا رہا ہے...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'health.syncFailed' => 'ہیلتھ کنیکٹ میں ہم آہنگ نہیں ہو سکا',
			'health.mealSynced' => 'کھانا ہیلتھ کنیکٹ کے ساتھ ہم آہنگ ہو گیا',
			_ => null,
		};
	}
}
