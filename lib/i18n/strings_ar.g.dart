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
	@override String get language => 'Arabic';
	@override String get flag => '🇸🇩';
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
	@override late final _TranslationsErrorsAr errors = _TranslationsErrorsAr._(_root);
	@override late final _TranslationsDebugAr debug = _TranslationsDebugAr._(_root);
	@override late final _TranslationsHealthAr health = _TranslationsHealthAr._(_root);
}

// Path: onboarding
class _TranslationsOnboardingAr implements TranslationsOnboardingEn {
	_TranslationsOnboardingAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'مرحبًا بك في كالرِفاي';
	@override String get subtitle => 'رفيقك الشخصي في التغذية المدعوم بالذكاء الاصطناعي';
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
	@override String get emptyMessage => 'التقط صورة لوجبتك الأخيرة لتسجيلها هنا.';
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
	@override String get editMeal => 'تحرير الوجبة';
	@override String get addMeal => 'إضافة وجبة';
	@override String get saveMeal => 'حفظ الوجبة';
	@override String get save => 'حفظ';
	@override String get mealName => 'اسم الوجبة';
	@override String get mealQuantity => 'كمية الوجبة';
	@override String get mealQuantityHint => 'مثل، 1 وعاء، 2 شريحة';
	@override String get timeOfMeal => 'وقت الوجبة';
	@override String get timeOfMealHint => 'اختر الوقت الذي تناولت فيه وجبتك';
	@override String get mealType => 'نوع الوجبة';
	@override late final _TranslationsMealNutritionAr nutrition = _TranslationsMealNutritionAr._(_root);
	@override late final _TranslationsMealDeleteConfirmationAr deleteConfirmation = _TranslationsMealDeleteConfirmationAr._(_root);
	@override String get addedToLog => 'تمت إضافة الوجبة إلى سجلك!';
	@override String couldNotAdd({required Object error}) => 'لم يتمكن من إضافة الوجبة: ${error}';
	@override String get removedFromFavorites => 'تمت إزالة من المفضلات!';
	@override String get savedAsFavorite => 'تم حفظ الوجبة كمفضلة!';
	@override String couldNotUpdateFavorite({required Object error}) => 'لم يتمكن من تحديث المفضلة: ${error}';
	@override String failedToProcess({required Object error}) => 'فشل في المعالجة: ${error}';
	@override String failedToProcessImage({required Object error}) => 'فشل في معالجة الصورة: ${error}';
	@override String errorCompressingImage({required Object error}) => 'خطأ في ضغط الصورة: ${error}';
	@override String get failedToSave => 'فشل في حفظ البيانات. يرجى المحاولة مرة أخرى.';
}

// Path: favorites
class _TranslationsFavoritesAr implements TranslationsFavoritesEn {
	_TranslationsFavoritesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'المفضلات';
	@override String get empty => 'لا توجد وجبات مفضلة بعد.';
}

// Path: profile
class _TranslationsProfileAr implements TranslationsProfileEn {
	_TranslationsProfileAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الملف الشخصي';
	@override String get noProfileData => 'لا توجد بيانات للملف الشخصي';
	@override String get yourProfile => 'ملفك الشخصي';
	@override String get viewAndManage => 'عرض وإدارة معلومات صحتك';
	@override late final _TranslationsProfileSectionsAr sections = _TranslationsProfileSectionsAr._(_root);
	@override String get gender => 'الجنس';
	@override String get height => 'الطول';
	@override String get weight => 'الوزن';
	@override String get age => 'العمر';
	@override String get weightGoal => 'هدف الوزن';
	@override String get activityLevel => 'مستوى النشاط';
	@override String get healthMetrics => 'مقاييس الصحة';
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
	@override String get title => 'نقطة الصحة';
	@override String get whyThisScore => 'لماذا هذه النتيجة؟';
	@override String get note => 'تعتبر هذه النقطة تقديرًا مقدّمًا من الذكاء الاصطناعي استنادًا إلى المكونات المعروفة والكثافة الغذائية. استشر دائمًا محترفًا للحصول على نصائح غذائية.';
	@override String get unhealthy => 'غير صحي';
	@override String get healthy => 'صحي';
	@override String get neutral => 'محايد';
}

// Path: editProfile
class _TranslationsEditProfileAr implements TranslationsEditProfileEn {
	_TranslationsEditProfileAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تحرير الملف الشخصي';
	@override late final _TranslationsEditProfileSectionsAr sections = _TranslationsEditProfileSectionsAr._(_root);
	@override String get gender => 'الجنس';
	@override String get dateOfBirth => 'تاريخ الميلاد';
	@override String get height => 'الطول';
	@override String get weight => 'الوزن';
	@override String get weightGoal => 'هدف الوزن';
	@override String get activityLevel => 'مستوى النشاط';
	@override String get metric => 'نظام القياس المتري';
	@override String get imperial => 'نظام القياس الإمبراطوري';
	@override String get metricCm => 'متري (سم)';
	@override String get imperialFtIn => 'إمبراطوري (قدم/إنش)';
	@override String get metricKg => 'متري (كجم)';
	@override String get imperialLbs => 'إمبراطوري (رطل)';
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
	@override late final _TranslationsSettingsThemeAr theme = _TranslationsSettingsThemeAr._(_root);
	@override late final _TranslationsSettingsMealRemindersAr mealReminders = _TranslationsSettingsMealRemindersAr._(_root);
	@override late final _TranslationsSettingsSendFeedbackAr sendFeedback = _TranslationsSettingsSendFeedbackAr._(_root);
	@override late final _TranslationsSettingsClearAllDataAr clearAllData = _TranslationsSettingsClearAllDataAr._(_root);
	@override late final _TranslationsSettingsDebugOptionsAr debugOptions = _TranslationsSettingsDebugOptionsAr._(_root);
	@override String get developerModeEnabled => 'تم تفعيل وضع المطور!';
}

// Path: reminders
class _TranslationsRemindersAr implements TranslationsRemindersEn {
	_TranslationsRemindersAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ابقَ على المسار الصحيح مع التذكيرات';
	@override String get description => 'احصل على تذكيرات لطيفة لتسجيل وجباتك والبقاء متسقًا مع أهداف التغذية الخاصة بك';
	@override String get notificationsEnabled => 'الإشعارات مفعلة';
	@override String get notificationsDisabled => 'الإشعارات معطلة';
	@override String get enabledSubtitle => 'ستتلقى تذكيرات بالوجبات';
	@override String get disabledSubtitle => 'قم بتمكين الإشعارات للحصول على تذكيرات بالوجبات';
	@override String get mealReminders => 'تذكيرات الوجبات';
	@override String get breakfast => 'إفطار';
	@override String get lunch => 'غداء';
	@override String get dinner => 'عشاء';
	@override String get snack => 'وجبة خفيفة';
	@override String get unknown => 'غير معروف';
	@override String get change => 'تغيير';
	@override String get enableNotifications => 'تفعيل الإشعارات';
	@override String get skipForNow => 'تخطى في الوقت الحالي';
	@override String get saveChanges => 'احفظ التغييرات';
	@override String get enabledSuccessfully => 'تفعيل الإشعارات بنجاح!';
	@override String get permissionDenied => 'تم رفض إذن الإشعارات';
	@override String errorEnabling({required Object error}) => 'خطأ في تفعيل الإشعارات: ${error}';
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
	@override String get signInWithGoogle => 'تسجيل الدخول باستخدام جوجل';
	@override String get signInFailed => 'فشل تسجيل الدخول باستخدام جوجل أو تم إلغاؤه.';
}

// Path: disclaimer
class _TranslationsDisclaimerAr implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'يرجى ملاحظة';
	@override late final _TranslationsDisclaimerSnapAr snap = _TranslationsDisclaimerSnapAr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateAr weightEstimate = _TranslationsDisclaimerWeightEstimateAr._(_root);
}

