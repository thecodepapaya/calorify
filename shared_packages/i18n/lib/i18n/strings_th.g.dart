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
class TranslationsTh with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTh({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.th,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <th>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsTh _root = this; // ignore: unused_field

	@override 
	TranslationsTh $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTh(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'ไทย';
	@override String get flag => '🇹🇭';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsTh errors = _TranslationsErrorsTh._(_root);
	@override late final _TranslationsOnboardingTh onboarding = _TranslationsOnboardingTh._(_root);
	@override late final _TranslationsTabsTh tabs = _TranslationsTabsTh._(_root);
	@override late final _TranslationsHomeTh home = _TranslationsHomeTh._(_root);
	@override late final _TranslationsHistoryTh history = _TranslationsHistoryTh._(_root);
	@override late final _TranslationsMealTh meal = _TranslationsMealTh._(_root);
	@override late final _TranslationsFavoritesTh favorites = _TranslationsFavoritesTh._(_root);
	@override late final _TranslationsProfileTh profile = _TranslationsProfileTh._(_root);
	@override late final _TranslationsHealthScoreTh healthScore = _TranslationsHealthScoreTh._(_root);
	@override late final _TranslationsEditProfileTh editProfile = _TranslationsEditProfileTh._(_root);
	@override late final _TranslationsSettingsTh settings = _TranslationsSettingsTh._(_root);
	@override late final _TranslationsRemindersTh reminders = _TranslationsRemindersTh._(_root);
	@override late final _TranslationsNotificationsTh notifications = _TranslationsNotificationsTh._(_root);
	@override late final _TranslationsLoginTh login = _TranslationsLoginTh._(_root);
	@override late final _TranslationsDisclaimerTh disclaimer = _TranslationsDisclaimerTh._(_root);
	@override late final _TranslationsCommonTh common = _TranslationsCommonTh._(_root);
	@override late final _TranslationsFeedbackRatingTh feedbackRating = _TranslationsFeedbackRatingTh._(_root);
	@override late final _TranslationsHealthTh health = _TranslationsHealthTh._(_root);
}

// Path: errors
class _TranslationsErrorsTh implements TranslationsErrorsEn {
	_TranslationsErrorsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'คุณส่งคำขอบ่อยเกินไป โปรดรอสักครู่แล้วลองอีกครั้ง';
	@override String get networkError => 'เกิดข้อผิดพลาดเครือข่าย โปรดตรวจสอบการเชื่อมต่ออินเทอร์เน็ตของคุณ';
	@override String get unknownError => 'เกิดข้อผิดพลาด โปรดลองอีกครั้งภายหลัง';
	@override String get loadingProfileData => 'เกิดข้อผิดพลาดขณะโหลดข้อมูลโปรไฟล์';
	@override String get somethingWentWrong => 'เกิดข้อผิดพลาดบางอย่าง';
	@override String get retry => 'ลองใหม่';
}

// Path: onboarding
class _TranslationsOnboardingTh implements TranslationsOnboardingEn {
	_TranslationsOnboardingTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'ยินดีต้อนรับสู่ ${appLabel}';
	@override String get subtitle => 'ผู้ช่วยโภชนาการส่วนตัวของคุณ ใช้พลังจาก AI';
	@override String get getStarted => 'เริ่มเลย';
	@override late final _TranslationsOnboardingFeaturesTh features = _TranslationsOnboardingFeaturesTh._(_root);
	@override late final _TranslationsOnboardingGenderTh gender = _TranslationsOnboardingGenderTh._(_root);
	@override late final _TranslationsOnboardingHeightTh height = _TranslationsOnboardingHeightTh._(_root);
	@override late final _TranslationsOnboardingWeightTh weight = _TranslationsOnboardingWeightTh._(_root);
	@override late final _TranslationsOnboardingAgeTh age = _TranslationsOnboardingAgeTh._(_root);
	@override late final _TranslationsOnboardingBmiScaleTh bmiScale = _TranslationsOnboardingBmiScaleTh._(_root);
	@override late final _TranslationsOnboardingWeightGoalTh weightGoal = _TranslationsOnboardingWeightGoalTh._(_root);
	@override late final _TranslationsOnboardingActivityLevelTh activityLevel = _TranslationsOnboardingActivityLevelTh._(_root);
	@override late final _TranslationsOnboardingHealthConnectTh healthConnect = _TranslationsOnboardingHealthConnectTh._(_root);
	@override late final _TranslationsOnboardingReinforcementTh reinforcement = _TranslationsOnboardingReinforcementTh._(_root);
}

// Path: tabs
class _TranslationsTabsTh implements TranslationsTabsEn {
	_TranslationsTabsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'แดชบอร์ด';
	@override String get history => 'ประวัติ';
}

// Path: home
class _TranslationsHomeTh implements TranslationsHomeEn {
	_TranslationsHomeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryTh aiSummary = _TranslationsHomeAiSummaryTh._(_root);
	@override late final _TranslationsHomeDailyGoalTh dailyGoal = _TranslationsHomeDailyGoalTh._(_root);
	@override late final _TranslationsHomeDailySummaryTh dailySummary = _TranslationsHomeDailySummaryTh._(_root);
	@override late final _TranslationsHomeIntakeProgressTh intakeProgress = _TranslationsHomeIntakeProgressTh._(_root);
	@override late final _TranslationsHomeIntakeHistoryTh intakeHistory = _TranslationsHomeIntakeHistoryTh._(_root);
	@override late final _TranslationsHomeMealLogTh mealLog = _TranslationsHomeMealLogTh._(_root);
	@override late final _TranslationsHomeMealDescriptionTh mealDescription = _TranslationsHomeMealDescriptionTh._(_root);
	@override late final _TranslationsHomeFavoriteMealsTh favoriteMeals = _TranslationsHomeFavoriteMealsTh._(_root);
	@override late final _TranslationsHomeMealSnapTh mealSnap = _TranslationsHomeMealSnapTh._(_root);
	@override late final _TranslationsHomeConnectHealthTh connectHealth = _TranslationsHomeConnectHealthTh._(_root);
}

// Path: history
class _TranslationsHistoryTh implements TranslationsHistoryEn {
	_TranslationsHistoryTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'ยังไม่มีมื้อบันทึก';
	@override String get emptyMessage => 'ถ่ายรูปมื้อสุดท้ายของคุณเพื่อบันทึกที่นี่';
	@override String get today => 'วันนี้';
	@override String get yesterday => 'เมื่อวาน';
}

// Path: meal
class _TranslationsMealTh implements TranslationsMealEn {
	_TranslationsMealTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'โอ้ ไม่!';
	@override String get delete => 'ลบ';
	@override String get editMeal => 'แก้ไขมื้อ';
	@override String get addMeal => 'เพิ่มมื้อ';
	@override String get saveMeal => 'บันทึกมื้อ';
	@override String get save => 'บันทึก';
	@override String get mealName => 'ชื่อมื้อ';
	@override String get mealNameHint => 'เช่น ไข่คนกับขนมปังปิ้ง';
	@override String get mealQuantity => 'ปริมาณมื้อ';
	@override String get mealQuantityHint => 'เช่น 1 ถ้วย, 2 แผ่น';
	@override String get timeOfMeal => 'เวลารับประทาน';
	@override String get timeOfMealHint => 'เลือกเวลาที่คุณทานมื้ออาหาร';
	@override String get mealType => 'ประเภทมื้อ';
	@override late final _TranslationsMealNutritionTh nutrition = _TranslationsMealNutritionTh._(_root);
	@override late final _TranslationsMealDeleteConfirmationTh deleteConfirmation = _TranslationsMealDeleteConfirmationTh._(_root);
	@override String get addedToLog => 'เพิ่มมื้อในบันทึกแล้ว!';
	@override String couldNotAdd({required Object error}) => 'ไม่สามารถเพิ่มมื้อได้: ${error}';
	@override String get savedSuccessfully => 'เพิ่มมื้อเรียบร้อยแล้ว!';
	@override String get updatedSuccessfully => 'แก้ไขมื้อเรียบร้อยแล้ว!';
	@override String errorSaving({required Object error}) => 'เกิดข้อผิดพลาดขณะบันทึกมื้อ: ${error}';
	@override String get removedFromFavorites => 'ยกเลิกจากรายการโปรดแล้ว!';
	@override String get savedAsFavorite => 'บันทึกมื้อเป็นโปรดแล้ว!';
	@override String get unfavorite => 'ยกเลิกโปรด';
	@override String couldNotUpdateFavorite({required Object error}) => 'ไม่สามารถอัปเดตสถานะโปรดได้: ${error}';
	@override String get feedbackThanks => 'ขอบคุณสำหรับคำติชม!';
	@override String get reanalysisUpdated => 'อัปเดตการวิเคราะห์มื้อตามคำติชมของคุณแล้ว';
	@override String failedToProcess({required Object error}) => 'ไม่สามารถประมวลผลได้: ${error}';
	@override String failedToProcessImage({required Object error}) => 'ไม่สามารถประมวลผลรูปได้: ${error}';
	@override String errorCompressingImage({required Object error}) => 'เกิดข้อผิดพลาดในการบีบอัดรูป: ${error}';
	@override String get failedToSave => 'ไม่สามารถบันทึกข้อมูลได้ โปรดลองอีกครั้ง';
	@override String get skip => 'ข้าม';
	@override late final _TranslationsMealQuestionFlowTh questionFlow = _TranslationsMealQuestionFlowTh._(_root);
	@override late final _TranslationsMealAnalysisTh analysis = _TranslationsMealAnalysisTh._(_root);
	@override late final _TranslationsMealFeedbackTh feedback = _TranslationsMealFeedbackTh._(_root);
	@override String get nameRequired => 'กรุณาใส่ชื่อมื้ออาหารก่อนบันทึก.';
}

// Path: favorites
class _TranslationsFavoritesTh implements TranslationsFavoritesEn {
	_TranslationsFavoritesTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'รายการโปรด';
	@override String get empty => 'ยังไม่มีมื้อโปรด';
	@override String get searchPlaceholder => 'ค้นหามื้อโปรด';
	@override String get searchEmptyTitle => 'ไม่มีรายการโปรดที่ตรงกับการค้นหา';
	@override String get searchEmptySubtitle => 'ลองใช้ชื่อมื้อ ปริมาณ หรือประเภทมื้ออื่น';
	@override String get sortLabel => 'จัดเรียงรายการโปรด';
	@override String get undo => 'ยกเลิก';
	@override String removed({required Object name}) => 'นำ ${name} ออกจากรายการโปรดแล้ว';
	@override late final _TranslationsFavoritesSortOptionsTh sortOptions = _TranslationsFavoritesSortOptionsTh._(_root);
}

// Path: profile
class _TranslationsProfileTh implements TranslationsProfileEn {
	_TranslationsProfileTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'โปรไฟล์';
	@override String get noProfileData => 'ไม่พบข้อมูลโปรไฟล์';
	@override String get yourProfile => 'โปรไฟล์ของคุณ';
	@override String get viewAndManage => 'ดูและจัดการข้อมูลสุขภาพของคุณ';
	@override late final _TranslationsProfileSectionsTh sections = _TranslationsProfileSectionsTh._(_root);
	@override String get gender => 'เพศ';
	@override String get height => 'ความสูง';
	@override String get weight => 'น้ำหนัก';
	@override String get age => 'อายุ';
	@override String get weightGoal => 'เป้าหมายน้ำหนัก';
	@override String get targetWeight => 'น้ำหนักเป้าหมาย';
	@override String get activityLevel => 'ระดับกิจกรรม';
	@override String get healthMetrics => 'ตัวชี้วัดสุขภาพ';
	@override String get notSet => 'ยังไม่ได้ตั้งค่า';
	@override String get years => 'ปี';
	@override String get updatedSuccessfully => 'อัปเดตโปรไฟล์เรียบร้อยแล้ว!';
	@override late final _TranslationsProfileCalculatedValuesTh calculatedValues = _TranslationsProfileCalculatedValuesTh._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreTh implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คะแนนสุขภาพ';
	@override String get whyThisScore => 'ทำไมได้คะแนนนี้?';
	@override String get note => 'คะแนนนี้เป็นการประมาณของ AI โดยอิงจากส่วนผสมที่ระบุและความหนาแน่นทางโภชนาการ ควรปรึกษาผู้เชี่ยวชาญสำหรับคำแนะนำด้านอาหารที่เฉพาะเจาะจง';
	@override String get unhealthy => 'ไม่แข็งแรง';
	@override String get healthy => 'แข็งแรง';
	@override String get neutral => 'ปานกลาง';
}

// Path: editProfile
class _TranslationsEditProfileTh implements TranslationsEditProfileEn {
	_TranslationsEditProfileTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'แก้ไขโปรไฟล์';
	@override late final _TranslationsEditProfileSectionsTh sections = _TranslationsEditProfileSectionsTh._(_root);
	@override String get gender => 'เพศ';
	@override String get dateOfBirth => 'วันเกิด';
	@override String get height => 'ความสูง';
	@override String get weight => 'น้ำหนัก';
	@override String get weightGoal => 'เป้าหมายน้ำหนัก';
	@override String get activityLevel => 'ระดับกิจกรรม';
	@override String get metric => 'เมตริก';
	@override String get imperial => 'อิมพีเรียล';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'เมตริก (cm)';
	@override String get imperialFtIn => 'อิมพีเรียล (ft/in)';
	@override String get metricKg => 'เมตริก (kg)';
	@override String get imperialLbs => 'อิมพีเรียล (lbs)';
	@override late final _TranslationsEditProfileGendersTh genders = _TranslationsEditProfileGendersTh._(_root);
	@override late final _TranslationsEditProfileWeightGoalsTh weightGoals = _TranslationsEditProfileWeightGoalsTh._(_root);
	@override late final _TranslationsEditProfileActivityLevelsTh activityLevels = _TranslationsEditProfileActivityLevelsTh._(_root);
}

// Path: settings
class _TranslationsSettingsTh implements TranslationsSettingsEn {
	_TranslationsSettingsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การตั้งค่า';
	@override late final _TranslationsSettingsSectionsTh sections = _TranslationsSettingsSectionsTh._(_root);
	@override late final _TranslationsSettingsEditProfileTh editProfile = _TranslationsSettingsEditProfileTh._(_root);
	@override late final _TranslationsSettingsLanguageTh language = _TranslationsSettingsLanguageTh._(_root);
	@override late final _TranslationsSettingsHeightUnitTh heightUnit = _TranslationsSettingsHeightUnitTh._(_root);
	@override late final _TranslationsSettingsWeightUnitTh weightUnit = _TranslationsSettingsWeightUnitTh._(_root);
	@override late final _TranslationsSettingsMealRemindersTh mealReminders = _TranslationsSettingsMealRemindersTh._(_root);
	@override late final _TranslationsSettingsThemeTh theme = _TranslationsSettingsThemeTh._(_root);
	@override late final _TranslationsSettingsSendFeedbackTh sendFeedback = _TranslationsSettingsSendFeedbackTh._(_root);
	@override late final _TranslationsSettingsExportMealHistoryTh exportMealHistory = _TranslationsSettingsExportMealHistoryTh._(_root);
	@override late final _TranslationsSettingsClearAllDataTh clearAllData = _TranslationsSettingsClearAllDataTh._(_root);
	@override late final _TranslationsSettingsDebugOptionsTh debugOptions = _TranslationsSettingsDebugOptionsTh._(_root);
	@override String get developerModeEnabled => 'เปิดโหมดนักพัฒนาแล้ว!';
	@override late final _TranslationsSettingsHealthConnectTh healthConnect = _TranslationsSettingsHealthConnectTh._(_root);
	@override late final _TranslationsSettingsAboutTh about = _TranslationsSettingsAboutTh._(_root);
	@override late final _TranslationsSettingsAppInfoTh appInfo = _TranslationsSettingsAppInfoTh._(_root);
}

// Path: reminders
class _TranslationsRemindersTh implements TranslationsRemindersEn {
	_TranslationsRemindersTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เตือนให้สม่ำเสมอด้วยการแจ้งเตือน';
	@override String get description => 'รับการเตือนอ่อนโยนให้บันทึกมื้อและรักษาความต่อเนื่องในเป้าหมายโภชนาการ';
	@override String get notificationsEnabled => 'เปิดการแจ้งเตือนแล้ว';
	@override String get notificationsDisabled => 'ปิดการแจ้งเตือนแล้ว';
	@override String get enabledSubtitle => 'คุณจะได้รับการแจ้งเตือนเกี่ยวกับมื้ออาหาร';
	@override String get disabledSubtitle => 'เปิดการแจ้งเตือนเพื่อรับการเตือนมื้ออาหาร';
	@override String get mealReminders => 'การเตือนมื้ออาหาร';
	@override String get breakfast => 'มื้อเช้า';
	@override String get lunch => 'มื้อกลางวัน';
	@override String get dinner => 'มื้อเย็น';
	@override String get snack => 'ของว่าง';
	@override String get unknown => 'ไม่ทราบ';
	@override String get change => 'เปลี่ยน';
	@override String get enableNotifications => 'เปิดการแจ้งเตือน';
	@override String get skipForNow => 'ข้ามก่อน';
	@override String get saveChanges => 'บันทึกการเปลี่ยนแปลง';
	@override String get enabledSuccessfully => 'เปิดการแจ้งเตือนเรียบร้อยแล้ว!';
	@override String get permissionDenied => 'การอนุญาตแจ้งเตือนถูกปฏิเสธ';
	@override String errorEnabling({required Object error}) => 'เกิดข้อผิดพลาดขณะเปิดการแจ้งเตือน: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'เกิดข้อผิดพลาดขณะทำการตั้งค่าให้เสร็จ: ${error}';
}

// Path: notifications
class _TranslationsNotificationsTh implements TranslationsNotificationsEn {
	_TranslationsNotificationsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastTh breakfast = _TranslationsNotificationsBreakfastTh._(_root);
	@override late final _TranslationsNotificationsLunchTh lunch = _TranslationsNotificationsLunchTh._(_root);
	@override late final _TranslationsNotificationsDinnerTh dinner = _TranslationsNotificationsDinnerTh._(_root);
	@override late final _TranslationsNotificationsSnackTh snack = _TranslationsNotificationsSnackTh._(_root);
	@override late final _TranslationsNotificationsTestTh test = _TranslationsNotificationsTestTh._(_root);
}

// Path: login
class _TranslationsLoginTh implements TranslationsLoginEn {
	_TranslationsLoginTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เข้าสู่ระบบ';
	@override String get signInWithGoogle => 'ลงชื่อเข้าใช้ด้วย Google';
	@override String get signInFailed => 'การเข้าสู่ระบบด้วย Google ล้มเหลวหรือถูกยกเลิก';
}

// Path: disclaimer
class _TranslationsDisclaimerTh implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'โปรดทราบ';
	@override late final _TranslationsDisclaimerSnapTh snap = _TranslationsDisclaimerSnapTh._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateTh weightEstimate = _TranslationsDisclaimerWeightEstimateTh._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTh healthMetrics = _TranslationsDisclaimerHealthMetricsTh._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureTh calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureTh._(_root);
}

// Path: common
class _TranslationsCommonTh implements TranslationsCommonEn {
	_TranslationsCommonTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get close => 'ปิด';
	@override String get kContinue => 'ดำเนินการต่อ';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingTh implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'ชอบ ${appLabel} ไหม?';
	@override String get yes => 'ใช่ ฉันชอบ';
	@override String get no => 'ไม่ค่อย';
	@override String get rateStepHeading => 'ให้คะแนนบน Play Store';
	@override String get emailStepHeading => 'ส่งคำติชมทางอีเมล';
	@override String soloDevMessage({required Object appLabel}) => 'การให้คะแนนสั้นๆ ช่วยให้คนอื่นค้นพบ ${appLabel} และช่วยให้การพัฒนายังคงเดินต่อไป คุณช่วยสละเวลาเขียนหน่อยไหม?';
	@override String get shareFeedbackViaEmail => 'คำติชมของคุณกำหนดทิศทางอนาคต — เราอ่านทุกข้อความ คุณต้องการแชร์ความคิดเห็นทางอีเมลไหม?';
	@override String get rateCta => 'ให้คะแนนบน Play Store';
	@override String get maybeLater => 'ไว้ทีหลัง';
	@override String get sendFeedback => 'ส่งคำติชม';
	@override String get noThanks => 'ไม่เป็นไร';
	@override String get aboutUsDescription => 'สร้างด้วยความใส่ใจโดยทีมขนาดเล็ก เรามุ่งมั่นเรื่องความเป็นส่วนตัว ความเรียบง่าย และช่วยให้คุณสร้างนิสัยการกินที่ดีขึ้น';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'สงสัยว่าใครอยู่เบื้องหลัง ${appLabel}? ดู ';
	@override String get aboutUsLinkLabel => 'เกี่ยวกับเรา';
	@override String get thankYouMessage => 'ขอบคุณ! เราจะถามอีกครั้งในครั้งหน้า';
}

// Path: health
class _TranslationsHealthTh implements TranslationsHealthEn {
	_TranslationsHealthTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'ไม่สามารถซิงก์กับ Health Connect';
	@override String get mealSynced => 'ซิงก์มื้อกับ Health Connect แล้ว';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesTh implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionTh foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionTh._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisTh aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisTh._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationTh healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationTh._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderTh implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณระบุเพศว่าอย่างไร?';
	@override String get description => 'ข้อมูลเพศช่วยให้เราคำนวณอัตราการเผาผลาญพื้นฐาน (BMR) ได้แม่นยำขึ้น';
	@override String get next => 'ถัดไป';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightTh implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณสูงเท่าไหร่?';
	@override String get description => 'ความสูงช่วยให้เราคำนวณ BMI และความต้องการพลังงานได้อย่างแม่นยำ';
	@override String get metric => 'เมตริก';
	@override String get imperial => 'อิมพีเรียล';
	@override String get next => 'ถัดไป';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightTh implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'น้ำหนักปัจจุบันของคุณเท่าไหร่?';
	@override String get currentDescription => 'น้ำหนักปัจจุบันจำเป็นสำหรับการปรับเป้าหมายรายวันให้เหมาะกับคุณ';
	@override String get targetTitle => 'น้ำหนักเป้าหมายของคุณคือเท่าไหร่?';
	@override String get targetDescription => 'การตั้งน้ำหนักเป้าหมายช่วยให้เราวางแผนระยะยาวให้เหมาะสม';
	@override String get metric => 'เมตริก';
	@override String get imperial => 'อิมพีเรียล';
	@override String get next => 'ถัดไป';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeTh implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'วันเกิดของคุณคือเมื่อไหร่?';
	@override String get description => 'อายุช่วยให้เราคำนวณความต้องการแคลอรีได้อย่างแม่นยำ';
	@override String get next => 'ถัดไป';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleTh implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ผอมกว่าปกติ';
	@override String get healthy => 'สุขภาพดี';
	@override String get overweight => 'น้ำหนักเกิน';
	@override String get obese => 'อ้วน';
	@override late final _TranslationsOnboardingBmiScaleCategoriesTh categories = _TranslationsOnboardingBmiScaleCategoriesTh._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesTh messages = _TranslationsOnboardingBmiScaleMessagesTh._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalTh implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เป้าหมายของคุณคืออะไร?';
	@override String get description => 'เลือกเป้าหมายที่ตรงกับสิ่งที่คุณต้องการบรรลุ';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelTh implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณมีกิจกรรมระดับไหน?';
	@override String get description => 'ข้อมูลนี้ช่วยให้เราคำนวณความต้องการแคลอรีรายวันได้แม่นยำขึ้น';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectTh implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เชื่อมต่อกับ Health Connect';
	@override String get description => 'ซิงก์ข้อมูลสุขภาพของคุณเพื่อการวิเคราะห์และติดตามแคลอรีอัตโนมัติ';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingTh automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingTh._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsTh progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsTh._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationTh seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationTh._(_root);
	@override String get connected => 'เชื่อมต่อกับ Health Connect แล้ว';
	@override String get notConnected => 'ยังไม่ได้เชื่อมต่อกับ Health Connect';
	@override String get setup => 'ตั้งค่า Health Connect';
	@override String get skipForNow => 'ข้ามก่อน';
	@override String get statusConnected => 'Health Connect ถูกเชื่อมต่อแล้ว';
	@override String get statusSuccess => 'เชื่อมต่อกับ Health Connect สำเร็จ!';
	@override String statusPermissionDenied({required Object appLabel}) => 'การอนุญาตถูกปฏิเสธ โปรดเปิดสิทธิ์ Health Connect ในการตั้งค่าบนโทรศัพท์สำหรับ ${appLabel}';
	@override String statusError({required Object error}) => 'เกิดข้อผิดพลาดขณะตั้งค่า Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementTh implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessTh trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessTh._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileTh healthProfile = _TranslationsOnboardingReinforcementHealthProfileTh._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleTh goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleTh._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryTh implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สรุปโดย AI ของคุณ';
	@override String get logMore => 'บันทึกมื้ออาหารเพิ่มเติมในอีกไม่กี่วันข้างหน้าเพื่อรับข้อมูล AI ที่ปรับให้เฉพาะคุณ';
	@override String get loading => 'กำลังโหลดสรุปของคุณ…';
	@override String mealCount({required Object count}) => 'บันทึก ${count} มื้อ';
	@override String macroBalanceScore({required Object score}) => 'คะแนนสมดุล ${score}';
	@override String get topFoods => 'อาหารยอดนิยม';
	@override String get trendUp => 'แคลอรีเพิ่มขึ้น';
	@override String get trendDown => 'แคลอรีลดลง';
	@override String get trendSteady => 'แคลอรีคงที่';
	@override String generatedAt({required Object time}) => 'อัปเดตเมื่อ ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalTh implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ตั้งเป้าหมายรายวันของคุณ';
	@override String get titleSet => 'เป้าหมายรายวันของคุณ';
	@override String get description => 'พร้อมเริ่มต้นการเดินทางสู่ความเป็นอยู่ที่ดีหรือยัง? ตั้งเป้าหมายแคลอรีรายวันด้านล่างเพื่อเริ่มต้นความก้าวหน้า';
	@override String get descriptionSet => 'เข็มทิศของคุณถูกตั้งแล้ว! นี่คือเป้าหมายแคลอรีรายวันของคุณ';
	@override String get yourGoal => 'เป้าหมายของคุณ';
	@override String get goal => 'เป้าหมาย';
	@override String get dailyCalories => 'แคลอรีต่อวัน (kcal)';
	@override String get setGoal => 'ตั้งเป้าหมาย';
	@override String get intake => 'รับเข้า';
	@override String get burned => 'เผาผลาญ';
	@override String get weightImpact => 'ผลต่อ น้ำหนัก';
	@override String get estLoss => 'คาดการณ์การลด';
	@override String get estGain => 'คาดการณ์การเพิ่ม';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryTh implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สรุประหว่างวัน';
	@override String get calories => 'แคลอรี';
	@override String get carbs => 'คาร์โบไฮเดรต';
	@override String get protein => 'โปรตีน';
	@override String get fat => 'ไขมัน';
	@override String get fiber => 'ใยอาหาร';
	@override String get grams => 'กรัม';
	@override String get chartAccessibilityLabel => 'กราฟสารอาหารหลัก';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressTh implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สัดส่วนสารอาหารวันนี้';
	@override String get target => 'เป้าหมาย';
	@override String get current => 'ปัจจุบัน';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryTh implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ประวัติสารอาหาร 7 วัน';
	@override String get trendTitle => 'แนวโน้มวันนี้';
	@override String peakHour({required Object hour}) => 'ชั่วโมงสูงสุด: ${hour}:00';
	@override String get noHistoryYet => 'ยังไม่มีประวัติ';
	@override String get startLogging => 'เริ่มบันทึกมื้ออาหารเพื่อดู\nแนวโน้มสารอาหาร 7 วันที่นี่';
}

// Path: home.mealLog
class _TranslationsHomeMealLogTh implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มื้อที่บันทึกแล้ว';
	@override String get emptyMessage => 'ถ่ายรูปมื้อสุดท้ายของคุณเพื่อบันทึกที่นี่';
	@override String get noMealsToday => 'ยังไม่มีมื้อบันทึกสำหรับวันนี้';
	@override String get seeAllMeals => 'ดูมื้อทั้งหมด';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionTh implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เพิ่มด่วนด้วย AI';
	@override String get description => 'อธิบายมื้อของคุณ แล้วให้ AI จัดการรายละเอียด';
	@override String get hint => 'เช่น มื้อเช้าฉันทานโจ๊กถ้วยใหญ่กับกล้วยหั่นและเวย์โปรตีนหนึ่งช้อน ...';
	@override String get analyzeMeal => 'วิเคราะห์มื้อ';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsTh implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มื้อโปรด';
	@override String get description => 'เพิ่มมื้อโปรดของคุณได้อย่างรวดเร็ว';
	@override String get noFavorites => 'ยังไม่มีมื้อโปรด';
	@override String get addFavoriteHint => 'คลิกดาวบนมื้อเพื่อทำเครื่องหมายเป็นโปรด';
	@override String get seeAll => 'ดูทั้งหมด';
	@override String get add => 'เพิ่ม';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapTh implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ถ่ายรูป & ติดตามมื้ออาหาร';
	@override String get description => 'ใช้กล้องถ่ายรูปอาหารเพื่อให้ AI วิเคราะห์';
	@override String get openCamera => 'เปิดกล้อง';
	@override String get gallery => 'แกลเลอรี';
	@override String get compressingPhoto => 'กำลังปรับขนาดรูป…';
	@override String get uploadingPhoto => 'กำลังอัปโหลดรูป…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthTh implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ซิงก์กับ Health Connect';
	@override String get description => 'ซิงก์ข้อมูลโภชนาการของคุณกับ Health Connect';
	@override String get install => 'ติดตั้ง';
	@override String get connect => 'เชื่อมต่อ';
}

