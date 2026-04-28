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
class TranslationsZhCn with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhCn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zhCn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-CN>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsZhCn _root = this; // ignore: unused_field

	@override 
	TranslationsZhCn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsZhCn(meta: meta ?? this.$meta);

	// Translations
	@override String get language => '中文（中国）';
	@override String get flag => '🇨🇳';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsZhCn errors = _TranslationsErrorsZhCn._(_root);
	@override late final _TranslationsOnboardingZhCn onboarding = _TranslationsOnboardingZhCn._(_root);
	@override late final _TranslationsTabsZhCn tabs = _TranslationsTabsZhCn._(_root);
	@override late final _TranslationsHomeZhCn home = _TranslationsHomeZhCn._(_root);
	@override late final _TranslationsHistoryZhCn history = _TranslationsHistoryZhCn._(_root);
	@override late final _TranslationsMealZhCn meal = _TranslationsMealZhCn._(_root);
	@override late final _TranslationsFavoritesZhCn favorites = _TranslationsFavoritesZhCn._(_root);
	@override late final _TranslationsProfileZhCn profile = _TranslationsProfileZhCn._(_root);
	@override late final _TranslationsHealthScoreZhCn healthScore = _TranslationsHealthScoreZhCn._(_root);
	@override late final _TranslationsEditProfileZhCn editProfile = _TranslationsEditProfileZhCn._(_root);
	@override late final _TranslationsSettingsZhCn settings = _TranslationsSettingsZhCn._(_root);
	@override late final _TranslationsRemindersZhCn reminders = _TranslationsRemindersZhCn._(_root);
	@override late final _TranslationsNotificationsZhCn notifications = _TranslationsNotificationsZhCn._(_root);
	@override late final _TranslationsLoginZhCn login = _TranslationsLoginZhCn._(_root);
	@override late final _TranslationsDisclaimerZhCn disclaimer = _TranslationsDisclaimerZhCn._(_root);
	@override late final _TranslationsCommonZhCn common = _TranslationsCommonZhCn._(_root);
	@override late final _TranslationsFeedbackRatingZhCn feedbackRating = _TranslationsFeedbackRatingZhCn._(_root);
	@override late final _TranslationsHealthZhCn health = _TranslationsHealthZhCn._(_root);
}

// Path: errors
class _TranslationsErrorsZhCn implements TranslationsErrorsEn {
	_TranslationsErrorsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => '你的请求太频繁了。请稍等片刻再试。';
	@override String get networkError => '网络错误。请检查你的网络连接。';
	@override String get unknownError => '出了点问题。请稍后再试。';
	@override String get loadingProfileData => '加载资料数据出错';
	@override String get somethingWentWrong => '出了点问题。';
	@override String get retry => '重试';
}

// Path: onboarding
class _TranslationsOnboardingZhCn implements TranslationsOnboardingEn {
	_TranslationsOnboardingZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '欢迎使用 ${appLabel}';
	@override String get subtitle => '由 AI 驱动的个人营养助手';
	@override String get getStarted => '开始使用';
	@override late final _TranslationsOnboardingFeaturesZhCn features = _TranslationsOnboardingFeaturesZhCn._(_root);
	@override late final _TranslationsOnboardingGenderZhCn gender = _TranslationsOnboardingGenderZhCn._(_root);
	@override late final _TranslationsOnboardingHeightZhCn height = _TranslationsOnboardingHeightZhCn._(_root);
	@override late final _TranslationsOnboardingWeightZhCn weight = _TranslationsOnboardingWeightZhCn._(_root);
	@override late final _TranslationsOnboardingAgeZhCn age = _TranslationsOnboardingAgeZhCn._(_root);
	@override late final _TranslationsOnboardingBmiScaleZhCn bmiScale = _TranslationsOnboardingBmiScaleZhCn._(_root);
	@override late final _TranslationsOnboardingWeightGoalZhCn weightGoal = _TranslationsOnboardingWeightGoalZhCn._(_root);
	@override late final _TranslationsOnboardingActivityLevelZhCn activityLevel = _TranslationsOnboardingActivityLevelZhCn._(_root);
	@override late final _TranslationsOnboardingHealthConnectZhCn healthConnect = _TranslationsOnboardingHealthConnectZhCn._(_root);
	@override late final _TranslationsOnboardingReinforcementZhCn reinforcement = _TranslationsOnboardingReinforcementZhCn._(_root);
}

// Path: tabs
class _TranslationsTabsZhCn implements TranslationsTabsEn {
	_TranslationsTabsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get dashboard => '主页';
	@override String get history => '历史';
}

// Path: home
class _TranslationsHomeZhCn implements TranslationsHomeEn {
	_TranslationsHomeZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryZhCn aiSummary = _TranslationsHomeAiSummaryZhCn._(_root);
	@override late final _TranslationsHomeDailyGoalZhCn dailyGoal = _TranslationsHomeDailyGoalZhCn._(_root);
	@override late final _TranslationsHomeDailySummaryZhCn dailySummary = _TranslationsHomeDailySummaryZhCn._(_root);
	@override late final _TranslationsHomeIntakeProgressZhCn intakeProgress = _TranslationsHomeIntakeProgressZhCn._(_root);
	@override late final _TranslationsHomeIntakeHistoryZhCn intakeHistory = _TranslationsHomeIntakeHistoryZhCn._(_root);
	@override late final _TranslationsHomeMealLogZhCn mealLog = _TranslationsHomeMealLogZhCn._(_root);
	@override late final _TranslationsHomeMealDescriptionZhCn mealDescription = _TranslationsHomeMealDescriptionZhCn._(_root);
	@override late final _TranslationsHomeFavoriteMealsZhCn favoriteMeals = _TranslationsHomeFavoriteMealsZhCn._(_root);
	@override late final _TranslationsHomeMealSnapZhCn mealSnap = _TranslationsHomeMealSnapZhCn._(_root);
	@override late final _TranslationsHomeConnectHealthZhCn connectHealth = _TranslationsHomeConnectHealthZhCn._(_root);
}

// Path: history
class _TranslationsHistoryZhCn implements TranslationsHistoryEn {
	_TranslationsHistoryZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get noMeals => '暂无餐食记录';
	@override String get emptyMessage => '拍下你上一次的餐食照片以在此记录。';
	@override String get today => '今天';
	@override String get yesterday => '昨天';
}

// Path: meal
class _TranslationsMealZhCn implements TranslationsMealEn {
	_TranslationsMealZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get ohNo => '糟糕！';
	@override String get delete => '删除';
	@override String get editMeal => '编辑餐食';
	@override String get addMeal => '添加餐食';
	@override String get saveMeal => '保存餐食';
	@override String get save => '保存';
	@override String get mealName => '餐食名称';
	@override String get mealNameHint => '例如：炒蛋配吐司';
	@override String get mealQuantity => '份量';
	@override String get mealQuantityHint => '例如：1 碗，2 片';
	@override String get timeOfMeal => '用餐时间';
	@override String get timeOfMealHint => '选择你的用餐时间';
	@override String get mealType => '用餐类型';
	@override late final _TranslationsMealNutritionZhCn nutrition = _TranslationsMealNutritionZhCn._(_root);
	@override late final _TranslationsMealDeleteConfirmationZhCn deleteConfirmation = _TranslationsMealDeleteConfirmationZhCn._(_root);
	@override String get addedToLog => '餐食已添加到你的记录！';
	@override String couldNotAdd({required Object error}) => '无法添加餐食：${error}';
	@override String get savedSuccessfully => '餐食添加成功！';
	@override String get updatedSuccessfully => '餐食更新成功！';
	@override String errorSaving({required Object error}) => '保存餐食出错：${error}';
	@override String get removedFromFavorites => '已从常用中移除！';
	@override String get savedAsFavorite => '餐食已设为常用！';
	@override String get unfavorite => '取消常用';
	@override String couldNotUpdateFavorite({required Object error}) => '无法更新常用状态：${error}';
	@override String get feedbackThanks => '感谢你的反馈！';
	@override String get reanalysisUpdated => '已根据你的反馈更新餐食分析。';
	@override String failedToProcess({required Object error}) => '处理失败：${error}';
	@override String failedToProcessImage({required Object error}) => '处理图片失败：${error}';
	@override String errorCompressingImage({required Object error}) => '压缩图片出错：${error}';
	@override String get failedToSave => '保存数据失败。请重试。';
	@override String get skip => '跳过';
	@override late final _TranslationsMealVariationZhCn variation = _TranslationsMealVariationZhCn._(_root);
	@override late final _TranslationsMealAnalysisZhCn analysis = _TranslationsMealAnalysisZhCn._(_root);
	@override late final _TranslationsMealFeedbackZhCn feedback = _TranslationsMealFeedbackZhCn._(_root);
}

// Path: favorites
class _TranslationsFavoritesZhCn implements TranslationsFavoritesEn {
	_TranslationsFavoritesZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '常用';
	@override String get empty => '还没有常用餐食。';
	@override String get searchPlaceholder => '搜索常用餐食';
	@override String get searchEmptyTitle => '没有与搜索匹配的常用项';
	@override String get searchEmptySubtitle => '试试不同的餐食名称、份量或用餐类型。';
	@override String get sortLabel => '排序常用项';
	@override String get undo => '撤销';
	@override String removed({required Object name}) => '已将 ${name} 从常用中移除';
	@override late final _TranslationsFavoritesSortOptionsZhCn sortOptions = _TranslationsFavoritesSortOptionsZhCn._(_root);
}

