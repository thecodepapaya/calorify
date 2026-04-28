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
	@override String get language => 'اردو';
	@override String get flag => '🇵🇰';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsUr errors = _TranslationsErrorsUr._(_root);
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
	@override late final _TranslationsFeedbackRatingUr feedbackRating = _TranslationsFeedbackRatingUr._(_root);
	@override late final _TranslationsHealthUr health = _TranslationsHealthUr._(_root);
}

// Path: errors
class _TranslationsErrorsUr implements TranslationsErrorsEn {
	_TranslationsErrorsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'آپ نے بہت زیادہ درخواستیں بھیج دی ہیں۔ دوبارہ کوشش کرنے سے پہلے کچھ دیر انتظار کریں۔';
	@override String get networkError => 'نیٹ ورک کی خرابی۔ براہ کرم اپنا انٹرنیٹ کنکشن چیک کریں۔';
	@override String get unknownError => 'کچھ غلط ہو گیا۔ براہ کرم بعد میں دوبارہ کوشش کریں۔';
	@override String get loadingProfileData => 'پروفائل ڈیٹا لوڈ کرنے میں خرابی';
	@override String get somethingWentWrong => 'کچھ غلط ہو گیا۔';
	@override String get retry => 'دوبارہ کوشش کریں';
}

// Path: onboarding
class _TranslationsOnboardingUr implements TranslationsOnboardingEn {
	_TranslationsOnboardingUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} میں خوش آمدید';
	@override String get subtitle => 'AI سے چلنے والا آپ کا ذاتی غذائی معاون';
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
	@override String get history => 'ہسٹری';
}

// Path: home
class _TranslationsHomeUr implements TranslationsHomeEn {
	_TranslationsHomeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryUr aiSummary = _TranslationsHomeAiSummaryUr._(_root);
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
	@override String get noMeals => 'کوئی کھانا ریکارڈ نہیں';
	@override String get emptyMessage => 'اپنے پچھلے کھانے کی تصویر کھینچ کر یہاں لاگ کریں۔';
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
	@override String get editMeal => 'کھانا ایڈٹ کریں';
	@override String get addMeal => 'کھانا شامل کریں';
	@override String get saveMeal => 'کھانا محفوظ کریں';
	@override String get save => 'محفوظ کریں';
	@override String get mealName => 'کھانے کا نام';
	@override String get mealNameHint => 'مثلاً، اسکریبلڈ انڈے ٹوسٹ کے ساتھ';
	@override String get mealQuantity => 'خوراک کی مقدار';
	@override String get mealQuantityHint => 'مثلاً، 1 پیالہ، 2 سلائس';
	@override String get timeOfMeal => 'کھانے کا وقت';
	@override String get timeOfMealHint => 'وہ وقت منتخب کریں جب آپ نے کھانا کھایا';
	@override String get mealType => 'کھانے کی قسم';
	@override late final _TranslationsMealNutritionUr nutrition = _TranslationsMealNutritionUr._(_root);
	@override late final _TranslationsMealDeleteConfirmationUr deleteConfirmation = _TranslationsMealDeleteConfirmationUr._(_root);
	@override String get addedToLog => 'کھانا آپ کے لاگ میں شامل ہو گیا!';
	@override String couldNotAdd({required Object error}) => 'کھانا شامل نہ ہو سکا: ${error}';
	@override String get savedSuccessfully => 'کھانا کامیابی سے شامل ہو گیا!';
	@override String get updatedSuccessfully => 'کھانا کامیابی سے اپ ڈیٹ ہو گیا!';
	@override String errorSaving({required Object error}) => 'کھانا محفوظ کرنے میں خرابی: ${error}';
	@override String get removedFromFavorites => 'پسندیدگی سے ہٹا دیا گیا!';
	@override String get savedAsFavorite => 'کھانا پسندیدہ میں محفوظ!';
	@override String get unfavorite => 'پسندیدگی ہٹائیں';
	@override String couldNotUpdateFavorite({required Object error}) => 'پسندیدگی اپ ڈیٹ نہ ہو سکی: ${error}';
	@override String get feedbackThanks => 'فیڈبیک کا شکریہ!';
	@override String get reanalysisUpdated => 'آپ کی رائے کی بنیاد پر کھانے کا تجزیہ اپ ڈیٹ کر دیا گیا ہے۔';
	@override String failedToProcess({required Object error}) => 'پروسیس ناکام: ${error}';
	@override String failedToProcessImage({required Object error}) => 'تصویر پروسیس نہ ہو سکی: ${error}';
	@override String errorCompressingImage({required Object error}) => 'تصویر کمپریس کرنے میں خرابی: ${error}';
	@override String get failedToSave => 'ڈیٹا محفوظ نہ ہو سکا۔ براہ کرم دوبارہ کوشش کریں۔';
	@override String get skip => 'اسکپ';
	@override late final _TranslationsMealQuestionFlowUr questionFlow = _TranslationsMealQuestionFlowUr._(_root);
	@override late final _TranslationsMealAnalysisUr analysis = _TranslationsMealAnalysisUr._(_root);
	@override late final _TranslationsMealFeedbackUr feedback = _TranslationsMealFeedbackUr._(_root);
}

// Path: favorites
class _TranslationsFavoritesUr implements TranslationsFavoritesEn {
	_TranslationsFavoritesUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پسندیدہ';
	@override String get empty => 'ابھی تک کوئی پسندیدہ کھانا نہیں۔';
	@override String get searchPlaceholder => 'پسندیدہ کھانے تلاش کریں';
	@override String get searchEmptyTitle => 'آپ کی تلاش سے کوئی پسندیدہ نہیں ملا';
	@override String get searchEmptySubtitle => 'کوئی اور نام، مقدار، یا کھانے کی قسم آزمائیں۔';
	@override String get sortLabel => 'پسندیدہ ترتیب دیں';
	@override String get undo => 'واپس کریں';
	@override String removed({required Object name}) => '${name} کو پسندیدہ سے ہٹا دیا گیا';
	@override late final _TranslationsFavoritesSortOptionsUr sortOptions = _TranslationsFavoritesSortOptionsUr._(_root);
}

// Path: profile
class _TranslationsProfileUr implements TranslationsProfileEn {
	_TranslationsProfileUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروفائل';
	@override String get noProfileData => 'کوئی پروفائل ڈیٹا نہیں ملا';
	@override String get yourProfile => 'آپ کی پروفائل';
	@override String get viewAndManage => 'اپنی صحت کی معلومات دیکھیں اور منیج کریں';
	@override late final _TranslationsProfileSectionsUr sections = _TranslationsProfileSectionsUr._(_root);
	@override String get gender => 'صنف';
	@override String get height => 'قد';
	@override String get weight => 'وزن';
	@override String get age => 'عمر';
	@override String get weightGoal => 'وزن کا ہدف';
	@override String get targetWeight => 'ہدف وزن';
	@override String get activityLevel => 'سرگرمی کی سطح';
	@override String get healthMetrics => 'صحت میٹرکس';
	@override String get notSet => 'سیٹ نہیں';
	@override String get years => 'سال';
	@override String get updatedSuccessfully => 'پروفائل کامیابی سے اپ ڈیٹ ہو گئی!';
	@override late final _TranslationsProfileCalculatedValuesUr calculatedValues = _TranslationsProfileCalculatedValuesUr._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreUr implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'صحت اسکور';
	@override String get whyThisScore => 'یہ اسکور کیوں؟';
	@override String get note => 'یہ اسکور شناخت شدہ اجزاء اور غذائی کثافت کی بنیاد پر AI کا اندازہ ہے۔ ذاتی غذائی مشورے کے لیے ہمیشہ کسی پروفیشنل سے رجوع کریں۔';
	@override String get unhealthy => 'غیر صحت مند';
	@override String get healthy => 'صحت مند';
	@override String get neutral => 'غیر جانبدار';
}

// Path: editProfile
class _TranslationsEditProfileUr implements TranslationsEditProfileEn {
	_TranslationsEditProfileUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروفائل ایڈٹ کریں';
	@override late final _TranslationsEditProfileSectionsUr sections = _TranslationsEditProfileSectionsUr._(_root);
	@override String get gender => 'صنف';
	@override String get dateOfBirth => 'تاریخِ پیدائش';
	@override String get height => 'قد';
	@override String get weight => 'وزن';
	@override String get weightGoal => 'وزن کا ہدف';
	@override String get activityLevel => 'سرگرمی کی سطح';
	@override String get metric => 'میٹرک';
	@override String get imperial => 'امپیریل';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'میٹرک (cm)';
	@override String get imperialFtIn => 'امپیریل (ft/in)';
	@override String get metricKg => 'میٹرک (kg)';
	@override String get imperialLbs => 'امپیریل (lbs)';
	@override late final _TranslationsEditProfileGendersUr genders = _TranslationsEditProfileGendersUr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsUr weightGoals = _TranslationsEditProfileWeightGoalsUr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsUr activityLevels = _TranslationsEditProfileActivityLevelsUr._(_root);
}

// Path: settings
class _TranslationsSettingsUr implements TranslationsSettingsEn {
	_TranslationsSettingsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'سیٹنگز';
	@override late final _TranslationsSettingsSectionsUr sections = _TranslationsSettingsSectionsUr._(_root);
	@override late final _TranslationsSettingsEditProfileUr editProfile = _TranslationsSettingsEditProfileUr._(_root);
	@override late final _TranslationsSettingsLanguageUr language = _TranslationsSettingsLanguageUr._(_root);
	@override late final _TranslationsSettingsHeightUnitUr heightUnit = _TranslationsSettingsHeightUnitUr._(_root);
	@override late final _TranslationsSettingsWeightUnitUr weightUnit = _TranslationsSettingsWeightUnitUr._(_root);
	@override late final _TranslationsSettingsMealRemindersUr mealReminders = _TranslationsSettingsMealRemindersUr._(_root);
	@override late final _TranslationsSettingsThemeUr theme = _TranslationsSettingsThemeUr._(_root);
	@override late final _TranslationsSettingsSendFeedbackUr sendFeedback = _TranslationsSettingsSendFeedbackUr._(_root);
	@override late final _TranslationsSettingsExportMealHistoryUr exportMealHistory = _TranslationsSettingsExportMealHistoryUr._(_root);
	@override late final _TranslationsSettingsClearAllDataUr clearAllData = _TranslationsSettingsClearAllDataUr._(_root);
	@override late final _TranslationsSettingsDebugOptionsUr debugOptions = _TranslationsSettingsDebugOptionsUr._(_root);
	@override String get developerModeEnabled => 'ڈویلپر موڈ فعال ہو گیا!';
	@override late final _TranslationsSettingsHealthConnectUr healthConnect = _TranslationsSettingsHealthConnectUr._(_root);
	@override late final _TranslationsSettingsAboutUr about = _TranslationsSettingsAboutUr._(_root);
	@override late final _TranslationsSettingsAppInfoUr appInfo = _TranslationsSettingsAppInfoUr._(_root);
}

// Path: reminders
class _TranslationsRemindersUr implements TranslationsRemindersEn {
	_TranslationsRemindersUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'یاددہانی سے رفتار برقرار رکھیں';
	@override String get description => 'اپنے کھانے لاگ کرنے اور غذائی اہداف پر قائم رہنے کے لیے نرمی سے یاددہانی حاصل کریں';
	@override String get notificationsEnabled => 'نوٹیفکیشن فعال';
	@override String get notificationsDisabled => 'نوٹیفکیشن غیر فعال';
	@override String get enabledSubtitle => 'آپ کو کھانوں کی یاددہانی ملیں گی';
	@override String get disabledSubtitle => 'کھانوں کی یاددہانی کے لیے نوٹیفکیشن فعال کریں';
	@override String get mealReminders => 'کھانوں کی یاددہانی';
	@override String get breakfast => 'ناشتہ';
	@override String get lunch => 'دوپہر کا کھانا';
	@override String get dinner => 'رات کا کھانا';
	@override String get snack => 'سنیک';
	@override String get unknown => 'نامعلوم';
	@override String get change => 'تبدیل کریں';
	@override String get enableNotifications => 'نوٹیفکیشن فعال کریں';
	@override String get skipForNow => 'ابھی چھوڑیں';
	@override String get saveChanges => 'تبدیلیاں محفوظ کریں';
	@override String get enabledSuccessfully => 'نوٹیفکیشن کامیابی سے فعال ہو گئے!';
	@override String get permissionDenied => 'نوٹیفکیشن کی اجازت مسترد';
	@override String errorEnabling({required Object error}) => 'نوٹیفکیشن فعال کرنے میں خرابی: ${error}';
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
	@override String get title => 'لاگ اِن';
	@override String get signInWithGoogle => 'Google کے ساتھ سائن اِن کریں';
	@override String get signInFailed => 'Google سائن اِن ناکام یا منسوخ ہو گیا۔';
}

