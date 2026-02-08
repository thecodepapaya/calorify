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
class TranslationsVi with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsVi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.vi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <vi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsVi _root = this; // ignore: unused_field

	@override 
	TranslationsVi $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsVi(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Tiếng Việt';
	@override String get flag => '🇻🇳';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsOnboardingVi onboarding = _TranslationsOnboardingVi._(_root);
	@override late final _TranslationsTabsVi tabs = _TranslationsTabsVi._(_root);
	@override late final _TranslationsHomeVi home = _TranslationsHomeVi._(_root);
	@override late final _TranslationsHistoryVi history = _TranslationsHistoryVi._(_root);
	@override late final _TranslationsMealVi meal = _TranslationsMealVi._(_root);
	@override late final _TranslationsFavoritesVi favorites = _TranslationsFavoritesVi._(_root);
	@override late final _TranslationsProfileVi profile = _TranslationsProfileVi._(_root);
	@override late final _TranslationsHealthScoreVi healthScore = _TranslationsHealthScoreVi._(_root);
	@override late final _TranslationsEditProfileVi editProfile = _TranslationsEditProfileVi._(_root);
	@override late final _TranslationsSettingsVi settings = _TranslationsSettingsVi._(_root);
	@override late final _TranslationsRemindersVi reminders = _TranslationsRemindersVi._(_root);
	@override late final _TranslationsNotificationsVi notifications = _TranslationsNotificationsVi._(_root);
	@override late final _TranslationsLoginVi login = _TranslationsLoginVi._(_root);
	@override late final _TranslationsDisclaimerVi disclaimer = _TranslationsDisclaimerVi._(_root);
	@override late final _TranslationsCommonVi common = _TranslationsCommonVi._(_root);
	@override late final _TranslationsFeedbackRatingVi feedbackRating = _TranslationsFeedbackRatingVi._(_root);
	@override late final _TranslationsErrorsVi errors = _TranslationsErrorsVi._(_root);
	@override late final _TranslationsDebugVi debug = _TranslationsDebugVi._(_root);
	@override late final _TranslationsHealthVi health = _TranslationsHealthVi._(_root);
}

// Path: onboarding
class _TranslationsOnboardingVi implements TranslationsOnboardingEn {
	_TranslationsOnboardingVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Chào mừng bạn đến với ${appLabel}';
	@override String get subtitle => 'Người bạn đồng hành dinh dưỡng cá nhân của bạn được hỗ trợ bởi AI';
	@override String get getStarted => 'Bắt đầu';
	@override late final _TranslationsOnboardingFeaturesVi features = _TranslationsOnboardingFeaturesVi._(_root);
	@override late final _TranslationsOnboardingGenderVi gender = _TranslationsOnboardingGenderVi._(_root);
	@override late final _TranslationsOnboardingHeightVi height = _TranslationsOnboardingHeightVi._(_root);
	@override late final _TranslationsOnboardingWeightVi weight = _TranslationsOnboardingWeightVi._(_root);
	@override late final _TranslationsOnboardingAgeVi age = _TranslationsOnboardingAgeVi._(_root);
	@override late final _TranslationsOnboardingBmiScaleVi bmiScale = _TranslationsOnboardingBmiScaleVi._(_root);
	@override late final _TranslationsOnboardingWeightGoalVi weightGoal = _TranslationsOnboardingWeightGoalVi._(_root);
	@override late final _TranslationsOnboardingActivityLevelVi activityLevel = _TranslationsOnboardingActivityLevelVi._(_root);
	@override late final _TranslationsOnboardingHealthConnectVi healthConnect = _TranslationsOnboardingHealthConnectVi._(_root);
	@override late final _TranslationsOnboardingReinforcementVi reinforcement = _TranslationsOnboardingReinforcementVi._(_root);
}

// Path: tabs
class _TranslationsTabsVi implements TranslationsTabsEn {
	_TranslationsTabsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Bảng điều khiển';
	@override String get history => 'Lịch sử';
}

// Path: home
class _TranslationsHomeVi implements TranslationsHomeEn {
	_TranslationsHomeVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalVi dailyGoal = _TranslationsHomeDailyGoalVi._(_root);
	@override late final _TranslationsHomeDailySummaryVi dailySummary = _TranslationsHomeDailySummaryVi._(_root);
	@override late final _TranslationsHomeIntakeProgressVi intakeProgress = _TranslationsHomeIntakeProgressVi._(_root);
	@override late final _TranslationsHomeIntakeHistoryVi intakeHistory = _TranslationsHomeIntakeHistoryVi._(_root);
	@override late final _TranslationsHomeMealLogVi mealLog = _TranslationsHomeMealLogVi._(_root);
	@override late final _TranslationsHomeMealDescriptionVi mealDescription = _TranslationsHomeMealDescriptionVi._(_root);
	@override late final _TranslationsHomeFavoriteMealsVi favoriteMeals = _TranslationsHomeFavoriteMealsVi._(_root);
	@override late final _TranslationsHomeMealSnapVi mealSnap = _TranslationsHomeMealSnapVi._(_root);
	@override late final _TranslationsHomeConnectHealthVi connectHealth = _TranslationsHomeConnectHealthVi._(_root);
}

// Path: history
class _TranslationsHistoryVi implements TranslationsHistoryEn {
	_TranslationsHistoryVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Chưa ghi nhận bữa ăn nào';
	@override String get emptyMessage => 'Chụp ảnh bữa ăn cuối cùng của bạn để ghi chú ở đây.';
	@override String get today => 'Hôm nay';
	@override String get yesterday => 'Hôm qua';
}

// Path: meal
class _TranslationsMealVi implements TranslationsMealEn {
	_TranslationsMealVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Ôi không!';
	@override String get delete => 'Xóa';
	@override String get editMeal => 'Chỉnh sửa bữa ăn';
	@override String get addMeal => 'Thêm bữa ăn';
	@override String get saveMeal => 'Lưu bữa ăn';
	@override String get save => 'Lưu';
	@override String get mealName => 'Tên bữa ăn';
	@override String get mealNameHint => 'ví dụ: Trứng bác với bánh mì nướng';
	@override String get mealQuantity => 'Số lượng bữa ăn';
	@override String get mealQuantityHint => 'vd: 1 bát, 2 lát';
	@override String get timeOfMeal => 'Thời gian bữa ăn';
	@override String get timeOfMealHint => 'Chọn thời gian bạn đã ăn bữa ăn';
	@override String get mealType => 'Loại bữa ăn';
	@override late final _TranslationsMealNutritionVi nutrition = _TranslationsMealNutritionVi._(_root);
	@override late final _TranslationsMealDeleteConfirmationVi deleteConfirmation = _TranslationsMealDeleteConfirmationVi._(_root);
	@override String get addedToLog => 'Bữa ăn đã được thêm vào nhật ký của bạn!';
	@override String couldNotAdd({required Object error}) => 'Không thể thêm bữa ăn: ${error}';
	@override String get savedSuccessfully => 'Bữa ăn đã được thêm thành công!';
	@override String get updatedSuccessfully => 'Bữa ăn đã được cập nhật thành công!';
	@override String errorSaving({required Object error}) => 'Lỗi khi lưu bữa ăn: ${error}';
	@override String get removedFromFavorites => 'Đã xóa khỏi yêu thích!';
	@override String get savedAsFavorite => 'Bữa ăn đã được lưu làm yêu thích!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Không thể cập nhật yêu thích: ${error}';
	@override String failedToProcess({required Object error}) => 'Không thể xử lý: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Không thể xử lý hình ảnh: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Lỗi nén hình ảnh: ${error}';
	@override String get failedToSave => 'Không thể lưu dữ liệu. Vui lòng thử lại.';
	@override String get skip => 'Bỏ qua';
	@override late final _TranslationsMealVariationVi variation = _TranslationsMealVariationVi._(_root);
}

// Path: favorites
class _TranslationsFavoritesVi implements TranslationsFavoritesEn {
	_TranslationsFavoritesVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yêu thích';
	@override String get empty => 'Chưa có bữa ăn yêu thích nào.';
}

// Path: profile
class _TranslationsProfileVi implements TranslationsProfileEn {
	_TranslationsProfileVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hồ sơ';
	@override String get noProfileData => 'Chưa tìm thấy dữ liệu hồ sơ';
	@override String get yourProfile => 'Hồ sơ của bạn';
	@override String get viewAndManage => 'Xem và quản lý thông tin sức khỏe của bạn';
	@override late final _TranslationsProfileSectionsVi sections = _TranslationsProfileSectionsVi._(_root);
	@override String get gender => 'Giới tính';
	@override String get height => 'Chiều cao';
	@override String get weight => 'Cân nặng';
	@override String get age => 'Tuổi';
	@override String get weightGoal => 'Mục tiêu cân nặng';
	@override String get targetWeight => 'Cân nặng mục tiêu';
	@override String get activityLevel => 'Mức độ hoạt động';
	@override String get healthMetrics => 'Các chỉ số sức khỏe';
	@override String get notSet => 'Chưa đặt';
	@override String get years => 'năm';
	@override String get updatedSuccessfully => 'Hồ sơ đã được cập nhật thành công!';
	@override late final _TranslationsProfileCalculatedValuesVi calculatedValues = _TranslationsProfileCalculatedValuesVi._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreVi implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Điểm sức khỏe';
	@override String get whyThisScore => 'Tại sao điểm này?';
	@override String get note => 'Điểm này là ước lượng của AI dựa trên các thành phần và hàm lượng dinh dưỡng đã xác định. Luôn tham khảo ý kiến của chuyên gia cho lời khuyên về chế độ ăn uống.';
	@override String get unhealthy => 'Không khỏe mạnh';
	@override String get healthy => 'Khỏe mạnh';
	@override String get neutral => 'Trung lập';
}

// Path: editProfile
class _TranslationsEditProfileVi implements TranslationsEditProfileEn {
	_TranslationsEditProfileVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chỉnh sửa hồ sơ';
	@override late final _TranslationsEditProfileSectionsVi sections = _TranslationsEditProfileSectionsVi._(_root);
	@override String get gender => 'Giới tính';
	@override String get dateOfBirth => 'Ngày sinh';
	@override String get height => 'Chiều cao';
	@override String get weight => 'Cân nặng';
	@override String get weightGoal => 'Mục tiêu cân nặng';
	@override String get activityLevel => 'Mức độ hoạt động';
	@override String get metric => 'Mét';
	@override String get imperial => 'Imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Mét (cm)';
	@override String get imperialFtIn => 'Imperial (ft/in)';
	@override String get metricKg => 'Kilogram (kg)';
	@override String get imperialLbs => 'Pound (lbs)';
	@override late final _TranslationsEditProfileGendersVi genders = _TranslationsEditProfileGendersVi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsVi weightGoals = _TranslationsEditProfileWeightGoalsVi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVi activityLevels = _TranslationsEditProfileActivityLevelsVi._(_root);
}

// Path: settings
class _TranslationsSettingsVi implements TranslationsSettingsEn {
	_TranslationsSettingsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cài đặt';
	@override late final _TranslationsSettingsSectionsVi sections = _TranslationsSettingsSectionsVi._(_root);
	@override late final _TranslationsSettingsEditProfileVi editProfile = _TranslationsSettingsEditProfileVi._(_root);
	@override late final _TranslationsSettingsLanguageVi language = _TranslationsSettingsLanguageVi._(_root);
	@override late final _TranslationsSettingsHeightUnitVi heightUnit = _TranslationsSettingsHeightUnitVi._(_root);
	@override late final _TranslationsSettingsWeightUnitVi weightUnit = _TranslationsSettingsWeightUnitVi._(_root);
	@override late final _TranslationsSettingsMealRemindersVi mealReminders = _TranslationsSettingsMealRemindersVi._(_root);
	@override late final _TranslationsSettingsThemeVi theme = _TranslationsSettingsThemeVi._(_root);
	@override late final _TranslationsSettingsSendFeedbackVi sendFeedback = _TranslationsSettingsSendFeedbackVi._(_root);
	@override late final _TranslationsSettingsClearAllDataVi clearAllData = _TranslationsSettingsClearAllDataVi._(_root);
	@override late final _TranslationsSettingsDebugOptionsVi debugOptions = _TranslationsSettingsDebugOptionsVi._(_root);
	@override String get developerModeEnabled => 'Chế độ nhà phát triển đã được bật!';
	@override late final _TranslationsSettingsHealthConnectVi healthConnect = _TranslationsSettingsHealthConnectVi._(_root);
	@override late final _TranslationsSettingsAboutVi about = _TranslationsSettingsAboutVi._(_root);
	@override late final _TranslationsSettingsAppInfoVi appInfo = _TranslationsSettingsAppInfoVi._(_root);
}

// Path: reminders
class _TranslationsRemindersVi implements TranslationsRemindersEn {
	_TranslationsRemindersVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giữ đúng tiến trình với nhắc nhở';
	@override String get description => 'Nhận những nhắc nhở nhẹ nhàng để ghi lại bữa ăn và duy trì tính nhất quán với các mục tiêu dinh dưỡng của bạn';
	@override String get notificationsEnabled => 'Thông báo đã được bật';
	@override String get notificationsDisabled => 'Thông báo đã bị tắt';
	@override String get enabledSubtitle => 'Bạn sẽ nhận được nhắc nhở bữa ăn';
	@override String get disabledSubtitle => 'Bật thông báo để nhận nhắc nhở bữa ăn';
	@override String get mealReminders => 'Nhắc nhở bữa ăn';
	@override String get breakfast => 'Bữa sáng';
	@override String get lunch => 'Bữa trưa';
	@override String get dinner => 'Bữa tối';
	@override String get snack => 'Bữa ăn nhẹ';
	@override String get unknown => 'Không xác định';
	@override String get change => 'Thay đổi';
	@override String get enableNotifications => 'Bật thông báo';
	@override String get skipForNow => 'Bỏ qua tạm thời';
	@override String get saveChanges => 'Lưu thay đổi';
	@override String get enabledSuccessfully => 'Thông báo đã được bật thành công!';
	@override String get permissionDenied => 'Quyền thông báo đã bị từ chối';
	@override String errorEnabling({required Object error}) => 'Lỗi khi bật thông báo: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Lỗi khi hoàn tất cài đặt: ${error}';
}

