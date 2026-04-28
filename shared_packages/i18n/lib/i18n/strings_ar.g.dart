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
	@override String get rateLimitExceeded => 'لقد أجريت عددًا كبيرًا من الطلبات. يرجى الانتظار قليلًا قبل المحاولة مرة أخرى.';
	@override String get networkError => 'خطأ في الشبكة. يرجى التحقق من اتصالك بالإنترنت.';
	@override String get unknownError => 'حدث خطأ ما. يرجى المحاولة لاحقًا.';
	@override String get loadingProfileData => 'خطأ في تحميل بيانات الملف الشخصي';
	@override String get somethingWentWrong => 'حدث خطأ ما.';
	@override String get retry => 'إعادة المحاولة';
}

// Path: onboarding
class _TranslationsOnboardingAr implements TranslationsOnboardingEn {
	_TranslationsOnboardingAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'مرحبًا بك في ${appLabel}';
	@override String get subtitle => 'رفيقك الشخصي للتغذية مدعومًا بالذكاء الاصطناعي';
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
	@override String get dashboard => 'الرئيسية';
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
	@override String get noMeals => 'لا توجد وجبات مسجّلة';
	@override String get emptyMessage => 'التقط صورة لآخر وجبة لتسجّلها هنا.';
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
	@override String get mealNameHint => 'مثال: بيض مخفوق مع خبز محمّص';
	@override String get mealQuantity => 'كمية الوجبة';
	@override String get mealQuantityHint => 'مثال: 1 وعاء، 2 شريحة';
	@override String get timeOfMeal => 'وقت الوجبة';
	@override String get timeOfMealHint => 'اختر وقت تناول وجبتك';
	@override String get mealType => 'نوع الوجبة';
	@override late final _TranslationsMealNutritionAr nutrition = _TranslationsMealNutritionAr._(_root);
	@override late final _TranslationsMealDeleteConfirmationAr deleteConfirmation = _TranslationsMealDeleteConfirmationAr._(_root);
	@override String get addedToLog => 'تمت إضافة الوجبة إلى سجلك!';
	@override String couldNotAdd({required Object error}) => 'تعذّرت إضافة الوجبة: ${error}';
	@override String get savedSuccessfully => 'تمت إضافة الوجبة بنجاح!';
	@override String get updatedSuccessfully => 'تم تحديث الوجبة بنجاح!';
	@override String errorSaving({required Object error}) => 'خطأ في حفظ الوجبة: ${error}';
	@override String get removedFromFavorites => 'تمت الإزالة من المفضلة!';
	@override String get savedAsFavorite => 'تم حفظ الوجبة كمفضلة!';
	@override String get unfavorite => 'إزالة من المفضلة';
	@override String couldNotUpdateFavorite({required Object error}) => 'تعذّر تحديث المفضلة: ${error}';
	@override String get feedbackThanks => 'شكرًا على ملاحظاتك!';
	@override String get reanalysisUpdated => 'تم تحديث تحليل الوجبة بناءً على ملاحظاتك.';
	@override String failedToProcess({required Object error}) => 'فشل المعالجة: ${error}';
	@override String failedToProcessImage({required Object error}) => 'فشل معالجة الصورة: ${error}';
	@override String errorCompressingImage({required Object error}) => 'خطأ في ضغط الصورة: ${error}';
	@override String get failedToSave => 'فشل حفظ البيانات. يرجى المحاولة مجددًا.';
	@override String get skip => 'تخطي';
	@override late final _TranslationsMealVariationAr variation = _TranslationsMealVariationAr._(_root);
	@override late final _TranslationsMealAnalysisAr analysis = _TranslationsMealAnalysisAr._(_root);
	@override late final _TranslationsMealFeedbackAr feedback = _TranslationsMealFeedbackAr._(_root);
}

// Path: favorites
class _TranslationsFavoritesAr implements TranslationsFavoritesEn {
	_TranslationsFavoritesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'المفضلة';
	@override String get empty => 'لا توجد وجبات مفضلة بعد.';
	@override String get searchPlaceholder => 'ابحث في الوجبات المفضلة';
	@override String get searchEmptyTitle => 'لا توجد نتائج مطابقة في المفضلة';
	@override String get searchEmptySubtitle => 'جرّب اسم وجبة مختلفًا أو كمية أو نوع وجبة.';
	@override String get sortLabel => 'ترتيب المفضلات';
	@override String get undo => 'تراجع';
	@override String removed({required Object name}) => 'تمت إزالة ${name} من المفضلات';
	@override late final _TranslationsFavoritesSortOptionsAr sortOptions = _TranslationsFavoritesSortOptionsAr._(_root);
}

// Path: profile
class _TranslationsProfileAr implements TranslationsProfileEn {
	_TranslationsProfileAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الملف الشخصي';
	@override String get noProfileData => 'لم يتم العثور على بيانات للملف الشخصي';
	@override String get yourProfile => 'ملفك';
	@override String get viewAndManage => 'اعرض وأدر معلوماتك الصحية';
	@override late final _TranslationsProfileSectionsAr sections = _TranslationsProfileSectionsAr._(_root);
	@override String get gender => 'الجنس';
	@override String get height => 'الطول';
	@override String get weight => 'الوزن';
	@override String get age => 'العمر';
	@override String get weightGoal => 'هدف الوزن';
	@override String get targetWeight => 'الوزن المستهدف';
	@override String get activityLevel => 'مستوى النشاط';
	@override String get healthMetrics => 'المؤشرات الصحية';
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
	@override String get title => 'الدرجة الصحية';
	@override String get whyThisScore => 'لماذا هذه الدرجة؟';
	@override String get note => 'هذه الدرجة تقدير من الذكاء الاصطناعي يعتمد على المكونات المحددة والكثافة الغذائية. استشر مختصًا دائمًا للحصول على نصيحة غذائية.';
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
	@override String get imperial => 'إنجليزي';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'متري (cm)';
	@override String get imperialFtIn => 'إنجليزي (ft/in)';
	@override String get metricKg => 'متري (kg)';
	@override String get imperialLbs => 'إنجليزي (lbs)';
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
	@override String get developerModeEnabled => 'تم تفعيل وضع المطوّر!';
	@override late final _TranslationsSettingsHealthConnectAr healthConnect = _TranslationsSettingsHealthConnectAr._(_root);
	@override late final _TranslationsSettingsAboutAr about = _TranslationsSettingsAboutAr._(_root);
	@override late final _TranslationsSettingsAppInfoAr appInfo = _TranslationsSettingsAppInfoAr._(_root);
}