// Path: profile
class _TranslationsProfileZhCn implements TranslationsProfileEn {
	_TranslationsProfileZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '个人资料';
	@override String get noProfileData => '未找到资料数据';
	@override String get yourProfile => '你的资料';
	@override String get viewAndManage => '查看并管理你的健康信息';
	@override late final _TranslationsProfileSectionsZhCn sections = _TranslationsProfileSectionsZhCn._(_root);
	@override String get gender => '性别';
	@override String get height => '身高';
	@override String get weight => '体重';
	@override String get age => '年龄';
	@override String get weightGoal => '体重目标';
	@override String get targetWeight => '目标体重';
	@override String get activityLevel => '活动水平';
	@override String get healthMetrics => '健康指标';
	@override String get notSet => '未设置';
	@override String get years => '岁';
	@override String get updatedSuccessfully => '资料更新成功！';
	@override late final _TranslationsProfileCalculatedValuesZhCn calculatedValues = _TranslationsProfileCalculatedValuesZhCn._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreZhCn implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '健康分';
	@override String get whyThisScore => '为什么是这个分数？';
	@override String get note => '该分数是基于识别到的食材与营养密度的 AI 估计。个体饮食建议请始终咨询专业人士。';
	@override String get unhealthy => '不健康';
	@override String get healthy => '健康';
	@override String get neutral => '中性';
}

// Path: editProfile
class _TranslationsEditProfileZhCn implements TranslationsEditProfileEn {
	_TranslationsEditProfileZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '编辑资料';
	@override late final _TranslationsEditProfileSectionsZhCn sections = _TranslationsEditProfileSectionsZhCn._(_root);
	@override String get gender => '性别';
	@override String get dateOfBirth => '出生日期';
	@override String get height => '身高';
	@override String get weight => '体重';
	@override String get weightGoal => '体重目标';
	@override String get activityLevel => '活动水平';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get unitCm => '厘米';
	@override String get unitFt => '英尺';
	@override String get unitKg => '千克';
	@override String get unitLbs => '磅';
	@override String get metricCm => '公制（cm）';
	@override String get imperialFtIn => '英制（ft/in）';
	@override String get metricKg => '公制（kg）';
	@override String get imperialLbs => '英制（lbs）';
	@override late final _TranslationsEditProfileGendersZhCn genders = _TranslationsEditProfileGendersZhCn._(_root);
	@override late final _TranslationsEditProfileWeightGoalsZhCn weightGoals = _TranslationsEditProfileWeightGoalsZhCn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsZhCn activityLevels = _TranslationsEditProfileActivityLevelsZhCn._(_root);
}

// Path: settings
class _TranslationsSettingsZhCn implements TranslationsSettingsEn {
	_TranslationsSettingsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '设置';
	@override late final _TranslationsSettingsSectionsZhCn sections = _TranslationsSettingsSectionsZhCn._(_root);
	@override late final _TranslationsSettingsEditProfileZhCn editProfile = _TranslationsSettingsEditProfileZhCn._(_root);
	@override late final _TranslationsSettingsLanguageZhCn language = _TranslationsSettingsLanguageZhCn._(_root);
	@override late final _TranslationsSettingsHeightUnitZhCn heightUnit = _TranslationsSettingsHeightUnitZhCn._(_root);
	@override late final _TranslationsSettingsWeightUnitZhCn weightUnit = _TranslationsSettingsWeightUnitZhCn._(_root);
	@override late final _TranslationsSettingsMealRemindersZhCn mealReminders = _TranslationsSettingsMealRemindersZhCn._(_root);
	@override late final _TranslationsSettingsThemeZhCn theme = _TranslationsSettingsThemeZhCn._(_root);
	@override late final _TranslationsSettingsSendFeedbackZhCn sendFeedback = _TranslationsSettingsSendFeedbackZhCn._(_root);
	@override late final _TranslationsSettingsExportMealHistoryZhCn exportMealHistory = _TranslationsSettingsExportMealHistoryZhCn._(_root);
	@override late final _TranslationsSettingsClearAllDataZhCn clearAllData = _TranslationsSettingsClearAllDataZhCn._(_root);
	@override late final _TranslationsSettingsDebugOptionsZhCn debugOptions = _TranslationsSettingsDebugOptionsZhCn._(_root);
	@override String get developerModeEnabled => '已启用开发者模式！';
	@override late final _TranslationsSettingsHealthConnectZhCn healthConnect = _TranslationsSettingsHealthConnectZhCn._(_root);
	@override late final _TranslationsSettingsAboutZhCn about = _TranslationsSettingsAboutZhCn._(_root);
	@override late final _TranslationsSettingsAppInfoZhCn appInfo = _TranslationsSettingsAppInfoZhCn._(_root);
}

// Path: reminders
class _TranslationsRemindersZhCn implements TranslationsRemindersEn {
	_TranslationsRemindersZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '用提醒保持节奏';
	@override String get description => '获得温和的提醒，记录餐食并在营养目标上持续前进';
	@override String get notificationsEnabled => '已启用通知';
	@override String get notificationsDisabled => '未启用通知';
	@override String get enabledSubtitle => '你将收到用餐提醒';
	@override String get disabledSubtitle => '启用通知以接收用餐提醒';
	@override String get mealReminders => '用餐提醒';
	@override String get breakfast => '早餐';
	@override String get lunch => '午餐';
	@override String get dinner => '晚餐';
	@override String get snack => '加餐';
	@override String get unknown => '未知';
	@override String get change => '更改';
	@override String get enableNotifications => '启用通知';
	@override String get skipForNow => '暂时跳过';
	@override String get saveChanges => '保存更改';
	@override String get enabledSuccessfully => '通知启用成功！';
	@override String get permissionDenied => '通知权限被拒绝';
	@override String errorEnabling({required Object error}) => '启用通知出错：${error}';
	@override String errorCompletingSetup({required Object error}) => '完成设置出错：${error}';
}

// Path: notifications
class _TranslationsNotificationsZhCn implements TranslationsNotificationsEn {
	_TranslationsNotificationsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastZhCn breakfast = _TranslationsNotificationsBreakfastZhCn._(_root);
	@override late final _TranslationsNotificationsLunchZhCn lunch = _TranslationsNotificationsLunchZhCn._(_root);
	@override late final _TranslationsNotificationsDinnerZhCn dinner = _TranslationsNotificationsDinnerZhCn._(_root);
	@override late final _TranslationsNotificationsSnackZhCn snack = _TranslationsNotificationsSnackZhCn._(_root);
	@override late final _TranslationsNotificationsTestZhCn test = _TranslationsNotificationsTestZhCn._(_root);
}

// Path: login
class _TranslationsLoginZhCn implements TranslationsLoginEn {
	_TranslationsLoginZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '登录';
	@override String get signInWithGoogle => '使用 Google 登录';
	@override String get signInFailed => 'Google 登录失败或已取消。';
}

// Path: disclaimer
class _TranslationsDisclaimerZhCn implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => '请注意';
	@override late final _TranslationsDisclaimerSnapZhCn snap = _TranslationsDisclaimerSnapZhCn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateZhCn weightEstimate = _TranslationsDisclaimerWeightEstimateZhCn._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsZhCn healthMetrics = _TranslationsDisclaimerHealthMetricsZhCn._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureZhCn calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureZhCn._(_root);
}

// Path: common
class _TranslationsCommonZhCn implements TranslationsCommonEn {
	_TranslationsCommonZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get close => '关闭';
	@override String get kContinue => '继续';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingZhCn implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '喜欢 ${appLabel} 吗？';
	@override String get yes => '是的，我很喜欢';
	@override String get no => '不太满意';
	@override String get rateStepHeading => '在 Play 商店评分';
	@override String get emailStepHeading => '通过邮件发送反馈';
	@override String soloDevMessage({required Object appLabel}) => '简短的评分有助于他人发现 ${appLabel}，也能支持持续开发。愿意花一点时间评价吗？';
	@override String get shareFeedbackViaEmail => '你的反馈将影响接下来的方向——我们会阅读每一条留言。愿意通过邮件分享想法吗？';
	@override String get rateCta => '在 Play 商店评分';
	@override String get maybeLater => '稍后再说';
	@override String get sendFeedback => '发送反馈';
	@override String get noThanks => '不用了，谢谢';
	@override String get aboutUsDescription => '由一个小团队用心打造。我们专注于隐私、简洁，以及帮助你养成更好的饮食习惯。';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '想知道是谁在背后打造 ${appLabel}？查看 ';
	@override String get aboutUsLinkLabel => '关于我们';
	@override String get thankYouMessage => '谢谢！我们稍后再问。';
}