// Path: notifications
class _TranslationsNotificationsVi implements TranslationsNotificationsEn {
	_TranslationsNotificationsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastVi breakfast = _TranslationsNotificationsBreakfastVi._(_root);
	@override late final _TranslationsNotificationsLunchVi lunch = _TranslationsNotificationsLunchVi._(_root);
	@override late final _TranslationsNotificationsDinnerVi dinner = _TranslationsNotificationsDinnerVi._(_root);
	@override late final _TranslationsNotificationsSnackVi snack = _TranslationsNotificationsSnackVi._(_root);
	@override late final _TranslationsNotificationsTestVi test = _TranslationsNotificationsTestVi._(_root);
}

// Path: login
class _TranslationsLoginVi implements TranslationsLoginEn {
	_TranslationsLoginVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đăng nhập';
	@override String get signInWithGoogle => 'Đăng nhập bằng Google';
	@override String get signInFailed => 'Đăng nhập bằng Google thất bại hoặc đã bị hủy.';
}

// Path: disclaimer
class _TranslationsDisclaimerVi implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Xin lưu ý';
	@override late final _TranslationsDisclaimerSnapVi snap = _TranslationsDisclaimerSnapVi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateVi weightEstimate = _TranslationsDisclaimerWeightEstimateVi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsVi healthMetrics = _TranslationsDisclaimerHealthMetricsVi._(_root);
}

// Path: common
class _TranslationsCommonVi implements TranslationsCommonEn {
	_TranslationsCommonVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get close => 'Đóng';
	@override String get kContinue => 'Tiếp tục';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingVi implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Bạn có thích ${appLabel} không?';
	@override String get yes => 'Có, tôi thích nó';
	@override String get no => 'Không lắm';
	@override String soloDevMessage({required Object appLabel}) => 'Một đánh giá nhanh sẽ giúp người khác tìm thấy ${appLabel} và giúp quá trình phát triển tiếp tục. Bạn có thể dành chút thời gian để để lại một đánh giá không?';
	@override String get shareFeedbackViaEmail => 'Phản hồi của bạn góp phần định hình những cải tiến tiếp theo — chúng tôi đọc từng phản hồi. Bạn có muốn chia sẻ suy nghĩ qua email không?';
	@override String get rateCta => 'Đánh giá trên Cửa hàng Play';
	@override String get maybeLater => 'Để sau';
	@override String get sendFeedback => 'Gửi phản hồi';
	@override String get noThanks => 'Không, cảm ơn';
	@override String get aboutUsDescription => 'Được tạo nên với sự chăm chút bởi một nhóm nhỏ. Chúng tôi tập trung vào quyền riêng tư, tính đơn giản và hỗ trợ bạn xây dựng thói quen ăn uống lành mạnh hơn.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Bạn tò mò ai đứng sau ${appLabel}? Xem ';
	@override String get aboutUsLinkLabel => 'Về chúng tôi';
}

// Path: errors
class _TranslationsErrorsVi implements TranslationsErrorsEn {
	_TranslationsErrorsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Lỗi khi tải dữ liệu hồ sơ';
	@override String get somethingWentWrong => 'Đã xảy ra lỗi.';
}

// Path: debug
class _TranslationsDebugVi implements TranslationsDebugEn {
	_TranslationsDebugVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tùy chọn gỡ lỗi';
	@override String get searchHint => 'Tìm kiếm...';
	@override late final _TranslationsDebugSectionsVi sections = _TranslationsDebugSectionsVi._(_root);
	@override String get showActiveNotifications => 'Hiển thị thông báo đang hoạt động';
	@override String get scheduleTestNotification => 'Lên lịch thông báo thử nghiệm (10 giây)';
	@override String get triggerBreakfastNotification => 'Kích hoạt thông báo bữa sáng';
	@override String get cancelAllNotifications => 'Hủy tất cả thông báo';
	@override String get activeNotifications => 'Thông báo đang hoạt động';
	@override String get noTitle => 'Không có tiêu đề';
	@override String get noBody => 'Không có nội dung';
	@override String get fetchTodaysSteps => 'Lấy số bước hôm nay';
	@override String get fetchTodaysCalories => 'Lấy calo hôm nay';
	@override String get fetchLatestWeight => 'Lấy cân nặng mới nhất';
	@override String get fetchLatestHeight => 'Lấy chiều cao mới nhất';
	@override String get writeTestWeight => 'Ghi trọng lượng thử nghiệm (70kg)';
	@override String get writeTestHeight => 'Ghi chiều cao thử nghiệm (175cm)';
	@override String get syncLast7Days => 'Đồng bộ 7 ngày vừa qua';
	@override String get sync7DaysTitle => 'Đồng bộ 7 ngày';
	@override String get checkCurrentLocale => 'Kiểm tra địa phương hiện tại';
	@override String get currentLocale => 'Địa phương hiện tại';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Ngôn ngữ: ${languageCode}\nQuốc gia: ${countryCode}\nHệ thống đơn vị: ${unitSystem}';
	@override String get latestWeight => 'Cân nặng mới nhất';
	@override String get latestHeight => 'Chiều cao mới nhất';
	@override String get todaysCalories => 'Calo hôm nay';
	@override String totalCaloriesBurned({required Object calories}) => 'Tổng calo đã đốt cháy: ${calories}';
	@override String syncSuccess({required Object count}) => 'Đã đồng bộ thành công ${count} điểm dữ liệu cho bước, calo và cân nặng trong 7 ngày qua.';
	@override String get noWeightData => 'Không tìm thấy dữ liệu cân nặng trong 30 ngày qua.';
	@override String get noHeightData => 'Không tìm thấy dữ liệu chiều cao trong năm qua.';
	@override String get noCalorieData => 'Không tìm thấy dữ liệu calo cho hôm nay.';
	@override String get weightWritten => 'Ghi trọng lượng thử nghiệm thành công (70kg).';
	@override String get weightWriteFailed => 'Không thể ghi trọng lượng thử nghiệm.';
	@override String get heightWritten => 'Ghi chiều cao thử nghiệm thành công (175cm).';
	@override String get heightWriteFailed => 'Không thể ghi chiều cao thử nghiệm.';
	@override String get noNotifications => 'Không có thông báo đang hoạt động.';
	@override String get testNotificationScheduled => 'Thời gian thử nghiệm đã được lên lịch sau 10 giây.';
	@override String get testNotificationBody => 'Đây là thông báo thử nghiệm được lên lịch sau 10 giây.';
	@override String get breakfastNotificationTriggered => 'Thông báo bữa sáng đã được kích hoạt.';
	@override String get allNotificationsCancelled => 'Tất cả thông báo đã được hủy.';
	@override String get fetchingData => 'Đang lấy dữ liệu cho 7 ngày vừa qua...';
	@override String id({required Object id}) => 'ID: ${id}';
	@override String get showFeedbackRatingSheet => 'Hiển thị hộp phản hồi/đánh giá';
	@override String get clearUserPreferences => 'Xóa tùy chọn người dùng';
	@override String get clearUserPreferencesConfirmationTitle => 'Xóa tùy chọn người dùng?';
	@override String get clearUserPreferencesConfirmationMessage => 'Giao diện, ngôn ngữ và tùy chọn phản hồi sẽ được đặt lại. Bữa ăn và hồ sơ sẽ không bị ảnh hưởng.';
	@override String get clearUserProfile => 'Xóa hồ sơ người dùng';
	@override String get clearUserProfileConfirmationTitle => 'Xóa hồ sơ người dùng?';
	@override String get clearUserProfileConfirmationMessage => 'Dữ liệu hồ sơ của bạn (mục tiêu hàng ngày, chiều cao, cân nặng, v.v.) sẽ bị xóa. Bữa ăn và tùy chọn sẽ không bị ảnh hưởng.';
	@override String get clear => 'Xóa';
	@override String get cancel => 'Hủy';
	@override String get checkWatchConnection => 'Kiểm tra kết nối đồng hồ';
	@override String get sendTestMessage => 'Gửi tin nhắn thử';
	@override String get sendTestMessageSubtitle => 'Gửi một tin nhắn thử đơn giản tới đồng hồ';
	@override String get sendTestMealData => 'Gửi dữ liệu bữa ăn thử';
	@override String get sendTestMealDataSubtitle => 'Gửi dữ liệu mẫu bữa ăn tới đồng hồ';
	@override String get sendTestCalorieGoal => 'Gửi mục tiêu calo thử';
	@override String get sendTestCalorieGoalSubtitle => 'Gửi mục tiêu calo mẫu tới đồng hồ';
	@override String get viewReceivedMessages => 'Xem tin nhắn đã nhận';
	@override String get viewReceivedMessagesSubtitle => 'Xem tin nhắn nhận từ đồng hồ';
	@override String get watchConnected => 'Đồng hồ đã kết nối ✓';
	@override String get device => 'Thiết bị';
	@override String get nearby => 'Gần đó';
	@override String get yes => 'Có';
	@override String get no => 'Không';
	@override String get connectedDevices => 'Thiết bị đã kết nối';
	@override String get deviceInfoUnavailable => '(Thông tin thiết bị không có sẵn)';
	@override String get unknownDevice => 'Thiết bị không xác định';
	@override String get watchNotConnected => 'Đồng hồ chưa kết nối ✗';
	@override String get watchNotConnectedHint => 'Hãy đảm bảo:\n• Cả hai thiết bị đã ghép đôi\n• Ứng dụng trên đồng hồ đang chạy\n• Cả hai ứng dụng đang ở chế độ debug/staging';
	@override String get watchConnection => 'Kết nối đồng hồ';
	@override String errorCheckingConnection({required Object error}) => 'Lỗi khi kiểm tra kết nối: ${error}';
	@override String get helloFromPhone => 'Xin chào từ điện thoại!';
	@override String get testMessageSentSuccess => 'Đã gửi tin nhắn thử thành công!';
	@override String get testMessageFailed => 'Gửi tin nhắn thử thất bại. Kiểm tra kết nối đồng hồ.';
	@override String errorSendingMessage({required Object error}) => 'Lỗi khi gửi tin nhắn: ${error}';
	@override String get testMeal => 'Bữa ăn thử';
	@override String get testMealDataSentSuccess => 'Đã gửi dữ liệu bữa ăn thử thành công!';
	@override String get failedToSendMealData => 'Gửi dữ liệu bữa ăn thất bại. Kiểm tra kết nối đồng hồ.';
	@override String errorSendingMealData({required Object error}) => 'Lỗi khi gửi dữ liệu bữa ăn: ${error}';
	@override String get testCalorieGoalSentSuccess => 'Đã gửi mục tiêu calo thử thành công!';
	@override String get failedToSendCalorieGoal => 'Gửi mục tiêu calo thất bại. Kiểm tra kết nối đồng hồ.';
	@override String errorSendingCalorieGoal({required Object error}) => 'Lỗi khi gửi mục tiêu calo: ${error}';
	@override String get testAnalyzeImage => 'Thử phân tích ảnh';
	@override String get testAnalyzeImageSubtitle => 'Tải ảnh thử cố định lên';
	@override String get testDetectImage => 'Thử phát hiện ảnh';
	@override String get testDetectImageSubtitle => 'Phát hiện bữa ăn từ URL ảnh';
	@override String get detectImageFromGallery => 'Phát hiện ảnh từ Thư viện';
	@override String get detectImageFromGallerySubtitle => 'Chọn ảnh, tải lên bucket và ước tính calo';
	@override String get testDetectText => 'Thử phát hiện văn bản';
	@override String get testDetectTextSubtitle => 'Phát hiện bữa ăn từ mô tả văn bản';
	@override String get testMealLoggingWithVariations => 'Thử ghi nhận bữa ăn với biến thể';
	@override String get testMealLoggingWithVariationsSubtitle => 'Thử toàn bộ quy trình ghi nhận bữa ăn có biến thể';
	@override String get mockMealWithVariations => 'Bữa ăn mẫu có biến thể';
	@override String get mockMealWithVariationsSubtitle => 'Xem trước giao diện biến thể + mẹo mà không ghi nhận';
	@override String get mockMealName => 'Gà nướng với cơm và rau';
	@override String get mockTip => 'Đây là mẹo giả để xem giao diện. Bữa ăn không được ghi nhận.';
	@override String get mockMealDescription => 'Bữa ăn mẫu để gỡ lỗi';
	@override String get portionSizeQuestion => 'Kích thước khẩu phần như thế nào?';
	@override String get extraSidesQuestion => 'Có món phụ thêm không?';
	@override String get optionSmall => 'Nhỏ';
	@override String get optionMedium => 'Vừa';
	@override String get optionLarge => 'Lớn';
	@override String get optionNone => 'Không có';
	@override String get optionSideSalad => 'Salad phụ';
	@override String get optionBreadRoll => 'Ổ bánh mì';
	@override String get testingAnalyzeImage => 'Đang kiểm tra API analyzeImage...';
	@override String get testingDetectImage => 'Đang kiểm tra API detectImage...';
	@override String get testingDetectText => 'Đang kiểm tra API detectText...';
	@override String get selectingImageFromGallery => 'Đang chọn ảnh từ thư viện...';
	@override String get noImageSelected => 'Chưa chọn ảnh';
	@override String get compressingImage => 'Đang nén ảnh...';
	@override String get uploadingImageAndDetecting => 'Đang tải ảnh lên bucket và phát hiện bữa ăn...';
	@override String get testingMealLoggingFlow => 'Đang kiểm tra quy trình ghi nhận bữa ăn có biến thể...';
	@override String get testUpdateProfile => 'Kiểm tra cập nhật hồ sơ';
	@override String get testUpdateProfileSubtitle => 'Gửi hồ sơ mẫu (POST) tới backend';
	@override String get testingProfileApi => 'Đang kiểm tra API hồ sơ...';
	@override String get profileUpdateSuccess => 'API hồ sơ phản hồi thành công';
	@override String profileUpdateFailed({required Object error}) => 'Lỗi API hồ sơ: ${error}';
	@override String get noMealIdentifiedInResponse => 'Không xác định được bữa ăn trong phản hồi';
	@override String get mealIdentified => 'Đã xác định bữa ăn';
	@override String get confidence => 'Độ tin cậy';
	@override String get tip => 'Mẹo';
	@override String get mealName => 'Tên bữa ăn';
	@override String get calories => 'Calo';
	@override String get protein => 'Protein';
	@override String get carbs => 'Tinh bột';
	@override String get fat => 'Chất béo';
	@override String get noMealInfo => 'Không có thông tin bữa ăn';
	@override String get na => 'N/A';
	@override String get analyzeImageResult => 'Kết quả phân tích ảnh';
	@override String get detectImageResult => 'Kết quả phát hiện ảnh';
	@override String get detectImageFromGalleryResult => 'Kết quả phát hiện ảnh từ Thư viện';
	@override String get detectTextResult => 'Kết quả phát hiện văn bản';
	@override String errorGeneric({required Object error}) => 'Lỗi: ${error}';
	@override String get variationsCount => 'Biến thể';
	@override String get userPreferencesCleared => 'Đã xóa tùy chọn người dùng';
	@override String get userProfileCleared => 'Đã xóa hồ sơ người dùng';
	@override String get checkForUpdate => 'Kiểm tra cập nhật';
	@override String get showPatchNumber => 'Hiển thị số bản vá';
	@override String get showUpdateAvailable => 'Hiện thông báo có bản cập nhật';
	@override String get updateAvailable => 'Có bản cập nhật';
	@override String get upToDate => 'Mới nhất';
	@override String get shorebirdUnavailable => 'Shorebird không khả dụng trong môi trường này.';
	@override String get patchNumberLabel => 'Số bản vá';
	@override String get noPatchInstalled => 'Chưa cài bản vá';
	@override String get todaysSteps => 'Số bước hôm nay';
	@override String get stepsLabel => 'Bước';
	@override String weightLabel({required Object value}) => 'Cân nặng: ${value} kg';
	@override String heightLabel({required Object value}) => 'Chiều cao: ${value} cm';
	@override String get receivedMessagesFromWatch => 'Tin nhắn nhận từ đồng hồ';
	@override String get noMessagesReceivedYet => 'Chưa có tin nhắn nào.\n\nGửi dữ liệu thử từ đồng hồ để xem tin nhắn ở đây.';
	@override String get messagesCleared => 'Đã xóa tin nhắn';
}