// Path: meal.nutrition
class _TranslationsMealNutritionTh implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get calories => 'แคลอรี';
	@override String get carbs => 'คาร์บ (g)';
	@override String get protein => 'โปรตีน (g)';
	@override String get fat => 'ไขมัน (g)';
	@override String get fiber => 'ใยอาหาร (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationTh implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ลบมื้ออาหาร';
	@override String get message => 'คุณแน่ใจว่าต้องการลบรายการมื้อนี้หรือไม่?';
	@override String get cancel => 'ยกเลิก';
	@override String get delete => 'ลบ';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowTh implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'คำถาม ${current} จาก ${total}';
	@override String get noQuestionsAvailable => 'ไม่มีคำถาม';
	@override String get next => 'ถัดไป';
	@override String get continueLabel => 'ดำเนินการต่อ';
}

// Path: meal.analysis
class _TranslationsMealAnalysisTh implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'กำลังวิเคราะห์มื้อของคุณ';
	@override String get stepStarted => 'เริ่มต้น…';
	@override String get stepDecomposition => 'กำลังทำความเข้าใจมื้อ…';
	@override String get stepIngredients => 'จับคู่ส่วนผสมกับข้อมูลโภชนาการ…';
	@override String get stepUncertainty => 'ตรวจสอบความมั่นใจ…';
	@override String get stepMealTypeQuestion => 'เกือบเสร็จแล้ว…';
	@override String get stepResult => 'สรุปผล…';
	@override String get stepError => 'เกิดข้อผิดพลาดบางอย่าง';
	@override String get stepDefault => 'กำลังวิเคราะห์มื้อของคุณ…';
	@override String get progressUnderstand => 'กำลังทำความเข้าใจมื้อ';
	@override String get progressMatch => 'กำลังค้นหาข้อมูลโภชนาการของส่วนผสม';
	@override String get progressCheck => 'กำลังตรวจสอบขนาดส่วนและความมั่นใจ';
	@override String get progressMealType => 'กำลังเลือกประเภทมื้อ';
	@override String get progressFinish => 'กำลังคำนวณแคลอรีและสารอาหารหลัก';
	@override String get detectedIngredientHeading => 'ส่วนผสมที่เราพบ';
	@override String ingredientsOverflow({required Object count}) => 'มีอีก ${count}';
	@override String ingredientsLine({required Object count}) => 'ตรวจพบ ${count} ส่วนผสม';
	@override String get ingredientsPending => 'กำลังสแกนส่วนผสม…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'เคล็ดลับ: ความสม่ำเสมอกำลังกว่าความสมบูรณ์ — การบันทึกสม่ำเสมอเผยรูปแบบที่สำคัญ';
	@override String get offlineTip1 => 'เคล็ดลับ: สำหรับรูป ให้ใช้แสงธรรมชาติและมุมมองจากด้านบนเพื่อความแม่นยำของปริมาณ';
	@override String get offlineTip2 => 'เคล็ดลับ: ระบุเครื่องดื่ม น้ำจิ้ม และน้ำมันที่ใช้ปรุง — สิ่งเหล่านี้เพิ่มแคลอรีที่คนมักลืม';
	@override String get offlineTip3 => 'เคล็ดลับ: ระบุขนาดคร่าวๆ (1 ถ้วย, กาแฟแก้วใหญ่) จะช่วยให้การประเมินคมชัดขึ้น';
	@override String get offlineTip4 => 'เคล็ดลับ: บันทึกหลังมื้อยังช่วยสร้างนิสัยได้ ความสมบูรณ์ไม่จำเป็น';
	@override String get offlineTip5 => 'เคล็ดลับ: ระบุวิธีการปรุงเมื่อส่งผลต่อแคลอรีมาก (ทอด vs อบ)';
}