// Path: disclaimer
class _TranslationsDisclaimerUr implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'براہ کرم نوٹ کریں';
	@override late final _TranslationsDisclaimerSnapUr snap = _TranslationsDisclaimerSnapUr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateUr weightEstimate = _TranslationsDisclaimerWeightEstimateUr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsUr healthMetrics = _TranslationsDisclaimerHealthMetricsUr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureUr calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureUr._(_root);
}

// Path: common
class _TranslationsCommonUr implements TranslationsCommonEn {
	_TranslationsCommonUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get close => 'بند کریں';
	@override String get kContinue => 'جاری رکھیں';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingUr implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel} پسند آ رہی ہے؟';
	@override String get yes => 'جی ہاں، مجھے پسند ہے';
	@override String get no => 'واقعی نہیں';
	@override String get rateStepHeading => 'پلے اسٹور پر درجہ دیں';
	@override String get emailStepHeading => 'ای میل سے فیڈبیک بھیجیں';
	@override String soloDevMessage({required Object appLabel}) => 'ایک تیز سا ریٹنگ دوسروں کو ${appLabel} تک پہنچنے میں مدد دیتی ہے اور ترقی کو جاری رکھتی ہے۔ کیا آپ ایک لمحہ نکالیں گے؟';
	@override String get shareFeedbackViaEmail => 'آپ کی رائے اگلا قدم طے کرتی ہے — ہم ہر پیغام پڑھتے ہیں۔ کیا آپ ای میل کے ذریعے اپنی رائے شیئر کرنا چاہیں گے؟';
	@override String get rateCta => 'پلے اسٹور پر درجہ دیں';
	@override String get maybeLater => 'شاید بعد میں';
	@override String get sendFeedback => 'فیڈبیک بھیجیں';
	@override String get noThanks => 'نہیں، شکریہ';
	@override String get aboutUsDescription => 'ایک چھوٹی ٹیم کی محنت سے تیار کیا گیا۔ ہم رازداری، سادگی، اور بہتر کھانے کی عادات بنانے میں آپ کی مدد پر مرکوز ہیں۔';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'جاننا چاہتے ہیں کہ ${appLabel} کے پیچھے کون ہے؟ دیکھیے ';
	@override String get aboutUsLinkLabel => 'ہمارے بارے میں';
	@override String get thankYouMessage => 'شکریہ! ہم پھر کبھی اور پوچھیں گے۔';
}

// Path: health
class _TranslationsHealthUr implements TranslationsHealthEn {
	_TranslationsHealthUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'ہیلتھ کنیکٹ سے سنک نہ ہو سکا';
	@override String get mealSynced => 'کھانا ہیلتھ کنیکٹ کے ساتھ سنک ہو گیا';
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
	@override String get title => 'آپ کی جنس کیا ہے؟';
	@override String get description => 'جنس، بیسل میٹابولک ریٹ (BMR) درست اندازہ لگانے میں مدد دیتی ہے۔';
	@override String get next => 'اگلا';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightUr implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کا قد کتنا ہے؟';
	@override String get description => 'آپ کا قد BMI اور توانائی کی ضرورتیں درست اندازہ لگانے میں مدد دیتا ہے۔';
	@override String get metric => 'میٹرک';
	@override String get imperial => 'امپیریل';
	@override String get next => 'اگلا';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightUr implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'آپ کا موجودہ وزن کیا ہے؟';
	@override String get currentDescription => 'آپ کے روزانہ اہداف کو ذاتی بنانے کے لیے موجودہ وزن ضروری ہے۔';
	@override String get targetTitle => 'آپ کا ہدف وزن کیا ہے؟';
	@override String get targetDescription => 'ہدف وزن طے کرنے سے طویل مدتی منصوبہ بنانے میں مدد ملتی ہے۔';
	@override String get metric => 'میٹرک';
	@override String get imperial => 'امپیریل';
	@override String get next => 'اگلا';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeUr implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کی تاریخِ پیدائش؟';
	@override String get description => 'آپ کی عمر سے ہم آپ کی کیلوری کی ضرورت کا درست اندازہ لگاتے ہیں۔';
	@override String get next => 'اگلا';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleUr implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'کم';
	@override String get healthy => 'صحت مند';
	@override String get overweight => 'زیادہ';
	@override String get obese => 'موٹاپا';
	@override late final _TranslationsOnboardingBmiScaleCategoriesUr categories = _TranslationsOnboardingBmiScaleCategoriesUr._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesUr messages = _TranslationsOnboardingBmiScaleMessagesUr._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalUr implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کا ہدف کیا ہے؟';
	@override String get description => 'وہ ہدف منتخب کریں جو آپ کے مقصد کی بہترین عکاسی کرتا ہو';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelUr implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کتنے متحرک ہیں؟';
	@override String get description => 'یہ ہمیں آپ کی روزانہ کیلوری ضرورتیں مزید درست اندازہ لگانے میں مدد دیتا ہے';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectUr implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ہیلتھ کنیکٹ سے جڑیں';
	@override String get description => 'بہتر بصیرت اور خودکار کیلوری ٹریکنگ کے لیے اپنا صحت ڈیٹا سنک کریں';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingUr automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingUr._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsUr progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsUr._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationUr seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationUr._(_root);
	@override String get connected => 'ہیلتھ کنیکٹ منسلک';
	@override String get notConnected => 'ہیلتھ کنیکٹ منسلک نہیں';
	@override String get setup => 'ہیلتھ کنیکٹ سیٹ اپ';
	@override String get skipForNow => 'ابھی چھوڑیں';
	@override String get statusConnected => 'ہیلتھ کنیکٹ منسلک ہے۔';
	@override String get statusSuccess => 'ہیلتھ کنیکٹ کامیابی سے منسلک ہو گیا!';
	@override String statusPermissionDenied({required Object appLabel}) => 'اجازت مسترد۔ براہ کرم فون سیٹنگز میں ${appLabel} کے لیے ہیلتھ کنیکٹ کی اجازتیں فعال کریں۔';
	@override String statusError({required Object error}) => 'ہیلتھ کنیکٹ سیٹ اپ میں خرابی: ${error}';
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

// Path: home.aiSummary
class _TranslationsHomeAiSummaryUr implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کا AI خلاصہ';
	@override String get logMore => 'اگلے چند دنوں میں مزید کھانے لاگ کریں تاکہ آپ کو ذاتی نوعیت کی AI بصیرتیں مل سکیں۔';
	@override String get loading => 'آپ کا خلاصہ لوڈ ہو رہا ہے...';
	@override String mealCount({required Object count}) => '${count} کھانے لاگ ہوئے';
	@override String macroBalanceScore({required Object score}) => 'توازن اسکور ${score}';
	@override String get topFoods => 'سرِفہرست غذائیں';
	@override String get trendUp => 'کیلوریز میں اضافہ ہو رہا ہے';
	@override String get trendDown => 'کیلوریز میں کمی ہو رہی ہے';
	@override String get trendSteady => 'کیلوریز مستحکم ہیں';
	@override String generatedAt({required Object time}) => 'تازہ کاری ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalUr implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اپنا یومیہ ہدف طے کریں';
	@override String get titleSet => 'آپ کا یومیہ ہدف';
	@override String get description => 'اپنی فلاح و بہبود کے سفر پر نکلنے کے لیے تیار ہیں؟ آغاز کے لیے نیچے اپنی روزانہ کیلوری کا ہدف سیٹ کریں۔';
	@override String get descriptionSet => 'آپ کا رہنما سیٹ ہو گیا! یہ روزانہ کیلوری ہدف آپ کی رہنمائی کرے گا۔';
	@override String get yourGoal => 'آپ کا ہدف';
	@override String get goal => 'ہدف';
	@override String get dailyCalories => 'روزانہ کیلوریز (kcal)';
	@override String get setGoal => 'ہدف سیٹ کریں';
	@override String get intake => 'انٹیک';
	@override String get burned => 'جلائی گئیں';
	@override String get weightImpact => 'وزن پر اثر';
	@override String get estLoss => 'متوقع کمی';
	@override String get estGain => 'متوقع اضافہ';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryUr implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'یومیہ خلاصہ';
	@override String get calories => 'کیلوریز';
	@override String get carbs => 'کاربز';
	@override String get protein => 'پروٹین';
	@override String get fat => 'فیٹ';
	@override String get fiber => 'فائبر';
	@override String get grams => 'گرام';
	@override String get chartAccessibilityLabel => 'میکروز چارٹ';
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
	@override String get title => '7 دن کی میکرو تاریخ';
	@override String get trendTitle => 'آج کا رجحان';
	@override String peakHour({required Object hour}) => 'عروج: ${hour}:00';
	@override String get noHistoryYet => 'ابھی تک کوئی ہسٹری نہیں';
	@override String get startLogging => 'یہاں 7 دن کے میکرو رجحانات دیکھنے کے لیے\nاپنے کھانے لاگ کرنا شروع کریں';
}

// Path: home.mealLog
class _TranslationsHomeMealLogUr implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ریکارڈ شدہ کھانے';
	@override String get emptyMessage => 'اپنے پچھلے کھانے کی تصویر کھینچ کر یہاں لاگ کریں۔';
	@override String get noMealsToday => 'آج کے لیے کوئی کھانا ریکارڈ نہیں';
	@override String get seeAllMeals => 'تمام کھانے دیکھیں';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionUr implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI کے ساتھ فوری اندراج';
	@override String get description => 'اپنا کھانا بیان کریں، باقی کام AI پر چھوڑ دیں۔';
	@override String get hint => 'مثلاً ناشتے میں میں نے اوٹس کا بڑا پیالہ، ایک کیلا کاٹا ہوا اور وہے کا ایک اسکوپ لیا ...';
	@override String get analyzeMeal => 'کھانے کا تجزیہ کریں';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsUr implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پسندیدہ کھانے';
	@override String get description => 'اپنے پسندیدہ کھانوں میں سے فوراً شامل کریں۔';
	@override String get noFavorites => 'ابھی تک کوئی پسندیدہ کھانا نہیں۔';
	@override String get addFavoriteHint => 'کسی کھانے پر ستارہ دبائیں تاکہ اسے پسندیدہ میں شامل کریں۔';
	@override String get seeAll => 'سب دیکھیں';
	@override String get add => 'شامل کریں';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapUr implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تصویر لے کر کھانا ٹریک کریں';
	@override String get description => 'AI تجزیے کے لیے اپنے کھانے کی تصویر کھینچیں۔';
	@override String get openCamera => 'کیمرہ کھولیں';
	@override String get gallery => 'گیلری';
	@override String get compressingPhoto => 'تصویر بہتر بنائی جا رہی ہے…';
	@override String get uploadingPhoto => 'تصویر اَپ لوڈ ہو رہی ہے…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthUr implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ہیلتھ کنیکٹ سے سنک کریں';
	@override String get description => 'اپنا غذائی ڈیٹا ہیلتھ کنیکٹ کے ساتھ سنک کریں';
	@override String get install => 'انسٹال';
	@override String get connect => 'کنیکٹ';
}

// Path: meal.nutrition
class _TranslationsMealNutritionUr implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get calories => 'کیلوریز';
	@override String get carbs => 'کاربز (g)';
	@override String get protein => 'پروٹین (g)';
	@override String get fat => 'فیٹ (g)';
	@override String get fiber => 'فائبر (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationUr implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کھانا حذف کریں';
	@override String get message => 'کیا آپ واقعی اس کھانے کی انٹری حذف کرنا چاہتے ہیں؟';
	@override String get cancel => 'منسوخ کریں';
	@override String get delete => 'حذف کریں';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowUr implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String progress({required Object total, required Object current}) => 'مجموعی ${total} میں سے سوال نمبر ${current}';
	@override String get noQuestionsAvailable => 'کوئی سوال دستیاب نہیں ہے';
	@override String get next => 'اگلا';
	@override String get continueLabel => 'جاری رکھیں';
}

