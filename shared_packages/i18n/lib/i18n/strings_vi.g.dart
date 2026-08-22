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
class TranslationsVi extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsVi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.vi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <vi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

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
	@override late final _TranslationsLocalNutritionPhase4Vi localNutritionPhase4 = _TranslationsLocalNutritionPhase4Vi._(_root);
	@override late final _TranslationsCommonVi common = _TranslationsCommonVi._(_root);
	@override late final _TranslationsFeedbackRatingVi feedbackRating = _TranslationsFeedbackRatingVi._(_root);
	@override late final _TranslationsHealthVi health = _TranslationsHealthVi._(_root);
}

// Path: errors
class _TranslationsErrorsVi extends TranslationsErrorsEn {
	_TranslationsErrorsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Bạn đã gửi quá nhiều yêu cầu. Vui lòng đợi một lúc rồi thử lại.';
	@override String get networkError => 'Lỗi mạng. Vui lòng kiểm tra kết nối internet của bạn.';
	@override String get unknownError => 'Đã xảy ra sự cố. Vui lòng thử lại sau.';
	@override String get loadingProfileData => 'Lỗi khi tải dữ liệu hồ sơ';
	@override String get somethingWentWrong => 'Đã xảy ra sự cố.';
	@override String get retry => 'Thử lại';
}