// Path: meal.feedback
class _TranslationsMealFeedbackTh implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'อะไรที่ดูผิดพลาด?';
	@override String get subtitle => 'ช่วยเราปรับปรุงการวิเคราะห์โดยเลือกปัญหาหนึ่งข้อหรือหลายข้อ';
	@override String get tellUsMore => 'บอกเพิ่มเติม';
	@override String get describeIncorrect => 'อธิบายสิ่งที่ไม่ถูกต้อง';
	@override String get submit => 'ส่ง';
	@override String get issueFoodIdentification => 'การระบุอาหาร';
	@override String get issuePortionSize => 'ขนาดส่วน';
	@override String get issueCalorieDistribution => 'การแจกแจงแคลอรี';
	@override String get issueMacrosWrong => 'สารอาหารหลักผิด';
	@override String get issueMissingItems => 'ขาดรายการ';
	@override String get issueExtraItems => 'มีรายการเกิน';
	@override String get issueOther => 'อื่นๆ';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsTh implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get recent => 'ล่าสุด';
	@override String get calories => 'แคลอรี';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsTh implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get profile => 'โปรไฟล์';
	@override String get basicInformation => 'ข้อมูลพื้นฐาน';
	@override String get goalsAndActivity => 'เป้าหมาย & กิจกรรม';
	@override String get calculatedValues => 'ค่าที่คำนวณได้';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesTh implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'เป้าหมายรายวัน';
	@override String get calPerDay => 'แคล/วัน';
	@override String get notAvailable => 'ไม่มีข้อมูล';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsTh implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ข้อมูลส่วนบุคคล';
	@override String get physicalMeasurements => 'การวัดสัดส่วนร่างกาย';
	@override String get goalsAndActivity => 'เป้าหมาย & กิจกรรม';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersTh implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get male => 'ชาย';
	@override String get female => 'หญิง';
	@override String get other => 'อื่นๆ';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsTh implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightTh loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightTh._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightTh maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightTh._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightTh gainWeight = _TranslationsEditProfileWeightGoalsGainWeightTh._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsTh implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryTh sedentary = _TranslationsEditProfileActivityLevelsSedentaryTh._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveTh lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveTh._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveTh moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveTh._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveTh veryActive = _TranslationsEditProfileActivityLevelsVeryActiveTh._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveTh extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveTh._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsTh implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get profile => 'โปรไฟล์';
	@override String get localization => 'การตั้งค่าภาษา';
	@override String get notifications => 'การแจ้งเตือน';
	@override String get healthConnect => 'Health Connect';
	@override String get supportAndLegal => 'การสนับสนุน & กฎหมาย';
	@override String get about => 'เกี่ยวกับ';
	@override String get dangerZone => 'โซนอันตราย';
	@override String get developer => 'นักพัฒนา';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileTh implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'แก้ไขโปรไฟล์';
	@override String get subtitle => 'อัปเดตข้อมูลส่วนตัวของคุณ';
}

// Path: settings.language
class _TranslationsSettingsLanguageTh implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ภาษา';
	@override String get subtitle => 'เลือกภาษาที่ต้องการ';
	@override String get searchHint => 'ค้นหาภาษา...';
	@override String get noResults => 'ไม่พบผลลัพธ์';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitTh implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'หน่วยความสูง';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitTh implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'หน่วยน้ำหนัก';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersTh implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การแจ้งเตือนมื้ออาหาร';
	@override String get subtitle => 'เตือนให้บันทึกมื้ออย่างสม่ำเสมอ';
}

// Path: settings.theme
class _TranslationsSettingsThemeTh implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ธีม';
	@override String get light => 'สว่าง';
	@override String get dark => 'มืด';
	@override String get system => 'ระบบ';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackTh implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ส่งคำติชม';
	@override String subtitle({required Object appLabel}) => 'ช่วยให้ ${appLabel} ดีขึ้น';
	@override String emailSubject({required Object appLabel}) => 'ข้อเสนอแนะสำหรับแอป ${appLabel}';
	@override String get emailBodyPrefix => 'โปรดส่งคำติชมของคุณด้านล่าง:';
	@override String get appVersion => 'เวอร์ชันแอป';
	@override String get device => 'อุปกรณ์';
	@override String get osVersion => 'รุ่นระบบปฏิบัติการ';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryTh implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ส่งออกประวัติมื้ออาหาร';
	@override String get subtitle => 'แชร์ไฟล์ CSV ของมื้อที่คุณบันทึก';
	@override String get shareText => 'การส่งออกประวัติมื้อของคุณจาก Calorify';
	@override String failed({required Object error}) => 'ไม่สามารถส่งออกประวัติการมื้ออาหารได้: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataTh implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ล้างข้อมูลทั้งหมด';
	@override String get subtitle => 'ลบข้อมูลทั้งหมดอย่างถาวร';
	@override String get confirmationTitle => 'ล้างข้อมูลทั้งหมด?';
	@override String get confirmationMessage => 'การกระทำนี้ไม่สามารถย้อนกลับได้ ข้อมูลมื้อทั้งหมด รายการโปรด และการตั้งค่าโปรไฟล์ของคุณจะถูกลบอย่างถาวร';
	@override String get cancel => 'ยกเลิก';
	@override String get clearEverything => 'ล้างทั้งหมด';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsTh implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ตัวเลือกดีบัก';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectTh implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'ดูและจัดการสิทธิ์';
	@override late final _TranslationsSettingsHealthConnectUnavailableTh unavailable = _TranslationsSettingsHealthConnectUnavailableTh._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsTh permissions = _TranslationsSettingsHealthConnectPermissionsTh._(_root);
	@override String get managePermissions => 'จัดการสิทธิ์';
	@override String get openSettings => 'เปิดการตั้งค่า Health Connect';
	@override String get requestPermissions => 'ขอสิทธิ์';
	@override String get permissionRequestCancelledOrFailed => 'การขอสิทธิ์ถูกยกเลิกหรือไม่สำเร็จ โปรดลองอีกครั้งหรือให้สิทธิ์ด้วยตนเองในการตั้งค่า Health Connect';
	@override String get permissionRequestFailed => 'ไม่สามารถขอสิทธิ์ได้ โปรดลองอีกครั้งหรือให้สิทธิ์ด้วยตนเองในการตั้งค่า Health Connect';
	@override String get requestingPermissions => 'กำลังขอ...';
}

// Path: settings.about
class _TranslationsSettingsAboutTh implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เกี่ยวกับ';
	@override String get tagline => 'รู้เท่าทันแคลอรีอย่างรวดเร็ว ฟรี และให้ความสำคัญกับความเป็นส่วนตัว';
	@override late final _TranslationsSettingsAboutOurStoryTh ourStory = _TranslationsSettingsAboutOurStoryTh._(_root);
	@override late final _TranslationsSettingsAboutPrivacyTh privacy = _TranslationsSettingsAboutPrivacyTh._(_root);
	@override late final _TranslationsSettingsAboutDeveloperTh developer = _TranslationsSettingsAboutDeveloperTh._(_root);
	@override late final _TranslationsSettingsAboutFeedbackTh feedback = _TranslationsSettingsAboutFeedbackTh._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoTh implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'บิลด์ ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastTh implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เวลาอาหารเช้า! 🍳';
	@override String get body => 'อย่าลืมบันทึกมื้อเช้าของคุณ';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchTh implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เวลาอาหารกลางวัน! 🥗';
	@override String get body => 'ถึงเวลาบันทึกมื้อกลางวันแล้ว';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerTh implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เวลามื้อเย็น! 🍽️';
	@override String get body => 'อย่าลืมบันทึกมื้อเย็นของคุณ';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackTh implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เวลาของว่าง! 🍎';
	@override String get body => 'ถึงเวลาสำหรับของว่างเพื่อสุขภาพ';
}

