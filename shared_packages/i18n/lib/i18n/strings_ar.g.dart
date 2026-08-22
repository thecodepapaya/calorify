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
class TranslationsAr extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsAr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

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
	@override late final _TranslationsLocalNutritionPhase4Ar localNutritionPhase4 = _TranslationsLocalNutritionPhase4Ar._(_root);
	@override late final _TranslationsCommonAr common = _TranslationsCommonAr._(_root);
	@override late final _TranslationsFeedbackRatingAr feedbackRating = _TranslationsFeedbackRatingAr._(_root);
	@override late final _TranslationsHealthAr health = _TranslationsHealthAr._(_root);
}

// Path: errors
class _TranslationsErrorsAr extends TranslationsErrorsEn {
	_TranslationsErrorsAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsOnboardingAr extends TranslationsOnboardingEn {
	_TranslationsOnboardingAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsTabsAr extends TranslationsTabsEn {
	_TranslationsTabsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'لوحة التحكم';
	@override String get history => 'السجل';
}

// Path: home
class _TranslationsHomeAr extends TranslationsHomeEn {
	_TranslationsHomeAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsHistoryAr extends TranslationsHistoryEn {
	_TranslationsHistoryAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'لا توجد وجبات مسجلة';
	@override String get emptyMessage => 'التقط صورة لوجبتك الأخيرة لتسجلها هنا.';
	@override String get today => 'اليوم';
	@override String get yesterday => 'أمس';
}

// Path: meal
class _TranslationsMealAr extends TranslationsMealEn {
	_TranslationsMealAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
	@override String get nameRequired => 'يرجى إدخال اسم الوجبة قبل الحفظ.';
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
	@override late final _TranslationsMealLocalInferenceAr localInference = _TranslationsMealLocalInferenceAr._(_root);
	@override late final _TranslationsMealFeedbackAr feedback = _TranslationsMealFeedbackAr._(_root);
}

// Path: favorites
class _TranslationsFavoritesAr extends TranslationsFavoritesEn {
	_TranslationsFavoritesAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsProfileAr extends TranslationsProfileEn {
	_TranslationsProfileAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsHealthScoreAr extends TranslationsHealthScoreEn {
	_TranslationsHealthScoreAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsEditProfileAr extends TranslationsEditProfileEn {
	_TranslationsEditProfileAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsAr extends TranslationsSettingsEn {
	_TranslationsSettingsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الإعدادات';
	@override late final _TranslationsSettingsSectionsAr sections = _TranslationsSettingsSectionsAr._(_root);
	@override late final _TranslationsSettingsEditProfileAr editProfile = _TranslationsSettingsEditProfileAr._(_root);
	@override late final _TranslationsSettingsLanguageAr language = _TranslationsSettingsLanguageAr._(_root);
	@override late final _TranslationsSettingsHeightUnitAr heightUnit = _TranslationsSettingsHeightUnitAr._(_root);
	@override late final _TranslationsSettingsWeightUnitAr weightUnit = _TranslationsSettingsWeightUnitAr._(_root);
	@override late final _TranslationsSettingsMealRemindersAr mealReminders = _TranslationsSettingsMealRemindersAr._(_root);
	@override late final _TranslationsSettingsLocalInferenceAr localInference = _TranslationsSettingsLocalInferenceAr._(_root);
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
class _TranslationsRemindersAr extends TranslationsRemindersEn {
	_TranslationsRemindersAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsNotificationsAr extends TranslationsNotificationsEn {
	_TranslationsNotificationsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastAr breakfast = _TranslationsNotificationsBreakfastAr._(_root);
	@override late final _TranslationsNotificationsLunchAr lunch = _TranslationsNotificationsLunchAr._(_root);
	@override late final _TranslationsNotificationsDinnerAr dinner = _TranslationsNotificationsDinnerAr._(_root);
	@override late final _TranslationsNotificationsSnackAr snack = _TranslationsNotificationsSnackAr._(_root);
	@override late final _TranslationsNotificationsTestAr test = _TranslationsNotificationsTestAr._(_root);
}

// Path: login
class _TranslationsLoginAr extends TranslationsLoginEn {
	_TranslationsLoginAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تسجيل الدخول';
	@override String get signInWithGoogle => 'تسجيل الدخول عبر Google';
	@override String get signInFailed => 'فشل تسجيل الدخول عبر Google أو تم الإلغاء.';
}

// Path: disclaimer
class _TranslationsDisclaimerAr extends TranslationsDisclaimerEn {
	_TranslationsDisclaimerAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'يرجى الملاحظة';
	@override late final _TranslationsDisclaimerSnapAr snap = _TranslationsDisclaimerSnapAr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateAr weightEstimate = _TranslationsDisclaimerWeightEstimateAr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsAr healthMetrics = _TranslationsDisclaimerHealthMetricsAr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureAr calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureAr._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4Ar extends TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4Ar._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'Nutrition matched from the downloaded USDA pack';
	@override String get nutritionCached => 'Nutrition matched from the on-device USDA cache';
	@override String get nutritionMixed => 'Nutrition combined from downloaded, cached, and remote USDA rows';
	@override String get calculationLocal => 'Calories and macros calculated on this device';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: downloaded USDA pack';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: on-device USDA cache';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: USDA row fetched through Calorify';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: deterministic nutrition constant';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · dataset ${datasetVersion}';
	@override String get portionSmaller => 'Smaller';
	@override String get portionEstimated => 'Estimated';
	@override String get portionLarger => 'Larger';
	@override String portionQuestion({required Object ingredient}) => 'Which portion was closest for ${ingredient}?';
	@override String get mealTypeQuestion => 'Which meal was this?';
	@override String get localNutritionTip => 'Calculated from verified local nutrition data.';
	@override String get offlineNutritionTitle => 'Download nutrition data';
	@override String get offlineNutritionSubtitle => 'Use verified USDA rows and deterministic calculation on this device when every ingredient is covered.';
	@override String get offlineNutritionUnavailable => 'Local nutrition data is not available for this app release.';
	@override String get offlineNutritionNotDownloaded => 'No verified nutrition pack is downloaded.';
	@override String get offlineNutritionInstalling => 'Downloading and verifying nutrition data…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Pack ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} cached USDA rows · ${size}';
	@override String get offlineNutritionUpdate => 'Check for update';
	@override String get offlineNutritionClear => 'Clear local nutrition data';
	@override String get offlineNutritionClearTitle => 'Clear local nutrition data?';
	@override String get offlineNutritionClearBody => 'This removes the downloaded USDA pack and lookup cache. Logged meals keep the exact nutrition snapshot used when they were saved.';
	@override String get offlineNutritionClearConfirm => 'Clear data';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Could not download and verify local nutrition data: ${error}';
	@override String get offlineNutritionCleared => 'Local nutrition data cleared';
}

// Path: common
class _TranslationsCommonAr extends TranslationsCommonEn {
	_TranslationsCommonAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get close => 'إغلاق';
	@override String get kContinue => 'استمر';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingAr extends TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsHealthAr extends TranslationsHealthEn {
	_TranslationsHealthAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'تعذّر المزامنة مع Health Connect';
	@override String get mealSynced => 'تمت مزامنة الوجبة مع Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesAr extends TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionAr foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionAr._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisAr aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisAr._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationAr healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationAr._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderAr extends TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما جنسك؟';
	@override String get description => 'المعلومات عن الجنس تساعدنا في حساب معدل الأيض الأساسي (BMR) بدقة.';
	@override String get next => 'التالي';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightAr extends TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما طولك؟';
	@override String get description => 'الطول يساعدنا في حساب مؤشر كتلة الجسم (BMI) واحتياجات الطاقة بدقة.';
	@override String get metric => 'متر/سنتيمتر';
	@override String get imperial => 'بوصات/قدم';
	@override String get next => 'التالي';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightAr extends TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsOnboardingAgeAr extends TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'متى تاريخ ميلادك؟';
	@override String get description => 'العمر يساعدنا في حساب احتياجاتك من السعرات بدقة.';
	@override String get next => 'التالي';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleAr extends TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsOnboardingWeightGoalAr extends TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما هدفك؟';
	@override String get description => 'اختر الهدف الذي يصف ما تود تحقيقه';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelAr extends TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ما مدى نشاطك؟';
	@override String get description => 'هذا يساعدنا في حساب احتياجات السعرات اليومية بدقة أكبر';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectAr extends TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الاتصال بـ Health Connect';
	@override String get description => 'استخدم السعرات المحروقة ضمن هدفك اليومي وشارك وجباتك المسجّلة اختياريًا مع Health Connect.';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingAr automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingAr._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsAr progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsAr._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationAr seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationAr._(_root);
	@override String get connected => 'تم الاتصال بـ Health Connect';
	@override String get notConnected => 'لم يتم الاتصال بـ Health Connect';
	@override String get setup => 'إعداد Health Connect';
	@override String get skipForNow => 'تخطٍّ الآن';
	@override String get statusConnected => 'تم الاتصال بـ Health Connect.';
	@override String get statusSuccess => 'تم توصيل Health Connect بنجاح!';
	@override String get statusNotConnected => 'اختر ميزات Health Connect التي تريد تفعيلها.';
	@override String get statusPartial => 'Health Connect متصل جزئيًا. فعّل الإذن المتبقي لاستخدام الميزتين.';
	@override String get statusProviderUpdateRequired => 'ثبّت Health Connect أو حدّثه للمتابعة.';
	@override String get statusUnavailable => 'Health Connect غير مدعوم على هذا الجهاز.';
	@override String get installOrUpdate => 'تثبيت أو تحديث';
	@override String get manageAccess => 'إدارة الوصول';
	@override String statusPermissionDenied({required Object appLabel}) => 'تم رفض الإذن. يرجى تمكين أذونات Health Connect من إعدادات هاتفك لتطبيق ${appLabel}.';
	@override String statusError({required Object error}) => 'خطأ أثناء إعداد Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementAr extends TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessAr trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessAr._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileAr healthProfile = _TranslationsOnboardingReinforcementHealthProfileAr._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleAr goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleAr._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryAr extends TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsHomeDailyGoalAr extends TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsHomeDailySummaryAr extends TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsHomeIntakeProgressAr extends TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'توزيع المغذيات اليومي';
	@override String get target => 'الهدف';
	@override String get current => 'الحالي';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryAr extends TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'سجل المغذيات لسبعة أيام';
	@override String get trendTitle => 'اتجاه اليوم';
	@override String peakHour({required Object hour}) => 'الذروة: ${hour}:00';
	@override String get noHistoryYet => 'لا يوجد سجل بعد';
	@override String get startLogging => 'ابدأ بتسجيل الوجبات لرؤية\nاتجاهات المغذيات لسبعة أيام هنا';
}

// Path: home.mealLog
class _TranslationsHomeMealLogAr extends TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الوجبات المسجلة';
	@override String get emptyMessage => 'التقط صورة لوجبتك الأخيرة لتسجلها هنا.';
	@override String get noMealsToday => 'لا توجد وجبات مسجلة اليوم';
	@override String get seeAllMeals => 'عرض كل الوجبات';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionAr extends TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إضافة سريعة بالـ AI';
	@override String get description => 'وصف وجبتك ودع الـ AI يتولّى التفاصيل.';
	@override String get hint => 'مثال: على الإفطار تناولت وعاءً كبيرًا من الشوفان مع موزة مقطعة ومغرفة من بروتين مصل اللبن ...';
	@override String get analyzeMeal => 'حلّل الوجبة';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsAr extends TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsHomeMealSnapAr extends TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsHomeConnectHealthAr extends TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'زامِن مع Health Connect';
	@override String get description => 'استخدم السعرات المحروقة في هدفك وشارك وجباتك المسجّلة';
	@override String get install => 'تثبيت أو تحديث';
	@override String get connect => 'اتصال';
}

// Path: meal.nutrition
class _TranslationsMealNutritionAr extends TranslationsMealNutritionEn {
	_TranslationsMealNutritionAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get calories => 'السعرات';
	@override String get carbs => 'كربوهيدرات (غ)';
	@override String get protein => 'بروتين (غ)';
	@override String get fat => 'دهون (غ)';
	@override String get fiber => 'ألياف (غ)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationAr extends TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حذف الوجبة';
	@override String get message => 'هل أنت متأكد أنك تريد حذف تسجيل هذه الوجبة؟';
	@override String get cancel => 'إلغاء';
	@override String get delete => 'حذف';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowAr extends TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'السؤال ${current} من ${total}';
	@override String get noQuestionsAvailable => 'لا توجد أسئلة متاحة';
	@override String get next => 'التالي';
	@override String get continueLabel => 'استمر';
}

// Path: meal.analysis
class _TranslationsMealAnalysisAr extends TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisAr._(TranslationsAr root) : this._root = root, super.internal(root);

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

// Path: meal.localInference
class _TranslationsMealLocalInferenceAr extends TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'مراجعة المكونات المكتشفة';
	@override String get reviewSubtitle => 'تم تحليل هذه البيانات على جهازك. يرجى تصحيح الأسماء أو الكميات قبل حساب القيم الغذائية.';
	@override String get mealName => 'اسم الوجبة';
	@override String get ingredient => 'المكون';
	@override String get grams => 'الجرامات التقديرية';
	@override String get removeIngredient => 'إزالة المكون';
	@override String get continueLabel => 'متابعة';
	@override String get invalidProposal => 'يرجى إضافة مكون واحد على الأقل واستخدام كمية جرامات موجبة.';
	@override String get localUnavailable => 'التحليل على الجهاز غير متاح حالياً.';
	@override String get calculationDetails => 'كيفية حساب هذه القيم';
	@override String get interpretationLocal => 'مكونات تم تحليلها على هذا الجهاز';
	@override String get interpretationCloud => 'مكونات تم تحليلها في السحابة';
	@override String get interpretationManual => 'مكونات تمت مراجعتها أو تعديلها بواسطتك';
	@override String get nutritionRemote => 'تم جلب القيم الغذائية من USDA عبر Calorify';
	@override String get nutritionFallback => 'تم تقدير بعض القيم الغذائية عن بُعد';
	@override String get calculationServer => 'تم حساب السعرات الحرارية والمغذيات الكبرى بواسطة Calorify';
	@override String get fallbackUsed => 'تم الانتقال من التحليل المحلي إلى المعالجة السحابية';
	@override String get noRawContent => 'إيصالات التشخيص لا تتضمن نص الوجبة أو صورتها.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackAr extends TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsFavoritesSortOptionsAr extends TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get recent => 'الأحدث';
	@override String get calories => 'السعرات';
	@override String get alphabetical => 'أ-ي';
}

// Path: profile.sections
class _TranslationsProfileSectionsAr extends TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'الملف';
	@override String get basicInformation => 'معلومات أساسية';
	@override String get goalsAndActivity => 'الأهداف والنشاط';
	@override String get calculatedValues => 'القيم المحسوبة';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesAr extends TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'الهدف اليومي';
	@override String get calPerDay => 'سعر/يوم';
	@override String get notAvailable => 'غير متوفر';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsAr extends TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'معلومات شخصية';
	@override String get physicalMeasurements => 'القياسات البدنية';
	@override String get goalsAndActivity => 'الأهداف والنشاط';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersAr extends TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get male => 'ذكر';
	@override String get female => 'أنثى';
	@override String get other => 'آخر';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsAr extends TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightAr loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightAr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightAr maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightAr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightAr gainWeight = _TranslationsEditProfileWeightGoalsGainWeightAr._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsAr extends TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryAr sedentary = _TranslationsEditProfileActivityLevelsSedentaryAr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveAr lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveAr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveAr moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveAr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveAr veryActive = _TranslationsEditProfileActivityLevelsVeryActiveAr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveAr extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveAr._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsAr extends TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'الملف';
	@override String get localization => 'اللغة';
	@override String get notifications => 'الإشعارات';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get localInference => 'التحليل على الجهاز';
	@override String get supportAndLegal => 'الدعم والقانونية';
	@override String get about => 'حول';
	@override String get dangerZone => 'منطقة الخطر';
	@override String get developer => 'المطور';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileAr extends TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تعديل الملف الشخصي';
	@override String get subtitle => 'حدّث معلوماتك الشخصية';
}

// Path: settings.language
class _TranslationsSettingsLanguageAr extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اللغة';
	@override String get subtitle => 'اختر لغتك المفضلة';
	@override String get searchHint => 'ابحث عن اللغات...';
	@override String get noResults => 'لم يتم العثور على نتائج';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitAr extends TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وحدة الطول';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitAr extends TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وحدة الوزن';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersAr extends TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تذكيرات الوجبات';
	@override String get subtitle => 'ابقَ على الطريق مع تنبيهات في الوقت المناسب';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceAr extends TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تحليل الوجبات على الجهاز';
	@override String get subtitle => 'تحليل الوجبات المدعومة باستخدام Gemini Nano قبل حساب القيم الغذائية';
	@override String get unavailable => 'غير متاح على هذا الجهاز';
	@override String get rolloutUnavailable => 'تم العثور على الأجهزة المتوافقة، ولكن هذه الميزة غير مفعلة في هذا الإصدار من التطبيق';
	@override String get modelSetup => 'يجب أن ينتهي تحميل Gemini Nano قبل تفعيل هذه الميزة';
	@override String get useLocalTitle => 'استخدام التحليل على الجهاز';
	@override String get useLocalSubtitle => 'اختياري ومعطل افتراضياً. قد تكون النتائج أقل دقة للوجبات المعقدة.';
	@override String get disclosureTitle => 'قبل تفعيل التحليل على الجهاز';
	@override String get disclosureBody => 'يمكن لـ Gemini Nano تحديد المكونات وتقدير الكميات على أجهزة Android المدعومة. يتم إرسال مقترح المكونات الذي تراجعه إلى Calorify لربطه بالقيم الغذائية من USDA وحسابها.';
	@override String get disclosureLimit1 => 'قد يتم تحديد الأطباق المعقدة، والمكونات المخفية، وأحجام الحصص بشكل غير صحيح.';
	@override String get disclosureLimit2 => 'قد يكون النموذج غير متاح أثناء التحميل، أو عند انشغاله، أو في الخلفية، أو بسبب قيود الجهاز.';
	@override String get disclosureLimit3 => 'إذا تعذر إكمال التحليل المحلي، ستقوم هذه النسخة التجريبية تلقائياً بإرسال وصف وجبتك الأصلي إلى Calorify للتحليل السحابي.';
	@override String get acknowledgement => 'أدرك أنه يجب علي مراجعة المكونات والكميات المكتشفة.';
	@override String get enable => 'موافق وتفعيل';
	@override String get cancel => 'إلغاء';
}

// Path: settings.theme
class _TranslationsSettingsThemeAr extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'المظهر';
	@override String get light => 'فاتح';
	@override String get dark => 'داكن';
	@override String get system => 'نظام';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackAr extends TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsExportMealHistoryAr extends TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تصدير سجل الوجبات';
	@override String get subtitle => 'مشاركة CSV من وجباتك المسجلة';
	@override String get shareText => 'تصدير سجل وجبات Calorify الخاص بك';
	@override String failed({required Object error}) => 'تعذّر تصدير سجل الوجبات: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataAr extends TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مسح جميع البيانات';
	@override String get subtitle => 'حذف بيانات Calorify المخزّنة على هذا الجهاز';
	@override String get confirmationTitle => 'مسح جميع البيانات؟';
	@override String get confirmationMessage => 'يؤدي هذا إلى حذف الوجبات المسجّلة والمفضلات وإعدادات الملف الشخصي نهائيًا من هذا الجهاز. تتم إدارة الوجبات التي سبق مشاركتها مع Health Connect وإمكانية الوصول إليه بشكل منفصل في الإعدادات > Health Connect.';
	@override String get cancel => 'إلغاء';
	@override String get clearEverything => 'امسح الكل';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsAr extends TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'خيارات التصحيح';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectAr extends TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'عرض وإدارة الأذونات';
	@override late final _TranslationsSettingsHealthConnectUnavailableAr unavailable = _TranslationsSettingsHealthConnectUnavailableAr._(_root);
	@override late final _TranslationsSettingsHealthConnectUpdateRequiredAr updateRequired = _TranslationsSettingsHealthConnectUpdateRequiredAr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsAr permissions = _TranslationsSettingsHealthConnectPermissionsAr._(_root);
	@override String get managePermissions => 'إدارة الأذونات';
	@override String get openSettings => 'فتح إعدادات Health Connect';
	@override String get disconnect => 'قطع الاتصال بـ Health Connect';
	@override String get disconnectConfirmationTitle => 'قطع الاتصال بـ Health Connect؟';
	@override String get disconnectConfirmationMessage => 'سيفقد Calorify إمكانية الوصول إلى Health Connect. لن تُحذف البيانات المكتوبة فيه بالفعل.';
	@override String get disconnectConfirmationAction => 'قطع الاتصال';
	@override String get deleteSyncedMeals => 'حذف وجبات Calorify من Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'حذف الوجبات المتزامنة؟';
	@override String get deleteSyncedMealsConfirmationMessage => 'هل تريد حذف الوجبات التي زامنتها هذه النسخة من Calorify مع Health Connect؟ لن يتغيّر سجل وجباتك المحلي. قد تظل إدخالات Calorify الأقدم بحاجة إلى الإزالة باستخدام إدارة البيانات في Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'حذف الوجبات المتزامنة';
	@override String get deleteSyncedMealsSuccess => 'تم حذف وجبات Calorify من Health Connect.';
	@override String get deleteSyncedMealsFailed => 'تعذّر حذف الوجبات المتزامنة. حاول مرة أخرى.';
	@override String get connectionPartial => 'بعض ميزات Health Connect مفعّلة.';
	@override String get connectionComplete => 'ميزتا Health Connect مفعّلتان.';
	@override String get actionFailed => 'تعذّر فتح Health Connect. حاول مرة أخرى.';
	@override String get requestPermissions => 'طلب الأذونات';
	@override String get permissionRequestCancelledOrFailed => 'تم إلغاء طلب الإذن أو فشل. يرجى المحاولة مرة أخرى أو منح الأذونات يدويًا من إعدادات Health Connect.';
	@override String get permissionRequestFailed => 'تعذّر طلب الأذونات. حاول مرة أخرى أو امنح الأذونات يدويًا من إعدادات Health Connect.';
	@override String get requestingPermissions => 'جارٍ طلب الأذونات...';
}

// Path: settings.about
class _TranslationsSettingsAboutAr extends TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsAppInfoAr extends TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'بناء ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastAr extends TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حان وقت الإفطار! 🍳';
	@override String get body => 'لا تنسَ تسجيل إفطارك';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchAr extends TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حان وقت الغداء! 🥗';
	@override String get body => 'حان وقت تسجيل غدائك';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerAr extends TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حان وقت العشاء! 🍽️';
	@override String get body => 'لا تنسَ تسجيل عشاءك';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackAr extends TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حان وقت الوجبة الخفيفة! 🍎';
	@override String get body => 'حان وقت وجبة خفيفة صحية';
}

// Path: notifications.test
class _TranslationsNotificationsTestAr extends TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إشعار تجريبي';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapAr extends TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => 'يوفر ${appLabel} معلومات غذائية تقديرية. تعتمد الدقة على مدخلاتك واختلافات الطعام. استخدمها كدليل وليس كمصدر نهائي. استشر مختصًا للحصول على نصائح غذائية شخصية.';
	@override late final _TranslationsDisclaimerSnapPortionSizeAr portionSize = _TranslationsDisclaimerSnapPortionSizeAr._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsAr preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsAr._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsAr ingredients = _TranslationsDisclaimerSnapIngredientsAr._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsAr databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsAr._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateAr extends TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsDisclaimerHealthMetricsAr extends TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get description => 'تساعدك هذه المقاييس على فهم احتياجات جسمك من الطاقة وتوجيه أهدافك الغذائية.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrAr bmr = _TranslationsDisclaimerHealthMetricsBmrAr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeAr tdee = _TranslationsDisclaimerHealthMetricsTdeeAr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalAr dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalAr._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureAr extends TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تقدير إنفاق السعرات';
	@override String get description => 'عندما تتعذّر بيانات Health Connect، نقدر سعرات اليوم المحروقة باستخدام معدل الأيض الأساسي (BMR) ومستوى النشاط (TDEE)، مع تعديل بالنسبة لجزء اليوم الذي مضى.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedAr howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedAr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceAr professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceAr._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionAr extends TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'التعرّف الذكي على الطعام';
	@override String get description => 'التقط صورة ودع الـ AI يتعرف على وجبتك';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisAr extends TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تحليل بالـ AI';
	@override String get description => 'احصل على حقائق التغذية فورًا من وصفك';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationAr extends TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'تكامل Health Connect';
	@override String get description => 'اتصل بـ Health Connect للحصول على رؤى أفضل';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesAr extends TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'نقص في الوزن';
	@override String get healthyWeight => 'وزن صحي';
	@override String get overweight => 'زيادة في الوزن';
	@override String get obese => 'سمنة';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesAr extends TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'نستطيع مساعدتك في بناء خطة صحية للوصول إلى وزن متوازن مع وجبات غنية بالعناصر الغذائية.';
	@override String get healthy => 'عمل رائع! أنت ضمن نطاق صحي. سنساعدك على المحافظة على نشاطك وحيويتك.';
	@override String overweight({required Object appLabel}) => 'سيجعل ${appLabel} رحلتك أبسط مع تتبّع مدعوم بالـ AI لمساعدتك على الوصول لهدفك براحة.';
	@override String get obese => 'نحن هنا لدعمك بإرشادات مخصصة واستراتيجيات مستدامة لأهدافك الصحية.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingAr extends TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'السعرات المحروقة';
	@override String get description => 'اقرأ إجمالي السعرات المحروقة اليوم من Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsAr extends TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'مشاركة الوجبات المسجّلة';
	@override String get description => 'اكتب الوجبات التي تسجّلها في Calorify إلى Health Connect';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationAr extends TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'أنت المتحكّم';
	@override String get description => 'اختر أيًا من الإذنين وغيّر الوصول في أي وقت';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessAr extends TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsOnboardingReinforcementHealthProfileAr extends TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsOnboardingReinforcementGoalLifestyleAr extends TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsEditProfileWeightGoalsLoseWeightAr extends TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'فقدان الوزن';
	@override String get description => 'إنشاء عجز سعري لفقدان الوزن';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightAr extends TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'الحفاظ على الوزن';
	@override String get description => 'الحفاظ على وزنك الحالي';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightAr extends TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'زيادة الوزن';
	@override String get description => 'إنشاء فائض سعري لزيادة الوزن';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryAr extends TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'خالٍ من النشاط';
	@override String get description => 'قليل أو دون ممارسة';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveAr extends TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشاط خفيف';
	@override String get description => 'تمارين خفيفة 1-3 أيام/أسبوع';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveAr extends TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشاط متوسط';
	@override String get description => 'تمارين متوسطة 3-5 أيام/أسبوع';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveAr extends TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشاط عالي';
	@override String get description => 'تمارين شاقة 6-7 أيام/أسبوع';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveAr extends TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get name => 'نشاط شديد جدًا';
	@override String get description => 'مجهود بدني كبير أو عمل بدني';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableAr extends TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect غير متاح';
	@override String get description => 'Health Connect غير مدعوم على هذا الجهاز.';
}

// Path: settings.healthConnect.updateRequired
class _TranslationsSettingsHealthConnectUpdateRequiredAr extends TranslationsSettingsHealthConnectUpdateRequiredEn {
	_TranslationsSettingsHealthConnectUpdateRequiredAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'يحتاج Health Connect إلى اهتمامك';
	@override String get description => 'ثبّت Health Connect أو حدّثه قبل إدارة الوصول.';
	@override String get action => 'تثبيت أو تحديث';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsAr extends TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsAboutOurStoryAr extends TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قصتنا';
	@override String content({required Object appLabel}) => '${appLabel} وُلد من إحباط بسيط: معظم تطبيقات تتبّع السعرات إما معقّدة جدًا، تطلب إدخالًا يدويًا مستمرًا، تفرض اشتراكات باهظة، أو تُفرط في خصوصيتك.\n\nكمطور منفرد، أردت بناء شيء أبسط وأكثر عدلاً — تطبيق يستخدم AI لتقليل الجهد، يبقى سريعًا ومجانيًا للاستخدام، ويتعامل مع بياناتك الصحية باحترام.\n\n${appLabel} هو التطبيق الذي كنت أتمنى وجوده: لا حسابات، لا تتبع، لا إعلانات — مجرد رؤى واضحة وعملية وأهدافك الصحية.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyAr extends TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'خصوصيتك تهمنا';
	@override String get description => 'الخصوصية ليست فكرة لاحقة — إنها مبدأ تصميم. هذا ما يعنيه ذلك عمليًا:';
	@override String get noAccounts => 'لا حاجة لحسابات\nاستخدم التطبيق فورًا. لا تسجيل، لا هويات.';
	@override String noTracking({required Object appLabel}) => 'تحليلات وتشخيصات محدودة\nيستخدم ${appLabel} أحداث التطبيق الأساسية وتشخيصات الأعطال لتحسين الموثوقية. لا تُستخدم قيم السجلات الصحية للإعلانات ولا يتم بيعها.';
	@override String noAds({required Object appLabel}) => 'خالي من الإعلانات بطبيعته\n${appLabel} مصمم للعمل بدون إعلانات أو تحقيق ربح عبر بيانات المستخدم.';
	@override String get noDataSelling => 'لا بيع للبيانات\nلا تُباع أو تُشارك بياناتك الصحية مع أطراف ثالثة.';
	@override String get localStorage => 'تخزين محلي أولًا\nتظل بياناتك على جهازك.';
	@override String get privacyPolicy => 'سياسة الخصوصية';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperAr extends TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'بُني بواسطة مطور منفرد';
	@override String description({required Object appLabel}) => '${appLabel} يتم بناؤه وصيانته بواسطة مطور منفرد يركز على إنشاء برامج صحية هادئة ومحترمة للخصوصية.\n\nتُقرأ الملاحظات شخصيًا وتساعد في تشكيل اتجاه التطبيق.';
	@override String get website => 'الموقع الإلكتروني';
	@override String get email => 'البريد الإلكتروني';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackAr extends TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'هل تستمتع بـ ${appLabel}؟';
	@override String description({required Object appLabel}) => 'ملاحظاتك تساعد في جعل ${appLabel} أفضل للجميع.';
	@override String get rateApp => 'قيّم على Play Store';
	@override String get sendFeedback => 'أرسل ملاحظات';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeAr extends TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حجم الحصة';
	@override String get description => 'تعتمد دقة التقديرات بشكل كبير على تقييمك الصحيح لحجم الحصة.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsAr extends TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'طرق التحضير';
	@override String description({required Object appLabel}) => 'يمكن لطرق الطهي أن تغيّر محتوى الغذاء بشكل كبير. قد لا تأخذ تقديرات ${appLabel} هذه الاختلافات في الحسبان دائمًا.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsAr extends TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'المكونات';
	@override String get description => 'الأطباق المعقدة ذات المكونات المخفية قد تؤدي إلى تقديرات أقل دقة.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsAr extends TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'حدود قاعدة البيانات';
	@override String description({required Object appLabel}) => 'قاعدة بيانات الأطعمة لدى ${appLabel} واسعة لكنها قد لا تتضمن كل صنف طعام أو اختلاف.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyAr extends TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'دقة السعرات';
	@override String get description => 'تعتمد هذه التقديرات على دقة تسجيلك لاستهلاك وحرق السعرات. التسجيل غير الدقيق سيؤدي إلى توقعات غير دقيقة.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsAr extends TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'العوامل البيولوجية';
	@override String description({required Object appLabel}) => 'يتأثر فقدان/كتساب الوزن فعليًا بالأيض والهرمونات والنوم والتوتر والترطيب وعوامل فردية أخرى لا يستطيع ${appLabel} قياسها.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightAr extends TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'وزن الماء والتقلبات';
	@override String get description => 'يمكن أن يتقلب الوزن اليومي بشكل كبير بسبب احتباس الماء والهضم والتوقيت. لا يأخذ التقدير هذه التغيرات اليومية بعين الاعتبار.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceAr extends TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إرشاد مهني';
	@override String get description => 'لا تستخدم هذا التقدير لاتخاذ قرارات طبية. استشر دائمًا مختص رعاية صحية أو أخصائي تغذية مسجل لإدارة الوزن بشكل شخصي.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrAr extends TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'معدل الأيض الأساسي (BMR) هو عدد السعرات التي يحرقها جسمك أثناء الراحة للحفاظ على وظائفه الأساسية مثل التنفس والدورة الدموية. يعتمد BMR على عمرك وجنسك وطولك ووزنك. يشير BMR الأعلى إلى أن الجسم يحرق سعرات أكثر في الراحة، غالبًا نتيجة وجود كتلة عضلية أكبر أو صغر السن أو كونه ذكرًا. يشير BMR الأقل عادةً إلى كتلة عضلية أقل أو تقدم في العمر أو كونه أنثى.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeAr extends TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'إجمالي الإنفاق اليومي للطاقة (TDEE) هو إجمالي السعرات التي تحرقها يوميًا، ويشمل BMR بالإضافة إلى السعرات الناتجة عن النشاط البدني والحركة اليومية. يعتمد TDEE على BMR ومستوى النشاط. يشير TDEE الأعلى إلى أنك تحرق سعرات أكثر عمومًا، عادةً بسبب النشاط الأكبر أو BMR أعلى. يشير TDEE الأقل إلى نشاط يومي أقل أو BMR أدنى.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalAr extends TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'الهدف اليومي';
	@override String get description => 'الهدف اليومي هو كمية السعرات الموصى بها يوميًا بناءً على TDEE وهدف الوزن. لفقدان الوزن تستهلك سعرات أقل من TDEE. للحفاظ على الوزن تطابق TDEE. لزيادة الوزن تستهلك سعرات أكثر من TDEE. هذا يساعدك على الوصول للتغير المطلوب بوتيرة صحية.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedAr extends TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'كيف يُحسب التقدير';
	@override String get description => 'نحسب TDEE (بناءً على ملفك) ونضربه في نسبة اليوم المنقضي (الساعات + الدقائق) / 24 لتقدير السعرات المحروقة حتى الآن.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceAr extends TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'إرشاد مهني';
	@override String get description => 'لا تستخدم هذا التقدير لاتخاذ قرارات طبية. استشر دائمًا مختص رعاية صحية أو أخصائي تغذية مسجل لإدارة الوزن بشكل شخصي.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedAr extends TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قراءة إجمالي السعرات المحروقة';
	@override String get description => 'يسمح للتطبيق بقراءة إجمالي السعرات المحروقة من Health Connect.';
	@override String get usage => 'يُستخدم هذا الإذن لعرض حرق السعرات اليومي في التطبيق، مما يساعدك على فهم إجمالي إنفاق الطاقة خلال اليوم.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadAr extends TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadAr._(TranslationsAr root) : this._root = root, super.internal(root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations
	@override String get title => 'قراءة بيانات التغذية';
	@override String get description => 'يسمح للتطبيق بقراءة بيانات التغذية من Health Connect.';
	@override String get usage => 'يتيح هذا الإذن للتطبيق قراءة معلومات التغذية التي قد سجّلها تطبيقات أخرى متصلة بـ Health Connect، مما يوفر رؤية شاملة لتغذيتك.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteAr extends TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteAr._(TranslationsAr root) : this._root = root, super.internal(root);

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
			'onboarding.healthConnect.description' => 'استخدم السعرات المحروقة ضمن هدفك اليومي وشارك وجباتك المسجّلة اختياريًا مع Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'السعرات المحروقة',
			'onboarding.healthConnect.automaticTracking.description' => 'اقرأ إجمالي السعرات المحروقة اليوم من Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'مشاركة الوجبات المسجّلة',
			'onboarding.healthConnect.progressInsights.description' => 'اكتب الوجبات التي تسجّلها في Calorify إلى Health Connect',
			'onboarding.healthConnect.seamlessIntegration.title' => 'أنت المتحكّم',
			'onboarding.healthConnect.seamlessIntegration.description' => 'اختر أيًا من الإذنين وغيّر الوصول في أي وقت',
			'onboarding.healthConnect.connected' => 'تم الاتصال بـ Health Connect',
			'onboarding.healthConnect.notConnected' => 'لم يتم الاتصال بـ Health Connect',
			'onboarding.healthConnect.setup' => 'إعداد Health Connect',
			'onboarding.healthConnect.skipForNow' => 'تخطٍّ الآن',
			'onboarding.healthConnect.statusConnected' => 'تم الاتصال بـ Health Connect.',
			'onboarding.healthConnect.statusSuccess' => 'تم توصيل Health Connect بنجاح!',
			'onboarding.healthConnect.statusNotConnected' => 'اختر ميزات Health Connect التي تريد تفعيلها.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect متصل جزئيًا. فعّل الإذن المتبقي لاستخدام الميزتين.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'ثبّت Health Connect أو حدّثه للمتابعة.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect غير مدعوم على هذا الجهاز.',
			'onboarding.healthConnect.installOrUpdate' => 'تثبيت أو تحديث',
			'onboarding.healthConnect.manageAccess' => 'إدارة الوصول',
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
			'home.connectHealth.description' => 'استخدم السعرات المحروقة في هدفك وشارك وجباتك المسجّلة',
			'home.connectHealth.install' => 'تثبيت أو تحديث',
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
			'meal.nameRequired' => 'يرجى إدخال اسم الوجبة قبل الحفظ.',
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
			'meal.localInference.reviewTitle' => 'مراجعة المكونات المكتشفة',
			'meal.localInference.reviewSubtitle' => 'تم تحليل هذه البيانات على جهازك. يرجى تصحيح الأسماء أو الكميات قبل حساب القيم الغذائية.',
			'meal.localInference.mealName' => 'اسم الوجبة',
			'meal.localInference.ingredient' => 'المكون',
			'meal.localInference.grams' => 'الجرامات التقديرية',
			'meal.localInference.removeIngredient' => 'إزالة المكون',
			'meal.localInference.continueLabel' => 'متابعة',
			'meal.localInference.invalidProposal' => 'يرجى إضافة مكون واحد على الأقل واستخدام كمية جرامات موجبة.',
			'meal.localInference.localUnavailable' => 'التحليل على الجهاز غير متاح حالياً.',
			'meal.localInference.calculationDetails' => 'كيفية حساب هذه القيم',
			'meal.localInference.interpretationLocal' => 'مكونات تم تحليلها على هذا الجهاز',
			'meal.localInference.interpretationCloud' => 'مكونات تم تحليلها في السحابة',
			'meal.localInference.interpretationManual' => 'مكونات تمت مراجعتها أو تعديلها بواسطتك',
			'meal.localInference.nutritionRemote' => 'تم جلب القيم الغذائية من USDA عبر Calorify',
			'meal.localInference.nutritionFallback' => 'تم تقدير بعض القيم الغذائية عن بُعد',
			'meal.localInference.calculationServer' => 'تم حساب السعرات الحرارية والمغذيات الكبرى بواسطة Calorify',
			'meal.localInference.fallbackUsed' => 'تم الانتقال من التحليل المحلي إلى المعالجة السحابية',
			'meal.localInference.noRawContent' => 'إيصالات التشخيص لا تتضمن نص الوجبة أو صورتها.',
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
			'settings.sections.localInference' => 'التحليل على الجهاز',
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
			'settings.localInference.title' => 'تحليل الوجبات على الجهاز',
			'settings.localInference.subtitle' => 'تحليل الوجبات المدعومة باستخدام Gemini Nano قبل حساب القيم الغذائية',
			'settings.localInference.unavailable' => 'غير متاح على هذا الجهاز',
			'settings.localInference.rolloutUnavailable' => 'تم العثور على الأجهزة المتوافقة، ولكن هذه الميزة غير مفعلة في هذا الإصدار من التطبيق',
			'settings.localInference.modelSetup' => 'يجب أن ينتهي تحميل Gemini Nano قبل تفعيل هذه الميزة',
			'settings.localInference.useLocalTitle' => 'استخدام التحليل على الجهاز',
			'settings.localInference.useLocalSubtitle' => 'اختياري ومعطل افتراضياً. قد تكون النتائج أقل دقة للوجبات المعقدة.',
			'settings.localInference.disclosureTitle' => 'قبل تفعيل التحليل على الجهاز',
			'settings.localInference.disclosureBody' => 'يمكن لـ Gemini Nano تحديد المكونات وتقدير الكميات على أجهزة Android المدعومة. يتم إرسال مقترح المكونات الذي تراجعه إلى Calorify لربطه بالقيم الغذائية من USDA وحسابها.',
			'settings.localInference.disclosureLimit1' => 'قد يتم تحديد الأطباق المعقدة، والمكونات المخفية، وأحجام الحصص بشكل غير صحيح.',
			'settings.localInference.disclosureLimit2' => 'قد يكون النموذج غير متاح أثناء التحميل، أو عند انشغاله، أو في الخلفية، أو بسبب قيود الجهاز.',
			'settings.localInference.disclosureLimit3' => 'إذا تعذر إكمال التحليل المحلي، ستقوم هذه النسخة التجريبية تلقائياً بإرسال وصف وجبتك الأصلي إلى Calorify للتحليل السحابي.',
			'settings.localInference.acknowledgement' => 'أدرك أنه يجب علي مراجعة المكونات والكميات المكتشفة.',
			'settings.localInference.enable' => 'موافق وتفعيل',
			'settings.localInference.cancel' => 'إلغاء',
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
			'settings.clearAllData.subtitle' => 'حذف بيانات Calorify المخزّنة على هذا الجهاز',
			'settings.clearAllData.confirmationTitle' => 'مسح جميع البيانات؟',
			'settings.clearAllData.confirmationMessage' => 'يؤدي هذا إلى حذف الوجبات المسجّلة والمفضلات وإعدادات الملف الشخصي نهائيًا من هذا الجهاز. تتم إدارة الوجبات التي سبق مشاركتها مع Health Connect وإمكانية الوصول إليه بشكل منفصل في الإعدادات > Health Connect.',
			'settings.clearAllData.cancel' => 'إلغاء',
			'settings.clearAllData.clearEverything' => 'امسح الكل',
			'settings.debugOptions.title' => 'خيارات التصحيح',
			'settings.developerModeEnabled' => 'تم تفعيل وضع المطور!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'عرض وإدارة الأذونات',
			'settings.healthConnect.unavailable.title' => 'Health Connect غير متاح',
			'settings.healthConnect.unavailable.description' => 'Health Connect غير مدعوم على هذا الجهاز.',
			'settings.healthConnect.updateRequired.title' => 'يحتاج Health Connect إلى اهتمامك',
			'settings.healthConnect.updateRequired.description' => 'ثبّت Health Connect أو حدّثه قبل إدارة الوصول.',
			'settings.healthConnect.updateRequired.action' => 'تثبيت أو تحديث',
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
			'settings.healthConnect.disconnect' => 'قطع الاتصال بـ Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'قطع الاتصال بـ Health Connect؟',
			'settings.healthConnect.disconnectConfirmationMessage' => 'سيفقد Calorify إمكانية الوصول إلى Health Connect. لن تُحذف البيانات المكتوبة فيه بالفعل.',
			'settings.healthConnect.disconnectConfirmationAction' => 'قطع الاتصال',
			'settings.healthConnect.deleteSyncedMeals' => 'حذف وجبات Calorify من Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'حذف الوجبات المتزامنة؟',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'هل تريد حذف الوجبات التي زامنتها هذه النسخة من Calorify مع Health Connect؟ لن يتغيّر سجل وجباتك المحلي. قد تظل إدخالات Calorify الأقدم بحاجة إلى الإزالة باستخدام إدارة البيانات في Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'حذف الوجبات المتزامنة',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'تم حذف وجبات Calorify من Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'تعذّر حذف الوجبات المتزامنة. حاول مرة أخرى.',
			'settings.healthConnect.connectionPartial' => 'بعض ميزات Health Connect مفعّلة.',
			'settings.healthConnect.connectionComplete' => 'ميزتا Health Connect مفعّلتان.',
			'settings.healthConnect.actionFailed' => 'تعذّر فتح Health Connect. حاول مرة أخرى.',
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
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'تحليلات وتشخيصات محدودة\nيستخدم ${appLabel} أحداث التطبيق الأساسية وتشخيصات الأعطال لتحسين الموثوقية. لا تُستخدم قيم السجلات الصحية للإعلانات ولا يتم بيعها.',
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
			_ => null,
		} ?? switch (path) {
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
			'localNutritionPhase4.nutritionBundled' => 'Nutrition matched from the downloaded USDA pack',
			'localNutritionPhase4.nutritionCached' => 'Nutrition matched from the on-device USDA cache',
			'localNutritionPhase4.nutritionMixed' => 'Nutrition combined from downloaded, cached, and remote USDA rows',
			'localNutritionPhase4.calculationLocal' => 'Calories and macros calculated on this device',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: downloaded USDA pack',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: on-device USDA cache',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: USDA row fetched through Calorify',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: deterministic nutrition constant',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · dataset ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'Smaller',
			'localNutritionPhase4.portionEstimated' => 'Estimated',
			'localNutritionPhase4.portionLarger' => 'Larger',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Which portion was closest for ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Which meal was this?',
			'localNutritionPhase4.localNutritionTip' => 'Calculated from verified local nutrition data.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Download nutrition data',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Use verified USDA rows and deterministic calculation on this device when every ingredient is covered.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Local nutrition data is not available for this app release.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'No verified nutrition pack is downloaded.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Downloading and verifying nutrition data…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Pack ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} cached USDA rows · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Check for update',
			'localNutritionPhase4.offlineNutritionClear' => 'Clear local nutrition data',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Clear local nutrition data?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'This removes the downloaded USDA pack and lookup cache. Logged meals keep the exact nutrition snapshot used when they were saved.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Clear data',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Could not download and verify local nutrition data: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Local nutrition data cleared',
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