// Path: common
class _TranslationsCommonAr implements TranslationsCommonEn {
	_TranslationsCommonAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get close => 'إغلاق';
	@override String get kContinue => 'متابعة';
}

// Path: errors
class _TranslationsErrorsAr implements TranslationsErrorsEn {
	_TranslationsErrorsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'حدث خطأ في تحميل بيانات الملف الشخصي';
	@override String get somethingWentWrong => 'حدث خطأ ما.';
}

// Path: debug
class _TranslationsDebugAr implements TranslationsDebugEn {
	_TranslationsDebugAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'خيارات التصحيح';
	@override late final _TranslationsDebugSectionsAr sections = _TranslationsDebugSectionsAr._(_root);
	@override String get showActiveNotifications => 'عرض الإشعارات النشطة';
	@override String get scheduleTestNotification => 'جدولة إشعار اختبار (10 ثوانٍ)';
	@override String get triggerBreakfastNotification => 'تنشيط إشعار الإفطار';
	@override String get cancelAllNotifications => 'إلغاء جميع الإشعارات';
	@override String get activeNotifications => 'الإشعارات النشطة';
	@override String get noTitle => 'لا عنوان';
	@override String get noBody => 'لا محتوى';
	@override String get fetchTodaysSteps => 'جلب خطوات اليوم';
	@override String get fetchTodaysCalories => 'جلب سعرات اليوم';
	@override String get fetchLatestWeight => 'جلب الوزن الأحدث';
	@override String get fetchLatestHeight => 'جلب الطول الأحدث';
	@override String get writeTestWeight => 'تسجيل وزن الاختبار (70كجم)';
	@override String get writeTestHeight => 'تسجيل طول الاختبار (175سم)';
	@override String get syncLast7Days => 'مزامنة آخر 7 أيام';
	@override String get sync7DaysTitle => 'مزامنة 7 أيام';
	@override String get checkCurrentLocale => 'التحقق من الإعدادات المحلية الحالية';
	@override String get currentLocale => 'الإعدادات المحلية الحالية';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'اللغة: ${languageCode}\nالبلد: ${countryCode}\nنظام القياس: ${unitSystem}';
	@override String get latestWeight => 'أحدث وزن';
	@override String get latestHeight => 'أحدث طول';
	@override String get todaysCalories => 'سعرات اليوم';
	@override String totalCaloriesBurned({required Object calories}) => 'إجمالي السعرات المحروقة: ${calories}';
	@override String syncSuccess({required Object count}) => 'تم جلب ${count} نقطة بيانات بنجاح لخطوات، وسعرات، ووزن آخر 7 أيام.';
	@override String get noWeightData => 'لا توجد بيانات وزن موجودة في آخر 30 يومًا.';
	@override String get noHeightData => 'لا توجد بيانات طول موجودة في العام الماضي.';
	@override String get noCalorieData => 'لا توجد بيانات سعرات غذائية موجودة لهذا اليوم.';
	@override String get weightWritten => 'تم تسجيل الوزن الاختباري بنجاح (70كجم).';
	@override String get weightWriteFailed => 'فشل في تسجيل الوزن الاختباري.';
	@override String get heightWritten => 'تم تسجيل الطول الاختباري بنجاح (175سم).';
	@override String get heightWriteFailed => 'فشل في تسجيل الطول الاختباري.';
	@override String get noNotifications => 'لا توجد إشعارات نشطة.';
	@override String get testNotificationScheduled => 'تم جدولة إشعار اختبار لمدة 10 ثوانٍ من الآن.';
	@override String get testNotificationBody => 'هذا إشعار اختبار تم جدولة لمدة 10 ثوانٍ من الآن.';
	@override String get breakfastNotificationTriggered => 'تم تفعيل إشعار الإفطار.';
	@override String get allNotificationsCancelled => 'تم إلغاء جميع الإشعارات.';
	@override String get fetchingData => 'جارٍ جلب البيانات لآخر 7 أيام...';
	@override String id({required Object id}) => 'المعرف: ${id}';
}

// Path: health
class _TranslationsHealthAr implements TranslationsHealthEn {
	_TranslationsHealthAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'لم يتمكن من المزامنة مع تطبيق Health Connect';
	@override String get mealSynced => 'تمت مزامنة الوجبة مع تطبيق Health Connect';
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
	@override String get title => 'ما هو جنسك؟';
	@override String get description => 'يساعدنا الجنس في حساب معدل الأيض الأساسي (BMR) بدقة.';
	@override String get next => 'التالي';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightAr implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما طولك؟';
	@override String get description => 'طولك يساعدنا في حساب مؤشر كتلة الجسم (BMI) واحتياجات الطاقة بدقة.';
	@override String get metric => 'متري';
	@override String get imperial => 'إمبراطوري';
	@override String get next => 'التالي';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightAr implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'ما هو وزنك الحالي؟';
	@override String get currentDescription => 'وزنك الحالي أساسي لتخصيص أهدافك اليومية.';
	@override String get targetTitle => 'ما هو وزنك المستهدف؟';
	@override String get targetDescription => 'تحديد وزن مستهدف يساعدنا في تحديد خطتك طويلة الأمد.';
	@override String get metric => 'متري';
	@override String get imperial => 'إمبراطوري';
	@override String get next => 'التالي';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeAr implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'متى عيد ميلادك؟';
	@override String get description => 'يساعدنا عمرك في حساب احتياجاتك من السعرات الحرارية بدقة.';
	@override String get next => 'التالي';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleAr implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'نقص الوزن';
	@override String get healthy => 'وزن صحي';
	@override String get overweight => 'زيادة الوزن';
	@override String get obese => 'بدانة';
	@override late final _TranslationsOnboardingBmiScaleCategoriesAr categories = _TranslationsOnboardingBmiScaleCategoriesAr._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesAr messages = _TranslationsOnboardingBmiScaleMessagesAr._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalAr implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما هدفك؟';
	@override String get description => 'اختر الهدف الذي يصف بشكل أفضل ما تريد تحقيقه';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelAr implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما مدى نشاطك؟';
	@override String get description => 'يساعدنا هذا في حساب احتياجاتك اليومية من السعرات الحرارية بدقة أكبر';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectAr implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اتصل بتطبيق Health Connect';
	@override String get description => 'زامن بيانات صحتك للحصول على رؤى أفضل وتسجيل السعرات الحرارية تلقائيًا';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingAr automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingAr._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsAr progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsAr._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationAr seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationAr._(_root);
	@override String get connected => 'تم الاتصال بتطبيق Health Connect';
	@override String get notConnected => 'لم يتم الاتصال بتطبيق Health Connect';
	@override String get setup => 'إعداد تطبيق Health Connect';
	@override String get skipForNow => 'تخطى في الوقت الحالي';
	@override String get statusConnected => 'تم الاتصال بتطبيق Health Connect.';
	@override String get statusSuccess => 'تم الاتصال بتطبيق Health Connect بنجاح!';
	@override String get statusPermissionDenied => 'تم رفض الإذن. يرجى تفعيل أذونات Health Connect من إعدادات هاتفك لتطبيق كالرِفاي.';
	@override String statusError({required Object error}) => 'خطأ في إعداد تطبيق Health Connect: ${error}';
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

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalAr implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حدد هدفك اليومي';
	@override String get titleSet => 'هدفك اليومي';
	@override String get description => 'هل أنت مستعد للبدء في رحلة العافية الخاصة بك؟ حدد هدف السعرات الحرارية اليومي أدناه لبدء تقدمك.';
	@override String get descriptionSet => 'لقد تم تحديد بوصلتك! هذا هو هدف السعرات الحرارية اليومية الخاصة بك لتوجيهك.';
	@override String get yourGoal => 'هدفك';
	@override String get dailyCalories => 'السعرات اليومية (كالوري)';
	@override String get setGoal => 'حدد الهدف';
	@override String get intake => 'الاستهلاك';
	@override String get burned => 'المحروقة';
	@override String get weightImpact => 'تأثير الوزن';
	@override String get estLoss => 'الخسارة المقدرة لـ';
	@override String get estGain => 'الاكتساب المقدر لـ';
	@override String get kcal => 'كالوري';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryAr implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ملخص يومي';
	@override String get calories => 'السعرات';
	@override String get carbs => 'الكربوهيدرات';
	@override String get protein => 'البروتين';
	@override String get fat => 'الدهون';
	@override String get fiber => 'الألياف';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressAr implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تقسيم المغذيات اليوم';
	@override String get target => 'الهدف';
	@override String get current => 'الحالي';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryAr implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تاريخ المغذيات لمدة 7 أيام';
	@override String get noHistoryYet => 'لا توجد تاريخ بعد';
	@override String get startLogging => 'ابدأ تسجيل الوجبات لرؤية اتجاهات المغذيات لمدة 7 أيام هنا';
}

