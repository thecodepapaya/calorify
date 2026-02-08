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
	@override String get flag => '🇸🇩';
	@override String appLabel({required Object env}) => 'كالوري في ${env}';
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
	@override late final _TranslationsErrorsAr errors = _TranslationsErrorsAr._(_root);
	@override late final _TranslationsDebugAr debug = _TranslationsDebugAr._(_root);
	@override late final _TranslationsHealthAr health = _TranslationsHealthAr._(_root);
}

// Path: onboarding
class _TranslationsOnboardingAr implements TranslationsOnboardingEn {
	_TranslationsOnboardingAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'مرحبًا بكم في ${appLabel}';
	@override String get subtitle => 'رفيقك الشخصي للتغذية المدعوم بالذكاء الاصطناعي';
	@override String get getStarted => 'ابدأ الآن';
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
	@override String get history => 'التاريخ';
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
	@override String get emptyMessage => 'قم بالتقاط صورة لوجبتك الأخيرة لتسجيلها هنا.';
	@override String get today => 'اليوم';
	@override String get yesterday => 'أمس';
}

// Path: meal
class _TranslationsMealAr implements TranslationsMealEn {
	_TranslationsMealAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'أوه لا!';
	@override String get delete => 'احذف';
	@override String get editMeal => 'تعديل الوجبة';
	@override String get addMeal => 'أضف وجبة';
	@override String get saveMeal => 'احفظ الوجبة';
	@override String get save => 'احفظ';
	@override String get mealName => 'اسم الوجبة';
	@override String get mealNameHint => 'مثلاً: بيض مخفوق مع خبز محمص';
	@override String get mealQuantity => 'كمية الوجبة';
	@override String get mealQuantityHint => 'مثل: 1 وعاء، 2 شريحة';
	@override String get timeOfMeal => 'وقت الوجبة';
	@override String get timeOfMealHint => 'اختر الوقت الذي تناولت فيه وجبتك';
	@override String get mealType => 'نوع الوجبة';
	@override late final _TranslationsMealNutritionAr nutrition = _TranslationsMealNutritionAr._(_root);
	@override late final _TranslationsMealDeleteConfirmationAr deleteConfirmation = _TranslationsMealDeleteConfirmationAr._(_root);
	@override String get addedToLog => 'تمت إضافة الوجبة إلى سجلك!';
	@override String couldNotAdd({required Object error}) => 'تعذر إضافة الوجبة: ${error}';
	@override String get savedSuccessfully => 'تمت إضافة الوجبة بنجاح!';
	@override String get updatedSuccessfully => 'تم تحديث الوجبة بنجاح!';
	@override String errorSaving({required Object error}) => 'خطأ عند حفظ الوجبة: ${error}';
	@override String get removedFromFavorites => 'تمت إزالتها من المفضلات!';
	@override String get savedAsFavorite => 'تمت حفظ الوجبة كمفضلة!';
	@override String couldNotUpdateFavorite({required Object error}) => 'تعذر تحديث المفضلة: ${error}';
	@override String failedToProcess({required Object error}) => 'فشل في المعالجة: ${error}';
	@override String failedToProcessImage({required Object error}) => 'فشل في معالجة الصورة: ${error}';
	@override String errorCompressingImage({required Object error}) => 'خطأ في ضغط الصورة: ${error}';
	@override String get failedToSave => 'فشل في حفظ البيانات. يرجى المحاولة مرة أخرى.';
	@override String get skip => 'تخطي';
	@override late final _TranslationsMealVariationAr variation = _TranslationsMealVariationAr._(_root);
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
	@override String get noProfileData => 'لا توجد بيانات ملف شخصية';
	@override String get yourProfile => 'ملفك الشخصي';
	@override String get viewAndManage => 'عرض وإدارة معلومات صحتك';
	@override late final _TranslationsProfileSectionsAr sections = _TranslationsProfileSectionsAr._(_root);
	@override String get gender => 'الجنس';
	@override String get height => 'الطول';
	@override String get weight => 'الوزن';
	@override String get age => 'العمر';
	@override String get weightGoal => 'هدف الوزن';
	@override String get targetWeight => 'هدف الوزن';
	@override String get activityLevel => 'مستوى النشاط';
	@override String get healthMetrics => 'مقاييس الصحة';
	@override String get notSet => 'لم يتم تعيينه';
	@override String get years => 'سنوات';
	@override String get updatedSuccessfully => 'تم تحديث الملف الشخصي بنجاح!';
	@override late final _TranslationsProfileCalculatedValuesAr calculatedValues = _TranslationsProfileCalculatedValuesAr._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreAr implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'درجة الصحة';
	@override String get whyThisScore => 'لماذا هذه الدرجة؟';
	@override String get note => 'هذه الدرجة هي تقدير من الذكاء الاصطناعي استنادًا إلى المكونات المحددة وكثافة العناصر الغذائية. استشر دائمًا محترفًا للحصول على مشورة غذائية.';
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
	@override String get unitCm => 'سم';
	@override String get unitFt => 'قدم';
	@override String get unitKg => 'كغ';
	@override String get unitLbs => 'رطل';
	@override String get metricCm => 'متري (سم)';
	@override String get imperialFtIn => 'إمبراطوري (قدم/بوصة)';
	@override String get metricKg => 'متري (كجم)';
	@override String get imperialLbs => 'إمبراطوري (أرطال)';
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
	@override String get title => 'ابق على المسار الصحيح مع التذكيرات';
	@override String get description => 'احصل على تذكيرات لطيفة لتسجيل وجباتك والبقاء متسقًا مع أهداف تغذيتك';
	@override String get notificationsEnabled => 'التنبيهات مفعلة';
	@override String get notificationsDisabled => 'التنبيهات معطلة';
	@override String get enabledSubtitle => 'ستتلقى تذكيرات بالوجبات';
	@override String get disabledSubtitle => 'قم بتمكين التنبيهات للتوصل بتذكيرات بالوجبات';
	@override String get mealReminders => 'تذكيرات الوجبات';
	@override String get breakfast => 'الإفطار';
	@override String get lunch => 'الغداء';
	@override String get dinner => 'العشاء';
	@override String get snack => 'وجبة خفيفة';
	@override String get unknown => 'غير معلوم';
	@override String get change => 'تغيير';
	@override String get enableNotifications => 'تفعيل التنبيهات';
	@override String get skipForNow => 'تخطي الآن';
	@override String get saveChanges => 'احفظ التغييرات';
	@override String get enabledSuccessfully => 'تم تفعيل التنبيهات بنجاح!';
	@override String get permissionDenied => 'تم رفض إذن التنبيه';
	@override String errorEnabling({required Object error}) => 'خطأ في تفعيل التنبيهات: ${error}';
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
	@override String get signInFailed => 'فشل تسجيل دخول جوجل أو تم إلغاؤه.';
}

// Path: disclaimer
class _TranslationsDisclaimerAr implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'يرجى ملاحظة';
	@override late final _TranslationsDisclaimerSnapAr snap = _TranslationsDisclaimerSnapAr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateAr weightEstimate = _TranslationsDisclaimerWeightEstimateAr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsAr healthMetrics = _TranslationsDisclaimerHealthMetricsAr._(_root);
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
	@override String enjoyingQuestion({required Object appLabel}) => 'هل تستمتع بـ${appLabel}؟';
	@override String get yes => 'نعم، أستمتع باستخدامه';
	@override String get no => 'ليس حقًا';
	@override String soloDevMessage({required Object appLabel}) => 'تقييم سريع يساعد الآخرين على العثور على ${appLabel} ويُديم تطويره. هل تود أن تترك تقييماً سريعاً؟';
	@override String get shareFeedbackViaEmail => 'ملاحظاتك تُشكل ما سيأتي — نقرأ كل رسالة. هل ترغب بمشاركة آرائك عبر البريد الإلكتروني؟';
	@override String get rateCta => 'قيّم على متجر Play';
	@override String get maybeLater => 'ربما لاحقًا';
	@override String get sendFeedback => 'أرسل ملاحظات';
	@override String get noThanks => 'لا، شكرًا';
	@override String get aboutUsDescription => 'تم تطويرها بعناية من قبل فريق صغير. نركّز على الخصوصية والبساطة، ونساعدك على بناء عادات غذائية أفضل.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'هل تريد معرفة من يقف وراء ${appLabel}؟ انظر ';
	@override String get aboutUsLinkLabel => 'من نحن';
}

// Path: errors
class _TranslationsErrorsAr implements TranslationsErrorsEn {
	_TranslationsErrorsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'خطأ في تحميل بيانات الملف الشخصي';
	@override String get somethingWentWrong => 'حدث خطأ ما.';
}

