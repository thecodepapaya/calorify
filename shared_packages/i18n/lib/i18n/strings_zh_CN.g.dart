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
	@override String get language => '简体中文';
	@override String get flag => '🇨🇳';
	@override String appLabel({required Object env}) => 'Calorify${env}';
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
	@override late final _TranslationsErrorsZhCn errors = _TranslationsErrorsZhCn._(_root);
	@override late final _TranslationsDebugZhCn debug = _TranslationsDebugZhCn._(_root);
	@override late final _TranslationsHealthZhCn health = _TranslationsHealthZhCn._(_root);
}

// Path: onboarding
class _TranslationsOnboardingZhCn implements TranslationsOnboardingEn {
	_TranslationsOnboardingZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '欢迎使用${appLabel}';
	@override String get subtitle => '您个性化的营养伴侣，基于 AI 技术';
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
	@override String get dashboard => '仪表板';
	@override String get history => '历史记录';
}

// Path: home
class _TranslationsHomeZhCn implements TranslationsHomeEn {
	_TranslationsHomeZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
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
	@override String get noMeals => '没有记录的餐点';
	@override String get emptyMessage => '拍一张您最近用餐的照片以记录在这里。';
	@override String get today => '今天';
	@override String get yesterday => '昨天';
}

// Path: meal
class _TranslationsMealZhCn implements TranslationsMealEn {
	_TranslationsMealZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get ohNo => '哦不！';
	@override String get delete => '删除';
	@override String get editMeal => '编辑餐点';
	@override String get addMeal => '添加餐点';
	@override String get saveMeal => '保存餐点';
	@override String get save => '保存';
	@override String get mealName => '餐点名称';
	@override String get mealQuantity => '餐数量';
	@override String get mealQuantityHint => '例如：1碗，2片';
	@override String get timeOfMeal => '餐点时间';
	@override String get timeOfMealHint => '选择您吃餐的时间';
	@override String get mealType => '餐点类型';
	@override late final _TranslationsMealNutritionZhCn nutrition = _TranslationsMealNutritionZhCn._(_root);
	@override late final _TranslationsMealDeleteConfirmationZhCn deleteConfirmation = _TranslationsMealDeleteConfirmationZhCn._(_root);
	@override String get addedToLog => '餐点已添加到您的记录中！';
	@override String couldNotAdd({required Object error}) => '无法添加餐点：${error}';
	@override String get removedFromFavorites => '已从收藏中移除！';
	@override String get savedAsFavorite => '餐点已保存为收藏！';
	@override String couldNotUpdateFavorite({required Object error}) => '无法更新收藏：${error}';
	@override String failedToProcess({required Object error}) => '处理失败：${error}';
	@override String failedToProcessImage({required Object error}) => '处理图像失败：${error}';
	@override String errorCompressingImage({required Object error}) => '压缩图像时出错：${error}';
	@override String get failedToSave => '数据保存失败。请再试一次。';
}

// Path: favorites
class _TranslationsFavoritesZhCn implements TranslationsFavoritesEn {
	_TranslationsFavoritesZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '收藏夹';
	@override String get empty => '尚未添加收藏餐点。';
}

// Path: profile
class _TranslationsProfileZhCn implements TranslationsProfileEn {
	_TranslationsProfileZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '个人资料';
	@override String get noProfileData => '未找到个人资料数据';
	@override String get yourProfile => '您的个人资料';
	@override String get viewAndManage => '查看并管理您的健康信息';
	@override late final _TranslationsProfileSectionsZhCn sections = _TranslationsProfileSectionsZhCn._(_root);
	@override String get gender => '性别';
	@override String get height => '身高';
	@override String get weight => '体重';
	@override String get age => '年龄';
	@override String get weightGoal => '体重目标';
	@override String get targetWeight => '目标体重';
	@override String get activityLevel => '活动水平';
	@override String get healthMetrics => '健康指标';
	@override String get notSet => '未设定';
	@override String get years => '年';
	@override String get updatedSuccessfully => '个人资料更新成功！';
	@override late final _TranslationsProfileCalculatedValuesZhCn calculatedValues = _TranslationsProfileCalculatedValuesZhCn._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreZhCn implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '健康评分';
	@override String get whyThisScore => '为什么是这个评分？';
	@override String get note => '此评分是基于识别的成分和营养密度的AI估算。始终咨询专业人士以获取饮食建议。';
	@override String get unhealthy => '不健康';
	@override String get healthy => '健康';
	@override String get neutral => '中性';
}

// Path: editProfile
class _TranslationsEditProfileZhCn implements TranslationsEditProfileEn {
	_TranslationsEditProfileZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '编辑个人资料';
	@override late final _TranslationsEditProfileSectionsZhCn sections = _TranslationsEditProfileSectionsZhCn._(_root);
	@override String get gender => '性别';
	@override String get dateOfBirth => '出生日期';
	@override String get height => '身高';
	@override String get weight => '体重';
	@override String get weightGoal => '体重目标';
	@override String get activityLevel => '活动水平';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get metricCm => '公制 (厘米)';
	@override String get imperialFtIn => '英制 (英尺/英寸)';
	@override String get metricKg => '公制 (千克)';
	@override String get imperialLbs => '英制 (磅)';
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
	@override late final _TranslationsSettingsClearAllDataZhCn clearAllData = _TranslationsSettingsClearAllDataZhCn._(_root);
	@override late final _TranslationsSettingsDebugOptionsZhCn debugOptions = _TranslationsSettingsDebugOptionsZhCn._(_root);
	@override String get developerModeEnabled => '开发者模式已启用！';
	@override late final _TranslationsSettingsHealthConnectZhCn healthConnect = _TranslationsSettingsHealthConnectZhCn._(_root);
	@override late final _TranslationsSettingsAboutZhCn about = _TranslationsSettingsAboutZhCn._(_root);
}

// Path: reminders
class _TranslationsRemindersZhCn implements TranslationsRemindersEn {
	_TranslationsRemindersZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '通过提醒保持正轨';
	@override String get description => '获取温馨提醒记录您的餐点，确保您与营养目标保持一致';
	@override String get notificationsEnabled => '通知已启用';
	@override String get notificationsDisabled => '通知已禁用';
	@override String get enabledSubtitle => '您将收到餐点提醒';
	@override String get disabledSubtitle => '启用通知以获取餐点提醒';
	@override String get mealReminders => '餐点提醒';
	@override String get breakfast => '早餐';
	@override String get lunch => '午餐';
	@override String get dinner => '晚餐';
	@override String get snack => '小吃';
	@override String get unknown => '未知';
	@override String get change => '更改';
	@override String get enableNotifications => '启用通知';
	@override String get skipForNow => '暂时跳过';
	@override String get saveChanges => '保存更改';
	@override String get enabledSuccessfully => '通知启用成功！';
	@override String get permissionDenied => '通知权限被拒绝';
	@override String errorEnabling({required Object error}) => '启用通知时出错：${error}';
	@override String errorCompletingSetup({required Object error}) => '完成设置时出错：${error}';
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
	@override String get signInWithGoogle => '通过Google登录';
	@override String get signInFailed => 'Google登录失败或被取消。';
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
}

// Path: common
class _TranslationsCommonZhCn implements TranslationsCommonEn {
	_TranslationsCommonZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get close => '关闭';
	@override String get kContinue => '继续';
}