// Path: reminders
class _TranslationsRemindersAr implements TranslationsRemindersEn {
	_TranslationsRemindersAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ابقَ على المسار مع التذكيرات';
	@override String get description => 'احصل على تذكيرات لطيفة لتسجيل وجباتك والبقاء ثابتًا على أهدافك الغذائية';
	@override String get notificationsEnabled => 'الإشعارات مفعّلة';
	@override String get notificationsDisabled => 'الإشعارات معطّلة';
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
	@override String get skipForNow => 'تخطي الآن';
	@override String get saveChanges => 'حفظ التغييرات';
	@override String get enabledSuccessfully => 'تم تفعيل الإشعارات بنجاح!';
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
	@override String get signInWithGoogle => 'تسجيل الدخول باستخدام Google';
	@override String get signInFailed => 'فشل تسجيل الدخول عبر Google أو تم إلغاؤه.';
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
	@override String get kContinue => 'متابعة';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingAr implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'هل تستمتع بـ${appLabel}؟';
	@override String get yes => 'نعم، أستمتع به';
	@override String get no => 'ليس كثيرًا';
	@override String get rateStepHeading => 'التقييم على متجر Play';
	@override String get emailStepHeading => 'إرسال الملاحظات عبر البريد الإلكتروني';
	@override String soloDevMessage({required Object appLabel}) => 'التقييم السريع يساعد الآخرين على العثور على ${appLabel} ويُبقي التطوير مستمرًا. هل تود تخصيص لحظة لترك تقييم؟';
	@override String get shareFeedbackViaEmail => 'ملاحظاتك تحدد ما سنبنيه لاحقًا — نقرأ كل رسالة. هل ترغب بمشاركة أفكارك عبر البريد الإلكتروني؟';
	@override String get rateCta => 'قيّمنا على متجر Play';
	@override String get maybeLater => 'ربما لاحقًا';
	@override String get sendFeedback => 'إرسال الملاحظات';
	@override String get noThanks => 'لا شكرًا';
	@override String get aboutUsDescription => 'مصنوع بعناية بواسطة فريق صغير. نركّز على الخصوصية والبساطة ومساعدتك على بناء عادات أكل أفضل.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'هل تتساءل عمّن يقف وراء ${appLabel}? اطّلع على ';
	@override String get aboutUsLinkLabel => 'نبذة عنا';
	@override String get thankYouMessage => 'شكرًا! سنسألك مرة أخرى لاحقًا.';
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
	@override String get description => 'يساعدنا الجنس على حساب معدل الأيض الأساسي (BMR) بدقة.';
	@override String get next => 'التالي';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightAr implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما طولك؟';
	@override String get description => 'يساعدنا طولك على حساب مؤشر كتلة الجسم واحتياجات الطاقة بدقة.';
	@override String get metric => 'متري';
	@override String get imperial => 'إنجليزي';
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
	@override String get targetDescription => 'تحديد وزن الهدف يساعدنا على وضع خطة طويلة المدى.';
	@override String get metric => 'متري';
	@override String get imperial => 'إنجليزي';
	@override String get next => 'التالي';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeAr implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما تاريخ ميلادك؟';
	@override String get description => 'يساعدنا عمرك على حساب احتياجاتك من السعرات بدقة.';
	@override String get next => 'التالي';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleAr implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'منخفض';
	@override String get healthy => 'صحي';
	@override String get overweight => 'زائد';
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
	@override String get description => 'اختر الهدف الذي يصف ما تريد تحقيقه بأفضل شكل';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelAr implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما مدى نشاطك؟';
	@override String get description => 'يساعدنا هذا على حساب احتياجاتك اليومية من السعرات بدقة أكبر';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectAr implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اتصل بـ Health Connect';
	@override String get description => 'زامن بياناتك الصحية للحصول على رؤى أفضل وتتبع تلقائي للسعرات';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingAr automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingAr._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsAr progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsAr._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationAr seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationAr._(_root);
	@override String get connected => 'تم الاتصال بـ Health Connect';
	@override String get notConnected => 'Health Connect غير متصل';
	@override String get setup => 'إعداد Health Connect';
	@override String get skipForNow => 'تخطي الآن';
	@override String get statusConnected => 'تم توصيل Health Connect.';
	@override String get statusSuccess => 'تم توصيل Health Connect بنجاح!';
	@override String statusPermissionDenied({required Object appLabel}) => 'تم رفض الإذن. يرجى تمكين أذونات Health Connect من إعدادات هاتفك لـ ${appLabel}.';
	@override String statusError({required Object error}) => 'خطأ في إعداد Health Connect: ${error}';
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
	@override String get title => 'ملخصك الذكي';
	@override String get logMore => 'سجّل مزيدًا من الوجبات خلال الأيام القادمة لتحصل على رؤى شخصية من الذكاء الاصطناعي.';
	@override String get loading => 'جارٍ تحميل ملخصك...';
	@override String mealCount({required Object count}) => '${count} وجبات مسجّلة';
	@override String macroBalanceScore({required Object score}) => 'درجة التوازن ${score}';
	@override String get topFoods => 'أكثر الأطعمة تناولًا';
	@override String get trendUp => 'السعرات في اتجاه تصاعدي';
	@override String get trendDown => 'السعرات في اتجاه تنازلي';
	@override String get trendSteady => 'السعرات مستقرة';
	@override String generatedAt({required Object time}) => 'تم التحديث ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalAr implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حدّد هدفك اليومي';
	@override String get titleSet => 'هدفك اليومي';
	@override String get description => 'جاهز لبدء رحلتك نحو العافية؟ حدّد هدفك اليومي من السعرات أدناه للانطلاق.';
	@override String get descriptionSet => 'جهّزنا بوصلة مسارك! هذا هو هدفك اليومي من السعرات لإرشادك.';
	@override String get yourGoal => 'هدفك';
	@override String get goal => 'الهدف';
	@override String get dailyCalories => 'السعرات اليومية (kcal)';
	@override String get setGoal => 'تعيين الهدف';
	@override String get intake => 'المتناول';
	@override String get burned => 'المحروق';
	@override String get weightImpact => 'تأثير الوزن';
	@override String get estLoss => 'خسارة تقديرية بمقدار';
	@override String get estGain => 'زيادة تقديرية بمقدار';
	@override String get kcal => 'كيلو كالوري';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryAr implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ملخص اليوم';
	@override String get calories => 'السعرات';
	@override String get carbs => 'الكربوهيدرات';
	@override String get protein => 'البروتين';
	@override String get fat => 'الدهون';
	@override String get fiber => 'الألياف';
	@override String get grams => 'غرامات';
	@override String get chartAccessibilityLabel => 'مخطط المغذيات الكبرى';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressAr implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'توزيع مغذيات اليوم';
	@override String get target => 'الهدف';
	@override String get current => 'الحالي';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryAr implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'سجل المغذيات الكبرى لآخر 7 أيام';
	@override String get trendTitle => 'اتجاه اليوم';
	@override String peakHour({required Object hour}) => 'الذروة: ${hour}:00';
	@override String get noHistoryYet => 'لا يوجد سجل بعد';
	@override String get startLogging => 'ابدأ بتسجيل الوجبات لترى\nاتجاهات المغذيات الكبرى لآخر 7 أيام هنا';
}

// Path: home.mealLog
class _TranslationsHomeMealLogAr implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الوجبات المسجّلة';
	@override String get emptyMessage => 'التقط صورة لآخر وجبة لتسجّلها هنا.';
	@override String get noMealsToday => 'لا توجد وجبات لهذا اليوم';
	@override String get seeAllMeals => 'عرض كل الوجبات';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionAr implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إضافة سريعة بالذكاء الاصطناعي';
	@override String get description => 'صف وجبتك ودع الذكاء الاصطناعي يتولى التفاصيل.';
	@override String get hint => 'مثال: على الإفطار تناولت وعاءً كبيرًا من الشوفان مع موزة مقطّعة وملعقة من بروتين مصل اللبن...';
	@override String get analyzeMeal => 'حلّل الوجبة';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsAr implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الوجبات المفضلة';
	@override String get description => 'أضف بسرعة إحدى وجباتك المفضلة.';
	@override String get noFavorites => 'لا توجد وجبات مفضلة بعد.';
	@override String get addFavoriteHint => 'انقر على النجمة في الوجبة لتمييزها كمفضلة.';
	@override String get seeAll => 'عرض الكل';
	@override String get add => 'إضافة';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapAr implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'التقط وتتبّع وجبتك';
	@override String get description => 'استخدم الكاميرا لالتقاط صورة لطعامك لتحليل الذكاء الاصطناعي.';
	@override String get openCamera => 'فتح الكاميرا';
	@override String get gallery => 'المعرض';
	@override String get compressingPhoto => 'جارٍ تحسين الصورة…';
	@override String get uploadingPhoto => 'جارٍ رفع الصورة…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthAr implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'زامن مع Health Connect';
	@override String get description => 'زامن بيانات تغذيتك مع Health Connect';
	@override String get install => 'تثبيت';
	@override String get connect => 'اتصال';
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
	@override String get message => 'هل أنت متأكد أنك تريد حذف هذا الإدخال؟';
	@override String get cancel => 'إلغاء';
	@override String get delete => 'حذف';
}

// Path: meal.variation
class _TranslationsMealVariationAr implements TranslationsMealVariationEn {
	_TranslationsMealVariationAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'السؤال ${current} من ${total}';
	@override String get noVariationsAvailable => 'لا توجد أي تنويعات متاحة';
}

// Path: meal.analysis
class _TranslationsMealAnalysisAr implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تحليل الوجبة بالذكاء الاصطناعي';
	@override String get reassurance => 'غالبًا ما يستغرق ذلك بضع ثوانٍ.';
	@override String get stepStarted => 'نبدأ الآن…';
	@override String get stepDecomposition => 'فهم وجبتك…';
	@override String get stepIngredients => 'مطابقة المكوّنات مع بيانات التغذية…';
	@override String get stepUncertainty => 'التحقق من مستوى الثقة…';
	@override String get stepMealTypeQuestion => 'أوشكنا على الانتهاء…';
	@override String get stepResult => 'جارٍ إنهاء النتائج…';
	@override String get stepError => 'حدث خطأ ما';
	@override String get stepDefault => 'جارٍ تحليل وجبتك…';
	@override String get progressUnderstand => 'فهم';
	@override String get progressMatch => 'مطابقة';
	@override String get progressCheck => 'تحقق';
	@override String get progressFinish => 'إنهاء';
	@override String ingredientsLine({required Object count}) => 'تم اكتشاف ${count} مكوّن';
	@override String get ingredientsPending => 'جارٍ فحص المكوّنات…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackAr implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

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
class _TranslationsFavoritesSortOptionsAr implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get recent => 'الأحدث';
	@override String get calories => 'السعرات';
	@override String get alphabetical => 'أبجديًا';
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
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'الهدف اليومي';
	@override String get calPerDay => 'سعرة/اليوم';
	@override String get notAvailable => 'غير متاح';
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
	@override String get localization => 'اللغة والمنطقة';
	@override String get notifications => 'الإشعارات';
	@override String get healthConnect => 'Health Connect';
	@override String get supportAndLegal => 'الدعم والشؤون القانونية';
	@override String get about => 'حول التطبيق';
	@override String get dangerZone => 'منطقة الخطر';
	@override String get developer => 'المطوّر';
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
	@override String get subtitle => 'ابقَ على المسار بتنبيهات في الوقت المناسب';
}

