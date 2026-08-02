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
class TranslationsAr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsAr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsAr _root = this; // ignore: unused_field

	@override 
	TranslationsAr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsAr(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'العربية';
	@override String get flag => '🇸🇦';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsAr errors = _TranslationsErrorsAr._(_root);
	@override late final _TranslationsOnboardingAr onboarding = _TranslationsOnboardingAr._(_root);
	@override late final _TranslationsTabsAr tabs = _TranslationsTabsAr._(_root);
	@override late final _TranslationsHomeAr home = _TranslationsHomeAr._(_root);
	@override late final _TranslationsHistoryAr history = _TranslationsHistoryAr._(_root);
	@override late final _TranslationsMealAr meal = _TranslationsMealAr._(_root);
	@override late final _TranslationsFavoritesAr favorites = _TranslationsFavoritesAr._(_root);
	@override late final _TranslationsProfileAr profile = _TranslationsProfileAr._(_root);
	@override late final _TranslationsHealthScoreAr healthScore = _TranslationsHealthScoreAr._(_root);
	@override late final _TranslationsEditProfileAr editProfile = _TranslationsEditProfileAr._(_root);
	@override late final _TranslationsSettingsAr settings = _TranslationsSettingsAr._(_root);
	@override late final _TranslationsRemindersAr reminders = _TranslationsRemindersAr._(_root);
	@override late final _TranslationsNotificationsAr notifications = _TranslationsNotificationsAr._(_root);
	@override late final _TranslationsLoginAr login = _TranslationsLoginAr._(_root);
	@override late final _TranslationsDisclaimerAr disclaimer = _TranslationsDisclaimerAr._(_root);
	@override late final _TranslationsCommonAr common = _TranslationsCommonAr._(_root);
	@override late final _TranslationsFeedbackRatingAr feedbackRating = _TranslationsFeedbackRatingAr._(_root);
	@override late final _TranslationsHealthAr health = _TranslationsHealthAr._(_root);
}

// Path: errors
class _TranslationsErrorsAr implements TranslationsErrorsEn {
	_TranslationsErrorsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'لقد أرسلت طلبات كثيرة جدًا. يرجى الانتظار قليلاً والمحاولة مرة أخرى.';
	@override String get networkError => 'خطأ في الشبكة. يرجى التحقق من اتصال الإنترنت لديك.';
	@override String get unknownError => 'حدث خطأ ما. حاول مرة أخرى لاحقًا.';
	@override String get loadingProfileData => 'خطأ في تحميل بيانات الملف الشخصي';
	@override String get somethingWentWrong => 'حدث خطأ ما.';
	@override String get retry => 'أعد المحاولة';
}

// Path: onboarding
class _TranslationsOnboardingAr implements TranslationsOnboardingEn {
	_TranslationsOnboardingAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'مرحبًا بك في ${appLabel}';
	@override String get subtitle => 'رفيقك الشخصي للتغذية مدعوم بـ AI';
	@override String get getStarted => 'ابدأ';
	@override late final _TranslationsOnboardingFeaturesAr features = _TranslationsOnboardingFeaturesAr._(_root);
	@override late final _TranslationsOnboardingGenderAr gender = _TranslationsOnboardingGenderAr._(_root);
	@override late final _TranslationsOnboardingHeightAr height = _TranslationsOnboardingHeightAr._(_root);
	@override late final _TranslationsOnboardingWeightAr weight = _TranslationsOnboardingWeightAr._(_root);
	@override late final _TranslationsOnboardingAgeAr age = _TranslationsOnboardingAgeAr._(_root);
	@override late final _TranslationsOnboardingBmiScaleAr bmiScale = _TranslationsOnboardingBmiScaleAr._(_root);
	@override late final _TranslationsOnboardingWeightGoalAr weightGoal = _TranslationsOnboardingWeightGoalAr._(_root);
	@override late final _TranslationsOnboardingActivityLevelAr activityLevel = _TranslationsOnboardingActivityLevelAr._(_root);
	@override late final _TranslationsOnboardingHealthConnectAr healthConnect = _TranslationsOnboardingHealthConnectAr._(_root);
	@override late final _TranslationsOnboardingReinforcementAr reinforcement = _TranslationsOnboardingReinforcementAr._(_root);
}

// Path: tabs
class _TranslationsTabsAr implements TranslationsTabsEn {
	_TranslationsTabsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'لوحة التحكم';
	@override String get history => 'السجل';
}

// Path: home
class _TranslationsHomeAr implements TranslationsHomeEn {
	_TranslationsHomeAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryAr aiSummary = _TranslationsHomeAiSummaryAr._(_root);
	@override late final _TranslationsHomeDailyGoalAr dailyGoal = _TranslationsHomeDailyGoalAr._(_root);
	@override late final _TranslationsHomeDailySummaryAr dailySummary = _TranslationsHomeDailySummaryAr._(_root);
	@override late final _TranslationsHomeIntakeProgressAr intakeProgress = _TranslationsHomeIntakeProgressAr._(_root);
	@override late final _TranslationsHomeIntakeHistoryAr intakeHistory = _TranslationsHomeIntakeHistoryAr._(_root);
	@override late final _TranslationsHomeMealLogAr mealLog = _TranslationsHomeMealLogAr._(_root);
	@override late final _TranslationsHomeMealDescriptionAr mealDescription = _TranslationsHomeMealDescriptionAr._(_root);
	@override late final _TranslationsHomeFavoriteMealsAr favoriteMeals = _TranslationsHomeFavoriteMealsAr._(_root);
	@override late final _TranslationsHomeMealSnapAr mealSnap = _TranslationsHomeMealSnapAr._(_root);
	@override late final _TranslationsHomeConnectHealthAr connectHealth = _TranslationsHomeConnectHealthAr._(_root);
}

// Path: history
class _TranslationsHistoryAr implements TranslationsHistoryEn {
	_TranslationsHistoryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'لا توجد وجبات مسجلة';
	@override String get emptyMessage => 'التقط صورة لوجبتك الأخيرة لتسجلها هنا.';
	@override String get today => 'اليوم';
	@override String get yesterday => 'أمس';
}

// Path: meal
class _TranslationsMealAr implements TranslationsMealEn {
	_TranslationsMealAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'أوه لا!';
	@override String get delete => 'حذف';
	@override String get editMeal => 'تعديل الوجبة';
	@override String get addMeal => 'إضافة وجبة';
	@override String get saveMeal => 'حفظ الوجبة';
	@override String get save => 'حفظ';
	@override String get mealName => 'اسم الوجبة';
	@override String get mealNameHint => 'مثال: بيض مخفوق مع توست';
	@override String get mealQuantity => 'كمية الوجبة';
	@override String get mealQuantityHint => 'مثال: 1 وعاء، 2 شريحة';
	@override String get timeOfMeal => 'وقت الوجبة';
	@override String get timeOfMealHint => 'اختر الوقت الذي تناولت فيه الوجبة';
	@override String get mealType => 'نوع الوجبة';
	@override late final _TranslationsMealNutritionAr nutrition = _TranslationsMealNutritionAr._(_root);
	@override late final _TranslationsMealDeleteConfirmationAr deleteConfirmation = _TranslationsMealDeleteConfirmationAr._(_root);
	@override String get addedToLog => 'تمت إضافة الوجبة إلى سجلك!';
	@override String couldNotAdd({required Object error}) => 'تعذر إضافة الوجبة: ${error}';
	@override String get savedSuccessfully => 'تمت إضافة الوجبة بنجاح!';
	@override String get updatedSuccessfully => 'تم تحديث الوجبة بنجاح!';
	@override String errorSaving({required Object error}) => 'خطأ عند حفظ الوجبة: ${error}';
	@override String get removedFromFavorites => 'تم الإزالة من المفضلات!';
	@override String get savedAsFavorite => 'تم حفظ الوجبة كمفضلة!';
	@override String get unfavorite => 'إزالة من المفضلات';
	@override String couldNotUpdateFavorite({required Object error}) => 'تعذر تحديث المفضلة: ${error}';
	@override String get feedbackThanks => 'شكرًا على الملاحظات!';
	@override String get reanalysisUpdated => 'تم تحديث تحليل الوجبة بناءً على ملاحظاتك.';
	@override String failedToProcess({required Object error}) => 'فشل المعالجة: ${error}';
	@override String failedToProcessImage({required Object error}) => 'فشل معالجة الصورة: ${error}';
	@override String errorCompressingImage({required Object error}) => 'خطأ في ضغط الصورة: ${error}';
	@override String get failedToSave => 'فشل حفظ البيانات. حاول مرة أخرى.';
	@override String get skip => 'تخطٍّ';
	@override late final _TranslationsMealQuestionFlowAr questionFlow = _TranslationsMealQuestionFlowAr._(_root);
	@override late final _TranslationsMealAnalysisAr analysis = _TranslationsMealAnalysisAr._(_root);
	@override late final _TranslationsMealFeedbackAr feedback = _TranslationsMealFeedbackAr._(_root);
	@override String get nameRequired => 'يرجى إدخال اسم الوجبة قبل الحفظ.';
}

// Path: favorites
class _TranslationsFavoritesAr implements TranslationsFavoritesEn {
	_TranslationsFavoritesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'المفضلات';
	@override String get empty => 'لا توجد وجبات مفضلة بعد.';
	@override String get searchPlaceholder => 'ابحث في الوجبات المفضلة';
	@override String get searchEmptyTitle => 'لا توجد مفضلات مطابقة لبحثك';
	@override String get searchEmptySubtitle => 'جرّب اسم وجبة مختلف، كمية، أو نوع الوجبة.';
	@override String get sortLabel => 'ترتيب المفضلات';
	@override String get undo => 'تراجع';
	@override String removed({required Object name}) => 'أُزيل ${name} من المفضلات';
	@override late final _TranslationsFavoritesSortOptionsAr sortOptions = _TranslationsFavoritesSortOptionsAr._(_root);
}

// Path: profile
class _TranslationsProfileAr implements TranslationsProfileEn {
	_TranslationsProfileAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الملف الشخصي';
	@override String get noProfileData => 'لم يتم العثور على بيانات الملف الشخصي';
	@override String get yourProfile => 'ملفك الشخصي';
	@override String get viewAndManage => 'عرض وإدارة معلومات صحتك';
	@override late final _TranslationsProfileSectionsAr sections = _TranslationsProfileSectionsAr._(_root);
	@override String get gender => 'الجنس';
	@override String get height => 'الطول';
	@override String get weight => 'الوزن';
	@override String get age => 'العمر';
	@override String get weightGoal => 'هدف الوزن';
	@override String get targetWeight => 'الوزن المستهدف';
	@override String get activityLevel => 'مستوى النشاط';
	@override String get healthMetrics => 'مقاييس صحية';
	@override String get notSet => 'غير محدد';
	@override String get years => 'سنوات';
	@override String get updatedSuccessfully => 'تم تحديث الملف الشخصي بنجاح!';
	@override late final _TranslationsProfileCalculatedValuesAr calculatedValues = _TranslationsProfileCalculatedValuesAr._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreAr implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مؤشر الصحة';
	@override String get whyThisScore => 'لماذا هذا المؤشر؟';
	@override String get note => 'هذا المؤشر تقديري بالـ AI استنادًا إلى المكونات المكتشفة والكثافة الغذائية. راجع مختصًا للحصول على نصائح غذائية شخصية.';
	@override String get unhealthy => 'غير صحي';
	@override String get healthy => 'صحي';
	@override String get neutral => 'محايد';
}