// Path: errors
class _TranslationsErrorsZhCn implements TranslationsErrorsEn {
	_TranslationsErrorsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => '加载个人资料数据时出错';
	@override String get somethingWentWrong => '出现了一些问题。';
}

// Path: debug
class _TranslationsDebugZhCn implements TranslationsDebugEn {
	_TranslationsDebugZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '调试选项';
	@override late final _TranslationsDebugSectionsZhCn sections = _TranslationsDebugSectionsZhCn._(_root);
	@override String get showActiveNotifications => '显示活动通知';
	@override String get scheduleTestNotification => '安排测试通知 (10秒)';
	@override String get triggerBreakfastNotification => '触发早餐通知';
	@override String get cancelAllNotifications => '取消所有通知';
	@override String get activeNotifications => '活动通知';
	@override String get noTitle => '无标题';
	@override String get noBody => '无内容';
	@override String get fetchTodaysSteps => '获取今天的步数';
	@override String get fetchTodaysCalories => '获取今天的卡路里';
	@override String get fetchLatestWeight => '获取最新体重';
	@override String get fetchLatestHeight => '获取最新身高';
	@override String get writeTestWeight => '写入测试体重 (70kg)';
	@override String get writeTestHeight => '写入测试身高 (175cm)';
	@override String get syncLast7Days => '同步过去7天';
	@override String get sync7DaysTitle => '7天同步';
	@override String get checkCurrentLocale => '检查当前语言环境';
	@override String get currentLocale => '当前语言环境';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => '语言：${languageCode}\n国家：${countryCode}\n单位系统：${unitSystem}';
	@override String get latestWeight => '最新体重';
	@override String get latestHeight => '最新身高';
	@override String get todaysCalories => '今天的卡路里';
	@override String totalCaloriesBurned({required Object calories}) => '总消耗卡路里：${calories}';
	@override String syncSuccess({required Object count}) => '成功获取过去7天的${count}个数据点（步数、卡路里和体重）。';
	@override String get noWeightData => '过去30天未找到体重数据。';
	@override String get noHeightData => '过去一年未找到身高数据。';
	@override String get noCalorieData => '今天未找到卡路里数据。';
	@override String get weightWritten => '成功写入测试体重（70公斤）。';
	@override String get weightWriteFailed => '写入测试体重失败。';
	@override String get heightWritten => '成功写入测试身高（175厘米）。';
	@override String get heightWriteFailed => '写入测试身高失败。';
	@override String get noNotifications => '没有活动通知。';
	@override String get testNotificationScheduled => '测试通知已安排在10秒后发送。';
	@override String get testNotificationBody => '这是安排在10秒后发送的测试通知。';
	@override String get breakfastNotificationTriggered => '早餐通知已触发。';
	@override String get allNotificationsCancelled => '所有通知已取消。';
	@override String get fetchingData => '正在获取过去7天的数据...';
	@override String id({required Object id}) => 'ID: ${id}';
}

// Path: health
class _TranslationsHealthZhCn implements TranslationsHealthEn {
	_TranslationsHealthZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => '无法同步到健康连接';
	@override String get mealSynced => '餐点已与健康连接同步';
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
	@override String get title => '您的性别是什么？';
	@override String get description => '性别帮助我们准确计算您的基础代谢率（BMR）。';
	@override String get next => '下一步';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightZhCn implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你多高？';
	@override String get description => '你的身高有助于我们准确计算你的BMI和能量需求。';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get next => '下一步';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightZhCn implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => '你当前的体重是多少？';
	@override String get currentDescription => '你的当前体重对于个性化你的日常目标至关重要。';
	@override String get targetTitle => '你的目标体重是多少？';
	@override String get targetDescription => '设定目标体重有助于我们制定你的长期计划。';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get next => '下一步';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeZhCn implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的生日是什么时候？';
	@override String get description => '你的年龄有助于我们准确计算你的卡路里需求。';
	@override String get next => '下一步';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleZhCn implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get underweight => '体重过轻';
	@override String get healthy => '健康';
	@override String get overweight => '超重';
	@override String get obese => '肥胖';
	@override late final _TranslationsOnboardingBmiScaleCategoriesZhCn categories = _TranslationsOnboardingBmiScaleCategoriesZhCn._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesZhCn messages = _TranslationsOnboardingBmiScaleMessagesZhCn._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalZhCn implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '您的目标是什么？';
	@override String get description => '选择最能描述您想要达到的目标';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelZhCn implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '您有多活跃？';
	@override String get description => '这有助于我们更准确地计算您的每日卡路里需求';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectZhCn implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '与健康连接';
	@override String get description => '同步您的健康数据以获得更好的洞察和自动卡路里追踪';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingZhCn automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingZhCn._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsZhCn progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsZhCn._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationZhCn seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationZhCn._(_root);
	@override String get connected => '健康连接已连接';
	@override String get notConnected => '健康连接未连接';
	@override String get setup => '设置健康连接';
	@override String get skipForNow => '暂时跳过';
	@override String get statusConnected => '健康连接已连接。';
	@override String get statusSuccess => '健康连接成功连接！';
	@override String statusPermissionDenied({required Object appLabel}) => '权限被拒绝。请在手机设置中启用${appLabel}的健康连接权限。';
	@override String statusError({required Object error}) => '设置健康连接时出错: ${error}';
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

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalZhCn implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '设定您的每日目标';
	@override String get titleSet => '您的每日目标';
	@override String get description => '准备好开始您的健康之旅了吗？在下面设定您的每日卡路里目标，开启您的进步之路。';
	@override String get descriptionSet => '您的指引已设定！这是您的每日卡路里目标，帮助您前行。';
	@override String get yourGoal => '您的目标';
	@override String get dailyCalories => '每日卡路里 (千卡)';
	@override String get setGoal => '设定目标';
	@override String get intake => '摄入';
	@override String get burned => '消耗';
	@override String get weightImpact => '体重影响';
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
	@override String get carbs => '碳水化合物';
	@override String get protein => '蛋白质';
	@override String get fat => '脂肪';
	@override String get fiber => '纤维';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressZhCn implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '今天的宏观营养分配';
	@override String get target => '目标';
	@override String get current => '当前';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryZhCn implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '7天宏观历史';
	@override String get noHistoryYet => '还没有历史记录';
	@override String get startLogging => '开始记录餐点，以查看您在此处的\n7天宏观趋势';
}

// Path: home.mealLog
class _TranslationsHomeMealLogZhCn implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '已记录的餐点';
	@override String get emptyMessage => '拍一张您最近用餐的照片以记录在这里。';
	@override String get noMealsToday => '今天没有记录的餐点';
	@override String get seeAllMeals => '查看所有餐点';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionZhCn implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '快速添加通过AI';
	@override String get description => '描述您的餐点，让AI处理详情。';
	@override String get hint => '例如：早饭我吃了一大碗燕麦粥，配上切片香蕉和一勺乳清蛋白...';
	@override String get analyzeMeal => '分析餐点';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsZhCn implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '收藏餐点';
	@override String get description => '快速添加您最爱的餐点。';
	@override String get noFavorites => '尚未添加收藏餐点。';
	@override String get addFavoriteHint => '点击餐点旁的星星标记为收藏。';
	@override String get seeAll => '查看所有';
	@override String get add => '添加';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapZhCn implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '拍照并记录您的餐点';
	@override String get description => '使用您的相机拍一张食物的照片进行AI分析。';
	@override String get openCamera => '打开相机';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthZhCn implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '与健康应用同步';
	@override String get description => '将您的营养数据与健康应用同步';
	@override String get install => '安装';
	@override String get connect => '连接';
}

