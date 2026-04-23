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
	@override String get language => '中文（台灣）';
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
	@override String get rateLimitExceeded => '您已送出過多請求。請稍等片刻再試。';
	@override String get networkError => '網路錯誤。請檢查您的網路連線。';
	@override String get unknownError => '發生錯誤。請稍後再試。';
	@override String get loadingProfileData => '載入個人資料數據出錯';
	@override String get somethingWentWrong => '發生了錯誤。';
	@override String get retry => '再試一次';
}

// Path: onboarding
class _TranslationsOnboardingZhTw implements TranslationsOnboardingEn {
	_TranslationsOnboardingZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '歡迎使用 ${appLabel}';
	@override String get subtitle => '您個人的營養夥伴，由 AI 提供支持';
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
	@override String get history => '歷史';
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
	@override String get emptyMessage => '拍攝您最後餐點的照片以在這裡記錄。';
	@override String get today => '今天';
	@override String get yesterday => '昨天';
}

// Path: meal
class _TranslationsMealZhTw implements TranslationsMealEn {
	_TranslationsMealZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get ohNo => '哦不！';
	@override String get delete => '刪除';
	@override String get editMeal => '編輯餐點';
	@override String get addMeal => '添加餐點';
	@override String get saveMeal => '保存餐點';
	@override String get save => '保存';
	@override String get mealName => '餐點名稱';
	@override String get mealNameHint => '例如：炒蛋配吐司';
	@override String get mealQuantity => '餐點數量';
	@override String get mealQuantityHint => '例如：1 碗、2 片';
	@override String get timeOfMeal => '用餐時間';
	@override String get timeOfMealHint => '選擇您的用餐時間';
	@override String get mealType => '餐點類型';
	@override late final _TranslationsMealNutritionZhTw nutrition = _TranslationsMealNutritionZhTw._(_root);
	@override late final _TranslationsMealDeleteConfirmationZhTw deleteConfirmation = _TranslationsMealDeleteConfirmationZhTw._(_root);
	@override String get addedToLog => '餐點已添加到您的記錄中！';
	@override String couldNotAdd({required Object error}) => '無法添加餐點：${error}';
	@override String get savedSuccessfully => '餐點已成功新增！';
	@override String get updatedSuccessfully => '餐點已成功更新！';
	@override String errorSaving({required Object error}) => '儲存餐點時發生錯誤：${error}';
	@override String get removedFromFavorites => '已從最愛中移除！';
	@override String get savedAsFavorite => '餐點已保存為最愛！';
	@override String couldNotUpdateFavorite({required Object error}) => '無法更新最愛：${error}';
	@override String failedToProcess({required Object error}) => '處理失敗：${error}';
	@override String failedToProcessImage({required Object error}) => '處理圖像失敗：${error}';
	@override String errorCompressingImage({required Object error}) => '壓縮圖像時出錯：${error}';
	@override String get failedToSave => '保存數據失敗。請再試一次。';
	@override String get skip => '跳過';
	@override late final _TranslationsMealVariationZhTw variation = _TranslationsMealVariationZhTw._(_root);
}

// Path: favorites
class _TranslationsFavoritesZhTw implements TranslationsFavoritesEn {
	_TranslationsFavoritesZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '最愛';
	@override String get empty => '尚未有最愛餐點。';
	@override String get searchPlaceholder => '搜尋收藏的餐點';
	@override String get searchEmptyTitle => '沒有收藏符合搜尋條件';
	@override String get searchEmptySubtitle => '請嘗試不同的餐點名稱、數量或餐別。';
	@override String get sortLabel => '排序收藏';
	@override String get undo => '復原';
	@override String removed({required Object name}) => '已從收藏移除「${name}」';
	@override late final _TranslationsFavoritesSortOptionsZhTw sortOptions = _TranslationsFavoritesSortOptionsZhTw._(_root);
}

// Path: profile
class _TranslationsProfileZhTw implements TranslationsProfileEn {
	_TranslationsProfileZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '個人檔案';
	@override String get noProfileData => '找不到個人檔案數據';
	@override String get yourProfile => '您的個人檔案';
	@override String get viewAndManage => '查看和管理您的健康信息';
	@override late final _TranslationsProfileSectionsZhTw sections = _TranslationsProfileSectionsZhTw._(_root);
	@override String get gender => '性別';
	@override String get height => '身高';
	@override String get weight => '體重';
	@override String get age => '年齡';
	@override String get weightGoal => '體重目標';
	@override String get targetWeight => '目標體重';
	@override String get activityLevel => '活動水平';
	@override String get healthMetrics => '健康指標';
	@override String get notSet => '未設定';
	@override String get years => '年';
	@override String get updatedSuccessfully => '個人檔案更新成功！';
	@override late final _TranslationsProfileCalculatedValuesZhTw calculatedValues = _TranslationsProfileCalculatedValuesZhTw._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreZhTw implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '健康分數';
	@override String get whyThisScore => '為什麼會有這個分數？';
	@override String get note => '此分數是根據識別的成分和營養密度的 AI 估計。始終諮詢專業人士以獲取飲食建議。';
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
	@override String get dateOfBirth => '出生日期';
	@override String get height => '身高';
	@override String get weight => '體重';
	@override String get weightGoal => '體重目標';
	@override String get activityLevel => '活動水平';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get unitCm => '公分';
	@override String get unitFt => '英尺';
	@override String get unitKg => '公斤';
	@override String get unitLbs => '磅';
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
	@override String get title => '設置';
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
	@override String get developerModeEnabled => '開發者模式已啟用！';
	@override late final _TranslationsSettingsHealthConnectZhTw healthConnect = _TranslationsSettingsHealthConnectZhTw._(_root);
	@override late final _TranslationsSettingsAboutZhTw about = _TranslationsSettingsAboutZhTw._(_root);
	@override late final _TranslationsSettingsAppInfoZhTw appInfo = _TranslationsSettingsAppInfoZhTw._(_root);
}

// Path: reminders
class _TranslationsRemindersZhTw implements TranslationsRemindersEn {
	_TranslationsRemindersZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '透過提醒保持正軌';
	@override String get description => '獲得溫和的提醒以記錄您的餐點，並保持一致的營養目標';
	@override String get notificationsEnabled => '通知已啟用';
	@override String get notificationsDisabled => '通知已禁用';
	@override String get enabledSubtitle => '您將收到用餐提醒';
	@override String get disabledSubtitle => '啟用通知以獲得用餐提醒';
	@override String get mealReminders => '餐點提醒';
	@override String get breakfast => '早餐';
	@override String get lunch => '午餐';
	@override String get dinner => '晚餐';
	@override String get snack => '小吃';
	@override String get unknown => '未知';
	@override String get change => '更改';
	@override String get enableNotifications => '啟用通知';
	@override String get skipForNow => '暫時跳過';
	@override String get saveChanges => '保存變更';
	@override String get enabledSuccessfully => '通知成功啟用！';
	@override String get permissionDenied => '通知權限被拒絕';
	@override String errorEnabling({required Object error}) => '啟用通知時出錯：${error}';
	@override String errorCompletingSetup({required Object error}) => '完成設置時出錯：${error}';
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
	@override String get signInFailed => 'Google 登入失敗或被取消。';
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
	@override String enjoyingQuestion({required Object appLabel}) => '你喜歡使用${appLabel}嗎？';
	@override String get yes => '是的，我很喜歡';
	@override String get no => '不是很滿意';
	@override String get rateStepHeading => '在 Google Play 商店評分';
	@override String get emailStepHeading => '透過電子郵件提供回饋';
	@override String soloDevMessage({required Object appLabel}) => '快速評分能幫助其他人找到 ${appLabel}，也讓我們得以持續開發。願意花一點時間留下評分嗎？';
	@override String get shareFeedbackViaEmail => '你的回饋會形塑下一步方向 — 我們會閱讀每一則訊息。你想透過電子郵件分享你的想法嗎？';
	@override String get rateCta => '在 Google Play 評分';
	@override String get maybeLater => '稍後再說';
	@override String get sendFeedback => '提供回饋';
	@override String get noThanks => '不用，謝謝';
	@override String get aboutUsDescription => '由一個小團隊用心打造。我們重視隱私、追求簡單，並致力於幫助你建立更健康的飲食習慣。';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '想知道是誰在打造 ${appLabel} 嗎？請參閱 ';
	@override String get aboutUsLinkLabel => '關於我們';
	@override String get thankYouMessage => '謝謝！我們下次會再問您。';
}

