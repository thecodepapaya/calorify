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
	@override String get rateLimitExceeded => 'آپ نے بہت زیادہ درخواستیں کی ہیں۔ براہِ کرم دوبارہ کوشش کرنے سے پہلے تھوڑا انتظار کریں۔';
	@override String get networkError => 'نیٹ ورک میں خرابی۔ براہِ کرم اپنا انٹرنیٹ کنکشن چیک کریں۔';
	@override String get unknownError => 'کچھ غلط ہو گیا۔ براہِ کرم بعد میں دوبارہ کوشش کریں۔';
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
	@override String get subtitle => 'آپ کا ذاتی غذائیت کا ساتھی، AI کی طاقت کے ساتھ';
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
	@override String get noMeals => 'کوئی کھانا ریکارڈ نہیں ہوا';
	@override String get emptyMessage => 'اپنے آخری کھانے کی تصویر لے کر یہاں لاگ کریں۔';
	@override String get today => 'آج';
	@override String get yesterday => 'گزشتہ روز';
}

// Path: meal
class _TranslationsMealUr implements TranslationsMealEn {
	_TranslationsMealUr._(this._root);

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
	@override String get mealQuantity => 'کھانے کی مقدار';
	@override String get mealQuantityHint => 'مثلاً، 1 پیالہ، 2 سلائس';
	@override String get timeOfMeal => 'کھانے کا وقت';
	@override String get timeOfMealHint => 'وہ وقت منتخب کریں جب آپ نے کھایا';
	@override String get mealType => 'کھانے کی قسم';
	@override late final _TranslationsMealNutritionUr nutrition = _TranslationsMealNutritionUr._(_root);
	@override late final _TranslationsMealDeleteConfirmationUr deleteConfirmation = _TranslationsMealDeleteConfirmationUr._(_root);
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
	@override late final _TranslationsMealQuestionFlowUr questionFlow = _TranslationsMealQuestionFlowUr._(_root);
	@override late final _TranslationsMealAnalysisUr analysis = _TranslationsMealAnalysisUr._(_root);
	@override late final _TranslationsMealFeedbackUr feedback = _TranslationsMealFeedbackUr._(_root);
	@override String get nameRequired => 'محفوظ کرنے سے پہلے کھانے کا نام درج کریں۔';
}

// Path: favorites
class _TranslationsFavoritesUr implements TranslationsFavoritesEn {
	_TranslationsFavoritesUr._(this._root);

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
	@override late final _TranslationsFavoritesSortOptionsUr sortOptions = _TranslationsFavoritesSortOptionsUr._(_root);
}