// Path: meal.nutrition
class _TranslationsMealNutritionZhCn implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get calories => '卡路里';
	@override String get carbs => '碳水化合物 (克)';
	@override String get protein => '蛋白质 (克)';
	@override String get fat => '脂肪 (克)';
	@override String get fiber => '纤维 (克)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationZhCn implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '删除餐点';
	@override String get message => '您确定要删除这个餐点记录吗？';
	@override String get cancel => '取消';
	@override String get delete => '删除';
}

// Path: profile.sections
class _TranslationsProfileSectionsZhCn implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get profile => '个人资料';
	@override String get basicInformation => '基本信息';
	@override String get goalsAndActivity => '目标与活动';
	@override String get calculatedValues => '计算值';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesZhCn implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get bmr => '基础代谢率';
	@override String get tdee => '总日常能量消耗';
	@override String get dailyGoal => '每日目标';
	@override String get calPerDay => '卡路里/天';
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
	@override String get healthConnect => '健康连接';
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
	@override String get title => '编辑个人资料';
	@override String get subtitle => '更新您的个人信息';
}

// Path: settings.language
class _TranslationsSettingsLanguageZhCn implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '语言';
	@override String get subtitle => '选择您的首选语言';
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
	@override String get title => '餐点提醒';
	@override String get subtitle => '通过及时的提醒保持正轨';
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
	@override String subtitle({required Object appLabel}) => '帮助我们改善${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel}应用反馈';
	@override String get emailBodyPrefix => '请在下面提供您的反馈：';
	@override String get appVersion => '应用版本';
	@override String get device => '设备';
	@override String get osVersion => '操作系统版本';
	@override String get uid => '用户ID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataZhCn implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '清除所有数据';
	@override String get subtitle => '不可逆转地删除您的所有信息';
	@override String get confirmationTitle => '清除所有数据？';
	@override String get confirmationMessage => '此操作无法撤销。您所有记录的餐点、收藏和个人资料设置将被永久删除。';
	@override String get cancel => '取消';
	@override String get clearEverything => '清除所有';
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
	@override String get title => '健康连接';
	@override String get subtitle => '查看和管理权限';
	@override late final _TranslationsSettingsHealthConnectUnavailableZhCn unavailable = _TranslationsSettingsHealthConnectUnavailableZhCn._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsZhCn permissions = _TranslationsSettingsHealthConnectPermissionsZhCn._(_root);
	@override String get managePermissions => '管理权限';
	@override String get openSettings => '打开健康连接设置';
	@override String get requestPermissions => '请求权限';
}