// Path: health
class _TranslationsHealthZhCn implements TranslationsHealthEn {
	_TranslationsHealthZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => '无法同步到 Health Connect';
	@override String get mealSynced => '餐食已与 Health Connect 同步';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesZhCn implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionZhCn foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionZhCn._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisZhCn aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisZhCn._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationZhCn healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationZhCn._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderZhCn implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的性别是？';
	@override String get description => '性别有助于我们准确计算你的基础代谢率（BMR）。';
	@override String get next => '下一步';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightZhCn implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的身高是多少？';
	@override String get description => '你的身高有助于我们准确计算 BMI 和能量需求。';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get next => '下一步';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightZhCn implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => '你目前的体重是多少？';
	@override String get currentDescription => '当前体重对于个性化你的每日目标至关重要。';
	@override String get targetTitle => '你的目标体重是多少？';
	@override String get targetDescription => '设定目标体重有助于我们制定长期计划。';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get next => '下一步';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeZhCn implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的生日是？';
	@override String get description => '你的年龄有助于我们准确计算你的卡路里需求。';
	@override String get next => '下一步';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleZhCn implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get underweight => '偏低';
	@override String get healthy => '健康';
	@override String get overweight => '偏高';
	@override String get obese => '肥胖';
	@override late final _TranslationsOnboardingBmiScaleCategoriesZhCn categories = _TranslationsOnboardingBmiScaleCategoriesZhCn._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesZhCn messages = _TranslationsOnboardingBmiScaleMessagesZhCn._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalZhCn implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的目标是什么？';
	@override String get description => '选择最能描述你想达成目标的选项';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelZhCn implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的日常活动量如何？';
	@override String get description => '这有助于我们更准确地计算你的每日热量需求';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectZhCn implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '连接 Health Connect';
	@override String get description => '同步你的健康数据，获得更深入的洞察与自动卡路里追踪';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingZhCn automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingZhCn._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsZhCn progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsZhCn._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationZhCn seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationZhCn._(_root);
	@override String get connected => '已连接 Health Connect';
	@override String get notConnected => '未连接 Health Connect';
	@override String get setup => '设置 Health Connect';
	@override String get skipForNow => '暂时跳过';
	@override String get statusConnected => 'Health Connect 已连接。';
	@override String get statusSuccess => 'Health Connect 已成功连接！';
	@override String statusPermissionDenied({required Object appLabel}) => '权限被拒绝。请在手机设置中为 ${appLabel} 启用 Health Connect 权限。';
	@override String statusError({required Object error}) => '设置 Health Connect 出错：${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementZhCn implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessZhCn trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessZhCn._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileZhCn healthProfile = _TranslationsOnboardingReinforcementHealthProfileZhCn._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleZhCn goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleZhCn._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryZhCn implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的 AI 总结';
	@override String get logMore => '接下来几天多记录一些餐食，即可获得你的个性化 AI 洞察。';
	@override String get loading => '正在加载你的总结...';
	@override String mealCount({required Object count}) => '已记录 ${count} 次用餐';
	@override String macroBalanceScore({required Object score}) => '平衡评分 ${score}';
	@override String get topFoods => '常吃食物';
	@override String get trendUp => '卡路里上升趋势';
	@override String get trendDown => '卡路里下降趋势';
	@override String get trendSteady => '卡路里保持稳定';
	@override String generatedAt({required Object time}) => '已更新 ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalZhCn implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '设定你的每日目标';
	@override String get titleSet => '你的每日目标';
	@override String get description => '准备好开启健康之旅了吗？在下方设定你的每日卡路里目标来启动进程。';
	@override String get descriptionSet => '你的指南针已就位！这是引导你的每日卡路里目标。';
	@override String get yourGoal => '你的目标';
	@override String get goal => '目标';
	@override String get dailyCalories => '每日卡路里（kcal）';
	@override String get setGoal => '设定目标';
	@override String get intake => '摄入';
	@override String get burned => '消耗';
	@override String get weightImpact => '对体重的影响';
	@override String get estLoss => '预估减少';
	@override String get estGain => '预估增加';
	@override String get kcal => '千卡';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryZhCn implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '每日总结';
	@override String get calories => '卡路里';
	@override String get carbs => '碳水';
	@override String get protein => '蛋白质';
	@override String get fat => '脂肪';
	@override String get fiber => '膳食纤维';
	@override String get grams => '克';
	@override String get chartAccessibilityLabel => '宏量营养素图表';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressZhCn implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '今日宏量分布';
	@override String get target => '目标';
	@override String get current => '当前';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryZhCn implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '7 天宏量历史';
	@override String get trendTitle => '今日趋势';
	@override String peakHour({required Object hour}) => '峰值：${hour}:00';
	@override String get noHistoryYet => '暂无历史';
	@override String get startLogging => '开始记录用餐，以在此查看\n你的 7 天宏量趋势';
}

// Path: home.mealLog
class _TranslationsHomeMealLogZhCn implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '已记录的餐食';
	@override String get emptyMessage => '拍下你上一次的餐食照片以在此记录。';
	@override String get noMealsToday => '今天暂无用餐记录';
	@override String get seeAllMeals => '查看全部餐食';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionZhCn implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 快速添加';
	@override String get description => '描述你的餐食，让 AI 处理细节。';
	@override String get hint => '例如：早餐我吃了一大碗燕麦粥，加了一根切片香蕉和一勺乳清蛋白粉 ...';
	@override String get analyzeMeal => '分析餐食';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsZhCn implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '常用餐食';
	@override String get description => '快速添加你的一道常用餐食。';
	@override String get noFavorites => '还没有常用餐食。';
	@override String get addFavoriteHint => '点击餐食上的星标将其设为常用。';
	@override String get seeAll => '查看全部';
	@override String get add => '添加';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapZhCn implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '拍照并追踪你的餐食';
	@override String get description => '使用相机拍摄食物照片进行 AI 分析。';
	@override String get openCamera => '打开相机';
	@override String get gallery => '相册';
	@override String get compressingPhoto => '正在优化照片…';
	@override String get uploadingPhoto => '正在上传照片…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthZhCn implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '与 Health Connect 同步';
	@override String get description => '将你的营养数据与 Health Connect 同步';
	@override String get install => '安装';
	@override String get connect => '连接';
}

// Path: meal.nutrition
class _TranslationsMealNutritionZhCn implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get calories => '卡路里';
	@override String get carbs => '碳水（g）';
	@override String get protein => '蛋白质（g）';
	@override String get fat => '脂肪（g）';
	@override String get fiber => '膳食纤维（g）';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationZhCn implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '删除餐食';
	@override String get message => '确定要删除这条餐食记录吗？';
	@override String get cancel => '取消';
	@override String get delete => '删除';
}

// Path: meal.variation
class _TranslationsMealVariationZhCn implements TranslationsMealVariationEn {
	_TranslationsMealVariationZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => '第 ${current}/${total} 题';
	@override String get noVariationsAvailable => '暂无可用变体';
}

// Path: meal.analysis
class _TranslationsMealAnalysisZhCn implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 餐食分析';
	@override String get reassurance => '通常只需几秒。';
	@override String get stepStarted => '开始处理…';
	@override String get stepDecomposition => '正在理解你的餐食…';
	@override String get stepIngredients => '正在匹配营养数据库…';
	@override String get stepUncertainty => '正在检查置信度…';
	@override String get stepMealTypeQuestion => '快好了…';
	@override String get stepResult => '正在完成结果…';
	@override String get stepError => '出现了问题';
	@override String get stepDefault => '正在分析你的餐食…';
	@override String get progressUnderstand => '理解';
	@override String get progressMatch => '匹配';
	@override String get progressCheck => '检查';
	@override String get progressFinish => '完成';
	@override String ingredientsLine({required Object count}) => '检测到 ${count} 种食材';
	@override String get ingredientsPending => '正在扫描食材…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackZhCn implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'What looks wrong?';
	@override String get subtitle => 'Help us improve the analysis by selecting one or more issues.';
	@override String get tellUsMore => 'Tell us more';
	@override String get describeIncorrect => 'Describe what was incorrect';
	@override String get submit => 'Submit';
	@override String get issueFoodIdentification => 'Food identification';
	@override String get issuePortionSize => 'Portion size';
	@override String get issueCalorieDistribution => 'Calorie distribution';
	@override String get issueMacrosWrong => 'Macros are wrong';
	@override String get issueMissingItems => 'Missing items';
	@override String get issueExtraItems => 'Extra items';
	@override String get issueOther => 'Other';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsZhCn implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get recent => '最近添加';
	@override String get calories => '卡路里';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsZhCn implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get profile => '个人资料';
	@override String get basicInformation => '基础信息';
	@override String get goalsAndActivity => '目标与活动';
	@override String get calculatedValues => '计算值';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesZhCn implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => '每日目标';
	@override String get calPerDay => '千卡/天';
	@override String get notAvailable => '不可用';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsZhCn implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => '个人信息';
	@override String get physicalMeasurements => '身体测量';
	@override String get goalsAndActivity => '目标与活动';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersZhCn implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get male => '男性';
	@override String get female => '女性';
	@override String get other => '其他';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsZhCn implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightZhCn loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightZhCn._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightZhCn maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightZhCn._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightZhCn gainWeight = _TranslationsEditProfileWeightGoalsGainWeightZhCn._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsZhCn implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryZhCn sedentary = _TranslationsEditProfileActivityLevelsSedentaryZhCn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveZhCn lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveZhCn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveZhCn moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveZhCn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveZhCn veryActive = _TranslationsEditProfileActivityLevelsVeryActiveZhCn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveZhCn extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveZhCn._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsZhCn implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get profile => '个人资料';
	@override String get localization => '本地化';
	@override String get notifications => '通知';
	@override String get healthConnect => 'Health Connect';
	@override String get supportAndLegal => '支持与法律';
	@override String get about => '关于';
	@override String get dangerZone => '危险区域';
	@override String get developer => '开发者';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileZhCn implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '编辑资料';
	@override String get subtitle => '更新你的个人信息';
}

// Path: settings.language
class _TranslationsSettingsLanguageZhCn implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '语言';
	@override String get subtitle => '选择你偏好的语言';
	@override String get searchHint => '搜索语言...';
	@override String get noResults => '未找到结果';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitZhCn implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '身高单位';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitZhCn implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '体重单位';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersZhCn implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '用餐提醒';
	@override String get subtitle => '通过及时提醒保持进度';
}