// Path: profile
class _TranslationsProfileUr implements TranslationsProfileEn {
	_TranslationsProfileUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروفائل';
	@override String get noProfileData => 'کوئی پروفائل ڈیٹا نہیں ملا';
	@override String get yourProfile => 'آپ کا پروفائل';
	@override String get viewAndManage => 'اپنی صحت کی معلومات دیکھیں اور منظم کریں';
	@override late final _TranslationsProfileSectionsUr sections = _TranslationsProfileSectionsUr._(_root);
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
	@override late final _TranslationsProfileCalculatedValuesUr calculatedValues = _TranslationsProfileCalculatedValuesUr._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreUr implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreUr._(this._root);

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
class _TranslationsEditProfileUr implements TranslationsEditProfileEn {
	_TranslationsEditProfileUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروفائل ترمیم کریں';
	@override late final _TranslationsEditProfileSectionsUr sections = _TranslationsEditProfileSectionsUr._(_root);
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
	@override String get title => 'ترتیبات';
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
	@override String get developerModeEnabled => 'ڈیولپر موڈ فعال ہو گیا!';
	@override late final _TranslationsSettingsHealthConnectUr healthConnect = _TranslationsSettingsHealthConnectUr._(_root);
	@override late final _TranslationsSettingsAboutUr about = _TranslationsSettingsAboutUr._(_root);
	@override late final _TranslationsSettingsAppInfoUr appInfo = _TranslationsSettingsAppInfoUr._(_root);
}

// Path: reminders
class _TranslationsRemindersUr implements TranslationsRemindersEn {
	_TranslationsRemindersUr._(this._root);

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
	@override String get signInWithGoogle => 'Google سے سائن ان کریں';
	@override String get signInFailed => 'Google سائن ان ناکام ہوا یا منسوخ کر دیا گیا۔';
}

// Path: disclaimer
class _TranslationsDisclaimerUr implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'براہِ کرم نوٹ کریں';
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
class _TranslationsHealthUr implements TranslationsHealthEn {
	_TranslationsHealthUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect کے ساتھ ہم وقت نہیں ہو سکا';
	@override String get mealSynced => 'کھانا Health Connect کے ساتھ ہم وقت ہو گیا';
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
	@override String get title => 'آپ کی صنف کیا ہے؟';
	@override String get description => 'صنف ہمیں آپ کا بنیادی میٹابولک ریٹ (BMR) درست طور پر حساب کرنے میں مدد دیتی ہے۔';
	@override String get next => 'اگلا';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightUr implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کی قد کتنی ہے؟';
	@override String get description => 'آپ کی قد BMI اور توانائی کی ضروریات درست طور پر حساب کرنے میں مدد دیتی ہے۔';
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
	@override String get currentDescription => 'روزانہ کے مقاصد کو ذاتی بنانے کے لیے آپ کا موجودہ وزن ضروری ہے۔';
	@override String get targetTitle => 'آپ کا ہدف وزن کیا ہے؟';
	@override String get targetDescription => 'ہدف وزن مقرر کرنے سے ہم آپ کا طویل المدتی منصوبہ تشکیل دے سکتے ہیں۔';
	@override String get metric => 'میٹرک';
	@override String get imperial => 'امپیریل';
	@override String get next => 'اگلا';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeUr implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کی تاریخِ پیدائش کب ہے؟';
	@override String get description => 'آپ کی عمر ہمیں کیلوریز کی ضروریات درست طور پر حساب کرنے میں مدد دیتی ہے۔';
	@override String get next => 'اگلا';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleUr implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'کم';
	@override String get healthy => 'صحتمند';
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
	@override String get title => 'آپ کا مقصد کیا ہے؟';
	@override String get description => 'وہ مقصد منتخب کریں جو آپ کی خواہش کو بہترین طور پر بیان کرتا ہے';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelUr implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کتنے متحرک ہیں؟';
	@override String get description => 'یہ ہمیں آپ کی روزانہ کیلوری کی ضروریات زیادہ درست طور پر حساب کرنے میں مدد دیتا ہے';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectUr implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect سے جڑیں';
	@override String get description => 'بہتر بصیرت اور خودکار کیلوری ٹریکنگ کے لیے اپنے صحت کے ڈیٹا کو ہم وقت کریں';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingUr automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingUr._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsUr progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsUr._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationUr seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationUr._(_root);
	@override String get connected => 'Health Connect مربوط ہے';
	@override String get notConnected => 'Health Connect مربوط نہیں ہے';
	@override String get setup => 'Health Connect سیٹ اپ کریں';
	@override String get skipForNow => 'اسے ابھی چھوڑ دیں';
	@override String get statusConnected => 'Health Connect مربوط ہو چکا ہے۔';
	@override String get statusSuccess => 'Health Connect کامیابی سے مربوط ہو گیا!';
	@override String statusPermissionDenied({required Object appLabel}) => 'اجازت نامنظور۔ براہِ کرم ${appLabel} کے لیے Health Connect کی اجازتیں اپنے فون کی سیٹنگز میں فعال کریں۔';
	@override String statusError({required Object error}) => 'Health Connect سیٹ کرنے میں خرابی: ${error}';
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
class _TranslationsHomeDailyGoalUr implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalUr._(this._root);

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
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryUr implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryUr._(this._root);

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
class _TranslationsHomeIntakeProgressUr implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آج کا میکرو تقسیم';
	@override String get target => 'ہدف';
	@override String get current => 'موجودہ';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryUr implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => '7 روزہ میکرو ہسٹری';
	@override String get trendTitle => 'آج کا رجحان';
	@override String peakHour({required Object hour}) => 'عروج: ${hour}:00';
	@override String get noHistoryYet => 'ابھی تک کوئی ہسٹری نہیں';
	@override String get startLogging => 'یہاں اپنے کھانے لاگ کرنا شروع کریں تاکہ آپ\n7 روزہ میکرو رجحانات دیکھ سکیں';
}

// Path: home.mealLog
class _TranslationsHomeMealLogUr implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'لاگ کیے گئے کھانے';
	@override String get emptyMessage => 'اپنے آخری کھانے کی تصویر لے کر یہاں لاگ کریں۔';
	@override String get noMealsToday => 'آج کے لیے کوئی کھانا ریکارڈ نہیں ہوا';
	@override String get seeAllMeals => 'تمام کھانے دیکھیں';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionUr implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI سے فوری اضافہ';
	@override String get description => 'اپنے کھانے کو بیان کریں، اور تفصیلات AI پر چھوڑ دیں۔';
	@override String get hint => 'مثلاً: ناشتے میں میں نے اوٹس کا بڑا پیالہ، کٹا ہوا کیلا اور ایک اسکوپ وِی پروٹین لیا…';
	@override String get analyzeMeal => 'کھانے کا تجزیہ کریں';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsUr implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsUr._(this._root);

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
class _TranslationsHomeMealSnapUr implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapUr._(this._root);

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
class _TranslationsHomeConnectHealthUr implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect کے ساتھ ہم وقت کریں';
	@override String get description => 'اپنے غذائی ڈیٹا کو Health Connect کے ساتھ ہم وقت کریں';
	@override String get install => 'انسٹال کریں';
	@override String get connect => 'کنیکٹ کریں';
}