// Path: meal.analysis
class _TranslationsMealAnalysisUr implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI کھانے کا تجزیہ';
	@override String get stepStarted => 'آغاز ہو رہا ہے…';
	@override String get stepDecomposition => 'آپ کے کھانے کو سمجھا جا رہا ہے…';
	@override String get stepIngredients => 'اجزاء کو غذائی ڈیٹا سے ملایا جا رہا ہے…';
	@override String get stepUncertainty => 'اعتماد جانچا جا رہا ہے…';
	@override String get stepMealTypeQuestion => 'بس ہو ہی گیا…';
	@override String get stepResult => 'نتیجہ فائنل کیا جا رہا ہے…';
	@override String get stepError => 'کچھ غلط ہو گیا';
	@override String get stepDefault => 'آپ کے کھانے کا تجزیہ ہو رہا ہے…';
	@override String get progressUnderstand => 'سمجھیں';
	@override String get progressMatch => 'ملاپ';
	@override String get progressCheck => 'چیک';
	@override String get progressMealType => 'کھانے کی قسم منتخب کی جا رہی ہے';
	@override String get progressFinish => 'اختتام';
	@override String get detectedIngredientHeading => 'ہم جو اجزاء پہچان رہے ہیں';
	@override String ingredientsOverflow({required Object count}) => '${count} مزید';
	@override String ingredientsLine({required Object count}) => '${count} اجزاء شناخت ہوئے';
	@override String get ingredientsPending => 'اجزاء اسکین کیے جا رہے ہیں…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackUr implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کیا غلط لگ رہا ہے؟';
	@override String get subtitle => 'ایک یا زیادہ مسائل منتخب کر کے تجزیہ بہتر بنانے میں ہماری مدد کریں۔';
	@override String get tellUsMore => 'مزید بتائیں';
	@override String get describeIncorrect => 'بیان کریں کہ کیا غلط تھا';
	@override String get submit => 'جمع کرائیں';
	@override String get issueFoodIdentification => 'کھانے کی شناخت';
	@override String get issuePortionSize => 'حصے کا سائز';
	@override String get issueCalorieDistribution => 'کیلوریز کی تقسیم';
	@override String get issueMacrosWrong => 'میکروز غلط ہیں';
	@override String get issueMissingItems => 'غائب اشیاء';
	@override String get issueExtraItems => 'اضافی اشیاء';
	@override String get issueOther => 'دیگر';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsUr implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get recent => 'حالیہ';
	@override String get calories => 'کیلوریز';
	@override String get alphabetical => 'حروفِ تہجی';
}

// Path: profile.sections
class _TranslationsProfileSectionsUr implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'پروفائل';
	@override String get basicInformation => 'بنیادی معلومات';
	@override String get goalsAndActivity => 'اہداف اور سرگرمی';
	@override String get calculatedValues => 'حساب شدہ اقدار';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesUr implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'یومیہ ہدف';
	@override String get calPerDay => 'cal/دن';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsUr implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ذاتی معلومات';
	@override String get physicalMeasurements => 'جسمانی پیمائشیں';
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
	@override String get localization => 'لوکلائزیشن';
	@override String get notifications => 'اطلاعات';
	@override String get healthConnect => 'ہیلتھ کنیکٹ';
	@override String get supportAndLegal => 'سپورٹ اور قانونی';
	@override String get about => 'بارے میں';
	@override String get dangerZone => 'خطرے کا حصہ';
	@override String get developer => 'ڈویلپر';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileUr implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروفائل ایڈٹ کریں';
	@override String get subtitle => 'اپنی ذاتی معلومات اپ ڈیٹ کریں';
}

// Path: settings.language
class _TranslationsSettingsLanguageUr implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'زبان';
	@override String get subtitle => 'اپنی پسندیدہ زبان منتخب کریں';
	@override String get searchHint => 'زبانیں تلاش کریں...';
	@override String get noResults => 'کوئی نتیجہ نہیں ملا';
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
	@override String get title => 'کھانوں کی یاددہانی';
	@override String get subtitle => 'وقت پر الرٹس کے ساتھ رفتار برقرار رکھیں';
}

// Path: settings.theme
class _TranslationsSettingsThemeUr implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تھیم';
	@override String get light => 'لائٹ';
	@override String get dark => 'ڈارک';
	@override String get system => 'سسٹم';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackUr implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'فیڈبیک بھیجیں';
	@override String subtitle({required Object appLabel}) => '${appLabel} کو بہتر بنانے میں ہماری مدد کریں';
	@override String emailSubject({required Object appLabel}) => '${appLabel} ایپ فیڈبیک';
	@override String get emailBodyPrefix => 'براہ کرم اپنی رائے درج کریں:';
	@override String get appVersion => 'ایپ ورژن';
	@override String get device => 'ڈیوائس';
	@override String get osVersion => 'OS ورژن';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryUr implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کھانوں کی ہسٹری ایکسپورٹ';
	@override String get subtitle => 'اپنے لاگ شدہ کھانوں کی CSV شیئر کریں';
	@override String get shareText => 'آپ کی Calorify کھانوں کی ہسٹری ایکسپورٹ';
	@override String failed({required Object error}) => 'کھانوں کی ہسٹری ایکسپورٹ نہ ہو سکی: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataUr implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تمام ڈیٹا صاف کریں';
	@override String get subtitle => 'اپنی ساری معلومات ناقابلِ واپسی طور پر حذف کریں';
	@override String get confirmationTitle => 'تمام ڈیٹا صاف کریں؟';
	@override String get confirmationMessage => 'یہ عمل واپس نہیں ہو سکتا۔ آپ کے تمام لاگز، پسندیدہ، اور پروفائل سیٹنگز مستقل طور پر حذف ہو جائیں گی۔';
	@override String get cancel => 'منسوخ کریں';
	@override String get clearEverything => 'سب کچھ صاف کریں';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsUr implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ڈی بگ آپشنز';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectUr implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ہیلتھ کنیکٹ';
	@override String get subtitle => 'اجازتیں دیکھیں اور منیج کریں';
	@override late final _TranslationsSettingsHealthConnectUnavailableUr unavailable = _TranslationsSettingsHealthConnectUnavailableUr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsUr permissions = _TranslationsSettingsHealthConnectPermissionsUr._(_root);
	@override String get managePermissions => 'اجازتیں منیج کریں';
	@override String get openSettings => 'ہیلتھ کنیکٹ سیٹنگز کھولیں';
	@override String get requestPermissions => 'اجازتیں مانگیں';
	@override String get permissionRequestCancelledOrFailed => 'اجازت کی درخواست منسوخ یا ناکام ہو گئی۔ براہ کرم دوبارہ کوشش کریں یا ہیلتھ کنیکٹ سیٹنگز میں دستی طور پر اجازت دیں۔';
	@override String get permissionRequestFailed => 'اجازتیں مانگنے میں ناکامی۔ براہ کرم دوبارہ کوشش کریں یا ہیلتھ کنیکٹ سیٹنگز میں دستی طور پر اجازت دیں۔';
	@override String get requestingPermissions => 'درخواست ہو رہی ہے...';
}

// Path: settings.about
class _TranslationsSettingsAboutUr implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'بارے میں';
	@override String get tagline => 'تیز، مفت، اور رازداری کو ترجیح دینے والی کیلوری آگاہی';
	@override late final _TranslationsSettingsAboutOurStoryUr ourStory = _TranslationsSettingsAboutOurStoryUr._(_root);
	@override late final _TranslationsSettingsAboutPrivacyUr privacy = _TranslationsSettingsAboutPrivacyUr._(_root);
	@override late final _TranslationsSettingsAboutDeveloperUr developer = _TranslationsSettingsAboutDeveloperUr._(_root);
	@override late final _TranslationsSettingsAboutFeedbackUr feedback = _TranslationsSettingsAboutFeedbackUr._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoUr implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'بلڈ ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastUr implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ناشتہ کا وقت! 🍳';
	@override String get body => 'اپنا ناشتہ لاگ کرنا نہ بھولیں';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchUr implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'دوپہر کے کھانے کا وقت! 🥗';
	@override String get body => 'اب اپنا دوپہر کا کھانا لاگ کریں';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerUr implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'رات کے کھانے کا وقت! 🍽️';
	@override String get body => 'اپنا رات کا کھانا لاگ کرنا نہ بھولیں';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackUr implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'سنیک ٹائم! 🍎';
	@override String get body => 'ایک صحت مند سنیک کا وقت';
}

