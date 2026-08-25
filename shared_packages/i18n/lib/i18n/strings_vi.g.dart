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
	@override late final _Translations$errors$vi errors = _Translations$errors$vi._(_root);
	@override late final _Translations$onboarding$vi onboarding = _Translations$onboarding$vi._(_root);
	@override late final _Translations$tabs$vi tabs = _Translations$tabs$vi._(_root);
	@override late final _Translations$home$vi home = _Translations$home$vi._(_root);
	@override late final _Translations$history$vi history = _Translations$history$vi._(_root);
	@override late final _Translations$meal$vi meal = _Translations$meal$vi._(_root);
	@override late final _Translations$favorites$vi favorites = _Translations$favorites$vi._(_root);
	@override late final _Translations$profile$vi profile = _Translations$profile$vi._(_root);
	@override late final _Translations$healthScore$vi healthScore = _Translations$healthScore$vi._(_root);
	@override late final _Translations$editProfile$vi editProfile = _Translations$editProfile$vi._(_root);
	@override late final _Translations$settings$vi settings = _Translations$settings$vi._(_root);
	@override late final _Translations$reminders$vi reminders = _Translations$reminders$vi._(_root);
	@override late final _Translations$notifications$vi notifications = _Translations$notifications$vi._(_root);
	@override late final _Translations$login$vi login = _Translations$login$vi._(_root);
	@override late final _Translations$disclaimer$vi disclaimer = _Translations$disclaimer$vi._(_root);
	@override late final _Translations$localNutritionPhase4$vi localNutritionPhase4 = _Translations$localNutritionPhase4$vi._(_root);
	@override late final _Translations$watch$vi watch = _Translations$watch$vi._(_root);
	@override late final _Translations$common$vi common = _Translations$common$vi._(_root);
	@override late final _Translations$feedbackRating$vi feedbackRating = _Translations$feedbackRating$vi._(_root);
	@override late final _Translations$health$vi health = _Translations$health$vi._(_root);
}

