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
class TranslationsZhTw with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhTw({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zhTw,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-TW>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsZhTw _root = this; // ignore: unused_field

	@override 
	TranslationsZhTw $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsZhTw(meta: meta ?? this.$meta);

	// Translations
	@override String get language => '繁體中文（台灣）';
	@override String get flag => '🇹🇼';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsZhTw errors = _TranslationsErrorsZhTw._(_root);
	@override late final _TranslationsOnboardingZhTw onboarding = _TranslationsOnboardingZhTw._(_root);
	@override late final _TranslationsTabsZhTw tabs = _TranslationsTabsZhTw._(_root);
	@override late final _TranslationsHomeZhTw home = _TranslationsHomeZhTw._(_root);
	@override late final _TranslationsHistoryZhTw history = _TranslationsHistoryZhTw._(_root);
	@override late final _TranslationsMealZhTw meal = _TranslationsMealZhTw._(_root);
	@override late final _TranslationsFavoritesZhTw favorites = _TranslationsFavoritesZhTw._(_root);
	@override late final _TranslationsProfileZhTw profile = _TranslationsProfileZhTw._(_root);
	@override late final _TranslationsHealthScoreZhTw healthScore = _TranslationsHealthScoreZhTw._(_root);
	@override late final _TranslationsEditProfileZhTw editProfile = _TranslationsEditProfileZhTw._(_root);
	@override late final _TranslationsSettingsZhTw settings = _TranslationsSettingsZhTw._(_root);
	@override late final _TranslationsRemindersZhTw reminders = _TranslationsRemindersZhTw._(_root);
	@override late final _TranslationsNotificationsZhTw notifications = _TranslationsNotificationsZhTw._(_root);
	@override late final _TranslationsLoginZhTw login = _TranslationsLoginZhTw._(_root);
	@override late final _TranslationsDisclaimerZhTw disclaimer = _TranslationsDisclaimerZhTw._(_root);
	@override late final _TranslationsCommonZhTw common = _TranslationsCommonZhTw._(_root);
	@override late final _TranslationsFeedbackRatingZhTw feedbackRating = _TranslationsFeedbackRatingZhTw._(_root);
	@override late final _TranslationsHealthZhTw health = _TranslationsHealthZhTw._(_root);
}

// Path: errors
class _TranslationsErrorsZhTw implements TranslationsErrorsEn {
	_TranslationsErrorsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => '您發出太多請求。請稍後再試。';
	@override String get networkError => '網路錯誤。請檢查您的網路連線。';
	@override String get unknownError => '發生錯誤。請稍後再試。';
	@override String get loadingProfileData => '載入個人資料資料時發生錯誤';
	@override String get somethingWentWrong => '發生問題。';
	@override String get retry => '重試';
}

// Path: onboarding
class _TranslationsOnboardingZhTw implements TranslationsOnboardingEn {
	_TranslationsOnboardingZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '歡迎使用 ${appLabel}';
	@override String get subtitle => '由 AI 驅動的個人營養夥伴';
	@override String get getStarted => '開始使用';
	@override late final _TranslationsOnboardingFeaturesZhTw features = _TranslationsOnboardingFeaturesZhTw._(_root);
	@override late final _TranslationsOnboardingGenderZhTw gender = _TranslationsOnboardingGenderZhTw._(_root);
	@override late final _TranslationsOnboardingHeightZhTw height = _TranslationsOnboardingHeightZhTw._(_root);
	@override late final _TranslationsOnboardingWeightZhTw weight = _TranslationsOnboardingWeightZhTw._(_root);
	@override late final _TranslationsOnboardingAgeZhTw age = _TranslationsOnboardingAgeZhTw._(_root);
	@override late final _TranslationsOnboardingBmiScaleZhTw bmiScale = _TranslationsOnboardingBmiScaleZhTw._(_root);
	@override late final _TranslationsOnboardingWeightGoalZhTw weightGoal = _TranslationsOnboardingWeightGoalZhTw._(_root);
	@override late final _TranslationsOnboardingActivityLevelZhTw activityLevel = _TranslationsOnboardingActivityLevelZhTw._(_root);
	@override late final _TranslationsOnboardingHealthConnectZhTw healthConnect = _TranslationsOnboardingHealthConnectZhTw._(_root);
	@override late final _TranslationsOnboardingReinforcementZhTw reinforcement = _TranslationsOnboardingReinforcementZhTw._(_root);
}

// Path: tabs
class _TranslationsTabsZhTw implements TranslationsTabsEn {
	_TranslationsTabsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get dashboard => '儀表板';
	@override String get history => '記錄歷史';
}

// Path: home
class _TranslationsHomeZhTw implements TranslationsHomeEn {
	_TranslationsHomeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryZhTw aiSummary = _TranslationsHomeAiSummaryZhTw._(_root);
	@override late final _TranslationsHomeDailyGoalZhTw dailyGoal = _TranslationsHomeDailyGoalZhTw._(_root);
	@override late final _TranslationsHomeDailySummaryZhTw dailySummary = _TranslationsHomeDailySummaryZhTw._(_root);
	@override late final _TranslationsHomeIntakeProgressZhTw intakeProgress = _TranslationsHomeIntakeProgressZhTw._(_root);
	@override late final _TranslationsHomeIntakeHistoryZhTw intakeHistory = _TranslationsHomeIntakeHistoryZhTw._(_root);
	@override late final _TranslationsHomeMealLogZhTw mealLog = _TranslationsHomeMealLogZhTw._(_root);
	@override late final _TranslationsHomeMealDescriptionZhTw mealDescription = _TranslationsHomeMealDescriptionZhTw._(_root);
	@override late final _TranslationsHomeFavoriteMealsZhTw favoriteMeals = _TranslationsHomeFavoriteMealsZhTw._(_root);
	@override late final _TranslationsHomeMealSnapZhTw mealSnap = _TranslationsHomeMealSnapZhTw._(_root);
	@override late final _TranslationsHomeConnectHealthZhTw connectHealth = _TranslationsHomeConnectHealthZhTw._(_root);
}

// Path: history
class _TranslationsHistoryZhTw implements TranslationsHistoryEn {
	_TranslationsHistoryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get noMeals => '尚未記錄任何餐點';
	@override String get emptyMessage => '拍張您剛吃的餐點照片，這裡就會顯示。';
	@override String get today => '今天';
	@override String get yesterday => '昨天';
}

// Path: meal
class _TranslationsMealZhTw implements TranslationsMealEn {
	_TranslationsMealZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get ohNo => '糟了！';
	@override String get delete => '刪除';
	@override String get editMeal => '編輯餐點';
	@override String get addMeal => '新增餐點';
	@override String get saveMeal => '儲存餐點';
	@override String get save => '儲存';
	@override String get mealName => '餐點名稱';
	@override String get mealNameHint => '例如：炒蛋配吐司';
	@override String get mealQuantity => '餐點數量/份量';
	@override String get mealQuantityHint => '例如：1 碗、2 片';
	@override String get timeOfMeal => '用餐時間';
	@override String get timeOfMealHint => '選擇您用餐的時間';
	@override String get mealType => '餐點類型';
	@override late final _TranslationsMealNutritionZhTw nutrition = _TranslationsMealNutritionZhTw._(_root);
	@override late final _TranslationsMealDeleteConfirmationZhTw deleteConfirmation = _TranslationsMealDeleteConfirmationZhTw._(_root);
	@override String get addedToLog => '餐點已新增到您的記錄！';
	@override String couldNotAdd({required Object error}) => '無法新增餐點：${error}';
	@override String get savedSuccessfully => '餐點新增成功！';
	@override String get updatedSuccessfully => '餐點更新成功！';
	@override String errorSaving({required Object error}) => '儲存餐點時發生錯誤：${error}';
	@override String get removedFromFavorites => '已從最愛移除！';
	@override String get savedAsFavorite => '餐點已儲存為最愛！';
	@override String get unfavorite => '取消最愛';
	@override String couldNotUpdateFavorite({required Object error}) => '無法更新最愛：${error}';
	@override String get feedbackThanks => '感謝您的回饋！';
	@override String get reanalysisUpdated => '已根據您的回饋更新餐點分析。';
	@override String failedToProcess({required Object error}) => '處理失敗：${error}';
	@override String failedToProcessImage({required Object error}) => '處理影像失敗：${error}';
	@override String errorCompressingImage({required Object error}) => '壓縮影像時發生錯誤：${error}';
	@override String get failedToSave => '儲存資料失敗。請再試一次。';
	@override String get skip => '跳過';
	@override late final _TranslationsMealQuestionFlowZhTw questionFlow = _TranslationsMealQuestionFlowZhTw._(_root);
	@override late final _TranslationsMealAnalysisZhTw analysis = _TranslationsMealAnalysisZhTw._(_root);
	@override late final _TranslationsMealFeedbackZhTw feedback = _TranslationsMealFeedbackZhTw._(_root);
}

// Path: favorites
class _TranslationsFavoritesZhTw implements TranslationsFavoritesEn {
	_TranslationsFavoritesZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '我的最愛';
	@override String get empty => '目前沒有最愛餐點。';
	@override String get searchPlaceholder => '搜尋最愛餐點';
	@override String get searchEmptyTitle => '沒有符合搜尋條件的最愛';
	@override String get searchEmptySubtitle => '請嘗試不同的餐名、份量或餐點類型。';
	@override String get sortLabel => '排序最愛';
	@override String get undo => '復原';
	@override String removed({required Object name}) => '已從最愛移除 ${name}';
	@override late final _TranslationsFavoritesSortOptionsZhTw sortOptions = _TranslationsFavoritesSortOptionsZhTw._(_root);
}

// Path: profile
class _TranslationsProfileZhTw implements TranslationsProfileEn {
	_TranslationsProfileZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '個人檔案';
	@override String get noProfileData => '找不到個人檔案資料';
	@override String get yourProfile => '您的個人檔案';
	@override String get viewAndManage => '檢視並管理您的健康資訊';
	@override late final _TranslationsProfileSectionsZhTw sections = _TranslationsProfileSectionsZhTw._(_root);
	@override String get gender => '性別';
	@override String get height => '身高';
	@override String get weight => '體重';
	@override String get age => '年齡';
	@override String get weightGoal => '體重目標';
	@override String get targetWeight => '目標體重';
	@override String get activityLevel => '活動量';
	@override String get healthMetrics => '健康指標';
	@override String get notSet => '未設定';
	@override String get years => '歲';
	@override String get updatedSuccessfully => '個人檔案更新成功！';
	@override late final _TranslationsProfileCalculatedValuesZhTw calculatedValues = _TranslationsProfileCalculatedValuesZhTw._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreZhTw implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '健康分數';
	@override String get whyThisScore => '為何顯示此分數？';
	@override String get note => '此分數為根據辨識成分與營養密度的 AI 估算。若需飲食建議，請務必諮詢專業人士。';
	@override String get unhealthy => '不健康';
	@override String get healthy => '健康';
	@override String get neutral => '中性';
}

// Path: editProfile
class _TranslationsEditProfileZhTw implements TranslationsEditProfileEn {
	_TranslationsEditProfileZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '編輯個人檔案';
	@override late final _TranslationsEditProfileSectionsZhTw sections = _TranslationsEditProfileSectionsZhTw._(_root);
	@override String get gender => '性別';
	@override String get dateOfBirth => '生日';
	@override String get height => '身高';
	@override String get weight => '體重';
	@override String get weightGoal => '體重目標';
	@override String get activityLevel => '活動量';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => '公制 (cm)';
	@override String get imperialFtIn => '英制 (ft/in)';
	@override String get metricKg => '公制 (kg)';
	@override String get imperialLbs => '英制 (lbs)';
	@override late final _TranslationsEditProfileGendersZhTw genders = _TranslationsEditProfileGendersZhTw._(_root);
	@override late final _TranslationsEditProfileWeightGoalsZhTw weightGoals = _TranslationsEditProfileWeightGoalsZhTw._(_root);
	@override late final _TranslationsEditProfileActivityLevelsZhTw activityLevels = _TranslationsEditProfileActivityLevelsZhTw._(_root);
}

// Path: settings
class _TranslationsSettingsZhTw implements TranslationsSettingsEn {
	_TranslationsSettingsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '設定';
	@override late final _TranslationsSettingsSectionsZhTw sections = _TranslationsSettingsSectionsZhTw._(_root);
	@override late final _TranslationsSettingsEditProfileZhTw editProfile = _TranslationsSettingsEditProfileZhTw._(_root);
	@override late final _TranslationsSettingsLanguageZhTw language = _TranslationsSettingsLanguageZhTw._(_root);
	@override late final _TranslationsSettingsHeightUnitZhTw heightUnit = _TranslationsSettingsHeightUnitZhTw._(_root);
	@override late final _TranslationsSettingsWeightUnitZhTw weightUnit = _TranslationsSettingsWeightUnitZhTw._(_root);
	@override late final _TranslationsSettingsMealRemindersZhTw mealReminders = _TranslationsSettingsMealRemindersZhTw._(_root);
	@override late final _TranslationsSettingsThemeZhTw theme = _TranslationsSettingsThemeZhTw._(_root);
	@override late final _TranslationsSettingsSendFeedbackZhTw sendFeedback = _TranslationsSettingsSendFeedbackZhTw._(_root);
	@override late final _TranslationsSettingsExportMealHistoryZhTw exportMealHistory = _TranslationsSettingsExportMealHistoryZhTw._(_root);
	@override late final _TranslationsSettingsClearAllDataZhTw clearAllData = _TranslationsSettingsClearAllDataZhTw._(_root);
	@override late final _TranslationsSettingsDebugOptionsZhTw debugOptions = _TranslationsSettingsDebugOptionsZhTw._(_root);
	@override String get developerModeEnabled => '已啟用開發者模式！';
	@override late final _TranslationsSettingsHealthConnectZhTw healthConnect = _TranslationsSettingsHealthConnectZhTw._(_root);
	@override late final _TranslationsSettingsAboutZhTw about = _TranslationsSettingsAboutZhTw._(_root);
	@override late final _TranslationsSettingsAppInfoZhTw appInfo = _TranslationsSettingsAppInfoZhTw._(_root);
}

// Path: reminders
class _TranslationsRemindersZhTw implements TranslationsRemindersEn {
	_TranslationsRemindersZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '用提醒幫助您保持進度';
	@override String get description => '收到溫和的提醒以記錄餐點並維持營養紀律';
	@override String get notificationsEnabled => '已啟用通知';
	@override String get notificationsDisabled => '已停用通知';
	@override String get enabledSubtitle => '您會收到用餐提醒';
	@override String get disabledSubtitle => '請啟用通知以接收用餐提醒';
	@override String get mealReminders => '用餐提醒';
	@override String get breakfast => '早餐';
	@override String get lunch => '午餐';
	@override String get dinner => '晚餐';
	@override String get snack => '點心';
	@override String get unknown => '未知';
	@override String get change => '更改';
	@override String get enableNotifications => '啟用通知';
	@override String get skipForNow => '暫時跳過';
	@override String get saveChanges => '儲存變更';
	@override String get enabledSuccessfully => '通知已成功啟用！';
	@override String get permissionDenied => '通知權限被拒絕';
	@override String errorEnabling({required Object error}) => '啟用通知時發生錯誤：${error}';
	@override String errorCompletingSetup({required Object error}) => '完成設定時發生錯誤：${error}';
}

// Path: notifications
class _TranslationsNotificationsZhTw implements TranslationsNotificationsEn {
	_TranslationsNotificationsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastZhTw breakfast = _TranslationsNotificationsBreakfastZhTw._(_root);
	@override late final _TranslationsNotificationsLunchZhTw lunch = _TranslationsNotificationsLunchZhTw._(_root);
	@override late final _TranslationsNotificationsDinnerZhTw dinner = _TranslationsNotificationsDinnerZhTw._(_root);
	@override late final _TranslationsNotificationsSnackZhTw snack = _TranslationsNotificationsSnackZhTw._(_root);
	@override late final _TranslationsNotificationsTestZhTw test = _TranslationsNotificationsTestZhTw._(_root);
}

// Path: login
class _TranslationsLoginZhTw implements TranslationsLoginEn {
	_TranslationsLoginZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '登入';
	@override String get signInWithGoogle => '使用 Google 登入';
	@override String get signInFailed => 'Google 登入失敗或已取消。';
}

// Path: disclaimer
class _TranslationsDisclaimerZhTw implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => '請注意';
	@override late final _TranslationsDisclaimerSnapZhTw snap = _TranslationsDisclaimerSnapZhTw._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateZhTw weightEstimate = _TranslationsDisclaimerWeightEstimateZhTw._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsZhTw healthMetrics = _TranslationsDisclaimerHealthMetricsZhTw._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureZhTw calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureZhTw._(_root);
}

