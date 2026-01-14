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
	@override late final _TranslationsErrorsTh errors = _TranslationsErrorsTh._(_root);
	@override late final _TranslationsDebugTh debug = _TranslationsDebugTh._(_root);
	@override late final _TranslationsHealthTh health = _TranslationsHealthTh._(_root);
}

// Path: onboarding
class _TranslationsOnboardingTh implements TranslationsOnboardingEn {
	_TranslationsOnboardingTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'ยินดีต้อนรับสู่ ${appLabel}';
	@override String get subtitle => 'คู่หูด้านโภชนาการส่วนบุคคลที่ขับเคลื่อนโดย AI';
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
	@override String get dashboard => 'หน้าหลัก';
	@override String get history => 'ประวัติ';
}

// Path: home
class _TranslationsHomeTh implements TranslationsHomeEn {
	_TranslationsHomeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
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
	@override String get noMeals => 'ยังไม่มีมื้ออาหารที่บันทึก';
	@override String get emptyMessage => 'ถ่ายภาพมื้อสุดท้ายของคุณเพื่อบันทึกที่นี่';
	@override String get today => 'วันนี้';
	@override String get yesterday => 'เมื่อวาน';
}

// Path: meal
class _TranslationsMealTh implements TranslationsMealEn {
	_TranslationsMealTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'โอ้ไม่!';
	@override String get delete => 'ลบ';
	@override String get editMeal => 'แก้ไขมื้ออาหาร';
	@override String get addMeal => 'เพิ่มมื้ออาหาร';
	@override String get saveMeal => 'บันทึกมื้ออาหาร';
	@override String get save => 'บันทึก';
	@override String get mealName => 'ชื่อมื้ออาหาร';
	@override String get mealQuantity => 'จำนวนมื้ออาหาร';
	@override String get mealQuantityHint => 'เช่น 1 ชาม, 2 ชั้น';
	@override String get timeOfMeal => 'เวลาของมื้ออาหาร';
	@override String get timeOfMealHint => 'เลือกเวลาที่คุณทานมื้ออาหาร';
	@override String get mealType => 'ประเภทมื้ออาหาร';
	@override late final _TranslationsMealNutritionTh nutrition = _TranslationsMealNutritionTh._(_root);
	@override late final _TranslationsMealDeleteConfirmationTh deleteConfirmation = _TranslationsMealDeleteConfirmationTh._(_root);
	@override String get addedToLog => 'บันทึกมื้ออาหารลงในบันทึกของคุณ!';
	@override String couldNotAdd({required Object error}) => 'ไม่สามารถเพิ่มมื้ออาหารได้: ${error}';
	@override String get removedFromFavorites => 'ลบออกจากมื้อโปรด!';
	@override String get savedAsFavorite => 'มื้ออาหารบันทึกเป็นโปรด!';
	@override String couldNotUpdateFavorite({required Object error}) => 'ไม่สามารถอัปเดตโปรดได้: ${error}';
	@override String failedToProcess({required Object error}) => 'ไม่สามารถประมวลผล: ${error}';
	@override String failedToProcessImage({required Object error}) => 'ไม่สามารถประมวลผลภาพ: ${error}';
	@override String errorCompressingImage({required Object error}) => 'เกิดข้อผิดพลาดในการบีบอัดภาพ: ${error}';
	@override String get failedToSave => 'ไม่สามารถบันทึกข้อมูลได้ กรุณาลองอีกครั้ง.';
}

// Path: favorites
class _TranslationsFavoritesTh implements TranslationsFavoritesEn {
	_TranslationsFavoritesTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มื้อโปรด';
	@override String get empty => 'ยังไม่มีมื้ออาหารโปรด.';
}

// Path: profile
class _TranslationsProfileTh implements TranslationsProfileEn {
	_TranslationsProfileTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'โปรไฟล์';
	@override String get noProfileData => 'ไม่มีข้อมูลโปรไฟล์';
	@override String get yourProfile => 'โปรไฟล์ของคุณ';
	@override String get viewAndManage => 'ดูและจัดการข้อมูลสุขภาพของคุณ';
	@override late final _TranslationsProfileSectionsTh sections = _TranslationsProfileSectionsTh._(_root);
	@override String get gender => 'เพศ';
	@override String get height => 'ความสูง';
	@override String get weight => 'น้ำหนัก';
	@override String get age => 'อายุ';
	@override String get weightGoal => 'เป้าหมายการน้ำหนัก';
	@override String get activityLevel => 'ระดับกิจกรรม';
	@override String get healthMetrics => 'สุขภาพเมตริก';
	@override String get notSet => 'ยังไม่ได้ตั้ง';
	@override String get years => 'ปี';
	@override String get updatedSuccessfully => 'อัปเดตโปรไฟล์สำเร็จ!';
	@override late final _TranslationsProfileCalculatedValuesTh calculatedValues = _TranslationsProfileCalculatedValuesTh._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreTh implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คะแนนสุขภาพ';
	@override String get whyThisScore => 'ทำไมถึงคะแนนนี้?';
	@override String get note => 'คะแนนนี้คำนวณโดย AI โดยอิงจากส่วนผสมที่ระบุและความหนาแน่นทางโภชนาการ ปรึกษามืออาชีพเพื่อขอคำแนะนำด้านโภชนาการ';
	@override String get unhealthy => 'ไม่ดีต่อสุขภาพ';
	@override String get healthy => 'ดีต่อสุขภาพ';
	@override String get neutral => 'กลาง';
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
	@override String get weightGoal => 'เป้าหมายการน้ำหนัก';
	@override String get activityLevel => 'ระดับกิจกรรม';
	@override String get metric => 'เมตริก';
	@override String get imperial => 'อิมพีเรียล';
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
	@override late final _TranslationsSettingsClearAllDataTh clearAllData = _TranslationsSettingsClearAllDataTh._(_root);
	@override late final _TranslationsSettingsDebugOptionsTh debugOptions = _TranslationsSettingsDebugOptionsTh._(_root);
	@override String get developerModeEnabled => 'โหมดนักพัฒนาเปิดใช้งานแล้ว!';
}

// Path: reminders
class _TranslationsRemindersTh implements TranslationsRemindersEn {
	_TranslationsRemindersTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'อยู่ในเส้นทางด้วยการแจ้งเตือน';
	@override String get description => 'รับการแจ้งเตือนที่อบอุ่นเพื่อบันทึกมื้ออาหารของคุณและรักษาความสม่ำเสมอกับเป้าหมายด้านโภชนาการ';
	@override String get notificationsEnabled => 'การแจ้งเตือนเปิดใช้งาน';
	@override String get notificationsDisabled => 'การแจ้งเตือนไม่เปิดใช้งาน';
	@override String get enabledSubtitle => 'คุณจะได้รับการแจ้งเตือนมื้ออาหาร';
	@override String get disabledSubtitle => 'เปิดการแจ้งเตือนเพื่อรับการแจ้งเตือนมื้ออาหาร';
	@override String get mealReminders => 'การแจ้งเตือนมื้ออาหาร';
	@override String get breakfast => 'อาหารเช้า';
	@override String get lunch => 'อาหารกลางวัน';
	@override String get dinner => 'อาหารเย็น';
	@override String get snack => 'ขนม';
	@override String get unknown => 'ไม่ทราบ';
	@override String get change => 'เปลี่ยน';
	@override String get enableNotifications => 'เปิดการแจ้งเตือน';
	@override String get skipForNow => 'ขอข้ามไปก่อน';
	@override String get saveChanges => 'บันทึกการเปลี่ยนแปลง';
	@override String get enabledSuccessfully => 'การแจ้งเตือนเปิดใช้งานสำเร็จ!';
	@override String get permissionDenied => 'การอนุญาตการแจ้งเตือนถูกปฏิเสธ';
	@override String errorEnabling({required Object error}) => 'เกิดข้อผิดพลาดในการเปิดการแจ้งเตือน: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'เกิดข้อผิดพลาดในการตั้งค่าให้ครบถ้วน: ${error}';
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
	@override String get signInFailed => 'การลงชื่อเข้าใช้ Google ล้มเหลวหรือถูกยกเลิก';
}

// Path: disclaimer
class _TranslationsDisclaimerTh implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'โปรดทราบ';
	@override late final _TranslationsDisclaimerSnapTh snap = _TranslationsDisclaimerSnapTh._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateTh weightEstimate = _TranslationsDisclaimerWeightEstimateTh._(_root);
}

// Path: common
class _TranslationsCommonTh implements TranslationsCommonEn {
	_TranslationsCommonTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get close => 'ปิด';
	@override String get kContinue => 'ดำเนินการต่อ';
}

// Path: errors
class _TranslationsErrorsTh implements TranslationsErrorsEn {
	_TranslationsErrorsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'เกิดข้อผิดพลาดในการโหลดข้อมูลโปรไฟล์';
	@override String get somethingWentWrong => 'มีบางอย่างผิดพลาด.';
}