// Path: settings.about
class _TranslationsSettingsAboutZhCn implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '关于';
	@override String get tagline => '快速、免费，并注重隐私的卡路里意识';
	@override late final _TranslationsSettingsAboutOurStoryZhCn ourStory = _TranslationsSettingsAboutOurStoryZhCn._(_root);
	@override late final _TranslationsSettingsAboutPrivacyZhCn privacy = _TranslationsSettingsAboutPrivacyZhCn._(_root);
	@override late final _TranslationsSettingsAboutDeveloperZhCn developer = _TranslationsSettingsAboutDeveloperZhCn._(_root);
	@override late final _TranslationsSettingsAboutFeedbackZhCn feedback = _TranslationsSettingsAboutFeedbackZhCn._(_root);
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastZhCn implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '早餐时间！🍳';
	@override String get body => '别忘了记录您的早餐';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchZhCn implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '午餐时间！🥗';
	@override String get body => '是时候记录您的午餐了';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerZhCn implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '晚餐时间！🍽️';
	@override String get body => '别忘了记录您的晚餐';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackZhCn implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '小吃时间！🍎';
	@override String get body => '该享受健康的小吃了';
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
	@override String description({required Object appLabel}) => '${appLabel}提供的营养信息为估算值。准确性取决于您的输入和食物变种。请将其用作参考，而非绝对来源。如需个性化的饮食建议，请咨询专业人士。';
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
	@override String get title => '关于体重估计';
	@override String get description => '预计的体重变化是基于简单的卡路里摄入与消耗模型的理论估计。仅用于激励指导，而非对您实际体重的预测。';
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
	@override String get description => '这些指标帮助您了解身体的能量需求并指导您的营养目标。';
	@override late final _TranslationsDisclaimerHealthMetricsBmrZhCn bmr = _TranslationsDisclaimerHealthMetricsBmrZhCn._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeZhCn tdee = _TranslationsDisclaimerHealthMetricsTdeeZhCn._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalZhCn dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalZhCn._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsZhCn implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get notifications => '通知';
	@override String get healthConnect => '健康连接';
	@override String get appInfo => '应用信息';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionZhCn implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '智能食物识别';
	@override String get description => '拍摄照片，让 AI 识别您的餐点';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisZhCn implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 分析';
	@override String get description => '根据您的描述获取即时营养信息';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationZhCn implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '健康整合';
	@override String get description => '连接 Health Connect 以获得更好的洞察';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesZhCn implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get underweight => '体重过轻';
	@override String get healthyWeight => '健康体重';
	@override String get overweight => '超重';
	@override String get obese => '肥胖';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesZhCn implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get underweight => '我们可以帮助您制定健康计划，通过营养丰富的餐食来达到均衡体重。';
	@override String get healthy => '干得好！您处于健康范围内。我们将帮助您维持活力和能量水平。';
	@override String overweight({required Object appLabel}) => '${appLabel}将通过人工智能支持的追踪简化您的旅程，帮助您轻松达到目标。';
	@override String get obese => '我们在这里支持您，为您的健康目标提供个性化指导和可持续策略。';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingZhCn implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '自动卡路里追踪';
	@override String get description => '从您的健身应用中跟踪消耗的卡路里';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsZhCn implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '进展洞察';
	@override String get description => '获取您的健康趋势的详细洞察';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationZhCn implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '无缝集成';
	@override String get description => '同步您最喜欢的健康应用的数据';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessZhCn implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你并不孤单';
	@override String get genericMessage => '研究显示，持续跟踪是长期成功的首要预测因素。';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '对于一个 ${age} 岁的 ${gender}，想要 ${goal}，持续跟踪是成功的首要预测因素。';
	@override String closingMessage({required Object appLabel}) => '${appLabel}让这一切比手动操作轻松10倍。';
	@override String get getStartedTitle => '准备好开始了吗？';
	@override String get tipPhoto => '拍摄您的餐点以进行即时分析';
	@override String get tipConsistency => '保持记录以看到有意义的进展';
	@override String get tipProgress => '每天记录您的进展，保持动力';
	@override String get button => '开始吧';
	@override String get defaultGender => '个体';
	@override String get defaultGoal => '更健康的你';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileZhCn implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '您的健康资料';
	@override String bmiDescription({required Object bmi}) => '根据你的数据，你的BMI是 ${bmi}。';
	@override String get finalizeDescription => '让我们完成你的资料，以定制你的体验。';
	@override String get goalGain => '增加';
	@override String get goalLose => '减少';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => '为了达到你的目标，你需要 ${direction} ${diff} ${unit}。';
	@override String get goalReached => '你已达到目标体重！我们将帮助你维持这个体重。';
	@override String get button => '开始吧';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleZhCn implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '优秀的开始！';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => '您已迈出了通向${goalText}的第一步。既然您${activityText}，${appLabel}将根据您的生活方式调整目标。';
	@override String get personalizedTargets => '个性化的卡路里目标';
	@override String get aiMealDetection => '人工智能驱动的餐点检测';
	@override String get macroBreakdowns => '详细的宏观营养素分析';
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
	@override String get description => '创建卡路里赤字以减轻体重';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightZhCn implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '维持体重';
	@override String get description => '保持你目前的体重';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightZhCn implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '增重';
	@override String get description => '创建卡路里盈余以增加体重';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryZhCn implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '久坐';
	@override String get description => '几乎没有运动';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveZhCn implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '轻度活跃';
	@override String get description => '每周轻度运动1-3天';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveZhCn implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '中度活跃';
	@override String get description => '每周中度运动3-5天';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveZhCn implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '高度活跃';
	@override String get description => '每周剧烈运动6-7天';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveZhCn implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '极度活跃';
	@override String get description => '非常剧烈的运动或体力工作';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableZhCn implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '健康连接不可用';
	@override String get description => '该设备不支持健康连接。它需要 Android 14 或更高版本。';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsZhCn implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '权限';
	@override String get description => '需请求以下权限以提供健康连接集成：';
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
	@override String content({required Object appLabel}) => '${appLabel}的诞生源于一个简单的挫败感：大多数卡路里追踪应用要么过于复杂，要么需要不断手动输入，要么收取高额订阅费用，或者在隐私方面有所妥协。\n\n作为一名独立开发者，我想构建一个更简单、更公正的应用——一个利用AI减少努力，保持快速和免费的应用，并尊重你的健康数据。\n\n${appLabel}是我希望能够存在的应用：无账户，无追踪，无广告——只有清晰、实用的见解和你的健康目标。';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyZhCn implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '您的隐私很重要';
	@override String get description => '隐私不是事后考虑——它是一项设计原则。这在实践中意味着什么：';
	@override String get noAccounts => '无需账户\n立即使用应用。无需注册，无需身份。';
	@override String noTracking({required Object appLabel}) => '无行为追踪\n${appLabel}不监测您的活动，不建立使用档案，也不会在应用或网站之间追踪您。';
	@override String noAds({required Object appLabel}) => '无广告设计\n${appLabel}的设计无需广告或基于数据的货币化。';
	@override String get noDataSelling => '无数据出售\n您的健康数据从不出售或与第三方共享。';
	@override String get localStorage => '本地优先存储\n您的数据保留在您的设备上。';
	@override String get privacyPolicy => '隐私政策';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperZhCn implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '由独立开发者构建';
	@override String description({required Object appLabel}) => '${appLabel}由一位专注于创建平静、尊重隐私的健康软件的独立开发者构建和维护。\n\n反馈会被个人阅读，并帮助塑造应用的发展方向。';
	@override String get website => '网站';
	@override String get email => '电子邮件';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackZhCn implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '喜欢${appLabel}吗？';
	@override String description({required Object appLabel}) => '您的反馈有助于使${appLabel}对每个人变得更好。';
	@override String get rateApp => '在应用商店评分';
	@override String get sendFeedback => '发送反馈';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeZhCn implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '食物份量';
	@override String get description => '估计的准确性在很大程度上依赖于您对食物份量的正确评估。';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsZhCn implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '烹饪方法';
	@override String description({required Object appLabel}) => '烹饪方法可能会显著改变食物的营养成分。${appLabel}的估算可能并未始终考虑这些变化。';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsZhCn implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '成分';
	@override String get description => '成分复杂的菜肴可能导致估计的准确性降低。';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsZhCn implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '数据库限制';
	@override String description({required Object appLabel}) => '${appLabel}的食物数据库庞大，但可能不包括每个单独的食物项目或变种。';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyZhCn implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '卡路里准确性';
	@override String get description => '此估计的准确性仅依赖于您记录的卡路里摄入与消耗。不准确的记录将导致不准确的预测。';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsZhCn implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '生物因素';
	@override String description({required Object appLabel}) => '实际的体重减轻/增加受代谢、荷尔蒙、睡眠、压力、水合作用以及${appLabel}无法测量的其他个体因素影响。';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightZhCn implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '水分体重与波动';
	@override String get description => '正常的日常体重可能因水分滞留、消化和时间而有显著波动。该估计未考虑这些日常变化。';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhCn implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '专业指导';
	@override String get description => '请勿仅凭此估计作出医疗决策。请始终咨询医疗专业人士或注册营养师以获取个性化的体重管理建议。';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrZhCn implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '基础代谢率（BMR）';
	@override String get description => '基础代谢率（BMR）是您的身体在休息时维持基本功能（如呼吸和循环）所消耗的卡路里。BMR取决于您的年龄、性别、身高和体重。较高的BMR意味着您的身体在休息时自然消耗更多的卡路里，通常是因为肌肉质量较高、年龄较小或为男性。较低的BMR通常表明肌肉质量较少、年龄较大或为女性。';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeZhCn implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '每日总能量消耗（TDEE）';
	@override String get description => '每日总能量消耗（TDEE）是您每天消耗的总卡路里，包括您的BMR加上来自体育活动和日常活动的卡路里。TDEE取决于您的BMR和活动水平。较高的TDEE意味着您总体上消耗更多卡路里，通常是因为活动量较大或BMR较高。较低的TDEE则表明日常活动较少或BMR较低。';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalZhCn implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '每日目标';
	@override String get description => '每日目标是基于您的TDEE和体重目标推荐的每日卡路里摄入量。为了减重，您的卡路里摄入量应低于TDEE；为了维持体重，您的卡路里摄入量应与TDEE持平；为了增重，您的卡路里摄入量应高于TDEE。这有助于您以健康的节奏实现预期的体重变化。';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhCn implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '读取总消耗的卡路里';
	@override String get description => '允许应用读取您从健康连接中消耗的总卡路里。';
	@override String get usage => '此权限用于在应用中显示您的每日卡路里消耗，帮助您了解全天的能量支出。';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadZhCn implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '读取营养数据';
	@override String get description => '允许应用从健康连接读取营养数据。';
	@override String get usage => '此权限允许应用读取可能由其他连接到健康连接的应用记录的营养信息，提供您营养的全面视图。';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteZhCn implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '写入营养数据';
	@override String get description => '允许应用将营养数据写入健康连接。';
	@override String get usage => '此权限允许应用将您记录的餐食同步到健康连接，使您的营养数据对您使用的其他健康和健身应用可用。';
}