// Path: health
class _TranslationsHealthVi implements TranslationsHealthEn {
	_TranslationsHealthVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Không thể đồng bộ với Health Connect';
	@override String get mealSynced => 'Bữa ăn đã được đồng bộ với Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesVi implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionVi foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionVi._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisVi aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisVi._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationVi healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationVi._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderVi implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giới tính của bạn là gì?';
	@override String get description => 'Giới tính giúp chúng tôi tính toán chính xác tỷ lệ trao đổi chất cơ bản (BMR) của bạn.';
	@override String get next => 'Tiếp theo';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightVi implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bạn cao bao nhiêu?';
	@override String get description => 'Chiều cao của bạn giúp chúng tôi tính toán chỉ số BMI và nhu cầu năng lượng một cách chính xác.';
	@override String get metric => 'Mét';
	@override String get imperial => 'Imperial';
	@override String get next => 'Tiếp theo';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightVi implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Cân nặng hiện tại của bạn là bao nhiêu?';
	@override String get currentDescription => 'Cân nặng hiện tại rất quan trọng để cá nhân hóa các mục tiêu hàng ngày của bạn.';
	@override String get targetTitle => 'Cân nặng mục tiêu của bạn là bao nhiêu?';
	@override String get targetDescription => 'Đặt mục tiêu cân nặng giúp chúng tôi xác định kế hoạch dài hạn của bạn.';
	@override String get metric => 'Kilogram';
	@override String get imperial => 'Imperial';
	@override String get next => 'Tiếp theo';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeVi implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ngày sinh của bạn là khi nào?';
	@override String get description => 'Tuổi của bạn giúp chúng tôi tính toán nhu cầu calo một cách chính xác.';
	@override String get next => 'Tiếp theo';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleVi implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Gầy';
	@override String get healthy => 'Khỏe mạnh';
	@override String get overweight => 'Thừa cân';
	@override String get obese => 'Béo phì';
	@override late final _TranslationsOnboardingBmiScaleCategoriesVi categories = _TranslationsOnboardingBmiScaleCategoriesVi._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesVi messages = _TranslationsOnboardingBmiScaleMessagesVi._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalVi implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mục tiêu của bạn là gì?';
	@override String get description => 'Chọn mục tiêu mà bạn muốn đạt được nhất';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelVi implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bạn hoạt động như thế nào?';
	@override String get description => 'Điều này giúp chúng tôi tính toán nhu cầu calo hàng ngày của bạn một cách chính xác hơn';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectVi implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kết nối với Health Connect';
	@override String get description => 'Đồng bộ dữ liệu sức khỏe của bạn để có cái nhìn sâu sắc hơn và theo dõi calo tự động';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingVi automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingVi._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsVi progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsVi._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationVi seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationVi._(_root);
	@override String get connected => 'Đã kết nối Health Connect';
	@override String get notConnected => 'Chưa kết nối Health Connect';
	@override String get setup => 'Cài đặt Health Connect';
	@override String get skipForNow => 'Bỏ qua tạm thời';
	@override String get statusConnected => 'Health Connect đã được kết nối.';
	@override String get statusSuccess => 'Health Connect đã được kết nối thành công!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Quyền truy cập đã bị từ chối. Vui lòng bật quyền truy cập Health Connect từ cài đặt điện thoại của bạn để sử dụng ${appLabel}.';
	@override String statusError({required Object error}) => 'Lỗi cài đặt Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementVi implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessVi trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessVi._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileVi healthProfile = _TranslationsOnboardingReinforcementHealthProfileVi._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleVi goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleVi._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalVi implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đặt mục tiêu hàng ngày của bạn';
	@override String get titleSet => 'Mục tiêu hàng ngày của bạn';
	@override String get description => 'Sẵn sàng để bắt đầu hành trình sức khỏe? Đặt mục tiêu calo hàng ngày của bạn bên dưới để khởi đầu tiến trình.';
	@override String get descriptionSet => 'La bàn của bạn đã được đặt! Đây là mục tiêu calo hàng ngày của bạn để hướng dẫn bạn.';
	@override String get yourGoal => 'Mục tiêu của bạn';
	@override String get goal => 'Mục tiêu';
	@override String get dailyCalories => 'Calo hàng ngày (kcal)';
	@override String get setGoal => 'Đặt mục tiêu';
	@override String get intake => 'Tiêu thụ';
	@override String get burned => 'Đã đốt cháy';
	@override String get weightImpact => 'Tác động đến trọng lượng';
	@override String get estLoss => 'Dự kiến giảm';
	@override String get estGain => 'Dự kiến tăng';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryVi implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tóm tắt hàng ngày';
	@override String get calories => 'Calo';
	@override String get carbs => 'Carbohydrate';
	@override String get protein => 'Protein';
	@override String get fat => 'Chất béo';
	@override String get fiber => 'Chất xơ';
	@override String get grams => 'gam';
	@override String get chartAccessibilityLabel => 'Biểu đồ các chất dinh dưỡng chính';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressVi implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Phân chia Macro hôm nay';
	@override String get target => 'Mục tiêu';
	@override String get current => 'Hiện tại';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryVi implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lịch sử Macro 7 ngày';
	@override String get noHistoryYet => 'Chưa có lịch sử nào';
	@override String get startLogging => 'Bắt đầu ghi chú bữa ăn để xem xu hướng macro 7 ngày của bạn ở đây';
}

// Path: home.mealLog
class _TranslationsHomeMealLogVi implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bữa ăn đã ghi';
	@override String get emptyMessage => 'Chụp ảnh bữa ăn cuối cùng của bạn để ghi chú ở đây.';
	@override String get noMealsToday => 'Chưa ghi nhận bữa ăn nào cho hôm nay';
	@override String get seeAllMeals => 'Xem tất cả bữa ăn';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionVi implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thêm nhanh với AI';
	@override String get description => 'Mô tả bữa ăn của bạn, và hãy để AI xử lý các chi tiết.';
	@override String get hint => 'ví dụ: Vào bữa sáng tôi đã ăn một bát lớn yến mạch với một quả chuối thái lát và một muỗng whey ...';
	@override String get analyzeMeal => 'Phân tích bữa ăn';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsVi implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bữa ăn yêu thích';
	@override String get description => 'Thêm nhanh một trong những bữa ăn yêu thích của bạn.';
	@override String get noFavorites => 'Chưa có bữa ăn yêu thích nào.';
	@override String get addFavoriteHint => 'Nhấn vào ngôi sao trên một bữa ăn để đánh dấu nó là yêu thích.';
	@override String get seeAll => 'Xem tất cả';
	@override String get add => 'Thêm';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapVi implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chụp & Theo dõi Bữa ăn của bạn';
	@override String get description => 'Sử dụng camera của bạn để chụp ảnh thực phẩm cho phân tích AI.';
	@override String get openCamera => 'Mở Camera';
	@override String get gallery => 'Thư viện';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthVi implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đồng bộ với Health Connect';
	@override String get description => 'Đồng bộ dữ liệu dinh dưỡng của bạn với Health Connect';
	@override String get install => 'Cài đặt';
	@override String get connect => 'Kết nối';
}

// Path: meal.nutrition
class _TranslationsMealNutritionVi implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calo';
	@override String get carbs => 'Carbohydrate (g)';
	@override String get protein => 'Protein (g)';
	@override String get fat => 'Chất béo (g)';
	@override String get fiber => 'Chất xơ (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationVi implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Xóa bữa ăn';
	@override String get message => 'Bạn có chắc chắn muốn xóa mục bữa ăn này không?';
	@override String get cancel => 'Hủy';
	@override String get delete => 'Xóa';
}

// Path: meal.variation
class _TranslationsMealVariationVi implements TranslationsMealVariationEn {
	_TranslationsMealVariationVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Câu hỏi ${current} trên ${total}';
	@override String get noVariationsAvailable => 'Không có biến thể nào';
}

// Path: profile.sections
class _TranslationsProfileSectionsVi implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'HỒ SƠ';
	@override String get basicInformation => 'THÔNG TIN CƠ BẢN';
	@override String get goalsAndActivity => 'MỤC TIÊU & HOẠT ĐỘNG';
	@override String get calculatedValues => 'CÁC GIÁ TRỊ TÍNH TOÁN';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesVi implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Mục tiêu hàng ngày';
	@override String get calPerDay => 'cal/ngày';
	@override String get notAvailable => 'Không có sẵn';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsVi implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'THÔNG TIN CÁ NHÂN';
	@override String get physicalMeasurements => 'THÔNG SỐ VẬT LÝ';
	@override String get goalsAndActivity => 'MỤC TIÊU & HOẠT ĐỘNG';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersVi implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get male => 'Nam';
	@override String get female => 'Nữ';
	@override String get other => 'Khác';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsVi implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightVi loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightVi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightVi maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightVi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightVi gainWeight = _TranslationsEditProfileWeightGoalsGainWeightVi._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsVi implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryVi sedentary = _TranslationsEditProfileActivityLevelsSedentaryVi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveVi lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveVi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveVi moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveVi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveVi veryActive = _TranslationsEditProfileActivityLevelsVeryActiveVi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveVi extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveVi._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsVi implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'HỒ SƠ';
	@override String get localization => 'ĐỊA PHƯƠNG HÓA';
	@override String get notifications => 'THÔNG BÁO';
	@override String get healthConnect => 'KẾT NỐI SỨC KHỎE';
	@override String get supportAndLegal => 'HỖ TRỢ & PHÁP LÝ';
	@override String get about => 'GIỚI THIỆU';
	@override String get dangerZone => 'KHU VỰC NGUY HIỂM';
	@override String get developer => 'NHÀ PHÁT TRIỂN';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileVi implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chỉnh sửa hồ sơ';
	@override String get subtitle => 'Cập nhật thông tin cá nhân của bạn';
}

// Path: settings.language
class _TranslationsSettingsLanguageVi implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ngôn ngữ';
	@override String get subtitle => 'Chọn ngôn ngữ bạn ưa thích';
	@override String get searchHint => 'Tìm kiếm ngôn ngữ...';
	@override String get noResults => 'Không tìm thấy kết quả';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitVi implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đơn vị chiều cao';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitVi implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đơn vị cân nặng';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersVi implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nhắc nhở bữa ăn';
	@override String get subtitle => 'Giúp bạn theo dõi đúng thời gian với những thông báo kịp thời';
}