// Path: errors
class _Translations$errors$vi extends Translations$errors$en {
	_Translations$errors$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$vi extends Translations$onboarding$en {
	_Translations$onboarding$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Chào mừng đến với ${appLabel}';
	@override String get subtitle => 'Người bạn đồng hành dinh dưỡng cá nhân được hỗ trợ bởi AI';
	@override String get getStarted => 'Bắt đầu';
	@override late final _Translations$onboarding$features$vi features = _Translations$onboarding$features$vi._(_root);
	@override late final _Translations$onboarding$gender$vi gender = _Translations$onboarding$gender$vi._(_root);
	@override late final _Translations$onboarding$height$vi height = _Translations$onboarding$height$vi._(_root);
	@override late final _Translations$onboarding$weight$vi weight = _Translations$onboarding$weight$vi._(_root);
	@override late final _Translations$onboarding$age$vi age = _Translations$onboarding$age$vi._(_root);
	@override late final _Translations$onboarding$bmiScale$vi bmiScale = _Translations$onboarding$bmiScale$vi._(_root);
	@override late final _Translations$onboarding$weightGoal$vi weightGoal = _Translations$onboarding$weightGoal$vi._(_root);
	@override late final _Translations$onboarding$activityLevel$vi activityLevel = _Translations$onboarding$activityLevel$vi._(_root);
	@override late final _Translations$onboarding$healthConnect$vi healthConnect = _Translations$onboarding$healthConnect$vi._(_root);
	@override late final _Translations$onboarding$reinforcement$vi reinforcement = _Translations$onboarding$reinforcement$vi._(_root);
}

// Path: tabs
class _Translations$tabs$vi extends Translations$tabs$en {
	_Translations$tabs$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Bảng điều khiển';
	@override String get history => 'Lịch sử';
}

// Path: home
class _Translations$home$vi extends Translations$home$en {
	_Translations$home$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$vi aiSummary = _Translations$home$aiSummary$vi._(_root);
	@override late final _Translations$home$dailyGoal$vi dailyGoal = _Translations$home$dailyGoal$vi._(_root);
	@override late final _Translations$home$dailySummary$vi dailySummary = _Translations$home$dailySummary$vi._(_root);
	@override late final _Translations$home$intakeProgress$vi intakeProgress = _Translations$home$intakeProgress$vi._(_root);
	@override late final _Translations$home$intakeHistory$vi intakeHistory = _Translations$home$intakeHistory$vi._(_root);
	@override late final _Translations$home$mealLog$vi mealLog = _Translations$home$mealLog$vi._(_root);
	@override late final _Translations$home$mealDescription$vi mealDescription = _Translations$home$mealDescription$vi._(_root);
	@override late final _Translations$home$favoriteMeals$vi favoriteMeals = _Translations$home$favoriteMeals$vi._(_root);
	@override late final _Translations$home$mealSnap$vi mealSnap = _Translations$home$mealSnap$vi._(_root);
	@override late final _Translations$home$connectHealth$vi connectHealth = _Translations$home$connectHealth$vi._(_root);
}

// Path: history
class _Translations$history$vi extends Translations$history$en {
	_Translations$history$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Chưa có bữa ăn được ghi';
	@override String get emptyMessage => 'Chụp ảnh bữa ăn gần nhất để ghi vào đây.';
	@override String get today => 'Hôm nay';
	@override String get yesterday => 'Hôm qua';
}

// Path: meal
class _Translations$meal$vi extends Translations$meal$en {
	_Translations$meal$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
	@override late final _Translations$meal$nutrition$vi nutrition = _Translations$meal$nutrition$vi._(_root);
	@override late final _Translations$meal$deleteConfirmation$vi deleteConfirmation = _Translations$meal$deleteConfirmation$vi._(_root);
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
	@override late final _Translations$meal$questionFlow$vi questionFlow = _Translations$meal$questionFlow$vi._(_root);
	@override late final _Translations$meal$analysis$vi analysis = _Translations$meal$analysis$vi._(_root);
	@override late final _Translations$meal$localInference$vi localInference = _Translations$meal$localInference$vi._(_root);
	@override late final _Translations$meal$feedback$vi feedback = _Translations$meal$feedback$vi._(_root);
}

// Path: favorites
class _Translations$favorites$vi extends Translations$favorites$en {
	_Translations$favorites$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
	@override late final _Translations$favorites$sortOptions$vi sortOptions = _Translations$favorites$sortOptions$vi._(_root);
}

// Path: profile
class _Translations$profile$vi extends Translations$profile$en {
	_Translations$profile$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hồ sơ';
	@override String get noProfileData => 'Không tìm thấy dữ liệu hồ sơ';
	@override String get yourProfile => 'Hồ sơ của bạn';
	@override String get viewAndManage => 'Xem và quản lý thông tin sức khỏe của bạn';
	@override late final _Translations$profile$sections$vi sections = _Translations$profile$sections$vi._(_root);
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
	@override late final _Translations$profile$calculatedValues$vi calculatedValues = _Translations$profile$calculatedValues$vi._(_root);
}

// Path: healthScore
class _Translations$healthScore$vi extends Translations$healthScore$en {
	_Translations$healthScore$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$vi extends Translations$editProfile$en {
	_Translations$editProfile$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chỉnh sửa hồ sơ';
	@override late final _Translations$editProfile$sections$vi sections = _Translations$editProfile$sections$vi._(_root);
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
	@override String get unitLbs => 'pao (lbs)';
	@override String get metricCm => 'Hệ mét (cm)';
	@override String get imperialFtIn => 'Hệ Anh (ft/in)';
	@override String get metricKg => 'Hệ mét (kg)';
	@override String get imperialLbs => 'Hệ Anh (lbs)';
	@override late final _Translations$editProfile$genders$vi genders = _Translations$editProfile$genders$vi._(_root);
	@override late final _Translations$editProfile$weightGoals$vi weightGoals = _Translations$editProfile$weightGoals$vi._(_root);
	@override late final _Translations$editProfile$activityLevels$vi activityLevels = _Translations$editProfile$activityLevels$vi._(_root);
}

// Path: settings
class _Translations$settings$vi extends Translations$settings$en {
	_Translations$settings$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cài đặt';
	@override late final _Translations$settings$sections$vi sections = _Translations$settings$sections$vi._(_root);
	@override late final _Translations$settings$editProfile$vi editProfile = _Translations$settings$editProfile$vi._(_root);
	@override late final _Translations$settings$language$vi language = _Translations$settings$language$vi._(_root);
	@override late final _Translations$settings$heightUnit$vi heightUnit = _Translations$settings$heightUnit$vi._(_root);
	@override late final _Translations$settings$weightUnit$vi weightUnit = _Translations$settings$weightUnit$vi._(_root);
	@override late final _Translations$settings$mealReminders$vi mealReminders = _Translations$settings$mealReminders$vi._(_root);
	@override late final _Translations$settings$localInference$vi localInference = _Translations$settings$localInference$vi._(_root);
	@override late final _Translations$settings$theme$vi theme = _Translations$settings$theme$vi._(_root);
	@override late final _Translations$settings$sendFeedback$vi sendFeedback = _Translations$settings$sendFeedback$vi._(_root);
	@override late final _Translations$settings$exportMealHistory$vi exportMealHistory = _Translations$settings$exportMealHistory$vi._(_root);
	@override late final _Translations$settings$clearAllData$vi clearAllData = _Translations$settings$clearAllData$vi._(_root);
	@override late final _Translations$settings$debugOptions$vi debugOptions = _Translations$settings$debugOptions$vi._(_root);
	@override String get developerModeEnabled => 'Đã bật chế độ nhà phát triển!';
	@override late final _Translations$settings$healthConnect$vi healthConnect = _Translations$settings$healthConnect$vi._(_root);
	@override late final _Translations$settings$about$vi about = _Translations$settings$about$vi._(_root);
	@override late final _Translations$settings$appInfo$vi appInfo = _Translations$settings$appInfo$vi._(_root);
}

// Path: reminders
class _Translations$reminders$vi extends Translations$reminders$en {
	_Translations$reminders$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _Translations$notifications$vi extends Translations$notifications$en {
	_Translations$notifications$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$vi breakfast = _Translations$notifications$breakfast$vi._(_root);
	@override late final _Translations$notifications$lunch$vi lunch = _Translations$notifications$lunch$vi._(_root);
	@override late final _Translations$notifications$dinner$vi dinner = _Translations$notifications$dinner$vi._(_root);
	@override late final _Translations$notifications$snack$vi snack = _Translations$notifications$snack$vi._(_root);
	@override late final _Translations$notifications$test$vi test = _Translations$notifications$test$vi._(_root);
}

// Path: login
class _Translations$login$vi extends Translations$login$en {
	_Translations$login$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đăng nhập';
	@override String get signInWithGoogle => 'Đăng nhập bằng Google';
	@override String get signInFailed => 'Đăng nhập Google thất bại hoặc đã bị hủy.';
}

// Path: disclaimer
class _Translations$disclaimer$vi extends Translations$disclaimer$en {
	_Translations$disclaimer$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Vui lòng lưu ý';
	@override late final _Translations$disclaimer$snap$vi snap = _Translations$disclaimer$snap$vi._(_root);
	@override late final _Translations$disclaimer$weightEstimate$vi weightEstimate = _Translations$disclaimer$weightEstimate$vi._(_root);
	@override late final _Translations$disclaimer$healthMetrics$vi healthMetrics = _Translations$disclaimer$healthMetrics$vi._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$vi calorieExpenditure = _Translations$disclaimer$calorieExpenditure$vi._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$vi extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get portionSmaller => 'Nhỏ hơn';
	@override String get portionEstimated => 'Ước tính';
	@override String get portionLarger => 'Lớn hơn';
	@override String portionQuestion({required Object ingredient}) => 'Khẩu phần nào gần nhất với ${ingredient}?';
	@override String get mealTypeQuestion => 'Đây là bữa ăn nào?';
	@override String get localNutritionTip => 'Được tính từ dữ liệu dinh dưỡng cục bộ đã xác minh.';
	@override String get offlineNutritionTitle => 'Tải dữ liệu dinh dưỡng';
	@override String get offlineNutritionSubtitle => 'Sử dụng các hàng USDA đã xác minh và phép tính xác định trên thiết bị này khi mọi nguyên liệu đều được hỗ trợ.';
	@override String get offlineNutritionUnavailable => 'Dữ liệu dinh dưỡng cục bộ không khả dụng cho bản phát hành ứng dụng này.';
	@override String get offlineNutritionNotDownloaded => 'Chưa tải xuống gói dinh dưỡng đã xác minh nào.';
	@override String get offlineNutritionInstalling => 'Đang tải xuống và xác minh dữ liệu dinh dưỡng…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Gói ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} hàng USDA đã lưu đệm · ${size}';
	@override String get offlineNutritionUpdate => 'Kiểm tra bản cập nhật';
	@override String get offlineNutritionClear => 'Xóa dữ liệu dinh dưỡng cục bộ';
	@override String get offlineNutritionClearTitle => 'Xóa dữ liệu dinh dưỡng cục bộ?';
	@override String get offlineNutritionClearBody => 'Thao tác này xóa gói USDA đã tải xuống và bộ nhớ đệm tra cứu. Các bữa ăn đã ghi vẫn giữ ảnh chụp dinh dưỡng chính xác được dùng khi lưu.';
	@override String get offlineNutritionClearConfirm => 'Xóa dữ liệu';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Không thể tải xuống và xác minh dữ liệu dinh dưỡng cục bộ: ${error}';
	@override String get offlineNutritionCleared => 'Đã xóa dữ liệu dinh dưỡng cục bộ';
}

// Path: watch
class _Translations$watch$vi extends Translations$watch$en {
	_Translations$watch$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$vi common = _Translations$watch$common$vi._(_root);
	@override late final _Translations$watch$nutrition$vi nutrition = _Translations$watch$nutrition$vi._(_root);
	@override late final _Translations$watch$sync$vi sync = _Translations$watch$sync$vi._(_root);
	@override late final _Translations$watch$home$vi home = _Translations$watch$home$vi._(_root);
	@override late final _Translations$watch$history$vi history = _Translations$watch$history$vi._(_root);
	@override late final _Translations$watch$favorites$vi favorites = _Translations$watch$favorites$vi._(_root);
	@override late final _Translations$watch$meal$vi meal = _Translations$watch$meal$vi._(_root);
	@override late final _Translations$watch$voice$vi voice = _Translations$watch$voice$vi._(_root);
	@override late final _Translations$watch$result$vi result = _Translations$watch$result$vi._(_root);
}

// Path: common
class _Translations$common$vi extends Translations$common$en {
	_Translations$common$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Bản beta';
	@override String get close => 'Đóng';
	@override String get kContinue => 'Tiếp tục';
}

// Path: feedbackRating
class _Translations$feedbackRating$vi extends Translations$feedbackRating$en {
	_Translations$feedbackRating$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _Translations$health$vi extends Translations$health$en {
	_Translations$health$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Không thể đồng bộ với Health Connect';
	@override String get mealSynced => 'Bữa ăn đã được đồng bộ với Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$vi extends Translations$onboarding$features$en {
	_Translations$onboarding$features$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$vi foodRecognition = _Translations$onboarding$features$foodRecognition$vi._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$vi aiAnalysis = _Translations$onboarding$features$aiAnalysis$vi._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$vi healthIntegration = _Translations$onboarding$features$healthIntegration$vi._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$vi extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bạn thuộc giới tính nào?';
	@override String get description => 'Giới tính giúp chúng tôi tính chính xác tỷ lệ trao đổi chất cơ bản (BMR).';
	@override String get next => 'Tiếp theo';
}

// Path: onboarding.height
class _Translations$onboarding$height$vi extends Translations$onboarding$height$en {
	_Translations$onboarding$height$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bạn cao bao nhiêu?';
	@override String get description => 'Chiều cao giúp chúng tôi tính BMI và nhu cầu năng lượng chính xác hơn.';
	@override String get metric => 'Hệ mét';
	@override String get imperial => 'Hệ Anh';
	@override String get next => 'Tiếp theo';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$vi extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$age$vi extends Translations$onboarding$age$en {
	_Translations$onboarding$age$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bạn sinh ngày khi nào?';
	@override String get description => 'Tuổi của bạn giúp chúng tôi tính nhu cầu calo chính xác.';
	@override String get next => 'Tiếp theo';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$vi extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Thiếu';
	@override String get healthy => 'Lành mạnh';
	@override String get overweight => 'Thừa';
	@override String get obese => 'Béo';
	@override late final _Translations$onboarding$bmiScale$categories$vi categories = _Translations$onboarding$bmiScale$categories$vi._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$vi messages = _Translations$onboarding$bmiScale$messages$vi._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$vi extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mục tiêu của bạn là gì?';
	@override String get description => 'Chọn mục tiêu mô tả đúng điều bạn muốn đạt được';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$vi extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bạn hoạt động nhiều như thế nào?';
	@override String get description => 'Điều này giúp chúng tôi tính nhu cầu calo hàng ngày chính xác hơn';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$vi extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kết nối với Health Connect';
	@override String get description => 'Đồng bộ dữ liệu sức khỏe để có cái nhìn tốt hơn và theo dõi calo tự động';
	@override String get overviewDescription => 'Dùng lượng calo đã đốt cháy trong mục tiêu hằng ngày và tùy chọn chia sẻ các bữa ăn đã ghi với Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$vi automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$vi._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$vi caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$vi._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$vi progressInsights = _Translations$onboarding$healthConnect$progressInsights$vi._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$vi shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$vi._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$vi seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$vi._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$vi userControl = _Translations$onboarding$healthConnect$userControl$vi._(_root);
	@override String get connected => 'Đã kết nối Health Connect';
	@override String get notConnected => 'Chưa kết nối Health Connect';
	@override String get setup => 'Thiết lập Health Connect';
	@override String get skipForNow => 'Bỏ qua trước';
	@override String get statusConnected => 'Health Connect đã được kết nối.';
	@override String get statusSuccess => 'Đã kết nối Health Connect thành công!';
	@override String get statusNotConnected => 'Chọn các tính năng Health Connect bạn muốn bật.';
	@override String get statusPartial => 'Health Connect đã kết nối một phần. Hãy bật quyền còn lại để dùng cả hai tính năng.';
	@override String get statusProviderUpdateRequired => 'Cài đặt hoặc cập nhật Health Connect để tiếp tục.';
	@override String get statusUnavailable => 'Thiết bị này không hỗ trợ Health Connect.';
	@override String get installOrUpdate => 'Cài đặt hoặc cập nhật';
	@override String get manageAccess => 'Quản lý quyền truy cập';
	@override String statusPermissionDenied({required Object appLabel}) => 'Từ chối quyền. Vui lòng bật quyền Health Connect trong cài đặt điện thoại cho ${appLabel}.';
	@override String statusError({required Object error}) => 'Lỗi khi thiết lập Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$vi extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$vi trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$vi._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$vi healthProfile = _Translations$onboarding$reinforcement$healthProfile$vi._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$vi goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$vi._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$vi extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _Translations$home$dailyGoal$vi extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
	@override String get kcal => 'kilocalo (kcal)';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$vi extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tóm tắt hàng ngày';
	@override String get calories => 'Calo';
	@override String get carbs => 'Tinh bột';
	@override String get protein => 'Chất đạm';
	@override String get fat => 'Chất béo';
	@override String get fiber => 'Chất xơ';
	@override String get grams => 'gam';
	@override String get chartAccessibilityLabel => 'Biểu đồ các macro';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$vi extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tỷ lệ macro hôm nay';
	@override String get target => 'Mục tiêu';
	@override String get current => 'Hiện tại';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$vi extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lịch sử macro 7 ngày';
	@override String get trendTitle => 'Xu hướng hôm nay';
	@override String peakHour({required Object hour}) => 'Cao điểm: ${hour}:00';
	@override String get noHistoryYet => 'Chưa có lịch sử';
	@override String get startLogging => 'Bắt đầu ghi bữa ăn để xem\nxu hướng macro 7 ngày tại đây';
}

// Path: home.mealLog
class _Translations$home$mealLog$vi extends Translations$home$mealLog$en {
	_Translations$home$mealLog$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Các bữa đã ghi';
	@override String get emptyMessage => 'Chụp ảnh bữa ăn gần nhất để ghi vào đây.';
	@override String get noMealsToday => 'Chưa có bữa ăn ghi hôm nay';
	@override String get seeAllMeals => 'Xem tất cả bữa ăn';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$vi extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thêm nhanh với AI';
	@override String get description => 'Mô tả bữa ăn của bạn, để AI lo phần chi tiết.';
	@override String get hint => 'ví dụ: Buổi sáng tôi ăn một bát lớn yến mạch với 1 quả chuối thái lát và 1 thìa whey ...';
	@override String get analyzeMeal => 'Phân tích bữa ăn';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$vi extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _Translations$home$mealSnap$vi extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _Translations$home$connectHealth$vi extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đồng bộ với Health Connect';
	@override String get description => 'Đồng bộ dữ liệu dinh dưỡng của bạn với Health Connect';
	@override String get install => 'Cài đặt';
	@override String get dataUseDescription => 'Dùng lượng calo đã đốt cháy trong mục tiêu và chia sẻ các bữa ăn đã ghi';
	@override String get installOrUpdate => 'Cài đặt hoặc cập nhật';
	@override String get connect => 'Kết nối';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$vi extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calo';
	@override String get carbs => 'Tinh bột (g)';
	@override String get protein => 'Chất đạm (g)';
	@override String get fat => 'Chất béo (g)';
	@override String get fiber => 'Chất xơ (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$vi extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Xóa bữa ăn';
	@override String get message => 'Bạn có chắc muốn xóa mục bữa ăn này không?';
	@override String get cancel => 'Hủy';
	@override String get delete => 'Xóa';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$vi extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Câu hỏi ${current} trên ${total}';
	@override String get noQuestionsAvailable => 'Không có câu hỏi';
	@override String get next => 'Tiếp theo';
	@override String get continueLabel => 'Tiếp tục';
	@override String get countQuestion => 'Chọn số lượng';
	@override String get itemSizeQuestion => 'Chọn kích cỡ món ăn';
	@override String get portionSizeQuestion => 'Chọn khẩu phần ăn';
	@override String get option6plus => '6 hoặc nhiều hơn';
	@override String get optionSmall => 'Nhỏ';
	@override String get optionRegular => 'Thông thường';
	@override String get optionLarge => 'Lớn';
	@override String get optionThin => 'Mỏng';
	@override String get optionThick => 'Dày';
	@override String get optionMini => 'Rất nhỏ';
	@override String get optionStuffed => 'Đầy';
	@override String get optionHeavy => 'Nặng';
	@override String get optionSmaller => 'Nhỏ hơn';
	@override String get optionTypical => 'Điển hình';
	@override String get optionLarger => 'Lớn hơn';
}

// Path: meal.analysis
class _Translations$meal$analysis$vi extends Translations$meal$analysis$en {
	_Translations$meal$analysis$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
	@override String mealPreviewDescription({required Object text}) => '“${text}”';
	@override String get offlineTip0 => 'Mẹo: Kiên trì còn hơn hoàn hảo—ghi chép đều đặn sẽ cho thấy các mô hình quan trọng.';
	@override String get offlineTip1 => 'Mẹo: Với ảnh, ánh sáng tự nhiên và góc chụp từ trên xuống giúp xác định khẩu phần chính xác hơn.';
	@override String get offlineTip2 => 'Mẹo: Nhắc đến đồ uống, nước sốt và dầu ăn—chúng thêm calo mà thường bị quên.';
	@override String get offlineTip3 => 'Mẹo: Ghi nhanh kích thước khẩu phần (1 bát, cà phê lớn) sẽ làm ước tính chính xác hơn nhiều.';
	@override String get offlineTip4 => 'Mẹo: Ghi sau bữa ăn vẫn giúp xây thói quen; không cần hoàn hảo.';
	@override String get offlineTip5 => 'Mẹo: Nói cách thức nấu khi làm thay đổi nhiều calo (chiên vs nướng).';
	@override String get noFoodTip => 'Không phát hiện thấy thức ăn. Hãy thử một ảnh hoặc mô tả khác.';
}

// Path: meal.localInference
class _Translations$meal$localInference$vi extends Translations$meal$localInference$en {
	_Translations$meal$localInference$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
}

// Path: meal.feedback
class _Translations$meal$feedback$vi extends Translations$meal$feedback$en {
	_Translations$meal$feedback$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _Translations$favorites$sortOptions$vi extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Gần đây';
	@override String get calories => 'Calo';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _Translations$profile$sections$vi extends Translations$profile$sections$en {
	_Translations$profile$sections$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'HỒ SƠ';
	@override String get basicInformation => 'THÔNG TIN CƠ BẢN';
	@override String get goalsAndActivity => 'MỤC TIÊU & HOẠT ĐỘNG';
	@override String get calculatedValues => 'GIÁ TRỊ ĐƯỢC TÍNH';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$vi extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Mục tiêu hàng ngày';
	@override String get calPerDay => 'cal/ngày';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$vi extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'THÔNG TIN CÁ NHÂN';
	@override String get physicalMeasurements => 'SỐ LIỆU THỂ CHẤT';
	@override String get goalsAndActivity => 'MỤC TIÊU & HOẠT ĐỘNG';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$vi extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get male => 'Nam';
	@override String get female => 'Nữ';
	@override String get other => 'Khác';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$vi extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$vi loseWeight = _Translations$editProfile$weightGoals$loseWeight$vi._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$vi maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$vi._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$vi gainWeight = _Translations$editProfile$weightGoals$gainWeight$vi._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$vi extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$vi sedentary = _Translations$editProfile$activityLevels$sedentary$vi._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$vi lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$vi._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$vi moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$vi._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$vi veryActive = _Translations$editProfile$activityLevels$veryActive$vi._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$vi extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$vi._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$vi extends Translations$settings$sections$en {
	_Translations$settings$sections$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get profile => 'HỒ SƠ';
	@override String get localization => 'NGÔN NGỮ';
	@override String get notifications => 'THÔNG BÁO';
	@override String get healthConnect => 'TÍCH HỢP HEALTH CONNECT';
	@override String get localInference => 'PHÂN TÍCH TRÊN THIẾT BỊ';
	@override String get supportAndLegal => 'HỖ TRỢ & PHÁP LÝ';
	@override String get about => 'VỀ ỨNG DỤNG';
	@override String get dangerZone => 'KHU VỰC NGUY HIỂM';
	@override String get developer => 'NHÀ PHÁT TRIỂN';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$vi extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chỉnh sửa hồ sơ';
	@override String get subtitle => 'Cập nhật thông tin cá nhân của bạn';
}

// Path: settings.language
class _Translations$settings$language$vi extends Translations$settings$language$en {
	_Translations$settings$language$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ngôn ngữ';
	@override String get subtitle => 'Chọn ngôn ngữ ưa thích';
	@override String get searchHint => 'Tìm ngôn ngữ...';
	@override String get noResults => 'Không tìm thấy kết quả';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$vi extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đơn vị chiều cao';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$vi extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đơn vị cân nặng';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$vi extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nhắc bữa ăn';
	@override String get subtitle => 'Giữ đúng lịch với thông báo kịp thời';
}

// Path: settings.localInference
class _Translations$settings$localInference$vi extends Translations$settings$localInference$en {
	_Translations$settings$localInference$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _Translations$settings$theme$vi extends Translations$settings$theme$en {
	_Translations$settings$theme$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giao diện';
	@override String get light => 'Sáng';
	@override String get dark => 'Tối';
	@override String get system => 'Hệ thống';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$vi extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _Translations$settings$exportMealHistory$vi extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Xuất lịch sử bữa ăn';
	@override String get subtitle => 'Chia sẻ CSV các bữa ăn đã ghi';
	@override String get shareText => 'Bản xuất lịch sử bữa ăn Calorify của bạn';
	@override String failed({required Object error}) => 'Không thể xuất lịch sử bữa ăn: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$vi extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Xóa tất cả dữ liệu';
	@override String get subtitle => 'Xóa vĩnh viễn mọi thông tin của bạn';
	@override String get localOnlySubtitle => 'Xóa dữ liệu Calorify lưu trên thiết bị này';
	@override String get confirmationTitle => 'Xóa tất cả dữ liệu?';
	@override String get confirmationMessage => 'Hành động này không thể hoàn tác. Tất cả bữa ăn đã ghi, mục yêu thích và cài đặt hồ sơ của bạn sẽ bị xóa vĩnh viễn.';
	@override String get localOnlyConfirmationMessage => 'Thao tác này xóa vĩnh viễn các bữa ăn đã ghi, mục yêu thích và cài đặt hồ sơ khỏi thiết bị. Các bữa ăn đã chia sẻ với Health Connect và quyền truy cập Health Connect được quản lý riêng tại Cài đặt > Health Connect.';
	@override String get cancel => 'Hủy';
	@override String get clearEverything => 'Xóa hết';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$vi extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tùy chọn gỡ lỗi';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$vi extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Xem và quản lý quyền';
	@override late final _Translations$settings$healthConnect$unavailable$vi unavailable = _Translations$settings$healthConnect$unavailable$vi._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$vi updateRequired = _Translations$settings$healthConnect$updateRequired$vi._(_root);
	@override late final _Translations$settings$healthConnect$permissions$vi permissions = _Translations$settings$healthConnect$permissions$vi._(_root);
	@override String get managePermissions => 'Quản lý quyền';
	@override String get openSettings => 'Mở cài đặt Health Connect';
	@override String get disconnect => 'Ngắt kết nối Health Connect';
	@override String get disconnectConfirmationTitle => 'Ngắt kết nối Health Connect?';
	@override String get disconnectConfirmationMessage => 'Calorify sẽ mất quyền truy cập Health Connect. Dữ liệu đã ghi tại đó sẽ không bị xóa.';
	@override String get disconnectConfirmationAction => 'Ngắt kết nối';
	@override String get deleteSyncedMeals => 'Xóa bữa ăn Calorify khỏi Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'Xóa bữa ăn đã đồng bộ?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Xóa khỏi Health Connect các bữa ăn được phiên bản Calorify này đồng bộ? Nhật ký bữa ăn cục bộ sẽ không thay đổi. Các mục Calorify cũ hơn có thể vẫn cần được xóa qua Quản lý dữ liệu trong Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Xóa bữa ăn đã đồng bộ';
	@override String get deleteSyncedMealsSuccess => 'Đã xóa các bữa ăn Calorify khỏi Health Connect.';
	@override String get deleteSyncedMealsFailed => 'Không thể xóa bữa ăn đã đồng bộ. Vui lòng thử lại.';
	@override String get connectionPartial => 'Một số tính năng Health Connect đã được bật.';
	@override String get connectionComplete => 'Cả hai tính năng Health Connect đã được bật.';
	@override String get actionFailed => 'Không thể mở Health Connect. Vui lòng thử lại.';
	@override String get requestPermissions => 'Yêu cầu quyền';
	@override String get permissionRequestCancelledOrFailed => 'Yêu cầu quyền đã bị hủy hoặc thất bại. Vui lòng thử lại hoặc cấp quyền thủ công trong cài đặt Health Connect.';
	@override String get permissionRequestFailed => 'Không thể yêu cầu quyền. Vui lòng thử lại hoặc cấp quyền thủ công trong cài đặt Health Connect.';
	@override String get requestingPermissions => 'Đang yêu cầu...';
}

// Path: settings.about
class _Translations$settings$about$vi extends Translations$settings$about$en {
	_Translations$settings$about$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Về';
	@override String get tagline => 'Nhanh, miễn phí và ưu tiên quyền riêng tư trong nhận thức calo';
	@override late final _Translations$settings$about$ourStory$vi ourStory = _Translations$settings$about$ourStory$vi._(_root);
	@override late final _Translations$settings$about$privacy$vi privacy = _Translations$settings$about$privacy$vi._(_root);
	@override late final _Translations$settings$about$developer$vi developer = _Translations$settings$about$developer$vi._(_root);
	@override late final _Translations$settings$about$feedback$vi feedback = _Translations$settings$about$feedback$vi._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$vi extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify phiên bản ${version}';
	@override String build({required Object buildNumber}) => 'Bản dựng ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$vi extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đến giờ ăn sáng! 🍳';
	@override String get body => 'Đừng quên ghi bữa sáng của bạn';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$vi extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đến giờ ăn trưa! 🥗';
	@override String get body => 'Đã đến lúc ghi bữa trưa';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$vi extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đến giờ ăn tối! 🍽️';
	@override String get body => 'Đừng quên ghi bữa tối của bạn';
}

// Path: notifications.snack
class _Translations$notifications$snack$vi extends Translations$notifications$snack$en {
	_Translations$notifications$snack$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đến giờ ăn vặt! 🍎';
	@override String get body => 'Thời gian cho một bữa ăn nhẹ lành mạnh';
}

// Path: notifications.test
class _Translations$notifications$test$vi extends Translations$notifications$test$en {
	_Translations$notifications$test$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thông báo thử nghiệm';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$vi extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} cung cấp thông tin dinh dưỡng ước lượng. Độ chính xác phụ thuộc vào thông tin bạn cung cấp & sự khác biệt của thực phẩm. Sử dụng làm hướng dẫn, không phải nguồn tuyệt đối. Tham khảo chuyên gia để được tư vấn dinh dưỡng cá nhân.';
	@override late final _Translations$disclaimer$snap$portionSize$vi portionSize = _Translations$disclaimer$snap$portionSize$vi._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$vi preparationMethods = _Translations$disclaimer$snap$preparationMethods$vi._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$vi ingredients = _Translations$disclaimer$snap$ingredients$vi._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$vi databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$vi._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$vi extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Về ước tính cân nặng';
	@override String get description => 'Thay đổi cân nặng dự đoán là ước tính lý thuyết dựa trên mô hình calo vào vs calo ra đơn giản. Nó nhằm mục đích truyền cảm hứng, không phải dự đoán cân nặng thực tế của bạn.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$vi calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$vi._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$vi biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$vi._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$vi waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$vi._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$vi professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$vi._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$vi extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get description => 'Những chỉ số này giúp bạn hiểu nhu cầu năng lượng của cơ thể và hướng dẫn mục tiêu dinh dưỡng.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$vi bmr = _Translations$disclaimer$healthMetrics$bmr$vi._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$vi tdee = _Translations$disclaimer$healthMetrics$tdee$vi._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$vi dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$vi._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$vi extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ước tính tiêu hao calo';
	@override String get description => 'Khi không có dữ liệu Health Connect, chúng tôi ước tính calo tiêu hao hôm nay bằng BMR và mức độ hoạt động (TDEE), được tỉ lệ theo phần ngày đã trôi qua.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$vi howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$vi._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$vi professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$vi._(_root);
}

// Path: watch.common
class _Translations$watch$common$vi extends Translations$watch$common$en {
	_Translations$watch$common$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get back => 'Quay lại';
	@override String get cancel => 'Hủy';
	@override String get delete => 'Xóa';
	@override String get retry => 'Thử lại';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$vi extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Chất dinh dưỡng';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} g';
	@override String get protein => 'Protein';
	@override String get carbs => 'Tinh bột';
	@override String get fat => 'Chất béo';
	@override String get fiber => 'Chất xơ';
}

// Path: watch.sync
class _Translations$watch$sync$vi extends Translations$watch$sync$en {
	_Translations$watch$sync$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Đồng bộ với điện thoại';
	@override String get syncing => 'Đang đồng bộ…';
	@override String get synced => 'Đã đồng bộ';
	@override String get syncedJustNow => 'Vừa đồng bộ';
	@override String syncedMinutesAgo({required Object minutes}) => 'Đã đồng bộ ${minutes} phút trước';
	@override String get failed => 'Đồng bộ thất bại';
	@override String get phoneDisconnected => 'Điện thoại đã ngắt kết nối';
	@override String get tapToSync => 'Chạm để đồng bộ';
	@override String get refreshFailed => 'Không thể làm mới. Kiểm tra điện thoại của bạn.';
	@override String get openPhone => 'Mở Calorify trên điện thoại, sau đó chạm làm mới.';
}

// Path: watch.home
class _Translations$watch$home$vi extends Translations$watch$home$en {
	_Translations$watch$home$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get today => 'Hôm nay';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} calo đã tiêu thụ trên tổng ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} vượt quá mục tiêu';
	@override String remaining({required Object calories}) => 'Còn lại ${calories}';
	@override String left({required Object calories}) => '${calories} còn lại';
	@override String goal({required Object calories}) => 'Mục tiêu ${calories} kcal';
	@override String get logMeal => 'Ghi bữa ăn';
	@override String get todayMeals => 'Các bữa hôm nay';
	@override String todayMealsCount({required Object count}) => 'Các bữa hôm nay, ${count}';
	@override String viewMore({required Object count}) => 'Xem thêm ${count}';
	@override String viewMoreSemantics({required Object count}) => '${count} bữa nữa, chạm để xem tất cả';
	@override String get noMeals => 'Chưa ghi bữa nào';
	@override String get noMealsSemantics => 'Hôm nay chưa ghi bữa nào';
	@override String get tapLog => 'Chạm Ghi để bắt đầu';
	@override String get removedFromQueue => 'Bữa ăn đã được gỡ khỏi hàng đợi ngoại tuyến.';
	@override String get removedOffline => 'Bữa ăn đã xóa ngoại tuyến. Sẽ đồng bộ khi điện thoại kết nối lại.';
	@override String get deleteFailed => 'Không thể xóa bữa ăn';
}

// Path: watch.history
class _Translations$watch$history$vi extends Translations$watch$history$en {
	_Translations$watch$history$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Các bữa hôm nay';
	@override String get refresh => 'Làm mới danh sách bữa';
	@override String get loadFailed => 'Không thể tải bữa ăn';
	@override String get syncFailed => 'Không thể đồng bộ';
	@override String get emptyTitle => 'Chưa có bữa ăn';
	@override String get emptyMessage => 'Ghi một bữa từ Màn hình chính để xem ở đây.';
}

// Path: watch.favorites
class _Translations$watch$favorites$vi extends Translations$watch$favorites$en {
	_Translations$watch$favorites$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yêu thích';
	@override String get refresh => 'Làm mới mục yêu thích';
	@override String get loadFailed => 'Không thể tải mục yêu thích';
	@override String get syncFailed => 'Không thể đồng bộ';
	@override String get emptyTitle => 'Chưa có mục yêu thích';
	@override String get emptyMessage => 'Đánh dấu sao các bữa ăn trong ứng dụng điện thoại để ghi một chạm ở đây.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} calo. Chạm để ghi.';
	@override String logged({required Object name}) => '${name} đã được ghi!';
	@override String savedOffline({required Object name}) => '${name} đã lưu ngoại tuyến. Sẽ đồng bộ khi điện thoại kết nối lại.';
	@override String get saveFailed => 'Không thể lưu bữa ăn. Vui lòng thử lại.';
	@override String get log => 'Ghi';
}

// Path: watch.meal
class _Translations$watch$meal$vi extends Translations$watch$meal$en {
	_Translations$watch$meal$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} calo, đã ghi lúc ${time}.';
	@override String get longPressDelete => 'Nhấn giữ để xóa.';
	@override String get deleteTitle => 'Xóa bữa ăn?';
}

// Path: watch.voice
class _Translations$watch$voice$vi extends Translations$watch$voice$en {
	_Translations$watch$voice$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ghi bữa bằng giọng nói';
	@override String get processing => 'Đang kiểm tra bữa ăn…';
	@override String get processingDescription => 'Ước tính khẩu phần và dinh dưỡng';
	@override String get listening => 'Đang nghe';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Dừng ghi âm';
	@override String get start => 'Chạm để bắt đầu ghi';
	@override String get starting => 'Khởi động micro…';
	@override String get prompt => 'Chạm, sau đó mô tả bữa ăn';
	@override String get tapToRetry => 'Chạm để thử lại';
	@override String get example => 'Thử “2 rotis với dal”';
	@override String get unavailable => 'Nhập bằng giọng nói không khả dụng. Kiểm tra quyền micro trong cài đặt đồng hồ.';
	@override String get didNotStart => 'Micro không khởi động. Chạm để thử lại.';
	@override String get startFailed => 'Không thể bắt đầu ghi âm. Kiểm tra quyền micro.';
	@override String get allowMicrophone => 'Cho phép truy cập micro để ghi bữa bằng giọng nói.';
	@override String get needsConnection => 'Nhận dạng giọng nói cần kết nối. Chạm để thử lại.';
	@override String get microphoneUnavailable => 'Micro không khả dụng. Chạm để thử lại.';
	@override String get microphoneBusy => 'Micro đang bận. Chờ một lát rồi thử lại.';
	@override String get languageUnsupported => 'Nhập giọng nói không hỗ trợ ngôn ngữ đồng hồ.';
	@override String get temporarilyBusy => 'Nhập giọng nói đang bận tạm thời. Chờ một lát rồi thử lại.';
	@override String get notRecognized => 'Không nghe rõ. Chạm mic và thử lại.';
	@override String get noSpeech => 'Không phát hiện giọng nói. Chạm mic để thử lại.';
	@override String get analysisFailed => 'Phân tích thất bại. Vui lòng thử lại.';
	@override String get mealNotIdentified => 'Không xác định được bữa ăn. Thử mô tả khác.';
}

// Path: watch.result
class _Translations$watch$result$vi extends Translations$watch$result$en {
	_Translations$watch$result$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chi tiết bữa ăn';
	@override String get savedOffline => 'Đã lưu ngoại tuyến';
	@override String get logged => 'Đã ghi!';
	@override String get mealFound => 'Tìm thấy bữa ăn';
	@override String get estimatedEnergy => 'Năng lượng ước tính';
	@override String get logMeal => 'Ghi bữa';
	@override String get logging => 'Đang ghi…';
	@override String get logAnother => 'Ghi thêm';
	@override String get goingBack => 'Đang quay lại…';
	@override String get savedOfflineMessage => 'Bữa ăn đã lưu ngoại tuyến. Sẽ đồng bộ khi điện thoại kết nối lại.';
	@override String get saveFailed => 'Không thể lưu bữa ăn. Vui lòng thử lại.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$vi extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nhận diện thức ăn thông minh';
	@override String get description => 'Chụp ảnh và để AI nhận biết bữa ăn của bạn';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$vi extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Phân tích AI';
	@override String get description => 'Nhận thông tin dinh dưỡng ngay lập tức từ mô tả của bạn';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$vi extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tích hợp Health Connect';
	@override String get description => 'Kết nối với Health Connect để có cái nhìn sâu hơn';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$vi extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Thiếu cân';
	@override String get healthyWeight => 'Cân nặng khỏe mạnh';
	@override String get overweight => 'Thừa cân';
	@override String get obese => 'Béo phì';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$vi extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Chúng tôi có thể giúp bạn xây dựng kế hoạch lành mạnh để đạt cân nặng cân bằng với các bữa ăn giàu dưỡng chất.';
	@override String get healthy => 'Rất tốt! Bạn đang ở trong khoảng khỏe mạnh. Chúng tôi sẽ giúp bạn duy trì năng lượng và sức sống.';
	@override String overweight({required Object appLabel}) => '${appLabel} sẽ đơn giản hóa hành trình của bạn với theo dõi bằng AI để bạn đạt mục tiêu thoải mái hơn.';
	@override String get obese => 'Chúng tôi ở đây để hỗ trợ bạn bằng hướng dẫn cá nhân hóa và các chiến lược bền vững cho mục tiêu sức khỏe.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$vi extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Theo dõi calo tự động';
	@override String get description => 'Ghi nhận calo đã tiêu hao từ các app thể dục của bạn';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$vi extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calo đã đốt cháy';
	@override String get description => 'Đọc tổng lượng calo đã đốt cháy hôm nay từ Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$vi extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thông tin tiến trình';
	@override String get description => 'Nhận thông tin chi tiết về xu hướng sức khỏe của bạn';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$vi extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chia sẻ bữa ăn đã ghi';
	@override String get description => 'Ghi các bữa ăn bạn nhập trong Calorify vào Health Connect';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$vi extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tích hợp liền mạch';
	@override String get description => 'Đồng bộ dữ liệu từ các ứng dụng sức khỏe yêu thích của bạn';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$vi extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bạn là người kiểm soát';
	@override String get description => 'Chọn một trong hai quyền và thay đổi quyền truy cập bất cứ lúc nào';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$vi extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$healthProfile$vi extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$goalLifestyle$vi extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$weightGoals$loseWeight$vi extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Giảm cân';
	@override String get description => 'Tạo thâm hụt calo để giảm cân';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$vi extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Duy trì cân nặng';
	@override String get description => 'Duy trì cân nặng hiện tại';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$vi extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tăng cân';
	@override String get description => 'Tạo thặng dư calo để tăng cân';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$vi extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ít vận động';
	@override String get description => 'Ít hoặc không tập thể dục';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$vi extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hoạt động nhẹ';
	@override String get description => 'Tập nhẹ 1-3 ngày/tuần';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$vi extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hoạt động vừa phải';
	@override String get description => 'Tập vừa phải 3-5 ngày/tuần';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$vi extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Rất năng động';
	@override String get description => 'Tập nặng 6-7 ngày/tuần';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$vi extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get name => 'Cực kỳ năng động';
	@override String get description => 'Lao động nặng hoặc tập rất nhiều';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$vi extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect không khả dụng';
	@override String get description => 'Health Connect không có trên thiết bị này. Vui lòng cài Health Connect từ Play Store (Android 9+) hoặc cập nhật lên Android 14+.';
	@override String get unsupportedDescription => 'Thiết bị này không hỗ trợ Health Connect.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$vi extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect cần được xử lý';
	@override String get description => 'Cài đặt hoặc cập nhật Health Connect trước khi quản lý quyền truy cập.';
	@override String get action => 'Cài đặt hoặc cập nhật';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$vi extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quyền';
	@override String get description => 'Các quyền sau được yêu cầu để cung cấp tích hợp Health Connect:';
	@override String get granted => 'Đã cấp';
	@override String get notGranted => 'Chưa cấp';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$vi caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$vi._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$vi nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$vi._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$vi nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$vi._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$vi extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Câu chuyện của chúng tôi';
	@override String content({required Object appLabel}) => '${appLabel} sinh ra từ một sự thất vọng đơn giản: hầu hết ứng dụng theo dõi calo quá phức tạp, yêu cầu nhập tay liên tục, thu phí đăng ký cao, hoặc xâm phạm quyền riêng tư.\n\nLà một nhà phát triển độc lập, tôi muốn tạo ra thứ gì đó đơn giản hơn và công bằng hơn — một ứng dụng dùng AI để giảm nỗ lực, giữ nhanh và miễn phí, và tôn trọng dữ liệu sức khỏe của bạn.\n\n${appLabel} là ứng dụng tôi ước gì đã tồn tại: không cần tài khoản, không theo dõi hành vi, không quảng cáo — chỉ những thông tin rõ ràng, thiết thực và mục tiêu sức khỏe của bạn.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$vi extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quyền riêng tư của bạn quan trọng';
	@override String get description => 'Quyền riêng tư không phải là phần thêm vào — đó là nguyên tắc thiết kế. Điều này có nghĩa là:';
	@override String get noAccounts => 'Không cần tài khoản\nSử dụng app ngay lập tức. Không đăng ký, không danh tính.';
	@override String noTracking({required Object appLabel}) => 'Không theo dõi hành vi\n${appLabel} không theo dõi hoạt động của bạn, không tạo hồ sơ sử dụng, và không theo dõi bạn qua các app hay trang web.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Phân tích và chẩn đoán có giới hạn\n${appLabel} sử dụng các sự kiện cơ bản của ứng dụng và dữ liệu chẩn đoán sự cố để cải thiện độ tin cậy. Giá trị hồ sơ sức khỏe không được dùng cho quảng cáo hoặc bán.';
	@override String noAds({required Object appLabel}) => 'Không quảng cáo theo thiết kế\n${appLabel} được xây dựng để hoạt động không cần quảng cáo hoặc kiếm tiền dựa trên dữ liệu.';
	@override String get noDataSelling => 'Không bán dữ liệu\nDữ liệu sức khỏe của bạn không bao giờ bị bán hoặc chia sẻ với bên thứ ba.';
	@override String get localStorage => 'Lưu trữ ưu tiên cục bộ\nDữ liệu của bạn ở lại trên thiết bị của bạn.';
	@override String get privacyPolicy => 'Chính sách quyền riêng tư';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$vi extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Được xây dựng bởi một nhà phát triển độc lập';
	@override String description({required Object appLabel}) => '${appLabel} được xây dựng và duy trì bởi một nhà phát triển độc lập với mục tiêu tạo phần mềm sức khỏe yên tĩnh, tôn trọng quyền riêng tư.\n\nPhản hồi được đọc cá nhân và giúp định hướng phát triển ứng dụng.';
	@override String get website => 'Trang web';
	@override String get email => 'Thư điện tử';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$vi extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Bạn thích ${appLabel} chứ?';
	@override String description({required Object appLabel}) => 'Phản hồi của bạn giúp ${appLabel} tốt hơn cho mọi người.';
	@override String get rateApp => 'Đánh giá trên Play Store';
	@override String get sendFeedback => 'Gửi phản hồi';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$vi extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kích thước khẩu phần';
	@override String get description => 'Độ chính xác của ước tính phụ thuộc lớn vào việc bạn đánh giá đúng kích thước khẩu phần.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$vi extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Phương pháp chế biến';
	@override String description({required Object appLabel}) => 'Cách nấu có thể thay đổi đáng kể hàm lượng dinh dưỡng. Ước tính của ${appLabel} có thể không luôn tính đến những thay đổi này.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$vi extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nguyên liệu';
	@override String get description => 'Các món phức tạp với nhiều nguyên liệu ẩn có thể dẫn đến ước tính kém chính xác hơn.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$vi extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hạn chế cơ sở dữ liệu';
	@override String description({required Object appLabel}) => 'Cơ sở dữ liệu thực phẩm của ${appLabel} rất rộng nhưng có thể không bao gồm mọi món hoặc biến thể.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$vi extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Độ chính xác calo';
	@override String get description => 'Ước tính này chỉ chính xác bằng việc bạn ghi chép chính xác lượng calo nạp và tiêu hao. Ghi không chính xác sẽ dẫn đến dự đoán sai.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$vi extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yếu tố sinh học';
	@override String description({required Object appLabel}) => 'Thực tế giảm/tăng cân bị ảnh hưởng bởi trao đổi chất, hormone, giấc ngủ, stress, độ hydrat hóa và các yếu tố cá nhân khác mà ${appLabel} không thể đo.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$vi extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cân nặng do nước & dao động';
	@override String get description => 'Cân nặng hằng ngày có thể dao động lớn do giữ nước, tiêu hóa và thời điểm. Ước tính không tính đến những thay đổi hàng ngày này.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$vi extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hướng dẫn chuyên môn';
	@override String get description => 'Đừng dùng ước tính này để đưa ra quyết định y tế. Luôn tham khảo chuyên gia y tế hoặc chuyên gia dinh dưỡng để được tư vấn quản lý cân nặng cá nhân.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$vi extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) là số calo cơ thể bạn tiêu hao khi nghỉ để duy trì các chức năng cơ bản như thở và tuần hoàn. BMR phụ thuộc vào tuổi, giới tính, chiều cao và cân nặng. BMR cao hơn có nghĩa cơ thể bạn đốt nhiều calo khi nghỉ, thường do nhiều cơ hơn, trẻ hơn hoặc là nam. BMR thấp hơn thường chỉ ra ít cơ, lớn tuổi hơn, hoặc là nữ.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$vi extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) là tổng calo bạn tiêu hao trong ngày, bao gồm BMR cộng calo từ hoạt động thể chất và vận động hàng ngày. TDEE phụ thuộc vào BMR và mức độ hoạt động. TDEE cao hơn nghĩa bạn tiêu hao nhiều calo hơn tổng thể, thường do hoạt động nhiều hơn hoặc BMR cao hơn. TDEE thấp hơn gợi ý hoạt động hàng ngày ít hơn hoặc BMR thấp hơn.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$vi extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mục tiêu hàng ngày';
	@override String get description => 'Mục tiêu hàng ngày là lượng calo khuyến nghị dựa trên TDEE và mục tiêu cân nặng của bạn. Để giảm cân, bạn tiêu thụ ít calo hơn TDEE. Để duy trì, bạn khớp TDEE. Để tăng cân, bạn tiêu thụ nhiều calo hơn TDEE. Điều này giúp bạn đạt thay đổi cân nặng mong muốn với tốc độ lành mạnh.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$vi extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cách ước tính được tính';
	@override String get description => 'Chúng tôi tính TDEE của bạn (dựa trên hồ sơ) và nhân với tỷ lệ phần ngày đã trôi qua (giờ + phút) / 24 để ước tính calo đã tiêu hao cho đến nay.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$vi extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hướng dẫn chuyên môn';
	@override String get description => 'Đừng dùng ước tính này để đưa ra quyết định y tế. Luôn tham khảo chuyên gia y tế hoặc chuyên gia dinh dưỡng để được tư vấn quản lý cân nặng cá nhân.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$vi extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đọc tổng calo đã tiêu hao';
	@override String get description => 'Cho phép app đọc tổng calo bạn đã tiêu hao từ Health Connect.';
	@override String get usage => 'Quyền này dùng để hiển thị lượng calo đã tiêu hàng ngày trong app, giúp bạn hiểu tổng mức tiêu hao năng lượng trong ngày.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$vi extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$vi._(TranslationsVi root) : this._root = root, super.internal(root);