// Path: debug
class _TranslationsDebugAr implements TranslationsDebugEn {
	_TranslationsDebugAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'خيارات التصحيح';
	@override String get searchHint => 'ابحث...';
	@override late final _TranslationsDebugSectionsAr sections = _TranslationsDebugSectionsAr._(_root);
	@override String get showActiveNotifications => 'عرض التنبيهات النشطة';
	@override String get scheduleTestNotification => 'جدولة تنبيه اختبار (10 ثواني)';
	@override String get triggerBreakfastNotification => 'تنبيه إفطار مُفعّل';
	@override String get cancelAllNotifications => 'إلغاء جميع التنبيهات';
	@override String get activeNotifications => 'التنبيهات النشطة';
	@override String get noTitle => 'لا عنوان';
	@override String get noBody => 'لا محتوى';
	@override String get fetchTodaysSteps => 'جلب خطوات اليوم';
	@override String get fetchTodaysCalories => 'جلب السعرات الحرارية اليوم';
	@override String get fetchLatestWeight => 'جلب أحدث وزن';
	@override String get fetchLatestHeight => 'جلب أحدث طول';
	@override String get writeTestWeight => 'كتابة وزن اختبار (70 كجم)';
	@override String get writeTestHeight => 'كتابة طول اختبار (175 سم)';
	@override String get syncLast7Days => 'مزامنة آخر 7 أيام';
	@override String get sync7DaysTitle => 'مزامنة 7 أيام';
	@override String get checkCurrentLocale => 'التحقق من اللغة الحالية';
	@override String get currentLocale => 'اللغة الحالية';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'اللغة: ${languageCode}\nالبلد: ${countryCode}\nنظام الوحدة: ${unitSystem}';
	@override String get latestWeight => 'آخر وزن';
	@override String get latestHeight => 'آخر طول';
	@override String get todaysCalories => 'سعرات اليوم';
	@override String totalCaloriesBurned({required Object calories}) => 'إجمالي السعرات الحرارية المحترقة: ${calories}';
	@override String syncSuccess({required Object count}) => 'تم جلب ${count} بيانات بنجاح لخطوات، سعرات، ووزن الأيام السبعة الماضية.';
	@override String get noWeightData => 'لا توجد بيانات وزن خلال الثلاثين يومًا الماضية.';
	@override String get noHeightData => 'لا توجد بيانات طول خلال العام الماضي.';
	@override String get noCalorieData => 'لا توجد بيانات سعرات لهذا اليوم.';
	@override String get weightWritten => 'تم كتابة وزن الاختبار بنجاح (70 كجم).';
	@override String get weightWriteFailed => 'فشل في كتابة وزن الاختبار.';
	@override String get heightWritten => 'تم كتابة طول الاختبار بنجاح (175 سم).';
	@override String get heightWriteFailed => 'فشل في كتابة طول الاختبار.';
	@override String get noNotifications => 'لا توجد تنبيهات نشطة.';
	@override String get testNotificationScheduled => 'تم جدولة تنبيه اختبار لمدة 10 ثوانٍ من الآن.';
	@override String get testNotificationBody => 'هذا تنبيه اختبار مجدول لمدة 10 ثوانٍ من الآن.';
	@override String get breakfastNotificationTriggered => 'تم تفعيل تنبيه الإفطار.';
	@override String get allNotificationsCancelled => 'تم إلغاء جميع التنبيهات.';
	@override String get fetchingData => 'جاري جلب البيانات لآخر 7 أيام...';
	@override String id({required Object id}) => 'معرف: ${id}';
	@override String get showFeedbackRatingSheet => 'عرض نافذة التقييم/التعليقات';
	@override String get clearUserPreferences => 'مسح تفضيلات المستخدم';
	@override String get clearUserPreferencesConfirmationTitle => 'مسح تفضيلات المستخدم؟';
	@override String get clearUserPreferencesConfirmationMessage => 'سيتم إعادة تعيين السمة واللغة وتفضيلات التعليقات. لن تتأثر الوجبات والملف الشخصي.';
	@override String get clearUserProfile => 'مسح الملف الشخصي';
	@override String get clearUserProfileConfirmationTitle => 'مسح الملف الشخصي؟';
	@override String get clearUserProfileConfirmationMessage => 'سيتم مسح بيانات ملفك الشخصي (الهدف اليومي، الطول، الوزن، إلخ). لن تتأثر الوجبات والتفضيلات.';
	@override String get clear => 'مسح';
	@override String get cancel => 'إلغاء';
	@override String get checkWatchConnection => 'تحقق من اتصال الساعة';
	@override String get sendTestMessage => 'إرسال رسالة اختبار';
	@override String get sendTestMessageSubtitle => 'إرسال رسالة اختبار بسيطة إلى الساعة';
	@override String get sendTestMealData => 'إرسال بيانات وجبة اختبارية';
	@override String get sendTestMealDataSubtitle => 'إرسال بيانات وجبة نموذجية إلى الساعة';
	@override String get sendTestCalorieGoal => 'إرسال هدف سعرات اختبارية';
	@override String get sendTestCalorieGoalSubtitle => 'إرسال هدف سعرات نموذجي إلى الساعة';
	@override String get viewReceivedMessages => 'عرض الرسائل المستلمة';
	@override String get viewReceivedMessagesSubtitle => 'عرض الرسائل المستلمة من الساعة';
	@override String get watchConnected => 'الساعة متصلة ✓';
	@override String get device => 'الجهاز';
	@override String get nearby => 'قريب';
	@override String get yes => 'نعم';
	@override String get no => 'لا';
	@override String get connectedDevices => 'الأجهزة المتصلة';
	@override String get deviceInfoUnavailable => '(معلومات الجهاز غير متاحة)';
	@override String get unknownDevice => 'جهاز غير معروف';
	@override String get watchNotConnected => 'الساعة غير متصلة ✗';
	@override String get watchNotConnectedHint => 'تأكد من:\n• أن الجهازين مقترنان\n• أن تطبيق الساعة قيد التشغيل\n• أن كلا التطبيقين في وضع التصحيح/التجريبي';
	@override String get watchConnection => 'اتصال الساعة';
	@override String errorCheckingConnection({required Object error}) => 'خطأ في التحقق من الاتصال: ${error}';
	@override String get helloFromPhone => 'مرحبًا من الهاتف!';
	@override String get testMessageSentSuccess => 'تم إرسال رسالة الاختبار بنجاح!';
	@override String get testMessageFailed => 'فشل إرسال رسالة الاختبار. تحقق من اتصال الساعة.';
	@override String errorSendingMessage({required Object error}) => 'خطأ أثناء إرسال الرسالة: ${error}';
	@override String get testMeal => 'وجبة اختبارية';
	@override String get testMealDataSentSuccess => 'تم إرسال بيانات الوجبة الاختبارية بنجاح!';
	@override String get failedToSendMealData => 'فشل إرسال بيانات الوجبة. تحقق من اتصال الساعة.';
	@override String errorSendingMealData({required Object error}) => 'خطأ أثناء إرسال بيانات الوجبة: ${error}';
	@override String get testCalorieGoalSentSuccess => 'تم إرسال هدف السعرات الاختباري بنجاح!';
	@override String get failedToSendCalorieGoal => 'فشل إرسال هدف السعرات. تحقق من اتصال الساعة.';
	@override String errorSendingCalorieGoal({required Object error}) => 'خطأ أثناء إرسال هدف السعرات: ${error}';
	@override String get testAnalyzeImage => 'اختبار تحليل الصورة';
	@override String get testAnalyzeImageSubtitle => 'رفع صورة اختبار مضمَّنة';
	@override String get testDetectImage => 'اختبار اكتشاف الصورة';
	@override String get testDetectImageSubtitle => 'اكتشاف الوجبة من رابط الصورة';
	@override String get detectImageFromGallery => 'اكتشاف صورة من المعرض';
	@override String get detectImageFromGallerySubtitle => 'اختر صورة، ارفعها إلى الحاوية وقم بتقدير السعرات';
	@override String get testDetectText => 'اختبار اكتشاف النص';
	@override String get testDetectTextSubtitle => 'اكتشاف الوجبة من وصف نصي';
	@override String get testMealLoggingWithVariations => 'اختبار تسجيل الوجبة مع تنويعات';
	@override String get testMealLoggingWithVariationsSubtitle => 'اختبار كامل لتدفق تسجيل الوجبة مع التنويعات';
	@override String get mockMealWithVariations => 'وجبة نموذجية مع تنويعات';
	@override String get mockMealWithVariationsSubtitle => 'معاينة التنويعات ونصائح الواجهة دون التسجيل';
	@override String get mockMealName => 'دجاج مشوي مع أرز وخضروات';
	@override String get mockTip => 'هذه نصيحة تجريبية لمعاينة واجهة المستخدم. الوجبة غير مسجلة.';
	@override String get mockMealDescription => 'وجبة نموذجية للتصحيح';
	@override String get portionSizeQuestion => 'كيف كان حجم الحصة؟';
	@override String get extraSidesQuestion => 'هل هناك أطباق جانبية إضافية؟';
	@override String get optionSmall => 'صغير';
	@override String get optionMedium => 'متوسط';
	@override String get optionLarge => 'كبير';
	@override String get optionNone => 'لا شيء';
	@override String get optionSideSalad => 'سلطة جانبية';
	@override String get optionBreadRoll => 'رغيف خبز';
	@override String get testingAnalyzeImage => 'جارٍ اختبار واجهة analyzeImage...';
	@override String get testingDetectImage => 'جارٍ اختبار واجهة detectImage...';
	@override String get testingDetectText => 'جارٍ اختبار واجهة detectText...';
	@override String get selectingImageFromGallery => 'جاري اختيار صورة من المعرض...';
	@override String get noImageSelected => 'لم يتم اختيار صورة';
	@override String get compressingImage => 'جارٍ ضغط الصورة...';
	@override String get uploadingImageAndDetecting => 'جارٍ رفع الصورة إلى التخزين واكتشاف الوجبة...';
	@override String get testingMealLoggingFlow => 'جارٍ اختبار تدفق تسجيل الوجبات مع التنويعات...';
	@override String get noMealIdentifiedInResponse => 'لم يتم تحديد أي وجبة في الاستجابة';
	@override String get mealIdentified => 'تم تحديد الوجبة';
	@override String get confidence => 'درجة الثقة';
	@override String get tip => 'نصيحة';
	@override String get mealName => 'اسم الوجبة';
	@override String get calories => 'السعرات';
	@override String get protein => 'البروتين';
	@override String get carbs => 'الكربوهيدرات';
	@override String get fat => 'الدهون';
	@override String get noMealInfo => 'لا توجد معلومات عن الوجبة';
	@override String get na => 'غير متوفر';
	@override String get analyzeImageResult => 'نتيجة تحليل الصورة';
	@override String get detectImageResult => 'نتيجة اكتشاف الصورة';
	@override String get detectImageFromGalleryResult => 'نتيجة اكتشاف الصورة من المعرض';
	@override String get detectTextResult => 'نتيجة اكتشاف النص';
	@override String errorGeneric({required Object error}) => 'خطأ: ${error}';
	@override String get variationsCount => 'التنويعات';
	@override String get userPreferencesCleared => 'تم مسح تفضيلات المستخدم';
	@override String get userProfileCleared => 'تم مسح ملف المستخدم';
	@override String get checkForUpdate => 'التحقق من وجود تحديث';
	@override String get showPatchNumber => 'عرض رقم التصحيح';
	@override String get showUpdateAvailable => 'إظهار توفر تحديث';
	@override String get updateAvailable => 'تحديث متاح';
	@override String get upToDate => 'مُحدَّث';
	@override String get shorebirdUnavailable => 'خدمة Shorebird غير متاحة في هذه البيئة.';
	@override String get patchNumberLabel => 'رقم التصحيح';
	@override String get noPatchInstalled => 'لا يوجد تصحيح مثبت';
	@override String get todaysSteps => 'خطوات اليوم';
	@override String get stepsLabel => 'الخطوات';
	@override String weightLabel({required Object value}) => 'الوزن: ${value} كجم';
	@override String heightLabel({required Object value}) => 'الطول: ${value} سم';
	@override String get receivedMessagesFromWatch => 'الرسائل المستلمة من الساعة';
	@override String get noMessagesReceivedYet => 'لم يتم استلام أي رسائل بعد.\n\nأرسل بيانات اختبار من الساعة لرؤية الرسائل هنا.';
	@override String get messagesCleared => 'تم مسح الرسائل';
}

// Path: health
class _TranslationsHealthAr implements TranslationsHealthEn {
	_TranslationsHealthAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'تعذر المزامنة مع Health Connect';
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
	@override String get title => 'ما هو جنسك؟';
	@override String get description => 'يساعد الجنس في حساب معدل الأيض الأساسي (BMR) بدقة.';
	@override String get next => 'التالي';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightAr implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما هو طولك؟';
	@override String get description => 'يساعد طولك في حساب مؤشر كتلة الجسم (BMI) واحتياجات الطاقة بدقة.';
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
	@override String get currentDescription => 'وزنك الحالي ضروري لتخصيص أهدافك اليومية.';
	@override String get targetTitle => 'ما هو وزنك المستهدف؟';
	@override String get targetDescription => 'تحديد وزن هدف يساعدنا في تحديد خطتك على المدى الطويل.';
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
	@override String get obese => 'السمنة';
	@override late final _TranslationsOnboardingBmiScaleCategoriesAr categories = _TranslationsOnboardingBmiScaleCategoriesAr._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesAr messages = _TranslationsOnboardingBmiScaleMessagesAr._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalAr implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما هو هدفك؟';
	@override String get description => 'اختر الهدف الذي يصف ما تريد تحقيقه بشكل أفضل';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelAr implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما مدى نشاطك؟';
	@override String get description => 'يساعدنا ذلك في حساب احتياجاتك اليومية من السعرات الحرارية بدقة أكبر';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectAr implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الاتصال مع Health Connect';
	@override String get description => 'مزامنة بيانات صحتك للحصول على رؤى أفضل وتتبع السعرات الحرارية تلقائيًا';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingAr automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingAr._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsAr progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsAr._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationAr seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationAr._(_root);
	@override String get connected => 'تم الاتصال بـ Health Connect';
	@override String get notConnected => 'لم يتم الاتصال بـ Health Connect';
	@override String get setup => 'إعداد Health Connect';
	@override String get skipForNow => 'تخطي الآن';
	@override String get statusConnected => 'تم الاتصال بـ Health Connect.';
	@override String get statusSuccess => 'تم الاتصال بـ Health Connect بنجاح!';
	@override String statusPermissionDenied({required Object appLabel}) => 'تم رفض الإذن. يرجى تمكين أذونات Health Connect من إعدادات هاتفك لـ ${appLabel}.';
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

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalAr implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حدد هدفك اليومي';
	@override String get titleSet => 'هدفك اليومي';
	@override String get description => 'هل أنت مستعد للانطلاق في رحلة الصحة الخاصة بك؟ حدد هدف السعرات الحرارية اليومية أدناه لبدء تقدمك.';
	@override String get descriptionSet => 'تم تعيين بوصلتك! هذا هو هدف السعرات الحرارية اليومية لتوجيهك.';
	@override String get yourGoal => 'هدفك';
	@override String get goal => 'الهدف';
	@override String get dailyCalories => 'السعرات الحرارية اليومية (كيلو كالوري)';
	@override String get setGoal => 'حدد الهدف';
	@override String get intake => 'تناول';
	@override String get burned => 'محترقة';
	@override String get weightImpact => 'أثر الوزن';
	@override String get estLoss => 'التقريب لخسارة';
	@override String get estGain => 'التقريب لزيادة';
	@override String get kcal => 'كيلو كالوري';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryAr implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الملخص اليومي';
	@override String get calories => 'السعرات الحرارية';
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
	@override String get title => 'نسبة الماكرو اليوم';
	@override String get target => 'الهدف';
	@override String get current => 'الحالي';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryAr implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تاريخ الماكرو لمدة 7 أيام';
	@override String get noHistoryYet => 'لا يوجد تاريخ بعد';
	@override String get startLogging => 'ابدأ بتسجيل الوجبات لترى اتجاهات الماكرو لدينا هنا';
}