// Path: home.mealLog
class _TranslationsHomeMealLogAr implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الوجبات المسجلة';
	@override String get emptyMessage => 'التقط صورة لوجبتك الأخيرة لتسجيلها هنا.';
	@override String get noMealsToday => 'لا توجد وجبات مسجلة اليوم';
	@override String get seeAllMeals => 'شاهد جميع الوجبات';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionAr implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إضافة سريعة باستخدام الذكاء الاصطناعي';
	@override String get description => 'وصف وجبتك، ودع الذكاء الاصطناعي يتولى التفاصيل.';
	@override String get hint => 'على سبيل المثال، الإفطار: وعاء كبير من الشوفان مع موزة مقطعة وحصة من بروتين مصل اللبن...';
	@override String get analyzeMeal => 'تحليل الوجبة';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsAr implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الوجبات المفضلة';
	@override String get description => 'أضف بسرعة واحدة من وجباتك المفضلة.';
	@override String get noFavorites => 'لا توجد وجبات مفضلة بعد.';
	@override String get addFavoriteHint => 'اضغط على النجم لتصنيف الوجبة كمفضلة.';
	@override String get seeAll => 'شاهد الجميع';
	@override String get add => 'إضافة';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapAr implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'التقط وتتبع وجبتك';
	@override String get description => 'استخدم الكاميرا لالتقاط صورة لطعامك من أجل تحليل الذكاء الاصطناعي.';
	@override String get openCamera => 'فتح الكاميرا';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthAr implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'زامن مع تطبيق Health Connect';
	@override String get description => 'زامن بيانات التغذية الخاصة بك مع تطبيق Health Connect';
	@override String get install => 'تثبيت';
	@override String get connect => 'اتصل';
}

// Path: meal.nutrition
class _TranslationsMealNutritionAr implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get calories => 'السعرات';
	@override String get carbs => 'الكربوهيدرات (غ)';
	@override String get protein => 'البروتين (غ)';
	@override String get fat => 'الدهون (غ)';
	@override String get fiber => 'الألياف (غ)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationAr implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حذف الوجبة';
	@override String get message => 'هل أنت متأكد أنك تريد حذف هذا التسجيل للوجبة؟';
	@override String get cancel => 'إلغاء';
	@override String get delete => 'حذف';
}

// Path: profile.sections
class _TranslationsProfileSectionsAr implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'الملف الشخصي';
	@override String get basicInformation => 'معلومات أساسية';
	@override String get goalsAndActivity => 'الأهداف والنشاط';
	@override String get calculatedValues => 'القيم المحسوبة';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesAr implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'معدل الأيض الأساسي';
	@override String get tdee => 'مجموع السعرات الحرارية اليومية';
	@override String get dailyGoal => 'الهدف اليومي';
	@override String get calPerDay => 'كالوري/يوم';
	@override String get notAvailable => 'غير متاح';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsAr implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'المعلومات الشخصية';
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
	@override String get profile => 'الملف الشخصي';
	@override String get localization => 'تحديد الموقع';
	@override String get notifications => 'الإشعارات';
	@override String get supportAndLegal => 'الدعم والقوانين';
	@override String get dangerZone => 'منطقة الخطر';
	@override String get developer => 'المطور';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileAr implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تحرير الملف الشخصي';
	@override String get subtitle => 'قم بتحديث معلوماتك الشخصية';
}

// Path: settings.language
class _TranslationsSettingsLanguageAr implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اللغة';
	@override String get subtitle => 'اختر لغتك المفضلة';
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

// Path: settings.theme
class _TranslationsSettingsThemeAr implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Theme';
	@override String get subtitle => 'Choose your preferred theme';
	@override String get light => 'Light';
	@override String get dark => 'Dark';
	@override String get system => 'System';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersAr implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تذكيرات الوجبات';
	@override String get subtitle => 'ابقَ على المسار الصحيح مع تنبيهات في الوقت المناسب';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackAr implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إرسال ملاحظات';
	@override String get subtitle => 'ساعدنا على تحسين كالرِفاي';
	@override String get emailSubject => 'ملاحظات عن تطبيق كالرِفاي';
	@override String get emailBodyPrefix => 'يرجى تقديم ملاحظاتك أدناه:';
	@override String get appVersion => 'إصدار التطبيق';
	@override String get device => 'الجهاز';
	@override String get osVersion => 'إصدار نظام التشغيل';
	@override String get uid => 'معرف المستخدم';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataAr implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مسح جميع البيانات';
	@override String get subtitle => 'احذف جميع معلوماتك بشكل غير قابل للتراجع';
	@override String get confirmationTitle => 'مسح جميع البيانات؟';
	@override String get confirmationMessage => 'لا يمكن التراجع عن هذا الإجراء. سيتم حذف جميع وجباتك المسجلة، المفضلات، وإعدادات الملف الشخصي بشكل دائم.';
	@override String get cancel => 'إلغاء';
	@override String get clearEverything => 'مسح كل شيء';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsAr implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'خيارات التصحيح';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastAr implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وقت الإفطار! 🍳';
	@override String get body => 'لا تنسَ تسجيل إفطارك';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchAr implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وقت الغداء! 🥗';
	@override String get body => 'حان وقت تسجيل غدائك';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerAr implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وقت العشاء! 🍽️';
	@override String get body => 'لا تنسَ تسجيل عشاءك';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackAr implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وقت الوجبة الخفيفة! 🍎';
	@override String get body => 'حان وقت وجبة خفيفة صحية';
}

