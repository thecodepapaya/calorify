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
	@override late final _TranslationsErrorsVi errors = _TranslationsErrorsVi._(_root);
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
	@override late final _TranslationsHealthVi health = _TranslationsHealthVi._(_root);
}

// Path: errors
class _TranslationsErrorsVi implements TranslationsErrorsEn {
	_TranslationsErrorsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Bạn đã gửi quá nhiều yêu cầu. Vui lòng đợi một lát trước khi thử lại.';
	@override String get networkError => 'Lỗi mạng. Vui lòng kiểm tra kết nối internet của bạn.';
	@override String get unknownError => 'Đã xảy ra sự cố. Vui lòng thử lại sau.';
	@override String get loadingProfileData => 'Lỗi tải dữ liệu hồ sơ';
	@override String get somethingWentWrong => 'Đã xảy ra sự cố.';
	@override String get retry => 'Thử lại';
}

// Path: onboarding
class _TranslationsOnboardingVi implements TranslationsOnboardingEn {
	_TranslationsOnboardingVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Chào mừng đến với ${appLabel}';
	@override String get subtitle => 'Người bạn đồng hành dinh dưỡng cá nhân được hỗ trợ bởi AI';
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
	@override String get dashboard => 'Tổng quan';
	@override String get history => 'Lịch sử';
}

// Path: home
class _TranslationsHomeVi implements TranslationsHomeEn {
	_TranslationsHomeVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryVi aiSummary = _TranslationsHomeAiSummaryVi._(_root);
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
	@override String get noMeals => 'Chưa có bữa ăn nào';
	@override String get emptyMessage => 'Chụp ảnh bữa ăn gần nhất của bạn để ghi tại đây.';
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
	@override String get mealNameHint => 'vd., Trứng bác với bánh mì nướng';
	@override String get mealQuantity => 'Số lượng bữa';
	@override String get mealQuantityHint => 'vd., 1 bát, 2 lát';
	@override String get timeOfMeal => 'Thời gian ăn';
	@override String get timeOfMealHint => 'Chọn thời điểm bạn ăn bữa này';
	@override String get mealType => 'Loại bữa ăn';
	@override late final _TranslationsMealNutritionVi nutrition = _TranslationsMealNutritionVi._(_root);
	@override late final _TranslationsMealDeleteConfirmationVi deleteConfirmation = _TranslationsMealDeleteConfirmationVi._(_root);
	@override String get addedToLog => 'Đã thêm bữa ăn vào nhật ký!';
	@override String couldNotAdd({required Object error}) => 'Không thể thêm bữa ăn: ${error}';
	@override String get savedSuccessfully => 'Thêm bữa ăn thành công!';
	@override String get updatedSuccessfully => 'Cập nhật bữa ăn thành công!';
	@override String errorSaving({required Object error}) => 'Lỗi khi lưu bữa ăn: ${error}';
	@override String get removedFromFavorites => 'Đã xóa khỏi yêu thích!';
	@override String get savedAsFavorite => 'Đã lưu bữa ăn vào mục yêu thích!';
	@override String get unfavorite => 'Bỏ yêu thích';
	@override String couldNotUpdateFavorite({required Object error}) => 'Không thể cập nhật yêu thích: ${error}';
	@override String get feedbackThanks => 'Cảm ơn phản hồi!';
	@override String get reanalysisUpdated => 'Đã cập nhật phân tích bữa ăn dựa trên phản hồi của bạn.';
	@override String failedToProcess({required Object error}) => 'Xử lý thất bại: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Xử lý ảnh thất bại: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Lỗi nén ảnh: ${error}';
	@override String get failedToSave => 'Không thể lưu dữ liệu. Vui lòng thử lại.';
	@override String get skip => 'Bỏ qua';
	@override late final _TranslationsMealQuestionFlowVi questionFlow = _TranslationsMealQuestionFlowVi._(_root);
	@override late final _TranslationsMealAnalysisVi analysis = _TranslationsMealAnalysisVi._(_root);
	@override late final _TranslationsMealFeedbackVi feedback = _TranslationsMealFeedbackVi._(_root);
}

// Path: favorites
class _TranslationsFavoritesVi implements TranslationsFavoritesEn {
	_TranslationsFavoritesVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yêu thích';
	@override String get empty => 'Chưa có bữa ăn yêu thích.';
	@override String get searchPlaceholder => 'Tìm bữa ăn yêu thích';
	@override String get searchEmptyTitle => 'Không có mục yêu thích phù hợp';
	@override String get searchEmptySubtitle => 'Hãy thử tên bữa ăn, số lượng hoặc loại bữa khác.';
	@override String get sortLabel => 'Sắp xếp mục yêu thích';
	@override String get undo => 'Hoàn tác';
	@override String removed({required Object name}) => 'Đã xóa ${name} khỏi mục yêu thích';
	@override late final _TranslationsFavoritesSortOptionsVi sortOptions = _TranslationsFavoritesSortOptionsVi._(_root);
}

// Path: profile
class _TranslationsProfileVi implements TranslationsProfileEn {
	_TranslationsProfileVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hồ sơ';
	@override String get noProfileData => 'Không tìm thấy dữ liệu hồ sơ';
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
	@override String get healthMetrics => 'Chỉ số sức khỏe';
	@override String get notSet => 'Chưa đặt';
	@override String get years => 'tuổi';
	@override String get updatedSuccessfully => 'Cập nhật hồ sơ thành công!';
	@override late final _TranslationsProfileCalculatedValuesVi calculatedValues = _TranslationsProfileCalculatedValuesVi._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreVi implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Điểm sức khỏe';
	@override String get whyThisScore => 'Vì sao điểm này?';
	@override String get note => 'Điểm số này là ước tính của AI dựa trên thành phần và mật độ dinh dưỡng được nhận diện. Luôn tham khảo chuyên gia cho tư vấn dinh dưỡng.';
	@override String get unhealthy => 'Không lành mạnh';
	@override String get healthy => 'Lành mạnh';
	@override String get neutral => 'Trung tính';
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
	@override String get metric => 'Hệ mét';
	@override String get imperial => 'Hệ Anh';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Hệ mét (cm)';
	@override String get imperialFtIn => 'Hệ Anh (ft/in)';
	@override String get metricKg => 'Hệ mét (kg)';
	@override String get imperialLbs => 'Hệ Anh (lbs)';
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
	@override late final _TranslationsSettingsExportMealHistoryVi exportMealHistory = _TranslationsSettingsExportMealHistoryVi._(_root);
	@override late final _TranslationsSettingsClearAllDataVi clearAllData = _TranslationsSettingsClearAllDataVi._(_root);
	@override late final _TranslationsSettingsDebugOptionsVi debugOptions = _TranslationsSettingsDebugOptionsVi._(_root);
	@override String get developerModeEnabled => 'Đã bật chế độ nhà phát triển!';
	@override late final _TranslationsSettingsHealthConnectVi healthConnect = _TranslationsSettingsHealthConnectVi._(_root);
	@override late final _TranslationsSettingsAboutVi about = _TranslationsSettingsAboutVi._(_root);
	@override late final _TranslationsSettingsAppInfoVi appInfo = _TranslationsSettingsAppInfoVi._(_root);
}

// Path: reminders
class _TranslationsRemindersVi implements TranslationsRemindersEn {
	_TranslationsRemindersVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giữ đúng lộ trình với nhắc nhở';
	@override String get description => 'Nhận nhắc nhở nhẹ nhàng để ghi bữa ăn và duy trì đều đặn với mục tiêu dinh dưỡng';
	@override String get notificationsEnabled => 'Đã bật thông báo';
	@override String get notificationsDisabled => 'Đã tắt thông báo';
	@override String get enabledSubtitle => 'Bạn sẽ nhận được nhắc nhở bữa ăn';
	@override String get disabledSubtitle => 'Bật thông báo để nhận nhắc nhở bữa ăn';
	@override String get mealReminders => 'Nhắc nhở bữa ăn';
	@override String get breakfast => 'Bữa sáng';
	@override String get lunch => 'Bữa trưa';
	@override String get dinner => 'Bữa tối';
	@override String get snack => 'Bữa phụ';
	@override String get unknown => 'Không xác định';
	@override String get change => 'Thay đổi';
	@override String get enableNotifications => 'Bật thông báo';
	@override String get skipForNow => 'Bỏ qua lúc này';
	@override String get saveChanges => 'Lưu thay đổi';
	@override String get enabledSuccessfully => 'Đã bật thông báo thành công!';
	@override String get permissionDenied => 'Quyền thông báo bị từ chối';
	@override String errorEnabling({required Object error}) => 'Lỗi khi bật thông báo: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Lỗi khi hoàn tất thiết lập: ${error}';
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
	@override String get signInWithGoogle => 'Đăng nhập với Google';
	@override String get signInFailed => 'Đăng nhập Google thất bại hoặc đã bị hủy.';
}

// Path: disclaimer
class _TranslationsDisclaimerVi implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Lưu ý';
	@override late final _TranslationsDisclaimerSnapVi snap = _TranslationsDisclaimerSnapVi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateVi weightEstimate = _TranslationsDisclaimerWeightEstimateVi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsVi healthMetrics = _TranslationsDisclaimerHealthMetricsVi._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureVi calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureVi._(_root);
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
	@override String get yes => 'Có, tôi đang rất thích';
	@override String get no => 'Không hẳn';
	@override String get rateStepHeading => 'Đánh giá trên Play Store';
	@override String get emailStepHeading => 'Gửi phản hồi qua email';
	@override String soloDevMessage({required Object appLabel}) => 'Một đánh giá nhanh giúp người khác tìm thấy ${appLabel} và tiếp thêm động lực phát triển. Bạn có thể dành chút thời gian để đánh giá không?';
	@override String get shareFeedbackViaEmail => 'Phản hồi của bạn định hình những gì tiếp theo — chúng tôi đọc mọi tin nhắn. Bạn có muốn chia sẻ suy nghĩ qua email không?';
	@override String get rateCta => 'Đánh giá trên Play Store';
	@override String get maybeLater => 'Để sau';
	@override String get sendFeedback => 'Gửi phản hồi';
	@override String get noThanks => 'Không, cảm ơn';
	@override String get aboutUsDescription => 'Được làm với sự chăm chút bởi một nhóm nhỏ. Chúng tôi tập trung vào quyền riêng tư, sự đơn giản, và giúp bạn xây dựng thói quen ăn uống tốt hơn.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Tò mò ai đứng sau ${appLabel}? Xem ';
	@override String get aboutUsLinkLabel => 'Giới thiệu về chúng tôi';
	@override String get thankYouMessage => 'Cảm ơn! Chúng tôi sẽ hỏi lại vào lúc khác.';
}