// Path: notifications.test
class _TranslationsNotificationsTestUr implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ٹیسٹ نوٹیفکیشن';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapUr implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} غذائی معلومات کے اندازے فراہم کرتا ہے۔ درستگی آپ کی دی گئی معلومات اور کھانے کے فرق پر منحصر ہے۔ اسے رہنمائی کے طور پر استعمال کریں، حتمی ماخذ کے طور پر نہیں۔ ذاتی غذائی مشورے کے لیے کسی پروفیشنل سے رجوع کریں۔';
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
	@override String get description => 'وزن میں ممکنہ تبدیلی ایک نظریاتی اندازہ ہے جو سادہ کیلوری اِن بمقابلہ کیلوری آؤٹ ماڈل پر مبنی ہے۔ یہ محض حوصلہ افزائی کے لیے ہے، آپ کے حقیقی وزن کی پیش گوئی نہیں۔';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyUr calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyUr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsUr biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsUr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightUr waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightUr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceUr professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceUr._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsUr implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get description => 'یہ میٹرکس آپ کے جسم کی توانائی کی ضرورت سمجھنے اور غذائی اہداف طے کرنے میں مدد دیتے ہیں۔';
	@override late final _TranslationsDisclaimerHealthMetricsBmrUr bmr = _TranslationsDisclaimerHealthMetricsBmrUr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeUr tdee = _TranslationsDisclaimerHealthMetricsTdeeUr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalUr dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalUr._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureUr implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کیلوری خرچ کا اندازہ';
	@override String get description => 'جب ہیلتھ کنیکٹ ڈیٹا دستیاب نہ ہو تو ہم آپ کے BMR اور سرگرمی کی سطح (TDEE) کی بنیاد پر، گزرے ہوئے دن کے حصے کے مطابق آج کی جلائی گئی کیلوریز کا اندازہ لگاتے ہیں۔';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedUr howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedUr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUr professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUr._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionUr implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اسمارٹ فوڈ ریکگنیشن';
	@override String get description => 'تصویر کھینچیں اور AI کو آپ کا کھانا پہچاننے دیں';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisUr implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI تجزیہ';
	@override String get description => 'آپ کی تفصیل سے فوری غذائی معلومات حاصل کریں';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationUr implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ہیلتھ انٹیگریشن';
	@override String get description => 'بہتر بصیرت کے لیے ہیلتھ کنیکٹ سے جڑیں';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesUr implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'کم وزن';
	@override String get healthyWeight => 'صحت مند وزن';
	@override String get overweight => 'زیادہ وزن';
	@override String get obese => 'موٹاپا';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesUr implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ہم غذائیت سے بھرپور کھانوں کے ساتھ متوازن وزن پانے کا صحت مند منصوبہ بنانے میں مدد کریں گے۔';
	@override String get healthy => 'زبردست! آپ صحت مند حد میں ہیں۔ ہم آپ کی توانائی اور جان داری برقرار رکھنے میں مدد کریں گے۔';
	@override String overweight({required Object appLabel}) => '${appLabel} AI سے چلنے والی ٹریکنگ کے ساتھ آپ کا سفر آسان بنائے گا تاکہ آپ با آسانی ہدف تک پہنچ سکیں۔';
	@override String get obese => 'ہم آپ کے صحت کے اہداف کے لیے ذاتی رہنمائی اور پائیدار حکمتِ عملیاں فراہم کرنے کے لیے موجود ہیں۔';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingUr implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'خودکار کیلوری ٹریکنگ';
	@override String get description => 'فٹنس ایپس سے جلائی گئی کیلوریز ٹریک کریں';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsUr implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ترقی کی بصیرت';
	@override String get description => 'اپنے صحت رجحانات پر تفصیلی بصیرت حاصل کریں';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationUr implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'بلا رکاوٹ انضمام';
	@override String get description => 'اپنی پسندیدہ صحت ایپس سے ڈیٹا سنک کریں';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessUr implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ اکیلے نہیں';
	@override String get genericMessage => 'تحقیقات سے ثابت ہے کہ مسلسل ٹریکنگ طویل مدتی کامیابی کی سب سے بڑی پیش گو ہے۔';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age} سالہ ${gender} جو ${goal} چاہتا/ چاہتی ہے، اس کے لیے مسلسل ٹریکنگ کامیابی کی سب سے بڑی پیش گو ہے۔';
	@override String closingMessage({required Object appLabel}) => '${appLabel} اسے دستی طریقے سے 10 گنا آسان بنا دیتا ہے۔';
	@override String get getStartedTitle => 'کیا شروع کرنے کے لیے تیار ہیں؟';
	@override String get tipPhoto => 'فوری تجزیے کے لیے اپنے کھانوں کی تصویر کھینچیں';
	@override String get tipConsistency => 'نمایاں پیش رفت کے لیے باقاعدگی سے لاگ کریں';
	@override String get tipProgress => 'حوصلہ افزائی کے لیے روزانہ اپنی پیش رفت دیکھیں';
	@override String get button => 'چلیں';
	@override String get defaultGender => 'فرد';
	@override String get defaultGoal => 'بہتر صحت';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileUr implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کی صحت پروفائل';
	@override String bmiDescription({required Object bmi}) => 'آپ کی پیمائشوں کی بنیاد پر، آپ کا BMI ${bmi} ہے۔';
	@override String get finalizeDescription => 'آئیے آپ کی پروفائل فائنل کریں تاکہ آپ کا تجربہ ذاتی بن سکے۔';
	@override String get goalGain => 'بڑھائیں';
	@override String get goalLose => 'کم کریں';
	@override String goalReach({required Object diff, required Object unit, required Object direction}) => 'اپنا ہدف حاصل کرنے کے لیے، آپ کو ${diff} ${unit} ${direction} کرنے ہوں گے۔';
	@override String get goalReached => 'آپ ہدف وزن پر ہیں! ہم اسے برقرار رکھنے میں مدد کریں گے۔';
	@override String get button => 'چلیں';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleUr implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'شاندار آغاز!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'آپ نے ${goalText} کی طرف پہلا قدم اٹھا لیا ہے۔ چونکہ آپ ${activityText} ہیں، ${appLabel} آپ کے اہداف کو آپ کی طرزِ زندگی کے مطابق ایڈجسٹ کرے گا۔';
	@override String get personalizedTargets => 'شخصی کردہ کیلوری اہداف';
	@override String get aiMealDetection => 'AI سے چلنے والی کھانوں کی شناخت';
	@override String get macroBreakdowns => 'تفصیلی میکرو غذائیت کا تجزیہ';
	@override String get button => 'چلیں';
	@override String get defaultGoal => 'آپ کے اہداف';
	@override String get defaultActivity => 'فعال';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightUr implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'وزن کم کریں';
	@override String get description => 'کیلوری خسارہ بنا کر وزن کم کریں';
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
	@override String get description => 'کیلوری اضافہ بنا کر وزن بڑھائیں';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryUr implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'غیر متحرک';
	@override String get description => 'ورزش نہ ہونے کے برابر';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveUr implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'ہلکی سرگرمی';
	@override String get description => 'ہلکی ورزش ہفتے میں 1–3 دن';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveUr implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'اوسط سرگرمی';
	@override String get description => 'اوسط درجے کی ورزش ہفتے میں 3–5 دن';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveUr implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'بہت سرگرم';
	@override String get description => 'سخت ورزش ہفتے میں 6–7 دن';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveUr implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'انتہائی سرگرم';
	@override String get description => 'انتہائی سخت ورزش، جسمانی کام';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableUr implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ہیلتھ کنیکٹ دستیاب نہیں';
	@override String get description => 'یہ ڈیوائس ہیلتھ کنیکٹ کو سپورٹ نہیں کرتی۔ براہ کرم پلے اسٹور سے ہیلتھ کنیکٹ انسٹال کریں (Android 9+) یا Android 14+ پر اپ ڈیٹ کریں۔';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsUr implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اجازتیں';
	@override String get description => 'ہیلتھ کنیکٹ انضمام فراہم کرنے کے لیے درج ذیل اجازتیں درکار ہیں:';
	@override String get granted => 'دی گئی';
	@override String get notGranted => 'نہیں دی گئی';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedUr caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedUr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadUr nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadUr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteUr nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteUr._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryUr implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ہماری کہانی';
	@override String content({required Object appLabel}) => '${appLabel} ایک سادہ جھنجھلاہٹ سے جنم لیا: زیادہ تر کیلوری ٹریکنگ ایپس یا تو حد سے زیادہ پیچیدہ ہوتی ہیں، مسلسل دستی اندراج چاہتی ہیں، مہنگی سبسکرپشنز لیتی ہیں، یا رازداری پر سمجھوتہ کرتی ہیں۔\n\nبطور واحد ڈویلپر، میں نے کچھ زیادہ سادہ اور منصفانہ بنانے کا ارادہ کیا — ایسی ایپ جو AI سے محنت کم کرے، تیز اور مفت رہے، اور آپ کے صحت ڈیٹا کا احترام کرے۔\n\n${appLabel} وہ ایپ ہے جس کی مجھے تلاش تھی: نہ اکاؤنٹس، نہ ٹریکنگ، نہ اشتہارات — بس واضح، عملی بصیرتیں اور آپ کے صحت کے اہداف۔';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyUr implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کی رازداری اہم ہے';
	@override String get description => 'رازداری بعد میں سوچنے کی چیز نہیں — یہ ڈیزائن کا اصول ہے۔ اس کا عملی مطلب یہ ہے:';
	@override String get noAccounts => 'اکاؤنٹس کی ضرورت نہیں\nفوراً ایپ استعمال کریں۔ نہ سائن اپ، نہ شناختیں۔';
	@override String noTracking({required Object appLabel}) => 'کوئی طرزِ عمل ٹریکنگ نہیں\n${appLabel} آپ کی سرگرمی کی نگرانی نہیں کرتا، استعمال کے پروفائل نہیں بناتا، اور نہ ہی آپ کو ایپس یا ویب سائٹس کے پار ٹریک کرتا ہے۔';
	@override String noAds({required Object appLabel}) => 'اشتہارات سے پاک ڈیزائن\n${appLabel} کو اشتہارات یا ڈیٹا پر مبنی کمائی کے بغیر چلنے کے لیے بنایا گیا ہے۔';
	@override String get noDataSelling => 'ڈیٹا فروخت نہیں ہوتا\nآپ کا صحت ڈیٹا کبھی تیسرے فریق کو فروخت یا شیئر نہیں کیا جاتا۔';
	@override String get localStorage => 'لوکل-فرسٹ اسٹوریج\nآپ کا ڈیٹا آپ کے ڈیوائس پر ہی رہتا ہے۔';
	@override String get privacyPolicy => 'پرائیویسی پالیسی';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperUr implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ایک واحد ڈویلپر کی بنائی ہوئی';
	@override String description({required Object appLabel}) => '${appLabel} ایک سولو ڈویلپر نے تیار اور برقرار رکھی ہے جو پرسکون، رازداری کا احترام کرنے والا صحت سافٹ ویئر بنانے پر توجہ دیتا ہے۔\n\nفیڈبیک ذاتی طور پر پڑھا جاتا ہے اور ایپ کی سمت طے کرنے میں مدد دیتا ہے۔';
	@override String get website => 'ویب سائٹ';
	@override String get email => 'ای میل';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackUr implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} پسند آ رہی ہے؟';
	@override String description({required Object appLabel}) => 'آپ کی رائے ${appLabel} کو سب کے لیے بہتر بناتی ہے۔';
	@override String get rateApp => 'پلے اسٹور پر درجہ دیں';
	@override String get sendFeedback => 'فیڈبیک بھیجیں';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeUr implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حصے کا سائز';
	@override String get description => 'اندازوں کی درستگی آپ کے حصے کے سائز کے درست تعین پر بہت زیادہ منحصر ہے۔';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsUr implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تیاری کے طریقے';
	@override String description({required Object appLabel}) => 'پکانے کے طریقے غذائی مواد کو خاصا بدل سکتے ہیں۔ ${appLabel} کے اندازے ہر فرق کو ہمیشہ مدِنظر نہیں رکھ سکتے۔';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsUr implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اجزاء';
	@override String get description => 'چھپے ہوئے متعدد اجزاء والی پیچیدہ ڈشز میں اندازے کم درست ہو سکتے ہیں۔';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsUr implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ڈیٹابیس کی حدود';
	@override String description({required Object appLabel}) => '${appLabel} کا فوڈ ڈیٹابیس وسیع ہے مگر ہر آئٹم یا ہر شکل شامل ہونا ضروری نہیں۔';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyUr implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کیلوری کی درستگی';
	@override String get description => 'یہ اندازہ اتنا ہی درست ہے جتنی آپ کی انٹیک اور خرچ کی گئی کیلوریز کی ٹریکنگ درست ہے۔ غلط لاگنگ سے غلط اندازہ ہوگا۔';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsUr implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حیاتیاتی عوامل';
	@override String description({required Object appLabel}) => 'حقیقی وزن میں کمی/اضافہ میٹابولزم، ہارمونز، نیند، دباؤ، ہائیڈریشن اور دیگر انفرادی عوامل سے متاثر ہوتا ہے جنہیں ${appLabel} ناپ نہیں سکتا۔';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightUr implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پانی کا وزن اور اتار چڑھاؤ';
	@override String get description => 'روزمرہ وزن پانی، ہضم اور وقت کے سبب خاصا بدل سکتا ہے۔ یہ اندازہ ان روزانہ تبدیلیوں کو شامل نہیں کرتا۔';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceUr implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پیشہ ورانہ رہنمائی';
	@override String get description => 'طبی فیصلوں کے لیے اس اندازے کو استعمال نہ کریں۔ ذاتی رہنمائی کے لیے ہمیشہ ڈاکٹر یا رجسٹرڈ ڈائٹیشن سے مشورہ کریں۔';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrUr implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'بیسل میٹابولک ریٹ (BMR) وہ کیلوریز ہیں جو آپ کا جسم آرام کی حالت میں بنیادی افعال جیسے سانس اور دورانِ خون کے لیے جلاتا ہے۔ BMR کا دارومدار عمر، جنس، قد اور وزن پر ہے۔ بلند BMR کا مطلب ہے کہ آپ کا جسم آرام میں بھی زیادہ کیلوریز جلاتا ہے، عموماً زیادہ پٹھوں، کم عمر یا مرد ہونے کی وجہ سے۔ کم BMR عموماً کم پٹھوں، زیادہ عمر یا عورت ہونے کی نشانی ہے۔';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeUr implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'ٹوٹل ڈیلی انرجی ایکسپنڈیچر (TDEE) وہ کل کیلوریز ہیں جو آپ روزانہ جلاتے ہیں، یعنی BMR کے ساتھ جسمانی سرگرمی اور روزمرہ حرکت۔ TDEE کا انحصار BMR اور سرگرمی کی سطح پر ہے۔ بلند TDEE کا مطلب مجموعی طور پر زیادہ کیلوریز جلنا ہے، عموماً زیادہ سرگرمی یا بلند BMR کی وجہ سے۔ کم TDEE کم روزمرہ حرکت یا کم BMR کی طرف اشارہ کرتا ہے۔';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalUr implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'یومیہ ہدف';
	@override String get description => 'یومیہ ہدف آپ کے TDEE اور وزن کے ہدف کی بنیاد پر روزانہ تجویز کردہ کیلوری اِن ٹیک ہے۔ وزن کم کرنے کے لیے آپ TDEE سے کم کیلوریز لیتے ہیں۔ برقرار رکھنے کے لیے TDEE کے برابر اور بڑھانے کے لیے TDEE سے زیادہ لیتے ہیں۔ اس طرح آپ مطلوبہ وزن تبدیلی صحت مند رفتار سے حاصل کرتے ہیں۔';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedUr implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اندازہ کیسے لگایا جاتا ہے';
	@override String get description => 'ہم آپ کا TDEE (پروفائل کی بنیاد پر) نکالتے ہیں اور اسے دن کے گزرے ہوئے حصے (گھنٹے + منٹس)/24 سے ضرب دے کر اب تک جلائی گئی کیلوریز کا اندازہ لگاتے ہیں۔';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUr implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پیشہ ورانہ رہنمائی';
	@override String get description => 'طبی فیصلوں کے لیے اس اندازے کو استعمال نہ کریں۔ ذاتی رہنمائی کے لیے ہمیشہ ڈاکٹر یا رجسٹرڈ ڈائٹیشن سے مشورہ کریں۔';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedUr implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کل جلائی گئی کیلوریز پڑھیں';
	@override String get description => 'ایپ کو ہیلتھ کنیکٹ سے آپ کی کل جلائی گئی کیلوریز پڑھنے کی اجازت دیتا ہے۔';
	@override String get usage => 'یہ اجازت ایپ میں آپ کی روزانہ کیلوری برن دکھانے کے لیے استعمال ہوتی ہے، تاکہ آپ اپنے روزانہ توانائی خرچ کو سمجھ سکیں۔';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadUr implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'غذائیت کا ڈیٹا پڑھیں';
	@override String get description => 'ایپ کو ہیلتھ کنیکٹ سے غذائیت کا ڈیٹا پڑھنے کی اجازت دیتا ہے۔';
	@override String get usage => 'یہ اجازت اُن غذائی معلومات کو پڑھنے کے لیے ہے جو دیگر ایپس نے ہیلتھ کنیکٹ میں لاگ کی ہوں، تاکہ آپ کی غذائیت کا جامع منظر پیش کیا جا سکے۔';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteUr implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'غذائیت کا ڈیٹا لکھیں';
	@override String get description => 'ایپ کو ہیلتھ کنیکٹ میں غذائیت کا ڈیٹا لکھنے کی اجازت دیتا ہے۔';
	@override String get usage => 'یہ اجازت آپ کے لاگ شدہ کھانوں کو ہیلتھ کنیکٹ کے ساتھ سنک کرنے کے لیے ہے، تاکہ دیگر صحت و فٹنس ایپس میں بھی آپ کا ڈیٹا دستیاب ہو۔';
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
			'errors.rateLimitExceeded' => 'آپ نے بہت زیادہ درخواستیں بھیج دی ہیں۔ دوبارہ کوشش کرنے سے پہلے کچھ دیر انتظار کریں۔',
			'errors.networkError' => 'نیٹ ورک کی خرابی۔ براہ کرم اپنا انٹرنیٹ کنکشن چیک کریں۔',
			'errors.unknownError' => 'کچھ غلط ہو گیا۔ براہ کرم بعد میں دوبارہ کوشش کریں۔',
			'errors.loadingProfileData' => 'پروفائل ڈیٹا لوڈ کرنے میں خرابی',
			'errors.somethingWentWrong' => 'کچھ غلط ہو گیا۔',
			'errors.retry' => 'دوبارہ کوشش کریں',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel} میں خوش آمدید',
			'onboarding.subtitle' => 'AI سے چلنے والا آپ کا ذاتی غذائی معاون',
			'onboarding.getStarted' => 'شروع کریں',
			'onboarding.features.foodRecognition.title' => 'اسمارٹ فوڈ ریکگنیشن',
			'onboarding.features.foodRecognition.description' => 'تصویر کھینچیں اور AI کو آپ کا کھانا پہچاننے دیں',
			'onboarding.features.aiAnalysis.title' => 'AI تجزیہ',
			'onboarding.features.aiAnalysis.description' => 'آپ کی تفصیل سے فوری غذائی معلومات حاصل کریں',
			'onboarding.features.healthIntegration.title' => 'ہیلتھ انٹیگریشن',
			'onboarding.features.healthIntegration.description' => 'بہتر بصیرت کے لیے ہیلتھ کنیکٹ سے جڑیں',
			'onboarding.gender.title' => 'آپ کی جنس کیا ہے؟',
			'onboarding.gender.description' => 'جنس، بیسل میٹابولک ریٹ (BMR) درست اندازہ لگانے میں مدد دیتی ہے۔',
			'onboarding.gender.next' => 'اگلا',
			'onboarding.height.title' => 'آپ کا قد کتنا ہے؟',
			'onboarding.height.description' => 'آپ کا قد BMI اور توانائی کی ضرورتیں درست اندازہ لگانے میں مدد دیتا ہے۔',
			'onboarding.height.metric' => 'میٹرک',
			'onboarding.height.imperial' => 'امپیریل',
			'onboarding.height.next' => 'اگلا',
			'onboarding.weight.currentTitle' => 'آپ کا موجودہ وزن کیا ہے؟',
			'onboarding.weight.currentDescription' => 'آپ کے روزانہ اہداف کو ذاتی بنانے کے لیے موجودہ وزن ضروری ہے۔',
			'onboarding.weight.targetTitle' => 'آپ کا ہدف وزن کیا ہے؟',
			'onboarding.weight.targetDescription' => 'ہدف وزن طے کرنے سے طویل مدتی منصوبہ بنانے میں مدد ملتی ہے۔',
			'onboarding.weight.metric' => 'میٹرک',
			'onboarding.weight.imperial' => 'امپیریل',
			'onboarding.weight.next' => 'اگلا',
			'onboarding.age.title' => 'آپ کی تاریخِ پیدائش؟',
			'onboarding.age.description' => 'آپ کی عمر سے ہم آپ کی کیلوری کی ضرورت کا درست اندازہ لگاتے ہیں۔',
			'onboarding.age.next' => 'اگلا',
			'onboarding.bmiScale.underweight' => 'کم',
			'onboarding.bmiScale.healthy' => 'صحت مند',
			'onboarding.bmiScale.overweight' => 'زیادہ',
			'onboarding.bmiScale.obese' => 'موٹاپا',
			'onboarding.bmiScale.categories.underweight' => 'کم وزن',
			'onboarding.bmiScale.categories.healthyWeight' => 'صحت مند وزن',
			'onboarding.bmiScale.categories.overweight' => 'زیادہ وزن',
			'onboarding.bmiScale.categories.obese' => 'موٹاپا',
			'onboarding.bmiScale.messages.underweight' => 'ہم غذائیت سے بھرپور کھانوں کے ساتھ متوازن وزن پانے کا صحت مند منصوبہ بنانے میں مدد کریں گے۔',
			'onboarding.bmiScale.messages.healthy' => 'زبردست! آپ صحت مند حد میں ہیں۔ ہم آپ کی توانائی اور جان داری برقرار رکھنے میں مدد کریں گے۔',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} AI سے چلنے والی ٹریکنگ کے ساتھ آپ کا سفر آسان بنائے گا تاکہ آپ با آسانی ہدف تک پہنچ سکیں۔',
			'onboarding.bmiScale.messages.obese' => 'ہم آپ کے صحت کے اہداف کے لیے ذاتی رہنمائی اور پائیدار حکمتِ عملیاں فراہم کرنے کے لیے موجود ہیں۔',
			'onboarding.weightGoal.title' => 'آپ کا ہدف کیا ہے؟',
			'onboarding.weightGoal.description' => 'وہ ہدف منتخب کریں جو آپ کے مقصد کی بہترین عکاسی کرتا ہو',
			'onboarding.activityLevel.title' => 'آپ کتنے متحرک ہیں؟',
			'onboarding.activityLevel.description' => 'یہ ہمیں آپ کی روزانہ کیلوری ضرورتیں مزید درست اندازہ لگانے میں مدد دیتا ہے',
			'onboarding.healthConnect.title' => 'ہیلتھ کنیکٹ سے جڑیں',
			'onboarding.healthConnect.description' => 'بہتر بصیرت اور خودکار کیلوری ٹریکنگ کے لیے اپنا صحت ڈیٹا سنک کریں',
			'onboarding.healthConnect.automaticTracking.title' => 'خودکار کیلوری ٹریکنگ',
			'onboarding.healthConnect.automaticTracking.description' => 'فٹنس ایپس سے جلائی گئی کیلوریز ٹریک کریں',
			'onboarding.healthConnect.progressInsights.title' => 'ترقی کی بصیرت',
			'onboarding.healthConnect.progressInsights.description' => 'اپنے صحت رجحانات پر تفصیلی بصیرت حاصل کریں',
			'onboarding.healthConnect.seamlessIntegration.title' => 'بلا رکاوٹ انضمام',
			'onboarding.healthConnect.seamlessIntegration.description' => 'اپنی پسندیدہ صحت ایپس سے ڈیٹا سنک کریں',
			'onboarding.healthConnect.connected' => 'ہیلتھ کنیکٹ منسلک',
			'onboarding.healthConnect.notConnected' => 'ہیلتھ کنیکٹ منسلک نہیں',
			'onboarding.healthConnect.setup' => 'ہیلتھ کنیکٹ سیٹ اپ',
			'onboarding.healthConnect.skipForNow' => 'ابھی چھوڑیں',
			'onboarding.healthConnect.statusConnected' => 'ہیلتھ کنیکٹ منسلک ہے۔',
			'onboarding.healthConnect.statusSuccess' => 'ہیلتھ کنیکٹ کامیابی سے منسلک ہو گیا!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'اجازت مسترد۔ براہ کرم فون سیٹنگز میں ${appLabel} کے لیے ہیلتھ کنیکٹ کی اجازتیں فعال کریں۔',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'ہیلتھ کنیکٹ سیٹ اپ میں خرابی: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'آپ اکیلے نہیں',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'تحقیقات سے ثابت ہے کہ مسلسل ٹریکنگ طویل مدتی کامیابی کی سب سے بڑی پیش گو ہے۔',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age} سالہ ${gender} جو ${goal} چاہتا/ چاہتی ہے، اس کے لیے مسلسل ٹریکنگ کامیابی کی سب سے بڑی پیش گو ہے۔',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} اسے دستی طریقے سے 10 گنا آسان بنا دیتا ہے۔',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'کیا شروع کرنے کے لیے تیار ہیں؟',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'فوری تجزیے کے لیے اپنے کھانوں کی تصویر کھینچیں',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'نمایاں پیش رفت کے لیے باقاعدگی سے لاگ کریں',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'حوصلہ افزائی کے لیے روزانہ اپنی پیش رفت دیکھیں',
			'onboarding.reinforcement.trackingSuccess.button' => 'چلیں',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'فرد',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'بہتر صحت',
			'onboarding.reinforcement.healthProfile.title' => 'آپ کی صحت پروفائل',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'آپ کی پیمائشوں کی بنیاد پر، آپ کا BMI ${bmi} ہے۔',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'آئیے آپ کی پروفائل فائنل کریں تاکہ آپ کا تجربہ ذاتی بن سکے۔',
			'onboarding.reinforcement.healthProfile.goalGain' => 'بڑھائیں',
			'onboarding.reinforcement.healthProfile.goalLose' => 'کم کریں',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object diff, required Object unit, required Object direction}) => 'اپنا ہدف حاصل کرنے کے لیے، آپ کو ${diff} ${unit} ${direction} کرنے ہوں گے۔',
			'onboarding.reinforcement.healthProfile.goalReached' => 'آپ ہدف وزن پر ہیں! ہم اسے برقرار رکھنے میں مدد کریں گے۔',
			'onboarding.reinforcement.healthProfile.button' => 'چلیں',
			'onboarding.reinforcement.goalLifestyle.title' => 'شاندار آغاز!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'آپ نے ${goalText} کی طرف پہلا قدم اٹھا لیا ہے۔ چونکہ آپ ${activityText} ہیں، ${appLabel} آپ کے اہداف کو آپ کی طرزِ زندگی کے مطابق ایڈجسٹ کرے گا۔',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'شخصی کردہ کیلوری اہداف',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI سے چلنے والی کھانوں کی شناخت',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'تفصیلی میکرو غذائیت کا تجزیہ',
			'onboarding.reinforcement.goalLifestyle.button' => 'چلیں',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'آپ کے اہداف',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'فعال',
			'tabs.dashboard' => 'ڈیش بورڈ',
			'tabs.history' => 'ہسٹری',
			'home.aiSummary.title' => 'آپ کا AI خلاصہ',
			'home.aiSummary.logMore' => 'اگلے چند دنوں میں مزید کھانے لاگ کریں تاکہ آپ کو ذاتی نوعیت کی AI بصیرتیں مل سکیں۔',
			'home.aiSummary.loading' => 'آپ کا خلاصہ لوڈ ہو رہا ہے...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} کھانے لاگ ہوئے',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'توازن اسکور ${score}',
			'home.aiSummary.topFoods' => 'سرِفہرست غذائیں',
			'home.aiSummary.trendUp' => 'کیلوریز میں اضافہ ہو رہا ہے',
			'home.aiSummary.trendDown' => 'کیلوریز میں کمی ہو رہی ہے',
			'home.aiSummary.trendSteady' => 'کیلوریز مستحکم ہیں',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'تازہ کاری ${time}',
			'home.dailyGoal.title' => 'اپنا یومیہ ہدف طے کریں',
			'home.dailyGoal.titleSet' => 'آپ کا یومیہ ہدف',
			'home.dailyGoal.description' => 'اپنی فلاح و بہبود کے سفر پر نکلنے کے لیے تیار ہیں؟ آغاز کے لیے نیچے اپنی روزانہ کیلوری کا ہدف سیٹ کریں۔',
			'home.dailyGoal.descriptionSet' => 'آپ کا رہنما سیٹ ہو گیا! یہ روزانہ کیلوری ہدف آپ کی رہنمائی کرے گا۔',
			'home.dailyGoal.yourGoal' => 'آپ کا ہدف',
			'home.dailyGoal.goal' => 'ہدف',
			'home.dailyGoal.dailyCalories' => 'روزانہ کیلوریز (kcal)',
			'home.dailyGoal.setGoal' => 'ہدف سیٹ کریں',
			'home.dailyGoal.intake' => 'انٹیک',
			'home.dailyGoal.burned' => 'جلائی گئیں',
			'home.dailyGoal.weightImpact' => 'وزن پر اثر',
			'home.dailyGoal.estLoss' => 'متوقع کمی',
			'home.dailyGoal.estGain' => 'متوقع اضافہ',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'یومیہ خلاصہ',
			'home.dailySummary.calories' => 'کیلوریز',
			'home.dailySummary.carbs' => 'کاربز',
			'home.dailySummary.protein' => 'پروٹین',
			'home.dailySummary.fat' => 'فیٹ',
			'home.dailySummary.fiber' => 'فائبر',
			'home.dailySummary.grams' => 'گرام',
			'home.dailySummary.chartAccessibilityLabel' => 'میکروز چارٹ',
			'home.intakeProgress.title' => 'آج کی میکرو تقسیم',
			'home.intakeProgress.target' => 'ہدف',
			'home.intakeProgress.current' => 'موجودہ',
			'home.intakeHistory.title' => '7 دن کی میکرو تاریخ',
			'home.intakeHistory.trendTitle' => 'آج کا رجحان',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'عروج: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'ابھی تک کوئی ہسٹری نہیں',
			'home.intakeHistory.startLogging' => 'یہاں 7 دن کے میکرو رجحانات دیکھنے کے لیے\nاپنے کھانے لاگ کرنا شروع کریں',
			'home.mealLog.title' => 'ریکارڈ شدہ کھانے',
			'home.mealLog.emptyMessage' => 'اپنے پچھلے کھانے کی تصویر کھینچ کر یہاں لاگ کریں۔',
			'home.mealLog.noMealsToday' => 'آج کے لیے کوئی کھانا ریکارڈ نہیں',
			'home.mealLog.seeAllMeals' => 'تمام کھانے دیکھیں',
			'home.mealDescription.title' => 'AI کے ساتھ فوری اندراج',
			'home.mealDescription.description' => 'اپنا کھانا بیان کریں، باقی کام AI پر چھوڑ دیں۔',
			'home.mealDescription.hint' => 'مثلاً ناشتے میں میں نے اوٹس کا بڑا پیالہ، ایک کیلا کاٹا ہوا اور وہے کا ایک اسکوپ لیا ...',
			'home.mealDescription.analyzeMeal' => 'کھانے کا تجزیہ کریں',
			'home.favoriteMeals.title' => 'پسندیدہ کھانے',
			'home.favoriteMeals.description' => 'اپنے پسندیدہ کھانوں میں سے فوراً شامل کریں۔',
			'home.favoriteMeals.noFavorites' => 'ابھی تک کوئی پسندیدہ کھانا نہیں۔',
			'home.favoriteMeals.addFavoriteHint' => 'کسی کھانے پر ستارہ دبائیں تاکہ اسے پسندیدہ میں شامل کریں۔',
			'home.favoriteMeals.seeAll' => 'سب دیکھیں',
			'home.favoriteMeals.add' => 'شامل کریں',
			'home.mealSnap.title' => 'تصویر لے کر کھانا ٹریک کریں',
			'home.mealSnap.description' => 'AI تجزیے کے لیے اپنے کھانے کی تصویر کھینچیں۔',
			'home.mealSnap.openCamera' => 'کیمرہ کھولیں',
			'home.mealSnap.gallery' => 'گیلری',
			'home.mealSnap.compressingPhoto' => 'تصویر بہتر بنائی جا رہی ہے…',
			'home.mealSnap.uploadingPhoto' => 'تصویر اَپ لوڈ ہو رہی ہے…',
			'home.connectHealth.title' => 'ہیلتھ کنیکٹ سے سنک کریں',
			'home.connectHealth.description' => 'اپنا غذائی ڈیٹا ہیلتھ کنیکٹ کے ساتھ سنک کریں',
			'home.connectHealth.install' => 'انسٹال',
			'home.connectHealth.connect' => 'کنیکٹ',
			'history.noMeals' => 'کوئی کھانا ریکارڈ نہیں',
			'history.emptyMessage' => 'اپنے پچھلے کھانے کی تصویر کھینچ کر یہاں لاگ کریں۔',
			'history.today' => 'آج',
			'history.yesterday' => 'کل',
			'meal.ohNo' => 'اوہ نہیں!',
			'meal.delete' => 'حذف کریں',
			'meal.editMeal' => 'کھانا ایڈٹ کریں',
			'meal.addMeal' => 'کھانا شامل کریں',
			'meal.saveMeal' => 'کھانا محفوظ کریں',
			'meal.save' => 'محفوظ کریں',
			'meal.mealName' => 'کھانے کا نام',
			'meal.mealNameHint' => 'مثلاً، اسکریبلڈ انڈے ٹوسٹ کے ساتھ',
			'meal.mealQuantity' => 'خوراک کی مقدار',
			'meal.mealQuantityHint' => 'مثلاً، 1 پیالہ، 2 سلائس',
			'meal.timeOfMeal' => 'کھانے کا وقت',
			'meal.timeOfMealHint' => 'وہ وقت منتخب کریں جب آپ نے کھانا کھایا',
			'meal.mealType' => 'کھانے کی قسم',
			'meal.nutrition.calories' => 'کیلوریز',
			'meal.nutrition.carbs' => 'کاربز (g)',
			'meal.nutrition.protein' => 'پروٹین (g)',
			'meal.nutrition.fat' => 'فیٹ (g)',
			'meal.nutrition.fiber' => 'فائبر (g)',
			'meal.deleteConfirmation.title' => 'کھانا حذف کریں',
			'meal.deleteConfirmation.message' => 'کیا آپ واقعی اس کھانے کی انٹری حذف کرنا چاہتے ہیں؟',
			'meal.deleteConfirmation.cancel' => 'منسوخ کریں',
			'meal.deleteConfirmation.delete' => 'حذف کریں',
			'meal.addedToLog' => 'کھانا آپ کے لاگ میں شامل ہو گیا!',
			'meal.couldNotAdd' => ({required Object error}) => 'کھانا شامل نہ ہو سکا: ${error}',
			'meal.savedSuccessfully' => 'کھانا کامیابی سے شامل ہو گیا!',
			'meal.updatedSuccessfully' => 'کھانا کامیابی سے اپ ڈیٹ ہو گیا!',
			'meal.errorSaving' => ({required Object error}) => 'کھانا محفوظ کرنے میں خرابی: ${error}',
			'meal.removedFromFavorites' => 'پسندیدگی سے ہٹا دیا گیا!',
			'meal.savedAsFavorite' => 'کھانا پسندیدہ میں محفوظ!',
			'meal.unfavorite' => 'پسندیدگی ہٹائیں',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'پسندیدگی اپ ڈیٹ نہ ہو سکی: ${error}',
			'meal.feedbackThanks' => 'فیڈبیک کا شکریہ!',
			'meal.reanalysisUpdated' => 'آپ کی رائے کی بنیاد پر کھانے کا تجزیہ اپ ڈیٹ کر دیا گیا ہے۔',
			'meal.failedToProcess' => ({required Object error}) => 'پروسیس ناکام: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'تصویر پروسیس نہ ہو سکی: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'تصویر کمپریس کرنے میں خرابی: ${error}',
			'meal.failedToSave' => 'ڈیٹا محفوظ نہ ہو سکا۔ براہ کرم دوبارہ کوشش کریں۔',
			'meal.skip' => 'اسکپ',
			'meal.questionFlow.progress' => ({required Object total, required Object current}) => 'مجموعی ${total} میں سے سوال نمبر ${current}',
			'meal.questionFlow.noQuestionsAvailable' => 'کوئی سوال دستیاب نہیں ہے',
			'meal.questionFlow.next' => 'اگلا',
			'meal.questionFlow.continueLabel' => 'جاری رکھیں',
			'meal.analysis.title' => 'AI کھانے کا تجزیہ',
			'meal.analysis.stepStarted' => 'آغاز ہو رہا ہے…',
			'meal.analysis.stepDecomposition' => 'آپ کے کھانے کو سمجھا جا رہا ہے…',
			'meal.analysis.stepIngredients' => 'اجزاء کو غذائی ڈیٹا سے ملایا جا رہا ہے…',
			'meal.analysis.stepUncertainty' => 'اعتماد جانچا جا رہا ہے…',
			'meal.analysis.stepMealTypeQuestion' => 'بس ہو ہی گیا…',
			'meal.analysis.stepResult' => 'نتیجہ فائنل کیا جا رہا ہے…',
			'meal.analysis.stepError' => 'کچھ غلط ہو گیا',
			'meal.analysis.stepDefault' => 'آپ کے کھانے کا تجزیہ ہو رہا ہے…',
			'meal.analysis.progressUnderstand' => 'سمجھیں',
			'meal.analysis.progressMatch' => 'ملاپ',
			'meal.analysis.progressCheck' => 'چیک',
			'meal.analysis.progressMealType' => 'کھانے کی قسم منتخب کی جا رہی ہے',
			'meal.analysis.progressFinish' => 'اختتام',
			'meal.analysis.detectedIngredientHeading' => 'ہم جو اجزاء پہچان رہے ہیں',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} مزید',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} اجزاء شناخت ہوئے',
			'meal.analysis.ingredientsPending' => 'اجزاء اسکین کیے جا رہے ہیں…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'کیا غلط لگ رہا ہے؟',
			'meal.feedback.subtitle' => 'ایک یا زیادہ مسائل منتخب کر کے تجزیہ بہتر بنانے میں ہماری مدد کریں۔',
			'meal.feedback.tellUsMore' => 'مزید بتائیں',
			'meal.feedback.describeIncorrect' => 'بیان کریں کہ کیا غلط تھا',
			'meal.feedback.submit' => 'جمع کرائیں',
			'meal.feedback.issueFoodIdentification' => 'کھانے کی شناخت',
			'meal.feedback.issuePortionSize' => 'حصے کا سائز',
			'meal.feedback.issueCalorieDistribution' => 'کیلوریز کی تقسیم',
			'meal.feedback.issueMacrosWrong' => 'میکروز غلط ہیں',
			'meal.feedback.issueMissingItems' => 'غائب اشیاء',
			'meal.feedback.issueExtraItems' => 'اضافی اشیاء',
			'meal.feedback.issueOther' => 'دیگر',
			'favorites.title' => 'پسندیدہ',
			'favorites.empty' => 'ابھی تک کوئی پسندیدہ کھانا نہیں۔',
			'favorites.searchPlaceholder' => 'پسندیدہ کھانے تلاش کریں',
			'favorites.searchEmptyTitle' => 'آپ کی تلاش سے کوئی پسندیدہ نہیں ملا',
			'favorites.searchEmptySubtitle' => 'کوئی اور نام، مقدار، یا کھانے کی قسم آزمائیں۔',
			'favorites.sortLabel' => 'پسندیدہ ترتیب دیں',
			'favorites.undo' => 'واپس کریں',
			'favorites.removed' => ({required Object name}) => '${name} کو پسندیدہ سے ہٹا دیا گیا',
			'favorites.sortOptions.recent' => 'حالیہ',
			'favorites.sortOptions.calories' => 'کیلوریز',
			'favorites.sortOptions.alphabetical' => 'حروفِ تہجی',
			'profile.title' => 'پروفائل',
			'profile.noProfileData' => 'کوئی پروفائل ڈیٹا نہیں ملا',
			'profile.yourProfile' => 'آپ کی پروفائل',
			'profile.viewAndManage' => 'اپنی صحت کی معلومات دیکھیں اور منیج کریں',
			'profile.sections.profile' => 'پروفائل',
			'profile.sections.basicInformation' => 'بنیادی معلومات',
			'profile.sections.goalsAndActivity' => 'اہداف اور سرگرمی',
			'profile.sections.calculatedValues' => 'حساب شدہ اقدار',
			'profile.gender' => 'صنف',
			'profile.height' => 'قد',
			'profile.weight' => 'وزن',
			'profile.age' => 'عمر',
			'profile.weightGoal' => 'وزن کا ہدف',
			'profile.targetWeight' => 'ہدف وزن',
			'profile.activityLevel' => 'سرگرمی کی سطح',
			'profile.healthMetrics' => 'صحت میٹرکس',
			'profile.notSet' => 'سیٹ نہیں',
			'profile.years' => 'سال',
			'profile.updatedSuccessfully' => 'پروفائل کامیابی سے اپ ڈیٹ ہو گئی!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'یومیہ ہدف',
			'profile.calculatedValues.calPerDay' => 'cal/دن',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'صحت اسکور',
			'healthScore.whyThisScore' => 'یہ اسکور کیوں؟',
			'healthScore.note' => 'یہ اسکور شناخت شدہ اجزاء اور غذائی کثافت کی بنیاد پر AI کا اندازہ ہے۔ ذاتی غذائی مشورے کے لیے ہمیشہ کسی پروفیشنل سے رجوع کریں۔',
			'healthScore.unhealthy' => 'غیر صحت مند',
			'healthScore.healthy' => 'صحت مند',
			'healthScore.neutral' => 'غیر جانبدار',
			'editProfile.title' => 'پروفائل ایڈٹ کریں',
			'editProfile.sections.personalInformation' => 'ذاتی معلومات',
			'editProfile.sections.physicalMeasurements' => 'جسمانی پیمائشیں',
			'editProfile.sections.goalsAndActivity' => 'اہداف اور سرگرمی',
			'editProfile.gender' => 'صنف',
			'editProfile.dateOfBirth' => 'تاریخِ پیدائش',
			'editProfile.height' => 'قد',
			'editProfile.weight' => 'وزن',
			'editProfile.weightGoal' => 'وزن کا ہدف',
			'editProfile.activityLevel' => 'سرگرمی کی سطح',
			'editProfile.metric' => 'میٹرک',
			'editProfile.imperial' => 'امپیریل',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'میٹرک (cm)',
			'editProfile.imperialFtIn' => 'امپیریل (ft/in)',
			'editProfile.metricKg' => 'میٹرک (kg)',
			'editProfile.imperialLbs' => 'امپیریل (lbs)',
			'editProfile.genders.male' => 'مرد',
			'editProfile.genders.female' => 'عورت',
			'editProfile.genders.other' => 'دیگر',
			'editProfile.weightGoals.loseWeight.name' => 'وزن کم کریں',
			'editProfile.weightGoals.loseWeight.description' => 'کیلوری خسارہ بنا کر وزن کم کریں',
			'editProfile.weightGoals.maintainWeight.name' => 'وزن برقرار رکھیں',
			'editProfile.weightGoals.maintainWeight.description' => 'اپنا موجودہ وزن برقرار رکھیں',
			'editProfile.weightGoals.gainWeight.name' => 'وزن بڑھائیں',
			'editProfile.weightGoals.gainWeight.description' => 'کیلوری اضافہ بنا کر وزن بڑھائیں',
			'editProfile.activityLevels.sedentary.name' => 'غیر متحرک',
			'editProfile.activityLevels.sedentary.description' => 'ورزش نہ ہونے کے برابر',
			'editProfile.activityLevels.lightlyActive.name' => 'ہلکی سرگرمی',
			'editProfile.activityLevels.lightlyActive.description' => 'ہلکی ورزش ہفتے میں 1–3 دن',
			'editProfile.activityLevels.moderatelyActive.name' => 'اوسط سرگرمی',
			'editProfile.activityLevels.moderatelyActive.description' => 'اوسط درجے کی ورزش ہفتے میں 3–5 دن',
			'editProfile.activityLevels.veryActive.name' => 'بہت سرگرم',
			'editProfile.activityLevels.veryActive.description' => 'سخت ورزش ہفتے میں 6–7 دن',
			'editProfile.activityLevels.extremelyActive.name' => 'انتہائی سرگرم',
			'editProfile.activityLevels.extremelyActive.description' => 'انتہائی سخت ورزش، جسمانی کام',
			'settings.title' => 'سیٹنگز',
			'settings.sections.profile' => 'پروفائل',
			'settings.sections.localization' => 'لوکلائزیشن',
			'settings.sections.notifications' => 'اطلاعات',
			'settings.sections.healthConnect' => 'ہیلتھ کنیکٹ',
			'settings.sections.supportAndLegal' => 'سپورٹ اور قانونی',
			'settings.sections.about' => 'بارے میں',
			'settings.sections.dangerZone' => 'خطرے کا حصہ',
			'settings.sections.developer' => 'ڈویلپر',
			'settings.editProfile.title' => 'پروفائل ایڈٹ کریں',
			'settings.editProfile.subtitle' => 'اپنی ذاتی معلومات اپ ڈیٹ کریں',
			'settings.language.title' => 'زبان',
			'settings.language.subtitle' => 'اپنی پسندیدہ زبان منتخب کریں',
			'settings.language.searchHint' => 'زبانیں تلاش کریں...',
			'settings.language.noResults' => 'کوئی نتیجہ نہیں ملا',
			'settings.heightUnit.title' => 'قد کی اکائی',
			'settings.weightUnit.title' => 'وزن کی اکائی',
			'settings.mealReminders.title' => 'کھانوں کی یاددہانی',
			'settings.mealReminders.subtitle' => 'وقت پر الرٹس کے ساتھ رفتار برقرار رکھیں',
			'settings.theme.title' => 'تھیم',
			'settings.theme.light' => 'لائٹ',
			'settings.theme.dark' => 'ڈارک',
			'settings.theme.system' => 'سسٹم',
			'settings.sendFeedback.title' => 'فیڈبیک بھیجیں',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} کو بہتر بنانے میں ہماری مدد کریں',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} ایپ فیڈبیک',
			'settings.sendFeedback.emailBodyPrefix' => 'براہ کرم اپنی رائے درج کریں:',
			'settings.sendFeedback.appVersion' => 'ایپ ورژن',
			'settings.sendFeedback.device' => 'ڈیوائس',
			'settings.sendFeedback.osVersion' => 'OS ورژن',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'کھانوں کی ہسٹری ایکسپورٹ',
			'settings.exportMealHistory.subtitle' => 'اپنے لاگ شدہ کھانوں کی CSV شیئر کریں',
			'settings.exportMealHistory.shareText' => 'آپ کی Calorify کھانوں کی ہسٹری ایکسپورٹ',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'کھانوں کی ہسٹری ایکسپورٹ نہ ہو سکی: ${error}',
			'settings.clearAllData.title' => 'تمام ڈیٹا صاف کریں',
			'settings.clearAllData.subtitle' => 'اپنی ساری معلومات ناقابلِ واپسی طور پر حذف کریں',
			'settings.clearAllData.confirmationTitle' => 'تمام ڈیٹا صاف کریں؟',
			'settings.clearAllData.confirmationMessage' => 'یہ عمل واپس نہیں ہو سکتا۔ آپ کے تمام لاگز، پسندیدہ، اور پروفائل سیٹنگز مستقل طور پر حذف ہو جائیں گی۔',
			'settings.clearAllData.cancel' => 'منسوخ کریں',
			'settings.clearAllData.clearEverything' => 'سب کچھ صاف کریں',
			'settings.debugOptions.title' => 'ڈی بگ آپشنز',
			'settings.developerModeEnabled' => 'ڈویلپر موڈ فعال ہو گیا!',
			'settings.healthConnect.title' => 'ہیلتھ کنیکٹ',
			'settings.healthConnect.subtitle' => 'اجازتیں دیکھیں اور منیج کریں',
			'settings.healthConnect.unavailable.title' => 'ہیلتھ کنیکٹ دستیاب نہیں',
			'settings.healthConnect.unavailable.description' => 'یہ ڈیوائس ہیلتھ کنیکٹ کو سپورٹ نہیں کرتی۔ براہ کرم پلے اسٹور سے ہیلتھ کنیکٹ انسٹال کریں (Android 9+) یا Android 14+ پر اپ ڈیٹ کریں۔',
			'settings.healthConnect.permissions.title' => 'اجازتیں',
			'settings.healthConnect.permissions.description' => 'ہیلتھ کنیکٹ انضمام فراہم کرنے کے لیے درج ذیل اجازتیں درکار ہیں:',
			'settings.healthConnect.permissions.granted' => 'دی گئی',
			'settings.healthConnect.permissions.notGranted' => 'نہیں دی گئی',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'کل جلائی گئی کیلوریز پڑھیں',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'ایپ کو ہیلتھ کنیکٹ سے آپ کی کل جلائی گئی کیلوریز پڑھنے کی اجازت دیتا ہے۔',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'یہ اجازت ایپ میں آپ کی روزانہ کیلوری برن دکھانے کے لیے استعمال ہوتی ہے، تاکہ آپ اپنے روزانہ توانائی خرچ کو سمجھ سکیں۔',
			'settings.healthConnect.permissions.nutritionRead.title' => 'غذائیت کا ڈیٹا پڑھیں',
			'settings.healthConnect.permissions.nutritionRead.description' => 'ایپ کو ہیلتھ کنیکٹ سے غذائیت کا ڈیٹا پڑھنے کی اجازت دیتا ہے۔',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'یہ اجازت اُن غذائی معلومات کو پڑھنے کے لیے ہے جو دیگر ایپس نے ہیلتھ کنیکٹ میں لاگ کی ہوں، تاکہ آپ کی غذائیت کا جامع منظر پیش کیا جا سکے۔',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'غذائیت کا ڈیٹا لکھیں',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'ایپ کو ہیلتھ کنیکٹ میں غذائیت کا ڈیٹا لکھنے کی اجازت دیتا ہے۔',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'یہ اجازت آپ کے لاگ شدہ کھانوں کو ہیلتھ کنیکٹ کے ساتھ سنک کرنے کے لیے ہے، تاکہ دیگر صحت و فٹنس ایپس میں بھی آپ کا ڈیٹا دستیاب ہو۔',
			'settings.healthConnect.managePermissions' => 'اجازتیں منیج کریں',
			'settings.healthConnect.openSettings' => 'ہیلتھ کنیکٹ سیٹنگز کھولیں',
			'settings.healthConnect.requestPermissions' => 'اجازتیں مانگیں',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'اجازت کی درخواست منسوخ یا ناکام ہو گئی۔ براہ کرم دوبارہ کوشش کریں یا ہیلتھ کنیکٹ سیٹنگز میں دستی طور پر اجازت دیں۔',
			'settings.healthConnect.permissionRequestFailed' => 'اجازتیں مانگنے میں ناکامی۔ براہ کرم دوبارہ کوشش کریں یا ہیلتھ کنیکٹ سیٹنگز میں دستی طور پر اجازت دیں۔',
			'settings.healthConnect.requestingPermissions' => 'درخواست ہو رہی ہے...',
			'settings.about.title' => 'بارے میں',
			'settings.about.tagline' => 'تیز، مفت، اور رازداری کو ترجیح دینے والی کیلوری آگاہی',
			'settings.about.ourStory.title' => 'ہماری کہانی',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} ایک سادہ جھنجھلاہٹ سے جنم لیا: زیادہ تر کیلوری ٹریکنگ ایپس یا تو حد سے زیادہ پیچیدہ ہوتی ہیں، مسلسل دستی اندراج چاہتی ہیں، مہنگی سبسکرپشنز لیتی ہیں، یا رازداری پر سمجھوتہ کرتی ہیں۔\n\nبطور واحد ڈویلپر، میں نے کچھ زیادہ سادہ اور منصفانہ بنانے کا ارادہ کیا — ایسی ایپ جو AI سے محنت کم کرے، تیز اور مفت رہے، اور آپ کے صحت ڈیٹا کا احترام کرے۔\n\n${appLabel} وہ ایپ ہے جس کی مجھے تلاش تھی: نہ اکاؤنٹس، نہ ٹریکنگ، نہ اشتہارات — بس واضح، عملی بصیرتیں اور آپ کے صحت کے اہداف۔',
			'settings.about.privacy.title' => 'آپ کی رازداری اہم ہے',
			'settings.about.privacy.description' => 'رازداری بعد میں سوچنے کی چیز نہیں — یہ ڈیزائن کا اصول ہے۔ اس کا عملی مطلب یہ ہے:',
			'settings.about.privacy.noAccounts' => 'اکاؤنٹس کی ضرورت نہیں\nفوراً ایپ استعمال کریں۔ نہ سائن اپ، نہ شناختیں۔',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'کوئی طرزِ عمل ٹریکنگ نہیں\n${appLabel} آپ کی سرگرمی کی نگرانی نہیں کرتا، استعمال کے پروفائل نہیں بناتا، اور نہ ہی آپ کو ایپس یا ویب سائٹس کے پار ٹریک کرتا ہے۔',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'اشتہارات سے پاک ڈیزائن\n${appLabel} کو اشتہارات یا ڈیٹا پر مبنی کمائی کے بغیر چلنے کے لیے بنایا گیا ہے۔',
			'settings.about.privacy.noDataSelling' => 'ڈیٹا فروخت نہیں ہوتا\nآپ کا صحت ڈیٹا کبھی تیسرے فریق کو فروخت یا شیئر نہیں کیا جاتا۔',
			'settings.about.privacy.localStorage' => 'لوکل-فرسٹ اسٹوریج\nآپ کا ڈیٹا آپ کے ڈیوائس پر ہی رہتا ہے۔',
			'settings.about.privacy.privacyPolicy' => 'پرائیویسی پالیسی',
			'settings.about.developer.title' => 'ایک واحد ڈویلپر کی بنائی ہوئی',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} ایک سولو ڈویلپر نے تیار اور برقرار رکھی ہے جو پرسکون، رازداری کا احترام کرنے والا صحت سافٹ ویئر بنانے پر توجہ دیتا ہے۔\n\nفیڈبیک ذاتی طور پر پڑھا جاتا ہے اور ایپ کی سمت طے کرنے میں مدد دیتا ہے۔',
			'settings.about.developer.website' => 'ویب سائٹ',
			'settings.about.developer.email' => 'ای میل',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel} پسند آ رہی ہے؟',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'آپ کی رائے ${appLabel} کو سب کے لیے بہتر بناتی ہے۔',
			'settings.about.feedback.rateApp' => 'پلے اسٹور پر درجہ دیں',
			'settings.about.feedback.sendFeedback' => 'فیڈبیک بھیجیں',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'بلڈ ${buildNumber}',
			'reminders.title' => 'یاددہانی سے رفتار برقرار رکھیں',
			'reminders.description' => 'اپنے کھانے لاگ کرنے اور غذائی اہداف پر قائم رہنے کے لیے نرمی سے یاددہانی حاصل کریں',
			'reminders.notificationsEnabled' => 'نوٹیفکیشن فعال',
			'reminders.notificationsDisabled' => 'نوٹیفکیشن غیر فعال',
			'reminders.enabledSubtitle' => 'آپ کو کھانوں کی یاددہانی ملیں گی',
			'reminders.disabledSubtitle' => 'کھانوں کی یاددہانی کے لیے نوٹیفکیشن فعال کریں',
			'reminders.mealReminders' => 'کھانوں کی یاددہانی',
			'reminders.breakfast' => 'ناشتہ',
			'reminders.lunch' => 'دوپہر کا کھانا',
			'reminders.dinner' => 'رات کا کھانا',
			'reminders.snack' => 'سنیک',
			'reminders.unknown' => 'نامعلوم',
			'reminders.change' => 'تبدیل کریں',
			'reminders.enableNotifications' => 'نوٹیفکیشن فعال کریں',
			'reminders.skipForNow' => 'ابھی چھوڑیں',
			'reminders.saveChanges' => 'تبدیلیاں محفوظ کریں',
			'reminders.enabledSuccessfully' => 'نوٹیفکیشن کامیابی سے فعال ہو گئے!',
			'reminders.permissionDenied' => 'نوٹیفکیشن کی اجازت مسترد',
			'reminders.errorEnabling' => ({required Object error}) => 'نوٹیفکیشن فعال کرنے میں خرابی: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'سیٹ اپ مکمل کرنے میں خرابی: ${error}',
			'notifications.breakfast.title' => 'ناشتہ کا وقت! 🍳',
			'notifications.breakfast.body' => 'اپنا ناشتہ لاگ کرنا نہ بھولیں',
			'notifications.lunch.title' => 'دوپہر کے کھانے کا وقت! 🥗',
			'notifications.lunch.body' => 'اب اپنا دوپہر کا کھانا لاگ کریں',
			'notifications.dinner.title' => 'رات کے کھانے کا وقت! 🍽️',
			'notifications.dinner.body' => 'اپنا رات کا کھانا لاگ کرنا نہ بھولیں',
			'notifications.snack.title' => 'سنیک ٹائم! 🍎',
			'notifications.snack.body' => 'ایک صحت مند سنیک کا وقت',
			'notifications.test.title' => 'ٹیسٹ نوٹیفکیشن',
			'login.title' => 'لاگ اِن',
			'login.signInWithGoogle' => 'Google کے ساتھ سائن اِن کریں',
			'login.signInFailed' => 'Google سائن اِن ناکام یا منسوخ ہو گیا۔',
			'disclaimer.pleaseNote' => 'براہ کرم نوٹ کریں',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} غذائی معلومات کے اندازے فراہم کرتا ہے۔ درستگی آپ کی دی گئی معلومات اور کھانے کے فرق پر منحصر ہے۔ اسے رہنمائی کے طور پر استعمال کریں، حتمی ماخذ کے طور پر نہیں۔ ذاتی غذائی مشورے کے لیے کسی پروفیشنل سے رجوع کریں۔',
			'disclaimer.snap.portionSize.title' => 'حصے کا سائز',
			'disclaimer.snap.portionSize.description' => 'اندازوں کی درستگی آپ کے حصے کے سائز کے درست تعین پر بہت زیادہ منحصر ہے۔',
			'disclaimer.snap.preparationMethods.title' => 'تیاری کے طریقے',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'پکانے کے طریقے غذائی مواد کو خاصا بدل سکتے ہیں۔ ${appLabel} کے اندازے ہر فرق کو ہمیشہ مدِنظر نہیں رکھ سکتے۔',
			'disclaimer.snap.ingredients.title' => 'اجزاء',
			'disclaimer.snap.ingredients.description' => 'چھپے ہوئے متعدد اجزاء والی پیچیدہ ڈشز میں اندازے کم درست ہو سکتے ہیں۔',
			'disclaimer.snap.databaseLimitations.title' => 'ڈیٹابیس کی حدود',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} کا فوڈ ڈیٹابیس وسیع ہے مگر ہر آئٹم یا ہر شکل شامل ہونا ضروری نہیں۔',
			'disclaimer.weightEstimate.title' => 'وزن کے اندازے کے بارے میں',
			'disclaimer.weightEstimate.description' => 'وزن میں ممکنہ تبدیلی ایک نظریاتی اندازہ ہے جو سادہ کیلوری اِن بمقابلہ کیلوری آؤٹ ماڈل پر مبنی ہے۔ یہ محض حوصلہ افزائی کے لیے ہے، آپ کے حقیقی وزن کی پیش گوئی نہیں۔',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'کیلوری کی درستگی',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'یہ اندازہ اتنا ہی درست ہے جتنی آپ کی انٹیک اور خرچ کی گئی کیلوریز کی ٹریکنگ درست ہے۔ غلط لاگنگ سے غلط اندازہ ہوگا۔',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'حیاتیاتی عوامل',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'حقیقی وزن میں کمی/اضافہ میٹابولزم، ہارمونز، نیند، دباؤ، ہائیڈریشن اور دیگر انفرادی عوامل سے متاثر ہوتا ہے جنہیں ${appLabel} ناپ نہیں سکتا۔',
			'disclaimer.weightEstimate.waterWeight.title' => 'پانی کا وزن اور اتار چڑھاؤ',
			'disclaimer.weightEstimate.waterWeight.description' => 'روزمرہ وزن پانی، ہضم اور وقت کے سبب خاصا بدل سکتا ہے۔ یہ اندازہ ان روزانہ تبدیلیوں کو شامل نہیں کرتا۔',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'پیشہ ورانہ رہنمائی',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'طبی فیصلوں کے لیے اس اندازے کو استعمال نہ کریں۔ ذاتی رہنمائی کے لیے ہمیشہ ڈاکٹر یا رجسٹرڈ ڈائٹیشن سے مشورہ کریں۔',
			'disclaimer.healthMetrics.description' => 'یہ میٹرکس آپ کے جسم کی توانائی کی ضرورت سمجھنے اور غذائی اہداف طے کرنے میں مدد دیتے ہیں۔',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'بیسل میٹابولک ریٹ (BMR) وہ کیلوریز ہیں جو آپ کا جسم آرام کی حالت میں بنیادی افعال جیسے سانس اور دورانِ خون کے لیے جلاتا ہے۔ BMR کا دارومدار عمر، جنس، قد اور وزن پر ہے۔ بلند BMR کا مطلب ہے کہ آپ کا جسم آرام میں بھی زیادہ کیلوریز جلاتا ہے، عموماً زیادہ پٹھوں، کم عمر یا مرد ہونے کی وجہ سے۔ کم BMR عموماً کم پٹھوں، زیادہ عمر یا عورت ہونے کی نشانی ہے۔',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'ٹوٹل ڈیلی انرجی ایکسپنڈیچر (TDEE) وہ کل کیلوریز ہیں جو آپ روزانہ جلاتے ہیں، یعنی BMR کے ساتھ جسمانی سرگرمی اور روزمرہ حرکت۔ TDEE کا انحصار BMR اور سرگرمی کی سطح پر ہے۔ بلند TDEE کا مطلب مجموعی طور پر زیادہ کیلوریز جلنا ہے، عموماً زیادہ سرگرمی یا بلند BMR کی وجہ سے۔ کم TDEE کم روزمرہ حرکت یا کم BMR کی طرف اشارہ کرتا ہے۔',
			'disclaimer.healthMetrics.dailyGoal.title' => 'یومیہ ہدف',
			'disclaimer.healthMetrics.dailyGoal.description' => 'یومیہ ہدف آپ کے TDEE اور وزن کے ہدف کی بنیاد پر روزانہ تجویز کردہ کیلوری اِن ٹیک ہے۔ وزن کم کرنے کے لیے آپ TDEE سے کم کیلوریز لیتے ہیں۔ برقرار رکھنے کے لیے TDEE کے برابر اور بڑھانے کے لیے TDEE سے زیادہ لیتے ہیں۔ اس طرح آپ مطلوبہ وزن تبدیلی صحت مند رفتار سے حاصل کرتے ہیں۔',
			'disclaimer.calorieExpenditure.title' => 'کیلوری خرچ کا اندازہ',
			'disclaimer.calorieExpenditure.description' => 'جب ہیلتھ کنیکٹ ڈیٹا دستیاب نہ ہو تو ہم آپ کے BMR اور سرگرمی کی سطح (TDEE) کی بنیاد پر، گزرے ہوئے دن کے حصے کے مطابق آج کی جلائی گئی کیلوریز کا اندازہ لگاتے ہیں۔',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'اندازہ کیسے لگایا جاتا ہے',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'ہم آپ کا TDEE (پروفائل کی بنیاد پر) نکالتے ہیں اور اسے دن کے گزرے ہوئے حصے (گھنٹے + منٹس)/24 سے ضرب دے کر اب تک جلائی گئی کیلوریز کا اندازہ لگاتے ہیں۔',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'پیشہ ورانہ رہنمائی',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'طبی فیصلوں کے لیے اس اندازے کو استعمال نہ کریں۔ ذاتی رہنمائی کے لیے ہمیشہ ڈاکٹر یا رجسٹرڈ ڈائٹیشن سے مشورہ کریں۔',
			'common.close' => 'بند کریں',
			'common.kContinue' => 'جاری رکھیں',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel} پسند آ رہی ہے؟',
			'feedbackRating.yes' => 'جی ہاں، مجھے پسند ہے',
			'feedbackRating.no' => 'واقعی نہیں',
			'feedbackRating.rateStepHeading' => 'پلے اسٹور پر درجہ دیں',
			'feedbackRating.emailStepHeading' => 'ای میل سے فیڈبیک بھیجیں',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'ایک تیز سا ریٹنگ دوسروں کو ${appLabel} تک پہنچنے میں مدد دیتی ہے اور ترقی کو جاری رکھتی ہے۔ کیا آپ ایک لمحہ نکالیں گے؟',
			'feedbackRating.shareFeedbackViaEmail' => 'آپ کی رائے اگلا قدم طے کرتی ہے — ہم ہر پیغام پڑھتے ہیں۔ کیا آپ ای میل کے ذریعے اپنی رائے شیئر کرنا چاہیں گے؟',
			'feedbackRating.rateCta' => 'پلے اسٹور پر درجہ دیں',
			'feedbackRating.maybeLater' => 'شاید بعد میں',
			'feedbackRating.sendFeedback' => 'فیڈبیک بھیجیں',
			'feedbackRating.noThanks' => 'نہیں، شکریہ',
			'feedbackRating.aboutUsDescription' => 'ایک چھوٹی ٹیم کی محنت سے تیار کیا گیا۔ ہم رازداری، سادگی، اور بہتر کھانے کی عادات بنانے میں آپ کی مدد پر مرکوز ہیں۔',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'جاننا چاہتے ہیں کہ ${appLabel} کے پیچھے کون ہے؟ دیکھیے ',
			'feedbackRating.aboutUsLinkLabel' => 'ہمارے بارے میں',
			'feedbackRating.thankYouMessage' => 'شکریہ! ہم پھر کبھی اور پوچھیں گے۔',
			'health.syncFailed' => 'ہیلتھ کنیکٹ سے سنک نہ ہو سکا',
			'health.mealSynced' => 'کھانا ہیلتھ کنیکٹ کے ساتھ سنک ہو گیا',
			_ => null,
		};
	}
}