// Path: notifications.test
class _TranslationsNotificationsTestAr implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اختبار الإشعار';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapAr implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get description => 'يوفر كالرِفاي معلومات غذائية تقديرية. الدقة تعتمد على مدخلاتك وتباين الأطعمة. استخدم كدليل، وليس كمصدر نهائي. استشر محترفًا للحصول على نصائح غذائية شخصية.';
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
	@override String get description => 'تغيير الوزن المتوقع هو تقدير نظري يعتمد على نموذج السعرات الحرارية المدخلة مقابل السعرات المحروقة. يهدف إلى توجيه تحفيزي فقط، وليس كتنبيه لوزنك الفعلي.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyAr calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyAr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsAr biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsAr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightAr waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightAr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceAr professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceAr._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsAr implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'الإشعارات';
	@override String get healthConnect => 'تطبيق Health Connect';
	@override String get appInfo => 'معلومات التطبيق';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionAr implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تعرف ذكي على الطعام';
	@override String get description => 'التقط صورة ودع الذكاء الاصطناعي يتعرف على وجبتك';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisAr implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تحليل الذكاء الاصطناعي';
	@override String get description => 'احصل على معلومات غذائية فورية من أوصافك';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationAr implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تكامل الصحة';
	@override String get description => 'اتصل بتطبيق Health Connect للحصول على رؤى أفضل';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesAr implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'نقص الوزن';
	@override String get healthyWeight => 'وزن صحي';
	@override String get overweight => 'زيادة الوزن';
	@override String get obese => 'بدانة';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesAr implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'يمكننا مساعدتك في بناء خطة صحية للوصول إلى وزن متوازن مع وجبات غنية بالمغذيات.';
	@override String get healthy => 'عمل رائع! أنت في نطاق صحي. سنساعدك في الحفاظ على حيويتك ومستويات طاقتك.';
	@override String get overweight => 'سيبسط كالرِفاي رحلتك مع تتبع مدعوم بالذكاء الاصطناعي لمساعدتك في الوصول إلى هدفك براحة.';
	@override String get obese => 'نحن هنا لدعمك مع توجيهات مخصصة واستراتيجيات مستدامة لأهداف صحتك.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingAr implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تتبع السعرات الحرارية تلقائيًا';
	@override String get description => 'تتبع السعرات الحرارية المحروقة من التطبيقات الرياضية الخاصة بك';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsAr implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'رؤى التقدم';
	@override String get description => 'احصل على رؤى مفصلة حول اتجاهات صحتك';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationAr implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تكامل سلس';
	@override String get description => 'زامن البيانات من تطبيقات الصحة المفضلة لديك';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessAr implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'لست وحدك';
	@override String get genericMessage => 'تظهر الأبحاث أن التسجيل المستمر هو أفضل مؤشر على النجاح طويل الأمد.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'بالنسبة لشخص ${age} عامًا ${gender} يتطلع إلى ${goal}، فإن التسجيل المستمر هو أفضل مؤشر على النجاح.';
	@override String get closingMessage => 'يجعل كالرِفاي الأمر أسهل بـ 10 مرات من القيام بذلك يدويًا.';
	@override String get getStartedTitle => 'هل أنت مستعد للبدء؟';
	@override String get tipPhoto => 'التقط صورة لوجباتك لتحليل فوري';
	@override String get tipConsistency => 'سجل باستمرار لرؤية تقدم ملحوظ';
	@override String get tipProgress => 'تابع تقدمك يومياً لتحفيز نفسك';
	@override String get button => 'لنذهب';
	@override String get defaultGender => 'فرد';
	@override String get defaultGoal => 'أنت أكثر صحة';
	@override String get instantPhotoAnalysis => 'تحليل فوري للصورة';
	@override String get automaticLogging => 'تسجيل غذائي تلقائي';
	@override String get progressVisualizations => 'تصورات للتقدم تحافظ على تحفيزك';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileAr implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ملفك الصحي';
	@override String bmiDescription({required Object bmi}) => 'استنادًا إلى مقاييسك، فإن مؤشر كتلة الجسم لديك هو ${bmi}.';
	@override String get finalizeDescription => 'لنُنهي ملفك لتخصيص تجربتك.';
	@override String get goalGain => 'زيادة';
	@override String get goalLose => 'خسارة';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'للوصول إلى هدفك، ستحتاج إلى ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'أنت في وزنك المستهدف! سنساعدك في الحفاظ عليه.';
	@override String get button => 'لنذهب';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleAr implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'بداية ممتازة!';
	@override String description({required Object goalText, required Object activityText}) => 'لقد اتخذت الخطوة الأولى نحو ${goalText}. نظرًا لأنك ${activityText}، سيتكيف كالرِفاي مع أهدافك لتناسب أسلوب حياتك.';
	@override String get personalizedTargets => 'أهداف السعرات المخصصة';
	@override String get aiMealDetection => 'اكتشاف الوجبات المدعوم بالذكاء الاصطناعي';
	@override String get macroBreakdowns => 'تفصيل دقيق للمغذيات';
	@override String get button => 'لنذهب';
	@override String get defaultGoal => 'أهدافك';
	@override String get defaultActivity => 'نشط';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightAr implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'فقدان الوزن';
	@override String get description => 'خلق عجز في السعرات لفقدان الوزن';
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
	@override String get description => 'خلق فائض في السعرات لزيادة الوزن';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryAr implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'غير نشط';
	@override String get description => 'قليل أو عدم ممارسة الرياضة';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveAr implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشط قليلاً';
	@override String get description => 'ممارسة رياضة خفيفة 1-3 أيام/الأسبوع';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveAr implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشط بشكل معتدل';
	@override String get description => 'ممارسة رياضة متوسطة 3-5 أيام/الأسبوع';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveAr implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشط جداً';
	@override String get description => 'ممارسة رياضة شاقة 6-7 أيام/الأسبوع';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveAr implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشط للغاية';
	@override String get description => 'ممارسة رياضة شاقة جداً، أو وظيفة بدنية';
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
	@override String get description => 'يمكن أن تؤثر طرق الطهي بشكل كبير على محتوى العناصر الغذائية للطعام. قد لا تأخذ تقديرات كالرِفاي دائمًا في الاعتبار هذه التباينات.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsAr implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'المكونات';
	@override String get description => 'الأطباق المعقدة التي تحتوي على العديد من المكونات المخفية قد تؤدي إلى تقديرات أقل دقة.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsAr implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قيود قاعدة البيانات';
	@override String get description => 'قاعدة بيانات طعام كالرِفاي شاملة ولكن قد لا تشمل كل عنصر طعام أو تباين.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyAr implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'دقة السعرات الحرارية';
	@override String get description => 'هذه التقديرات دقيقة فقط بقدر دقة المدخلات والسعرات التي تتبعها. تسجيل غير دقيق سيؤدي إلى مشروع غير دقيق.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsAr implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'عوامل بيولوجية';
	@override String get description => 'فقدان/زيادة الوزن الفعلي يتأثر بالأيض، الهرمونات، النوم، الضغط النفسي، الترطيب، وعوامل أخرى فردية لا يمكن لكالرِفاي قياسها.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightAr implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وزن الماء وتقلباته';
	@override String get description => 'يمكن أن يتقلب الوزن اليومي بشكل كبير بسبب احتباس الماء، والهضم، والتوقيت. لا يؤدي التقدير إلى حساب هذه التغييرات اليومية.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceAr implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'نصائح مهنية';
	@override String get description => 'لا تستخدم هذا التقدير لاتخاذ قرارات طبية. دائمًا استشر محترف الرعاية الصحية أو أخصائي تغذية مسجل للحصول على نصائح شخصية بشأن إدارة الوزن.';
}