// Path: health
class _TranslationsHealthVi implements TranslationsHealthEn {
	_TranslationsHealthVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Không thể đồng bộ với Health Connect';
	@override String get mealSynced => 'Đã đồng bộ bữa ăn với Health Connect';
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
	@override String get description => 'Giới tính giúp chúng tôi tính toán chính xác tỷ lệ trao đổi chất cơ bản (BMR).';
	@override String get next => 'Tiếp';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightVi implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chiều cao của bạn?';
	@override String get description => 'Chiều cao giúp chúng tôi tính BMI và nhu cầu năng lượng chính xác.';
	@override String get metric => 'Hệ mét';
	@override String get imperial => 'Hệ Anh';
	@override String get next => 'Tiếp';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightVi implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Cân nặng hiện tại của bạn?';
	@override String get currentDescription => 'Cân nặng hiện tại rất quan trọng để cá nhân hóa mục tiêu hằng ngày.';
	@override String get targetTitle => 'Cân nặng mục tiêu của bạn?';
	@override String get targetDescription => 'Đặt mục tiêu cân nặng giúp chúng tôi xây dựng kế hoạch dài hạn.';
	@override String get metric => 'Hệ mét';
	@override String get imperial => 'Hệ Anh';
	@override String get next => 'Tiếp';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeVi implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ngày sinh của bạn?';
	@override String get description => 'Tuổi tác giúp chúng tôi tính toán nhu cầu calo chính xác.';
	@override String get next => 'Tiếp';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleVi implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Thiếu';
	@override String get healthy => 'Khỏe mạnh';
	@override String get overweight => 'Thừa';
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
	@override String get description => 'Chọn mục tiêu phù hợp nhất với điều bạn muốn đạt được';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelVi implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mức độ hoạt động của bạn?';
	@override String get description => 'Điều này giúp chúng tôi tính nhu cầu calo hằng ngày chính xác hơn';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectVi implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kết nối với Health Connect';
	@override String get description => 'Đồng bộ dữ liệu sức khỏe để có góc nhìn tốt hơn và tự động theo dõi calo';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingVi automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingVi._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsVi progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsVi._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationVi seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationVi._(_root);
	@override String get connected => 'Đã kết nối Health Connect';
	@override String get notConnected => 'Chưa kết nối Health Connect';
	@override String get setup => 'Thiết lập Health Connect';
	@override String get skipForNow => 'Bỏ qua lúc này';
	@override String get statusConnected => 'Health Connect đã được kết nối.';
	@override String get statusSuccess => 'Đã kết nối Health Connect thành công!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Bị từ chối quyền. Vui lòng bật quyền Health Connect từ cài đặt điện thoại cho ${appLabel}.';
	@override String statusError({required Object error}) => 'Lỗi thiết lập Health Connect: ${error}';
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

// Path: home.aiSummary
class _TranslationsHomeAiSummaryVi implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tóm tắt bởi AI';
	@override String get logMore => 'Ghi thêm bữa ăn trong vài ngày tới để nhận góc nhìn cá nhân hóa từ AI.';
	@override String get loading => 'Đang tải tóm tắt của bạn...';
	@override String mealCount({required Object count}) => '${count} bữa ăn đã ghi';
	@override String macroBalanceScore({required Object score}) => 'Điểm cân bằng ${score}';
	@override String get topFoods => 'Thực phẩm hàng đầu';
	@override String get trendUp => 'Calo có xu hướng tăng';
	@override String get trendDown => 'Calo có xu hướng giảm';
	@override String get trendSteady => 'Calo đang ổn định';
	@override String generatedAt({required Object time}) => 'Cập nhật ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalVi implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đặt mục tiêu hằng ngày';
	@override String get titleSet => 'Mục tiêu hằng ngày của bạn';
	@override String get description => 'Sẵn sàng cho hành trình khỏe mạnh? Hãy đặt mục tiêu calo hằng ngày bên dưới để khởi động tiến trình.';
	@override String get descriptionSet => 'La bàn đã sẵn sàng! Đây là mục tiêu calo hằng ngày để dẫn đường cho bạn.';
	@override String get yourGoal => 'Mục tiêu của bạn';
	@override String get goal => 'Mục tiêu';
	@override String get dailyCalories => 'Calo mỗi ngày (kcal)';
	@override String get setGoal => 'Đặt mục tiêu';
	@override String get intake => 'Nạp vào';
	@override String get burned => 'Tiêu hao';
	@override String get weightImpact => 'Ảnh hưởng cân nặng';
	@override String get estLoss => 'Ước tính giảm';
	@override String get estGain => 'Ước tính tăng';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryVi implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tóm tắt hằng ngày';
	@override String get calories => 'Calo';
	@override String get carbs => 'Carb';
	@override String get protein => 'Protein';
	@override String get fat => 'Chất béo';
	@override String get fiber => 'Chất xơ';
	@override String get grams => 'gam';
	@override String get chartAccessibilityLabel => 'Biểu đồ các chất đa lượng';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressVi implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tỷ lệ chất đa lượng hôm nay';
	@override String get target => 'Mục tiêu';
	@override String get current => 'Hiện tại';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryVi implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lịch sử chất đa lượng 7 ngày';
	@override String get trendTitle => 'Xu hướng hôm nay';
	@override String peakHour({required Object hour}) => 'Đỉnh: ${hour}:00';
	@override String get noHistoryYet => 'Chưa có lịch sử';
	@override String get startLogging => 'Bắt đầu ghi bữa ăn để xem\nxu hướng vĩ mô 7 ngày tại đây';
}

// Path: home.mealLog
class _TranslationsHomeMealLogVi implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bữa ăn đã ghi';
	@override String get emptyMessage => 'Chụp ảnh bữa ăn gần nhất của bạn để ghi tại đây.';
	@override String get noMealsToday => 'Hôm nay chưa có bữa ăn nào';
	@override String get seeAllMeals => 'Xem tất cả bữa ăn';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionVi implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thêm nhanh với AI';
	@override String get description => 'Mô tả bữa ăn của bạn, và để AI lo phần còn lại.';
	@override String get hint => 'vd. Bữa sáng mình ăn một bát yến mạch lớn với một quả chuối thái lát và một muỗng whey ...';
	@override String get analyzeMeal => 'Phân tích bữa ăn';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsVi implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bữa ăn yêu thích';
	@override String get description => 'Thêm nhanh một trong các bữa yêu thích của bạn.';
	@override String get noFavorites => 'Chưa có bữa ăn yêu thích.';
	@override String get addFavoriteHint => 'Nhấn vào ngôi sao trên bữa ăn để đánh dấu là yêu thích.';
	@override String get seeAll => 'Xem tất cả';
	@override String get add => 'Thêm';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapVi implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chụp & theo dõi bữa ăn';
	@override String get description => 'Dùng máy ảnh để chụp món ăn của bạn cho AI phân tích.';
	@override String get openCamera => 'Mở máy ảnh';
	@override String get gallery => 'Thư viện';
	@override String get compressingPhoto => 'Đang tối ưu ảnh…';
	@override String get uploadingPhoto => 'Đang tải ảnh lên…';
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
	@override String get carbs => 'Carb (g)';
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
	@override String get message => 'Bạn có chắc muốn xóa mục bữa ăn này?';
	@override String get cancel => 'Hủy';
	@override String get delete => 'Xóa';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowVi implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Câu hỏi ${current} trong ${total}';
	@override String get noQuestionsAvailable => 'Hiện không có câu hỏi nào';
	@override String get next => 'Tiếp theo';
	@override String get continueLabel => 'Tiếp tục';
}

// Path: meal.analysis
class _TranslationsMealAnalysisVi implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Phân tích bữa ăn bằng AI';
	@override String get stepStarted => 'Bắt đầu…';
	@override String get stepDecomposition => 'Đang hiểu bữa ăn của bạn…';
	@override String get stepIngredients => 'Đang khớp nguyên liệu với dữ liệu dinh dưỡng…';
	@override String get stepUncertainty => 'Đang kiểm tra độ tin cậy…';
	@override String get stepMealTypeQuestion => 'Sắp xong…';
	@override String get stepResult => 'Hoàn tất kết quả…';
	@override String get stepError => 'Đã xảy ra sự cố';
	@override String get stepDefault => 'Đang phân tích bữa ăn…';
	@override String get progressUnderstand => 'Hiểu';
	@override String get progressMatch => 'Khớp';
	@override String get progressCheck => 'Kiểm tra';
	@override String get progressMealType => 'Đang chọn loại bữa ăn';
	@override String get progressFinish => 'Hoàn tất';
	@override String get detectedIngredientHeading => 'Những nguyên liệu chúng tôi phát hiện';
	@override String ingredientsOverflow({required Object count}) => '${count} nguyên liệu nữa';
	@override String ingredientsLine({required Object count}) => 'Đã phát hiện ${count} thành phần';
	@override String get ingredientsPending => 'Đang quét thành phần…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackVi implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Có gì không đúng?';
	@override String get subtitle => 'Hãy giúp chúng tôi cải thiện phân tích bằng cách chọn một hoặc nhiều vấn đề.';
	@override String get tellUsMore => 'Cho chúng tôi biết thêm';
	@override String get describeIncorrect => 'Mô tả điều gì không đúng';
	@override String get submit => 'Gửi';
	@override String get issueFoodIdentification => 'Nhận dạng thực phẩm';
	@override String get issuePortionSize => 'Kích thước khẩu phần';
	@override String get issueCalorieDistribution => 'Phân bổ calo';
	@override String get issueMacrosWrong => 'Macro không đúng';
	@override String get issueMissingItems => 'Mục bị thiếu';
	@override String get issueExtraItems => 'Mục thừa';
	@override String get issueOther => 'Khác';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsVi implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Gần đây';
	@override String get calories => 'Calo';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsVi implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'HỒ SƠ';
	@override String get basicInformation => 'THÔNG TIN CƠ BẢN';
	@override String get goalsAndActivity => 'MỤC TIÊU & HOẠT ĐỘNG';
	@override String get calculatedValues => 'GIÁ TRỊ TÍNH TOÁN';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesVi implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Mục tiêu hằng ngày';
	@override String get calPerDay => 'cal/ngày';
	@override String get notAvailable => 'Không khả dụng';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsVi implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'THÔNG TIN CÁ NHÂN';
	@override String get physicalMeasurements => 'SỐ ĐO CƠ THỂ';
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
	@override String get localization => 'BẢN ĐỊA HÓA';
	@override String get notifications => 'THÔNG BÁO';
	@override String get healthConnect => 'HEALTH CONNECT';
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
	@override String get subtitle => 'Chọn ngôn ngữ ưa thích của bạn';
	@override String get searchHint => 'Tìm ngôn ngữ...';
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
	@override String get subtitle => 'Giữ đúng lộ trình với các thông báo kịp thời';
}