// Path: editProfile
class _TranslationsEditProfileAr implements TranslationsEditProfileEn {
	_TranslationsEditProfileAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تعديل الملف الشخصي';
	@override late final _TranslationsEditProfileSectionsAr sections = _TranslationsEditProfileSectionsAr._(_root);
	@override String get gender => 'الجنس';
	@override String get dateOfBirth => 'تاريخ الميلاد';
	@override String get height => 'الطول';
	@override String get weight => 'الوزن';
	@override String get weightGoal => 'هدف الوزن';
	@override String get activityLevel => 'مستوى النشاط';
	@override String get metric => 'متري';
	@override String get imperial => 'إمبراطوري';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'متري (cm)';
	@override String get imperialFtIn => 'إمبراطوري (ft/in)';
	@override String get metricKg => 'متري (kg)';
	@override String get imperialLbs => 'إمبراطوري (lbs)';
	@override late final _TranslationsEditProfileGendersAr genders = _TranslationsEditProfileGendersAr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsAr weightGoals = _TranslationsEditProfileWeightGoalsAr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsAr activityLevels = _TranslationsEditProfileActivityLevelsAr._(_root);
}

// Path: settings
class _TranslationsSettingsAr implements TranslationsSettingsEn {
	_TranslationsSettingsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الإعدادات';
	@override late final _TranslationsSettingsSectionsAr sections = _TranslationsSettingsSectionsAr._(_root);
	@override late final _TranslationsSettingsEditProfileAr editProfile = _TranslationsSettingsEditProfileAr._(_root);
	@override late final _TranslationsSettingsLanguageAr language = _TranslationsSettingsLanguageAr._(_root);
	@override late final _TranslationsSettingsHeightUnitAr heightUnit = _TranslationsSettingsHeightUnitAr._(_root);
	@override late final _TranslationsSettingsWeightUnitAr weightUnit = _TranslationsSettingsWeightUnitAr._(_root);
	@override late final _TranslationsSettingsMealRemindersAr mealReminders = _TranslationsSettingsMealRemindersAr._(_root);
	@override late final _TranslationsSettingsThemeAr theme = _TranslationsSettingsThemeAr._(_root);
	@override late final _TranslationsSettingsSendFeedbackAr sendFeedback = _TranslationsSettingsSendFeedbackAr._(_root);
	@override late final _TranslationsSettingsExportMealHistoryAr exportMealHistory = _TranslationsSettingsExportMealHistoryAr._(_root);
	@override late final _TranslationsSettingsClearAllDataAr clearAllData = _TranslationsSettingsClearAllDataAr._(_root);
	@override late final _TranslationsSettingsDebugOptionsAr debugOptions = _TranslationsSettingsDebugOptionsAr._(_root);
	@override String get developerModeEnabled => 'تم تفعيل وضع المطور!';
	@override late final _TranslationsSettingsHealthConnectAr healthConnect = _TranslationsSettingsHealthConnectAr._(_root);
	@override late final _TranslationsSettingsAboutAr about = _TranslationsSettingsAboutAr._(_root);
	@override late final _TranslationsSettingsAppInfoAr appInfo = _TranslationsSettingsAppInfoAr._(_root);
}

// Path: reminders
class _TranslationsRemindersAr implements TranslationsRemindersEn {
	_TranslationsRemindersAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ابقَ على المسار بالتذكيرات';
	@override String get description => 'تلقي تذكيرات لطيفة لتسجيل وجباتك والبقاء متسقًا مع أهدافك الغذائية';
	@override String get notificationsEnabled => 'تم تفعيل الإشعارات';
	@override String get notificationsDisabled => 'تم تعطيل الإشعارات';
	@override String get enabledSubtitle => 'ستتلقى تذكيرات بالوجبات';
	@override String get disabledSubtitle => 'فعّل الإشعارات للحصول على تذكيرات بالوجبات';
	@override String get mealReminders => 'تذكيرات الوجبات';
	@override String get breakfast => 'الإفطار';
	@override String get lunch => 'الغداء';
	@override String get dinner => 'العشاء';
	@override String get snack => 'وجبة خفيفة';
	@override String get unknown => 'غير معروف';
	@override String get change => 'تغيير';
	@override String get enableNotifications => 'تفعيل الإشعارات';
	@override String get skipForNow => 'تخطٍّ الآن';
	@override String get saveChanges => 'حفظ التغييرات';
	@override String get enabledSuccessfully => 'تم تفعيل الإشعارات بنجاح!';
	@override String get permissionDenied => 'تم رفض إذن الإشعارات';
	@override String errorEnabling({required Object error}) => 'خطأ عند تفعيل الإشعارات: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'خطأ في إكمال الإعداد: ${error}';
}

// Path: notifications
class _TranslationsNotificationsAr implements TranslationsNotificationsEn {
	_TranslationsNotificationsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastAr breakfast = _TranslationsNotificationsBreakfastAr._(_root);
	@override late final _TranslationsNotificationsLunchAr lunch = _TranslationsNotificationsLunchAr._(_root);
	@override late final _TranslationsNotificationsDinnerAr dinner = _TranslationsNotificationsDinnerAr._(_root);
	@override late final _TranslationsNotificationsSnackAr snack = _TranslationsNotificationsSnackAr._(_root);
	@override late final _TranslationsNotificationsTestAr test = _TranslationsNotificationsTestAr._(_root);
}

// Path: login
class _TranslationsLoginAr implements TranslationsLoginEn {
	_TranslationsLoginAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تسجيل الدخول';
	@override String get signInWithGoogle => 'تسجيل الدخول عبر Google';
	@override String get signInFailed => 'فشل تسجيل الدخول عبر Google أو تم الإلغاء.';
}

// Path: disclaimer
class _TranslationsDisclaimerAr implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'يرجى الملاحظة';
	@override late final _TranslationsDisclaimerSnapAr snap = _TranslationsDisclaimerSnapAr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateAr weightEstimate = _TranslationsDisclaimerWeightEstimateAr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsAr healthMetrics = _TranslationsDisclaimerHealthMetricsAr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureAr calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureAr._(_root);
}

// Path: common
class _TranslationsCommonAr implements TranslationsCommonEn {
	_TranslationsCommonAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get close => 'إغلاق';
	@override String get kContinue => 'استمر';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingAr implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'هل تستمتع بـ ${appLabel}؟';
	@override String get yes => 'نعم، أستمتع به';
	@override String get no => 'ليس حقًا';
	@override String get rateStepHeading => 'قيّم على Play Store';
	@override String get emailStepHeading => 'أرسل ملاحظات عبر البريد الإلكتروني';
	@override String soloDevMessage({required Object appLabel}) => 'تقييم سريع يساعد الآخرين في العثور على ${appLabel} ويُبقي التطوير مستمرًا. هل تأخذ لحظة لتقييمه؟';
	@override String get shareFeedbackViaEmail => 'ملاحظاتك تشكّل القادم — نقرأ كل رسالة. هل تود مشاركة أفكارك عبر البريد الإلكتروني؟';
	@override String get rateCta => 'قيّم على Play Store';
	@override String get maybeLater => 'ربما لاحقًا';
	@override String get sendFeedback => 'أرسل ملاحظات';
	@override String get noThanks => 'لا شكرًا';
	@override String get aboutUsDescription => 'مصنوع بعناية من فريق صغير. نركز على الخصوصية والبساطة ومساعدتك على بناء عادات غذائية أفضل.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'هل تود معرفة من وراء ${appLabel}؟ اطلع على ';
	@override String get aboutUsLinkLabel => 'من نحن';
	@override String get thankYouMessage => 'شكرًا! سنطلب منك مرة أخرى في وقت لاحق.';
}

// Path: health
class _TranslationsHealthAr implements TranslationsHealthEn {
	_TranslationsHealthAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'تعذّر المزامنة مع Health Connect';
	@override String get mealSynced => 'تمت مزامنة الوجبة مع Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesAr implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionAr foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionAr._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisAr aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisAr._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationAr healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationAr._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderAr implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما جنسك؟';
	@override String get description => 'المعلومات عن الجنس تساعدنا في حساب معدل الأيض الأساسي (BMR) بدقة.';
	@override String get next => 'التالي';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightAr implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما طولك؟';
	@override String get description => 'الطول يساعدنا في حساب مؤشر كتلة الجسم (BMI) واحتياجات الطاقة بدقة.';
	@override String get metric => 'متر/سنتيمتر';
	@override String get imperial => 'بوصات/قدم';
	@override String get next => 'التالي';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightAr implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'كم وزنك الحالي؟';
	@override String get currentDescription => 'وزنك الحالي ضروري لتخصيص أهدافك اليومية.';
	@override String get targetTitle => 'ما وزنك المستهدف؟';
	@override String get targetDescription => 'تحديد وزن الهدف يساعدنا في وضع خطة طويلة الأمد.';
	@override String get metric => 'كيلوغرام';
	@override String get imperial => 'رطل';
	@override String get next => 'التالي';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeAr implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'متى تاريخ ميلادك؟';
	@override String get description => 'العمر يساعدنا في حساب احتياجاتك من السعرات بدقة.';
	@override String get next => 'التالي';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleAr implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'نقص';
	@override String get healthy => 'صحي';
	@override String get overweight => 'زيادة';
	@override String get obese => 'سمنة';
	@override late final _TranslationsOnboardingBmiScaleCategoriesAr categories = _TranslationsOnboardingBmiScaleCategoriesAr._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesAr messages = _TranslationsOnboardingBmiScaleMessagesAr._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalAr implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما هدفك؟';
	@override String get description => 'اختر الهدف الذي يصف ما تود تحقيقه';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelAr implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما مدى نشاطك؟';
	@override String get description => 'هذا يساعدنا في حساب احتياجات السعرات اليومية بدقة أكبر';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectAr implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الاتصال بـ Health Connect';
	@override String get description => 'مزامنة بيانات صحتك للحصول على رؤى أفضل وتتبع تلقائي للسعرات';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingAr automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingAr._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsAr progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsAr._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationAr seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationAr._(_root);
	@override String get connected => 'تم الاتصال بـ Health Connect';
	@override String get notConnected => 'لم يتم الاتصال بـ Health Connect';
	@override String get setup => 'إعداد Health Connect';
	@override String get skipForNow => 'تخطٍّ الآن';
	@override String get statusConnected => 'تم الاتصال بـ Health Connect.';
	@override String get statusSuccess => 'تم توصيل Health Connect بنجاح!';
	@override String statusPermissionDenied({required Object appLabel}) => 'تم رفض الإذن. يرجى تمكين أذونات Health Connect من إعدادات هاتفك لتطبيق ${appLabel}.';
	@override String statusError({required Object error}) => 'خطأ أثناء إعداد Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementAr implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessAr trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessAr._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileAr healthProfile = _TranslationsOnboardingReinforcementHealthProfileAr._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleAr goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleAr._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryAr implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ملخص الـ AI الخاص بك';
	@override String get logMore => 'سجّل مزيدًا من الوجبات خلال الأيام المقبلة للحصول على رؤى AI مخصصة.';
	@override String get loading => 'جارٍ تحميل الملخص...';
	@override String mealCount({required Object count}) => 'تم تسجيل ${count} وجبات';
	@override String macroBalanceScore({required Object score}) => 'درجة التوازن ${score}';
	@override String get topFoods => 'الأطعمة الأكثر شيوعًا';
	@override String get trendUp => 'الحريرات في ارتفاع';
	@override String get trendDown => 'الحريرات في انخفاض';
	@override String get trendSteady => 'الحريرات مستقرة';
	@override String generatedAt({required Object time}) => 'تحدّث في ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalAr implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حدد هدفك اليومي';
	@override String get titleSet => 'هدفك اليومي';
	@override String get description => 'هل أنت جاهز لبدء رحلتك الصحية؟ حدّد هدف السعرات اليومي أدناه لتبدأ التقدّم.';
	@override String get descriptionSet => 'تم تعيين بوصلة أهدافك! هذا هو هدف السعرات اليومي ليوجهك.';
	@override String get yourGoal => 'هدفك';
	@override String get goal => 'الهدف';
	@override String get dailyCalories => 'سعرات يومية (kcal)';
	@override String get setGoal => 'حدد الهدف';
	@override String get intake => 'المتناول';
	@override String get burned => 'المحروق';
	@override String get weightImpact => 'تأثير على الوزن';
	@override String get estLoss => 'المقدّر فقدان';
	@override String get estGain => 'المقدّر زيادة';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryAr implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الملخّص اليومي';
	@override String get calories => 'السعرات';
	@override String get carbs => 'الكربوهيدرات';
	@override String get protein => 'البروتين';
	@override String get fat => 'الدهون';
	@override String get fiber => 'الألياف';
	@override String get grams => 'غرام';
	@override String get chartAccessibilityLabel => 'مخطط المغذيات';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressAr implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'توزيع المغذيات اليومي';
	@override String get target => 'الهدف';
	@override String get current => 'الحالي';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryAr implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'سجل المغذيات لسبعة أيام';
	@override String get trendTitle => 'اتجاه اليوم';
	@override String peakHour({required Object hour}) => 'الذروة: ${hour}:00';
	@override String get noHistoryYet => 'لا يوجد سجل بعد';
	@override String get startLogging => 'ابدأ بتسجيل الوجبات لرؤية\nاتجاهات المغذيات لسبعة أيام هنا';
}