/// The flat map containing all translations for locale <ar>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsAr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Arabic',
			'flag' => '🇸🇩',
			'onboarding.welcome' => 'مرحبًا بك في كالرِفاي',
			'onboarding.subtitle' => 'رفيقك الشخصي في التغذية المدعوم بالذكاء الاصطناعي',
			'onboarding.getStarted' => 'ابدأ',
			'onboarding.features.foodRecognition.title' => 'تعرف ذكي على الطعام',
			'onboarding.features.foodRecognition.description' => 'التقط صورة ودع الذكاء الاصطناعي يتعرف على وجبتك',
			'onboarding.features.aiAnalysis.title' => 'تحليل الذكاء الاصطناعي',
			'onboarding.features.aiAnalysis.description' => 'احصل على معلومات غذائية فورية من أوصافك',
			'onboarding.features.healthIntegration.title' => 'تكامل الصحة',
			'onboarding.features.healthIntegration.description' => 'اتصل بتطبيق Health Connect للحصول على رؤى أفضل',
			'onboarding.gender.title' => 'ما هو جنسك؟',
			'onboarding.gender.description' => 'يساعدنا الجنس في حساب معدل الأيض الأساسي (BMR) بدقة.',
			'onboarding.gender.next' => 'التالي',
			'onboarding.height.title' => 'ما طولك؟',
			'onboarding.height.description' => 'طولك يساعدنا في حساب مؤشر كتلة الجسم (BMI) واحتياجات الطاقة بدقة.',
			'onboarding.height.metric' => 'متري',
			'onboarding.height.imperial' => 'إمبراطوري',
			'onboarding.height.next' => 'التالي',
			'onboarding.weight.currentTitle' => 'ما هو وزنك الحالي؟',
			'onboarding.weight.currentDescription' => 'وزنك الحالي أساسي لتخصيص أهدافك اليومية.',
			'onboarding.weight.targetTitle' => 'ما هو وزنك المستهدف؟',
			'onboarding.weight.targetDescription' => 'تحديد وزن مستهدف يساعدنا في تحديد خطتك طويلة الأمد.',
			'onboarding.weight.metric' => 'متري',
			'onboarding.weight.imperial' => 'إمبراطوري',
			'onboarding.weight.next' => 'التالي',
			'onboarding.age.title' => 'متى عيد ميلادك؟',
			'onboarding.age.description' => 'يساعدنا عمرك في حساب احتياجاتك من السعرات الحرارية بدقة.',
			'onboarding.age.next' => 'التالي',
			'onboarding.bmiScale.underweight' => 'نقص الوزن',
			'onboarding.bmiScale.healthy' => 'وزن صحي',
			'onboarding.bmiScale.overweight' => 'زيادة الوزن',
			'onboarding.bmiScale.obese' => 'بدانة',
			'onboarding.bmiScale.categories.underweight' => 'نقص الوزن',
			'onboarding.bmiScale.categories.healthyWeight' => 'وزن صحي',
			'onboarding.bmiScale.categories.overweight' => 'زيادة الوزن',
			'onboarding.bmiScale.categories.obese' => 'بدانة',
			'onboarding.bmiScale.messages.underweight' => 'يمكننا مساعدتك في بناء خطة صحية للوصول إلى وزن متوازن مع وجبات غنية بالمغذيات.',
			'onboarding.bmiScale.messages.healthy' => 'عمل رائع! أنت في نطاق صحي. سنساعدك في الحفاظ على حيويتك ومستويات طاقتك.',
			'onboarding.bmiScale.messages.overweight' => 'سيبسط كالرِفاي رحلتك مع تتبع مدعوم بالذكاء الاصطناعي لمساعدتك في الوصول إلى هدفك براحة.',
			'onboarding.bmiScale.messages.obese' => 'نحن هنا لدعمك مع توجيهات مخصصة واستراتيجيات مستدامة لأهداف صحتك.',
			'onboarding.weightGoal.title' => 'ما هدفك؟',
			'onboarding.weightGoal.description' => 'اختر الهدف الذي يصف بشكل أفضل ما تريد تحقيقه',
			'onboarding.activityLevel.title' => 'ما مدى نشاطك؟',
			'onboarding.activityLevel.description' => 'يساعدنا هذا في حساب احتياجاتك اليومية من السعرات الحرارية بدقة أكبر',
			'onboarding.healthConnect.title' => 'اتصل بتطبيق Health Connect',
			'onboarding.healthConnect.description' => 'زامن بيانات صحتك للحصول على رؤى أفضل وتسجيل السعرات الحرارية تلقائيًا',
			'onboarding.healthConnect.automaticTracking.title' => 'تتبع السعرات الحرارية تلقائيًا',
			'onboarding.healthConnect.automaticTracking.description' => 'تتبع السعرات الحرارية المحروقة من التطبيقات الرياضية الخاصة بك',
			'onboarding.healthConnect.progressInsights.title' => 'رؤى التقدم',
			'onboarding.healthConnect.progressInsights.description' => 'احصل على رؤى مفصلة حول اتجاهات صحتك',
			'onboarding.healthConnect.seamlessIntegration.title' => 'تكامل سلس',
			'onboarding.healthConnect.seamlessIntegration.description' => 'زامن البيانات من تطبيقات الصحة المفضلة لديك',
			'onboarding.healthConnect.connected' => 'تم الاتصال بتطبيق Health Connect',
			'onboarding.healthConnect.notConnected' => 'لم يتم الاتصال بتطبيق Health Connect',
			'onboarding.healthConnect.setup' => 'إعداد تطبيق Health Connect',
			'onboarding.healthConnect.skipForNow' => 'تخطى في الوقت الحالي',
			'onboarding.healthConnect.statusConnected' => 'تم الاتصال بتطبيق Health Connect.',
			'onboarding.healthConnect.statusSuccess' => 'تم الاتصال بتطبيق Health Connect بنجاح!',
			'onboarding.healthConnect.statusPermissionDenied' => 'تم رفض الإذن. يرجى تفعيل أذونات Health Connect من إعدادات هاتفك لتطبيق كالرِفاي.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'خطأ في إعداد تطبيق Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'لست وحدك',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'تظهر الأبحاث أن التسجيل المستمر هو أفضل مؤشر على النجاح طويل الأمد.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'بالنسبة لشخص ${age} عامًا ${gender} يتطلع إلى ${goal}، فإن التسجيل المستمر هو أفضل مؤشر على النجاح.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => 'يجعل كالرِفاي الأمر أسهل بـ 10 مرات من القيام بذلك يدويًا.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'هل أنت مستعد للبدء؟',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'التقط صورة لوجباتك لتحليل فوري',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'سجل باستمرار لرؤية تقدم ملحوظ',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'تابع تقدمك يومياً لتحفيز نفسك',
			'onboarding.reinforcement.trackingSuccess.button' => 'لنذهب',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'فرد',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'أنت أكثر صحة',
			'onboarding.reinforcement.trackingSuccess.instantPhotoAnalysis' => 'تحليل فوري للصورة',
			'onboarding.reinforcement.trackingSuccess.automaticLogging' => 'تسجيل غذائي تلقائي',
			'onboarding.reinforcement.trackingSuccess.progressVisualizations' => 'تصورات للتقدم تحافظ على تحفيزك',
			'onboarding.reinforcement.healthProfile.title' => 'ملفك الصحي',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'استنادًا إلى مقاييسك، فإن مؤشر كتلة الجسم لديك هو ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'لنُنهي ملفك لتخصيص تجربتك.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'زيادة',
			'onboarding.reinforcement.healthProfile.goalLose' => 'خسارة',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'للوصول إلى هدفك، ستحتاج إلى ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'أنت في وزنك المستهدف! سنساعدك في الحفاظ عليه.',
			'onboarding.reinforcement.healthProfile.button' => 'لنذهب',
			'onboarding.reinforcement.goalLifestyle.title' => 'بداية ممتازة!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText}) => 'لقد اتخذت الخطوة الأولى نحو ${goalText}. نظرًا لأنك ${activityText}، سيتكيف كالرِفاي مع أهدافك لتناسب أسلوب حياتك.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'أهداف السعرات المخصصة',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'اكتشاف الوجبات المدعوم بالذكاء الاصطناعي',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'تفصيل دقيق للمغذيات',
			'onboarding.reinforcement.goalLifestyle.button' => 'لنذهب',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'أهدافك',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'نشط',
			'tabs.dashboard' => 'لوحة التحكم',
			'tabs.history' => 'السجل',
			'home.dailyGoal.title' => 'حدد هدفك اليومي',
			'home.dailyGoal.titleSet' => 'هدفك اليومي',
			'home.dailyGoal.description' => 'هل أنت مستعد للبدء في رحلة العافية الخاصة بك؟ حدد هدف السعرات الحرارية اليومي أدناه لبدء تقدمك.',
			'home.dailyGoal.descriptionSet' => 'لقد تم تحديد بوصلتك! هذا هو هدف السعرات الحرارية اليومية الخاصة بك لتوجيهك.',
			'home.dailyGoal.yourGoal' => 'هدفك',
			'home.dailyGoal.dailyCalories' => 'السعرات اليومية (كالوري)',
			'home.dailyGoal.setGoal' => 'حدد الهدف',
			'home.dailyGoal.intake' => 'الاستهلاك',
			'home.dailyGoal.burned' => 'المحروقة',
			'home.dailyGoal.weightImpact' => 'تأثير الوزن',
			'home.dailyGoal.estLoss' => 'الخسارة المقدرة لـ',
			'home.dailyGoal.estGain' => 'الاكتساب المقدر لـ',
			'home.dailyGoal.kcal' => 'كالوري',
			'home.dailySummary.title' => 'ملخص يومي',
			'home.dailySummary.calories' => 'السعرات',
			'home.dailySummary.carbs' => 'الكربوهيدرات',
			'home.dailySummary.protein' => 'البروتين',
			'home.dailySummary.fat' => 'الدهون',
			'home.dailySummary.fiber' => 'الألياف',
			'home.intakeProgress.title' => 'تقسيم المغذيات اليوم',
			'home.intakeProgress.target' => 'الهدف',
			'home.intakeProgress.current' => 'الحالي',
			'home.intakeHistory.title' => 'تاريخ المغذيات لمدة 7 أيام',
			'home.intakeHistory.noHistoryYet' => 'لا توجد تاريخ بعد',
			'home.intakeHistory.startLogging' => 'ابدأ تسجيل الوجبات لرؤية اتجاهات المغذيات لمدة 7 أيام هنا',
			'home.mealLog.title' => 'الوجبات المسجلة',
			'home.mealLog.emptyMessage' => 'التقط صورة لوجبتك الأخيرة لتسجيلها هنا.',
			'home.mealLog.noMealsToday' => 'لا توجد وجبات مسجلة اليوم',
			'home.mealLog.seeAllMeals' => 'شاهد جميع الوجبات',
			'home.mealDescription.title' => 'إضافة سريعة باستخدام الذكاء الاصطناعي',
			'home.mealDescription.description' => 'وصف وجبتك، ودع الذكاء الاصطناعي يتولى التفاصيل.',
			'home.mealDescription.hint' => 'على سبيل المثال، الإفطار: وعاء كبير من الشوفان مع موزة مقطعة وحصة من بروتين مصل اللبن...',
			'home.mealDescription.analyzeMeal' => 'تحليل الوجبة',
			'home.favoriteMeals.title' => 'الوجبات المفضلة',
			'home.favoriteMeals.description' => 'أضف بسرعة واحدة من وجباتك المفضلة.',
			'home.favoriteMeals.noFavorites' => 'لا توجد وجبات مفضلة بعد.',
			'home.favoriteMeals.addFavoriteHint' => 'اضغط على النجم لتصنيف الوجبة كمفضلة.',
			'home.favoriteMeals.seeAll' => 'شاهد الجميع',
			'home.favoriteMeals.add' => 'إضافة',
			'home.mealSnap.title' => 'التقط وتتبع وجبتك',
			'home.mealSnap.description' => 'استخدم الكاميرا لالتقاط صورة لطعامك من أجل تحليل الذكاء الاصطناعي.',
			'home.mealSnap.openCamera' => 'فتح الكاميرا',
			'home.connectHealth.title' => 'زامن مع تطبيق Health Connect',
			'home.connectHealth.description' => 'زامن بيانات التغذية الخاصة بك مع تطبيق Health Connect',
			'home.connectHealth.install' => 'تثبيت',
			'home.connectHealth.connect' => 'اتصل',
			'history.noMeals' => 'لا توجد وجبات مسجلة',
			'history.emptyMessage' => 'التقط صورة لوجبتك الأخيرة لتسجيلها هنا.',
			'history.today' => 'اليوم',
			'history.yesterday' => 'أمس',
			'meal.ohNo' => 'أوه لا!',
			'meal.delete' => 'حذف',
			'meal.editMeal' => 'تحرير الوجبة',
			'meal.addMeal' => 'إضافة وجبة',
			'meal.saveMeal' => 'حفظ الوجبة',
			'meal.save' => 'حفظ',
			'meal.mealName' => 'اسم الوجبة',
			'meal.mealQuantity' => 'كمية الوجبة',
			'meal.mealQuantityHint' => 'مثل، 1 وعاء، 2 شريحة',
			'meal.timeOfMeal' => 'وقت الوجبة',
			'meal.timeOfMealHint' => 'اختر الوقت الذي تناولت فيه وجبتك',
			'meal.mealType' => 'نوع الوجبة',
			'meal.nutrition.calories' => 'السعرات',
			'meal.nutrition.carbs' => 'الكربوهيدرات (غ)',
			'meal.nutrition.protein' => 'البروتين (غ)',
			'meal.nutrition.fat' => 'الدهون (غ)',
			'meal.nutrition.fiber' => 'الألياف (غ)',
			'meal.deleteConfirmation.title' => 'حذف الوجبة',
			'meal.deleteConfirmation.message' => 'هل أنت متأكد أنك تريد حذف هذا التسجيل للوجبة؟',
			'meal.deleteConfirmation.cancel' => 'إلغاء',
			'meal.deleteConfirmation.delete' => 'حذف',
			'meal.addedToLog' => 'تمت إضافة الوجبة إلى سجلك!',
			'meal.couldNotAdd' => ({required Object error}) => 'لم يتمكن من إضافة الوجبة: ${error}',
			'meal.removedFromFavorites' => 'تمت إزالة من المفضلات!',
			'meal.savedAsFavorite' => 'تم حفظ الوجبة كمفضلة!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'لم يتمكن من تحديث المفضلة: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'فشل في المعالجة: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'فشل في معالجة الصورة: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'خطأ في ضغط الصورة: ${error}',
			'meal.failedToSave' => 'فشل في حفظ البيانات. يرجى المحاولة مرة أخرى.',
			'favorites.title' => 'المفضلات',
			'favorites.empty' => 'لا توجد وجبات مفضلة بعد.',
			'profile.title' => 'الملف الشخصي',
			'profile.noProfileData' => 'لا توجد بيانات للملف الشخصي',
			'profile.yourProfile' => 'ملفك الشخصي',
			'profile.viewAndManage' => 'عرض وإدارة معلومات صحتك',
			'profile.sections.profile' => 'الملف الشخصي',
			'profile.sections.basicInformation' => 'معلومات أساسية',
			'profile.sections.goalsAndActivity' => 'الأهداف والنشاط',
			'profile.sections.calculatedValues' => 'القيم المحسوبة',
			'profile.gender' => 'الجنس',
			'profile.height' => 'الطول',
			'profile.weight' => 'الوزن',
			'profile.age' => 'العمر',
			'profile.weightGoal' => 'هدف الوزن',
			'profile.activityLevel' => 'مستوى النشاط',
			'profile.healthMetrics' => 'مقاييس الصحة',
			'profile.notSet' => 'غير محدد',
			'profile.years' => 'سنوات',
			'profile.updatedSuccessfully' => 'تم تحديث الملف الشخصي بنجاح!',
			'profile.calculatedValues.bmr' => 'معدل الأيض الأساسي',
			'profile.calculatedValues.tdee' => 'مجموع السعرات الحرارية اليومية',
			'profile.calculatedValues.dailyGoal' => 'الهدف اليومي',
			'profile.calculatedValues.calPerDay' => 'كالوري/يوم',
			'profile.calculatedValues.notAvailable' => 'غير متاح',
			'healthScore.title' => 'نقطة الصحة',
			'healthScore.whyThisScore' => 'لماذا هذه النتيجة؟',
			'healthScore.note' => 'تعتبر هذه النقطة تقديرًا مقدّمًا من الذكاء الاصطناعي استنادًا إلى المكونات المعروفة والكثافة الغذائية. استشر دائمًا محترفًا للحصول على نصائح غذائية.',
			'healthScore.unhealthy' => 'غير صحي',
			'healthScore.healthy' => 'صحي',
			'healthScore.neutral' => 'محايد',
			'editProfile.title' => 'تحرير الملف الشخصي',
			'editProfile.sections.personalInformation' => 'المعلومات الشخصية',
			'editProfile.sections.physicalMeasurements' => 'القياسات البدنية',
			'editProfile.sections.goalsAndActivity' => 'الأهداف والنشاط',
			'editProfile.gender' => 'الجنس',
			'editProfile.dateOfBirth' => 'تاريخ الميلاد',
			'editProfile.height' => 'الطول',
			'editProfile.weight' => 'الوزن',
			'editProfile.weightGoal' => 'هدف الوزن',
			'editProfile.activityLevel' => 'مستوى النشاط',
			'editProfile.metric' => 'نظام القياس المتري',
			'editProfile.imperial' => 'نظام القياس الإمبراطوري',
			'editProfile.metricCm' => 'متري (سم)',
			'editProfile.imperialFtIn' => 'إمبراطوري (قدم/إنش)',
			'editProfile.metricKg' => 'متري (كجم)',
			'editProfile.imperialLbs' => 'إمبراطوري (رطل)',
			'editProfile.genders.male' => 'ذكر',
			'editProfile.genders.female' => 'أنثى',
			'editProfile.genders.other' => 'آخر',
			'editProfile.weightGoals.loseWeight.name' => 'فقدان الوزن',
			'editProfile.weightGoals.loseWeight.description' => 'خلق عجز في السعرات لفقدان الوزن',
			'editProfile.weightGoals.maintainWeight.name' => 'الحفاظ على الوزن',
			'editProfile.weightGoals.maintainWeight.description' => 'الحفاظ على وزنك الحالي',
			'editProfile.weightGoals.gainWeight.name' => 'زيادة الوزن',
			'editProfile.weightGoals.gainWeight.description' => 'خلق فائض في السعرات لزيادة الوزن',
			'editProfile.activityLevels.sedentary.name' => 'غير نشط',
			'editProfile.activityLevels.sedentary.description' => 'قليل أو عدم ممارسة الرياضة',
			'editProfile.activityLevels.lightlyActive.name' => 'نشط قليلاً',
			'editProfile.activityLevels.lightlyActive.description' => 'ممارسة رياضة خفيفة 1-3 أيام/الأسبوع',
			'editProfile.activityLevels.moderatelyActive.name' => 'نشط بشكل معتدل',
			'editProfile.activityLevels.moderatelyActive.description' => 'ممارسة رياضة متوسطة 3-5 أيام/الأسبوع',
			'editProfile.activityLevels.veryActive.name' => 'نشط جداً',
			'editProfile.activityLevels.veryActive.description' => 'ممارسة رياضة شاقة 6-7 أيام/الأسبوع',
			'editProfile.activityLevels.extremelyActive.name' => 'نشط للغاية',
			'editProfile.activityLevels.extremelyActive.description' => 'ممارسة رياضة شاقة جداً، أو وظيفة بدنية',
			'settings.title' => 'الإعدادات',
			'settings.sections.profile' => 'الملف الشخصي',
			'settings.sections.localization' => 'تحديد الموقع',
			'settings.sections.notifications' => 'الإشعارات',
			'settings.sections.supportAndLegal' => 'الدعم والقوانين',
			'settings.sections.dangerZone' => 'منطقة الخطر',
			'settings.sections.developer' => 'المطور',
			'settings.editProfile.title' => 'تحرير الملف الشخصي',
			'settings.editProfile.subtitle' => 'قم بتحديث معلوماتك الشخصية',
			'settings.language.title' => 'اللغة',
			'settings.language.subtitle' => 'اختر لغتك المفضلة',
			'settings.heightUnit.title' => 'وحدة الطول',
			'settings.weightUnit.title' => 'وحدة الوزن',
			'settings.theme.title' => 'Theme',
			'settings.theme.subtitle' => 'Choose your preferred theme',
			'settings.theme.light' => 'Light',
			'settings.theme.dark' => 'Dark',
			'settings.theme.system' => 'System',
			'settings.mealReminders.title' => 'تذكيرات الوجبات',
			'settings.mealReminders.subtitle' => 'ابقَ على المسار الصحيح مع تنبيهات في الوقت المناسب',
			'settings.sendFeedback.title' => 'إرسال ملاحظات',
			'settings.sendFeedback.subtitle' => 'ساعدنا على تحسين كالرِفاي',
			'settings.sendFeedback.emailSubject' => 'ملاحظات عن تطبيق كالرِفاي',
			'settings.sendFeedback.emailBodyPrefix' => 'يرجى تقديم ملاحظاتك أدناه:',
			'settings.sendFeedback.appVersion' => 'إصدار التطبيق',
			'settings.sendFeedback.device' => 'الجهاز',
			'settings.sendFeedback.osVersion' => 'إصدار نظام التشغيل',
			'settings.sendFeedback.uid' => 'معرف المستخدم',
			'settings.clearAllData.title' => 'مسح جميع البيانات',
			'settings.clearAllData.subtitle' => 'احذف جميع معلوماتك بشكل غير قابل للتراجع',
			'settings.clearAllData.confirmationTitle' => 'مسح جميع البيانات؟',
			'settings.clearAllData.confirmationMessage' => 'لا يمكن التراجع عن هذا الإجراء. سيتم حذف جميع وجباتك المسجلة، المفضلات، وإعدادات الملف الشخصي بشكل دائم.',
			'settings.clearAllData.cancel' => 'إلغاء',
			'settings.clearAllData.clearEverything' => 'مسح كل شيء',
			'settings.debugOptions.title' => 'خيارات التصحيح',
			'settings.developerModeEnabled' => 'تم تفعيل وضع المطور!',
			'reminders.title' => 'ابقَ على المسار الصحيح مع التذكيرات',
			'reminders.description' => 'احصل على تذكيرات لطيفة لتسجيل وجباتك والبقاء متسقًا مع أهداف التغذية الخاصة بك',
			'reminders.notificationsEnabled' => 'الإشعارات مفعلة',
			'reminders.notificationsDisabled' => 'الإشعارات معطلة',
			'reminders.enabledSubtitle' => 'ستتلقى تذكيرات بالوجبات',
			'reminders.disabledSubtitle' => 'قم بتمكين الإشعارات للحصول على تذكيرات بالوجبات',
			'reminders.mealReminders' => 'تذكيرات الوجبات',
			'reminders.breakfast' => 'إفطار',
			'reminders.lunch' => 'غداء',
			'reminders.dinner' => 'عشاء',
			'reminders.snack' => 'وجبة خفيفة',
			'reminders.unknown' => 'غير معروف',
			'reminders.change' => 'تغيير',
			'reminders.enableNotifications' => 'تفعيل الإشعارات',
			'reminders.skipForNow' => 'تخطى في الوقت الحالي',
			'reminders.saveChanges' => 'احفظ التغييرات',
			'reminders.enabledSuccessfully' => 'تفعيل الإشعارات بنجاح!',
			'reminders.permissionDenied' => 'تم رفض إذن الإشعارات',
			'reminders.errorEnabling' => ({required Object error}) => 'خطأ في تفعيل الإشعارات: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'خطأ في إكمال الإعداد: ${error}',
			'notifications.breakfast.title' => 'وقت الإفطار! 🍳',
			'notifications.breakfast.body' => 'لا تنسَ تسجيل إفطارك',
			'notifications.lunch.title' => 'وقت الغداء! 🥗',
			'notifications.lunch.body' => 'حان وقت تسجيل غدائك',
			'notifications.dinner.title' => 'وقت العشاء! 🍽️',
			'notifications.dinner.body' => 'لا تنسَ تسجيل عشاءك',
			'notifications.snack.title' => 'وقت الوجبة الخفيفة! 🍎',
			'notifications.snack.body' => 'حان وقت وجبة خفيفة صحية',
			'notifications.test.title' => 'اختبار الإشعار',
			'login.title' => 'تسجيل الدخول',
			'login.signInWithGoogle' => 'تسجيل الدخول باستخدام جوجل',
			'login.signInFailed' => 'فشل تسجيل الدخول باستخدام جوجل أو تم إلغاؤه.',
			'disclaimer.pleaseNote' => 'يرجى ملاحظة',
			'disclaimer.snap.description' => 'يوفر كالرِفاي معلومات غذائية تقديرية. الدقة تعتمد على مدخلاتك وتباين الأطعمة. استخدم كدليل، وليس كمصدر نهائي. استشر محترفًا للحصول على نصائح غذائية شخصية.',
			'disclaimer.snap.portionSize.title' => 'حجم الحصة',
			'disclaimer.snap.portionSize.description' => 'تعتمد دقة التقديرات بشكل كبير على تقييمك الصحيح لحجم الحصة.',
			'disclaimer.snap.preparationMethods.title' => 'طرق التحضير',
			'disclaimer.snap.preparationMethods.description' => 'يمكن أن تؤثر طرق الطهي بشكل كبير على محتوى العناصر الغذائية للطعام. قد لا تأخذ تقديرات كالرِفاي دائمًا في الاعتبار هذه التباينات.',
			'disclaimer.snap.ingredients.title' => 'المكونات',
			'disclaimer.snap.ingredients.description' => 'الأطباق المعقدة التي تحتوي على العديد من المكونات المخفية قد تؤدي إلى تقديرات أقل دقة.',
			'disclaimer.snap.databaseLimitations.title' => 'قيود قاعدة البيانات',
			'disclaimer.snap.databaseLimitations.description' => 'قاعدة بيانات طعام كالرِفاي شاملة ولكن قد لا تشمل كل عنصر طعام أو تباين.',
			'disclaimer.weightEstimate.title' => 'حول تقدير الوزن',
			'disclaimer.weightEstimate.description' => 'تغيير الوزن المتوقع هو تقدير نظري يعتمد على نموذج السعرات الحرارية المدخلة مقابل السعرات المحروقة. يهدف إلى توجيه تحفيزي فقط، وليس كتنبيه لوزنك الفعلي.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'دقة السعرات الحرارية',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'هذه التقديرات دقيقة فقط بقدر دقة المدخلات والسعرات التي تتبعها. تسجيل غير دقيق سيؤدي إلى مشروع غير دقيق.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'عوامل بيولوجية',
			'disclaimer.weightEstimate.biologicalFactors.description' => 'فقدان/زيادة الوزن الفعلي يتأثر بالأيض، الهرمونات، النوم، الضغط النفسي، الترطيب، وعوامل أخرى فردية لا يمكن لكالرِفاي قياسها.',
			'disclaimer.weightEstimate.waterWeight.title' => 'وزن الماء وتقلباته',
			'disclaimer.weightEstimate.waterWeight.description' => 'يمكن أن يتقلب الوزن اليومي بشكل كبير بسبب احتباس الماء، والهضم، والتوقيت. لا يؤدي التقدير إلى حساب هذه التغييرات اليومية.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'نصائح مهنية',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'لا تستخدم هذا التقدير لاتخاذ قرارات طبية. دائمًا استشر محترف الرعاية الصحية أو أخصائي تغذية مسجل للحصول على نصائح شخصية بشأن إدارة الوزن.',
			'common.close' => 'إغلاق',
			'common.kContinue' => 'متابعة',
			'errors.loadingProfileData' => 'حدث خطأ في تحميل بيانات الملف الشخصي',
			'errors.somethingWentWrong' => 'حدث خطأ ما.',
			'debug.title' => 'خيارات التصحيح',
			'debug.sections.notifications' => 'الإشعارات',
			'debug.sections.healthConnect' => 'تطبيق Health Connect',
			'debug.sections.appInfo' => 'معلومات التطبيق',
			'debug.showActiveNotifications' => 'عرض الإشعارات النشطة',
			'debug.scheduleTestNotification' => 'جدولة إشعار اختبار (10 ثوانٍ)',
			'debug.triggerBreakfastNotification' => 'تنشيط إشعار الإفطار',
			'debug.cancelAllNotifications' => 'إلغاء جميع الإشعارات',
			'debug.activeNotifications' => 'الإشعارات النشطة',
			'debug.noTitle' => 'لا عنوان',
			'debug.noBody' => 'لا محتوى',
			'debug.fetchTodaysSteps' => 'جلب خطوات اليوم',
			'debug.fetchTodaysCalories' => 'جلب سعرات اليوم',
			'debug.fetchLatestWeight' => 'جلب الوزن الأحدث',
			'debug.fetchLatestHeight' => 'جلب الطول الأحدث',
			'debug.writeTestWeight' => 'تسجيل وزن الاختبار (70كجم)',
			'debug.writeTestHeight' => 'تسجيل طول الاختبار (175سم)',
			'debug.syncLast7Days' => 'مزامنة آخر 7 أيام',
			'debug.sync7DaysTitle' => 'مزامنة 7 أيام',
			'debug.checkCurrentLocale' => 'التحقق من الإعدادات المحلية الحالية',
			'debug.currentLocale' => 'الإعدادات المحلية الحالية',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'اللغة: ${languageCode}\nالبلد: ${countryCode}\nنظام القياس: ${unitSystem}',
			'debug.latestWeight' => 'أحدث وزن',
			'debug.latestHeight' => 'أحدث طول',
			'debug.todaysCalories' => 'سعرات اليوم',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'إجمالي السعرات المحروقة: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'تم جلب ${count} نقطة بيانات بنجاح لخطوات، وسعرات، ووزن آخر 7 أيام.',
			'debug.noWeightData' => 'لا توجد بيانات وزن موجودة في آخر 30 يومًا.',
			'debug.noHeightData' => 'لا توجد بيانات طول موجودة في العام الماضي.',
			'debug.noCalorieData' => 'لا توجد بيانات سعرات غذائية موجودة لهذا اليوم.',
			'debug.weightWritten' => 'تم تسجيل الوزن الاختباري بنجاح (70كجم).',
			'debug.weightWriteFailed' => 'فشل في تسجيل الوزن الاختباري.',
			'debug.heightWritten' => 'تم تسجيل الطول الاختباري بنجاح (175سم).',
			'debug.heightWriteFailed' => 'فشل في تسجيل الطول الاختباري.',
			'debug.noNotifications' => 'لا توجد إشعارات نشطة.',
			'debug.testNotificationScheduled' => 'تم جدولة إشعار اختبار لمدة 10 ثوانٍ من الآن.',
			'debug.testNotificationBody' => 'هذا إشعار اختبار تم جدولة لمدة 10 ثوانٍ من الآن.',
			'debug.breakfastNotificationTriggered' => 'تم تفعيل إشعار الإفطار.',
			'debug.allNotificationsCancelled' => 'تم إلغاء جميع الإشعارات.',
			'debug.fetchingData' => 'جارٍ جلب البيانات لآخر 7 أيام...',
			'debug.id' => ({required Object id}) => 'المعرف: ${id}',
			'health.syncFailed' => 'لم يتمكن من المزامنة مع تطبيق Health Connect',
			'health.mealSynced' => 'تمت مزامنة الوجبة مع تطبيق Health Connect',
			_ => null,
		};
	}
}