// Path: common
class _TranslationsCommonZhTw implements TranslationsCommonEn {
	_TranslationsCommonZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get close => '關閉';
	@override String get kContinue => '繼續';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingZhTw implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '喜歡 ${appLabel} 嗎？';
	@override String get yes => '是的，我很喜歡';
	@override String get no => '不太喜歡';
	@override String get rateStepHeading => '在 Play Store 評分';
	@override String get emailStepHeading => '透過電子郵件提供回饋';
	@override String soloDevMessage({required Object appLabel}) => '簡短的評分能幫助其他人找到 ${appLabel}，並支持開發持續進行。您願意花一點時間留下評分嗎？';
	@override String get shareFeedbackViaEmail => '您的回饋將影響未來功能，我們會閱讀每封訊息。想用電子郵件分享意見嗎？';
	@override String get rateCta => '在 Play Store 評分';
	@override String get maybeLater => '稍後再說';
	@override String get sendFeedback => '傳送回饋';
	@override String get noThanks => '不用了，謝謝';
	@override String get aboutUsDescription => '由用心的小團隊製作。我們專注於隱私、簡潔，並幫助您養成更好的飲食習慣。';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '想知道 ${appLabel} 背後是誰？請參閱 ';
	@override String get aboutUsLinkLabel => '關於我們';
	@override String get thankYouMessage => '感謝！我們稍後會再次詢問。';
}

