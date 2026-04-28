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
	@override String get rateLimitExceeded => 'คุณส่งคำขอมากเกินไป กรุณารอสักครู่ก่อนลองใหม่';
	@override String get networkError => 'ข้อผิดพลาดเครือข่าย กรุณาตรวจสอบการเชื่อมต่ออินเทอร์เน็ตของคุณ';
	@override String get unknownError => 'เกิดข้อผิดพลาดบางอย่าง กรุณาลองใหม่ภายหลัง';
	@override String get loadingProfileData => 'เกิดข้อผิดพลาดในการโหลดข้อมูลโปรไฟล์';
	@override String get somethingWentWrong => 'เกิดข้อผิดพลาดบางอย่าง';
	@override String get retry => 'ลองอีกครั้ง';
}

// Path: onboarding
class _TranslationsOnboardingTh implements TranslationsOnboardingEn {
	_TranslationsOnboardingTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'ยินดีต้อนรับสู่ ${appLabel}';
	@override String get subtitle => 'ผู้ช่วยด้านโภชนาการส่วนตัวของคุณ ขับเคลื่อนด้วย AI';
	@override String get getStarted => 'เริ่มต้น';
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
	@override String get noMeals => 'ยังไม่มีมื้ออาหาร';
	@override String get emptyMessage => 'ถ่ายรูปมื้อที่ผ่านมาเพื่อบันทึกที่นี่';
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
	@override String get editMeal => 'แก้ไขมื้ออาหาร';
	@override String get addMeal => 'เพิ่มมื้ออาหาร';
	@override String get saveMeal => 'บันทึกมื้ออาหาร';
	@override String get save => 'บันทึก';
	@override String get mealName => 'ชื่อมื้ออาหาร';
	@override String get mealNameHint => 'เช่น ไข่คนกับขนมปังปิ้ง';
	@override String get mealQuantity => 'ปริมาณมื้ออาหาร';
	@override String get mealQuantityHint => 'เช่น 1 ชาม, 2 ชิ้น';
	@override String get timeOfMeal => 'เวลาที่รับประทาน';
	@override String get timeOfMealHint => 'เลือกเวลาที่คุณรับประทานมื้อนี้';
	@override String get mealType => 'ประเภทมื้ออาหาร';
	@override late final _TranslationsMealNutritionTh nutrition = _TranslationsMealNutritionTh._(_root);
	@override late final _TranslationsMealDeleteConfirmationTh deleteConfirmation = _TranslationsMealDeleteConfirmationTh._(_root);
	@override String get addedToLog => 'เพิ่มมื้ออาหารลงในบันทึกแล้ว!';
	@override String couldNotAdd({required Object error}) => 'ไม่สามารถเพิ่มมื้ออาหาร: ${error}';
	@override String get savedSuccessfully => 'เพิ่มมื้ออาหารเรียบร้อย!';
	@override String get updatedSuccessfully => 'อัปเดตมื้ออาหารเรียบร้อย!';
	@override String errorSaving({required Object error}) => 'เกิดข้อผิดพลาดในการบันทึกมื้ออาหาร: ${error}';
	@override String get removedFromFavorites => 'เอาออกจากรายการโปรดแล้ว!';
	@override String get savedAsFavorite => 'บันทึกมื้ออาหารเป็นรายการโปรดแล้ว!';
	@override String get unfavorite => 'เลิกรายการโปรด';
	@override String couldNotUpdateFavorite({required Object error}) => 'ไม่สามารถอัปเดตรายการโปรด: ${error}';
	@override String get feedbackThanks => 'ขอบคุณสำหรับความคิดเห็น!';
	@override String get reanalysisUpdated => 'อัปเดตการวิเคราะห์มื้ออาหารตามความคิดเห็นของคุณแล้ว';
	@override String failedToProcess({required Object error}) => 'ไม่สามารถประมวลผล: ${error}';
	@override String failedToProcessImage({required Object error}) => 'ไม่สามารถประมวลผลรูปภาพ: ${error}';
	@override String errorCompressingImage({required Object error}) => 'เกิดข้อผิดพลาดขณะบีบอัดรูปภาพ: ${error}';
	@override String get failedToSave => 'บันทึกข้อมูลไม่สำเร็จ โปรดลองอีกครั้ง';
	@override String get skip => 'ข้าม';
	@override late final _TranslationsMealVariationTh variation = _TranslationsMealVariationTh._(_root);
	@override late final _TranslationsMealAnalysisTh analysis = _TranslationsMealAnalysisTh._(_root);
	@override late final _TranslationsMealFeedbackTh feedback = _TranslationsMealFeedbackTh._(_root);
}

// Path: favorites
class _TranslationsFavoritesTh implements TranslationsFavoritesEn {
	_TranslationsFavoritesTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'รายการโปรด';
	@override String get empty => 'ยังไม่มีมื้อโปรด';
	@override String get searchPlaceholder => 'ค้นหามื้อโปรด';
	@override String get searchEmptyTitle => 'ไม่พบรายการโปรดที่ตรงกับการค้นหา';
	@override String get searchEmptySubtitle => 'ลองใช้ชื่อมื้อ ปริมาณ หรือประเภทมื้อแบบอื่น';
	@override String get sortLabel => 'เรียงรายการโปรด';
	@override String get undo => 'เลิกทำ';
	@override String removed({required Object name}) => 'ลบ ${name} ออกจากรายการโปรดแล้ว';
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
	@override String get height => 'ส่วนสูง';
	@override String get weight => 'น้ำหนัก';
	@override String get age => 'อายุ';
	@override String get weightGoal => 'เป้าหมายน้ำหนัก';
	@override String get targetWeight => 'น้ำหนักเป้าหมาย';
	@override String get activityLevel => 'ระดับกิจกรรม';
	@override String get healthMetrics => 'ตัวชี้วัดสุขภาพ';
	@override String get notSet => 'ยังไม่ตั้งค่า';
	@override String get years => 'ปี';
	@override String get updatedSuccessfully => 'อัปเดตโปรไฟล์เรียบร้อย!';
	@override late final _TranslationsProfileCalculatedValuesTh calculatedValues = _TranslationsProfileCalculatedValuesTh._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreTh implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คะแนนสุขภาพ';
	@override String get whyThisScore => 'ทำไมถึงได้คะแนนนี้?';
	@override String get note => 'คะแนนนี้เป็นการประเมินโดย AI จากส่วนผสมที่ตรวจพบและความหนาแน่นของสารอาหาร โปรดปรึกษาผู้เชี่ยวชาญเพื่อขอคำแนะนำด้านโภชนาการที่เหมาะกับคุณ';
	@override String get unhealthy => 'ไม่ดีต่อสุขภาพ';
	@override String get healthy => 'ดีต่อสุขภาพ';
	@override String get neutral => 'กึ่งกลาง';
}

// Path: editProfile
class _TranslationsEditProfileTh implements TranslationsEditProfileEn {
	_TranslationsEditProfileTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'แก้ไขโปรไฟล์';
	@override late final _TranslationsEditProfileSectionsTh sections = _TranslationsEditProfileSectionsTh._(_root);
	@override String get gender => 'เพศ';
	@override String get dateOfBirth => 'วันเดือนปีเกิด';
	@override String get height => 'ส่วนสูง';
	@override String get weight => 'น้ำหนัก';
	@override String get weightGoal => 'เป้าหมายน้ำหนัก';
	@override String get activityLevel => 'ระดับกิจกรรม';
	@override String get metric => 'เมตริก';
	@override String get imperial => 'อิมพีเรียล';
	@override String get unitCm => 'ซม.';
	@override String get unitFt => 'ฟุต';
	@override String get unitKg => 'กก.';
	@override String get unitLbs => 'ปอนด์';
	@override String get metricCm => 'เมตริก (ซม.)';
	@override String get imperialFtIn => 'อิมพีเรียล (ฟุต/นิ้ว)';
	@override String get metricKg => 'เมตริก (กก.)';
	@override String get imperialLbs => 'อิมพีเรียล (ปอนด์)';
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
	@override String get title => 'ไม่หลุดเป้าด้วยการเตือน';
	@override String get description => 'รับการเตือนอย่างนุ่มนวลให้บันทึกมื้ออาหารและคงความสม่ำเสมอกับเป้าหมายโภชนาการของคุณ';
	@override String get notificationsEnabled => 'เปิดการแจ้งเตือนแล้ว';
	@override String get notificationsDisabled => 'ปิดการแจ้งเตือน';
	@override String get enabledSubtitle => 'คุณจะได้รับการเตือนมื้ออาหาร';
	@override String get disabledSubtitle => 'เปิดการแจ้งเตือนเพื่อรับการเตือนมื้ออาหาร';
	@override String get mealReminders => 'การเตือนมื้ออาหาร';
	@override String get breakfast => 'มื้อเช้า';
	@override String get lunch => 'มื้อกลางวัน';
	@override String get dinner => 'มื้อเย็น';
	@override String get snack => 'ของว่าง';
	@override String get unknown => 'ไม่ระบุ';
	@override String get change => 'เปลี่ยน';
	@override String get enableNotifications => 'เปิดการแจ้งเตือน';
	@override String get skipForNow => 'ข้ามไปก่อน';
	@override String get saveChanges => 'บันทึกการเปลี่ยนแปลง';
	@override String get enabledSuccessfully => 'เปิดการแจ้งเตือนเรียบร้อย!';
	@override String get permissionDenied => 'ปฏิเสธการอนุญาตการแจ้งเตือน';
	@override String errorEnabling({required Object error}) => 'เกิดข้อผิดพลาดในการเปิดการแจ้งเตือน: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'เกิดข้อผิดพลาดในการตั้งค่าให้เสร็จสิ้น: ${error}';
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
	@override String get signInFailed => 'การลงชื่อเข้าใช้ด้วย Google ล้มเหลวหรือถูกยกเลิก';
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
	@override String get yes => 'ใช่ ชอบมาก';
	@override String get no => 'ยังไม่เท่าไร';
	@override String get rateStepHeading => 'ให้คะแนนบน Play Store';
	@override String get emailStepHeading => 'ส่งความคิดเห็นทางอีเมล';
	@override String soloDevMessage({required Object appLabel}) => 'การให้คะแนนสั้นๆ ช่วยให้คนอื่นค้นพบ ${appLabel} และช่วยให้การพัฒนาต่อเนื่อง คุณสะดวกให้สักนาทีไหม?';
	@override String get shareFeedbackViaEmail => 'ความคิดเห็นของคุณกำหนดสิ่งที่จะตามมา — เราอ่านทุกข้อความ ต้องการส่งความเห็นทางอีเมลไหม?';
	@override String get rateCta => 'ให้คะแนนบน Play Store';
	@override String get maybeLater => 'ไว้ทีหลัง';
	@override String get sendFeedback => 'ส่งความคิดเห็น';
	@override String get noThanks => 'ไม่เป็นไร ขอบคุณ';
	@override String get aboutUsDescription => 'สร้างด้วยความใส่ใจโดยทีมเล็กๆ เรามุ่งเน้นความเป็นส่วนตัว ความเรียบง่าย และช่วยให้คุณสร้างนิสัยการกินที่ดีขึ้น';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'อยากรู้ว่าใครอยู่เบื้องหลัง ${appLabel}? ดู ';
	@override String get aboutUsLinkLabel => 'เกี่ยวกับเรา';
	@override String get thankYouMessage => 'ขอบคุณ! ไว้ค่อยถามใหม่อีกครั้ง';
}