// Path: meal.nutrition
class _TranslationsMealNutritionUr implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get calories => 'کیلوریز';
	@override String get carbs => 'کاربس (گ)';
	@override String get protein => 'پروٹین (گ)';
	@override String get fat => 'چکنائی (گ)';
	@override String get fiber => 'فائبر (گ)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationUr implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کھانے کو حذف کریں';
	@override String get message => 'کیا آپ واقعی اس کھانے کا اندراج حذف کرنا چاہتے ہیں؟';
	@override String get cancel => 'منسوخ کریں';
	@override String get delete => 'حذف کریں';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowUr implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'سوال ${current} از ${total}';
	@override String get noQuestionsAvailable => 'کوئی سوال دستیاب نہیں';
	@override String get next => 'اگلا';
	@override String get continueLabel => 'جاری رکھیں';
}

// Path: meal.analysis
class _TranslationsMealAnalysisUr implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisUr._(this._root);

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
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'ٹپ: استقامت کمالیت پر غالب ہے — باقاعدہ لاگ وہ پیٹرن ظاہر کرتے ہیں جو اہم ہیں۔';
	@override String get offlineTip1 => 'ٹپ: تصویروں کے لیے قدرتی روشنی اور اوپر سے منظر حصوں کی درستگی میں مدد دیتی ہے۔';
	@override String get offlineTip2 => 'ٹپ: مشروبات، ساسز اور پکانے کا تیل ضرور بتائیں — یہ کیلوریز میں اضافہ کرتے ہیں جو اکثر بھول جاتے ہیں۔';
	@override String get offlineTip3 => 'ٹپ: ایک مختصر حصہ نوٹ (مثلاً 1 پیالہ، بڑا کافی) اندازوں کو بہت بہتر بناتا ہے۔';
	@override String get offlineTip4 => 'ٹپ: کھانے کے بعد لاگ کرنا بھی عادت بناتا ہے؛ کمال ضروری نہیں۔';
	@override String get offlineTip5 => 'ٹپ: جب پکانے کا طریقہ کیلوریز پر بہت اثر ڈالے تو بتائیں (تلّا ہوا بمقابلہ بیک کیا ہوا)۔';
}

// Path: meal.feedback
class _TranslationsMealFeedbackUr implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackUr._(this._root);

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
class _TranslationsFavoritesSortOptionsUr implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get recent => 'حالیہ';
	@override String get calories => 'کیلوریز';
	@override String get alphabetical => 'حروف تہجی';
}

// Path: profile.sections
class _TranslationsProfileSectionsUr implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'پروفائل';
	@override String get basicInformation => 'بنیادی معلومات';
	@override String get goalsAndActivity => 'اہداف اور سرگرمی';
	@override String get calculatedValues => 'محاسبہ شدہ اقدار';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesUr implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'روزانہ ہدف';
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
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'سپورٹ اور قانونی';
	@override String get about => 'ایپ کے بارے میں';
	@override String get dangerZone => 'خطرناک علاقے';
	@override String get developer => 'ڈیولپر';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileUr implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پروفائل ترمیم کریں';
	@override String get subtitle => 'اپنی ذاتی معلومات اپڈیٹ کریں';
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
	@override String get title => 'کھانے کی یاددہانیاں';
	@override String get subtitle => 'بروقت اعلانات کے ساتھ راستے پر رہیں';
}