// Path: health
class _TranslationsHealthZhTw implements TranslationsHealthEn {
	_TranslationsHealthZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => '無法同步至 Health Connect';
	@override String get mealSynced => '餐點已同步至 Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesZhTw implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionZhTw foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionZhTw._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisZhTw aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisZhTw._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationZhTw healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationZhTw._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderZhTw implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '您的性別是？';
	@override String get description => '性別有助於我們更準確地計算您的基礎代謝率 (BMR)。';
	@override String get next => '下一步';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightZhTw implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '您的身高是多少？';
	@override String get description => '您的身高可幫助我們準確計算 BMI 與能量需求。';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get next => '下一步';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightZhTw implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => '您目前的體重是多少？';
	@override String get currentDescription => '目前體重對於個人化每日目標非常重要。';
	@override String get targetTitle => '您的目標體重是多少？';
	@override String get targetDescription => '設定目標體重可幫助我們規劃您的長期方案。';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get next => '下一步';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeZhTw implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '您的生日是什麼時候？';
	@override String get description => '年齡有助於我們準確計算您的熱量需求。';
	@override String get next => '下一步';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleZhTw implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get underweight => '偏低';
	@override String get healthy => '健康';
	@override String get overweight => '過重';
	@override String get obese => '肥胖';
	@override late final _TranslationsOnboardingBmiScaleCategoriesZhTw categories = _TranslationsOnboardingBmiScaleCategoriesZhTw._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesZhTw messages = _TranslationsOnboardingBmiScaleMessagesZhTw._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalZhTw implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '您的目標是什麼？';
	@override String get description => '選擇最能描述您想達成的目標';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelZhTw implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '您的活動量如何？';
	@override String get description => '這有助於我們更精確地計算您的每日熱量需求';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectZhTw implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '連接 Health Connect';
	@override String get description => '同步健康資料以獲得更完整的洞察與自動熱量追蹤';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingZhTw automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingZhTw._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsZhTw progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsZhTw._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationZhTw seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationZhTw._(_root);
	@override String get connected => '已連接 Health Connect';
	@override String get notConnected => '未連接 Health Connect';
	@override String get setup => '設定 Health Connect';
	@override String get skipForNow => '暫時跳過';
	@override String get statusConnected => 'Health Connect 已連線。';
	@override String get statusSuccess => '已成功連接 Health Connect！';
	@override String statusPermissionDenied({required Object appLabel}) => '權限被拒。請在手機設定中為 ${appLabel} 啟用 Health Connect 權限。';
	@override String statusError({required Object error}) => '設定 Health Connect 時發生錯誤：${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementZhTw implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessZhTw trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessZhTw._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileZhTw healthProfile = _TranslationsOnboardingReinforcementHealthProfileZhTw._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleZhTw goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleZhTw._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryZhTw implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '您的 AI 摘要';
	@override String get logMore => '接下來幾天多紀錄幾餐，讓 AI 為您提供個人化洞察。';
	@override String get loading => '載入摘要中…';
	@override String mealCount({required Object count}) => '已記錄 ${count} 餐';
	@override String macroBalanceScore({required Object score}) => '均衡分數 ${score}';
	@override String get topFoods => '常見食物';
	@override String get trendUp => '熱量上升中';
	@override String get trendDown => '熱量下降中';
	@override String get trendSteady => '熱量穩定';
	@override String generatedAt({required Object time}) => '更新於 ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalZhTw implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '設定您的每日目標';
	@override String get titleSet => '您的每日目標';
	@override String get description => '準備好展開健康旅程了嗎？在下方設定您的每日卡路里目標以啟動進程。';
	@override String get descriptionSet => '您的航向已設定！這是指引您每日的卡路里目標。';
	@override String get yourGoal => '您的目標';
	@override String get goal => '目標';
	@override String get dailyCalories => '每日卡路里 (kcal)';
	@override String get setGoal => '設定目標';
	@override String get intake => '攝取';
	@override String get burned => '消耗';
	@override String get weightImpact => '體重影響';
	@override String get estLoss => '預估減少';
	@override String get estGain => '預估增加';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryZhTw implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '每日摘要';
	@override String get calories => '卡路里';
	@override String get carbs => '碳水化合物';
	@override String get protein => '蛋白質';
	@override String get fat => '脂肪';
	@override String get fiber => '纖維';
	@override String get grams => '公克';
	@override String get chartAccessibilityLabel => '三大營養素圖表';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressZhTw implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '今日三大營養素分配';
	@override String get target => '目標';
	@override String get current => '目前';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryZhTw implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '7 天三大營養素歷史';
	@override String get trendTitle => '今日趨勢';
	@override String peakHour({required Object hour}) => '高峰：${hour}:00';
	@override String get noHistoryYet => '還沒有紀錄';
	@override String get startLogging => '開始記錄餐點以在此查看\n7 天三大營養素趨勢';
}

// Path: home.mealLog
class _TranslationsHomeMealLogZhTw implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '已記錄的餐點';
	@override String get emptyMessage => '拍張您剛吃的餐點照片，這裡就會顯示。';
	@override String get noMealsToday => '今天尚未記錄餐點';
	@override String get seeAllMeals => '查看所有餐點';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionZhTw implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 快速新增';
	@override String get description => '描述您的餐點，讓 AI 幫您填入細節。';
	@override String get hint => '例如：早餐我吃了一大碗燕麥片，配半根香蕉和一匙乳清蛋白…';
	@override String get analyzeMeal => '分析餐點';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsZhTw implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '我的最愛餐點';
	@override String get description => '快速新增您常吃的餐點。';
	@override String get noFavorites => '目前沒有最愛餐點。';
	@override String get addFavoriteHint => '點選餐點上的星號即可標為最愛。';
	@override String get seeAll => '查看全部';
	@override String get add => '新增';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapZhTw implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '拍照並記錄餐點';
	@override String get description => '使用相機拍攝您的食物，讓 AI 分析。';
	@override String get openCamera => '開啟相機';
	@override String get gallery => '相簿';
	@override String get compressingPhoto => '正在優化照片…';
	@override String get uploadingPhoto => '正在上傳照片…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthZhTw implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '與 Health Connect 同步';
	@override String get description => '將您的營養資料與 Health Connect 同步';
	@override String get install => '安裝';
	@override String get connect => '連接';
}

// Path: meal.nutrition
class _TranslationsMealNutritionZhTw implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get calories => '卡路里';
	@override String get carbs => '碳水 (g)';
	@override String get protein => '蛋白質 (g)';
	@override String get fat => '脂肪 (g)';
	@override String get fiber => '纖維 (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationZhTw implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '刪除餐點';
	@override String get message => '確定要刪除此餐點紀錄嗎？';
	@override String get cancel => '取消';
	@override String get delete => '刪除';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowZhTw implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => '問題 ${current} / ${total}';
	@override String get noQuestionsAvailable => '沒有可用問題';
	@override String get next => '下一步';
	@override String get continueLabel => '繼續';
}

// Path: meal.analysis
class _TranslationsMealAnalysisZhTw implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '正在分析您的餐點';
	@override String get stepStarted => '準備中…';
	@override String get stepDecomposition => '理解您的餐點…';
	@override String get stepIngredients => '比對成分與營養資料…';
	@override String get stepUncertainty => '確認可信度…';
	@override String get stepMealTypeQuestion => '快完成了…';
	@override String get stepResult => '完成結果…';
	@override String get stepError => '發生錯誤';
	@override String get stepDefault => '分析您的餐點…';
	@override String get progressUnderstand => '理解餐點內容';
	@override String get progressMatch => '查找成分營養資料';
	@override String get progressCheck => '檢查份量與可信度';
	@override String get progressMealType => '選擇餐點類型';
	@override String get progressFinish => '計算卡路里與三大營養素';
	@override String get detectedIngredientHeading => '我們辨識到的成分';
	@override String ingredientsOverflow({required Object count}) => '還有 ${count} 項';
	@override String ingredientsLine({required Object count}) => '偵測到 ${count} 種成分';
	@override String get ingredientsPending => '掃描成分中…';
	@override String mealPreviewDescription({required Object text}) => '「${text}」';
	@override String get offlineTip0 => '提示：持續紀錄比追求完美更重要——規律的紀錄能揭露重要模式。';
	@override String get offlineTip1 => '提示：拍照時使用自然光與俯拍有助於估算份量。';
	@override String get offlineTip2 => '提示：記得提到飲料、醬汁與烹調用油——這些通常會額外增加熱量。';
	@override String get offlineTip3 => '提示：簡單的份量說明（1 碗、大杯咖啡）會讓估算更準確。';
	@override String get offlineTip4 => '提示：餐後紀錄仍能建立習慣；不必追求完美。';
	@override String get offlineTip5 => '提示：當烹調方式差異會顯著影響熱量時，請說明烹調方式（油炸 vs 烘烤）。';
}

// Path: meal.feedback
class _TranslationsMealFeedbackZhTw implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '哪裡看起來不對？';
	@override String get subtitle => '請選擇一項或多項問題，幫助我們改進分析結果。';
	@override String get tellUsMore => '告訴我們更多';
	@override String get describeIncorrect => '描述不正確的地方';
	@override String get submit => '送出';
	@override String get issueFoodIdentification => '食物識別錯誤';
	@override String get issuePortionSize => '份量不正確';
	@override String get issueCalorieDistribution => '卡路里分配問題';
	@override String get issueMacrosWrong => '三大營養素錯誤';
	@override String get issueMissingItems => '遺漏項目';
	@override String get issueExtraItems => '多出項目';
	@override String get issueOther => '其他';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsZhTw implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get recent => '最近';
	@override String get calories => '卡路里';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsZhTw implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get profile => '個人檔案';
	@override String get basicInformation => '基本資料';
	@override String get goalsAndActivity => '目標與活動';
	@override String get calculatedValues => '計算值';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesZhTw implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => '每日目標';
	@override String get calPerDay => 'cal/天';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsZhTw implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => '個人資訊';
	@override String get physicalMeasurements => '身體測量';
	@override String get goalsAndActivity => '目標與活動';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersZhTw implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get male => '男性';
	@override String get female => '女性';
	@override String get other => '其他';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsZhTw implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightZhTw loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightZhTw._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightZhTw maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightZhTw._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightZhTw gainWeight = _TranslationsEditProfileWeightGoalsGainWeightZhTw._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsZhTw implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryZhTw sedentary = _TranslationsEditProfileActivityLevelsSedentaryZhTw._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveZhTw lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveZhTw._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveZhTw moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveZhTw._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveZhTw veryActive = _TranslationsEditProfileActivityLevelsVeryActiveZhTw._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveZhTw extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveZhTw._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsZhTw implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get profile => '個人檔案';
	@override String get localization => '在地化';
	@override String get notifications => '通知';
	@override String get healthConnect => 'Health Connect';
	@override String get supportAndLegal => '支援與法律';
	@override String get about => '關於';
	@override String get dangerZone => '危險區';
	@override String get developer => '開發者';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileZhTw implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '編輯個人檔案';
	@override String get subtitle => '更新您的個人資訊';
}

// Path: settings.language
class _TranslationsSettingsLanguageZhTw implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '語言';
	@override String get subtitle => '選擇您偏好的語言';
	@override String get searchHint => '搜尋語言…';
	@override String get noResults => '找不到結果';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitZhTw implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '身高單位';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitZhTw implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '體重單位';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersZhTw implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '用餐提醒';
	@override String get subtitle => '透過定時提醒保持紀錄習慣';
}