// Path: notifications.test
class _TranslationsNotificationsTestTh implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ทดสอบการแจ้งเตือน';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapTh implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} ให้ข้อมูลโภชนาการโดยประมาณ ความแม่นยำขึ้นอยู่กับข้อมูลที่คุณป้อนและความหลากหลายของอาหาร ใช้เป็นแนวทาง ไม่ใช่แหล่งข้อมูลที่ชัดเจนที่สุด ปรึกษาผู้เชี่ยวชาญสำหรับคำแนะนำทางโภชนาการเฉพาะบุคคล';
	@override late final _TranslationsDisclaimerSnapPortionSizeTh portionSize = _TranslationsDisclaimerSnapPortionSizeTh._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsTh preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsTh._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsTh ingredients = _TranslationsDisclaimerSnapIngredientsTh._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsTh databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsTh._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateTh implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เกี่ยวกับการประเมินน้ำหนัก';
	@override String get description => 'การคาดการณ์การเปลี่ยนแปลงน้ำหนักเป็นการประมาณทางทฤษฎีโดยอิงจากโมเดลง่ายๆ ของแคลอรีเข้าเทียบกับแคลอรีออก ตั้งใจให้เป็นแนวทางให้กำลังใจ ไม่ใช่การทำนายผลน้ำหนักจริง';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyTh calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyTh._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsTh biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsTh._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightTh waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightTh._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTh professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTh._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsTh implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get description => 'ตัวชี้วัดเหล่านี้ช่วยให้คุณเข้าใจความต้องการพลังงานของร่างกายและนำทางเป้าหมายโภชนาการของคุณ';
	@override late final _TranslationsDisclaimerHealthMetricsBmrTh bmr = _TranslationsDisclaimerHealthMetricsBmrTh._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeTh tdee = _TranslationsDisclaimerHealthMetricsTdeeTh._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalTh dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalTh._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureTh implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การประมาณการเผาผลาญแคลอรี';
	@override String get description => 'เมื่อไม่สามารถใช้ข้อมูลจาก Health Connect ได้ เราจะประมาณแคลอรีที่เผาผลาญวันนี้โดยใช้ BMR และระดับกิจกรรมของคุณ (TDEE) แล้วปรับตามสัดส่วนของวันที่ผ่านไป';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedTh howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedTh._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTh professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTh._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionTh implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การจดจำอาหารอัจฉริยะ';
	@override String get description => 'ถ่ายรูปแล้วให้ AI ระบุมื้ออาหารของคุณ';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisTh implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การวิเคราะห์ด้วย AI';
	@override String get description => 'รับข้อมูลโภชนาการทันทีจากคำอธิบายของคุณ';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationTh implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การเชื่อมต่อ Health Connect';
	@override String get description => 'เชื่อมต่อกับ Health Connect เพื่อข้อมูลเชิงลึกที่ดียิ่งขึ้น';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesTh implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'น้ำหนักน้อยกว่าเกณฑ์';
	@override String get healthyWeight => 'น้ำหนักในเกณฑ์ดี';
	@override String get overweight => 'น้ำหนักเกิน';
	@override String get obese => 'อ้วน';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesTh implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'เราช่วยคุณวางแผนการเพิ่มน้ำหนักอย่างมีสุขภาพ ด้วยมื้ออาหารที่อุดมด้วยสารอาหาร';
	@override String get healthy => 'ยอดเยี่ยม! คุณอยู่ในช่วงสุขภาพดี เราจะช่วยรักษาพลังและความมีชีวิตชีวาไว้ให้';
	@override String overweight({required Object appLabel}) => '${appLabel} จะช่วยให้ง่ายขึ้นด้วยการติดตามโดยใช้ AI เพื่อไปถึงเป้าหมายอย่างสบายใจ';
	@override String get obese => 'เราพร้อมสนับสนุนคุณด้วยคำแนะนำเฉพาะบุคคลและกลยุทธ์ยั่งยืนเพื่อสุขภาพของคุณ';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingTh implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การติดตามแคลอรีอัตโนมัติ';
	@override String get description => 'ติดตามแคลอรีที่เผาผลาญจากแอปฟิตเนสของคุณ';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsTh implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ข้อมูลเชิงลึกเกี่ยวกับความคืบหน้า';
	@override String get description => 'รับข้อมูลเชิงลึกละเอียดเกี่ยวกับแนวโน้มสุขภาพของคุณ';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationTh implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การเชื่อมต่ออย่างราบรื่น';
	@override String get description => 'ซิงก์ข้อมูลจากแอปสุขภาพที่คุณชื่นชอบ';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessTh implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณไม่ได้อยู่คนเดียว';
	@override String get genericMessage => 'งานวิจัยแสดงให้เห็นว่าการบันทึกอย่างสม่ำเสมอเป็นปัจจัยทำนายอันดับ 1 ของความสำเร็จในระยะยาว';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'สำหรับคนอายุ ${age} ปี ที่เป็น ${gender} และต้องการ ${goal} การบันทึกอย่างสม่ำเสมอเป็นปัจจัยทำนายความสำเร็จอันดับ 1';
	@override String closingMessage({required Object appLabel}) => '${appLabel} ทำให้การทำงานนี้ง่ายขึ้นเป็น 10 เท่าเมื่อเทียบกับการทำด้วยตนเอง';
	@override String get getStartedTitle => 'พร้อมเริ่มหรือยัง?';
	@override String get tipPhoto => 'ถ่ายรูปมื้ออาหารเพื่อการวิเคราะห์ทันที';
	@override String get tipConsistency => 'บันทึกต่อเนื่องเพื่อเห็นความก้าวหน้าอย่างมีนัยสำคัญ';
	@override String get tipProgress => 'ติดตามความคืบหน้าเป็นประจำทุกวันเพื่อรักษาแรงจูงใจ';
	@override String get button => 'ไปกันเลย';
	@override String get defaultGender => 'บุคคล';
	@override String get defaultGoal => 'คุณที่สุขภาพดีขึ้น';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileTh implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'โปรไฟล์สุขภาพของคุณ';
	@override String bmiDescription({required Object bmi}) => 'จากข้อมูลของคุณ ค่า BMI คือ ${bmi}';
	@override String get finalizeDescription => 'มาปิดท้ายโปรไฟล์ให้เรียบร้อยเพื่อปรับประสบการณ์ให้เหมาะกับคุณ';
	@override String get goalGain => 'เพิ่ม';
	@override String get goalLose => 'ลด';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'เพื่อไปถึงเป้าหมาย คุณจะต้อง${direction} ${diff} ${unit}';
	@override String get goalReached => 'คุณอยู่ที่น้ำหนักเป้าหมายแล้ว! เราจะช่วยคุณรักษาไว้';
	@override String get button => 'ไปกันเลย';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleTh implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เริ่มต้นได้ยอดเยี่ยม!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'คุณได้ก้าวแรกสู่ ${goalText} แล้ว เนื่องจากคุณ ${activityText} ${appLabel} จะปรับเป้าหมายให้สอดคล้องกับไลฟ์สไตล์ของคุณ';
	@override String get personalizedTargets => 'เป้าหมายแคลอรีที่ปรับให้เหมาะกับคุณ';
	@override String get aiMealDetection => 'การตรวจจับมื้ออาหารด้วย AI';
	@override String get macroBreakdowns => 'การแยกสารอาหารหลักอย่างละเอียด';
	@override String get button => 'ไปกันเลย';
	@override String get defaultGoal => 'เป้าหมายของคุณ';
	@override String get defaultActivity => 'กระตือรือร้น';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightTh implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'ลดน้ำหนัก';
	@override String get description => 'สร้างการขาดแคลอรีเพื่อลดน้ำหนัก';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightTh implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'รักษาน้ำหนัก';
	@override String get description => 'รักษาน้ำหนักปัจจุบัน';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightTh implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'เพิ่มน้ำหนัก';
	@override String get description => 'สร้างการเกินแคลอรีเพื่อเพิ่มน้ำหนัก';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryTh implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'อยู่นิ่ง';
	@override String get description => 'ออกกำลังกายน้อยหรือแทบไม่มี';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveTh implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'เคลื่อนไหวเล็กน้อย';
	@override String get description => 'ออกกำลังกายเบา 1-3 วัน/สัปดาห์';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveTh implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'เคลื่อนไหวปานกลาง';
	@override String get description => 'ออกกำลังกายปานกลาง 3-5 วัน/สัปดาห์';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveTh implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'เคลื่อนไหวมาก';
	@override String get description => 'ออกกำลังกายหนัก 6-7 วัน/สัปดาห์';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveTh implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'เคลื่อนไหวหนักมาก';
	@override String get description => 'ออกกำลังกายหนักมาก หรืองานที่ต้องใช้แรงกาย';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableTh implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ไม่พบ Health Connect';
	@override String get description => 'อุปกรณ์นี้ไม่มี Health Connect โปรดติดตั้ง Health Connect จาก Play Store (Android 9+) หรืออัปเดตเป็น Android 14+';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsTh implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สิทธิ์';
	@override String get description => 'ขอสิทธิ์ต่อไปนี้เพื่อนำเสนอการรวมกับ Health Connect:';
	@override String get granted => 'ได้รับอนุญาตแล้ว';
	@override String get notGranted => 'ยังไม่ได้รับอนุญาต';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTh caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTh._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadTh nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadTh._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteTh nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteTh._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryTh implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เรื่องราวของเรา';
	@override String content({required Object appLabel}) => '${appLabel} เกิดจากความรู้สึกหงุดหงิดอย่างง่าย: แอปติดตามแคลอรีส่วนใหญ่ซับซ้อนเกินไป ต้องกรอกข้อมูลด้วยตลอด มีค่าใช้จ่ายสมัครสมาชิกราคาแพง หรือประนีประนอมด้านความเป็นส่วนตัว\n\nในฐานะนักพัฒนาเดี่ยว ผมต้องการสร้างสิ่งที่เรียบง่ายและเป็นธรรมกว่า — แอปที่ใช้ AI เพื่อลดความยุ่งยาก ทำงานเร็วและใช้ฟรี และเคารพข้อมูลสุขภาพของคุณ\n\n${appLabel} คือแอปที่ผมอยากให้มีอยู่: ไม่มีบัญชี ไม่มีการติดตาม ไม่มีโฆษณา — มีเพียงข้อมูลเชิงปฏิบัติที่ชัดเจนและเป้าหมายด้านสุขภาพของคุณ';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyTh implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ความเป็นส่วนตัวของคุณสำคัญ';
	@override String get description => 'ความเป็นส่วนตัวไม่ใช่เรื่องรอง — แต่เป็นหลักการออกแบบ ต่อไปนี้คือสิ่งที่หมายถึงในการใช้งานจริง:';
	@override String get noAccounts => 'ไม่ต้องมีบัญชี\nใช้แอปได้ทันที ไม่ต้องสมัคร ไม่ต้องระบุตัวตน';
	@override String noTracking({required Object appLabel}) => 'ไม่มีการติดตามพฤติกรรม\n${appLabel} จะไม่ตรวจสอบกิจกรรมของคุณ สร้างโปรไฟล์การใช้งาน หรือติดตามข้ามแอปหรือเว็บไซต์';
	@override String noAds({required Object appLabel}) => 'ออกแบบให้ไม่มีโฆษณา\n${appLabel} ถูกสร้างมาให้ทำงานได้โดยไม่ต้องใช้โฆษณาหรือหารายได้จากข้อมูล';
	@override String get noDataSelling => 'ไม่ขายข้อมูล\nข้อมูลสุขภาพของคุณจะไม่ถูกขายหรือแบ่งปันกับบุคคลที่สาม';
	@override String get localStorage => 'เก็บข้อมูลบนเครื่องเป็นหลัก\nข้อมูลของคุณอยู่บนอุปกรณ์ของคุณ';
	@override String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperTh implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สร้างโดยนักพัฒนาเดี่ยว';
	@override String description({required Object appLabel}) => '${appLabel} ถูกสร้างและดูแลโดยนักพัฒนาเดี่ยวที่มุ่งมั่นสร้างซอฟต์แวร์ด้านสุขภาพที่สงบและเคารพความเป็นส่วนตัว\n\nคำติชมถูกอ่านด้วยตนเองและมีส่วนช่วยกำหนดทิศทางของแอป';
	@override String get website => 'เว็บไซต์';
	@override String get email => 'อีเมล';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackTh implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'ชอบ ${appLabel} ไหม?';
	@override String description({required Object appLabel}) => 'คำติชมของคุณช่วยให้ ${appLabel} ดีขึ้นสำหรับทุกคน';
	@override String get rateApp => 'ให้คะแนนบน Play Store';
	@override String get sendFeedback => 'ส่งคำติชม';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeTh implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ขนาดส่วน';
	@override String get description => 'ความแม่นยำของการประมาณพึ่งพาการประเมินขนาดส่วนที่ถูกต้องของคุณอย่างมาก';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsTh implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'วิธีการปรุง';
	@override String description({required Object appLabel}) => 'วิธีการปรุงอาหารสามารถเปลี่ยนปริมาณโภชนาการได้อย่างมาก การประมาณของ ${appLabel} อาจไม่ครอบคลุมความแตกต่างเหล่านี้เสมอไป';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsTh implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ส่วนผสม';
	@override String get description => 'จานที่ซับซ้อนมีส่วนผสมแฝงหลายชนิด อาจทำให้การประมาณมีความแม่นยำน้อยลง';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsTh implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ข้อจำกัดของฐานข้อมูล';
	@override String description({required Object appLabel}) => 'ฐานข้อมูลอาหารของ ${appLabel} มีความหลากหลายแต่ไม่ครอบคลุมทุกรายการอาหารหรือความแตกต่างทั้งหมด';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyTh implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ความแม่นยำของแคลอรี';
	@override String get description => 'การประมาณนี้มีความแม่นยำขึ้นกับการบันทึกการรับและการใช้พลังงานของคุณ หากบันทึกไม่แม่นยำ การคาดการณ์ก็จะคลาดเคลื่อน';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsTh implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ปัจจัยทางชีวภาพ';
	@override String description({required Object appLabel}) => 'การลด/เพิ่มน้ำหนักจริงได้รับอิทธิพลจากการเผาผลาญ ฮอร์โมน การนอนหลับ ความเครียด การดื่มน้ำ และปัจจัยเฉพาะบุคคลอื่นๆ ที่ ${appLabel} ไม่สามารถวัดได้';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightTh implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'น้ำในร่างกาย & การแกว่งของน้ำหนัก';
	@override String get description => 'น้ำหนักปกติสามารถเปลี่ยนแปลงได้มากในแต่ละวันจากการกักเก็บน้ำ การย่อยอาหาร และช่วงเวลา การประมาณนี้ไม่รวมการเปลี่ยนแปลงรายวันเหล่านี้';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTh implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คำแนะนำจากผู้เชี่ยวชาญ';
	@override String get description => 'อย่าใช้การประมาณนี้เพื่อการตัดสินใจทางการแพทย์ โปรดปรึกษาผู้เชี่ยวชาญด้านสุขภาพหรือนักโภชนาการที่ลงทะเบียนสำหรับคำแนะนำเฉพาะบุคคล';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrTh implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'อัตราการเผาผลาญพื้นฐาน (BMR) คือจำนวนแคลอรีที่ร่างกายเผาผลาญเมื่อพักเพื่อรักษาการทำงานพื้นฐาน เช่น การหายใจและการไหลเวียนของเลือด BMR ขึ้นกับอายุ เพศ ความสูง และน้ำหนัก BMR สูงขึ้นมักหมายถึงร่างกายเผาผลาญแคลอรีมากขึ้นขณะพัก ส่วนใหญ่มาจากมวลกล้ามเนื้อมากกว่า อายุที่น้อยกว่า หรือเป็นเพศชาย BMR ต่ำมักบ่งชี้ถึงมวลกล้ามเนื้อน้อยกว่า อายุที่มากขึ้น หรือเป็นเพศหญิง';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeTh implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'การใช้พลังงานทั้งหมดต่อวัน (TDEE) คือแคลอรีทั้งหมดที่คุณเผาผลาญต่อวัน รวม BMR และแคลอรีจากกิจกรรมและการเคลื่อนไหวประจำวัน TDEE ขึ้นกับ BMR และระดับกิจกรรม TDEE สูงขึ้นหมายถึงการเผาผลาญโดยรวมมากขึ้น มักมาจากกิจกรรมมากขึ้นหรือ BMR สูงกว่า TDEE ต่ำกว่าอาจหมายถึงกิจกรรมประจำวันน้อยหรือ BMR ต่ำกว่า';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalTh implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เป้าหมายรายวัน';
	@override String get description => 'เป้าหมายรายวันคือปริมาณแคลอรีที่แนะนำต่อวันโดยอิงจาก TDEE และเป้าหมายน้ำหนักของคุณ หากต้องการลดน้ำหนัก คุณจะบริโภคน้อยกว่า TDEE หากต้องการรักษา จะเท่ากับ TDEE หากต้องการเพิ่ม จะมากกว่า TDEE ซึ่งช่วยให้คุณบรรลุการเปลี่ยนแปลงน้ำหนักในอัตราที่ปลอดภัย';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedTh implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การคำนวณเป็นอย่างไร';
	@override String get description => 'เราคำนวณ TDEE (จากโปรไฟล์ของคุณ) แล้วคูณด้วยสัดส่วนของวันที่ผ่านไป (ชั่วโมง + นาที) / 24 เพื่อประมาณแคลอรีที่เผาผลาญไปแล้ว';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTh implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คำแนะนำจากผู้เชี่ยวชาญ';
	@override String get description => 'อย่าใช้การประมาณนี้เพื่อการตัดสินใจทางการแพทย์ โปรดปรึกษาผู้เชี่ยวชาญด้านสุขภาพหรือนักโภชนาการที่ลงทะเบียนสำหรับคำแนะนำเฉพาะบุคคล';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTh implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'อ่านแคลอรีที่เผาผลาญทั้งหมด';
	@override String get description => 'อนุญาตให้แอปอ่านข้อมูลแคลอรีที่เผาผลาญทั้งหมดจาก Health Connect';
	@override String get usage => 'สิทธิ์นี้ใช้เพื่อแสดงการเผาผลาญแคลอรีรายวันในแอป ช่วยให้คุณเข้าใจการใช้พลังงานตลอดวัน';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadTh implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'อ่านข้อมูลโภชนาการ';
	@override String get description => 'อนุญาตให้แอปอ่านข้อมูลโภชนาการจาก Health Connect';
	@override String get usage => 'สิทธิ์นี้ช่วยให้แอปอ่านข้อมูลโภชนาการที่อาจถูกบันทึกโดยแอปอื่นที่เชื่อมต่อกับ Health Connect เพื่อให้มุมมองโภชนาการที่ครบถ้วน';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteTh implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เขียนข้อมูลโภชนาการ';
	@override String get description => 'อนุญาตให้แอปเขียนข้อมูลโภชนาการลงใน Health Connect';
	@override String get usage => 'สิทธิ์นี้ช่วยให้แอปซิงก์มื้ออาหารที่คุณบันทึกไปยัง Health Connect ทำให้ข้อมูลโภชนาการของคุณพร้อมใช้งานกับแอปสุขภาพและฟิตเนสอื่นๆ';
}