// Path: health
class _TranslationsHealthZhTw implements TranslationsHealthEn {
	_TranslationsHealthZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => '無法同步到 Health Connect';
	@override String get mealSynced => '餐點已與 Health Connect 同步';
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
	@override String get description => '性別有助於我們準確計算您的基礎代謝率 (BMR)。';
	@override String get next => '下一步';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightZhTw implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '您的身高是？';
	@override String get description => '您的身高有助於我們準確計算您的 BMI 和能量需求。';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get next => '下一步';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightZhTw implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => '您目前的體重是？';
	@override String get currentDescription => '您的目前體重對於個性化您的每日目標至關重要。';
	@override String get targetTitle => '您的目標體重是？';
	@override String get targetDescription => '設定目標體重幫助我們確定您的長期計劃。';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get next => '下一步';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeZhTw implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '您的生日是？';
	@override String get description => '您的年齡有助於我們精確計算您的卡路里需求。';
	@override String get next => '下一步';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleZhTw implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get underweight => '過輕';
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
	@override String get description => '選擇最能描述您想實現的目標';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelZhTw implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '您有多活躍？';
	@override String get description => '這有助於我們更準確地計算您的每日卡路里需求';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectZhTw implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '與 Health Connect 連接';
	@override String get description => '同步您的健康數據以獲取更好的見解和自動卡路里追蹤';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingZhTw automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingZhTw._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsZhTw progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsZhTw._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationZhTw seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationZhTw._(_root);
	@override String get connected => '已連接 Health Connect';
	@override String get notConnected => '未連接 Health Connect';
	@override String get setup => '設置 Health Connect';
	@override String get skipForNow => '先跳過';
	@override String get statusConnected => 'Health Connect 已連接。';
	@override String get statusSuccess => 'Health Connect 已成功連接！';
	@override String statusPermissionDenied({required Object appLabel}) => '權限被拒絕。請從手機設定中為 ${appLabel} 啟用 Health Connect 權限。';
	@override String statusError({required Object error}) => '設置 Health Connect 錯誤：${error}';
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
	@override String get logMore => '在接下來幾天多紀錄幾餐，以獲得個人化的 AI 洞見。';
	@override String get loading => '正在載入您的摘要...';
	@override String mealCount({required Object count}) => '${count} 筆餐點已記錄';
	@override String macroBalanceScore({required Object score}) => '營養平衡分數 ${score}';
	@override String get topFoods => '最常攝取的食物';
	@override String get trendUp => '熱量有上升趨勢';
	@override String get trendDown => '熱量有下降趨勢';
	@override String get trendSteady => '熱量維持穩定';
	@override String generatedAt({required Object time}) => '更新於 ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalZhTw implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '設定您的每日目標';
	@override String get titleSet => '您的每日目標';
	@override String get description => '準備開始您的健康之旅嗎？在下面設定您的每日卡路里目標以啟動您的進程。';
	@override String get descriptionSet => '您的指北針已設置！這是您的每日卡路里目標，指導您。';
	@override String get yourGoal => '您的目標';
	@override String get goal => '目標';
	@override String get dailyCalories => '每日卡路里 (kcal)';
	@override String get setGoal => '設定目標';
	@override String get intake => '攝取';
	@override String get burned => '燃燒';
	@override String get weightImpact => '體重影響';
	@override String get estLoss => '預估損失';
	@override String get estGain => '預估增加';
	@override String get kcal => '千卡';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryZhTw implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '每日總結';
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
	@override String get title => '今天的宏量分配';
	@override String get target => '目標';
	@override String get current => '目前';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryZhTw implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '7 天的宏量歷史';
	@override String get trendTitle => '今日趨勢';
	@override String peakHour({required Object hour}) => '高峰時段：${hour}:00';
	@override String get noHistoryYet => '尚未有歷史記錄';
	@override String get startLogging => '開始記錄餐點以查看您的\n七天宏量趨勢';
}

// Path: home.mealLog
class _TranslationsHomeMealLogZhTw implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '記錄的餐點';
	@override String get emptyMessage => '拍攝您最後餐點的照片以在這裡記錄。';
	@override String get noMealsToday => '今天尚未記錄任何餐點';
	@override String get seeAllMeals => '查看所有餐點';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionZhTw implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '用 AI 快速添加';
	@override String get description => '描述您的餐點，讓 AI 處理細節。';
	@override String get hint => '例如：早餐我吃了一大碗燕麥片，加上一根切片香蕉和一勺乳清......';
	@override String get analyzeMeal => '分析餐點';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsZhTw implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '最愛餐點';
	@override String get description => '快速添加您最喜愛的餐點。';
	@override String get noFavorites => '尚未有最愛餐點。';
	@override String get addFavoriteHint => '點擊餐點上的星星，將其標記為最愛。';
	@override String get seeAll => '查看所有';
	@override String get add => '添加';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapZhTw implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '拍攝與追蹤您的餐點';
	@override String get description => '使用您的相機拍攝食物的照片以進行 AI 分析。';
	@override String get openCamera => '打開相機';
	@override String get gallery => '相簿';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthZhTw implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '與 Health Connect 同步';
	@override String get description => '將您的營養數據與 Health Connect 同步';
	@override String get install => '安裝';
	@override String get connect => '連接';
}

// Path: meal.nutrition
class _TranslationsMealNutritionZhTw implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get calories => '卡路里';
	@override String get carbs => '碳水化合物 (g)';
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
	@override String get message => '您確定要刪除這餐記錄嗎？';
	@override String get cancel => '取消';
	@override String get delete => '刪除';
}

// Path: meal.variation
class _TranslationsMealVariationZhTw implements TranslationsMealVariationEn {
	_TranslationsMealVariationZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => '第 ${current} 題，共 ${total} 題';
	@override String get noVariationsAvailable => '目前沒有可用的變體';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsZhTw implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get recent => '最近';
	@override String get calories => '卡路里';
	@override String get alphabetical => '字母順序 (A-Z)';
}

// Path: profile.sections
class _TranslationsProfileSectionsZhTw implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get profile => '個人檔案';
	@override String get basicInformation => '基本信息';
	@override String get goalsAndActivity => '目標與活動';
	@override String get calculatedValues => '計算值';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesZhTw implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get bmr => '基礎代謝率';
	@override String get tdee => '每日總能量消耗';
	@override String get dailyGoal => '每日目標';
	@override String get calPerDay => '卡路里/天';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsZhTw implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => '個人信息';
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
	@override String get localization => '本地化';
	@override String get notifications => '通知';
	@override String get healthConnect => '健康連接';
	@override String get supportAndLegal => '支持與法律';
	@override String get about => '關於';
	@override String get dangerZone => '危險區域';
	@override String get developer => '開發者';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileZhTw implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '編輯個人檔案';
	@override String get subtitle => '更新您的個人信息';
}