// Path: home.mealLog
class _TranslationsHomeMealLogAr implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الوجبات المسجلة';
	@override String get emptyMessage => 'التقط صورة لوجبتك الأخيرة لتسجلها هنا.';
	@override String get noMealsToday => 'لا توجد وجبات مسجلة اليوم';
	@override String get seeAllMeals => 'عرض كل الوجبات';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionAr implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إضافة سريعة بالـ AI';
	@override String get description => 'وصف وجبتك ودع الـ AI يتولّى التفاصيل.';
	@override String get hint => 'مثال: على الإفطار تناولت وعاءً كبيرًا من الشوفان مع موزة مقطعة ومغرفة من بروتين مصل اللبن ...';
	@override String get analyzeMeal => 'حلّل الوجبة';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsAr implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الوجبات المفضلة';
	@override String get description => 'أضف بسرعة إحدى وجباتك المفضلة.';
	@override String get noFavorites => 'لا توجد وجبات مفضلة حتى الآن.';
	@override String get addFavoriteHint => 'انقر النجمة على أي وجبة لتمييزها كمفضلة.';
	@override String get seeAll => 'عرض الكل';
	@override String get add => 'إضافة';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapAr implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'التقط وجبتك وتتبّعها';
	@override String get description => 'استخدم الكاميرا لالتقاط صورة طعامك لتحليل بالـ AI.';
	@override String get openCamera => 'افتح الكاميرا';
	@override String get gallery => 'المعرض';
	@override String get compressingPhoto => 'جارٍ تحسين الصورة…';
	@override String get uploadingPhoto => 'جارٍ رفع الصورة…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthAr implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'زامِن مع Health Connect';
	@override String get description => 'زامِن بيانات تغذيتك مع Health Connect';
	@override String get install => 'تثبيت';
	@override String get connect => 'اتصال';
}

// Path: meal.nutrition
class _TranslationsMealNutritionAr implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get calories => 'السعرات';
	@override String get carbs => 'كربوهيدرات (غ)';
	@override String get protein => 'بروتين (غ)';
	@override String get fat => 'دهون (غ)';
	@override String get fiber => 'ألياف (غ)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationAr implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حذف الوجبة';
	@override String get message => 'هل أنت متأكد أنك تريد حذف تسجيل هذه الوجبة؟';
	@override String get cancel => 'إلغاء';
	@override String get delete => 'حذف';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowAr implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'السؤال ${current} من ${total}';
	@override String get noQuestionsAvailable => 'لا توجد أسئلة متاحة';
	@override String get next => 'التالي';
	@override String get continueLabel => 'استمر';
}

// Path: meal.analysis
class _TranslationsMealAnalysisAr implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'جارٍ تحليل وجبتك';
	@override String get stepStarted => 'بدء...';
	@override String get stepDecomposition => 'فهم الوجبة...';
	@override String get stepIngredients => 'مطابقة المكونات مع بيانات التغذية...';
	@override String get stepUncertainty => 'التحقق من الثقة...';
	@override String get stepMealTypeQuestion => 'قاربنا على الانتهاء...';
	@override String get stepResult => 'إنهاء النتيجة...';
	@override String get stepError => 'حدث خطأ ما';
	@override String get stepDefault => 'جارٍ تحليل وجبتك…';
	@override String get progressUnderstand => 'فهم الوجبة';
	@override String get progressMatch => 'البحث عن تغذية المكونات';
	@override String get progressCheck => 'التحقق من الحصص والثقة';
	@override String get progressMealType => 'اختيار نوع الوجبة';
	@override String get progressFinish => 'حساب السعرات والمغذيات';
	@override String get detectedIngredientHeading => 'المكونات التي نرصدها';
	@override String ingredientsOverflow({required Object count}) => '${count} أكثر';
	@override String ingredientsLine({required Object count}) => 'تم اكتشاف ${count} مكونات';
	@override String get ingredientsPending => 'جارٍ مسح المكونات…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'نصيحة: الاستمرارية أفضل من الكمال—التسجيل المنتظم يكشف الأنماط المهمة.';
	@override String get offlineTip1 => 'نصيحة: للصور، الضوء الطبيعي والمنظور العلوي يساعدان على دقة تقدير الحصص.';
	@override String get offlineTip2 => 'نصيحة: اذكر المشروبات والصلصات وزيت الطهي—إضافات سعرات تُنسَى غالبًا.';
	@override String get offlineTip3 => 'نصيحة: ملاحظة سريعة عن الحصة (وعاء واحد، قهوة كبيرة) تجعل التقديرات أدق.';
	@override String get offlineTip4 => 'نصيحة: التسجيل بعد الوجبة ما زال يبني العادة؛ الكمال اختياري.';
	@override String get offlineTip5 => 'نصيحة: اذكر طريقة الطهي عندما تؤثر كثيرًا على السعرات (مقلي مقابل مخبوز).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackAr implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما الخطأ في التقدير؟';
	@override String get subtitle => 'ساعدنا في تحسين التحليل باختيار مشكلة أو أكثر.';
	@override String get tellUsMore => 'أخبرنا المزيد';
	@override String get describeIncorrect => 'وصف ما كان غير صحيح';
	@override String get submit => 'إرسال';
	@override String get issueFoodIdentification => 'تعرّف الطعام';
	@override String get issuePortionSize => 'حجم الحصة';
	@override String get issueCalorieDistribution => 'توزيع السعرات';
	@override String get issueMacrosWrong => 'المغذيات غير صحيحة';
	@override String get issueMissingItems => 'عناصر مفقودة';
	@override String get issueExtraItems => 'عناصر إضافية';
	@override String get issueOther => 'أخرى';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsAr implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get recent => 'الأحدث';
	@override String get calories => 'السعرات';
	@override String get alphabetical => 'أ-ي';
}

// Path: profile.sections
class _TranslationsProfileSectionsAr implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'الملف';
	@override String get basicInformation => 'معلومات أساسية';
	@override String get goalsAndActivity => 'الأهداف والنشاط';
	@override String get calculatedValues => 'القيم المحسوبة';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesAr implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'الهدف اليومي';
	@override String get calPerDay => 'سعر/يوم';
	@override String get notAvailable => 'غير متوفر';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsAr implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'معلومات شخصية';
	@override String get physicalMeasurements => 'القياسات البدنية';
	@override String get goalsAndActivity => 'الأهداف والنشاط';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersAr implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get male => 'ذكر';
	@override String get female => 'أنثى';
	@override String get other => 'آخر';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsAr implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightAr loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightAr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightAr maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightAr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightAr gainWeight = _TranslationsEditProfileWeightGoalsGainWeightAr._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsAr implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryAr sedentary = _TranslationsEditProfileActivityLevelsSedentaryAr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveAr lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveAr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveAr moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveAr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveAr veryActive = _TranslationsEditProfileActivityLevelsVeryActiveAr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveAr extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveAr._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsAr implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'الملف';
	@override String get localization => 'اللغة';
	@override String get notifications => 'الإشعارات';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'الدعم والقانونية';
	@override String get about => 'حول';
	@override String get dangerZone => 'منطقة الخطر';
	@override String get developer => 'المطور';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileAr implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تعديل الملف الشخصي';
	@override String get subtitle => 'حدّث معلوماتك الشخصية';
}

// Path: settings.language
class _TranslationsSettingsLanguageAr implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اللغة';
	@override String get subtitle => 'اختر لغتك المفضلة';
	@override String get searchHint => 'ابحث عن اللغات...';
	@override String get noResults => 'لم يتم العثور على نتائج';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitAr implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وحدة الطول';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitAr implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وحدة الوزن';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersAr implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تذكيرات الوجبات';
	@override String get subtitle => 'ابقَ على الطريق مع تنبيهات في الوقت المناسب';
}

// Path: settings.theme
class _TranslationsSettingsThemeAr implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'المظهر';
	@override String get light => 'فاتح';
	@override String get dark => 'داكن';
	@override String get system => 'نظام';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackAr implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إرسال ملاحظات';
	@override String subtitle({required Object appLabel}) => 'ساعدنا في تحسين ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'ملاحظات تطبيق ${appLabel}';
	@override String get emailBodyPrefix => 'يرجى كتابة ملاحظاتك أدناه:';
	@override String get appVersion => 'إصدار التطبيق';
	@override String get device => 'الجهاز';
	@override String get osVersion => 'إصدار النظام';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryAr implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تصدير سجل الوجبات';
	@override String get subtitle => 'مشاركة CSV من وجباتك المسجلة';
	@override String get shareText => 'تصدير سجل وجبات Calorify الخاص بك';
	@override String failed({required Object error}) => 'تعذّر تصدير سجل الوجبات: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataAr implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مسح جميع البيانات';
	@override String get subtitle => 'حذف جميع معلوماتك بشكل لا رجعة فيه';
	@override String get confirmationTitle => 'مسح جميع البيانات؟';
	@override String get confirmationMessage => 'لا يمكن التراجع عن هذا الإجراء. سيتم حذف جميع وجباتك المسجلة والمفضلات وإعدادات الملف الشخصي بشكل دائم.';
	@override String get cancel => 'إلغاء';
	@override String get clearEverything => 'امسح الكل';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsAr implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'خيارات التصحيح';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectAr implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'عرض وإدارة الأذونات';
	@override late final _TranslationsSettingsHealthConnectUnavailableAr unavailable = _TranslationsSettingsHealthConnectUnavailableAr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsAr permissions = _TranslationsSettingsHealthConnectPermissionsAr._(_root);
	@override String get managePermissions => 'إدارة الأذونات';
	@override String get openSettings => 'فتح إعدادات Health Connect';
	@override String get requestPermissions => 'طلب الأذونات';
	@override String get permissionRequestCancelledOrFailed => 'تم إلغاء طلب الإذن أو فشل. يرجى المحاولة مرة أخرى أو منح الأذونات يدويًا من إعدادات Health Connect.';
	@override String get permissionRequestFailed => 'تعذّر طلب الأذونات. حاول مرة أخرى أو امنح الأذونات يدويًا من إعدادات Health Connect.';
	@override String get requestingPermissions => 'جارٍ طلب الأذونات...';
}