/// The flat map containing all translations for locale <th>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTh {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'ไทย',
			'flag' => '🇹🇭',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'คุณส่งคำขอบ่อยเกินไป โปรดรอสักครู่แล้วลองอีกครั้ง',
			'errors.networkError' => 'เกิดข้อผิดพลาดเครือข่าย โปรดตรวจสอบการเชื่อมต่ออินเทอร์เน็ตของคุณ',
			'errors.unknownError' => 'เกิดข้อผิดพลาด โปรดลองอีกครั้งภายหลัง',
			'errors.loadingProfileData' => 'เกิดข้อผิดพลาดขณะโหลดข้อมูลโปรไฟล์',
			'errors.somethingWentWrong' => 'เกิดข้อผิดพลาดบางอย่าง',
			'errors.retry' => 'ลองใหม่',
			'onboarding.welcome' => ({required Object appLabel}) => 'ยินดีต้อนรับสู่ ${appLabel}',
			'onboarding.subtitle' => 'ผู้ช่วยโภชนาการส่วนตัวของคุณ ใช้พลังจาก AI',
			'onboarding.getStarted' => 'เริ่มเลย',
			'onboarding.features.foodRecognition.title' => 'การจดจำอาหารอัจฉริยะ',
			'onboarding.features.foodRecognition.description' => 'ถ่ายรูปแล้วให้ AI ระบุมื้ออาหารของคุณ',
			'onboarding.features.aiAnalysis.title' => 'การวิเคราะห์ด้วย AI',
			'onboarding.features.aiAnalysis.description' => 'รับข้อมูลโภชนาการทันทีจากคำอธิบายของคุณ',
			'onboarding.features.healthIntegration.title' => 'การเชื่อมต่อ Health Connect',
			'onboarding.features.healthIntegration.description' => 'เชื่อมต่อกับ Health Connect เพื่อข้อมูลเชิงลึกที่ดียิ่งขึ้น',
			'onboarding.gender.title' => 'คุณระบุเพศว่าอย่างไร?',
			'onboarding.gender.description' => 'ข้อมูลเพศช่วยให้เราคำนวณอัตราการเผาผลาญพื้นฐาน (BMR) ได้แม่นยำขึ้น',
			'onboarding.gender.next' => 'ถัดไป',
			'onboarding.height.title' => 'คุณสูงเท่าไหร่?',
			'onboarding.height.description' => 'ความสูงช่วยให้เราคำนวณ BMI และความต้องการพลังงานได้อย่างแม่นยำ',
			'onboarding.height.metric' => 'เมตริก',
			'onboarding.height.imperial' => 'อิมพีเรียล',
			'onboarding.height.next' => 'ถัดไป',
			'onboarding.weight.currentTitle' => 'น้ำหนักปัจจุบันของคุณเท่าไหร่?',
			'onboarding.weight.currentDescription' => 'น้ำหนักปัจจุบันจำเป็นสำหรับการปรับเป้าหมายรายวันให้เหมาะกับคุณ',
			'onboarding.weight.targetTitle' => 'น้ำหนักเป้าหมายของคุณคือเท่าไหร่?',
			'onboarding.weight.targetDescription' => 'การตั้งน้ำหนักเป้าหมายช่วยให้เราวางแผนระยะยาวให้เหมาะสม',
			'onboarding.weight.metric' => 'เมตริก',
			'onboarding.weight.imperial' => 'อิมพีเรียล',
			'onboarding.weight.next' => 'ถัดไป',
			'onboarding.age.title' => 'วันเกิดของคุณคือเมื่อไหร่?',
			'onboarding.age.description' => 'อายุช่วยให้เราคำนวณความต้องการแคลอรีได้อย่างแม่นยำ',
			'onboarding.age.next' => 'ถัดไป',
			'onboarding.bmiScale.underweight' => 'ผอมกว่าปกติ',
			'onboarding.bmiScale.healthy' => 'สุขภาพดี',
			'onboarding.bmiScale.overweight' => 'น้ำหนักเกิน',
			'onboarding.bmiScale.obese' => 'อ้วน',
			'onboarding.bmiScale.categories.underweight' => 'น้ำหนักน้อยกว่าเกณฑ์',
			'onboarding.bmiScale.categories.healthyWeight' => 'น้ำหนักในเกณฑ์ดี',
			'onboarding.bmiScale.categories.overweight' => 'น้ำหนักเกิน',
			'onboarding.bmiScale.categories.obese' => 'อ้วน',
			'onboarding.bmiScale.messages.underweight' => 'เราช่วยคุณวางแผนการเพิ่มน้ำหนักอย่างมีสุขภาพ ด้วยมื้ออาหารที่อุดมด้วยสารอาหาร',
			'onboarding.bmiScale.messages.healthy' => 'ยอดเยี่ยม! คุณอยู่ในช่วงสุขภาพดี เราจะช่วยรักษาพลังและความมีชีวิตชีวาไว้ให้',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} จะช่วยให้ง่ายขึ้นด้วยการติดตามโดยใช้ AI เพื่อไปถึงเป้าหมายอย่างสบายใจ',
			'onboarding.bmiScale.messages.obese' => 'เราพร้อมสนับสนุนคุณด้วยคำแนะนำเฉพาะบุคคลและกลยุทธ์ยั่งยืนเพื่อสุขภาพของคุณ',
			'onboarding.weightGoal.title' => 'เป้าหมายของคุณคืออะไร?',
			'onboarding.weightGoal.description' => 'เลือกเป้าหมายที่ตรงกับสิ่งที่คุณต้องการบรรลุ',
			'onboarding.activityLevel.title' => 'คุณมีกิจกรรมระดับไหน?',
			'onboarding.activityLevel.description' => 'ข้อมูลนี้ช่วยให้เราคำนวณความต้องการแคลอรีรายวันได้แม่นยำขึ้น',
			'onboarding.healthConnect.title' => 'เชื่อมต่อกับ Health Connect',
			'onboarding.healthConnect.description' => 'ซิงก์ข้อมูลสุขภาพของคุณเพื่อการวิเคราะห์และติดตามแคลอรีอัตโนมัติ',
			'onboarding.healthConnect.automaticTracking.title' => 'การติดตามแคลอรีอัตโนมัติ',
			'onboarding.healthConnect.automaticTracking.description' => 'ติดตามแคลอรีที่เผาผลาญจากแอปฟิตเนสของคุณ',
			'onboarding.healthConnect.progressInsights.title' => 'ข้อมูลเชิงลึกเกี่ยวกับความคืบหน้า',
			'onboarding.healthConnect.progressInsights.description' => 'รับข้อมูลเชิงลึกละเอียดเกี่ยวกับแนวโน้มสุขภาพของคุณ',
			'onboarding.healthConnect.seamlessIntegration.title' => 'การเชื่อมต่ออย่างราบรื่น',
			'onboarding.healthConnect.seamlessIntegration.description' => 'ซิงก์ข้อมูลจากแอปสุขภาพที่คุณชื่นชอบ',
			'onboarding.healthConnect.connected' => 'เชื่อมต่อกับ Health Connect แล้ว',
			'onboarding.healthConnect.notConnected' => 'ยังไม่ได้เชื่อมต่อกับ Health Connect',
			'onboarding.healthConnect.setup' => 'ตั้งค่า Health Connect',
			'onboarding.healthConnect.skipForNow' => 'ข้ามก่อน',
			'onboarding.healthConnect.statusConnected' => 'Health Connect ถูกเชื่อมต่อแล้ว',
			'onboarding.healthConnect.statusSuccess' => 'เชื่อมต่อกับ Health Connect สำเร็จ!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'การอนุญาตถูกปฏิเสธ โปรดเปิดสิทธิ์ Health Connect ในการตั้งค่าบนโทรศัพท์สำหรับ ${appLabel}',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'เกิดข้อผิดพลาดขณะตั้งค่า Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'คุณไม่ได้อยู่คนเดียว',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'งานวิจัยแสดงให้เห็นว่าการบันทึกอย่างสม่ำเสมอเป็นปัจจัยทำนายอันดับ 1 ของความสำเร็จในระยะยาว',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'สำหรับคนอายุ ${age} ปี ที่เป็น ${gender} และต้องการ ${goal} การบันทึกอย่างสม่ำเสมอเป็นปัจจัยทำนายความสำเร็จอันดับ 1',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} ทำให้การทำงานนี้ง่ายขึ้นเป็น 10 เท่าเมื่อเทียบกับการทำด้วยตนเอง',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'พร้อมเริ่มหรือยัง?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'ถ่ายรูปมื้ออาหารเพื่อการวิเคราะห์ทันที',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'บันทึกต่อเนื่องเพื่อเห็นความก้าวหน้าอย่างมีนัยสำคัญ',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'ติดตามความคืบหน้าเป็นประจำทุกวันเพื่อรักษาแรงจูงใจ',
			'onboarding.reinforcement.trackingSuccess.button' => 'ไปกันเลย',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'บุคคล',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'คุณที่สุขภาพดีขึ้น',
			'onboarding.reinforcement.healthProfile.title' => 'โปรไฟล์สุขภาพของคุณ',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'จากข้อมูลของคุณ ค่า BMI คือ ${bmi}',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'มาปิดท้ายโปรไฟล์ให้เรียบร้อยเพื่อปรับประสบการณ์ให้เหมาะกับคุณ',
			'onboarding.reinforcement.healthProfile.goalGain' => 'เพิ่ม',
			'onboarding.reinforcement.healthProfile.goalLose' => 'ลด',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'เพื่อไปถึงเป้าหมาย คุณจะต้อง${direction} ${diff} ${unit}',
			'onboarding.reinforcement.healthProfile.goalReached' => 'คุณอยู่ที่น้ำหนักเป้าหมายแล้ว! เราจะช่วยคุณรักษาไว้',
			'onboarding.reinforcement.healthProfile.button' => 'ไปกันเลย',
			'onboarding.reinforcement.goalLifestyle.title' => 'เริ่มต้นได้ยอดเยี่ยม!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'คุณได้ก้าวแรกสู่ ${goalText} แล้ว เนื่องจากคุณ ${activityText} ${appLabel} จะปรับเป้าหมายให้สอดคล้องกับไลฟ์สไตล์ของคุณ',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'เป้าหมายแคลอรีที่ปรับให้เหมาะกับคุณ',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'การตรวจจับมื้ออาหารด้วย AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'การแยกสารอาหารหลักอย่างละเอียด',
			'onboarding.reinforcement.goalLifestyle.button' => 'ไปกันเลย',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'เป้าหมายของคุณ',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'กระตือรือร้น',
			'tabs.dashboard' => 'แดชบอร์ด',
			'tabs.history' => 'ประวัติ',
			'home.aiSummary.title' => 'สรุปโดย AI ของคุณ',
			'home.aiSummary.logMore' => 'บันทึกมื้ออาหารเพิ่มเติมในอีกไม่กี่วันข้างหน้าเพื่อรับข้อมูล AI ที่ปรับให้เฉพาะคุณ',
			'home.aiSummary.loading' => 'กำลังโหลดสรุปของคุณ…',
			'home.aiSummary.mealCount' => ({required Object count}) => 'บันทึก ${count} มื้อ',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'คะแนนสมดุล ${score}',
			'home.aiSummary.topFoods' => 'อาหารยอดนิยม',
			'home.aiSummary.trendUp' => 'แคลอรีเพิ่มขึ้น',
			'home.aiSummary.trendDown' => 'แคลอรีลดลง',
			'home.aiSummary.trendSteady' => 'แคลอรีคงที่',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'อัปเดตเมื่อ ${time}',
			'home.dailyGoal.title' => 'ตั้งเป้าหมายรายวันของคุณ',
			'home.dailyGoal.titleSet' => 'เป้าหมายรายวันของคุณ',
			'home.dailyGoal.description' => 'พร้อมเริ่มต้นการเดินทางสู่ความเป็นอยู่ที่ดีหรือยัง? ตั้งเป้าหมายแคลอรีรายวันด้านล่างเพื่อเริ่มต้นความก้าวหน้า',
			'home.dailyGoal.descriptionSet' => 'เข็มทิศของคุณถูกตั้งแล้ว! นี่คือเป้าหมายแคลอรีรายวันของคุณ',
			'home.dailyGoal.yourGoal' => 'เป้าหมายของคุณ',
			'home.dailyGoal.goal' => 'เป้าหมาย',
			'home.dailyGoal.dailyCalories' => 'แคลอรีต่อวัน (kcal)',
			'home.dailyGoal.setGoal' => 'ตั้งเป้าหมาย',
			'home.dailyGoal.intake' => 'รับเข้า',
			'home.dailyGoal.burned' => 'เผาผลาญ',
			'home.dailyGoal.weightImpact' => 'ผลต่อ น้ำหนัก',
			'home.dailyGoal.estLoss' => 'คาดการณ์การลด',
			'home.dailyGoal.estGain' => 'คาดการณ์การเพิ่ม',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'สรุประหว่างวัน',
			'home.dailySummary.calories' => 'แคลอรี',
			'home.dailySummary.carbs' => 'คาร์โบไฮเดรต',
			'home.dailySummary.protein' => 'โปรตีน',
			'home.dailySummary.fat' => 'ไขมัน',
			'home.dailySummary.fiber' => 'ใยอาหาร',
			'home.dailySummary.grams' => 'กรัม',
			'home.dailySummary.chartAccessibilityLabel' => 'กราฟสารอาหารหลัก',
			'home.intakeProgress.title' => 'สัดส่วนสารอาหารวันนี้',
			'home.intakeProgress.target' => 'เป้าหมาย',
			'home.intakeProgress.current' => 'ปัจจุบัน',
			'home.intakeHistory.title' => 'ประวัติสารอาหาร 7 วัน',
			'home.intakeHistory.trendTitle' => 'แนวโน้มวันนี้',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'ชั่วโมงสูงสุด: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'ยังไม่มีประวัติ',
			'home.intakeHistory.startLogging' => 'เริ่มบันทึกมื้ออาหารเพื่อดู\nแนวโน้มสารอาหาร 7 วันที่นี่',
			'home.mealLog.title' => 'มื้อที่บันทึกแล้ว',
			'home.mealLog.emptyMessage' => 'ถ่ายรูปมื้อสุดท้ายของคุณเพื่อบันทึกที่นี่',
			'home.mealLog.noMealsToday' => 'ยังไม่มีมื้อบันทึกสำหรับวันนี้',
			'home.mealLog.seeAllMeals' => 'ดูมื้อทั้งหมด',
			'home.mealDescription.title' => 'เพิ่มด่วนด้วย AI',
			'home.mealDescription.description' => 'อธิบายมื้อของคุณ แล้วให้ AI จัดการรายละเอียด',
			'home.mealDescription.hint' => 'เช่น มื้อเช้าฉันทานโจ๊กถ้วยใหญ่กับกล้วยหั่นและเวย์โปรตีนหนึ่งช้อน ...',
			'home.mealDescription.analyzeMeal' => 'วิเคราะห์มื้อ',
			'home.favoriteMeals.title' => 'มื้อโปรด',
			'home.favoriteMeals.description' => 'เพิ่มมื้อโปรดของคุณได้อย่างรวดเร็ว',
			'home.favoriteMeals.noFavorites' => 'ยังไม่มีมื้อโปรด',
			'home.favoriteMeals.addFavoriteHint' => 'คลิกดาวบนมื้อเพื่อทำเครื่องหมายเป็นโปรด',
			'home.favoriteMeals.seeAll' => 'ดูทั้งหมด',
			'home.favoriteMeals.add' => 'เพิ่ม',
			'home.mealSnap.title' => 'ถ่ายรูป & ติดตามมื้ออาหาร',
			'home.mealSnap.description' => 'ใช้กล้องถ่ายรูปอาหารเพื่อให้ AI วิเคราะห์',
			'home.mealSnap.openCamera' => 'เปิดกล้อง',
			'home.mealSnap.gallery' => 'แกลเลอรี',
			'home.mealSnap.compressingPhoto' => 'กำลังปรับขนาดรูป…',
			'home.mealSnap.uploadingPhoto' => 'กำลังอัปโหลดรูป…',
			'home.connectHealth.title' => 'ซิงก์กับ Health Connect',
			'home.connectHealth.description' => 'ซิงก์ข้อมูลโภชนาการของคุณกับ Health Connect',
			'home.connectHealth.install' => 'ติดตั้ง',
			'home.connectHealth.connect' => 'เชื่อมต่อ',
			'history.noMeals' => 'ยังไม่มีมื้อบันทึก',
			'history.emptyMessage' => 'ถ่ายรูปมื้อสุดท้ายของคุณเพื่อบันทึกที่นี่',
			'history.today' => 'วันนี้',
			'history.yesterday' => 'เมื่อวาน',
			'meal.ohNo' => 'โอ้ ไม่!',
			'meal.delete' => 'ลบ',
			'meal.editMeal' => 'แก้ไขมื้อ',
			'meal.addMeal' => 'เพิ่มมื้อ',
			'meal.saveMeal' => 'บันทึกมื้อ',
			'meal.save' => 'บันทึก',
			'meal.mealName' => 'ชื่อมื้อ',
			'meal.mealNameHint' => 'เช่น ไข่คนกับขนมปังปิ้ง',
			'meal.mealQuantity' => 'ปริมาณมื้อ',
			'meal.mealQuantityHint' => 'เช่น 1 ถ้วย, 2 แผ่น',
			'meal.timeOfMeal' => 'เวลารับประทาน',
			'meal.timeOfMealHint' => 'เลือกเวลาที่คุณทานมื้ออาหาร',
			'meal.mealType' => 'ประเภทมื้อ',
			'meal.nutrition.calories' => 'แคลอรี',
			'meal.nutrition.carbs' => 'คาร์บ (g)',
			'meal.nutrition.protein' => 'โปรตีน (g)',
			'meal.nutrition.fat' => 'ไขมัน (g)',
			'meal.nutrition.fiber' => 'ใยอาหาร (g)',
			'meal.deleteConfirmation.title' => 'ลบมื้ออาหาร',
			'meal.deleteConfirmation.message' => 'คุณแน่ใจว่าต้องการลบรายการมื้อนี้หรือไม่?',
			'meal.deleteConfirmation.cancel' => 'ยกเลิก',
			'meal.deleteConfirmation.delete' => 'ลบ',
			'meal.addedToLog' => 'เพิ่มมื้อในบันทึกแล้ว!',
			'meal.couldNotAdd' => ({required Object error}) => 'ไม่สามารถเพิ่มมื้อได้: ${error}',
			'meal.savedSuccessfully' => 'เพิ่มมื้อเรียบร้อยแล้ว!',
			'meal.updatedSuccessfully' => 'แก้ไขมื้อเรียบร้อยแล้ว!',
			'meal.errorSaving' => ({required Object error}) => 'เกิดข้อผิดพลาดขณะบันทึกมื้อ: ${error}',
			'meal.removedFromFavorites' => 'ยกเลิกจากรายการโปรดแล้ว!',
			'meal.savedAsFavorite' => 'บันทึกมื้อเป็นโปรดแล้ว!',
			'meal.unfavorite' => 'ยกเลิกโปรด',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'ไม่สามารถอัปเดตสถานะโปรดได้: ${error}',
			'meal.feedbackThanks' => 'ขอบคุณสำหรับคำติชม!',
			'meal.reanalysisUpdated' => 'อัปเดตการวิเคราะห์มื้อตามคำติชมของคุณแล้ว',
			'meal.failedToProcess' => ({required Object error}) => 'ไม่สามารถประมวลผลได้: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'ไม่สามารถประมวลผลรูปได้: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'เกิดข้อผิดพลาดในการบีบอัดรูป: ${error}',
			'meal.failedToSave' => 'ไม่สามารถบันทึกข้อมูลได้ โปรดลองอีกครั้ง',
			'meal.skip' => 'ข้าม',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'คำถาม ${current} จาก ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'ไม่มีคำถาม',
			'meal.questionFlow.next' => 'ถัดไป',
			'meal.questionFlow.continueLabel' => 'ดำเนินการต่อ',
			'meal.analysis.title' => 'กำลังวิเคราะห์มื้อของคุณ',
			'meal.analysis.stepStarted' => 'เริ่มต้น…',
			'meal.analysis.stepDecomposition' => 'กำลังทำความเข้าใจมื้อ…',
			'meal.analysis.stepIngredients' => 'จับคู่ส่วนผสมกับข้อมูลโภชนาการ…',
			'meal.analysis.stepUncertainty' => 'ตรวจสอบความมั่นใจ…',
			'meal.analysis.stepMealTypeQuestion' => 'เกือบเสร็จแล้ว…',
			'meal.analysis.stepResult' => 'สรุปผล…',
			'meal.analysis.stepError' => 'เกิดข้อผิดพลาดบางอย่าง',
			'meal.analysis.stepDefault' => 'กำลังวิเคราะห์มื้อของคุณ…',
			'meal.analysis.progressUnderstand' => 'กำลังทำความเข้าใจมื้อ',
			'meal.analysis.progressMatch' => 'กำลังค้นหาข้อมูลโภชนาการของส่วนผสม',
			'meal.analysis.progressCheck' => 'กำลังตรวจสอบขนาดส่วนและความมั่นใจ',
			'meal.analysis.progressMealType' => 'กำลังเลือกประเภทมื้อ',
			'meal.analysis.progressFinish' => 'กำลังคำนวณแคลอรีและสารอาหารหลัก',
			'meal.analysis.detectedIngredientHeading' => 'ส่วนผสมที่เราพบ',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => 'มีอีก ${count}',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'ตรวจพบ ${count} ส่วนผสม',
			'meal.analysis.ingredientsPending' => 'กำลังสแกนส่วนผสม…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'เคล็ดลับ: ความสม่ำเสมอกำลังกว่าความสมบูรณ์ — การบันทึกสม่ำเสมอเผยรูปแบบที่สำคัญ',
			'meal.analysis.offlineTip1' => 'เคล็ดลับ: สำหรับรูป ให้ใช้แสงธรรมชาติและมุมมองจากด้านบนเพื่อความแม่นยำของปริมาณ',
			'meal.analysis.offlineTip2' => 'เคล็ดลับ: ระบุเครื่องดื่ม น้ำจิ้ม และน้ำมันที่ใช้ปรุง — สิ่งเหล่านี้เพิ่มแคลอรีที่คนมักลืม',
			'meal.analysis.offlineTip3' => 'เคล็ดลับ: ระบุขนาดคร่าวๆ (1 ถ้วย, กาแฟแก้วใหญ่) จะช่วยให้การประเมินคมชัดขึ้น',
			'meal.analysis.offlineTip4' => 'เคล็ดลับ: บันทึกหลังมื้อยังช่วยสร้างนิสัยได้ ความสมบูรณ์ไม่จำเป็น',
			'meal.analysis.offlineTip5' => 'เคล็ดลับ: ระบุวิธีการปรุงเมื่อส่งผลต่อแคลอรีมาก (ทอด vs อบ)',
			'meal.feedback.title' => 'อะไรที่ดูผิดพลาด?',
			'meal.feedback.subtitle' => 'ช่วยเราปรับปรุงการวิเคราะห์โดยเลือกปัญหาหนึ่งข้อหรือหลายข้อ',
			'meal.feedback.tellUsMore' => 'บอกเพิ่มเติม',
			'meal.feedback.describeIncorrect' => 'อธิบายสิ่งที่ไม่ถูกต้อง',
			'meal.feedback.submit' => 'ส่ง',
			'meal.feedback.issueFoodIdentification' => 'การระบุอาหาร',
			'meal.feedback.issuePortionSize' => 'ขนาดส่วน',
			'meal.feedback.issueCalorieDistribution' => 'การแจกแจงแคลอรี',
			'meal.feedback.issueMacrosWrong' => 'สารอาหารหลักผิด',
			'meal.feedback.issueMissingItems' => 'ขาดรายการ',
			'meal.feedback.issueExtraItems' => 'มีรายการเกิน',
			'meal.feedback.issueOther' => 'อื่นๆ',
			'meal.nameRequired' => 'กรุณาใส่ชื่อมื้ออาหารก่อนบันทึก.',
			'favorites.title' => 'รายการโปรด',
			'favorites.empty' => 'ยังไม่มีมื้อโปรด',
			'favorites.searchPlaceholder' => 'ค้นหามื้อโปรด',
			'favorites.searchEmptyTitle' => 'ไม่มีรายการโปรดที่ตรงกับการค้นหา',
			'favorites.searchEmptySubtitle' => 'ลองใช้ชื่อมื้อ ปริมาณ หรือประเภทมื้ออื่น',
			'favorites.sortLabel' => 'จัดเรียงรายการโปรด',
			'favorites.undo' => 'ยกเลิก',
			'favorites.removed' => ({required Object name}) => 'นำ ${name} ออกจากรายการโปรดแล้ว',
			'favorites.sortOptions.recent' => 'ล่าสุด',
			'favorites.sortOptions.calories' => 'แคลอรี',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'โปรไฟล์',
			'profile.noProfileData' => 'ไม่พบข้อมูลโปรไฟล์',
			'profile.yourProfile' => 'โปรไฟล์ของคุณ',
			'profile.viewAndManage' => 'ดูและจัดการข้อมูลสุขภาพของคุณ',
			'profile.sections.profile' => 'โปรไฟล์',
			'profile.sections.basicInformation' => 'ข้อมูลพื้นฐาน',
			'profile.sections.goalsAndActivity' => 'เป้าหมาย & กิจกรรม',
			'profile.sections.calculatedValues' => 'ค่าที่คำนวณได้',
			'profile.gender' => 'เพศ',
			'profile.height' => 'ความสูง',
			'profile.weight' => 'น้ำหนัก',
			'profile.age' => 'อายุ',
			'profile.weightGoal' => 'เป้าหมายน้ำหนัก',
			'profile.targetWeight' => 'น้ำหนักเป้าหมาย',
			'profile.activityLevel' => 'ระดับกิจกรรม',
			'profile.healthMetrics' => 'ตัวชี้วัดสุขภาพ',
			'profile.notSet' => 'ยังไม่ได้ตั้งค่า',
			'profile.years' => 'ปี',
			'profile.updatedSuccessfully' => 'อัปเดตโปรไฟล์เรียบร้อยแล้ว!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'เป้าหมายรายวัน',
			'profile.calculatedValues.calPerDay' => 'แคล/วัน',
			'profile.calculatedValues.notAvailable' => 'ไม่มีข้อมูล',
			'healthScore.title' => 'คะแนนสุขภาพ',
			'healthScore.whyThisScore' => 'ทำไมได้คะแนนนี้?',
			'healthScore.note' => 'คะแนนนี้เป็นการประมาณของ AI โดยอิงจากส่วนผสมที่ระบุและความหนาแน่นทางโภชนาการ ควรปรึกษาผู้เชี่ยวชาญสำหรับคำแนะนำด้านอาหารที่เฉพาะเจาะจง',
			'healthScore.unhealthy' => 'ไม่แข็งแรง',
			'healthScore.healthy' => 'แข็งแรง',
			'healthScore.neutral' => 'ปานกลาง',
			'editProfile.title' => 'แก้ไขโปรไฟล์',
			'editProfile.sections.personalInformation' => 'ข้อมูลส่วนบุคคล',
			'editProfile.sections.physicalMeasurements' => 'การวัดสัดส่วนร่างกาย',
			'editProfile.sections.goalsAndActivity' => 'เป้าหมาย & กิจกรรม',
			'editProfile.gender' => 'เพศ',
			'editProfile.dateOfBirth' => 'วันเกิด',
			'editProfile.height' => 'ความสูง',
			'editProfile.weight' => 'น้ำหนัก',
			'editProfile.weightGoal' => 'เป้าหมายน้ำหนัก',
			'editProfile.activityLevel' => 'ระดับกิจกรรม',
			'editProfile.metric' => 'เมตริก',
			'editProfile.imperial' => 'อิมพีเรียล',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'เมตริก (cm)',
			'editProfile.imperialFtIn' => 'อิมพีเรียล (ft/in)',
			'editProfile.metricKg' => 'เมตริก (kg)',
			'editProfile.imperialLbs' => 'อิมพีเรียล (lbs)',
			'editProfile.genders.male' => 'ชาย',
			'editProfile.genders.female' => 'หญิง',
			'editProfile.genders.other' => 'อื่นๆ',
			'editProfile.weightGoals.loseWeight.name' => 'ลดน้ำหนัก',
			'editProfile.weightGoals.loseWeight.description' => 'สร้างการขาดแคลอรีเพื่อลดน้ำหนัก',
			'editProfile.weightGoals.maintainWeight.name' => 'รักษาน้ำหนัก',
			'editProfile.weightGoals.maintainWeight.description' => 'รักษาน้ำหนักปัจจุบัน',
			'editProfile.weightGoals.gainWeight.name' => 'เพิ่มน้ำหนัก',
			'editProfile.weightGoals.gainWeight.description' => 'สร้างการเกินแคลอรีเพื่อเพิ่มน้ำหนัก',
			'editProfile.activityLevels.sedentary.name' => 'อยู่นิ่ง',
			'editProfile.activityLevels.sedentary.description' => 'ออกกำลังกายน้อยหรือแทบไม่มี',
			'editProfile.activityLevels.lightlyActive.name' => 'เคลื่อนไหวเล็กน้อย',
			'editProfile.activityLevels.lightlyActive.description' => 'ออกกำลังกายเบา 1-3 วัน/สัปดาห์',
			'editProfile.activityLevels.moderatelyActive.name' => 'เคลื่อนไหวปานกลาง',
			'editProfile.activityLevels.moderatelyActive.description' => 'ออกกำลังกายปานกลาง 3-5 วัน/สัปดาห์',
			'editProfile.activityLevels.veryActive.name' => 'เคลื่อนไหวมาก',
			'editProfile.activityLevels.veryActive.description' => 'ออกกำลังกายหนัก 6-7 วัน/สัปดาห์',
			'editProfile.activityLevels.extremelyActive.name' => 'เคลื่อนไหวหนักมาก',
			'editProfile.activityLevels.extremelyActive.description' => 'ออกกำลังกายหนักมาก หรืองานที่ต้องใช้แรงกาย',
			'settings.title' => 'การตั้งค่า',
			'settings.sections.profile' => 'โปรไฟล์',
			'settings.sections.localization' => 'การตั้งค่าภาษา',
			'settings.sections.notifications' => 'การแจ้งเตือน',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.supportAndLegal' => 'การสนับสนุน & กฎหมาย',
			'settings.sections.about' => 'เกี่ยวกับ',
			'settings.sections.dangerZone' => 'โซนอันตราย',
			'settings.sections.developer' => 'นักพัฒนา',
			'settings.editProfile.title' => 'แก้ไขโปรไฟล์',
			'settings.editProfile.subtitle' => 'อัปเดตข้อมูลส่วนตัวของคุณ',
			'settings.language.title' => 'ภาษา',
			'settings.language.subtitle' => 'เลือกภาษาที่ต้องการ',
			'settings.language.searchHint' => 'ค้นหาภาษา...',
			'settings.language.noResults' => 'ไม่พบผลลัพธ์',
			'settings.heightUnit.title' => 'หน่วยความสูง',
			'settings.weightUnit.title' => 'หน่วยน้ำหนัก',
			'settings.mealReminders.title' => 'การแจ้งเตือนมื้ออาหาร',
			'settings.mealReminders.subtitle' => 'เตือนให้บันทึกมื้ออย่างสม่ำเสมอ',
			'settings.theme.title' => 'ธีม',
			'settings.theme.light' => 'สว่าง',
			'settings.theme.dark' => 'มืด',
			'settings.theme.system' => 'ระบบ',
			'settings.sendFeedback.title' => 'ส่งคำติชม',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'ช่วยให้ ${appLabel} ดีขึ้น',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'ข้อเสนอแนะสำหรับแอป ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'โปรดส่งคำติชมของคุณด้านล่าง:',
			'settings.sendFeedback.appVersion' => 'เวอร์ชันแอป',
			'settings.sendFeedback.device' => 'อุปกรณ์',
			'settings.sendFeedback.osVersion' => 'รุ่นระบบปฏิบัติการ',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'ส่งออกประวัติมื้ออาหาร',
			'settings.exportMealHistory.subtitle' => 'แชร์ไฟล์ CSV ของมื้อที่คุณบันทึก',
			'settings.exportMealHistory.shareText' => 'การส่งออกประวัติมื้อของคุณจาก Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'ไม่สามารถส่งออกประวัติการมื้ออาหารได้: ${error}',
			'settings.clearAllData.title' => 'ล้างข้อมูลทั้งหมด',
			'settings.clearAllData.subtitle' => 'ลบข้อมูลทั้งหมดอย่างถาวร',
			'settings.clearAllData.confirmationTitle' => 'ล้างข้อมูลทั้งหมด?',
			'settings.clearAllData.confirmationMessage' => 'การกระทำนี้ไม่สามารถย้อนกลับได้ ข้อมูลมื้อทั้งหมด รายการโปรด และการตั้งค่าโปรไฟล์ของคุณจะถูกลบอย่างถาวร',
			'settings.clearAllData.cancel' => 'ยกเลิก',
			'settings.clearAllData.clearEverything' => 'ล้างทั้งหมด',
			'settings.debugOptions.title' => 'ตัวเลือกดีบัก',
			'settings.developerModeEnabled' => 'เปิดโหมดนักพัฒนาแล้ว!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'ดูและจัดการสิทธิ์',
			'settings.healthConnect.unavailable.title' => 'ไม่พบ Health Connect',
			'settings.healthConnect.unavailable.description' => 'อุปกรณ์นี้ไม่มี Health Connect โปรดติดตั้ง Health Connect จาก Play Store (Android 9+) หรืออัปเดตเป็น Android 14+',
			'settings.healthConnect.permissions.title' => 'สิทธิ์',
			'settings.healthConnect.permissions.description' => 'ขอสิทธิ์ต่อไปนี้เพื่อนำเสนอการรวมกับ Health Connect:',
			'settings.healthConnect.permissions.granted' => 'ได้รับอนุญาตแล้ว',
			'settings.healthConnect.permissions.notGranted' => 'ยังไม่ได้รับอนุญาต',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'อ่านแคลอรีที่เผาผลาญทั้งหมด',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'อนุญาตให้แอปอ่านข้อมูลแคลอรีที่เผาผลาญทั้งหมดจาก Health Connect',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'สิทธิ์นี้ใช้เพื่อแสดงการเผาผลาญแคลอรีรายวันในแอป ช่วยให้คุณเข้าใจการใช้พลังงานตลอดวัน',
			'settings.healthConnect.permissions.nutritionRead.title' => 'อ่านข้อมูลโภชนาการ',
			'settings.healthConnect.permissions.nutritionRead.description' => 'อนุญาตให้แอปอ่านข้อมูลโภชนาการจาก Health Connect',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'สิทธิ์นี้ช่วยให้แอปอ่านข้อมูลโภชนาการที่อาจถูกบันทึกโดยแอปอื่นที่เชื่อมต่อกับ Health Connect เพื่อให้มุมมองโภชนาการที่ครบถ้วน',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'เขียนข้อมูลโภชนาการ',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'อนุญาตให้แอปเขียนข้อมูลโภชนาการลงใน Health Connect',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'สิทธิ์นี้ช่วยให้แอปซิงก์มื้ออาหารที่คุณบันทึกไปยัง Health Connect ทำให้ข้อมูลโภชนาการของคุณพร้อมใช้งานกับแอปสุขภาพและฟิตเนสอื่นๆ',
			'settings.healthConnect.managePermissions' => 'จัดการสิทธิ์',
			'settings.healthConnect.openSettings' => 'เปิดการตั้งค่า Health Connect',
			'settings.healthConnect.requestPermissions' => 'ขอสิทธิ์',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'การขอสิทธิ์ถูกยกเลิกหรือไม่สำเร็จ โปรดลองอีกครั้งหรือให้สิทธิ์ด้วยตนเองในการตั้งค่า Health Connect',
			'settings.healthConnect.permissionRequestFailed' => 'ไม่สามารถขอสิทธิ์ได้ โปรดลองอีกครั้งหรือให้สิทธิ์ด้วยตนเองในการตั้งค่า Health Connect',
			'settings.healthConnect.requestingPermissions' => 'กำลังขอ...',
			'settings.about.title' => 'เกี่ยวกับ',
			'settings.about.tagline' => 'รู้เท่าทันแคลอรีอย่างรวดเร็ว ฟรี และให้ความสำคัญกับความเป็นส่วนตัว',
			'settings.about.ourStory.title' => 'เรื่องราวของเรา',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} เกิดจากความรู้สึกหงุดหงิดอย่างง่าย: แอปติดตามแคลอรีส่วนใหญ่ซับซ้อนเกินไป ต้องกรอกข้อมูลด้วยตลอด มีค่าใช้จ่ายสมัครสมาชิกราคาแพง หรือประนีประนอมด้านความเป็นส่วนตัว\n\nในฐานะนักพัฒนาเดี่ยว ผมต้องการสร้างสิ่งที่เรียบง่ายและเป็นธรรมกว่า — แอปที่ใช้ AI เพื่อลดความยุ่งยาก ทำงานเร็วและใช้ฟรี และเคารพข้อมูลสุขภาพของคุณ\n\n${appLabel} คือแอปที่ผมอยากให้มีอยู่: ไม่มีบัญชี ไม่มีการติดตาม ไม่มีโฆษณา — มีเพียงข้อมูลเชิงปฏิบัติที่ชัดเจนและเป้าหมายด้านสุขภาพของคุณ',
			'settings.about.privacy.title' => 'ความเป็นส่วนตัวของคุณสำคัญ',
			'settings.about.privacy.description' => 'ความเป็นส่วนตัวไม่ใช่เรื่องรอง — แต่เป็นหลักการออกแบบ ต่อไปนี้คือสิ่งที่หมายถึงในการใช้งานจริง:',
			'settings.about.privacy.noAccounts' => 'ไม่ต้องมีบัญชี\nใช้แอปได้ทันที ไม่ต้องสมัคร ไม่ต้องระบุตัวตน',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'ไม่มีการติดตามพฤติกรรม\n${appLabel} จะไม่ตรวจสอบกิจกรรมของคุณ สร้างโปรไฟล์การใช้งาน หรือติดตามข้ามแอปหรือเว็บไซต์',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'ออกแบบให้ไม่มีโฆษณา\n${appLabel} ถูกสร้างมาให้ทำงานได้โดยไม่ต้องใช้โฆษณาหรือหารายได้จากข้อมูล',
			'settings.about.privacy.noDataSelling' => 'ไม่ขายข้อมูล\nข้อมูลสุขภาพของคุณจะไม่ถูกขายหรือแบ่งปันกับบุคคลที่สาม',
			'settings.about.privacy.localStorage' => 'เก็บข้อมูลบนเครื่องเป็นหลัก\nข้อมูลของคุณอยู่บนอุปกรณ์ของคุณ',
			'settings.about.privacy.privacyPolicy' => 'นโยบายความเป็นส่วนตัว',
			'settings.about.developer.title' => 'สร้างโดยนักพัฒนาเดี่ยว',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} ถูกสร้างและดูแลโดยนักพัฒนาเดี่ยวที่มุ่งมั่นสร้างซอฟต์แวร์ด้านสุขภาพที่สงบและเคารพความเป็นส่วนตัว\n\nคำติชมถูกอ่านด้วยตนเองและมีส่วนช่วยกำหนดทิศทางของแอป',
			'settings.about.developer.website' => 'เว็บไซต์',
			'settings.about.developer.email' => 'อีเมล',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'ชอบ ${appLabel} ไหม?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'คำติชมของคุณช่วยให้ ${appLabel} ดีขึ้นสำหรับทุกคน',
			'settings.about.feedback.rateApp' => 'ให้คะแนนบน Play Store',
			'settings.about.feedback.sendFeedback' => 'ส่งคำติชม',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'บิลด์ ${buildNumber}',
			'reminders.title' => 'เตือนให้สม่ำเสมอด้วยการแจ้งเตือน',
			'reminders.description' => 'รับการเตือนอ่อนโยนให้บันทึกมื้อและรักษาความต่อเนื่องในเป้าหมายโภชนาการ',
			'reminders.notificationsEnabled' => 'เปิดการแจ้งเตือนแล้ว',
			'reminders.notificationsDisabled' => 'ปิดการแจ้งเตือนแล้ว',
			'reminders.enabledSubtitle' => 'คุณจะได้รับการแจ้งเตือนเกี่ยวกับมื้ออาหาร',
			'reminders.disabledSubtitle' => 'เปิดการแจ้งเตือนเพื่อรับการเตือนมื้ออาหาร',
			'reminders.mealReminders' => 'การเตือนมื้ออาหาร',
			'reminders.breakfast' => 'มื้อเช้า',
			'reminders.lunch' => 'มื้อกลางวัน',
			'reminders.dinner' => 'มื้อเย็น',
			'reminders.snack' => 'ของว่าง',
			'reminders.unknown' => 'ไม่ทราบ',
			'reminders.change' => 'เปลี่ยน',
			'reminders.enableNotifications' => 'เปิดการแจ้งเตือน',
			'reminders.skipForNow' => 'ข้ามก่อน',
			'reminders.saveChanges' => 'บันทึกการเปลี่ยนแปลง',
			'reminders.enabledSuccessfully' => 'เปิดการแจ้งเตือนเรียบร้อยแล้ว!',
			'reminders.permissionDenied' => 'การอนุญาตแจ้งเตือนถูกปฏิเสธ',
			'reminders.errorEnabling' => ({required Object error}) => 'เกิดข้อผิดพลาดขณะเปิดการแจ้งเตือน: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'เกิดข้อผิดพลาดขณะทำการตั้งค่าให้เสร็จ: ${error}',
			'notifications.breakfast.title' => 'เวลาอาหารเช้า! 🍳',
			'notifications.breakfast.body' => 'อย่าลืมบันทึกมื้อเช้าของคุณ',
			'notifications.lunch.title' => 'เวลาอาหารกลางวัน! 🥗',
			'notifications.lunch.body' => 'ถึงเวลาบันทึกมื้อกลางวันแล้ว',
			'notifications.dinner.title' => 'เวลามื้อเย็น! 🍽️',
			'notifications.dinner.body' => 'อย่าลืมบันทึกมื้อเย็นของคุณ',
			'notifications.snack.title' => 'เวลาของว่าง! 🍎',
			'notifications.snack.body' => 'ถึงเวลาสำหรับของว่างเพื่อสุขภาพ',
			'notifications.test.title' => 'ทดสอบการแจ้งเตือน',
			'login.title' => 'เข้าสู่ระบบ',
			'login.signInWithGoogle' => 'ลงชื่อเข้าใช้ด้วย Google',
			'login.signInFailed' => 'การเข้าสู่ระบบด้วย Google ล้มเหลวหรือถูกยกเลิก',
			'disclaimer.pleaseNote' => 'โปรดทราบ',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} ให้ข้อมูลโภชนาการโดยประมาณ ความแม่นยำขึ้นอยู่กับข้อมูลที่คุณป้อนและความหลากหลายของอาหาร ใช้เป็นแนวทาง ไม่ใช่แหล่งข้อมูลที่ชัดเจนที่สุด ปรึกษาผู้เชี่ยวชาญสำหรับคำแนะนำทางโภชนาการเฉพาะบุคคล',
			'disclaimer.snap.portionSize.title' => 'ขนาดส่วน',
			'disclaimer.snap.portionSize.description' => 'ความแม่นยำของการประมาณพึ่งพาการประเมินขนาดส่วนที่ถูกต้องของคุณอย่างมาก',
			'disclaimer.snap.preparationMethods.title' => 'วิธีการปรุง',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'วิธีการปรุงอาหารสามารถเปลี่ยนปริมาณโภชนาการได้อย่างมาก การประมาณของ ${appLabel} อาจไม่ครอบคลุมความแตกต่างเหล่านี้เสมอไป',
			'disclaimer.snap.ingredients.title' => 'ส่วนผสม',
			'disclaimer.snap.ingredients.description' => 'จานที่ซับซ้อนมีส่วนผสมแฝงหลายชนิด อาจทำให้การประมาณมีความแม่นยำน้อยลง',
			'disclaimer.snap.databaseLimitations.title' => 'ข้อจำกัดของฐานข้อมูล',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'ฐานข้อมูลอาหารของ ${appLabel} มีความหลากหลายแต่ไม่ครอบคลุมทุกรายการอาหารหรือความแตกต่างทั้งหมด',
			'disclaimer.weightEstimate.title' => 'เกี่ยวกับการประเมินน้ำหนัก',
			'disclaimer.weightEstimate.description' => 'การคาดการณ์การเปลี่ยนแปลงน้ำหนักเป็นการประมาณทางทฤษฎีโดยอิงจากโมเดลง่ายๆ ของแคลอรีเข้าเทียบกับแคลอรีออก ตั้งใจให้เป็นแนวทางให้กำลังใจ ไม่ใช่การทำนายผลน้ำหนักจริง',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'ความแม่นยำของแคลอรี',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'การประมาณนี้มีความแม่นยำขึ้นกับการบันทึกการรับและการใช้พลังงานของคุณ หากบันทึกไม่แม่นยำ การคาดการณ์ก็จะคลาดเคลื่อน',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'ปัจจัยทางชีวภาพ',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'การลด/เพิ่มน้ำหนักจริงได้รับอิทธิพลจากการเผาผลาญ ฮอร์โมน การนอนหลับ ความเครียด การดื่มน้ำ และปัจจัยเฉพาะบุคคลอื่นๆ ที่ ${appLabel} ไม่สามารถวัดได้',
			'disclaimer.weightEstimate.waterWeight.title' => 'น้ำในร่างกาย & การแกว่งของน้ำหนัก',
			'disclaimer.weightEstimate.waterWeight.description' => 'น้ำหนักปกติสามารถเปลี่ยนแปลงได้มากในแต่ละวันจากการกักเก็บน้ำ การย่อยอาหาร และช่วงเวลา การประมาณนี้ไม่รวมการเปลี่ยนแปลงรายวันเหล่านี้',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'คำแนะนำจากผู้เชี่ยวชาญ',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'อย่าใช้การประมาณนี้เพื่อการตัดสินใจทางการแพทย์ โปรดปรึกษาผู้เชี่ยวชาญด้านสุขภาพหรือนักโภชนาการที่ลงทะเบียนสำหรับคำแนะนำเฉพาะบุคคล',
			'disclaimer.healthMetrics.description' => 'ตัวชี้วัดเหล่านี้ช่วยให้คุณเข้าใจความต้องการพลังงานของร่างกายและนำทางเป้าหมายโภชนาการของคุณ',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'อัตราการเผาผลาญพื้นฐาน (BMR) คือจำนวนแคลอรีที่ร่างกายเผาผลาญเมื่อพักเพื่อรักษาการทำงานพื้นฐาน เช่น การหายใจและการไหลเวียนของเลือด BMR ขึ้นกับอายุ เพศ ความสูง และน้ำหนัก BMR สูงขึ้นมักหมายถึงร่างกายเผาผลาญแคลอรีมากขึ้นขณะพัก ส่วนใหญ่มาจากมวลกล้ามเนื้อมากกว่า อายุที่น้อยกว่า หรือเป็นเพศชาย BMR ต่ำมักบ่งชี้ถึงมวลกล้ามเนื้อน้อยกว่า อายุที่มากขึ้น หรือเป็นเพศหญิง',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'การใช้พลังงานทั้งหมดต่อวัน (TDEE) คือแคลอรีทั้งหมดที่คุณเผาผลาญต่อวัน รวม BMR และแคลอรีจากกิจกรรมและการเคลื่อนไหวประจำวัน TDEE ขึ้นกับ BMR และระดับกิจกรรม TDEE สูงขึ้นหมายถึงการเผาผลาญโดยรวมมากขึ้น มักมาจากกิจกรรมมากขึ้นหรือ BMR สูงกว่า TDEE ต่ำกว่าอาจหมายถึงกิจกรรมประจำวันน้อยหรือ BMR ต่ำกว่า',
			'disclaimer.healthMetrics.dailyGoal.title' => 'เป้าหมายรายวัน',
			'disclaimer.healthMetrics.dailyGoal.description' => 'เป้าหมายรายวันคือปริมาณแคลอรีที่แนะนำต่อวันโดยอิงจาก TDEE และเป้าหมายน้ำหนักของคุณ หากต้องการลดน้ำหนัก คุณจะบริโภคน้อยกว่า TDEE หากต้องการรักษา จะเท่ากับ TDEE หากต้องการเพิ่ม จะมากกว่า TDEE ซึ่งช่วยให้คุณบรรลุการเปลี่ยนแปลงน้ำหนักในอัตราที่ปลอดภัย',
			'disclaimer.calorieExpenditure.title' => 'การประมาณการเผาผลาญแคลอรี',
			'disclaimer.calorieExpenditure.description' => 'เมื่อไม่สามารถใช้ข้อมูลจาก Health Connect ได้ เราจะประมาณแคลอรีที่เผาผลาญวันนี้โดยใช้ BMR และระดับกิจกรรมของคุณ (TDEE) แล้วปรับตามสัดส่วนของวันที่ผ่านไป',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'การคำนวณเป็นอย่างไร',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'เราคำนวณ TDEE (จากโปรไฟล์ของคุณ) แล้วคูณด้วยสัดส่วนของวันที่ผ่านไป (ชั่วโมง + นาที) / 24 เพื่อประมาณแคลอรีที่เผาผลาญไปแล้ว',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'คำแนะนำจากผู้เชี่ยวชาญ',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'อย่าใช้การประมาณนี้เพื่อการตัดสินใจทางการแพทย์ โปรดปรึกษาผู้เชี่ยวชาญด้านสุขภาพหรือนักโภชนาการที่ลงทะเบียนสำหรับคำแนะนำเฉพาะบุคคล',
			'common.close' => 'ปิด',
			'common.kContinue' => 'ดำเนินการต่อ',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'ชอบ ${appLabel} ไหม?',
			'feedbackRating.yes' => 'ใช่ ฉันชอบ',
			'feedbackRating.no' => 'ไม่ค่อย',
			'feedbackRating.rateStepHeading' => 'ให้คะแนนบน Play Store',
			'feedbackRating.emailStepHeading' => 'ส่งคำติชมทางอีเมล',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'การให้คะแนนสั้นๆ ช่วยให้คนอื่นค้นพบ ${appLabel} และช่วยให้การพัฒนายังคงเดินต่อไป คุณช่วยสละเวลาเขียนหน่อยไหม?',
			'feedbackRating.shareFeedbackViaEmail' => 'คำติชมของคุณกำหนดทิศทางอนาคต — เราอ่านทุกข้อความ คุณต้องการแชร์ความคิดเห็นทางอีเมลไหม?',
			'feedbackRating.rateCta' => 'ให้คะแนนบน Play Store',
			'feedbackRating.maybeLater' => 'ไว้ทีหลัง',
			'feedbackRating.sendFeedback' => 'ส่งคำติชม',
			'feedbackRating.noThanks' => 'ไม่เป็นไร',
			'feedbackRating.aboutUsDescription' => 'สร้างด้วยความใส่ใจโดยทีมขนาดเล็ก เรามุ่งมั่นเรื่องความเป็นส่วนตัว ความเรียบง่าย และช่วยให้คุณสร้างนิสัยการกินที่ดีขึ้น',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'สงสัยว่าใครอยู่เบื้องหลัง ${appLabel}? ดู ',
			'feedbackRating.aboutUsLinkLabel' => 'เกี่ยวกับเรา',
			'feedbackRating.thankYouMessage' => 'ขอบคุณ! เราจะถามอีกครั้งในครั้งหน้า',
			'health.syncFailed' => 'ไม่สามารถซิงก์กับ Health Connect',
			'health.mealSynced' => 'ซิงก์มื้อกับ Health Connect แล้ว',
			_ => null,
		};
	}
}