/// The flat map containing all translations for locale <zh-CN>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsZhCn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => '简体中文',
			'flag' => '🇨🇳',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => '欢迎使用${appLabel}',
			'onboarding.subtitle' => '您个性化的营养伴侣，基于 AI 技术',
			'onboarding.getStarted' => '开始使用',
			'onboarding.features.foodRecognition.title' => '智能食物识别',
			'onboarding.features.foodRecognition.description' => '拍摄照片，让 AI 识别您的餐点',
			'onboarding.features.aiAnalysis.title' => 'AI 分析',
			'onboarding.features.aiAnalysis.description' => '根据您的描述获取即时营养信息',
			'onboarding.features.healthIntegration.title' => '健康整合',
			'onboarding.features.healthIntegration.description' => '连接 Health Connect 以获得更好的洞察',
			'onboarding.gender.title' => '您的性别是什么？',
			'onboarding.gender.description' => '性别帮助我们准确计算您的基础代谢率（BMR）。',
			'onboarding.gender.next' => '下一步',
			'onboarding.height.title' => '你多高？',
			'onboarding.height.description' => '你的身高有助于我们准确计算你的BMI和能量需求。',
			'onboarding.height.metric' => '公制',
			'onboarding.height.imperial' => '英制',
			'onboarding.height.next' => '下一步',
			'onboarding.weight.currentTitle' => '你当前的体重是多少？',
			'onboarding.weight.currentDescription' => '你的当前体重对于个性化你的日常目标至关重要。',
			'onboarding.weight.targetTitle' => '你的目标体重是多少？',
			'onboarding.weight.targetDescription' => '设定目标体重有助于我们制定你的长期计划。',
			'onboarding.weight.metric' => '公制',
			'onboarding.weight.imperial' => '英制',
			'onboarding.weight.next' => '下一步',
			'onboarding.age.title' => '你的生日是什么时候？',
			'onboarding.age.description' => '你的年龄有助于我们准确计算你的卡路里需求。',
			'onboarding.age.next' => '下一步',
			'onboarding.bmiScale.underweight' => '体重过轻',
			'onboarding.bmiScale.healthy' => '健康',
			'onboarding.bmiScale.overweight' => '超重',
			'onboarding.bmiScale.obese' => '肥胖',
			'onboarding.bmiScale.categories.underweight' => '体重过轻',
			'onboarding.bmiScale.categories.healthyWeight' => '健康体重',
			'onboarding.bmiScale.categories.overweight' => '超重',
			'onboarding.bmiScale.categories.obese' => '肥胖',
			'onboarding.bmiScale.messages.underweight' => '我们可以帮助您制定健康计划，通过营养丰富的餐食来达到均衡体重。',
			'onboarding.bmiScale.messages.healthy' => '干得好！您处于健康范围内。我们将帮助您维持活力和能量水平。',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel}将通过人工智能支持的追踪简化您的旅程，帮助您轻松达到目标。',
			'onboarding.bmiScale.messages.obese' => '我们在这里支持您，为您的健康目标提供个性化指导和可持续策略。',
			'onboarding.weightGoal.title' => '您的目标是什么？',
			'onboarding.weightGoal.description' => '选择最能描述您想要达到的目标',
			'onboarding.activityLevel.title' => '您有多活跃？',
			'onboarding.activityLevel.description' => '这有助于我们更准确地计算您的每日卡路里需求',
			'onboarding.healthConnect.title' => '与健康连接',
			'onboarding.healthConnect.description' => '同步您的健康数据以获得更好的洞察和自动卡路里追踪',
			'onboarding.healthConnect.automaticTracking.title' => '自动卡路里追踪',
			'onboarding.healthConnect.automaticTracking.description' => '从您的健身应用中跟踪消耗的卡路里',
			'onboarding.healthConnect.progressInsights.title' => '进展洞察',
			'onboarding.healthConnect.progressInsights.description' => '获取您的健康趋势的详细洞察',
			'onboarding.healthConnect.seamlessIntegration.title' => '无缝集成',
			'onboarding.healthConnect.seamlessIntegration.description' => '同步您最喜欢的健康应用的数据',
			'onboarding.healthConnect.connected' => '健康连接已连接',
			'onboarding.healthConnect.notConnected' => '健康连接未连接',
			'onboarding.healthConnect.setup' => '设置健康连接',
			'onboarding.healthConnect.skipForNow' => '暂时跳过',
			'onboarding.healthConnect.statusConnected' => '健康连接已连接。',
			'onboarding.healthConnect.statusSuccess' => '健康连接成功连接！',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => '权限被拒绝。请在手机设置中启用${appLabel}的健康连接权限。',
			'onboarding.healthConnect.statusError' => ({required Object error}) => '设置健康连接时出错: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => '你并不孤单',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => '研究显示，持续跟踪是长期成功的首要预测因素。',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '对于一个 ${age} 岁的 ${gender}，想要 ${goal}，持续跟踪是成功的首要预测因素。',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel}让这一切比手动操作轻松10倍。',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => '准备好开始了吗？',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => '拍摄您的餐点以进行即时分析',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => '保持记录以看到有意义的进展',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => '每天记录您的进展，保持动力',
			'onboarding.reinforcement.trackingSuccess.button' => '开始吧',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => '个体',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => '更健康的你',
			'onboarding.reinforcement.healthProfile.title' => '您的健康资料',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => '根据你的数据，你的BMI是 ${bmi}。',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => '让我们完成你的资料，以定制你的体验。',
			'onboarding.reinforcement.healthProfile.goalGain' => '增加',
			'onboarding.reinforcement.healthProfile.goalLose' => '减少',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => '为了达到你的目标，你需要 ${direction} ${diff} ${unit}。',
			'onboarding.reinforcement.healthProfile.goalReached' => '你已达到目标体重！我们将帮助你维持这个体重。',
			'onboarding.reinforcement.healthProfile.button' => '开始吧',
			'onboarding.reinforcement.goalLifestyle.title' => '优秀的开始！',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => '您已迈出了通向${goalText}的第一步。既然您${activityText}，${appLabel}将根据您的生活方式调整目标。',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => '个性化的卡路里目标',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => '人工智能驱动的餐点检测',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => '详细的宏观营养素分析',
			'onboarding.reinforcement.goalLifestyle.button' => '开始吧',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => '你的目标',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => '活跃',
			'tabs.dashboard' => '仪表板',
			'tabs.history' => '历史记录',
			'home.dailyGoal.title' => '设定您的每日目标',
			'home.dailyGoal.titleSet' => '您的每日目标',
			'home.dailyGoal.description' => '准备好开始您的健康之旅了吗？在下面设定您的每日卡路里目标，开启您的进步之路。',
			'home.dailyGoal.descriptionSet' => '您的指引已设定！这是您的每日卡路里目标，帮助您前行。',
			'home.dailyGoal.yourGoal' => '您的目标',
			'home.dailyGoal.dailyCalories' => '每日卡路里 (千卡)',
			'home.dailyGoal.setGoal' => '设定目标',
			'home.dailyGoal.intake' => '摄入',
			'home.dailyGoal.burned' => '消耗',
			'home.dailyGoal.weightImpact' => '体重影响',
			'home.dailyGoal.estLoss' => '预估减少',
			'home.dailyGoal.estGain' => '预估增加',
			'home.dailyGoal.kcal' => '千卡',
			'home.dailySummary.title' => '每日总结',
			'home.dailySummary.calories' => '卡路里',
			'home.dailySummary.carbs' => '碳水化合物',
			'home.dailySummary.protein' => '蛋白质',
			'home.dailySummary.fat' => '脂肪',
			'home.dailySummary.fiber' => '纤维',
			'home.intakeProgress.title' => '今天的宏观营养分配',
			'home.intakeProgress.target' => '目标',
			'home.intakeProgress.current' => '当前',
			'home.intakeHistory.title' => '7天宏观历史',
			'home.intakeHistory.noHistoryYet' => '还没有历史记录',
			'home.intakeHistory.startLogging' => '开始记录餐点，以查看您在此处的\n7天宏观趋势',
			'home.mealLog.title' => '已记录的餐点',
			'home.mealLog.emptyMessage' => '拍一张您最近用餐的照片以记录在这里。',
			'home.mealLog.noMealsToday' => '今天没有记录的餐点',
			'home.mealLog.seeAllMeals' => '查看所有餐点',
			'home.mealDescription.title' => '快速添加通过AI',
			'home.mealDescription.description' => '描述您的餐点，让AI处理详情。',
			'home.mealDescription.hint' => '例如：早饭我吃了一大碗燕麦粥，配上切片香蕉和一勺乳清蛋白...',
			'home.mealDescription.analyzeMeal' => '分析餐点',
			'home.favoriteMeals.title' => '收藏餐点',
			'home.favoriteMeals.description' => '快速添加您最爱的餐点。',
			'home.favoriteMeals.noFavorites' => '尚未添加收藏餐点。',
			'home.favoriteMeals.addFavoriteHint' => '点击餐点旁的星星标记为收藏。',
			'home.favoriteMeals.seeAll' => '查看所有',
			'home.favoriteMeals.add' => '添加',
			'home.mealSnap.title' => '拍照并记录您的餐点',
			'home.mealSnap.description' => '使用您的相机拍一张食物的照片进行AI分析。',
			'home.mealSnap.openCamera' => '打开相机',
			'home.connectHealth.title' => '与健康应用同步',
			'home.connectHealth.description' => '将您的营养数据与健康应用同步',
			'home.connectHealth.install' => '安装',
			'home.connectHealth.connect' => '连接',
			'history.noMeals' => '没有记录的餐点',
			'history.emptyMessage' => '拍一张您最近用餐的照片以记录在这里。',
			'history.today' => '今天',
			'history.yesterday' => '昨天',
			'meal.ohNo' => '哦不！',
			'meal.delete' => '删除',
			'meal.editMeal' => '编辑餐点',
			'meal.addMeal' => '添加餐点',
			'meal.saveMeal' => '保存餐点',
			'meal.save' => '保存',
			'meal.mealName' => '餐点名称',
			'meal.mealQuantity' => '餐数量',
			'meal.mealQuantityHint' => '例如：1碗，2片',
			'meal.timeOfMeal' => '餐点时间',
			'meal.timeOfMealHint' => '选择您吃餐的时间',
			'meal.mealType' => '餐点类型',
			'meal.nutrition.calories' => '卡路里',
			'meal.nutrition.carbs' => '碳水化合物 (克)',
			'meal.nutrition.protein' => '蛋白质 (克)',
			'meal.nutrition.fat' => '脂肪 (克)',
			'meal.nutrition.fiber' => '纤维 (克)',
			'meal.deleteConfirmation.title' => '删除餐点',
			'meal.deleteConfirmation.message' => '您确定要删除这个餐点记录吗？',
			'meal.deleteConfirmation.cancel' => '取消',
			'meal.deleteConfirmation.delete' => '删除',
			'meal.addedToLog' => '餐点已添加到您的记录中！',
			'meal.couldNotAdd' => ({required Object error}) => '无法添加餐点：${error}',
			'meal.removedFromFavorites' => '已从收藏中移除！',
			'meal.savedAsFavorite' => '餐点已保存为收藏！',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => '无法更新收藏：${error}',
			'meal.failedToProcess' => ({required Object error}) => '处理失败：${error}',
			'meal.failedToProcessImage' => ({required Object error}) => '处理图像失败：${error}',
			'meal.errorCompressingImage' => ({required Object error}) => '压缩图像时出错：${error}',
			'meal.failedToSave' => '数据保存失败。请再试一次。',
			'favorites.title' => '收藏夹',
			'favorites.empty' => '尚未添加收藏餐点。',
			'profile.title' => '个人资料',
			'profile.noProfileData' => '未找到个人资料数据',
			'profile.yourProfile' => '您的个人资料',
			'profile.viewAndManage' => '查看并管理您的健康信息',
			'profile.sections.profile' => '个人资料',
			'profile.sections.basicInformation' => '基本信息',
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
			'profile.notSet' => '未设定',
			'profile.years' => '年',
			'profile.updatedSuccessfully' => '个人资料更新成功！',
			'profile.calculatedValues.bmr' => '基础代谢率',
			'profile.calculatedValues.tdee' => '总日常能量消耗',
			'profile.calculatedValues.dailyGoal' => '每日目标',
			'profile.calculatedValues.calPerDay' => '卡路里/天',
			'profile.calculatedValues.notAvailable' => '不可用',
			'healthScore.title' => '健康评分',
			'healthScore.whyThisScore' => '为什么是这个评分？',
			'healthScore.note' => '此评分是基于识别的成分和营养密度的AI估算。始终咨询专业人士以获取饮食建议。',
			'healthScore.unhealthy' => '不健康',
			'healthScore.healthy' => '健康',
			'healthScore.neutral' => '中性',
			'editProfile.title' => '编辑个人资料',
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
			'editProfile.metricCm' => '公制 (厘米)',
			'editProfile.imperialFtIn' => '英制 (英尺/英寸)',
			'editProfile.metricKg' => '公制 (千克)',
			'editProfile.imperialLbs' => '英制 (磅)',
			'editProfile.genders.male' => '男性',
			'editProfile.genders.female' => '女性',
			'editProfile.genders.other' => '其他',
			'editProfile.weightGoals.loseWeight.name' => '减重',
			'editProfile.weightGoals.loseWeight.description' => '创建卡路里赤字以减轻体重',
			'editProfile.weightGoals.maintainWeight.name' => '维持体重',
			'editProfile.weightGoals.maintainWeight.description' => '保持你目前的体重',
			'editProfile.weightGoals.gainWeight.name' => '增重',
			'editProfile.weightGoals.gainWeight.description' => '创建卡路里盈余以增加体重',
			'editProfile.activityLevels.sedentary.name' => '久坐',
			'editProfile.activityLevels.sedentary.description' => '几乎没有运动',
			'editProfile.activityLevels.lightlyActive.name' => '轻度活跃',
			'editProfile.activityLevels.lightlyActive.description' => '每周轻度运动1-3天',
			'editProfile.activityLevels.moderatelyActive.name' => '中度活跃',
			'editProfile.activityLevels.moderatelyActive.description' => '每周中度运动3-5天',
			'editProfile.activityLevels.veryActive.name' => '高度活跃',
			'editProfile.activityLevels.veryActive.description' => '每周剧烈运动6-7天',
			'editProfile.activityLevels.extremelyActive.name' => '极度活跃',
			'editProfile.activityLevels.extremelyActive.description' => '非常剧烈的运动或体力工作',
			'settings.title' => '设置',
			'settings.sections.profile' => '个人资料',
			'settings.sections.localization' => '本地化',
			'settings.sections.notifications' => '通知',
			'settings.sections.healthConnect' => '健康连接',
			'settings.sections.supportAndLegal' => '支持与法律',
			'settings.sections.about' => '关于',
			'settings.sections.dangerZone' => '危险区域',
			'settings.sections.developer' => '开发者',
			'settings.editProfile.title' => '编辑个人资料',
			'settings.editProfile.subtitle' => '更新您的个人信息',
			'settings.language.title' => '语言',
			'settings.language.subtitle' => '选择您的首选语言',
			'settings.language.searchHint' => '搜索语言...',
			'settings.language.noResults' => '未找到结果',
			'settings.heightUnit.title' => '身高单位',
			'settings.weightUnit.title' => '体重单位',
			'settings.mealReminders.title' => '餐点提醒',
			'settings.mealReminders.subtitle' => '通过及时的提醒保持正轨',
			'settings.theme.title' => '主题',
			'settings.theme.light' => '浅色',
			'settings.theme.dark' => '深色',
			'settings.theme.system' => '系统',
			'settings.sendFeedback.title' => '发送反馈',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '帮助我们改善${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel}应用反馈',
			'settings.sendFeedback.emailBodyPrefix' => '请在下面提供您的反馈：',
			'settings.sendFeedback.appVersion' => '应用版本',
			'settings.sendFeedback.device' => '设备',
			'settings.sendFeedback.osVersion' => '操作系统版本',
			'settings.sendFeedback.uid' => '用户ID',
			'settings.clearAllData.title' => '清除所有数据',
			'settings.clearAllData.subtitle' => '不可逆转地删除您的所有信息',
			'settings.clearAllData.confirmationTitle' => '清除所有数据？',
			'settings.clearAllData.confirmationMessage' => '此操作无法撤销。您所有记录的餐点、收藏和个人资料设置将被永久删除。',
			'settings.clearAllData.cancel' => '取消',
			'settings.clearAllData.clearEverything' => '清除所有',
			'settings.debugOptions.title' => '调试选项',
			'settings.developerModeEnabled' => '开发者模式已启用！',
			'settings.healthConnect.title' => '健康连接',
			'settings.healthConnect.subtitle' => '查看和管理权限',
			'settings.healthConnect.unavailable.title' => '健康连接不可用',
			'settings.healthConnect.unavailable.description' => '该设备不支持健康连接。它需要 Android 14 或更高版本。',
			'settings.healthConnect.permissions.title' => '权限',
			'settings.healthConnect.permissions.description' => '需请求以下权限以提供健康连接集成：',
			'settings.healthConnect.permissions.granted' => '已授予',
			'settings.healthConnect.permissions.notGranted' => '未授予',
			'settings.healthConnect.permissions.caloriesBurned.title' => '读取总消耗的卡路里',
			'settings.healthConnect.permissions.caloriesBurned.description' => '允许应用读取您从健康连接中消耗的总卡路里。',
			'settings.healthConnect.permissions.caloriesBurned.usage' => '此权限用于在应用中显示您的每日卡路里消耗，帮助您了解全天的能量支出。',
			'settings.healthConnect.permissions.nutritionRead.title' => '读取营养数据',
			'settings.healthConnect.permissions.nutritionRead.description' => '允许应用从健康连接读取营养数据。',
			'settings.healthConnect.permissions.nutritionRead.usage' => '此权限允许应用读取可能由其他连接到健康连接的应用记录的营养信息，提供您营养的全面视图。',
			'settings.healthConnect.permissions.nutritionWrite.title' => '写入营养数据',
			'settings.healthConnect.permissions.nutritionWrite.description' => '允许应用将营养数据写入健康连接。',
			'settings.healthConnect.permissions.nutritionWrite.usage' => '此权限允许应用将您记录的餐食同步到健康连接，使您的营养数据对您使用的其他健康和健身应用可用。',
			'settings.healthConnect.managePermissions' => '管理权限',
			'settings.healthConnect.openSettings' => '打开健康连接设置',
			'settings.healthConnect.requestPermissions' => '请求权限',
			'settings.about.title' => '关于',
			'settings.about.tagline' => '快速、免费，并注重隐私的卡路里意识',
			'settings.about.ourStory.title' => '我们的故事',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel}的诞生源于一个简单的挫败感：大多数卡路里追踪应用要么过于复杂，要么需要不断手动输入，要么收取高额订阅费用，或者在隐私方面有所妥协。\n\n作为一名独立开发者，我想构建一个更简单、更公正的应用——一个利用AI减少努力，保持快速和免费的应用，并尊重你的健康数据。\n\n${appLabel}是我希望能够存在的应用：无账户，无追踪，无广告——只有清晰、实用的见解和你的健康目标。',
			'settings.about.privacy.title' => '您的隐私很重要',
			'settings.about.privacy.description' => '隐私不是事后考虑——它是一项设计原则。这在实践中意味着什么：',
			'settings.about.privacy.noAccounts' => '无需账户\n立即使用应用。无需注册，无需身份。',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => '无行为追踪\n${appLabel}不监测您的活动，不建立使用档案，也不会在应用或网站之间追踪您。',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => '无广告设计\n${appLabel}的设计无需广告或基于数据的货币化。',
			'settings.about.privacy.noDataSelling' => '无数据出售\n您的健康数据从不出售或与第三方共享。',
			'settings.about.privacy.localStorage' => '本地优先存储\n您的数据保留在您的设备上。',
			'settings.about.privacy.privacyPolicy' => '隐私政策',
			'settings.about.developer.title' => '由独立开发者构建',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel}由一位专注于创建平静、尊重隐私的健康软件的独立开发者构建和维护。\n\n反馈会被个人阅读，并帮助塑造应用的发展方向。',
			'settings.about.developer.website' => '网站',
			'settings.about.developer.email' => '电子邮件',
			'settings.about.feedback.title' => ({required Object appLabel}) => '喜欢${appLabel}吗？',
			'settings.about.feedback.description' => ({required Object appLabel}) => '您的反馈有助于使${appLabel}对每个人变得更好。',
			'settings.about.feedback.rateApp' => '在应用商店评分',
			'settings.about.feedback.sendFeedback' => '发送反馈',
			'reminders.title' => '通过提醒保持正轨',
			'reminders.description' => '获取温馨提醒记录您的餐点，确保您与营养目标保持一致',
			'reminders.notificationsEnabled' => '通知已启用',
			'reminders.notificationsDisabled' => '通知已禁用',
			'reminders.enabledSubtitle' => '您将收到餐点提醒',
			'reminders.disabledSubtitle' => '启用通知以获取餐点提醒',
			'reminders.mealReminders' => '餐点提醒',
			'reminders.breakfast' => '早餐',
			'reminders.lunch' => '午餐',
			'reminders.dinner' => '晚餐',
			'reminders.snack' => '小吃',
			'reminders.unknown' => '未知',
			'reminders.change' => '更改',
			'reminders.enableNotifications' => '启用通知',
			'reminders.skipForNow' => '暂时跳过',
			'reminders.saveChanges' => '保存更改',
			'reminders.enabledSuccessfully' => '通知启用成功！',
			'reminders.permissionDenied' => '通知权限被拒绝',
			'reminders.errorEnabling' => ({required Object error}) => '启用通知时出错：${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => '完成设置时出错：${error}',
			'notifications.breakfast.title' => '早餐时间！🍳',
			'notifications.breakfast.body' => '别忘了记录您的早餐',
			'notifications.lunch.title' => '午餐时间！🥗',
			'notifications.lunch.body' => '是时候记录您的午餐了',
			'notifications.dinner.title' => '晚餐时间！🍽️',
			'notifications.dinner.body' => '别忘了记录您的晚餐',
			'notifications.snack.title' => '小吃时间！🍎',
			'notifications.snack.body' => '该享受健康的小吃了',
			'notifications.test.title' => '测试通知',
			'login.title' => '登录',
			'login.signInWithGoogle' => '通过Google登录',
			'login.signInFailed' => 'Google登录失败或被取消。',
			'disclaimer.pleaseNote' => '请注意',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel}提供的营养信息为估算值。准确性取决于您的输入和食物变种。请将其用作参考，而非绝对来源。如需个性化的饮食建议，请咨询专业人士。',
			'disclaimer.snap.portionSize.title' => '食物份量',
			'disclaimer.snap.portionSize.description' => '估计的准确性在很大程度上依赖于您对食物份量的正确评估。',
			'disclaimer.snap.preparationMethods.title' => '烹饪方法',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => '烹饪方法可能会显著改变食物的营养成分。${appLabel}的估算可能并未始终考虑这些变化。',
			'disclaimer.snap.ingredients.title' => '成分',
			'disclaimer.snap.ingredients.description' => '成分复杂的菜肴可能导致估计的准确性降低。',
			'disclaimer.snap.databaseLimitations.title' => '数据库限制',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}的食物数据库庞大，但可能不包括每个单独的食物项目或变种。',
			'disclaimer.weightEstimate.title' => '关于体重估计',
			'disclaimer.weightEstimate.description' => '预计的体重变化是基于简单的卡路里摄入与消耗模型的理论估计。仅用于激励指导，而非对您实际体重的预测。',
			'disclaimer.weightEstimate.calorieAccuracy.title' => '卡路里准确性',
			'disclaimer.weightEstimate.calorieAccuracy.description' => '此估计的准确性仅依赖于您记录的卡路里摄入与消耗。不准确的记录将导致不准确的预测。',
			'disclaimer.weightEstimate.biologicalFactors.title' => '生物因素',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => '实际的体重减轻/增加受代谢、荷尔蒙、睡眠、压力、水合作用以及${appLabel}无法测量的其他个体因素影响。',
			'disclaimer.weightEstimate.waterWeight.title' => '水分体重与波动',
			'disclaimer.weightEstimate.waterWeight.description' => '正常的日常体重可能因水分滞留、消化和时间而有显著波动。该估计未考虑这些日常变化。',
			'disclaimer.weightEstimate.professionalGuidance.title' => '专业指导',
			'disclaimer.weightEstimate.professionalGuidance.description' => '请勿仅凭此估计作出医疗决策。请始终咨询医疗专业人士或注册营养师以获取个性化的体重管理建议。',
			'disclaimer.healthMetrics.description' => '这些指标帮助您了解身体的能量需求并指导您的营养目标。',
			'disclaimer.healthMetrics.bmr.title' => '基础代谢率（BMR）',
			'disclaimer.healthMetrics.bmr.description' => '基础代谢率（BMR）是您的身体在休息时维持基本功能（如呼吸和循环）所消耗的卡路里。BMR取决于您的年龄、性别、身高和体重。较高的BMR意味着您的身体在休息时自然消耗更多的卡路里，通常是因为肌肉质量较高、年龄较小或为男性。较低的BMR通常表明肌肉质量较少、年龄较大或为女性。',
			'disclaimer.healthMetrics.tdee.title' => '每日总能量消耗（TDEE）',
			'disclaimer.healthMetrics.tdee.description' => '每日总能量消耗（TDEE）是您每天消耗的总卡路里，包括您的BMR加上来自体育活动和日常活动的卡路里。TDEE取决于您的BMR和活动水平。较高的TDEE意味着您总体上消耗更多卡路里，通常是因为活动量较大或BMR较高。较低的TDEE则表明日常活动较少或BMR较低。',
			'disclaimer.healthMetrics.dailyGoal.title' => '每日目标',
			'disclaimer.healthMetrics.dailyGoal.description' => '每日目标是基于您的TDEE和体重目标推荐的每日卡路里摄入量。为了减重，您的卡路里摄入量应低于TDEE；为了维持体重，您的卡路里摄入量应与TDEE持平；为了增重，您的卡路里摄入量应高于TDEE。这有助于您以健康的节奏实现预期的体重变化。',
			'common.close' => '关闭',
			'common.kContinue' => '继续',
			'errors.loadingProfileData' => '加载个人资料数据时出错',
			'errors.somethingWentWrong' => '出现了一些问题。',
			'debug.title' => '调试选项',
			'debug.sections.notifications' => '通知',
			'debug.sections.healthConnect' => '健康连接',
			'debug.sections.appInfo' => '应用信息',
			'debug.showActiveNotifications' => '显示活动通知',
			'debug.scheduleTestNotification' => '安排测试通知 (10秒)',
			'debug.triggerBreakfastNotification' => '触发早餐通知',
			'debug.cancelAllNotifications' => '取消所有通知',
			'debug.activeNotifications' => '活动通知',
			'debug.noTitle' => '无标题',
			'debug.noBody' => '无内容',
			'debug.fetchTodaysSteps' => '获取今天的步数',
			'debug.fetchTodaysCalories' => '获取今天的卡路里',
			'debug.fetchLatestWeight' => '获取最新体重',
			'debug.fetchLatestHeight' => '获取最新身高',
			'debug.writeTestWeight' => '写入测试体重 (70kg)',
			'debug.writeTestHeight' => '写入测试身高 (175cm)',
			'debug.syncLast7Days' => '同步过去7天',
			'debug.sync7DaysTitle' => '7天同步',
			'debug.checkCurrentLocale' => '检查当前语言环境',
			'debug.currentLocale' => '当前语言环境',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => '语言：${languageCode}\n国家：${countryCode}\n单位系统：${unitSystem}',
			'debug.latestWeight' => '最新体重',
			'debug.latestHeight' => '最新身高',
			'debug.todaysCalories' => '今天的卡路里',
			'debug.totalCaloriesBurned' => ({required Object calories}) => '总消耗卡路里：${calories}',
			'debug.syncSuccess' => ({required Object count}) => '成功获取过去7天的${count}个数据点（步数、卡路里和体重）。',
			'debug.noWeightData' => '过去30天未找到体重数据。',
			'debug.noHeightData' => '过去一年未找到身高数据。',
			'debug.noCalorieData' => '今天未找到卡路里数据。',
			'debug.weightWritten' => '成功写入测试体重（70公斤）。',
			'debug.weightWriteFailed' => '写入测试体重失败。',
			'debug.heightWritten' => '成功写入测试身高（175厘米）。',
			'debug.heightWriteFailed' => '写入测试身高失败。',
			'debug.noNotifications' => '没有活动通知。',
			'debug.testNotificationScheduled' => '测试通知已安排在10秒后发送。',
			'debug.testNotificationBody' => '这是安排在10秒后发送的测试通知。',
			'debug.breakfastNotificationTriggered' => '早餐通知已触发。',
			'debug.allNotificationsCancelled' => '所有通知已取消。',
			'debug.fetchingData' => '正在获取过去7天的数据...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'health.syncFailed' => '无法同步到健康连接',
			'health.mealSynced' => '餐点已与健康连接同步',
			_ => null,
		};
	}
}