// Path: settings.about
class _TranslationsSettingsAboutAr implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حول';
	@override String get tagline => 'سريع، مجاني، ويعطي الأولوية للخصوصية';
	@override late final _TranslationsSettingsAboutOurStoryAr ourStory = _TranslationsSettingsAboutOurStoryAr._(_root);
	@override late final _TranslationsSettingsAboutPrivacyAr privacy = _TranslationsSettingsAboutPrivacyAr._(_root);
	@override late final _TranslationsSettingsAboutDeveloperAr developer = _TranslationsSettingsAboutDeveloperAr._(_root);
	@override late final _TranslationsSettingsAboutFeedbackAr feedback = _TranslationsSettingsAboutFeedbackAr._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoAr implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'بناء ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastAr implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حان وقت الإفطار! 🍳';
	@override String get body => 'لا تنسَ تسجيل إفطارك';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchAr implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حان وقت الغداء! 🥗';
	@override String get body => 'حان وقت تسجيل غدائك';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerAr implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حان وقت العشاء! 🍽️';
	@override String get body => 'لا تنسَ تسجيل عشاءك';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackAr implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حان وقت الوجبة الخفيفة! 🍎';
	@override String get body => 'حان وقت وجبة خفيفة صحية';
}

// Path: notifications.test
class _TranslationsNotificationsTestAr implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إشعار تجريبي';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapAr implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => 'يوفر ${appLabel} معلومات غذائية تقديرية. تعتمد الدقة على مدخلاتك واختلافات الطعام. استخدمها كدليل وليس كمصدر نهائي. استشر مختصًا للحصول على نصائح غذائية شخصية.';
	@override late final _TranslationsDisclaimerSnapPortionSizeAr portionSize = _TranslationsDisclaimerSnapPortionSizeAr._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsAr preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsAr._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsAr ingredients = _TranslationsDisclaimerSnapIngredientsAr._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsAr databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsAr._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateAr implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حول تقدير الوزن';
	@override String get description => 'التغير المتوقع في الوزن هو تقدير نظري مبني على نموذج بسيط للسعرات الداخلة مقابل الخارجة. المقصود به توجيه تحفيزي فقط، وليس توقعًا لوزنك الفعلي.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyAr calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyAr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsAr biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsAr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightAr waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightAr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceAr professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceAr._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsAr implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get description => 'تساعدك هذه المقاييس على فهم احتياجات جسمك من الطاقة وتوجيه أهدافك الغذائية.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrAr bmr = _TranslationsDisclaimerHealthMetricsBmrAr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeAr tdee = _TranslationsDisclaimerHealthMetricsTdeeAr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalAr dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalAr._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureAr implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تقدير إنفاق السعرات';
	@override String get description => 'عندما تتعذّر بيانات Health Connect، نقدر سعرات اليوم المحروقة باستخدام معدل الأيض الأساسي (BMR) ومستوى النشاط (TDEE)، مع تعديل بالنسبة لجزء اليوم الذي مضى.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedAr howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedAr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceAr professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceAr._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionAr implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'التعرّف الذكي على الطعام';
	@override String get description => 'التقط صورة ودع الـ AI يتعرف على وجبتك';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisAr implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تحليل بالـ AI';
	@override String get description => 'احصل على حقائق التغذية فورًا من وصفك';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationAr implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تكامل Health Connect';
	@override String get description => 'اتصل بـ Health Connect للحصول على رؤى أفضل';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesAr implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'نقص في الوزن';
	@override String get healthyWeight => 'وزن صحي';
	@override String get overweight => 'زيادة في الوزن';
	@override String get obese => 'سمنة';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesAr implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'نستطيع مساعدتك في بناء خطة صحية للوصول إلى وزن متوازن مع وجبات غنية بالعناصر الغذائية.';
	@override String get healthy => 'عمل رائع! أنت ضمن نطاق صحي. سنساعدك على المحافظة على نشاطك وحيويتك.';
	@override String overweight({required Object appLabel}) => 'سيجعل ${appLabel} رحلتك أبسط مع تتبّع مدعوم بالـ AI لمساعدتك على الوصول لهدفك براحة.';
	@override String get obese => 'نحن هنا لدعمك بإرشادات مخصصة واستراتيجيات مستدامة لأهدافك الصحية.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingAr implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تتبع السعرات تلقائيًا';
	@override String get description => 'تتبّع السعرات المحروقة من تطبيقات اللياقة الخاصة بك';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsAr implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'رؤى التقدّم';
	@override String get description => 'احصل على رؤى مفصّلة حول اتجاهات صحتك';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationAr implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تكامل سلس';
	@override String get description => 'زامِن البيانات من تطبيقات الصحة المفضلة لديك';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessAr implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'لست وحدك';
	@override String get genericMessage => 'تشير الأبحاث إلى أن التتبع المستمر هو أهم عامل للتفوّق طويل المدى.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'بالنسبة لشخص عمره ${age} عام ${gender} ويسعى لـ ${goal}، يعتبر التتبع المستمر أهم عامل للنجاح.';
	@override String closingMessage({required Object appLabel}) => 'يجعل ${appLabel} ذلك أسهل بعشر مرات من العملية اليدوية.';
	@override String get getStartedTitle => 'هل أنت مستعد للبدء؟';
	@override String get tipPhoto => 'التقط صورة لوجباتك لتحليل فوري';
	@override String get tipConsistency => 'دوّن باستمرار لرؤية تقدم ملموس';
	@override String get tipProgress => 'تتبّع تقدمك يوميًا لتحافظ على الدافعية';
	@override String get button => 'هيا بنا';
	@override String get defaultGender => 'شخص';
	@override String get defaultGoal => 'نسخة أكثر صحة منك';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileAr implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ملفك الصحي';
	@override String bmiDescription({required Object bmi}) => 'بناءً على مقاييسك، مؤشر كتلة الجسم (BMI) لديك هو ${bmi}.';
	@override String get finalizeDescription => 'لننهي إعداد ملفك لتخصيص تجربتك.';
	@override String get goalGain => 'زيادة';
	@override String get goalLose => 'فقدان';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'للوصول إلى هدفك، ستحتاج إلى ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'أنت عند وزنك المستهدف! سنساعدك في الحفاظ عليه.';
	@override String get button => 'هيا بنا';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleAr implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'بداية ممتازة!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'لقد اتخذت الخطوة الأولى نحو ${goalText}. بما أنك ${activityText}، سيقوم ${appLabel} بتعديل أهدافك لتناسب نمط حياتك.';
	@override String get personalizedTargets => 'أهداف سعرات مخصصة';
	@override String get aiMealDetection => 'كشف الوجبات بواسطة AI';
	@override String get macroBreakdowns => 'تفصيلات المغذيات الكبرى';
	@override String get button => 'هيا بنا';
	@override String get defaultGoal => 'أهدافك';
	@override String get defaultActivity => 'نشط';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightAr implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'فقدان الوزن';
	@override String get description => 'إنشاء عجز سعري لفقدان الوزن';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightAr implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'الحفاظ على الوزن';
	@override String get description => 'الحفاظ على وزنك الحالي';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightAr implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'زيادة الوزن';
	@override String get description => 'إنشاء فائض سعري لزيادة الوزن';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryAr implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'خالٍ من النشاط';
	@override String get description => 'قليل أو دون ممارسة';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveAr implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشاط خفيف';
	@override String get description => 'تمارين خفيفة 1-3 أيام/أسبوع';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveAr implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشاط متوسط';
	@override String get description => 'تمارين متوسطة 3-5 أيام/أسبوع';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveAr implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشاط عالي';
	@override String get description => 'تمارين شاقة 6-7 أيام/أسبوع';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveAr implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشاط شديد جدًا';
	@override String get description => 'مجهود بدني كبير أو عمل بدني';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableAr implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect غير متاح';
	@override String get description => 'Health Connect غير متاح على هذا الجهاز. يرجى تثبيت Health Connect من Play Store (Android 9+) أو التحديث إلى Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsAr implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الأذونات';
	@override String get description => 'يُطلب الأذونات التالية لتوفير تكامل Health Connect:';
	@override String get granted => 'ممنوح';
	@override String get notGranted => 'لم يُمنَح';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedAr caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedAr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadAr nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadAr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteAr nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteAr._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryAr implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قصتنا';
	@override String content({required Object appLabel}) => '${appLabel} وُلد من إحباط بسيط: معظم تطبيقات تتبّع السعرات إما معقّدة جدًا، تطلب إدخالًا يدويًا مستمرًا، تفرض اشتراكات باهظة، أو تُفرط في خصوصيتك.\n\nكمطور منفرد، أردت بناء شيء أبسط وأكثر عدلاً — تطبيق يستخدم AI لتقليل الجهد، يبقى سريعًا ومجانيًا للاستخدام، ويتعامل مع بياناتك الصحية باحترام.\n\n${appLabel} هو التطبيق الذي كنت أتمنى وجوده: لا حسابات، لا تتبع، لا إعلانات — مجرد رؤى واضحة وعملية وأهدافك الصحية.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyAr implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'خصوصيتك تهمنا';
	@override String get description => 'الخصوصية ليست فكرة لاحقة — إنها مبدأ تصميم. هذا ما يعنيه ذلك عمليًا:';
	@override String get noAccounts => 'لا حاجة لحسابات\nاستخدم التطبيق فورًا. لا تسجيل، لا هويات.';
	@override String noTracking({required Object appLabel}) => 'لا تتبّع سلوكي\n${appLabel} لا يراقب نشاطك، ولا يُكوّن ملفات استخدام، ولا يتتبّعك عبر التطبيقات أو المواقع.';
	@override String noAds({required Object appLabel}) => 'خالي من الإعلانات بطبيعته\n${appLabel} مصمم للعمل بدون إعلانات أو تحقيق ربح عبر بيانات المستخدم.';
	@override String get noDataSelling => 'لا بيع للبيانات\nلا تُباع أو تُشارك بياناتك الصحية مع أطراف ثالثة.';
	@override String get localStorage => 'تخزين محلي أولًا\nتظل بياناتك على جهازك.';
	@override String get privacyPolicy => 'سياسة الخصوصية';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperAr implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'بُني بواسطة مطور منفرد';
	@override String description({required Object appLabel}) => '${appLabel} يتم بناؤه وصيانته بواسطة مطور منفرد يركز على إنشاء برامج صحية هادئة ومحترمة للخصوصية.\n\nتُقرأ الملاحظات شخصيًا وتساعد في تشكيل اتجاه التطبيق.';
	@override String get website => 'الموقع الإلكتروني';
	@override String get email => 'البريد الإلكتروني';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackAr implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'هل تستمتع بـ ${appLabel}؟';
	@override String description({required Object appLabel}) => 'ملاحظاتك تساعد في جعل ${appLabel} أفضل للجميع.';
	@override String get rateApp => 'قيّم على Play Store';
	@override String get sendFeedback => 'أرسل ملاحظات';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeAr implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حجم الحصة';
	@override String get description => 'تعتمد دقة التقديرات بشكل كبير على تقييمك الصحيح لحجم الحصة.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsAr implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'طرق التحضير';
	@override String description({required Object appLabel}) => 'يمكن لطرق الطهي أن تغيّر محتوى الغذاء بشكل كبير. قد لا تأخذ تقديرات ${appLabel} هذه الاختلافات في الحسبان دائمًا.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsAr implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'المكونات';
	@override String get description => 'الأطباق المعقدة ذات المكونات المخفية قد تؤدي إلى تقديرات أقل دقة.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsAr implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حدود قاعدة البيانات';
	@override String description({required Object appLabel}) => 'قاعدة بيانات الأطعمة لدى ${appLabel} واسعة لكنها قد لا تتضمن كل صنف طعام أو اختلاف.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyAr implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'دقة السعرات';
	@override String get description => 'تعتمد هذه التقديرات على دقة تسجيلك لاستهلاك وحرق السعرات. التسجيل غير الدقيق سيؤدي إلى توقعات غير دقيقة.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsAr implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'العوامل البيولوجية';
	@override String description({required Object appLabel}) => 'يتأثر فقدان/كتساب الوزن فعليًا بالأيض والهرمونات والنوم والتوتر والترطيب وعوامل فردية أخرى لا يستطيع ${appLabel} قياسها.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightAr implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وزن الماء والتقلبات';
	@override String get description => 'يمكن أن يتقلب الوزن اليومي بشكل كبير بسبب احتباس الماء والهضم والتوقيت. لا يأخذ التقدير هذه التغيرات اليومية بعين الاعتبار.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceAr implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إرشاد مهني';
	@override String get description => 'لا تستخدم هذا التقدير لاتخاذ قرارات طبية. استشر دائمًا مختص رعاية صحية أو أخصائي تغذية مسجل لإدارة الوزن بشكل شخصي.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrAr implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'معدل الأيض الأساسي (BMR) هو عدد السعرات التي يحرقها جسمك أثناء الراحة للحفاظ على وظائفه الأساسية مثل التنفس والدورة الدموية. يعتمد BMR على عمرك وجنسك وطولك ووزنك. يشير BMR الأعلى إلى أن الجسم يحرق سعرات أكثر في الراحة، غالبًا نتيجة وجود كتلة عضلية أكبر أو صغر السن أو كونه ذكرًا. يشير BMR الأقل عادةً إلى كتلة عضلية أقل أو تقدم في العمر أو كونه أنثى.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeAr implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'إجمالي الإنفاق اليومي للطاقة (TDEE) هو إجمالي السعرات التي تحرقها يوميًا، ويشمل BMR بالإضافة إلى السعرات الناتجة عن النشاط البدني والحركة اليومية. يعتمد TDEE على BMR ومستوى النشاط. يشير TDEE الأعلى إلى أنك تحرق سعرات أكثر عمومًا، عادةً بسبب النشاط الأكبر أو BMR أعلى. يشير TDEE الأقل إلى نشاط يومي أقل أو BMR أدنى.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalAr implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الهدف اليومي';
	@override String get description => 'الهدف اليومي هو كمية السعرات الموصى بها يوميًا بناءً على TDEE وهدف الوزن. لفقدان الوزن تستهلك سعرات أقل من TDEE. للحفاظ على الوزن تطابق TDEE. لزيادة الوزن تستهلك سعرات أكثر من TDEE. هذا يساعدك على الوصول للتغير المطلوب بوتيرة صحية.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedAr implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'كيف يُحسب التقدير';
	@override String get description => 'نحسب TDEE (بناءً على ملفك) ونضربه في نسبة اليوم المنقضي (الساعات + الدقائق) / 24 لتقدير السعرات المحروقة حتى الآن.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceAr implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إرشاد مهني';
	@override String get description => 'لا تستخدم هذا التقدير لاتخاذ قرارات طبية. استشر دائمًا مختص رعاية صحية أو أخصائي تغذية مسجل لإدارة الوزن بشكل شخصي.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedAr implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قراءة إجمالي السعرات المحروقة';
	@override String get description => 'يسمح للتطبيق بقراءة إجمالي السعرات المحروقة من Health Connect.';
	@override String get usage => 'يُستخدم هذا الإذن لعرض حرق السعرات اليومي في التطبيق، مما يساعدك على فهم إجمالي إنفاق الطاقة خلال اليوم.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadAr implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قراءة بيانات التغذية';
	@override String get description => 'يسمح للتطبيق بقراءة بيانات التغذية من Health Connect.';
	@override String get usage => 'يتيح هذا الإذن للتطبيق قراءة معلومات التغذية التي قد سجّلها تطبيقات أخرى متصلة بـ Health Connect، مما يوفر رؤية شاملة لتغذيتك.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteAr implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'كتابة بيانات التغذية';
	@override String get description => 'يسمح للتطبيق بكتابة بيانات التغذية إلى Health Connect.';
	@override String get usage => 'يتيح هذا الإذن للتطبيق مزامنة وجباتك المسجلة إلى Health Connect، مما يجعل بيانات تغذيتك متاحة لتطبيقات الصحة واللياقة الأخرى التي تستخدمها.';
}