// Path: debug
class _TranslationsDebugTh implements TranslationsDebugEn {
	_TranslationsDebugTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ตัวเลือกการดีบัก';
	@override late final _TranslationsDebugSectionsTh sections = _TranslationsDebugSectionsTh._(_root);
	@override String get showActiveNotifications => 'แสดงการแจ้งเตือนที่ใช้งานอยู่';
	@override String get scheduleTestNotification => 'กำหนดการแจ้งเตือนทดสอบ (10 วินาที)';
	@override String get triggerBreakfastNotification => 'กระตุ้นการแจ้งเตือนอาหารเช้า';
	@override String get cancelAllNotifications => 'ยกเลิกการแจ้งเตือนทั้งหมด';
	@override String get activeNotifications => 'การแจ้งเตือนที่ใช้งานอยู่';
	@override String get noTitle => 'ไม่มีชื่อ';
	@override String get noBody => 'ไม่มีเนื้อหา';
	@override String get fetchTodaysSteps => 'ดึงจำนวนก้าววันนี้';
	@override String get fetchTodaysCalories => 'ดึงแคลอรีวันนี้';
	@override String get fetchLatestWeight => 'ดึงน้ำหนักล่าสุด';
	@override String get fetchLatestHeight => 'ดึงความสูงล่าสุด';
	@override String get writeTestWeight => 'เขียนน้ำหนักทดสอบ (70 กก.)';
	@override String get writeTestHeight => 'เขียนความสูงทดสอบ (175 ซม.)';
	@override String get syncLast7Days => 'ซิงค์ 7 วันล่าสุด';
	@override String get sync7DaysTitle => 'ซิงค์ 7 วัน';
	@override String get checkCurrentLocale => 'ตรวจสอบภูมิภาคปัจจุบัน';
	@override String get currentLocale => 'ภูมิภาคปัจจุบัน';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'ภาษา: ${languageCode}\nประเทศ: ${countryCode}\nระบบหน่วย: ${unitSystem}';
	@override String get latestWeight => 'น้ำหนักล่าสุด';
	@override String get latestHeight => 'ความสูงล่าสุด';
	@override String get todaysCalories => 'แคลอรีวันนี้';
	@override String totalCaloriesBurned({required Object calories}) => 'แคลอรีทั้งหมดที่เผาผลาญ: ${calories}';
	@override String syncSuccess({required Object count}) => 'ซิงค์ข้อมูลสำเร็จ ${count} จุดข้อมูลสำหรับจำนวนก้าว, แคลอรี, และน้ำหนักในช่วง 7 วันที่ผ่านมา.';
	@override String get noWeightData => 'ไม่มีข้อมูลน้ำหนักในช่วง 30 วันที่ผ่านมา.';
	@override String get noHeightData => 'ไม่มีข้อมูลความสูงในปีที่ผ่านมา.';
	@override String get noCalorieData => 'ไม่มีข้อมูลแคลอรีในวันนี้.';
	@override String get weightWritten => 'เขียนน้ำหนักทดสอบ (70 กก.) สำเร็จ.';
	@override String get weightWriteFailed => 'ไม่สามารถเขียนน้ำหนักทดสอบ.';
	@override String get heightWritten => 'เขียนความสูงทดสอบ (175 ซม.) สำเร็จ.';
	@override String get heightWriteFailed => 'ไม่สามารถเขียนความสูงทดสอบ.';
	@override String get noNotifications => 'ไม่มีการแจ้งเตือนที่ใช้งาน.';
	@override String get testNotificationScheduled => 'การแจ้งเตือนทดสอบกำหนดไว้สำหรับ 10 วินาทีจากนี้.';
	@override String get testNotificationBody => 'นี่คือการแจ้งเตือนทดสอบกำหนดไว้สำหรับ 10 วินาทีจากนี้.';
	@override String get breakfastNotificationTriggered => 'การแจ้งเตือนอาหารเช้าเกิดขึ้น.';
	@override String get allNotificationsCancelled => 'ยกเลิกการแจ้งเตือนทั้งหมด.';
	@override String get fetchingData => 'กำลังดึงข้อมูลสำหรับ 7 วันที่ผ่านมา...';
	@override String id({required Object id}) => 'ID: ${id}';
}

// Path: health
class _TranslationsHealthTh implements TranslationsHealthEn {
	_TranslationsHealthTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'ไม่สามารถซิงค์ไปยัง Health Connect';
	@override String get mealSynced => 'มื้ออาหารซิงค์แล้วกับ Health Connect';
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
	@override String get description => 'เพศช่วยให้เราคำนวณอัตราการเผาผลาญพื้นฐาน (BMR) ได้อย่างถูกต้อง';
	@override String get next => 'ถัดไป';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightTh implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณสูงเท่าไหร่?';
	@override String get description => 'ความสูงของคุณช่วยให้เราคำนวณ BMI และความต้องการพลังงานได้อย่างถูกต้อง';
	@override String get metric => 'เมตริก';
	@override String get imperial => 'ระบบอิมพีเรียล';
	@override String get next => 'ถัดไป';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightTh implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'น้ำหนักปัจจุบันของคุณคือเท่าไหร่?';
	@override String get currentDescription => 'น้ำหนักปัจจุบันเป็นสิ่งสำคัญสำหรับการปรับเป้าหมายของคุณ';
	@override String get targetTitle => 'น้ำหนักเป้าหมายของคุณคือเท่าไหร่?';
	@override String get targetDescription => 'การตั้งเป้าหมายช่วยให้เรากำหนดแผนระยะยาวของคุณได้';
	@override String get metric => 'เมตริก';
	@override String get imperial => 'ระบบอิมพีเรียล';
	@override String get next => 'ถัดไป';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeTh implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'วันเกิดของคุณเมื่อไหร่?';
	@override String get description => 'อายุของคุณช่วยให้เราคำนวณความต้องการแคลอรีได้อย่างถูกต้อง';
	@override String get next => 'ถัดไป';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleTh implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'น้ำหนักน้อย';
	@override String get healthy => 'น้ำหนักปกติ';
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
	@override String get description => 'เลือกเป้าหมายที่ดีที่สุดที่อธิบายสิ่งที่คุณต้องการทำให้สำเร็จ';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelTh implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณมีการเคลื่อนไหวมากน้อยแค่ไหน?';
	@override String get description => 'สิ่งนี้ช่วยให้เราคำนวณความต้องการแคลอรีรายวันของคุณได้อย่างแม่นยำยิ่งขึ้น';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectTh implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เชื่อมต่อกับ Health Connect';
	@override String get description => 'ซิงค์ข้อมูลสุขภาพของคุณเพื่อการวิเคราะห์ที่ดีกว่าและติดตามแคลอรีอัตโนมัติ';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingTh automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingTh._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsTh progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsTh._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationTh seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationTh._(_root);
	@override String get connected => 'เชื่อมต่อ Health Connect แล้ว';
	@override String get notConnected => 'ยังไม่มีการเชื่อมต่อ Health Connect';
	@override String get setup => 'ตั้งค่า Health Connect';
	@override String get skipForNow => 'ขอข้ามไปก่อน';
	@override String get statusConnected => 'Health Connect เชื่อมต่อแล้ว';
	@override String get statusSuccess => 'เชื่อมต่อ Health Connect สำเร็จ!';
	@override String statusPermissionDenied({required Object appLabel}) => 'การอนุญาตถูกปฏิเสธ กรุณาเปิดการอนุญาต Health Connect จากการตั้งค่าบนโทรศัพท์ของคุณสำหรับ ${appLabel}.';
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

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalTh implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ตั้งค่าเป้าหมายรายวันของคุณ';
	@override String get titleSet => 'เป้าหมายรายวันของคุณ';
	@override String get description => 'พร้อมที่จะเริ่มต้นการเดินทางสู่สุขภาพของคุณ? ตั้งค่าเป้าหมายแคลอรีรายวันของคุณด้านล่างเพื่อเริ่มการพัฒนา';
	@override String get descriptionSet => 'เข็มทิศของคุณถูกตั้งแล้ว! นี่คือเป้าหมายแคลอรีรายวันของคุณเพื่อเป็นแนวทาง';
	@override String get yourGoal => 'เป้าหมายของคุณ';
	@override String get dailyCalories => 'แคลอรีรายวัน (kcal)';
	@override String get setGoal => 'ตั้งเป้าหมาย';
	@override String get intake => 'การบริโภค';
	@override String get burned => 'ที่เผาผลาญ';
	@override String get weightImpact => 'ผลกระทบต่อน้ำหนัก';
	@override String get estLoss => 'ประมาณการการสูญเสีย';
	@override String get estGain => 'ประมาณการการเพิ่มน้ำหนัก';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryTh implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สรุปประจำวัน';
	@override String get calories => 'แคลอรี';
	@override String get carbs => 'คาร์โบไฮเดรต';
	@override String get protein => 'โปรตีน';
	@override String get fat => 'ไขมัน';
	@override String get fiber => 'เส้นใย';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressTh implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การแบ่งส่วนแมกโครวันนี้';
	@override String get target => 'เป้าหมาย';
	@override String get current => 'ปัจจุบัน';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryTh implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ประวัติแมกโคร 7 วัน';
	@override String get noHistoryYet => 'ยังไม่มีประวัติ';
	@override String get startLogging => 'เริ่มบันทึกมื้ออาหารเพื่อดูแนวโน้มแมกโคร 7 วันที่นี่';
}