// Path: health
class _TranslationsHealthTh implements TranslationsHealthEn {
	_TranslationsHealthTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'ไม่สามารถซิงค์ไปยัง Health Connect';
	@override String get mealSynced => 'ซิงค์มื้ออาหารกับ Health Connect แล้ว';
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
	@override String get title => 'เพศของคุณคืออะไร?';
	@override String get description => 'เพศช่วยให้เราคำนวณอัตราการเผาผลาญพื้นฐาน (BMR) ได้แม่นยำ';
	@override String get next => 'ถัดไป';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightTh implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณสูงเท่าไร?';
	@override String get description => 'ความสูงช่วยให้เราคำนวณ BMI และความต้องการพลังงานได้แม่นยำ';
	@override String get metric => 'เมตริก';
	@override String get imperial => 'อิมพีเรียล';
	@override String get next => 'ถัดไป';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightTh implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'น้ำหนักปัจจุบันของคุณเท่าไร?';
	@override String get currentDescription => 'น้ำหนักปัจจุบันสำคัญต่อการปรับเป้าหมายรายวันให้เหมาะกับคุณ';
	@override String get targetTitle => 'น้ำหนักเป้าหมายของคุณคือเท่าไร?';
	@override String get targetDescription => 'การตั้งเป้าหมายน้ำหนักช่วยกำหนดแผนระยะยาวที่เหมาะสม';
	@override String get metric => 'เมตริก';
	@override String get imperial => 'อิมพีเรียล';
	@override String get next => 'ถัดไป';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeTh implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'วันเกิดของคุณคือวันไหน?';
	@override String get description => 'อายุช่วยให้เราคำนวณความต้องการแคลอรีได้แม่นยำ';
	@override String get next => 'ถัดไป';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleTh implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ต่ำ';
	@override String get healthy => 'ปกติ';
	@override String get overweight => 'เกิน';
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
	@override String get description => 'เลือกเป้าหมายที่ตรงกับสิ่งที่คุณอยากบรรลุ';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelTh implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณมีกิจกรรมมากแค่ไหน?';
	@override String get description => 'สิ่งนี้ช่วยให้เราคำนวณความต้องการแคลอรีรายวันของคุณได้แม่นยำขึ้น';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectTh implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เชื่อมต่อกับ Health Connect';
	@override String get description => 'ซิงค์ข้อมูลสุขภาพเพื่อข้อมูลเชิงลึกที่ดีขึ้นและติดตามแคลอรีอัตโนมัติ';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingTh automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingTh._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsTh progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsTh._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationTh seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationTh._(_root);
	@override String get connected => 'เชื่อมต่อ Health Connect แล้ว';
	@override String get notConnected => 'ยังไม่ได้เชื่อมต่อ Health Connect';
	@override String get setup => 'ตั้งค่า Health Connect';
	@override String get skipForNow => 'ข้ามไปก่อน';
	@override String get statusConnected => 'เชื่อมต่อ Health Connect แล้ว';
	@override String get statusSuccess => 'เชื่อมต่อ Health Connect สำเร็จ!';
	@override String statusPermissionDenied({required Object appLabel}) => 'ปฏิเสธสิทธิ์ กรุณาเปิดสิทธิ์ Health Connect จากการตั้งค่าโทรศัพท์สำหรับ ${appLabel}';
	@override String statusError({required Object error}) => 'เกิดข้อผิดพลาดในการตั้งค่า Health Connect: ${error}';
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
	@override String get title => 'สรุป AI ของคุณ';
	@override String get logMore => 'บันทึกมื้ออาหารเพิ่มในอีกไม่กี่วันข้างหน้าเพื่อรับข้อมูลเชิงลึกส่วนบุคคลจาก AI';
	@override String get loading => 'กำลังโหลดสรุปของคุณ...';
	@override String mealCount({required Object count}) => 'บันทึกอาหารแล้ว ${count} มื้อ';
	@override String macroBalanceScore({required Object score}) => 'คะแนนสมดุลมาโคร ${score}';
	@override String get topFoods => 'อาหารยอดนิยม';
	@override String get trendUp => 'แคลอรีมีแนวโน้มเพิ่มขึ้น';
	@override String get trendDown => 'แคลอรีมีแนวโน้มลดลง';
	@override String get trendSteady => 'แคลอรีทรงตัว';
	@override String generatedAt({required Object time}) => 'อัปเดตเมื่อ ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalTh implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ตั้งเป้าหมายรายวันของคุณ';
	@override String get titleSet => 'เป้าหมายรายวันของคุณ';
	@override String get description => 'พร้อมออกเดินทางสู่สุขภาพที่ดีขึ้นหรือยัง? ตั้งเป้าแคลอรีรายวันด้านล่างเพื่อเริ่มต้นความก้าวหน้า';
	@override String get descriptionSet => 'เข็มทิศของคุณถูกตั้งไว้แล้ว! นี่คือเป้าหมายแคลอรีรายวันเพื่อคอยนำทางคุณ';
	@override String get yourGoal => 'เป้าหมายของคุณ';
	@override String get goal => 'เป้าหมาย';
	@override String get dailyCalories => 'แคลอรีต่อวัน (kcal)';
	@override String get setGoal => 'ตั้งเป้าหมาย';
	@override String get intake => 'รับเข้า';
	@override String get burned => 'เผาผลาญ';
	@override String get weightImpact => 'ผลต่อน้ำหนัก';
	@override String get estLoss => 'คาดว่าจะลด';
	@override String get estGain => 'คาดว่าจะเพิ่ม';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryTh implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สรุปรายวัน';
	@override String get calories => 'แคลอรี';
	@override String get carbs => 'คาร์บ';
	@override String get protein => 'โปรตีน';
	@override String get fat => 'ไขมัน';
	@override String get fiber => 'ใยอาหาร';
	@override String get grams => 'กรัม';
	@override String get chartAccessibilityLabel => 'แผนภูมิสารอาหารหลัก';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressTh implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สัดส่วนมาโครวันนี้';
	@override String get target => 'เป้าหมาย';
	@override String get current => 'ปัจจุบัน';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryTh implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ประวัติมาโคร 7 วัน';
	@override String get trendTitle => 'แนวโน้มวันนี้';
	@override String peakHour({required Object hour}) => 'จุดพีค: ${hour}:00';
	@override String get noHistoryYet => 'ยังไม่มีประวัติ';
	@override String get startLogging => 'เริ่มบันทึกมื้ออาหารเพื่อดู\nแนวโน้มมาโคร 7 วันที่นี่';
}

// Path: home.mealLog
class _TranslationsHomeMealLogTh implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มื้อที่บันทึก';
	@override String get emptyMessage => 'ถ่ายรูปมื้อที่ผ่านมาเพื่อบันทึกที่นี่';
	@override String get noMealsToday => 'ยังไม่มีมื้ออาหารสำหรับวันนี้';
	@override String get seeAllMeals => 'ดูมื้อทั้งหมด';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionTh implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เพิ่มเร็วด้วย AI';
	@override String get description => 'บรรยายมื้อของคุณ แล้วให้ AI จัดการรายละเอียด';
	@override String get hint => 'เช่น มื้อเช้าฉันทานโอ๊ตชามใหญ่ ใส่กล้วยหั่นหนึ่งผล และเวย์โปรตีนหนึ่งสกู๊ป ...';
	@override String get analyzeMeal => 'วิเคราะห์มื้ออาหาร';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsTh implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มื้อโปรด';
	@override String get description => 'เพิ่มหนึ่งในมื้อโปรดของคุณอย่างรวดเร็ว';
	@override String get noFavorites => 'ยังไม่มีมื้อโปรด';
	@override String get addFavoriteHint => 'กดดาวที่มื้ออาหารเพื่อบันทึกเป็นรายการโปรด';
	@override String get seeAll => 'ดูทั้งหมด';
	@override String get add => 'เพิ่ม';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapTh implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ถ่ายและติดตามมื้อของคุณ';
	@override String get description => 'ใช้กล้องถ่ายภาพอาหารเพื่อให้ AI วิเคราะห์';
	@override String get openCamera => 'เปิดกล้อง';
	@override String get gallery => 'แกลเลอรี';
	@override String get compressingPhoto => 'กำลังปรับรูปภาพให้เหมาะสม…';
	@override String get uploadingPhoto => 'กำลังอัปโหลดรูปภาพ…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthTh implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ซิงค์กับ Health Connect';
	@override String get description => 'ซิงค์ข้อมูลโภชนาการของคุณกับ Health Connect';
	@override String get install => 'ติดตั้ง';
	@override String get connect => 'เชื่อมต่อ';
}

// Path: meal.nutrition
class _TranslationsMealNutritionTh implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get calories => 'แคลอรี';
	@override String get carbs => 'คาร์บ (กรัม)';
	@override String get protein => 'โปรตีน (กรัม)';
	@override String get fat => 'ไขมัน (กรัม)';
	@override String get fiber => 'ใยอาหาร (กรัม)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationTh implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ลบมื้ออาหาร';
	@override String get message => 'แน่ใจหรือไม่ว่าต้องการลบบันทึกมื้อนี้?';
	@override String get cancel => 'ยกเลิก';
	@override String get delete => 'ลบ';
}

// Path: meal.variation
class _TranslationsMealVariationTh implements TranslationsMealVariationEn {
	_TranslationsMealVariationTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'คำถาม ${current} จาก ${total}';
	@override String get noVariationsAvailable => 'ไม่มีรูปแบบให้เลือก';
}

// Path: meal.analysis
class _TranslationsMealAnalysisTh implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การวิเคราะห์มื้ออาหารด้วย AI';
	@override String get reassurance => 'โดยปกติจะใช้เวลาเพียงไม่กี่วินาที';
	@override String get stepStarted => 'เริ่มต้น…';
	@override String get stepDecomposition => 'กำลังทำความเข้าใจมื้อของคุณ…';
	@override String get stepIngredients => 'กำลังจับคู่องค์ประกอบกับข้อมูลโภชนาการ…';
	@override String get stepUncertainty => 'กำลังตรวจสอบความมั่นใจ…';
	@override String get stepMealTypeQuestion => 'เกือบเสร็จแล้ว…';
	@override String get stepResult => 'กำลังสรุปผลลัพธ์…';
	@override String get stepError => 'เกิดข้อผิดพลาดบางอย่าง';
	@override String get stepDefault => 'กำลังวิเคราะห์มื้ออาหารของคุณ…';
	@override String get progressUnderstand => 'ทำความเข้าใจ';
	@override String get progressMatch => 'จับคู่';
	@override String get progressCheck => 'ตรวจสอบ';
	@override String get progressFinish => 'เสร็จสิ้น';
	@override String ingredientsLine({required Object count}) => 'ตรวจพบส่วนผสม ${count} รายการ';
	@override String get ingredientsPending => 'กำลังสแกนส่วนผสม…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackTh implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'อะไรดูไม่ถูกต้อง?';
	@override String get subtitle => 'ช่วยเราปรับปรุงการวิเคราะห์โดยเลือกหนึ่งหรือหลายปัญหา';
	@override String get tellUsMore => 'บอกเราเพิ่มเติม';
	@override String get describeIncorrect => 'อธิบายสิ่งที่ไม่ถูกต้อง';
	@override String get submit => 'ส่ง';
	@override String get issueFoodIdentification => 'การระบุอาหาร';
	@override String get issuePortionSize => 'ขนาดหนึ่งหน่วยบริโภค';
	@override String get issueCalorieDistribution => 'การกระจายแคลอรี';
	@override String get issueMacrosWrong => 'มาโครไม่ถูกต้อง';
	@override String get issueMissingItems => 'รายการที่ขาดหายไป';
	@override String get issueExtraItems => 'รายการเพิ่มเติม';
	@override String get issueOther => 'อื่น ๆ';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsTh implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get recent => 'ล่าสุด';
	@override String get calories => 'แคลอรี';
	@override String get alphabetical => 'ตามตัวอักษร (A-Z)';
}

// Path: profile.sections
class _TranslationsProfileSectionsTh implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get profile => 'โปรไฟล์';
	@override String get basicInformation => 'ข้อมูลพื้นฐาน';
	@override String get goalsAndActivity => 'เป้าหมายและกิจกรรม';
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
	@override String get notAvailable => 'ไม่พร้อมใช้งาน';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsTh implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ข้อมูลส่วนตัว';
	@override String get physicalMeasurements => 'ข้อมูลสัดส่วนร่างกาย';
	@override String get goalsAndActivity => 'เป้าหมายและกิจกรรม';
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
	@override String get localization => 'ภาษาและภูมิภาค';
	@override String get notifications => 'การแจ้งเตือน';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'การสนับสนุนและเงื่อนไข';
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
	@override String get subtitle => 'เลือกภาษาที่คุณต้องการ';
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
	@override String get title => 'การเตือนมื้ออาหาร';
	@override String get subtitle => 'ไม่พลาดด้วยการแจ้งเตือนตรงเวลา';
}