// Path: home.mealLog
class _TranslationsHomeMealLogAr implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الوجبات المسجلة';
	@override String get emptyMessage => 'قم بالتقاط صورة لوجبتك الأخيرة لتسجيلها هنا.';
	@override String get noMealsToday => 'لا توجد وجبات مسجلة اليوم';
	@override String get seeAllMeals => 'رؤية جميع الوجبات';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionAr implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إضافة سريعة باستخدام الذكاء الاصطناعي';
	@override String get description => 'قم بوصف وجبتك، ودع الذكاء الاصطناعي يتولى التفاصيل.';
	@override String get hint => 'مثل: للإفطار كان لدي وعاء كبير من الشوفان مع موزة مقطعة وملعقة من بروتين مصل الحليب ...';
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
	@override String get addFavoriteHint => 'اضغط على النجمة في وجبة لتحديدها كمفضلة.';
	@override String get seeAll => 'رؤية الكل';
	@override String get add => 'إضافة';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapAr implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'التقط وتابع وجبتك';
	@override String get description => 'استخدم الكاميرا لالتقاط صورة لطعامك لتحليل الذكاء الاصطناعي.';
	@override String get openCamera => 'فتح الكاميرا';
	@override String get gallery => 'المعرض';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthAr implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مزامنة مع Health Connect';
	@override String get description => 'قم بمزامنة بيانات التغذية الخاصة بك مع Health Connect';
	@override String get install => 'تثبيت';
	@override String get connect => 'الاتصال';
}

// Path: meal.nutrition
class _TranslationsMealNutritionAr implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get calories => 'السعرات الحرارية';
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
	@override String get message => 'هل أنت متأكد أنك تريد حذف إدخال هذه الوجبة؟';
	@override String get cancel => 'إلغاء';
	@override String get delete => 'احذف';
}

// Path: meal.variation
class _TranslationsMealVariationAr implements TranslationsMealVariationEn {
	_TranslationsMealVariationAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'السؤال ${current} من ${total}';
	@override String get noVariationsAvailable => 'لا توجد تنويعات متاحة';
}

// Path: profile.sections
class _TranslationsProfileSectionsAr implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'الملف الشخصي';
	@override String get basicInformation => 'المعلومات الأساسية';
	@override String get goalsAndActivity => 'الأهداف والنشاط';
	@override String get calculatedValues => 'القيم المحسوبة';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesAr implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'معدل الأيض الأساسي';
	@override String get tdee => 'المجموع اليومي لإحتياج السعرات الحرارية';
	@override String get dailyGoal => 'الهدف اليومي';
	@override String get calPerDay => 'سعرات حرارية / يوم';
	@override String get notAvailable => 'غير متوفر';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsAr implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'المعلومات الشخصية';
	@override String get physicalMeasurements => 'القياسات الجسدية';
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
	@override String get localization => 'الترجمة';
	@override String get notifications => 'الإشعارات';
	@override String get healthConnect => 'الاتصال الصحي';
	@override String get supportAndLegal => 'الدعم والقانوني';
	@override String get about => 'معلومات';
	@override String get dangerZone => 'منطقة الخطر';
	@override String get developer => 'المطور';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileAr implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تعديل الملف الشخصي';
	@override String get subtitle => 'قم بتحديث معلوماتك الشخصية';
}

// Path: settings.language
class _TranslationsSettingsLanguageAr implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اللغة';
	@override String get subtitle => 'اختر لغتك المفضلة';
	@override String get searchHint => 'ابحث عن اللغات...';
	@override String get noResults => 'لا توجد نتائج';
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
	@override String get subtitle => 'ابق على المسار الصحيح مع تنبيهات في الوقت المناسب';
}

// Path: settings.theme
class _TranslationsSettingsThemeAr implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الثيم';
	@override String get light => 'فاتح';
	@override String get dark => 'داكن';
	@override String get system => 'نظام';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackAr implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'أرسل ملاحظات';
	@override String subtitle({required Object appLabel}) => 'ساعدنا في تحسين ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'ملاحظات تطبيق ${appLabel}';
	@override String get emailBodyPrefix => 'يرجى تقديم ملاحظاتك أدناه:';
	@override String get appVersion => 'إصدار التطبيق';
	@override String get device => 'الجهاز';
	@override String get osVersion => 'إصدار نظام التشغيل';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataAr implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مسح جميع البيانات';
	@override String get subtitle => 'حذف جميع معلوماتك بشكل لا يمكن التراجع عنه';
	@override String get confirmationTitle => 'مسح جميع البيانات؟';
	@override String get confirmationMessage => 'لا يمكن التراجع عن هذا الإجراء. سيتم حذف جميع وجباتك المسجلة، والمفضلات، وإعدادات الملف الشخصي بشكل دائم.';
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

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectAr implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الاتصال الصحي';
	@override String get subtitle => 'عرض وإدارة الأذونات';
	@override late final _TranslationsSettingsHealthConnectUnavailableAr unavailable = _TranslationsSettingsHealthConnectUnavailableAr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsAr permissions = _TranslationsSettingsHealthConnectPermissionsAr._(_root);
	@override String get managePermissions => 'إدارة الأذونات';
	@override String get openSettings => 'فتح إعدادات الاتصال الصحي';
	@override String get requestPermissions => 'طلب الأذونات';
	@override String get permissionRequestCancelledOrFailed => 'تم إلغاء طلب الأذونات أو فشل. يرجى المحاولة مرة أخرى أو منح الأذونات يدويًا في إعدادات Health Connect.';
	@override String get permissionRequestFailed => 'تعذر طلب الأذونات. يرجى المحاولة مرة أخرى أو منح الأذونات يدويًا في إعدادات Health Connect.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutAr implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حول';
	@override String get tagline => 'وعي بالسعرات الحرارية بشكل سريع ومجاني واهتمام بالخصوصية';
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
	@override String version({required Object version}) => 'Calorify الإصدار ${version}';
	@override String build({required Object buildNumber}) => 'بناء ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastAr implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وقت الإفطار! 🍳';
	@override String get body => 'لا تنسى تسجيل إفطارك';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchAr implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وقت الغداء! 🥗';
	@override String get body => 'حان وقت تسجيل الغداء';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerAr implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وقت العشاء! 🍽️';
	@override String get body => 'لا تنسى تسجيل عشاءك';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackAr implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وقت الوجبة الخفيفة! 🍎';
	@override String get body => 'حان وقت الوجبة الخفيفة الصحية';
}

// Path: notifications.test
class _TranslationsNotificationsTestAr implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تنبيه اختبار';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapAr implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} يقدم معلومات غذائية تقديرية. تعتمد الدقة على إدخالاتك وتفاوتات الغذاء. استخدمها كدليل، وليس كمصدر نهائي. استشر محترفًا للحصول على نصيحة غذائية مخصصة.';
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
	@override String get description => 'التغيير في الوزن المتوقع هو تقدير نظري يستند إلى نموذج السعرات الحرارية الداخلة مقابل السعرات الحرارية الخارجة. وهو مخصص للتوجيه التحفيزي فقط، وليس كتنبؤ لوزنك الفعلي.';
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