// Path: settings.theme
class _TranslationsSettingsThemeVi implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chủ đề';
	@override String get light => 'Sáng';
	@override String get dark => 'Tối';
	@override String get system => 'Hệ thống';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackVi implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gửi phản hồi';
	@override String subtitle({required Object appLabel}) => 'Giúp chúng tôi cải thiện ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Phản hồi về ứng dụng ${appLabel}';
	@override String get emailBodyPrefix => 'Vui lòng cung cấp phản hồi của bạn bên dưới:';
	@override String get appVersion => 'Phiên bản ứng dụng';
	@override String get device => 'Thiết bị';
	@override String get osVersion => 'Phiên bản hệ điều hành';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataVi implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Xóa tất cả dữ liệu';
	@override String get subtitle => 'Xóa vĩnh viễn tất cả thông tin của bạn';
	@override String get confirmationTitle => 'Có chắc chắn xóa tất cả dữ liệu?';
	@override String get confirmationMessage => 'Hành động này không thể hoàn tác. Tất cả các bữa ăn bạn đã ghi, yêu thích và cài đặt hồ sơ sẽ bị xóa vĩnh viễn.';
	@override String get cancel => 'Hủy';
	@override String get clearEverything => 'Xóa tất cả';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsVi implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tùy chọn gỡ lỗi';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectVi implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kết nối sức khỏe';
	@override String get subtitle => 'Xem và quản lý quyền';
	@override late final _TranslationsSettingsHealthConnectUnavailableVi unavailable = _TranslationsSettingsHealthConnectUnavailableVi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsVi permissions = _TranslationsSettingsHealthConnectPermissionsVi._(_root);
	@override String get managePermissions => 'Quản lý Quyền';
	@override String get openSettings => 'Mở Cài Đặt Kết Nối Sức Khỏe';
	@override String get requestPermissions => 'Yêu Cầu Quyền Truy Cập';
	@override String get permissionRequestCancelledOrFailed => 'Yêu cầu quyền đã bị hủy hoặc thất bại. Vui lòng thử lại hoặc cấp quyền thủ công trong cài đặt Health Connect.';
	@override String get permissionRequestFailed => 'Không thể yêu cầu quyền. Vui lòng thử lại hoặc cấp quyền thủ công trong cài đặt Health Connect.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutVi implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giới Thiệu';
	@override String get tagline => 'Nhận thức về calo nhanh chóng, miễn phí và bảo mật';
	@override late final _TranslationsSettingsAboutOurStoryVi ourStory = _TranslationsSettingsAboutOurStoryVi._(_root);
	@override late final _TranslationsSettingsAboutPrivacyVi privacy = _TranslationsSettingsAboutPrivacyVi._(_root);
	@override late final _TranslationsSettingsAboutDeveloperVi developer = _TranslationsSettingsAboutDeveloperVi._(_root);
	@override late final _TranslationsSettingsAboutFeedbackVi feedback = _TranslationsSettingsAboutFeedbackVi._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoVi implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Bản dựng ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastVi implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giờ ăn sáng! 🍳';
	@override String get body => 'Đừng quên ghi lại bữa sáng của bạn';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchVi implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giờ ăn trưa! 🥗';
	@override String get body => 'Đến lúc ghi lại bữa trưa của bạn';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerVi implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giờ ăn tối! 🍽️';
	@override String get body => 'Đừng quên ghi lại bữa tối của bạn';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackVi implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giờ ăn nhẹ! 🍎';
	@override String get body => 'Đến lúc cho một món ăn nhẹ lành mạnh';
}

// Path: notifications.test
class _TranslationsNotificationsTestVi implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thông báo thử nghiệm';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapVi implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} cung cấp thông tin dinh dưỡng ước tính. Độ chính xác phụ thuộc vào dữ liệu bạn nhập và các biến thể thực phẩm. Sử dụng như một hướng dẫn, không phải là nguồn thông tin chính xác. Hãy tham khảo ý kiến chuyên gia để được tư vấn dinh dưỡng cá nhân.';
	@override late final _TranslationsDisclaimerSnapPortionSizeVi portionSize = _TranslationsDisclaimerSnapPortionSizeVi._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsVi preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsVi._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsVi ingredients = _TranslationsDisclaimerSnapIngredientsVi._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsVi databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsVi._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateVi implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Về ước tính trọng lượng';
	@override String get description => 'Sự thay đổi trọng lượng dự kiến là một ước tính lý thuyết dựa trên mô hình calo vào so với calo ra. Nó chỉ được dùng để hướng dẫn động lực, không phải dự đoán trọng lượng thực tế của bạn.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyVi calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyVi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsVi biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsVi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightVi waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightVi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceVi professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceVi._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsVi implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get description => 'Các chỉ số này giúp bạn hiểu nhu cầu năng lượng của cơ thể và hướng dẫn các mục tiêu dinh dưỡng của bạn.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrVi bmr = _TranslationsDisclaimerHealthMetricsBmrVi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeVi tdee = _TranslationsDisclaimerHealthMetricsTdeeVi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalVi dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalVi._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsVi implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Thông báo';
	@override String get healthConnect => 'Health Connect';
	@override String get wearOs => 'Wear OS';
	@override String get foodApiTests => 'Kiểm tra API Thực phẩm';
	@override String get profileApiTests => 'Kiểm tra API hồ sơ';
	@override String get feedback => 'Phản hồi';
	@override String get dataReset => 'Đặt lại dữ liệu';
	@override String get appInfo => 'Thông tin ứng dụng';
	@override String get shorebird => 'Shorebird';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionVi implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nhận diện thực phẩm thông minh';
	@override String get description => 'Chụp một bức ảnh và để AI xác định bữa ăn của bạn';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisVi implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Phân tích AI';
	@override String get description => 'Nhận thông tin dinh dưỡng ngay lập tức từ mô tả của bạn';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationVi implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tích hợp sức khỏe';
	@override String get description => 'Kết nối với Health Connect để có được cái nhìn sâu sắc hơn';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesVi implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Gầy';
	@override String get healthyWeight => 'Cân nặng khỏe mạnh';
	@override String get overweight => 'Thừa cân';
	@override String get obese => 'Béo phì';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesVi implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Chúng tôi có thể giúp bạn xây dựng một kế hoạch lành mạnh để đạt được trọng lượng cân bằng với những bữa ăn giàu dinh dưỡng.';
	@override String get healthy => 'Tuyệt vời! Bạn đang ở mức độ khỏe mạnh. Chúng tôi sẽ giúp bạn duy trì sức sống và mức năng lượng.';
	@override String overweight({required Object appLabel}) => '${appLabel} sẽ đơn giản hóa hành trình của bạn với việc theo dõi bằng AI để giúp bạn đạt được mục tiêu của mình một cách thoải mái.';
	@override String get obese => 'Chúng tôi ở đây để hỗ trợ bạn với hướng dẫn cá nhân hóa và các chiến lược bền vững cho các mục tiêu sức khỏe của bạn.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingVi implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Theo dõi calo tự động';
	@override String get description => 'Theo dõi calo đã đốt cháy từ các ứng dụng thể dục của bạn';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsVi implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thông tin tiến độ';
	@override String get description => 'Nhận thông tin chi tiết về xu hướng sức khỏe của bạn';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationVi implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tích hợp liền mạch';
	@override String get description => 'Đồng bộ dữ liệu từ các ứng dụng sức khỏe yêu thích của bạn';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessVi implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bạn không đơn độc';
	@override String get genericMessage => 'Nghiên cứu cho thấy việc theo dõi liên tục là dự đoán số 1 cho thành công lâu dài.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Đối với một ${age} tuổi ${gender} muốn ${goal}, việc theo dõi liên tục là dự đoán số 1 cho thành công.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} giúp bạn dễ dàng hơn gấp 10 lần so với việc thực hiện thủ công.';
	@override String get getStartedTitle => 'Sẵn sàng để bắt đầu chưa?';
	@override String get tipPhoto => 'Chụp ảnh bữa ăn của bạn để phân tích ngay lập tức';
	@override String get tipConsistency => 'Ghi chép thường xuyên để thấy được tiến bộ rõ rệt';
	@override String get tipProgress => 'Theo dõi tiến trình hàng ngày để giữ động lực';
	@override String get button => 'Đi nào';
	@override String get defaultGender => 'người';
	@override String get defaultGoal => 'khỏe mạnh hơn';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileVi implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hồ sơ sức khỏe của bạn';
	@override String bmiDescription({required Object bmi}) => 'Dựa trên các chỉ số của bạn, chỉ số BMI của bạn là ${bmi}.';
	@override String get finalizeDescription => 'Hãy hoàn thiện hồ sơ của bạn để tùy chỉnh trải nghiệm của bạn.';
	@override String get goalGain => 'tăng';
	@override String get goalLose => 'giảm';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Để đạt được mục tiêu của bạn, bạn sẽ ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Bạn đã đạt được trọng lượng mong muốn! Chúng tôi sẽ giúp bạn duy trì nó.';
	@override String get button => 'Đi nào';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleVi implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Khởi đầu tuyệt vời!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Bạn đã bước những bước đầu tiên hướng tới ${goalText}. Vì bạn đang ${activityText}, ${appLabel} sẽ điều chỉnh các mục tiêu của bạn để phù hợp với lối sống của bạn.';
	@override String get personalizedTargets => 'Mục tiêu calo cá nhân hóa';
	@override String get aiMealDetection => 'Nhận diện bữa ăn được hỗ trợ bởi AI';
	@override String get macroBreakdowns => 'Chi tiết về phân bổ chất dinh dưỡng';
	@override String get button => 'Đi nào';
	@override String get defaultGoal => 'các mục tiêu của bạn';
	@override String get defaultActivity => 'năng động';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightVi implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Giảm cân';
	@override String get description => 'Tạo một sự thiếu hụt calo để giảm cân';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightVi implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Giữ cân';
	@override String get description => 'Duy trì cân nặng hiện tại của bạn';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightVi implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tăng cân';
	@override String get description => 'Tạo một lượng calo dư thừa để tăng cân';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryVi implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ít hoạt động';
	@override String get description => 'Ít hoặc không tập thể dục';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveVi implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hoạt động nhẹ';
	@override String get description => 'Tập thể dục nhẹ 1-3 ngày/tuần';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveVi implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hoạt động vừa phải';
	@override String get description => 'Tập thể dục vừa phải 3-5 ngày/tuần';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveVi implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Rất năng động';
	@override String get description => 'Tập thể dục mạnh mẽ 6-7 ngày/tuần';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveVi implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Cực kỳ năng động';
	@override String get description => 'Tập thể dục rất nặng, công việc thể chất';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableVi implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kết nối sức khỏe không khả dụng';
	@override String get description => 'Kết nối sức khỏe không khả dụng trên thiết bị này. Nó yêu cầu Android 14 hoặc mới hơn.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsVi implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quyền';
	@override String get description => 'Các quyền sau đây được yêu cầu để cung cấp tích hợp Kết nối sức khỏe:';
	@override String get granted => 'Đã cấp';
	@override String get notGranted => 'Chưa cấp';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedVi caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedVi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadVi nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadVi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteVi nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteVi._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryVi implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Câu Chuyện Của Chúng Tôi';
	@override String content({required Object appLabel}) => '${appLabel} ra đời từ một nỗi bức xúc đơn giản: hầu hết các ứng dụng theo dõi calo đều quá phức tạp, yêu cầu nhập liệu thủ công liên tục, tính phí cao cho việc đăng ký, hoặc xâm phạm quyền riêng tư.\n\nLà một nhà phát triển độc lập, tôi muốn xây dựng một thứ gì đó đơn giản và công bằng hơn — một ứng dụng sử dụng AI để giảm bớt nỗ lực, giữ cho việc sử dụng nhanh chóng và miễn phí, và tôn trọng dữ liệu sức khỏe của bạn.\n\n${appLabel} là ứng dụng mà tôi ước ao có: không tài khoản, không theo dõi, không quảng cáo — chỉ những hiểu biết rõ ràng, thiết thực và mục tiêu sức khỏe của bạn.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyVi implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quyền Riêng Tư Của Bạn Quan Trọng';
	@override String get description => 'Quyền riêng tư không phải là một ý tưởng phụ — đó là một nguyên tắc thiết kế. Điều này có ý nghĩa gì trong thực tế:';
	@override String get noAccounts => 'Không yêu cầu tài khoản\nSử dụng ứng dụng ngay lập tức. Không cần đăng ký, không cần danh tính.';
	@override String noTracking({required Object appLabel}) => 'Không theo dõi hành vi\n${appLabel} không giám sát hoạt động của bạn, không xây dựng hồ sơ sử dụng, hoặc theo dõi bạn qua các ứng dụng hoặc trang web.';
	@override String noAds({required Object appLabel}) => 'Thiết kế không có quảng cáo\n${appLabel} được xây dựng để hoạt động mà không có quảng cáo hoặc kiếm tiền dựa trên dữ liệu.';
	@override String get noDataSelling => 'Không bán dữ liệu\nDữ liệu sức khỏe của bạn không bao giờ bị bán hoặc chia sẻ cho bên thứ ba.';
	@override String get localStorage => 'Lưu trữ ưu tiên cục bộ\nDữ liệu của bạn sẽ ở lại trên thiết bị của bạn.';
	@override String get privacyPolicy => 'Chính sách bảo mật';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperVi implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Được Xây Dựng Bởi Một Nhà Phát Triển Độc Lập';
	@override String description({required Object appLabel}) => '${appLabel} được xây dựng và duy trì bởi một nhà phát triển độc lập duy nhất tập trung vào việc tạo ra phần mềm sức khỏe tôn trọng quyền riêng tư.\n\nPhản hồi được đọc cá nhân và giúp định hình hướng đi của ứng dụng.';
	@override String get website => 'Trang web';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackVi implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Bạn có thích ${appLabel} không?';
	@override String description({required Object appLabel}) => 'Phản hồi của bạn giúp cải thiện ${appLabel} cho mọi người.';
	@override String get rateApp => 'Đánh giá trên Play Store';
	@override String get sendFeedback => 'Gửi Phản hồi';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeVi implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kích thước phần';
	@override String get description => 'Độ chính xác của các ước tính phụ thuộc rất nhiều vào việc bạn đánh giá đúng kích thước phần.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsVi implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Phương pháp chế biến';
	@override String description({required Object appLabel}) => 'Phương pháp chế biến có thể thay đổi đáng kể thành phần dinh dưỡng của thực phẩm. Các ước tính của ${appLabel} có thể không luôn dự đoán được những biến đổi này.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsVi implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nguyên liệu';
	@override String get description => 'Những món ăn phức tạp với nhiều nguyên liệu ẩn có thể dẫn đến ước tính kém chính xác.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsVi implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giới hạn cơ sở dữ liệu';
	@override String description({required Object appLabel}) => 'Cơ sở dữ liệu thực phẩm của ${appLabel} rất phong phú nhưng có thể không bao gồm mọi món ăn hay biến thể nào.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyVi implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Độ chính xác calo';
	@override String get description => 'Ước tính này chỉ chính xác như lượng calo bạn đã theo dõi vào và ra. Ghi chú kém chính xác sẽ dẫn đến ước tính không chính xác.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsVi implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Các yếu tố sinh học';
	@override String description({required Object appLabel}) => 'Sự thay đổi cân nặng thực tế bị ảnh hưởng bởi chuyển hóa, hormone, giấc ngủ, căng thẳng, độ ẩm, và các yếu tố cá nhân khác mà ${appLabel} không thể đo được.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightVi implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trọng lượng nước & Biến động';
	@override String get description => 'Trọng lượng hàng ngày bình thường có thể biến động đáng kể do giữ nước, tiêu hóa và thời gian. Ước tính không tính đến những thay đổi hàng ngày này.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceVi implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hướng dẫn chuyên nghiệp';
	@override String get description => 'Đừng sử dụng ước tính này để đưa ra quyết định y tế. Luôn tham khảo ý kiến bác sĩ hoặc chuyên gia dinh dưỡng được chứng nhận cho lời khuyên quản lý trọng lượng cá nhân hóa.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrVi implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tỷ lệ chuyển hóa cơ bản (BMR)';
	@override String get description => 'Tỷ lệ chuyển hóa cơ bản (BMR) là số calo mà cơ thể bạn đốt cháy khi nghỉ ngơi để duy trì các chức năng cơ bản như hô hấp và tuần hoàn. BMR phụ thuộc vào độ tuổi, giới tính, chiều cao và cân nặng của bạn. Một BMR cao có nghĩa là cơ thể bạn tự nhiên đốt cháy nhiều calo hơn khi nghỉ ngơi, thường do lượng cơ bắp nhiều hơn, độ tuổi trẻ hơn hoặc là nam giới. Một BMR thấp hơn thường chỉ ra ít khối lượng cơ bắp hơn, độ tuổi lớn hơn, hoặc là nữ giới.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeVi implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Chi tiêu năng lượng hàng ngày tổng cộng (TDEE) là tổng số calo mà bạn đốt cháy mỗi ngày, bao gồm BMR của bạn cộng với calo từ hoạt động thể chất và di chuyển hàng ngày. TDEE phụ thuộc vào BMR và mức độ hoạt động của bạn. Một TDEE cao có nghĩa là bạn đốt cháy nhiều calo hơn tổng thể, thường là do hoạt động nhiều hơn hoặc có BMR cao hơn. Một TDEE thấp hơn cho thấy hoạt động hàng ngày ít hơn hoặc BMR thấp hơn.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalVi implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mục tiêu hàng ngày';
	@override String get description => 'Mục tiêu hàng ngày là lượng calo mà bạn được khuyên nên tiêu thụ hàng ngày dựa trên TDEE và mục tiêu cân nặng của bạn. Để giảm cân, bạn tiêu thụ ít calo hơn TDEE của mình. Để duy trì cân nặng, bạn cần khớp với TDEE của mình. Để tăng cân, bạn tiêu thụ nhiều calo hơn TDEE của mình. Điều này giúp bạn đạt được thay đổi cân nặng mong muốn một cách lành mạnh.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedVi implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đọc tổng số calo đã đốt';
	@override String get description => 'Cho phép ứng dụng đọc tổng số calo bạn đã đốt từ Kết nối sức khỏe.';
	@override String get usage => 'Quyền này được sử dụng để hiển thị lượng calo bạn đốt hàng ngày trong ứng dụng, giúp bạn hiểu rõ hơn về tổng lượng năng lượng tiêu thụ trong suốt cả ngày.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadVi implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đọc dữ liệu dinh dưỡng';
	@override String get description => 'Cho phép ứng dụng đọc dữ liệu dinh dưỡng từ Kết nối sức khỏe.';
	@override String get usage => 'Quyền này cho phép ứng dụng đọc thông tin dinh dưỡng có thể đã được ghi lại bởi các ứng dụng khác kết nối với Kết nối sức khỏe, cung cấp cái nhìn toàn diện về dinh dưỡng của bạn.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteVi implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ghi dữ liệu dinh dưỡng';
	@override String get description => 'Cho phép ứng dụng ghi dữ liệu dinh dưỡng vào Kết nối sức khỏe.';
	@override String get usage => 'Quyền này cho phép ứng dụng đồng bộ hóa các bữa ăn bạn đã ghi với Kết nối sức khỏe, làm cho dữ liệu dinh dưỡng của bạn có sẵn cho các ứng dụng sức khỏe và thể dục khác mà bạn sử dụng.';
}