// Path: settings.theme
class _TranslationsSettingsThemeZhTw implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '主題';
	@override String get light => '淺色';
	@override String get dark => '深色';
	@override String get system => '系統';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackZhTw implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '傳送回饋';
	@override String subtitle({required Object appLabel}) => '幫助我們改進 ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} App 回饋';
	@override String get emailBodyPrefix => '請在下方提供您的回饋：';
	@override String get appVersion => 'App 版本';
	@override String get device => '裝置';
	@override String get osVersion => '作業系統版本';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryZhTw implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '匯出餐點歷史';
	@override String get subtitle => '分享已記錄餐點的 CSV';
	@override String get shareText => '您的 Calorify 餐點歷史匯出檔';
	@override String failed({required Object error}) => '無法匯出餐點歷史：${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataZhTw implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '清除所有資料';
	@override String get subtitle => '不可逆地刪除您的所有資訊';
	@override String get confirmationTitle => '清除所有資料？';
	@override String get confirmationMessage => '此動作無法復原。您所有記錄的餐點、最愛與個人設定將被永久刪除。';
	@override String get cancel => '取消';
	@override String get clearEverything => '全部清除';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsZhTw implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '除錯選項';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectZhTw implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => '檢視並管理權限';
	@override late final _TranslationsSettingsHealthConnectUnavailableZhTw unavailable = _TranslationsSettingsHealthConnectUnavailableZhTw._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsZhTw permissions = _TranslationsSettingsHealthConnectPermissionsZhTw._(_root);
	@override String get managePermissions => '管理權限';
	@override String get openSettings => '開啟 Health Connect 設定';
	@override String get requestPermissions => '請求權限';
	@override String get permissionRequestCancelledOrFailed => '權限請求已取消或失敗。請再試一次或在 Health Connect 設定中手動授權。';
	@override String get permissionRequestFailed => '無法請求權限。請再試一次或在 Health Connect 設定中手動授權。';
	@override String get requestingPermissions => '請求中...';
}

// Path: settings.about
class _TranslationsSettingsAboutZhTw implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '關於';
	@override String get tagline => '快速、免費且以隱私為先的卡路里意識工具';
	@override late final _TranslationsSettingsAboutOurStoryZhTw ourStory = _TranslationsSettingsAboutOurStoryZhTw._(_root);
	@override late final _TranslationsSettingsAboutPrivacyZhTw privacy = _TranslationsSettingsAboutPrivacyZhTw._(_root);
	@override late final _TranslationsSettingsAboutDeveloperZhTw developer = _TranslationsSettingsAboutDeveloperZhTw._(_root);
	@override late final _TranslationsSettingsAboutFeedbackZhTw feedback = _TranslationsSettingsAboutFeedbackZhTw._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoZhTw implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => '建置 ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastZhTw implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '該吃早餐囉！ 🍳';
	@override String get body => '別忘了記錄您的早餐';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchZhTw implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '午餐時間！ 🥗';
	@override String get body => '該記錄午餐了';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerZhTw implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '晚餐時間！ 🍽️';
	@override String get body => '別忘了記錄您的晚餐';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackZhTw implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '點心時間！ 🍎';
	@override String get body => '該吃個健康點心了';
}

// Path: notifications.test
class _TranslationsNotificationsTestZhTw implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '測試通知';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapZhTw implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} 提供的是估算營養資訊。準確度取決於您的輸入與食物的變異性。請將其作為參考而非唯一依據。若需個人化飲食建議，請諮詢專業人士。';
	@override late final _TranslationsDisclaimerSnapPortionSizeZhTw portionSize = _TranslationsDisclaimerSnapPortionSizeZhTw._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsZhTw preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsZhTw._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsZhTw ingredients = _TranslationsDisclaimerSnapIngredientsZhTw._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsZhTw databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsZhTw._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateZhTw implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '關於體重估算';
	@override String get description => '預測的體重變化是基於簡單的熱量攝入與支出模型的理論估算。此結果僅供激勵參考，並非您實際體重的預測。';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyZhTw calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyZhTw._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsZhTw biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsZhTw._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightZhTw waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightZhTw._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhTw professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhTw._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsZhTw implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get description => '這些指標可幫助您了解身體的能量需求並指引營養目標。';
	@override late final _TranslationsDisclaimerHealthMetricsBmrZhTw bmr = _TranslationsDisclaimerHealthMetricsBmrZhTw._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeZhTw tdee = _TranslationsDisclaimerHealthMetricsTdeeZhTw._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalZhTw dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalZhTw._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureZhTw implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '卡路里消耗估算';
	@override String get description => '當 Health Connect 資料不可用時，我們會使用您的基礎代謝率 (BMR) 與活動量 (TDEE)，並依照當日已過時間比例估算今天的消耗卡路里。';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedZhTw howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedZhTw._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhTw professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhTw._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionZhTw implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '智慧食物識別';
	@override String get description => '拍張照片，讓 AI 辨識您的餐點';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisZhTw implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 分析';
	@override String get description => '從您的描述即時取得營養資訊';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationZhTw implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect 整合';
	@override String get description => '連接 Health Connect 以獲得更完整的洞察';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesZhTw implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get underweight => '體重過輕';
	@override String get healthyWeight => '健康體重';
	@override String get overweight => '體重過重';
	@override String get obese => '肥胖';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesZhTw implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get underweight => '我們可以幫助您建立健康計畫，藉由高營養密度餐點達成均衡體重。';
	@override String get healthy => '做得很好！您處於健康範圍。我們會協助您維持活力與能量。';
	@override String overweight({required Object appLabel}) => '${appLabel} 會用 AI 化繁為簡的追蹤方式，幫助您舒適地達成目標。';
	@override String get obese => '我們會提供個人化的支援與可長期維持的策略，協助您的健康目標。';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingZhTw implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '自動熱量追蹤';
	@override String get description => '追蹤來自您健身應用的燃燒卡路里';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsZhTw implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '進展洞察';
	@override String get description => '取得更詳盡的健康趨勢分析';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationZhTw implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '無縫整合';
	@override String get description => '與您喜愛的健康應用同步資料';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessZhTw implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '你並非獨自一人';
	@override String get genericMessage => '研究顯示，一致性的紀錄是長期成功的首要預測因子。';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '對於 ${age} 歲的 ${gender} 想要 ${goal} 的人來說，一致的紀錄是成功的首要預測因子。';
	@override String closingMessage({required Object appLabel}) => '${appLabel} 讓它比手動操作簡單 10 倍。';
	@override String get getStartedTitle => '準備開始了嗎？';
	@override String get tipPhoto => '拍攝餐點照片以獲得即時分析';
	@override String get tipConsistency => '持續紀錄即可看到顯著進展';
	@override String get tipProgress => '每天追蹤進展以維持動力';
	@override String get button => '出發吧';
	@override String get defaultGender => '個人';
	@override String get defaultGoal => '更健康的你';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileZhTw implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '您的健康檔案';
	@override String bmiDescription({required Object bmi}) => '依據您的資料，您的 BMI 為 ${bmi}。';
	@override String get finalizeDescription => '讓我們完成您的個人檔案以客製化體驗。';
	@override String get goalGain => '增加';
	@override String get goalLose => '減少';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => '為了達成目標，您需要${direction}${diff}${unit}。';
	@override String get goalReached => '您已達到目標體重！我們會協助您維持。';
	@override String get button => '出發吧';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleZhTw implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '良好開始！';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => '您已邁出朝 ${goalText} 的第一步。既然您是 ${activityText}，${appLabel} 會調整目標以配合您的生活型態。';
	@override String get personalizedTargets => '個人化卡路里目標';
	@override String get aiMealDetection => 'AI 驅動的餐點偵測';
	@override String get macroBreakdowns => '詳細的三大營養素分解';
	@override String get button => '出發吧';
	@override String get defaultGoal => '您的目標';
	@override String get defaultActivity => '活躍';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightZhTw implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '減重';
	@override String get description => '透過熱量赤字來減重';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightZhTw implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '維持體重';
	@override String get description => '維持您目前的體重';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightZhTw implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '增重';
	@override String get description => '透過熱量盈餘來增加體重';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryZhTw implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '久坐少動';
	@override String get description => '幾乎沒有運動';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveZhTw implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '輕度活動';
	@override String get description => '每週輕度運動 1-3 天';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveZhTw implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '中度活動';
	@override String get description => '每週中度運動 3-5 天';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveZhTw implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '高強度活動';
	@override String get description => '每週劇烈運動 6-7 天';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveZhTw implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '非常劇烈活動';
	@override String get description => '非常劇烈的運動或體力工作';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableZhTw implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect 無法使用';
	@override String get description => '此裝置無法使用 Health Connect。請從 Play Store 安裝 Health Connect（Android 9+）或更新至 Android 14+。';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsZhTw implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '權限';
	@override String get description => '為了提供 Health Connect 整合，會請求以下權限：';
	@override String get granted => '已授權';
	@override String get notGranted => '未授權';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhTw caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhTw._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadZhTw nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadZhTw._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteZhTw nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteZhTw._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryZhTw implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '我們的故事';
	@override String content({required Object appLabel}) => '${appLabel} 的誕生來自一個簡單的挫折感：大多數卡路里追蹤應用要麼過於複雜、需要大量手動輸入、收取高額訂閱費，或在隱私上妥協。\n\n作為獨立開發者，我想做一個更簡單、更公平的產品——使用 AI 減少操作成本，保持速度與免費使用，並尊重您的健康資料。\n\n${appLabel} 是我希望存在的那款應用：不需要帳號、不進行追蹤、沒有廣告——只有清晰、實用的洞察與您的健康目標。';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyZhTw implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '您的隱私很重要';
	@override String get description => '隱私不是事後補充，而是設計原則。以下是實際上的做法：';
	@override String get noAccounts => '免帳號\n即可立即使用。無需註冊或身分資料。';
	@override String noTracking({required Object appLabel}) => '無行為追蹤\n${appLabel} 不會監控您的活動、建立使用者檔案，或跨應用與網站追蹤您。';
	@override String noAds({required Object appLabel}) => '無廣告設計\n${appLabel} 的設計不依賴廣告或以資料為驅動的獲利方式。';
	@override String get noDataSelling => '不販售資料\n您的健康資料絕不會出售或分享給第三方。';
	@override String get localStorage => '以裝置為優先的儲存\n您的資料保留在您的裝置上。';
	@override String get privacyPolicy => '隱私政策';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperZhTw implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '由單人開發者打造';
	@override String description({required Object appLabel}) => '${appLabel} 由一位獨立開發者建立與維護，致力於打造冷靜且尊重隱私的健康軟體。\n\n回饋會由我親自閱讀，並幫助塑造應用的未來方向。';
	@override String get website => '網站';
	@override String get email => '電子郵件';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackZhTw implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '喜歡 ${appLabel} 嗎？';
	@override String description({required Object appLabel}) => '您的回饋能讓 ${appLabel} 對每個人更好。';
	@override String get rateApp => '在 Play Store 評分';
	@override String get sendFeedback => '傳送回饋';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeZhTw implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '份量大小';
	@override String get description => '估算的準確性很大程度取決於您對份量的正確判斷。';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsZhTw implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '烹調方式';
	@override String description({required Object appLabel}) => '烹調方式會顯著改變食物的營養成分。${appLabel} 的估算可能無法涵蓋所有變化。';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsZhTw implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '成分';
	@override String get description => '成分複雜且含多種隱藏食材的菜餚可能降低估算準確度。';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsZhTw implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '資料庫限制';
	@override String description({required Object appLabel}) => '${appLabel} 的食物資料庫相當完整，但可能不包含每一種食材或變體。';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyZhTw implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '卡路里準確性';
	@override String get description => '此估算的準確性取決於您記錄的攝取與消耗熱量。若記錄不準確，估算也會不準確。';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsZhTw implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '生理因素';
	@override String description({required Object appLabel}) => '實際的增減重受新陳代謝、荷爾蒙、睡眠、壓力、體內水分等個人因素影響，這些是 ${appLabel} 無法測量的。';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightZhTw implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '水分與體重波動';
	@override String get description => '每日體重會因水分滯留、消化與時間點而有顯著波動。估算不會考量這些日常變化。';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhTw implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '專業指導';
	@override String get description => '請勿以此估算作為醫療決策依據。若需個人化體重管理建議，請務必諮詢醫療或註冊營養師。';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrZhTw implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => '基礎代謝率 (BMR) 是您在靜止狀態下為維持呼吸與循環等基本生理功能所消耗的卡路里。BMR 取決於年齡、性別、身高與體重。較高的 BMR 意味著身體在靜息時燃燒更多卡路里，通常與較多肌肉量、較年輕或為男性相關；較低的 BMR 通常表示肌肉量較少、年齡較大或為女性。';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeZhTw implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => '每日總能量消耗 (TDEE) 是您每天消耗的總卡路里，包括 BMR 以及運動與日常活動所消耗的熱量。TDEE 取決於您的 BMR 與活動量。較高的 TDEE 意味著您整體燃燒更多卡路里，通常因活動量較大或 BMR 較高；較低的 TDEE 則表示日常活動較少或 BMR 較低。';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalZhTw implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '每日目標';
	@override String get description => '每日目標是根據您的 TDEE 與體重目標所建議的每日卡路里攝取量。若目標是減重，則攝取少於 TDEE；若維持體重，則接近 TDEE；若增重，則攝取高於 TDEE。這有助於您以健康速度達成預期的體重變化。';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedZhTw implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '估算方式';
	@override String get description => '我們會計算您的 TDEE（根據個人檔案），並乘以當日已過的比例（小時 + 分鐘）/ 24，以估算目前為止燃燒的卡路里。';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhTw implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '專業指導';
	@override String get description => '請勿以此估算作為醫療決策。若需個人化體重管理建議，務必諮詢醫療或註冊營養師。';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhTw implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '讀取總消耗卡路里';
	@override String get description => '允許應用程式從 Health Connect 讀取您的總消耗卡路里。';
	@override String get usage => '此權限用來在應用中顯示您每日的卡路里消耗，幫助您了解全天的總能量支出。';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadZhTw implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '讀取營養資料';
	@override String get description => '允許應用從 Health Connect 讀取營養資料。';
	@override String get usage => '此權限讓應用能讀取其他已連接至 Health Connect 的應用所紀錄的營養資訊，提供更完整的營養檢視。';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteZhTw implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '寫入營養資料';
	@override String get description => '允許應用將營養資料寫入 Health Connect。';
	@override String get usage => '此權限讓應用能同步您記錄的餐點到 Health Connect，讓您使用的其他健康與健身應用也能取得您的營養資料。';
}