// Path: settings.theme
class _TranslationsSettingsThemeTh implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ธีม';
	@override String get light => 'สว่าง';
	@override String get dark => 'มืด';
	@override String get system => 'ตามระบบ';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackTh implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ส่งความคิดเห็น';
	@override String subtitle({required Object appLabel}) => 'ช่วยให้ ${appLabel} ดีขึ้น';
	@override String emailSubject({required Object appLabel}) => 'ข้อเสนอแนะเกี่ยวกับแอป ${appLabel}';
	@override String get emailBodyPrefix => 'โปรดให้ข้อเสนอแนะของคุณด้านล่าง:';
	@override String get appVersion => 'เวอร์ชันแอป';
	@override String get device => 'อุปกรณ์';
	@override String get osVersion => 'เวอร์ชันระบบปฏิบัติการ';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryTh implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ส่งออกประวัติอาหาร';
	@override String get subtitle => 'แชร์ไฟล์ CSV ของมื้อที่คุณบันทึก';
	@override String get shareText => 'ไฟล์ส่งออกประวัติอาหารจาก Calorify ของคุณ';
	@override String failed({required Object error}) => 'ไม่สามารถส่งออกประวัติอาหาร: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataTh implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ล้างข้อมูลทั้งหมด';
	@override String get subtitle => 'ลบข้อมูลทั้งหมดของคุณอย่างถาวร';
	@override String get confirmationTitle => 'ล้างข้อมูลทั้งหมด?';
	@override String get confirmationMessage => 'การกระทำนี้ไม่สามารถย้อนกลับได้ มื้อที่บันทึก รายการโปรด และการตั้งค่าโปรไฟล์ทั้งหมดจะถูกลบถาวร';
	@override String get cancel => 'ยกเลิก';
	@override String get clearEverything => 'ล้างทั้งหมด';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsTh implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ตัวเลือกการดีบัก';
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
	@override String get requestingPermissions => 'กำลังขอสิทธิ์...';
}