// Path: debug.sections
class _TranslationsDebugSectionsAr implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'التنبيهات';
	@override String get healthConnect => 'Health Connect';
	@override String get wearOs => 'Wear OS';
	@override String get foodApiTests => 'اختبارات Food API';
	@override String get feedback => 'التعليقات';
	@override String get dataReset => 'إعادة تعيين البيانات';
	@override String get appInfo => 'معلومات التطبيق';
	@override String get shorebird => 'Shorebird';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionAr implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'التمييز الذكي للطعام';
	@override String get description => 'التقط صورة ودع الذكاء الاصطناعي يتعرف على وجبتك';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisAr implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تحليل الذكاء الاصطناعي';
	@override String get description => 'احصل على حقائق غذائية فورية من أوصافك';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationAr implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تكامل الصحة';
	@override String get description => 'تواصل مع Health Connect للحصول على رؤى أفضل';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesAr implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'نقص الوزن';
	@override String get healthyWeight => 'وزن صحي';
	@override String get overweight => 'زيادة الوزن';
	@override String get obese => 'السمنة';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesAr implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'يمكننا مساعدتك في بناء خطة صحية للوصول إلى وزن متوازن مع وجبات غنية بالمغذيات.';
	@override String get healthy => 'عمل رائع! أنت في نطاق صحي. سنساعدك في الحفاظ على حيويتك ومستويات الطاقة لديك.';
	@override String overweight({required Object appLabel}) => '${appLabel} ستبسط رحلتك مع تتبع مدعوم بالذكاء الاصطناعي لمساعدتك في الوصول إلى هدفك براحة.';
	@override String get obese => 'نحن هنا لدعمك مع إرشادات شخصية واستراتيجيات مستدامة لأهدافك الصحية.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingAr implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'التتبع التلقائي للسعرات الحرارية';
	@override String get description => 'تتبع السعرات الحرارية المحترقة من تطبيقات اللياقة البدنية الخاصة بك';
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
	@override String get description => 'قم بمزامنة البيانات من تطبيقات الصحة المفضلة لديك';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessAr implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'لست وحدك';
	@override String get genericMessage => 'تشير الأبحاث إلى أن التتبع المستمر هو أفضل مؤشر على النجاح على المدى الطويل.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'بالنسبة لـ ${age} عامًا ${gender} يسعى إلى ${goal}، فإن التتبع المستمر هو أفضل مؤشر للنجاح.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} تجعل الأمر أسهل بـ 10 مرات مما هو الحال عند القيام بذلك يدويًا.';
	@override String get getStartedTitle => 'هل أنت مستعد للبدء؟';
	@override String get tipPhoto => 'التقط صورة لوجباتك للحصول على تحليل فوري';
	@override String get tipConsistency => 'سجل بشكل متسق لرؤية تقدم ذي معنى';
	@override String get tipProgress => 'تتبع تقدمك يوميًا للبقاء محفزًا';
	@override String get button => 'لنذهب';
	@override String get defaultGender => 'فرد';
	@override String get defaultGoal => 'أنت أكثر صحة';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileAr implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ملفك الصحي';
	@override String bmiDescription({required Object bmi}) => 'استنادًا إلى قياساتك، فإن مؤشر كتلة جسمك هو ${bmi}.';
	@override String get finalizeDescription => 'دعنا ننهي ملفك لتخصيص تجربتك.';
	@override String get goalGain => 'زيادة';
	@override String get goalLose => 'فقدان';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'للوصول إلى هدفك، ستحتاج إلى ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'أنت في وزن الهدف الخاص بك! سنساعدك في الحفاظ عليه.';
	@override String get button => 'لنذهب';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleAr implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'بداية ممتازة!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'لقد اتخذت الخطوة الأولى نحو ${goalText}. نظرًا لأنك ${activityText}، سيقوم ${appLabel} بتعديل أهدافك لتناسب نمط حياتك.';
	@override String get personalizedTargets => 'أهداف السعرات الحرارية المخصصة';
	@override String get aiMealDetection => 'كشف الوجبات المدعوم بالذكاء الاصطناعي';
	@override String get macroBreakdowns => 'تفاصيل دقيقة عن العناصر الغذائية';
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
	@override String get description => 'إنشاء عجز في السعرات الحرارية لفقدان الوزن';
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
	@override String get description => 'إنشاء فائض في السعرات الحرارية لزيادة الوزن';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryAr implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'كثير الجلوس';
	@override String get description => 'قليل جدًا من التمارين';
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
	@override String get name => 'نشاط شديد';
	@override String get description => 'تمارين شديدة، وظيفة بدنية';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableAr implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect غير متاح';
	@override String get description => 'Health Connect غير متاح على هذا الجهاز. يُرجى تثبيت Health Connect من متجر Play ‏(Android 9+) أو التحديث إلى Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsAr implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الأذونات';
	@override String get description => 'الأذونات التالية مطلوبة لتوفير تكامل الاتصال الصحي:';
	@override String get granted => 'ممنوحة';
	@override String get notGranted => 'غير ممنوحة';
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
	@override String content({required Object appLabel}) => '${appLabel} وُلِدت من إحباط بسيط: معظم تطبيقات تتبع السعرات الحرارية إما معقدة للغاية، أو تطلب إدخال يدوي مستمر، أو تفرض رسوم اشتراك مرتفعة، أو تتنازل عن الخصوصية.\n\nكمطور مستقل، أردت أن أبني شيئًا أبسط وأكثر عدلاً - تطبيق يستخدم الذكاء الاصطناعي لتقليل الجهد، يبقى سريعًا ومجانيًا للاستخدام، ويعامل بيانات صحتك باحترام.\n\n${appLabel} هو التطبيق الذي كنت أتمنى وجوده: لا حسابات، لا تتبع، لا إعلانات - فقط رؤى واضحة وعملية وأهداف صحتك.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyAr implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'خصوصيتك مهمة';
	@override String get description => 'الخصوصية ليست فكرة جانبية - إنها مبدأ تصميم. إليك ما يعنيه ذلك في الممارسة:';
	@override String get noAccounts => 'لا حاجة لحسابات\nاستخدم التطبيق على الفور. لا تسجيل، لا هويات.';
	@override String noTracking({required Object appLabel}) => 'لا تتبع سلوكي\n${appLabel} لا تراقب نشاطك، ولا تبني ملفات تعريف استخدام، ولا تتبعك عبر التطبيقات أو المواقع.';
	@override String noAds({required Object appLabel}) => 'خالية من الإعلانات بتصميمها\n${appLabel} تم بناؤها لتعمل بدون إعلانات أو تحقيق إيرادات مبنية على البيانات.';
	@override String get noDataSelling => 'لا بيع بيانات\nبيانات صحتك لا تُباع أو تُشارك مع أطراف ثالثة.';
	@override String get localStorage => 'تخزين محلي أولاً\nبياناتك تبقى على جهازك.';
	@override String get privacyPolicy => 'سياسة الخصوصية';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperAr implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'بناءً بواسطة مطور مستقل';
	@override String description({required Object appLabel}) => '${appLabel} تم بناؤها وصيانتها بواسطة مطور مستقل واحد يركز على إنشاء برامج صحية تحترم الخصوصية.\n\nالتعليقات تُقرأ شخصياً وتساعد في تشكيل اتجاه التطبيق.';
	@override String get website => 'موقع الويب';
	@override String get email => 'البريد الإلكتروني';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackAr implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'استمتع بـ ${appLabel}؟';
	@override String description({required Object appLabel}) => 'تعليقاتك تساعد في جعل ${appLabel} أفضل للجميع.';
	@override String get rateApp => 'قيم على متجر بلاي';
	@override String get sendFeedback => 'أرسل تعليقات';
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
	@override String description({required Object appLabel}) => 'يمكن أن تؤثر طرق الطهي بشكل كبير على المحتوى الغذائي للغذاء. قد لا تأخذ تقديرات ${appLabel} دائمًا في الاعتبار هذه التفاوتات.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsAr implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'المكونات';
	@override String get description => 'يمكن أن تؤدي الأطباق المعقدة ذات المكونات الخفية إلى تقديرات أقل دقة.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsAr implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قيود قاعدة البيانات';
	@override String description({required Object appLabel}) => 'قاعدة بيانات الطعام الخاصة بـ ${appLabel} واسعة لكنها قد لا تشمل كل عنصر غذائي أو تفاوت.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyAr implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'دقة السعرات الحرارية';
	@override String get description => 'هذا التقدير دقيق فقط بقدر ما هو دقيق تناول السعرات الحرارية وتلك التي أنفقت. سيؤدي التسجيل غير الدقيق إلى توقع غير دقيق.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsAr implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'العوامل البيولوجية';
	@override String description({required Object appLabel}) => 'فقدان أو زيادة الوزن الفعلي يتأثر بالتمثيل الغذائي، والهرمونات، والنوم، والضغط، وتوازن السوائل، وعوامل فردية أخرى لا يمكن لـ ${appLabel} قياسها.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightAr implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وزن الماء والتقلبات';
	@override String get description => 'يمكن أن يتقلب الوزن الطبيعي اليوم بشكل ملحوظ بسبب احتباس الماء، والهضم، والتوقيت. لا يأخذ التقدير في اعتباره هذه التغيرات اليومية.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceAr implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'التوجيه المهني';
	@override String get description => 'لا تستخدم هذا التقدير لاتخاذ قرارات طبية. استشر دائمًا محترف رعاية صحية أو أخصائي تغذية مسجّل للحصول على نصائح إدارة الوزن مخصصة.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrAr implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'معدل الأيض الأساسي';
	@override String get description => 'معدل الأيض الأساسي (BMR) هو عدد السعرات الحرارية التي يحرقها جسمك في حالة الراحة للحفاظ على الوظائف الأساسية مثل التنفس والدورة الدموية. يعتمد معدل الأيض الأساسي على عمرك وجنسك وطولك ووزنك. معدل الأيض الأساسي الأعلى يعني أن جسمك يحرق بشكل طبيعي المزيد من السعرات الحرارية في حالة الراحة، وغالبًا ما يكون ذلك بسبب زيادة الكتلة العضلية أو العمر الأصغر أو كونك ذكراً. عادةً ما يشير معدل الأيض الأساسي المنخفض إلى انخفاض الكتلة العضلية أو العمر الأكبر أو كونك أنثى.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeAr implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مجموع الإنفاق اليومي من الطاقة';
	@override String get description => 'مجموع الإنفاق اليومي من الطاقة (TDEE) هو إجمالي السعرات الحرارية التي تحرقها يوميًا، بما في ذلك معدل الأيض الأساسي الخاص بك بالإضافة إلى السعرات الحرارية من النشاط البدني والحركة اليومية. يعتمد مجموع الإنفاق اليومي من الطاقة على معدل الأيض الأساسي الخاص بك ومستوى نشاطك. يعني مجموع الإنفاق اليومي من الطاقة الأعلى أنك تحرق المزيد من السعرات الحرارية بشكل عام، عادةً بسبب كونك أكثر نشاطًا أو لامتلاكك معدل أيض أساسي أعلى. يشير مجموع الإنفاق اليومي من الطاقة المنخفض إلى نشاط يومي أقل أو معدل أيض أساسي أقل.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalAr implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الهدف اليومي';
	@override String get description => 'الهدف اليومي هو كمية السعرات الحرارية الموصى بها لك يوميًا بناءً على مجموع الإنفاق اليومي من الطاقة (TDEE) وهدف الوزن الخاص بك. لفقدان الوزن، تستهلك سعرات حرارية أقل من مجموع الإنفاق اليومي من الطاقة الخاص بك. للحفاظ على الوزن، تتطابق مع مجموع الإنفاق اليومي من الطاقة. لزيادة الوزن، تستهلك سعرات حرارية أكثر من مجموع الإنفاق اليومي من الطاقة الخاص بك. يساعدك ذلك في تحقيق التغيير المطلوب في وزنك بشكل صحي.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedAr implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قراءة إجمالي السعرات المحروقة';
	@override String get description => 'يسمح للتطبيق بقراءة إجمالي السعرات المحروقة من الاتصال الصحي.';
	@override String get usage => 'يستخدم هذا الإذن لعرض حرق السعرات اليومية في التطبيق، مما يساعدك على فهم إجمالي إنفاقك للطاقة طوال اليوم.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadAr implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قراءة بيانات التغذية';
	@override String get description => 'يسمح للتطبيق بقراءة بيانات التغذية من الاتصال الصحي.';
	@override String get usage => 'يسمح هذا الإذن للتطبيق بقراءة معلومات التغذية التي قد تم تسجيلها بواسطة تطبيقات أخرى متصلة بالاتصال الصحي، مما يوفر لك رؤية شاملة لتغذيتك.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteAr implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'كتابة بيانات التغذية';
	@override String get description => 'يسمح للتطبيق بكتابة بيانات التغذية إلى الاتصال الصحي.';
	@override String get usage => 'يسمح هذا الإذن للتطبيق بمزامنة وجباتك المسجلة مع الاتصال الصحي، مما يجعل بيانات التغذية الخاصة بك متاحة للتطبيقات الصحية واللياقة البدنية الأخرى التي تستخدمها.';
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
			'flag' => '🇸🇩',
			'appLabel' => ({required Object env}) => 'كالوري في ${env}',
			'onboarding.welcome' => ({required Object appLabel}) => 'مرحبًا بكم في ${appLabel}',
			'onboarding.subtitle' => 'رفيقك الشخصي للتغذية المدعوم بالذكاء الاصطناعي',
			'onboarding.getStarted' => 'ابدأ الآن',
			'onboarding.features.foodRecognition.title' => 'التمييز الذكي للطعام',
			'onboarding.features.foodRecognition.description' => 'التقط صورة ودع الذكاء الاصطناعي يتعرف على وجبتك',
			'onboarding.features.aiAnalysis.title' => 'تحليل الذكاء الاصطناعي',
			'onboarding.features.aiAnalysis.description' => 'احصل على حقائق غذائية فورية من أوصافك',
			'onboarding.features.healthIntegration.title' => 'تكامل الصحة',
			'onboarding.features.healthIntegration.description' => 'تواصل مع Health Connect للحصول على رؤى أفضل',
			'onboarding.gender.title' => 'ما هو جنسك؟',
			'onboarding.gender.description' => 'يساعد الجنس في حساب معدل الأيض الأساسي (BMR) بدقة.',
			'onboarding.gender.next' => 'التالي',
			'onboarding.height.title' => 'ما هو طولك؟',
			'onboarding.height.description' => 'يساعد طولك في حساب مؤشر كتلة الجسم (BMI) واحتياجات الطاقة بدقة.',
			'onboarding.height.metric' => 'متري',
			'onboarding.height.imperial' => 'إمبراطوري',
			'onboarding.height.next' => 'التالي',
			'onboarding.weight.currentTitle' => 'ما هو وزنك الحالي؟',
			'onboarding.weight.currentDescription' => 'وزنك الحالي ضروري لتخصيص أهدافك اليومية.',
			'onboarding.weight.targetTitle' => 'ما هو وزنك المستهدف؟',
			'onboarding.weight.targetDescription' => 'تحديد وزن هدف يساعدنا في تحديد خطتك على المدى الطويل.',
			'onboarding.weight.metric' => 'متري',
			'onboarding.weight.imperial' => 'إمبراطوري',
			'onboarding.weight.next' => 'التالي',
			'onboarding.age.title' => 'متى عيد ميلادك؟',
			'onboarding.age.description' => 'يساعدنا عمرك في حساب احتياجاتك من السعرات الحرارية بدقة.',
			'onboarding.age.next' => 'التالي',
			'onboarding.bmiScale.underweight' => 'نقص الوزن',
			'onboarding.bmiScale.healthy' => 'وزن صحي',
			'onboarding.bmiScale.overweight' => 'زيادة الوزن',
			'onboarding.bmiScale.obese' => 'السمنة',
			'onboarding.bmiScale.categories.underweight' => 'نقص الوزن',
			'onboarding.bmiScale.categories.healthyWeight' => 'وزن صحي',
			'onboarding.bmiScale.categories.overweight' => 'زيادة الوزن',
			'onboarding.bmiScale.categories.obese' => 'السمنة',
			'onboarding.bmiScale.messages.underweight' => 'يمكننا مساعدتك في بناء خطة صحية للوصول إلى وزن متوازن مع وجبات غنية بالمغذيات.',
			'onboarding.bmiScale.messages.healthy' => 'عمل رائع! أنت في نطاق صحي. سنساعدك في الحفاظ على حيويتك ومستويات الطاقة لديك.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} ستبسط رحلتك مع تتبع مدعوم بالذكاء الاصطناعي لمساعدتك في الوصول إلى هدفك براحة.',
			'onboarding.bmiScale.messages.obese' => 'نحن هنا لدعمك مع إرشادات شخصية واستراتيجيات مستدامة لأهدافك الصحية.',
			'onboarding.weightGoal.title' => 'ما هو هدفك؟',
			'onboarding.weightGoal.description' => 'اختر الهدف الذي يصف ما تريد تحقيقه بشكل أفضل',
			'onboarding.activityLevel.title' => 'ما مدى نشاطك؟',
			'onboarding.activityLevel.description' => 'يساعدنا ذلك في حساب احتياجاتك اليومية من السعرات الحرارية بدقة أكبر',
			'onboarding.healthConnect.title' => 'الاتصال مع Health Connect',
			'onboarding.healthConnect.description' => 'مزامنة بيانات صحتك للحصول على رؤى أفضل وتتبع السعرات الحرارية تلقائيًا',
			'onboarding.healthConnect.automaticTracking.title' => 'التتبع التلقائي للسعرات الحرارية',
			'onboarding.healthConnect.automaticTracking.description' => 'تتبع السعرات الحرارية المحترقة من تطبيقات اللياقة البدنية الخاصة بك',
			'onboarding.healthConnect.progressInsights.title' => 'رؤى التقدم',
			'onboarding.healthConnect.progressInsights.description' => 'احصل على رؤى مفصلة حول اتجاهات صحتك',
			'onboarding.healthConnect.seamlessIntegration.title' => 'تكامل سلس',
			'onboarding.healthConnect.seamlessIntegration.description' => 'قم بمزامنة البيانات من تطبيقات الصحة المفضلة لديك',
			'onboarding.healthConnect.connected' => 'تم الاتصال بـ Health Connect',
			'onboarding.healthConnect.notConnected' => 'لم يتم الاتصال بـ Health Connect',
			'onboarding.healthConnect.setup' => 'إعداد Health Connect',
			'onboarding.healthConnect.skipForNow' => 'تخطي الآن',
			'onboarding.healthConnect.statusConnected' => 'تم الاتصال بـ Health Connect.',
			'onboarding.healthConnect.statusSuccess' => 'تم الاتصال بـ Health Connect بنجاح!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'تم رفض الإذن. يرجى تمكين أذونات Health Connect من إعدادات هاتفك لـ ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'خطأ أثناء إعداد Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'لست وحدك',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'تشير الأبحاث إلى أن التتبع المستمر هو أفضل مؤشر على النجاح على المدى الطويل.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'بالنسبة لـ ${age} عامًا ${gender} يسعى إلى ${goal}، فإن التتبع المستمر هو أفضل مؤشر للنجاح.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} تجعل الأمر أسهل بـ 10 مرات مما هو الحال عند القيام بذلك يدويًا.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'هل أنت مستعد للبدء؟',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'التقط صورة لوجباتك للحصول على تحليل فوري',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'سجل بشكل متسق لرؤية تقدم ذي معنى',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'تتبع تقدمك يوميًا للبقاء محفزًا',
			'onboarding.reinforcement.trackingSuccess.button' => 'لنذهب',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'فرد',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'أنت أكثر صحة',
			'onboarding.reinforcement.healthProfile.title' => 'ملفك الصحي',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'استنادًا إلى قياساتك، فإن مؤشر كتلة جسمك هو ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'دعنا ننهي ملفك لتخصيص تجربتك.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'زيادة',
			'onboarding.reinforcement.healthProfile.goalLose' => 'فقدان',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'للوصول إلى هدفك، ستحتاج إلى ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'أنت في وزن الهدف الخاص بك! سنساعدك في الحفاظ عليه.',
			'onboarding.reinforcement.healthProfile.button' => 'لنذهب',
			'onboarding.reinforcement.goalLifestyle.title' => 'بداية ممتازة!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'لقد اتخذت الخطوة الأولى نحو ${goalText}. نظرًا لأنك ${activityText}، سيقوم ${appLabel} بتعديل أهدافك لتناسب نمط حياتك.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'أهداف السعرات الحرارية المخصصة',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'كشف الوجبات المدعوم بالذكاء الاصطناعي',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'تفاصيل دقيقة عن العناصر الغذائية',
			'onboarding.reinforcement.goalLifestyle.button' => 'لنذهب',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'أهدافك',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'نشط',
			'tabs.dashboard' => 'لوحة التحكم',
			'tabs.history' => 'التاريخ',
			'home.dailyGoal.title' => 'حدد هدفك اليومي',
			'home.dailyGoal.titleSet' => 'هدفك اليومي',
			'home.dailyGoal.description' => 'هل أنت مستعد للانطلاق في رحلة الصحة الخاصة بك؟ حدد هدف السعرات الحرارية اليومية أدناه لبدء تقدمك.',
			'home.dailyGoal.descriptionSet' => 'تم تعيين بوصلتك! هذا هو هدف السعرات الحرارية اليومية لتوجيهك.',
			'home.dailyGoal.yourGoal' => 'هدفك',
			'home.dailyGoal.goal' => 'الهدف',
			'home.dailyGoal.dailyCalories' => 'السعرات الحرارية اليومية (كيلو كالوري)',
			'home.dailyGoal.setGoal' => 'حدد الهدف',
			'home.dailyGoal.intake' => 'تناول',
			'home.dailyGoal.burned' => 'محترقة',
			'home.dailyGoal.weightImpact' => 'أثر الوزن',
			'home.dailyGoal.estLoss' => 'التقريب لخسارة',
			'home.dailyGoal.estGain' => 'التقريب لزيادة',
			'home.dailyGoal.kcal' => 'كيلو كالوري',
			'home.dailySummary.title' => 'الملخص اليومي',
			'home.dailySummary.calories' => 'السعرات الحرارية',
			'home.dailySummary.carbs' => 'الكربوهيدرات',
			'home.dailySummary.protein' => 'البروتين',
			'home.dailySummary.fat' => 'الدهون',
			'home.dailySummary.fiber' => 'الألياف',
			'home.dailySummary.grams' => 'غرام',
			'home.dailySummary.chartAccessibilityLabel' => 'مخطط المغذيات',
			'home.intakeProgress.title' => 'نسبة الماكرو اليوم',
			'home.intakeProgress.target' => 'الهدف',
			'home.intakeProgress.current' => 'الحالي',
			'home.intakeHistory.title' => 'تاريخ الماكرو لمدة 7 أيام',
			'home.intakeHistory.noHistoryYet' => 'لا يوجد تاريخ بعد',
			'home.intakeHistory.startLogging' => 'ابدأ بتسجيل الوجبات لترى اتجاهات الماكرو لدينا هنا',
			'home.mealLog.title' => 'الوجبات المسجلة',
			'home.mealLog.emptyMessage' => 'قم بالتقاط صورة لوجبتك الأخيرة لتسجيلها هنا.',
			'home.mealLog.noMealsToday' => 'لا توجد وجبات مسجلة اليوم',
			'home.mealLog.seeAllMeals' => 'رؤية جميع الوجبات',
			'home.mealDescription.title' => 'إضافة سريعة باستخدام الذكاء الاصطناعي',
			'home.mealDescription.description' => 'قم بوصف وجبتك، ودع الذكاء الاصطناعي يتولى التفاصيل.',
			'home.mealDescription.hint' => 'مثل: للإفطار كان لدي وعاء كبير من الشوفان مع موزة مقطعة وملعقة من بروتين مصل الحليب ...',
			'home.mealDescription.analyzeMeal' => 'تحليل الوجبة',
			'home.favoriteMeals.title' => 'الوجبات المفضلة',
			'home.favoriteMeals.description' => 'أضف بسرعة واحدة من وجباتك المفضلة.',
			'home.favoriteMeals.noFavorites' => 'لا توجد وجبات مفضلة بعد.',
			'home.favoriteMeals.addFavoriteHint' => 'اضغط على النجمة في وجبة لتحديدها كمفضلة.',
			'home.favoriteMeals.seeAll' => 'رؤية الكل',
			'home.favoriteMeals.add' => 'إضافة',
			'home.mealSnap.title' => 'التقط وتابع وجبتك',
			'home.mealSnap.description' => 'استخدم الكاميرا لالتقاط صورة لطعامك لتحليل الذكاء الاصطناعي.',
			'home.mealSnap.openCamera' => 'فتح الكاميرا',
			'home.mealSnap.gallery' => 'المعرض',
			'home.connectHealth.title' => 'مزامنة مع Health Connect',
			'home.connectHealth.description' => 'قم بمزامنة بيانات التغذية الخاصة بك مع Health Connect',
			'home.connectHealth.install' => 'تثبيت',
			'home.connectHealth.connect' => 'الاتصال',
			'history.noMeals' => 'لا توجد وجبات مسجلة',
			'history.emptyMessage' => 'قم بالتقاط صورة لوجبتك الأخيرة لتسجيلها هنا.',
			'history.today' => 'اليوم',
			'history.yesterday' => 'أمس',
			'meal.ohNo' => 'أوه لا!',
			'meal.delete' => 'احذف',
			'meal.editMeal' => 'تعديل الوجبة',
			'meal.addMeal' => 'أضف وجبة',
			'meal.saveMeal' => 'احفظ الوجبة',
			'meal.save' => 'احفظ',
			'meal.mealName' => 'اسم الوجبة',
			'meal.mealNameHint' => 'مثلاً: بيض مخفوق مع خبز محمص',
			'meal.mealQuantity' => 'كمية الوجبة',
			'meal.mealQuantityHint' => 'مثل: 1 وعاء، 2 شريحة',
			'meal.timeOfMeal' => 'وقت الوجبة',
			'meal.timeOfMealHint' => 'اختر الوقت الذي تناولت فيه وجبتك',
			'meal.mealType' => 'نوع الوجبة',
			'meal.nutrition.calories' => 'السعرات الحرارية',
			'meal.nutrition.carbs' => 'الكربوهيدرات (غ)',
			'meal.nutrition.protein' => 'البروتين (غ)',
			'meal.nutrition.fat' => 'الدهون (غ)',
			'meal.nutrition.fiber' => 'الألياف (غ)',
			'meal.deleteConfirmation.title' => 'حذف الوجبة',
			'meal.deleteConfirmation.message' => 'هل أنت متأكد أنك تريد حذف إدخال هذه الوجبة؟',
			'meal.deleteConfirmation.cancel' => 'إلغاء',
			'meal.deleteConfirmation.delete' => 'احذف',
			'meal.addedToLog' => 'تمت إضافة الوجبة إلى سجلك!',
			'meal.couldNotAdd' => ({required Object error}) => 'تعذر إضافة الوجبة: ${error}',
			'meal.savedSuccessfully' => 'تمت إضافة الوجبة بنجاح!',
			'meal.updatedSuccessfully' => 'تم تحديث الوجبة بنجاح!',
			'meal.errorSaving' => ({required Object error}) => 'خطأ عند حفظ الوجبة: ${error}',
			'meal.removedFromFavorites' => 'تمت إزالتها من المفضلات!',
			'meal.savedAsFavorite' => 'تمت حفظ الوجبة كمفضلة!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'تعذر تحديث المفضلة: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'فشل في المعالجة: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'فشل في معالجة الصورة: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'خطأ في ضغط الصورة: ${error}',
			'meal.failedToSave' => 'فشل في حفظ البيانات. يرجى المحاولة مرة أخرى.',
			'meal.skip' => 'تخطي',
			'meal.variation.question' => ({required Object current, required Object total}) => 'السؤال ${current} من ${total}',
			'meal.variation.noVariationsAvailable' => 'لا توجد تنويعات متاحة',
			'favorites.title' => 'المفضلات',
			'favorites.empty' => 'لا توجد وجبات مفضلة بعد.',
			'profile.title' => 'الملف الشخصي',
			'profile.noProfileData' => 'لا توجد بيانات ملف شخصية',
			'profile.yourProfile' => 'ملفك الشخصي',
			'profile.viewAndManage' => 'عرض وإدارة معلومات صحتك',
			'profile.sections.profile' => 'الملف الشخصي',
			'profile.sections.basicInformation' => 'المعلومات الأساسية',
			'profile.sections.goalsAndActivity' => 'الأهداف والنشاط',
			'profile.sections.calculatedValues' => 'القيم المحسوبة',
			'profile.gender' => 'الجنس',
			'profile.height' => 'الطول',
			'profile.weight' => 'الوزن',
			'profile.age' => 'العمر',
			'profile.weightGoal' => 'هدف الوزن',
			'profile.targetWeight' => 'هدف الوزن',
			'profile.activityLevel' => 'مستوى النشاط',
			'profile.healthMetrics' => 'مقاييس الصحة',
			'profile.notSet' => 'لم يتم تعيينه',
			'profile.years' => 'سنوات',
			'profile.updatedSuccessfully' => 'تم تحديث الملف الشخصي بنجاح!',
			'profile.calculatedValues.bmr' => 'معدل الأيض الأساسي',
			'profile.calculatedValues.tdee' => 'المجموع اليومي لإحتياج السعرات الحرارية',
			'profile.calculatedValues.dailyGoal' => 'الهدف اليومي',
			'profile.calculatedValues.calPerDay' => 'سعرات حرارية / يوم',
			'profile.calculatedValues.notAvailable' => 'غير متوفر',
			'healthScore.title' => 'درجة الصحة',
			'healthScore.whyThisScore' => 'لماذا هذه الدرجة؟',
			'healthScore.note' => 'هذه الدرجة هي تقدير من الذكاء الاصطناعي استنادًا إلى المكونات المحددة وكثافة العناصر الغذائية. استشر دائمًا محترفًا للحصول على مشورة غذائية.',
			'healthScore.unhealthy' => 'غير صحي',
			'healthScore.healthy' => 'صحي',
			'healthScore.neutral' => 'محايد',
			'editProfile.title' => 'تعديل الملف الشخصي',
			'editProfile.sections.personalInformation' => 'المعلومات الشخصية',
			'editProfile.sections.physicalMeasurements' => 'القياسات الجسدية',
			'editProfile.sections.goalsAndActivity' => 'الأهداف والنشاط',
			'editProfile.gender' => 'الجنس',
			'editProfile.dateOfBirth' => 'تاريخ الميلاد',
			'editProfile.height' => 'الطول',
			'editProfile.weight' => 'الوزن',
			'editProfile.weightGoal' => 'هدف الوزن',
			'editProfile.activityLevel' => 'مستوى النشاط',
			'editProfile.metric' => 'متري',
			'editProfile.imperial' => 'إمبراطوري',
			'editProfile.unitCm' => 'سم',
			'editProfile.unitFt' => 'قدم',
			'editProfile.unitKg' => 'كغ',
			'editProfile.unitLbs' => 'رطل',
			'editProfile.metricCm' => 'متري (سم)',
			'editProfile.imperialFtIn' => 'إمبراطوري (قدم/بوصة)',
			'editProfile.metricKg' => 'متري (كجم)',
			'editProfile.imperialLbs' => 'إمبراطوري (أرطال)',
			'editProfile.genders.male' => 'ذكر',
			'editProfile.genders.female' => 'أنثى',
			'editProfile.genders.other' => 'آخر',
			'editProfile.weightGoals.loseWeight.name' => 'فقدان الوزن',
			'editProfile.weightGoals.loseWeight.description' => 'إنشاء عجز في السعرات الحرارية لفقدان الوزن',
			'editProfile.weightGoals.maintainWeight.name' => 'الحفاظ على الوزن',
			'editProfile.weightGoals.maintainWeight.description' => 'الحفاظ على وزنك الحالي',
			'editProfile.weightGoals.gainWeight.name' => 'زيادة الوزن',
			'editProfile.weightGoals.gainWeight.description' => 'إنشاء فائض في السعرات الحرارية لزيادة الوزن',
			'editProfile.activityLevels.sedentary.name' => 'كثير الجلوس',
			'editProfile.activityLevels.sedentary.description' => 'قليل جدًا من التمارين',
			'editProfile.activityLevels.lightlyActive.name' => 'نشاط خفيف',
			'editProfile.activityLevels.lightlyActive.description' => 'تمارين خفيفة 1-3 أيام/أسبوع',
			'editProfile.activityLevels.moderatelyActive.name' => 'نشاط متوسط',
			'editProfile.activityLevels.moderatelyActive.description' => 'تمارين متوسطة 3-5 أيام/أسبوع',
			'editProfile.activityLevels.veryActive.name' => 'نشاط عالي',
			'editProfile.activityLevels.veryActive.description' => 'تمارين شاقة 6-7 أيام/أسبوع',
			'editProfile.activityLevels.extremelyActive.name' => 'نشاط شديد',
			'editProfile.activityLevels.extremelyActive.description' => 'تمارين شديدة، وظيفة بدنية',
			'settings.title' => 'الإعدادات',
			'settings.sections.profile' => 'الملف الشخصي',
			'settings.sections.localization' => 'الترجمة',
			'settings.sections.notifications' => 'الإشعارات',
			'settings.sections.healthConnect' => 'الاتصال الصحي',
			'settings.sections.supportAndLegal' => 'الدعم والقانوني',
			'settings.sections.about' => 'معلومات',
			'settings.sections.dangerZone' => 'منطقة الخطر',
			'settings.sections.developer' => 'المطور',
			'settings.editProfile.title' => 'تعديل الملف الشخصي',
			'settings.editProfile.subtitle' => 'قم بتحديث معلوماتك الشخصية',
			'settings.language.title' => 'اللغة',
			'settings.language.subtitle' => 'اختر لغتك المفضلة',
			'settings.language.searchHint' => 'ابحث عن اللغات...',
			'settings.language.noResults' => 'لا توجد نتائج',
			'settings.heightUnit.title' => 'وحدة الطول',
			'settings.weightUnit.title' => 'وحدة الوزن',
			'settings.mealReminders.title' => 'تذكيرات الوجبات',
			'settings.mealReminders.subtitle' => 'ابق على المسار الصحيح مع تنبيهات في الوقت المناسب',
			'settings.theme.title' => 'الثيم',
			'settings.theme.light' => 'فاتح',
			'settings.theme.dark' => 'داكن',
			'settings.theme.system' => 'نظام',
			'settings.sendFeedback.title' => 'أرسل ملاحظات',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'ساعدنا في تحسين ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'ملاحظات تطبيق ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'يرجى تقديم ملاحظاتك أدناه:',
			'settings.sendFeedback.appVersion' => 'إصدار التطبيق',
			'settings.sendFeedback.device' => 'الجهاز',
			'settings.sendFeedback.osVersion' => 'إصدار نظام التشغيل',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'مسح جميع البيانات',
			'settings.clearAllData.subtitle' => 'حذف جميع معلوماتك بشكل لا يمكن التراجع عنه',
			'settings.clearAllData.confirmationTitle' => 'مسح جميع البيانات؟',
			'settings.clearAllData.confirmationMessage' => 'لا يمكن التراجع عن هذا الإجراء. سيتم حذف جميع وجباتك المسجلة، والمفضلات، وإعدادات الملف الشخصي بشكل دائم.',
			'settings.clearAllData.cancel' => 'إلغاء',
			'settings.clearAllData.clearEverything' => 'مسح كل شيء',
			'settings.debugOptions.title' => 'خيارات التصحيح',
			'settings.developerModeEnabled' => 'تم تفعيل وضع المطور!',
			'settings.healthConnect.title' => 'الاتصال الصحي',
			'settings.healthConnect.subtitle' => 'عرض وإدارة الأذونات',
			'settings.healthConnect.unavailable.title' => 'Health Connect غير متاح',
			'settings.healthConnect.unavailable.description' => 'Health Connect غير متاح على هذا الجهاز. يُرجى تثبيت Health Connect من متجر Play ‏(Android 9+) أو التحديث إلى Android 14+.',
			'settings.healthConnect.permissions.title' => 'الأذونات',
			'settings.healthConnect.permissions.description' => 'الأذونات التالية مطلوبة لتوفير تكامل الاتصال الصحي:',
			'settings.healthConnect.permissions.granted' => 'ممنوحة',
			'settings.healthConnect.permissions.notGranted' => 'غير ممنوحة',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'قراءة إجمالي السعرات المحروقة',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'يسمح للتطبيق بقراءة إجمالي السعرات المحروقة من الاتصال الصحي.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'يستخدم هذا الإذن لعرض حرق السعرات اليومية في التطبيق، مما يساعدك على فهم إجمالي إنفاقك للطاقة طوال اليوم.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'قراءة بيانات التغذية',
			'settings.healthConnect.permissions.nutritionRead.description' => 'يسمح للتطبيق بقراءة بيانات التغذية من الاتصال الصحي.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'يسمح هذا الإذن للتطبيق بقراءة معلومات التغذية التي قد تم تسجيلها بواسطة تطبيقات أخرى متصلة بالاتصال الصحي، مما يوفر لك رؤية شاملة لتغذيتك.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'كتابة بيانات التغذية',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'يسمح للتطبيق بكتابة بيانات التغذية إلى الاتصال الصحي.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'يسمح هذا الإذن للتطبيق بمزامنة وجباتك المسجلة مع الاتصال الصحي، مما يجعل بيانات التغذية الخاصة بك متاحة للتطبيقات الصحية واللياقة البدنية الأخرى التي تستخدمها.',
			'settings.healthConnect.managePermissions' => 'إدارة الأذونات',
			'settings.healthConnect.openSettings' => 'فتح إعدادات الاتصال الصحي',
			'settings.healthConnect.requestPermissions' => 'طلب الأذونات',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'تم إلغاء طلب الأذونات أو فشل. يرجى المحاولة مرة أخرى أو منح الأذونات يدويًا في إعدادات Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'تعذر طلب الأذونات. يرجى المحاولة مرة أخرى أو منح الأذونات يدويًا في إعدادات Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'حول',
			'settings.about.tagline' => 'وعي بالسعرات الحرارية بشكل سريع ومجاني واهتمام بالخصوصية',
			'settings.about.ourStory.title' => 'قصتنا',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} وُلِدت من إحباط بسيط: معظم تطبيقات تتبع السعرات الحرارية إما معقدة للغاية، أو تطلب إدخال يدوي مستمر، أو تفرض رسوم اشتراك مرتفعة، أو تتنازل عن الخصوصية.\n\nكمطور مستقل، أردت أن أبني شيئًا أبسط وأكثر عدلاً - تطبيق يستخدم الذكاء الاصطناعي لتقليل الجهد، يبقى سريعًا ومجانيًا للاستخدام، ويعامل بيانات صحتك باحترام.\n\n${appLabel} هو التطبيق الذي كنت أتمنى وجوده: لا حسابات، لا تتبع، لا إعلانات - فقط رؤى واضحة وعملية وأهداف صحتك.',
			'settings.about.privacy.title' => 'خصوصيتك مهمة',
			'settings.about.privacy.description' => 'الخصوصية ليست فكرة جانبية - إنها مبدأ تصميم. إليك ما يعنيه ذلك في الممارسة:',
			'settings.about.privacy.noAccounts' => 'لا حاجة لحسابات\nاستخدم التطبيق على الفور. لا تسجيل، لا هويات.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'لا تتبع سلوكي\n${appLabel} لا تراقب نشاطك، ولا تبني ملفات تعريف استخدام، ولا تتبعك عبر التطبيقات أو المواقع.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'خالية من الإعلانات بتصميمها\n${appLabel} تم بناؤها لتعمل بدون إعلانات أو تحقيق إيرادات مبنية على البيانات.',
			'settings.about.privacy.noDataSelling' => 'لا بيع بيانات\nبيانات صحتك لا تُباع أو تُشارك مع أطراف ثالثة.',
			'settings.about.privacy.localStorage' => 'تخزين محلي أولاً\nبياناتك تبقى على جهازك.',
			'settings.about.privacy.privacyPolicy' => 'سياسة الخصوصية',
			'settings.about.developer.title' => 'بناءً بواسطة مطور مستقل',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} تم بناؤها وصيانتها بواسطة مطور مستقل واحد يركز على إنشاء برامج صحية تحترم الخصوصية.\n\nالتعليقات تُقرأ شخصياً وتساعد في تشكيل اتجاه التطبيق.',
			'settings.about.developer.website' => 'موقع الويب',
			'settings.about.developer.email' => 'البريد الإلكتروني',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'استمتع بـ ${appLabel}؟',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'تعليقاتك تساعد في جعل ${appLabel} أفضل للجميع.',
			'settings.about.feedback.rateApp' => 'قيم على متجر بلاي',
			'settings.about.feedback.sendFeedback' => 'أرسل تعليقات',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify الإصدار ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'بناء ${buildNumber}',
			'reminders.title' => 'ابق على المسار الصحيح مع التذكيرات',
			'reminders.description' => 'احصل على تذكيرات لطيفة لتسجيل وجباتك والبقاء متسقًا مع أهداف تغذيتك',
			'reminders.notificationsEnabled' => 'التنبيهات مفعلة',
			'reminders.notificationsDisabled' => 'التنبيهات معطلة',
			'reminders.enabledSubtitle' => 'ستتلقى تذكيرات بالوجبات',
			'reminders.disabledSubtitle' => 'قم بتمكين التنبيهات للتوصل بتذكيرات بالوجبات',
			'reminders.mealReminders' => 'تذكيرات الوجبات',
			'reminders.breakfast' => 'الإفطار',
			'reminders.lunch' => 'الغداء',
			'reminders.dinner' => 'العشاء',
			'reminders.snack' => 'وجبة خفيفة',
			'reminders.unknown' => 'غير معلوم',
			'reminders.change' => 'تغيير',
			'reminders.enableNotifications' => 'تفعيل التنبيهات',
			'reminders.skipForNow' => 'تخطي الآن',
			'reminders.saveChanges' => 'احفظ التغييرات',
			'reminders.enabledSuccessfully' => 'تم تفعيل التنبيهات بنجاح!',
			'reminders.permissionDenied' => 'تم رفض إذن التنبيه',
			'reminders.errorEnabling' => ({required Object error}) => 'خطأ في تفعيل التنبيهات: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'خطأ في إكمال الإعداد: ${error}',
			'notifications.breakfast.title' => 'وقت الإفطار! 🍳',
			'notifications.breakfast.body' => 'لا تنسى تسجيل إفطارك',
			'notifications.lunch.title' => 'وقت الغداء! 🥗',
			'notifications.lunch.body' => 'حان وقت تسجيل الغداء',
			'notifications.dinner.title' => 'وقت العشاء! 🍽️',
			'notifications.dinner.body' => 'لا تنسى تسجيل عشاءك',
			'notifications.snack.title' => 'وقت الوجبة الخفيفة! 🍎',
			'notifications.snack.body' => 'حان وقت الوجبة الخفيفة الصحية',
			'notifications.test.title' => 'تنبيه اختبار',
			'login.title' => 'تسجيل الدخول',
			'login.signInWithGoogle' => 'تسجيل الدخول باستخدام جوجل',
			'login.signInFailed' => 'فشل تسجيل دخول جوجل أو تم إلغاؤه.',
			'disclaimer.pleaseNote' => 'يرجى ملاحظة',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} يقدم معلومات غذائية تقديرية. تعتمد الدقة على إدخالاتك وتفاوتات الغذاء. استخدمها كدليل، وليس كمصدر نهائي. استشر محترفًا للحصول على نصيحة غذائية مخصصة.',
			'disclaimer.snap.portionSize.title' => 'حجم الحصة',
			'disclaimer.snap.portionSize.description' => 'تعتمد دقة التقديرات بشكل كبير على تقييمك الصحيح لحجم الحصة.',
			'disclaimer.snap.preparationMethods.title' => 'طرق التحضير',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'يمكن أن تؤثر طرق الطهي بشكل كبير على المحتوى الغذائي للغذاء. قد لا تأخذ تقديرات ${appLabel} دائمًا في الاعتبار هذه التفاوتات.',
			'disclaimer.snap.ingredients.title' => 'المكونات',
			'disclaimer.snap.ingredients.description' => 'يمكن أن تؤدي الأطباق المعقدة ذات المكونات الخفية إلى تقديرات أقل دقة.',
			'disclaimer.snap.databaseLimitations.title' => 'قيود قاعدة البيانات',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'قاعدة بيانات الطعام الخاصة بـ ${appLabel} واسعة لكنها قد لا تشمل كل عنصر غذائي أو تفاوت.',
			'disclaimer.weightEstimate.title' => 'حول تقدير الوزن',
			'disclaimer.weightEstimate.description' => 'التغيير في الوزن المتوقع هو تقدير نظري يستند إلى نموذج السعرات الحرارية الداخلة مقابل السعرات الحرارية الخارجة. وهو مخصص للتوجيه التحفيزي فقط، وليس كتنبؤ لوزنك الفعلي.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'دقة السعرات الحرارية',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'هذا التقدير دقيق فقط بقدر ما هو دقيق تناول السعرات الحرارية وتلك التي أنفقت. سيؤدي التسجيل غير الدقيق إلى توقع غير دقيق.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'العوامل البيولوجية',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'فقدان أو زيادة الوزن الفعلي يتأثر بالتمثيل الغذائي، والهرمونات، والنوم، والضغط، وتوازن السوائل، وعوامل فردية أخرى لا يمكن لـ ${appLabel} قياسها.',
			'disclaimer.weightEstimate.waterWeight.title' => 'وزن الماء والتقلبات',
			'disclaimer.weightEstimate.waterWeight.description' => 'يمكن أن يتقلب الوزن الطبيعي اليوم بشكل ملحوظ بسبب احتباس الماء، والهضم، والتوقيت. لا يأخذ التقدير في اعتباره هذه التغيرات اليومية.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'التوجيه المهني',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'لا تستخدم هذا التقدير لاتخاذ قرارات طبية. استشر دائمًا محترف رعاية صحية أو أخصائي تغذية مسجّل للحصول على نصائح إدارة الوزن مخصصة.',
			'disclaimer.healthMetrics.description' => 'تساعدك هذه المقاييس على فهم احتياجات جسمك من الطاقة وتوجيه أهدافك الغذائية.',
			'disclaimer.healthMetrics.bmr.title' => 'معدل الأيض الأساسي',
			'disclaimer.healthMetrics.bmr.description' => 'معدل الأيض الأساسي (BMR) هو عدد السعرات الحرارية التي يحرقها جسمك في حالة الراحة للحفاظ على الوظائف الأساسية مثل التنفس والدورة الدموية. يعتمد معدل الأيض الأساسي على عمرك وجنسك وطولك ووزنك. معدل الأيض الأساسي الأعلى يعني أن جسمك يحرق بشكل طبيعي المزيد من السعرات الحرارية في حالة الراحة، وغالبًا ما يكون ذلك بسبب زيادة الكتلة العضلية أو العمر الأصغر أو كونك ذكراً. عادةً ما يشير معدل الأيض الأساسي المنخفض إلى انخفاض الكتلة العضلية أو العمر الأكبر أو كونك أنثى.',
			'disclaimer.healthMetrics.tdee.title' => 'مجموع الإنفاق اليومي من الطاقة',
			'disclaimer.healthMetrics.tdee.description' => 'مجموع الإنفاق اليومي من الطاقة (TDEE) هو إجمالي السعرات الحرارية التي تحرقها يوميًا، بما في ذلك معدل الأيض الأساسي الخاص بك بالإضافة إلى السعرات الحرارية من النشاط البدني والحركة اليومية. يعتمد مجموع الإنفاق اليومي من الطاقة على معدل الأيض الأساسي الخاص بك ومستوى نشاطك. يعني مجموع الإنفاق اليومي من الطاقة الأعلى أنك تحرق المزيد من السعرات الحرارية بشكل عام، عادةً بسبب كونك أكثر نشاطًا أو لامتلاكك معدل أيض أساسي أعلى. يشير مجموع الإنفاق اليومي من الطاقة المنخفض إلى نشاط يومي أقل أو معدل أيض أساسي أقل.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'الهدف اليومي',
			'disclaimer.healthMetrics.dailyGoal.description' => 'الهدف اليومي هو كمية السعرات الحرارية الموصى بها لك يوميًا بناءً على مجموع الإنفاق اليومي من الطاقة (TDEE) وهدف الوزن الخاص بك. لفقدان الوزن، تستهلك سعرات حرارية أقل من مجموع الإنفاق اليومي من الطاقة الخاص بك. للحفاظ على الوزن، تتطابق مع مجموع الإنفاق اليومي من الطاقة. لزيادة الوزن، تستهلك سعرات حرارية أكثر من مجموع الإنفاق اليومي من الطاقة الخاص بك. يساعدك ذلك في تحقيق التغيير المطلوب في وزنك بشكل صحي.',
			'common.close' => 'إغلاق',
			'common.kContinue' => 'استمر',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'هل تستمتع بـ${appLabel}؟',
			'feedbackRating.yes' => 'نعم، أستمتع باستخدامه',
			'feedbackRating.no' => 'ليس حقًا',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'تقييم سريع يساعد الآخرين على العثور على ${appLabel} ويُديم تطويره. هل تود أن تترك تقييماً سريعاً؟',
			'feedbackRating.shareFeedbackViaEmail' => 'ملاحظاتك تُشكل ما سيأتي — نقرأ كل رسالة. هل ترغب بمشاركة آرائك عبر البريد الإلكتروني؟',
			'feedbackRating.rateCta' => 'قيّم على متجر Play',
			'feedbackRating.maybeLater' => 'ربما لاحقًا',
			'feedbackRating.sendFeedback' => 'أرسل ملاحظات',
			'feedbackRating.noThanks' => 'لا، شكرًا',
			'feedbackRating.aboutUsDescription' => 'تم تطويرها بعناية من قبل فريق صغير. نركّز على الخصوصية والبساطة، ونساعدك على بناء عادات غذائية أفضل.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'هل تريد معرفة من يقف وراء ${appLabel}؟ انظر ',
			'feedbackRating.aboutUsLinkLabel' => 'من نحن',
			'errors.loadingProfileData' => 'خطأ في تحميل بيانات الملف الشخصي',
			'errors.somethingWentWrong' => 'حدث خطأ ما.',
			'debug.title' => 'خيارات التصحيح',
			'debug.searchHint' => 'ابحث...',
			'debug.sections.notifications' => 'التنبيهات',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.wearOs' => 'Wear OS',
			'debug.sections.foodApiTests' => 'اختبارات Food API',
			'debug.sections.feedback' => 'التعليقات',
			'debug.sections.dataReset' => 'إعادة تعيين البيانات',
			'debug.sections.appInfo' => 'معلومات التطبيق',
			'debug.sections.shorebird' => 'Shorebird',
			'debug.showActiveNotifications' => 'عرض التنبيهات النشطة',
			'debug.scheduleTestNotification' => 'جدولة تنبيه اختبار (10 ثواني)',
			'debug.triggerBreakfastNotification' => 'تنبيه إفطار مُفعّل',
			'debug.cancelAllNotifications' => 'إلغاء جميع التنبيهات',
			'debug.activeNotifications' => 'التنبيهات النشطة',
			'debug.noTitle' => 'لا عنوان',
			'debug.noBody' => 'لا محتوى',
			'debug.fetchTodaysSteps' => 'جلب خطوات اليوم',
			'debug.fetchTodaysCalories' => 'جلب السعرات الحرارية اليوم',
			'debug.fetchLatestWeight' => 'جلب أحدث وزن',
			'debug.fetchLatestHeight' => 'جلب أحدث طول',
			'debug.writeTestWeight' => 'كتابة وزن اختبار (70 كجم)',
			'debug.writeTestHeight' => 'كتابة طول اختبار (175 سم)',
			'debug.syncLast7Days' => 'مزامنة آخر 7 أيام',
			'debug.sync7DaysTitle' => 'مزامنة 7 أيام',
			'debug.checkCurrentLocale' => 'التحقق من اللغة الحالية',
			'debug.currentLocale' => 'اللغة الحالية',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'اللغة: ${languageCode}\nالبلد: ${countryCode}\nنظام الوحدة: ${unitSystem}',
			'debug.latestWeight' => 'آخر وزن',
			'debug.latestHeight' => 'آخر طول',
			'debug.todaysCalories' => 'سعرات اليوم',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'إجمالي السعرات الحرارية المحترقة: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'تم جلب ${count} بيانات بنجاح لخطوات، سعرات، ووزن الأيام السبعة الماضية.',
			'debug.noWeightData' => 'لا توجد بيانات وزن خلال الثلاثين يومًا الماضية.',
			'debug.noHeightData' => 'لا توجد بيانات طول خلال العام الماضي.',
			'debug.noCalorieData' => 'لا توجد بيانات سعرات لهذا اليوم.',
			'debug.weightWritten' => 'تم كتابة وزن الاختبار بنجاح (70 كجم).',
			'debug.weightWriteFailed' => 'فشل في كتابة وزن الاختبار.',
			'debug.heightWritten' => 'تم كتابة طول الاختبار بنجاح (175 سم).',
			'debug.heightWriteFailed' => 'فشل في كتابة طول الاختبار.',
			'debug.noNotifications' => 'لا توجد تنبيهات نشطة.',
			'debug.testNotificationScheduled' => 'تم جدولة تنبيه اختبار لمدة 10 ثوانٍ من الآن.',
			'debug.testNotificationBody' => 'هذا تنبيه اختبار مجدول لمدة 10 ثوانٍ من الآن.',
			'debug.breakfastNotificationTriggered' => 'تم تفعيل تنبيه الإفطار.',
			'debug.allNotificationsCancelled' => 'تم إلغاء جميع التنبيهات.',
			'debug.fetchingData' => 'جاري جلب البيانات لآخر 7 أيام...',
			'debug.id' => ({required Object id}) => 'معرف: ${id}',
			'debug.showFeedbackRatingSheet' => 'عرض نافذة التقييم/التعليقات',
			'debug.clearUserPreferences' => 'مسح تفضيلات المستخدم',
			'debug.clearUserPreferencesConfirmationTitle' => 'مسح تفضيلات المستخدم؟',
			'debug.clearUserPreferencesConfirmationMessage' => 'سيتم إعادة تعيين السمة واللغة وتفضيلات التعليقات. لن تتأثر الوجبات والملف الشخصي.',
			'debug.clearUserProfile' => 'مسح الملف الشخصي',
			'debug.clearUserProfileConfirmationTitle' => 'مسح الملف الشخصي؟',
			'debug.clearUserProfileConfirmationMessage' => 'سيتم مسح بيانات ملفك الشخصي (الهدف اليومي، الطول، الوزن، إلخ). لن تتأثر الوجبات والتفضيلات.',
			'debug.clear' => 'مسح',
			'debug.cancel' => 'إلغاء',
			'debug.checkWatchConnection' => 'تحقق من اتصال الساعة',
			'debug.sendTestMessage' => 'إرسال رسالة اختبار',
			'debug.sendTestMessageSubtitle' => 'إرسال رسالة اختبار بسيطة إلى الساعة',
			'debug.sendTestMealData' => 'إرسال بيانات وجبة اختبارية',
			'debug.sendTestMealDataSubtitle' => 'إرسال بيانات وجبة نموذجية إلى الساعة',
			'debug.sendTestCalorieGoal' => 'إرسال هدف سعرات اختبارية',
			'debug.sendTestCalorieGoalSubtitle' => 'إرسال هدف سعرات نموذجي إلى الساعة',
			'debug.viewReceivedMessages' => 'عرض الرسائل المستلمة',
			'debug.viewReceivedMessagesSubtitle' => 'عرض الرسائل المستلمة من الساعة',
			'debug.watchConnected' => 'الساعة متصلة ✓',
			'debug.device' => 'الجهاز',
			'debug.nearby' => 'قريب',
			'debug.yes' => 'نعم',
			'debug.no' => 'لا',
			'debug.connectedDevices' => 'الأجهزة المتصلة',
			'debug.deviceInfoUnavailable' => '(معلومات الجهاز غير متاحة)',
			'debug.unknownDevice' => 'جهاز غير معروف',
			'debug.watchNotConnected' => 'الساعة غير متصلة ✗',
			'debug.watchNotConnectedHint' => 'تأكد من:\n• أن الجهازين مقترنان\n• أن تطبيق الساعة قيد التشغيل\n• أن كلا التطبيقين في وضع التصحيح/التجريبي',
			'debug.watchConnection' => 'اتصال الساعة',
			'debug.errorCheckingConnection' => ({required Object error}) => 'خطأ في التحقق من الاتصال: ${error}',
			'debug.helloFromPhone' => 'مرحبًا من الهاتف!',
			'debug.testMessageSentSuccess' => 'تم إرسال رسالة الاختبار بنجاح!',
			'debug.testMessageFailed' => 'فشل إرسال رسالة الاختبار. تحقق من اتصال الساعة.',
			'debug.errorSendingMessage' => ({required Object error}) => 'خطأ أثناء إرسال الرسالة: ${error}',
			'debug.testMeal' => 'وجبة اختبارية',
			'debug.testMealDataSentSuccess' => 'تم إرسال بيانات الوجبة الاختبارية بنجاح!',
			'debug.failedToSendMealData' => 'فشل إرسال بيانات الوجبة. تحقق من اتصال الساعة.',
			'debug.errorSendingMealData' => ({required Object error}) => 'خطأ أثناء إرسال بيانات الوجبة: ${error}',
			'debug.testCalorieGoalSentSuccess' => 'تم إرسال هدف السعرات الاختباري بنجاح!',
			'debug.failedToSendCalorieGoal' => 'فشل إرسال هدف السعرات. تحقق من اتصال الساعة.',
			'debug.errorSendingCalorieGoal' => ({required Object error}) => 'خطأ أثناء إرسال هدف السعرات: ${error}',
			'debug.testAnalyzeImage' => 'اختبار تحليل الصورة',
			'debug.testAnalyzeImageSubtitle' => 'رفع صورة اختبار مضمَّنة',
			'debug.testDetectImage' => 'اختبار اكتشاف الصورة',
			'debug.testDetectImageSubtitle' => 'اكتشاف الوجبة من رابط الصورة',
			'debug.detectImageFromGallery' => 'اكتشاف صورة من المعرض',
			'debug.detectImageFromGallerySubtitle' => 'اختر صورة، ارفعها إلى الحاوية وقم بتقدير السعرات',
			'debug.testDetectText' => 'اختبار اكتشاف النص',
			'debug.testDetectTextSubtitle' => 'اكتشاف الوجبة من وصف نصي',
			'debug.testMealLoggingWithVariations' => 'اختبار تسجيل الوجبة مع تنويعات',
			'debug.testMealLoggingWithVariationsSubtitle' => 'اختبار كامل لتدفق تسجيل الوجبة مع التنويعات',
			'debug.mockMealWithVariations' => 'وجبة نموذجية مع تنويعات',
			'debug.mockMealWithVariationsSubtitle' => 'معاينة التنويعات ونصائح الواجهة دون التسجيل',
			_ => null,
		} ?? switch (path) {
			'debug.mockMealName' => 'دجاج مشوي مع أرز وخضروات',
			'debug.mockTip' => 'هذه نصيحة تجريبية لمعاينة واجهة المستخدم. الوجبة غير مسجلة.',
			'debug.mockMealDescription' => 'وجبة نموذجية للتصحيح',
			'debug.portionSizeQuestion' => 'كيف كان حجم الحصة؟',
			'debug.extraSidesQuestion' => 'هل هناك أطباق جانبية إضافية؟',
			'debug.optionSmall' => 'صغير',
			'debug.optionMedium' => 'متوسط',
			'debug.optionLarge' => 'كبير',
			'debug.optionNone' => 'لا شيء',
			'debug.optionSideSalad' => 'سلطة جانبية',
			'debug.optionBreadRoll' => 'رغيف خبز',
			'debug.testingAnalyzeImage' => 'جارٍ اختبار واجهة analyzeImage...',
			'debug.testingDetectImage' => 'جارٍ اختبار واجهة detectImage...',
			'debug.testingDetectText' => 'جارٍ اختبار واجهة detectText...',
			'debug.selectingImageFromGallery' => 'جاري اختيار صورة من المعرض...',
			'debug.noImageSelected' => 'لم يتم اختيار صورة',
			'debug.compressingImage' => 'جارٍ ضغط الصورة...',
			'debug.uploadingImageAndDetecting' => 'جارٍ رفع الصورة إلى التخزين واكتشاف الوجبة...',
			'debug.testingMealLoggingFlow' => 'جارٍ اختبار تدفق تسجيل الوجبات مع التنويعات...',
			'debug.noMealIdentifiedInResponse' => 'لم يتم تحديد أي وجبة في الاستجابة',
			'debug.mealIdentified' => 'تم تحديد الوجبة',
			'debug.confidence' => 'درجة الثقة',
			'debug.tip' => 'نصيحة',
			'debug.mealName' => 'اسم الوجبة',
			'debug.calories' => 'السعرات',
			'debug.protein' => 'البروتين',
			'debug.carbs' => 'الكربوهيدرات',
			'debug.fat' => 'الدهون',
			'debug.noMealInfo' => 'لا توجد معلومات عن الوجبة',
			'debug.na' => 'غير متوفر',
			'debug.analyzeImageResult' => 'نتيجة تحليل الصورة',
			'debug.detectImageResult' => 'نتيجة اكتشاف الصورة',
			'debug.detectImageFromGalleryResult' => 'نتيجة اكتشاف الصورة من المعرض',
			'debug.detectTextResult' => 'نتيجة اكتشاف النص',
			'debug.errorGeneric' => ({required Object error}) => 'خطأ: ${error}',
			'debug.variationsCount' => 'التنويعات',
			'debug.userPreferencesCleared' => 'تم مسح تفضيلات المستخدم',
			'debug.userProfileCleared' => 'تم مسح ملف المستخدم',
			'debug.checkForUpdate' => 'التحقق من وجود تحديث',
			'debug.showPatchNumber' => 'عرض رقم التصحيح',
			'debug.showUpdateAvailable' => 'إظهار توفر تحديث',
			'debug.updateAvailable' => 'تحديث متاح',
			'debug.upToDate' => 'مُحدَّث',
			'debug.shorebirdUnavailable' => 'خدمة Shorebird غير متاحة في هذه البيئة.',
			'debug.patchNumberLabel' => 'رقم التصحيح',
			'debug.noPatchInstalled' => 'لا يوجد تصحيح مثبت',
			'debug.todaysSteps' => 'خطوات اليوم',
			'debug.stepsLabel' => 'الخطوات',
			'debug.weightLabel' => ({required Object value}) => 'الوزن: ${value} كجم',
			'debug.heightLabel' => ({required Object value}) => 'الطول: ${value} سم',
			'debug.receivedMessagesFromWatch' => 'الرسائل المستلمة من الساعة',
			'debug.noMessagesReceivedYet' => 'لم يتم استلام أي رسائل بعد.\n\nأرسل بيانات اختبار من الساعة لرؤية الرسائل هنا.',
			'debug.messagesCleared' => 'تم مسح الرسائل',
			'health.syncFailed' => 'تعذر المزامنة مع Health Connect',
			'health.mealSynced' => 'تمت مزامنة الوجبة مع Health Connect',
			_ => null,
		};
	}
}