// Path: settings.theme
class _TranslationsSettingsThemeAr implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'السمة';
	@override String get light => 'فاتح';
	@override String get dark => 'داكن';
	@override String get system => 'النظام';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackAr implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إرسال الملاحظات';
	@override String subtitle({required Object appLabel}) => 'ساعدنا على تحسين ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'ملاحظات حول تطبيق ${appLabel}';
	@override String get emailBodyPrefix => 'يرجى تزويدنا بملاحظاتك أدناه:';
	@override String get appVersion => 'إصدار التطبيق';
	@override String get device => 'الجهاز';
	@override String get osVersion => 'إصدار نظام التشغيل';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryAr implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تصدير سجل الوجبات';
	@override String get subtitle => 'شارك ملف CSV لوجباتك المسجّلة';
	@override String get shareText => 'تصدير سجل وجباتك من Calorify';
	@override String failed({required Object error}) => 'تعذّر تصدير سجل الوجبات: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataAr implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حذف كل البيانات';
	@override String get subtitle => 'احذف جميع معلوماتك بلا رجعة';
	@override String get confirmationTitle => 'هل تريد حذف كل البيانات؟';
	@override String get confirmationMessage => 'لا يمكن التراجع عن هذا الإجراء. سيتم حذف جميع وجباتك المسجّلة والمفضلات وإعدادات الملف الشخصي نهائيًا.';
	@override String get cancel => 'إلغاء';
	@override String get clearEverything => 'حذف كل شيء';
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
	@override String get subtitle => 'عرض الأذونات وإدارتها';
	@override late final _TranslationsSettingsHealthConnectUnavailableAr unavailable = _TranslationsSettingsHealthConnectUnavailableAr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsAr permissions = _TranslationsSettingsHealthConnectPermissionsAr._(_root);
	@override String get managePermissions => 'إدارة الأذونات';
	@override String get openSettings => 'فتح إعدادات Health Connect';
	@override String get requestPermissions => 'طلب الأذونات';
	@override String get permissionRequestCancelledOrFailed => 'تم إلغاء طلب الأذونات أو فشل. يرجى المحاولة مجددًا أو منح الأذونات يدويًا في إعدادات Health Connect.';
	@override String get permissionRequestFailed => 'تعذّر طلب الأذونات. يرجى المحاولة مجددًا أو منح الأذونات يدويًا في إعدادات Health Connect.';
	@override String get requestingPermissions => 'جارٍ طلب الأذونات...';
}