// Path: settings.language
class _TranslationsSettingsLanguageZhTw implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '語言';
	@override String get subtitle => '選擇您偏好的語言';
	@override String get searchHint => '搜尋語言...';
	@override String get noResults => '未找到結果';
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
	@override String get title => '餐點提醒';
	@override String get subtitle => '及時提醒保持正軌';
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
	@override String get title => '發送反饋';
	@override String subtitle({required Object appLabel}) => '幫助我們改善 ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} 應用反饋';
	@override String get emailBodyPrefix => '請在下面提供您的反饋：';
	@override String get appVersion => '應用版本';
	@override String get device => '設備';
	@override String get osVersion => '操作系統版本';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryZhTw implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '匯出餐點記錄';
	@override String get subtitle => '以 CSV 格式分享您的餐點記錄';
	@override String get shareText => '您的 Calorify 餐點記錄匯出';
	@override String failed({required Object error}) => '無法匯出餐點記錄：${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataZhTw implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '清除所有數據';
	@override String get subtitle => '不可逆地刪除您的所有信息';
	@override String get confirmationTitle => '清除所有數據？';
	@override String get confirmationMessage => '此操作無法撤消。所有記錄的餐點、最愛和個人檔案設置將被永久刪除。';
	@override String get cancel => '取消';
	@override String get clearEverything => '清除所有';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsZhTw implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '調試選項';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectZhTw implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '健康連接';
	@override String get subtitle => '查看和管理權限';
	@override late final _TranslationsSettingsHealthConnectUnavailableZhTw unavailable = _TranslationsSettingsHealthConnectUnavailableZhTw._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsZhTw permissions = _TranslationsSettingsHealthConnectPermissionsZhTw._(_root);
	@override String get managePermissions => '管理權限';
	@override String get openSettings => '打開健康連接設定';
	@override String get requestPermissions => '請求權限';
	@override String get permissionRequestCancelledOrFailed => '權限請求已被取消或失敗。請再試一次或在 Health Connect 設定中手動授權權限。';
	@override String get permissionRequestFailed => '無法請求權限。請再試一次或在 Health Connect 設定中手動授權權限。';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutZhTw implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '關於';
	@override String get tagline => '快速、免費且以隱私為先的卡路里認知';
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
	@override String get title => '早餐時間！🍳';
	@override String get body => '不要忘記記錄您的早餐';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchZhTw implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '午餐時間！🥗';
	@override String get body => '是時候記錄您的午餐了';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerZhTw implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '晚餐時間！🍽️';
	@override String get body => '不要忘記記錄您的晚餐';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackZhTw implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '小吃時間！🍎';
	@override String get body => '是時候享受健康的小吃了';
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
	@override String description({required Object appLabel}) => '${appLabel} 提供估算的營養信息。準確性取決於您的輸入和食物變化。僅作為指導，而非確定的來源。請諮詢專業人士以獲取個性化的飲食建議。';
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
	@override String get description => '預測的體重變化是基於簡單的卡路里攝入與消耗模型的理論估算。僅用於動機指導，不作為您的實際體重的預測。';
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
	@override String get description => '這些指標有助於您了解身體的能量需求並引導您的營養目標。';
	@override late final _TranslationsDisclaimerHealthMetricsBmrZhTw bmr = _TranslationsDisclaimerHealthMetricsBmrZhTw._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeZhTw tdee = _TranslationsDisclaimerHealthMetricsTdeeZhTw._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalZhTw dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalZhTw._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureZhTw implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '熱量消耗估算';
	@override String get description => '當 Health Connect 資料不可用時，我們會使用您的基礎代謝率 (BMR) 和活動量 (TDEE)，並依照一天已過的比例，來估算今天已消耗的熱量。';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedZhTw howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedZhTw._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhTw professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhTw._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionZhTw implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '智慧食物識別';
	@override String get description => '拍攝照片，讓 AI 識別您的餐點';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisZhTw implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 分析';
	@override String get description => '根據您的描述獲得即時營養資訊';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationZhTw implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '健康整合';
	@override String get description => '與 Health Connect 連接以獲取更好的見解';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesZhTw implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get underweight => '過輕';
	@override String get healthyWeight => '健康體重';
	@override String get overweight => '超重';
	@override String get obese => '肥胖';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesZhTw implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get underweight => '我們可以幫助您制定健康計劃，通過營養豐富的餐點達到平衡體重。';
	@override String get healthy => '太棒了！您處於健康範圍。我們將幫助您保持活力和能量水平。';
	@override String overweight({required Object appLabel}) => '${appLabel} 將簡化您的旅程，利用 AI 驅動的追蹤幫助您舒適地達成目標。';
	@override String get obese => '我們在這裡支持您，提供個性化指導和可持續策略，實現您的健康目標。';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingZhTw implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '自動卡路里追蹤';
	@override String get description => '追蹤您從健身應用中燃燒的卡路里';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsZhTw implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '進展見解';
	@override String get description => '獲得您健康趨勢的詳細見解';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationZhTw implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '無縫整合';
	@override String get description => '從您最喜愛的健康應用同步數據';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessZhTw implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '您並不孤單';
	@override String get genericMessage => '研究顯示，持續追蹤是長期成功的第一預測因子。';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '對於 ${age} 歲的 ${gender} 想要 ${goal}，持續追蹤是成功的第一預測因子。';
	@override String closingMessage({required Object appLabel}) => '${appLabel} 使其比手動操作輕鬆 10 倍。';
	@override String get getStartedTitle => '準備開始了嗎？';
	@override String get tipPhoto => '拍攝您的餐點照片以獲取即時分析';
	@override String get tipConsistency => '持續記錄以看到有意義的進展';
	@override String get tipProgress => '每日追蹤您的進展以保持動力';
	@override String get button => '我們出發吧';
	@override String get defaultGender => '個體';
	@override String get defaultGoal => '更健康的自己';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileZhTw implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '您的健康檔案';
	@override String bmiDescription({required Object bmi}) => '根據您的數據，您的 BMI 為 ${bmi}。';
	@override String get finalizeDescription => '讓我們完善您的檔案以客製化您的體驗。';
	@override String get goalGain => '增重';
	@override String get goalLose => '減重';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => '要達成您的目標，您需要 ${direction} ${diff} ${unit}。';
	@override String get goalReached => '您已達到目標體重！我們將幫助您保持。';
	@override String get button => '我們出發吧';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleZhTw implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '極好的開始！';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => '您已邁出第一步，朝著 ${goalText} 前進。由於您是 ${activityText}，${appLabel} 將調整您的目標以符合您的生活方式。';
	@override String get personalizedTargets => '個性化卡路里目標';
	@override String get aiMealDetection => 'AI 驅動的餐點檢測';
	@override String get macroBreakdowns => '詳細的宏營養素分解';
	@override String get button => '我們出發吧';
	@override String get defaultGoal => '您的目標';
	@override String get defaultActivity => '活躍';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightZhTw implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '減重';
	@override String get description => '創造卡路里赤字以減重';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightZhTw implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '維持體重';
	@override String get description => '維持目前體重';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightZhTw implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '增重';
	@override String get description => '創造卡路里盈餘以增重';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryZhTw implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '久坐';
	@override String get description => '幾乎不運動';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveZhTw implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '輕度活躍';
	@override String get description => '每週輕度運動 1-3 天';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveZhTw implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '中度活躍';
	@override String get description => '每週中度運動 3-5 天';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveZhTw implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '非常活躍';
	@override String get description => '每週高強度運動 6-7 天';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveZhTw implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get name => '極度活躍';
	@override String get description => '非常艱苦的運動或體力工作';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableZhTw implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '健康連接不可用';
	@override String get description => '此設備不支援健康連接。它需要 Android 14 或更高版本。';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsZhTw implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '權限';
	@override String get description => '以下權限是為了提供健康連接整合而請求的：';
	@override String get granted => '已授予';
	@override String get notGranted => '未授予';
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
	@override String content({required Object appLabel}) => '${appLabel} 源於一個簡單的挫折：大多數卡路里追踪應用程式要麼過於複雜，要麼需要不斷的手動輸入，要麼收取高額的訂閱費用，或是在隱私上妥協。\n\n作為一名獨立開發者，我想要創建一款更簡單、更公平的應用程式——一款利用 AI 來減少努力、保持快速且免費使用，並尊重您的健康數據的應用程式。\n\n${appLabel} 是我希望能存在的應用程式：不需要帳戶、無追蹤、無廣告——只有清晰、實用的見解和您的健康目標。';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyZhTw implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '您的隱私很重要';
	@override String get description => '隱私不是事後之論 — 它是一個設計原則。這在實踐中意味著：';
	@override String get noAccounts => '不需要帳戶\n立即使用應用程式。無需註冊，無身份驗證。';
	@override String noTracking({required Object appLabel}) => '無行為追蹤\n${appLabel} 不會監控您的活動、建立使用檔案或在應用程式或網站之間追蹤您。';
	@override String noAds({required Object appLabel}) => '無廣告設計\n${appLabel} 的設計不依賴於廣告或數據驅動的變現方式。';
	@override String get noDataSelling => '不販賣數據\n您的健康數據絕不會出售或分享給第三方。';
	@override String get localStorage => '本地優先的存儲\n您的數據保持在您的設備上。';
	@override String get privacyPolicy => '隱私政策';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperZhTw implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '由獨立開發者構建';
	@override String description({required Object appLabel}) => '${appLabel} 由一位獨立開發者構建和維護，專注於創造平靜、尊重隱私的健康軟體。\n\n您的反饋將被親自閱讀並幫助塑造應用程式的方向。';
	@override String get website => '網站';
	@override String get email => '電子郵件';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackZhTw implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '喜歡 ${appLabel} 嗎？';
	@override String description({required Object appLabel}) => '您的反饋有助於使 ${appLabel} 對每個人都變得更好。';
	@override String get rateApp => '在 Play 商店評分';
	@override String get sendFeedback => '發送反饋';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeZhTw implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '份量大小';
	@override String get description => '估算的準確性在很大程度上依賴於您對份量大小的正確評估。';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsZhTw implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '預備方法';
	@override String description({required Object appLabel}) => '烹調方式可顯著影響食物的營養成分。${appLabel} 的估算可能不總是考慮這些變化。';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsZhTw implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '成分';
	@override String get description => '包含許多隱藏成分的複雜菜餚可能會導致估計不夠準確。';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsZhTw implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '數據庫限制';
	@override String description({required Object appLabel}) => '${appLabel} 的食品數據庫非常廣泛，但可能不包括每個單獨的食物項目或變體。';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyZhTw implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '卡路里準確性';
	@override String get description => '此估算僅與您紀錄的卡路里攝入和消耗同樣準確。不正確的紀錄將導致不準確的預測。';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsZhTw implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '生物因素';
	@override String description({required Object appLabel}) => '實際的體重減輕/增加受到代謝、荷爾蒙、睡眠、壓力、水合作用及其他個人因素的影響，這些都是 ${appLabel} 無法測量的。';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightZhTw implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '水分體重和波動';
	@override String get description => '正常的每日體重可能因水分儲存、消化和計時而顯著波動。此估算不考慮這些每日變化。';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhTw implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '專業指導';
	@override String get description => '不要用此估算來做醫療決定。始終諮詢醫療專業人士或註冊營養師以獲取個性化的體重管理建議。';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrZhTw implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '基礎代謝率 (BMR)';
	@override String get description => '基礎代謝率 (BMR) 是您身體在靜息狀態下為了維持基本功能（如呼吸和循環）而燃燒的卡路里數量。BMR 取決於您的年齡、性別、身高和體重。較高的 BMR 意味著您的身體在靜息狀態下自然燃燒更多的卡路里，通常是因為肌肉量較多、年齡較輕或為男性。而較低的 BMR 通常表示肌肉量較少、年齡較大或為女性。';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeZhTw implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '每日總能量消耗 (TDEE)';
	@override String get description => '每日總能量消耗 (TDEE) 是您每天燃燒的總卡路里，包括 BMR 加上身體活動和日常運動消耗的卡路里。TDEE 取決於您的 BMR 和活動水平。較高的 TDEE 意味著您整體燃燒更多卡路里，通常是因為活動量更大或 BMR 較高；而較低的 TDEE 則暗示日常活動較少或 BMR 較低。';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalZhTw implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '每日目標';
	@override String get description => '每日目標是根據您的 TDEE 和體重目標推薦的每日卡路里攝入量。若要減肥，您需要攝入的卡路里少於您的 TDEE；若要維持體重，則需與 TDEE 持平；若要增重，您需攝入的卡路里超過您的 TDEE。這有助於您以健康的速度達成所期望的體重變化。';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedZhTw implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '估算方式';
	@override String get description => '我們會根據您的個人資料計算每日總熱量消耗 (TDEE)，然後以一天中已過的比例（小時 + 分鐘）/ 24 乘上該值，來估算目前為止已消耗的熱量。';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhTw implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '專業建議';
	@override String get description => '請勿以此估算作為醫療決策的依據。欲取得個人化的體重管理建議，請務必諮詢醫療專業人員或註冊營養師。';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhTw implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '讀取總燃燒卡路里';
	@override String get description => '允許應用從健康連接讀取您的總燃燒卡路里。';
	@override String get usage => '此權限用於在應用中顯示您的每日卡路里燃燒，幫助您了解全天的總能量消耗。';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadZhTw implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '讀取營養數據';
	@override String get description => '允許應用從健康連接讀取營養數據。';
	@override String get usage => '此權限允許應用讀取可能已由其他連接到健康連接的應用記錄的營養信息，提供您全面的營養視圖。';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteZhTw implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteZhTw._(this._root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '寫入營養數據';
	@override String get description => '允許應用將營養數據寫入健康連接。';
	@override String get usage => '此權限允許應用將您記錄的膳食同步到健康連接，使您的營養數據能夠對您使用的其他健康和健身應用可用。';
}