// Path: settings.theme
class _TranslationsSettingsThemeVi implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giao diện';
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
	@override String emailSubject({required Object appLabel}) => 'Phản hồi ứng dụng ${appLabel}';
	@override String get emailBodyPrefix => 'Vui lòng cung cấp phản hồi của bạn bên dưới:';
	@override String get appVersion => 'Phiên bản ứng dụng';
	@override String get device => 'Thiết bị';
	@override String get osVersion => 'Phiên bản HĐH';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryVi implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Xuất lịch sử bữa ăn';
	@override String get subtitle => 'Chia sẻ tệp CSV các bữa ăn đã ghi';
	@override String get shareText => 'Bản xuất lịch sử bữa ăn Calorify của bạn';
	@override String failed({required Object error}) => 'Không thể xuất lịch sử bữa ăn: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataVi implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Xóa toàn bộ dữ liệu';
	@override String get subtitle => 'Xóa vĩnh viễn tất cả thông tin của bạn';
	@override String get confirmationTitle => 'Xóa toàn bộ dữ liệu?';
	@override String get confirmationMessage => 'Hành động này không thể hoàn tác. Tất cả bữa ăn đã ghi, mục yêu thích và cài đặt hồ sơ của bạn sẽ bị xóa vĩnh viễn.';
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
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Xem và quản lý quyền';
	@override late final _TranslationsSettingsHealthConnectUnavailableVi unavailable = _TranslationsSettingsHealthConnectUnavailableVi._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsVi permissions = _TranslationsSettingsHealthConnectPermissionsVi._(_root);
	@override String get managePermissions => 'Quản lý quyền';
	@override String get openSettings => 'Mở cài đặt Health Connect';
	@override String get requestPermissions => 'Yêu cầu quyền';
	@override String get permissionRequestCancelledOrFailed => 'Yêu cầu quyền đã bị hủy hoặc thất bại. Vui lòng thử lại hoặc cấp quyền thủ công trong cài đặt Health Connect.';
	@override String get permissionRequestFailed => 'Không thể yêu cầu quyền. Vui lòng thử lại hoặc cấp quyền thủ công trong cài đặt Health Connect.';
	@override String get requestingPermissions => 'Đang yêu cầu...';
}

// Path: settings.about
class _TranslationsSettingsAboutVi implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giới thiệu';
	@override String get tagline => 'Nhận biết calo nhanh, miễn phí và ưu tiên quyền riêng tư';
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
	@override String get title => 'Đến giờ bữa sáng! 🍳';
	@override String get body => 'Đừng quên ghi lại bữa sáng của bạn';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchVi implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đến giờ bữa trưa! 🥗';
	@override String get body => 'Đã đến lúc ghi lại bữa trưa';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerVi implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đến giờ bữa tối! 🍽️';
	@override String get body => 'Đừng quên ghi lại bữa tối của bạn';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackVi implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đến giờ bữa phụ! 🍎';
	@override String get body => 'Đã đến lúc cho một bữa phụ lành mạnh';
}