// Path: settings.theme
class _TranslationsSettingsThemeZhCn implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '主题';
	@override String get light => '浅色';
	@override String get dark => '深色';
	@override String get system => '系统';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackZhCn implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '发送反馈';
	@override String subtitle({required Object appLabel}) => '帮助我们改进 ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} 应用反馈';
	@override String get emailBodyPrefix => '请在下方提供你的反馈：';
	@override String get appVersion => '应用版本';
	@override String get device => '设备';
	@override String get osVersion => '系统版本';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryZhCn implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '导出用餐历史';
	@override String get subtitle => '分享你记录餐食的 CSV 文件';
	@override String get shareText => '你的 Calorify 用餐历史导出';
	@override String failed({required Object error}) => '无法导出用餐历史：${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataZhCn implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '清除所有数据';
	@override String get subtitle => '不可逆地删除你的全部信息';
	@override String get confirmationTitle => '清除所有数据？';
	@override String get confirmationMessage => '此操作不可撤销。你记录的所有餐食、常用项和资料设置都将被永久删除。';
	@override String get cancel => '取消';
	@override String get clearEverything => '全部清除';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsZhCn implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '调试选项';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectZhCn implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => '查看并管理权限';
	@override late final _TranslationsSettingsHealthConnectUnavailableZhCn unavailable = _TranslationsSettingsHealthConnectUnavailableZhCn._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsZhCn permissions = _TranslationsSettingsHealthConnectPermissionsZhCn._(_root);
	@override String get managePermissions => '管理权限';
	@override String get openSettings => '打开 Health Connect 设置';
	@override String get requestPermissions => '请求权限';
	@override String get permissionRequestCancelledOrFailed => '权限请求被取消或失败。请重试，或在 Health Connect 设置中手动授予权限。';
	@override String get permissionRequestFailed => '无法请求权限。请重试，或在 Health Connect 设置中手动授予权限。';
	@override String get requestingPermissions => '请求中...';
}

// Path: settings.about
class _TranslationsSettingsAboutZhCn implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '关于';
	@override String get tagline => '快速、免费、隐私优先的卡路里意识';
	@override late final _TranslationsSettingsAboutOurStoryZhCn ourStory = _TranslationsSettingsAboutOurStoryZhCn._(_root);
	@override late final _TranslationsSettingsAboutPrivacyZhCn privacy = _TranslationsSettingsAboutPrivacyZhCn._(_root);
	@override late final _TranslationsSettingsAboutDeveloperZhCn developer = _TranslationsSettingsAboutDeveloperZhCn._(_root);
	@override late final _TranslationsSettingsAboutFeedbackZhCn feedback = _TranslationsSettingsAboutFeedbackZhCn._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoZhCn implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => '构建 ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastZhCn implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '早餐时间！ 🍳';
	@override String get body => '别忘了记录你的早餐';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchZhCn implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '午餐时间！ 🥗';
	@override String get body => '该记录你的午餐了';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerZhCn implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '晚餐时间！ 🍽️';
	@override String get body => '别忘了记录你的晚餐';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackZhCn implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '加餐时间！ 🍎';
	@override String get body => '来一份健康加餐吧';
}

// Path: notifications.test
class _TranslationsNotificationsTestZhCn implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '测试通知';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapZhCn implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} 提供的是营养信息估算。准确性取决于你的输入与食物差异。请将其作为参考，而非权威来源。个性化饮食建议请咨询专业人士。';
	@override late final _TranslationsDisclaimerSnapPortionSizeZhCn portionSize = _TranslationsDisclaimerSnapPortionSizeZhCn._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsZhCn preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsZhCn._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsZhCn ingredients = _TranslationsDisclaimerSnapIngredientsZhCn._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsZhCn databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsZhCn._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateZhCn implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '关于体重估算';
	@override String get description => '预测的体重变化基于“摄入热量 vs. 消耗热量”的理论模型，仅用于激励与参考，并非对你实际体重的精准预测。';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyZhCn calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyZhCn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsZhCn biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsZhCn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightZhCn waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightZhCn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhCn professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhCn._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsZhCn implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get description => '这些指标帮助你了解身体的能量需求，并指导你的营养目标。';
	@override late final _TranslationsDisclaimerHealthMetricsBmrZhCn bmr = _TranslationsDisclaimerHealthMetricsBmrZhCn._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeZhCn tdee = _TranslationsDisclaimerHealthMetricsTdeeZhCn._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalZhCn dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalZhCn._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureZhCn implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '卡路里消耗估算';
	@override String get description => '当无法获取 Health Connect 数据时，我们会基于你的基础代谢率（BMR）和活动水平（TDEE），并按当天已过去的时间比例进行缩放，来估算你今日已消耗的卡路里。';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedZhCn howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedZhCn._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhCn professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhCn._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionZhCn implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '智能食物识别';
	@override String get description => '拍张照片，让 AI 识别你的餐食';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisZhCn implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 分析';
	@override String get description => '根据你的描述即时获取营养数据';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationZhCn implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '健康连接';
	@override String get description => '连接 Health Connect 获取更深入的洞察';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesZhCn implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get underweight => '体重过低';
	@override String get healthyWeight => '健康体重';
	@override String get overweight => '超重';
	@override String get obese => '肥胖';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesZhCn implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get underweight => '我们可以帮助你通过营养密度更高的饮食，建立健康的增重计划，达到均衡体重。';
	@override String get healthy => '做得很好！你的数值在健康范围内。我们将帮助你保持活力与精力。';
	@override String overweight({required Object appLabel}) => '${appLabel} 将通过 AI 驱动的追踪简化你的旅程，助你更舒适地达成目标。';
	@override String get obese => '我们会以个性化指导和可持续策略，支持你的健康目标。';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingZhCn implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '自动卡路里追踪';
	@override String get description => '从你的健身应用中获取消耗数据';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsZhCn implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '进度洞察';
	@override String get description => '获得更详细的健康趋势分析';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationZhCn implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '无缝集成';
	@override String get description => '从你常用的健康应用同步数据';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessZhCn implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你并不孤单';
	@override String get genericMessage => '研究表明，坚持记录是长期成功的首要预测因素。';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '对于一位 ${age} 岁、性别为 ${gender}、目标是 ${goal} 的用户，坚持记录是成功的首要预测因素。';
	@override String closingMessage({required Object appLabel}) => '${appLabel} 让这一切比手动记录轻松 10 倍。';
	@override String get getStartedTitle => '准备好开始了吗？';
	@override String get tipPhoto => '拍下你的餐食即可即时分析';
	@override String get tipConsistency => '持续记录，收获有意义的进步';
	@override String get tipProgress => '每日跟踪你的进展以保持动力';
	@override String get button => '开始吧';
	@override String get defaultGender => '个人';
	@override String get defaultGoal => '更健康的你';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileZhCn implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的健康档案';
	@override String bmiDescription({required Object bmi}) => '根据你的数据，BMI 为 ${bmi}。';
	@override String get finalizeDescription => '让我们完成你的资料，以便个性化你的体验。';
	@override String get goalGain => '增重';
	@override String get goalLose => '减重';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => '要达到你的目标，你需要${direction}${diff}${unit}。';
	@override String get goalReached => '你已到达目标体重！我们会帮助你保持它。';
	@override String get button => '开始吧';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleZhCn implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '很棒的开始！';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => '你已迈出通往 ${goalText} 的第一步。由于你${activityText}，${appLabel} 会调整你的目标以匹配你的生活方式。';
	@override String get personalizedTargets => '个性化卡路里目标';
	@override String get aiMealDetection => 'AI 驱动的餐食识别';
	@override String get macroBreakdowns => '详细的宏量营养素分解';
	@override String get button => '开始吧';
	@override String get defaultGoal => '你的目标';
	@override String get defaultActivity => '活跃';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightZhCn implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '减重';
	@override String get description => '通过制造热量缺口来减重';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightZhCn implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '维持体重';
	@override String get description => '保持你当前的体重';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightZhCn implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '增重';
	@override String get description => '通过制造热量盈余来增重';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryZhCn implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '久坐';
	@override String get description => '很少或不运动';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveZhCn implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '轻度活动';
	@override String get description => '每周 1-3 天轻度运动';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveZhCn implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '中度活动';
	@override String get description => '每周 3-5 天中等强度运动';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveZhCn implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '高度活动';
	@override String get description => '每周 6-7 天高强度运动';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveZhCn implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '极高活动';
	@override String get description => '非常高强度运动或体力工作';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableZhCn implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '无法使用 Health Connect';
	@override String get description => '此设备不支持 Health Connect。请从 Play 商店安装 Health Connect（Android 9+），或更新至 Android 14+。';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsZhCn implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '权限';
	@override String get description => '为提供 Health Connect 集成，需要以下权限：';
	@override String get granted => '已授予';
	@override String get notGranted => '未授予';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhCn caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhCn._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadZhCn nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadZhCn._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteZhCn nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteZhCn._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryZhCn implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '我们的故事';
	@override String content({required Object appLabel}) => '${appLabel} 源于一个简单的挫败感：大多数卡路里追踪应用要么过于复杂、需要持续手动输入、收取高额订阅费，要么在隐私上做出妥协。\n\n作为一名独立开发者，我想做得更简单、更公平——用 AI 来减少操作负担，保持快速与免费，同时尊重你的健康数据。\n\n${appLabel} 是我也一直期望拥有的应用：无需账户、无跟踪、无广告——只提供清晰、实用的洞察，助你实现健康目标。';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyZhCn implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的隐私很重要';
	@override String get description => '隐私不是事后的补救——而是我们的设计原则。具体体现在：';
	@override String get noAccounts => '无需账户\n立即使用应用。无需注册、无需身份信息。';
	@override String noTracking({required Object appLabel}) => '无行为跟踪\n${appLabel} 不会监控你的活动、构建使用画像，也不会在应用或网站间跟踪你。';
	@override String noAds({required Object appLabel}) => '无广告设计\n${appLabel} 致力于在没有广告或数据驱动变现的情况下运行。';
	@override String get noDataSelling => '不出售数据\n你的健康数据绝不会被出售或与第三方共享。';
	@override String get localStorage => '本地优先存储\n你的数据保存在你的设备上。';
	@override String get privacyPolicy => '隐私政策';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperZhCn implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '由独立开发者打造';
	@override String description({required Object appLabel}) => '${appLabel} 由一位独立开发者构建和维护，专注于打造平和、尊重隐私的健康软件。\n\n我会亲自阅读反馈，而这些意见将影响应用的未来方向。';
	@override String get website => '网站';
	@override String get email => '邮箱';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackZhCn implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '喜欢 ${appLabel} 吗？';
	@override String description({required Object appLabel}) => '你的反馈能帮助 ${appLabel} 变得更好。';
	@override String get rateApp => '在 Play 商店评分';
	@override String get sendFeedback => '发送反馈';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeZhCn implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '份量大小';
	@override String get description => '估算的准确性在很大程度上取决于你对份量的正确评估。';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsZhCn implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '烹饪方式';
	@override String description({required Object appLabel}) => '烹饪方法会显著改变食物的营养成分。${appLabel} 的估算可能无法完全涵盖这些差异。';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsZhCn implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '食材';
	@override String get description => '食材复杂或隐藏配料较多的菜肴，可能会导致估算不够准确。';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsZhCn implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '数据库局限';
	@override String description({required Object appLabel}) => '${appLabel} 的食物数据库很庞大，但可能无法覆盖所有食物或其所有变体。';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyZhCn implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '卡路里准确性';
	@override String get description => '该估算依赖于你记录的卡路里摄入与消耗的准确性。不准确的记录将导致不准确的预测。';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsZhCn implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '生理因素';
	@override String description({required Object appLabel}) => '实际的增重/减重受代谢、激素、睡眠、压力、补水等个人因素影响，而这些是 ${appLabel} 无法测量的。';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightZhCn implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '水分与波动';
	@override String get description => '日常体重会因水分滞留、消化和时间而显著波动。本估算不考虑这些日常变化。';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhCn implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '专业建议';
	@override String get description => '请勿将本估算用于医疗决策。个性化的体重管理建议请始终咨询医疗专业人士或注册营养师。';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrZhCn implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => '基础代谢率（BMR）是指你的身体在静息状态下，为维持呼吸、循环等基本功能所消耗的卡路里。BMR 取决于年龄、性别、身高和体重。BMR 较高意味着身体在静息时自然消耗更多卡路里，通常与肌肉量更多、年龄较轻或男性相关；BMR 较低通常意味着肌肉量较少、年龄较大或女性。';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeZhCn implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => '每日总能量消耗（TDEE）是你每天消耗的总卡路里，包括 BMR 以及体力活动和日常活动产生的消耗。TDEE 取决于你的 BMR 与活动水平。TDEE 较高通常意味着更活跃或 BMR 较高；TDEE 较低则提示日常活动较少或 BMR 较低。';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalZhCn implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '每日目标';
	@override String get description => '每日目标是基于你的 TDEE 和体重目标所推荐的每日卡路里摄入。想减重时，摄入少于 TDEE；想维持体重时，摄入与 TDEE 大致相当；想增重时，摄入多于 TDEE。这有助于你以健康的节奏达成理想体重变化。';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedZhCn implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '估算如何计算';
	@override String get description => '我们计算你的 TDEE（基于你的资料），并将其乘以当天已过去的时间比例（小时 + 分钟）/ 24，以估算目前为止的消耗。';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhCn implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '专业建议';
	@override String get description => '请勿将此估算用于医疗决策。个性化建议请始终咨询医疗专业人士或注册营养师。';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhCn implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '读取总消耗卡路里';
	@override String get description => '允许应用从 Health Connect 读取你的总消耗卡路里。';
	@override String get usage => '该权限用于在应用中显示你每日的卡路里消耗，帮助你了解全天的总能量消耗。';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadZhCn implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '读取营养数据';
	@override String get description => '允许应用从 Health Connect 读取营养数据。';
	@override String get usage => '该权限允许应用读取其他与 Health Connect 连接的应用所记录的营养信息，为你提供全面的营养视图。';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteZhCn implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '写入营养数据';
	@override String get description => '允许应用向 Health Connect 写入营养数据。';
	@override String get usage => '该权限允许应用将你记录的餐食同步到 Health Connect，使你的营养数据可供你使用的其他健康与健身应用读取。';
}