/// The flat map containing all translations for locale <vi>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsVi {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Tiếng Việt',
			'flag' => '🇻🇳',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => 'Chào mừng bạn đến với ${appLabel}',
			'onboarding.subtitle' => 'Người bạn đồng hành dinh dưỡng cá nhân của bạn được hỗ trợ bởi AI',
			'onboarding.getStarted' => 'Bắt đầu',
			'onboarding.features.foodRecognition.title' => 'Nhận diện thực phẩm thông minh',
			'onboarding.features.foodRecognition.description' => 'Chụp một bức ảnh và để AI xác định bữa ăn của bạn',
			'onboarding.features.aiAnalysis.title' => 'Phân tích AI',
			'onboarding.features.aiAnalysis.description' => 'Nhận thông tin dinh dưỡng ngay lập tức từ mô tả của bạn',
			'onboarding.features.healthIntegration.title' => 'Tích hợp sức khỏe',
			'onboarding.features.healthIntegration.description' => 'Kết nối với Health Connect để có được cái nhìn sâu sắc hơn',
			'onboarding.gender.title' => 'Giới tính của bạn là gì?',
			'onboarding.gender.description' => 'Giới tính giúp chúng tôi tính toán chính xác tỷ lệ trao đổi chất cơ bản (BMR) của bạn.',
			'onboarding.gender.next' => 'Tiếp theo',
			'onboarding.height.title' => 'Bạn cao bao nhiêu?',
			'onboarding.height.description' => 'Chiều cao của bạn giúp chúng tôi tính toán chỉ số BMI và nhu cầu năng lượng một cách chính xác.',
			'onboarding.height.metric' => 'Mét',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Tiếp theo',
			'onboarding.weight.currentTitle' => 'Cân nặng hiện tại của bạn là bao nhiêu?',
			'onboarding.weight.currentDescription' => 'Cân nặng hiện tại rất quan trọng để cá nhân hóa các mục tiêu hàng ngày của bạn.',
			'onboarding.weight.targetTitle' => 'Cân nặng mục tiêu của bạn là bao nhiêu?',
			'onboarding.weight.targetDescription' => 'Đặt mục tiêu cân nặng giúp chúng tôi xác định kế hoạch dài hạn của bạn.',
			'onboarding.weight.metric' => 'Kilogram',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Tiếp theo',
			'onboarding.age.title' => 'Ngày sinh của bạn là khi nào?',
			'onboarding.age.description' => 'Tuổi của bạn giúp chúng tôi tính toán nhu cầu calo một cách chính xác.',
			'onboarding.age.next' => 'Tiếp theo',
			'onboarding.bmiScale.underweight' => 'Gầy',
			'onboarding.bmiScale.healthy' => 'Khỏe mạnh',
			'onboarding.bmiScale.overweight' => 'Thừa cân',
			'onboarding.bmiScale.obese' => 'Béo phì',
			'onboarding.bmiScale.categories.underweight' => 'Gầy',
			'onboarding.bmiScale.categories.healthyWeight' => 'Cân nặng khỏe mạnh',
			'onboarding.bmiScale.categories.overweight' => 'Thừa cân',
			'onboarding.bmiScale.categories.obese' => 'Béo phì',
			'onboarding.bmiScale.messages.underweight' => 'Chúng tôi có thể giúp bạn xây dựng một kế hoạch lành mạnh để đạt được trọng lượng cân bằng với những bữa ăn giàu dinh dưỡng.',
			'onboarding.bmiScale.messages.healthy' => 'Tuyệt vời! Bạn đang ở mức độ khỏe mạnh. Chúng tôi sẽ giúp bạn duy trì sức sống và mức năng lượng.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} sẽ đơn giản hóa hành trình của bạn với việc theo dõi bằng AI để giúp bạn đạt được mục tiêu của mình một cách thoải mái.',
			'onboarding.bmiScale.messages.obese' => 'Chúng tôi ở đây để hỗ trợ bạn với hướng dẫn cá nhân hóa và các chiến lược bền vững cho các mục tiêu sức khỏe của bạn.',
			'onboarding.weightGoal.title' => 'Mục tiêu của bạn là gì?',
			'onboarding.weightGoal.description' => 'Chọn mục tiêu mà bạn muốn đạt được nhất',
			'onboarding.activityLevel.title' => 'Bạn hoạt động như thế nào?',
			'onboarding.activityLevel.description' => 'Điều này giúp chúng tôi tính toán nhu cầu calo hàng ngày của bạn một cách chính xác hơn',
			'onboarding.healthConnect.title' => 'Kết nối với Health Connect',
			'onboarding.healthConnect.description' => 'Đồng bộ dữ liệu sức khỏe của bạn để có cái nhìn sâu sắc hơn và theo dõi calo tự động',
			'onboarding.healthConnect.automaticTracking.title' => 'Theo dõi calo tự động',
			'onboarding.healthConnect.automaticTracking.description' => 'Theo dõi calo đã đốt cháy từ các ứng dụng thể dục của bạn',
			'onboarding.healthConnect.progressInsights.title' => 'Thông tin tiến độ',
			'onboarding.healthConnect.progressInsights.description' => 'Nhận thông tin chi tiết về xu hướng sức khỏe của bạn',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Tích hợp liền mạch',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Đồng bộ dữ liệu từ các ứng dụng sức khỏe yêu thích của bạn',
			'onboarding.healthConnect.connected' => 'Đã kết nối Health Connect',
			'onboarding.healthConnect.notConnected' => 'Chưa kết nối Health Connect',
			'onboarding.healthConnect.setup' => 'Cài đặt Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Bỏ qua tạm thời',
			'onboarding.healthConnect.statusConnected' => 'Health Connect đã được kết nối.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect đã được kết nối thành công!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Quyền truy cập đã bị từ chối. Vui lòng bật quyền truy cập Health Connect từ cài đặt điện thoại của bạn để sử dụng ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Lỗi cài đặt Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Bạn không đơn độc',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Nghiên cứu cho thấy việc theo dõi liên tục là dự đoán số 1 cho thành công lâu dài.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Đối với một ${age} tuổi ${gender} muốn ${goal}, việc theo dõi liên tục là dự đoán số 1 cho thành công.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} giúp bạn dễ dàng hơn gấp 10 lần so với việc thực hiện thủ công.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Sẵn sàng để bắt đầu chưa?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Chụp ảnh bữa ăn của bạn để phân tích ngay lập tức',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Ghi chép thường xuyên để thấy được tiến bộ rõ rệt',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Theo dõi tiến trình hàng ngày để giữ động lực',
			'onboarding.reinforcement.trackingSuccess.button' => 'Đi nào',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'người',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'khỏe mạnh hơn',
			'onboarding.reinforcement.healthProfile.title' => 'Hồ sơ sức khỏe của bạn',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Dựa trên các chỉ số của bạn, chỉ số BMI của bạn là ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Hãy hoàn thiện hồ sơ của bạn để tùy chỉnh trải nghiệm của bạn.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'tăng',
			'onboarding.reinforcement.healthProfile.goalLose' => 'giảm',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Để đạt được mục tiêu của bạn, bạn sẽ ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Bạn đã đạt được trọng lượng mong muốn! Chúng tôi sẽ giúp bạn duy trì nó.',
			'onboarding.reinforcement.healthProfile.button' => 'Đi nào',
			'onboarding.reinforcement.goalLifestyle.title' => 'Khởi đầu tuyệt vời!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Bạn đã bước những bước đầu tiên hướng tới ${goalText}. Vì bạn đang ${activityText}, ${appLabel} sẽ điều chỉnh các mục tiêu của bạn để phù hợp với lối sống của bạn.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Mục tiêu calo cá nhân hóa',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Nhận diện bữa ăn được hỗ trợ bởi AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Chi tiết về phân bổ chất dinh dưỡng',
			'onboarding.reinforcement.goalLifestyle.button' => 'Đi nào',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'các mục tiêu của bạn',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'năng động',
			'tabs.dashboard' => 'Bảng điều khiển',
			'tabs.history' => 'Lịch sử',
			'home.dailyGoal.title' => 'Đặt mục tiêu hàng ngày của bạn',
			'home.dailyGoal.titleSet' => 'Mục tiêu hàng ngày của bạn',
			'home.dailyGoal.description' => 'Sẵn sàng để bắt đầu hành trình sức khỏe? Đặt mục tiêu calo hàng ngày của bạn bên dưới để khởi đầu tiến trình.',
			'home.dailyGoal.descriptionSet' => 'La bàn của bạn đã được đặt! Đây là mục tiêu calo hàng ngày của bạn để hướng dẫn bạn.',
			'home.dailyGoal.yourGoal' => 'Mục tiêu của bạn',
			'home.dailyGoal.goal' => 'Mục tiêu',
			'home.dailyGoal.dailyCalories' => 'Calo hàng ngày (kcal)',
			'home.dailyGoal.setGoal' => 'Đặt mục tiêu',
			'home.dailyGoal.intake' => 'Tiêu thụ',
			'home.dailyGoal.burned' => 'Đã đốt cháy',
			'home.dailyGoal.weightImpact' => 'Tác động đến trọng lượng',
			'home.dailyGoal.estLoss' => 'Dự kiến giảm',
			'home.dailyGoal.estGain' => 'Dự kiến tăng',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Tóm tắt hàng ngày',
			'home.dailySummary.calories' => 'Calo',
			'home.dailySummary.carbs' => 'Carbohydrate',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Chất béo',
			'home.dailySummary.fiber' => 'Chất xơ',
			'home.dailySummary.grams' => 'gam',
			'home.dailySummary.chartAccessibilityLabel' => 'Biểu đồ các chất dinh dưỡng chính',
			'home.intakeProgress.title' => 'Phân chia Macro hôm nay',
			'home.intakeProgress.target' => 'Mục tiêu',
			'home.intakeProgress.current' => 'Hiện tại',
			'home.intakeHistory.title' => 'Lịch sử Macro 7 ngày',
			'home.intakeHistory.noHistoryYet' => 'Chưa có lịch sử nào',
			'home.intakeHistory.startLogging' => 'Bắt đầu ghi chú bữa ăn để xem xu hướng macro 7 ngày của bạn ở đây',
			'home.mealLog.title' => 'Bữa ăn đã ghi',
			'home.mealLog.emptyMessage' => 'Chụp ảnh bữa ăn cuối cùng của bạn để ghi chú ở đây.',
			'home.mealLog.noMealsToday' => 'Chưa ghi nhận bữa ăn nào cho hôm nay',
			'home.mealLog.seeAllMeals' => 'Xem tất cả bữa ăn',
			'home.mealDescription.title' => 'Thêm nhanh với AI',
			'home.mealDescription.description' => 'Mô tả bữa ăn của bạn, và hãy để AI xử lý các chi tiết.',
			'home.mealDescription.hint' => 'ví dụ: Vào bữa sáng tôi đã ăn một bát lớn yến mạch với một quả chuối thái lát và một muỗng whey ...',
			'home.mealDescription.analyzeMeal' => 'Phân tích bữa ăn',
			'home.favoriteMeals.title' => 'Bữa ăn yêu thích',
			'home.favoriteMeals.description' => 'Thêm nhanh một trong những bữa ăn yêu thích của bạn.',
			'home.favoriteMeals.noFavorites' => 'Chưa có bữa ăn yêu thích nào.',
			'home.favoriteMeals.addFavoriteHint' => 'Nhấn vào ngôi sao trên một bữa ăn để đánh dấu nó là yêu thích.',
			'home.favoriteMeals.seeAll' => 'Xem tất cả',
			'home.favoriteMeals.add' => 'Thêm',
			'home.mealSnap.title' => 'Chụp & Theo dõi Bữa ăn của bạn',
			'home.mealSnap.description' => 'Sử dụng camera của bạn để chụp ảnh thực phẩm cho phân tích AI.',
			'home.mealSnap.openCamera' => 'Mở Camera',
			'home.mealSnap.gallery' => 'Thư viện',
			'home.connectHealth.title' => 'Đồng bộ với Health Connect',
			'home.connectHealth.description' => 'Đồng bộ dữ liệu dinh dưỡng của bạn với Health Connect',
			'home.connectHealth.install' => 'Cài đặt',
			'home.connectHealth.connect' => 'Kết nối',
			'history.noMeals' => 'Chưa ghi nhận bữa ăn nào',
			'history.emptyMessage' => 'Chụp ảnh bữa ăn cuối cùng của bạn để ghi chú ở đây.',
			'history.today' => 'Hôm nay',
			'history.yesterday' => 'Hôm qua',
			'meal.ohNo' => 'Ôi không!',
			'meal.delete' => 'Xóa',
			'meal.editMeal' => 'Chỉnh sửa bữa ăn',
			'meal.addMeal' => 'Thêm bữa ăn',
			'meal.saveMeal' => 'Lưu bữa ăn',
			'meal.save' => 'Lưu',
			'meal.mealName' => 'Tên bữa ăn',
			'meal.mealNameHint' => 'ví dụ: Trứng bác với bánh mì nướng',
			'meal.mealQuantity' => 'Số lượng bữa ăn',
			'meal.mealQuantityHint' => 'vd: 1 bát, 2 lát',
			'meal.timeOfMeal' => 'Thời gian bữa ăn',
			'meal.timeOfMealHint' => 'Chọn thời gian bạn đã ăn bữa ăn',
			'meal.mealType' => 'Loại bữa ăn',
			'meal.nutrition.calories' => 'Calo',
			'meal.nutrition.carbs' => 'Carbohydrate (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Chất béo (g)',
			'meal.nutrition.fiber' => 'Chất xơ (g)',
			'meal.deleteConfirmation.title' => 'Xóa bữa ăn',
			'meal.deleteConfirmation.message' => 'Bạn có chắc chắn muốn xóa mục bữa ăn này không?',
			'meal.deleteConfirmation.cancel' => 'Hủy',
			'meal.deleteConfirmation.delete' => 'Xóa',
			'meal.addedToLog' => 'Bữa ăn đã được thêm vào nhật ký của bạn!',
			'meal.couldNotAdd' => ({required Object error}) => 'Không thể thêm bữa ăn: ${error}',
			'meal.savedSuccessfully' => 'Bữa ăn đã được thêm thành công!',
			'meal.updatedSuccessfully' => 'Bữa ăn đã được cập nhật thành công!',
			'meal.errorSaving' => ({required Object error}) => 'Lỗi khi lưu bữa ăn: ${error}',
			'meal.removedFromFavorites' => 'Đã xóa khỏi yêu thích!',
			'meal.savedAsFavorite' => 'Bữa ăn đã được lưu làm yêu thích!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Không thể cập nhật yêu thích: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Không thể xử lý: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Không thể xử lý hình ảnh: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Lỗi nén hình ảnh: ${error}',
			'meal.failedToSave' => 'Không thể lưu dữ liệu. Vui lòng thử lại.',
			'meal.skip' => 'Bỏ qua',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Câu hỏi ${current} trên ${total}',
			'meal.variation.noVariationsAvailable' => 'Không có biến thể nào',
			'favorites.title' => 'Yêu thích',
			'favorites.empty' => 'Chưa có bữa ăn yêu thích nào.',
			'profile.title' => 'Hồ sơ',
			'profile.noProfileData' => 'Chưa tìm thấy dữ liệu hồ sơ',
			'profile.yourProfile' => 'Hồ sơ của bạn',
			'profile.viewAndManage' => 'Xem và quản lý thông tin sức khỏe của bạn',
			'profile.sections.profile' => 'HỒ SƠ',
			'profile.sections.basicInformation' => 'THÔNG TIN CƠ BẢN',
			'profile.sections.goalsAndActivity' => 'MỤC TIÊU & HOẠT ĐỘNG',
			'profile.sections.calculatedValues' => 'CÁC GIÁ TRỊ TÍNH TOÁN',
			'profile.gender' => 'Giới tính',
			'profile.height' => 'Chiều cao',
			'profile.weight' => 'Cân nặng',
			'profile.age' => 'Tuổi',
			'profile.weightGoal' => 'Mục tiêu cân nặng',
			'profile.targetWeight' => 'Cân nặng mục tiêu',
			'profile.activityLevel' => 'Mức độ hoạt động',
			'profile.healthMetrics' => 'Các chỉ số sức khỏe',
			'profile.notSet' => 'Chưa đặt',
			'profile.years' => 'năm',
			'profile.updatedSuccessfully' => 'Hồ sơ đã được cập nhật thành công!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Mục tiêu hàng ngày',
			'profile.calculatedValues.calPerDay' => 'cal/ngày',
			'profile.calculatedValues.notAvailable' => 'Không có sẵn',
			'healthScore.title' => 'Điểm sức khỏe',
			'healthScore.whyThisScore' => 'Tại sao điểm này?',
			'healthScore.note' => 'Điểm này là ước lượng của AI dựa trên các thành phần và hàm lượng dinh dưỡng đã xác định. Luôn tham khảo ý kiến của chuyên gia cho lời khuyên về chế độ ăn uống.',
			'healthScore.unhealthy' => 'Không khỏe mạnh',
			'healthScore.healthy' => 'Khỏe mạnh',
			'healthScore.neutral' => 'Trung lập',
			'editProfile.title' => 'Chỉnh sửa hồ sơ',
			'editProfile.sections.personalInformation' => 'THÔNG TIN CÁ NHÂN',
			'editProfile.sections.physicalMeasurements' => 'THÔNG SỐ VẬT LÝ',
			'editProfile.sections.goalsAndActivity' => 'MỤC TIÊU & HOẠT ĐỘNG',
			'editProfile.gender' => 'Giới tính',
			'editProfile.dateOfBirth' => 'Ngày sinh',
			'editProfile.height' => 'Chiều cao',
			'editProfile.weight' => 'Cân nặng',
			'editProfile.weightGoal' => 'Mục tiêu cân nặng',
			'editProfile.activityLevel' => 'Mức độ hoạt động',
			'editProfile.metric' => 'Mét',
			'editProfile.imperial' => 'Imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Mét (cm)',
			'editProfile.imperialFtIn' => 'Imperial (ft/in)',
			'editProfile.metricKg' => 'Kilogram (kg)',
			'editProfile.imperialLbs' => 'Pound (lbs)',
			'editProfile.genders.male' => 'Nam',
			'editProfile.genders.female' => 'Nữ',
			'editProfile.genders.other' => 'Khác',
			'editProfile.weightGoals.loseWeight.name' => 'Giảm cân',
			'editProfile.weightGoals.loseWeight.description' => 'Tạo một sự thiếu hụt calo để giảm cân',
			'editProfile.weightGoals.maintainWeight.name' => 'Giữ cân',
			'editProfile.weightGoals.maintainWeight.description' => 'Duy trì cân nặng hiện tại của bạn',
			'editProfile.weightGoals.gainWeight.name' => 'Tăng cân',
			'editProfile.weightGoals.gainWeight.description' => 'Tạo một lượng calo dư thừa để tăng cân',
			'editProfile.activityLevels.sedentary.name' => 'Ít hoạt động',
			'editProfile.activityLevels.sedentary.description' => 'Ít hoặc không tập thể dục',
			'editProfile.activityLevels.lightlyActive.name' => 'Hoạt động nhẹ',
			'editProfile.activityLevels.lightlyActive.description' => 'Tập thể dục nhẹ 1-3 ngày/tuần',
			'editProfile.activityLevels.moderatelyActive.name' => 'Hoạt động vừa phải',
			'editProfile.activityLevels.moderatelyActive.description' => 'Tập thể dục vừa phải 3-5 ngày/tuần',
			'editProfile.activityLevels.veryActive.name' => 'Rất năng động',
			'editProfile.activityLevels.veryActive.description' => 'Tập thể dục mạnh mẽ 6-7 ngày/tuần',
			'editProfile.activityLevels.extremelyActive.name' => 'Cực kỳ năng động',
			'editProfile.activityLevels.extremelyActive.description' => 'Tập thể dục rất nặng, công việc thể chất',
			'settings.title' => 'Cài đặt',
			'settings.sections.profile' => 'HỒ SƠ',
			'settings.sections.localization' => 'ĐỊA PHƯƠNG HÓA',
			'settings.sections.notifications' => 'THÔNG BÁO',
			'settings.sections.healthConnect' => 'KẾT NỐI SỨC KHỎE',
			'settings.sections.supportAndLegal' => 'HỖ TRỢ & PHÁP LÝ',
			'settings.sections.about' => 'GIỚI THIỆU',
			'settings.sections.dangerZone' => 'KHU VỰC NGUY HIỂM',
			'settings.sections.developer' => 'NHÀ PHÁT TRIỂN',
			'settings.editProfile.title' => 'Chỉnh sửa hồ sơ',
			'settings.editProfile.subtitle' => 'Cập nhật thông tin cá nhân của bạn',
			'settings.language.title' => 'Ngôn ngữ',
			'settings.language.subtitle' => 'Chọn ngôn ngữ bạn ưa thích',
			'settings.language.searchHint' => 'Tìm kiếm ngôn ngữ...',
			'settings.language.noResults' => 'Không tìm thấy kết quả',
			'settings.heightUnit.title' => 'Đơn vị chiều cao',
			'settings.weightUnit.title' => 'Đơn vị cân nặng',
			'settings.mealReminders.title' => 'Nhắc nhở bữa ăn',
			'settings.mealReminders.subtitle' => 'Giúp bạn theo dõi đúng thời gian với những thông báo kịp thời',
			'settings.theme.title' => 'Chủ đề',
			'settings.theme.light' => 'Sáng',
			'settings.theme.dark' => 'Tối',
			'settings.theme.system' => 'Hệ thống',
			'settings.sendFeedback.title' => 'Gửi phản hồi',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Giúp chúng tôi cải thiện ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Phản hồi về ứng dụng ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Vui lòng cung cấp phản hồi của bạn bên dưới:',
			'settings.sendFeedback.appVersion' => 'Phiên bản ứng dụng',
			'settings.sendFeedback.device' => 'Thiết bị',
			'settings.sendFeedback.osVersion' => 'Phiên bản hệ điều hành',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Xóa tất cả dữ liệu',
			'settings.clearAllData.subtitle' => 'Xóa vĩnh viễn tất cả thông tin của bạn',
			'settings.clearAllData.confirmationTitle' => 'Có chắc chắn xóa tất cả dữ liệu?',
			'settings.clearAllData.confirmationMessage' => 'Hành động này không thể hoàn tác. Tất cả các bữa ăn bạn đã ghi, yêu thích và cài đặt hồ sơ sẽ bị xóa vĩnh viễn.',
			'settings.clearAllData.cancel' => 'Hủy',
			'settings.clearAllData.clearEverything' => 'Xóa tất cả',
			'settings.debugOptions.title' => 'Tùy chọn gỡ lỗi',
			'settings.developerModeEnabled' => 'Chế độ nhà phát triển đã được bật!',
			'settings.healthConnect.title' => 'Kết nối sức khỏe',
			'settings.healthConnect.subtitle' => 'Xem và quản lý quyền',
			'settings.healthConnect.unavailable.title' => 'Kết nối sức khỏe không khả dụng',
			'settings.healthConnect.unavailable.description' => 'Kết nối sức khỏe không khả dụng trên thiết bị này. Nó yêu cầu Android 14 hoặc mới hơn.',
			'settings.healthConnect.permissions.title' => 'Quyền',
			'settings.healthConnect.permissions.description' => 'Các quyền sau đây được yêu cầu để cung cấp tích hợp Kết nối sức khỏe:',
			'settings.healthConnect.permissions.granted' => 'Đã cấp',
			'settings.healthConnect.permissions.notGranted' => 'Chưa cấp',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Đọc tổng số calo đã đốt',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Cho phép ứng dụng đọc tổng số calo bạn đã đốt từ Kết nối sức khỏe.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Quyền này được sử dụng để hiển thị lượng calo bạn đốt hàng ngày trong ứng dụng, giúp bạn hiểu rõ hơn về tổng lượng năng lượng tiêu thụ trong suốt cả ngày.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Đọc dữ liệu dinh dưỡng',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Cho phép ứng dụng đọc dữ liệu dinh dưỡng từ Kết nối sức khỏe.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Quyền này cho phép ứng dụng đọc thông tin dinh dưỡng có thể đã được ghi lại bởi các ứng dụng khác kết nối với Kết nối sức khỏe, cung cấp cái nhìn toàn diện về dinh dưỡng của bạn.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Ghi dữ liệu dinh dưỡng',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Cho phép ứng dụng ghi dữ liệu dinh dưỡng vào Kết nối sức khỏe.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Quyền này cho phép ứng dụng đồng bộ hóa các bữa ăn bạn đã ghi với Kết nối sức khỏe, làm cho dữ liệu dinh dưỡng của bạn có sẵn cho các ứng dụng sức khỏe và thể dục khác mà bạn sử dụng.',
			'settings.healthConnect.managePermissions' => 'Quản lý Quyền',
			'settings.healthConnect.openSettings' => 'Mở Cài Đặt Kết Nối Sức Khỏe',
			'settings.healthConnect.requestPermissions' => 'Yêu Cầu Quyền Truy Cập',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Yêu cầu quyền đã bị hủy hoặc thất bại. Vui lòng thử lại hoặc cấp quyền thủ công trong cài đặt Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Không thể yêu cầu quyền. Vui lòng thử lại hoặc cấp quyền thủ công trong cài đặt Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'Giới Thiệu',
			'settings.about.tagline' => 'Nhận thức về calo nhanh chóng, miễn phí và bảo mật',
			'settings.about.ourStory.title' => 'Câu Chuyện Của Chúng Tôi',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} ra đời từ một nỗi bức xúc đơn giản: hầu hết các ứng dụng theo dõi calo đều quá phức tạp, yêu cầu nhập liệu thủ công liên tục, tính phí cao cho việc đăng ký, hoặc xâm phạm quyền riêng tư.\n\nLà một nhà phát triển độc lập, tôi muốn xây dựng một thứ gì đó đơn giản và công bằng hơn — một ứng dụng sử dụng AI để giảm bớt nỗ lực, giữ cho việc sử dụng nhanh chóng và miễn phí, và tôn trọng dữ liệu sức khỏe của bạn.\n\n${appLabel} là ứng dụng mà tôi ước ao có: không tài khoản, không theo dõi, không quảng cáo — chỉ những hiểu biết rõ ràng, thiết thực và mục tiêu sức khỏe của bạn.',
			'settings.about.privacy.title' => 'Quyền Riêng Tư Của Bạn Quan Trọng',
			'settings.about.privacy.description' => 'Quyền riêng tư không phải là một ý tưởng phụ — đó là một nguyên tắc thiết kế. Điều này có ý nghĩa gì trong thực tế:',
			'settings.about.privacy.noAccounts' => 'Không yêu cầu tài khoản\nSử dụng ứng dụng ngay lập tức. Không cần đăng ký, không cần danh tính.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Không theo dõi hành vi\n${appLabel} không giám sát hoạt động của bạn, không xây dựng hồ sơ sử dụng, hoặc theo dõi bạn qua các ứng dụng hoặc trang web.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Thiết kế không có quảng cáo\n${appLabel} được xây dựng để hoạt động mà không có quảng cáo hoặc kiếm tiền dựa trên dữ liệu.',
			'settings.about.privacy.noDataSelling' => 'Không bán dữ liệu\nDữ liệu sức khỏe của bạn không bao giờ bị bán hoặc chia sẻ cho bên thứ ba.',
			'settings.about.privacy.localStorage' => 'Lưu trữ ưu tiên cục bộ\nDữ liệu của bạn sẽ ở lại trên thiết bị của bạn.',
			'settings.about.privacy.privacyPolicy' => 'Chính sách bảo mật',
			'settings.about.developer.title' => 'Được Xây Dựng Bởi Một Nhà Phát Triển Độc Lập',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} được xây dựng và duy trì bởi một nhà phát triển độc lập duy nhất tập trung vào việc tạo ra phần mềm sức khỏe tôn trọng quyền riêng tư.\n\nPhản hồi được đọc cá nhân và giúp định hình hướng đi của ứng dụng.',
			'settings.about.developer.website' => 'Trang web',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Bạn có thích ${appLabel} không?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Phản hồi của bạn giúp cải thiện ${appLabel} cho mọi người.',
			'settings.about.feedback.rateApp' => 'Đánh giá trên Play Store',
			'settings.about.feedback.sendFeedback' => 'Gửi Phản hồi',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Bản dựng ${buildNumber}',
			'reminders.title' => 'Giữ đúng tiến trình với nhắc nhở',
			'reminders.description' => 'Nhận những nhắc nhở nhẹ nhàng để ghi lại bữa ăn và duy trì tính nhất quán với các mục tiêu dinh dưỡng của bạn',
			'reminders.notificationsEnabled' => 'Thông báo đã được bật',
			'reminders.notificationsDisabled' => 'Thông báo đã bị tắt',
			'reminders.enabledSubtitle' => 'Bạn sẽ nhận được nhắc nhở bữa ăn',
			'reminders.disabledSubtitle' => 'Bật thông báo để nhận nhắc nhở bữa ăn',
			'reminders.mealReminders' => 'Nhắc nhở bữa ăn',
			'reminders.breakfast' => 'Bữa sáng',
			'reminders.lunch' => 'Bữa trưa',
			'reminders.dinner' => 'Bữa tối',
			'reminders.snack' => 'Bữa ăn nhẹ',
			'reminders.unknown' => 'Không xác định',
			'reminders.change' => 'Thay đổi',
			'reminders.enableNotifications' => 'Bật thông báo',
			'reminders.skipForNow' => 'Bỏ qua tạm thời',
			'reminders.saveChanges' => 'Lưu thay đổi',
			'reminders.enabledSuccessfully' => 'Thông báo đã được bật thành công!',
			'reminders.permissionDenied' => 'Quyền thông báo đã bị từ chối',
			'reminders.errorEnabling' => ({required Object error}) => 'Lỗi khi bật thông báo: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Lỗi khi hoàn tất cài đặt: ${error}',
			'notifications.breakfast.title' => 'Giờ ăn sáng! 🍳',
			'notifications.breakfast.body' => 'Đừng quên ghi lại bữa sáng của bạn',
			'notifications.lunch.title' => 'Giờ ăn trưa! 🥗',
			'notifications.lunch.body' => 'Đến lúc ghi lại bữa trưa của bạn',
			'notifications.dinner.title' => 'Giờ ăn tối! 🍽️',
			'notifications.dinner.body' => 'Đừng quên ghi lại bữa tối của bạn',
			'notifications.snack.title' => 'Giờ ăn nhẹ! 🍎',
			'notifications.snack.body' => 'Đến lúc cho một món ăn nhẹ lành mạnh',
			'notifications.test.title' => 'Thông báo thử nghiệm',
			'login.title' => 'Đăng nhập',
			'login.signInWithGoogle' => 'Đăng nhập bằng Google',
			'login.signInFailed' => 'Đăng nhập bằng Google thất bại hoặc đã bị hủy.',
			'disclaimer.pleaseNote' => 'Xin lưu ý',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} cung cấp thông tin dinh dưỡng ước tính. Độ chính xác phụ thuộc vào dữ liệu bạn nhập và các biến thể thực phẩm. Sử dụng như một hướng dẫn, không phải là nguồn thông tin chính xác. Hãy tham khảo ý kiến chuyên gia để được tư vấn dinh dưỡng cá nhân.',
			'disclaimer.snap.portionSize.title' => 'Kích thước phần',
			'disclaimer.snap.portionSize.description' => 'Độ chính xác của các ước tính phụ thuộc rất nhiều vào việc bạn đánh giá đúng kích thước phần.',
			'disclaimer.snap.preparationMethods.title' => 'Phương pháp chế biến',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Phương pháp chế biến có thể thay đổi đáng kể thành phần dinh dưỡng của thực phẩm. Các ước tính của ${appLabel} có thể không luôn dự đoán được những biến đổi này.',
			'disclaimer.snap.ingredients.title' => 'Nguyên liệu',
			'disclaimer.snap.ingredients.description' => 'Những món ăn phức tạp với nhiều nguyên liệu ẩn có thể dẫn đến ước tính kém chính xác.',
			'disclaimer.snap.databaseLimitations.title' => 'Giới hạn cơ sở dữ liệu',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Cơ sở dữ liệu thực phẩm của ${appLabel} rất phong phú nhưng có thể không bao gồm mọi món ăn hay biến thể nào.',
			'disclaimer.weightEstimate.title' => 'Về ước tính trọng lượng',
			'disclaimer.weightEstimate.description' => 'Sự thay đổi trọng lượng dự kiến là một ước tính lý thuyết dựa trên mô hình calo vào so với calo ra. Nó chỉ được dùng để hướng dẫn động lực, không phải dự đoán trọng lượng thực tế của bạn.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Độ chính xác calo',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Ước tính này chỉ chính xác như lượng calo bạn đã theo dõi vào và ra. Ghi chú kém chính xác sẽ dẫn đến ước tính không chính xác.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Các yếu tố sinh học',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Sự thay đổi cân nặng thực tế bị ảnh hưởng bởi chuyển hóa, hormone, giấc ngủ, căng thẳng, độ ẩm, và các yếu tố cá nhân khác mà ${appLabel} không thể đo được.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Trọng lượng nước & Biến động',
			'disclaimer.weightEstimate.waterWeight.description' => 'Trọng lượng hàng ngày bình thường có thể biến động đáng kể do giữ nước, tiêu hóa và thời gian. Ước tính không tính đến những thay đổi hàng ngày này.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Hướng dẫn chuyên nghiệp',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Đừng sử dụng ước tính này để đưa ra quyết định y tế. Luôn tham khảo ý kiến bác sĩ hoặc chuyên gia dinh dưỡng được chứng nhận cho lời khuyên quản lý trọng lượng cá nhân hóa.',
			'disclaimer.healthMetrics.description' => 'Các chỉ số này giúp bạn hiểu nhu cầu năng lượng của cơ thể và hướng dẫn các mục tiêu dinh dưỡng của bạn.',
			'disclaimer.healthMetrics.bmr.title' => 'Tỷ lệ chuyển hóa cơ bản (BMR)',
			'disclaimer.healthMetrics.bmr.description' => 'Tỷ lệ chuyển hóa cơ bản (BMR) là số calo mà cơ thể bạn đốt cháy khi nghỉ ngơi để duy trì các chức năng cơ bản như hô hấp và tuần hoàn. BMR phụ thuộc vào độ tuổi, giới tính, chiều cao và cân nặng của bạn. Một BMR cao có nghĩa là cơ thể bạn tự nhiên đốt cháy nhiều calo hơn khi nghỉ ngơi, thường do lượng cơ bắp nhiều hơn, độ tuổi trẻ hơn hoặc là nam giới. Một BMR thấp hơn thường chỉ ra ít khối lượng cơ bắp hơn, độ tuổi lớn hơn, hoặc là nữ giới.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Chi tiêu năng lượng hàng ngày tổng cộng (TDEE) là tổng số calo mà bạn đốt cháy mỗi ngày, bao gồm BMR của bạn cộng với calo từ hoạt động thể chất và di chuyển hàng ngày. TDEE phụ thuộc vào BMR và mức độ hoạt động của bạn. Một TDEE cao có nghĩa là bạn đốt cháy nhiều calo hơn tổng thể, thường là do hoạt động nhiều hơn hoặc có BMR cao hơn. Một TDEE thấp hơn cho thấy hoạt động hàng ngày ít hơn hoặc BMR thấp hơn.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Mục tiêu hàng ngày',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Mục tiêu hàng ngày là lượng calo mà bạn được khuyên nên tiêu thụ hàng ngày dựa trên TDEE và mục tiêu cân nặng của bạn. Để giảm cân, bạn tiêu thụ ít calo hơn TDEE của mình. Để duy trì cân nặng, bạn cần khớp với TDEE của mình. Để tăng cân, bạn tiêu thụ nhiều calo hơn TDEE của mình. Điều này giúp bạn đạt được thay đổi cân nặng mong muốn một cách lành mạnh.',
			'common.close' => 'Đóng',
			'common.kContinue' => 'Tiếp tục',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Bạn có thích ${appLabel} không?',
			'feedbackRating.yes' => 'Có, tôi thích nó',
			'feedbackRating.no' => 'Không lắm',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Một đánh giá nhanh sẽ giúp người khác tìm thấy ${appLabel} và giúp quá trình phát triển tiếp tục. Bạn có thể dành chút thời gian để để lại một đánh giá không?',
			'feedbackRating.shareFeedbackViaEmail' => 'Phản hồi của bạn góp phần định hình những cải tiến tiếp theo — chúng tôi đọc từng phản hồi. Bạn có muốn chia sẻ suy nghĩ qua email không?',
			'feedbackRating.rateCta' => 'Đánh giá trên Cửa hàng Play',
			'feedbackRating.maybeLater' => 'Để sau',
			'feedbackRating.sendFeedback' => 'Gửi phản hồi',
			'feedbackRating.noThanks' => 'Không, cảm ơn',
			'feedbackRating.aboutUsDescription' => 'Được tạo nên với sự chăm chút bởi một nhóm nhỏ. Chúng tôi tập trung vào quyền riêng tư, tính đơn giản và hỗ trợ bạn xây dựng thói quen ăn uống lành mạnh hơn.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Bạn tò mò ai đứng sau ${appLabel}? Xem ',
			'feedbackRating.aboutUsLinkLabel' => 'Về chúng tôi',
			'errors.loadingProfileData' => 'Lỗi khi tải dữ liệu hồ sơ',
			'errors.somethingWentWrong' => 'Đã xảy ra lỗi.',
			'debug.title' => 'Tùy chọn gỡ lỗi',
			'debug.searchHint' => 'Tìm kiếm...',
			'debug.sections.notifications' => 'Thông báo',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.wearOs' => 'Wear OS',
			'debug.sections.foodApiTests' => 'Kiểm tra API Thực phẩm',
			'debug.sections.profileApiTests' => 'Kiểm tra API hồ sơ',
			'debug.sections.feedback' => 'Phản hồi',
			'debug.sections.dataReset' => 'Đặt lại dữ liệu',
			'debug.sections.appInfo' => 'Thông tin ứng dụng',
			'debug.sections.shorebird' => 'Shorebird',
			'debug.showActiveNotifications' => 'Hiển thị thông báo đang hoạt động',
			'debug.scheduleTestNotification' => 'Lên lịch thông báo thử nghiệm (10 giây)',
			'debug.triggerBreakfastNotification' => 'Kích hoạt thông báo bữa sáng',
			'debug.cancelAllNotifications' => 'Hủy tất cả thông báo',
			'debug.activeNotifications' => 'Thông báo đang hoạt động',
			'debug.noTitle' => 'Không có tiêu đề',
			'debug.noBody' => 'Không có nội dung',
			'debug.fetchTodaysSteps' => 'Lấy số bước hôm nay',
			'debug.fetchTodaysCalories' => 'Lấy calo hôm nay',
			'debug.fetchLatestWeight' => 'Lấy cân nặng mới nhất',
			'debug.fetchLatestHeight' => 'Lấy chiều cao mới nhất',
			'debug.writeTestWeight' => 'Ghi trọng lượng thử nghiệm (70kg)',
			'debug.writeTestHeight' => 'Ghi chiều cao thử nghiệm (175cm)',
			'debug.syncLast7Days' => 'Đồng bộ 7 ngày vừa qua',
			'debug.sync7DaysTitle' => 'Đồng bộ 7 ngày',
			'debug.checkCurrentLocale' => 'Kiểm tra địa phương hiện tại',
			'debug.currentLocale' => 'Địa phương hiện tại',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Ngôn ngữ: ${languageCode}\nQuốc gia: ${countryCode}\nHệ thống đơn vị: ${unitSystem}',
			'debug.latestWeight' => 'Cân nặng mới nhất',
			'debug.latestHeight' => 'Chiều cao mới nhất',
			'debug.todaysCalories' => 'Calo hôm nay',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'Tổng calo đã đốt cháy: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'Đã đồng bộ thành công ${count} điểm dữ liệu cho bước, calo và cân nặng trong 7 ngày qua.',
			'debug.noWeightData' => 'Không tìm thấy dữ liệu cân nặng trong 30 ngày qua.',
			'debug.noHeightData' => 'Không tìm thấy dữ liệu chiều cao trong năm qua.',
			'debug.noCalorieData' => 'Không tìm thấy dữ liệu calo cho hôm nay.',
			'debug.weightWritten' => 'Ghi trọng lượng thử nghiệm thành công (70kg).',
			'debug.weightWriteFailed' => 'Không thể ghi trọng lượng thử nghiệm.',
			'debug.heightWritten' => 'Ghi chiều cao thử nghiệm thành công (175cm).',
			'debug.heightWriteFailed' => 'Không thể ghi chiều cao thử nghiệm.',
			'debug.noNotifications' => 'Không có thông báo đang hoạt động.',
			'debug.testNotificationScheduled' => 'Thời gian thử nghiệm đã được lên lịch sau 10 giây.',
			'debug.testNotificationBody' => 'Đây là thông báo thử nghiệm được lên lịch sau 10 giây.',
			'debug.breakfastNotificationTriggered' => 'Thông báo bữa sáng đã được kích hoạt.',
			'debug.allNotificationsCancelled' => 'Tất cả thông báo đã được hủy.',
			'debug.fetchingData' => 'Đang lấy dữ liệu cho 7 ngày vừa qua...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'debug.showFeedbackRatingSheet' => 'Hiển thị hộp phản hồi/đánh giá',
			'debug.clearUserPreferences' => 'Xóa tùy chọn người dùng',
			'debug.clearUserPreferencesConfirmationTitle' => 'Xóa tùy chọn người dùng?',
			'debug.clearUserPreferencesConfirmationMessage' => 'Giao diện, ngôn ngữ và tùy chọn phản hồi sẽ được đặt lại. Bữa ăn và hồ sơ sẽ không bị ảnh hưởng.',
			'debug.clearUserProfile' => 'Xóa hồ sơ người dùng',
			'debug.clearUserProfileConfirmationTitle' => 'Xóa hồ sơ người dùng?',
			'debug.clearUserProfileConfirmationMessage' => 'Dữ liệu hồ sơ của bạn (mục tiêu hàng ngày, chiều cao, cân nặng, v.v.) sẽ bị xóa. Bữa ăn và tùy chọn sẽ không bị ảnh hưởng.',
			'debug.clear' => 'Xóa',
			'debug.cancel' => 'Hủy',
			'debug.checkWatchConnection' => 'Kiểm tra kết nối đồng hồ',
			'debug.sendTestMessage' => 'Gửi tin nhắn thử',
			'debug.sendTestMessageSubtitle' => 'Gửi một tin nhắn thử đơn giản tới đồng hồ',
			'debug.sendTestMealData' => 'Gửi dữ liệu bữa ăn thử',
			'debug.sendTestMealDataSubtitle' => 'Gửi dữ liệu mẫu bữa ăn tới đồng hồ',
			'debug.sendTestCalorieGoal' => 'Gửi mục tiêu calo thử',
			'debug.sendTestCalorieGoalSubtitle' => 'Gửi mục tiêu calo mẫu tới đồng hồ',
			'debug.viewReceivedMessages' => 'Xem tin nhắn đã nhận',
			'debug.viewReceivedMessagesSubtitle' => 'Xem tin nhắn nhận từ đồng hồ',
			'debug.watchConnected' => 'Đồng hồ đã kết nối ✓',
			'debug.device' => 'Thiết bị',
			'debug.nearby' => 'Gần đó',
			'debug.yes' => 'Có',
			'debug.no' => 'Không',
			'debug.connectedDevices' => 'Thiết bị đã kết nối',
			'debug.deviceInfoUnavailable' => '(Thông tin thiết bị không có sẵn)',
			'debug.unknownDevice' => 'Thiết bị không xác định',
			'debug.watchNotConnected' => 'Đồng hồ chưa kết nối ✗',
			'debug.watchNotConnectedHint' => 'Hãy đảm bảo:\n• Cả hai thiết bị đã ghép đôi\n• Ứng dụng trên đồng hồ đang chạy\n• Cả hai ứng dụng đang ở chế độ debug/staging',
			'debug.watchConnection' => 'Kết nối đồng hồ',
			'debug.errorCheckingConnection' => ({required Object error}) => 'Lỗi khi kiểm tra kết nối: ${error}',
			'debug.helloFromPhone' => 'Xin chào từ điện thoại!',
			'debug.testMessageSentSuccess' => 'Đã gửi tin nhắn thử thành công!',
			'debug.testMessageFailed' => 'Gửi tin nhắn thử thất bại. Kiểm tra kết nối đồng hồ.',
			'debug.errorSendingMessage' => ({required Object error}) => 'Lỗi khi gửi tin nhắn: ${error}',
			'debug.testMeal' => 'Bữa ăn thử',
			'debug.testMealDataSentSuccess' => 'Đã gửi dữ liệu bữa ăn thử thành công!',
			'debug.failedToSendMealData' => 'Gửi dữ liệu bữa ăn thất bại. Kiểm tra kết nối đồng hồ.',
			'debug.errorSendingMealData' => ({required Object error}) => 'Lỗi khi gửi dữ liệu bữa ăn: ${error}',
			'debug.testCalorieGoalSentSuccess' => 'Đã gửi mục tiêu calo thử thành công!',
			'debug.failedToSendCalorieGoal' => 'Gửi mục tiêu calo thất bại. Kiểm tra kết nối đồng hồ.',
			'debug.errorSendingCalorieGoal' => ({required Object error}) => 'Lỗi khi gửi mục tiêu calo: ${error}',
			'debug.testAnalyzeImage' => 'Thử phân tích ảnh',
			'debug.testAnalyzeImageSubtitle' => 'Tải ảnh thử cố định lên',
			'debug.testDetectImage' => 'Thử phát hiện ảnh',
			'debug.testDetectImageSubtitle' => 'Phát hiện bữa ăn từ URL ảnh',
			'debug.detectImageFromGallery' => 'Phát hiện ảnh từ Thư viện',
			'debug.detectImageFromGallerySubtitle' => 'Chọn ảnh, tải lên bucket và ước tính calo',
			'debug.testDetectText' => 'Thử phát hiện văn bản',
			'debug.testDetectTextSubtitle' => 'Phát hiện bữa ăn từ mô tả văn bản',
			'debug.testMealLoggingWithVariations' => 'Thử ghi nhận bữa ăn với biến thể',
			'debug.testMealLoggingWithVariationsSubtitle' => 'Thử toàn bộ quy trình ghi nhận bữa ăn có biến thể',
			'debug.mockMealWithVariations' => 'Bữa ăn mẫu có biến thể',
			_ => null,
		} ?? switch (path) {
			'debug.mockMealWithVariationsSubtitle' => 'Xem trước giao diện biến thể + mẹo mà không ghi nhận',
			'debug.mockMealName' => 'Gà nướng với cơm và rau',
			'debug.mockTip' => 'Đây là mẹo giả để xem giao diện. Bữa ăn không được ghi nhận.',
			'debug.mockMealDescription' => 'Bữa ăn mẫu để gỡ lỗi',
			'debug.portionSizeQuestion' => 'Kích thước khẩu phần như thế nào?',
			'debug.extraSidesQuestion' => 'Có món phụ thêm không?',
			'debug.optionSmall' => 'Nhỏ',
			'debug.optionMedium' => 'Vừa',
			'debug.optionLarge' => 'Lớn',
			'debug.optionNone' => 'Không có',
			'debug.optionSideSalad' => 'Salad phụ',
			'debug.optionBreadRoll' => 'Ổ bánh mì',
			'debug.testingAnalyzeImage' => 'Đang kiểm tra API analyzeImage...',
			'debug.testingDetectImage' => 'Đang kiểm tra API detectImage...',
			'debug.testingDetectText' => 'Đang kiểm tra API detectText...',
			'debug.selectingImageFromGallery' => 'Đang chọn ảnh từ thư viện...',
			'debug.noImageSelected' => 'Chưa chọn ảnh',
			'debug.compressingImage' => 'Đang nén ảnh...',
			'debug.uploadingImageAndDetecting' => 'Đang tải ảnh lên bucket và phát hiện bữa ăn...',
			'debug.testingMealLoggingFlow' => 'Đang kiểm tra quy trình ghi nhận bữa ăn có biến thể...',
			'debug.testUpdateProfile' => 'Kiểm tra cập nhật hồ sơ',
			'debug.testUpdateProfileSubtitle' => 'Gửi hồ sơ mẫu (POST) tới backend',
			'debug.testingProfileApi' => 'Đang kiểm tra API hồ sơ...',
			'debug.profileUpdateSuccess' => 'API hồ sơ phản hồi thành công',
			'debug.profileUpdateFailed' => ({required Object error}) => 'Lỗi API hồ sơ: ${error}',
			'debug.noMealIdentifiedInResponse' => 'Không xác định được bữa ăn trong phản hồi',
			'debug.mealIdentified' => 'Đã xác định bữa ăn',
			'debug.confidence' => 'Độ tin cậy',
			'debug.tip' => 'Mẹo',
			'debug.mealName' => 'Tên bữa ăn',
			'debug.calories' => 'Calo',
			'debug.protein' => 'Protein',
			'debug.carbs' => 'Tinh bột',
			'debug.fat' => 'Chất béo',
			'debug.noMealInfo' => 'Không có thông tin bữa ăn',
			'debug.na' => 'N/A',
			'debug.analyzeImageResult' => 'Kết quả phân tích ảnh',
			'debug.detectImageResult' => 'Kết quả phát hiện ảnh',
			'debug.detectImageFromGalleryResult' => 'Kết quả phát hiện ảnh từ Thư viện',
			'debug.detectTextResult' => 'Kết quả phát hiện văn bản',
			'debug.errorGeneric' => ({required Object error}) => 'Lỗi: ${error}',
			'debug.variationsCount' => 'Biến thể',
			'debug.userPreferencesCleared' => 'Đã xóa tùy chọn người dùng',
			'debug.userProfileCleared' => 'Đã xóa hồ sơ người dùng',
			'debug.checkForUpdate' => 'Kiểm tra cập nhật',
			'debug.showPatchNumber' => 'Hiển thị số bản vá',
			'debug.showUpdateAvailable' => 'Hiện thông báo có bản cập nhật',
			'debug.updateAvailable' => 'Có bản cập nhật',
			'debug.upToDate' => 'Mới nhất',
			'debug.shorebirdUnavailable' => 'Shorebird không khả dụng trong môi trường này.',
			'debug.patchNumberLabel' => 'Số bản vá',
			'debug.noPatchInstalled' => 'Chưa cài bản vá',
			'debug.todaysSteps' => 'Số bước hôm nay',
			'debug.stepsLabel' => 'Bước',
			'debug.weightLabel' => ({required Object value}) => 'Cân nặng: ${value} kg',
			'debug.heightLabel' => ({required Object value}) => 'Chiều cao: ${value} cm',
			'debug.receivedMessagesFromWatch' => 'Tin nhắn nhận từ đồng hồ',
			'debug.noMessagesReceivedYet' => 'Chưa có tin nhắn nào.\n\nGửi dữ liệu thử từ đồng hồ để xem tin nhắn ở đây.',
			'debug.messagesCleared' => 'Đã xóa tin nhắn',
			'health.syncFailed' => 'Không thể đồng bộ với Health Connect',
			'health.mealSynced' => 'Bữa ăn đã được đồng bộ với Health Connect',
			_ => null,
		};
	}
}