// Path: settings.about
class _TranslationsSettingsAboutTh implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เกี่ยวกับ';
	@override String get tagline => 'รวดเร็ว ฟรี และให้ความสำคัญกับความเป็นส่วนตัวเป็นอันดับแรก';
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
	@override String get title => 'ถึงเวลาอาหารเช้า! 🍳';
	@override String get body => 'อย่าลืมบันทึกมื้อเช้าของคุณ';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchTh implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ถึงเวลาอาหารกลางวัน! 🥗';
	@override String get body => 'ได้เวลาบันทึกมื้อกลางวันแล้ว';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerTh implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ถึงเวลาอาหารเย็น! 🍽️';
	@override String get body => 'อย่าลืมบันทึกมื้อเย็นของคุณ';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackTh implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ถึงเวลาอาหารว่าง! 🍎';
	@override String get body => 'ได้เวลาของว่างที่ดีต่อสุขภาพแล้ว';
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
	@override String description({required Object appLabel}) => '${appLabel} ให้ข้อมูลโภชนาการโดยประมาณ ความแม่นยำขึ้นอยู่กับข้อมูลที่คุณให้และความแตกต่างของอาหาร ใช้เป็นแนวทาง ไม่ใช่แหล่งข้อมูลที่ชี้ขาด โปรดปรึกษาผู้เชี่ยวชาญเพื่อคำแนะนำด้านโภชนาการเฉพาะบุคคล';
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
	@override String get title => 'เกี่ยวกับการคาดการณ์น้ำหนัก';
	@override String get description => 'การคาดการณ์การเปลี่ยนแปลงน้ำหนักเป็นการประเมินเชิงทฤษฎีตามโมเดลแคลอรีเข้า-แคลอรีออก ใช้เพื่อสร้างแรงจูงใจเท่านั้น ไม่ใช่การทำนายน้ำหนักจริงของคุณ';
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
	@override String get title => 'การประเมินแคลอรีที่เผาผลาญ';
	@override String get description => 'เมื่อไม่มีข้อมูลจาก Health Connect เราจะประเมินแคลอรีที่เผาผลาญวันนี้โดยใช้ BMR และระดับกิจกรรม (TDEE) ของคุณ ปรับตามสัดส่วนเวลาของวันที่ผ่านไป';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedTh howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedTh._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTh professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTh._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionTh implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'รู้จำอาหารอย่างชาญฉลาด';
	@override String get description => 'ถ่ายภาพแล้วให้ AI ช่วยระบุว่าเป็นมื้ออะไร';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisTh implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'วิเคราะห์ด้วย AI';
	@override String get description => 'รับข้อมูลโภชนาการทันทีจากคำบรรยายของคุณ';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationTh implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เชื่อมต่อสุขภาพ';
	@override String get description => 'เชื่อมต่อกับ Health Connect เพื่อข้อมูลเชิงลึกที่ดียิ่งขึ้น';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesTh implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'น้ำหนักน้อย';
	@override String get healthyWeight => 'น้ำหนักปกติ';
	@override String get overweight => 'น้ำหนักเกิน';
	@override String get obese => 'โรคอ้วน';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesTh implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'เราช่วยคุณวางแผนสุขภาพเพื่อเพิ่มน้ำหนักอย่างสมดุลด้วยมื้ออาหารที่มีสารอาหารหนาแน่นได้';
	@override String get healthy => 'เยี่ยมมาก! คุณอยู่ในช่วงที่ดี เราจะช่วยให้คุณคงความแข็งแรงและพลังงานไว้';
	@override String overweight({required Object appLabel}) => '${appLabel} จะทำให้เส้นทางของคุณง่ายขึ้นด้วยการติดตามด้วย AI เพื่อช่วยให้ไปถึงเป้าหมายอย่างสบายใจ';
	@override String get obese => 'เราพร้อมสนับสนุนคุณด้วยคำแนะนำเฉพาะบุคคลและกลยุทธ์ที่ยั่งยืนเพื่อเป้าหมายสุขภาพของคุณ';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingTh implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ติดตามแคลอรีอัตโนมัติ';
	@override String get description => 'ติดตามแคลอรีที่เผาผลาญจากแอปฟิตเนสของคุณ';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsTh implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ข้อมูลเชิงลึกของความก้าวหน้า';
	@override String get description => 'รับข้อมูลเชิงลึกอย่างละเอียดเกี่ยวกับแนวโน้มสุขภาพของคุณ';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationTh implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ผสานการทำงานอย่างลื่นไหล';
	@override String get description => 'ซิงค์ข้อมูลจากแอปสุขภาพที่คุณชื่นชอบ';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessTh implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณไม่ได้เดินลำพัง';
	@override String get genericMessage => 'งานวิจัยชี้ว่าการติดตามอย่างสม่ำเสมอคือปัจจัยทำนายความสำเร็จระยะยาวอันดับ 1';
	@override String personalizedMessage({required Object gender, required Object age, required Object goal}) => 'สำหรับ${gender}อายุ ${age} ปี ที่ต้องการ ${goal} การติดตามอย่างสม่ำเสมอคือปัจจัยทำนายความสำเร็จอันดับ 1';
	@override String closingMessage({required Object appLabel}) => '${appLabel} ทำให้เรื่องนี้ง่ายขึ้นเป็น 10 เท่าเมื่อเทียบกับการทำเอง';
	@override String get getStartedTitle => 'พร้อมเริ่มแล้วหรือยัง?';
	@override String get tipPhoto => 'ถ่ายภาพมื้ออาหารเพื่อวิเคราะห์ทันที';
	@override String get tipConsistency => 'บันทึกอย่างสม่ำเสมอเพื่อเห็นความก้าวหน้าที่มีความหมาย';
	@override String get tipProgress => 'ติดตามความก้าวหน้าทุกวันเพื่อรักษาแรงจูงใจ';
	@override String get button => 'ไปกันเลย';
	@override String get defaultGender => 'บุคคล';
	@override String get defaultGoal => 'การเป็นคุณที่สุขภาพดียิ่งขึ้น';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileTh implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'โปรไฟล์สุขภาพของคุณ';
	@override String bmiDescription({required Object bmi}) => 'จากข้อมูลของคุณ BMI คือ ${bmi}';
	@override String get finalizeDescription => 'มาปิดท้ายโปรไฟล์ของคุณเพื่อปรับประสบการณ์ให้เหมาะกับคุณ';
	@override String get goalGain => 'เพิ่ม';
	@override String get goalLose => 'ลด';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'เพื่อให้ถึงเป้าหมาย คุณจะต้อง${direction} ${diff} ${unit}';
	@override String get goalReached => 'คุณอยู่ที่น้ำหนักเป้าหมายแล้ว! เราจะช่วยคุณรักษาไว้';
	@override String get button => 'ไปต่อกันเลย';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleTh implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เริ่มต้นได้เยี่ยม!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'คุณได้ก้าวแรกสู่ ${goalText} แล้ว เนื่องจากคุณ${activityText} ${appLabel} จะปรับเป้าหมายให้เข้ากับไลฟ์สไตล์ของคุณ';
	@override String get personalizedTargets => 'เป้าหมายแคลอรีแบบเฉพาะคุณ';
	@override String get aiMealDetection => 'การตรวจจับมื้ออาหารด้วย AI';
	@override String get macroBreakdowns => 'แจกแจงสารอาหารหลักอย่างละเอียด';
	@override String get button => 'ไปกันเลย';
	@override String get defaultGoal => 'เป้าหมายของคุณ';
	@override String get defaultActivity => 'แอคทีฟ';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightTh implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'ลดน้ำหนัก';
	@override String get description => 'สร้างภาวะแคลอรีขาดดุลเพื่อให้น้ำหนักลดลง';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightTh implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'คุมน้ำหนัก';
	@override String get description => 'คงน้ำหนักปัจจุบันของคุณ';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightTh implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'เพิ่มน้ำหนัก';
	@override String get description => 'สร้างภาวะแคลอรี่เกินเพื่อเพิ่มน้ำหนัก';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryTh implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'ไม่ค่อยออกกำลังกาย';
	@override String get description => 'แทบไม่ออกกำลังกาย';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveTh implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'กิจกรรมเบา';
	@override String get description => 'ออกกำลังกายเบาๆ 1–3 วัน/สัปดาห์';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveTh implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'กิจกรรมปานกลาง';
	@override String get description => 'ออกกำลังกายปานกลาง 3–5 วัน/สัปดาห์';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveTh implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'กิจกรรมหนัก';
	@override String get description => 'ออกกำลังกายหนัก 6–7 วัน/สัปดาห์';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveTh implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'กิจกรรมหนักมาก';
	@override String get description => 'ออกกำลังกายหนักมากหรือทำงานใช้แรงกาย';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableTh implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ใช้งานไม่ได้';
	@override String get description => 'อุปกรณ์นี้ไม่รองรับ Health Connect โปรดติดตั้งจาก Play Store (Android 9+) หรืออัปเดตเป็น Android 14+';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsTh implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สิทธิ์';
	@override String get description => 'ต้องการสิทธิ์ต่อไปนี้เพื่อใช้งานการเชื่อมต่อกับ Health Connect:';
	@override String get granted => 'อนุญาตแล้ว';
	@override String get notGranted => 'ยังไม่อนุญาต';
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
	@override String content({required Object appLabel}) => '${appLabel} เกิดจากความไม่สะดวกง่ายๆ: แอปนับแคลอรีส่วนใหญ่มักซับซ้อนเกินไป ต้องกรอกข้อมูลเองตลอดเวลา เก็บค่าบริการแพง หรือกระทบต่อความเป็นส่วนตัว\n\nในฐานะนักพัฒนาเดี่ยว ฉันอยากสร้างสิ่งที่เรียบง่ายและยุติธรรมกว่า — แอปที่ใช้ AI เพื่อลดความยุ่งยาก ทำงานได้รวดเร็ว ฟรี และเคารพข้อมูลสุขภาพของคุณ\n\n${appLabel} คือแอปที่ฉันอยากให้มีอยู่: ไม่ต้องมีบัญชี ไม่ติดตาม ไม่ลงโฆษณา — มีเพียงข้อมูลเชิงปฏิบัติที่ชัดเจนและเป้าหมายสุขภาพของคุณ';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyTh implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ความเป็นส่วนตัวของคุณสำคัญ';
	@override String get description => 'ความเป็นส่วนตัวไม่ใช่เรื่องหลังบ้าน — แต่เป็นหลักการออกแบบ นี่คือความหมายในทางปฏิบัติ:';
	@override String get noAccounts => 'ไม่ต้องมีบัญชีผู้ใช้\nใช้งานได้ทันที ไม่ต้องสมัคร ไม่ต้องระบุตัวตน';
	@override String noTracking({required Object appLabel}) => 'ไม่มีการติดตามพฤติกรรม\n${appLabel} จะไม่เฝ้าติดตามการใช้งาน สร้างโปรไฟล์พฤติกรรม หรือ ติดตามคุณข้ามแอปหรือเว็บไซต์';
	@override String noAds({required Object appLabel}) => 'ไร้โฆษณาตามการออกแบบ\n${appLabel} ถูกสร้างมาให้ทำงานได้โดยไม่ต้องพึ่งโฆษณาหรือการทำเงินจากข้อมูล';
	@override String get noDataSelling => 'ไม่ขายข้อมูล\nข้อมูลสุขภาพของคุณจะไม่ถูกขายหรือแชร์ให้บุคคลที่สาม';
	@override String get localStorage => 'บันทึกข้อมูลบนอุปกรณ์เป็นหลัก\nข้อมูลของคุณจะอยู่บนอุปกรณ์ของคุณ';
	@override String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperTh implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สร้างโดยนักพัฒนาเดี่ยว';
	@override String description({required Object appLabel}) => '${appLabel} ถูกพัฒนาและดูแลโดยนักพัฒนาเดี่ยวที่มุ่งสร้างซอฟต์แวร์สุขภาพที่เรียบง่ายและเคารพความเป็นส่วนตัว\n\nทุกคำติชมถูกอ่านด้วยตัวเองและช่วยกำหนดทิศทางของแอป';
	@override String get website => 'เว็บไซต์';
	@override String get email => 'อีเมล';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackTh implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'ชอบ ${appLabel} ไหม?';
	@override String description({required Object appLabel}) => 'ความคิดเห็นของคุณทำให้ ${appLabel} ดีขึ้นสำหรับทุกคน';
	@override String get rateApp => 'ให้คะแนนบน Play Store';
	@override String get sendFeedback => 'ส่งความคิดเห็น';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeTh implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ขนาดส่วนอาหาร';
	@override String get description => 'ความแม่นยำของการประเมินขึ้นอยู่กับการประเมินขนาดส่วนอาหารของคุณอย่างถูกต้อง';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsTh implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'วิธีการปรุง';
	@override String description({required Object appLabel}) => 'วิธีการปรุงสามารถเปลี่ยนแปลงคุณค่าทางโภชนาการได้อย่างมาก การประเมินของ ${appLabel} อาจไม่ครอบคลุมความแตกต่างเหล่านี้เสมอไป';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsTh implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ส่วนผสม';
	@override String get description => 'เมนูที่ซับซ้อนและมีส่วนผสมแฝงจำนวนมากอาจทำให้การประเมินแม่นยำน้อยลง';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsTh implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ข้อจำกัดของฐานข้อมูล';
	@override String description({required Object appLabel}) => 'ฐานข้อมูลองค์ประกอบอาหารของ ${appLabel} มีขนาดใหญ่ แต่ไม่อาจครอบคลุมอาหารหรือทุกรูปแบบได้ทั้งหมด';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyTh implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ความแม่นยำของแคลอรี';
	@override String get description => 'ความแม่นยำนี้ขึ้นอยู่กับการบันทึกแคลอรีที่รับเข้าและที่เผาผลาญของคุณ หากบันทึกไม่แม่นยำ การคาดการณ์ก็จะไม่แม่นยำ';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsTh implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ปัจจัยทางชีวภาพ';
	@override String description({required Object appLabel}) => 'น้ำหนักจริงได้รับอิทธิพลจากการเผาผลาญ ฮอร์โมน การนอน ความเครียด ระดับน้ำในร่างกาย และปัจจัยเฉพาะบุคคลอื่นๆ ที่ ${appLabel} ไม่สามารถวัดได้';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightTh implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'น้ำในร่างกายและความผันผวน';
	@override String get description => 'น้ำหนักรายวันสามารถผันผวนได้มากจากการกักเก็บน้ำ การย่อยอาหาร และจังหวะเวลา การคาดการณ์นี้ไม่ได้คำนึงถึงความผันผวนรายวันเหล่านี้';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTh implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คำแนะนำจากผู้เชี่ยวชาญ';
	@override String get description => 'อย่าใช้การคาดการณ์นี้เพื่อตัดสินใจด้านการแพทย์ โปรดปรึกษาผู้เชี่ยวชาญด้านสุขภาพหรือโภชนากรเพื่อคำแนะนำส่วนบุคคล';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrTh implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'อัตราการเผาผลาญพื้นฐาน (BMR) คือจำนวนแคลอรีที่ร่างกายใช้ขณะพักเพื่อคงการทำงานพื้นฐาน เช่น การหายใจและการไหลเวียน BMR ขึ้นอยู่กับอายุ เพศ ส่วนสูง และน้ำหนัก BMR ที่สูงหมายถึงร่างกายเผาผลาญแคลอรีขณะพักได้มาก มักเกิดจากมวลกล้ามเนื้อมากกว่า อายุที่น้อยกว่า หรือเพศชาย ส่วน BMR ต่ำมักบ่งบอกถึงมวลกล้ามเนื้อน้อยกว่า อายุที่มากขึ้น หรือเพศหญิง';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeTh implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'การใช้พลังงานทั้งหมดต่อวัน (TDEE) คือแคลอรีทั้งหมดที่คุณเผาผลาญในหนึ่งวัน รวม BMR และกิจกรรมทางกายภาพกับการเคลื่อนไหวในชีวิตประจำวัน TDEE ขึ้นกับ BMR และระดับกิจกรรม TDEE สูงหมายถึงเผาผลาญมากขึ้นโดยรวม มักมาจากการเคลื่อนไหวมากหรือมี BMR สูง ส่วน TDEE ต่ำบ่งชี้ว่ามีกิจกรรมน้อยหรือ BMR ต่ำ';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalTh implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เป้าหมายรายวัน';
	@override String get description => 'เป้าหมายรายวันคือปริมาณแคลอรีที่แนะนำต่อวันตาม TDEE และเป้าหมายน้ำหนักของคุณ หากต้องการลดน้ำหนัก ให้รับแคลอรีน้อยกว่า TDEE หากต้องการคุมน้ำหนัก ให้รับใกล้เคียง TDEE หากต้องการเพิ่มน้ำหนัก ให้รับมากกว่า TDEE สิ่งนี้ช่วยให้คุณบรรลุการเปลี่ยนน้ำหนักตามจังหวะที่ดีต่อสุขภาพ';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedTh implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คำนวณอย่างไร';
	@override String get description => 'เราจะคำนวณ TDEE (อิงจากโปรไฟล์ของคุณ) แล้วคูณด้วยเศษส่วนของวันเวลาที่ผ่านไป (ชั่วโมง + นาที) / 24 เพื่อประมาณแคลอรีที่เผาผลาญจนถึงตอนนี้';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTh implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คำแนะนำจากผู้เชี่ยวชาญ';
	@override String get description => 'อย่าใช้ค่าประเมินนี้เพื่อตัดสินใจด้านการแพทย์ โปรดปรึกษาผู้เชี่ยวชาญด้านสุขภาพหรือโภชนากรเพื่อคำแนะนำส่วนบุคคล';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTh implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'อ่านจำนวนแคลอรีที่เผาผลาญทั้งหมด';
	@override String get description => 'อนุญาตให้แอปอ่านแคลอรีที่คุณเผาผลาญทั้งหมดจาก Health Connect';
	@override String get usage => 'ใช้เพื่อแสดงแคลอรีที่คุณเผาผลาญต่อวันในแอป ช่วยให้คุณเข้าใจการใช้พลังงานรวมตลอดทั้งวัน';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadTh implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'อ่านข้อมูลโภชนาการ';
	@override String get description => 'อนุญาตให้แอปอ่านข้อมูลโภชนาการจาก Health Connect';
	@override String get usage => 'ช่วยให้แอปอ่านข้อมูลโภชนาการที่อาจถูกบันทึกโดยแอปอื่นที่เชื่อมต่อกับ Health Connect เพื่อมุมมองที่ครอบคลุมยิ่งขึ้น';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteTh implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เขียนข้อมูลโภชนาการ';
	@override String get description => 'อนุญาตให้แอปเขียนข้อมูลโภชนาการไปยัง Health Connect';
	@override String get usage => 'ช่วยให้แอปซิงค์มื้อที่คุณบันทึกไปยัง Health Connect ทำให้ข้อมูลโภชนาการพร้อมใช้งานกับแอปสุขภาพและฟิตเนสอื่นๆ ของคุณ';
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
			'errors.rateLimitExceeded' => 'คุณส่งคำขอมากเกินไป กรุณารอสักครู่ก่อนลองใหม่',
			'errors.networkError' => 'ข้อผิดพลาดเครือข่าย กรุณาตรวจสอบการเชื่อมต่ออินเทอร์เน็ตของคุณ',
			'errors.unknownError' => 'เกิดข้อผิดพลาดบางอย่าง กรุณาลองใหม่ภายหลัง',
			'errors.loadingProfileData' => 'เกิดข้อผิดพลาดในการโหลดข้อมูลโปรไฟล์',
			'errors.somethingWentWrong' => 'เกิดข้อผิดพลาดบางอย่าง',
			'errors.retry' => 'ลองอีกครั้ง',
			'onboarding.welcome' => ({required Object appLabel}) => 'ยินดีต้อนรับสู่ ${appLabel}',
			'onboarding.subtitle' => 'ผู้ช่วยด้านโภชนาการส่วนตัวของคุณ ขับเคลื่อนด้วย AI',
			'onboarding.getStarted' => 'เริ่มต้น',
			'onboarding.features.foodRecognition.title' => 'รู้จำอาหารอย่างชาญฉลาด',
			'onboarding.features.foodRecognition.description' => 'ถ่ายภาพแล้วให้ AI ช่วยระบุว่าเป็นมื้ออะไร',
			'onboarding.features.aiAnalysis.title' => 'วิเคราะห์ด้วย AI',
			'onboarding.features.aiAnalysis.description' => 'รับข้อมูลโภชนาการทันทีจากคำบรรยายของคุณ',
			'onboarding.features.healthIntegration.title' => 'เชื่อมต่อสุขภาพ',
			'onboarding.features.healthIntegration.description' => 'เชื่อมต่อกับ Health Connect เพื่อข้อมูลเชิงลึกที่ดียิ่งขึ้น',
			'onboarding.gender.title' => 'เพศของคุณคืออะไร?',
			'onboarding.gender.description' => 'เพศช่วยให้เราคำนวณอัตราการเผาผลาญพื้นฐาน (BMR) ได้แม่นยำ',
			'onboarding.gender.next' => 'ถัดไป',
			'onboarding.height.title' => 'คุณสูงเท่าไร?',
			'onboarding.height.description' => 'ความสูงช่วยให้เราคำนวณ BMI และความต้องการพลังงานได้แม่นยำ',
			'onboarding.height.metric' => 'เมตริก',
			'onboarding.height.imperial' => 'อิมพีเรียล',
			'onboarding.height.next' => 'ถัดไป',
			'onboarding.weight.currentTitle' => 'น้ำหนักปัจจุบันของคุณเท่าไร?',
			'onboarding.weight.currentDescription' => 'น้ำหนักปัจจุบันสำคัญต่อการปรับเป้าหมายรายวันให้เหมาะกับคุณ',
			'onboarding.weight.targetTitle' => 'น้ำหนักเป้าหมายของคุณคือเท่าไร?',
			'onboarding.weight.targetDescription' => 'การตั้งเป้าหมายน้ำหนักช่วยกำหนดแผนระยะยาวที่เหมาะสม',
			'onboarding.weight.metric' => 'เมตริก',
			'onboarding.weight.imperial' => 'อิมพีเรียล',
			'onboarding.weight.next' => 'ถัดไป',
			'onboarding.age.title' => 'วันเกิดของคุณคือวันไหน?',
			'onboarding.age.description' => 'อายุช่วยให้เราคำนวณความต้องการแคลอรีได้แม่นยำ',
			'onboarding.age.next' => 'ถัดไป',
			'onboarding.bmiScale.underweight' => 'ต่ำ',
			'onboarding.bmiScale.healthy' => 'ปกติ',
			'onboarding.bmiScale.overweight' => 'เกิน',
			'onboarding.bmiScale.obese' => 'อ้วน',
			'onboarding.bmiScale.categories.underweight' => 'น้ำหนักน้อย',
			'onboarding.bmiScale.categories.healthyWeight' => 'น้ำหนักปกติ',
			'onboarding.bmiScale.categories.overweight' => 'น้ำหนักเกิน',
			'onboarding.bmiScale.categories.obese' => 'โรคอ้วน',
			'onboarding.bmiScale.messages.underweight' => 'เราช่วยคุณวางแผนสุขภาพเพื่อเพิ่มน้ำหนักอย่างสมดุลด้วยมื้ออาหารที่มีสารอาหารหนาแน่นได้',
			'onboarding.bmiScale.messages.healthy' => 'เยี่ยมมาก! คุณอยู่ในช่วงที่ดี เราจะช่วยให้คุณคงความแข็งแรงและพลังงานไว้',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} จะทำให้เส้นทางของคุณง่ายขึ้นด้วยการติดตามด้วย AI เพื่อช่วยให้ไปถึงเป้าหมายอย่างสบายใจ',
			'onboarding.bmiScale.messages.obese' => 'เราพร้อมสนับสนุนคุณด้วยคำแนะนำเฉพาะบุคคลและกลยุทธ์ที่ยั่งยืนเพื่อเป้าหมายสุขภาพของคุณ',
			'onboarding.weightGoal.title' => 'เป้าหมายของคุณคืออะไร?',
			'onboarding.weightGoal.description' => 'เลือกเป้าหมายที่ตรงกับสิ่งที่คุณอยากบรรลุ',
			'onboarding.activityLevel.title' => 'คุณมีกิจกรรมมากแค่ไหน?',
			'onboarding.activityLevel.description' => 'สิ่งนี้ช่วยให้เราคำนวณความต้องการแคลอรีรายวันของคุณได้แม่นยำขึ้น',
			'onboarding.healthConnect.title' => 'เชื่อมต่อกับ Health Connect',
			'onboarding.healthConnect.description' => 'ซิงค์ข้อมูลสุขภาพเพื่อข้อมูลเชิงลึกที่ดีขึ้นและติดตามแคลอรีอัตโนมัติ',
			'onboarding.healthConnect.automaticTracking.title' => 'ติดตามแคลอรีอัตโนมัติ',
			'onboarding.healthConnect.automaticTracking.description' => 'ติดตามแคลอรีที่เผาผลาญจากแอปฟิตเนสของคุณ',
			'onboarding.healthConnect.progressInsights.title' => 'ข้อมูลเชิงลึกของความก้าวหน้า',
			'onboarding.healthConnect.progressInsights.description' => 'รับข้อมูลเชิงลึกอย่างละเอียดเกี่ยวกับแนวโน้มสุขภาพของคุณ',
			'onboarding.healthConnect.seamlessIntegration.title' => 'ผสานการทำงานอย่างลื่นไหล',
			'onboarding.healthConnect.seamlessIntegration.description' => 'ซิงค์ข้อมูลจากแอปสุขภาพที่คุณชื่นชอบ',
			'onboarding.healthConnect.connected' => 'เชื่อมต่อ Health Connect แล้ว',
			'onboarding.healthConnect.notConnected' => 'ยังไม่ได้เชื่อมต่อ Health Connect',
			'onboarding.healthConnect.setup' => 'ตั้งค่า Health Connect',
			'onboarding.healthConnect.skipForNow' => 'ข้ามไปก่อน',
			'onboarding.healthConnect.statusConnected' => 'เชื่อมต่อ Health Connect แล้ว',
			'onboarding.healthConnect.statusSuccess' => 'เชื่อมต่อ Health Connect สำเร็จ!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'ปฏิเสธสิทธิ์ กรุณาเปิดสิทธิ์ Health Connect จากการตั้งค่าโทรศัพท์สำหรับ ${appLabel}',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'เกิดข้อผิดพลาดในการตั้งค่า Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'คุณไม่ได้เดินลำพัง',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'งานวิจัยชี้ว่าการติดตามอย่างสม่ำเสมอคือปัจจัยทำนายความสำเร็จระยะยาวอันดับ 1',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object gender, required Object age, required Object goal}) => 'สำหรับ${gender}อายุ ${age} ปี ที่ต้องการ ${goal} การติดตามอย่างสม่ำเสมอคือปัจจัยทำนายความสำเร็จอันดับ 1',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} ทำให้เรื่องนี้ง่ายขึ้นเป็น 10 เท่าเมื่อเทียบกับการทำเอง',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'พร้อมเริ่มแล้วหรือยัง?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'ถ่ายภาพมื้ออาหารเพื่อวิเคราะห์ทันที',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'บันทึกอย่างสม่ำเสมอเพื่อเห็นความก้าวหน้าที่มีความหมาย',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'ติดตามความก้าวหน้าทุกวันเพื่อรักษาแรงจูงใจ',
			'onboarding.reinforcement.trackingSuccess.button' => 'ไปกันเลย',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'บุคคล',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'การเป็นคุณที่สุขภาพดียิ่งขึ้น',
			'onboarding.reinforcement.healthProfile.title' => 'โปรไฟล์สุขภาพของคุณ',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'จากข้อมูลของคุณ BMI คือ ${bmi}',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'มาปิดท้ายโปรไฟล์ของคุณเพื่อปรับประสบการณ์ให้เหมาะกับคุณ',
			'onboarding.reinforcement.healthProfile.goalGain' => 'เพิ่ม',
			'onboarding.reinforcement.healthProfile.goalLose' => 'ลด',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'เพื่อให้ถึงเป้าหมาย คุณจะต้อง${direction} ${diff} ${unit}',
			'onboarding.reinforcement.healthProfile.goalReached' => 'คุณอยู่ที่น้ำหนักเป้าหมายแล้ว! เราจะช่วยคุณรักษาไว้',
			'onboarding.reinforcement.healthProfile.button' => 'ไปต่อกันเลย',
			'onboarding.reinforcement.goalLifestyle.title' => 'เริ่มต้นได้เยี่ยม!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'คุณได้ก้าวแรกสู่ ${goalText} แล้ว เนื่องจากคุณ${activityText} ${appLabel} จะปรับเป้าหมายให้เข้ากับไลฟ์สไตล์ของคุณ',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'เป้าหมายแคลอรีแบบเฉพาะคุณ',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'การตรวจจับมื้ออาหารด้วย AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'แจกแจงสารอาหารหลักอย่างละเอียด',
			'onboarding.reinforcement.goalLifestyle.button' => 'ไปกันเลย',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'เป้าหมายของคุณ',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'แอคทีฟ',
			'tabs.dashboard' => 'แดชบอร์ด',
			'tabs.history' => 'ประวัติ',
			'home.aiSummary.title' => 'สรุป AI ของคุณ',
			'home.aiSummary.logMore' => 'บันทึกมื้ออาหารเพิ่มในอีกไม่กี่วันข้างหน้าเพื่อรับข้อมูลเชิงลึกส่วนบุคคลจาก AI',
			'home.aiSummary.loading' => 'กำลังโหลดสรุปของคุณ...',
			'home.aiSummary.mealCount' => ({required Object count}) => 'บันทึกอาหารแล้ว ${count} มื้อ',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'คะแนนสมดุลมาโคร ${score}',
			'home.aiSummary.topFoods' => 'อาหารยอดนิยม',
			'home.aiSummary.trendUp' => 'แคลอรีมีแนวโน้มเพิ่มขึ้น',
			'home.aiSummary.trendDown' => 'แคลอรีมีแนวโน้มลดลง',
			'home.aiSummary.trendSteady' => 'แคลอรีทรงตัว',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'อัปเดตเมื่อ ${time}',
			'home.dailyGoal.title' => 'ตั้งเป้าหมายรายวันของคุณ',
			'home.dailyGoal.titleSet' => 'เป้าหมายรายวันของคุณ',
			'home.dailyGoal.description' => 'พร้อมออกเดินทางสู่สุขภาพที่ดีขึ้นหรือยัง? ตั้งเป้าแคลอรีรายวันด้านล่างเพื่อเริ่มต้นความก้าวหน้า',
			'home.dailyGoal.descriptionSet' => 'เข็มทิศของคุณถูกตั้งไว้แล้ว! นี่คือเป้าหมายแคลอรีรายวันเพื่อคอยนำทางคุณ',
			'home.dailyGoal.yourGoal' => 'เป้าหมายของคุณ',
			'home.dailyGoal.goal' => 'เป้าหมาย',
			'home.dailyGoal.dailyCalories' => 'แคลอรีต่อวัน (kcal)',
			'home.dailyGoal.setGoal' => 'ตั้งเป้าหมาย',
			'home.dailyGoal.intake' => 'รับเข้า',
			'home.dailyGoal.burned' => 'เผาผลาญ',
			'home.dailyGoal.weightImpact' => 'ผลต่อน้ำหนัก',
			'home.dailyGoal.estLoss' => 'คาดว่าจะลด',
			'home.dailyGoal.estGain' => 'คาดว่าจะเพิ่ม',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'สรุปรายวัน',
			'home.dailySummary.calories' => 'แคลอรี',
			'home.dailySummary.carbs' => 'คาร์บ',
			'home.dailySummary.protein' => 'โปรตีน',
			'home.dailySummary.fat' => 'ไขมัน',
			'home.dailySummary.fiber' => 'ใยอาหาร',
			'home.dailySummary.grams' => 'กรัม',
			'home.dailySummary.chartAccessibilityLabel' => 'แผนภูมิสารอาหารหลัก',
			'home.intakeProgress.title' => 'สัดส่วนมาโครวันนี้',
			'home.intakeProgress.target' => 'เป้าหมาย',
			'home.intakeProgress.current' => 'ปัจจุบัน',
			'home.intakeHistory.title' => 'ประวัติมาโคร 7 วัน',
			'home.intakeHistory.trendTitle' => 'แนวโน้มวันนี้',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'จุดพีค: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'ยังไม่มีประวัติ',
			'home.intakeHistory.startLogging' => 'เริ่มบันทึกมื้ออาหารเพื่อดู\nแนวโน้มมาโคร 7 วันที่นี่',
			'home.mealLog.title' => 'มื้อที่บันทึก',
			'home.mealLog.emptyMessage' => 'ถ่ายรูปมื้อที่ผ่านมาเพื่อบันทึกที่นี่',
			'home.mealLog.noMealsToday' => 'ยังไม่มีมื้ออาหารสำหรับวันนี้',
			'home.mealLog.seeAllMeals' => 'ดูมื้อทั้งหมด',
			'home.mealDescription.title' => 'เพิ่มเร็วด้วย AI',
			'home.mealDescription.description' => 'บรรยายมื้อของคุณ แล้วให้ AI จัดการรายละเอียด',
			'home.mealDescription.hint' => 'เช่น มื้อเช้าฉันทานโอ๊ตชามใหญ่ ใส่กล้วยหั่นหนึ่งผล และเวย์โปรตีนหนึ่งสกู๊ป ...',
			'home.mealDescription.analyzeMeal' => 'วิเคราะห์มื้ออาหาร',
			'home.favoriteMeals.title' => 'มื้อโปรด',
			'home.favoriteMeals.description' => 'เพิ่มหนึ่งในมื้อโปรดของคุณอย่างรวดเร็ว',
			'home.favoriteMeals.noFavorites' => 'ยังไม่มีมื้อโปรด',
			'home.favoriteMeals.addFavoriteHint' => 'กดดาวที่มื้ออาหารเพื่อบันทึกเป็นรายการโปรด',
			'home.favoriteMeals.seeAll' => 'ดูทั้งหมด',
			'home.favoriteMeals.add' => 'เพิ่ม',
			'home.mealSnap.title' => 'ถ่ายและติดตามมื้อของคุณ',
			'home.mealSnap.description' => 'ใช้กล้องถ่ายภาพอาหารเพื่อให้ AI วิเคราะห์',
			'home.mealSnap.openCamera' => 'เปิดกล้อง',
			'home.mealSnap.gallery' => 'แกลเลอรี',
			'home.mealSnap.compressingPhoto' => 'กำลังปรับรูปภาพให้เหมาะสม…',
			'home.mealSnap.uploadingPhoto' => 'กำลังอัปโหลดรูปภาพ…',
			'home.connectHealth.title' => 'ซิงค์กับ Health Connect',
			'home.connectHealth.description' => 'ซิงค์ข้อมูลโภชนาการของคุณกับ Health Connect',
			'home.connectHealth.install' => 'ติดตั้ง',
			'home.connectHealth.connect' => 'เชื่อมต่อ',
			'history.noMeals' => 'ยังไม่มีมื้ออาหาร',
			'history.emptyMessage' => 'ถ่ายรูปมื้อที่ผ่านมาเพื่อบันทึกที่นี่',
			'history.today' => 'วันนี้',
			'history.yesterday' => 'เมื่อวาน',
			'meal.ohNo' => 'โอ้ ไม่!',
			'meal.delete' => 'ลบ',
			'meal.editMeal' => 'แก้ไขมื้ออาหาร',
			'meal.addMeal' => 'เพิ่มมื้ออาหาร',
			'meal.saveMeal' => 'บันทึกมื้ออาหาร',
			'meal.save' => 'บันทึก',
			'meal.mealName' => 'ชื่อมื้ออาหาร',
			'meal.mealNameHint' => 'เช่น ไข่คนกับขนมปังปิ้ง',
			'meal.mealQuantity' => 'ปริมาณมื้ออาหาร',
			'meal.mealQuantityHint' => 'เช่น 1 ชาม, 2 ชิ้น',
			'meal.timeOfMeal' => 'เวลาที่รับประทาน',
			'meal.timeOfMealHint' => 'เลือกเวลาที่คุณรับประทานมื้อนี้',
			'meal.mealType' => 'ประเภทมื้ออาหาร',
			'meal.nutrition.calories' => 'แคลอรี',
			'meal.nutrition.carbs' => 'คาร์บ (กรัม)',
			'meal.nutrition.protein' => 'โปรตีน (กรัม)',
			'meal.nutrition.fat' => 'ไขมัน (กรัม)',
			'meal.nutrition.fiber' => 'ใยอาหาร (กรัม)',
			'meal.deleteConfirmation.title' => 'ลบมื้ออาหาร',
			'meal.deleteConfirmation.message' => 'แน่ใจหรือไม่ว่าต้องการลบบันทึกมื้อนี้?',
			'meal.deleteConfirmation.cancel' => 'ยกเลิก',
			'meal.deleteConfirmation.delete' => 'ลบ',
			'meal.addedToLog' => 'เพิ่มมื้ออาหารลงในบันทึกแล้ว!',
			'meal.couldNotAdd' => ({required Object error}) => 'ไม่สามารถเพิ่มมื้ออาหาร: ${error}',
			'meal.savedSuccessfully' => 'เพิ่มมื้ออาหารเรียบร้อย!',
			'meal.updatedSuccessfully' => 'อัปเดตมื้ออาหารเรียบร้อย!',
			'meal.errorSaving' => ({required Object error}) => 'เกิดข้อผิดพลาดในการบันทึกมื้ออาหาร: ${error}',
			'meal.removedFromFavorites' => 'เอาออกจากรายการโปรดแล้ว!',
			'meal.savedAsFavorite' => 'บันทึกมื้ออาหารเป็นรายการโปรดแล้ว!',
			'meal.unfavorite' => 'เลิกรายการโปรด',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'ไม่สามารถอัปเดตรายการโปรด: ${error}',
			'meal.feedbackThanks' => 'ขอบคุณสำหรับความคิดเห็น!',
			'meal.reanalysisUpdated' => 'อัปเดตการวิเคราะห์มื้ออาหารตามความคิดเห็นของคุณแล้ว',
			'meal.failedToProcess' => ({required Object error}) => 'ไม่สามารถประมวลผล: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'ไม่สามารถประมวลผลรูปภาพ: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'เกิดข้อผิดพลาดขณะบีบอัดรูปภาพ: ${error}',
			'meal.failedToSave' => 'บันทึกข้อมูลไม่สำเร็จ โปรดลองอีกครั้ง',
			'meal.skip' => 'ข้าม',
			'meal.variation.question' => ({required Object current, required Object total}) => 'คำถาม ${current} จาก ${total}',
			'meal.variation.noVariationsAvailable' => 'ไม่มีรูปแบบให้เลือก',
			'meal.analysis.title' => 'การวิเคราะห์มื้ออาหารด้วย AI',
			'meal.analysis.reassurance' => 'โดยปกติจะใช้เวลาเพียงไม่กี่วินาที',
			'meal.analysis.stepStarted' => 'เริ่มต้น…',
			'meal.analysis.stepDecomposition' => 'กำลังทำความเข้าใจมื้อของคุณ…',
			'meal.analysis.stepIngredients' => 'กำลังจับคู่องค์ประกอบกับข้อมูลโภชนาการ…',
			'meal.analysis.stepUncertainty' => 'กำลังตรวจสอบความมั่นใจ…',
			'meal.analysis.stepMealTypeQuestion' => 'เกือบเสร็จแล้ว…',
			'meal.analysis.stepResult' => 'กำลังสรุปผลลัพธ์…',
			'meal.analysis.stepError' => 'เกิดข้อผิดพลาดบางอย่าง',
			'meal.analysis.stepDefault' => 'กำลังวิเคราะห์มื้ออาหารของคุณ…',
			'meal.analysis.progressUnderstand' => 'ทำความเข้าใจ',
			'meal.analysis.progressMatch' => 'จับคู่',
			'meal.analysis.progressCheck' => 'ตรวจสอบ',
			'meal.analysis.progressFinish' => 'เสร็จสิ้น',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'ตรวจพบส่วนผสม ${count} รายการ',
			'meal.analysis.ingredientsPending' => 'กำลังสแกนส่วนผสม…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'อะไรดูไม่ถูกต้อง?',
			'meal.feedback.subtitle' => 'ช่วยเราปรับปรุงการวิเคราะห์โดยเลือกหนึ่งหรือหลายปัญหา',
			'meal.feedback.tellUsMore' => 'บอกเราเพิ่มเติม',
			'meal.feedback.describeIncorrect' => 'อธิบายสิ่งที่ไม่ถูกต้อง',
			'meal.feedback.submit' => 'ส่ง',
			'meal.feedback.issueFoodIdentification' => 'การระบุอาหาร',
			'meal.feedback.issuePortionSize' => 'ขนาดหนึ่งหน่วยบริโภค',
			'meal.feedback.issueCalorieDistribution' => 'การกระจายแคลอรี',
			'meal.feedback.issueMacrosWrong' => 'มาโครไม่ถูกต้อง',
			'meal.feedback.issueMissingItems' => 'รายการที่ขาดหายไป',
			'meal.feedback.issueExtraItems' => 'รายการเพิ่มเติม',
			'meal.feedback.issueOther' => 'อื่น ๆ',
			'favorites.title' => 'รายการโปรด',
			'favorites.empty' => 'ยังไม่มีมื้อโปรด',
			'favorites.searchPlaceholder' => 'ค้นหามื้อโปรด',
			'favorites.searchEmptyTitle' => 'ไม่พบรายการโปรดที่ตรงกับการค้นหา',
			'favorites.searchEmptySubtitle' => 'ลองใช้ชื่อมื้อ ปริมาณ หรือประเภทมื้อแบบอื่น',
			'favorites.sortLabel' => 'เรียงรายการโปรด',
			'favorites.undo' => 'เลิกทำ',
			'favorites.removed' => ({required Object name}) => 'ลบ ${name} ออกจากรายการโปรดแล้ว',
			'favorites.sortOptions.recent' => 'ล่าสุด',
			'favorites.sortOptions.calories' => 'แคลอรี',
			'favorites.sortOptions.alphabetical' => 'ตามตัวอักษร (A-Z)',
			'profile.title' => 'โปรไฟล์',
			'profile.noProfileData' => 'ไม่พบข้อมูลโปรไฟล์',
			'profile.yourProfile' => 'โปรไฟล์ของคุณ',
			'profile.viewAndManage' => 'ดูและจัดการข้อมูลสุขภาพของคุณ',
			'profile.sections.profile' => 'โปรไฟล์',
			'profile.sections.basicInformation' => 'ข้อมูลพื้นฐาน',
			'profile.sections.goalsAndActivity' => 'เป้าหมายและกิจกรรม',
			'profile.sections.calculatedValues' => 'ค่าที่คำนวณได้',
			'profile.gender' => 'เพศ',
			'profile.height' => 'ส่วนสูง',
			'profile.weight' => 'น้ำหนัก',
			'profile.age' => 'อายุ',
			'profile.weightGoal' => 'เป้าหมายน้ำหนัก',
			'profile.targetWeight' => 'น้ำหนักเป้าหมาย',
			'profile.activityLevel' => 'ระดับกิจกรรม',
			'profile.healthMetrics' => 'ตัวชี้วัดสุขภาพ',
			'profile.notSet' => 'ยังไม่ตั้งค่า',
			'profile.years' => 'ปี',
			'profile.updatedSuccessfully' => 'อัปเดตโปรไฟล์เรียบร้อย!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'เป้าหมายรายวัน',
			'profile.calculatedValues.calPerDay' => 'แคล/วัน',
			'profile.calculatedValues.notAvailable' => 'ไม่พร้อมใช้งาน',
			'healthScore.title' => 'คะแนนสุขภาพ',
			'healthScore.whyThisScore' => 'ทำไมถึงได้คะแนนนี้?',
			'healthScore.note' => 'คะแนนนี้เป็นการประเมินโดย AI จากส่วนผสมที่ตรวจพบและความหนาแน่นของสารอาหาร โปรดปรึกษาผู้เชี่ยวชาญเพื่อขอคำแนะนำด้านโภชนาการที่เหมาะกับคุณ',
			'healthScore.unhealthy' => 'ไม่ดีต่อสุขภาพ',
			'healthScore.healthy' => 'ดีต่อสุขภาพ',
			'healthScore.neutral' => 'กึ่งกลาง',
			'editProfile.title' => 'แก้ไขโปรไฟล์',
			'editProfile.sections.personalInformation' => 'ข้อมูลส่วนตัว',
			'editProfile.sections.physicalMeasurements' => 'ข้อมูลสัดส่วนร่างกาย',
			'editProfile.sections.goalsAndActivity' => 'เป้าหมายและกิจกรรม',
			'editProfile.gender' => 'เพศ',
			'editProfile.dateOfBirth' => 'วันเดือนปีเกิด',
			'editProfile.height' => 'ส่วนสูง',
			'editProfile.weight' => 'น้ำหนัก',
			'editProfile.weightGoal' => 'เป้าหมายน้ำหนัก',
			'editProfile.activityLevel' => 'ระดับกิจกรรม',
			'editProfile.metric' => 'เมตริก',
			'editProfile.imperial' => 'อิมพีเรียล',
			'editProfile.unitCm' => 'ซม.',
			'editProfile.unitFt' => 'ฟุต',
			'editProfile.unitKg' => 'กก.',
			'editProfile.unitLbs' => 'ปอนด์',
			'editProfile.metricCm' => 'เมตริก (ซม.)',
			'editProfile.imperialFtIn' => 'อิมพีเรียล (ฟุต/นิ้ว)',
			'editProfile.metricKg' => 'เมตริก (กก.)',
			'editProfile.imperialLbs' => 'อิมพีเรียล (ปอนด์)',
			'editProfile.genders.male' => 'ชาย',
			'editProfile.genders.female' => 'หญิง',
			'editProfile.genders.other' => 'อื่นๆ',
			'editProfile.weightGoals.loseWeight.name' => 'ลดน้ำหนัก',
			'editProfile.weightGoals.loseWeight.description' => 'สร้างภาวะแคลอรีขาดดุลเพื่อให้น้ำหนักลดลง',
			'editProfile.weightGoals.maintainWeight.name' => 'คุมน้ำหนัก',
			'editProfile.weightGoals.maintainWeight.description' => 'คงน้ำหนักปัจจุบันของคุณ',
			'editProfile.weightGoals.gainWeight.name' => 'เพิ่มน้ำหนัก',
			'editProfile.weightGoals.gainWeight.description' => 'สร้างภาวะแคลอรี่เกินเพื่อเพิ่มน้ำหนัก',
			'editProfile.activityLevels.sedentary.name' => 'ไม่ค่อยออกกำลังกาย',
			'editProfile.activityLevels.sedentary.description' => 'แทบไม่ออกกำลังกาย',
			'editProfile.activityLevels.lightlyActive.name' => 'กิจกรรมเบา',
			'editProfile.activityLevels.lightlyActive.description' => 'ออกกำลังกายเบาๆ 1–3 วัน/สัปดาห์',
			'editProfile.activityLevels.moderatelyActive.name' => 'กิจกรรมปานกลาง',
			'editProfile.activityLevels.moderatelyActive.description' => 'ออกกำลังกายปานกลาง 3–5 วัน/สัปดาห์',
			'editProfile.activityLevels.veryActive.name' => 'กิจกรรมหนัก',
			'editProfile.activityLevels.veryActive.description' => 'ออกกำลังกายหนัก 6–7 วัน/สัปดาห์',
			'editProfile.activityLevels.extremelyActive.name' => 'กิจกรรมหนักมาก',
			'editProfile.activityLevels.extremelyActive.description' => 'ออกกำลังกายหนักมากหรือทำงานใช้แรงกาย',
			'settings.title' => 'การตั้งค่า',
			'settings.sections.profile' => 'โปรไฟล์',
			'settings.sections.localization' => 'ภาษาและภูมิภาค',
			'settings.sections.notifications' => 'การแจ้งเตือน',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'การสนับสนุนและเงื่อนไข',
			'settings.sections.about' => 'เกี่ยวกับ',
			'settings.sections.dangerZone' => 'โซนอันตราย',
			'settings.sections.developer' => 'นักพัฒนา',
			'settings.editProfile.title' => 'แก้ไขโปรไฟล์',
			'settings.editProfile.subtitle' => 'อัปเดตข้อมูลส่วนตัวของคุณ',
			'settings.language.title' => 'ภาษา',
			'settings.language.subtitle' => 'เลือกภาษาที่คุณต้องการ',
			'settings.language.searchHint' => 'ค้นหาภาษา...',
			'settings.language.noResults' => 'ไม่พบผลลัพธ์',
			'settings.heightUnit.title' => 'หน่วยความสูง',
			'settings.weightUnit.title' => 'หน่วยน้ำหนัก',
			'settings.mealReminders.title' => 'การเตือนมื้ออาหาร',
			'settings.mealReminders.subtitle' => 'ไม่พลาดด้วยการแจ้งเตือนตรงเวลา',
			'settings.theme.title' => 'ธีม',
			'settings.theme.light' => 'สว่าง',
			'settings.theme.dark' => 'มืด',
			'settings.theme.system' => 'ตามระบบ',
			'settings.sendFeedback.title' => 'ส่งความคิดเห็น',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'ช่วยให้ ${appLabel} ดีขึ้น',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'ข้อเสนอแนะเกี่ยวกับแอป ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'โปรดให้ข้อเสนอแนะของคุณด้านล่าง:',
			'settings.sendFeedback.appVersion' => 'เวอร์ชันแอป',
			'settings.sendFeedback.device' => 'อุปกรณ์',
			'settings.sendFeedback.osVersion' => 'เวอร์ชันระบบปฏิบัติการ',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'ส่งออกประวัติอาหาร',
			'settings.exportMealHistory.subtitle' => 'แชร์ไฟล์ CSV ของมื้อที่คุณบันทึก',
			'settings.exportMealHistory.shareText' => 'ไฟล์ส่งออกประวัติอาหารจาก Calorify ของคุณ',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'ไม่สามารถส่งออกประวัติอาหาร: ${error}',
			'settings.clearAllData.title' => 'ล้างข้อมูลทั้งหมด',
			'settings.clearAllData.subtitle' => 'ลบข้อมูลทั้งหมดของคุณอย่างถาวร',
			'settings.clearAllData.confirmationTitle' => 'ล้างข้อมูลทั้งหมด?',
			'settings.clearAllData.confirmationMessage' => 'การกระทำนี้ไม่สามารถย้อนกลับได้ มื้อที่บันทึก รายการโปรด และการตั้งค่าโปรไฟล์ทั้งหมดจะถูกลบถาวร',
			'settings.clearAllData.cancel' => 'ยกเลิก',
			'settings.clearAllData.clearEverything' => 'ล้างทั้งหมด',
			'settings.debugOptions.title' => 'ตัวเลือกการดีบัก',
			'settings.developerModeEnabled' => 'เปิดโหมดนักพัฒนาแล้ว!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'ดูและจัดการสิทธิ์',
			'settings.healthConnect.unavailable.title' => 'Health Connect ใช้งานไม่ได้',
			'settings.healthConnect.unavailable.description' => 'อุปกรณ์นี้ไม่รองรับ Health Connect โปรดติดตั้งจาก Play Store (Android 9+) หรืออัปเดตเป็น Android 14+',
			'settings.healthConnect.permissions.title' => 'สิทธิ์',
			'settings.healthConnect.permissions.description' => 'ต้องการสิทธิ์ต่อไปนี้เพื่อใช้งานการเชื่อมต่อกับ Health Connect:',
			'settings.healthConnect.permissions.granted' => 'อนุญาตแล้ว',
			'settings.healthConnect.permissions.notGranted' => 'ยังไม่อนุญาต',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'อ่านจำนวนแคลอรีที่เผาผลาญทั้งหมด',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'อนุญาตให้แอปอ่านแคลอรีที่คุณเผาผลาญทั้งหมดจาก Health Connect',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'ใช้เพื่อแสดงแคลอรีที่คุณเผาผลาญต่อวันในแอป ช่วยให้คุณเข้าใจการใช้พลังงานรวมตลอดทั้งวัน',
			'settings.healthConnect.permissions.nutritionRead.title' => 'อ่านข้อมูลโภชนาการ',
			'settings.healthConnect.permissions.nutritionRead.description' => 'อนุญาตให้แอปอ่านข้อมูลโภชนาการจาก Health Connect',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'ช่วยให้แอปอ่านข้อมูลโภชนาการที่อาจถูกบันทึกโดยแอปอื่นที่เชื่อมต่อกับ Health Connect เพื่อมุมมองที่ครอบคลุมยิ่งขึ้น',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'เขียนข้อมูลโภชนาการ',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'อนุญาตให้แอปเขียนข้อมูลโภชนาการไปยัง Health Connect',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'ช่วยให้แอปซิงค์มื้อที่คุณบันทึกไปยัง Health Connect ทำให้ข้อมูลโภชนาการพร้อมใช้งานกับแอปสุขภาพและฟิตเนสอื่นๆ ของคุณ',
			'settings.healthConnect.managePermissions' => 'จัดการสิทธิ์',
			'settings.healthConnect.openSettings' => 'เปิดการตั้งค่า Health Connect',
			'settings.healthConnect.requestPermissions' => 'ขอสิทธิ์',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'การขอสิทธิ์ถูกยกเลิกหรือไม่สำเร็จ โปรดลองอีกครั้งหรือให้สิทธิ์ด้วยตนเองในการตั้งค่า Health Connect',
			'settings.healthConnect.permissionRequestFailed' => 'ไม่สามารถขอสิทธิ์ได้ โปรดลองอีกครั้งหรือให้สิทธิ์ด้วยตนเองในการตั้งค่า Health Connect',
			'settings.healthConnect.requestingPermissions' => 'กำลังขอสิทธิ์...',
			'settings.about.title' => 'เกี่ยวกับ',
			'settings.about.tagline' => 'รวดเร็ว ฟรี และให้ความสำคัญกับความเป็นส่วนตัวเป็นอันดับแรก',
			'settings.about.ourStory.title' => 'เรื่องราวของเรา',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} เกิดจากความไม่สะดวกง่ายๆ: แอปนับแคลอรีส่วนใหญ่มักซับซ้อนเกินไป ต้องกรอกข้อมูลเองตลอดเวลา เก็บค่าบริการแพง หรือกระทบต่อความเป็นส่วนตัว\n\nในฐานะนักพัฒนาเดี่ยว ฉันอยากสร้างสิ่งที่เรียบง่ายและยุติธรรมกว่า — แอปที่ใช้ AI เพื่อลดความยุ่งยาก ทำงานได้รวดเร็ว ฟรี และเคารพข้อมูลสุขภาพของคุณ\n\n${appLabel} คือแอปที่ฉันอยากให้มีอยู่: ไม่ต้องมีบัญชี ไม่ติดตาม ไม่ลงโฆษณา — มีเพียงข้อมูลเชิงปฏิบัติที่ชัดเจนและเป้าหมายสุขภาพของคุณ',
			'settings.about.privacy.title' => 'ความเป็นส่วนตัวของคุณสำคัญ',
			'settings.about.privacy.description' => 'ความเป็นส่วนตัวไม่ใช่เรื่องหลังบ้าน — แต่เป็นหลักการออกแบบ นี่คือความหมายในทางปฏิบัติ:',
			'settings.about.privacy.noAccounts' => 'ไม่ต้องมีบัญชีผู้ใช้\nใช้งานได้ทันที ไม่ต้องสมัคร ไม่ต้องระบุตัวตน',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'ไม่มีการติดตามพฤติกรรม\n${appLabel} จะไม่เฝ้าติดตามการใช้งาน สร้างโปรไฟล์พฤติกรรม หรือ ติดตามคุณข้ามแอปหรือเว็บไซต์',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'ไร้โฆษณาตามการออกแบบ\n${appLabel} ถูกสร้างมาให้ทำงานได้โดยไม่ต้องพึ่งโฆษณาหรือการทำเงินจากข้อมูล',
			'settings.about.privacy.noDataSelling' => 'ไม่ขายข้อมูล\nข้อมูลสุขภาพของคุณจะไม่ถูกขายหรือแชร์ให้บุคคลที่สาม',
			'settings.about.privacy.localStorage' => 'บันทึกข้อมูลบนอุปกรณ์เป็นหลัก\nข้อมูลของคุณจะอยู่บนอุปกรณ์ของคุณ',
			'settings.about.privacy.privacyPolicy' => 'นโยบายความเป็นส่วนตัว',
			'settings.about.developer.title' => 'สร้างโดยนักพัฒนาเดี่ยว',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} ถูกพัฒนาและดูแลโดยนักพัฒนาเดี่ยวที่มุ่งสร้างซอฟต์แวร์สุขภาพที่เรียบง่ายและเคารพความเป็นส่วนตัว\n\nทุกคำติชมถูกอ่านด้วยตัวเองและช่วยกำหนดทิศทางของแอป',
			'settings.about.developer.website' => 'เว็บไซต์',
			'settings.about.developer.email' => 'อีเมล',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'ชอบ ${appLabel} ไหม?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'ความคิดเห็นของคุณทำให้ ${appLabel} ดีขึ้นสำหรับทุกคน',
			'settings.about.feedback.rateApp' => 'ให้คะแนนบน Play Store',
			'settings.about.feedback.sendFeedback' => 'ส่งความคิดเห็น',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'บิลด์ ${buildNumber}',
			'reminders.title' => 'ไม่หลุดเป้าด้วยการเตือน',
			'reminders.description' => 'รับการเตือนอย่างนุ่มนวลให้บันทึกมื้ออาหารและคงความสม่ำเสมอกับเป้าหมายโภชนาการของคุณ',
			'reminders.notificationsEnabled' => 'เปิดการแจ้งเตือนแล้ว',
			'reminders.notificationsDisabled' => 'ปิดการแจ้งเตือน',
			'reminders.enabledSubtitle' => 'คุณจะได้รับการเตือนมื้ออาหาร',
			'reminders.disabledSubtitle' => 'เปิดการแจ้งเตือนเพื่อรับการเตือนมื้ออาหาร',
			'reminders.mealReminders' => 'การเตือนมื้ออาหาร',
			'reminders.breakfast' => 'มื้อเช้า',
			'reminders.lunch' => 'มื้อกลางวัน',
			'reminders.dinner' => 'มื้อเย็น',
			'reminders.snack' => 'ของว่าง',
			'reminders.unknown' => 'ไม่ระบุ',
			'reminders.change' => 'เปลี่ยน',
			'reminders.enableNotifications' => 'เปิดการแจ้งเตือน',
			'reminders.skipForNow' => 'ข้ามไปก่อน',
			'reminders.saveChanges' => 'บันทึกการเปลี่ยนแปลง',
			'reminders.enabledSuccessfully' => 'เปิดการแจ้งเตือนเรียบร้อย!',
			'reminders.permissionDenied' => 'ปฏิเสธการอนุญาตการแจ้งเตือน',
			'reminders.errorEnabling' => ({required Object error}) => 'เกิดข้อผิดพลาดในการเปิดการแจ้งเตือน: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'เกิดข้อผิดพลาดในการตั้งค่าให้เสร็จสิ้น: ${error}',
			'notifications.breakfast.title' => 'ถึงเวลาอาหารเช้า! 🍳',
			'notifications.breakfast.body' => 'อย่าลืมบันทึกมื้อเช้าของคุณ',
			'notifications.lunch.title' => 'ถึงเวลาอาหารกลางวัน! 🥗',
			'notifications.lunch.body' => 'ได้เวลาบันทึกมื้อกลางวันแล้ว',
			'notifications.dinner.title' => 'ถึงเวลาอาหารเย็น! 🍽️',
			'notifications.dinner.body' => 'อย่าลืมบันทึกมื้อเย็นของคุณ',
			'notifications.snack.title' => 'ถึงเวลาอาหารว่าง! 🍎',
			'notifications.snack.body' => 'ได้เวลาของว่างที่ดีต่อสุขภาพแล้ว',
			'notifications.test.title' => 'ทดสอบการแจ้งเตือน',
			'login.title' => 'เข้าสู่ระบบ',
			'login.signInWithGoogle' => 'ลงชื่อเข้าใช้ด้วย Google',
			'login.signInFailed' => 'การลงชื่อเข้าใช้ด้วย Google ล้มเหลวหรือถูกยกเลิก',
			'disclaimer.pleaseNote' => 'โปรดทราบ',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} ให้ข้อมูลโภชนาการโดยประมาณ ความแม่นยำขึ้นอยู่กับข้อมูลที่คุณให้และความแตกต่างของอาหาร ใช้เป็นแนวทาง ไม่ใช่แหล่งข้อมูลที่ชี้ขาด โปรดปรึกษาผู้เชี่ยวชาญเพื่อคำแนะนำด้านโภชนาการเฉพาะบุคคล',
			'disclaimer.snap.portionSize.title' => 'ขนาดส่วนอาหาร',
			'disclaimer.snap.portionSize.description' => 'ความแม่นยำของการประเมินขึ้นอยู่กับการประเมินขนาดส่วนอาหารของคุณอย่างถูกต้อง',
			'disclaimer.snap.preparationMethods.title' => 'วิธีการปรุง',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'วิธีการปรุงสามารถเปลี่ยนแปลงคุณค่าทางโภชนาการได้อย่างมาก การประเมินของ ${appLabel} อาจไม่ครอบคลุมความแตกต่างเหล่านี้เสมอไป',
			'disclaimer.snap.ingredients.title' => 'ส่วนผสม',
			'disclaimer.snap.ingredients.description' => 'เมนูที่ซับซ้อนและมีส่วนผสมแฝงจำนวนมากอาจทำให้การประเมินแม่นยำน้อยลง',
			'disclaimer.snap.databaseLimitations.title' => 'ข้อจำกัดของฐานข้อมูล',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'ฐานข้อมูลองค์ประกอบอาหารของ ${appLabel} มีขนาดใหญ่ แต่ไม่อาจครอบคลุมอาหารหรือทุกรูปแบบได้ทั้งหมด',
			'disclaimer.weightEstimate.title' => 'เกี่ยวกับการคาดการณ์น้ำหนัก',
			'disclaimer.weightEstimate.description' => 'การคาดการณ์การเปลี่ยนแปลงน้ำหนักเป็นการประเมินเชิงทฤษฎีตามโมเดลแคลอรีเข้า-แคลอรีออก ใช้เพื่อสร้างแรงจูงใจเท่านั้น ไม่ใช่การทำนายน้ำหนักจริงของคุณ',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'ความแม่นยำของแคลอรี',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'ความแม่นยำนี้ขึ้นอยู่กับการบันทึกแคลอรีที่รับเข้าและที่เผาผลาญของคุณ หากบันทึกไม่แม่นยำ การคาดการณ์ก็จะไม่แม่นยำ',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'ปัจจัยทางชีวภาพ',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'น้ำหนักจริงได้รับอิทธิพลจากการเผาผลาญ ฮอร์โมน การนอน ความเครียด ระดับน้ำในร่างกาย และปัจจัยเฉพาะบุคคลอื่นๆ ที่ ${appLabel} ไม่สามารถวัดได้',
			'disclaimer.weightEstimate.waterWeight.title' => 'น้ำในร่างกายและความผันผวน',
			'disclaimer.weightEstimate.waterWeight.description' => 'น้ำหนักรายวันสามารถผันผวนได้มากจากการกักเก็บน้ำ การย่อยอาหาร และจังหวะเวลา การคาดการณ์นี้ไม่ได้คำนึงถึงความผันผวนรายวันเหล่านี้',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'คำแนะนำจากผู้เชี่ยวชาญ',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'อย่าใช้การคาดการณ์นี้เพื่อตัดสินใจด้านการแพทย์ โปรดปรึกษาผู้เชี่ยวชาญด้านสุขภาพหรือโภชนากรเพื่อคำแนะนำส่วนบุคคล',
			'disclaimer.healthMetrics.description' => 'ตัวชี้วัดเหล่านี้ช่วยให้คุณเข้าใจความต้องการพลังงานของร่างกายและนำทางเป้าหมายโภชนาการของคุณ',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'อัตราการเผาผลาญพื้นฐาน (BMR) คือจำนวนแคลอรีที่ร่างกายใช้ขณะพักเพื่อคงการทำงานพื้นฐาน เช่น การหายใจและการไหลเวียน BMR ขึ้นอยู่กับอายุ เพศ ส่วนสูง และน้ำหนัก BMR ที่สูงหมายถึงร่างกายเผาผลาญแคลอรีขณะพักได้มาก มักเกิดจากมวลกล้ามเนื้อมากกว่า อายุที่น้อยกว่า หรือเพศชาย ส่วน BMR ต่ำมักบ่งบอกถึงมวลกล้ามเนื้อน้อยกว่า อายุที่มากขึ้น หรือเพศหญิง',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'การใช้พลังงานทั้งหมดต่อวัน (TDEE) คือแคลอรีทั้งหมดที่คุณเผาผลาญในหนึ่งวัน รวม BMR และกิจกรรมทางกายภาพกับการเคลื่อนไหวในชีวิตประจำวัน TDEE ขึ้นกับ BMR และระดับกิจกรรม TDEE สูงหมายถึงเผาผลาญมากขึ้นโดยรวม มักมาจากการเคลื่อนไหวมากหรือมี BMR สูง ส่วน TDEE ต่ำบ่งชี้ว่ามีกิจกรรมน้อยหรือ BMR ต่ำ',
			'disclaimer.healthMetrics.dailyGoal.title' => 'เป้าหมายรายวัน',
			'disclaimer.healthMetrics.dailyGoal.description' => 'เป้าหมายรายวันคือปริมาณแคลอรีที่แนะนำต่อวันตาม TDEE และเป้าหมายน้ำหนักของคุณ หากต้องการลดน้ำหนัก ให้รับแคลอรีน้อยกว่า TDEE หากต้องการคุมน้ำหนัก ให้รับใกล้เคียง TDEE หากต้องการเพิ่มน้ำหนัก ให้รับมากกว่า TDEE สิ่งนี้ช่วยให้คุณบรรลุการเปลี่ยนน้ำหนักตามจังหวะที่ดีต่อสุขภาพ',
			'disclaimer.calorieExpenditure.title' => 'การประเมินแคลอรีที่เผาผลาญ',
			'disclaimer.calorieExpenditure.description' => 'เมื่อไม่มีข้อมูลจาก Health Connect เราจะประเมินแคลอรีที่เผาผลาญวันนี้โดยใช้ BMR และระดับกิจกรรม (TDEE) ของคุณ ปรับตามสัดส่วนเวลาของวันที่ผ่านไป',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'คำนวณอย่างไร',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'เราจะคำนวณ TDEE (อิงจากโปรไฟล์ของคุณ) แล้วคูณด้วยเศษส่วนของวันเวลาที่ผ่านไป (ชั่วโมง + นาที) / 24 เพื่อประมาณแคลอรีที่เผาผลาญจนถึงตอนนี้',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'คำแนะนำจากผู้เชี่ยวชาญ',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'อย่าใช้ค่าประเมินนี้เพื่อตัดสินใจด้านการแพทย์ โปรดปรึกษาผู้เชี่ยวชาญด้านสุขภาพหรือโภชนากรเพื่อคำแนะนำส่วนบุคคล',
			'common.close' => 'ปิด',
			'common.kContinue' => 'ดำเนินการต่อ',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'ชอบ ${appLabel} ไหม?',
			'feedbackRating.yes' => 'ใช่ ชอบมาก',
			'feedbackRating.no' => 'ยังไม่เท่าไร',
			'feedbackRating.rateStepHeading' => 'ให้คะแนนบน Play Store',
			'feedbackRating.emailStepHeading' => 'ส่งความคิดเห็นทางอีเมล',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'การให้คะแนนสั้นๆ ช่วยให้คนอื่นค้นพบ ${appLabel} และช่วยให้การพัฒนาต่อเนื่อง คุณสะดวกให้สักนาทีไหม?',
			'feedbackRating.shareFeedbackViaEmail' => 'ความคิดเห็นของคุณกำหนดสิ่งที่จะตามมา — เราอ่านทุกข้อความ ต้องการส่งความเห็นทางอีเมลไหม?',
			'feedbackRating.rateCta' => 'ให้คะแนนบน Play Store',
			'feedbackRating.maybeLater' => 'ไว้ทีหลัง',
			'feedbackRating.sendFeedback' => 'ส่งความคิดเห็น',
			'feedbackRating.noThanks' => 'ไม่เป็นไร ขอบคุณ',
			'feedbackRating.aboutUsDescription' => 'สร้างด้วยความใส่ใจโดยทีมเล็กๆ เรามุ่งเน้นความเป็นส่วนตัว ความเรียบง่าย และช่วยให้คุณสร้างนิสัยการกินที่ดีขึ้น',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'อยากรู้ว่าใครอยู่เบื้องหลัง ${appLabel}? ดู ',
			'feedbackRating.aboutUsLinkLabel' => 'เกี่ยวกับเรา',
			'feedbackRating.thankYouMessage' => 'ขอบคุณ! ไว้ค่อยถามใหม่อีกครั้ง',
			'health.syncFailed' => 'ไม่สามารถซิงค์ไปยัง Health Connect',
			'health.mealSynced' => 'ซิงค์มื้ออาหารกับ Health Connect แล้ว',
			_ => null,
		};
	}
}