/// The flat map containing all translations for locale <ar>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsAr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'العربية',
			'flag' => '🇸🇦',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'لقد أرسلت طلبات كثيرة جدًا. يرجى الانتظار قليلاً والمحاولة مرة أخرى.',
			'errors.networkError' => 'خطأ في الشبكة. يرجى التحقق من اتصال الإنترنت لديك.',
			'errors.unknownError' => 'حدث خطأ ما. حاول مرة أخرى لاحقًا.',
			'errors.loadingProfileData' => 'خطأ في تحميل بيانات الملف الشخصي',
			'errors.somethingWentWrong' => 'حدث خطأ ما.',
			'errors.retry' => 'أعد المحاولة',
			'onboarding.welcome' => ({required Object appLabel}) => 'مرحبًا بك في ${appLabel}',
			'onboarding.subtitle' => 'رفيقك الشخصي للتغذية مدعوم بـ AI',
			'onboarding.getStarted' => 'ابدأ',
			'onboarding.features.foodRecognition.title' => 'التعرّف الذكي على الطعام',
			'onboarding.features.foodRecognition.description' => 'التقط صورة ودع الـ AI يتعرف على وجبتك',
			'onboarding.features.aiAnalysis.title' => 'تحليل بالـ AI',
			'onboarding.features.aiAnalysis.description' => 'احصل على حقائق التغذية فورًا من وصفك',
			'onboarding.features.healthIntegration.title' => 'تكامل Health Connect',
			'onboarding.features.healthIntegration.description' => 'اتصل بـ Health Connect للحصول على رؤى أفضل',
			'onboarding.gender.title' => 'ما جنسك؟',
			'onboarding.gender.description' => 'المعلومات عن الجنس تساعدنا في حساب معدل الأيض الأساسي (BMR) بدقة.',
			'onboarding.gender.next' => 'التالي',
			'onboarding.height.title' => 'ما طولك؟',
			'onboarding.height.description' => 'الطول يساعدنا في حساب مؤشر كتلة الجسم (BMI) واحتياجات الطاقة بدقة.',
			'onboarding.height.metric' => 'متر/سنتيمتر',
			'onboarding.height.imperial' => 'بوصات/قدم',
			'onboarding.height.next' => 'التالي',
			'onboarding.weight.currentTitle' => 'كم وزنك الحالي؟',
			'onboarding.weight.currentDescription' => 'وزنك الحالي ضروري لتخصيص أهدافك اليومية.',
			'onboarding.weight.targetTitle' => 'ما وزنك المستهدف؟',
			'onboarding.weight.targetDescription' => 'تحديد وزن الهدف يساعدنا في وضع خطة طويلة الأمد.',
			'onboarding.weight.metric' => 'كيلوغرام',
			'onboarding.weight.imperial' => 'رطل',
			'onboarding.weight.next' => 'التالي',
			'onboarding.age.title' => 'متى تاريخ ميلادك؟',
			'onboarding.age.description' => 'العمر يساعدنا في حساب احتياجاتك من السعرات بدقة.',
			'onboarding.age.next' => 'التالي',
			'onboarding.bmiScale.underweight' => 'نقص',
			'onboarding.bmiScale.healthy' => 'صحي',
			'onboarding.bmiScale.overweight' => 'زيادة',
			'onboarding.bmiScale.obese' => 'سمنة',
			'onboarding.bmiScale.categories.underweight' => 'نقص في الوزن',
			'onboarding.bmiScale.categories.healthyWeight' => 'وزن صحي',
			'onboarding.bmiScale.categories.overweight' => 'زيادة في الوزن',
			'onboarding.bmiScale.categories.obese' => 'سمنة',
			'onboarding.bmiScale.messages.underweight' => 'نستطيع مساعدتك في بناء خطة صحية للوصول إلى وزن متوازن مع وجبات غنية بالعناصر الغذائية.',
			'onboarding.bmiScale.messages.healthy' => 'عمل رائع! أنت ضمن نطاق صحي. سنساعدك على المحافظة على نشاطك وحيويتك.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => 'سيجعل ${appLabel} رحلتك أبسط مع تتبّع مدعوم بالـ AI لمساعدتك على الوصول لهدفك براحة.',
			'onboarding.bmiScale.messages.obese' => 'نحن هنا لدعمك بإرشادات مخصصة واستراتيجيات مستدامة لأهدافك الصحية.',
			'onboarding.weightGoal.title' => 'ما هدفك؟',
			'onboarding.weightGoal.description' => 'اختر الهدف الذي يصف ما تود تحقيقه',
			'onboarding.activityLevel.title' => 'ما مدى نشاطك؟',
			'onboarding.activityLevel.description' => 'هذا يساعدنا في حساب احتياجات السعرات اليومية بدقة أكبر',
			'onboarding.healthConnect.title' => 'الاتصال بـ Health Connect',
			'onboarding.healthConnect.description' => 'مزامنة بيانات صحتك للحصول على رؤى أفضل وتتبع تلقائي للسعرات',
			'onboarding.healthConnect.automaticTracking.title' => 'تتبع السعرات تلقائيًا',
			'onboarding.healthConnect.automaticTracking.description' => 'تتبّع السعرات المحروقة من تطبيقات اللياقة الخاصة بك',
			'onboarding.healthConnect.progressInsights.title' => 'رؤى التقدّم',
			'onboarding.healthConnect.progressInsights.description' => 'احصل على رؤى مفصّلة حول اتجاهات صحتك',
			'onboarding.healthConnect.seamlessIntegration.title' => 'تكامل سلس',
			'onboarding.healthConnect.seamlessIntegration.description' => 'زامِن البيانات من تطبيقات الصحة المفضلة لديك',
			'onboarding.healthConnect.connected' => 'تم الاتصال بـ Health Connect',
			'onboarding.healthConnect.notConnected' => 'لم يتم الاتصال بـ Health Connect',
			'onboarding.healthConnect.setup' => 'إعداد Health Connect',
			'onboarding.healthConnect.skipForNow' => 'تخطٍّ الآن',
			'onboarding.healthConnect.statusConnected' => 'تم الاتصال بـ Health Connect.',
			'onboarding.healthConnect.statusSuccess' => 'تم توصيل Health Connect بنجاح!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'تم رفض الإذن. يرجى تمكين أذونات Health Connect من إعدادات هاتفك لتطبيق ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'خطأ أثناء إعداد Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'لست وحدك',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'تشير الأبحاث إلى أن التتبع المستمر هو أهم عامل للتفوّق طويل المدى.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'بالنسبة لشخص عمره ${age} عام ${gender} ويسعى لـ ${goal}، يعتبر التتبع المستمر أهم عامل للنجاح.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => 'يجعل ${appLabel} ذلك أسهل بعشر مرات من العملية اليدوية.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'هل أنت مستعد للبدء؟',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'التقط صورة لوجباتك لتحليل فوري',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'دوّن باستمرار لرؤية تقدم ملموس',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'تتبّع تقدمك يوميًا لتحافظ على الدافعية',
			'onboarding.reinforcement.trackingSuccess.button' => 'هيا بنا',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'شخص',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'نسخة أكثر صحة منك',
			'onboarding.reinforcement.healthProfile.title' => 'ملفك الصحي',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'بناءً على مقاييسك، مؤشر كتلة الجسم (BMI) لديك هو ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'لننهي إعداد ملفك لتخصيص تجربتك.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'زيادة',
			'onboarding.reinforcement.healthProfile.goalLose' => 'فقدان',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'للوصول إلى هدفك، ستحتاج إلى ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'أنت عند وزنك المستهدف! سنساعدك في الحفاظ عليه.',
			'onboarding.reinforcement.healthProfile.button' => 'هيا بنا',
			'onboarding.reinforcement.goalLifestyle.title' => 'بداية ممتازة!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'لقد اتخذت الخطوة الأولى نحو ${goalText}. بما أنك ${activityText}، سيقوم ${appLabel} بتعديل أهدافك لتناسب نمط حياتك.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'أهداف سعرات مخصصة',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'كشف الوجبات بواسطة AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'تفصيلات المغذيات الكبرى',
			'onboarding.reinforcement.goalLifestyle.button' => 'هيا بنا',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'أهدافك',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'نشط',
			'tabs.dashboard' => 'لوحة التحكم',
			'tabs.history' => 'السجل',
			'home.aiSummary.title' => 'ملخص الـ AI الخاص بك',
			'home.aiSummary.logMore' => 'سجّل مزيدًا من الوجبات خلال الأيام المقبلة للحصول على رؤى AI مخصصة.',
			'home.aiSummary.loading' => 'جارٍ تحميل الملخص...',
			'home.aiSummary.mealCount' => ({required Object count}) => 'تم تسجيل ${count} وجبات',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'درجة التوازن ${score}',
			'home.aiSummary.topFoods' => 'الأطعمة الأكثر شيوعًا',
			'home.aiSummary.trendUp' => 'الحريرات في ارتفاع',
			'home.aiSummary.trendDown' => 'الحريرات في انخفاض',
			'home.aiSummary.trendSteady' => 'الحريرات مستقرة',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'تحدّث في ${time}',
			'home.dailyGoal.title' => 'حدد هدفك اليومي',
			'home.dailyGoal.titleSet' => 'هدفك اليومي',
			'home.dailyGoal.description' => 'هل أنت جاهز لبدء رحلتك الصحية؟ حدّد هدف السعرات اليومي أدناه لتبدأ التقدّم.',
			'home.dailyGoal.descriptionSet' => 'تم تعيين بوصلة أهدافك! هذا هو هدف السعرات اليومي ليوجهك.',
			'home.dailyGoal.yourGoal' => 'هدفك',
			'home.dailyGoal.goal' => 'الهدف',
			'home.dailyGoal.dailyCalories' => 'سعرات يومية (kcal)',
			'home.dailyGoal.setGoal' => 'حدد الهدف',
			'home.dailyGoal.intake' => 'المتناول',
			'home.dailyGoal.burned' => 'المحروق',
			'home.dailyGoal.weightImpact' => 'تأثير على الوزن',
			'home.dailyGoal.estLoss' => 'المقدّر فقدان',
			'home.dailyGoal.estGain' => 'المقدّر زيادة',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'الملخّص اليومي',
			'home.dailySummary.calories' => 'السعرات',
			'home.dailySummary.carbs' => 'الكربوهيدرات',
			'home.dailySummary.protein' => 'البروتين',
			'home.dailySummary.fat' => 'الدهون',
			'home.dailySummary.fiber' => 'الألياف',
			'home.dailySummary.grams' => 'غرام',
			'home.dailySummary.chartAccessibilityLabel' => 'مخطط المغذيات',
			'home.intakeProgress.title' => 'توزيع المغذيات اليومي',
			'home.intakeProgress.target' => 'الهدف',
			'home.intakeProgress.current' => 'الحالي',
			'home.intakeHistory.title' => 'سجل المغذيات لسبعة أيام',
			'home.intakeHistory.trendTitle' => 'اتجاه اليوم',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'الذروة: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'لا يوجد سجل بعد',
			'home.intakeHistory.startLogging' => 'ابدأ بتسجيل الوجبات لرؤية\nاتجاهات المغذيات لسبعة أيام هنا',
			'home.mealLog.title' => 'الوجبات المسجلة',
			'home.mealLog.emptyMessage' => 'التقط صورة لوجبتك الأخيرة لتسجلها هنا.',
			'home.mealLog.noMealsToday' => 'لا توجد وجبات مسجلة اليوم',
			'home.mealLog.seeAllMeals' => 'عرض كل الوجبات',
			'home.mealDescription.title' => 'إضافة سريعة بالـ AI',
			'home.mealDescription.description' => 'وصف وجبتك ودع الـ AI يتولّى التفاصيل.',
			'home.mealDescription.hint' => 'مثال: على الإفطار تناولت وعاءً كبيرًا من الشوفان مع موزة مقطعة ومغرفة من بروتين مصل اللبن ...',
			'home.mealDescription.analyzeMeal' => 'حلّل الوجبة',
			'home.favoriteMeals.title' => 'الوجبات المفضلة',
			'home.favoriteMeals.description' => 'أضف بسرعة إحدى وجباتك المفضلة.',
			'home.favoriteMeals.noFavorites' => 'لا توجد وجبات مفضلة حتى الآن.',
			'home.favoriteMeals.addFavoriteHint' => 'انقر النجمة على أي وجبة لتمييزها كمفضلة.',
			'home.favoriteMeals.seeAll' => 'عرض الكل',
			'home.favoriteMeals.add' => 'إضافة',
			'home.mealSnap.title' => 'التقط وجبتك وتتبّعها',
			'home.mealSnap.description' => 'استخدم الكاميرا لالتقاط صورة طعامك لتحليل بالـ AI.',
			'home.mealSnap.openCamera' => 'افتح الكاميرا',
			'home.mealSnap.gallery' => 'المعرض',
			'home.mealSnap.compressingPhoto' => 'جارٍ تحسين الصورة…',
			'home.mealSnap.uploadingPhoto' => 'جارٍ رفع الصورة…',
			'home.connectHealth.title' => 'زامِن مع Health Connect',
			'home.connectHealth.description' => 'زامِن بيانات تغذيتك مع Health Connect',
			'home.connectHealth.install' => 'تثبيت',
			'home.connectHealth.connect' => 'اتصال',
			'history.noMeals' => 'لا توجد وجبات مسجلة',
			'history.emptyMessage' => 'التقط صورة لوجبتك الأخيرة لتسجلها هنا.',
			'history.today' => 'اليوم',
			'history.yesterday' => 'أمس',
			'meal.ohNo' => 'أوه لا!',
			'meal.delete' => 'حذف',
			'meal.editMeal' => 'تعديل الوجبة',
			'meal.addMeal' => 'إضافة وجبة',
			'meal.saveMeal' => 'حفظ الوجبة',
			'meal.save' => 'حفظ',
			'meal.mealName' => 'اسم الوجبة',
			'meal.mealNameHint' => 'مثال: بيض مخفوق مع توست',
			'meal.mealQuantity' => 'كمية الوجبة',
			'meal.mealQuantityHint' => 'مثال: 1 وعاء، 2 شريحة',
			'meal.timeOfMeal' => 'وقت الوجبة',
			'meal.timeOfMealHint' => 'اختر الوقت الذي تناولت فيه الوجبة',
			'meal.mealType' => 'نوع الوجبة',
			'meal.nutrition.calories' => 'السعرات',
			'meal.nutrition.carbs' => 'كربوهيدرات (غ)',
			'meal.nutrition.protein' => 'بروتين (غ)',
			'meal.nutrition.fat' => 'دهون (غ)',
			'meal.nutrition.fiber' => 'ألياف (غ)',
			'meal.deleteConfirmation.title' => 'حذف الوجبة',
			'meal.deleteConfirmation.message' => 'هل أنت متأكد أنك تريد حذف تسجيل هذه الوجبة؟',
			'meal.deleteConfirmation.cancel' => 'إلغاء',
			'meal.deleteConfirmation.delete' => 'حذف',
			'meal.addedToLog' => 'تمت إضافة الوجبة إلى سجلك!',
			'meal.couldNotAdd' => ({required Object error}) => 'تعذر إضافة الوجبة: ${error}',
			'meal.savedSuccessfully' => 'تمت إضافة الوجبة بنجاح!',
			'meal.updatedSuccessfully' => 'تم تحديث الوجبة بنجاح!',
			'meal.errorSaving' => ({required Object error}) => 'خطأ عند حفظ الوجبة: ${error}',
			'meal.removedFromFavorites' => 'تم الإزالة من المفضلات!',
			'meal.savedAsFavorite' => 'تم حفظ الوجبة كمفضلة!',
			'meal.unfavorite' => 'إزالة من المفضلات',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'تعذر تحديث المفضلة: ${error}',
			'meal.feedbackThanks' => 'شكرًا على الملاحظات!',
			'meal.reanalysisUpdated' => 'تم تحديث تحليل الوجبة بناءً على ملاحظاتك.',
			'meal.failedToProcess' => ({required Object error}) => 'فشل المعالجة: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'فشل معالجة الصورة: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'خطأ في ضغط الصورة: ${error}',
			'meal.failedToSave' => 'فشل حفظ البيانات. حاول مرة أخرى.',
			'meal.skip' => 'تخطٍّ',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'السؤال ${current} من ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'لا توجد أسئلة متاحة',
			'meal.questionFlow.next' => 'التالي',
			'meal.questionFlow.continueLabel' => 'استمر',
			'meal.analysis.title' => 'جارٍ تحليل وجبتك',
			'meal.analysis.stepStarted' => 'بدء...',
			'meal.analysis.stepDecomposition' => 'فهم الوجبة...',
			'meal.analysis.stepIngredients' => 'مطابقة المكونات مع بيانات التغذية...',
			'meal.analysis.stepUncertainty' => 'التحقق من الثقة...',
			'meal.analysis.stepMealTypeQuestion' => 'قاربنا على الانتهاء...',
			'meal.analysis.stepResult' => 'إنهاء النتيجة...',
			'meal.analysis.stepError' => 'حدث خطأ ما',
			'meal.analysis.stepDefault' => 'جارٍ تحليل وجبتك…',
			'meal.analysis.progressUnderstand' => 'فهم الوجبة',
			'meal.analysis.progressMatch' => 'البحث عن تغذية المكونات',
			'meal.analysis.progressCheck' => 'التحقق من الحصص والثقة',
			'meal.analysis.progressMealType' => 'اختيار نوع الوجبة',
			'meal.analysis.progressFinish' => 'حساب السعرات والمغذيات',
			'meal.analysis.detectedIngredientHeading' => 'المكونات التي نرصدها',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} أكثر',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'تم اكتشاف ${count} مكونات',
			'meal.analysis.ingredientsPending' => 'جارٍ مسح المكونات…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'نصيحة: الاستمرارية أفضل من الكمال—التسجيل المنتظم يكشف الأنماط المهمة.',
			'meal.analysis.offlineTip1' => 'نصيحة: للصور، الضوء الطبيعي والمنظور العلوي يساعدان على دقة تقدير الحصص.',
			'meal.analysis.offlineTip2' => 'نصيحة: اذكر المشروبات والصلصات وزيت الطهي—إضافات سعرات تُنسَى غالبًا.',
			'meal.analysis.offlineTip3' => 'نصيحة: ملاحظة سريعة عن الحصة (وعاء واحد، قهوة كبيرة) تجعل التقديرات أدق.',
			'meal.analysis.offlineTip4' => 'نصيحة: التسجيل بعد الوجبة ما زال يبني العادة؛ الكمال اختياري.',
			'meal.analysis.offlineTip5' => 'نصيحة: اذكر طريقة الطهي عندما تؤثر كثيرًا على السعرات (مقلي مقابل مخبوز).',
			'meal.feedback.title' => 'ما الخطأ في التقدير؟',
			'meal.feedback.subtitle' => 'ساعدنا في تحسين التحليل باختيار مشكلة أو أكثر.',
			'meal.feedback.tellUsMore' => 'أخبرنا المزيد',
			'meal.feedback.describeIncorrect' => 'وصف ما كان غير صحيح',
			'meal.feedback.submit' => 'إرسال',
			'meal.feedback.issueFoodIdentification' => 'تعرّف الطعام',
			'meal.feedback.issuePortionSize' => 'حجم الحصة',
			'meal.feedback.issueCalorieDistribution' => 'توزيع السعرات',
			'meal.feedback.issueMacrosWrong' => 'المغذيات غير صحيحة',
			'meal.feedback.issueMissingItems' => 'عناصر مفقودة',
			'meal.feedback.issueExtraItems' => 'عناصر إضافية',
			'meal.feedback.issueOther' => 'أخرى',
			'meal.nameRequired' => 'يرجى إدخال اسم الوجبة قبل الحفظ.',
			'favorites.title' => 'المفضلات',
			'favorites.empty' => 'لا توجد وجبات مفضلة بعد.',
			'favorites.searchPlaceholder' => 'ابحث في الوجبات المفضلة',
			'favorites.searchEmptyTitle' => 'لا توجد مفضلات مطابقة لبحثك',
			'favorites.searchEmptySubtitle' => 'جرّب اسم وجبة مختلف، كمية، أو نوع الوجبة.',
			'favorites.sortLabel' => 'ترتيب المفضلات',
			'favorites.undo' => 'تراجع',
			'favorites.removed' => ({required Object name}) => 'أُزيل ${name} من المفضلات',
			'favorites.sortOptions.recent' => 'الأحدث',
			'favorites.sortOptions.calories' => 'السعرات',
			'favorites.sortOptions.alphabetical' => 'أ-ي',
			'profile.title' => 'الملف الشخصي',
			'profile.noProfileData' => 'لم يتم العثور على بيانات الملف الشخصي',
			'profile.yourProfile' => 'ملفك الشخصي',
			'profile.viewAndManage' => 'عرض وإدارة معلومات صحتك',
			'profile.sections.profile' => 'الملف',
			'profile.sections.basicInformation' => 'معلومات أساسية',
			'profile.sections.goalsAndActivity' => 'الأهداف والنشاط',
			'profile.sections.calculatedValues' => 'القيم المحسوبة',
			'profile.gender' => 'الجنس',
			'profile.height' => 'الطول',
			'profile.weight' => 'الوزن',
			'profile.age' => 'العمر',
			'profile.weightGoal' => 'هدف الوزن',
			'profile.targetWeight' => 'الوزن المستهدف',
			'profile.activityLevel' => 'مستوى النشاط',
			'profile.healthMetrics' => 'مقاييس صحية',
			'profile.notSet' => 'غير محدد',
			'profile.years' => 'سنوات',
			'profile.updatedSuccessfully' => 'تم تحديث الملف الشخصي بنجاح!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'الهدف اليومي',
			'profile.calculatedValues.calPerDay' => 'سعر/يوم',
			'profile.calculatedValues.notAvailable' => 'غير متوفر',
			'healthScore.title' => 'مؤشر الصحة',
			'healthScore.whyThisScore' => 'لماذا هذا المؤشر؟',
			'healthScore.note' => 'هذا المؤشر تقديري بالـ AI استنادًا إلى المكونات المكتشفة والكثافة الغذائية. راجع مختصًا للحصول على نصائح غذائية شخصية.',
			'healthScore.unhealthy' => 'غير صحي',
			'healthScore.healthy' => 'صحي',
			'healthScore.neutral' => 'محايد',
			'editProfile.title' => 'تعديل الملف الشخصي',
			'editProfile.sections.personalInformation' => 'معلومات شخصية',
			'editProfile.sections.physicalMeasurements' => 'القياسات البدنية',
			'editProfile.sections.goalsAndActivity' => 'الأهداف والنشاط',
			'editProfile.gender' => 'الجنس',
			'editProfile.dateOfBirth' => 'تاريخ الميلاد',
			'editProfile.height' => 'الطول',
			'editProfile.weight' => 'الوزن',
			'editProfile.weightGoal' => 'هدف الوزن',
			'editProfile.activityLevel' => 'مستوى النشاط',
			'editProfile.metric' => 'متري',
			'editProfile.imperial' => 'إمبراطوري',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'متري (cm)',
			'editProfile.imperialFtIn' => 'إمبراطوري (ft/in)',
			'editProfile.metricKg' => 'متري (kg)',
			'editProfile.imperialLbs' => 'إمبراطوري (lbs)',
			'editProfile.genders.male' => 'ذكر',
			'editProfile.genders.female' => 'أنثى',
			'editProfile.genders.other' => 'آخر',
			'editProfile.weightGoals.loseWeight.name' => 'فقدان الوزن',
			'editProfile.weightGoals.loseWeight.description' => 'إنشاء عجز سعري لفقدان الوزن',
			'editProfile.weightGoals.maintainWeight.name' => 'الحفاظ على الوزن',
			'editProfile.weightGoals.maintainWeight.description' => 'الحفاظ على وزنك الحالي',
			'editProfile.weightGoals.gainWeight.name' => 'زيادة الوزن',
			'editProfile.weightGoals.gainWeight.description' => 'إنشاء فائض سعري لزيادة الوزن',
			'editProfile.activityLevels.sedentary.name' => 'خالٍ من النشاط',
			'editProfile.activityLevels.sedentary.description' => 'قليل أو دون ممارسة',
			'editProfile.activityLevels.lightlyActive.name' => 'نشاط خفيف',
			'editProfile.activityLevels.lightlyActive.description' => 'تمارين خفيفة 1-3 أيام/أسبوع',
			'editProfile.activityLevels.moderatelyActive.name' => 'نشاط متوسط',
			'editProfile.activityLevels.moderatelyActive.description' => 'تمارين متوسطة 3-5 أيام/أسبوع',
			'editProfile.activityLevels.veryActive.name' => 'نشاط عالي',
			'editProfile.activityLevels.veryActive.description' => 'تمارين شاقة 6-7 أيام/أسبوع',
			'editProfile.activityLevels.extremelyActive.name' => 'نشاط شديد جدًا',
			'editProfile.activityLevels.extremelyActive.description' => 'مجهود بدني كبير أو عمل بدني',
			'settings.title' => 'الإعدادات',
			'settings.sections.profile' => 'الملف',
			'settings.sections.localization' => 'اللغة',
			'settings.sections.notifications' => 'الإشعارات',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'الدعم والقانونية',
			'settings.sections.about' => 'حول',
			'settings.sections.dangerZone' => 'منطقة الخطر',
			'settings.sections.developer' => 'المطور',
			'settings.editProfile.title' => 'تعديل الملف الشخصي',
			'settings.editProfile.subtitle' => 'حدّث معلوماتك الشخصية',
			'settings.language.title' => 'اللغة',
			'settings.language.subtitle' => 'اختر لغتك المفضلة',
			'settings.language.searchHint' => 'ابحث عن اللغات...',
			'settings.language.noResults' => 'لم يتم العثور على نتائج',
			'settings.heightUnit.title' => 'وحدة الطول',
			'settings.weightUnit.title' => 'وحدة الوزن',
			'settings.mealReminders.title' => 'تذكيرات الوجبات',
			'settings.mealReminders.subtitle' => 'ابقَ على الطريق مع تنبيهات في الوقت المناسب',
			'settings.theme.title' => 'المظهر',
			'settings.theme.light' => 'فاتح',
			'settings.theme.dark' => 'داكن',
			'settings.theme.system' => 'نظام',
			'settings.sendFeedback.title' => 'إرسال ملاحظات',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'ساعدنا في تحسين ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'ملاحظات تطبيق ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'يرجى كتابة ملاحظاتك أدناه:',
			'settings.sendFeedback.appVersion' => 'إصدار التطبيق',
			'settings.sendFeedback.device' => 'الجهاز',
			'settings.sendFeedback.osVersion' => 'إصدار النظام',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'تصدير سجل الوجبات',
			'settings.exportMealHistory.subtitle' => 'مشاركة CSV من وجباتك المسجلة',
			'settings.exportMealHistory.shareText' => 'تصدير سجل وجبات Calorify الخاص بك',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'تعذّر تصدير سجل الوجبات: ${error}',
			'settings.clearAllData.title' => 'مسح جميع البيانات',
			'settings.clearAllData.subtitle' => 'حذف جميع معلوماتك بشكل لا رجعة فيه',
			'settings.clearAllData.confirmationTitle' => 'مسح جميع البيانات؟',
			'settings.clearAllData.confirmationMessage' => 'لا يمكن التراجع عن هذا الإجراء. سيتم حذف جميع وجباتك المسجلة والمفضلات وإعدادات الملف الشخصي بشكل دائم.',
			'settings.clearAllData.cancel' => 'إلغاء',
			'settings.clearAllData.clearEverything' => 'امسح الكل',
			'settings.debugOptions.title' => 'خيارات التصحيح',
			'settings.developerModeEnabled' => 'تم تفعيل وضع المطور!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'عرض وإدارة الأذونات',
			'settings.healthConnect.unavailable.title' => 'Health Connect غير متاح',
			'settings.healthConnect.unavailable.description' => 'Health Connect غير متاح على هذا الجهاز. يرجى تثبيت Health Connect من Play Store (Android 9+) أو التحديث إلى Android 14+.',
			'settings.healthConnect.permissions.title' => 'الأذونات',
			'settings.healthConnect.permissions.description' => 'يُطلب الأذونات التالية لتوفير تكامل Health Connect:',
			'settings.healthConnect.permissions.granted' => 'ممنوح',
			'settings.healthConnect.permissions.notGranted' => 'لم يُمنَح',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'قراءة إجمالي السعرات المحروقة',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'يسمح للتطبيق بقراءة إجمالي السعرات المحروقة من Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'يُستخدم هذا الإذن لعرض حرق السعرات اليومي في التطبيق، مما يساعدك على فهم إجمالي إنفاق الطاقة خلال اليوم.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'قراءة بيانات التغذية',
			'settings.healthConnect.permissions.nutritionRead.description' => 'يسمح للتطبيق بقراءة بيانات التغذية من Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'يتيح هذا الإذن للتطبيق قراءة معلومات التغذية التي قد سجّلها تطبيقات أخرى متصلة بـ Health Connect، مما يوفر رؤية شاملة لتغذيتك.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'كتابة بيانات التغذية',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'يسمح للتطبيق بكتابة بيانات التغذية إلى Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'يتيح هذا الإذن للتطبيق مزامنة وجباتك المسجلة إلى Health Connect، مما يجعل بيانات تغذيتك متاحة لتطبيقات الصحة واللياقة الأخرى التي تستخدمها.',
			'settings.healthConnect.managePermissions' => 'إدارة الأذونات',
			'settings.healthConnect.openSettings' => 'فتح إعدادات Health Connect',
			'settings.healthConnect.requestPermissions' => 'طلب الأذونات',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'تم إلغاء طلب الإذن أو فشل. يرجى المحاولة مرة أخرى أو منح الأذونات يدويًا من إعدادات Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'تعذّر طلب الأذونات. حاول مرة أخرى أو امنح الأذونات يدويًا من إعدادات Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'جارٍ طلب الأذونات...',
			'settings.about.title' => 'حول',
			'settings.about.tagline' => 'سريع، مجاني، ويعطي الأولوية للخصوصية',
			'settings.about.ourStory.title' => 'قصتنا',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} وُلد من إحباط بسيط: معظم تطبيقات تتبّع السعرات إما معقّدة جدًا، تطلب إدخالًا يدويًا مستمرًا، تفرض اشتراكات باهظة، أو تُفرط في خصوصيتك.\n\nكمطور منفرد، أردت بناء شيء أبسط وأكثر عدلاً — تطبيق يستخدم AI لتقليل الجهد، يبقى سريعًا ومجانيًا للاستخدام، ويتعامل مع بياناتك الصحية باحترام.\n\n${appLabel} هو التطبيق الذي كنت أتمنى وجوده: لا حسابات، لا تتبع، لا إعلانات — مجرد رؤى واضحة وعملية وأهدافك الصحية.',
			'settings.about.privacy.title' => 'خصوصيتك تهمنا',
			'settings.about.privacy.description' => 'الخصوصية ليست فكرة لاحقة — إنها مبدأ تصميم. هذا ما يعنيه ذلك عمليًا:',
			'settings.about.privacy.noAccounts' => 'لا حاجة لحسابات\nاستخدم التطبيق فورًا. لا تسجيل، لا هويات.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'لا تتبّع سلوكي\n${appLabel} لا يراقب نشاطك، ولا يُكوّن ملفات استخدام، ولا يتتبّعك عبر التطبيقات أو المواقع.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'خالي من الإعلانات بطبيعته\n${appLabel} مصمم للعمل بدون إعلانات أو تحقيق ربح عبر بيانات المستخدم.',
			'settings.about.privacy.noDataSelling' => 'لا بيع للبيانات\nلا تُباع أو تُشارك بياناتك الصحية مع أطراف ثالثة.',
			'settings.about.privacy.localStorage' => 'تخزين محلي أولًا\nتظل بياناتك على جهازك.',
			'settings.about.privacy.privacyPolicy' => 'سياسة الخصوصية',
			'settings.about.developer.title' => 'بُني بواسطة مطور منفرد',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} يتم بناؤه وصيانته بواسطة مطور منفرد يركز على إنشاء برامج صحية هادئة ومحترمة للخصوصية.\n\nتُقرأ الملاحظات شخصيًا وتساعد في تشكيل اتجاه التطبيق.',
			'settings.about.developer.website' => 'الموقع الإلكتروني',
			'settings.about.developer.email' => 'البريد الإلكتروني',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'هل تستمتع بـ ${appLabel}؟',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'ملاحظاتك تساعد في جعل ${appLabel} أفضل للجميع.',
			'settings.about.feedback.rateApp' => 'قيّم على Play Store',
			'settings.about.feedback.sendFeedback' => 'أرسل ملاحظات',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'بناء ${buildNumber}',
			'reminders.title' => 'ابقَ على المسار بالتذكيرات',
			'reminders.description' => 'تلقي تذكيرات لطيفة لتسجيل وجباتك والبقاء متسقًا مع أهدافك الغذائية',
			'reminders.notificationsEnabled' => 'تم تفعيل الإشعارات',
			'reminders.notificationsDisabled' => 'تم تعطيل الإشعارات',
			'reminders.enabledSubtitle' => 'ستتلقى تذكيرات بالوجبات',
			'reminders.disabledSubtitle' => 'فعّل الإشعارات للحصول على تذكيرات بالوجبات',
			'reminders.mealReminders' => 'تذكيرات الوجبات',
			'reminders.breakfast' => 'الإفطار',
			'reminders.lunch' => 'الغداء',
			'reminders.dinner' => 'العشاء',
			'reminders.snack' => 'وجبة خفيفة',
			'reminders.unknown' => 'غير معروف',
			'reminders.change' => 'تغيير',
			'reminders.enableNotifications' => 'تفعيل الإشعارات',
			'reminders.skipForNow' => 'تخطٍّ الآن',
			'reminders.saveChanges' => 'حفظ التغييرات',
			'reminders.enabledSuccessfully' => 'تم تفعيل الإشعارات بنجاح!',
			'reminders.permissionDenied' => 'تم رفض إذن الإشعارات',
			'reminders.errorEnabling' => ({required Object error}) => 'خطأ عند تفعيل الإشعارات: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'خطأ في إكمال الإعداد: ${error}',
			'notifications.breakfast.title' => 'حان وقت الإفطار! 🍳',
			'notifications.breakfast.body' => 'لا تنسَ تسجيل إفطارك',
			'notifications.lunch.title' => 'حان وقت الغداء! 🥗',
			'notifications.lunch.body' => 'حان وقت تسجيل غدائك',
			'notifications.dinner.title' => 'حان وقت العشاء! 🍽️',
			'notifications.dinner.body' => 'لا تنسَ تسجيل عشاءك',
			'notifications.snack.title' => 'حان وقت الوجبة الخفيفة! 🍎',
			'notifications.snack.body' => 'حان وقت وجبة خفيفة صحية',
			'notifications.test.title' => 'إشعار تجريبي',
			'login.title' => 'تسجيل الدخول',
			'login.signInWithGoogle' => 'تسجيل الدخول عبر Google',
			'login.signInFailed' => 'فشل تسجيل الدخول عبر Google أو تم الإلغاء.',
			'disclaimer.pleaseNote' => 'يرجى الملاحظة',
			'disclaimer.snap.description' => ({required Object appLabel}) => 'يوفر ${appLabel} معلومات غذائية تقديرية. تعتمد الدقة على مدخلاتك واختلافات الطعام. استخدمها كدليل وليس كمصدر نهائي. استشر مختصًا للحصول على نصائح غذائية شخصية.',
			'disclaimer.snap.portionSize.title' => 'حجم الحصة',
			'disclaimer.snap.portionSize.description' => 'تعتمد دقة التقديرات بشكل كبير على تقييمك الصحيح لحجم الحصة.',
			'disclaimer.snap.preparationMethods.title' => 'طرق التحضير',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'يمكن لطرق الطهي أن تغيّر محتوى الغذاء بشكل كبير. قد لا تأخذ تقديرات ${appLabel} هذه الاختلافات في الحسبان دائمًا.',
			'disclaimer.snap.ingredients.title' => 'المكونات',
			'disclaimer.snap.ingredients.description' => 'الأطباق المعقدة ذات المكونات المخفية قد تؤدي إلى تقديرات أقل دقة.',
			'disclaimer.snap.databaseLimitations.title' => 'حدود قاعدة البيانات',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'قاعدة بيانات الأطعمة لدى ${appLabel} واسعة لكنها قد لا تتضمن كل صنف طعام أو اختلاف.',
			'disclaimer.weightEstimate.title' => 'حول تقدير الوزن',
			'disclaimer.weightEstimate.description' => 'التغير المتوقع في الوزن هو تقدير نظري مبني على نموذج بسيط للسعرات الداخلة مقابل الخارجة. المقصود به توجيه تحفيزي فقط، وليس توقعًا لوزنك الفعلي.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'دقة السعرات',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'تعتمد هذه التقديرات على دقة تسجيلك لاستهلاك وحرق السعرات. التسجيل غير الدقيق سيؤدي إلى توقعات غير دقيقة.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'العوامل البيولوجية',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'يتأثر فقدان/كتساب الوزن فعليًا بالأيض والهرمونات والنوم والتوتر والترطيب وعوامل فردية أخرى لا يستطيع ${appLabel} قياسها.',
			'disclaimer.weightEstimate.waterWeight.title' => 'وزن الماء والتقلبات',
			'disclaimer.weightEstimate.waterWeight.description' => 'يمكن أن يتقلب الوزن اليومي بشكل كبير بسبب احتباس الماء والهضم والتوقيت. لا يأخذ التقدير هذه التغيرات اليومية بعين الاعتبار.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'إرشاد مهني',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'لا تستخدم هذا التقدير لاتخاذ قرارات طبية. استشر دائمًا مختص رعاية صحية أو أخصائي تغذية مسجل لإدارة الوزن بشكل شخصي.',
			'disclaimer.healthMetrics.description' => 'تساعدك هذه المقاييس على فهم احتياجات جسمك من الطاقة وتوجيه أهدافك الغذائية.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'معدل الأيض الأساسي (BMR) هو عدد السعرات التي يحرقها جسمك أثناء الراحة للحفاظ على وظائفه الأساسية مثل التنفس والدورة الدموية. يعتمد BMR على عمرك وجنسك وطولك ووزنك. يشير BMR الأعلى إلى أن الجسم يحرق سعرات أكثر في الراحة، غالبًا نتيجة وجود كتلة عضلية أكبر أو صغر السن أو كونه ذكرًا. يشير BMR الأقل عادةً إلى كتلة عضلية أقل أو تقدم في العمر أو كونه أنثى.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'إجمالي الإنفاق اليومي للطاقة (TDEE) هو إجمالي السعرات التي تحرقها يوميًا، ويشمل BMR بالإضافة إلى السعرات الناتجة عن النشاط البدني والحركة اليومية. يعتمد TDEE على BMR ومستوى النشاط. يشير TDEE الأعلى إلى أنك تحرق سعرات أكثر عمومًا، عادةً بسبب النشاط الأكبر أو BMR أعلى. يشير TDEE الأقل إلى نشاط يومي أقل أو BMR أدنى.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'الهدف اليومي',
			'disclaimer.healthMetrics.dailyGoal.description' => 'الهدف اليومي هو كمية السعرات الموصى بها يوميًا بناءً على TDEE وهدف الوزن. لفقدان الوزن تستهلك سعرات أقل من TDEE. للحفاظ على الوزن تطابق TDEE. لزيادة الوزن تستهلك سعرات أكثر من TDEE. هذا يساعدك على الوصول للتغير المطلوب بوتيرة صحية.',
			'disclaimer.calorieExpenditure.title' => 'تقدير إنفاق السعرات',
			'disclaimer.calorieExpenditure.description' => 'عندما تتعذّر بيانات Health Connect، نقدر سعرات اليوم المحروقة باستخدام معدل الأيض الأساسي (BMR) ومستوى النشاط (TDEE)، مع تعديل بالنسبة لجزء اليوم الذي مضى.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'كيف يُحسب التقدير',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'نحسب TDEE (بناءً على ملفك) ونضربه في نسبة اليوم المنقضي (الساعات + الدقائق) / 24 لتقدير السعرات المحروقة حتى الآن.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'إرشاد مهني',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'لا تستخدم هذا التقدير لاتخاذ قرارات طبية. استشر دائمًا مختص رعاية صحية أو أخصائي تغذية مسجل لإدارة الوزن بشكل شخصي.',
			'common.close' => 'إغلاق',
			'common.kContinue' => 'استمر',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'هل تستمتع بـ ${appLabel}؟',
			'feedbackRating.yes' => 'نعم، أستمتع به',
			'feedbackRating.no' => 'ليس حقًا',
			'feedbackRating.rateStepHeading' => 'قيّم على Play Store',
			'feedbackRating.emailStepHeading' => 'أرسل ملاحظات عبر البريد الإلكتروني',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'تقييم سريع يساعد الآخرين في العثور على ${appLabel} ويُبقي التطوير مستمرًا. هل تأخذ لحظة لتقييمه؟',
			'feedbackRating.shareFeedbackViaEmail' => 'ملاحظاتك تشكّل القادم — نقرأ كل رسالة. هل تود مشاركة أفكارك عبر البريد الإلكتروني؟',
			'feedbackRating.rateCta' => 'قيّم على Play Store',
			'feedbackRating.maybeLater' => 'ربما لاحقًا',
			'feedbackRating.sendFeedback' => 'أرسل ملاحظات',
			'feedbackRating.noThanks' => 'لا شكرًا',
			'feedbackRating.aboutUsDescription' => 'مصنوع بعناية من فريق صغير. نركز على الخصوصية والبساطة ومساعدتك على بناء عادات غذائية أفضل.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'هل تود معرفة من وراء ${appLabel}؟ اطلع على ',
			'feedbackRating.aboutUsLinkLabel' => 'من نحن',
			'feedbackRating.thankYouMessage' => 'شكرًا! سنطلب منك مرة أخرى في وقت لاحق.',
			'health.syncFailed' => 'تعذّر المزامنة مع Health Connect',
			'health.mealSynced' => 'تمت مزامنة الوجبة مع Health Connect',
			_ => null,
		};
	}
}