// Path: settings.theme
class _TranslationsSettingsThemeUr implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تھیم';
	@override String get light => 'ہلکا';
	@override String get dark => 'تاریک';
	@override String get system => 'سسٹم';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackUr implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackUr._(this._root);

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
class _TranslationsSettingsExportMealHistoryUr implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کھانے کی ہسٹری برآمد کریں';
	@override String get subtitle => 'اپنے لاگ کیے گئے کھانوں کا CSV شیئر کریں';
	@override String get shareText => 'آپ کی Calorify کھانے کی ہسٹری ایکسپورٹ';
	@override String failed({required Object error}) => 'کھانے کی ہسٹری برآمد نہیں ہو سکی: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataUr implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تمام ڈیٹا صاف کریں';
	@override String get subtitle => 'آپ کی تمام معلومات کو ناقابلِ واپسی طور پر حذف کریں';
	@override String get confirmationTitle => 'تمام ڈیٹا صاف کر دوں؟';
	@override String get confirmationMessage => 'یہ عمل واپس نہیں کیا جا سکتا۔ آپ کے تمام لاگ کیے گئے کھانے، پسندیدہ اور پروفائل سیٹنگز مستقل طور پر حذف ہو جائیں گے۔';
	@override String get cancel => 'منسوخ کریں';
	@override String get clearEverything => 'سب کچھ صاف کریں';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsUr implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ڈیبگ آپشنز';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectUr implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'اجازتیں دیکھیں اور منظم کریں';
	@override late final _TranslationsSettingsHealthConnectUnavailableUr unavailable = _TranslationsSettingsHealthConnectUnavailableUr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsUr permissions = _TranslationsSettingsHealthConnectPermissionsUr._(_root);
	@override String get managePermissions => 'اجازتیں منظم کریں';
	@override String get openSettings => 'Health Connect سیٹنگز کھولیں';
	@override String get requestPermissions => 'اجازتیں درخواست کریں';
	@override String get permissionRequestCancelledOrFailed => 'اجازت کی درخواست منسوخ یا ناکام ہو گئی۔ براہِ کرم دوبارہ کوشش کریں یا Health Connect سیٹنگز میں دستی طور پر اجازتیں دیں۔';
	@override String get permissionRequestFailed => 'اجازتیں درخواست کرنے میں ناکامی۔ براہِ کرم دوبارہ کوشش کریں یا Health Connect کی سیٹنگز میں دستی طور پر اجازت دیں۔';
	@override String get requestingPermissions => 'درخواست بھیجی جا رہی ہے...';
}

// Path: settings.about
class _TranslationsSettingsAboutUr implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ایپ کے بارے میں';
	@override String get tagline => 'تیز، مفت، اور رازداری کو مقدم رکھنے والی کیلوری آگاہی';
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
	@override String get title => 'ناشتے کا وقت! 🍳';
	@override String get body => 'اپنا ناشتہ لاگ کرنا نہ بھولیں';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchUr implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'دوپہر کے کھانے کا وقت! 🥗';
	@override String get body => 'اپنا دوپہر کا کھانا لاگ کرنے کا وقت ہے';
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
	@override String get title => 'سنیک کا وقت! 🍎';
	@override String get body => 'صحت مند سنیک لینے کا وقت ہے';
}