// Path: notifications.test
class _TranslationsNotificationsTestVi implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thông báo kiểm thử';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapVi implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} cung cấp thông tin dinh dưỡng ước tính. Độ chính xác phụ thuộc vào dữ liệu bạn cung cấp và sự khác biệt của thực phẩm. Hãy dùng như tài liệu tham khảo, không phải nguồn xác định. Tham khảo chuyên gia cho tư vấn dinh dưỡng cá nhân.';
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
	@override String get title => 'Về ước tính cân nặng';
	@override String get description => 'Mức thay đổi cân nặng dự báo là ước tính lý thuyết dựa trên mô hình calo nạp vào vs. calo tiêu hao. Chỉ nhằm mục đích tạo động lực, không phải dự đoán cân nặng thực tế của bạn.';
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
	@override String get description => 'Các chỉ số này giúp bạn hiểu nhu cầu năng lượng của cơ thể và định hướng mục tiêu dinh dưỡng.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrVi bmr = _TranslationsDisclaimerHealthMetricsBmrVi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeVi tdee = _TranslationsDisclaimerHealthMetricsTdeeVi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalVi dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalVi._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureVi implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ước tính năng lượng tiêu hao';
	@override String get description => 'Khi không có dữ liệu Health Connect, chúng tôi ước tính calo tiêu hao hôm nay bằng BMR và mức độ hoạt động (TDEE) của bạn, được tỷ lệ theo phần thời gian trong ngày đã trôi qua.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedVi howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedVi._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceVi professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceVi._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionVi implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nhận diện món ăn thông minh';
	@override String get description => 'Chụp ảnh và để AI nhận diện bữa ăn của bạn';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisVi implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Phân tích bằng AI';
	@override String get description => 'Nhận thông tin dinh dưỡng tức thì từ mô tả của bạn';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationVi implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tích hợp Health';
	@override String get description => 'Kết nối với Health Connect để có góc nhìn tốt hơn';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesVi implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Thiếu cân';
	@override String get healthyWeight => 'Cân nặng khỏe mạnh';
	@override String get overweight => 'Thừa cân';
	@override String get obese => 'Béo phì';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesVi implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Chúng tôi có thể giúp bạn xây dựng kế hoạch lành mạnh để đạt cân nặng cân bằng với các bữa giàu dinh dưỡng.';
	@override String get healthy => 'Tuyệt vời! Bạn đang trong phạm vi khỏe mạnh. Chúng tôi sẽ giúp bạn duy trì sức sống và năng lượng.';
	@override String overweight({required Object appLabel}) => '${appLabel} sẽ đơn giản hóa hành trình của bạn với theo dõi bằng AI để giúp bạn đạt mục tiêu một cách thoải mái.';
	@override String get obese => 'Chúng tôi ở đây để hỗ trợ bạn bằng hướng dẫn cá nhân hóa và chiến lược bền vững cho mục tiêu sức khỏe.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingVi implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Theo dõi calo tự động';
	@override String get description => 'Theo dõi calo tiêu hao từ ứng dụng thể dục của bạn';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsVi implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thông tin tiến trình';
	@override String get description => 'Nhận góc nhìn chi tiết về xu hướng sức khỏe';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationVi implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tích hợp liền mạch';
	@override String get description => 'Đồng bộ dữ liệu từ các ứng dụng sức khỏe yêu thích';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessVi implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bạn không đơn độc';
	@override String get genericMessage => 'Nghiên cứu cho thấy theo dõi đều đặn là yếu tố dự báo số 1 cho thành công dài hạn.';
	@override String personalizedMessage({required Object gender, required Object age, required Object goal}) => 'Với một ${gender} ${age} tuổi đang muốn ${goal}, theo dõi đều đặn là yếu tố dự báo số 1 cho thành công.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} giúp việc này dễ hơn gấp 10 lần so với làm thủ công.';
	@override String get getStartedTitle => 'Sẵn sàng bắt đầu?';
	@override String get tipPhoto => 'Chụp ảnh bữa ăn để phân tích tức thì';
	@override String get tipConsistency => 'Ghi chép đều đặn để thấy tiến bộ có ý nghĩa';
	@override String get tipProgress => 'Theo dõi tiến trình hằng ngày để duy trì động lực';
	@override String get button => 'Bắt đầu thôi';
	@override String get defaultGender => 'cá nhân';
	@override String get defaultGoal => 'một bạn khỏe mạnh hơn';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileVi implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hồ sơ sức khỏe của bạn';
	@override String bmiDescription({required Object bmi}) => 'Dựa trên chỉ số của bạn, BMI là ${bmi}.';
	@override String get finalizeDescription => 'Hãy hoàn tất hồ sơ để tùy chỉnh trải nghiệm của bạn.';
	@override String get goalGain => 'tăng';
	@override String get goalLose => 'giảm';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Để đạt mục tiêu, bạn sẽ cần ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Bạn đang ở cân nặng mục tiêu! Chúng tôi sẽ giúp bạn duy trì nó.';
	@override String get button => 'Bắt đầu thôi';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleVi implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Khởi đầu tuyệt vời!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Bạn đã thực hiện bước đầu tiên hướng tới ${goalText}. Vì bạn ${activityText}, ${appLabel} sẽ điều chỉnh mục tiêu để phù hợp với lối sống của bạn.';
	@override String get personalizedTargets => 'Mục tiêu calo cá nhân hóa';
	@override String get aiMealDetection => 'Nhận diện bữa ăn bằng AI';
	@override String get macroBreakdowns => 'Phân tích chi tiết chất đa lượng';
	@override String get button => 'Bắt đầu thôi';
	@override String get defaultGoal => 'mục tiêu của bạn';
	@override String get defaultActivity => 'năng động';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightVi implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Giảm cân';
	@override String get description => 'Tạo thâm hụt calo để giảm cân';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightVi implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Duy trì cân nặng';
	@override String get description => 'Duy trì cân nặng hiện tại';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightVi implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tăng cân';
	@override String get description => 'Tạo thặng dư calo để tăng cân';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryVi implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ít vận động';
	@override String get description => 'Ít hoặc không tập luyện';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveVi implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hoạt động nhẹ';
	@override String get description => 'Tập nhẹ 1-3 ngày/tuần';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveVi implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hoạt động vừa';
	@override String get description => 'Tập vừa 3-5 ngày/tuần';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveVi implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Rất năng động';
	@override String get description => 'Tập nặng 6-7 ngày/tuần';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveVi implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Cực kỳ năng động';
	@override String get description => 'Tập rất nặng, công việc tay chân';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableVi implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect không khả dụng';
	@override String get description => 'Health Connect không có trên thiết bị này. Vui lòng cài đặt Health Connect từ Play Store (Android 9+) hoặc cập nhật lên Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsVi implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quyền';
	@override String get description => 'Các quyền sau được yêu cầu để cung cấp tích hợp Health Connect:';
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
	@override String get title => 'Câu chuyện của chúng tôi';
	@override String content({required Object appLabel}) => '${appLabel} ra đời từ một nỗi bực mình đơn giản: hầu hết các ứng dụng theo dõi calo đều quá phức tạp, đòi hỏi nhập liệu thủ công liên tục, thu phí đăng ký cao, hoặc làm ảnh hưởng đến quyền riêng tư.\n\nLà một nhà phát triển độc lập, tôi muốn xây dựng thứ gì đó đơn giản và công bằng hơn — một ứng dụng dùng AI để giảm nỗ lực, luôn nhanh và miễn phí, và tôn trọng dữ liệu sức khỏe của bạn.\n\n${appLabel} là ứng dụng mà tôi mong có: không tài khoản, không theo dõi hành vi, không quảng cáo — chỉ là thông tin rõ ràng, thiết thực và các mục tiêu sức khỏe của bạn.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyVi implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quyền riêng tư của bạn là quan trọng';
	@override String get description => 'Quyền riêng tư không phải là suy nghĩ sau cùng — đó là nguyên tắc thiết kế. Điều này có nghĩa là:';
	@override String get noAccounts => 'Không cần tài khoản\nDùng ứng dụng ngay. Không đăng ký, không danh tính.';
	@override String noTracking({required Object appLabel}) => 'Không theo dõi hành vi\n${appLabel} không giám sát hoạt động của bạn, không xây dựng hồ sơ sử dụng, và không theo dõi bạn trên các ứng dụng hay website.';
	@override String noAds({required Object appLabel}) => 'Không quảng cáo theo thiết kế\n${appLabel} được xây dựng để hoạt động mà không cần quảng cáo hay kiếm tiền dựa trên dữ liệu.';
	@override String get noDataSelling => 'Không bán dữ liệu\nDữ liệu sức khỏe của bạn không bao giờ được bán hay chia sẻ với bên thứ ba.';
	@override String get localStorage => 'Lưu trữ ưu tiên cục bộ\nDữ liệu của bạn ở lại trên thiết bị.';
	@override String get privacyPolicy => 'Chính sách quyền riêng tư';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperVi implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Được xây dựng bởi một nhà phát triển độc lập';
	@override String description({required Object appLabel}) => '${appLabel} được xây dựng và duy trì bởi một nhà phát triển độc lập, tập trung vào việc tạo ra phần mềm sức khỏe êm dịu và tôn trọng quyền riêng tư.\n\nPhản hồi được đọc trực tiếp và góp phần định hướng ứng dụng.';
	@override String get website => 'Website';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackVi implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Bạn có thích ${appLabel} không?';
	@override String description({required Object appLabel}) => 'Phản hồi của bạn giúp ${appLabel} tốt hơn cho mọi người.';
	@override String get rateApp => 'Đánh giá trên Play Store';
	@override String get sendFeedback => 'Gửi phản hồi';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeVi implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Khẩu phần';
	@override String get description => 'Độ chính xác của ước tính phụ thuộc nhiều vào việc bạn ước lượng đúng kích thước khẩu phần.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsVi implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cách chế biến';
	@override String description({required Object appLabel}) => 'Phương pháp nấu nướng có thể làm thay đổi đáng kể hàm lượng dinh dưỡng. Ước tính của ${appLabel} có thể không luôn tính hết các thay đổi này.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsVi implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thành phần';
	@override String get description => 'Các món phức tạp với nhiều thành phần ẩn có thể dẫn đến ước tính kém chính xác hơn.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsVi implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giới hạn cơ sở dữ liệu';
	@override String description({required Object appLabel}) => 'Cơ sở dữ liệu thực phẩm của ${appLabel} rất lớn nhưng có thể không bao phủ mọi món hoặc biến thể.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyVi implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Độ chính xác calo';
	@override String get description => 'Ước tính này chỉ chính xác khi lượng calo bạn nạp và tiêu hao được theo dõi chính xác. Ghi chép không chuẩn sẽ cho ra dự báo không chính xác.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsVi implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yếu tố sinh học';
	@override String description({required Object appLabel}) => 'Giảm/tăng cân thực tế chịu ảnh hưởng bởi trao đổi chất, hormone, giấc ngủ, căng thẳng, nước, và các yếu tố cá nhân khác mà ${appLabel} không thể đo lường.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightVi implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nước & dao động cân';
	@override String get description => 'Cân nặng hằng ngày có thể dao động đáng kể do giữ nước, tiêu hóa và thời điểm cân. Ước tính không tính đến các dao động này.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceVi implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hướng dẫn chuyên môn';
	@override String get description => 'Không dùng ước tính này để đưa ra quyết định y khoa. Luôn tham khảo chuyên gia y tế hoặc chuyên gia dinh dưỡng cho tư vấn cá nhân.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrVi implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Tốc độ trao đổi chất cơ bản (BMR) là lượng calo cơ thể bạn đốt khi nghỉ ngơi để duy trì chức năng cơ bản như hô hấp và tuần hoàn. BMR phụ thuộc vào tuổi, giới tính, chiều cao và cân nặng. BMR cao nghĩa là cơ thể tự đốt nhiều calo hơn khi nghỉ, thường do nhiều khối cơ, trẻ tuổi, hoặc nam giới. BMR thấp thường cho thấy ít cơ hơn, lớn tuổi hơn, hoặc nữ giới.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeVi implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Tổng năng lượng tiêu hao hằng ngày (TDEE) là tổng calo bạn đốt mỗi ngày, gồm BMR cộng calo từ vận động và hoạt động thường nhật. TDEE phụ thuộc vào BMR và mức độ hoạt động. TDEE cao nghĩa là bạn đốt nhiều calo hơn tổng thể, thường do hoạt động nhiều hoặc BMR cao. TDEE thấp cho thấy hoạt động hằng ngày ít hơn hoặc BMR thấp.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalVi implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mục tiêu hằng ngày';
	@override String get description => 'Mục tiêu hằng ngày là lượng calo khuyến nghị dựa trên TDEE và mục tiêu cân nặng của bạn. Để giảm cân, bạn nạp ít calo hơn TDEE. Để duy trì, bạn khớp TDEE. Để tăng cân, bạn nạp nhiều hơn TDEE. Điều này giúp bạn đạt thay đổi cân nặng theo nhịp độ lành mạnh.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedVi implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cách tính ước tính';
	@override String get description => 'Chúng tôi tính TDEE (dựa trên hồ sơ của bạn) và nhân với tỷ lệ thời gian đã qua trong ngày (giờ + phút) / 24 để ước tính calo đã tiêu hao đến hiện tại.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceVi implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hướng dẫn chuyên môn';
	@override String get description => 'Không dùng ước tính này để đưa ra quyết định y khoa. Luôn tham khảo chuyên gia y tế hoặc chuyên gia dinh dưỡng cho tư vấn cá nhân.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedVi implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đọc tổng calo tiêu hao';
	@override String get description => 'Cho phép ứng dụng đọc tổng lượng calo bạn tiêu hao từ Health Connect.';
	@override String get usage => 'Quyền này dùng để hiển thị calo tiêu hao hằng ngày trong ứng dụng, giúp bạn hiểu tổng năng lượng tiêu hao trong ngày.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadVi implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đọc dữ liệu dinh dưỡng';
	@override String get description => 'Cho phép ứng dụng đọc dữ liệu dinh dưỡng từ Health Connect.';
	@override String get usage => 'Quyền này cho phép ứng dụng đọc thông tin dinh dưỡng có thể đã được ghi bởi các ứng dụng khác kết nối với Health Connect, mang lại góc nhìn toàn diện về dinh dưỡng của bạn.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteVi implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteVi._(this._root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ghi dữ liệu dinh dưỡng';
	@override String get description => 'Cho phép ứng dụng ghi dữ liệu dinh dưỡng vào Health Connect.';
	@override String get usage => 'Quyền này cho phép ứng dụng đồng bộ bữa ăn bạn đã ghi lên Health Connect, giúp dữ liệu dinh dưỡng sẵn có cho các ứng dụng sức khỏe và thể dục khác bạn dùng.';
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
			'errors.rateLimitExceeded' => 'Bạn đã gửi quá nhiều yêu cầu. Vui lòng đợi một lát trước khi thử lại.',
			'errors.networkError' => 'Lỗi mạng. Vui lòng kiểm tra kết nối internet của bạn.',
			'errors.unknownError' => 'Đã xảy ra sự cố. Vui lòng thử lại sau.',
			'errors.loadingProfileData' => 'Lỗi tải dữ liệu hồ sơ',
			'errors.somethingWentWrong' => 'Đã xảy ra sự cố.',
			'errors.retry' => 'Thử lại',
			'onboarding.welcome' => ({required Object appLabel}) => 'Chào mừng đến với ${appLabel}',
			'onboarding.subtitle' => 'Người bạn đồng hành dinh dưỡng cá nhân được hỗ trợ bởi AI',
			'onboarding.getStarted' => 'Bắt đầu',
			'onboarding.features.foodRecognition.title' => 'Nhận diện món ăn thông minh',
			'onboarding.features.foodRecognition.description' => 'Chụp ảnh và để AI nhận diện bữa ăn của bạn',
			'onboarding.features.aiAnalysis.title' => 'Phân tích bằng AI',
			'onboarding.features.aiAnalysis.description' => 'Nhận thông tin dinh dưỡng tức thì từ mô tả của bạn',
			'onboarding.features.healthIntegration.title' => 'Tích hợp Health',
			'onboarding.features.healthIntegration.description' => 'Kết nối với Health Connect để có góc nhìn tốt hơn',
			'onboarding.gender.title' => 'Giới tính của bạn là gì?',
			'onboarding.gender.description' => 'Giới tính giúp chúng tôi tính toán chính xác tỷ lệ trao đổi chất cơ bản (BMR).',
			'onboarding.gender.next' => 'Tiếp',
			'onboarding.height.title' => 'Chiều cao của bạn?',
			'onboarding.height.description' => 'Chiều cao giúp chúng tôi tính BMI và nhu cầu năng lượng chính xác.',
			'onboarding.height.metric' => 'Hệ mét',
			'onboarding.height.imperial' => 'Hệ Anh',
			'onboarding.height.next' => 'Tiếp',
			'onboarding.weight.currentTitle' => 'Cân nặng hiện tại của bạn?',
			'onboarding.weight.currentDescription' => 'Cân nặng hiện tại rất quan trọng để cá nhân hóa mục tiêu hằng ngày.',
			'onboarding.weight.targetTitle' => 'Cân nặng mục tiêu của bạn?',
			'onboarding.weight.targetDescription' => 'Đặt mục tiêu cân nặng giúp chúng tôi xây dựng kế hoạch dài hạn.',
			'onboarding.weight.metric' => 'Hệ mét',
			'onboarding.weight.imperial' => 'Hệ Anh',
			'onboarding.weight.next' => 'Tiếp',
			'onboarding.age.title' => 'Ngày sinh của bạn?',
			'onboarding.age.description' => 'Tuổi tác giúp chúng tôi tính toán nhu cầu calo chính xác.',
			'onboarding.age.next' => 'Tiếp',
			'onboarding.bmiScale.underweight' => 'Thiếu',
			'onboarding.bmiScale.healthy' => 'Khỏe mạnh',
			'onboarding.bmiScale.overweight' => 'Thừa',
			'onboarding.bmiScale.obese' => 'Béo phì',
			'onboarding.bmiScale.categories.underweight' => 'Thiếu cân',
			'onboarding.bmiScale.categories.healthyWeight' => 'Cân nặng khỏe mạnh',
			'onboarding.bmiScale.categories.overweight' => 'Thừa cân',
			'onboarding.bmiScale.categories.obese' => 'Béo phì',
			'onboarding.bmiScale.messages.underweight' => 'Chúng tôi có thể giúp bạn xây dựng kế hoạch lành mạnh để đạt cân nặng cân bằng với các bữa giàu dinh dưỡng.',
			'onboarding.bmiScale.messages.healthy' => 'Tuyệt vời! Bạn đang trong phạm vi khỏe mạnh. Chúng tôi sẽ giúp bạn duy trì sức sống và năng lượng.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} sẽ đơn giản hóa hành trình của bạn với theo dõi bằng AI để giúp bạn đạt mục tiêu một cách thoải mái.',
			'onboarding.bmiScale.messages.obese' => 'Chúng tôi ở đây để hỗ trợ bạn bằng hướng dẫn cá nhân hóa và chiến lược bền vững cho mục tiêu sức khỏe.',
			'onboarding.weightGoal.title' => 'Mục tiêu của bạn là gì?',
			'onboarding.weightGoal.description' => 'Chọn mục tiêu phù hợp nhất với điều bạn muốn đạt được',
			'onboarding.activityLevel.title' => 'Mức độ hoạt động của bạn?',
			'onboarding.activityLevel.description' => 'Điều này giúp chúng tôi tính nhu cầu calo hằng ngày chính xác hơn',
			'onboarding.healthConnect.title' => 'Kết nối với Health Connect',
			'onboarding.healthConnect.description' => 'Đồng bộ dữ liệu sức khỏe để có góc nhìn tốt hơn và tự động theo dõi calo',
			'onboarding.healthConnect.automaticTracking.title' => 'Theo dõi calo tự động',
			'onboarding.healthConnect.automaticTracking.description' => 'Theo dõi calo tiêu hao từ ứng dụng thể dục của bạn',
			'onboarding.healthConnect.progressInsights.title' => 'Thông tin tiến trình',
			'onboarding.healthConnect.progressInsights.description' => 'Nhận góc nhìn chi tiết về xu hướng sức khỏe',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Tích hợp liền mạch',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Đồng bộ dữ liệu từ các ứng dụng sức khỏe yêu thích',
			'onboarding.healthConnect.connected' => 'Đã kết nối Health Connect',
			'onboarding.healthConnect.notConnected' => 'Chưa kết nối Health Connect',
			'onboarding.healthConnect.setup' => 'Thiết lập Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Bỏ qua lúc này',
			'onboarding.healthConnect.statusConnected' => 'Health Connect đã được kết nối.',
			'onboarding.healthConnect.statusSuccess' => 'Đã kết nối Health Connect thành công!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Bị từ chối quyền. Vui lòng bật quyền Health Connect từ cài đặt điện thoại cho ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Lỗi thiết lập Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Bạn không đơn độc',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Nghiên cứu cho thấy theo dõi đều đặn là yếu tố dự báo số 1 cho thành công dài hạn.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object gender, required Object age, required Object goal}) => 'Với một ${gender} ${age} tuổi đang muốn ${goal}, theo dõi đều đặn là yếu tố dự báo số 1 cho thành công.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} giúp việc này dễ hơn gấp 10 lần so với làm thủ công.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Sẵn sàng bắt đầu?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Chụp ảnh bữa ăn để phân tích tức thì',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Ghi chép đều đặn để thấy tiến bộ có ý nghĩa',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Theo dõi tiến trình hằng ngày để duy trì động lực',
			'onboarding.reinforcement.trackingSuccess.button' => 'Bắt đầu thôi',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'cá nhân',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'một bạn khỏe mạnh hơn',
			'onboarding.reinforcement.healthProfile.title' => 'Hồ sơ sức khỏe của bạn',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Dựa trên chỉ số của bạn, BMI là ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Hãy hoàn tất hồ sơ để tùy chỉnh trải nghiệm của bạn.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'tăng',
			'onboarding.reinforcement.healthProfile.goalLose' => 'giảm',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Để đạt mục tiêu, bạn sẽ cần ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Bạn đang ở cân nặng mục tiêu! Chúng tôi sẽ giúp bạn duy trì nó.',
			'onboarding.reinforcement.healthProfile.button' => 'Bắt đầu thôi',
			'onboarding.reinforcement.goalLifestyle.title' => 'Khởi đầu tuyệt vời!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Bạn đã thực hiện bước đầu tiên hướng tới ${goalText}. Vì bạn ${activityText}, ${appLabel} sẽ điều chỉnh mục tiêu để phù hợp với lối sống của bạn.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Mục tiêu calo cá nhân hóa',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Nhận diện bữa ăn bằng AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Phân tích chi tiết chất đa lượng',
			'onboarding.reinforcement.goalLifestyle.button' => 'Bắt đầu thôi',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'mục tiêu của bạn',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'năng động',
			'tabs.dashboard' => 'Tổng quan',
			'tabs.history' => 'Lịch sử',
			'home.aiSummary.title' => 'Tóm tắt bởi AI',
			'home.aiSummary.logMore' => 'Ghi thêm bữa ăn trong vài ngày tới để nhận góc nhìn cá nhân hóa từ AI.',
			'home.aiSummary.loading' => 'Đang tải tóm tắt của bạn...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} bữa ăn đã ghi',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Điểm cân bằng ${score}',
			'home.aiSummary.topFoods' => 'Thực phẩm hàng đầu',
			'home.aiSummary.trendUp' => 'Calo có xu hướng tăng',
			'home.aiSummary.trendDown' => 'Calo có xu hướng giảm',
			'home.aiSummary.trendSteady' => 'Calo đang ổn định',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Cập nhật ${time}',
			'home.dailyGoal.title' => 'Đặt mục tiêu hằng ngày',
			'home.dailyGoal.titleSet' => 'Mục tiêu hằng ngày của bạn',
			'home.dailyGoal.description' => 'Sẵn sàng cho hành trình khỏe mạnh? Hãy đặt mục tiêu calo hằng ngày bên dưới để khởi động tiến trình.',
			'home.dailyGoal.descriptionSet' => 'La bàn đã sẵn sàng! Đây là mục tiêu calo hằng ngày để dẫn đường cho bạn.',
			'home.dailyGoal.yourGoal' => 'Mục tiêu của bạn',
			'home.dailyGoal.goal' => 'Mục tiêu',
			'home.dailyGoal.dailyCalories' => 'Calo mỗi ngày (kcal)',
			'home.dailyGoal.setGoal' => 'Đặt mục tiêu',
			'home.dailyGoal.intake' => 'Nạp vào',
			'home.dailyGoal.burned' => 'Tiêu hao',
			'home.dailyGoal.weightImpact' => 'Ảnh hưởng cân nặng',
			'home.dailyGoal.estLoss' => 'Ước tính giảm',
			'home.dailyGoal.estGain' => 'Ước tính tăng',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Tóm tắt hằng ngày',
			'home.dailySummary.calories' => 'Calo',
			'home.dailySummary.carbs' => 'Carb',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Chất béo',
			'home.dailySummary.fiber' => 'Chất xơ',
			'home.dailySummary.grams' => 'gam',
			'home.dailySummary.chartAccessibilityLabel' => 'Biểu đồ các chất đa lượng',
			'home.intakeProgress.title' => 'Tỷ lệ chất đa lượng hôm nay',
			'home.intakeProgress.target' => 'Mục tiêu',
			'home.intakeProgress.current' => 'Hiện tại',
			'home.intakeHistory.title' => 'Lịch sử chất đa lượng 7 ngày',
			'home.intakeHistory.trendTitle' => 'Xu hướng hôm nay',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Đỉnh: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Chưa có lịch sử',
			'home.intakeHistory.startLogging' => 'Bắt đầu ghi bữa ăn để xem\nxu hướng vĩ mô 7 ngày tại đây',
			'home.mealLog.title' => 'Bữa ăn đã ghi',
			'home.mealLog.emptyMessage' => 'Chụp ảnh bữa ăn gần nhất của bạn để ghi tại đây.',
			'home.mealLog.noMealsToday' => 'Hôm nay chưa có bữa ăn nào',
			'home.mealLog.seeAllMeals' => 'Xem tất cả bữa ăn',
			'home.mealDescription.title' => 'Thêm nhanh với AI',
			'home.mealDescription.description' => 'Mô tả bữa ăn của bạn, và để AI lo phần còn lại.',
			'home.mealDescription.hint' => 'vd. Bữa sáng mình ăn một bát yến mạch lớn với một quả chuối thái lát và một muỗng whey ...',
			'home.mealDescription.analyzeMeal' => 'Phân tích bữa ăn',
			'home.favoriteMeals.title' => 'Bữa ăn yêu thích',
			'home.favoriteMeals.description' => 'Thêm nhanh một trong các bữa yêu thích của bạn.',
			'home.favoriteMeals.noFavorites' => 'Chưa có bữa ăn yêu thích.',
			'home.favoriteMeals.addFavoriteHint' => 'Nhấn vào ngôi sao trên bữa ăn để đánh dấu là yêu thích.',
			'home.favoriteMeals.seeAll' => 'Xem tất cả',
			'home.favoriteMeals.add' => 'Thêm',
			'home.mealSnap.title' => 'Chụp & theo dõi bữa ăn',
			'home.mealSnap.description' => 'Dùng máy ảnh để chụp món ăn của bạn cho AI phân tích.',
			'home.mealSnap.openCamera' => 'Mở máy ảnh',
			'home.mealSnap.gallery' => 'Thư viện',
			'home.mealSnap.compressingPhoto' => 'Đang tối ưu ảnh…',
			'home.mealSnap.uploadingPhoto' => 'Đang tải ảnh lên…',
			'home.connectHealth.title' => 'Đồng bộ với Health Connect',
			'home.connectHealth.description' => 'Đồng bộ dữ liệu dinh dưỡng của bạn với Health Connect',
			'home.connectHealth.install' => 'Cài đặt',
			'home.connectHealth.connect' => 'Kết nối',
			'history.noMeals' => 'Chưa có bữa ăn nào',
			'history.emptyMessage' => 'Chụp ảnh bữa ăn gần nhất của bạn để ghi tại đây.',
			'history.today' => 'Hôm nay',
			'history.yesterday' => 'Hôm qua',
			'meal.ohNo' => 'Ôi không!',
			'meal.delete' => 'Xóa',
			'meal.editMeal' => 'Chỉnh sửa bữa ăn',
			'meal.addMeal' => 'Thêm bữa ăn',
			'meal.saveMeal' => 'Lưu bữa ăn',
			'meal.save' => 'Lưu',
			'meal.mealName' => 'Tên bữa ăn',
			'meal.mealNameHint' => 'vd., Trứng bác với bánh mì nướng',
			'meal.mealQuantity' => 'Số lượng bữa',
			'meal.mealQuantityHint' => 'vd., 1 bát, 2 lát',
			'meal.timeOfMeal' => 'Thời gian ăn',
			'meal.timeOfMealHint' => 'Chọn thời điểm bạn ăn bữa này',
			'meal.mealType' => 'Loại bữa ăn',
			'meal.nutrition.calories' => 'Calo',
			'meal.nutrition.carbs' => 'Carb (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Chất béo (g)',
			'meal.nutrition.fiber' => 'Chất xơ (g)',
			'meal.deleteConfirmation.title' => 'Xóa bữa ăn',
			'meal.deleteConfirmation.message' => 'Bạn có chắc muốn xóa mục bữa ăn này?',
			'meal.deleteConfirmation.cancel' => 'Hủy',
			'meal.deleteConfirmation.delete' => 'Xóa',
			'meal.addedToLog' => 'Đã thêm bữa ăn vào nhật ký!',
			'meal.couldNotAdd' => ({required Object error}) => 'Không thể thêm bữa ăn: ${error}',
			'meal.savedSuccessfully' => 'Thêm bữa ăn thành công!',
			'meal.updatedSuccessfully' => 'Cập nhật bữa ăn thành công!',
			'meal.errorSaving' => ({required Object error}) => 'Lỗi khi lưu bữa ăn: ${error}',
			'meal.removedFromFavorites' => 'Đã xóa khỏi yêu thích!',
			'meal.savedAsFavorite' => 'Đã lưu bữa ăn vào mục yêu thích!',
			'meal.unfavorite' => 'Bỏ yêu thích',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Không thể cập nhật yêu thích: ${error}',
			'meal.feedbackThanks' => 'Cảm ơn phản hồi!',
			'meal.reanalysisUpdated' => 'Đã cập nhật phân tích bữa ăn dựa trên phản hồi của bạn.',
			'meal.failedToProcess' => ({required Object error}) => 'Xử lý thất bại: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Xử lý ảnh thất bại: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Lỗi nén ảnh: ${error}',
			'meal.failedToSave' => 'Không thể lưu dữ liệu. Vui lòng thử lại.',
			'meal.skip' => 'Bỏ qua',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Câu hỏi ${current} trong ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Hiện không có câu hỏi nào',
			'meal.questionFlow.next' => 'Tiếp theo',
			'meal.questionFlow.continueLabel' => 'Tiếp tục',
			'meal.analysis.title' => 'Phân tích bữa ăn bằng AI',
			'meal.analysis.stepStarted' => 'Bắt đầu…',
			'meal.analysis.stepDecomposition' => 'Đang hiểu bữa ăn của bạn…',
			'meal.analysis.stepIngredients' => 'Đang khớp nguyên liệu với dữ liệu dinh dưỡng…',
			'meal.analysis.stepUncertainty' => 'Đang kiểm tra độ tin cậy…',
			'meal.analysis.stepMealTypeQuestion' => 'Sắp xong…',
			'meal.analysis.stepResult' => 'Hoàn tất kết quả…',
			'meal.analysis.stepError' => 'Đã xảy ra sự cố',
			'meal.analysis.stepDefault' => 'Đang phân tích bữa ăn…',
			'meal.analysis.progressUnderstand' => 'Hiểu',
			'meal.analysis.progressMatch' => 'Khớp',
			'meal.analysis.progressCheck' => 'Kiểm tra',
			'meal.analysis.progressMealType' => 'Đang chọn loại bữa ăn',
			'meal.analysis.progressFinish' => 'Hoàn tất',
			'meal.analysis.detectedIngredientHeading' => 'Những nguyên liệu chúng tôi phát hiện',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} nguyên liệu nữa',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'Đã phát hiện ${count} thành phần',
			'meal.analysis.ingredientsPending' => 'Đang quét thành phần…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'Có gì không đúng?',
			'meal.feedback.subtitle' => 'Hãy giúp chúng tôi cải thiện phân tích bằng cách chọn một hoặc nhiều vấn đề.',
			'meal.feedback.tellUsMore' => 'Cho chúng tôi biết thêm',
			'meal.feedback.describeIncorrect' => 'Mô tả điều gì không đúng',
			'meal.feedback.submit' => 'Gửi',
			'meal.feedback.issueFoodIdentification' => 'Nhận dạng thực phẩm',
			'meal.feedback.issuePortionSize' => 'Kích thước khẩu phần',
			'meal.feedback.issueCalorieDistribution' => 'Phân bổ calo',
			'meal.feedback.issueMacrosWrong' => 'Macro không đúng',
			'meal.feedback.issueMissingItems' => 'Mục bị thiếu',
			'meal.feedback.issueExtraItems' => 'Mục thừa',
			'meal.feedback.issueOther' => 'Khác',
			'favorites.title' => 'Yêu thích',
			'favorites.empty' => 'Chưa có bữa ăn yêu thích.',
			'favorites.searchPlaceholder' => 'Tìm bữa ăn yêu thích',
			'favorites.searchEmptyTitle' => 'Không có mục yêu thích phù hợp',
			'favorites.searchEmptySubtitle' => 'Hãy thử tên bữa ăn, số lượng hoặc loại bữa khác.',
			'favorites.sortLabel' => 'Sắp xếp mục yêu thích',
			'favorites.undo' => 'Hoàn tác',
			'favorites.removed' => ({required Object name}) => 'Đã xóa ${name} khỏi mục yêu thích',
			'favorites.sortOptions.recent' => 'Gần đây',
			'favorites.sortOptions.calories' => 'Calo',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Hồ sơ',
			'profile.noProfileData' => 'Không tìm thấy dữ liệu hồ sơ',
			'profile.yourProfile' => 'Hồ sơ của bạn',
			'profile.viewAndManage' => 'Xem và quản lý thông tin sức khỏe của bạn',
			'profile.sections.profile' => 'HỒ SƠ',
			'profile.sections.basicInformation' => 'THÔNG TIN CƠ BẢN',
			'profile.sections.goalsAndActivity' => 'MỤC TIÊU & HOẠT ĐỘNG',
			'profile.sections.calculatedValues' => 'GIÁ TRỊ TÍNH TOÁN',
			'profile.gender' => 'Giới tính',
			'profile.height' => 'Chiều cao',
			'profile.weight' => 'Cân nặng',
			'profile.age' => 'Tuổi',
			'profile.weightGoal' => 'Mục tiêu cân nặng',
			'profile.targetWeight' => 'Cân nặng mục tiêu',
			'profile.activityLevel' => 'Mức độ hoạt động',
			'profile.healthMetrics' => 'Chỉ số sức khỏe',
			'profile.notSet' => 'Chưa đặt',
			'profile.years' => 'tuổi',
			'profile.updatedSuccessfully' => 'Cập nhật hồ sơ thành công!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Mục tiêu hằng ngày',
			'profile.calculatedValues.calPerDay' => 'cal/ngày',
			'profile.calculatedValues.notAvailable' => 'Không khả dụng',
			'healthScore.title' => 'Điểm sức khỏe',
			'healthScore.whyThisScore' => 'Vì sao điểm này?',
			'healthScore.note' => 'Điểm số này là ước tính của AI dựa trên thành phần và mật độ dinh dưỡng được nhận diện. Luôn tham khảo chuyên gia cho tư vấn dinh dưỡng.',
			'healthScore.unhealthy' => 'Không lành mạnh',
			'healthScore.healthy' => 'Lành mạnh',
			'healthScore.neutral' => 'Trung tính',
			'editProfile.title' => 'Chỉnh sửa hồ sơ',
			'editProfile.sections.personalInformation' => 'THÔNG TIN CÁ NHÂN',
			'editProfile.sections.physicalMeasurements' => 'SỐ ĐO CƠ THỂ',
			'editProfile.sections.goalsAndActivity' => 'MỤC TIÊU & HOẠT ĐỘNG',
			'editProfile.gender' => 'Giới tính',
			'editProfile.dateOfBirth' => 'Ngày sinh',
			'editProfile.height' => 'Chiều cao',
			'editProfile.weight' => 'Cân nặng',
			'editProfile.weightGoal' => 'Mục tiêu cân nặng',
			'editProfile.activityLevel' => 'Mức độ hoạt động',
			'editProfile.metric' => 'Hệ mét',
			'editProfile.imperial' => 'Hệ Anh',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Hệ mét (cm)',
			'editProfile.imperialFtIn' => 'Hệ Anh (ft/in)',
			'editProfile.metricKg' => 'Hệ mét (kg)',
			'editProfile.imperialLbs' => 'Hệ Anh (lbs)',
			'editProfile.genders.male' => 'Nam',
			'editProfile.genders.female' => 'Nữ',
			'editProfile.genders.other' => 'Khác',
			'editProfile.weightGoals.loseWeight.name' => 'Giảm cân',
			'editProfile.weightGoals.loseWeight.description' => 'Tạo thâm hụt calo để giảm cân',
			'editProfile.weightGoals.maintainWeight.name' => 'Duy trì cân nặng',
			'editProfile.weightGoals.maintainWeight.description' => 'Duy trì cân nặng hiện tại',
			'editProfile.weightGoals.gainWeight.name' => 'Tăng cân',
			'editProfile.weightGoals.gainWeight.description' => 'Tạo thặng dư calo để tăng cân',
			'editProfile.activityLevels.sedentary.name' => 'Ít vận động',
			'editProfile.activityLevels.sedentary.description' => 'Ít hoặc không tập luyện',
			'editProfile.activityLevels.lightlyActive.name' => 'Hoạt động nhẹ',
			'editProfile.activityLevels.lightlyActive.description' => 'Tập nhẹ 1-3 ngày/tuần',
			'editProfile.activityLevels.moderatelyActive.name' => 'Hoạt động vừa',
			'editProfile.activityLevels.moderatelyActive.description' => 'Tập vừa 3-5 ngày/tuần',
			'editProfile.activityLevels.veryActive.name' => 'Rất năng động',
			'editProfile.activityLevels.veryActive.description' => 'Tập nặng 6-7 ngày/tuần',
			'editProfile.activityLevels.extremelyActive.name' => 'Cực kỳ năng động',
			'editProfile.activityLevels.extremelyActive.description' => 'Tập rất nặng, công việc tay chân',
			'settings.title' => 'Cài đặt',
			'settings.sections.profile' => 'HỒ SƠ',
			'settings.sections.localization' => 'BẢN ĐỊA HÓA',
			'settings.sections.notifications' => 'THÔNG BÁO',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'HỖ TRỢ & PHÁP LÝ',
			'settings.sections.about' => 'GIỚI THIỆU',
			'settings.sections.dangerZone' => 'KHU VỰC NGUY HIỂM',
			'settings.sections.developer' => 'NHÀ PHÁT TRIỂN',
			'settings.editProfile.title' => 'Chỉnh sửa hồ sơ',
			'settings.editProfile.subtitle' => 'Cập nhật thông tin cá nhân của bạn',
			'settings.language.title' => 'Ngôn ngữ',
			'settings.language.subtitle' => 'Chọn ngôn ngữ ưa thích của bạn',
			'settings.language.searchHint' => 'Tìm ngôn ngữ...',
			'settings.language.noResults' => 'Không tìm thấy kết quả',
			'settings.heightUnit.title' => 'Đơn vị chiều cao',
			'settings.weightUnit.title' => 'Đơn vị cân nặng',
			'settings.mealReminders.title' => 'Nhắc nhở bữa ăn',
			'settings.mealReminders.subtitle' => 'Giữ đúng lộ trình với các thông báo kịp thời',
			'settings.theme.title' => 'Giao diện',
			'settings.theme.light' => 'Sáng',
			'settings.theme.dark' => 'Tối',
			'settings.theme.system' => 'Hệ thống',
			'settings.sendFeedback.title' => 'Gửi phản hồi',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Giúp chúng tôi cải thiện ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Phản hồi ứng dụng ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Vui lòng cung cấp phản hồi của bạn bên dưới:',
			'settings.sendFeedback.appVersion' => 'Phiên bản ứng dụng',
			'settings.sendFeedback.device' => 'Thiết bị',
			'settings.sendFeedback.osVersion' => 'Phiên bản HĐH',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Xuất lịch sử bữa ăn',
			'settings.exportMealHistory.subtitle' => 'Chia sẻ tệp CSV các bữa ăn đã ghi',
			'settings.exportMealHistory.shareText' => 'Bản xuất lịch sử bữa ăn Calorify của bạn',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Không thể xuất lịch sử bữa ăn: ${error}',
			'settings.clearAllData.title' => 'Xóa toàn bộ dữ liệu',
			'settings.clearAllData.subtitle' => 'Xóa vĩnh viễn tất cả thông tin của bạn',
			'settings.clearAllData.confirmationTitle' => 'Xóa toàn bộ dữ liệu?',
			'settings.clearAllData.confirmationMessage' => 'Hành động này không thể hoàn tác. Tất cả bữa ăn đã ghi, mục yêu thích và cài đặt hồ sơ của bạn sẽ bị xóa vĩnh viễn.',
			'settings.clearAllData.cancel' => 'Hủy',
			'settings.clearAllData.clearEverything' => 'Xóa tất cả',
			'settings.debugOptions.title' => 'Tùy chọn gỡ lỗi',
			'settings.developerModeEnabled' => 'Đã bật chế độ nhà phát triển!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Xem và quản lý quyền',
			'settings.healthConnect.unavailable.title' => 'Health Connect không khả dụng',
			'settings.healthConnect.unavailable.description' => 'Health Connect không có trên thiết bị này. Vui lòng cài đặt Health Connect từ Play Store (Android 9+) hoặc cập nhật lên Android 14+.',
			'settings.healthConnect.permissions.title' => 'Quyền',
			'settings.healthConnect.permissions.description' => 'Các quyền sau được yêu cầu để cung cấp tích hợp Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Đã cấp',
			'settings.healthConnect.permissions.notGranted' => 'Chưa cấp',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Đọc tổng calo tiêu hao',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Cho phép ứng dụng đọc tổng lượng calo bạn tiêu hao từ Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Quyền này dùng để hiển thị calo tiêu hao hằng ngày trong ứng dụng, giúp bạn hiểu tổng năng lượng tiêu hao trong ngày.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Đọc dữ liệu dinh dưỡng',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Cho phép ứng dụng đọc dữ liệu dinh dưỡng từ Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Quyền này cho phép ứng dụng đọc thông tin dinh dưỡng có thể đã được ghi bởi các ứng dụng khác kết nối với Health Connect, mang lại góc nhìn toàn diện về dinh dưỡng của bạn.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Ghi dữ liệu dinh dưỡng',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Cho phép ứng dụng ghi dữ liệu dinh dưỡng vào Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Quyền này cho phép ứng dụng đồng bộ bữa ăn bạn đã ghi lên Health Connect, giúp dữ liệu dinh dưỡng sẵn có cho các ứng dụng sức khỏe và thể dục khác bạn dùng.',
			'settings.healthConnect.managePermissions' => 'Quản lý quyền',
			'settings.healthConnect.openSettings' => 'Mở cài đặt Health Connect',
			'settings.healthConnect.requestPermissions' => 'Yêu cầu quyền',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Yêu cầu quyền đã bị hủy hoặc thất bại. Vui lòng thử lại hoặc cấp quyền thủ công trong cài đặt Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Không thể yêu cầu quyền. Vui lòng thử lại hoặc cấp quyền thủ công trong cài đặt Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Đang yêu cầu...',
			'settings.about.title' => 'Giới thiệu',
			'settings.about.tagline' => 'Nhận biết calo nhanh, miễn phí và ưu tiên quyền riêng tư',
			'settings.about.ourStory.title' => 'Câu chuyện của chúng tôi',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} ra đời từ một nỗi bực mình đơn giản: hầu hết các ứng dụng theo dõi calo đều quá phức tạp, đòi hỏi nhập liệu thủ công liên tục, thu phí đăng ký cao, hoặc làm ảnh hưởng đến quyền riêng tư.\n\nLà một nhà phát triển độc lập, tôi muốn xây dựng thứ gì đó đơn giản và công bằng hơn — một ứng dụng dùng AI để giảm nỗ lực, luôn nhanh và miễn phí, và tôn trọng dữ liệu sức khỏe của bạn.\n\n${appLabel} là ứng dụng mà tôi mong có: không tài khoản, không theo dõi hành vi, không quảng cáo — chỉ là thông tin rõ ràng, thiết thực và các mục tiêu sức khỏe của bạn.',
			'settings.about.privacy.title' => 'Quyền riêng tư của bạn là quan trọng',
			'settings.about.privacy.description' => 'Quyền riêng tư không phải là suy nghĩ sau cùng — đó là nguyên tắc thiết kế. Điều này có nghĩa là:',
			'settings.about.privacy.noAccounts' => 'Không cần tài khoản\nDùng ứng dụng ngay. Không đăng ký, không danh tính.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Không theo dõi hành vi\n${appLabel} không giám sát hoạt động của bạn, không xây dựng hồ sơ sử dụng, và không theo dõi bạn trên các ứng dụng hay website.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Không quảng cáo theo thiết kế\n${appLabel} được xây dựng để hoạt động mà không cần quảng cáo hay kiếm tiền dựa trên dữ liệu.',
			'settings.about.privacy.noDataSelling' => 'Không bán dữ liệu\nDữ liệu sức khỏe của bạn không bao giờ được bán hay chia sẻ với bên thứ ba.',
			'settings.about.privacy.localStorage' => 'Lưu trữ ưu tiên cục bộ\nDữ liệu của bạn ở lại trên thiết bị.',
			'settings.about.privacy.privacyPolicy' => 'Chính sách quyền riêng tư',
			'settings.about.developer.title' => 'Được xây dựng bởi một nhà phát triển độc lập',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} được xây dựng và duy trì bởi một nhà phát triển độc lập, tập trung vào việc tạo ra phần mềm sức khỏe êm dịu và tôn trọng quyền riêng tư.\n\nPhản hồi được đọc trực tiếp và góp phần định hướng ứng dụng.',
			'settings.about.developer.website' => 'Website',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Bạn có thích ${appLabel} không?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Phản hồi của bạn giúp ${appLabel} tốt hơn cho mọi người.',
			'settings.about.feedback.rateApp' => 'Đánh giá trên Play Store',
			'settings.about.feedback.sendFeedback' => 'Gửi phản hồi',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Bản dựng ${buildNumber}',
			'reminders.title' => 'Giữ đúng lộ trình với nhắc nhở',
			'reminders.description' => 'Nhận nhắc nhở nhẹ nhàng để ghi bữa ăn và duy trì đều đặn với mục tiêu dinh dưỡng',
			'reminders.notificationsEnabled' => 'Đã bật thông báo',
			'reminders.notificationsDisabled' => 'Đã tắt thông báo',
			'reminders.enabledSubtitle' => 'Bạn sẽ nhận được nhắc nhở bữa ăn',
			'reminders.disabledSubtitle' => 'Bật thông báo để nhận nhắc nhở bữa ăn',
			'reminders.mealReminders' => 'Nhắc nhở bữa ăn',
			'reminders.breakfast' => 'Bữa sáng',
			'reminders.lunch' => 'Bữa trưa',
			'reminders.dinner' => 'Bữa tối',
			'reminders.snack' => 'Bữa phụ',
			'reminders.unknown' => 'Không xác định',
			'reminders.change' => 'Thay đổi',
			'reminders.enableNotifications' => 'Bật thông báo',
			'reminders.skipForNow' => 'Bỏ qua lúc này',
			'reminders.saveChanges' => 'Lưu thay đổi',
			'reminders.enabledSuccessfully' => 'Đã bật thông báo thành công!',
			'reminders.permissionDenied' => 'Quyền thông báo bị từ chối',
			'reminders.errorEnabling' => ({required Object error}) => 'Lỗi khi bật thông báo: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Lỗi khi hoàn tất thiết lập: ${error}',
			'notifications.breakfast.title' => 'Đến giờ bữa sáng! 🍳',
			'notifications.breakfast.body' => 'Đừng quên ghi lại bữa sáng của bạn',
			'notifications.lunch.title' => 'Đến giờ bữa trưa! 🥗',
			'notifications.lunch.body' => 'Đã đến lúc ghi lại bữa trưa',
			'notifications.dinner.title' => 'Đến giờ bữa tối! 🍽️',
			'notifications.dinner.body' => 'Đừng quên ghi lại bữa tối của bạn',
			'notifications.snack.title' => 'Đến giờ bữa phụ! 🍎',
			'notifications.snack.body' => 'Đã đến lúc cho một bữa phụ lành mạnh',
			'notifications.test.title' => 'Thông báo kiểm thử',
			'login.title' => 'Đăng nhập',
			'login.signInWithGoogle' => 'Đăng nhập với Google',
			'login.signInFailed' => 'Đăng nhập Google thất bại hoặc đã bị hủy.',
			'disclaimer.pleaseNote' => 'Lưu ý',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} cung cấp thông tin dinh dưỡng ước tính. Độ chính xác phụ thuộc vào dữ liệu bạn cung cấp và sự khác biệt của thực phẩm. Hãy dùng như tài liệu tham khảo, không phải nguồn xác định. Tham khảo chuyên gia cho tư vấn dinh dưỡng cá nhân.',
			'disclaimer.snap.portionSize.title' => 'Khẩu phần',
			'disclaimer.snap.portionSize.description' => 'Độ chính xác của ước tính phụ thuộc nhiều vào việc bạn ước lượng đúng kích thước khẩu phần.',
			'disclaimer.snap.preparationMethods.title' => 'Cách chế biến',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Phương pháp nấu nướng có thể làm thay đổi đáng kể hàm lượng dinh dưỡng. Ước tính của ${appLabel} có thể không luôn tính hết các thay đổi này.',
			'disclaimer.snap.ingredients.title' => 'Thành phần',
			'disclaimer.snap.ingredients.description' => 'Các món phức tạp với nhiều thành phần ẩn có thể dẫn đến ước tính kém chính xác hơn.',
			'disclaimer.snap.databaseLimitations.title' => 'Giới hạn cơ sở dữ liệu',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Cơ sở dữ liệu thực phẩm của ${appLabel} rất lớn nhưng có thể không bao phủ mọi món hoặc biến thể.',
			'disclaimer.weightEstimate.title' => 'Về ước tính cân nặng',
			'disclaimer.weightEstimate.description' => 'Mức thay đổi cân nặng dự báo là ước tính lý thuyết dựa trên mô hình calo nạp vào vs. calo tiêu hao. Chỉ nhằm mục đích tạo động lực, không phải dự đoán cân nặng thực tế của bạn.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Độ chính xác calo',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Ước tính này chỉ chính xác khi lượng calo bạn nạp và tiêu hao được theo dõi chính xác. Ghi chép không chuẩn sẽ cho ra dự báo không chính xác.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Yếu tố sinh học',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Giảm/tăng cân thực tế chịu ảnh hưởng bởi trao đổi chất, hormone, giấc ngủ, căng thẳng, nước, và các yếu tố cá nhân khác mà ${appLabel} không thể đo lường.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Nước & dao động cân',
			'disclaimer.weightEstimate.waterWeight.description' => 'Cân nặng hằng ngày có thể dao động đáng kể do giữ nước, tiêu hóa và thời điểm cân. Ước tính không tính đến các dao động này.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Hướng dẫn chuyên môn',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Không dùng ước tính này để đưa ra quyết định y khoa. Luôn tham khảo chuyên gia y tế hoặc chuyên gia dinh dưỡng cho tư vấn cá nhân.',
			'disclaimer.healthMetrics.description' => 'Các chỉ số này giúp bạn hiểu nhu cầu năng lượng của cơ thể và định hướng mục tiêu dinh dưỡng.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Tốc độ trao đổi chất cơ bản (BMR) là lượng calo cơ thể bạn đốt khi nghỉ ngơi để duy trì chức năng cơ bản như hô hấp và tuần hoàn. BMR phụ thuộc vào tuổi, giới tính, chiều cao và cân nặng. BMR cao nghĩa là cơ thể tự đốt nhiều calo hơn khi nghỉ, thường do nhiều khối cơ, trẻ tuổi, hoặc nam giới. BMR thấp thường cho thấy ít cơ hơn, lớn tuổi hơn, hoặc nữ giới.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Tổng năng lượng tiêu hao hằng ngày (TDEE) là tổng calo bạn đốt mỗi ngày, gồm BMR cộng calo từ vận động và hoạt động thường nhật. TDEE phụ thuộc vào BMR và mức độ hoạt động. TDEE cao nghĩa là bạn đốt nhiều calo hơn tổng thể, thường do hoạt động nhiều hoặc BMR cao. TDEE thấp cho thấy hoạt động hằng ngày ít hơn hoặc BMR thấp.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Mục tiêu hằng ngày',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Mục tiêu hằng ngày là lượng calo khuyến nghị dựa trên TDEE và mục tiêu cân nặng của bạn. Để giảm cân, bạn nạp ít calo hơn TDEE. Để duy trì, bạn khớp TDEE. Để tăng cân, bạn nạp nhiều hơn TDEE. Điều này giúp bạn đạt thay đổi cân nặng theo nhịp độ lành mạnh.',
			'disclaimer.calorieExpenditure.title' => 'Ước tính năng lượng tiêu hao',
			'disclaimer.calorieExpenditure.description' => 'Khi không có dữ liệu Health Connect, chúng tôi ước tính calo tiêu hao hôm nay bằng BMR và mức độ hoạt động (TDEE) của bạn, được tỷ lệ theo phần thời gian trong ngày đã trôi qua.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Cách tính ước tính',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Chúng tôi tính TDEE (dựa trên hồ sơ của bạn) và nhân với tỷ lệ thời gian đã qua trong ngày (giờ + phút) / 24 để ước tính calo đã tiêu hao đến hiện tại.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Hướng dẫn chuyên môn',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Không dùng ước tính này để đưa ra quyết định y khoa. Luôn tham khảo chuyên gia y tế hoặc chuyên gia dinh dưỡng cho tư vấn cá nhân.',
			'common.close' => 'Đóng',
			'common.kContinue' => 'Tiếp tục',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Bạn có thích ${appLabel} không?',
			'feedbackRating.yes' => 'Có, tôi đang rất thích',
			'feedbackRating.no' => 'Không hẳn',
			'feedbackRating.rateStepHeading' => 'Đánh giá trên Play Store',
			'feedbackRating.emailStepHeading' => 'Gửi phản hồi qua email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Một đánh giá nhanh giúp người khác tìm thấy ${appLabel} và tiếp thêm động lực phát triển. Bạn có thể dành chút thời gian để đánh giá không?',
			'feedbackRating.shareFeedbackViaEmail' => 'Phản hồi của bạn định hình những gì tiếp theo — chúng tôi đọc mọi tin nhắn. Bạn có muốn chia sẻ suy nghĩ qua email không?',
			'feedbackRating.rateCta' => 'Đánh giá trên Play Store',
			'feedbackRating.maybeLater' => 'Để sau',
			'feedbackRating.sendFeedback' => 'Gửi phản hồi',
			'feedbackRating.noThanks' => 'Không, cảm ơn',
			'feedbackRating.aboutUsDescription' => 'Được làm với sự chăm chút bởi một nhóm nhỏ. Chúng tôi tập trung vào quyền riêng tư, sự đơn giản, và giúp bạn xây dựng thói quen ăn uống tốt hơn.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Tò mò ai đứng sau ${appLabel}? Xem ',
			'feedbackRating.aboutUsLinkLabel' => 'Giới thiệu về chúng tôi',
			'feedbackRating.thankYouMessage' => 'Cảm ơn! Chúng tôi sẽ hỏi lại vào lúc khác.',
			'health.syncFailed' => 'Không thể đồng bộ với Health Connect',
			'health.mealSynced' => 'Đã đồng bộ bữa ăn với Health Connect',
			_ => null,
		};
	}
}