// Path: settings.about
class _TranslationsSettingsAboutAr implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حول التطبيق';
	@override String get tagline => 'سريع، مجاني، ويضع الخصوصية أولًا لرفع وعيك بالسعرات';
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
	@override String version({required Object version}) => 'Calorify الإصدار v${version}';
	@override String build({required Object buildNumber}) => 'البنية ${buildNumber}';
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
	@override String get title => 'إشعار تجريبي';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapAr implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} يقدّم معلومات غذائية تقديرية. تعتمد الدقة على مدخلاتك واختلافات الطعام. استخدمه كدليل لا كمصدر حاسم. استشر مختصًا للحصول على نصيحة غذائية مخصصة.';
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
	@override String get description => 'تغيّر الوزن المتوقع هو تقدير نظري يعتمد على نموذج السعرات الداخلة مقابل الخارجة. الهدف منه التحفيز فقط وليس توقع وزنك الفعلي.';
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
	@override String get description => 'تساعدك هذه المؤشرات على فهم احتياجات جسمك من الطاقة وتوجيه أهدافك الغذائية.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrAr bmr = _TranslationsDisclaimerHealthMetricsBmrAr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeAr tdee = _TranslationsDisclaimerHealthMetricsTdeeAr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalAr dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalAr._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureAr implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تقدير استهلاك السعرات';
	@override String get description => 'عندما لا تتوفر بيانات Health Connect، نقدّر السعرات المحروقة اليوم باستخدام معدل الأيض الأساسي (BMR) ومستوى نشاطك (TDEE)، مع موازنتها بحسب الجزء المنقضي من اليوم.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedAr howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedAr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceAr professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceAr._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionAr implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تعرّف ذكي على الطعام';
	@override String get description => 'التقط صورة ودَع الذكاء الاصطناعي يتعرّف على وجبتك';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisAr implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تحليل بالذكاء الاصطناعي';
	@override String get description => 'احصل على حقائق غذائية فورية من أوصافك';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationAr implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تكامل صحي';
	@override String get description => 'اتصل بـ Health Connect للحصول على رؤى أفضل';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesAr implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'نقص وزن';
	@override String get healthyWeight => 'وزن صحي';
	@override String get overweight => 'زيادة وزن';
	@override String get obese => 'سمنة';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesAr implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'نستطيع مساعدتك في بناء خطة صحية للوصول إلى وزن متوازن مع وجبات غنية بالمغذيات.';
	@override String get healthy => 'عمل رائع! أنت ضمن النطاق الصحي. سنساعدك على الحفاظ على الحيوية ومستويات الطاقة.';
	@override String overweight({required Object appLabel}) => '${appLabel} سيبسط رحلتك بتتبع مدعوم بالذكاء الاصطناعي لمساعدتك على الوصول لهدفك براحة.';
	@override String get obese => 'نحن هنا لدعمك بإرشادات مخصصة واستراتيجيات مستدامة لتحقيق أهدافك الصحية.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingAr implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تتبع تلقائي للسعرات';
	@override String get description => 'تتبّع السعرات المحروقة من تطبيقات اللياقة';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsAr implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'رؤى التقدّم';
	@override String get description => 'احصل على رؤى مفصلة حول اتجاهات صحتك';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationAr implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تكامل سلس';
	@override String get description => 'زامن البيانات من تطبيقاتك الصحية المفضلة';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessAr implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'لست وحدك';
	@override String get genericMessage => 'تُظهر الأبحاث أن الالتزام بالتسجيل هو العامل رقم 1 للتنبؤ بالنجاح طويل المدى.';
	@override String personalizedMessage({required Object gender, required Object age, required Object goal}) => 'بالنسبة إلى ${gender} بعمر ${age} عامًا يسعى إلى ${goal}، فإن الالتزام بالتسجيل هو المؤشر رقم 1 للنجاح.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} يجعل الأمر أسهل 10 مرات من القيام بذلك يدويًا.';
	@override String get getStartedTitle => 'هل أنت مستعد للبدء؟';
	@override String get tipPhoto => 'التقط صورة لوجباتك لتحليل فوري';
	@override String get tipConsistency => 'سجّل باستمرار لترى تقدمًا ملموسًا';
	@override String get tipProgress => 'تتبّع تقدّمك يوميًا لتحافظ على حماسك';
	@override String get button => 'لننطلق';
	@override String get defaultGender => 'فرد';
	@override String get defaultGoal => 'نسخة أكثر صحة منك';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileAr implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ملفك الصحي';
	@override String bmiDescription({required Object bmi}) => 'استنادًا إلى قياساتك، مؤشر كتلة جسمك هو ${bmi}.';
	@override String get finalizeDescription => 'لننهِ إعداد ملفك لتخصيص تجربتك.';
	@override String get goalGain => 'الزيادة';
	@override String get goalLose => 'الخسارة';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'للوصول إلى هدفك، ستقوم بـ${direction} بمقدار ${diff} ${unit}.';
	@override String get goalReached => 'أنت عند وزنك المستهدف! سنساعدك على الحفاظ عليه.';
	@override String get button => 'لننطلق';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleAr implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'بداية ممتازة!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'لقد خطوت أول خطوة نحو ${goalText}. وبما أنك ${activityText}، سيقوم ${appLabel} بضبط أهدافك لتلائم نمط حياتك.';
	@override String get personalizedTargets => 'أهداف سعرات مخصصة';
	@override String get aiMealDetection => 'اكتشاف الوجبات بالذكاء الاصطناعي';
	@override String get macroBreakdowns => 'تفصيل المغذيات الكبرى';
	@override String get button => 'لننطلق';
	@override String get defaultGoal => 'أهدافك';
	@override String get defaultActivity => 'نشطًا';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightAr implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'خسارة وزن';
	@override String get description => 'إنشاء عجز سعري لخسارة الوزن';
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
	@override String get name => 'زيادة وزن';
	@override String get description => 'إنشاء فائض سعري لزيادة الوزن';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryAr implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'خامل';
	@override String get description => 'قليل أو بلا تمرين';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveAr implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشاط خفيف';
	@override String get description => 'تمرين خفيف 1-3 أيام/أسبوع';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveAr implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشاط معتدل';
	@override String get description => 'تمرين معتدل 3-5 أيام/أسبوع';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveAr implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشاط عالٍ';
	@override String get description => 'تمرين قوي 6-7 أيام/أسبوع';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveAr implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشاط شديد جدًا';
	@override String get description => 'تمرين شديد جدًا أو عمل بدني';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableAr implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect غير متاح';
	@override String get description => 'Health Connect غير متاح على هذا الجهاز. يرجى تثبيت Health Connect من متجر Play (Android 9+) أو التحديث إلى Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsAr implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الأذونات';
	@override String get description => 'تُطلب الأذونات التالية لتوفير تكامل Health Connect:';
	@override String get granted => 'ممنوح';
	@override String get notGranted => 'غير ممنوح';
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
	@override String content({required Object appLabel}) => 'وُلد ${appLabel} من إحباط بسيط: معظم تطبيقات تتبع السعرات إما معقّدة للغاية، أو تتطلب إدخالًا يدويًا مستمرًا، أو تفرض رسوم اشتراك مرتفعة، أو تساوم على الخصوصية.\n\nكمطوّر منفرد، أردت بناء شيء أبسط وأكثر عدلًا — تطبيقًا يستخدم الذكاء الاصطناعي لتقليل الجهد، ويظل سريعًا ومجانيًا للاستخدام، ويحترم بياناتك الصحية.\n\n${appLabel} هو التطبيق الذي تمنّيت وجوده: بلا حسابات، بلا تتبع، بلا إعلانات — فقط رؤى واضحة وعمليّة وأهدافك الصحية.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyAr implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'خصوصيتك مهمة';
	@override String get description => 'الخصوصية ليست فكرة لاحقة — إنها مبدأ تصميم. هذا ما يعنيه ذلك عمليًا:';
	@override String get noAccounts => 'لا حاجة للحسابات\nاستخدم التطبيق فورًا. لا تسجيلات ولا هويات.';
	@override String noTracking({required Object appLabel}) => 'لا تتبع سلوكي\nلا يراقب ${appLabel} نشاطك، ولا يبني ملفات استخدام، ولا يتتبعك عبر التطبيقات أو المواقع.';
	@override String noAds({required Object appLabel}) => 'بدون إعلانات بطبيعته\n${appLabel} مصمّم ليعمل دون إعلانات أو استثمار قائم على البيانات.';
	@override String get noDataSelling => 'لا بيع للبيانات\nلا تُباع بياناتك الصحية ولا تُشارك مع أطراف ثالثة.';
	@override String get localStorage => 'تخزين محلي أولًا\nتبقى بياناتك على جهازك.';
	@override String get privacyPolicy => 'سياسة الخصوصية';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperAr implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'بُني بواسطة مطوّر منفرد';
	@override String description({required Object appLabel}) => '${appLabel} يُبنى ويُدار بواسطة مطوّر منفرد يركّز على إنشاء برمجيات صحية هادئة وتحترم الخصوصية.\n\nنقرأ الملاحظات شخصيًا وتساعد في رسم اتجاه التطبيق.';
	@override String get website => 'الموقع الإلكتروني';
	@override String get email => 'البريد الإلكتروني';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackAr implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'هل تستمتع بـ${appLabel}؟';
	@override String description({required Object appLabel}) => 'ملاحظاتك تساعد على جعل ${appLabel} أفضل للجميع.';
	@override String get rateApp => 'قيّمنا على متجر Play';
	@override String get sendFeedback => 'أرسل ملاحظاتك';
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
	@override String description({required Object appLabel}) => 'يمكن لطرق الطهي أن تغيّر المحتوى الغذائي للطعام بشكل كبير. قد لا تراعي تقديرات ${appLabel} هذه الفروق دائمًا.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsAr implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'المكوّنات';
	@override String get description => 'قد تؤدي الأطباق المعقّدة ذات المكونات الخفية الكثيرة إلى تقديرات أقل دقة.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsAr implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حدود قاعدة البيانات';
	@override String description({required Object appLabel}) => 'قاعدة بيانات الطعام لدى ${appLabel} واسعة، لكنها قد لا تشمل كل صنف أو كل اختلاف.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyAr implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'دقة السعرات';
	@override String get description => 'يعتمد هذا التقدير على دقة تتبّعك لاستهلاك وحرق السعرات. أي عدم دقة في التسجيل سيؤدي إلى توقع غير دقيق.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsAr implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'عوامل بيولوجية';
	@override String description({required Object appLabel}) => 'يتأثر فقدان/زيادة الوزن الفعلي بالاستقلاب والهرمونات والنوم والتوتر والترطيب وعوامل فردية أخرى لا يستطيع ${appLabel} قياسها.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightAr implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ماء الجسم والتقلّبات';
	@override String get description => 'قد يتقلّب الوزن اليومي بشكل ملحوظ بسبب احتباس السوائل والهضم والتوقيت. لا يأخذ التقدير هذه التغيّرات اليومية بالحسبان.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceAr implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إرشاد مهني';
	@override String get description => 'لا تستخدم هذا التقدير لاتخاذ قرارات طبية. استشر مختصًا صحيًا أو أخصائي تغذية مسجّلًا لإدارة وزن مخصصة.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrAr implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'معدل الأيض الأساسي (BMR) هو عدد السعرات التي يحرقها جسمك في الراحة للحفاظ على الوظائف الأساسية مثل التنفس والدورة الدموية. يعتمد BMR على عمرك وجنسك وطولك ووزنك. يشير BMR الأعلى إلى أن جسمك يحرق سعرات أكثر طبيعيًا في الراحة، غالبًا بسبب كتلة عضلية أكبر أو سن أصغر أو كونك ذكرًا. بينما يشير BMR الأقل عادةً إلى كتلة عضلية أقل أو سن أكبر أو كونك أنثى.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeAr implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'إجمالي استهلاك الطاقة اليومي (TDEE) هو مجموع السعرات التي تحرقها يوميًا، ويتضمن BMR إضافةً إلى السعرات الناتجة عن النشاط البدني والحركة اليومية. يعتمد TDEE على BMR ومستوى نشاطك. يشير TDEE الأعلى إلى حرق سعرات أكثر إجمالًا، عادةً بسبب نشاط أكبر أو BMR أعلى. بينما يشير TDEE الأقل إلى نشاط يومي أقل أو BMR أقل.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalAr implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الهدف اليومي';
	@override String get description => 'الهدف اليومي هو كمية السعرات الموصى بها يوميًا بناءً على TDEE وهدف وزنك. لفقدان الوزن، تستهلك سعرات أقل من TDEE. للحفاظ على الوزن، تطابق TDEE. لزيادة الوزن، تستهلك سعرات أكثر من TDEE. يساعدك هذا على تحقيق التغيّر المرغوب في الوزن بوتيرة صحية.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedAr implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'كيف يُحتسب التقدير';
	@override String get description => 'نحسب TDEE (استنادًا إلى ملفك) ونضربه في نسبة ما انقضى من اليوم (الساعات + الدقائق) / 24 لتقدير السعرات المحروقة حتى الآن.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceAr implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إرشاد مهني';
	@override String get description => 'لا تستخدم هذا التقدير لاتخاذ قرارات طبية. استشر مختصًا صحيًا أو أخصائي تغذية مسجّلًا لنصائح مخصصة.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedAr implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قراءة إجمالي السعرات المحروقة';
	@override String get description => 'يسمح للتطبيق بقراءة إجمالي السعرات المحروقة من Health Connect.';
	@override String get usage => 'يُستخدم هذا الإذن لعرض السعرات التي تحرقها يوميًا في التطبيق، ما يساعدك على فهم استهلاك الطاقة طوال اليوم.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadAr implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قراءة بيانات التغذية';
	@override String get description => 'يسمح للتطبيق بقراءة بيانات التغذية من Health Connect.';
	@override String get usage => 'يسمح هذا الإذن للتطبيق بقراءة معلومات التغذية التي قد تكون سجّلتها تطبيقات أخرى متصلة بـ Health Connect، لتقديم رؤية شاملة لتغذيتك.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteAr implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'كتابة بيانات التغذية';
	@override String get description => 'يسمح للتطبيق بكتابة بيانات التغذية إلى Health Connect.';
	@override String get usage => 'يسمح هذا الإذن بمزامنة وجباتك المسجّلة مع Health Connect، لتكون بياناتك الغذائية متاحة لتطبيقات الصحة واللياقة التي تستخدمها.';
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
			'errors.rateLimitExceeded' => 'لقد أجريت عددًا كبيرًا من الطلبات. يرجى الانتظار قليلًا قبل المحاولة مرة أخرى.',
			'errors.networkError' => 'خطأ في الشبكة. يرجى التحقق من اتصالك بالإنترنت.',
			'errors.unknownError' => 'حدث خطأ ما. يرجى المحاولة لاحقًا.',
			'errors.loadingProfileData' => 'خطأ في تحميل بيانات الملف الشخصي',
			'errors.somethingWentWrong' => 'حدث خطأ ما.',
			'errors.retry' => 'إعادة المحاولة',
			'onboarding.welcome' => ({required Object appLabel}) => 'مرحبًا بك في ${appLabel}',
			'onboarding.subtitle' => 'رفيقك الشخصي للتغذية مدعومًا بالذكاء الاصطناعي',
			'onboarding.getStarted' => 'ابدأ الآن',
			'onboarding.features.foodRecognition.title' => 'تعرّف ذكي على الطعام',
			'onboarding.features.foodRecognition.description' => 'التقط صورة ودَع الذكاء الاصطناعي يتعرّف على وجبتك',
			'onboarding.features.aiAnalysis.title' => 'تحليل بالذكاء الاصطناعي',
			'onboarding.features.aiAnalysis.description' => 'احصل على حقائق غذائية فورية من أوصافك',
			'onboarding.features.healthIntegration.title' => 'تكامل صحي',
			'onboarding.features.healthIntegration.description' => 'اتصل بـ Health Connect للحصول على رؤى أفضل',
			'onboarding.gender.title' => 'ما جنسك؟',
			'onboarding.gender.description' => 'يساعدنا الجنس على حساب معدل الأيض الأساسي (BMR) بدقة.',
			'onboarding.gender.next' => 'التالي',
			'onboarding.height.title' => 'ما طولك؟',
			'onboarding.height.description' => 'يساعدنا طولك على حساب مؤشر كتلة الجسم واحتياجات الطاقة بدقة.',
			'onboarding.height.metric' => 'متري',
			'onboarding.height.imperial' => 'إنجليزي',
			'onboarding.height.next' => 'التالي',
			'onboarding.weight.currentTitle' => 'ما هو وزنك الحالي؟',
			'onboarding.weight.currentDescription' => 'وزنك الحالي ضروري لتخصيص أهدافك اليومية.',
			'onboarding.weight.targetTitle' => 'ما هو وزنك المستهدف؟',
			'onboarding.weight.targetDescription' => 'تحديد وزن الهدف يساعدنا على وضع خطة طويلة المدى.',
			'onboarding.weight.metric' => 'متري',
			'onboarding.weight.imperial' => 'إنجليزي',
			'onboarding.weight.next' => 'التالي',
			'onboarding.age.title' => 'ما تاريخ ميلادك؟',
			'onboarding.age.description' => 'يساعدنا عمرك على حساب احتياجاتك من السعرات بدقة.',
			'onboarding.age.next' => 'التالي',
			'onboarding.bmiScale.underweight' => 'منخفض',
			'onboarding.bmiScale.healthy' => 'صحي',
			'onboarding.bmiScale.overweight' => 'زائد',
			'onboarding.bmiScale.obese' => 'سمنة',
			'onboarding.bmiScale.categories.underweight' => 'نقص وزن',
			'onboarding.bmiScale.categories.healthyWeight' => 'وزن صحي',
			'onboarding.bmiScale.categories.overweight' => 'زيادة وزن',
			'onboarding.bmiScale.categories.obese' => 'سمنة',
			'onboarding.bmiScale.messages.underweight' => 'نستطيع مساعدتك في بناء خطة صحية للوصول إلى وزن متوازن مع وجبات غنية بالمغذيات.',
			'onboarding.bmiScale.messages.healthy' => 'عمل رائع! أنت ضمن النطاق الصحي. سنساعدك على الحفاظ على الحيوية ومستويات الطاقة.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} سيبسط رحلتك بتتبع مدعوم بالذكاء الاصطناعي لمساعدتك على الوصول لهدفك براحة.',
			'onboarding.bmiScale.messages.obese' => 'نحن هنا لدعمك بإرشادات مخصصة واستراتيجيات مستدامة لتحقيق أهدافك الصحية.',
			'onboarding.weightGoal.title' => 'ما هدفك؟',
			'onboarding.weightGoal.description' => 'اختر الهدف الذي يصف ما تريد تحقيقه بأفضل شكل',
			'onboarding.activityLevel.title' => 'ما مدى نشاطك؟',
			'onboarding.activityLevel.description' => 'يساعدنا هذا على حساب احتياجاتك اليومية من السعرات بدقة أكبر',
			'onboarding.healthConnect.title' => 'اتصل بـ Health Connect',
			'onboarding.healthConnect.description' => 'زامن بياناتك الصحية للحصول على رؤى أفضل وتتبع تلقائي للسعرات',
			'onboarding.healthConnect.automaticTracking.title' => 'تتبع تلقائي للسعرات',
			'onboarding.healthConnect.automaticTracking.description' => 'تتبّع السعرات المحروقة من تطبيقات اللياقة',
			'onboarding.healthConnect.progressInsights.title' => 'رؤى التقدّم',
			'onboarding.healthConnect.progressInsights.description' => 'احصل على رؤى مفصلة حول اتجاهات صحتك',
			'onboarding.healthConnect.seamlessIntegration.title' => 'تكامل سلس',
			'onboarding.healthConnect.seamlessIntegration.description' => 'زامن البيانات من تطبيقاتك الصحية المفضلة',
			'onboarding.healthConnect.connected' => 'تم الاتصال بـ Health Connect',
			'onboarding.healthConnect.notConnected' => 'Health Connect غير متصل',
			'onboarding.healthConnect.setup' => 'إعداد Health Connect',
			'onboarding.healthConnect.skipForNow' => 'تخطي الآن',
			'onboarding.healthConnect.statusConnected' => 'تم توصيل Health Connect.',
			'onboarding.healthConnect.statusSuccess' => 'تم توصيل Health Connect بنجاح!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'تم رفض الإذن. يرجى تمكين أذونات Health Connect من إعدادات هاتفك لـ ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'خطأ في إعداد Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'لست وحدك',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'تُظهر الأبحاث أن الالتزام بالتسجيل هو العامل رقم 1 للتنبؤ بالنجاح طويل المدى.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object gender, required Object age, required Object goal}) => 'بالنسبة إلى ${gender} بعمر ${age} عامًا يسعى إلى ${goal}، فإن الالتزام بالتسجيل هو المؤشر رقم 1 للنجاح.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} يجعل الأمر أسهل 10 مرات من القيام بذلك يدويًا.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'هل أنت مستعد للبدء؟',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'التقط صورة لوجباتك لتحليل فوري',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'سجّل باستمرار لترى تقدمًا ملموسًا',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'تتبّع تقدّمك يوميًا لتحافظ على حماسك',
			'onboarding.reinforcement.trackingSuccess.button' => 'لننطلق',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'فرد',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'نسخة أكثر صحة منك',
			'onboarding.reinforcement.healthProfile.title' => 'ملفك الصحي',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'استنادًا إلى قياساتك، مؤشر كتلة جسمك هو ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'لننهِ إعداد ملفك لتخصيص تجربتك.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'الزيادة',
			'onboarding.reinforcement.healthProfile.goalLose' => 'الخسارة',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'للوصول إلى هدفك، ستقوم بـ${direction} بمقدار ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'أنت عند وزنك المستهدف! سنساعدك على الحفاظ عليه.',
			'onboarding.reinforcement.healthProfile.button' => 'لننطلق',
			'onboarding.reinforcement.goalLifestyle.title' => 'بداية ممتازة!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'لقد خطوت أول خطوة نحو ${goalText}. وبما أنك ${activityText}، سيقوم ${appLabel} بضبط أهدافك لتلائم نمط حياتك.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'أهداف سعرات مخصصة',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'اكتشاف الوجبات بالذكاء الاصطناعي',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'تفصيل المغذيات الكبرى',
			'onboarding.reinforcement.goalLifestyle.button' => 'لننطلق',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'أهدافك',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'نشطًا',
			'tabs.dashboard' => 'الرئيسية',
			'tabs.history' => 'السجل',
			'home.aiSummary.title' => 'ملخصك الذكي',
			'home.aiSummary.logMore' => 'سجّل مزيدًا من الوجبات خلال الأيام القادمة لتحصل على رؤى شخصية من الذكاء الاصطناعي.',
			'home.aiSummary.loading' => 'جارٍ تحميل ملخصك...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} وجبات مسجّلة',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'درجة التوازن ${score}',
			'home.aiSummary.topFoods' => 'أكثر الأطعمة تناولًا',
			'home.aiSummary.trendUp' => 'السعرات في اتجاه تصاعدي',
			'home.aiSummary.trendDown' => 'السعرات في اتجاه تنازلي',
			'home.aiSummary.trendSteady' => 'السعرات مستقرة',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'تم التحديث ${time}',
			'home.dailyGoal.title' => 'حدّد هدفك اليومي',
			'home.dailyGoal.titleSet' => 'هدفك اليومي',
			'home.dailyGoal.description' => 'جاهز لبدء رحلتك نحو العافية؟ حدّد هدفك اليومي من السعرات أدناه للانطلاق.',
			'home.dailyGoal.descriptionSet' => 'جهّزنا بوصلة مسارك! هذا هو هدفك اليومي من السعرات لإرشادك.',
			'home.dailyGoal.yourGoal' => 'هدفك',
			'home.dailyGoal.goal' => 'الهدف',
			'home.dailyGoal.dailyCalories' => 'السعرات اليومية (kcal)',
			'home.dailyGoal.setGoal' => 'تعيين الهدف',
			'home.dailyGoal.intake' => 'المتناول',
			'home.dailyGoal.burned' => 'المحروق',
			'home.dailyGoal.weightImpact' => 'تأثير الوزن',
			'home.dailyGoal.estLoss' => 'خسارة تقديرية بمقدار',
			'home.dailyGoal.estGain' => 'زيادة تقديرية بمقدار',
			'home.dailyGoal.kcal' => 'كيلو كالوري',
			'home.dailySummary.title' => 'ملخص اليوم',
			'home.dailySummary.calories' => 'السعرات',
			'home.dailySummary.carbs' => 'الكربوهيدرات',
			'home.dailySummary.protein' => 'البروتين',
			'home.dailySummary.fat' => 'الدهون',
			'home.dailySummary.fiber' => 'الألياف',
			'home.dailySummary.grams' => 'غرامات',
			'home.dailySummary.chartAccessibilityLabel' => 'مخطط المغذيات الكبرى',
			'home.intakeProgress.title' => 'توزيع مغذيات اليوم',
			'home.intakeProgress.target' => 'الهدف',
			'home.intakeProgress.current' => 'الحالي',
			'home.intakeHistory.title' => 'سجل المغذيات الكبرى لآخر 7 أيام',
			'home.intakeHistory.trendTitle' => 'اتجاه اليوم',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'الذروة: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'لا يوجد سجل بعد',
			'home.intakeHistory.startLogging' => 'ابدأ بتسجيل الوجبات لترى\nاتجاهات المغذيات الكبرى لآخر 7 أيام هنا',
			'home.mealLog.title' => 'الوجبات المسجّلة',
			'home.mealLog.emptyMessage' => 'التقط صورة لآخر وجبة لتسجّلها هنا.',
			'home.mealLog.noMealsToday' => 'لا توجد وجبات لهذا اليوم',
			'home.mealLog.seeAllMeals' => 'عرض كل الوجبات',
			'home.mealDescription.title' => 'إضافة سريعة بالذكاء الاصطناعي',
			'home.mealDescription.description' => 'صف وجبتك ودع الذكاء الاصطناعي يتولى التفاصيل.',
			'home.mealDescription.hint' => 'مثال: على الإفطار تناولت وعاءً كبيرًا من الشوفان مع موزة مقطّعة وملعقة من بروتين مصل اللبن...',
			'home.mealDescription.analyzeMeal' => 'حلّل الوجبة',
			'home.favoriteMeals.title' => 'الوجبات المفضلة',
			'home.favoriteMeals.description' => 'أضف بسرعة إحدى وجباتك المفضلة.',
			'home.favoriteMeals.noFavorites' => 'لا توجد وجبات مفضلة بعد.',
			'home.favoriteMeals.addFavoriteHint' => 'انقر على النجمة في الوجبة لتمييزها كمفضلة.',
			'home.favoriteMeals.seeAll' => 'عرض الكل',
			'home.favoriteMeals.add' => 'إضافة',
			'home.mealSnap.title' => 'التقط وتتبّع وجبتك',
			'home.mealSnap.description' => 'استخدم الكاميرا لالتقاط صورة لطعامك لتحليل الذكاء الاصطناعي.',
			'home.mealSnap.openCamera' => 'فتح الكاميرا',
			'home.mealSnap.gallery' => 'المعرض',
			'home.mealSnap.compressingPhoto' => 'جارٍ تحسين الصورة…',
			'home.mealSnap.uploadingPhoto' => 'جارٍ رفع الصورة…',
			'home.connectHealth.title' => 'زامن مع Health Connect',
			'home.connectHealth.description' => 'زامن بيانات تغذيتك مع Health Connect',
			'home.connectHealth.install' => 'تثبيت',
			'home.connectHealth.connect' => 'اتصال',
			'history.noMeals' => 'لا توجد وجبات مسجّلة',
			'history.emptyMessage' => 'التقط صورة لآخر وجبة لتسجّلها هنا.',
			'history.today' => 'اليوم',
			'history.yesterday' => 'أمس',
			'meal.ohNo' => 'أوه لا!',
			'meal.delete' => 'حذف',
			'meal.editMeal' => 'تعديل الوجبة',
			'meal.addMeal' => 'إضافة وجبة',
			'meal.saveMeal' => 'حفظ الوجبة',
			'meal.save' => 'حفظ',
			'meal.mealName' => 'اسم الوجبة',
			'meal.mealNameHint' => 'مثال: بيض مخفوق مع خبز محمّص',
			'meal.mealQuantity' => 'كمية الوجبة',
			'meal.mealQuantityHint' => 'مثال: 1 وعاء، 2 شريحة',
			'meal.timeOfMeal' => 'وقت الوجبة',
			'meal.timeOfMealHint' => 'اختر وقت تناول وجبتك',
			'meal.mealType' => 'نوع الوجبة',
			'meal.nutrition.calories' => 'السعرات',
			'meal.nutrition.carbs' => 'الكربوهيدرات (غ)',
			'meal.nutrition.protein' => 'البروتين (غ)',
			'meal.nutrition.fat' => 'الدهون (غ)',
			'meal.nutrition.fiber' => 'الألياف (غ)',
			'meal.deleteConfirmation.title' => 'حذف الوجبة',
			'meal.deleteConfirmation.message' => 'هل أنت متأكد أنك تريد حذف هذا الإدخال؟',
			'meal.deleteConfirmation.cancel' => 'إلغاء',
			'meal.deleteConfirmation.delete' => 'حذف',
			'meal.addedToLog' => 'تمت إضافة الوجبة إلى سجلك!',
			'meal.couldNotAdd' => ({required Object error}) => 'تعذّرت إضافة الوجبة: ${error}',
			'meal.savedSuccessfully' => 'تمت إضافة الوجبة بنجاح!',
			'meal.updatedSuccessfully' => 'تم تحديث الوجبة بنجاح!',
			'meal.errorSaving' => ({required Object error}) => 'خطأ في حفظ الوجبة: ${error}',
			'meal.removedFromFavorites' => 'تمت الإزالة من المفضلة!',
			'meal.savedAsFavorite' => 'تم حفظ الوجبة كمفضلة!',
			'meal.unfavorite' => 'إزالة من المفضلة',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'تعذّر تحديث المفضلة: ${error}',
			'meal.feedbackThanks' => 'شكرًا على ملاحظاتك!',
			'meal.reanalysisUpdated' => 'تم تحديث تحليل الوجبة بناءً على ملاحظاتك.',
			'meal.failedToProcess' => ({required Object error}) => 'فشل المعالجة: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'فشل معالجة الصورة: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'خطأ في ضغط الصورة: ${error}',
			'meal.failedToSave' => 'فشل حفظ البيانات. يرجى المحاولة مجددًا.',
			'meal.skip' => 'تخطي',
			'meal.variation.question' => ({required Object current, required Object total}) => 'السؤال ${current} من ${total}',
			'meal.variation.noVariationsAvailable' => 'لا توجد أي تنويعات متاحة',
			'meal.analysis.title' => 'تحليل الوجبة بالذكاء الاصطناعي',
			'meal.analysis.reassurance' => 'غالبًا ما يستغرق ذلك بضع ثوانٍ.',
			'meal.analysis.stepStarted' => 'نبدأ الآن…',
			'meal.analysis.stepDecomposition' => 'فهم وجبتك…',
			'meal.analysis.stepIngredients' => 'مطابقة المكوّنات مع بيانات التغذية…',
			'meal.analysis.stepUncertainty' => 'التحقق من مستوى الثقة…',
			'meal.analysis.stepMealTypeQuestion' => 'أوشكنا على الانتهاء…',
			'meal.analysis.stepResult' => 'جارٍ إنهاء النتائج…',
			'meal.analysis.stepError' => 'حدث خطأ ما',
			'meal.analysis.stepDefault' => 'جارٍ تحليل وجبتك…',
			'meal.analysis.progressUnderstand' => 'فهم',
			'meal.analysis.progressMatch' => 'مطابقة',
			'meal.analysis.progressCheck' => 'تحقق',
			'meal.analysis.progressFinish' => 'إنهاء',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'تم اكتشاف ${count} مكوّن',
			'meal.analysis.ingredientsPending' => 'جارٍ فحص المكوّنات…',
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
			'favorites.title' => 'المفضلة',
			'favorites.empty' => 'لا توجد وجبات مفضلة بعد.',
			'favorites.searchPlaceholder' => 'ابحث في الوجبات المفضلة',
			'favorites.searchEmptyTitle' => 'لا توجد نتائج مطابقة في المفضلة',
			'favorites.searchEmptySubtitle' => 'جرّب اسم وجبة مختلفًا أو كمية أو نوع وجبة.',
			'favorites.sortLabel' => 'ترتيب المفضلات',
			'favorites.undo' => 'تراجع',
			'favorites.removed' => ({required Object name}) => 'تمت إزالة ${name} من المفضلات',
			'favorites.sortOptions.recent' => 'الأحدث',
			'favorites.sortOptions.calories' => 'السعرات',
			'favorites.sortOptions.alphabetical' => 'أبجديًا',
			'profile.title' => 'الملف الشخصي',
			'profile.noProfileData' => 'لم يتم العثور على بيانات للملف الشخصي',
			'profile.yourProfile' => 'ملفك',
			'profile.viewAndManage' => 'اعرض وأدر معلوماتك الصحية',
			'profile.sections.profile' => 'الملف الشخصي',
			'profile.sections.basicInformation' => 'المعلومات الأساسية',
			'profile.sections.goalsAndActivity' => 'الأهداف والنشاط',
			'profile.sections.calculatedValues' => 'القيم المحسوبة',
			'profile.gender' => 'الجنس',
			'profile.height' => 'الطول',
			'profile.weight' => 'الوزن',
			'profile.age' => 'العمر',
			'profile.weightGoal' => 'هدف الوزن',
			'profile.targetWeight' => 'الوزن المستهدف',
			'profile.activityLevel' => 'مستوى النشاط',
			'profile.healthMetrics' => 'المؤشرات الصحية',
			'profile.notSet' => 'غير محدد',
			'profile.years' => 'سنوات',
			'profile.updatedSuccessfully' => 'تم تحديث الملف الشخصي بنجاح!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'الهدف اليومي',
			'profile.calculatedValues.calPerDay' => 'سعرة/اليوم',
			'profile.calculatedValues.notAvailable' => 'غير متاح',
			'healthScore.title' => 'الدرجة الصحية',
			'healthScore.whyThisScore' => 'لماذا هذه الدرجة؟',
			'healthScore.note' => 'هذه الدرجة تقدير من الذكاء الاصطناعي يعتمد على المكونات المحددة والكثافة الغذائية. استشر مختصًا دائمًا للحصول على نصيحة غذائية.',
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
			'editProfile.imperial' => 'إنجليزي',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'متري (cm)',
			'editProfile.imperialFtIn' => 'إنجليزي (ft/in)',
			'editProfile.metricKg' => 'متري (kg)',
			'editProfile.imperialLbs' => 'إنجليزي (lbs)',
			'editProfile.genders.male' => 'ذكر',
			'editProfile.genders.female' => 'أنثى',
			'editProfile.genders.other' => 'آخر',
			'editProfile.weightGoals.loseWeight.name' => 'خسارة وزن',
			'editProfile.weightGoals.loseWeight.description' => 'إنشاء عجز سعري لخسارة الوزن',
			'editProfile.weightGoals.maintainWeight.name' => 'الحفاظ على الوزن',
			'editProfile.weightGoals.maintainWeight.description' => 'الحفاظ على وزنك الحالي',
			'editProfile.weightGoals.gainWeight.name' => 'زيادة وزن',
			'editProfile.weightGoals.gainWeight.description' => 'إنشاء فائض سعري لزيادة الوزن',
			'editProfile.activityLevels.sedentary.name' => 'خامل',
			'editProfile.activityLevels.sedentary.description' => 'قليل أو بلا تمرين',
			'editProfile.activityLevels.lightlyActive.name' => 'نشاط خفيف',
			'editProfile.activityLevels.lightlyActive.description' => 'تمرين خفيف 1-3 أيام/أسبوع',
			'editProfile.activityLevels.moderatelyActive.name' => 'نشاط معتدل',
			'editProfile.activityLevels.moderatelyActive.description' => 'تمرين معتدل 3-5 أيام/أسبوع',
			'editProfile.activityLevels.veryActive.name' => 'نشاط عالٍ',
			'editProfile.activityLevels.veryActive.description' => 'تمرين قوي 6-7 أيام/أسبوع',
			'editProfile.activityLevels.extremelyActive.name' => 'نشاط شديد جدًا',
			'editProfile.activityLevels.extremelyActive.description' => 'تمرين شديد جدًا أو عمل بدني',
			'settings.title' => 'الإعدادات',
			'settings.sections.profile' => 'الملف الشخصي',
			'settings.sections.localization' => 'اللغة والمنطقة',
			'settings.sections.notifications' => 'الإشعارات',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.supportAndLegal' => 'الدعم والشؤون القانونية',
			'settings.sections.about' => 'حول التطبيق',
			'settings.sections.dangerZone' => 'منطقة الخطر',
			'settings.sections.developer' => 'المطوّر',
			'settings.editProfile.title' => 'تعديل الملف الشخصي',
			'settings.editProfile.subtitle' => 'حدّث معلوماتك الشخصية',
			'settings.language.title' => 'اللغة',
			'settings.language.subtitle' => 'اختر لغتك المفضلة',
			'settings.language.searchHint' => 'ابحث عن اللغات...',
			'settings.language.noResults' => 'لا توجد نتائج',
			'settings.heightUnit.title' => 'وحدة الطول',
			'settings.weightUnit.title' => 'وحدة الوزن',
			'settings.mealReminders.title' => 'تذكيرات الوجبات',
			'settings.mealReminders.subtitle' => 'ابقَ على المسار بتنبيهات في الوقت المناسب',
			'settings.theme.title' => 'السمة',
			'settings.theme.light' => 'فاتح',
			'settings.theme.dark' => 'داكن',
			'settings.theme.system' => 'النظام',
			'settings.sendFeedback.title' => 'إرسال الملاحظات',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'ساعدنا على تحسين ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'ملاحظات حول تطبيق ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'يرجى تزويدنا بملاحظاتك أدناه:',
			'settings.sendFeedback.appVersion' => 'إصدار التطبيق',
			'settings.sendFeedback.device' => 'الجهاز',
			'settings.sendFeedback.osVersion' => 'إصدار نظام التشغيل',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'تصدير سجل الوجبات',
			'settings.exportMealHistory.subtitle' => 'شارك ملف CSV لوجباتك المسجّلة',
			'settings.exportMealHistory.shareText' => 'تصدير سجل وجباتك من Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'تعذّر تصدير سجل الوجبات: ${error}',
			'settings.clearAllData.title' => 'حذف كل البيانات',
			'settings.clearAllData.subtitle' => 'احذف جميع معلوماتك بلا رجعة',
			'settings.clearAllData.confirmationTitle' => 'هل تريد حذف كل البيانات؟',
			'settings.clearAllData.confirmationMessage' => 'لا يمكن التراجع عن هذا الإجراء. سيتم حذف جميع وجباتك المسجّلة والمفضلات وإعدادات الملف الشخصي نهائيًا.',
			'settings.clearAllData.cancel' => 'إلغاء',
			'settings.clearAllData.clearEverything' => 'حذف كل شيء',
			'settings.debugOptions.title' => 'خيارات التصحيح',
			'settings.developerModeEnabled' => 'تم تفعيل وضع المطوّر!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'عرض الأذونات وإدارتها',
			'settings.healthConnect.unavailable.title' => 'Health Connect غير متاح',
			'settings.healthConnect.unavailable.description' => 'Health Connect غير متاح على هذا الجهاز. يرجى تثبيت Health Connect من متجر Play (Android 9+) أو التحديث إلى Android 14+.',
			'settings.healthConnect.permissions.title' => 'الأذونات',
			'settings.healthConnect.permissions.description' => 'تُطلب الأذونات التالية لتوفير تكامل Health Connect:',
			'settings.healthConnect.permissions.granted' => 'ممنوح',
			'settings.healthConnect.permissions.notGranted' => 'غير ممنوح',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'قراءة إجمالي السعرات المحروقة',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'يسمح للتطبيق بقراءة إجمالي السعرات المحروقة من Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'يُستخدم هذا الإذن لعرض السعرات التي تحرقها يوميًا في التطبيق، ما يساعدك على فهم استهلاك الطاقة طوال اليوم.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'قراءة بيانات التغذية',
			'settings.healthConnect.permissions.nutritionRead.description' => 'يسمح للتطبيق بقراءة بيانات التغذية من Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'يسمح هذا الإذن للتطبيق بقراءة معلومات التغذية التي قد تكون سجّلتها تطبيقات أخرى متصلة بـ Health Connect، لتقديم رؤية شاملة لتغذيتك.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'كتابة بيانات التغذية',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'يسمح للتطبيق بكتابة بيانات التغذية إلى Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'يسمح هذا الإذن بمزامنة وجباتك المسجّلة مع Health Connect، لتكون بياناتك الغذائية متاحة لتطبيقات الصحة واللياقة التي تستخدمها.',
			'settings.healthConnect.managePermissions' => 'إدارة الأذونات',
			'settings.healthConnect.openSettings' => 'فتح إعدادات Health Connect',
			'settings.healthConnect.requestPermissions' => 'طلب الأذونات',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'تم إلغاء طلب الأذونات أو فشل. يرجى المحاولة مجددًا أو منح الأذونات يدويًا في إعدادات Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'تعذّر طلب الأذونات. يرجى المحاولة مجددًا أو منح الأذونات يدويًا في إعدادات Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'جارٍ طلب الأذونات...',
			'settings.about.title' => 'حول التطبيق',
			'settings.about.tagline' => 'سريع، مجاني، ويضع الخصوصية أولًا لرفع وعيك بالسعرات',
			'settings.about.ourStory.title' => 'قصتنا',
			'settings.about.ourStory.content' => ({required Object appLabel}) => 'وُلد ${appLabel} من إحباط بسيط: معظم تطبيقات تتبع السعرات إما معقّدة للغاية، أو تتطلب إدخالًا يدويًا مستمرًا، أو تفرض رسوم اشتراك مرتفعة، أو تساوم على الخصوصية.\n\nكمطوّر منفرد، أردت بناء شيء أبسط وأكثر عدلًا — تطبيقًا يستخدم الذكاء الاصطناعي لتقليل الجهد، ويظل سريعًا ومجانيًا للاستخدام، ويحترم بياناتك الصحية.\n\n${appLabel} هو التطبيق الذي تمنّيت وجوده: بلا حسابات، بلا تتبع، بلا إعلانات — فقط رؤى واضحة وعمليّة وأهدافك الصحية.',
			'settings.about.privacy.title' => 'خصوصيتك مهمة',
			'settings.about.privacy.description' => 'الخصوصية ليست فكرة لاحقة — إنها مبدأ تصميم. هذا ما يعنيه ذلك عمليًا:',
			'settings.about.privacy.noAccounts' => 'لا حاجة للحسابات\nاستخدم التطبيق فورًا. لا تسجيلات ولا هويات.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'لا تتبع سلوكي\nلا يراقب ${appLabel} نشاطك، ولا يبني ملفات استخدام، ولا يتتبعك عبر التطبيقات أو المواقع.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'بدون إعلانات بطبيعته\n${appLabel} مصمّم ليعمل دون إعلانات أو استثمار قائم على البيانات.',
			'settings.about.privacy.noDataSelling' => 'لا بيع للبيانات\nلا تُباع بياناتك الصحية ولا تُشارك مع أطراف ثالثة.',
			'settings.about.privacy.localStorage' => 'تخزين محلي أولًا\nتبقى بياناتك على جهازك.',
			'settings.about.privacy.privacyPolicy' => 'سياسة الخصوصية',
			'settings.about.developer.title' => 'بُني بواسطة مطوّر منفرد',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} يُبنى ويُدار بواسطة مطوّر منفرد يركّز على إنشاء برمجيات صحية هادئة وتحترم الخصوصية.\n\nنقرأ الملاحظات شخصيًا وتساعد في رسم اتجاه التطبيق.',
			'settings.about.developer.website' => 'الموقع الإلكتروني',
			'settings.about.developer.email' => 'البريد الإلكتروني',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'هل تستمتع بـ${appLabel}؟',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'ملاحظاتك تساعد على جعل ${appLabel} أفضل للجميع.',
			'settings.about.feedback.rateApp' => 'قيّمنا على متجر Play',
			'settings.about.feedback.sendFeedback' => 'أرسل ملاحظاتك',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify الإصدار v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'البنية ${buildNumber}',
			'reminders.title' => 'ابقَ على المسار مع التذكيرات',
			'reminders.description' => 'احصل على تذكيرات لطيفة لتسجيل وجباتك والبقاء ثابتًا على أهدافك الغذائية',
			'reminders.notificationsEnabled' => 'الإشعارات مفعّلة',
			'reminders.notificationsDisabled' => 'الإشعارات معطّلة',
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
			'reminders.skipForNow' => 'تخطي الآن',
			'reminders.saveChanges' => 'حفظ التغييرات',
			'reminders.enabledSuccessfully' => 'تم تفعيل الإشعارات بنجاح!',
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
			'notifications.test.title' => 'إشعار تجريبي',
			'login.title' => 'تسجيل الدخول',
			'login.signInWithGoogle' => 'تسجيل الدخول باستخدام Google',
			'login.signInFailed' => 'فشل تسجيل الدخول عبر Google أو تم إلغاؤه.',
			'disclaimer.pleaseNote' => 'يرجى الملاحظة',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} يقدّم معلومات غذائية تقديرية. تعتمد الدقة على مدخلاتك واختلافات الطعام. استخدمه كدليل لا كمصدر حاسم. استشر مختصًا للحصول على نصيحة غذائية مخصصة.',
			'disclaimer.snap.portionSize.title' => 'حجم الحصة',
			'disclaimer.snap.portionSize.description' => 'تعتمد دقة التقديرات بشكل كبير على تقييمك الصحيح لحجم الحصة.',
			'disclaimer.snap.preparationMethods.title' => 'طرق التحضير',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'يمكن لطرق الطهي أن تغيّر المحتوى الغذائي للطعام بشكل كبير. قد لا تراعي تقديرات ${appLabel} هذه الفروق دائمًا.',
			'disclaimer.snap.ingredients.title' => 'المكوّنات',
			'disclaimer.snap.ingredients.description' => 'قد تؤدي الأطباق المعقّدة ذات المكونات الخفية الكثيرة إلى تقديرات أقل دقة.',
			'disclaimer.snap.databaseLimitations.title' => 'حدود قاعدة البيانات',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'قاعدة بيانات الطعام لدى ${appLabel} واسعة، لكنها قد لا تشمل كل صنف أو كل اختلاف.',
			'disclaimer.weightEstimate.title' => 'حول تقدير الوزن',
			'disclaimer.weightEstimate.description' => 'تغيّر الوزن المتوقع هو تقدير نظري يعتمد على نموذج السعرات الداخلة مقابل الخارجة. الهدف منه التحفيز فقط وليس توقع وزنك الفعلي.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'دقة السعرات',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'يعتمد هذا التقدير على دقة تتبّعك لاستهلاك وحرق السعرات. أي عدم دقة في التسجيل سيؤدي إلى توقع غير دقيق.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'عوامل بيولوجية',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'يتأثر فقدان/زيادة الوزن الفعلي بالاستقلاب والهرمونات والنوم والتوتر والترطيب وعوامل فردية أخرى لا يستطيع ${appLabel} قياسها.',
			'disclaimer.weightEstimate.waterWeight.title' => 'ماء الجسم والتقلّبات',
			'disclaimer.weightEstimate.waterWeight.description' => 'قد يتقلّب الوزن اليومي بشكل ملحوظ بسبب احتباس السوائل والهضم والتوقيت. لا يأخذ التقدير هذه التغيّرات اليومية بالحسبان.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'إرشاد مهني',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'لا تستخدم هذا التقدير لاتخاذ قرارات طبية. استشر مختصًا صحيًا أو أخصائي تغذية مسجّلًا لإدارة وزن مخصصة.',
			'disclaimer.healthMetrics.description' => 'تساعدك هذه المؤشرات على فهم احتياجات جسمك من الطاقة وتوجيه أهدافك الغذائية.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'معدل الأيض الأساسي (BMR) هو عدد السعرات التي يحرقها جسمك في الراحة للحفاظ على الوظائف الأساسية مثل التنفس والدورة الدموية. يعتمد BMR على عمرك وجنسك وطولك ووزنك. يشير BMR الأعلى إلى أن جسمك يحرق سعرات أكثر طبيعيًا في الراحة، غالبًا بسبب كتلة عضلية أكبر أو سن أصغر أو كونك ذكرًا. بينما يشير BMR الأقل عادةً إلى كتلة عضلية أقل أو سن أكبر أو كونك أنثى.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'إجمالي استهلاك الطاقة اليومي (TDEE) هو مجموع السعرات التي تحرقها يوميًا، ويتضمن BMR إضافةً إلى السعرات الناتجة عن النشاط البدني والحركة اليومية. يعتمد TDEE على BMR ومستوى نشاطك. يشير TDEE الأعلى إلى حرق سعرات أكثر إجمالًا، عادةً بسبب نشاط أكبر أو BMR أعلى. بينما يشير TDEE الأقل إلى نشاط يومي أقل أو BMR أقل.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'الهدف اليومي',
			'disclaimer.healthMetrics.dailyGoal.description' => 'الهدف اليومي هو كمية السعرات الموصى بها يوميًا بناءً على TDEE وهدف وزنك. لفقدان الوزن، تستهلك سعرات أقل من TDEE. للحفاظ على الوزن، تطابق TDEE. لزيادة الوزن، تستهلك سعرات أكثر من TDEE. يساعدك هذا على تحقيق التغيّر المرغوب في الوزن بوتيرة صحية.',
			'disclaimer.calorieExpenditure.title' => 'تقدير استهلاك السعرات',
			'disclaimer.calorieExpenditure.description' => 'عندما لا تتوفر بيانات Health Connect، نقدّر السعرات المحروقة اليوم باستخدام معدل الأيض الأساسي (BMR) ومستوى نشاطك (TDEE)، مع موازنتها بحسب الجزء المنقضي من اليوم.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'كيف يُحتسب التقدير',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'نحسب TDEE (استنادًا إلى ملفك) ونضربه في نسبة ما انقضى من اليوم (الساعات + الدقائق) / 24 لتقدير السعرات المحروقة حتى الآن.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'إرشاد مهني',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'لا تستخدم هذا التقدير لاتخاذ قرارات طبية. استشر مختصًا صحيًا أو أخصائي تغذية مسجّلًا لنصائح مخصصة.',
			'common.close' => 'إغلاق',
			'common.kContinue' => 'متابعة',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'هل تستمتع بـ${appLabel}؟',
			'feedbackRating.yes' => 'نعم، أستمتع به',
			'feedbackRating.no' => 'ليس كثيرًا',
			'feedbackRating.rateStepHeading' => 'التقييم على متجر Play',
			'feedbackRating.emailStepHeading' => 'إرسال الملاحظات عبر البريد الإلكتروني',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'التقييم السريع يساعد الآخرين على العثور على ${appLabel} ويُبقي التطوير مستمرًا. هل تود تخصيص لحظة لترك تقييم؟',
			'feedbackRating.shareFeedbackViaEmail' => 'ملاحظاتك تحدد ما سنبنيه لاحقًا — نقرأ كل رسالة. هل ترغب بمشاركة أفكارك عبر البريد الإلكتروني؟',
			'feedbackRating.rateCta' => 'قيّمنا على متجر Play',
			'feedbackRating.maybeLater' => 'ربما لاحقًا',
			'feedbackRating.sendFeedback' => 'إرسال الملاحظات',
			'feedbackRating.noThanks' => 'لا شكرًا',
			'feedbackRating.aboutUsDescription' => 'مصنوع بعناية بواسطة فريق صغير. نركّز على الخصوصية والبساطة ومساعدتك على بناء عادات أكل أفضل.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'هل تتساءل عمّن يقف وراء ${appLabel}? اطّلع على ',
			'feedbackRating.aboutUsLinkLabel' => 'نبذة عنا',
			'feedbackRating.thankYouMessage' => 'شكرًا! سنسألك مرة أخرى لاحقًا.',
			'health.syncFailed' => 'تعذّر المزامنة مع Health Connect',
			'health.mealSynced' => 'تمت مزامنة الوجبة مع Health Connect',
			_ => null,
		};
	}
}