// Path: notifications.test
class _TranslationsNotificationsTestUr implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ٹیسٹ نوٹیفیکیشن';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapUr implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} تخمینی غذائی معلومات فراہم کرتا ہے۔ درستگی آپ کے داخل کیے گئے ڈیٹا اور کھانے کی اقسام پر منحصر ہے۔ اسے رہنما سمجھیں، حتمی ماخذ کے طور پر نہیں۔ ذاتی غذائی مشورے کے لیے کسی ماہر سے رجوع کریں۔';
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
	@override String get description => 'پیش گوئی شدہ وزن کی تبدیلی ایک نظریاتی اندازہ ہے جو سادہ کیلوری-ان بمقابلہ کیلوری-آؤٹ ماڈل پر مبنی ہے۔ یہ محرک رہنمائی کے لیے ہے، حقیقی وزن کی پیش گوئی کے طور پر نہیں۔';
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
	@override String get description => 'یہ میٹرکس آپ کی جسم کی توانائی کی ضروریات سمجھنے اور غذائی اہداف کی رہنمائی کے لیے ہیں۔';
	@override late final _TranslationsDisclaimerHealthMetricsBmrUr bmr = _TranslationsDisclaimerHealthMetricsBmrUr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeUr tdee = _TranslationsDisclaimerHealthMetricsTdeeUr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalUr dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalUr._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureUr implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کیلوری اخراج کا اندازہ';
	@override String get description => 'جب Health Connect کا ڈیٹا دستیاب نہیں ہوتا تو ہم آج جلائی گئی کیلوریز کا اندازہ آپ کے BMR اور سرگرمی کی سطح (TDEE) کی بنیاد پر نکالتے ہیں، اور دن میں گزرے حصے کے تناسب کے مطابق اس کو ایڈجسٹ کرتے ہیں۔';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedUr howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedUr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUr professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUr._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionUr implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اسمارٹ کھانے کی شناخت';
	@override String get description => 'تصویر لیں اور AI آپ کے کھانے کی شناخت کرے گا۔';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisUr implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI تجزیہ';
	@override String get description => 'اپنی تفصیل سے فوری غذائی معلومات حاصل کریں۔';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationUr implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect کے ساتھ انضمام';
	@override String get description => 'بہتر بصیرت کے لیے Health Connect سے مربوط کریں۔';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesUr implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'کم وزن';
	@override String get healthyWeight => 'صحتمند وزن';
	@override String get overweight => 'زیادہ وزن';
	@override String get obese => 'موٹاپا';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesUr implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ہم آپ کی مدد کر سکتے ہیں ایک متوازن وزن تک پہنچنے کے لیے غذائیت سے بھرپور کھانوں کے ساتھ ایک صحت مند منصوبہ بنانے میں۔';
	@override String get healthy => 'زبردست! آپ صحتمند رینج میں ہیں۔ ہم آپ کی توانائی اور چست طرزِ زندگی برقرار رکھنے میں مدد کریں گے۔';
	@override String overweight({required Object appLabel}) => '${appLabel} آپ کے سفر کو آسان بنائے گا—AI سے چلنے والی ٹریکنگ کے ذریعے آپ آرام سے اپنے ہدف تک پہنچ سکیں گے۔';
	@override String get obese => 'ہم آپ کے ساتھ ہیں ذاتی مشورے اور پائیدار حکمتِ عملیاں فراہم کر کے تاکہ آپ اپنے صحت کے مقاصد حاصل کریں۔';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingUr implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'خودکار کیلوری ٹریکنگ';
	@override String get description => 'اپنی فٹنس ایپس سے جلائی گئی کیلوریز کو ٹریک کریں';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsUr implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پیش رفت کی بصیرت';
	@override String get description => 'اپنی صحت کے رجحانات کے مفصل تجزیے حاصل کریں';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationUr implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'بلا رکاوٹ انضمام';
	@override String get description => 'اپنی پسندیدہ صحت کی ایپس سے ڈیٹا ہم وقت کریں';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessUr implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessUr._(this._root);

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
class _TranslationsOnboardingReinforcementHealthProfileUr implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileUr._(this._root);

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
class _TranslationsOnboardingReinforcementGoalLifestyleUr implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleUr._(this._root);

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
class _TranslationsEditProfileWeightGoalsLoseWeightUr implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'وزن کم کریں';
	@override String get description => 'وزن کم کرنے کے لیے کیلوری خسارہ بنائیں';
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
	@override String get description => 'وزن بڑھانے کے لیے کیلوری سرپلس بنائیں';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryUr implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'کم متحرک';
	@override String get description => 'کم یا بالکل ورزش نہیں';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveUr implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'ہلکا فعال';
	@override String get description => 'ہلکی ورزش 1-3 دن/ہفتہ';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveUr implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'درمیانی طور پر فعال';
	@override String get description => 'درمیانی ورزش 3-5 دن/ہفتہ';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveUr implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'بہت فعال';
	@override String get description => 'سخت ورزش 6-7 دن/ہفتہ';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveUr implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get name => 'انتہائی فعال';
	@override String get description => 'بہت سخت ورزش، جسمانی ملازمت';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableUr implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect دستیاب نہیں';
	@override String get description => 'اس ڈیوائس پر Health Connect دستیاب نہیں ہے۔ براہِ کرم Play Store سے Health Connect انسٹال کریں (Android 9+) یا Android 14+ پر اپ ڈیٹ کریں۔';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsUr implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اجازتیں';
	@override String get description => 'Health Connect انضمام کے لیے درج ذیل اجازتیں درکار ہیں:';
	@override String get granted => 'اجازت دی گئی';
	@override String get notGranted => 'اجازت نہیں دی گئی';
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
	@override String content({required Object appLabel}) => '${appLabel} ایک سادہ مایوسی سے پیدا ہوا تھا: زیادہ تر کیلوری ٹریکنگ ایپس یا تو ضرورت سے زیادہ پیچیدہ ہیں، مسلسل دستی اندراج کا تقاضا کرتی ہیں، زیادہ سبسکرپشن فیس لیتی ہیں، یا رازداری کا خیال نہیں رکھتیں۔\n\nایک سولو ڈویلپر کی حیثیت سے، میں نے کچھ ایسا بنانا چاہا جو سادہ اور منصفانہ ہو — ایک ایسی ایپ جو AI استعمال کر کے محنت کم کرے، تیز اور مفت رہے، اور آپ کے صحت کے ڈیٹا کا احترام کرے۔\n\n${appLabel} وہ ایپ ہے جس کا میں چاہتا تھا کہ موجود ہو: کوئی اکاؤنٹس نہیں، کوئی ٹریکنگ نہیں، کوئی اشتہارات نہیں — صرف واضح، عملی بصیرت اور آپ کے صحت کے مقاصد۔';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyUr implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کی رازداری اہم ہے';
	@override String get description => 'رازداری کوئی ثانوی خیال نہیں — یہ ڈیزائن کا اصول ہے۔ عملی طور پر اس کا مطلب یہ ہے:';
	@override String get noAccounts => 'اکاؤنٹس درکار نہیں\nفوراً ایپ استعمال کریں۔ کوئی سائن اپ، کوئی شناختی ریکارڈ نہیں۔';
	@override String noTracking({required Object appLabel}) => 'کوئی رویّہ ٹریکنگ نہیں\n${appLabel} آپ کی سرگرمی کی نگرانی نہیں کرتا، استعمال کے پروفائلز نہیں بناتا، اور آپ کو ایپس یا ویب سائٹس کے درمیان ٹریک نہیں کرتا۔';
	@override String noAds({required Object appLabel}) => 'اشتہارات سے پاک ڈیزائن\n${appLabel} بغیر اشتہارات یا ڈیٹا پر مبنی منافع کے کام کرنے کے لیے بنایا گیا ہے۔';
	@override String get noDataSelling => 'کوئی ڈیٹا فروخت نہیں\nآپ کا صحت کا ڈیٹا کسی تیسرے فریق کو فروخت یا شیئر نہیں کیا جاتا۔';
	@override String get localStorage => 'لوکل-فرسٹ اسٹوریج\nآپ کا ڈیٹا آپ کے ڈیوائس پر ہی رہتا ہے۔';
	@override String get privacyPolicy => 'پرائیویسی پالیسی';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperUr implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ایک سولو ڈویلپر نے بنایا';
	@override String description({required Object appLabel}) => '${appLabel} ایک واحد سولو ڈویلپر کے ذریعے بنایا اور برقرار رکھا جاتا ہے جو پرسکون، رازداری کا احترام کرنے والا صحت سافٹ ویئر تیار کرنے پر مرکوز ہے۔\n\nفیڈبیک ذاتی طور پر پڑھا جاتا ہے اور ایپ کی سمت طے کرنے میں مدد دیتا ہے۔';
	@override String get website => 'ویب سائٹ';
	@override String get email => 'ای میل';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackUr implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} پسند آ رہا ہے؟';
	@override String description({required Object appLabel}) => 'آپ کی رائے ${appLabel} کو سب کے لیے بہتر بنانے میں مدد کرتی ہے۔';
	@override String get rateApp => 'Play Store پر ریٹ کریں';
	@override String get sendFeedback => 'رائے بھیجیں';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeUr implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حصے کا سائز';
	@override String get description => 'اندازوں کی درستگی کا انحصار بڑے پیمانے پر آپ کے حصے کے صحیح اندازے پر ہوتا ہے۔';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsUr implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تیاری کے طریقے';
	@override String description({required Object appLabel}) => 'پکانے کے طریقے غذائی مواد کو نمایاں طور پر بدل سکتے ہیں۔ ${appLabel} کے اندازے ہمیشہ ان تبدیلیوں کو مدِ نظر نہیں رکھ سکتے۔';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsUr implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اجزاء';
	@override String get description => 'پیچیدہ پکوان جن میں بہت سے پوشیدہ اجزاء ہوں، کم درست اندازوں کا باعث بن سکتے ہیں۔';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsUr implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ڈیٹا بیس کی حدود';
	@override String description({required Object appLabel}) => '${appLabel} کا فوڈ ڈیٹا بیس وسیع ہے مگر ہو سکتا ہے ہر خوراک یا ویرینٹ شامل نہ ہو۔';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyUr implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کیلوری درستگی';
	@override String get description => 'یہ اندازہ صرف اسی حد تک درست ہے جتنا آپ نے اپنی کیلوری انٹیک اور اخراج کو درست طور پر ٹریک کیا ہو۔ غیر درست لاگنگ غلط پیش گوئی کا باعث بنے گی۔';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsUr implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حیاتیاتی عوامل';
	@override String description({required Object appLabel}) => 'حقیقی وزن میں تبدیلی میٹابولزم، ہارمونز، نیند، تناؤ، ہائیڈریشن، اور دیگر ذاتی عوامل سے متاثر ہوتی ہے جن کا ${appLabel} اندازہ نہیں لگا سکتا۔';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightUr implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پانی کا وزن اور اتار چڑھاؤ';
	@override String get description => 'روزانہ کا وزن پانی برقرار رکھنے، ہضم اور وقت کی وجہ سے کافی بدل سکتا ہے۔ یہ اندازہ ان روزانہ تبدیلیوں کو مدِ نظر نہیں رکھتا۔';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceUr implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پیشہ ورانہ رہنمائی';
	@override String get description => 'اس اندازے کو طبی فیصلوں کے لیے استعمال نہ کریں۔ ذاتی وزن انتظام کے مشورے کے لیے ہمیشہ کسی ہیلتھ پروفیشنل یا رجسٹرڈ ڈائیٹیشین سے رجوع کریں۔';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrUr implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'بیک-میٹابولک ریٹ (BMR) وہ کیلوریز ہیں جو آپ کا جسم آرام کی حالت میں بنیادی افعال برقرار رکھنے کے لیے جلاتا ہے، جیسے سانس لینا اور گردش۔ BMR آپ کی عمر، صنف، قد، اور وزن پر منحصر ہوتا ہے۔ زیادہ BMR کا مطلب ہے کہ آپ کا جسم آرام کے وقت زیادہ کیلوریز جلاتا ہے، اکثر زیادہ مسلز، چھوٹی عمر، یا مرد ہونے کی وجہ سے۔ کم BMR عام طور پر کم مسلز، بڑی عمر، یا عورت ہونے کی طرف اشارہ کرتا ہے۔';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeUr implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'کل روزانہ توانائی اخراج (TDEE) آپ کی مجموعی روزانہ جلائی گئی کیلوریز ہیں، جس میں آپ کا BMR اور جسمانی سرگرمی سے جلائی گئی کیلوریز شامل ہیں۔ TDEE آپ کے BMR اور سرگرمی کی سطح پر منحصر ہوتا ہے۔ زیادہ TDEE کا مطلب ہے آپ مجموعی طور پر زیادہ کیلوریز جلاتے ہیں، عام طور پر زیادہ فعال ہونے یا زیادہ BMR کی وجہ سے۔ کم TDEE کم روزمرہ سرگرمی یا کم BMR کی نشاندہی کرتا ہے۔';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalUr implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'روزانہ ہدف';
	@override String get description => 'روزانہ ہدف آپ کا تجویز کردہ روزانہ کیلوری انٹیک ہے جو آپ کے TDEE اور وزن کے ہدف کی بنیاد پر ہے۔ وزن کم کرنے کے لیے آپ اپنے TDEE سے کم کیلوریز کھاتے ہیں۔ وزن برقرار رکھنے کے لیے آپ اپنے TDEE کے برابر کھاتے ہیں۔ وزن بڑھانے کے لیے آپ اپنے TDEE سے زیادہ کیلوریز کھاتے ہیں۔ یہ آپ کو صحت مند رفتار سے مطلوبہ وزن تبدیلی حاصل کرنے میں مدد دیتا ہے۔';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedUr implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'یہ اندازہ کیسے نکالا جاتا ہے';
	@override String get description => 'ہم آپ کا TDEE (آپ کے پروفائل کی بنیاد پر) حساب کرتے ہیں اور دن کے گزرے ہوئے حصے (گھنٹے + منٹ) / 24 سے ضرب دے کر آج تک جلائی گئی کیلوریز کا اندازہ لگاتے ہیں۔';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUr implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'پیشہ ورانہ رہنمائی';
	@override String get description => 'اس اندازے کو طبی فیصلوں کے لیے استعمال نہ کریں۔ ذاتی وزن انتظام کے مشورے کے لیے ہمیشہ کسی ہیلتھ پروفیشنل یا رجسٹرڈ ڈائیٹیشن سے رجوع کریں۔';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedUr implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'کل جلائی گئی کیلوریز پڑھیں';
	@override String get description => 'ایپ کو Health Connect سے آپ کی کل جلائی گئی کیلوریز پڑھنے کی اجازت دیتا ہے۔';
	@override String get usage => 'یہ اجازت ایپ میں آپ کی روزانہ جلائی گئی کیلوریز دکھانے کے لیے استعمال ہوتی ہے، جو آپ کو دن بھر کی کل توانائی خرچ سمجھنے میں مدد دیتی ہے۔';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadUr implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadUr._(this._root);

	final TranslationsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'غذائی ڈیٹا پڑھیں';
	@override String get description => 'ایپ کو Health Connect سے غذائی ڈیٹا پڑھنے کی اجازت دیتا ہے۔';
	@override String get usage => 'یہ اجازت ایپ کو دوسرے مربوط ایپس سے لاگ کیے گئے غذائی معلومات پڑھنے دیتی ہے، جو آپ کے غذائیت کا جامع منظر فراہم کرتی ہے۔';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteUr implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteUr._(this._root);

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
			'onboarding.healthConnect.automaticTracking.title' => 'خودکار کیلوری ٹریکنگ',
			'onboarding.healthConnect.automaticTracking.description' => 'اپنی فٹنس ایپس سے جلائی گئی کیلوریز کو ٹریک کریں',
			'onboarding.healthConnect.progressInsights.title' => 'پیش رفت کی بصیرت',
			'onboarding.healthConnect.progressInsights.description' => 'اپنی صحت کے رجحانات کے مفصل تجزیے حاصل کریں',
			'onboarding.healthConnect.seamlessIntegration.title' => 'بلا رکاوٹ انضمام',
			'onboarding.healthConnect.seamlessIntegration.description' => 'اپنی پسندیدہ صحت کی ایپس سے ڈیٹا ہم وقت کریں',
			'onboarding.healthConnect.connected' => 'Health Connect مربوط ہے',
			'onboarding.healthConnect.notConnected' => 'Health Connect مربوط نہیں ہے',
			'onboarding.healthConnect.setup' => 'Health Connect سیٹ اپ کریں',
			'onboarding.healthConnect.skipForNow' => 'اسے ابھی چھوڑ دیں',
			'onboarding.healthConnect.statusConnected' => 'Health Connect مربوط ہو چکا ہے۔',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect کامیابی سے مربوط ہو گیا!',
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
			'home.dailyGoal.kcal' => 'kcal',
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
			'home.connectHealth.install' => 'انسٹال کریں',
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
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'ٹپ: استقامت کمالیت پر غالب ہے — باقاعدہ لاگ وہ پیٹرن ظاہر کرتے ہیں جو اہم ہیں۔',
			'meal.analysis.offlineTip1' => 'ٹپ: تصویروں کے لیے قدرتی روشنی اور اوپر سے منظر حصوں کی درستگی میں مدد دیتی ہے۔',
			'meal.analysis.offlineTip2' => 'ٹپ: مشروبات، ساسز اور پکانے کا تیل ضرور بتائیں — یہ کیلوریز میں اضافہ کرتے ہیں جو اکثر بھول جاتے ہیں۔',
			'meal.analysis.offlineTip3' => 'ٹپ: ایک مختصر حصہ نوٹ (مثلاً 1 پیالہ، بڑا کافی) اندازوں کو بہت بہتر بناتا ہے۔',
			'meal.analysis.offlineTip4' => 'ٹپ: کھانے کے بعد لاگ کرنا بھی عادت بناتا ہے؛ کمال ضروری نہیں۔',
			'meal.analysis.offlineTip5' => 'ٹپ: جب پکانے کا طریقہ کیلوریز پر بہت اثر ڈالے تو بتائیں (تلّا ہوا بمقابلہ بیک کیا ہوا)۔',
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
			'meal.nameRequired' => 'محفوظ کرنے سے پہلے کھانے کا نام درج کریں۔',
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
			'editProfile.unitLbs' => 'lbs',
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
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
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
			'settings.clearAllData.confirmationTitle' => 'تمام ڈیٹا صاف کر دوں؟',
			'settings.clearAllData.confirmationMessage' => 'یہ عمل واپس نہیں کیا جا سکتا۔ آپ کے تمام لاگ کیے گئے کھانے، پسندیدہ اور پروفائل سیٹنگز مستقل طور پر حذف ہو جائیں گے۔',
			'settings.clearAllData.cancel' => 'منسوخ کریں',
			'settings.clearAllData.clearEverything' => 'سب کچھ صاف کریں',
			'settings.debugOptions.title' => 'ڈیبگ آپشنز',
			'settings.developerModeEnabled' => 'ڈیولپر موڈ فعال ہو گیا!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'اجازتیں دیکھیں اور منظم کریں',
			'settings.healthConnect.unavailable.title' => 'Health Connect دستیاب نہیں',
			'settings.healthConnect.unavailable.description' => 'اس ڈیوائس پر Health Connect دستیاب نہیں ہے۔ براہِ کرم Play Store سے Health Connect انسٹال کریں (Android 9+) یا Android 14+ پر اپ ڈیٹ کریں۔',
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
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
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