	final TranslationsVi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Đọc dữ liệu dinh dưỡng';
	@override String get description => 'Cho phép app đọc dữ liệu dinh dưỡng từ Health Connect.';
	@override String get usage => 'Quyền này cho phép app đọc thông tin dinh dưỡng có thể đã được ghi bởi các app khác kết nối với Health Connect, cung cấp cái nhìn toàn diện về dinh dưỡng của bạn.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$vi extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$vi._(TranslationsVi root) : this._root = root, super.internal(root);

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
			'onboarding.healthConnect.overviewDescription' => 'Dùng lượng calo đã đốt cháy trong mục tiêu hằng ngày và tùy chọn chia sẻ các bữa ăn đã ghi với Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Theo dõi calo tự động',
			'onboarding.healthConnect.automaticTracking.description' => 'Ghi nhận calo đã tiêu hao từ các app thể dục của bạn',
			'onboarding.healthConnect.caloriesBurned.title' => 'Calo đã đốt cháy',
			'onboarding.healthConnect.caloriesBurned.description' => 'Đọc tổng lượng calo đã đốt cháy hôm nay từ Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Thông tin tiến trình',
			'onboarding.healthConnect.progressInsights.description' => 'Nhận thông tin chi tiết về xu hướng sức khỏe của bạn',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Chia sẻ bữa ăn đã ghi',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Ghi các bữa ăn bạn nhập trong Calorify vào Health Connect',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Tích hợp liền mạch',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Đồng bộ dữ liệu từ các ứng dụng sức khỏe yêu thích của bạn',
			'onboarding.healthConnect.userControl.title' => 'Bạn là người kiểm soát',
			'onboarding.healthConnect.userControl.description' => 'Chọn một trong hai quyền và thay đổi quyền truy cập bất cứ lúc nào',
			'onboarding.healthConnect.connected' => 'Đã kết nối Health Connect',
			'onboarding.healthConnect.notConnected' => 'Chưa kết nối Health Connect',
			'onboarding.healthConnect.setup' => 'Thiết lập Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Bỏ qua trước',
			'onboarding.healthConnect.statusConnected' => 'Health Connect đã được kết nối.',
			'onboarding.healthConnect.statusSuccess' => 'Đã kết nối Health Connect thành công!',
			'onboarding.healthConnect.statusNotConnected' => 'Chọn các tính năng Health Connect bạn muốn bật.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect đã kết nối một phần. Hãy bật quyền còn lại để dùng cả hai tính năng.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Cài đặt hoặc cập nhật Health Connect để tiếp tục.',
			'onboarding.healthConnect.statusUnavailable' => 'Thiết bị này không hỗ trợ Health Connect.',
			'onboarding.healthConnect.installOrUpdate' => 'Cài đặt hoặc cập nhật',
			'onboarding.healthConnect.manageAccess' => 'Quản lý quyền truy cập',
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
			'home.dailyGoal.kcal' => 'kilocalo (kcal)',
			'home.dailySummary.title' => 'Tóm tắt hàng ngày',
			'home.dailySummary.calories' => 'Calo',
			'home.dailySummary.carbs' => 'Tinh bột',
			'home.dailySummary.protein' => 'Chất đạm',
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
			'home.connectHealth.dataUseDescription' => 'Dùng lượng calo đã đốt cháy trong mục tiêu và chia sẻ các bữa ăn đã ghi',
			'home.connectHealth.installOrUpdate' => 'Cài đặt hoặc cập nhật',
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
			'meal.nutrition.protein' => 'Chất đạm (g)',
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
			'meal.questionFlow.countQuestion' => 'Chọn số lượng',
			'meal.questionFlow.itemSizeQuestion' => 'Chọn kích cỡ món ăn',
			'meal.questionFlow.portionSizeQuestion' => 'Chọn khẩu phần ăn',
			'meal.questionFlow.option6plus' => '6 hoặc nhiều hơn',
			'meal.questionFlow.optionSmall' => 'Nhỏ',
			'meal.questionFlow.optionRegular' => 'Thông thường',
			'meal.questionFlow.optionLarge' => 'Lớn',
			'meal.questionFlow.optionThin' => 'Mỏng',
			'meal.questionFlow.optionThick' => 'Dày',
			'meal.questionFlow.optionMini' => 'Rất nhỏ',
			'meal.questionFlow.optionStuffed' => 'Đầy',
			'meal.questionFlow.optionHeavy' => 'Nặng',
			'meal.questionFlow.optionSmaller' => 'Nhỏ hơn',
			'meal.questionFlow.optionTypical' => 'Điển hình',
			'meal.questionFlow.optionLarger' => 'Lớn hơn',
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
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '“${text}”',
			'meal.analysis.offlineTip0' => 'Mẹo: Kiên trì còn hơn hoàn hảo—ghi chép đều đặn sẽ cho thấy các mô hình quan trọng.',
			'meal.analysis.offlineTip1' => 'Mẹo: Với ảnh, ánh sáng tự nhiên và góc chụp từ trên xuống giúp xác định khẩu phần chính xác hơn.',
			'meal.analysis.offlineTip2' => 'Mẹo: Nhắc đến đồ uống, nước sốt và dầu ăn—chúng thêm calo mà thường bị quên.',
			'meal.analysis.offlineTip3' => 'Mẹo: Ghi nhanh kích thước khẩu phần (1 bát, cà phê lớn) sẽ làm ước tính chính xác hơn nhiều.',
			'meal.analysis.offlineTip4' => 'Mẹo: Ghi sau bữa ăn vẫn giúp xây thói quen; không cần hoàn hảo.',
			'meal.analysis.offlineTip5' => 'Mẹo: Nói cách thức nấu khi làm thay đổi nhiều calo (chiên vs nướng).',
			'meal.analysis.noFoodTip' => 'Không phát hiện thấy thức ăn. Hãy thử một ảnh hoặc mô tả khác.',
			'meal.localInference.reviewTitle' => 'Xem lại các thành phần đã nhận diện',
			'meal.localInference.reviewSubtitle' => 'Nội dung này được phân tích trên thiết bị của bạn. Hãy chỉnh sửa tên hoặc định lượng trước khi tính toán dinh dưỡng.',
			'meal.localInference.mealName' => 'Tên bữa ăn',
			'meal.localInference.ingredient' => 'Thành phần',
			'meal.localInference.grams' => 'Số gam ước tính',
			'meal.localInference.removeIngredient' => 'Xóa thành phần',
			'meal.localInference.continueLabel' => 'Tiếp tục',
			'meal.localInference.invalidProposal' => 'Vui lòng thêm ít nhất một thành phần và nhập số gam là số dương.',
			'meal.localInference.localUnavailable' => 'Tính năng phân tích trên thiết bị hiện không khả dụng.',
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
			'editProfile.unitLbs' => 'pao (lbs)',
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
			'settings.sections.healthConnect' => 'TÍCH HỢP HEALTH CONNECT',
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
			'settings.clearAllData.localOnlySubtitle' => 'Xóa dữ liệu Calorify lưu trên thiết bị này',
			'settings.clearAllData.confirmationTitle' => 'Xóa tất cả dữ liệu?',
			'settings.clearAllData.confirmationMessage' => 'Hành động này không thể hoàn tác. Tất cả bữa ăn đã ghi, mục yêu thích và cài đặt hồ sơ của bạn sẽ bị xóa vĩnh viễn.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Thao tác này xóa vĩnh viễn các bữa ăn đã ghi, mục yêu thích và cài đặt hồ sơ khỏi thiết bị. Các bữa ăn đã chia sẻ với Health Connect và quyền truy cập Health Connect được quản lý riêng tại Cài đặt > Health Connect.',
			'settings.clearAllData.cancel' => 'Hủy',
			'settings.clearAllData.clearEverything' => 'Xóa hết',
			'settings.debugOptions.title' => 'Tùy chọn gỡ lỗi',
			'settings.developerModeEnabled' => 'Đã bật chế độ nhà phát triển!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Xem và quản lý quyền',
			'settings.healthConnect.unavailable.title' => 'Health Connect không khả dụng',
			'settings.healthConnect.unavailable.description' => 'Health Connect không có trên thiết bị này. Vui lòng cài Health Connect từ Play Store (Android 9+) hoặc cập nhật lên Android 14+.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Thiết bị này không hỗ trợ Health Connect.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect cần được xử lý',
			'settings.healthConnect.updateRequired.description' => 'Cài đặt hoặc cập nhật Health Connect trước khi quản lý quyền truy cập.',
			'settings.healthConnect.updateRequired.action' => 'Cài đặt hoặc cập nhật',
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
			'settings.healthConnect.disconnect' => 'Ngắt kết nối Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Ngắt kết nối Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify sẽ mất quyền truy cập Health Connect. Dữ liệu đã ghi tại đó sẽ không bị xóa.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Ngắt kết nối',
			'settings.healthConnect.deleteSyncedMeals' => 'Xóa bữa ăn Calorify khỏi Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Xóa bữa ăn đã đồng bộ?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Xóa khỏi Health Connect các bữa ăn được phiên bản Calorify này đồng bộ? Nhật ký bữa ăn cục bộ sẽ không thay đổi. Các mục Calorify cũ hơn có thể vẫn cần được xóa qua Quản lý dữ liệu trong Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Xóa bữa ăn đã đồng bộ',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Đã xóa các bữa ăn Calorify khỏi Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Không thể xóa bữa ăn đã đồng bộ. Vui lòng thử lại.',
			'settings.healthConnect.connectionPartial' => 'Một số tính năng Health Connect đã được bật.',
			'settings.healthConnect.connectionComplete' => 'Cả hai tính năng Health Connect đã được bật.',
			'settings.healthConnect.actionFailed' => 'Không thể mở Health Connect. Vui lòng thử lại.',
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
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Phân tích và chẩn đoán có giới hạn\n${appLabel} sử dụng các sự kiện cơ bản của ứng dụng và dữ liệu chẩn đoán sự cố để cải thiện độ tin cậy. Giá trị hồ sơ sức khỏe không được dùng cho quảng cáo hoặc bán.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Không quảng cáo theo thiết kế\n${appLabel} được xây dựng để hoạt động không cần quảng cáo hoặc kiếm tiền dựa trên dữ liệu.',
			'settings.about.privacy.noDataSelling' => 'Không bán dữ liệu\nDữ liệu sức khỏe của bạn không bao giờ bị bán hoặc chia sẻ với bên thứ ba.',
			'settings.about.privacy.localStorage' => 'Lưu trữ ưu tiên cục bộ\nDữ liệu của bạn ở lại trên thiết bị của bạn.',
			'settings.about.privacy.privacyPolicy' => 'Chính sách quyền riêng tư',
			'settings.about.developer.title' => 'Được xây dựng bởi một nhà phát triển độc lập',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} được xây dựng và duy trì bởi một nhà phát triển độc lập với mục tiêu tạo phần mềm sức khỏe yên tĩnh, tôn trọng quyền riêng tư.\n\nPhản hồi được đọc cá nhân và giúp định hướng phát triển ứng dụng.',
			'settings.about.developer.website' => 'Trang web',
			'settings.about.developer.email' => 'Thư điện tử',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Bạn thích ${appLabel} chứ?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Phản hồi của bạn giúp ${appLabel} tốt hơn cho mọi người.',
			'settings.about.feedback.rateApp' => 'Đánh giá trên Play Store',
			'settings.about.feedback.sendFeedback' => 'Gửi phản hồi',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify phiên bản ${version}',
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
			_ => null,
		} ?? switch (path) {
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
			'localNutritionPhase4.portionSmaller' => 'Nhỏ hơn',
			'localNutritionPhase4.portionEstimated' => 'Ước tính',
			'localNutritionPhase4.portionLarger' => 'Lớn hơn',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Khẩu phần nào gần nhất với ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Đây là bữa ăn nào?',
			'localNutritionPhase4.localNutritionTip' => 'Được tính từ dữ liệu dinh dưỡng cục bộ đã xác minh.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Tải dữ liệu dinh dưỡng',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Sử dụng các hàng USDA đã xác minh và phép tính xác định trên thiết bị này khi mọi nguyên liệu đều được hỗ trợ.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Dữ liệu dinh dưỡng cục bộ không khả dụng cho bản phát hành ứng dụng này.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Chưa tải xuống gói dinh dưỡng đã xác minh nào.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Đang tải xuống và xác minh dữ liệu dinh dưỡng…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Gói ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} hàng USDA đã lưu đệm · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Kiểm tra bản cập nhật',
			'localNutritionPhase4.offlineNutritionClear' => 'Xóa dữ liệu dinh dưỡng cục bộ',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Xóa dữ liệu dinh dưỡng cục bộ?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Thao tác này xóa gói USDA đã tải xuống và bộ nhớ đệm tra cứu. Các bữa ăn đã ghi vẫn giữ ảnh chụp dinh dưỡng chính xác được dùng khi lưu.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Xóa dữ liệu',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Không thể tải xuống và xác minh dữ liệu dinh dưỡng cục bộ: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Đã xóa dữ liệu dinh dưỡng cục bộ',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'Quay lại',
			'watch.common.cancel' => 'Hủy',
			'watch.common.delete' => 'Xóa',
			'watch.common.retry' => 'Thử lại',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Chất dinh dưỡng',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} g',
			'watch.nutrition.protein' => 'Protein',
			'watch.nutrition.carbs' => 'Tinh bột',
			'watch.nutrition.fat' => 'Chất béo',
			'watch.nutrition.fiber' => 'Chất xơ',
			'watch.sync.syncWithPhone' => 'Đồng bộ với điện thoại',
			'watch.sync.syncing' => 'Đang đồng bộ…',
			'watch.sync.synced' => 'Đã đồng bộ',
			'watch.sync.syncedJustNow' => 'Vừa đồng bộ',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Đã đồng bộ ${minutes} phút trước',
			'watch.sync.failed' => 'Đồng bộ thất bại',
			'watch.sync.phoneDisconnected' => 'Điện thoại đã ngắt kết nối',
			'watch.sync.tapToSync' => 'Chạm để đồng bộ',
			'watch.sync.refreshFailed' => 'Không thể làm mới. Kiểm tra điện thoại của bạn.',
			'watch.sync.openPhone' => 'Mở Calorify trên điện thoại, sau đó chạm làm mới.',
			'watch.home.today' => 'Hôm nay',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} calo đã tiêu thụ trên tổng ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} vượt quá mục tiêu',
			'watch.home.remaining' => ({required Object calories}) => 'Còn lại ${calories}',
			'watch.home.left' => ({required Object calories}) => '${calories} còn lại',
			'watch.home.goal' => ({required Object calories}) => 'Mục tiêu ${calories} kcal',
			'watch.home.logMeal' => 'Ghi bữa ăn',
			'watch.home.todayMeals' => 'Các bữa hôm nay',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Các bữa hôm nay, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Xem thêm ${count}',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} bữa nữa, chạm để xem tất cả',
			'watch.home.noMeals' => 'Chưa ghi bữa nào',
			'watch.home.noMealsSemantics' => 'Hôm nay chưa ghi bữa nào',
			'watch.home.tapLog' => 'Chạm Ghi để bắt đầu',
			'watch.home.removedFromQueue' => 'Bữa ăn đã được gỡ khỏi hàng đợi ngoại tuyến.',
			'watch.home.removedOffline' => 'Bữa ăn đã xóa ngoại tuyến. Sẽ đồng bộ khi điện thoại kết nối lại.',
			'watch.home.deleteFailed' => 'Không thể xóa bữa ăn',
			'watch.history.title' => 'Các bữa hôm nay',
			'watch.history.refresh' => 'Làm mới danh sách bữa',
			'watch.history.loadFailed' => 'Không thể tải bữa ăn',
			'watch.history.syncFailed' => 'Không thể đồng bộ',
			'watch.history.emptyTitle' => 'Chưa có bữa ăn',
			'watch.history.emptyMessage' => 'Ghi một bữa từ Màn hình chính để xem ở đây.',
			'watch.favorites.title' => 'Yêu thích',
			'watch.favorites.refresh' => 'Làm mới mục yêu thích',
			'watch.favorites.loadFailed' => 'Không thể tải mục yêu thích',
			'watch.favorites.syncFailed' => 'Không thể đồng bộ',
			'watch.favorites.emptyTitle' => 'Chưa có mục yêu thích',
			'watch.favorites.emptyMessage' => 'Đánh dấu sao các bữa ăn trong ứng dụng điện thoại để ghi một chạm ở đây.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} calo. Chạm để ghi.',
			'watch.favorites.logged' => ({required Object name}) => '${name} đã được ghi!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} đã lưu ngoại tuyến. Sẽ đồng bộ khi điện thoại kết nối lại.',
			'watch.favorites.saveFailed' => 'Không thể lưu bữa ăn. Vui lòng thử lại.',
			'watch.favorites.log' => 'Ghi',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} calo, đã ghi lúc ${time}.',
			'watch.meal.longPressDelete' => 'Nhấn giữ để xóa.',
			'watch.meal.deleteTitle' => 'Xóa bữa ăn?',
			'watch.voice.title' => 'Ghi bữa bằng giọng nói',
			'watch.voice.processing' => 'Đang kiểm tra bữa ăn…',
			'watch.voice.processingDescription' => 'Ước tính khẩu phần và dinh dưỡng',
			'watch.voice.listening' => 'Đang nghe',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Dừng ghi âm',
			'watch.voice.start' => 'Chạm để bắt đầu ghi',
			'watch.voice.starting' => 'Khởi động micro…',
			'watch.voice.prompt' => 'Chạm, sau đó mô tả bữa ăn',
			'watch.voice.tapToRetry' => 'Chạm để thử lại',
			'watch.voice.example' => 'Thử “2 rotis với dal”',
			'watch.voice.unavailable' => 'Nhập bằng giọng nói không khả dụng. Kiểm tra quyền micro trong cài đặt đồng hồ.',
			'watch.voice.didNotStart' => 'Micro không khởi động. Chạm để thử lại.',
			'watch.voice.startFailed' => 'Không thể bắt đầu ghi âm. Kiểm tra quyền micro.',
			'watch.voice.allowMicrophone' => 'Cho phép truy cập micro để ghi bữa bằng giọng nói.',
			'watch.voice.needsConnection' => 'Nhận dạng giọng nói cần kết nối. Chạm để thử lại.',
			'watch.voice.microphoneUnavailable' => 'Micro không khả dụng. Chạm để thử lại.',
			'watch.voice.microphoneBusy' => 'Micro đang bận. Chờ một lát rồi thử lại.',
			'watch.voice.languageUnsupported' => 'Nhập giọng nói không hỗ trợ ngôn ngữ đồng hồ.',
			'watch.voice.temporarilyBusy' => 'Nhập giọng nói đang bận tạm thời. Chờ một lát rồi thử lại.',
			'watch.voice.notRecognized' => 'Không nghe rõ. Chạm mic và thử lại.',
			'watch.voice.noSpeech' => 'Không phát hiện giọng nói. Chạm mic để thử lại.',
			'watch.voice.analysisFailed' => 'Phân tích thất bại. Vui lòng thử lại.',
			'watch.voice.mealNotIdentified' => 'Không xác định được bữa ăn. Thử mô tả khác.',
			'watch.result.title' => 'Chi tiết bữa ăn',
			'watch.result.savedOffline' => 'Đã lưu ngoại tuyến',
			'watch.result.logged' => 'Đã ghi!',
			'watch.result.mealFound' => 'Tìm thấy bữa ăn',
			'watch.result.estimatedEnergy' => 'Năng lượng ước tính',
			'watch.result.logMeal' => 'Ghi bữa',
			'watch.result.logging' => 'Đang ghi…',
			'watch.result.logAnother' => 'Ghi thêm',
			'watch.result.goingBack' => 'Đang quay lại…',
			'watch.result.savedOfflineMessage' => 'Bữa ăn đã lưu ngoại tuyến. Sẽ đồng bộ khi điện thoại kết nối lại.',
			'watch.result.saveFailed' => 'Không thể lưu bữa ăn. Vui lòng thử lại.',
			'common.betaTag' => 'Bản beta',
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