// Path: onboarding
class _TranslationsOnboardingVi extends TranslationsOnboardingEn {
	_TranslationsOnboardingVi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _TranslationsTabsVi extends TranslationsTabsEn {
	_TranslationsTabsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Bảng điều khiển';
	@override String get history => 'Lịch sử';
}

// Path: home
class _TranslationsHomeVi extends TranslationsHomeEn {
	_TranslationsHomeVi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _TranslationsHistoryVi extends TranslationsHistoryEn {
	_TranslationsHistoryVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Chưa có bữa ăn được ghi';
	@override String get emptyMessage => 'Chụp ảnh bữa ăn gần nhất để ghi vào đây.';
	@override String get today => 'Hôm nay';
	@override String get yesterday => 'Hôm qua';
}

// Path: meal
class _TranslationsMealVi extends TranslationsMealEn {
	_TranslationsMealVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Ôi không!';
	@override String get delete => 'Xóa';
	@override String get editMeal => 'Chỉnh sửa bữa ăn';
	@override String get addMeal => 'Thêm bữa ăn';
	@override String get saveMeal => 'Lưu bữa ăn';
	@override String get save => 'Lưu';
	@override String get mealName => 'Tên bữa ăn';
	@override String get mealNameHint => 'ví dụ: Trứng khuấy với bánh mì nướng';
	@override String get nameRequired => 'Nhập tên bữa ăn trước khi lưu.';
	@override String get mealQuantity => 'Số lượng bữa ăn';
	@override String get mealQuantityHint => 'ví dụ: 1 bát, 2 lát';
	@override String get timeOfMeal => 'Thời gian bữa ăn';
	@override String get timeOfMealHint => 'Chọn thời gian bạn dùng bữa';
	@override String get mealType => 'Loại bữa ăn';
	@override late final _TranslationsMealNutritionVi nutrition = _TranslationsMealNutritionVi._(_root);
	@override late final _TranslationsMealDeleteConfirmationVi deleteConfirmation = _TranslationsMealDeleteConfirmationVi._(_root);
	@override String get addedToLog => 'Đã thêm bữa ăn vào nhật ký!';
	@override String couldNotAdd({required Object error}) => 'Không thể thêm bữa ăn: ${error}';
	@override String get savedSuccessfully => 'Thêm bữa ăn thành công!';
	@override String get updatedSuccessfully => 'Cập nhật bữa ăn thành công!';
	@override String errorSaving({required Object error}) => 'Lỗi khi lưu bữa ăn: ${error}';
	@override String get removedFromFavorites => 'Đã gỡ khỏi mục yêu thích!';
	@override String get savedAsFavorite => 'Đã lưu bữa ăn vào yêu thích!';
	@override String get unfavorite => 'Bỏ yêu thích';
	@override String couldNotUpdateFavorite({required Object error}) => 'Không thể cập nhật mục yêu thích: ${error}';
	@override String get feedbackThanks => 'Cảm ơn phản hồi!';
	@override String get reanalysisUpdated => 'Đã cập nhật phân tích bữa ăn dựa trên phản hồi của bạn.';
	@override String failedToProcess({required Object error}) => 'Xử lý thất bại: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Xử lý ảnh thất bại: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Lỗi nén ảnh: ${error}';
	@override String get failedToSave => 'Lưu dữ liệu thất bại. Vui lòng thử lại.';
	@override String get skip => 'Bỏ qua';
	@override late final _TranslationsMealQuestionFlowVi questionFlow = _TranslationsMealQuestionFlowVi._(_root);
	@override late final _TranslationsMealAnalysisVi analysis = _TranslationsMealAnalysisVi._(_root);
	@override late final _TranslationsMealLocalInferenceVi localInference = _TranslationsMealLocalInferenceVi._(_root);
	@override late final _TranslationsMealFeedbackVi feedback = _TranslationsMealFeedbackVi._(_root);
}

// Path: favorites
class _TranslationsFavoritesVi extends TranslationsFavoritesEn {
	_TranslationsFavoritesVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yêu thích';
	@override String get empty => 'Chưa có bữa ăn yêu thích.';
	@override String get searchPlaceholder => 'Tìm bữa ăn yêu thích';
	@override String get searchEmptyTitle => 'Không có mục yêu thích phù hợp';
	@override String get searchEmptySubtitle => 'Thử tên bữa khác, số lượng, hoặc loại bữa.';
	@override String get sortLabel => 'Sắp xếp yêu thích';
	@override String get undo => 'Hoàn tác';
	@override String removed({required Object name}) => 'Đã gỡ ${name} khỏi yêu thích';
	@override late final _TranslationsFavoritesSortOptionsVi sortOptions = _TranslationsFavoritesSortOptionsVi._(_root);
}

// Path: profile
class _TranslationsProfileVi extends TranslationsProfileEn {
	_TranslationsProfileVi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _TranslationsHealthScoreVi extends TranslationsHealthScoreEn {
	_TranslationsHealthScoreVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Điểm sức khỏe';
	@override String get whyThisScore => 'Tại sao có điểm này?';
	@override String get note => 'Điểm này là ước tính AI dựa trên nguyên liệu được nhận diện và mật độ dinh dưỡng. Luôn tham khảo chuyên gia để được tư vấn chế độ ăn cá nhân.';
	@override String get unhealthy => 'Không khỏe';
	@override String get healthy => 'Khỏe';
	@override String get neutral => 'Trung tính';
}

// Path: editProfile
class _TranslationsEditProfileVi extends TranslationsEditProfileEn {
	_TranslationsEditProfileVi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsVi extends TranslationsSettingsEn {
	_TranslationsSettingsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cài đặt';
	@override late final _TranslationsSettingsSectionsVi sections = _TranslationsSettingsSectionsVi._(_root);
	@override late final _TranslationsSettingsEditProfileVi editProfile = _TranslationsSettingsEditProfileVi._(_root);
	@override late final _TranslationsSettingsLanguageVi language = _TranslationsSettingsLanguageVi._(_root);
	@override late final _TranslationsSettingsHeightUnitVi heightUnit = _TranslationsSettingsHeightUnitVi._(_root);
	@override late final _TranslationsSettingsWeightUnitVi weightUnit = _TranslationsSettingsWeightUnitVi._(_root);
	@override late final _TranslationsSettingsMealRemindersVi mealReminders = _TranslationsSettingsMealRemindersVi._(_root);
	@override late final _TranslationsSettingsLocalInferenceVi localInference = _TranslationsSettingsLocalInferenceVi._(_root);
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
class _TranslationsRemindersVi extends TranslationsRemindersEn {
	_TranslationsRemindersVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giữ đúng lịch với nhắc nhở';
	@override String get description => 'Nhận nhắc nhẹ để ghi bữa ăn và duy trì mục tiêu dinh dưỡng';
	@override String get notificationsEnabled => 'Thông báo đã bật';
	@override String get notificationsDisabled => 'Thông báo đã tắt';
	@override String get enabledSubtitle => 'Bạn sẽ nhận nhắc bữa ăn';
	@override String get disabledSubtitle => 'Bật thông báo để nhận nhắc bữa ăn';
	@override String get mealReminders => 'Nhắc bữa ăn';
	@override String get breakfast => 'Bữa sáng';
	@override String get lunch => 'Bữa trưa';
	@override String get dinner => 'Bữa tối';
	@override String get snack => 'Ăn vặt';
	@override String get unknown => 'Không xác định';
	@override String get change => 'Thay đổi';
	@override String get enableNotifications => 'Bật thông báo';
	@override String get skipForNow => 'Bỏ qua trước';
	@override String get saveChanges => 'Lưu thay đổi';
	@override String get enabledSuccessfully => 'Bật thông báo thành công!';
	@override String get permissionDenied => 'Quyền thông báo bị từ chối';
	@override String errorEnabling({required Object error}) => 'Lỗi khi bật thông báo: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Lỗi khi hoàn tất thiết lập: ${error}';
}

// Path: notifications
class _TranslationsNotificationsVi extends TranslationsNotificationsEn {
	_TranslationsNotificationsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastVi breakfast = _TranslationsNotificationsBreakfastVi._(_root);
	@override late final _TranslationsNotificationsLunchVi lunch = _TranslationsNotificationsLunchVi._(_root);
	@override late final _TranslationsNotificationsDinnerVi dinner = _TranslationsNotificationsDinnerVi._(_root);
	@override late final _TranslationsNotificationsSnackVi snack = _TranslationsNotificationsSnackVi._(_root);
	@override late final _TranslationsNotificationsTestVi test = _TranslationsNotificationsTestVi._(_root);
}

// Path: login
class _TranslationsLoginVi extends TranslationsLoginEn {
	_TranslationsLoginVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đăng nhập';
	@override String get signInWithGoogle => 'Đăng nhập bằng Google';
	@override String get signInFailed => 'Đăng nhập Google thất bại hoặc đã bị hủy.';
}

// Path: disclaimer
class _TranslationsDisclaimerVi extends TranslationsDisclaimerEn {
	_TranslationsDisclaimerVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Vui lòng lưu ý';
	@override late final _TranslationsDisclaimerSnapVi snap = _TranslationsDisclaimerSnapVi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateVi weightEstimate = _TranslationsDisclaimerWeightEstimateVi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsVi healthMetrics = _TranslationsDisclaimerHealthMetricsVi._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureVi calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureVi._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4Vi extends TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4Vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

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
class _TranslationsCommonVi extends TranslationsCommonEn {
	_TranslationsCommonVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get close => 'Đóng';
	@override String get kContinue => 'Tiếp tục';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingVi extends TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Bạn có thích ${appLabel} không?';
	@override String get yes => 'Có, tôi thích';
	@override String get no => 'Không hẳn';
	@override String get rateStepHeading => 'Đánh giá trên Play Store';
	@override String get emailStepHeading => 'Gửi phản hồi qua email';
	@override String soloDevMessage({required Object appLabel}) => 'Một đánh giá nhanh giúp người khác tìm thấy ${appLabel} và duy trì phát triển. Bạn có thể dành chút thời gian để đánh giá không?';
	@override String get shareFeedbackViaEmail => 'Phản hồi của bạn định hình những gì sẽ đến — chúng tôi đọc mọi tin nhắn. Bạn muốn chia sẻ qua email không?';
	@override String get rateCta => 'Đánh giá trên Play Store';
	@override String get maybeLater => 'Để sau';
	@override String get sendFeedback => 'Gửi phản hồi';
	@override String get noThanks => 'Không, cảm ơn';
	@override String get aboutUsDescription => 'Được tạo với sự quan tâm bởi một nhóm nhỏ. Chúng tôi tập trung vào quyền riêng tư, đơn giản và giúp bạn xây thói quen ăn uống tốt hơn.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Tò mò ai đứng sau ${appLabel}? Xem ';
	@override String get aboutUsLinkLabel => 'Về chúng tôi';
	@override String get thankYouMessage => 'Cảm ơn! Chúng tôi sẽ hỏi lại lúc khác.';
}

// Path: health
class _TranslationsHealthVi extends TranslationsHealthEn {
	_TranslationsHealthVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Không thể đồng bộ với Health Connect';
	@override String get mealSynced => 'Bữa ăn đã được đồng bộ với Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesVi extends TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionVi foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionVi._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisVi aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisVi._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationVi healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationVi._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderVi extends TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bạn thuộc giới tính nào?';
	@override String get description => 'Giới tính giúp chúng tôi tính chính xác tỷ lệ trao đổi chất cơ bản (BMR).';
	@override String get next => 'Tiếp theo';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightVi extends TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bạn cao bao nhiêu?';
	@override String get description => 'Chiều cao giúp chúng tôi tính BMI và nhu cầu năng lượng chính xác hơn.';
	@override String get metric => 'Hệ mét';
	@override String get imperial => 'Hệ Anh';
	@override String get next => 'Tiếp theo';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightVi extends TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Cân nặng hiện tại của bạn là bao nhiêu?';
	@override String get currentDescription => 'Cân nặng hiện tại rất cần thiết để cá nhân hóa mục tiêu hằng ngày của bạn.';
	@override String get targetTitle => 'Mục tiêu cân nặng của bạn là gì?';
	@override String get targetDescription => 'Đặt cân nặng mục tiêu giúp chúng tôi xác định kế hoạch dài hạn cho bạn.';
	@override String get metric => 'Hệ mét';
	@override String get imperial => 'Hệ Anh';
	@override String get next => 'Tiếp theo';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeVi extends TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bạn sinh ngày khi nào?';
	@override String get description => 'Tuổi của bạn giúp chúng tôi tính nhu cầu calo chính xác.';
	@override String get next => 'Tiếp theo';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleVi extends TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Thiếu';
	@override String get healthy => 'Lành mạnh';
	@override String get overweight => 'Thừa';
	@override String get obese => 'Béo';
	@override late final _TranslationsOnboardingBmiScaleCategoriesVi categories = _TranslationsOnboardingBmiScaleCategoriesVi._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesVi messages = _TranslationsOnboardingBmiScaleMessagesVi._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalVi extends TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mục tiêu của bạn là gì?';
	@override String get description => 'Chọn mục tiêu mô tả đúng điều bạn muốn đạt được';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelVi extends TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bạn hoạt động nhiều như thế nào?';
	@override String get description => 'Điều này giúp chúng tôi tính nhu cầu calo hàng ngày chính xác hơn';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectVi extends TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kết nối với Health Connect';
	@override String get description => 'Đồng bộ dữ liệu sức khỏe để có cái nhìn tốt hơn và theo dõi calo tự động';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingVi automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingVi._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsVi progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsVi._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationVi seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationVi._(_root);
	@override String get connected => 'Đã kết nối Health Connect';
	@override String get notConnected => 'Chưa kết nối Health Connect';
	@override String get setup => 'Thiết lập Health Connect';
	@override String get skipForNow => 'Bỏ qua trước';
	@override String get statusConnected => 'Health Connect đã được kết nối.';
	@override String get statusSuccess => 'Đã kết nối Health Connect thành công!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Từ chối quyền. Vui lòng bật quyền Health Connect trong cài đặt điện thoại cho ${appLabel}.';
	@override String statusError({required Object error}) => 'Lỗi khi thiết lập Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementVi extends TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessVi trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessVi._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileVi healthProfile = _TranslationsOnboardingReinforcementHealthProfileVi._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleVi goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleVi._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryVi extends TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tóm tắt AI của bạn';
	@override String get logMore => 'Ghi thêm bữa ăn trong vài ngày tới để nhận các phân tích AI cá nhân hóa.';
	@override String get loading => 'Đang tải tóm tắt...';
	@override String mealCount({required Object count}) => '${count} bữa đã ghi';
	@override String macroBalanceScore({required Object score}) => 'Điểm cân bằng ${score}';
	@override String get topFoods => 'Thực phẩm hàng đầu';
	@override String get trendUp => 'Lượng calo tăng dần';
	@override String get trendDown => 'Lượng calo giảm dần';
	@override String get trendSteady => 'Lượng calo ổn định';
	@override String generatedAt({required Object time}) => 'Cập nhật ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalVi extends TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đặt mục tiêu hàng ngày';
	@override String get titleSet => 'Mục tiêu hàng ngày của bạn';
	@override String get description => 'Sẵn sàng bắt đầu hành trình sức khỏe? Đặt mục tiêu calo hằng ngày bên dưới để khởi động tiến trình.';
	@override String get descriptionSet => 'La bàn của bạn đã đặt! Đây là mục tiêu calo hàng ngày để hướng dẫn bạn.';
	@override String get yourGoal => 'Mục tiêu của bạn';
	@override String get goal => 'Mục tiêu';
	@override String get dailyCalories => 'Calo hằng ngày (kcal)';
	@override String get setGoal => 'Đặt mục tiêu';
	@override String get intake => 'Nạp vào';
	@override String get burned => 'Đã tiêu';
	@override String get weightImpact => 'Tác động lên cân nặng';
	@override String get estLoss => 'Ước tính giảm';
	@override String get estGain => 'Ước tính tăng';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryVi extends TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tóm tắt hàng ngày';
	@override String get calories => 'Calo';
	@override String get carbs => 'Tinh bột';
	@override String get protein => 'Protein';
	@override String get fat => 'Chất béo';
	@override String get fiber => 'Chất xơ';
	@override String get grams => 'gam';
	@override String get chartAccessibilityLabel => 'Biểu đồ các macro';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressVi extends TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tỷ lệ macro hôm nay';
	@override String get target => 'Mục tiêu';
	@override String get current => 'Hiện tại';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryVi extends TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lịch sử macro 7 ngày';
	@override String get trendTitle => 'Xu hướng hôm nay';
	@override String peakHour({required Object hour}) => 'Cao điểm: ${hour}:00';
	@override String get noHistoryYet => 'Chưa có lịch sử';
	@override String get startLogging => 'Bắt đầu ghi bữa ăn để xem\nxu hướng macro 7 ngày tại đây';
}

// Path: home.mealLog
class _TranslationsHomeMealLogVi extends TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Các bữa đã ghi';
	@override String get emptyMessage => 'Chụp ảnh bữa ăn gần nhất để ghi vào đây.';
	@override String get noMealsToday => 'Chưa có bữa ăn ghi hôm nay';
	@override String get seeAllMeals => 'Xem tất cả bữa ăn';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionVi extends TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thêm nhanh với AI';
	@override String get description => 'Mô tả bữa ăn của bạn, để AI lo phần chi tiết.';
	@override String get hint => 'ví dụ: Buổi sáng tôi ăn một bát lớn yến mạch với 1 quả chuối thái lát và 1 thìa whey ...';
	@override String get analyzeMeal => 'Phân tích bữa ăn';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsVi extends TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bữa ăn yêu thích';
	@override String get description => 'Thêm nhanh một trong các bữa ăn yêu thích của bạn.';
	@override String get noFavorites => 'Chưa có bữa ăn yêu thích.';
	@override String get addFavoriteHint => 'Nhấn biểu tượng sao trên một bữa ăn để đánh dấu yêu thích.';
	@override String get seeAll => 'Xem tất cả';
	@override String get add => 'Thêm';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapVi extends TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chụp & Ghi bữa ăn';
	@override String get description => 'Sử dụng camera để chụp ảnh thức ăn của bạn cho phân tích AI.';
	@override String get openCamera => 'Mở camera';
	@override String get gallery => 'Thư viện';
	@override String get compressingPhoto => 'Tối ưu ảnh…';
	@override String get uploadingPhoto => 'Đang tải ảnh lên…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthVi extends TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đồng bộ với Health Connect';
	@override String get description => 'Đồng bộ dữ liệu dinh dưỡng của bạn với Health Connect';
	@override String get install => 'Cài đặt';
	@override String get connect => 'Kết nối';
}

// Path: meal.nutrition
class _TranslationsMealNutritionVi extends TranslationsMealNutritionEn {
	_TranslationsMealNutritionVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calo';
	@override String get carbs => 'Tinh bột (g)';
	@override String get protein => 'Protein (g)';
	@override String get fat => 'Chất béo (g)';
	@override String get fiber => 'Chất xơ (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationVi extends TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Xóa bữa ăn';
	@override String get message => 'Bạn có chắc muốn xóa mục bữa ăn này không?';
	@override String get cancel => 'Hủy';
	@override String get delete => 'Xóa';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowVi extends TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Câu hỏi ${current} trên ${total}';
	@override String get noQuestionsAvailable => 'Không có câu hỏi';
	@override String get next => 'Tiếp theo';
	@override String get continueLabel => 'Tiếp tục';
}

// Path: meal.analysis
class _TranslationsMealAnalysisVi extends TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đang phân tích bữa ăn của bạn';
	@override String get stepStarted => 'Bắt đầu…';
	@override String get stepDecomposition => 'Hiểu bữa ăn của bạn…';
	@override String get stepIngredients => 'Đối chiếu nguyên liệu với dữ liệu dinh dưỡng…';
	@override String get stepUncertainty => 'Kiểm tra độ tin cậy…';
	@override String get stepMealTypeQuestion => 'Sắp xong…';
	@override String get stepResult => 'Hoàn tất kết quả…';
	@override String get stepError => 'Đã xảy ra lỗi';
	@override String get stepDefault => 'Đang phân tích bữa ăn của bạn…';
	@override String get progressUnderstand => 'Đang hiểu bữa ăn';
	@override String get progressMatch => 'Tìm dinh dưỡng của nguyên liệu';
	@override String get progressCheck => 'Kiểm tra khẩu phần và độ tin cậy';
	@override String get progressMealType => 'Chọn loại bữa ăn';
	@override String get progressFinish => 'Tính toán calo và các macro';
	@override String get detectedIngredientHeading => 'Nguyên liệu chúng tôi nhận thấy';
	@override String ingredientsOverflow({required Object count}) => '${count} khác';
	@override String ingredientsLine({required Object count}) => 'Phát hiện ${count} nguyên liệu';
	@override String get ingredientsPending => 'Đang quét nguyên liệu…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Mẹo: Kiên trì còn hơn hoàn hảo—ghi chép đều đặn sẽ cho thấy các mô hình quan trọng.';
	@override String get offlineTip1 => 'Mẹo: Với ảnh, ánh sáng tự nhiên và góc chụp từ trên xuống giúp xác định khẩu phần chính xác hơn.';
	@override String get offlineTip2 => 'Mẹo: Nhắc đến đồ uống, nước sốt và dầu ăn—chúng thêm calo mà thường bị quên.';
	@override String get offlineTip3 => 'Mẹo: Ghi nhanh kích thước khẩu phần (1 bát, cà phê lớn) sẽ làm ước tính chính xác hơn nhiều.';
	@override String get offlineTip4 => 'Mẹo: Ghi sau bữa ăn vẫn giúp xây thói quen; không cần hoàn hảo.';
	@override String get offlineTip5 => 'Mẹo: Nói cách thức nấu khi làm thay đổi nhiều calo (chiên vs nướng).';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceVi extends TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Xem lại các thành phần đã nhận diện';
	@override String get reviewSubtitle => 'Nội dung này được phân tích trên thiết bị của bạn. Hãy chỉnh sửa tên hoặc định lượng trước khi tính toán dinh dưỡng.';
	@override String get mealName => 'Tên bữa ăn';
	@override String get ingredient => 'Thành phần';
	@override String get grams => 'Số gam ước tính';
	@override String get removeIngredient => 'Xóa thành phần';
	@override String get continueLabel => 'Tiếp tục';
	@override String get invalidProposal => 'Vui lòng thêm ít nhất một thành phần và nhập số gam là số dương.';
	@override String get localUnavailable => 'Tính năng phân tích trên thiết bị hiện không khả dụng.';
	@override String get calculationDetails => 'Cách tính toán';
	@override String get interpretationLocal => 'Thành phần được phân tích trên thiết bị này';
	@override String get interpretationCloud => 'Thành phần được phân tích trên đám mây';
	@override String get interpretationManual => 'Thành phần do bạn xem lại hoặc chỉnh sửa';
	@override String get nutritionRemote => 'Dữ liệu dinh dưỡng được lấy từ USDA thông qua Calorify';
	@override String get nutritionFallback => 'Một số giá trị dinh dưỡng được ước tính từ xa';
	@override String get calculationServer => 'Calo và macro được tính toán bởi Calorify';
	@override String get fallbackUsed => 'Phân tích cục bộ đã chuyển sang xử lý trên đám mây';
	@override String get noRawContent => 'Biên lai chẩn đoán không bao gồm văn bản hoặc ảnh bữa ăn của bạn.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackVi extends TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Có gì sai?';
	@override String get subtitle => 'Giúp chúng tôi cải thiện phân tích bằng cách chọn một hoặc nhiều vấn đề.';
	@override String get tellUsMore => 'Nói thêm cho chúng tôi';
	@override String get describeIncorrect => 'Mô tả phần sai';
	@override String get submit => 'Gửi';
	@override String get issueFoodIdentification => 'Nhận diện món';
	@override String get issuePortionSize => 'Kích thước khẩu phần';
	@override String get issueCalorieDistribution => 'Phân bố calo';
	@override String get issueMacrosWrong => 'Các macro sai';
	@override String get issueMissingItems => 'Thiếu mục';
	@override String get issueExtraItems => 'Thừa mục';
	@override String get issueOther => 'Khác';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsVi extends TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Gần đây';
	@override String get calories => 'Calo';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsVi extends TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'HỒ SƠ';
	@override String get basicInformation => 'THÔNG TIN CƠ BẢN';
	@override String get goalsAndActivity => 'MỤC TIÊU & HOẠT ĐỘNG';
	@override String get calculatedValues => 'GIÁ TRỊ ĐƯỢC TÍNH';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesVi extends TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Mục tiêu hàng ngày';
	@override String get calPerDay => 'cal/ngày';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsVi extends TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'THÔNG TIN CÁ NHÂN';
	@override String get physicalMeasurements => 'SỐ LIỆU THỂ CHẤT';
	@override String get goalsAndActivity => 'MỤC TIÊU & HOẠT ĐỘNG';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersVi extends TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get male => 'Nam';
	@override String get female => 'Nữ';
	@override String get other => 'Khác';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsVi extends TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightVi loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightVi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightVi maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightVi._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightVi gainWeight = _TranslationsEditProfileWeightGoalsGainWeightVi._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsVi extends TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryVi sedentary = _TranslationsEditProfileActivityLevelsSedentaryVi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveVi lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveVi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveVi moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveVi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveVi veryActive = _TranslationsEditProfileActivityLevelsVeryActiveVi._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveVi extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveVi._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsVi extends TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'HỒ SƠ';
	@override String get localization => 'NGÔN NGỮ';
	@override String get notifications => 'THÔNG BÁO';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get localInference => 'PHÂN TÍCH TRÊN THIẾT BỊ';
	@override String get supportAndLegal => 'HỖ TRỢ & PHÁP LÝ';
	@override String get about => 'VỀ ỨNG DỤNG';
	@override String get dangerZone => 'KHU VỰC NGUY HIỂM';
	@override String get developer => 'NHÀ PHÁT TRIỂN';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileVi extends TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chỉnh sửa hồ sơ';
	@override String get subtitle => 'Cập nhật thông tin cá nhân của bạn';
}

// Path: settings.language
class _TranslationsSettingsLanguageVi extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ngôn ngữ';
	@override String get subtitle => 'Chọn ngôn ngữ ưa thích';
	@override String get searchHint => 'Tìm ngôn ngữ...';
	@override String get noResults => 'Không tìm thấy kết quả';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitVi extends TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đơn vị chiều cao';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitVi extends TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đơn vị cân nặng';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersVi extends TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nhắc bữa ăn';
	@override String get subtitle => 'Giữ đúng lịch với thông báo kịp thời';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceVi extends TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Phân tích bữa ăn trên thiết bị';
	@override String get subtitle => 'Sử dụng Gemini Nano để phân tích các bữa ăn được hỗ trợ trước khi tính toán dinh dưỡng';
	@override String get unavailable => 'Không khả dụng trên thiết bị này';
	@override String get rolloutUnavailable => 'Tìm thấy phần cứng tương thích, nhưng tính năng này chưa được kích hoạt cho phiên bản ứng dụng này';
	@override String get modelSetup => 'Gemini Nano cần hoàn tất tải xuống trước khi có thể kích hoạt tính năng này';
	@override String get useLocalTitle => 'Sử dụng phân tích trên thiết bị';
	@override String get useLocalSubtitle => 'Tùy chọn và mặc định là tắt. Kết quả có thể kém chính xác hơn đối với các bữa ăn phức tạp.';
	@override String get disclosureTitle => 'Trước khi bạn bật phân tích trên thiết bị';
	@override String get disclosureBody => 'Gemini Nano có thể nhận diện thành phần và ước tính định lượng trên các thiết bị Android được hỗ trợ. Đề xuất thành phần sau khi bạn xem lại sẽ được gửi đến Calorify để đối chiếu dữ liệu dinh dưỡng USDA và tính toán.';
	@override String get disclosureLimit1 => 'Các món ăn phức tạp, thành phần ẩn và kích thước phần ăn có thể bị nhận diện sai.';
	@override String get disclosureLimit2 => 'Mô hình có thể không khả dụng khi đang tải xuống, đang bận, chạy ngầm hoặc bị giới hạn bởi thiết bị.';
	@override String get disclosureLimit3 => 'Nếu phân tích cục bộ không thể hoàn tất, bản beta này sẽ tự động gửi mô tả bữa ăn gốc của bạn đến Calorify để phân tích trên đám mây.';
	@override String get acknowledgement => 'Tôi hiểu rằng tôi nên xem lại các thành phần và định lượng đã nhận diện.';
	@override String get enable => 'Xác nhận và kích hoạt';
	@override String get cancel => 'Hủy';
}

// Path: settings.theme
class _TranslationsSettingsThemeVi extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giao diện';
	@override String get light => 'Sáng';
	@override String get dark => 'Tối';
	@override String get system => 'Hệ thống';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackVi extends TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gửi phản hồi';
	@override String subtitle({required Object appLabel}) => 'Giúp ${appLabel} tốt hơn';
	@override String emailSubject({required Object appLabel}) => 'Phản hồi ứng dụng ${appLabel}';
	@override String get emailBodyPrefix => 'Vui lòng cung cấp phản hồi của bạn bên dưới:';
	@override String get appVersion => 'Phiên bản ứng dụng';
	@override String get device => 'Thiết bị';
	@override String get osVersion => 'Phiên bản OS';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryVi extends TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Xuất lịch sử bữa ăn';
	@override String get subtitle => 'Chia sẻ CSV các bữa ăn đã ghi';
	@override String get shareText => 'Bản xuất lịch sử bữa ăn Calorify của bạn';
	@override String failed({required Object error}) => 'Không thể xuất lịch sử bữa ăn: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataVi extends TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Xóa tất cả dữ liệu';
	@override String get subtitle => 'Xóa vĩnh viễn mọi thông tin của bạn';
	@override String get confirmationTitle => 'Xóa tất cả dữ liệu?';
	@override String get confirmationMessage => 'Hành động này không thể hoàn tác. Tất cả bữa ăn đã ghi, mục yêu thích và cài đặt hồ sơ của bạn sẽ bị xóa vĩnh viễn.';
	@override String get cancel => 'Hủy';
	@override String get clearEverything => 'Xóa hết';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsVi extends TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tùy chọn gỡ lỗi';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectVi extends TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectVi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsAboutVi extends TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Về';
	@override String get tagline => 'Nhanh, miễn phí và ưu tiên quyền riêng tư trong nhận thức calo';
	@override late final _TranslationsSettingsAboutOurStoryVi ourStory = _TranslationsSettingsAboutOurStoryVi._(_root);
	@override late final _TranslationsSettingsAboutPrivacyVi privacy = _TranslationsSettingsAboutPrivacyVi._(_root);
	@override late final _TranslationsSettingsAboutDeveloperVi developer = _TranslationsSettingsAboutDeveloperVi._(_root);
	@override late final _TranslationsSettingsAboutFeedbackVi feedback = _TranslationsSettingsAboutFeedbackVi._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoVi extends TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Bản dựng ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastVi extends TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đến giờ ăn sáng! 🍳';
	@override String get body => 'Đừng quên ghi bữa sáng của bạn';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchVi extends TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đến giờ ăn trưa! 🥗';
	@override String get body => 'Đã đến lúc ghi bữa trưa';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerVi extends TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đến giờ ăn tối! 🍽️';
	@override String get body => 'Đừng quên ghi bữa tối của bạn';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackVi extends TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đến giờ ăn vặt! 🍎';
	@override String get body => 'Thời gian cho một bữa ăn nhẹ lành mạnh';
}

// Path: notifications.test
class _TranslationsNotificationsTestVi extends TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thông báo thử nghiệm';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapVi extends TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} cung cấp thông tin dinh dưỡng ước lượng. Độ chính xác phụ thuộc vào thông tin bạn cung cấp & sự khác biệt của thực phẩm. Sử dụng làm hướng dẫn, không phải nguồn tuyệt đối. Tham khảo chuyên gia để được tư vấn dinh dưỡng cá nhân.';
	@override late final _TranslationsDisclaimerSnapPortionSizeVi portionSize = _TranslationsDisclaimerSnapPortionSizeVi._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsVi preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsVi._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsVi ingredients = _TranslationsDisclaimerSnapIngredientsVi._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsVi databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsVi._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateVi extends TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Về ước tính cân nặng';
	@override String get description => 'Thay đổi cân nặng dự đoán là ước tính lý thuyết dựa trên mô hình calo vào vs calo ra đơn giản. Nó nhằm mục đích truyền cảm hứng, không phải dự đoán cân nặng thực tế của bạn.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyVi calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyVi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsVi biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsVi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightVi waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightVi._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceVi professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceVi._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsVi extends TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get description => 'Những chỉ số này giúp bạn hiểu nhu cầu năng lượng của cơ thể và hướng dẫn mục tiêu dinh dưỡng.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrVi bmr = _TranslationsDisclaimerHealthMetricsBmrVi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeVi tdee = _TranslationsDisclaimerHealthMetricsTdeeVi._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalVi dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalVi._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureVi extends TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ước tính tiêu hao calo';
	@override String get description => 'Khi không có dữ liệu Health Connect, chúng tôi ước tính calo tiêu hao hôm nay bằng BMR và mức độ hoạt động (TDEE), được tỉ lệ theo phần ngày đã trôi qua.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedVi howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedVi._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceVi professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceVi._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionVi extends TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nhận diện thức ăn thông minh';
	@override String get description => 'Chụp ảnh và để AI nhận biết bữa ăn của bạn';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisVi extends TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Phân tích AI';
	@override String get description => 'Nhận thông tin dinh dưỡng ngay lập tức từ mô tả của bạn';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationVi extends TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tích hợp Health Connect';
	@override String get description => 'Kết nối với Health Connect để có cái nhìn sâu hơn';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesVi extends TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Thiếu cân';
	@override String get healthyWeight => 'Cân nặng khỏe mạnh';
	@override String get overweight => 'Thừa cân';
	@override String get obese => 'Béo phì';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesVi extends TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Chúng tôi có thể giúp bạn xây dựng kế hoạch lành mạnh để đạt cân nặng cân bằng với các bữa ăn giàu dưỡng chất.';
	@override String get healthy => 'Rất tốt! Bạn đang ở trong khoảng khỏe mạnh. Chúng tôi sẽ giúp bạn duy trì năng lượng và sức sống.';
	@override String overweight({required Object appLabel}) => '${appLabel} sẽ đơn giản hóa hành trình của bạn với theo dõi bằng AI để bạn đạt mục tiêu thoải mái hơn.';
	@override String get obese => 'Chúng tôi ở đây để hỗ trợ bạn bằng hướng dẫn cá nhân hóa và các chiến lược bền vững cho mục tiêu sức khỏe.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingVi extends TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Theo dõi calo tự động';
	@override String get description => 'Ghi nhận calo đã tiêu hao từ các app thể dục của bạn';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsVi extends TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thông tin tiến trình';
	@override String get description => 'Nhận thông tin chi tiết về xu hướng sức khỏe của bạn';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationVi extends TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tích hợp liền mạch';
	@override String get description => 'Đồng bộ dữ liệu từ các ứng dụng sức khỏe yêu thích của bạn';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessVi extends TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bạn không đơn độc';
	@override String get genericMessage => 'Nghiên cứu cho thấy theo dõi đều đặn là yếu tố tiên đoán số 1 của thành công lâu dài.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Đối với một ${age} tuổi ${gender} muốn ${goal}, theo dõi đều đặn là yếu tố tiên đoán số 1 của thành công.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} giúp việc này dễ dàng hơn 10 lần so với làm thủ công.';
	@override String get getStartedTitle => 'Sẵn sàng bắt đầu?';
	@override String get tipPhoto => 'Chụp ảnh bữa ăn để phân tích ngay lập tức';
	@override String get tipConsistency => 'Ghi chép đều đặn để thấy tiến triển rõ rệt';
	@override String get tipProgress => 'Theo dõi tiến trình hàng ngày để duy trì động lực';
	@override String get button => 'Bắt đầu thôi';
	@override String get defaultGender => 'cá nhân';
	@override String get defaultGoal => 'bạn khỏe hơn';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileVi extends TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hồ sơ sức khỏe của bạn';
	@override String bmiDescription({required Object bmi}) => 'Dựa trên chỉ số, BMI của bạn là ${bmi}.';
	@override String get finalizeDescription => 'Hoàn tất hồ sơ để tùy chỉnh trải nghiệm của bạn.';
	@override String get goalGain => 'tăng';
	@override String get goalLose => 'giảm';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Để đạt mục tiêu, bạn sẽ ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Bạn đã đạt cân nặng mục tiêu! Chúng tôi sẽ giúp bạn duy trì.';
	@override String get button => 'Bắt đầu thôi';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleVi extends TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Khởi đầu tuyệt vời!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Bạn vừa thực hiện bước đầu tiên hướng tới ${goalText}. Vì bạn ${activityText}, ${appLabel} sẽ điều chỉnh mục tiêu để phù hợp lối sống của bạn.';
	@override String get personalizedTargets => 'Mục tiêu calo cá nhân hóa';
	@override String get aiMealDetection => 'Phát hiện bữa ăn bằng AI';
	@override String get macroBreakdowns => 'Phân tích chi tiết các chất dinh dưỡng';
	@override String get button => 'Bắt đầu thôi';
	@override String get defaultGoal => 'mục tiêu của bạn';
	@override String get defaultActivity => 'năng động';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightVi extends TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Giảm cân';
	@override String get description => 'Tạo thâm hụt calo để giảm cân';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightVi extends TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Duy trì cân nặng';
	@override String get description => 'Duy trì cân nặng hiện tại';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightVi extends TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tăng cân';
	@override String get description => 'Tạo thặng dư calo để tăng cân';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryVi extends TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ít vận động';
	@override String get description => 'Ít hoặc không tập thể dục';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveVi extends TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hoạt động nhẹ';
	@override String get description => 'Tập nhẹ 1-3 ngày/tuần';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveVi extends TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hoạt động vừa phải';
	@override String get description => 'Tập vừa phải 3-5 ngày/tuần';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveVi extends TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Rất năng động';
	@override String get description => 'Tập nặng 6-7 ngày/tuần';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveVi extends TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Cực kỳ năng động';
	@override String get description => 'Lao động nặng hoặc tập rất nhiều';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableVi extends TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect không khả dụng';
	@override String get description => 'Health Connect không có trên thiết bị này. Vui lòng cài Health Connect từ Play Store (Android 9+) hoặc cập nhật lên Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsVi extends TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsVi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsAboutOurStoryVi extends TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Câu chuyện của chúng tôi';
	@override String content({required Object appLabel}) => '${appLabel} sinh ra từ một sự thất vọng đơn giản: hầu hết ứng dụng theo dõi calo quá phức tạp, yêu cầu nhập tay liên tục, thu phí đăng ký cao, hoặc xâm phạm quyền riêng tư.\n\nLà một nhà phát triển độc lập, tôi muốn tạo ra thứ gì đó đơn giản hơn và công bằng hơn — một ứng dụng dùng AI để giảm nỗ lực, giữ nhanh và miễn phí, và tôn trọng dữ liệu sức khỏe của bạn.\n\n${appLabel} là ứng dụng tôi ước gì đã tồn tại: không cần tài khoản, không theo dõi hành vi, không quảng cáo — chỉ những thông tin rõ ràng, thiết thực và mục tiêu sức khỏe của bạn.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyVi extends TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quyền riêng tư của bạn quan trọng';
	@override String get description => 'Quyền riêng tư không phải là phần thêm vào — đó là nguyên tắc thiết kế. Điều này có nghĩa là:';
	@override String get noAccounts => 'Không cần tài khoản\nSử dụng app ngay lập tức. Không đăng ký, không danh tính.';
	@override String noTracking({required Object appLabel}) => 'Không theo dõi hành vi\n${appLabel} không theo dõi hoạt động của bạn, không tạo hồ sơ sử dụng, và không theo dõi bạn qua các app hay trang web.';
	@override String noAds({required Object appLabel}) => 'Không quảng cáo theo thiết kế\n${appLabel} được xây dựng để hoạt động không cần quảng cáo hoặc kiếm tiền dựa trên dữ liệu.';
	@override String get noDataSelling => 'Không bán dữ liệu\nDữ liệu sức khỏe của bạn không bao giờ bị bán hoặc chia sẻ với bên thứ ba.';
	@override String get localStorage => 'Lưu trữ ưu tiên cục bộ\nDữ liệu của bạn ở lại trên thiết bị của bạn.';
	@override String get privacyPolicy => 'Chính sách quyền riêng tư';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperVi extends TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Được xây dựng bởi một nhà phát triển độc lập';
	@override String description({required Object appLabel}) => '${appLabel} được xây dựng và duy trì bởi một nhà phát triển độc lập với mục tiêu tạo phần mềm sức khỏe yên tĩnh, tôn trọng quyền riêng tư.\n\nPhản hồi được đọc cá nhân và giúp định hướng phát triển ứng dụng.';
	@override String get website => 'Trang web';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackVi extends TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Bạn thích ${appLabel} chứ?';
	@override String description({required Object appLabel}) => 'Phản hồi của bạn giúp ${appLabel} tốt hơn cho mọi người.';
	@override String get rateApp => 'Đánh giá trên Play Store';
	@override String get sendFeedback => 'Gửi phản hồi';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeVi extends TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kích thước khẩu phần';
	@override String get description => 'Độ chính xác của ước tính phụ thuộc lớn vào việc bạn đánh giá đúng kích thước khẩu phần.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsVi extends TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Phương pháp chế biến';
	@override String description({required Object appLabel}) => 'Cách nấu có thể thay đổi đáng kể hàm lượng dinh dưỡng. Ước tính của ${appLabel} có thể không luôn tính đến những thay đổi này.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsVi extends TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nguyên liệu';
	@override String get description => 'Các món phức tạp với nhiều nguyên liệu ẩn có thể dẫn đến ước tính kém chính xác hơn.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsVi extends TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hạn chế cơ sở dữ liệu';
	@override String description({required Object appLabel}) => 'Cơ sở dữ liệu thực phẩm của ${appLabel} rất rộng nhưng có thể không bao gồm mọi món hoặc biến thể.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyVi extends TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Độ chính xác calo';
	@override String get description => 'Ước tính này chỉ chính xác bằng việc bạn ghi chép chính xác lượng calo nạp và tiêu hao. Ghi không chính xác sẽ dẫn đến dự đoán sai.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsVi extends TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yếu tố sinh học';
	@override String description({required Object appLabel}) => 'Thực tế giảm/tăng cân bị ảnh hưởng bởi trao đổi chất, hormone, giấc ngủ, stress, độ hydrat hóa và các yếu tố cá nhân khác mà ${appLabel} không thể đo.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightVi extends TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cân nặng do nước & dao động';
	@override String get description => 'Cân nặng hằng ngày có thể dao động lớn do giữ nước, tiêu hóa và thời điểm. Ước tính không tính đến những thay đổi hàng ngày này.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceVi extends TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hướng dẫn chuyên môn';
	@override String get description => 'Đừng dùng ước tính này để đưa ra quyết định y tế. Luôn tham khảo chuyên gia y tế hoặc chuyên gia dinh dưỡng để được tư vấn quản lý cân nặng cá nhân.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrVi extends TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) là số calo cơ thể bạn tiêu hao khi nghỉ để duy trì các chức năng cơ bản như thở và tuần hoàn. BMR phụ thuộc vào tuổi, giới tính, chiều cao và cân nặng. BMR cao hơn có nghĩa cơ thể bạn đốt nhiều calo khi nghỉ, thường do nhiều cơ hơn, trẻ hơn hoặc là nam. BMR thấp hơn thường chỉ ra ít cơ, lớn tuổi hơn, hoặc là nữ.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeVi extends TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) là tổng calo bạn tiêu hao trong ngày, bao gồm BMR cộng calo từ hoạt động thể chất và vận động hàng ngày. TDEE phụ thuộc vào BMR và mức độ hoạt động. TDEE cao hơn nghĩa bạn tiêu hao nhiều calo hơn tổng thể, thường do hoạt động nhiều hơn hoặc BMR cao hơn. TDEE thấp hơn gợi ý hoạt động hàng ngày ít hơn hoặc BMR thấp hơn.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalVi extends TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mục tiêu hàng ngày';
	@override String get description => 'Mục tiêu hàng ngày là lượng calo khuyến nghị dựa trên TDEE và mục tiêu cân nặng của bạn. Để giảm cân, bạn tiêu thụ ít calo hơn TDEE. Để duy trì, bạn khớp TDEE. Để tăng cân, bạn tiêu thụ nhiều calo hơn TDEE. Điều này giúp bạn đạt thay đổi cân nặng mong muốn với tốc độ lành mạnh.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedVi extends TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cách ước tính được tính';
	@override String get description => 'Chúng tôi tính TDEE của bạn (dựa trên hồ sơ) và nhân với tỷ lệ phần ngày đã trôi qua (giờ + phút) / 24 để ước tính calo đã tiêu hao cho đến nay.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceVi extends TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hướng dẫn chuyên môn';
	@override String get description => 'Đừng dùng ước tính này để đưa ra quyết định y tế. Luôn tham khảo chuyên gia y tế hoặc chuyên gia dinh dưỡng để được tư vấn quản lý cân nặng cá nhân.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedVi extends TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đọc tổng calo đã tiêu hao';
	@override String get description => 'Cho phép app đọc tổng calo bạn đã tiêu hao từ Health Connect.';
	@override String get usage => 'Quyền này dùng để hiển thị lượng calo đã tiêu hàng ngày trong app, giúp bạn hiểu tổng mức tiêu hao năng lượng trong ngày.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadVi extends TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đọc dữ liệu dinh dưỡng';
	@override String get description => 'Cho phép app đọc dữ liệu dinh dưỡng từ Health Connect.';
	@override String get usage => 'Quyền này cho phép app đọc thông tin dinh dưỡng có thể đã được ghi bởi các app khác kết nối với Health Connect, cung cấp cái nhìn toàn diện về dinh dưỡng của bạn.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteVi extends TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteVi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ghi dữ liệu dinh dưỡng';
	@override String get description => 'Cho phép app ghi dữ liệu dinh dưỡng vào Health Connect.';
	@override String get usage => 'Quyền này cho phép app đồng bộ các bữa ăn bạn ghi vào Health Connect, giúp dữ liệu dinh dưỡng của bạn có sẵn cho các app sức khỏe và thể hình khác.';
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
			'errors.rateLimitExceeded' => 'Bạn đã gửi quá nhiều yêu cầu. Vui lòng đợi một lúc rồi thử lại.',
			'errors.networkError' => 'Lỗi mạng. Vui lòng kiểm tra kết nối internet của bạn.',
			'errors.unknownError' => 'Đã xảy ra sự cố. Vui lòng thử lại sau.',
			'errors.loadingProfileData' => 'Lỗi khi tải dữ liệu hồ sơ',
			'errors.somethingWentWrong' => 'Đã xảy ra sự cố.',
			'errors.retry' => 'Thử lại',
			'onboarding.welcome' => ({required Object appLabel}) => 'Chào mừng đến với ${appLabel}',
			'onboarding.subtitle' => 'Người bạn đồng hành dinh dưỡng cá nhân được hỗ trợ bởi AI',
			'onboarding.getStarted' => 'Bắt đầu',
			'onboarding.features.foodRecognition.title' => 'Nhận diện thức ăn thông minh',
			'onboarding.features.foodRecognition.description' => 'Chụp ảnh và để AI nhận biết bữa ăn của bạn',
			'onboarding.features.aiAnalysis.title' => 'Phân tích AI',
			'onboarding.features.aiAnalysis.description' => 'Nhận thông tin dinh dưỡng ngay lập tức từ mô tả của bạn',
			'onboarding.features.healthIntegration.title' => 'Tích hợp Health Connect',
			'onboarding.features.healthIntegration.description' => 'Kết nối với Health Connect để có cái nhìn sâu hơn',
			'onboarding.gender.title' => 'Bạn thuộc giới tính nào?',
			'onboarding.gender.description' => 'Giới tính giúp chúng tôi tính chính xác tỷ lệ trao đổi chất cơ bản (BMR).',
			'onboarding.gender.next' => 'Tiếp theo',
			'onboarding.height.title' => 'Bạn cao bao nhiêu?',
			'onboarding.height.description' => 'Chiều cao giúp chúng tôi tính BMI và nhu cầu năng lượng chính xác hơn.',
			'onboarding.height.metric' => 'Hệ mét',
			'onboarding.height.imperial' => 'Hệ Anh',
			'onboarding.height.next' => 'Tiếp theo',
			'onboarding.weight.currentTitle' => 'Cân nặng hiện tại của bạn là bao nhiêu?',
			'onboarding.weight.currentDescription' => 'Cân nặng hiện tại rất cần thiết để cá nhân hóa mục tiêu hằng ngày của bạn.',
			'onboarding.weight.targetTitle' => 'Mục tiêu cân nặng của bạn là gì?',
			'onboarding.weight.targetDescription' => 'Đặt cân nặng mục tiêu giúp chúng tôi xác định kế hoạch dài hạn cho bạn.',
			'onboarding.weight.metric' => 'Hệ mét',
			'onboarding.weight.imperial' => 'Hệ Anh',
			'onboarding.weight.next' => 'Tiếp theo',
			'onboarding.age.title' => 'Bạn sinh ngày khi nào?',
			'onboarding.age.description' => 'Tuổi của bạn giúp chúng tôi tính nhu cầu calo chính xác.',
			'onboarding.age.next' => 'Tiếp theo',
			'onboarding.bmiScale.underweight' => 'Thiếu',
			'onboarding.bmiScale.healthy' => 'Lành mạnh',
			'onboarding.bmiScale.overweight' => 'Thừa',
			'onboarding.bmiScale.obese' => 'Béo',
			'onboarding.bmiScale.categories.underweight' => 'Thiếu cân',
			'onboarding.bmiScale.categories.healthyWeight' => 'Cân nặng khỏe mạnh',
			'onboarding.bmiScale.categories.overweight' => 'Thừa cân',
			'onboarding.bmiScale.categories.obese' => 'Béo phì',
			'onboarding.bmiScale.messages.underweight' => 'Chúng tôi có thể giúp bạn xây dựng kế hoạch lành mạnh để đạt cân nặng cân bằng với các bữa ăn giàu dưỡng chất.',
			'onboarding.bmiScale.messages.healthy' => 'Rất tốt! Bạn đang ở trong khoảng khỏe mạnh. Chúng tôi sẽ giúp bạn duy trì năng lượng và sức sống.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} sẽ đơn giản hóa hành trình của bạn với theo dõi bằng AI để bạn đạt mục tiêu thoải mái hơn.',
			'onboarding.bmiScale.messages.obese' => 'Chúng tôi ở đây để hỗ trợ bạn bằng hướng dẫn cá nhân hóa và các chiến lược bền vững cho mục tiêu sức khỏe.',
			'onboarding.weightGoal.title' => 'Mục tiêu của bạn là gì?',
			'onboarding.weightGoal.description' => 'Chọn mục tiêu mô tả đúng điều bạn muốn đạt được',
			'onboarding.activityLevel.title' => 'Bạn hoạt động nhiều như thế nào?',
			'onboarding.activityLevel.description' => 'Điều này giúp chúng tôi tính nhu cầu calo hàng ngày chính xác hơn',
			'onboarding.healthConnect.title' => 'Kết nối với Health Connect',
			'onboarding.healthConnect.description' => 'Đồng bộ dữ liệu sức khỏe để có cái nhìn tốt hơn và theo dõi calo tự động',
			'onboarding.healthConnect.automaticTracking.title' => 'Theo dõi calo tự động',
			'onboarding.healthConnect.automaticTracking.description' => 'Ghi nhận calo đã tiêu hao từ các app thể dục của bạn',
			'onboarding.healthConnect.progressInsights.title' => 'Thông tin tiến trình',
			'onboarding.healthConnect.progressInsights.description' => 'Nhận thông tin chi tiết về xu hướng sức khỏe của bạn',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Tích hợp liền mạch',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Đồng bộ dữ liệu từ các ứng dụng sức khỏe yêu thích của bạn',
			'onboarding.healthConnect.connected' => 'Đã kết nối Health Connect',
			'onboarding.healthConnect.notConnected' => 'Chưa kết nối Health Connect',
			'onboarding.healthConnect.setup' => 'Thiết lập Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Bỏ qua trước',
			'onboarding.healthConnect.statusConnected' => 'Health Connect đã được kết nối.',
			'onboarding.healthConnect.statusSuccess' => 'Đã kết nối Health Connect thành công!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Từ chối quyền. Vui lòng bật quyền Health Connect trong cài đặt điện thoại cho ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Lỗi khi thiết lập Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Bạn không đơn độc',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Nghiên cứu cho thấy theo dõi đều đặn là yếu tố tiên đoán số 1 của thành công lâu dài.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Đối với một ${age} tuổi ${gender} muốn ${goal}, theo dõi đều đặn là yếu tố tiên đoán số 1 của thành công.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} giúp việc này dễ dàng hơn 10 lần so với làm thủ công.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Sẵn sàng bắt đầu?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Chụp ảnh bữa ăn để phân tích ngay lập tức',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Ghi chép đều đặn để thấy tiến triển rõ rệt',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Theo dõi tiến trình hàng ngày để duy trì động lực',
			'onboarding.reinforcement.trackingSuccess.button' => 'Bắt đầu thôi',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'cá nhân',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'bạn khỏe hơn',
			'onboarding.reinforcement.healthProfile.title' => 'Hồ sơ sức khỏe của bạn',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Dựa trên chỉ số, BMI của bạn là ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Hoàn tất hồ sơ để tùy chỉnh trải nghiệm của bạn.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'tăng',
			'onboarding.reinforcement.healthProfile.goalLose' => 'giảm',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Để đạt mục tiêu, bạn sẽ ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Bạn đã đạt cân nặng mục tiêu! Chúng tôi sẽ giúp bạn duy trì.',
			'onboarding.reinforcement.healthProfile.button' => 'Bắt đầu thôi',
			'onboarding.reinforcement.goalLifestyle.title' => 'Khởi đầu tuyệt vời!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Bạn vừa thực hiện bước đầu tiên hướng tới ${goalText}. Vì bạn ${activityText}, ${appLabel} sẽ điều chỉnh mục tiêu để phù hợp lối sống của bạn.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Mục tiêu calo cá nhân hóa',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Phát hiện bữa ăn bằng AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Phân tích chi tiết các chất dinh dưỡng',
			'onboarding.reinforcement.goalLifestyle.button' => 'Bắt đầu thôi',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'mục tiêu của bạn',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'năng động',
			'tabs.dashboard' => 'Bảng điều khiển',
			'tabs.history' => 'Lịch sử',
			'home.aiSummary.title' => 'Tóm tắt AI của bạn',
			'home.aiSummary.logMore' => 'Ghi thêm bữa ăn trong vài ngày tới để nhận các phân tích AI cá nhân hóa.',
			'home.aiSummary.loading' => 'Đang tải tóm tắt...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} bữa đã ghi',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Điểm cân bằng ${score}',
			'home.aiSummary.topFoods' => 'Thực phẩm hàng đầu',
			'home.aiSummary.trendUp' => 'Lượng calo tăng dần',
			'home.aiSummary.trendDown' => 'Lượng calo giảm dần',
			'home.aiSummary.trendSteady' => 'Lượng calo ổn định',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Cập nhật ${time}',
			'home.dailyGoal.title' => 'Đặt mục tiêu hàng ngày',
			'home.dailyGoal.titleSet' => 'Mục tiêu hàng ngày của bạn',
			'home.dailyGoal.description' => 'Sẵn sàng bắt đầu hành trình sức khỏe? Đặt mục tiêu calo hằng ngày bên dưới để khởi động tiến trình.',
			'home.dailyGoal.descriptionSet' => 'La bàn của bạn đã đặt! Đây là mục tiêu calo hàng ngày để hướng dẫn bạn.',
			'home.dailyGoal.yourGoal' => 'Mục tiêu của bạn',
			'home.dailyGoal.goal' => 'Mục tiêu',
			'home.dailyGoal.dailyCalories' => 'Calo hằng ngày (kcal)',
			'home.dailyGoal.setGoal' => 'Đặt mục tiêu',
			'home.dailyGoal.intake' => 'Nạp vào',
			'home.dailyGoal.burned' => 'Đã tiêu',
			'home.dailyGoal.weightImpact' => 'Tác động lên cân nặng',
			'home.dailyGoal.estLoss' => 'Ước tính giảm',
			'home.dailyGoal.estGain' => 'Ước tính tăng',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Tóm tắt hàng ngày',
			'home.dailySummary.calories' => 'Calo',
			'home.dailySummary.carbs' => 'Tinh bột',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Chất béo',
			'home.dailySummary.fiber' => 'Chất xơ',
			'home.dailySummary.grams' => 'gam',
			'home.dailySummary.chartAccessibilityLabel' => 'Biểu đồ các macro',
			'home.intakeProgress.title' => 'Tỷ lệ macro hôm nay',
			'home.intakeProgress.target' => 'Mục tiêu',
			'home.intakeProgress.current' => 'Hiện tại',
			'home.intakeHistory.title' => 'Lịch sử macro 7 ngày',
			'home.intakeHistory.trendTitle' => 'Xu hướng hôm nay',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Cao điểm: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Chưa có lịch sử',
			'home.intakeHistory.startLogging' => 'Bắt đầu ghi bữa ăn để xem\nxu hướng macro 7 ngày tại đây',
			'home.mealLog.title' => 'Các bữa đã ghi',
			'home.mealLog.emptyMessage' => 'Chụp ảnh bữa ăn gần nhất để ghi vào đây.',
			'home.mealLog.noMealsToday' => 'Chưa có bữa ăn ghi hôm nay',
			'home.mealLog.seeAllMeals' => 'Xem tất cả bữa ăn',
			'home.mealDescription.title' => 'Thêm nhanh với AI',
			'home.mealDescription.description' => 'Mô tả bữa ăn của bạn, để AI lo phần chi tiết.',
			'home.mealDescription.hint' => 'ví dụ: Buổi sáng tôi ăn một bát lớn yến mạch với 1 quả chuối thái lát và 1 thìa whey ...',
			'home.mealDescription.analyzeMeal' => 'Phân tích bữa ăn',
			'home.favoriteMeals.title' => 'Bữa ăn yêu thích',
			'home.favoriteMeals.description' => 'Thêm nhanh một trong các bữa ăn yêu thích của bạn.',
			'home.favoriteMeals.noFavorites' => 'Chưa có bữa ăn yêu thích.',
			'home.favoriteMeals.addFavoriteHint' => 'Nhấn biểu tượng sao trên một bữa ăn để đánh dấu yêu thích.',
			'home.favoriteMeals.seeAll' => 'Xem tất cả',
			'home.favoriteMeals.add' => 'Thêm',
			'home.mealSnap.title' => 'Chụp & Ghi bữa ăn',
			'home.mealSnap.description' => 'Sử dụng camera để chụp ảnh thức ăn của bạn cho phân tích AI.',
			'home.mealSnap.openCamera' => 'Mở camera',
			'home.mealSnap.gallery' => 'Thư viện',
			'home.mealSnap.compressingPhoto' => 'Tối ưu ảnh…',
			'home.mealSnap.uploadingPhoto' => 'Đang tải ảnh lên…',
			'home.connectHealth.title' => 'Đồng bộ với Health Connect',
			'home.connectHealth.description' => 'Đồng bộ dữ liệu dinh dưỡng của bạn với Health Connect',
			'home.connectHealth.install' => 'Cài đặt',
			'home.connectHealth.connect' => 'Kết nối',
			'history.noMeals' => 'Chưa có bữa ăn được ghi',
			'history.emptyMessage' => 'Chụp ảnh bữa ăn gần nhất để ghi vào đây.',
			'history.today' => 'Hôm nay',
			'history.yesterday' => 'Hôm qua',
			'meal.ohNo' => 'Ôi không!',
			'meal.delete' => 'Xóa',
			'meal.editMeal' => 'Chỉnh sửa bữa ăn',
			'meal.addMeal' => 'Thêm bữa ăn',
			'meal.saveMeal' => 'Lưu bữa ăn',
			'meal.save' => 'Lưu',
			'meal.mealName' => 'Tên bữa ăn',
			'meal.mealNameHint' => 'ví dụ: Trứng khuấy với bánh mì nướng',
			'meal.nameRequired' => 'Nhập tên bữa ăn trước khi lưu.',
			'meal.mealQuantity' => 'Số lượng bữa ăn',
			'meal.mealQuantityHint' => 'ví dụ: 1 bát, 2 lát',
			'meal.timeOfMeal' => 'Thời gian bữa ăn',
			'meal.timeOfMealHint' => 'Chọn thời gian bạn dùng bữa',
			'meal.mealType' => 'Loại bữa ăn',
			'meal.nutrition.calories' => 'Calo',
			'meal.nutrition.carbs' => 'Tinh bột (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Chất béo (g)',
			'meal.nutrition.fiber' => 'Chất xơ (g)',
			'meal.deleteConfirmation.title' => 'Xóa bữa ăn',
			'meal.deleteConfirmation.message' => 'Bạn có chắc muốn xóa mục bữa ăn này không?',
			'meal.deleteConfirmation.cancel' => 'Hủy',
			'meal.deleteConfirmation.delete' => 'Xóa',
			'meal.addedToLog' => 'Đã thêm bữa ăn vào nhật ký!',
			'meal.couldNotAdd' => ({required Object error}) => 'Không thể thêm bữa ăn: ${error}',
			'meal.savedSuccessfully' => 'Thêm bữa ăn thành công!',
			'meal.updatedSuccessfully' => 'Cập nhật bữa ăn thành công!',
			'meal.errorSaving' => ({required Object error}) => 'Lỗi khi lưu bữa ăn: ${error}',
			'meal.removedFromFavorites' => 'Đã gỡ khỏi mục yêu thích!',
			'meal.savedAsFavorite' => 'Đã lưu bữa ăn vào yêu thích!',
			'meal.unfavorite' => 'Bỏ yêu thích',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Không thể cập nhật mục yêu thích: ${error}',
			'meal.feedbackThanks' => 'Cảm ơn phản hồi!',
			'meal.reanalysisUpdated' => 'Đã cập nhật phân tích bữa ăn dựa trên phản hồi của bạn.',
			'meal.failedToProcess' => ({required Object error}) => 'Xử lý thất bại: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Xử lý ảnh thất bại: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Lỗi nén ảnh: ${error}',
			'meal.failedToSave' => 'Lưu dữ liệu thất bại. Vui lòng thử lại.',
			'meal.skip' => 'Bỏ qua',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Câu hỏi ${current} trên ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Không có câu hỏi',
			'meal.questionFlow.next' => 'Tiếp theo',
			'meal.questionFlow.continueLabel' => 'Tiếp tục',
			'meal.analysis.title' => 'Đang phân tích bữa ăn của bạn',
			'meal.analysis.stepStarted' => 'Bắt đầu…',
			'meal.analysis.stepDecomposition' => 'Hiểu bữa ăn của bạn…',
			'meal.analysis.stepIngredients' => 'Đối chiếu nguyên liệu với dữ liệu dinh dưỡng…',
			'meal.analysis.stepUncertainty' => 'Kiểm tra độ tin cậy…',
			'meal.analysis.stepMealTypeQuestion' => 'Sắp xong…',
			'meal.analysis.stepResult' => 'Hoàn tất kết quả…',
			'meal.analysis.stepError' => 'Đã xảy ra lỗi',
			'meal.analysis.stepDefault' => 'Đang phân tích bữa ăn của bạn…',
			'meal.analysis.progressUnderstand' => 'Đang hiểu bữa ăn',
			'meal.analysis.progressMatch' => 'Tìm dinh dưỡng của nguyên liệu',
			'meal.analysis.progressCheck' => 'Kiểm tra khẩu phần và độ tin cậy',
			'meal.analysis.progressMealType' => 'Chọn loại bữa ăn',
			'meal.analysis.progressFinish' => 'Tính toán calo và các macro',
			'meal.analysis.detectedIngredientHeading' => 'Nguyên liệu chúng tôi nhận thấy',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} khác',
			'meal.analysis.ingredientsLine' => ({required Object count}) => 'Phát hiện ${count} nguyên liệu',
			'meal.analysis.ingredientsPending' => 'Đang quét nguyên liệu…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Mẹo: Kiên trì còn hơn hoàn hảo—ghi chép đều đặn sẽ cho thấy các mô hình quan trọng.',
			'meal.analysis.offlineTip1' => 'Mẹo: Với ảnh, ánh sáng tự nhiên và góc chụp từ trên xuống giúp xác định khẩu phần chính xác hơn.',
			'meal.analysis.offlineTip2' => 'Mẹo: Nhắc đến đồ uống, nước sốt và dầu ăn—chúng thêm calo mà thường bị quên.',
			'meal.analysis.offlineTip3' => 'Mẹo: Ghi nhanh kích thước khẩu phần (1 bát, cà phê lớn) sẽ làm ước tính chính xác hơn nhiều.',
			'meal.analysis.offlineTip4' => 'Mẹo: Ghi sau bữa ăn vẫn giúp xây thói quen; không cần hoàn hảo.',
			'meal.analysis.offlineTip5' => 'Mẹo: Nói cách thức nấu khi làm thay đổi nhiều calo (chiên vs nướng).',
			'meal.localInference.reviewTitle' => 'Xem lại các thành phần đã nhận diện',
			'meal.localInference.reviewSubtitle' => 'Nội dung này được phân tích trên thiết bị của bạn. Hãy chỉnh sửa tên hoặc định lượng trước khi tính toán dinh dưỡng.',
			'meal.localInference.mealName' => 'Tên bữa ăn',
			'meal.localInference.ingredient' => 'Thành phần',
			'meal.localInference.grams' => 'Số gam ước tính',
			'meal.localInference.removeIngredient' => 'Xóa thành phần',
			'meal.localInference.continueLabel' => 'Tiếp tục',
			'meal.localInference.invalidProposal' => 'Vui lòng thêm ít nhất một thành phần và nhập số gam là số dương.',
			'meal.localInference.localUnavailable' => 'Tính năng phân tích trên thiết bị hiện không khả dụng.',
			'meal.localInference.calculationDetails' => 'Cách tính toán',
			'meal.localInference.interpretationLocal' => 'Thành phần được phân tích trên thiết bị này',
			'meal.localInference.interpretationCloud' => 'Thành phần được phân tích trên đám mây',
			'meal.localInference.interpretationManual' => 'Thành phần do bạn xem lại hoặc chỉnh sửa',
			'meal.localInference.nutritionRemote' => 'Dữ liệu dinh dưỡng được lấy từ USDA thông qua Calorify',
			'meal.localInference.nutritionFallback' => 'Một số giá trị dinh dưỡng được ước tính từ xa',
			'meal.localInference.calculationServer' => 'Calo và macro được tính toán bởi Calorify',
			'meal.localInference.fallbackUsed' => 'Phân tích cục bộ đã chuyển sang xử lý trên đám mây',
			'meal.localInference.noRawContent' => 'Biên lai chẩn đoán không bao gồm văn bản hoặc ảnh bữa ăn của bạn.',
			'meal.feedback.title' => 'Có gì sai?',
			'meal.feedback.subtitle' => 'Giúp chúng tôi cải thiện phân tích bằng cách chọn một hoặc nhiều vấn đề.',
			'meal.feedback.tellUsMore' => 'Nói thêm cho chúng tôi',
			'meal.feedback.describeIncorrect' => 'Mô tả phần sai',
			'meal.feedback.submit' => 'Gửi',
			'meal.feedback.issueFoodIdentification' => 'Nhận diện món',
			'meal.feedback.issuePortionSize' => 'Kích thước khẩu phần',
			'meal.feedback.issueCalorieDistribution' => 'Phân bố calo',
			'meal.feedback.issueMacrosWrong' => 'Các macro sai',
			'meal.feedback.issueMissingItems' => 'Thiếu mục',
			'meal.feedback.issueExtraItems' => 'Thừa mục',
			'meal.feedback.issueOther' => 'Khác',
			'favorites.title' => 'Yêu thích',
			'favorites.empty' => 'Chưa có bữa ăn yêu thích.',
			'favorites.searchPlaceholder' => 'Tìm bữa ăn yêu thích',
			'favorites.searchEmptyTitle' => 'Không có mục yêu thích phù hợp',
			'favorites.searchEmptySubtitle' => 'Thử tên bữa khác, số lượng, hoặc loại bữa.',
			'favorites.sortLabel' => 'Sắp xếp yêu thích',
			'favorites.undo' => 'Hoàn tác',
			'favorites.removed' => ({required Object name}) => 'Đã gỡ ${name} khỏi yêu thích',
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
			'profile.sections.calculatedValues' => 'GIÁ TRỊ ĐƯỢC TÍNH',
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
			'profile.calculatedValues.dailyGoal' => 'Mục tiêu hàng ngày',
			'profile.calculatedValues.calPerDay' => 'cal/ngày',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Điểm sức khỏe',
			'healthScore.whyThisScore' => 'Tại sao có điểm này?',
			'healthScore.note' => 'Điểm này là ước tính AI dựa trên nguyên liệu được nhận diện và mật độ dinh dưỡng. Luôn tham khảo chuyên gia để được tư vấn chế độ ăn cá nhân.',
			'healthScore.unhealthy' => 'Không khỏe',
			'healthScore.healthy' => 'Khỏe',
			'healthScore.neutral' => 'Trung tính',
			'editProfile.title' => 'Chỉnh sửa hồ sơ',
			'editProfile.sections.personalInformation' => 'THÔNG TIN CÁ NHÂN',
			'editProfile.sections.physicalMeasurements' => 'SỐ LIỆU THỂ CHẤT',
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
			'editProfile.activityLevels.sedentary.description' => 'Ít hoặc không tập thể dục',
			'editProfile.activityLevels.lightlyActive.name' => 'Hoạt động nhẹ',
			'editProfile.activityLevels.lightlyActive.description' => 'Tập nhẹ 1-3 ngày/tuần',
			'editProfile.activityLevels.moderatelyActive.name' => 'Hoạt động vừa phải',
			'editProfile.activityLevels.moderatelyActive.description' => 'Tập vừa phải 3-5 ngày/tuần',
			'editProfile.activityLevels.veryActive.name' => 'Rất năng động',
			'editProfile.activityLevels.veryActive.description' => 'Tập nặng 6-7 ngày/tuần',
			'editProfile.activityLevels.extremelyActive.name' => 'Cực kỳ năng động',
			'editProfile.activityLevels.extremelyActive.description' => 'Lao động nặng hoặc tập rất nhiều',
			'settings.title' => 'Cài đặt',
			'settings.sections.profile' => 'HỒ SƠ',
			'settings.sections.localization' => 'NGÔN NGỮ',
			'settings.sections.notifications' => 'THÔNG BÁO',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.localInference' => 'PHÂN TÍCH TRÊN THIẾT BỊ',
			'settings.sections.supportAndLegal' => 'HỖ TRỢ & PHÁP LÝ',
			'settings.sections.about' => 'VỀ ỨNG DỤNG',
			'settings.sections.dangerZone' => 'KHU VỰC NGUY HIỂM',
			'settings.sections.developer' => 'NHÀ PHÁT TRIỂN',
			'settings.editProfile.title' => 'Chỉnh sửa hồ sơ',
			'settings.editProfile.subtitle' => 'Cập nhật thông tin cá nhân của bạn',
			'settings.language.title' => 'Ngôn ngữ',
			'settings.language.subtitle' => 'Chọn ngôn ngữ ưa thích',
			'settings.language.searchHint' => 'Tìm ngôn ngữ...',
			'settings.language.noResults' => 'Không tìm thấy kết quả',
			'settings.heightUnit.title' => 'Đơn vị chiều cao',
			'settings.weightUnit.title' => 'Đơn vị cân nặng',
			'settings.mealReminders.title' => 'Nhắc bữa ăn',
			'settings.mealReminders.subtitle' => 'Giữ đúng lịch với thông báo kịp thời',
			'settings.localInference.title' => 'Phân tích bữa ăn trên thiết bị',
			'settings.localInference.subtitle' => 'Sử dụng Gemini Nano để phân tích các bữa ăn được hỗ trợ trước khi tính toán dinh dưỡng',
			'settings.localInference.unavailable' => 'Không khả dụng trên thiết bị này',
			'settings.localInference.rolloutUnavailable' => 'Tìm thấy phần cứng tương thích, nhưng tính năng này chưa được kích hoạt cho phiên bản ứng dụng này',
			'settings.localInference.modelSetup' => 'Gemini Nano cần hoàn tất tải xuống trước khi có thể kích hoạt tính năng này',
			'settings.localInference.useLocalTitle' => 'Sử dụng phân tích trên thiết bị',
			'settings.localInference.useLocalSubtitle' => 'Tùy chọn và mặc định là tắt. Kết quả có thể kém chính xác hơn đối với các bữa ăn phức tạp.',
			'settings.localInference.disclosureTitle' => 'Trước khi bạn bật phân tích trên thiết bị',
			'settings.localInference.disclosureBody' => 'Gemini Nano có thể nhận diện thành phần và ước tính định lượng trên các thiết bị Android được hỗ trợ. Đề xuất thành phần sau khi bạn xem lại sẽ được gửi đến Calorify để đối chiếu dữ liệu dinh dưỡng USDA và tính toán.',
			'settings.localInference.disclosureLimit1' => 'Các món ăn phức tạp, thành phần ẩn và kích thước phần ăn có thể bị nhận diện sai.',
			'settings.localInference.disclosureLimit2' => 'Mô hình có thể không khả dụng khi đang tải xuống, đang bận, chạy ngầm hoặc bị giới hạn bởi thiết bị.',
			'settings.localInference.disclosureLimit3' => 'Nếu phân tích cục bộ không thể hoàn tất, bản beta này sẽ tự động gửi mô tả bữa ăn gốc của bạn đến Calorify để phân tích trên đám mây.',
			'settings.localInference.acknowledgement' => 'Tôi hiểu rằng tôi nên xem lại các thành phần và định lượng đã nhận diện.',
			'settings.localInference.enable' => 'Xác nhận và kích hoạt',
			'settings.localInference.cancel' => 'Hủy',
			'settings.theme.title' => 'Giao diện',
			'settings.theme.light' => 'Sáng',
			'settings.theme.dark' => 'Tối',
			'settings.theme.system' => 'Hệ thống',
			'settings.sendFeedback.title' => 'Gửi phản hồi',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Giúp ${appLabel} tốt hơn',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Phản hồi ứng dụng ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Vui lòng cung cấp phản hồi của bạn bên dưới:',
			'settings.sendFeedback.appVersion' => 'Phiên bản ứng dụng',
			'settings.sendFeedback.device' => 'Thiết bị',
			'settings.sendFeedback.osVersion' => 'Phiên bản OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Xuất lịch sử bữa ăn',
			'settings.exportMealHistory.subtitle' => 'Chia sẻ CSV các bữa ăn đã ghi',
			'settings.exportMealHistory.shareText' => 'Bản xuất lịch sử bữa ăn Calorify của bạn',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Không thể xuất lịch sử bữa ăn: ${error}',
			'settings.clearAllData.title' => 'Xóa tất cả dữ liệu',
			'settings.clearAllData.subtitle' => 'Xóa vĩnh viễn mọi thông tin của bạn',
			'settings.clearAllData.confirmationTitle' => 'Xóa tất cả dữ liệu?',
			'settings.clearAllData.confirmationMessage' => 'Hành động này không thể hoàn tác. Tất cả bữa ăn đã ghi, mục yêu thích và cài đặt hồ sơ của bạn sẽ bị xóa vĩnh viễn.',
			'settings.clearAllData.cancel' => 'Hủy',
			'settings.clearAllData.clearEverything' => 'Xóa hết',
			'settings.debugOptions.title' => 'Tùy chọn gỡ lỗi',
			'settings.developerModeEnabled' => 'Đã bật chế độ nhà phát triển!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Xem và quản lý quyền',
			'settings.healthConnect.unavailable.title' => 'Health Connect không khả dụng',
			'settings.healthConnect.unavailable.description' => 'Health Connect không có trên thiết bị này. Vui lòng cài Health Connect từ Play Store (Android 9+) hoặc cập nhật lên Android 14+.',
			'settings.healthConnect.permissions.title' => 'Quyền',
			'settings.healthConnect.permissions.description' => 'Các quyền sau được yêu cầu để cung cấp tích hợp Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Đã cấp',
			'settings.healthConnect.permissions.notGranted' => 'Chưa cấp',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Đọc tổng calo đã tiêu hao',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Cho phép app đọc tổng calo bạn đã tiêu hao từ Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Quyền này dùng để hiển thị lượng calo đã tiêu hàng ngày trong app, giúp bạn hiểu tổng mức tiêu hao năng lượng trong ngày.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Đọc dữ liệu dinh dưỡng',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Cho phép app đọc dữ liệu dinh dưỡng từ Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Quyền này cho phép app đọc thông tin dinh dưỡng có thể đã được ghi bởi các app khác kết nối với Health Connect, cung cấp cái nhìn toàn diện về dinh dưỡng của bạn.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Ghi dữ liệu dinh dưỡng',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Cho phép app ghi dữ liệu dinh dưỡng vào Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Quyền này cho phép app đồng bộ các bữa ăn bạn ghi vào Health Connect, giúp dữ liệu dinh dưỡng của bạn có sẵn cho các app sức khỏe và thể hình khác.',
			'settings.healthConnect.managePermissions' => 'Quản lý quyền',
			'settings.healthConnect.openSettings' => 'Mở cài đặt Health Connect',
			'settings.healthConnect.requestPermissions' => 'Yêu cầu quyền',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Yêu cầu quyền đã bị hủy hoặc thất bại. Vui lòng thử lại hoặc cấp quyền thủ công trong cài đặt Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Không thể yêu cầu quyền. Vui lòng thử lại hoặc cấp quyền thủ công trong cài đặt Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Đang yêu cầu...',
			'settings.about.title' => 'Về',
			'settings.about.tagline' => 'Nhanh, miễn phí và ưu tiên quyền riêng tư trong nhận thức calo',
			'settings.about.ourStory.title' => 'Câu chuyện của chúng tôi',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} sinh ra từ một sự thất vọng đơn giản: hầu hết ứng dụng theo dõi calo quá phức tạp, yêu cầu nhập tay liên tục, thu phí đăng ký cao, hoặc xâm phạm quyền riêng tư.\n\nLà một nhà phát triển độc lập, tôi muốn tạo ra thứ gì đó đơn giản hơn và công bằng hơn — một ứng dụng dùng AI để giảm nỗ lực, giữ nhanh và miễn phí, và tôn trọng dữ liệu sức khỏe của bạn.\n\n${appLabel} là ứng dụng tôi ước gì đã tồn tại: không cần tài khoản, không theo dõi hành vi, không quảng cáo — chỉ những thông tin rõ ràng, thiết thực và mục tiêu sức khỏe của bạn.',
			'settings.about.privacy.title' => 'Quyền riêng tư của bạn quan trọng',
			'settings.about.privacy.description' => 'Quyền riêng tư không phải là phần thêm vào — đó là nguyên tắc thiết kế. Điều này có nghĩa là:',
			'settings.about.privacy.noAccounts' => 'Không cần tài khoản\nSử dụng app ngay lập tức. Không đăng ký, không danh tính.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Không theo dõi hành vi\n${appLabel} không theo dõi hoạt động của bạn, không tạo hồ sơ sử dụng, và không theo dõi bạn qua các app hay trang web.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Không quảng cáo theo thiết kế\n${appLabel} được xây dựng để hoạt động không cần quảng cáo hoặc kiếm tiền dựa trên dữ liệu.',
			'settings.about.privacy.noDataSelling' => 'Không bán dữ liệu\nDữ liệu sức khỏe của bạn không bao giờ bị bán hoặc chia sẻ với bên thứ ba.',
			'settings.about.privacy.localStorage' => 'Lưu trữ ưu tiên cục bộ\nDữ liệu của bạn ở lại trên thiết bị của bạn.',
			'settings.about.privacy.privacyPolicy' => 'Chính sách quyền riêng tư',
			'settings.about.developer.title' => 'Được xây dựng bởi một nhà phát triển độc lập',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} được xây dựng và duy trì bởi một nhà phát triển độc lập với mục tiêu tạo phần mềm sức khỏe yên tĩnh, tôn trọng quyền riêng tư.\n\nPhản hồi được đọc cá nhân và giúp định hướng phát triển ứng dụng.',
			'settings.about.developer.website' => 'Trang web',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Bạn thích ${appLabel} chứ?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Phản hồi của bạn giúp ${appLabel} tốt hơn cho mọi người.',
			'settings.about.feedback.rateApp' => 'Đánh giá trên Play Store',
			'settings.about.feedback.sendFeedback' => 'Gửi phản hồi',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Bản dựng ${buildNumber}',
			'reminders.title' => 'Giữ đúng lịch với nhắc nhở',
			'reminders.description' => 'Nhận nhắc nhẹ để ghi bữa ăn và duy trì mục tiêu dinh dưỡng',
			'reminders.notificationsEnabled' => 'Thông báo đã bật',
			'reminders.notificationsDisabled' => 'Thông báo đã tắt',
			'reminders.enabledSubtitle' => 'Bạn sẽ nhận nhắc bữa ăn',
			'reminders.disabledSubtitle' => 'Bật thông báo để nhận nhắc bữa ăn',
			'reminders.mealReminders' => 'Nhắc bữa ăn',
			'reminders.breakfast' => 'Bữa sáng',
			'reminders.lunch' => 'Bữa trưa',
			'reminders.dinner' => 'Bữa tối',
			'reminders.snack' => 'Ăn vặt',
			'reminders.unknown' => 'Không xác định',
			'reminders.change' => 'Thay đổi',
			'reminders.enableNotifications' => 'Bật thông báo',
			'reminders.skipForNow' => 'Bỏ qua trước',
			'reminders.saveChanges' => 'Lưu thay đổi',
			'reminders.enabledSuccessfully' => 'Bật thông báo thành công!',
			'reminders.permissionDenied' => 'Quyền thông báo bị từ chối',
			'reminders.errorEnabling' => ({required Object error}) => 'Lỗi khi bật thông báo: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Lỗi khi hoàn tất thiết lập: ${error}',
			'notifications.breakfast.title' => 'Đến giờ ăn sáng! 🍳',
			'notifications.breakfast.body' => 'Đừng quên ghi bữa sáng của bạn',
			'notifications.lunch.title' => 'Đến giờ ăn trưa! 🥗',
			'notifications.lunch.body' => 'Đã đến lúc ghi bữa trưa',
			'notifications.dinner.title' => 'Đến giờ ăn tối! 🍽️',
			'notifications.dinner.body' => 'Đừng quên ghi bữa tối của bạn',
			'notifications.snack.title' => 'Đến giờ ăn vặt! 🍎',
			'notifications.snack.body' => 'Thời gian cho một bữa ăn nhẹ lành mạnh',
			'notifications.test.title' => 'Thông báo thử nghiệm',
			'login.title' => 'Đăng nhập',
			'login.signInWithGoogle' => 'Đăng nhập bằng Google',
			'login.signInFailed' => 'Đăng nhập Google thất bại hoặc đã bị hủy.',
			'disclaimer.pleaseNote' => 'Vui lòng lưu ý',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} cung cấp thông tin dinh dưỡng ước lượng. Độ chính xác phụ thuộc vào thông tin bạn cung cấp & sự khác biệt của thực phẩm. Sử dụng làm hướng dẫn, không phải nguồn tuyệt đối. Tham khảo chuyên gia để được tư vấn dinh dưỡng cá nhân.',
			'disclaimer.snap.portionSize.title' => 'Kích thước khẩu phần',
			'disclaimer.snap.portionSize.description' => 'Độ chính xác của ước tính phụ thuộc lớn vào việc bạn đánh giá đúng kích thước khẩu phần.',
			'disclaimer.snap.preparationMethods.title' => 'Phương pháp chế biến',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Cách nấu có thể thay đổi đáng kể hàm lượng dinh dưỡng. Ước tính của ${appLabel} có thể không luôn tính đến những thay đổi này.',
			'disclaimer.snap.ingredients.title' => 'Nguyên liệu',
			'disclaimer.snap.ingredients.description' => 'Các món phức tạp với nhiều nguyên liệu ẩn có thể dẫn đến ước tính kém chính xác hơn.',
			'disclaimer.snap.databaseLimitations.title' => 'Hạn chế cơ sở dữ liệu',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Cơ sở dữ liệu thực phẩm của ${appLabel} rất rộng nhưng có thể không bao gồm mọi món hoặc biến thể.',
			'disclaimer.weightEstimate.title' => 'Về ước tính cân nặng',
			'disclaimer.weightEstimate.description' => 'Thay đổi cân nặng dự đoán là ước tính lý thuyết dựa trên mô hình calo vào vs calo ra đơn giản. Nó nhằm mục đích truyền cảm hứng, không phải dự đoán cân nặng thực tế của bạn.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Độ chính xác calo',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Ước tính này chỉ chính xác bằng việc bạn ghi chép chính xác lượng calo nạp và tiêu hao. Ghi không chính xác sẽ dẫn đến dự đoán sai.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Yếu tố sinh học',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Thực tế giảm/tăng cân bị ảnh hưởng bởi trao đổi chất, hormone, giấc ngủ, stress, độ hydrat hóa và các yếu tố cá nhân khác mà ${appLabel} không thể đo.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Cân nặng do nước & dao động',
			'disclaimer.weightEstimate.waterWeight.description' => 'Cân nặng hằng ngày có thể dao động lớn do giữ nước, tiêu hóa và thời điểm. Ước tính không tính đến những thay đổi hàng ngày này.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Hướng dẫn chuyên môn',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Đừng dùng ước tính này để đưa ra quyết định y tế. Luôn tham khảo chuyên gia y tế hoặc chuyên gia dinh dưỡng để được tư vấn quản lý cân nặng cá nhân.',
			'disclaimer.healthMetrics.description' => 'Những chỉ số này giúp bạn hiểu nhu cầu năng lượng của cơ thể và hướng dẫn mục tiêu dinh dưỡng.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR) là số calo cơ thể bạn tiêu hao khi nghỉ để duy trì các chức năng cơ bản như thở và tuần hoàn. BMR phụ thuộc vào tuổi, giới tính, chiều cao và cân nặng. BMR cao hơn có nghĩa cơ thể bạn đốt nhiều calo khi nghỉ, thường do nhiều cơ hơn, trẻ hơn hoặc là nam. BMR thấp hơn thường chỉ ra ít cơ, lớn tuổi hơn, hoặc là nữ.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE) là tổng calo bạn tiêu hao trong ngày, bao gồm BMR cộng calo từ hoạt động thể chất và vận động hàng ngày. TDEE phụ thuộc vào BMR và mức độ hoạt động. TDEE cao hơn nghĩa bạn tiêu hao nhiều calo hơn tổng thể, thường do hoạt động nhiều hơn hoặc BMR cao hơn. TDEE thấp hơn gợi ý hoạt động hàng ngày ít hơn hoặc BMR thấp hơn.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Mục tiêu hàng ngày',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Mục tiêu hàng ngày là lượng calo khuyến nghị dựa trên TDEE và mục tiêu cân nặng của bạn. Để giảm cân, bạn tiêu thụ ít calo hơn TDEE. Để duy trì, bạn khớp TDEE. Để tăng cân, bạn tiêu thụ nhiều calo hơn TDEE. Điều này giúp bạn đạt thay đổi cân nặng mong muốn với tốc độ lành mạnh.',
			'disclaimer.calorieExpenditure.title' => 'Ước tính tiêu hao calo',
			'disclaimer.calorieExpenditure.description' => 'Khi không có dữ liệu Health Connect, chúng tôi ước tính calo tiêu hao hôm nay bằng BMR và mức độ hoạt động (TDEE), được tỉ lệ theo phần ngày đã trôi qua.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Cách ước tính được tính',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Chúng tôi tính TDEE của bạn (dựa trên hồ sơ) và nhân với tỷ lệ phần ngày đã trôi qua (giờ + phút) / 24 để ước tính calo đã tiêu hao cho đến nay.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Hướng dẫn chuyên môn',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Đừng dùng ước tính này để đưa ra quyết định y tế. Luôn tham khảo chuyên gia y tế hoặc chuyên gia dinh dưỡng để được tư vấn quản lý cân nặng cá nhân.',
			_ => null,
		} ?? switch (path) {
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
			'common.close' => 'Đóng',
			'common.kContinue' => 'Tiếp tục',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Bạn có thích ${appLabel} không?',
			'feedbackRating.yes' => 'Có, tôi thích',
			'feedbackRating.no' => 'Không hẳn',
			'feedbackRating.rateStepHeading' => 'Đánh giá trên Play Store',
			'feedbackRating.emailStepHeading' => 'Gửi phản hồi qua email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Một đánh giá nhanh giúp người khác tìm thấy ${appLabel} và duy trì phát triển. Bạn có thể dành chút thời gian để đánh giá không?',
			'feedbackRating.shareFeedbackViaEmail' => 'Phản hồi của bạn định hình những gì sẽ đến — chúng tôi đọc mọi tin nhắn. Bạn muốn chia sẻ qua email không?',
			'feedbackRating.rateCta' => 'Đánh giá trên Play Store',
			'feedbackRating.maybeLater' => 'Để sau',
			'feedbackRating.sendFeedback' => 'Gửi phản hồi',
			'feedbackRating.noThanks' => 'Không, cảm ơn',
			'feedbackRating.aboutUsDescription' => 'Được tạo với sự quan tâm bởi một nhóm nhỏ. Chúng tôi tập trung vào quyền riêng tư, đơn giản và giúp bạn xây thói quen ăn uống tốt hơn.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Tò mò ai đứng sau ${appLabel}? Xem ',
			'feedbackRating.aboutUsLinkLabel' => 'Về chúng tôi',
			'feedbackRating.thankYouMessage' => 'Cảm ơn! Chúng tôi sẽ hỏi lại lúc khác.',
			'health.syncFailed' => 'Không thể đồng bộ với Health Connect',
			'health.mealSynced' => 'Bữa ăn đã được đồng bộ với Health Connect',
			_ => null,
		};
	}
}