// Path: home.mealLog
class _TranslationsHomeMealLogTh implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มื้ออาหารที่บันทึก';
	@override String get emptyMessage => 'ถ่ายภาพมื้อสุดท้ายของคุณเพื่อบันทึกที่นี่';
	@override String get noMealsToday => 'ยังไม่มีมื้ออาหารที่บันทึกในวันนี้';
	@override String get seeAllMeals => 'ดูมื้ออาหารทั้งหมด';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionTh implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เพิ่มอย่างรวดเร็วด้วย AI';
	@override String get description => 'อธิบายมื้ออาหารของคุณให้ AI จัดการรายละเอียด';
	@override String get hint => 'เช่น สำหรับอาหารเช้าฉันทานโอ๊ตมีขนาดใหญ่พร้อมกล้วยสไลด์และผงโปรตีน ...';
	@override String get analyzeMeal => 'วิเคราะห์มื้ออาหาร';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsTh implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มื้ออาหารโปรด';
	@override String get description => 'เพิ่มหนึ่งในมื้อโปรดของคุณอย่างรวดเร็ว';
	@override String get noFavorites => 'ยังไม่มีมื้ออาหารโปรด';
	@override String get addFavoriteHint => 'คลิกที่ดาวบนมื้ออาหารเพื่อทำเครื่องหมายเป็นโปรด';
	@override String get seeAll => 'ดูทั้งหมด';
	@override String get add => 'เพิ่ม';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapTh implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ถ่ายภาพ & ติดตามมื้ออาหารของคุณ';
	@override String get description => 'ใช้กล้องของคุณเพื่อถ่ายภาพอาหารของคุณสำหรับการวิเคราะห์ด้วย AI';
	@override String get openCamera => 'เปิดกล้อง';
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
	@override String get carbs => 'คาร์โบไฮเดรต (g)';
	@override String get protein => 'โปรตีน (g)';
	@override String get fat => 'ไขมัน (g)';
	@override String get fiber => 'เส้นใย (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationTh implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ลบมื้ออาหาร';
	@override String get message => 'คุณแน่ใจหรือว่าต้องการลบบันทึกมื้อนี้?';
	@override String get cancel => 'ยกเลิก';
	@override String get delete => 'ลบ';
}

// Path: profile.sections
class _TranslationsProfileSectionsTh implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get profile => 'โปรไฟล์';
	@override String get basicInformation => 'ข้อมูลพื้นฐาน';
	@override String get goalsAndActivity => 'เป้าหมาย & กิจกรรม';
	@override String get calculatedValues => 'ค่าที่คำนวณ';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesTh implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'เป้าหมายรายวัน';
	@override String get calPerDay => 'แคลอรี/วัน';
	@override String get notAvailable => 'ไม่มีข้อมูล';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsTh implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ข้อมูลส่วนบุคคล';
	@override String get physicalMeasurements => 'การวัดทางกายภาพ';
	@override String get goalsAndActivity => 'เป้าหมาย & กิจกรรม';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersTh implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get male => 'ชาย';
	@override String get female => 'หญิง';
	@override String get other => 'อื่น ๆ';
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
	@override String get localization => 'การแปล';
	@override String get notifications => 'การแจ้งเตือน';
	@override String get supportAndLegal => 'การสนับสนุน & กฎหมาย';
	@override String get dangerZone => 'โซนอันตราย';
	@override String get developer => 'นักพัฒนา';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileTh implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'แก้ไขโปรไฟล์';
	@override String get subtitle => 'อัปเดตข้อมูลส่วนบุคคลของคุณ';
}

// Path: settings.language
class _TranslationsSettingsLanguageTh implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ภาษา';
	@override String get subtitle => 'เลือกภาษาที่ต้องการ';
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
	@override String get subtitle => 'อยู่ในแถวตั้งแต่กับการแจ้งเตือนที่ง่าย';
}

// Path: settings.theme
class _TranslationsSettingsThemeTh implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'Theme';
	@override String get subtitle => 'Choose your preferred theme';
	@override String get light => 'Light';
	@override String get dark => 'Dark';
	@override String get system => 'System';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackTh implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ส่งความคิดเห็น';
	@override String subtitle({required Object appLabel}) => 'ช่วยเราปรับปรุง ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'ข้อเสนอแนะแอป ${appLabel}';
	@override String get emailBodyPrefix => 'กรุณาแสดงความคิดเห็นด้านล่าง:';
	@override String get appVersion => 'เวอร์ชันแอป';
	@override String get device => 'อุปกรณ์';
	@override String get osVersion => 'เวอร์ชัน OS';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataTh implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ลบข้อมูลทั้งหมด';
	@override String get subtitle => 'ลบข้อมูลของคุณทั้งหมดอย่างถาวร';
	@override String get confirmationTitle => 'ลบข้อมูลทั้งหมด?';
	@override String get confirmationMessage => 'การกระทำนี้ไม่สามารถย้อนกลับได้ ข้อมูลบันทึกมื้ออาหาร, มื้อโปรด, และการตั้งค่าโปรไฟล์ทั้งหมดจะถูกลบอย่างถาวร';
	@override String get cancel => 'ยกเลิก';
	@override String get clearEverything => 'ลบทุกอย่าง';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsTh implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ตัวเลือกการดีบัก';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastTh implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เวลาอาหารเช้า! 🍳';
	@override String get body => 'อย่าลืมบันทึกอาหารเช้าของคุณ';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchTh implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เวลาอาหารกลางวัน! 🥗';
	@override String get body => 'ถึงเวลาบันทึกอาหารกลางวันของคุณ';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerTh implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เวลาอาหารเย็น! 🍽️';
	@override String get body => 'อย่าลืมบันทึกอาหารเย็นของคุณ';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackTh implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เวลาอาหารว่าง! 🍎';
	@override String get body => 'ถึงเวลาขนมที่ดีต่อสุขภาพ';
}