/// The flat map containing all translations for locale <zh-TW>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsZhTw {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => '繁體中文（台灣）',
			'flag' => '🇹🇼',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => '您發出太多請求。請稍後再試。',
			'errors.networkError' => '網路錯誤。請檢查您的網路連線。',
			'errors.unknownError' => '發生錯誤。請稍後再試。',
			'errors.loadingProfileData' => '載入個人資料資料時發生錯誤',
			'errors.somethingWentWrong' => '發生問題。',
			'errors.retry' => '重試',
			'onboarding.welcome' => ({required Object appLabel}) => '歡迎使用 ${appLabel}',
			'onboarding.subtitle' => '由 AI 驅動的個人營養夥伴',
			'onboarding.getStarted' => '開始使用',
			'onboarding.features.foodRecognition.title' => '智慧食物識別',
			'onboarding.features.foodRecognition.description' => '拍張照片，讓 AI 辨識您的餐點',
			'onboarding.features.aiAnalysis.title' => 'AI 分析',
			'onboarding.features.aiAnalysis.description' => '從您的描述即時取得營養資訊',
			'onboarding.features.healthIntegration.title' => 'Health Connect 整合',
			'onboarding.features.healthIntegration.description' => '連接 Health Connect 以獲得更完整的洞察',
			'onboarding.gender.title' => '您的性別是？',
			'onboarding.gender.description' => '性別有助於我們更準確地計算您的基礎代謝率 (BMR)。',
			'onboarding.gender.next' => '下一步',
			'onboarding.height.title' => '您的身高是多少？',
			'onboarding.height.description' => '您的身高可幫助我們準確計算 BMI 與能量需求。',
			'onboarding.height.metric' => '公制',
			'onboarding.height.imperial' => '英制',
			'onboarding.height.next' => '下一步',
			'onboarding.weight.currentTitle' => '您目前的體重是多少？',
			'onboarding.weight.currentDescription' => '目前體重對於個人化每日目標非常重要。',
			'onboarding.weight.targetTitle' => '您的目標體重是多少？',
			'onboarding.weight.targetDescription' => '設定目標體重可幫助我們規劃您的長期方案。',
			'onboarding.weight.metric' => '公制',
			'onboarding.weight.imperial' => '英制',
			'onboarding.weight.next' => '下一步',
			'onboarding.age.title' => '您的生日是什麼時候？',
			'onboarding.age.description' => '年齡有助於我們準確計算您的熱量需求。',
			'onboarding.age.next' => '下一步',
			'onboarding.bmiScale.underweight' => '偏低',
			'onboarding.bmiScale.healthy' => '健康',
			'onboarding.bmiScale.overweight' => '過重',
			'onboarding.bmiScale.obese' => '肥胖',
			'onboarding.bmiScale.categories.underweight' => '體重過輕',
			'onboarding.bmiScale.categories.healthyWeight' => '健康體重',
			'onboarding.bmiScale.categories.overweight' => '體重過重',
			'onboarding.bmiScale.categories.obese' => '肥胖',
			'onboarding.bmiScale.messages.underweight' => '我們可以幫助您建立健康計畫，藉由高營養密度餐點達成均衡體重。',
			'onboarding.bmiScale.messages.healthy' => '做得很好！您處於健康範圍。我們會協助您維持活力與能量。',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} 會用 AI 化繁為簡的追蹤方式，幫助您舒適地達成目標。',
			'onboarding.bmiScale.messages.obese' => '我們會提供個人化的支援與可長期維持的策略，協助您的健康目標。',
			'onboarding.weightGoal.title' => '您的目標是什麼？',
			'onboarding.weightGoal.description' => '選擇最能描述您想達成的目標',
			'onboarding.activityLevel.title' => '您的活動量如何？',
			'onboarding.activityLevel.description' => '這有助於我們更精確地計算您的每日熱量需求',
			'onboarding.healthConnect.title' => '連接 Health Connect',
			'onboarding.healthConnect.description' => '同步健康資料以獲得更完整的洞察與自動熱量追蹤',
			'onboarding.healthConnect.automaticTracking.title' => '自動熱量追蹤',
			'onboarding.healthConnect.automaticTracking.description' => '追蹤來自您健身應用的燃燒卡路里',
			'onboarding.healthConnect.progressInsights.title' => '進展洞察',
			'onboarding.healthConnect.progressInsights.description' => '取得更詳盡的健康趨勢分析',
			'onboarding.healthConnect.seamlessIntegration.title' => '無縫整合',
			'onboarding.healthConnect.seamlessIntegration.description' => '與您喜愛的健康應用同步資料',
			'onboarding.healthConnect.connected' => '已連接 Health Connect',
			'onboarding.healthConnect.notConnected' => '未連接 Health Connect',
			'onboarding.healthConnect.setup' => '設定 Health Connect',
			'onboarding.healthConnect.skipForNow' => '暫時跳過',
			'onboarding.healthConnect.statusConnected' => 'Health Connect 已連線。',
			'onboarding.healthConnect.statusSuccess' => '已成功連接 Health Connect！',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => '權限被拒。請在手機設定中為 ${appLabel} 啟用 Health Connect 權限。',
			'onboarding.healthConnect.statusError' => ({required Object error}) => '設定 Health Connect 時發生錯誤：${error}',
			'onboarding.reinforcement.trackingSuccess.title' => '你並非獨自一人',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => '研究顯示，一致性的紀錄是長期成功的首要預測因子。',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '對於 ${age} 歲的 ${gender} 想要 ${goal} 的人來說，一致的紀錄是成功的首要預測因子。',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} 讓它比手動操作簡單 10 倍。',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => '準備開始了嗎？',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => '拍攝餐點照片以獲得即時分析',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => '持續紀錄即可看到顯著進展',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => '每天追蹤進展以維持動力',
			'onboarding.reinforcement.trackingSuccess.button' => '出發吧',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => '個人',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => '更健康的你',
			'onboarding.reinforcement.healthProfile.title' => '您的健康檔案',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => '依據您的資料，您的 BMI 為 ${bmi}。',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => '讓我們完成您的個人檔案以客製化體驗。',
			'onboarding.reinforcement.healthProfile.goalGain' => '增加',
			'onboarding.reinforcement.healthProfile.goalLose' => '減少',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => '為了達成目標，您需要${direction}${diff}${unit}。',
			'onboarding.reinforcement.healthProfile.goalReached' => '您已達到目標體重！我們會協助您維持。',
			'onboarding.reinforcement.healthProfile.button' => '出發吧',
			'onboarding.reinforcement.goalLifestyle.title' => '良好開始！',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => '您已邁出朝 ${goalText} 的第一步。既然您是 ${activityText}，${appLabel} 會調整目標以配合您的生活型態。',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => '個人化卡路里目標',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI 驅動的餐點偵測',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => '詳細的三大營養素分解',
			'onboarding.reinforcement.goalLifestyle.button' => '出發吧',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => '您的目標',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => '活躍',
			'tabs.dashboard' => '儀表板',
			'tabs.history' => '記錄歷史',
			'home.aiSummary.title' => '您的 AI 摘要',
			'home.aiSummary.logMore' => '接下來幾天多紀錄幾餐，讓 AI 為您提供個人化洞察。',
			'home.aiSummary.loading' => '載入摘要中…',
			'home.aiSummary.mealCount' => ({required Object count}) => '已記錄 ${count} 餐',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => '均衡分數 ${score}',
			'home.aiSummary.topFoods' => '常見食物',
			'home.aiSummary.trendUp' => '熱量上升中',
			'home.aiSummary.trendDown' => '熱量下降中',
			'home.aiSummary.trendSteady' => '熱量穩定',
			'home.aiSummary.generatedAt' => ({required Object time}) => '更新於 ${time}',
			'home.dailyGoal.title' => '設定您的每日目標',
			'home.dailyGoal.titleSet' => '您的每日目標',
			'home.dailyGoal.description' => '準備好展開健康旅程了嗎？在下方設定您的每日卡路里目標以啟動進程。',
			'home.dailyGoal.descriptionSet' => '您的航向已設定！這是指引您每日的卡路里目標。',
			'home.dailyGoal.yourGoal' => '您的目標',
			'home.dailyGoal.goal' => '目標',
			'home.dailyGoal.dailyCalories' => '每日卡路里 (kcal)',
			'home.dailyGoal.setGoal' => '設定目標',
			'home.dailyGoal.intake' => '攝取',
			'home.dailyGoal.burned' => '消耗',
			'home.dailyGoal.weightImpact' => '體重影響',
			'home.dailyGoal.estLoss' => '預估減少',
			'home.dailyGoal.estGain' => '預估增加',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => '每日摘要',
			'home.dailySummary.calories' => '卡路里',
			'home.dailySummary.carbs' => '碳水化合物',
			'home.dailySummary.protein' => '蛋白質',
			'home.dailySummary.fat' => '脂肪',
			'home.dailySummary.fiber' => '纖維',
			'home.dailySummary.grams' => '公克',
			'home.dailySummary.chartAccessibilityLabel' => '三大營養素圖表',
			'home.intakeProgress.title' => '今日三大營養素分配',
			'home.intakeProgress.target' => '目標',
			'home.intakeProgress.current' => '目前',
			'home.intakeHistory.title' => '7 天三大營養素歷史',
			'home.intakeHistory.trendTitle' => '今日趨勢',
			'home.intakeHistory.peakHour' => ({required Object hour}) => '高峰：${hour}:00',
			'home.intakeHistory.noHistoryYet' => '還沒有紀錄',
			'home.intakeHistory.startLogging' => '開始記錄餐點以在此查看\n7 天三大營養素趨勢',
			'home.mealLog.title' => '已記錄的餐點',
			'home.mealLog.emptyMessage' => '拍張您剛吃的餐點照片，這裡就會顯示。',
			'home.mealLog.noMealsToday' => '今天尚未記錄餐點',
			'home.mealLog.seeAllMeals' => '查看所有餐點',
			'home.mealDescription.title' => 'AI 快速新增',
			'home.mealDescription.description' => '描述您的餐點，讓 AI 幫您填入細節。',
			'home.mealDescription.hint' => '例如：早餐我吃了一大碗燕麥片，配半根香蕉和一匙乳清蛋白…',
			'home.mealDescription.analyzeMeal' => '分析餐點',
			'home.favoriteMeals.title' => '我的最愛餐點',
			'home.favoriteMeals.description' => '快速新增您常吃的餐點。',
			'home.favoriteMeals.noFavorites' => '目前沒有最愛餐點。',
			'home.favoriteMeals.addFavoriteHint' => '點選餐點上的星號即可標為最愛。',
			'home.favoriteMeals.seeAll' => '查看全部',
			'home.favoriteMeals.add' => '新增',
			'home.mealSnap.title' => '拍照並記錄餐點',
			'home.mealSnap.description' => '使用相機拍攝您的食物，讓 AI 分析。',
			'home.mealSnap.openCamera' => '開啟相機',
			'home.mealSnap.gallery' => '相簿',
			'home.mealSnap.compressingPhoto' => '正在優化照片…',
			'home.mealSnap.uploadingPhoto' => '正在上傳照片…',
			'home.connectHealth.title' => '與 Health Connect 同步',
			'home.connectHealth.description' => '將您的營養資料與 Health Connect 同步',
			'home.connectHealth.install' => '安裝',
			'home.connectHealth.connect' => '連接',
			'history.noMeals' => '尚未記錄任何餐點',
			'history.emptyMessage' => '拍張您剛吃的餐點照片，這裡就會顯示。',
			'history.today' => '今天',
			'history.yesterday' => '昨天',
			'meal.ohNo' => '糟了！',
			'meal.delete' => '刪除',
			'meal.editMeal' => '編輯餐點',
			'meal.addMeal' => '新增餐點',
			'meal.saveMeal' => '儲存餐點',
			'meal.save' => '儲存',
			'meal.mealName' => '餐點名稱',
			'meal.mealNameHint' => '例如：炒蛋配吐司',
			'meal.mealQuantity' => '餐點數量/份量',
			'meal.mealQuantityHint' => '例如：1 碗、2 片',
			'meal.timeOfMeal' => '用餐時間',
			'meal.timeOfMealHint' => '選擇您用餐的時間',
			'meal.mealType' => '餐點類型',
			'meal.nutrition.calories' => '卡路里',
			'meal.nutrition.carbs' => '碳水 (g)',
			'meal.nutrition.protein' => '蛋白質 (g)',
			'meal.nutrition.fat' => '脂肪 (g)',
			'meal.nutrition.fiber' => '纖維 (g)',
			'meal.deleteConfirmation.title' => '刪除餐點',
			'meal.deleteConfirmation.message' => '確定要刪除此餐點紀錄嗎？',
			'meal.deleteConfirmation.cancel' => '取消',
			'meal.deleteConfirmation.delete' => '刪除',
			'meal.addedToLog' => '餐點已新增到您的記錄！',
			'meal.couldNotAdd' => ({required Object error}) => '無法新增餐點：${error}',
			'meal.savedSuccessfully' => '餐點新增成功！',
			'meal.updatedSuccessfully' => '餐點更新成功！',
			'meal.errorSaving' => ({required Object error}) => '儲存餐點時發生錯誤：${error}',
			'meal.removedFromFavorites' => '已從最愛移除！',
			'meal.savedAsFavorite' => '餐點已儲存為最愛！',
			'meal.unfavorite' => '取消最愛',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => '無法更新最愛：${error}',
			'meal.feedbackThanks' => '感謝您的回饋！',
			'meal.reanalysisUpdated' => '已根據您的回饋更新餐點分析。',
			'meal.failedToProcess' => ({required Object error}) => '處理失敗：${error}',
			'meal.failedToProcessImage' => ({required Object error}) => '處理影像失敗：${error}',
			'meal.errorCompressingImage' => ({required Object error}) => '壓縮影像時發生錯誤：${error}',
			'meal.failedToSave' => '儲存資料失敗。請再試一次。',
			'meal.skip' => '跳過',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => '問題 ${current} / ${total}',
			'meal.questionFlow.noQuestionsAvailable' => '沒有可用問題',
			'meal.questionFlow.next' => '下一步',
			'meal.questionFlow.continueLabel' => '繼續',
			'meal.analysis.title' => '正在分析您的餐點',
			'meal.analysis.stepStarted' => '準備中…',
			'meal.analysis.stepDecomposition' => '理解您的餐點…',
			'meal.analysis.stepIngredients' => '比對成分與營養資料…',
			'meal.analysis.stepUncertainty' => '確認可信度…',
			'meal.analysis.stepMealTypeQuestion' => '快完成了…',
			'meal.analysis.stepResult' => '完成結果…',
			'meal.analysis.stepError' => '發生錯誤',
			'meal.analysis.stepDefault' => '分析您的餐點…',
			'meal.analysis.progressUnderstand' => '理解餐點內容',
			'meal.analysis.progressMatch' => '查找成分營養資料',
			'meal.analysis.progressCheck' => '檢查份量與可信度',
			'meal.analysis.progressMealType' => '選擇餐點類型',
			'meal.analysis.progressFinish' => '計算卡路里與三大營養素',
			'meal.analysis.detectedIngredientHeading' => '我們辨識到的成分',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '還有 ${count} 項',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '偵測到 ${count} 種成分',
			'meal.analysis.ingredientsPending' => '掃描成分中…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '「${text}」',
			'meal.analysis.offlineTip0' => '提示：持續紀錄比追求完美更重要——規律的紀錄能揭露重要模式。',
			'meal.analysis.offlineTip1' => '提示：拍照時使用自然光與俯拍有助於估算份量。',
			'meal.analysis.offlineTip2' => '提示：記得提到飲料、醬汁與烹調用油——這些通常會額外增加熱量。',
			'meal.analysis.offlineTip3' => '提示：簡單的份量說明（1 碗、大杯咖啡）會讓估算更準確。',
			'meal.analysis.offlineTip4' => '提示：餐後紀錄仍能建立習慣；不必追求完美。',
			'meal.analysis.offlineTip5' => '提示：當烹調方式差異會顯著影響熱量時，請說明烹調方式（油炸 vs 烘烤）。',
			'meal.feedback.title' => '哪裡看起來不對？',
			'meal.feedback.subtitle' => '請選擇一項或多項問題，幫助我們改進分析結果。',
			'meal.feedback.tellUsMore' => '告訴我們更多',
			'meal.feedback.describeIncorrect' => '描述不正確的地方',
			'meal.feedback.submit' => '送出',
			'meal.feedback.issueFoodIdentification' => '食物識別錯誤',
			'meal.feedback.issuePortionSize' => '份量不正確',
			'meal.feedback.issueCalorieDistribution' => '卡路里分配問題',
			'meal.feedback.issueMacrosWrong' => '三大營養素錯誤',
			'meal.feedback.issueMissingItems' => '遺漏項目',
			'meal.feedback.issueExtraItems' => '多出項目',
			'meal.feedback.issueOther' => '其他',
			'favorites.title' => '我的最愛',
			'favorites.empty' => '目前沒有最愛餐點。',
			'favorites.searchPlaceholder' => '搜尋最愛餐點',
			'favorites.searchEmptyTitle' => '沒有符合搜尋條件的最愛',
			'favorites.searchEmptySubtitle' => '請嘗試不同的餐名、份量或餐點類型。',
			'favorites.sortLabel' => '排序最愛',
			'favorites.undo' => '復原',
			'favorites.removed' => ({required Object name}) => '已從最愛移除 ${name}',
			'favorites.sortOptions.recent' => '最近',
			'favorites.sortOptions.calories' => '卡路里',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => '個人檔案',
			'profile.noProfileData' => '找不到個人檔案資料',
			'profile.yourProfile' => '您的個人檔案',
			'profile.viewAndManage' => '檢視並管理您的健康資訊',
			'profile.sections.profile' => '個人檔案',
			'profile.sections.basicInformation' => '基本資料',
			'profile.sections.goalsAndActivity' => '目標與活動',
			'profile.sections.calculatedValues' => '計算值',
			'profile.gender' => '性別',
			'profile.height' => '身高',
			'profile.weight' => '體重',
			'profile.age' => '年齡',
			'profile.weightGoal' => '體重目標',
			'profile.targetWeight' => '目標體重',
			'profile.activityLevel' => '活動量',
			'profile.healthMetrics' => '健康指標',
			'profile.notSet' => '未設定',
			'profile.years' => '歲',
			'profile.updatedSuccessfully' => '個人檔案更新成功！',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => '每日目標',
			'profile.calculatedValues.calPerDay' => 'cal/天',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => '健康分數',
			'healthScore.whyThisScore' => '為何顯示此分數？',
			'healthScore.note' => '此分數為根據辨識成分與營養密度的 AI 估算。若需飲食建議，請務必諮詢專業人士。',
			'healthScore.unhealthy' => '不健康',
			'healthScore.healthy' => '健康',
			'healthScore.neutral' => '中性',
			'editProfile.title' => '編輯個人檔案',
			'editProfile.sections.personalInformation' => '個人資訊',
			'editProfile.sections.physicalMeasurements' => '身體測量',
			'editProfile.sections.goalsAndActivity' => '目標與活動',
			'editProfile.gender' => '性別',
			'editProfile.dateOfBirth' => '生日',
			'editProfile.height' => '身高',
			'editProfile.weight' => '體重',
			'editProfile.weightGoal' => '體重目標',
			'editProfile.activityLevel' => '活動量',
			'editProfile.metric' => '公制',
			'editProfile.imperial' => '英制',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => '公制 (cm)',
			'editProfile.imperialFtIn' => '英制 (ft/in)',
			'editProfile.metricKg' => '公制 (kg)',
			'editProfile.imperialLbs' => '英制 (lbs)',
			'editProfile.genders.male' => '男性',
			'editProfile.genders.female' => '女性',
			'editProfile.genders.other' => '其他',
			'editProfile.weightGoals.loseWeight.name' => '減重',
			'editProfile.weightGoals.loseWeight.description' => '透過熱量赤字來減重',
			'editProfile.weightGoals.maintainWeight.name' => '維持體重',
			'editProfile.weightGoals.maintainWeight.description' => '維持您目前的體重',
			'editProfile.weightGoals.gainWeight.name' => '增重',
			'editProfile.weightGoals.gainWeight.description' => '透過熱量盈餘來增加體重',
			'editProfile.activityLevels.sedentary.name' => '久坐少動',
			'editProfile.activityLevels.sedentary.description' => '幾乎沒有運動',
			'editProfile.activityLevels.lightlyActive.name' => '輕度活動',
			'editProfile.activityLevels.lightlyActive.description' => '每週輕度運動 1-3 天',
			'editProfile.activityLevels.moderatelyActive.name' => '中度活動',
			'editProfile.activityLevels.moderatelyActive.description' => '每週中度運動 3-5 天',
			'editProfile.activityLevels.veryActive.name' => '高強度活動',
			'editProfile.activityLevels.veryActive.description' => '每週劇烈運動 6-7 天',
			'editProfile.activityLevels.extremelyActive.name' => '非常劇烈活動',
			'editProfile.activityLevels.extremelyActive.description' => '非常劇烈的運動或體力工作',
			'settings.title' => '設定',
			'settings.sections.profile' => '個人檔案',
			'settings.sections.localization' => '在地化',
			'settings.sections.notifications' => '通知',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.supportAndLegal' => '支援與法律',
			'settings.sections.about' => '關於',
			'settings.sections.dangerZone' => '危險區',
			'settings.sections.developer' => '開發者',
			'settings.editProfile.title' => '編輯個人檔案',
			'settings.editProfile.subtitle' => '更新您的個人資訊',
			'settings.language.title' => '語言',
			'settings.language.subtitle' => '選擇您偏好的語言',
			'settings.language.searchHint' => '搜尋語言…',
			'settings.language.noResults' => '找不到結果',
			'settings.heightUnit.title' => '身高單位',
			'settings.weightUnit.title' => '體重單位',
			'settings.mealReminders.title' => '用餐提醒',
			'settings.mealReminders.subtitle' => '透過定時提醒保持紀錄習慣',
			'settings.theme.title' => '主題',
			'settings.theme.light' => '淺色',
			'settings.theme.dark' => '深色',
			'settings.theme.system' => '系統',
			'settings.sendFeedback.title' => '傳送回饋',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '幫助我們改進 ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} App 回饋',
			'settings.sendFeedback.emailBodyPrefix' => '請在下方提供您的回饋：',
			'settings.sendFeedback.appVersion' => 'App 版本',
			'settings.sendFeedback.device' => '裝置',
			'settings.sendFeedback.osVersion' => '作業系統版本',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => '匯出餐點歷史',
			'settings.exportMealHistory.subtitle' => '分享已記錄餐點的 CSV',
			'settings.exportMealHistory.shareText' => '您的 Calorify 餐點歷史匯出檔',
			'settings.exportMealHistory.failed' => ({required Object error}) => '無法匯出餐點歷史：${error}',
			'settings.clearAllData.title' => '清除所有資料',
			'settings.clearAllData.subtitle' => '不可逆地刪除您的所有資訊',
			'settings.clearAllData.confirmationTitle' => '清除所有資料？',
			'settings.clearAllData.confirmationMessage' => '此動作無法復原。您所有記錄的餐點、最愛與個人設定將被永久刪除。',
			'settings.clearAllData.cancel' => '取消',
			'settings.clearAllData.clearEverything' => '全部清除',
			'settings.debugOptions.title' => '除錯選項',
			'settings.developerModeEnabled' => '已啟用開發者模式！',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => '檢視並管理權限',
			'settings.healthConnect.unavailable.title' => 'Health Connect 無法使用',
			'settings.healthConnect.unavailable.description' => '此裝置無法使用 Health Connect。請從 Play Store 安裝 Health Connect（Android 9+）或更新至 Android 14+。',
			'settings.healthConnect.permissions.title' => '權限',
			'settings.healthConnect.permissions.description' => '為了提供 Health Connect 整合，會請求以下權限：',
			'settings.healthConnect.permissions.granted' => '已授權',
			'settings.healthConnect.permissions.notGranted' => '未授權',
			'settings.healthConnect.permissions.caloriesBurned.title' => '讀取總消耗卡路里',
			'settings.healthConnect.permissions.caloriesBurned.description' => '允許應用程式從 Health Connect 讀取您的總消耗卡路里。',
			'settings.healthConnect.permissions.caloriesBurned.usage' => '此權限用來在應用中顯示您每日的卡路里消耗，幫助您了解全天的總能量支出。',
			'settings.healthConnect.permissions.nutritionRead.title' => '讀取營養資料',
			'settings.healthConnect.permissions.nutritionRead.description' => '允許應用從 Health Connect 讀取營養資料。',
			'settings.healthConnect.permissions.nutritionRead.usage' => '此權限讓應用能讀取其他已連接至 Health Connect 的應用所紀錄的營養資訊，提供更完整的營養檢視。',
			'settings.healthConnect.permissions.nutritionWrite.title' => '寫入營養資料',
			'settings.healthConnect.permissions.nutritionWrite.description' => '允許應用將營養資料寫入 Health Connect。',
			'settings.healthConnect.permissions.nutritionWrite.usage' => '此權限讓應用能同步您記錄的餐點到 Health Connect，讓您使用的其他健康與健身應用也能取得您的營養資料。',
			'settings.healthConnect.managePermissions' => '管理權限',
			'settings.healthConnect.openSettings' => '開啟 Health Connect 設定',
			'settings.healthConnect.requestPermissions' => '請求權限',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => '權限請求已取消或失敗。請再試一次或在 Health Connect 設定中手動授權。',
			'settings.healthConnect.permissionRequestFailed' => '無法請求權限。請再試一次或在 Health Connect 設定中手動授權。',
			'settings.healthConnect.requestingPermissions' => '請求中...',
			'settings.about.title' => '關於',
			'settings.about.tagline' => '快速、免費且以隱私為先的卡路里意識工具',
			'settings.about.ourStory.title' => '我們的故事',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} 的誕生來自一個簡單的挫折感：大多數卡路里追蹤應用要麼過於複雜、需要大量手動輸入、收取高額訂閱費，或在隱私上妥協。\n\n作為獨立開發者，我想做一個更簡單、更公平的產品——使用 AI 減少操作成本，保持速度與免費使用，並尊重您的健康資料。\n\n${appLabel} 是我希望存在的那款應用：不需要帳號、不進行追蹤、沒有廣告——只有清晰、實用的洞察與您的健康目標。',
			'settings.about.privacy.title' => '您的隱私很重要',
			'settings.about.privacy.description' => '隱私不是事後補充，而是設計原則。以下是實際上的做法：',
			'settings.about.privacy.noAccounts' => '免帳號\n即可立即使用。無需註冊或身分資料。',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => '無行為追蹤\n${appLabel} 不會監控您的活動、建立使用者檔案，或跨應用與網站追蹤您。',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => '無廣告設計\n${appLabel} 的設計不依賴廣告或以資料為驅動的獲利方式。',
			'settings.about.privacy.noDataSelling' => '不販售資料\n您的健康資料絕不會出售或分享給第三方。',
			'settings.about.privacy.localStorage' => '以裝置為優先的儲存\n您的資料保留在您的裝置上。',
			'settings.about.privacy.privacyPolicy' => '隱私政策',
			'settings.about.developer.title' => '由單人開發者打造',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} 由一位獨立開發者建立與維護，致力於打造冷靜且尊重隱私的健康軟體。\n\n回饋會由我親自閱讀，並幫助塑造應用的未來方向。',
			'settings.about.developer.website' => '網站',
			'settings.about.developer.email' => '電子郵件',
			'settings.about.feedback.title' => ({required Object appLabel}) => '喜歡 ${appLabel} 嗎？',
			'settings.about.feedback.description' => ({required Object appLabel}) => '您的回饋能讓 ${appLabel} 對每個人更好。',
			'settings.about.feedback.rateApp' => '在 Play Store 評分',
			'settings.about.feedback.sendFeedback' => '傳送回饋',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => '建置 ${buildNumber}',
			'reminders.title' => '用提醒幫助您保持進度',
			'reminders.description' => '收到溫和的提醒以記錄餐點並維持營養紀律',
			'reminders.notificationsEnabled' => '已啟用通知',
			'reminders.notificationsDisabled' => '已停用通知',
			'reminders.enabledSubtitle' => '您會收到用餐提醒',
			'reminders.disabledSubtitle' => '請啟用通知以接收用餐提醒',
			'reminders.mealReminders' => '用餐提醒',
			'reminders.breakfast' => '早餐',
			'reminders.lunch' => '午餐',
			'reminders.dinner' => '晚餐',
			'reminders.snack' => '點心',
			'reminders.unknown' => '未知',
			'reminders.change' => '更改',
			'reminders.enableNotifications' => '啟用通知',
			'reminders.skipForNow' => '暫時跳過',
			'reminders.saveChanges' => '儲存變更',
			'reminders.enabledSuccessfully' => '通知已成功啟用！',
			'reminders.permissionDenied' => '通知權限被拒絕',
			'reminders.errorEnabling' => ({required Object error}) => '啟用通知時發生錯誤：${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => '完成設定時發生錯誤：${error}',
			'notifications.breakfast.title' => '該吃早餐囉！ 🍳',
			'notifications.breakfast.body' => '別忘了記錄您的早餐',
			'notifications.lunch.title' => '午餐時間！ 🥗',
			'notifications.lunch.body' => '該記錄午餐了',
			'notifications.dinner.title' => '晚餐時間！ 🍽️',
			'notifications.dinner.body' => '別忘了記錄您的晚餐',
			'notifications.snack.title' => '點心時間！ 🍎',
			'notifications.snack.body' => '該吃個健康點心了',
			'notifications.test.title' => '測試通知',
			'login.title' => '登入',
			'login.signInWithGoogle' => '使用 Google 登入',
			'login.signInFailed' => 'Google 登入失敗或已取消。',
			'disclaimer.pleaseNote' => '請注意',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} 提供的是估算營養資訊。準確度取決於您的輸入與食物的變異性。請將其作為參考而非唯一依據。若需個人化飲食建議，請諮詢專業人士。',
			'disclaimer.snap.portionSize.title' => '份量大小',
			'disclaimer.snap.portionSize.description' => '估算的準確性很大程度取決於您對份量的正確判斷。',
			'disclaimer.snap.preparationMethods.title' => '烹調方式',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => '烹調方式會顯著改變食物的營養成分。${appLabel} 的估算可能無法涵蓋所有變化。',
			'disclaimer.snap.ingredients.title' => '成分',
			'disclaimer.snap.ingredients.description' => '成分複雜且含多種隱藏食材的菜餚可能降低估算準確度。',
			'disclaimer.snap.databaseLimitations.title' => '資料庫限制',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} 的食物資料庫相當完整，但可能不包含每一種食材或變體。',
			'disclaimer.weightEstimate.title' => '關於體重估算',
			'disclaimer.weightEstimate.description' => '預測的體重變化是基於簡單的熱量攝入與支出模型的理論估算。此結果僅供激勵參考，並非您實際體重的預測。',
			'disclaimer.weightEstimate.calorieAccuracy.title' => '卡路里準確性',
			'disclaimer.weightEstimate.calorieAccuracy.description' => '此估算的準確性取決於您記錄的攝取與消耗熱量。若記錄不準確，估算也會不準確。',
			'disclaimer.weightEstimate.biologicalFactors.title' => '生理因素',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => '實際的增減重受新陳代謝、荷爾蒙、睡眠、壓力、體內水分等個人因素影響，這些是 ${appLabel} 無法測量的。',
			'disclaimer.weightEstimate.waterWeight.title' => '水分與體重波動',
			'disclaimer.weightEstimate.waterWeight.description' => '每日體重會因水分滯留、消化與時間點而有顯著波動。估算不會考量這些日常變化。',
			'disclaimer.weightEstimate.professionalGuidance.title' => '專業指導',
			'disclaimer.weightEstimate.professionalGuidance.description' => '請勿以此估算作為醫療決策依據。若需個人化體重管理建議，請務必諮詢醫療或註冊營養師。',
			'disclaimer.healthMetrics.description' => '這些指標可幫助您了解身體的能量需求並指引營養目標。',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => '基礎代謝率 (BMR) 是您在靜止狀態下為維持呼吸與循環等基本生理功能所消耗的卡路里。BMR 取決於年齡、性別、身高與體重。較高的 BMR 意味著身體在靜息時燃燒更多卡路里，通常與較多肌肉量、較年輕或為男性相關；較低的 BMR 通常表示肌肉量較少、年齡較大或為女性。',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => '每日總能量消耗 (TDEE) 是您每天消耗的總卡路里，包括 BMR 以及運動與日常活動所消耗的熱量。TDEE 取決於您的 BMR 與活動量。較高的 TDEE 意味著您整體燃燒更多卡路里，通常因活動量較大或 BMR 較高；較低的 TDEE 則表示日常活動較少或 BMR 較低。',
			'disclaimer.healthMetrics.dailyGoal.title' => '每日目標',
			'disclaimer.healthMetrics.dailyGoal.description' => '每日目標是根據您的 TDEE 與體重目標所建議的每日卡路里攝取量。若目標是減重，則攝取少於 TDEE；若維持體重，則接近 TDEE；若增重，則攝取高於 TDEE。這有助於您以健康速度達成預期的體重變化。',
			'disclaimer.calorieExpenditure.title' => '卡路里消耗估算',
			'disclaimer.calorieExpenditure.description' => '當 Health Connect 資料不可用時，我們會使用您的基礎代謝率 (BMR) 與活動量 (TDEE)，並依照當日已過時間比例估算今天的消耗卡路里。',
			'disclaimer.calorieExpenditure.howCalculated.title' => '估算方式',
			'disclaimer.calorieExpenditure.howCalculated.description' => '我們會計算您的 TDEE（根據個人檔案），並乘以當日已過的比例（小時 + 分鐘）/ 24，以估算目前為止燃燒的卡路里。',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => '專業指導',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => '請勿以此估算作為醫療決策。若需個人化體重管理建議，務必諮詢醫療或註冊營養師。',
			'common.close' => '關閉',
			'common.kContinue' => '繼續',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '喜歡 ${appLabel} 嗎？',
			'feedbackRating.yes' => '是的，我很喜歡',
			'feedbackRating.no' => '不太喜歡',
			'feedbackRating.rateStepHeading' => '在 Play Store 評分',
			'feedbackRating.emailStepHeading' => '透過電子郵件提供回饋',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => '簡短的評分能幫助其他人找到 ${appLabel}，並支持開發持續進行。您願意花一點時間留下評分嗎？',
			'feedbackRating.shareFeedbackViaEmail' => '您的回饋將影響未來功能，我們會閱讀每封訊息。想用電子郵件分享意見嗎？',
			'feedbackRating.rateCta' => '在 Play Store 評分',
			'feedbackRating.maybeLater' => '稍後再說',
			'feedbackRating.sendFeedback' => '傳送回饋',
			'feedbackRating.noThanks' => '不用了，謝謝',
			'feedbackRating.aboutUsDescription' => '由用心的小團隊製作。我們專注於隱私、簡潔，並幫助您養成更好的飲食習慣。',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '想知道 ${appLabel} 背後是誰？請參閱 ',
			'feedbackRating.aboutUsLinkLabel' => '關於我們',
			'feedbackRating.thankYouMessage' => '感謝！我們稍後會再次詢問。',
			'health.syncFailed' => '無法同步至 Health Connect',
			'health.mealSynced' => '餐點已同步至 Health Connect',
			_ => null,
		};
	}
}