/// The flat map containing all translations for locale <zh-TW>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsZhTw {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => '中文（台灣）',
			'flag' => '🇹🇼',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => '您已送出過多請求。請稍等片刻再試。',
			'errors.networkError' => '網路錯誤。請檢查您的網路連線。',
			'errors.unknownError' => '發生錯誤。請稍後再試。',
			'errors.loadingProfileData' => '載入個人資料數據出錯',
			'errors.somethingWentWrong' => '發生了錯誤。',
			'errors.retry' => '再試一次',
			'onboarding.welcome' => ({required Object appLabel}) => '歡迎使用 ${appLabel}',
			'onboarding.subtitle' => '您個人的營養夥伴，由 AI 提供支持',
			'onboarding.getStarted' => '開始使用',
			'onboarding.features.foodRecognition.title' => '智慧食物識別',
			'onboarding.features.foodRecognition.description' => '拍攝照片，讓 AI 識別您的餐點',
			'onboarding.features.aiAnalysis.title' => 'AI 分析',
			'onboarding.features.aiAnalysis.description' => '根據您的描述獲得即時營養資訊',
			'onboarding.features.healthIntegration.title' => '健康整合',
			'onboarding.features.healthIntegration.description' => '與 Health Connect 連接以獲取更好的見解',
			'onboarding.gender.title' => '您的性別是？',
			'onboarding.gender.description' => '性別有助於我們準確計算您的基礎代謝率 (BMR)。',
			'onboarding.gender.next' => '下一步',
			'onboarding.height.title' => '您的身高是？',
			'onboarding.height.description' => '您的身高有助於我們準確計算您的 BMI 和能量需求。',
			'onboarding.height.metric' => '公制',
			'onboarding.height.imperial' => '英制',
			'onboarding.height.next' => '下一步',
			'onboarding.weight.currentTitle' => '您目前的體重是？',
			'onboarding.weight.currentDescription' => '您的目前體重對於個性化您的每日目標至關重要。',
			'onboarding.weight.targetTitle' => '您的目標體重是？',
			'onboarding.weight.targetDescription' => '設定目標體重幫助我們確定您的長期計劃。',
			'onboarding.weight.metric' => '公制',
			'onboarding.weight.imperial' => '英制',
			'onboarding.weight.next' => '下一步',
			'onboarding.age.title' => '您的生日是？',
			'onboarding.age.description' => '您的年齡有助於我們精確計算您的卡路里需求。',
			'onboarding.age.next' => '下一步',
			'onboarding.bmiScale.underweight' => '過輕',
			'onboarding.bmiScale.healthy' => '健康',
			'onboarding.bmiScale.overweight' => '過重',
			'onboarding.bmiScale.obese' => '肥胖',
			'onboarding.bmiScale.categories.underweight' => '過輕',
			'onboarding.bmiScale.categories.healthyWeight' => '健康體重',
			'onboarding.bmiScale.categories.overweight' => '超重',
			'onboarding.bmiScale.categories.obese' => '肥胖',
			'onboarding.bmiScale.messages.underweight' => '我們可以幫助您制定健康計劃，通過營養豐富的餐點達到平衡體重。',
			'onboarding.bmiScale.messages.healthy' => '太棒了！您處於健康範圍。我們將幫助您保持活力和能量水平。',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} 將簡化您的旅程，利用 AI 驅動的追蹤幫助您舒適地達成目標。',
			'onboarding.bmiScale.messages.obese' => '我們在這裡支持您，提供個性化指導和可持續策略，實現您的健康目標。',
			'onboarding.weightGoal.title' => '您的目標是什麼？',
			'onboarding.weightGoal.description' => '選擇最能描述您想實現的目標',
			'onboarding.activityLevel.title' => '您有多活躍？',
			'onboarding.activityLevel.description' => '這有助於我們更準確地計算您的每日卡路里需求',
			'onboarding.healthConnect.title' => '與 Health Connect 連接',
			'onboarding.healthConnect.description' => '同步您的健康數據以獲取更好的見解和自動卡路里追蹤',
			'onboarding.healthConnect.automaticTracking.title' => '自動卡路里追蹤',
			'onboarding.healthConnect.automaticTracking.description' => '追蹤您從健身應用中燃燒的卡路里',
			'onboarding.healthConnect.progressInsights.title' => '進展見解',
			'onboarding.healthConnect.progressInsights.description' => '獲得您健康趨勢的詳細見解',
			'onboarding.healthConnect.seamlessIntegration.title' => '無縫整合',
			'onboarding.healthConnect.seamlessIntegration.description' => '從您最喜愛的健康應用同步數據',
			'onboarding.healthConnect.connected' => '已連接 Health Connect',
			'onboarding.healthConnect.notConnected' => '未連接 Health Connect',
			'onboarding.healthConnect.setup' => '設置 Health Connect',
			'onboarding.healthConnect.skipForNow' => '先跳過',
			'onboarding.healthConnect.statusConnected' => 'Health Connect 已連接。',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect 已成功連接！',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => '權限被拒絕。請從手機設定中為 ${appLabel} 啟用 Health Connect 權限。',
			'onboarding.healthConnect.statusError' => ({required Object error}) => '設置 Health Connect 錯誤：${error}',
			'onboarding.reinforcement.trackingSuccess.title' => '您並不孤單',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => '研究顯示，持續追蹤是長期成功的第一預測因子。',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '對於 ${age} 歲的 ${gender} 想要 ${goal}，持續追蹤是成功的第一預測因子。',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} 使其比手動操作輕鬆 10 倍。',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => '準備開始了嗎？',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => '拍攝您的餐點照片以獲取即時分析',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => '持續記錄以看到有意義的進展',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => '每日追蹤您的進展以保持動力',
			'onboarding.reinforcement.trackingSuccess.button' => '我們出發吧',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => '個體',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => '更健康的自己',
			'onboarding.reinforcement.healthProfile.title' => '您的健康檔案',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => '根據您的數據，您的 BMI 為 ${bmi}。',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => '讓我們完善您的檔案以客製化您的體驗。',
			'onboarding.reinforcement.healthProfile.goalGain' => '增重',
			'onboarding.reinforcement.healthProfile.goalLose' => '減重',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => '要達成您的目標，您需要 ${direction} ${diff} ${unit}。',
			'onboarding.reinforcement.healthProfile.goalReached' => '您已達到目標體重！我們將幫助您保持。',
			'onboarding.reinforcement.healthProfile.button' => '我們出發吧',
			'onboarding.reinforcement.goalLifestyle.title' => '極好的開始！',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => '您已邁出第一步，朝著 ${goalText} 前進。由於您是 ${activityText}，${appLabel} 將調整您的目標以符合您的生活方式。',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => '個性化卡路里目標',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI 驅動的餐點檢測',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => '詳細的宏營養素分解',
			'onboarding.reinforcement.goalLifestyle.button' => '我們出發吧',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => '您的目標',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => '活躍',
			'tabs.dashboard' => '儀表板',
			'tabs.history' => '歷史',
			'home.aiSummary.title' => '您的 AI 摘要',
			'home.aiSummary.logMore' => '在接下來幾天多紀錄幾餐，以獲得個人化的 AI 洞見。',
			'home.aiSummary.loading' => '正在載入您的摘要...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} 筆餐點已記錄',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => '營養平衡分數 ${score}',
			'home.aiSummary.topFoods' => '最常攝取的食物',
			'home.aiSummary.trendUp' => '熱量有上升趨勢',
			'home.aiSummary.trendDown' => '熱量有下降趨勢',
			'home.aiSummary.trendSteady' => '熱量維持穩定',
			'home.aiSummary.generatedAt' => ({required Object time}) => '更新於 ${time}',
			'home.dailyGoal.title' => '設定您的每日目標',
			'home.dailyGoal.titleSet' => '您的每日目標',
			'home.dailyGoal.description' => '準備開始您的健康之旅嗎？在下面設定您的每日卡路里目標以啟動您的進程。',
			'home.dailyGoal.descriptionSet' => '您的指北針已設置！這是您的每日卡路里目標，指導您。',
			'home.dailyGoal.yourGoal' => '您的目標',
			'home.dailyGoal.goal' => '目標',
			'home.dailyGoal.dailyCalories' => '每日卡路里 (kcal)',
			'home.dailyGoal.setGoal' => '設定目標',
			'home.dailyGoal.intake' => '攝取',
			'home.dailyGoal.burned' => '燃燒',
			'home.dailyGoal.weightImpact' => '體重影響',
			'home.dailyGoal.estLoss' => '預估損失',
			'home.dailyGoal.estGain' => '預估增加',
			'home.dailyGoal.kcal' => '千卡',
			'home.dailySummary.title' => '每日總結',
			'home.dailySummary.calories' => '卡路里',
			'home.dailySummary.carbs' => '碳水化合物',
			'home.dailySummary.protein' => '蛋白質',
			'home.dailySummary.fat' => '脂肪',
			'home.dailySummary.fiber' => '纖維',
			'home.dailySummary.grams' => '公克',
			'home.dailySummary.chartAccessibilityLabel' => '三大營養素圖表',
			'home.intakeProgress.title' => '今天的宏量分配',
			'home.intakeProgress.target' => '目標',
			'home.intakeProgress.current' => '目前',
			'home.intakeHistory.title' => '7 天的宏量歷史',
			'home.intakeHistory.trendTitle' => '今日趨勢',
			'home.intakeHistory.peakHour' => ({required Object hour}) => '高峰時段：${hour}:00',
			'home.intakeHistory.noHistoryYet' => '尚未有歷史記錄',
			'home.intakeHistory.startLogging' => '開始記錄餐點以查看您的\n七天宏量趨勢',
			'home.mealLog.title' => '記錄的餐點',
			'home.mealLog.emptyMessage' => '拍攝您最後餐點的照片以在這裡記錄。',
			'home.mealLog.noMealsToday' => '今天尚未記錄任何餐點',
			'home.mealLog.seeAllMeals' => '查看所有餐點',
			'home.mealDescription.title' => '用 AI 快速添加',
			'home.mealDescription.description' => '描述您的餐點，讓 AI 處理細節。',
			'home.mealDescription.hint' => '例如：早餐我吃了一大碗燕麥片，加上一根切片香蕉和一勺乳清......',
			'home.mealDescription.analyzeMeal' => '分析餐點',
			'home.favoriteMeals.title' => '最愛餐點',
			'home.favoriteMeals.description' => '快速添加您最喜愛的餐點。',
			'home.favoriteMeals.noFavorites' => '尚未有最愛餐點。',
			'home.favoriteMeals.addFavoriteHint' => '點擊餐點上的星星，將其標記為最愛。',
			'home.favoriteMeals.seeAll' => '查看所有',
			'home.favoriteMeals.add' => '添加',
			'home.mealSnap.title' => '拍攝與追蹤您的餐點',
			'home.mealSnap.description' => '使用您的相機拍攝食物的照片以進行 AI 分析。',
			'home.mealSnap.openCamera' => '打開相機',
			'home.mealSnap.gallery' => '相簿',
			'home.connectHealth.title' => '與 Health Connect 同步',
			'home.connectHealth.description' => '將您的營養數據與 Health Connect 同步',
			'home.connectHealth.install' => '安裝',
			'home.connectHealth.connect' => '連接',
			'history.noMeals' => '尚未記錄任何餐點',
			'history.emptyMessage' => '拍攝您最後餐點的照片以在這裡記錄。',
			'history.today' => '今天',
			'history.yesterday' => '昨天',
			'meal.ohNo' => '哦不！',
			'meal.delete' => '刪除',
			'meal.editMeal' => '編輯餐點',
			'meal.addMeal' => '添加餐點',
			'meal.saveMeal' => '保存餐點',
			'meal.save' => '保存',
			'meal.mealName' => '餐點名稱',
			'meal.mealNameHint' => '例如：炒蛋配吐司',
			'meal.mealQuantity' => '餐點數量',
			'meal.mealQuantityHint' => '例如：1 碗、2 片',
			'meal.timeOfMeal' => '用餐時間',
			'meal.timeOfMealHint' => '選擇您的用餐時間',
			'meal.mealType' => '餐點類型',
			'meal.nutrition.calories' => '卡路里',
			'meal.nutrition.carbs' => '碳水化合物 (g)',
			'meal.nutrition.protein' => '蛋白質 (g)',
			'meal.nutrition.fat' => '脂肪 (g)',
			'meal.nutrition.fiber' => '纖維 (g)',
			'meal.deleteConfirmation.title' => '刪除餐點',
			'meal.deleteConfirmation.message' => '您確定要刪除這餐記錄嗎？',
			'meal.deleteConfirmation.cancel' => '取消',
			'meal.deleteConfirmation.delete' => '刪除',
			'meal.addedToLog' => '餐點已添加到您的記錄中！',
			'meal.couldNotAdd' => ({required Object error}) => '無法添加餐點：${error}',
			'meal.savedSuccessfully' => '餐點已成功新增！',
			'meal.updatedSuccessfully' => '餐點已成功更新！',
			'meal.errorSaving' => ({required Object error}) => '儲存餐點時發生錯誤：${error}',
			'meal.removedFromFavorites' => '已從最愛中移除！',
			'meal.savedAsFavorite' => '餐點已保存為最愛！',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => '無法更新最愛：${error}',
			'meal.failedToProcess' => ({required Object error}) => '處理失敗：${error}',
			'meal.failedToProcessImage' => ({required Object error}) => '處理圖像失敗：${error}',
			'meal.errorCompressingImage' => ({required Object error}) => '壓縮圖像時出錯：${error}',
			'meal.failedToSave' => '保存數據失敗。請再試一次。',
			'meal.skip' => '跳過',
			'meal.variation.question' => ({required Object current, required Object total}) => '第 ${current} 題，共 ${total} 題',
			'meal.variation.noVariationsAvailable' => '目前沒有可用的變體',
			'favorites.title' => '最愛',
			'favorites.empty' => '尚未有最愛餐點。',
			'favorites.searchPlaceholder' => '搜尋收藏的餐點',
			'favorites.searchEmptyTitle' => '沒有收藏符合搜尋條件',
			'favorites.searchEmptySubtitle' => '請嘗試不同的餐點名稱、數量或餐別。',
			'favorites.sortLabel' => '排序收藏',
			'favorites.undo' => '復原',
			'favorites.removed' => ({required Object name}) => '已從收藏移除「${name}」',
			'favorites.sortOptions.recent' => '最近',
			'favorites.sortOptions.calories' => '卡路里',
			'favorites.sortOptions.alphabetical' => '字母順序 (A-Z)',
			'profile.title' => '個人檔案',
			'profile.noProfileData' => '找不到個人檔案數據',
			'profile.yourProfile' => '您的個人檔案',
			'profile.viewAndManage' => '查看和管理您的健康信息',
			'profile.sections.profile' => '個人檔案',
			'profile.sections.basicInformation' => '基本信息',
			'profile.sections.goalsAndActivity' => '目標與活動',
			'profile.sections.calculatedValues' => '計算值',
			'profile.gender' => '性別',
			'profile.height' => '身高',
			'profile.weight' => '體重',
			'profile.age' => '年齡',
			'profile.weightGoal' => '體重目標',
			'profile.targetWeight' => '目標體重',
			'profile.activityLevel' => '活動水平',
			'profile.healthMetrics' => '健康指標',
			'profile.notSet' => '未設定',
			'profile.years' => '年',
			'profile.updatedSuccessfully' => '個人檔案更新成功！',
			'profile.calculatedValues.bmr' => '基礎代謝率',
			'profile.calculatedValues.tdee' => '每日總能量消耗',
			'profile.calculatedValues.dailyGoal' => '每日目標',
			'profile.calculatedValues.calPerDay' => '卡路里/天',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => '健康分數',
			'healthScore.whyThisScore' => '為什麼會有這個分數？',
			'healthScore.note' => '此分數是根據識別的成分和營養密度的 AI 估計。始終諮詢專業人士以獲取飲食建議。',
			'healthScore.unhealthy' => '不健康',
			'healthScore.healthy' => '健康',
			'healthScore.neutral' => '中性',
			'editProfile.title' => '編輯個人檔案',
			'editProfile.sections.personalInformation' => '個人信息',
			'editProfile.sections.physicalMeasurements' => '身體測量',
			'editProfile.sections.goalsAndActivity' => '目標與活動',
			'editProfile.gender' => '性別',
			'editProfile.dateOfBirth' => '出生日期',
			'editProfile.height' => '身高',
			'editProfile.weight' => '體重',
			'editProfile.weightGoal' => '體重目標',
			'editProfile.activityLevel' => '活動水平',
			'editProfile.metric' => '公制',
			'editProfile.imperial' => '英制',
			'editProfile.unitCm' => '公分',
			'editProfile.unitFt' => '英尺',
			'editProfile.unitKg' => '公斤',
			'editProfile.unitLbs' => '磅',
			'editProfile.metricCm' => '公制 (cm)',
			'editProfile.imperialFtIn' => '英制 (ft/in)',
			'editProfile.metricKg' => '公制 (kg)',
			'editProfile.imperialLbs' => '英制 (lbs)',
			'editProfile.genders.male' => '男性',
			'editProfile.genders.female' => '女性',
			'editProfile.genders.other' => '其他',
			'editProfile.weightGoals.loseWeight.name' => '減重',
			'editProfile.weightGoals.loseWeight.description' => '創造卡路里赤字以減重',
			'editProfile.weightGoals.maintainWeight.name' => '維持體重',
			'editProfile.weightGoals.maintainWeight.description' => '維持目前體重',
			'editProfile.weightGoals.gainWeight.name' => '增重',
			'editProfile.weightGoals.gainWeight.description' => '創造卡路里盈餘以增重',
			'editProfile.activityLevels.sedentary.name' => '久坐',
			'editProfile.activityLevels.sedentary.description' => '幾乎不運動',
			'editProfile.activityLevels.lightlyActive.name' => '輕度活躍',
			'editProfile.activityLevels.lightlyActive.description' => '每週輕度運動 1-3 天',
			'editProfile.activityLevels.moderatelyActive.name' => '中度活躍',
			'editProfile.activityLevels.moderatelyActive.description' => '每週中度運動 3-5 天',
			'editProfile.activityLevels.veryActive.name' => '非常活躍',
			'editProfile.activityLevels.veryActive.description' => '每週高強度運動 6-7 天',
			'editProfile.activityLevels.extremelyActive.name' => '極度活躍',
			'editProfile.activityLevels.extremelyActive.description' => '非常艱苦的運動或體力工作',
			'settings.title' => '設置',
			'settings.sections.profile' => '個人檔案',
			'settings.sections.localization' => '本地化',
			'settings.sections.notifications' => '通知',
			'settings.sections.healthConnect' => '健康連接',
			'settings.sections.supportAndLegal' => '支持與法律',
			'settings.sections.about' => '關於',
			'settings.sections.dangerZone' => '危險區域',
			'settings.sections.developer' => '開發者',
			'settings.editProfile.title' => '編輯個人檔案',
			'settings.editProfile.subtitle' => '更新您的個人信息',
			'settings.language.title' => '語言',
			'settings.language.subtitle' => '選擇您偏好的語言',
			'settings.language.searchHint' => '搜尋語言...',
			'settings.language.noResults' => '未找到結果',
			'settings.heightUnit.title' => '身高單位',
			'settings.weightUnit.title' => '體重單位',
			'settings.mealReminders.title' => '餐點提醒',
			'settings.mealReminders.subtitle' => '及時提醒保持正軌',
			'settings.theme.title' => '主題',
			'settings.theme.light' => '淺色',
			'settings.theme.dark' => '深色',
			'settings.theme.system' => '系統',
			'settings.sendFeedback.title' => '發送反饋',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '幫助我們改善 ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} 應用反饋',
			'settings.sendFeedback.emailBodyPrefix' => '請在下面提供您的反饋：',
			'settings.sendFeedback.appVersion' => '應用版本',
			'settings.sendFeedback.device' => '設備',
			'settings.sendFeedback.osVersion' => '操作系統版本',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => '匯出餐點記錄',
			'settings.exportMealHistory.subtitle' => '以 CSV 格式分享您的餐點記錄',
			'settings.exportMealHistory.shareText' => '您的 Calorify 餐點記錄匯出',
			'settings.exportMealHistory.failed' => ({required Object error}) => '無法匯出餐點記錄：${error}',
			'settings.clearAllData.title' => '清除所有數據',
			'settings.clearAllData.subtitle' => '不可逆地刪除您的所有信息',
			'settings.clearAllData.confirmationTitle' => '清除所有數據？',
			'settings.clearAllData.confirmationMessage' => '此操作無法撤消。所有記錄的餐點、最愛和個人檔案設置將被永久刪除。',
			'settings.clearAllData.cancel' => '取消',
			'settings.clearAllData.clearEverything' => '清除所有',
			'settings.debugOptions.title' => '調試選項',
			'settings.developerModeEnabled' => '開發者模式已啟用！',
			'settings.healthConnect.title' => '健康連接',
			'settings.healthConnect.subtitle' => '查看和管理權限',
			'settings.healthConnect.unavailable.title' => '健康連接不可用',
			'settings.healthConnect.unavailable.description' => '此設備不支援健康連接。它需要 Android 14 或更高版本。',
			'settings.healthConnect.permissions.title' => '權限',
			'settings.healthConnect.permissions.description' => '以下權限是為了提供健康連接整合而請求的：',
			'settings.healthConnect.permissions.granted' => '已授予',
			'settings.healthConnect.permissions.notGranted' => '未授予',
			'settings.healthConnect.permissions.caloriesBurned.title' => '讀取總燃燒卡路里',
			'settings.healthConnect.permissions.caloriesBurned.description' => '允許應用從健康連接讀取您的總燃燒卡路里。',
			'settings.healthConnect.permissions.caloriesBurned.usage' => '此權限用於在應用中顯示您的每日卡路里燃燒，幫助您了解全天的總能量消耗。',
			'settings.healthConnect.permissions.nutritionRead.title' => '讀取營養數據',
			'settings.healthConnect.permissions.nutritionRead.description' => '允許應用從健康連接讀取營養數據。',
			'settings.healthConnect.permissions.nutritionRead.usage' => '此權限允許應用讀取可能已由其他連接到健康連接的應用記錄的營養信息，提供您全面的營養視圖。',
			'settings.healthConnect.permissions.nutritionWrite.title' => '寫入營養數據',
			'settings.healthConnect.permissions.nutritionWrite.description' => '允許應用將營養數據寫入健康連接。',
			'settings.healthConnect.permissions.nutritionWrite.usage' => '此權限允許應用將您記錄的膳食同步到健康連接，使您的營養數據能夠對您使用的其他健康和健身應用可用。',
			'settings.healthConnect.managePermissions' => '管理權限',
			'settings.healthConnect.openSettings' => '打開健康連接設定',
			'settings.healthConnect.requestPermissions' => '請求權限',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => '權限請求已被取消或失敗。請再試一次或在 Health Connect 設定中手動授權權限。',
			'settings.healthConnect.permissionRequestFailed' => '無法請求權限。請再試一次或在 Health Connect 設定中手動授權權限。',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => '關於',
			'settings.about.tagline' => '快速、免費且以隱私為先的卡路里認知',
			'settings.about.ourStory.title' => '我們的故事',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} 源於一個簡單的挫折：大多數卡路里追踪應用程式要麼過於複雜，要麼需要不斷的手動輸入，要麼收取高額的訂閱費用，或是在隱私上妥協。\n\n作為一名獨立開發者，我想要創建一款更簡單、更公平的應用程式——一款利用 AI 來減少努力、保持快速且免費使用，並尊重您的健康數據的應用程式。\n\n${appLabel} 是我希望能存在的應用程式：不需要帳戶、無追蹤、無廣告——只有清晰、實用的見解和您的健康目標。',
			'settings.about.privacy.title' => '您的隱私很重要',
			'settings.about.privacy.description' => '隱私不是事後之論 — 它是一個設計原則。這在實踐中意味著：',
			'settings.about.privacy.noAccounts' => '不需要帳戶\n立即使用應用程式。無需註冊，無身份驗證。',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => '無行為追蹤\n${appLabel} 不會監控您的活動、建立使用檔案或在應用程式或網站之間追蹤您。',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => '無廣告設計\n${appLabel} 的設計不依賴於廣告或數據驅動的變現方式。',
			'settings.about.privacy.noDataSelling' => '不販賣數據\n您的健康數據絕不會出售或分享給第三方。',
			'settings.about.privacy.localStorage' => '本地優先的存儲\n您的數據保持在您的設備上。',
			'settings.about.privacy.privacyPolicy' => '隱私政策',
			'settings.about.developer.title' => '由獨立開發者構建',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} 由一位獨立開發者構建和維護，專注於創造平靜、尊重隱私的健康軟體。\n\n您的反饋將被親自閱讀並幫助塑造應用程式的方向。',
			'settings.about.developer.website' => '網站',
			'settings.about.developer.email' => '電子郵件',
			'settings.about.feedback.title' => ({required Object appLabel}) => '喜歡 ${appLabel} 嗎？',
			'settings.about.feedback.description' => ({required Object appLabel}) => '您的反饋有助於使 ${appLabel} 對每個人都變得更好。',
			'settings.about.feedback.rateApp' => '在 Play 商店評分',
			'settings.about.feedback.sendFeedback' => '發送反饋',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => '建置 ${buildNumber}',
			'reminders.title' => '透過提醒保持正軌',
			'reminders.description' => '獲得溫和的提醒以記錄您的餐點，並保持一致的營養目標',
			'reminders.notificationsEnabled' => '通知已啟用',
			'reminders.notificationsDisabled' => '通知已禁用',
			'reminders.enabledSubtitle' => '您將收到用餐提醒',
			'reminders.disabledSubtitle' => '啟用通知以獲得用餐提醒',
			'reminders.mealReminders' => '餐點提醒',
			'reminders.breakfast' => '早餐',
			'reminders.lunch' => '午餐',
			'reminders.dinner' => '晚餐',
			'reminders.snack' => '小吃',
			'reminders.unknown' => '未知',
			'reminders.change' => '更改',
			'reminders.enableNotifications' => '啟用通知',
			'reminders.skipForNow' => '暫時跳過',
			'reminders.saveChanges' => '保存變更',
			'reminders.enabledSuccessfully' => '通知成功啟用！',
			'reminders.permissionDenied' => '通知權限被拒絕',
			'reminders.errorEnabling' => ({required Object error}) => '啟用通知時出錯：${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => '完成設置時出錯：${error}',
			'notifications.breakfast.title' => '早餐時間！🍳',
			'notifications.breakfast.body' => '不要忘記記錄您的早餐',
			'notifications.lunch.title' => '午餐時間！🥗',
			'notifications.lunch.body' => '是時候記錄您的午餐了',
			'notifications.dinner.title' => '晚餐時間！🍽️',
			'notifications.dinner.body' => '不要忘記記錄您的晚餐',
			'notifications.snack.title' => '小吃時間！🍎',
			'notifications.snack.body' => '是時候享受健康的小吃了',
			'notifications.test.title' => '測試通知',
			'login.title' => '登入',
			'login.signInWithGoogle' => '使用 Google 登入',
			'login.signInFailed' => 'Google 登入失敗或被取消。',
			'disclaimer.pleaseNote' => '請注意',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} 提供估算的營養信息。準確性取決於您的輸入和食物變化。僅作為指導，而非確定的來源。請諮詢專業人士以獲取個性化的飲食建議。',
			'disclaimer.snap.portionSize.title' => '份量大小',
			'disclaimer.snap.portionSize.description' => '估算的準確性在很大程度上依賴於您對份量大小的正確評估。',
			'disclaimer.snap.preparationMethods.title' => '預備方法',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => '烹調方式可顯著影響食物的營養成分。${appLabel} 的估算可能不總是考慮這些變化。',
			'disclaimer.snap.ingredients.title' => '成分',
			'disclaimer.snap.ingredients.description' => '包含許多隱藏成分的複雜菜餚可能會導致估計不夠準確。',
			'disclaimer.snap.databaseLimitations.title' => '數據庫限制',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} 的食品數據庫非常廣泛，但可能不包括每個單獨的食物項目或變體。',
			'disclaimer.weightEstimate.title' => '關於體重估算',
			'disclaimer.weightEstimate.description' => '預測的體重變化是基於簡單的卡路里攝入與消耗模型的理論估算。僅用於動機指導，不作為您的實際體重的預測。',
			'disclaimer.weightEstimate.calorieAccuracy.title' => '卡路里準確性',
			'disclaimer.weightEstimate.calorieAccuracy.description' => '此估算僅與您紀錄的卡路里攝入和消耗同樣準確。不正確的紀錄將導致不準確的預測。',
			'disclaimer.weightEstimate.biologicalFactors.title' => '生物因素',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => '實際的體重減輕/增加受到代謝、荷爾蒙、睡眠、壓力、水合作用及其他個人因素的影響，這些都是 ${appLabel} 無法測量的。',
			'disclaimer.weightEstimate.waterWeight.title' => '水分體重和波動',
			'disclaimer.weightEstimate.waterWeight.description' => '正常的每日體重可能因水分儲存、消化和計時而顯著波動。此估算不考慮這些每日變化。',
			'disclaimer.weightEstimate.professionalGuidance.title' => '專業指導',
			'disclaimer.weightEstimate.professionalGuidance.description' => '不要用此估算來做醫療決定。始終諮詢醫療專業人士或註冊營養師以獲取個性化的體重管理建議。',
			'disclaimer.healthMetrics.description' => '這些指標有助於您了解身體的能量需求並引導您的營養目標。',
			'disclaimer.healthMetrics.bmr.title' => '基礎代謝率 (BMR)',
			'disclaimer.healthMetrics.bmr.description' => '基礎代謝率 (BMR) 是您身體在靜息狀態下為了維持基本功能（如呼吸和循環）而燃燒的卡路里數量。BMR 取決於您的年齡、性別、身高和體重。較高的 BMR 意味著您的身體在靜息狀態下自然燃燒更多的卡路里，通常是因為肌肉量較多、年齡較輕或為男性。而較低的 BMR 通常表示肌肉量較少、年齡較大或為女性。',
			'disclaimer.healthMetrics.tdee.title' => '每日總能量消耗 (TDEE)',
			'disclaimer.healthMetrics.tdee.description' => '每日總能量消耗 (TDEE) 是您每天燃燒的總卡路里，包括 BMR 加上身體活動和日常運動消耗的卡路里。TDEE 取決於您的 BMR 和活動水平。較高的 TDEE 意味著您整體燃燒更多卡路里，通常是因為活動量更大或 BMR 較高；而較低的 TDEE 則暗示日常活動較少或 BMR 較低。',
			'disclaimer.healthMetrics.dailyGoal.title' => '每日目標',
			'disclaimer.healthMetrics.dailyGoal.description' => '每日目標是根據您的 TDEE 和體重目標推薦的每日卡路里攝入量。若要減肥，您需要攝入的卡路里少於您的 TDEE；若要維持體重，則需與 TDEE 持平；若要增重，您需攝入的卡路里超過您的 TDEE。這有助於您以健康的速度達成所期望的體重變化。',
			'disclaimer.calorieExpenditure.title' => '熱量消耗估算',
			'disclaimer.calorieExpenditure.description' => '當 Health Connect 資料不可用時，我們會使用您的基礎代謝率 (BMR) 和活動量 (TDEE)，並依照一天已過的比例，來估算今天已消耗的熱量。',
			'disclaimer.calorieExpenditure.howCalculated.title' => '估算方式',
			'disclaimer.calorieExpenditure.howCalculated.description' => '我們會根據您的個人資料計算每日總熱量消耗 (TDEE)，然後以一天中已過的比例（小時 + 分鐘）/ 24 乘上該值，來估算目前為止已消耗的熱量。',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => '專業建議',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => '請勿以此估算作為醫療決策的依據。欲取得個人化的體重管理建議，請務必諮詢醫療專業人員或註冊營養師。',
			'common.close' => '關閉',
			'common.kContinue' => '繼續',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '你喜歡使用${appLabel}嗎？',
			'feedbackRating.yes' => '是的，我很喜歡',
			'feedbackRating.no' => '不是很滿意',
			'feedbackRating.rateStepHeading' => '在 Google Play 商店評分',
			'feedbackRating.emailStepHeading' => '透過電子郵件提供回饋',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => '快速評分能幫助其他人找到 ${appLabel}，也讓我們得以持續開發。願意花一點時間留下評分嗎？',
			'feedbackRating.shareFeedbackViaEmail' => '你的回饋會形塑下一步方向 — 我們會閱讀每一則訊息。你想透過電子郵件分享你的想法嗎？',
			'feedbackRating.rateCta' => '在 Google Play 評分',
			'feedbackRating.maybeLater' => '稍後再說',
			'feedbackRating.sendFeedback' => '提供回饋',
			'feedbackRating.noThanks' => '不用，謝謝',
			'feedbackRating.aboutUsDescription' => '由一個小團隊用心打造。我們重視隱私、追求簡單，並致力於幫助你建立更健康的飲食習慣。',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '想知道是誰在打造 ${appLabel} 嗎？請參閱 ',
			'feedbackRating.aboutUsLinkLabel' => '關於我們',
			'feedbackRating.thankYouMessage' => '謝謝！我們下次會再問您。',
			'health.syncFailed' => '無法同步到 Health Connect',
			'health.mealSynced' => '餐點已與 Health Connect 同步',
			_ => null,
		};
	}
}