// Path: notifications.test
class _TranslationsNotificationsTestTh implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การแจ้งเตือนทดสอบ';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapTh implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} ให้ข้อมูลโภชนาการโดยประมาณ ความถูกต้องขึ้นอยู่กับข้อมูลที่คุณป้อนและความแตกต่างของอาหาร ใช้เป็นแนวทาง ไม่ใช่แหล่งข้อมูลที่แน่นอน ปรึกษาผู้เชี่ยวชาญสำหรับคำแนะนำโภชนาการเฉพาะบุคคล';
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
	@override String get title => 'เกี่ยวกับการประมาณน้ำหนัก';
	@override String get description => 'การเปลี่ยนแปลงน้ำหนักที่คาดการณ์เป็นการประมาณการทางทฤษฎีโดยอิงจากแบบจำลองแคลอรีเข้าและแคลอรีออก มันถูกตั้งขึ้นเพื่อให้เป็นแนวทางในการสร้างแรงจูงใจเท่านั้น ไม่ใช่การคาดการณ์น้ำหนักจริงของคุณ';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyTh calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyTh._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsTh biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsTh._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightTh waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightTh._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTh professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTh._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsTh implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'การแจ้งเตือน';
	@override String get healthConnect => 'Health Connect';
	@override String get appInfo => 'ข้อมูลแอป';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionTh implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การรู้จำอาหารอัจฉริยะ';
	@override String get description => 'ถ่ายภาพและให้ AI ระบุอาหารของคุณ';
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
	@override String get title => 'การเชื่อมต่อสุขภาพ';
	@override String get description => 'เชื่อมต่อกับ Health Connect เพื่อการวิเคราะห์ที่ดีกว่า';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesTh implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'น้ำหนักน้อย';
	@override String get healthyWeight => 'น้ำหนักปกติ';
	@override String get overweight => 'น้ำหนักเกิน';
	@override String get obese => 'อ้วน';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesTh implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'เราสามารถช่วยคุณวางแผนที่ดีต่อสุขภาพเพื่อให้ไปถึงน้ำหนักที่สมดุลด้วยมื้ออาหารที่เต็มไปด้วยสารอาหาร';
	@override String get healthy => 'ดีมาก! คุณอยู่ในช่วงน้ำหนักที่ดีต่อสุขภาพ เราจะช่วยให้คุณรักษาความกระปรี้กระเปร่าของคุณ';
	@override String overweight({required Object appLabel}) => '${appLabel} จะทำให้การเดินทางของคุณง่ายขึ้นด้วยการติดตามที่ใช้ AI เพื่อช่วยให้คุณบรรลุเป้าหมายได้อย่างสะดวกสบาย';
	@override String get obese => 'เราพร้อมที่จะสนับสนุนคุณด้วยคำแนะนำส่วนบุคคลและกลยุทธ์ที่ยั่งยืนสำหรับเป้าหมายด้านสุขภาพของคุณ';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingTh implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ติดตามแคลอรีอัตโนมัติ';
	@override String get description => 'ติดตามแคลอรีที่ใช้จากแอปฟิตเนสของคุณ';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsTh implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ข้อมูลความก้าวหน้า';
	@override String get description => 'รับข้อมูลเชิงลึกเกี่ยวกับแนวโน้มสุขภาพของคุณ';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationTh implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การเชื่อมต่อที่ราบรื่น';
	@override String get description => 'ซิงค์ข้อมูลจากแอปสุขภาพที่คุณชื่นชอบ';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessTh implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณไม่อยู่คนเดียว';
	@override String get genericMessage => 'การวิจัยแสดงให้เห็นว่าการติดตามอย่างสม่ำเสมอเป็นตัวบ่งชี้ที่สำคัญของความสำเร็จในระยะยาว';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'สำหรับ ${age} ปี ${gender} ที่ต้องการ ${goal} การติดตามอย่างสม่ำเสมอเป็นตัวบ่งชี้ที่สำคัญของความสำเร็จ';
	@override String closingMessage({required Object appLabel}) => '${appLabel} ทำให้มันง่ายขึ้นถึง 10 เท่าเมื่อเทียบกับการทำด้วยตัวเอง';
	@override String get getStartedTitle => 'พร้อมที่จะเริ่มต้นแล้วหรือยัง?';
	@override String get tipPhoto => 'ถ่ายภาพอาหารของคุณเพื่อการวิเคราะห์ที่ทันที';
	@override String get tipConsistency => 'บันทึกอย่างสม่ำเสมอเพื่อเห็นความก้าวหน้าที่มีความหมาย';
	@override String get tipProgress => 'ติดตามความก้าวหน้าของคุณทุกวันเพื่อรักษาแรงจูงใจ';
	@override String get button => 'ไปกันเถอะ';
	@override String get defaultGender => 'บุคคลทั่วไป';
	@override String get defaultGoal => 'คุณที่มีสุขภาพดีขึ้น';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileTh implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'โปรไฟล์สุขภาพของคุณ';
	@override String bmiDescription({required Object bmi}) => 'ตามข้อมูลของคุณ, BMI ของคุณคือ ${bmi}';
	@override String get finalizeDescription => 'ให้เราสรุปโปรไฟล์ของคุณเพื่อปรับแต่งประสบการณ์ของคุณ';
	@override String get goalGain => 'เพิ่มน้ำหนัก';
	@override String get goalLose => 'ลดน้ำหนัก';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'เพื่อลงถึงเป้าหมายของคุณ, คุณจะต้อง ${direction} ${diff} ${unit}';
	@override String get goalReached => 'คุณถึงน้ำหนักเป้าหมายแล้ว! เราจะช่วยคุณรักษามัน';
	@override String get button => 'ไปกันเถอะ';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleTh implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เริ่มต้นได้ดี!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'คุณได้ก้าวแรกสู่ ${goalText} แล้ว เนื่องจากคุณ ${activityText}, ${appLabel} จะปรับเป้าหมายให้เหมาะสมกับวิถีชีวิตของคุณ';
	@override String get personalizedTargets => 'เป้าหมายแคลอรีเฉพาะ';
	@override String get aiMealDetection => 'การตรวจจับมื้ออาหารด้วย AI';
	@override String get macroBreakdowns => 'การแบ่งปันสารอาหารโดยละเอียด';
	@override String get button => 'ไปกันเถอะ';
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
	@override String get description => 'รักษาน้ำหนักปัจจุบันของคุณ';
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
	@override String get name => 'นั่งอยู่';
	@override String get description => 'ออกกำลังกายน้อยมาก';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveTh implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'มีการเคลื่อนไหวเล็กน้อย';
	@override String get description => 'ออกกำลังกายเบา ๆ 1-3 วัน/สัปดาห์';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveTh implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'มีการเคลื่อนไหวปานกลาง';
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
	@override String get name => 'เคลื่อนไหวสุดขีด';
	@override String get description => 'ออกกำลังกายหนักมาก, งานทางกายภาพ';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeTh implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ขนาดชิ้นส่วน';
	@override String get description => 'ความแม่นยำของการประมาณการขึ้นอยู่กับการประเมินขนาดชิ้นส่วนอย่างถูกต้องของคุณ';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsTh implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'วิธีการเตรียม';
	@override String description({required Object appLabel}) => 'วิธีการทำอาหารสามารถทำให้สารอาหารในอาหารเปลี่ยนแปลงได้อย่างมาก การประมาณการของ ${appLabel} อาจไม่คำนึงถึงความแตกต่างเหล่านี้เสมอไป';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsTh implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ส่วนผสม';
	@override String get description => 'จานซับซ้อนที่มีส่วนผสมหลายอย่างอาจทำให้การประมาณการไม่แม่นยำ';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsTh implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ข้อจำกัดของฐานข้อมูล';
	@override String description({required Object appLabel}) => '${appLabel} มีฐานข้อมูลอาหารที่กว้างขวาง แต่ก็อาจไม่ครอบคลุมทุกอาหารหรือความแตกต่างทุกรูปแบบ';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyTh implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ความแม่นยำแคลอรี';
	@override String get description => 'การประมาณนี้ขึ้นอยู่กับการติดตามการบริโภคและการใช้แคลอรีที่ถูกต้อง การบันทึกที่ไม่ถูกต้องจะส่งผลให้การคาดการณ์ไม่แม่นยำ';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsTh implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ปัจจัยทางชีวภาพ';
	@override String description({required Object appLabel}) => 'การลด/เพิ่มน้ำหนักจริง ๆ ขึ้นอยู่กับการเผาผลาญ ฮอร์โมน การนอนหลับ ความเครียด การอยู่ในน้ำ และปัจจัยเฉพาะบุคคลอื่น ๆ ที่ ${appLabel} ไม่สามารถวัดได้';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightTh implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'น้ำหนักน้ำ & การเปลี่ยนแปลง';
	@override String get description => 'น้ำหนักรายวันสามารถผันผวนอย่างมากเนื่องจากการกักเก็บน้ำ, การย่อยอาหาร และการเวลา โดยการประมาณการไม่คำนึงถึงการเปลี่ยนแปลงเหล่านี้';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTh implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceTh._(this._root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คำแนะนำจากมืออาชีพ';
	@override String get description => 'อย่าใช้การประมาณนี้ในการตัดสินใจทางการแพทย์ เสมอปรึกษาผู้เชี่ยวชาญด้านสุขภาพหรือผู้ให้คำแนะนำทางโภชนาการที่มีใบรับรองเพื่อขอคำแนะนำการจัดการน้ำหนักส่วนบุคคล';
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
			'onboarding.welcome' => ({required Object appLabel}) => 'ยินดีต้อนรับสู่ ${appLabel}',
			'onboarding.subtitle' => 'คู่หูด้านโภชนาการส่วนบุคคลที่ขับเคลื่อนโดย AI',
			'onboarding.getStarted' => 'เริ่มต้น',
			'onboarding.features.foodRecognition.title' => 'การรู้จำอาหารอัจฉริยะ',
			'onboarding.features.foodRecognition.description' => 'ถ่ายภาพและให้ AI ระบุอาหารของคุณ',
			'onboarding.features.aiAnalysis.title' => 'การวิเคราะห์ด้วย AI',
			'onboarding.features.aiAnalysis.description' => 'รับข้อมูลโภชนาการทันทีจากคำอธิบายของคุณ',
			'onboarding.features.healthIntegration.title' => 'การเชื่อมต่อสุขภาพ',
			'onboarding.features.healthIntegration.description' => 'เชื่อมต่อกับ Health Connect เพื่อการวิเคราะห์ที่ดีกว่า',
			'onboarding.gender.title' => 'เพศของคุณคืออะไร?',
			'onboarding.gender.description' => 'เพศช่วยให้เราคำนวณอัตราการเผาผลาญพื้นฐาน (BMR) ได้อย่างถูกต้อง',
			'onboarding.gender.next' => 'ถัดไป',
			'onboarding.height.title' => 'คุณสูงเท่าไหร่?',
			'onboarding.height.description' => 'ความสูงของคุณช่วยให้เราคำนวณ BMI และความต้องการพลังงานได้อย่างถูกต้อง',
			'onboarding.height.metric' => 'เมตริก',
			'onboarding.height.imperial' => 'ระบบอิมพีเรียล',
			'onboarding.height.next' => 'ถัดไป',
			'onboarding.weight.currentTitle' => 'น้ำหนักปัจจุบันของคุณคือเท่าไหร่?',
			'onboarding.weight.currentDescription' => 'น้ำหนักปัจจุบันเป็นสิ่งสำคัญสำหรับการปรับเป้าหมายของคุณ',
			'onboarding.weight.targetTitle' => 'น้ำหนักเป้าหมายของคุณคือเท่าไหร่?',
			'onboarding.weight.targetDescription' => 'การตั้งเป้าหมายช่วยให้เรากำหนดแผนระยะยาวของคุณได้',
			'onboarding.weight.metric' => 'เมตริก',
			'onboarding.weight.imperial' => 'ระบบอิมพีเรียล',
			'onboarding.weight.next' => 'ถัดไป',
			'onboarding.age.title' => 'วันเกิดของคุณเมื่อไหร่?',
			'onboarding.age.description' => 'อายุของคุณช่วยให้เราคำนวณความต้องการแคลอรีได้อย่างถูกต้อง',
			'onboarding.age.next' => 'ถัดไป',
			'onboarding.bmiScale.underweight' => 'น้ำหนักน้อย',
			'onboarding.bmiScale.healthy' => 'น้ำหนักปกติ',
			'onboarding.bmiScale.overweight' => 'น้ำหนักเกิน',
			'onboarding.bmiScale.obese' => 'อ้วน',
			'onboarding.bmiScale.categories.underweight' => 'น้ำหนักน้อย',
			'onboarding.bmiScale.categories.healthyWeight' => 'น้ำหนักปกติ',
			'onboarding.bmiScale.categories.overweight' => 'น้ำหนักเกิน',
			'onboarding.bmiScale.categories.obese' => 'อ้วน',
			'onboarding.bmiScale.messages.underweight' => 'เราสามารถช่วยคุณวางแผนที่ดีต่อสุขภาพเพื่อให้ไปถึงน้ำหนักที่สมดุลด้วยมื้ออาหารที่เต็มไปด้วยสารอาหาร',
			'onboarding.bmiScale.messages.healthy' => 'ดีมาก! คุณอยู่ในช่วงน้ำหนักที่ดีต่อสุขภาพ เราจะช่วยให้คุณรักษาความกระปรี้กระเปร่าของคุณ',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} จะทำให้การเดินทางของคุณง่ายขึ้นด้วยการติดตามที่ใช้ AI เพื่อช่วยให้คุณบรรลุเป้าหมายได้อย่างสะดวกสบาย',
			'onboarding.bmiScale.messages.obese' => 'เราพร้อมที่จะสนับสนุนคุณด้วยคำแนะนำส่วนบุคคลและกลยุทธ์ที่ยั่งยืนสำหรับเป้าหมายด้านสุขภาพของคุณ',
			'onboarding.weightGoal.title' => 'เป้าหมายของคุณคืออะไร?',
			'onboarding.weightGoal.description' => 'เลือกเป้าหมายที่ดีที่สุดที่อธิบายสิ่งที่คุณต้องการทำให้สำเร็จ',
			'onboarding.activityLevel.title' => 'คุณมีการเคลื่อนไหวมากน้อยแค่ไหน?',
			'onboarding.activityLevel.description' => 'สิ่งนี้ช่วยให้เราคำนวณความต้องการแคลอรีรายวันของคุณได้อย่างแม่นยำยิ่งขึ้น',
			'onboarding.healthConnect.title' => 'เชื่อมต่อกับ Health Connect',
			'onboarding.healthConnect.description' => 'ซิงค์ข้อมูลสุขภาพของคุณเพื่อการวิเคราะห์ที่ดีกว่าและติดตามแคลอรีอัตโนมัติ',
			'onboarding.healthConnect.automaticTracking.title' => 'ติดตามแคลอรีอัตโนมัติ',
			'onboarding.healthConnect.automaticTracking.description' => 'ติดตามแคลอรีที่ใช้จากแอปฟิตเนสของคุณ',
			'onboarding.healthConnect.progressInsights.title' => 'ข้อมูลความก้าวหน้า',
			'onboarding.healthConnect.progressInsights.description' => 'รับข้อมูลเชิงลึกเกี่ยวกับแนวโน้มสุขภาพของคุณ',
			'onboarding.healthConnect.seamlessIntegration.title' => 'การเชื่อมต่อที่ราบรื่น',
			'onboarding.healthConnect.seamlessIntegration.description' => 'ซิงค์ข้อมูลจากแอปสุขภาพที่คุณชื่นชอบ',
			'onboarding.healthConnect.connected' => 'เชื่อมต่อ Health Connect แล้ว',
			'onboarding.healthConnect.notConnected' => 'ยังไม่มีการเชื่อมต่อ Health Connect',
			'onboarding.healthConnect.setup' => 'ตั้งค่า Health Connect',
			'onboarding.healthConnect.skipForNow' => 'ขอข้ามไปก่อน',
			'onboarding.healthConnect.statusConnected' => 'Health Connect เชื่อมต่อแล้ว',
			'onboarding.healthConnect.statusSuccess' => 'เชื่อมต่อ Health Connect สำเร็จ!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'การอนุญาตถูกปฏิเสธ กรุณาเปิดการอนุญาต Health Connect จากการตั้งค่าบนโทรศัพท์ของคุณสำหรับ ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'เกิดข้อผิดพลาดขณะตั้งค่า Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'คุณไม่อยู่คนเดียว',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'การวิจัยแสดงให้เห็นว่าการติดตามอย่างสม่ำเสมอเป็นตัวบ่งชี้ที่สำคัญของความสำเร็จในระยะยาว',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'สำหรับ ${age} ปี ${gender} ที่ต้องการ ${goal} การติดตามอย่างสม่ำเสมอเป็นตัวบ่งชี้ที่สำคัญของความสำเร็จ',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} ทำให้มันง่ายขึ้นถึง 10 เท่าเมื่อเทียบกับการทำด้วยตัวเอง',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'พร้อมที่จะเริ่มต้นแล้วหรือยัง?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'ถ่ายภาพอาหารของคุณเพื่อการวิเคราะห์ที่ทันที',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'บันทึกอย่างสม่ำเสมอเพื่อเห็นความก้าวหน้าที่มีความหมาย',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'ติดตามความก้าวหน้าของคุณทุกวันเพื่อรักษาแรงจูงใจ',
			'onboarding.reinforcement.trackingSuccess.button' => 'ไปกันเถอะ',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'บุคคลทั่วไป',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'คุณที่มีสุขภาพดีขึ้น',
			'onboarding.reinforcement.healthProfile.title' => 'โปรไฟล์สุขภาพของคุณ',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'ตามข้อมูลของคุณ, BMI ของคุณคือ ${bmi}',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'ให้เราสรุปโปรไฟล์ของคุณเพื่อปรับแต่งประสบการณ์ของคุณ',
			'onboarding.reinforcement.healthProfile.goalGain' => 'เพิ่มน้ำหนัก',
			'onboarding.reinforcement.healthProfile.goalLose' => 'ลดน้ำหนัก',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'เพื่อลงถึงเป้าหมายของคุณ, คุณจะต้อง ${direction} ${diff} ${unit}',
			'onboarding.reinforcement.healthProfile.goalReached' => 'คุณถึงน้ำหนักเป้าหมายแล้ว! เราจะช่วยคุณรักษามัน',
			'onboarding.reinforcement.healthProfile.button' => 'ไปกันเถอะ',
			'onboarding.reinforcement.goalLifestyle.title' => 'เริ่มต้นได้ดี!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'คุณได้ก้าวแรกสู่ ${goalText} แล้ว เนื่องจากคุณ ${activityText}, ${appLabel} จะปรับเป้าหมายให้เหมาะสมกับวิถีชีวิตของคุณ',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'เป้าหมายแคลอรีเฉพาะ',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'การตรวจจับมื้ออาหารด้วย AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'การแบ่งปันสารอาหารโดยละเอียด',
			'onboarding.reinforcement.goalLifestyle.button' => 'ไปกันเถอะ',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'เป้าหมายของคุณ',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'กระตือรือร้น',
			'tabs.dashboard' => 'หน้าหลัก',
			'tabs.history' => 'ประวัติ',
			'home.dailyGoal.title' => 'ตั้งค่าเป้าหมายรายวันของคุณ',
			'home.dailyGoal.titleSet' => 'เป้าหมายรายวันของคุณ',
			'home.dailyGoal.description' => 'พร้อมที่จะเริ่มต้นการเดินทางสู่สุขภาพของคุณ? ตั้งค่าเป้าหมายแคลอรีรายวันของคุณด้านล่างเพื่อเริ่มการพัฒนา',
			'home.dailyGoal.descriptionSet' => 'เข็มทิศของคุณถูกตั้งแล้ว! นี่คือเป้าหมายแคลอรีรายวันของคุณเพื่อเป็นแนวทาง',
			'home.dailyGoal.yourGoal' => 'เป้าหมายของคุณ',
			'home.dailyGoal.dailyCalories' => 'แคลอรีรายวัน (kcal)',
			'home.dailyGoal.setGoal' => 'ตั้งเป้าหมาย',
			'home.dailyGoal.intake' => 'การบริโภค',
			'home.dailyGoal.burned' => 'ที่เผาผลาญ',
			'home.dailyGoal.weightImpact' => 'ผลกระทบต่อน้ำหนัก',
			'home.dailyGoal.estLoss' => 'ประมาณการการสูญเสีย',
			'home.dailyGoal.estGain' => 'ประมาณการการเพิ่มน้ำหนัก',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'สรุปประจำวัน',
			'home.dailySummary.calories' => 'แคลอรี',
			'home.dailySummary.carbs' => 'คาร์โบไฮเดรต',
			'home.dailySummary.protein' => 'โปรตีน',
			'home.dailySummary.fat' => 'ไขมัน',
			'home.dailySummary.fiber' => 'เส้นใย',
			'home.intakeProgress.title' => 'การแบ่งส่วนแมกโครวันนี้',
			'home.intakeProgress.target' => 'เป้าหมาย',
			'home.intakeProgress.current' => 'ปัจจุบัน',
			'home.intakeHistory.title' => 'ประวัติแมกโคร 7 วัน',
			'home.intakeHistory.noHistoryYet' => 'ยังไม่มีประวัติ',
			'home.intakeHistory.startLogging' => 'เริ่มบันทึกมื้ออาหารเพื่อดูแนวโน้มแมกโคร 7 วันที่นี่',
			'home.mealLog.title' => 'มื้ออาหารที่บันทึก',
			'home.mealLog.emptyMessage' => 'ถ่ายภาพมื้อสุดท้ายของคุณเพื่อบันทึกที่นี่',
			'home.mealLog.noMealsToday' => 'ยังไม่มีมื้ออาหารที่บันทึกในวันนี้',
			'home.mealLog.seeAllMeals' => 'ดูมื้ออาหารทั้งหมด',
			'home.mealDescription.title' => 'เพิ่มอย่างรวดเร็วด้วย AI',
			'home.mealDescription.description' => 'อธิบายมื้ออาหารของคุณให้ AI จัดการรายละเอียด',
			'home.mealDescription.hint' => 'เช่น สำหรับอาหารเช้าฉันทานโอ๊ตมีขนาดใหญ่พร้อมกล้วยสไลด์และผงโปรตีน ...',
			'home.mealDescription.analyzeMeal' => 'วิเคราะห์มื้ออาหาร',
			'home.favoriteMeals.title' => 'มื้ออาหารโปรด',
			'home.favoriteMeals.description' => 'เพิ่มหนึ่งในมื้อโปรดของคุณอย่างรวดเร็ว',
			'home.favoriteMeals.noFavorites' => 'ยังไม่มีมื้ออาหารโปรด',
			'home.favoriteMeals.addFavoriteHint' => 'คลิกที่ดาวบนมื้ออาหารเพื่อทำเครื่องหมายเป็นโปรด',
			'home.favoriteMeals.seeAll' => 'ดูทั้งหมด',
			'home.favoriteMeals.add' => 'เพิ่ม',
			'home.mealSnap.title' => 'ถ่ายภาพ & ติดตามมื้ออาหารของคุณ',
			'home.mealSnap.description' => 'ใช้กล้องของคุณเพื่อถ่ายภาพอาหารของคุณสำหรับการวิเคราะห์ด้วย AI',
			'home.mealSnap.openCamera' => 'เปิดกล้อง',
			'home.connectHealth.title' => 'ซิงค์กับ Health Connect',
			'home.connectHealth.description' => 'ซิงค์ข้อมูลโภชนาการของคุณกับ Health Connect',
			'home.connectHealth.install' => 'ติดตั้ง',
			'home.connectHealth.connect' => 'เชื่อมต่อ',
			'history.noMeals' => 'ยังไม่มีมื้ออาหารที่บันทึก',
			'history.emptyMessage' => 'ถ่ายภาพมื้อสุดท้ายของคุณเพื่อบันทึกที่นี่',
			'history.today' => 'วันนี้',
			'history.yesterday' => 'เมื่อวาน',
			'meal.ohNo' => 'โอ้ไม่!',
			'meal.delete' => 'ลบ',
			'meal.editMeal' => 'แก้ไขมื้ออาหาร',
			'meal.addMeal' => 'เพิ่มมื้ออาหาร',
			'meal.saveMeal' => 'บันทึกมื้ออาหาร',
			'meal.save' => 'บันทึก',
			'meal.mealName' => 'ชื่อมื้ออาหาร',
			'meal.mealQuantity' => 'จำนวนมื้ออาหาร',
			'meal.mealQuantityHint' => 'เช่น 1 ชาม, 2 ชั้น',
			'meal.timeOfMeal' => 'เวลาของมื้ออาหาร',
			'meal.timeOfMealHint' => 'เลือกเวลาที่คุณทานมื้ออาหาร',
			'meal.mealType' => 'ประเภทมื้ออาหาร',
			'meal.nutrition.calories' => 'แคลอรี',
			'meal.nutrition.carbs' => 'คาร์โบไฮเดรต (g)',
			'meal.nutrition.protein' => 'โปรตีน (g)',
			'meal.nutrition.fat' => 'ไขมัน (g)',
			'meal.nutrition.fiber' => 'เส้นใย (g)',
			'meal.deleteConfirmation.title' => 'ลบมื้ออาหาร',
			'meal.deleteConfirmation.message' => 'คุณแน่ใจหรือว่าต้องการลบบันทึกมื้อนี้?',
			'meal.deleteConfirmation.cancel' => 'ยกเลิก',
			'meal.deleteConfirmation.delete' => 'ลบ',
			'meal.addedToLog' => 'บันทึกมื้ออาหารลงในบันทึกของคุณ!',
			'meal.couldNotAdd' => ({required Object error}) => 'ไม่สามารถเพิ่มมื้ออาหารได้: ${error}',
			'meal.removedFromFavorites' => 'ลบออกจากมื้อโปรด!',
			'meal.savedAsFavorite' => 'มื้ออาหารบันทึกเป็นโปรด!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'ไม่สามารถอัปเดตโปรดได้: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'ไม่สามารถประมวลผล: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'ไม่สามารถประมวลผลภาพ: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'เกิดข้อผิดพลาดในการบีบอัดภาพ: ${error}',
			'meal.failedToSave' => 'ไม่สามารถบันทึกข้อมูลได้ กรุณาลองอีกครั้ง.',
			'favorites.title' => 'มื้อโปรด',
			'favorites.empty' => 'ยังไม่มีมื้ออาหารโปรด.',
			'profile.title' => 'โปรไฟล์',
			'profile.noProfileData' => 'ไม่มีข้อมูลโปรไฟล์',
			'profile.yourProfile' => 'โปรไฟล์ของคุณ',
			'profile.viewAndManage' => 'ดูและจัดการข้อมูลสุขภาพของคุณ',
			'profile.sections.profile' => 'โปรไฟล์',
			'profile.sections.basicInformation' => 'ข้อมูลพื้นฐาน',
			'profile.sections.goalsAndActivity' => 'เป้าหมาย & กิจกรรม',
			'profile.sections.calculatedValues' => 'ค่าที่คำนวณ',
			'profile.gender' => 'เพศ',
			'profile.height' => 'ความสูง',
			'profile.weight' => 'น้ำหนัก',
			'profile.age' => 'อายุ',
			'profile.weightGoal' => 'เป้าหมายการน้ำหนัก',
			'profile.activityLevel' => 'ระดับกิจกรรม',
			'profile.healthMetrics' => 'สุขภาพเมตริก',
			'profile.notSet' => 'ยังไม่ได้ตั้ง',
			'profile.years' => 'ปี',
			'profile.updatedSuccessfully' => 'อัปเดตโปรไฟล์สำเร็จ!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'เป้าหมายรายวัน',
			'profile.calculatedValues.calPerDay' => 'แคลอรี/วัน',
			'profile.calculatedValues.notAvailable' => 'ไม่มีข้อมูล',
			'healthScore.title' => 'คะแนนสุขภาพ',
			'healthScore.whyThisScore' => 'ทำไมถึงคะแนนนี้?',
			'healthScore.note' => 'คะแนนนี้คำนวณโดย AI โดยอิงจากส่วนผสมที่ระบุและความหนาแน่นทางโภชนาการ ปรึกษามืออาชีพเพื่อขอคำแนะนำด้านโภชนาการ',
			'healthScore.unhealthy' => 'ไม่ดีต่อสุขภาพ',
			'healthScore.healthy' => 'ดีต่อสุขภาพ',
			'healthScore.neutral' => 'กลาง',
			'editProfile.title' => 'แก้ไขโปรไฟล์',
			'editProfile.sections.personalInformation' => 'ข้อมูลส่วนบุคคล',
			'editProfile.sections.physicalMeasurements' => 'การวัดทางกายภาพ',
			'editProfile.sections.goalsAndActivity' => 'เป้าหมาย & กิจกรรม',
			'editProfile.gender' => 'เพศ',
			'editProfile.dateOfBirth' => 'วันเกิด',
			'editProfile.height' => 'ความสูง',
			'editProfile.weight' => 'น้ำหนัก',
			'editProfile.weightGoal' => 'เป้าหมายการน้ำหนัก',
			'editProfile.activityLevel' => 'ระดับกิจกรรม',
			'editProfile.metric' => 'เมตริก',
			'editProfile.imperial' => 'อิมพีเรียล',
			'editProfile.metricCm' => 'เมตริก (ซม.)',
			'editProfile.imperialFtIn' => 'อิมพีเรียล (ฟุต/นิ้ว)',
			'editProfile.metricKg' => 'เมตริก (กก.)',
			'editProfile.imperialLbs' => 'อิมพีเรียล (ปอนด์)',
			'editProfile.genders.male' => 'ชาย',
			'editProfile.genders.female' => 'หญิง',
			'editProfile.genders.other' => 'อื่น ๆ',
			'editProfile.weightGoals.loseWeight.name' => 'ลดน้ำหนัก',
			'editProfile.weightGoals.loseWeight.description' => 'สร้างการขาดแคลอรีเพื่อลดน้ำหนัก',
			'editProfile.weightGoals.maintainWeight.name' => 'รักษาน้ำหนัก',
			'editProfile.weightGoals.maintainWeight.description' => 'รักษาน้ำหนักปัจจุบันของคุณ',
			'editProfile.weightGoals.gainWeight.name' => 'เพิ่มน้ำหนัก',
			'editProfile.weightGoals.gainWeight.description' => 'สร้างการเกินแคลอรีเพื่อเพิ่มน้ำหนัก',
			'editProfile.activityLevels.sedentary.name' => 'นั่งอยู่',
			'editProfile.activityLevels.sedentary.description' => 'ออกกำลังกายน้อยมาก',
			'editProfile.activityLevels.lightlyActive.name' => 'มีการเคลื่อนไหวเล็กน้อย',
			'editProfile.activityLevels.lightlyActive.description' => 'ออกกำลังกายเบา ๆ 1-3 วัน/สัปดาห์',
			'editProfile.activityLevels.moderatelyActive.name' => 'มีการเคลื่อนไหวปานกลาง',
			'editProfile.activityLevels.moderatelyActive.description' => 'ออกกำลังกายปานกลาง 3-5 วัน/สัปดาห์',
			'editProfile.activityLevels.veryActive.name' => 'เคลื่อนไหวมาก',
			'editProfile.activityLevels.veryActive.description' => 'ออกกำลังกายหนัก 6-7 วัน/สัปดาห์',
			'editProfile.activityLevels.extremelyActive.name' => 'เคลื่อนไหวสุดขีด',
			'editProfile.activityLevels.extremelyActive.description' => 'ออกกำลังกายหนักมาก, งานทางกายภาพ',
			'settings.title' => 'การตั้งค่า',
			'settings.sections.profile' => 'โปรไฟล์',
			'settings.sections.localization' => 'การแปล',
			'settings.sections.notifications' => 'การแจ้งเตือน',
			'settings.sections.supportAndLegal' => 'การสนับสนุน & กฎหมาย',
			'settings.sections.dangerZone' => 'โซนอันตราย',
			'settings.sections.developer' => 'นักพัฒนา',
			'settings.editProfile.title' => 'แก้ไขโปรไฟล์',
			'settings.editProfile.subtitle' => 'อัปเดตข้อมูลส่วนบุคคลของคุณ',
			'settings.language.title' => 'ภาษา',
			'settings.language.subtitle' => 'เลือกภาษาที่ต้องการ',
			'settings.heightUnit.title' => 'หน่วยความสูง',
			'settings.weightUnit.title' => 'หน่วยน้ำหนัก',
			'settings.mealReminders.title' => 'การแจ้งเตือนมื้ออาหาร',
			'settings.mealReminders.subtitle' => 'อยู่ในแถวตั้งแต่กับการแจ้งเตือนที่ง่าย',
			'settings.theme.title' => 'Theme',
			'settings.theme.subtitle' => 'Choose your preferred theme',
			'settings.theme.light' => 'Light',
			'settings.theme.dark' => 'Dark',
			'settings.theme.system' => 'System',
			'settings.sendFeedback.title' => 'ส่งความคิดเห็น',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'ช่วยเราปรับปรุง ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'ข้อเสนอแนะแอป ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'กรุณาแสดงความคิดเห็นด้านล่าง:',
			'settings.sendFeedback.appVersion' => 'เวอร์ชันแอป',
			'settings.sendFeedback.device' => 'อุปกรณ์',
			'settings.sendFeedback.osVersion' => 'เวอร์ชัน OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'ลบข้อมูลทั้งหมด',
			'settings.clearAllData.subtitle' => 'ลบข้อมูลของคุณทั้งหมดอย่างถาวร',
			'settings.clearAllData.confirmationTitle' => 'ลบข้อมูลทั้งหมด?',
			'settings.clearAllData.confirmationMessage' => 'การกระทำนี้ไม่สามารถย้อนกลับได้ ข้อมูลบันทึกมื้ออาหาร, มื้อโปรด, และการตั้งค่าโปรไฟล์ทั้งหมดจะถูกลบอย่างถาวร',
			'settings.clearAllData.cancel' => 'ยกเลิก',
			'settings.clearAllData.clearEverything' => 'ลบทุกอย่าง',
			'settings.debugOptions.title' => 'ตัวเลือกการดีบัก',
			'settings.developerModeEnabled' => 'โหมดนักพัฒนาเปิดใช้งานแล้ว!',
			'reminders.title' => 'อยู่ในเส้นทางด้วยการแจ้งเตือน',
			'reminders.description' => 'รับการแจ้งเตือนที่อบอุ่นเพื่อบันทึกมื้ออาหารของคุณและรักษาความสม่ำเสมอกับเป้าหมายด้านโภชนาการ',
			'reminders.notificationsEnabled' => 'การแจ้งเตือนเปิดใช้งาน',
			'reminders.notificationsDisabled' => 'การแจ้งเตือนไม่เปิดใช้งาน',
			'reminders.enabledSubtitle' => 'คุณจะได้รับการแจ้งเตือนมื้ออาหาร',
			'reminders.disabledSubtitle' => 'เปิดการแจ้งเตือนเพื่อรับการแจ้งเตือนมื้ออาหาร',
			'reminders.mealReminders' => 'การแจ้งเตือนมื้ออาหาร',
			'reminders.breakfast' => 'อาหารเช้า',
			'reminders.lunch' => 'อาหารกลางวัน',
			'reminders.dinner' => 'อาหารเย็น',
			'reminders.snack' => 'ขนม',
			'reminders.unknown' => 'ไม่ทราบ',
			'reminders.change' => 'เปลี่ยน',
			'reminders.enableNotifications' => 'เปิดการแจ้งเตือน',
			'reminders.skipForNow' => 'ขอข้ามไปก่อน',
			'reminders.saveChanges' => 'บันทึกการเปลี่ยนแปลง',
			'reminders.enabledSuccessfully' => 'การแจ้งเตือนเปิดใช้งานสำเร็จ!',
			'reminders.permissionDenied' => 'การอนุญาตการแจ้งเตือนถูกปฏิเสธ',
			'reminders.errorEnabling' => ({required Object error}) => 'เกิดข้อผิดพลาดในการเปิดการแจ้งเตือน: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'เกิดข้อผิดพลาดในการตั้งค่าให้ครบถ้วน: ${error}',
			'notifications.breakfast.title' => 'เวลาอาหารเช้า! 🍳',
			'notifications.breakfast.body' => 'อย่าลืมบันทึกอาหารเช้าของคุณ',
			'notifications.lunch.title' => 'เวลาอาหารกลางวัน! 🥗',
			'notifications.lunch.body' => 'ถึงเวลาบันทึกอาหารกลางวันของคุณ',
			'notifications.dinner.title' => 'เวลาอาหารเย็น! 🍽️',
			'notifications.dinner.body' => 'อย่าลืมบันทึกอาหารเย็นของคุณ',
			'notifications.snack.title' => 'เวลาอาหารว่าง! 🍎',
			'notifications.snack.body' => 'ถึงเวลาขนมที่ดีต่อสุขภาพ',
			'notifications.test.title' => 'การแจ้งเตือนทดสอบ',
			'login.title' => 'เข้าสู่ระบบ',
			'login.signInWithGoogle' => 'ลงชื่อเข้าใช้ด้วย Google',
			'login.signInFailed' => 'การลงชื่อเข้าใช้ Google ล้มเหลวหรือถูกยกเลิก',
			'disclaimer.pleaseNote' => 'โปรดทราบ',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} ให้ข้อมูลโภชนาการโดยประมาณ ความถูกต้องขึ้นอยู่กับข้อมูลที่คุณป้อนและความแตกต่างของอาหาร ใช้เป็นแนวทาง ไม่ใช่แหล่งข้อมูลที่แน่นอน ปรึกษาผู้เชี่ยวชาญสำหรับคำแนะนำโภชนาการเฉพาะบุคคล',
			'disclaimer.snap.portionSize.title' => 'ขนาดชิ้นส่วน',
			'disclaimer.snap.portionSize.description' => 'ความแม่นยำของการประมาณการขึ้นอยู่กับการประเมินขนาดชิ้นส่วนอย่างถูกต้องของคุณ',
			'disclaimer.snap.preparationMethods.title' => 'วิธีการเตรียม',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'วิธีการทำอาหารสามารถทำให้สารอาหารในอาหารเปลี่ยนแปลงได้อย่างมาก การประมาณการของ ${appLabel} อาจไม่คำนึงถึงความแตกต่างเหล่านี้เสมอไป',
			'disclaimer.snap.ingredients.title' => 'ส่วนผสม',
			'disclaimer.snap.ingredients.description' => 'จานซับซ้อนที่มีส่วนผสมหลายอย่างอาจทำให้การประมาณการไม่แม่นยำ',
			'disclaimer.snap.databaseLimitations.title' => 'ข้อจำกัดของฐานข้อมูล',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} มีฐานข้อมูลอาหารที่กว้างขวาง แต่ก็อาจไม่ครอบคลุมทุกอาหารหรือความแตกต่างทุกรูปแบบ',
			'disclaimer.weightEstimate.title' => 'เกี่ยวกับการประมาณน้ำหนัก',
			'disclaimer.weightEstimate.description' => 'การเปลี่ยนแปลงน้ำหนักที่คาดการณ์เป็นการประมาณการทางทฤษฎีโดยอิงจากแบบจำลองแคลอรีเข้าและแคลอรีออก มันถูกตั้งขึ้นเพื่อให้เป็นแนวทางในการสร้างแรงจูงใจเท่านั้น ไม่ใช่การคาดการณ์น้ำหนักจริงของคุณ',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'ความแม่นยำแคลอรี',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'การประมาณนี้ขึ้นอยู่กับการติดตามการบริโภคและการใช้แคลอรีที่ถูกต้อง การบันทึกที่ไม่ถูกต้องจะส่งผลให้การคาดการณ์ไม่แม่นยำ',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'ปัจจัยทางชีวภาพ',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'การลด/เพิ่มน้ำหนักจริง ๆ ขึ้นอยู่กับการเผาผลาญ ฮอร์โมน การนอนหลับ ความเครียด การอยู่ในน้ำ และปัจจัยเฉพาะบุคคลอื่น ๆ ที่ ${appLabel} ไม่สามารถวัดได้',
			'disclaimer.weightEstimate.waterWeight.title' => 'น้ำหนักน้ำ & การเปลี่ยนแปลง',
			'disclaimer.weightEstimate.waterWeight.description' => 'น้ำหนักรายวันสามารถผันผวนอย่างมากเนื่องจากการกักเก็บน้ำ, การย่อยอาหาร และการเวลา โดยการประมาณการไม่คำนึงถึงการเปลี่ยนแปลงเหล่านี้',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'คำแนะนำจากมืออาชีพ',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'อย่าใช้การประมาณนี้ในการตัดสินใจทางการแพทย์ เสมอปรึกษาผู้เชี่ยวชาญด้านสุขภาพหรือผู้ให้คำแนะนำทางโภชนาการที่มีใบรับรองเพื่อขอคำแนะนำการจัดการน้ำหนักส่วนบุคคล',
			'common.close' => 'ปิด',
			'common.kContinue' => 'ดำเนินการต่อ',
			'errors.loadingProfileData' => 'เกิดข้อผิดพลาดในการโหลดข้อมูลโปรไฟล์',
			'errors.somethingWentWrong' => 'มีบางอย่างผิดพลาด.',
			'debug.title' => 'ตัวเลือกการดีบัก',
			'debug.sections.notifications' => 'การแจ้งเตือน',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.appInfo' => 'ข้อมูลแอป',
			'debug.showActiveNotifications' => 'แสดงการแจ้งเตือนที่ใช้งานอยู่',
			'debug.scheduleTestNotification' => 'กำหนดการแจ้งเตือนทดสอบ (10 วินาที)',
			'debug.triggerBreakfastNotification' => 'กระตุ้นการแจ้งเตือนอาหารเช้า',
			'debug.cancelAllNotifications' => 'ยกเลิกการแจ้งเตือนทั้งหมด',
			'debug.activeNotifications' => 'การแจ้งเตือนที่ใช้งานอยู่',
			'debug.noTitle' => 'ไม่มีชื่อ',
			'debug.noBody' => 'ไม่มีเนื้อหา',
			'debug.fetchTodaysSteps' => 'ดึงจำนวนก้าววันนี้',
			'debug.fetchTodaysCalories' => 'ดึงแคลอรีวันนี้',
			'debug.fetchLatestWeight' => 'ดึงน้ำหนักล่าสุด',
			'debug.fetchLatestHeight' => 'ดึงความสูงล่าสุด',
			'debug.writeTestWeight' => 'เขียนน้ำหนักทดสอบ (70 กก.)',
			'debug.writeTestHeight' => 'เขียนความสูงทดสอบ (175 ซม.)',
			'debug.syncLast7Days' => 'ซิงค์ 7 วันล่าสุด',
			'debug.sync7DaysTitle' => 'ซิงค์ 7 วัน',
			'debug.checkCurrentLocale' => 'ตรวจสอบภูมิภาคปัจจุบัน',
			'debug.currentLocale' => 'ภูมิภาคปัจจุบัน',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'ภาษา: ${languageCode}\nประเทศ: ${countryCode}\nระบบหน่วย: ${unitSystem}',
			'debug.latestWeight' => 'น้ำหนักล่าสุด',
			'debug.latestHeight' => 'ความสูงล่าสุด',
			'debug.todaysCalories' => 'แคลอรีวันนี้',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'แคลอรีทั้งหมดที่เผาผลาญ: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'ซิงค์ข้อมูลสำเร็จ ${count} จุดข้อมูลสำหรับจำนวนก้าว, แคลอรี, และน้ำหนักในช่วง 7 วันที่ผ่านมา.',
			'debug.noWeightData' => 'ไม่มีข้อมูลน้ำหนักในช่วง 30 วันที่ผ่านมา.',
			'debug.noHeightData' => 'ไม่มีข้อมูลความสูงในปีที่ผ่านมา.',
			'debug.noCalorieData' => 'ไม่มีข้อมูลแคลอรีในวันนี้.',
			'debug.weightWritten' => 'เขียนน้ำหนักทดสอบ (70 กก.) สำเร็จ.',
			'debug.weightWriteFailed' => 'ไม่สามารถเขียนน้ำหนักทดสอบ.',
			'debug.heightWritten' => 'เขียนความสูงทดสอบ (175 ซม.) สำเร็จ.',
			'debug.heightWriteFailed' => 'ไม่สามารถเขียนความสูงทดสอบ.',
			'debug.noNotifications' => 'ไม่มีการแจ้งเตือนที่ใช้งาน.',
			'debug.testNotificationScheduled' => 'การแจ้งเตือนทดสอบกำหนดไว้สำหรับ 10 วินาทีจากนี้.',
			'debug.testNotificationBody' => 'นี่คือการแจ้งเตือนทดสอบกำหนดไว้สำหรับ 10 วินาทีจากนี้.',
			'debug.breakfastNotificationTriggered' => 'การแจ้งเตือนอาหารเช้าเกิดขึ้น.',
			'debug.allNotificationsCancelled' => 'ยกเลิกการแจ้งเตือนทั้งหมด.',
			'debug.fetchingData' => 'กำลังดึงข้อมูลสำหรับ 7 วันที่ผ่านมา...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'health.syncFailed' => 'ไม่สามารถซิงค์ไปยัง Health Connect',
			'health.mealSynced' => 'มื้ออาหารซิงค์แล้วกับ Health Connect',
			_ => null,
		};
	}
}
