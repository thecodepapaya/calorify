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
class TranslationsTh extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTh({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.th,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <th>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsTh _root = this; // ignore: unused_field

	@override 
	TranslationsTh $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTh(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'ไทย';
	@override String get flag => '🇹🇭';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$th errors = _Translations$errors$th._(_root);
	@override late final _Translations$onboarding$th onboarding = _Translations$onboarding$th._(_root);
	@override late final _Translations$tabs$th tabs = _Translations$tabs$th._(_root);
	@override late final _Translations$home$th home = _Translations$home$th._(_root);
	@override late final _Translations$history$th history = _Translations$history$th._(_root);
	@override late final _Translations$meal$th meal = _Translations$meal$th._(_root);
	@override late final _Translations$favorites$th favorites = _Translations$favorites$th._(_root);
	@override late final _Translations$profile$th profile = _Translations$profile$th._(_root);
	@override late final _Translations$healthScore$th healthScore = _Translations$healthScore$th._(_root);
	@override late final _Translations$editProfile$th editProfile = _Translations$editProfile$th._(_root);
	@override late final _Translations$settings$th settings = _Translations$settings$th._(_root);
	@override late final _Translations$reminders$th reminders = _Translations$reminders$th._(_root);
	@override late final _Translations$notifications$th notifications = _Translations$notifications$th._(_root);
	@override late final _Translations$login$th login = _Translations$login$th._(_root);
	@override late final _Translations$disclaimer$th disclaimer = _Translations$disclaimer$th._(_root);
	@override late final _Translations$localNutritionPhase4$th localNutritionPhase4 = _Translations$localNutritionPhase4$th._(_root);
	@override late final _Translations$watch$th watch = _Translations$watch$th._(_root);
	@override late final _Translations$common$th common = _Translations$common$th._(_root);
	@override late final _Translations$feedbackRating$th feedbackRating = _Translations$feedbackRating$th._(_root);
	@override late final _Translations$health$th health = _Translations$health$th._(_root);
}

// Path: errors
class _Translations$errors$th extends Translations$errors$en {
	_Translations$errors$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$th extends Translations$onboarding$en {
	_Translations$onboarding$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'ยินดีต้อนรับสู่ ${appLabel}';
	@override String get subtitle => 'ผู้ช่วยโภชนาการส่วนตัวของคุณ ใช้พลังจาก AI';
	@override String get getStarted => 'เริ่มเลย';
	@override late final _Translations$onboarding$features$th features = _Translations$onboarding$features$th._(_root);
	@override late final _Translations$onboarding$gender$th gender = _Translations$onboarding$gender$th._(_root);
	@override late final _Translations$onboarding$height$th height = _Translations$onboarding$height$th._(_root);
	@override late final _Translations$onboarding$weight$th weight = _Translations$onboarding$weight$th._(_root);
	@override late final _Translations$onboarding$age$th age = _Translations$onboarding$age$th._(_root);
	@override late final _Translations$onboarding$bmiScale$th bmiScale = _Translations$onboarding$bmiScale$th._(_root);
	@override late final _Translations$onboarding$weightGoal$th weightGoal = _Translations$onboarding$weightGoal$th._(_root);
	@override late final _Translations$onboarding$activityLevel$th activityLevel = _Translations$onboarding$activityLevel$th._(_root);
	@override late final _Translations$onboarding$healthConnect$th healthConnect = _Translations$onboarding$healthConnect$th._(_root);
	@override late final _Translations$onboarding$reinforcement$th reinforcement = _Translations$onboarding$reinforcement$th._(_root);
}

// Path: tabs
class _Translations$tabs$th extends Translations$tabs$en {
	_Translations$tabs$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'แดชบอร์ด';
	@override String get history => 'ประวัติ';
}

// Path: home
class _Translations$home$th extends Translations$home$en {
	_Translations$home$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$th aiSummary = _Translations$home$aiSummary$th._(_root);
	@override late final _Translations$home$dailyGoal$th dailyGoal = _Translations$home$dailyGoal$th._(_root);
	@override late final _Translations$home$dailySummary$th dailySummary = _Translations$home$dailySummary$th._(_root);
	@override late final _Translations$home$intakeProgress$th intakeProgress = _Translations$home$intakeProgress$th._(_root);
	@override late final _Translations$home$intakeHistory$th intakeHistory = _Translations$home$intakeHistory$th._(_root);
	@override late final _Translations$home$mealLog$th mealLog = _Translations$home$mealLog$th._(_root);
	@override late final _Translations$home$mealDescription$th mealDescription = _Translations$home$mealDescription$th._(_root);
	@override late final _Translations$home$favoriteMeals$th favoriteMeals = _Translations$home$favoriteMeals$th._(_root);
	@override late final _Translations$home$mealSnap$th mealSnap = _Translations$home$mealSnap$th._(_root);
	@override late final _Translations$home$connectHealth$th connectHealth = _Translations$home$connectHealth$th._(_root);
}

// Path: history
class _Translations$history$th extends Translations$history$en {
	_Translations$history$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'ยังไม่มีมื้อบันทึก';
	@override String get emptyMessage => 'ถ่ายรูปมื้อสุดท้ายของคุณเพื่อบันทึกที่นี่';
	@override String get today => 'วันนี้';
	@override String get yesterday => 'เมื่อวาน';
}

// Path: meal
class _Translations$meal$th extends Translations$meal$en {
	_Translations$meal$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
	@override String get nameRequired => 'กรุณาใส่ชื่อมื้ออาหารก่อนบันทึก.';
	@override String get mealQuantity => 'ปริมาณมื้อ';
	@override String get mealQuantityHint => 'เช่น 1 ถ้วย, 2 แผ่น';
	@override String get timeOfMeal => 'เวลารับประทาน';
	@override String get timeOfMealHint => 'เลือกเวลาที่คุณทานมื้ออาหาร';
	@override String get mealType => 'ประเภทมื้อ';
	@override late final _Translations$meal$nutrition$th nutrition = _Translations$meal$nutrition$th._(_root);
	@override late final _Translations$meal$deleteConfirmation$th deleteConfirmation = _Translations$meal$deleteConfirmation$th._(_root);
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
	@override late final _Translations$meal$questionFlow$th questionFlow = _Translations$meal$questionFlow$th._(_root);
	@override late final _Translations$meal$analysis$th analysis = _Translations$meal$analysis$th._(_root);
	@override late final _Translations$meal$localInference$th localInference = _Translations$meal$localInference$th._(_root);
	@override late final _Translations$meal$feedback$th feedback = _Translations$meal$feedback$th._(_root);
}

// Path: favorites
class _Translations$favorites$th extends Translations$favorites$en {
	_Translations$favorites$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
	@override late final _Translations$favorites$sortOptions$th sortOptions = _Translations$favorites$sortOptions$th._(_root);
}

// Path: profile
class _Translations$profile$th extends Translations$profile$en {
	_Translations$profile$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'โปรไฟล์';
	@override String get noProfileData => 'ไม่พบข้อมูลโปรไฟล์';
	@override String get yourProfile => 'โปรไฟล์ของคุณ';
	@override String get viewAndManage => 'ดูและจัดการข้อมูลสุขภาพของคุณ';
	@override late final _Translations$profile$sections$th sections = _Translations$profile$sections$th._(_root);
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
	@override late final _Translations$profile$calculatedValues$th calculatedValues = _Translations$profile$calculatedValues$th._(_root);
}

// Path: healthScore
class _Translations$healthScore$th extends Translations$healthScore$en {
	_Translations$healthScore$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$th extends Translations$editProfile$en {
	_Translations$editProfile$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'แก้ไขโปรไฟล์';
	@override late final _Translations$editProfile$sections$th sections = _Translations$editProfile$sections$th._(_root);
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
	@override String get unitLbs => 'ปอนด์ (lbs)';
	@override String get metricCm => 'เมตริก (cm)';
	@override String get imperialFtIn => 'อิมพีเรียล (ft/in)';
	@override String get metricKg => 'เมตริก (kg)';
	@override String get imperialLbs => 'อิมพีเรียล (lbs)';
	@override late final _Translations$editProfile$genders$th genders = _Translations$editProfile$genders$th._(_root);
	@override late final _Translations$editProfile$weightGoals$th weightGoals = _Translations$editProfile$weightGoals$th._(_root);
	@override late final _Translations$editProfile$activityLevels$th activityLevels = _Translations$editProfile$activityLevels$th._(_root);
}

// Path: settings
class _Translations$settings$th extends Translations$settings$en {
	_Translations$settings$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การตั้งค่า';
	@override late final _Translations$settings$sections$th sections = _Translations$settings$sections$th._(_root);
	@override late final _Translations$settings$editProfile$th editProfile = _Translations$settings$editProfile$th._(_root);
	@override late final _Translations$settings$language$th language = _Translations$settings$language$th._(_root);
	@override late final _Translations$settings$heightUnit$th heightUnit = _Translations$settings$heightUnit$th._(_root);
	@override late final _Translations$settings$weightUnit$th weightUnit = _Translations$settings$weightUnit$th._(_root);
	@override late final _Translations$settings$mealReminders$th mealReminders = _Translations$settings$mealReminders$th._(_root);
	@override late final _Translations$settings$localInference$th localInference = _Translations$settings$localInference$th._(_root);
	@override late final _Translations$settings$theme$th theme = _Translations$settings$theme$th._(_root);
	@override late final _Translations$settings$sendFeedback$th sendFeedback = _Translations$settings$sendFeedback$th._(_root);
	@override late final _Translations$settings$exportMealHistory$th exportMealHistory = _Translations$settings$exportMealHistory$th._(_root);
	@override late final _Translations$settings$clearAllData$th clearAllData = _Translations$settings$clearAllData$th._(_root);
	@override late final _Translations$settings$debugOptions$th debugOptions = _Translations$settings$debugOptions$th._(_root);
	@override String get developerModeEnabled => 'เปิดโหมดนักพัฒนาแล้ว!';
	@override late final _Translations$settings$healthConnect$th healthConnect = _Translations$settings$healthConnect$th._(_root);
	@override late final _Translations$settings$about$th about = _Translations$settings$about$th._(_root);
	@override late final _Translations$settings$appInfo$th appInfo = _Translations$settings$appInfo$th._(_root);
}

// Path: reminders
class _Translations$reminders$th extends Translations$reminders$en {
	_Translations$reminders$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
class _Translations$notifications$th extends Translations$notifications$en {
	_Translations$notifications$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$th breakfast = _Translations$notifications$breakfast$th._(_root);
	@override late final _Translations$notifications$lunch$th lunch = _Translations$notifications$lunch$th._(_root);
	@override late final _Translations$notifications$dinner$th dinner = _Translations$notifications$dinner$th._(_root);
	@override late final _Translations$notifications$snack$th snack = _Translations$notifications$snack$th._(_root);
	@override late final _Translations$notifications$test$th test = _Translations$notifications$test$th._(_root);
}

// Path: login
class _Translations$login$th extends Translations$login$en {
	_Translations$login$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เข้าสู่ระบบ';
	@override String get signInWithGoogle => 'ลงชื่อเข้าใช้ด้วย Google';
	@override String get signInFailed => 'การเข้าสู่ระบบด้วย Google ล้มเหลวหรือถูกยกเลิก';
}

// Path: disclaimer
class _Translations$disclaimer$th extends Translations$disclaimer$en {
	_Translations$disclaimer$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'โปรดทราบ';
	@override late final _Translations$disclaimer$snap$th snap = _Translations$disclaimer$snap$th._(_root);
	@override late final _Translations$disclaimer$weightEstimate$th weightEstimate = _Translations$disclaimer$weightEstimate$th._(_root);
	@override late final _Translations$disclaimer$healthMetrics$th healthMetrics = _Translations$disclaimer$healthMetrics$th._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$th calorieExpenditure = _Translations$disclaimer$calorieExpenditure$th._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$th extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get portionSmaller => 'น้อยกว่า';
	@override String get portionEstimated => 'โดยประมาณ';
	@override String get portionLarger => 'มากกว่า';
	@override String portionQuestion({required Object ingredient}) => 'ปริมาณใดใกล้เคียงที่สุดสำหรับ ${ingredient}?';
	@override String get mealTypeQuestion => 'นี่เป็นมื้อใด?';
	@override String get localNutritionTip => 'คำนวณจากข้อมูลโภชนาการในเครื่องที่ผ่านการตรวจสอบแล้ว';
	@override String get offlineNutritionTitle => 'ดาวน์โหลดข้อมูลโภชนาการ';
	@override String get offlineNutritionSubtitle => 'ใช้แถว USDA ที่ผ่านการตรวจสอบและการคำนวณแบบกำหนดแน่นอนบนอุปกรณ์นี้เมื่อครอบคลุมส่วนผสมทั้งหมด';
	@override String get offlineNutritionUnavailable => 'ข้อมูลโภชนาการในเครื่องไม่พร้อมใช้งานสำหรับแอปรุ่นนี้';
	@override String get offlineNutritionNotDownloaded => 'ยังไม่ได้ดาวน์โหลดแพ็กโภชนาการที่ผ่านการตรวจสอบ';
	@override String get offlineNutritionInstalling => 'กำลังดาวน์โหลดและตรวจสอบข้อมูลโภชนาการ…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'แพ็ก ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => 'แถว USDA ที่แคชไว้ ${count} แถว · ${size}';
	@override String get offlineNutritionUpdate => 'ตรวจหาการอัปเดต';
	@override String get offlineNutritionClear => 'ล้างข้อมูลโภชนาการในเครื่อง';
	@override String get offlineNutritionClearTitle => 'ล้างข้อมูลโภชนาการในเครื่องหรือไม่?';
	@override String get offlineNutritionClearBody => 'การดำเนินการนี้จะลบแพ็ก USDA ที่ดาวน์โหลดและแคชการค้นหา มื้ออาหารที่บันทึกไว้จะเก็บสแนปช็อตโภชนาการที่ใช้ตอนบันทึกไว้อย่างถูกต้อง';
	@override String get offlineNutritionClearConfirm => 'ล้างข้อมูล';
	@override String offlineNutritionInstallFailed({required Object error}) => 'ดาวน์โหลดและตรวจสอบข้อมูลโภชนาการในเครื่องไม่ได้: ${error}';
	@override String get offlineNutritionCleared => 'ล้างข้อมูลโภชนาการในเครื่องแล้ว';
}

// Path: watch
class _Translations$watch$th extends Translations$watch$en {
	_Translations$watch$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$th common = _Translations$watch$common$th._(_root);
	@override late final _Translations$watch$nutrition$th nutrition = _Translations$watch$nutrition$th._(_root);
	@override late final _Translations$watch$sync$th sync = _Translations$watch$sync$th._(_root);
	@override late final _Translations$watch$home$th home = _Translations$watch$home$th._(_root);
	@override late final _Translations$watch$history$th history = _Translations$watch$history$th._(_root);
	@override late final _Translations$watch$favorites$th favorites = _Translations$watch$favorites$th._(_root);
	@override late final _Translations$watch$meal$th meal = _Translations$watch$meal$th._(_root);
	@override late final _Translations$watch$voice$th voice = _Translations$watch$voice$th._(_root);
	@override late final _Translations$watch$result$th result = _Translations$watch$result$th._(_root);
}

// Path: common
class _Translations$common$th extends Translations$common$en {
	_Translations$common$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'เบต้า';
	@override String get close => 'ปิด';
	@override String get kContinue => 'ดำเนินการต่อ';
}

// Path: feedbackRating
class _Translations$feedbackRating$th extends Translations$feedbackRating$en {
	_Translations$feedbackRating$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
class _Translations$health$th extends Translations$health$en {
	_Translations$health$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'ไม่สามารถซิงก์กับ Health Connect';
	@override String get mealSynced => 'ซิงก์มื้อกับ Health Connect แล้ว';
}

// Path: onboarding.features
class _Translations$onboarding$features$th extends Translations$onboarding$features$en {
	_Translations$onboarding$features$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$th foodRecognition = _Translations$onboarding$features$foodRecognition$th._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$th aiAnalysis = _Translations$onboarding$features$aiAnalysis$th._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$th healthIntegration = _Translations$onboarding$features$healthIntegration$th._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$th extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณระบุเพศว่าอย่างไร?';
	@override String get description => 'ข้อมูลเพศช่วยให้เราคำนวณอัตราการเผาผลาญพื้นฐาน (BMR) ได้แม่นยำขึ้น';
	@override String get next => 'ถัดไป';
}

// Path: onboarding.height
class _Translations$onboarding$height$th extends Translations$onboarding$height$en {
	_Translations$onboarding$height$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณสูงเท่าไหร่?';
	@override String get description => 'ความสูงช่วยให้เราคำนวณ BMI และความต้องการพลังงานได้อย่างแม่นยำ';
	@override String get metric => 'เมตริก';
	@override String get imperial => 'อิมพีเรียล';
	@override String get next => 'ถัดไป';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$th extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$age$th extends Translations$onboarding$age$en {
	_Translations$onboarding$age$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'วันเกิดของคุณคือเมื่อไหร่?';
	@override String get description => 'อายุช่วยให้เราคำนวณความต้องการแคลอรีได้อย่างแม่นยำ';
	@override String get next => 'ถัดไป';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$th extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'ผอมกว่าปกติ';
	@override String get healthy => 'สุขภาพดี';
	@override String get overweight => 'น้ำหนักเกิน';
	@override String get obese => 'อ้วน';
	@override late final _Translations$onboarding$bmiScale$categories$th categories = _Translations$onboarding$bmiScale$categories$th._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$th messages = _Translations$onboarding$bmiScale$messages$th._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$th extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เป้าหมายของคุณคืออะไร?';
	@override String get description => 'เลือกเป้าหมายที่ตรงกับสิ่งที่คุณต้องการบรรลุ';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$th extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณมีกิจกรรมระดับไหน?';
	@override String get description => 'ข้อมูลนี้ช่วยให้เราคำนวณความต้องการแคลอรีรายวันได้แม่นยำขึ้น';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$th extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เชื่อมต่อกับ Health Connect';
	@override String get description => 'ใช้แคลอรีที่เผาผลาญในเป้าหมายประจำวัน และเลือกแชร์มื้ออาหารที่บันทึกไว้กับ Health Connect';
	@override String get overviewDescription => 'ใช้แคลอรีที่เผาผลาญในเป้าหมายรายวัน และเลือกแชร์มื้ออาหารที่บันทึกไว้กับ Health Connect';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$th automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$th._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$th caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$th._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$th progressInsights = _Translations$onboarding$healthConnect$progressInsights$th._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$th shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$th._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$th seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$th._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$th userControl = _Translations$onboarding$healthConnect$userControl$th._(_root);
	@override String get connected => 'เชื่อมต่อกับ Health Connect แล้ว';
	@override String get notConnected => 'ยังไม่ได้เชื่อมต่อกับ Health Connect';
	@override String get setup => 'ตั้งค่า Health Connect';
	@override String get skipForNow => 'ข้ามก่อน';
	@override String get statusConnected => 'Health Connect ถูกเชื่อมต่อแล้ว';
	@override String get statusSuccess => 'เชื่อมต่อกับ Health Connect สำเร็จ!';
	@override String get statusNotConnected => 'เลือกฟีเจอร์ Health Connect ที่คุณต้องการเปิดใช้';
	@override String get statusPartial => 'Health Connect เชื่อมต่อบางส่วนแล้ว เปิดสิทธิ์ที่เหลือเพื่อใช้ทั้งสองฟีเจอร์';
	@override String get statusProviderUpdateRequired => 'ติดตั้งหรืออัปเดต Health Connect เพื่อดำเนินการต่อ';
	@override String get statusUnavailable => 'อุปกรณ์นี้ไม่รองรับ Health Connect';
	@override String get installOrUpdate => 'ติดตั้งหรืออัปเดต';
	@override String get manageAccess => 'จัดการการเข้าถึง';
	@override String statusPermissionDenied({required Object appLabel}) => 'การอนุญาตถูกปฏิเสธ โปรดเปิดสิทธิ์ Health Connect ในการตั้งค่าบนโทรศัพท์สำหรับ ${appLabel}';
	@override String statusError({required Object error}) => 'เกิดข้อผิดพลาดขณะตั้งค่า Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$th extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$th trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$th._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$th healthProfile = _Translations$onboarding$reinforcement$healthProfile$th._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$th goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$th._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$th extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
class _Translations$home$dailyGoal$th extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
	@override String get kcal => 'กิโลแคลอรี (kcal)';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$th extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
class _Translations$home$intakeProgress$th extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สัดส่วนสารอาหารวันนี้';
	@override String get target => 'เป้าหมาย';
	@override String get current => 'ปัจจุบัน';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$th extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ประวัติสารอาหาร 7 วัน';
	@override String get trendTitle => 'แนวโน้มวันนี้';
	@override String peakHour({required Object hour}) => 'ชั่วโมงสูงสุด: ${hour}:00';
	@override String get noHistoryYet => 'ยังไม่มีประวัติ';
	@override String get startLogging => 'เริ่มบันทึกมื้ออาหารเพื่อดู\nแนวโน้มสารอาหาร 7 วันที่นี่';
}

// Path: home.mealLog
class _Translations$home$mealLog$th extends Translations$home$mealLog$en {
	_Translations$home$mealLog$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มื้อที่บันทึกแล้ว';
	@override String get emptyMessage => 'ถ่ายรูปมื้อสุดท้ายของคุณเพื่อบันทึกที่นี่';
	@override String get noMealsToday => 'ยังไม่มีมื้อบันทึกสำหรับวันนี้';
	@override String get seeAllMeals => 'ดูมื้อทั้งหมด';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$th extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เพิ่มด่วนด้วย AI';
	@override String get description => 'อธิบายมื้อของคุณ แล้วให้ AI จัดการรายละเอียด';
	@override String get hint => 'เช่น มื้อเช้าฉันทานโจ๊กถ้วยใหญ่กับกล้วยหั่นและเวย์โปรตีนหนึ่งช้อน ...';
	@override String get analyzeMeal => 'วิเคราะห์มื้อ';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$th extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
class _Translations$home$mealSnap$th extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
class _Translations$home$connectHealth$th extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ซิงก์กับ Health Connect';
	@override String get description => 'ใช้แคลอรีที่เผาผลาญในเป้าหมายและแชร์มื้ออาหารที่บันทึกไว้';
	@override String get install => 'ติดตั้งหรืออัปเดต';
	@override String get dataUseDescription => 'ใช้แคลอรีที่เผาผลาญในเป้าหมายและแชร์มื้ออาหารที่บันทึกไว้';
	@override String get installOrUpdate => 'ติดตั้งหรืออัปเดต';
	@override String get connect => 'เชื่อมต่อ';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$th extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get calories => 'แคลอรี';
	@override String get carbs => 'คาร์บ (g)';
	@override String get protein => 'โปรตีน (g)';
	@override String get fat => 'ไขมัน (g)';
	@override String get fiber => 'ใยอาหาร (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$th extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ลบมื้ออาหาร';
	@override String get message => 'คุณแน่ใจว่าต้องการลบรายการมื้อนี้หรือไม่?';
	@override String get cancel => 'ยกเลิก';
	@override String get delete => 'ลบ';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$th extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'คำถาม ${current} จาก ${total}';
	@override String get noQuestionsAvailable => 'ไม่มีคำถาม';
	@override String get next => 'ถัดไป';
	@override String get continueLabel => 'ดำเนินการต่อ';
}

// Path: meal.analysis
class _Translations$meal$analysis$th extends Translations$meal$analysis$en {
	_Translations$meal$analysis$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
	@override String mealPreviewDescription({required Object text}) => '“${text}”';
	@override String get offlineTip0 => 'เคล็ดลับ: ความสม่ำเสมอกำลังกว่าความสมบูรณ์ — การบันทึกสม่ำเสมอเผยรูปแบบที่สำคัญ';
	@override String get offlineTip1 => 'เคล็ดลับ: สำหรับรูป ให้ใช้แสงธรรมชาติและมุมมองจากด้านบนเพื่อความแม่นยำของปริมาณ';
	@override String get offlineTip2 => 'เคล็ดลับ: ระบุเครื่องดื่ม น้ำจิ้ม และน้ำมันที่ใช้ปรุง — สิ่งเหล่านี้เพิ่มแคลอรีที่คนมักลืม';
	@override String get offlineTip3 => 'เคล็ดลับ: ระบุขนาดคร่าวๆ (1 ถ้วย, กาแฟแก้วใหญ่) จะช่วยให้การประเมินคมชัดขึ้น';
	@override String get offlineTip4 => 'เคล็ดลับ: บันทึกหลังมื้อยังช่วยสร้างนิสัยได้ ความสมบูรณ์ไม่จำเป็น';
	@override String get offlineTip5 => 'เคล็ดลับ: ระบุวิธีการปรุงเมื่อส่งผลต่อแคลอรีมาก (ทอด vs อบ)';
}

// Path: meal.localInference
class _Translations$meal$localInference$th extends Translations$meal$localInference$en {
	_Translations$meal$localInference$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'ตรวจสอบส่วนผสมที่ตรวจพบ';
	@override String get reviewSubtitle => 'ข้อมูลนี้ถูกวิเคราะห์บนอุปกรณ์ของคุณ โปรดแก้ไขชื่อหรือปริมาณก่อนคำนวณคุณค่าทางโภชนาการ';
	@override String get mealName => 'ชื่อมื้ออาหาร';
	@override String get ingredient => 'ส่วนผสม';
	@override String get grams => 'ปริมาณกรัมโดยประมาณ';
	@override String get removeIngredient => 'ลบส่วนผสม';
	@override String get continueLabel => 'ดำเนินการต่อ';
	@override String get invalidProposal => 'โปรดเพิ่มส่วนผสมอย่างน้อยหนึ่งรายการและระบุปริมาณกรัมเป็นค่าบวก';
	@override String get localUnavailable => 'ไม่สามารถใช้งานการวิเคราะห์บนอุปกรณ์ได้ในขณะนี้';
}

// Path: meal.feedback
class _Translations$meal$feedback$th extends Translations$meal$feedback$en {
	_Translations$meal$feedback$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
class _Translations$favorites$sortOptions$th extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get recent => 'ล่าสุด';
	@override String get calories => 'แคลอรี';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _Translations$profile$sections$th extends Translations$profile$sections$en {
	_Translations$profile$sections$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get profile => 'โปรไฟล์';
	@override String get basicInformation => 'ข้อมูลพื้นฐาน';
	@override String get goalsAndActivity => 'เป้าหมาย & กิจกรรม';
	@override String get calculatedValues => 'ค่าที่คำนวณได้';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$th extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'เป้าหมายรายวัน';
	@override String get calPerDay => 'แคล/วัน';
	@override String get notAvailable => 'ไม่มีข้อมูล';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$th extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'ข้อมูลส่วนบุคคล';
	@override String get physicalMeasurements => 'การวัดสัดส่วนร่างกาย';
	@override String get goalsAndActivity => 'เป้าหมาย & กิจกรรม';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$th extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get male => 'ชาย';
	@override String get female => 'หญิง';
	@override String get other => 'อื่นๆ';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$th extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$th loseWeight = _Translations$editProfile$weightGoals$loseWeight$th._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$th maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$th._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$th gainWeight = _Translations$editProfile$weightGoals$gainWeight$th._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$th extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$th sedentary = _Translations$editProfile$activityLevels$sedentary$th._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$th lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$th._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$th moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$th._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$th veryActive = _Translations$editProfile$activityLevels$veryActive$th._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$th extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$th._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$th extends Translations$settings$sections$en {
	_Translations$settings$sections$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get profile => 'โปรไฟล์';
	@override String get localization => 'การตั้งค่าภาษา';
	@override String get notifications => 'การแจ้งเตือน';
	@override String get healthConnect => 'Health Connect';
	@override String get localInference => 'การวิเคราะห์บนอุปกรณ์';
	@override String get supportAndLegal => 'การสนับสนุน & กฎหมาย';
	@override String get about => 'เกี่ยวกับ';
	@override String get dangerZone => 'โซนอันตราย';
	@override String get developer => 'นักพัฒนา';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$th extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'แก้ไขโปรไฟล์';
	@override String get subtitle => 'อัปเดตข้อมูลส่วนตัวของคุณ';
}

// Path: settings.language
class _Translations$settings$language$th extends Translations$settings$language$en {
	_Translations$settings$language$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ภาษา';
	@override String get subtitle => 'เลือกภาษาที่ต้องการ';
	@override String get searchHint => 'ค้นหาภาษา...';
	@override String get noResults => 'ไม่พบผลลัพธ์';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$th extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'หน่วยความสูง';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$th extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'หน่วยน้ำหนัก';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$th extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การแจ้งเตือนมื้ออาหาร';
	@override String get subtitle => 'เตือนให้บันทึกมื้ออย่างสม่ำเสมอ';
}

// Path: settings.localInference
class _Translations$settings$localInference$th extends Translations$settings$localInference$en {
	_Translations$settings$localInference$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การวิเคราะห์มื้ออาหารบนอุปกรณ์';
	@override String get subtitle => 'วิเคราะห์มื้ออาหารที่รองรับด้วย Gemini Nano ก่อนคำนวณคุณค่าทางโภชนาการ';
	@override String get unavailable => 'ไม่รองรับบนอุปกรณ์นี้';
	@override String get rolloutUnavailable => 'พบฮาร์ดแวร์ที่รองรับ แต่ฟีเจอร์นี้ยังไม่เปิดใช้งานสำหรับแอปเวอร์ชันนี้';
	@override String get modelSetup => 'Gemini Nano จำเป็นต้องดาวน์โหลดให้เสร็จสิ้นก่อนจึงจะเปิดใช้งานได้';
	@override String get useLocalTitle => 'ใช้การวิเคราะห์บนอุปกรณ์';
	@override String get useLocalSubtitle => 'ตัวเลือกเสริมและปิดไว้เป็นค่าเริ่มต้น ผลลัพธ์อาจมีความแม่นยำน้อยลงสำหรับมื้ออาหารที่ซับซ้อน';
	@override String get disclosureTitle => 'ก่อนเปิดใช้งานการวิเคราะห์บนอุปกรณ์';
	@override String get disclosureBody => 'Gemini Nano สามารถระบุส่วนผสมและประมาณปริมาณบนอุปกรณ์ Android ที่รองรับ โดยรายการส่วนผสมที่คุณตรวจสอบแล้วจะถูกส่งไปยัง Calorify เพื่ออ้างอิงข้อมูลโภชนาการจาก USDA และคำนวณผล';
	@override String get disclosureLimit1 => 'อาหารที่ซับซ้อน ส่วนผสมที่ซ่อนอยู่ และขนาดของส่วนแบ่งอาจถูกระบุไม่ถูกต้อง';
	@override String get disclosureLimit2 => 'โมเดลอาจไม่พร้อมใช้งานขณะดาวน์โหลด กำลังประมวลผล ทำงานเบื้องหลัง หรือถูกจำกัดโดยอุปกรณ์';
	@override String get disclosureLimit3 => 'หากการวิเคราะห์บนอุปกรณ์ไม่สำเร็จ ระบบเบต้าจะส่งคำอธิบายมื้ออาหารต้นฉบับของคุณไปยัง Calorify เพื่อวิเคราะห์ผ่านคลาวด์โดยอัตโนมัติ';
	@override String get acknowledgement => 'ฉันเข้าใจว่าควรตรวจสอบส่วนผสมและปริมาณที่ตรวจพบ';
	@override String get enable => 'ยอมรับและเปิดใช้งาน';
	@override String get cancel => 'ยกเลิก';
}

// Path: settings.theme
class _Translations$settings$theme$th extends Translations$settings$theme$en {
	_Translations$settings$theme$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ธีม';
	@override String get light => 'สว่าง';
	@override String get dark => 'มืด';
	@override String get system => 'ระบบ';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$th extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
class _Translations$settings$exportMealHistory$th extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ส่งออกประวัติมื้ออาหาร';
	@override String get subtitle => 'แชร์ไฟล์ CSV ของมื้อที่คุณบันทึก';
	@override String get shareText => 'การส่งออกประวัติมื้อของคุณจาก Calorify';
	@override String failed({required Object error}) => 'ไม่สามารถส่งออกประวัติการมื้ออาหารได้: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$th extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ล้างข้อมูลทั้งหมด';
	@override String get subtitle => 'ลบข้อมูล Calorify ที่จัดเก็บไว้ในอุปกรณ์นี้';
	@override String get localOnlySubtitle => 'ลบข้อมูล Calorify ที่จัดเก็บในอุปกรณ์นี้';
	@override String get confirmationTitle => 'ล้างข้อมูลทั้งหมด?';
	@override String get confirmationMessage => 'การดำเนินการนี้จะลบมื้ออาหารที่บันทึก รายการโปรด และการตั้งค่าโปรไฟล์ออกจากอุปกรณ์นี้อย่างถาวร มื้ออาหารที่แชร์ไปยัง Health Connect แล้วและการเข้าถึง Health Connect ต้องจัดการแยกต่างหากใน การตั้งค่า > Health Connect';
	@override String get localOnlyConfirmationMessage => 'การดำเนินการนี้จะลบมื้ออาหารที่บันทึกไว้ รายการโปรด และการตั้งค่าโปรไฟล์ออกจากอุปกรณ์นี้อย่างถาวร มื้ออาหารที่แชร์ไปยัง Health Connect แล้วและสิทธิ์เข้าถึง Health Connect จะจัดการแยกต่างหากใน การตั้งค่า > Health Connect';
	@override String get cancel => 'ยกเลิก';
	@override String get clearEverything => 'ล้างทั้งหมด';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$th extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ตัวเลือกดีบัก';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$th extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'ดูและจัดการสิทธิ์';
	@override late final _Translations$settings$healthConnect$unavailable$th unavailable = _Translations$settings$healthConnect$unavailable$th._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$th updateRequired = _Translations$settings$healthConnect$updateRequired$th._(_root);
	@override late final _Translations$settings$healthConnect$permissions$th permissions = _Translations$settings$healthConnect$permissions$th._(_root);
	@override String get managePermissions => 'จัดการสิทธิ์';
	@override String get openSettings => 'เปิดการตั้งค่า Health Connect';
	@override String get disconnect => 'ยกเลิกการเชื่อมต่อ Health Connect';
	@override String get disconnectConfirmationTitle => 'ยกเลิกการเชื่อมต่อ Health Connect หรือไม่?';
	@override String get disconnectConfirmationMessage => 'Calorify จะสูญเสียสิทธิ์เข้าถึง Health Connect ข้อมูลที่เขียนไว้แล้วจะไม่ถูกลบ';
	@override String get disconnectConfirmationAction => 'ยกเลิกการเชื่อมต่อ';
	@override String get deleteSyncedMeals => 'ลบมื้ออาหารของ Calorify ออกจาก Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'ลบมื้ออาหารที่ซิงก์หรือไม่?';
	@override String get deleteSyncedMealsConfirmationMessage => 'ลบมื้ออาหารที่ซิงก์โดย Calorify เวอร์ชันนี้ออกจาก Health Connect หรือไม่? บันทึกมื้ออาหารในเครื่องจะไม่เปลี่ยนแปลง รายการ Calorify ที่เก่ากว่าอาจยังต้องลบผ่าน จัดการข้อมูล ใน Health Connect';
	@override String get deleteSyncedMealsConfirmationAction => 'ลบมื้ออาหารที่ซิงก์';
	@override String get deleteSyncedMealsSuccess => 'ลบมื้ออาหารของ Calorify ออกจาก Health Connect แล้ว';
	@override String get deleteSyncedMealsFailed => 'ไม่สามารถลบมื้ออาหารที่ซิงก์ได้ โปรดลองอีกครั้ง';
	@override String get connectionPartial => 'เปิดใช้ฟีเจอร์ Health Connect บางส่วนแล้ว';
	@override String get connectionComplete => 'เปิดใช้ฟีเจอร์ Health Connect ทั้งสองรายการแล้ว';
	@override String get actionFailed => 'ไม่สามารถเปิด Health Connect ได้ โปรดลองอีกครั้ง';
	@override String get requestPermissions => 'ขอสิทธิ์';
	@override String get permissionRequestCancelledOrFailed => 'การขอสิทธิ์ถูกยกเลิกหรือไม่สำเร็จ โปรดลองอีกครั้งหรือให้สิทธิ์ด้วยตนเองในการตั้งค่า Health Connect';
	@override String get permissionRequestFailed => 'ไม่สามารถขอสิทธิ์ได้ โปรดลองอีกครั้งหรือให้สิทธิ์ด้วยตนเองในการตั้งค่า Health Connect';
	@override String get requestingPermissions => 'กำลังขอ...';
}

// Path: settings.about
class _Translations$settings$about$th extends Translations$settings$about$en {
	_Translations$settings$about$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เกี่ยวกับ';
	@override String get tagline => 'รู้เท่าทันแคลอรีอย่างรวดเร็ว ฟรี และให้ความสำคัญกับความเป็นส่วนตัว';
	@override late final _Translations$settings$about$ourStory$th ourStory = _Translations$settings$about$ourStory$th._(_root);
	@override late final _Translations$settings$about$privacy$th privacy = _Translations$settings$about$privacy$th._(_root);
	@override late final _Translations$settings$about$developer$th developer = _Translations$settings$about$developer$th._(_root);
	@override late final _Translations$settings$about$feedback$th feedback = _Translations$settings$about$feedback$th._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$th extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify เวอร์ชัน ${version}';
	@override String build({required Object buildNumber}) => 'บิลด์ ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$th extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เวลาอาหารเช้า! 🍳';
	@override String get body => 'อย่าลืมบันทึกมื้อเช้าของคุณ';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$th extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เวลาอาหารกลางวัน! 🥗';
	@override String get body => 'ถึงเวลาบันทึกมื้อกลางวันแล้ว';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$th extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เวลามื้อเย็น! 🍽️';
	@override String get body => 'อย่าลืมบันทึกมื้อเย็นของคุณ';
}

// Path: notifications.snack
class _Translations$notifications$snack$th extends Translations$notifications$snack$en {
	_Translations$notifications$snack$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เวลาของว่าง! 🍎';
	@override String get body => 'ถึงเวลาสำหรับของว่างเพื่อสุขภาพ';
}

// Path: notifications.test
class _Translations$notifications$test$th extends Translations$notifications$test$en {
	_Translations$notifications$test$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ทดสอบการแจ้งเตือน';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$th extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} ให้ข้อมูลโภชนาการโดยประมาณ ความแม่นยำขึ้นอยู่กับข้อมูลที่คุณป้อนและความหลากหลายของอาหาร ใช้เป็นแนวทาง ไม่ใช่แหล่งข้อมูลที่ชัดเจนที่สุด ปรึกษาผู้เชี่ยวชาญสำหรับคำแนะนำทางโภชนาการเฉพาะบุคคล';
	@override late final _Translations$disclaimer$snap$portionSize$th portionSize = _Translations$disclaimer$snap$portionSize$th._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$th preparationMethods = _Translations$disclaimer$snap$preparationMethods$th._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$th ingredients = _Translations$disclaimer$snap$ingredients$th._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$th databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$th._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$th extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เกี่ยวกับการประเมินน้ำหนัก';
	@override String get description => 'การคาดการณ์การเปลี่ยนแปลงน้ำหนักเป็นการประมาณทางทฤษฎีโดยอิงจากโมเดลง่ายๆ ของแคลอรีเข้าเทียบกับแคลอรีออก ตั้งใจให้เป็นแนวทางให้กำลังใจ ไม่ใช่การทำนายผลน้ำหนักจริง';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$th calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$th._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$th biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$th._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$th waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$th._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$th professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$th._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$th extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get description => 'ตัวชี้วัดเหล่านี้ช่วยให้คุณเข้าใจความต้องการพลังงานของร่างกายและนำทางเป้าหมายโภชนาการของคุณ';
	@override late final _Translations$disclaimer$healthMetrics$bmr$th bmr = _Translations$disclaimer$healthMetrics$bmr$th._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$th tdee = _Translations$disclaimer$healthMetrics$tdee$th._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$th dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$th._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$th extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การประมาณการเผาผลาญแคลอรี';
	@override String get description => 'เมื่อไม่สามารถใช้ข้อมูลจาก Health Connect ได้ เราจะประมาณแคลอรีที่เผาผลาญวันนี้โดยใช้ BMR และระดับกิจกรรมของคุณ (TDEE) แล้วปรับตามสัดส่วนของวันที่ผ่านไป';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$th howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$th._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$th professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$th._(_root);
}

// Path: watch.common
class _Translations$watch$common$th extends Translations$watch$common$en {
	_Translations$watch$common$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get back => 'ย้อนกลับ';
	@override String get cancel => 'ยกเลิก';
	@override String get delete => 'ลบ';
	@override String get retry => 'ลองอีกครั้ง';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$th extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'สารอาหาร';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} กรัม';
	@override String get protein => 'โปรตีน';
	@override String get carbs => 'คาร์โบไฮเดรต';
	@override String get fat => 'ไขมัน';
	@override String get fiber => 'ใยอาหาร';
}

// Path: watch.sync
class _Translations$watch$sync$th extends Translations$watch$sync$en {
	_Translations$watch$sync$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'ซิงค์กับโทรศัพท์';
	@override String get syncing => 'กำลังซิงค์…';
	@override String get synced => 'ซิงค์แล้ว';
	@override String get syncedJustNow => 'ซิงค์เมื่อสักครู่';
	@override String syncedMinutesAgo({required Object minutes}) => 'ซิงค์เมื่อ ${minutes} นาทีที่แล้ว';
	@override String get failed => 'การซิงค์ล้มเหลว';
	@override String get phoneDisconnected => 'โทรศัพท์ไม่ได้เชื่อมต่อ';
	@override String get tapToSync => 'แตะเพื่อซิงค์';
	@override String get refreshFailed => 'ไม่สามารถรีเฟรชได้ ตรวจสอบโทรศัพท์ของคุณ';
	@override String get openPhone => 'เปิด Calorify บนโทรศัพท์ของคุณ แล้วแตะรีเฟรช';
}

// Path: watch.home
class _Translations$watch$home$th extends Translations$watch$home$en {
	_Translations$watch$home$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get today => 'วันนี้';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => 'บริโภค ${consumed} แคลอรี่จาก ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} เกินเป้าหมาย';
	@override String remaining({required Object calories}) => '${calories} คงเหลือ';
	@override String left({required Object calories}) => '${calories} เหลือ';
	@override String goal({required Object calories}) => 'เป้าหมาย ${calories} kcal';
	@override String get logMeal => 'บันทึกมื้ออาหาร';
	@override String get todayMeals => 'มื้ออาหารวันนี้';
	@override String todayMealsCount({required Object count}) => 'มื้ออาหารวันนี้, ${count}';
	@override String viewMore({required Object count}) => 'ดูเพิ่มอีก ${count}';
	@override String viewMoreSemantics({required Object count}) => '${count} มื้อเพิ่มเติม แตะเพื่อดูทั้งหมด';
	@override String get noMeals => 'ยังไม่มีการบันทึกมื้ออาหาร';
	@override String get noMealsSemantics => 'วันนี้ยังไม่มีการบันทึกมื้ออาหาร';
	@override String get tapLog => 'แตะ \'บันทึก\' เพื่อเริ่ม';
	@override String get removedFromQueue => 'มื้ออาหารถูกลบจากคิวออฟไลน์แล้ว';
	@override String get removedOffline => 'มื้ออาหารถูกลบแบบออฟไลน์ จะซิงค์เมื่อโทรศัพท์ของคุณเชื่อมต่ออีกครั้ง';
	@override String get deleteFailed => 'ไม่สามารถลบมื้ออาหารได้';
}

// Path: watch.history
class _Translations$watch$history$th extends Translations$watch$history$en {
	_Translations$watch$history$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'มื้ออาหารวันนี้';
	@override String get refresh => 'รีเฟรชมื้ออาหาร';
	@override String get loadFailed => 'ไม่สามารถโหลดมื้ออาหารได้';
	@override String get syncFailed => 'ไม่สามารถซิงค์ได้';
	@override String get emptyTitle => 'ยังไม่มีมื้ออาหาร';
	@override String get emptyMessage => 'บันทึกมื้ออาหารจากหน้าแรกเพื่อให้แสดงที่นี่';
}

// Path: watch.favorites
class _Translations$watch$favorites$th extends Translations$watch$favorites$en {
	_Translations$watch$favorites$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'รายการโปรด';
	@override String get refresh => 'รีเฟรชรายการโปรด';
	@override String get loadFailed => 'ไม่สามารถโหลดรายการโปรดได้';
	@override String get syncFailed => 'ไม่สามารถซิงค์ได้';
	@override String get emptyTitle => 'ยังไม่มีรายการโปรด';
	@override String get emptyMessage => 'กดดาวมื้ออาหารในแอปบนโทรศัพท์เพื่อบันทึกด้วยการแตะครั้งเดียวที่นี่';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} แคลอรี่ แตะเพื่อบันทึก';
	@override String logged({required Object name}) => 'บันทึก ${name} แล้ว!';
	@override String savedOffline({required Object name}) => '${name} ถูกบันทึกแบบออฟไลน์ จะซิงค์เมื่อโทรศัพท์ของคุณเชื่อมต่ออีกครั้ง';
	@override String get saveFailed => 'ไม่สามารถบันทึกมื้ออาหารได้ กรุณาลองอีกครั้ง';
	@override String get log => 'บันทึก';
}

// Path: watch.meal
class _Translations$watch$meal$th extends Translations$watch$meal$en {
	_Translations$watch$meal$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} แคลอรี่ บันทึกเวลา ${time}.';
	@override String get longPressDelete => 'กดค้างเพื่อลบ';
	@override String get deleteTitle => 'ลบมื้ออาหารหรือไม่?';
}

// Path: watch.voice
class _Translations$watch$voice$th extends Translations$watch$voice$en {
	_Translations$watch$voice$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'บันทึกมื้ออาหารด้วยเสียง';
	@override String get processing => 'กำลังวิเคราะห์มื้ออาหารของคุณ…';
	@override String get processingDescription => 'ประเมินขนาดและสารอาหาร';
	@override String get listening => 'กำลังฟัง';
	@override String secondsLeft({required Object seconds}) => '${seconds}ว';
	@override String get stop => 'หยุดบันทึก';
	@override String get start => 'แตะเพื่อเริ่มบันทึก';
	@override String get starting => 'กำลังเริ่มไมโครโฟน…';
	@override String get prompt => 'แตะแล้วอธิบายมื้ออาหารของคุณ';
	@override String get tapToRetry => 'แตะเพื่อทำซ้ำ';
	@override String get example => 'ลอง “2 โรตี กับ แกงถั่ว”';
	@override String get unavailable => 'การป้อนด้วยเสียงไม่พร้อมใช้งาน ตรวจสอบการอนุญาตไมโครโฟนในการตั้งค่าของนาฬิกา';
	@override String get didNotStart => 'ไมโครโฟนไม่เริ่มทำงาน แตะเพื่อทำซ้ำ';
	@override String get startFailed => 'ไม่สามารถเริ่มการบันทึกได้ ตรวจสอบสิทธิ์ไมโครโฟน';
	@override String get allowMicrophone => 'อนุญาตการเข้าถึงไมโครโฟนเพื่อบันทึกมื้ออาหารด้วยเสียง';
	@override String get needsConnection => 'การรู้จำด้วยเสียงต้องใช้การเชื่อมต่อ แตะเพื่อทำซ้ำ';
	@override String get microphoneUnavailable => 'ไมโครโฟนไม่พร้อมใช้งาน แตะเพื่อทำซ้ำ';
	@override String get microphoneBusy => 'ไมโครโฟนกำลังใช้งาน รอสักครู่แล้วลองอีกครั้ง';
	@override String get languageUnsupported => 'การป้อนด้วยเสียงไม่รองรับภาษาที่ตั้งไว้ในนาฬิกา';
	@override String get temporarilyBusy => 'การป้อนด้วยเสียงชั่วคราวไม่พร้อมใช้งาน รอสักครู่แล้วลองอีกครั้ง';
	@override String get notRecognized => 'ไม่ได้ยินชัดนัก แตะไอคอนไมโครโฟนแล้วลองใหม่';
	@override String get noSpeech => 'ไม่พบเสียงพูด แตะไอคอนไมโครโฟนเพื่อทดลองอีกครั้ง';
	@override String get analysisFailed => 'การวิเคราะห์ล้มเหลว กรุณาลองอีกครั้ง';
	@override String get mealNotIdentified => 'ไม่สามารถระบุมื้อนั้นได้ ลองอธิบายให้ต่างออกไป';
}

// Path: watch.result
class _Translations$watch$result$th extends Translations$watch$result$en {
	_Translations$watch$result$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'รายละเอียดมื้ออาหาร';
	@override String get savedOffline => 'บันทึกแบบออฟไลน์';
	@override String get logged => 'บันทึกแล้ว!';
	@override String get mealFound => 'พบมื้ออาหาร';
	@override String get estimatedEnergy => 'พลังงานโดยประมาณ';
	@override String get logMeal => 'บันทึกมื้ออาหาร';
	@override String get logging => 'กำลังบันทึก…';
	@override String get logAnother => 'บันทึกอีกมื้อ';
	@override String get goingBack => 'กำลังกลับ…';
	@override String get savedOfflineMessage => 'มื้ออาหารถูกบันทึกแบบออฟไลน์ จะซิงค์เมื่อโทรศัพท์ของคุณเชื่อมต่ออีกครั้ง';
	@override String get saveFailed => 'ไม่สามารถบันทึกมื้ออาหารได้ กรุณาลองอีกครั้ง';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$th extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การจดจำอาหารอัจฉริยะ';
	@override String get description => 'ถ่ายรูปแล้วให้ AI ระบุมื้ออาหารของคุณ';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$th extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การวิเคราะห์ด้วย AI';
	@override String get description => 'รับข้อมูลโภชนาการทันทีจากคำอธิบายของคุณ';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$th extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การเชื่อมต่อ Health Connect';
	@override String get description => 'เชื่อมต่อกับ Health Connect เพื่อข้อมูลเชิงลึกที่ดียิ่งขึ้น';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$th extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'น้ำหนักน้อยกว่าเกณฑ์';
	@override String get healthyWeight => 'น้ำหนักในเกณฑ์ดี';
	@override String get overweight => 'น้ำหนักเกิน';
	@override String get obese => 'อ้วน';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$th extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'เราช่วยคุณวางแผนการเพิ่มน้ำหนักอย่างมีสุขภาพ ด้วยมื้ออาหารที่อุดมด้วยสารอาหาร';
	@override String get healthy => 'ยอดเยี่ยม! คุณอยู่ในช่วงสุขภาพดี เราจะช่วยรักษาพลังและความมีชีวิตชีวาไว้ให้';
	@override String overweight({required Object appLabel}) => '${appLabel} จะช่วยให้ง่ายขึ้นด้วยการติดตามโดยใช้ AI เพื่อไปถึงเป้าหมายอย่างสบายใจ';
	@override String get obese => 'เราพร้อมสนับสนุนคุณด้วยคำแนะนำเฉพาะบุคคลและกลยุทธ์ยั่งยืนเพื่อสุขภาพของคุณ';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$th extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'แคลอรีที่เผาผลาญ';
	@override String get description => 'อ่านแคลอรีทั้งหมดที่เผาผลาญวันนี้จาก Health Connect';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$th extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'แคลอรีที่เผาผลาญ';
	@override String get description => 'อ่านแคลอรีทั้งหมดที่เผาผลาญในวันนี้จาก Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$th extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'แชร์มื้ออาหารที่บันทึกไว้';
	@override String get description => 'เขียนมื้ออาหารที่คุณบันทึกใน Calorify ไปยัง Health Connect';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$th extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'แชร์มื้ออาหารที่บันทึกไว้';
	@override String get description => 'เขียนมื้ออาหารที่คุณบันทึกใน Calorify ไปยัง Health Connect';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$th extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณเป็นผู้ควบคุม';
	@override String get description => 'เลือกสิทธิ์ใดก็ได้และเปลี่ยนการเข้าถึงได้ทุกเมื่อ';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$th extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คุณเป็นผู้ควบคุม';
	@override String get description => 'เลือกสิทธิ์ที่ต้องการและเปลี่ยนการเข้าถึงได้ทุกเมื่อ';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$th extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$healthProfile$th extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$goalLifestyle$th extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$weightGoals$loseWeight$th extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'ลดน้ำหนัก';
	@override String get description => 'สร้างการขาดแคลอรีเพื่อลดน้ำหนัก';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$th extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'รักษาน้ำหนัก';
	@override String get description => 'รักษาน้ำหนักปัจจุบัน';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$th extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'เพิ่มน้ำหนัก';
	@override String get description => 'สร้างการเกินแคลอรีเพื่อเพิ่มน้ำหนัก';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$th extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'อยู่นิ่ง';
	@override String get description => 'ออกกำลังกายน้อยหรือแทบไม่มี';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$th extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'เคลื่อนไหวเล็กน้อย';
	@override String get description => 'ออกกำลังกายเบา 1-3 วัน/สัปดาห์';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$th extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'เคลื่อนไหวปานกลาง';
	@override String get description => 'ออกกำลังกายปานกลาง 3-5 วัน/สัปดาห์';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$th extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'เคลื่อนไหวมาก';
	@override String get description => 'ออกกำลังกายหนัก 6-7 วัน/สัปดาห์';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$th extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get name => 'เคลื่อนไหวหนักมาก';
	@override String get description => 'ออกกำลังกายหนักมาก หรืองานที่ต้องใช้แรงกาย';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$th extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ไม่พบ Health Connect';
	@override String get description => 'อุปกรณ์นี้ไม่รองรับ Health Connect';
	@override String get unsupportedDescription => 'อุปกรณ์นี้ไม่รองรับ Health Connect';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$th extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ต้องได้รับการดำเนินการ';
	@override String get description => 'ติดตั้งหรืออัปเดต Health Connect ก่อนจัดการการเข้าถึง';
	@override String get action => 'ติดตั้งหรืออัปเดต';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$th extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สิทธิ์';
	@override String get description => 'ขอสิทธิ์ต่อไปนี้เพื่อนำเสนอการรวมกับ Health Connect:';
	@override String get granted => 'ได้รับอนุญาตแล้ว';
	@override String get notGranted => 'ยังไม่ได้รับอนุญาต';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$th caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$th._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$th nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$th._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$th nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$th._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$th extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เรื่องราวของเรา';
	@override String content({required Object appLabel}) => '${appLabel} เกิดจากความรู้สึกหงุดหงิดอย่างง่าย: แอปติดตามแคลอรีส่วนใหญ่ซับซ้อนเกินไป ต้องกรอกข้อมูลด้วยตลอด มีค่าใช้จ่ายสมัครสมาชิกราคาแพง หรือประนีประนอมด้านความเป็นส่วนตัว\n\nในฐานะนักพัฒนาเดี่ยว ผมต้องการสร้างสิ่งที่เรียบง่ายและเป็นธรรมกว่า — แอปที่ใช้ AI เพื่อลดความยุ่งยาก ทำงานเร็วและใช้ฟรี และเคารพข้อมูลสุขภาพของคุณ\n\n${appLabel} คือแอปที่ผมอยากให้มีอยู่: ไม่มีบัญชี ไม่มีการติดตาม ไม่มีโฆษณา — มีเพียงข้อมูลเชิงปฏิบัติที่ชัดเจนและเป้าหมายด้านสุขภาพของคุณ';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$th extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ความเป็นส่วนตัวของคุณสำคัญ';
	@override String get description => 'ความเป็นส่วนตัวไม่ใช่เรื่องรอง — แต่เป็นหลักการออกแบบ ต่อไปนี้คือสิ่งที่หมายถึงในการใช้งานจริง:';
	@override String get noAccounts => 'ไม่ต้องมีบัญชี\nใช้แอปได้ทันที ไม่ต้องสมัคร ไม่ต้องระบุตัวตน';
	@override String noTracking({required Object appLabel}) => 'การวิเคราะห์และการวินิจฉัยแบบจำกัด\n${appLabel} ใช้เหตุการณ์พื้นฐานของแอปและข้อมูลวินิจฉัยข้อขัดข้องเพื่อปรับปรุงความน่าเชื่อถือ ค่าจากบันทึกสุขภาพจะไม่ถูกใช้เพื่อการโฆษณาหรือขาย';
	@override String analyticsDisclosure({required Object appLabel}) => 'การวิเคราะห์และการวินิจฉัยแบบจำกัด\n${appLabel} ใช้เหตุการณ์พื้นฐานของแอปและข้อมูลวินิจฉัยข้อขัดข้องเพื่อปรับปรุงความน่าเชื่อถือ ค่าจากบันทึกสุขภาพจะไม่ถูกใช้เพื่อการโฆษณาหรือขาย';
	@override String noAds({required Object appLabel}) => 'ออกแบบให้ไม่มีโฆษณา\n${appLabel} ถูกสร้างมาให้ทำงานได้โดยไม่ต้องใช้โฆษณาหรือหารายได้จากข้อมูล';
	@override String get noDataSelling => 'ไม่ขายข้อมูล\nข้อมูลสุขภาพของคุณจะไม่ถูกขายหรือแบ่งปันกับบุคคลที่สาม';
	@override String get localStorage => 'เก็บข้อมูลบนเครื่องเป็นหลัก\nข้อมูลของคุณอยู่บนอุปกรณ์ของคุณ';
	@override String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$th extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'สร้างโดยนักพัฒนาเดี่ยว';
	@override String description({required Object appLabel}) => '${appLabel} ถูกสร้างและดูแลโดยนักพัฒนาเดี่ยวที่มุ่งมั่นสร้างซอฟต์แวร์ด้านสุขภาพที่สงบและเคารพความเป็นส่วนตัว\n\nคำติชมถูกอ่านด้วยตนเองและมีส่วนช่วยกำหนดทิศทางของแอป';
	@override String get website => 'เว็บไซต์';
	@override String get email => 'อีเมล';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$th extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'ชอบ ${appLabel} ไหม?';
	@override String description({required Object appLabel}) => 'คำติชมของคุณช่วยให้ ${appLabel} ดีขึ้นสำหรับทุกคน';
	@override String get rateApp => 'ให้คะแนนบน Play Store';
	@override String get sendFeedback => 'ส่งคำติชม';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$th extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ขนาดส่วน';
	@override String get description => 'ความแม่นยำของการประมาณพึ่งพาการประเมินขนาดส่วนที่ถูกต้องของคุณอย่างมาก';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$th extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'วิธีการปรุง';
	@override String description({required Object appLabel}) => 'วิธีการปรุงอาหารสามารถเปลี่ยนปริมาณโภชนาการได้อย่างมาก การประมาณของ ${appLabel} อาจไม่ครอบคลุมความแตกต่างเหล่านี้เสมอไป';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$th extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ส่วนผสม';
	@override String get description => 'จานที่ซับซ้อนมีส่วนผสมแฝงหลายชนิด อาจทำให้การประมาณมีความแม่นยำน้อยลง';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$th extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ข้อจำกัดของฐานข้อมูล';
	@override String description({required Object appLabel}) => 'ฐานข้อมูลอาหารของ ${appLabel} มีความหลากหลายแต่ไม่ครอบคลุมทุกรายการอาหารหรือความแตกต่างทั้งหมด';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$th extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ความแม่นยำของแคลอรี';
	@override String get description => 'การประมาณนี้มีความแม่นยำขึ้นกับการบันทึกการรับและการใช้พลังงานของคุณ หากบันทึกไม่แม่นยำ การคาดการณ์ก็จะคลาดเคลื่อน';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$th extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'ปัจจัยทางชีวภาพ';
	@override String description({required Object appLabel}) => 'การลด/เพิ่มน้ำหนักจริงได้รับอิทธิพลจากการเผาผลาญ ฮอร์โมน การนอนหลับ ความเครียด การดื่มน้ำ และปัจจัยเฉพาะบุคคลอื่นๆ ที่ ${appLabel} ไม่สามารถวัดได้';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$th extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'น้ำในร่างกาย & การแกว่งของน้ำหนัก';
	@override String get description => 'น้ำหนักปกติสามารถเปลี่ยนแปลงได้มากในแต่ละวันจากการกักเก็บน้ำ การย่อยอาหาร และช่วงเวลา การประมาณนี้ไม่รวมการเปลี่ยนแปลงรายวันเหล่านี้';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$th extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คำแนะนำจากผู้เชี่ยวชาญ';
	@override String get description => 'อย่าใช้การประมาณนี้เพื่อการตัดสินใจทางการแพทย์ โปรดปรึกษาผู้เชี่ยวชาญด้านสุขภาพหรือนักโภชนาการที่ลงทะเบียนสำหรับคำแนะนำเฉพาะบุคคล';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$th extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'อัตราการเผาผลาญพื้นฐาน (BMR) คือจำนวนแคลอรีที่ร่างกายเผาผลาญเมื่อพักเพื่อรักษาการทำงานพื้นฐาน เช่น การหายใจและการไหลเวียนของเลือด BMR ขึ้นกับอายุ เพศ ความสูง และน้ำหนัก BMR สูงขึ้นมักหมายถึงร่างกายเผาผลาญแคลอรีมากขึ้นขณะพัก ส่วนใหญ่มาจากมวลกล้ามเนื้อมากกว่า อายุที่น้อยกว่า หรือเป็นเพศชาย BMR ต่ำมักบ่งชี้ถึงมวลกล้ามเนื้อน้อยกว่า อายุที่มากขึ้น หรือเป็นเพศหญิง';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$th extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'การใช้พลังงานทั้งหมดต่อวัน (TDEE) คือแคลอรีทั้งหมดที่คุณเผาผลาญต่อวัน รวม BMR และแคลอรีจากกิจกรรมและการเคลื่อนไหวประจำวัน TDEE ขึ้นกับ BMR และระดับกิจกรรม TDEE สูงขึ้นหมายถึงการเผาผลาญโดยรวมมากขึ้น มักมาจากกิจกรรมมากขึ้นหรือ BMR สูงกว่า TDEE ต่ำกว่าอาจหมายถึงกิจกรรมประจำวันน้อยหรือ BMR ต่ำกว่า';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$th extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'เป้าหมายรายวัน';
	@override String get description => 'เป้าหมายรายวันคือปริมาณแคลอรีที่แนะนำต่อวันโดยอิงจาก TDEE และเป้าหมายน้ำหนักของคุณ หากต้องการลดน้ำหนัก คุณจะบริโภคน้อยกว่า TDEE หากต้องการรักษา จะเท่ากับ TDEE หากต้องการเพิ่ม จะมากกว่า TDEE ซึ่งช่วยให้คุณบรรลุการเปลี่ยนแปลงน้ำหนักในอัตราที่ปลอดภัย';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$th extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'การคำนวณเป็นอย่างไร';
	@override String get description => 'เราคำนวณ TDEE (จากโปรไฟล์ของคุณ) แล้วคูณด้วยสัดส่วนของวันที่ผ่านไป (ชั่วโมง + นาที) / 24 เพื่อประมาณแคลอรีที่เผาผลาญไปแล้ว';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$th extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'คำแนะนำจากผู้เชี่ยวชาญ';
	@override String get description => 'อย่าใช้การประมาณนี้เพื่อการตัดสินใจทางการแพทย์ โปรดปรึกษาผู้เชี่ยวชาญด้านสุขภาพหรือนักโภชนาการที่ลงทะเบียนสำหรับคำแนะนำเฉพาะบุคคล';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$th extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'อ่านแคลอรีที่เผาผลาญทั้งหมด';
	@override String get description => 'อนุญาตให้แอปอ่านข้อมูลแคลอรีที่เผาผลาญทั้งหมดจาก Health Connect';
	@override String get usage => 'สิทธิ์นี้ใช้เพื่อแสดงการเผาผลาญแคลอรีรายวันในแอป ช่วยให้คุณเข้าใจการใช้พลังงานตลอดวัน';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$th extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$th._(TranslationsTh root) : this._root = root, super.internal(root);

	final TranslationsTh _root; // ignore: unused_field

	// Translations
	@override String get title => 'อ่านข้อมูลโภชนาการ';
	@override String get description => 'อนุญาตให้แอปอ่านข้อมูลโภชนาการจาก Health Connect';
	@override String get usage => 'สิทธิ์นี้ช่วยให้แอปอ่านข้อมูลโภชนาการที่อาจถูกบันทึกโดยแอปอื่นที่เชื่อมต่อกับ Health Connect เพื่อให้มุมมองโภชนาการที่ครบถ้วน';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$th extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$th._(TranslationsTh root) : this._root = root, super.internal(root);

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
			'onboarding.healthConnect.description' => 'ใช้แคลอรีที่เผาผลาญในเป้าหมายประจำวัน และเลือกแชร์มื้ออาหารที่บันทึกไว้กับ Health Connect',
			'onboarding.healthConnect.overviewDescription' => 'ใช้แคลอรีที่เผาผลาญในเป้าหมายรายวัน และเลือกแชร์มื้ออาหารที่บันทึกไว้กับ Health Connect',
			'onboarding.healthConnect.automaticTracking.title' => 'แคลอรีที่เผาผลาญ',
			'onboarding.healthConnect.automaticTracking.description' => 'อ่านแคลอรีทั้งหมดที่เผาผลาญวันนี้จาก Health Connect',
			'onboarding.healthConnect.caloriesBurned.title' => 'แคลอรีที่เผาผลาญ',
			'onboarding.healthConnect.caloriesBurned.description' => 'อ่านแคลอรีทั้งหมดที่เผาผลาญในวันนี้จาก Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'แชร์มื้ออาหารที่บันทึกไว้',
			'onboarding.healthConnect.progressInsights.description' => 'เขียนมื้ออาหารที่คุณบันทึกใน Calorify ไปยัง Health Connect',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'แชร์มื้ออาหารที่บันทึกไว้',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'เขียนมื้ออาหารที่คุณบันทึกใน Calorify ไปยัง Health Connect',
			'onboarding.healthConnect.seamlessIntegration.title' => 'คุณเป็นผู้ควบคุม',
			'onboarding.healthConnect.seamlessIntegration.description' => 'เลือกสิทธิ์ใดก็ได้และเปลี่ยนการเข้าถึงได้ทุกเมื่อ',
			'onboarding.healthConnect.userControl.title' => 'คุณเป็นผู้ควบคุม',
			'onboarding.healthConnect.userControl.description' => 'เลือกสิทธิ์ที่ต้องการและเปลี่ยนการเข้าถึงได้ทุกเมื่อ',
			'onboarding.healthConnect.connected' => 'เชื่อมต่อกับ Health Connect แล้ว',
			'onboarding.healthConnect.notConnected' => 'ยังไม่ได้เชื่อมต่อกับ Health Connect',
			'onboarding.healthConnect.setup' => 'ตั้งค่า Health Connect',
			'onboarding.healthConnect.skipForNow' => 'ข้ามก่อน',
			'onboarding.healthConnect.statusConnected' => 'Health Connect ถูกเชื่อมต่อแล้ว',
			'onboarding.healthConnect.statusSuccess' => 'เชื่อมต่อกับ Health Connect สำเร็จ!',
			'onboarding.healthConnect.statusNotConnected' => 'เลือกฟีเจอร์ Health Connect ที่คุณต้องการเปิดใช้',
			'onboarding.healthConnect.statusPartial' => 'Health Connect เชื่อมต่อบางส่วนแล้ว เปิดสิทธิ์ที่เหลือเพื่อใช้ทั้งสองฟีเจอร์',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'ติดตั้งหรืออัปเดต Health Connect เพื่อดำเนินการต่อ',
			'onboarding.healthConnect.statusUnavailable' => 'อุปกรณ์นี้ไม่รองรับ Health Connect',
			'onboarding.healthConnect.installOrUpdate' => 'ติดตั้งหรืออัปเดต',
			'onboarding.healthConnect.manageAccess' => 'จัดการการเข้าถึง',
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
			'home.dailyGoal.kcal' => 'กิโลแคลอรี (kcal)',
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
			'home.connectHealth.description' => 'ใช้แคลอรีที่เผาผลาญในเป้าหมายและแชร์มื้ออาหารที่บันทึกไว้',
			'home.connectHealth.install' => 'ติดตั้งหรืออัปเดต',
			'home.connectHealth.dataUseDescription' => 'ใช้แคลอรีที่เผาผลาญในเป้าหมายและแชร์มื้ออาหารที่บันทึกไว้',
			'home.connectHealth.installOrUpdate' => 'ติดตั้งหรืออัปเดต',
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
			'meal.nameRequired' => 'กรุณาใส่ชื่อมื้ออาหารก่อนบันทึก.',
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
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '“${text}”',
			'meal.analysis.offlineTip0' => 'เคล็ดลับ: ความสม่ำเสมอกำลังกว่าความสมบูรณ์ — การบันทึกสม่ำเสมอเผยรูปแบบที่สำคัญ',
			'meal.analysis.offlineTip1' => 'เคล็ดลับ: สำหรับรูป ให้ใช้แสงธรรมชาติและมุมมองจากด้านบนเพื่อความแม่นยำของปริมาณ',
			'meal.analysis.offlineTip2' => 'เคล็ดลับ: ระบุเครื่องดื่ม น้ำจิ้ม และน้ำมันที่ใช้ปรุง — สิ่งเหล่านี้เพิ่มแคลอรีที่คนมักลืม',
			'meal.analysis.offlineTip3' => 'เคล็ดลับ: ระบุขนาดคร่าวๆ (1 ถ้วย, กาแฟแก้วใหญ่) จะช่วยให้การประเมินคมชัดขึ้น',
			'meal.analysis.offlineTip4' => 'เคล็ดลับ: บันทึกหลังมื้อยังช่วยสร้างนิสัยได้ ความสมบูรณ์ไม่จำเป็น',
			'meal.analysis.offlineTip5' => 'เคล็ดลับ: ระบุวิธีการปรุงเมื่อส่งผลต่อแคลอรีมาก (ทอด vs อบ)',
			'meal.localInference.reviewTitle' => 'ตรวจสอบส่วนผสมที่ตรวจพบ',
			'meal.localInference.reviewSubtitle' => 'ข้อมูลนี้ถูกวิเคราะห์บนอุปกรณ์ของคุณ โปรดแก้ไขชื่อหรือปริมาณก่อนคำนวณคุณค่าทางโภชนาการ',
			'meal.localInference.mealName' => 'ชื่อมื้ออาหาร',
			'meal.localInference.ingredient' => 'ส่วนผสม',
			'meal.localInference.grams' => 'ปริมาณกรัมโดยประมาณ',
			'meal.localInference.removeIngredient' => 'ลบส่วนผสม',
			'meal.localInference.continueLabel' => 'ดำเนินการต่อ',
			'meal.localInference.invalidProposal' => 'โปรดเพิ่มส่วนผสมอย่างน้อยหนึ่งรายการและระบุปริมาณกรัมเป็นค่าบวก',
			'meal.localInference.localUnavailable' => 'ไม่สามารถใช้งานการวิเคราะห์บนอุปกรณ์ได้ในขณะนี้',
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
			'editProfile.unitLbs' => 'ปอนด์ (lbs)',
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
			'settings.sections.localInference' => 'การวิเคราะห์บนอุปกรณ์',
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
			'settings.localInference.title' => 'การวิเคราะห์มื้ออาหารบนอุปกรณ์',
			'settings.localInference.subtitle' => 'วิเคราะห์มื้ออาหารที่รองรับด้วย Gemini Nano ก่อนคำนวณคุณค่าทางโภชนาการ',
			'settings.localInference.unavailable' => 'ไม่รองรับบนอุปกรณ์นี้',
			'settings.localInference.rolloutUnavailable' => 'พบฮาร์ดแวร์ที่รองรับ แต่ฟีเจอร์นี้ยังไม่เปิดใช้งานสำหรับแอปเวอร์ชันนี้',
			'settings.localInference.modelSetup' => 'Gemini Nano จำเป็นต้องดาวน์โหลดให้เสร็จสิ้นก่อนจึงจะเปิดใช้งานได้',
			'settings.localInference.useLocalTitle' => 'ใช้การวิเคราะห์บนอุปกรณ์',
			'settings.localInference.useLocalSubtitle' => 'ตัวเลือกเสริมและปิดไว้เป็นค่าเริ่มต้น ผลลัพธ์อาจมีความแม่นยำน้อยลงสำหรับมื้ออาหารที่ซับซ้อน',
			'settings.localInference.disclosureTitle' => 'ก่อนเปิดใช้งานการวิเคราะห์บนอุปกรณ์',
			'settings.localInference.disclosureBody' => 'Gemini Nano สามารถระบุส่วนผสมและประมาณปริมาณบนอุปกรณ์ Android ที่รองรับ โดยรายการส่วนผสมที่คุณตรวจสอบแล้วจะถูกส่งไปยัง Calorify เพื่ออ้างอิงข้อมูลโภชนาการจาก USDA และคำนวณผล',
			'settings.localInference.disclosureLimit1' => 'อาหารที่ซับซ้อน ส่วนผสมที่ซ่อนอยู่ และขนาดของส่วนแบ่งอาจถูกระบุไม่ถูกต้อง',
			'settings.localInference.disclosureLimit2' => 'โมเดลอาจไม่พร้อมใช้งานขณะดาวน์โหลด กำลังประมวลผล ทำงานเบื้องหลัง หรือถูกจำกัดโดยอุปกรณ์',
			'settings.localInference.disclosureLimit3' => 'หากการวิเคราะห์บนอุปกรณ์ไม่สำเร็จ ระบบเบต้าจะส่งคำอธิบายมื้ออาหารต้นฉบับของคุณไปยัง Calorify เพื่อวิเคราะห์ผ่านคลาวด์โดยอัตโนมัติ',
			'settings.localInference.acknowledgement' => 'ฉันเข้าใจว่าควรตรวจสอบส่วนผสมและปริมาณที่ตรวจพบ',
			'settings.localInference.enable' => 'ยอมรับและเปิดใช้งาน',
			'settings.localInference.cancel' => 'ยกเลิก',
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
			'settings.clearAllData.subtitle' => 'ลบข้อมูล Calorify ที่จัดเก็บไว้ในอุปกรณ์นี้',
			'settings.clearAllData.localOnlySubtitle' => 'ลบข้อมูล Calorify ที่จัดเก็บในอุปกรณ์นี้',
			'settings.clearAllData.confirmationTitle' => 'ล้างข้อมูลทั้งหมด?',
			'settings.clearAllData.confirmationMessage' => 'การดำเนินการนี้จะลบมื้ออาหารที่บันทึก รายการโปรด และการตั้งค่าโปรไฟล์ออกจากอุปกรณ์นี้อย่างถาวร มื้ออาหารที่แชร์ไปยัง Health Connect แล้วและการเข้าถึง Health Connect ต้องจัดการแยกต่างหากใน การตั้งค่า > Health Connect',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'การดำเนินการนี้จะลบมื้ออาหารที่บันทึกไว้ รายการโปรด และการตั้งค่าโปรไฟล์ออกจากอุปกรณ์นี้อย่างถาวร มื้ออาหารที่แชร์ไปยัง Health Connect แล้วและสิทธิ์เข้าถึง Health Connect จะจัดการแยกต่างหากใน การตั้งค่า > Health Connect',
			'settings.clearAllData.cancel' => 'ยกเลิก',
			'settings.clearAllData.clearEverything' => 'ล้างทั้งหมด',
			'settings.debugOptions.title' => 'ตัวเลือกดีบัก',
			'settings.developerModeEnabled' => 'เปิดโหมดนักพัฒนาแล้ว!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'ดูและจัดการสิทธิ์',
			'settings.healthConnect.unavailable.title' => 'ไม่พบ Health Connect',
			'settings.healthConnect.unavailable.description' => 'อุปกรณ์นี้ไม่รองรับ Health Connect',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'อุปกรณ์นี้ไม่รองรับ Health Connect',
			'settings.healthConnect.updateRequired.title' => 'Health Connect ต้องได้รับการดำเนินการ',
			'settings.healthConnect.updateRequired.description' => 'ติดตั้งหรืออัปเดต Health Connect ก่อนจัดการการเข้าถึง',
			'settings.healthConnect.updateRequired.action' => 'ติดตั้งหรืออัปเดต',
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
			'settings.healthConnect.disconnect' => 'ยกเลิกการเชื่อมต่อ Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'ยกเลิกการเชื่อมต่อ Health Connect หรือไม่?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify จะสูญเสียสิทธิ์เข้าถึง Health Connect ข้อมูลที่เขียนไว้แล้วจะไม่ถูกลบ',
			'settings.healthConnect.disconnectConfirmationAction' => 'ยกเลิกการเชื่อมต่อ',
			'settings.healthConnect.deleteSyncedMeals' => 'ลบมื้ออาหารของ Calorify ออกจาก Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'ลบมื้ออาหารที่ซิงก์หรือไม่?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'ลบมื้ออาหารที่ซิงก์โดย Calorify เวอร์ชันนี้ออกจาก Health Connect หรือไม่? บันทึกมื้ออาหารในเครื่องจะไม่เปลี่ยนแปลง รายการ Calorify ที่เก่ากว่าอาจยังต้องลบผ่าน จัดการข้อมูล ใน Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'ลบมื้ออาหารที่ซิงก์',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'ลบมื้ออาหารของ Calorify ออกจาก Health Connect แล้ว',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'ไม่สามารถลบมื้ออาหารที่ซิงก์ได้ โปรดลองอีกครั้ง',
			'settings.healthConnect.connectionPartial' => 'เปิดใช้ฟีเจอร์ Health Connect บางส่วนแล้ว',
			'settings.healthConnect.connectionComplete' => 'เปิดใช้ฟีเจอร์ Health Connect ทั้งสองรายการแล้ว',
			'settings.healthConnect.actionFailed' => 'ไม่สามารถเปิด Health Connect ได้ โปรดลองอีกครั้ง',
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
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'การวิเคราะห์และการวินิจฉัยแบบจำกัด\n${appLabel} ใช้เหตุการณ์พื้นฐานของแอปและข้อมูลวินิจฉัยข้อขัดข้องเพื่อปรับปรุงความน่าเชื่อถือ ค่าจากบันทึกสุขภาพจะไม่ถูกใช้เพื่อการโฆษณาหรือขาย',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'การวิเคราะห์และการวินิจฉัยแบบจำกัด\n${appLabel} ใช้เหตุการณ์พื้นฐานของแอปและข้อมูลวินิจฉัยข้อขัดข้องเพื่อปรับปรุงความน่าเชื่อถือ ค่าจากบันทึกสุขภาพจะไม่ถูกใช้เพื่อการโฆษณาหรือขาย',
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
			'settings.appInfo.version' => ({required Object version}) => 'Calorify เวอร์ชัน ${version}',
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
			_ => null,
		} ?? switch (path) {
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
			'localNutritionPhase4.portionSmaller' => 'น้อยกว่า',
			'localNutritionPhase4.portionEstimated' => 'โดยประมาณ',
			'localNutritionPhase4.portionLarger' => 'มากกว่า',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'ปริมาณใดใกล้เคียงที่สุดสำหรับ ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'นี่เป็นมื้อใด?',
			'localNutritionPhase4.localNutritionTip' => 'คำนวณจากข้อมูลโภชนาการในเครื่องที่ผ่านการตรวจสอบแล้ว',
			'localNutritionPhase4.offlineNutritionTitle' => 'ดาวน์โหลดข้อมูลโภชนาการ',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'ใช้แถว USDA ที่ผ่านการตรวจสอบและการคำนวณแบบกำหนดแน่นอนบนอุปกรณ์นี้เมื่อครอบคลุมส่วนผสมทั้งหมด',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'ข้อมูลโภชนาการในเครื่องไม่พร้อมใช้งานสำหรับแอปรุ่นนี้',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'ยังไม่ได้ดาวน์โหลดแพ็กโภชนาการที่ผ่านการตรวจสอบ',
			'localNutritionPhase4.offlineNutritionInstalling' => 'กำลังดาวน์โหลดและตรวจสอบข้อมูลโภชนาการ…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'แพ็ก ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => 'แถว USDA ที่แคชไว้ ${count} แถว · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'ตรวจหาการอัปเดต',
			'localNutritionPhase4.offlineNutritionClear' => 'ล้างข้อมูลโภชนาการในเครื่อง',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'ล้างข้อมูลโภชนาการในเครื่องหรือไม่?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'การดำเนินการนี้จะลบแพ็ก USDA ที่ดาวน์โหลดและแคชการค้นหา มื้ออาหารที่บันทึกไว้จะเก็บสแนปช็อตโภชนาการที่ใช้ตอนบันทึกไว้อย่างถูกต้อง',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'ล้างข้อมูล',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'ดาวน์โหลดและตรวจสอบข้อมูลโภชนาการในเครื่องไม่ได้: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'ล้างข้อมูลโภชนาการในเครื่องแล้ว',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'ย้อนกลับ',
			'watch.common.cancel' => 'ยกเลิก',
			'watch.common.delete' => 'ลบ',
			'watch.common.retry' => 'ลองอีกครั้ง',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'สารอาหาร',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} กรัม',
			'watch.nutrition.protein' => 'โปรตีน',
			'watch.nutrition.carbs' => 'คาร์โบไฮเดรต',
			'watch.nutrition.fat' => 'ไขมัน',
			'watch.nutrition.fiber' => 'ใยอาหาร',
			'watch.sync.syncWithPhone' => 'ซิงค์กับโทรศัพท์',
			'watch.sync.syncing' => 'กำลังซิงค์…',
			'watch.sync.synced' => 'ซิงค์แล้ว',
			'watch.sync.syncedJustNow' => 'ซิงค์เมื่อสักครู่',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'ซิงค์เมื่อ ${minutes} นาทีที่แล้ว',
			'watch.sync.failed' => 'การซิงค์ล้มเหลว',
			'watch.sync.phoneDisconnected' => 'โทรศัพท์ไม่ได้เชื่อมต่อ',
			'watch.sync.tapToSync' => 'แตะเพื่อซิงค์',
			'watch.sync.refreshFailed' => 'ไม่สามารถรีเฟรชได้ ตรวจสอบโทรศัพท์ของคุณ',
			'watch.sync.openPhone' => 'เปิด Calorify บนโทรศัพท์ของคุณ แล้วแตะรีเฟรช',
			'watch.home.today' => 'วันนี้',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => 'บริโภค ${consumed} แคลอรี่จาก ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} เกินเป้าหมาย',
			'watch.home.remaining' => ({required Object calories}) => '${calories} คงเหลือ',
			'watch.home.left' => ({required Object calories}) => '${calories} เหลือ',
			'watch.home.goal' => ({required Object calories}) => 'เป้าหมาย ${calories} kcal',
			'watch.home.logMeal' => 'บันทึกมื้ออาหาร',
			'watch.home.todayMeals' => 'มื้ออาหารวันนี้',
			'watch.home.todayMealsCount' => ({required Object count}) => 'มื้ออาหารวันนี้, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'ดูเพิ่มอีก ${count}',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} มื้อเพิ่มเติม แตะเพื่อดูทั้งหมด',
			'watch.home.noMeals' => 'ยังไม่มีการบันทึกมื้ออาหาร',
			'watch.home.noMealsSemantics' => 'วันนี้ยังไม่มีการบันทึกมื้ออาหาร',
			'watch.home.tapLog' => 'แตะ \'บันทึก\' เพื่อเริ่ม',
			'watch.home.removedFromQueue' => 'มื้ออาหารถูกลบจากคิวออฟไลน์แล้ว',
			'watch.home.removedOffline' => 'มื้ออาหารถูกลบแบบออฟไลน์ จะซิงค์เมื่อโทรศัพท์ของคุณเชื่อมต่ออีกครั้ง',
			'watch.home.deleteFailed' => 'ไม่สามารถลบมื้ออาหารได้',
			'watch.history.title' => 'มื้ออาหารวันนี้',
			'watch.history.refresh' => 'รีเฟรชมื้ออาหาร',
			'watch.history.loadFailed' => 'ไม่สามารถโหลดมื้ออาหารได้',
			'watch.history.syncFailed' => 'ไม่สามารถซิงค์ได้',
			'watch.history.emptyTitle' => 'ยังไม่มีมื้ออาหาร',
			'watch.history.emptyMessage' => 'บันทึกมื้ออาหารจากหน้าแรกเพื่อให้แสดงที่นี่',
			'watch.favorites.title' => 'รายการโปรด',
			'watch.favorites.refresh' => 'รีเฟรชรายการโปรด',
			'watch.favorites.loadFailed' => 'ไม่สามารถโหลดรายการโปรดได้',
			'watch.favorites.syncFailed' => 'ไม่สามารถซิงค์ได้',
			'watch.favorites.emptyTitle' => 'ยังไม่มีรายการโปรด',
			'watch.favorites.emptyMessage' => 'กดดาวมื้ออาหารในแอปบนโทรศัพท์เพื่อบันทึกด้วยการแตะครั้งเดียวที่นี่',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} แคลอรี่ แตะเพื่อบันทึก',
			'watch.favorites.logged' => ({required Object name}) => 'บันทึก ${name} แล้ว!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} ถูกบันทึกแบบออฟไลน์ จะซิงค์เมื่อโทรศัพท์ของคุณเชื่อมต่ออีกครั้ง',
			'watch.favorites.saveFailed' => 'ไม่สามารถบันทึกมื้ออาหารได้ กรุณาลองอีกครั้ง',
			'watch.favorites.log' => 'บันทึก',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} แคลอรี่ บันทึกเวลา ${time}.',
			'watch.meal.longPressDelete' => 'กดค้างเพื่อลบ',
			'watch.meal.deleteTitle' => 'ลบมื้ออาหารหรือไม่?',
			'watch.voice.title' => 'บันทึกมื้ออาหารด้วยเสียง',
			'watch.voice.processing' => 'กำลังวิเคราะห์มื้ออาหารของคุณ…',
			'watch.voice.processingDescription' => 'ประเมินขนาดและสารอาหาร',
			'watch.voice.listening' => 'กำลังฟัง',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}ว',
			'watch.voice.stop' => 'หยุดบันทึก',
			'watch.voice.start' => 'แตะเพื่อเริ่มบันทึก',
			'watch.voice.starting' => 'กำลังเริ่มไมโครโฟน…',
			'watch.voice.prompt' => 'แตะแล้วอธิบายมื้ออาหารของคุณ',
			'watch.voice.tapToRetry' => 'แตะเพื่อทำซ้ำ',
			'watch.voice.example' => 'ลอง “2 โรตี กับ แกงถั่ว”',
			'watch.voice.unavailable' => 'การป้อนด้วยเสียงไม่พร้อมใช้งาน ตรวจสอบการอนุญาตไมโครโฟนในการตั้งค่าของนาฬิกา',
			'watch.voice.didNotStart' => 'ไมโครโฟนไม่เริ่มทำงาน แตะเพื่อทำซ้ำ',
			'watch.voice.startFailed' => 'ไม่สามารถเริ่มการบันทึกได้ ตรวจสอบสิทธิ์ไมโครโฟน',
			'watch.voice.allowMicrophone' => 'อนุญาตการเข้าถึงไมโครโฟนเพื่อบันทึกมื้ออาหารด้วยเสียง',
			'watch.voice.needsConnection' => 'การรู้จำด้วยเสียงต้องใช้การเชื่อมต่อ แตะเพื่อทำซ้ำ',
			'watch.voice.microphoneUnavailable' => 'ไมโครโฟนไม่พร้อมใช้งาน แตะเพื่อทำซ้ำ',
			'watch.voice.microphoneBusy' => 'ไมโครโฟนกำลังใช้งาน รอสักครู่แล้วลองอีกครั้ง',
			'watch.voice.languageUnsupported' => 'การป้อนด้วยเสียงไม่รองรับภาษาที่ตั้งไว้ในนาฬิกา',
			'watch.voice.temporarilyBusy' => 'การป้อนด้วยเสียงชั่วคราวไม่พร้อมใช้งาน รอสักครู่แล้วลองอีกครั้ง',
			'watch.voice.notRecognized' => 'ไม่ได้ยินชัดนัก แตะไอคอนไมโครโฟนแล้วลองใหม่',
			'watch.voice.noSpeech' => 'ไม่พบเสียงพูด แตะไอคอนไมโครโฟนเพื่อทดลองอีกครั้ง',
			'watch.voice.analysisFailed' => 'การวิเคราะห์ล้มเหลว กรุณาลองอีกครั้ง',
			'watch.voice.mealNotIdentified' => 'ไม่สามารถระบุมื้อนั้นได้ ลองอธิบายให้ต่างออกไป',
			'watch.result.title' => 'รายละเอียดมื้ออาหาร',
			'watch.result.savedOffline' => 'บันทึกแบบออฟไลน์',
			'watch.result.logged' => 'บันทึกแล้ว!',
			'watch.result.mealFound' => 'พบมื้ออาหาร',
			'watch.result.estimatedEnergy' => 'พลังงานโดยประมาณ',
			'watch.result.logMeal' => 'บันทึกมื้ออาหาร',
			'watch.result.logging' => 'กำลังบันทึก…',
			'watch.result.logAnother' => 'บันทึกอีกมื้อ',
			'watch.result.goingBack' => 'กำลังกลับ…',
			'watch.result.savedOfflineMessage' => 'มื้ออาหารถูกบันทึกแบบออฟไลน์ จะซิงค์เมื่อโทรศัพท์ของคุณเชื่อมต่ออีกครั้ง',
			'watch.result.saveFailed' => 'ไม่สามารถบันทึกมื้ออาหารได้ กรุณาลองอีกครั้ง',
			'common.betaTag' => 'เบต้า',
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