/// The flat map containing all translations for locale <zh-CN>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsZhCn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => '中文（中国）',
			'flag' => '🇨🇳',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => '你的请求太频繁了。请稍等片刻再试。',
			'errors.networkError' => '网络错误。请检查你的网络连接。',
			'errors.unknownError' => '出了点问题。请稍后再试。',
			'errors.loadingProfileData' => '加载资料数据出错',
			'errors.somethingWentWrong' => '出了点问题。',
			'errors.retry' => '重试',
			'onboarding.welcome' => ({required Object appLabel}) => '欢迎使用 ${appLabel}',
			'onboarding.subtitle' => '由 AI 驱动的个人营养助手',
			'onboarding.getStarted' => '开始使用',
			'onboarding.features.foodRecognition.title' => '智能食物识别',
			'onboarding.features.foodRecognition.description' => '拍张照片，让 AI 识别你的餐食',
			'onboarding.features.aiAnalysis.title' => 'AI 分析',
			'onboarding.features.aiAnalysis.description' => '根据你的描述即时获取营养数据',
			'onboarding.features.healthIntegration.title' => '健康连接',
			'onboarding.features.healthIntegration.description' => '连接 Health Connect 获取更深入的洞察',
			'onboarding.gender.title' => '你的性别是？',
			'onboarding.gender.description' => '性别有助于我们准确计算你的基础代谢率（BMR）。',
			'onboarding.gender.next' => '下一步',
			'onboarding.height.title' => '你的身高是多少？',
			'onboarding.height.description' => '你的身高有助于我们准确计算 BMI 和能量需求。',
			'onboarding.height.metric' => '公制',
			'onboarding.height.imperial' => '英制',
			'onboarding.height.next' => '下一步',
			'onboarding.weight.currentTitle' => '你目前的体重是多少？',
			'onboarding.weight.currentDescription' => '当前体重对于个性化你的每日目标至关重要。',
			'onboarding.weight.targetTitle' => '你的目标体重是多少？',
			'onboarding.weight.targetDescription' => '设定目标体重有助于我们制定长期计划。',
			'onboarding.weight.metric' => '公制',
			'onboarding.weight.imperial' => '英制',
			'onboarding.weight.next' => '下一步',
			'onboarding.age.title' => '你的生日是？',
			'onboarding.age.description' => '你的年龄有助于我们准确计算你的卡路里需求。',
			'onboarding.age.next' => '下一步',
			'onboarding.bmiScale.underweight' => '偏低',
			'onboarding.bmiScale.healthy' => '健康',
			'onboarding.bmiScale.overweight' => '偏高',
			'onboarding.bmiScale.obese' => '肥胖',
			'onboarding.bmiScale.categories.underweight' => '体重过低',
			'onboarding.bmiScale.categories.healthyWeight' => '健康体重',
			'onboarding.bmiScale.categories.overweight' => '超重',
			'onboarding.bmiScale.categories.obese' => '肥胖',
			'onboarding.bmiScale.messages.underweight' => '我们可以帮助你通过营养密度更高的饮食，建立健康的增重计划，达到均衡体重。',
			'onboarding.bmiScale.messages.healthy' => '做得很好！你的数值在健康范围内。我们将帮助你保持活力与精力。',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} 将通过 AI 驱动的追踪简化你的旅程，助你更舒适地达成目标。',
			'onboarding.bmiScale.messages.obese' => '我们会以个性化指导和可持续策略，支持你的健康目标。',
			'onboarding.weightGoal.title' => '你的目标是什么？',
			'onboarding.weightGoal.description' => '选择最能描述你想达成目标的选项',
			'onboarding.activityLevel.title' => '你的日常活动量如何？',
			'onboarding.activityLevel.description' => '这有助于我们更准确地计算你的每日热量需求',
			'onboarding.healthConnect.title' => '连接 Health Connect',
			'onboarding.healthConnect.description' => '同步你的健康数据，获得更深入的洞察与自动卡路里追踪',
			'onboarding.healthConnect.automaticTracking.title' => '自动卡路里追踪',
			'onboarding.healthConnect.automaticTracking.description' => '从你的健身应用中获取消耗数据',
			'onboarding.healthConnect.progressInsights.title' => '进度洞察',
			'onboarding.healthConnect.progressInsights.description' => '获得更详细的健康趋势分析',
			'onboarding.healthConnect.seamlessIntegration.title' => '无缝集成',
			'onboarding.healthConnect.seamlessIntegration.description' => '从你常用的健康应用同步数据',
			'onboarding.healthConnect.connected' => '已连接 Health Connect',
			'onboarding.healthConnect.notConnected' => '未连接 Health Connect',
			'onboarding.healthConnect.setup' => '设置 Health Connect',
			'onboarding.healthConnect.skipForNow' => '暂时跳过',
			'onboarding.healthConnect.statusConnected' => 'Health Connect 已连接。',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect 已成功连接！',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => '权限被拒绝。请在手机设置中为 ${appLabel} 启用 Health Connect 权限。',
			'onboarding.healthConnect.statusError' => ({required Object error}) => '设置 Health Connect 出错：${error}',
			'onboarding.reinforcement.trackingSuccess.title' => '你并不孤单',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => '研究表明，坚持记录是长期成功的首要预测因素。',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '对于一位 ${age} 岁、性别为 ${gender}、目标是 ${goal} 的用户，坚持记录是成功的首要预测因素。',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} 让这一切比手动记录轻松 10 倍。',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => '准备好开始了吗？',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => '拍下你的餐食即可即时分析',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => '持续记录，收获有意义的进步',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => '每日跟踪你的进展以保持动力',
			'onboarding.reinforcement.trackingSuccess.button' => '开始吧',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => '个人',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => '更健康的你',
			'onboarding.reinforcement.healthProfile.title' => '你的健康档案',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => '根据你的数据，BMI 为 ${bmi}。',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => '让我们完成你的资料，以便个性化你的体验。',
			'onboarding.reinforcement.healthProfile.goalGain' => '增重',
			'onboarding.reinforcement.healthProfile.goalLose' => '减重',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => '要达到你的目标，你需要${direction}${diff}${unit}。',
			'onboarding.reinforcement.healthProfile.goalReached' => '你已到达目标体重！我们会帮助你保持它。',
			'onboarding.reinforcement.healthProfile.button' => '开始吧',
			'onboarding.reinforcement.goalLifestyle.title' => '很棒的开始！',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => '你已迈出通往 ${goalText} 的第一步。由于你${activityText}，${appLabel} 会调整你的目标以匹配你的生活方式。',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => '个性化卡路里目标',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI 驱动的餐食识别',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => '详细的宏量营养素分解',
			'onboarding.reinforcement.goalLifestyle.button' => '开始吧',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => '你的目标',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => '活跃',
			'tabs.dashboard' => '主页',
			'tabs.history' => '历史',
			'home.aiSummary.title' => '你的 AI 总结',
			'home.aiSummary.logMore' => '接下来几天多记录一些餐食，即可获得你的个性化 AI 洞察。',
			'home.aiSummary.loading' => '正在加载你的总结...',
			'home.aiSummary.mealCount' => ({required Object count}) => '已记录 ${count} 次用餐',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => '平衡评分 ${score}',
			'home.aiSummary.topFoods' => '常吃食物',
			'home.aiSummary.trendUp' => '卡路里上升趋势',
			'home.aiSummary.trendDown' => '卡路里下降趋势',
			'home.aiSummary.trendSteady' => '卡路里保持稳定',
			'home.aiSummary.generatedAt' => ({required Object time}) => '已更新 ${time}',
			'home.dailyGoal.title' => '设定你的每日目标',
			'home.dailyGoal.titleSet' => '你的每日目标',
			'home.dailyGoal.description' => '准备好开启健康之旅了吗？在下方设定你的每日卡路里目标来启动进程。',
			'home.dailyGoal.descriptionSet' => '你的指南针已就位！这是引导你的每日卡路里目标。',
			'home.dailyGoal.yourGoal' => '你的目标',
			'home.dailyGoal.goal' => '目标',
			'home.dailyGoal.dailyCalories' => '每日卡路里（kcal）',
			'home.dailyGoal.setGoal' => '设定目标',
			'home.dailyGoal.intake' => '摄入',
			'home.dailyGoal.burned' => '消耗',
			'home.dailyGoal.weightImpact' => '对体重的影响',
			'home.dailyGoal.estLoss' => '预估减少',
			'home.dailyGoal.estGain' => '预估增加',
			'home.dailyGoal.kcal' => '千卡',
			'home.dailySummary.title' => '每日总结',
			'home.dailySummary.calories' => '卡路里',
			'home.dailySummary.carbs' => '碳水',
			'home.dailySummary.protein' => '蛋白质',
			'home.dailySummary.fat' => '脂肪',
			'home.dailySummary.fiber' => '膳食纤维',
			'home.dailySummary.grams' => '克',
			'home.dailySummary.chartAccessibilityLabel' => '宏量营养素图表',
			'home.intakeProgress.title' => '今日宏量分布',
			'home.intakeProgress.target' => '目标',
			'home.intakeProgress.current' => '当前',
			'home.intakeHistory.title' => '7 天宏量历史',
			'home.intakeHistory.trendTitle' => '今日趋势',
			'home.intakeHistory.peakHour' => ({required Object hour}) => '峰值：${hour}:00',
			'home.intakeHistory.noHistoryYet' => '暂无历史',
			'home.intakeHistory.startLogging' => '开始记录用餐，以在此查看\n你的 7 天宏量趋势',
			'home.mealLog.title' => '已记录的餐食',
			'home.mealLog.emptyMessage' => '拍下你上一次的餐食照片以在此记录。',
			'home.mealLog.noMealsToday' => '今天暂无用餐记录',
			'home.mealLog.seeAllMeals' => '查看全部餐食',
			'home.mealDescription.title' => 'AI 快速添加',
			'home.mealDescription.description' => '描述你的餐食，让 AI 处理细节。',
			'home.mealDescription.hint' => '例如：早餐我吃了一大碗燕麦粥，加了一根切片香蕉和一勺乳清蛋白粉 ...',
			'home.mealDescription.analyzeMeal' => '分析餐食',
			'home.favoriteMeals.title' => '常用餐食',
			'home.favoriteMeals.description' => '快速添加你的一道常用餐食。',
			'home.favoriteMeals.noFavorites' => '还没有常用餐食。',
			'home.favoriteMeals.addFavoriteHint' => '点击餐食上的星标将其设为常用。',
			'home.favoriteMeals.seeAll' => '查看全部',
			'home.favoriteMeals.add' => '添加',
			'home.mealSnap.title' => '拍照并追踪你的餐食',
			'home.mealSnap.description' => '使用相机拍摄食物照片进行 AI 分析。',
			'home.mealSnap.openCamera' => '打开相机',
			'home.mealSnap.gallery' => '相册',
			'home.mealSnap.compressingPhoto' => '正在优化照片…',
			'home.mealSnap.uploadingPhoto' => '正在上传照片…',
			'home.connectHealth.title' => '与 Health Connect 同步',
			'home.connectHealth.description' => '将你的营养数据与 Health Connect 同步',
			'home.connectHealth.install' => '安装',
			'home.connectHealth.connect' => '连接',
			'history.noMeals' => '暂无餐食记录',
			'history.emptyMessage' => '拍下你上一次的餐食照片以在此记录。',
			'history.today' => '今天',
			'history.yesterday' => '昨天',
			'meal.ohNo' => '糟糕！',
			'meal.delete' => '删除',
			'meal.editMeal' => '编辑餐食',
			'meal.addMeal' => '添加餐食',
			'meal.saveMeal' => '保存餐食',
			'meal.save' => '保存',
			'meal.mealName' => '餐食名称',
			'meal.mealNameHint' => '例如：炒蛋配吐司',
			'meal.mealQuantity' => '份量',
			'meal.mealQuantityHint' => '例如：1 碗，2 片',
			'meal.timeOfMeal' => '用餐时间',
			'meal.timeOfMealHint' => '选择你的用餐时间',
			'meal.mealType' => '用餐类型',
			'meal.nutrition.calories' => '卡路里',
			'meal.nutrition.carbs' => '碳水（g）',
			'meal.nutrition.protein' => '蛋白质（g）',
			'meal.nutrition.fat' => '脂肪（g）',
			'meal.nutrition.fiber' => '膳食纤维（g）',
			'meal.deleteConfirmation.title' => '删除餐食',
			'meal.deleteConfirmation.message' => '确定要删除这条餐食记录吗？',
			'meal.deleteConfirmation.cancel' => '取消',
			'meal.deleteConfirmation.delete' => '删除',
			'meal.addedToLog' => '餐食已添加到你的记录！',
			'meal.couldNotAdd' => ({required Object error}) => '无法添加餐食：${error}',
			'meal.savedSuccessfully' => '餐食添加成功！',
			'meal.updatedSuccessfully' => '餐食更新成功！',
			'meal.errorSaving' => ({required Object error}) => '保存餐食出错：${error}',
			'meal.removedFromFavorites' => '已从常用中移除！',
			'meal.savedAsFavorite' => '餐食已设为常用！',
			'meal.unfavorite' => '取消常用',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => '无法更新常用状态：${error}',
			'meal.feedbackThanks' => '感谢你的反馈！',
			'meal.reanalysisUpdated' => '已根据你的反馈更新餐食分析。',
			'meal.failedToProcess' => ({required Object error}) => '处理失败：${error}',
			'meal.failedToProcessImage' => ({required Object error}) => '处理图片失败：${error}',
			'meal.errorCompressingImage' => ({required Object error}) => '压缩图片出错：${error}',
			'meal.failedToSave' => '保存数据失败。请重试。',
			'meal.skip' => '跳过',
			'meal.variation.question' => ({required Object current, required Object total}) => '第 ${current}/${total} 题',
			'meal.variation.noVariationsAvailable' => '暂无可用变体',
			'meal.analysis.title' => 'AI 餐食分析',
			'meal.analysis.reassurance' => '通常只需几秒。',
			'meal.analysis.stepStarted' => '开始处理…',
			'meal.analysis.stepDecomposition' => '正在理解你的餐食…',
			'meal.analysis.stepIngredients' => '正在匹配营养数据库…',
			'meal.analysis.stepUncertainty' => '正在检查置信度…',
			'meal.analysis.stepMealTypeQuestion' => '快好了…',
			'meal.analysis.stepResult' => '正在完成结果…',
			'meal.analysis.stepError' => '出现了问题',
			'meal.analysis.stepDefault' => '正在分析你的餐食…',
			'meal.analysis.progressUnderstand' => '理解',
			'meal.analysis.progressMatch' => '匹配',
			'meal.analysis.progressCheck' => '检查',
			'meal.analysis.progressFinish' => '完成',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '检测到 ${count} 种食材',
			'meal.analysis.ingredientsPending' => '正在扫描食材…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'What looks wrong?',
			'meal.feedback.subtitle' => 'Help us improve the analysis by selecting one or more issues.',
			'meal.feedback.tellUsMore' => 'Tell us more',
			'meal.feedback.describeIncorrect' => 'Describe what was incorrect',
			'meal.feedback.submit' => 'Submit',
			'meal.feedback.issueFoodIdentification' => 'Food identification',
			'meal.feedback.issuePortionSize' => 'Portion size',
			'meal.feedback.issueCalorieDistribution' => 'Calorie distribution',
			'meal.feedback.issueMacrosWrong' => 'Macros are wrong',
			'meal.feedback.issueMissingItems' => 'Missing items',
			'meal.feedback.issueExtraItems' => 'Extra items',
			'meal.feedback.issueOther' => 'Other',
			'favorites.title' => '常用',
			'favorites.empty' => '还没有常用餐食。',
			'favorites.searchPlaceholder' => '搜索常用餐食',
			'favorites.searchEmptyTitle' => '没有与搜索匹配的常用项',
			'favorites.searchEmptySubtitle' => '试试不同的餐食名称、份量或用餐类型。',
			'favorites.sortLabel' => '排序常用项',
			'favorites.undo' => '撤销',
			'favorites.removed' => ({required Object name}) => '已将 ${name} 从常用中移除',
			'favorites.sortOptions.recent' => '最近添加',
			'favorites.sortOptions.calories' => '卡路里',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => '个人资料',
			'profile.noProfileData' => '未找到资料数据',
			'profile.yourProfile' => '你的资料',
			'profile.viewAndManage' => '查看并管理你的健康信息',
			'profile.sections.profile' => '个人资料',
			'profile.sections.basicInformation' => '基础信息',
			'profile.sections.goalsAndActivity' => '目标与活动',
			'profile.sections.calculatedValues' => '计算值',
			'profile.gender' => '性别',
			'profile.height' => '身高',
			'profile.weight' => '体重',
			'profile.age' => '年龄',
			'profile.weightGoal' => '体重目标',
			'profile.targetWeight' => '目标体重',
			'profile.activityLevel' => '活动水平',
			'profile.healthMetrics' => '健康指标',
			'profile.notSet' => '未设置',
			'profile.years' => '岁',
			'profile.updatedSuccessfully' => '资料更新成功！',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => '每日目标',
			'profile.calculatedValues.calPerDay' => '千卡/天',
			'profile.calculatedValues.notAvailable' => '不可用',
			'healthScore.title' => '健康分',
			'healthScore.whyThisScore' => '为什么是这个分数？',
			'healthScore.note' => '该分数是基于识别到的食材与营养密度的 AI 估计。个体饮食建议请始终咨询专业人士。',
			'healthScore.unhealthy' => '不健康',
			'healthScore.healthy' => '健康',
			'healthScore.neutral' => '中性',
			'editProfile.title' => '编辑资料',
			'editProfile.sections.personalInformation' => '个人信息',
			'editProfile.sections.physicalMeasurements' => '身体测量',
			'editProfile.sections.goalsAndActivity' => '目标与活动',
			'editProfile.gender' => '性别',
			'editProfile.dateOfBirth' => '出生日期',
			'editProfile.height' => '身高',
			'editProfile.weight' => '体重',
			'editProfile.weightGoal' => '体重目标',
			'editProfile.activityLevel' => '活动水平',
			'editProfile.metric' => '公制',
			'editProfile.imperial' => '英制',
			'editProfile.unitCm' => '厘米',
			'editProfile.unitFt' => '英尺',
			'editProfile.unitKg' => '千克',
			'editProfile.unitLbs' => '磅',
			'editProfile.metricCm' => '公制（cm）',
			'editProfile.imperialFtIn' => '英制（ft/in）',
			'editProfile.metricKg' => '公制（kg）',
			'editProfile.imperialLbs' => '英制（lbs）',
			'editProfile.genders.male' => '男性',
			'editProfile.genders.female' => '女性',
			'editProfile.genders.other' => '其他',
			'editProfile.weightGoals.loseWeight.name' => '减重',
			'editProfile.weightGoals.loseWeight.description' => '通过制造热量缺口来减重',
			'editProfile.weightGoals.maintainWeight.name' => '维持体重',
			'editProfile.weightGoals.maintainWeight.description' => '保持你当前的体重',
			'editProfile.weightGoals.gainWeight.name' => '增重',
			'editProfile.weightGoals.gainWeight.description' => '通过制造热量盈余来增重',
			'editProfile.activityLevels.sedentary.name' => '久坐',
			'editProfile.activityLevels.sedentary.description' => '很少或不运动',
			'editProfile.activityLevels.lightlyActive.name' => '轻度活动',
			'editProfile.activityLevels.lightlyActive.description' => '每周 1-3 天轻度运动',
			'editProfile.activityLevels.moderatelyActive.name' => '中度活动',
			'editProfile.activityLevels.moderatelyActive.description' => '每周 3-5 天中等强度运动',
			'editProfile.activityLevels.veryActive.name' => '高度活动',
			'editProfile.activityLevels.veryActive.description' => '每周 6-7 天高强度运动',
			'editProfile.activityLevels.extremelyActive.name' => '极高活动',
			'editProfile.activityLevels.extremelyActive.description' => '非常高强度运动或体力工作',
			'settings.title' => '设置',
			'settings.sections.profile' => '个人资料',
			'settings.sections.localization' => '本地化',
			'settings.sections.notifications' => '通知',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.supportAndLegal' => '支持与法律',
			'settings.sections.about' => '关于',
			'settings.sections.dangerZone' => '危险区域',
			'settings.sections.developer' => '开发者',
			'settings.editProfile.title' => '编辑资料',
			'settings.editProfile.subtitle' => '更新你的个人信息',
			'settings.language.title' => '语言',
			'settings.language.subtitle' => '选择你偏好的语言',
			'settings.language.searchHint' => '搜索语言...',
			'settings.language.noResults' => '未找到结果',
			'settings.heightUnit.title' => '身高单位',
			'settings.weightUnit.title' => '体重单位',
			'settings.mealReminders.title' => '用餐提醒',
			'settings.mealReminders.subtitle' => '通过及时提醒保持进度',
			'settings.theme.title' => '主题',
			'settings.theme.light' => '浅色',
			'settings.theme.dark' => '深色',
			'settings.theme.system' => '系统',
			'settings.sendFeedback.title' => '发送反馈',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '帮助我们改进 ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} 应用反馈',
			'settings.sendFeedback.emailBodyPrefix' => '请在下方提供你的反馈：',
			'settings.sendFeedback.appVersion' => '应用版本',
			'settings.sendFeedback.device' => '设备',
			'settings.sendFeedback.osVersion' => '系统版本',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => '导出用餐历史',
			'settings.exportMealHistory.subtitle' => '分享你记录餐食的 CSV 文件',
			'settings.exportMealHistory.shareText' => '你的 Calorify 用餐历史导出',
			'settings.exportMealHistory.failed' => ({required Object error}) => '无法导出用餐历史：${error}',
			'settings.clearAllData.title' => '清除所有数据',
			'settings.clearAllData.subtitle' => '不可逆地删除你的全部信息',
			'settings.clearAllData.confirmationTitle' => '清除所有数据？',
			'settings.clearAllData.confirmationMessage' => '此操作不可撤销。你记录的所有餐食、常用项和资料设置都将被永久删除。',
			'settings.clearAllData.cancel' => '取消',
			'settings.clearAllData.clearEverything' => '全部清除',
			'settings.debugOptions.title' => '调试选项',
			'settings.developerModeEnabled' => '已启用开发者模式！',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => '查看并管理权限',
			'settings.healthConnect.unavailable.title' => '无法使用 Health Connect',
			'settings.healthConnect.unavailable.description' => '此设备不支持 Health Connect。请从 Play 商店安装 Health Connect（Android 9+），或更新至 Android 14+。',
			'settings.healthConnect.permissions.title' => '权限',
			'settings.healthConnect.permissions.description' => '为提供 Health Connect 集成，需要以下权限：',
			'settings.healthConnect.permissions.granted' => '已授予',
			'settings.healthConnect.permissions.notGranted' => '未授予',
			'settings.healthConnect.permissions.caloriesBurned.title' => '读取总消耗卡路里',
			'settings.healthConnect.permissions.caloriesBurned.description' => '允许应用从 Health Connect 读取你的总消耗卡路里。',
			'settings.healthConnect.permissions.caloriesBurned.usage' => '该权限用于在应用中显示你每日的卡路里消耗，帮助你了解全天的总能量消耗。',
			'settings.healthConnect.permissions.nutritionRead.title' => '读取营养数据',
			'settings.healthConnect.permissions.nutritionRead.description' => '允许应用从 Health Connect 读取营养数据。',
			'settings.healthConnect.permissions.nutritionRead.usage' => '该权限允许应用读取其他与 Health Connect 连接的应用所记录的营养信息，为你提供全面的营养视图。',
			'settings.healthConnect.permissions.nutritionWrite.title' => '写入营养数据',
			'settings.healthConnect.permissions.nutritionWrite.description' => '允许应用向 Health Connect 写入营养数据。',
			'settings.healthConnect.permissions.nutritionWrite.usage' => '该权限允许应用将你记录的餐食同步到 Health Connect，使你的营养数据可供你使用的其他健康与健身应用读取。',
			'settings.healthConnect.managePermissions' => '管理权限',
			'settings.healthConnect.openSettings' => '打开 Health Connect 设置',
			'settings.healthConnect.requestPermissions' => '请求权限',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => '权限请求被取消或失败。请重试，或在 Health Connect 设置中手动授予权限。',
			'settings.healthConnect.permissionRequestFailed' => '无法请求权限。请重试，或在 Health Connect 设置中手动授予权限。',
			'settings.healthConnect.requestingPermissions' => '请求中...',
			'settings.about.title' => '关于',
			'settings.about.tagline' => '快速、免费、隐私优先的卡路里意识',
			'settings.about.ourStory.title' => '我们的故事',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} 源于一个简单的挫败感：大多数卡路里追踪应用要么过于复杂、需要持续手动输入、收取高额订阅费，要么在隐私上做出妥协。\n\n作为一名独立开发者，我想做得更简单、更公平——用 AI 来减少操作负担，保持快速与免费，同时尊重你的健康数据。\n\n${appLabel} 是我也一直期望拥有的应用：无需账户、无跟踪、无广告——只提供清晰、实用的洞察，助你实现健康目标。',
			'settings.about.privacy.title' => '你的隐私很重要',
			'settings.about.privacy.description' => '隐私不是事后的补救——而是我们的设计原则。具体体现在：',
			'settings.about.privacy.noAccounts' => '无需账户\n立即使用应用。无需注册、无需身份信息。',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => '无行为跟踪\n${appLabel} 不会监控你的活动、构建使用画像，也不会在应用或网站间跟踪你。',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => '无广告设计\n${appLabel} 致力于在没有广告或数据驱动变现的情况下运行。',
			'settings.about.privacy.noDataSelling' => '不出售数据\n你的健康数据绝不会被出售或与第三方共享。',
			'settings.about.privacy.localStorage' => '本地优先存储\n你的数据保存在你的设备上。',
			'settings.about.privacy.privacyPolicy' => '隐私政策',
			'settings.about.developer.title' => '由独立开发者打造',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} 由一位独立开发者构建和维护，专注于打造平和、尊重隐私的健康软件。\n\n我会亲自阅读反馈，而这些意见将影响应用的未来方向。',
			'settings.about.developer.website' => '网站',
			'settings.about.developer.email' => '邮箱',
			'settings.about.feedback.title' => ({required Object appLabel}) => '喜欢 ${appLabel} 吗？',
			'settings.about.feedback.description' => ({required Object appLabel}) => '你的反馈能帮助 ${appLabel} 变得更好。',
			'settings.about.feedback.rateApp' => '在 Play 商店评分',
			'settings.about.feedback.sendFeedback' => '发送反馈',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => '构建 ${buildNumber}',
			'reminders.title' => '用提醒保持节奏',
			'reminders.description' => '获得温和的提醒，记录餐食并在营养目标上持续前进',
			'reminders.notificationsEnabled' => '已启用通知',
			'reminders.notificationsDisabled' => '未启用通知',
			'reminders.enabledSubtitle' => '你将收到用餐提醒',
			'reminders.disabledSubtitle' => '启用通知以接收用餐提醒',
			'reminders.mealReminders' => '用餐提醒',
			'reminders.breakfast' => '早餐',
			'reminders.lunch' => '午餐',
			'reminders.dinner' => '晚餐',
			'reminders.snack' => '加餐',
			'reminders.unknown' => '未知',
			'reminders.change' => '更改',
			'reminders.enableNotifications' => '启用通知',
			'reminders.skipForNow' => '暂时跳过',
			'reminders.saveChanges' => '保存更改',
			'reminders.enabledSuccessfully' => '通知启用成功！',
			'reminders.permissionDenied' => '通知权限被拒绝',
			'reminders.errorEnabling' => ({required Object error}) => '启用通知出错：${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => '完成设置出错：${error}',
			'notifications.breakfast.title' => '早餐时间！ 🍳',
			'notifications.breakfast.body' => '别忘了记录你的早餐',
			'notifications.lunch.title' => '午餐时间！ 🥗',
			'notifications.lunch.body' => '该记录你的午餐了',
			'notifications.dinner.title' => '晚餐时间！ 🍽️',
			'notifications.dinner.body' => '别忘了记录你的晚餐',
			'notifications.snack.title' => '加餐时间！ 🍎',
			'notifications.snack.body' => '来一份健康加餐吧',
			'notifications.test.title' => '测试通知',
			'login.title' => '登录',
			'login.signInWithGoogle' => '使用 Google 登录',
			'login.signInFailed' => 'Google 登录失败或已取消。',
			'disclaimer.pleaseNote' => '请注意',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} 提供的是营养信息估算。准确性取决于你的输入与食物差异。请将其作为参考，而非权威来源。个性化饮食建议请咨询专业人士。',
			'disclaimer.snap.portionSize.title' => '份量大小',
			'disclaimer.snap.portionSize.description' => '估算的准确性在很大程度上取决于你对份量的正确评估。',
			'disclaimer.snap.preparationMethods.title' => '烹饪方式',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => '烹饪方法会显著改变食物的营养成分。${appLabel} 的估算可能无法完全涵盖这些差异。',
			'disclaimer.snap.ingredients.title' => '食材',
			'disclaimer.snap.ingredients.description' => '食材复杂或隐藏配料较多的菜肴，可能会导致估算不够准确。',
			'disclaimer.snap.databaseLimitations.title' => '数据库局限',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} 的食物数据库很庞大，但可能无法覆盖所有食物或其所有变体。',
			'disclaimer.weightEstimate.title' => '关于体重估算',
			'disclaimer.weightEstimate.description' => '预测的体重变化基于“摄入热量 vs. 消耗热量”的理论模型，仅用于激励与参考，并非对你实际体重的精准预测。',
			'disclaimer.weightEstimate.calorieAccuracy.title' => '卡路里准确性',
			'disclaimer.weightEstimate.calorieAccuracy.description' => '该估算依赖于你记录的卡路里摄入与消耗的准确性。不准确的记录将导致不准确的预测。',
			'disclaimer.weightEstimate.biologicalFactors.title' => '生理因素',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => '实际的增重/减重受代谢、激素、睡眠、压力、补水等个人因素影响，而这些是 ${appLabel} 无法测量的。',
			'disclaimer.weightEstimate.waterWeight.title' => '水分与波动',
			'disclaimer.weightEstimate.waterWeight.description' => '日常体重会因水分滞留、消化和时间而显著波动。本估算不考虑这些日常变化。',
			'disclaimer.weightEstimate.professionalGuidance.title' => '专业建议',
			'disclaimer.weightEstimate.professionalGuidance.description' => '请勿将本估算用于医疗决策。个性化的体重管理建议请始终咨询医疗专业人士或注册营养师。',
			'disclaimer.healthMetrics.description' => '这些指标帮助你了解身体的能量需求，并指导你的营养目标。',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => '基础代谢率（BMR）是指你的身体在静息状态下，为维持呼吸、循环等基本功能所消耗的卡路里。BMR 取决于年龄、性别、身高和体重。BMR 较高意味着身体在静息时自然消耗更多卡路里，通常与肌肉量更多、年龄较轻或男性相关；BMR 较低通常意味着肌肉量较少、年龄较大或女性。',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => '每日总能量消耗（TDEE）是你每天消耗的总卡路里，包括 BMR 以及体力活动和日常活动产生的消耗。TDEE 取决于你的 BMR 与活动水平。TDEE 较高通常意味着更活跃或 BMR 较高；TDEE 较低则提示日常活动较少或 BMR 较低。',
			'disclaimer.healthMetrics.dailyGoal.title' => '每日目标',
			'disclaimer.healthMetrics.dailyGoal.description' => '每日目标是基于你的 TDEE 和体重目标所推荐的每日卡路里摄入。想减重时，摄入少于 TDEE；想维持体重时，摄入与 TDEE 大致相当；想增重时，摄入多于 TDEE。这有助于你以健康的节奏达成理想体重变化。',
			'disclaimer.calorieExpenditure.title' => '卡路里消耗估算',
			'disclaimer.calorieExpenditure.description' => '当无法获取 Health Connect 数据时，我们会基于你的基础代谢率（BMR）和活动水平（TDEE），并按当天已过去的时间比例进行缩放，来估算你今日已消耗的卡路里。',
			'disclaimer.calorieExpenditure.howCalculated.title' => '估算如何计算',
			'disclaimer.calorieExpenditure.howCalculated.description' => '我们计算你的 TDEE（基于你的资料），并将其乘以当天已过去的时间比例（小时 + 分钟）/ 24，以估算目前为止的消耗。',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => '专业建议',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => '请勿将此估算用于医疗决策。个性化建议请始终咨询医疗专业人士或注册营养师。',
			'common.close' => '关闭',
			'common.kContinue' => '继续',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '喜欢 ${appLabel} 吗？',
			'feedbackRating.yes' => '是的，我很喜欢',
			'feedbackRating.no' => '不太满意',
			'feedbackRating.rateStepHeading' => '在 Play 商店评分',
			'feedbackRating.emailStepHeading' => '通过邮件发送反馈',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => '简短的评分有助于他人发现 ${appLabel}，也能支持持续开发。愿意花一点时间评价吗？',
			'feedbackRating.shareFeedbackViaEmail' => '你的反馈将影响接下来的方向——我们会阅读每一条留言。愿意通过邮件分享想法吗？',
			'feedbackRating.rateCta' => '在 Play 商店评分',
			'feedbackRating.maybeLater' => '稍后再说',
			'feedbackRating.sendFeedback' => '发送反馈',
			'feedbackRating.noThanks' => '不用了，谢谢',
			'feedbackRating.aboutUsDescription' => '由一个小团队用心打造。我们专注于隐私、简洁，以及帮助你养成更好的饮食习惯。',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '想知道是谁在背后打造 ${appLabel}？查看 ',
			'feedbackRating.aboutUsLinkLabel' => '关于我们',
			'feedbackRating.thankYouMessage' => '谢谢！我们稍后再问。',
			'health.syncFailed' => '无法同步到 Health Connect',
			'health.mealSynced' => '餐食已与 Health Connect 同步',
			_ => null,
		};
	}
}
