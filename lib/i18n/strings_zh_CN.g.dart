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
	@override late final _TranslationsOnboardingZhCn onboarding = _TranslationsOnboardingZhCn._(_root);
	@override late final _TranslationsTabsZhCn tabs = _TranslationsTabsZhCn._(_root);
	@override late final _TranslationsHomeZhCn home = _TranslationsHomeZhCn._(_root);
	@override late final _TranslationsHistoryZhCn history = _TranslationsHistoryZhCn._(_root);
	@override late final _TranslationsMealZhCn meal = _TranslationsMealZhCn._(_root);
	@override late final _TranslationsFavoritesZhCn favorites = _TranslationsFavoritesZhCn._(_root);
	@override late final _TranslationsProfileZhCn profile = _TranslationsProfileZhCn._(_root);
	@override late final _TranslationsEditProfileZhCn editProfile = _TranslationsEditProfileZhCn._(_root);
	@override late final _TranslationsSettingsZhCn settings = _TranslationsSettingsZhCn._(_root);
	@override late final _TranslationsRemindersZhCn reminders = _TranslationsRemindersZhCn._(_root);
	@override late final _TranslationsNotificationsZhCn notifications = _TranslationsNotificationsZhCn._(_root);
	@override late final _TranslationsLoginZhCn login = _TranslationsLoginZhCn._(_root);
	@override late final _TranslationsDisclaimerZhCn disclaimer = _TranslationsDisclaimerZhCn._(_root);
	@override late final _TranslationsCommonZhCn common = _TranslationsCommonZhCn._(_root);
	@override late final _TranslationsErrorsZhCn errors = _TranslationsErrorsZhCn._(_root);
	@override late final _TranslationsDebugZhCn debug = _TranslationsDebugZhCn._(_root);
}

// Path: onboarding
class _TranslationsOnboardingZhCn implements TranslationsOnboardingEn {
	_TranslationsOnboardingZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get welcome => '欢迎使用 Calorify';
	@override String get subtitle => '您个性化的营养伴侣，基于 AI 技术';
	@override String get getStarted => '开始使用';
	@override late final _TranslationsOnboardingFeaturesZhCn features = _TranslationsOnboardingFeaturesZhCn._(_root);
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
	@override String get title => '历史记录';
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
	@override String get saveMeal => '保存餐点';
	@override late final _TranslationsMealDeleteConfirmationZhCn deleteConfirmation = _TranslationsMealDeleteConfirmationZhCn._(_root);
	@override String get addedToLog => '餐点已添加到您的记录中！';
	@override String get couldNotAdd => '无法添加餐点：{error}';
	@override String get removedFromFavorites => '已从收藏中移除！';
	@override String get savedAsFavorite => '餐点已保存为收藏！';
	@override String get couldNotUpdateFavorite => '无法更新收藏：{error}';
	@override String get failedToProcess => '处理失败：{error}';
	@override String get failedToProcessImage => '处理图像失败：{error}';
	@override String get errorCompressingImage => '压缩图像时出错：{error}';
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
	@override String get editProfile => '编辑个人资料';
	@override String get noProfileData => '未找到个人资料数据';
	@override String get yourProfile => '您的个人资料';
	@override String get viewAndManage => '查看并管理您的健康信息';
	@override late final _TranslationsProfileSectionsZhCn sections = _TranslationsProfileSectionsZhCn._(_root);
	@override String get gender => '性别';
	@override String get height => '身高';
	@override String get weight => '体重';
	@override String get age => '年龄';
	@override String get weightGoal => '体重目标';
	@override String get activityLevel => '活动水平';
	@override String get healthMetrics => '健康指标';
	@override String get notSet => '未设定';
	@override String get years => '年';
	@override String get updatedSuccessfully => '个人资料更新成功！';
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
	@override late final _TranslationsSettingsSendFeedbackZhCn sendFeedback = _TranslationsSettingsSendFeedbackZhCn._(_root);
	@override late final _TranslationsSettingsClearAllDataZhCn clearAllData = _TranslationsSettingsClearAllDataZhCn._(_root);
	@override late final _TranslationsSettingsDebugOptionsZhCn debugOptions = _TranslationsSettingsDebugOptionsZhCn._(_root);
	@override String get developerModeEnabled => '开发者模式已启用！';
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
	@override String get change => '更改';
	@override String get enableNotifications => '启用通知';
	@override String get skipForNow => '暂时跳过';
	@override String get saveChanges => '保存更改';
	@override String get continue_ => '继续';
	@override String get enabledSuccessfully => '通知启用成功！';
	@override String get permissionDenied => '通知权限被拒绝';
	@override String get errorEnabling => '启用通知时出错：{error}';
	@override String get errorCompletingSetup => '完成设置时出错：{error}';
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
}

// Path: common
class _TranslationsCommonZhCn implements TranslationsCommonEn {
	_TranslationsCommonZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get cancel => '取消';
	@override String get save => '保存';
	@override String get delete => '删除';
	@override String get edit => '编辑';
	@override String get close => '关闭';
	@override String get kContinue => '继续';
	@override String get skip => '跳过';
	@override String get error => '错误';
	@override String get loading => '加载中...';
	@override String get notSet => '未设定';
	@override String get today => '今天';
	@override String get yesterday => '昨天';
}

// Path: errors
class _TranslationsErrorsZhCn implements TranslationsErrorsEn {
	_TranslationsErrorsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => '加载个人资料数据时出错';
	@override String get generic => '发生错误。请重试。';
}

// Path: debug
class _TranslationsDebugZhCn implements TranslationsDebugEn {
	_TranslationsDebugZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '调试选项';
	@override String get showActiveNotifications => '显示活动通知';
	@override String get scheduleTestNotification => '安排测试通知 (10秒)';
	@override String get triggerBreakfastNotification => '触发早餐通知';
	@override String get cancelAllNotifications => '取消所有通知';
	@override String get activeNotifications => '活动通知';
	@override String get id => 'ID: {id}';
	@override String get fetchLatestWeight => '获取最新体重';
	@override String get fetchLatestHeight => '获取最新身高';
	@override String get writeTestWeight => '写入测试体重 (70kg)';
	@override String get writeTestHeight => '写入测试身高 (175cm)';
	@override String get syncLast7Days => '同步过去7天';
	@override String get checkCurrentLocale => '检查当前语言环境';
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

// Path: editProfile.sections
class _TranslationsEditProfileSectionsZhCn implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => '个人信息';
	@override String get physicalMeasurements => '身体测量';
	@override String get goalsAndActivity => '目标与活动';
}

// Path: settings.sections
class _TranslationsSettingsSectionsZhCn implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get profile => '个人资料';
	@override String get localization => '本地化';
	@override String get notifications => '通知';
	@override String get supportAndLegal => '支持与法律';
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

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackZhCn implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackZhCn._(this._root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '发送反馈';
	@override String get subtitle => '帮助我们改进Calorify';
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
	@override String get description => 'Calorify提供估计的营养信息。准确性取决于您的输入和食物变化。将其作为指南，而非最终来源。请咨询专业人士以获取个性化的饮食建议。';
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
	@override String get description => '烹饪方式会显著影响食物的营养成分。Calorify的估计可能并未总是考虑这些变化。';
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
	@override String get description => 'Calorify的食物数据库庞大，但可能不会包含每一种食物或变体。';
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
	@override String get description => '实际的体重减轻/增加受到新陈代谢、荷尔蒙、睡眠、压力、水分摄入和其他个体因素的影响，Calorify无法测量。';
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
			'onboarding.welcome' => '欢迎使用 Calorify',
			'onboarding.subtitle' => '您个性化的营养伴侣，基于 AI 技术',
			'onboarding.getStarted' => '开始使用',
			'onboarding.features.foodRecognition.title' => '智能食物识别',
			'onboarding.features.foodRecognition.description' => '拍摄照片，让 AI 识别您的餐点',
			'onboarding.features.aiAnalysis.title' => 'AI 分析',
			'onboarding.features.aiAnalysis.description' => '根据您的描述获取即时营养信息',
			'onboarding.features.healthIntegration.title' => '健康整合',
			'onboarding.features.healthIntegration.description' => '连接 Health Connect 以获得更好的洞察',
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
			'history.title' => '历史记录',
			'history.noMeals' => '没有记录的餐点',
			'history.emptyMessage' => '拍一张您最近用餐的照片以记录在这里。',
			'history.today' => '今天',
			'history.yesterday' => '昨天',
			'meal.ohNo' => '哦不！',
			'meal.delete' => '删除',
			'meal.editMeal' => '编辑餐点',
			'meal.saveMeal' => '保存餐点',
			'meal.deleteConfirmation.title' => '删除餐点',
			'meal.deleteConfirmation.message' => '您确定要删除这个餐点记录吗？',
			'meal.deleteConfirmation.cancel' => '取消',
			'meal.deleteConfirmation.delete' => '删除',
			'meal.addedToLog' => '餐点已添加到您的记录中！',
			'meal.couldNotAdd' => '无法添加餐点：{error}',
			'meal.removedFromFavorites' => '已从收藏中移除！',
			'meal.savedAsFavorite' => '餐点已保存为收藏！',
			'meal.couldNotUpdateFavorite' => '无法更新收藏：{error}',
			'meal.failedToProcess' => '处理失败：{error}',
			'meal.failedToProcessImage' => '处理图像失败：{error}',
			'meal.errorCompressingImage' => '压缩图像时出错：{error}',
			'favorites.title' => '收藏夹',
			'favorites.empty' => '尚未添加收藏餐点。',
			'profile.title' => '个人资料',
			'profile.editProfile' => '编辑个人资料',
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
			'profile.activityLevel' => '活动水平',
			'profile.healthMetrics' => '健康指标',
			'profile.notSet' => '未设定',
			'profile.years' => '年',
			'profile.updatedSuccessfully' => '个人资料更新成功！',
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
			'settings.title' => '设置',
			'settings.sections.profile' => '个人资料',
			'settings.sections.localization' => '本地化',
			'settings.sections.notifications' => '通知',
			'settings.sections.supportAndLegal' => '支持与法律',
			'settings.sections.dangerZone' => '危险区域',
			'settings.sections.developer' => '开发者',
			'settings.editProfile.title' => '编辑个人资料',
			'settings.editProfile.subtitle' => '更新您的个人信息',
			'settings.language.title' => '语言',
			'settings.heightUnit.title' => '身高单位',
			'settings.weightUnit.title' => '体重单位',
			'settings.mealReminders.title' => '餐点提醒',
			'settings.mealReminders.subtitle' => '通过及时的提醒保持正轨',
			'settings.sendFeedback.title' => '发送反馈',
			'settings.sendFeedback.subtitle' => '帮助我们改进Calorify',
			'settings.clearAllData.title' => '清除所有数据',
			'settings.clearAllData.subtitle' => '不可逆转地删除您的所有信息',
			'settings.clearAllData.confirmationTitle' => '清除所有数据？',
			'settings.clearAllData.confirmationMessage' => '此操作无法撤销。您所有记录的餐点、收藏和个人资料设置将被永久删除。',
			'settings.clearAllData.cancel' => '取消',
			'settings.clearAllData.clearEverything' => '清除所有',
			'settings.debugOptions.title' => '调试选项',
			'settings.developerModeEnabled' => '开发者模式已启用！',
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
			'reminders.change' => '更改',
			'reminders.enableNotifications' => '启用通知',
			'reminders.skipForNow' => '暂时跳过',
			'reminders.saveChanges' => '保存更改',
			'reminders.continue_' => '继续',
			'reminders.enabledSuccessfully' => '通知启用成功！',
			'reminders.permissionDenied' => '通知权限被拒绝',
			'reminders.errorEnabling' => '启用通知时出错：{error}',
			'reminders.errorCompletingSetup' => '完成设置时出错：{error}',
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
			'disclaimer.snap.description' => 'Calorify提供估计的营养信息。准确性取决于您的输入和食物变化。将其作为指南，而非最终来源。请咨询专业人士以获取个性化的饮食建议。',
			'disclaimer.snap.portionSize.title' => '食物份量',
			'disclaimer.snap.portionSize.description' => '估计的准确性在很大程度上依赖于您对食物份量的正确评估。',
			'disclaimer.snap.preparationMethods.title' => '烹饪方法',
			'disclaimer.snap.preparationMethods.description' => '烹饪方式会显著影响食物的营养成分。Calorify的估计可能并未总是考虑这些变化。',
			'disclaimer.snap.ingredients.title' => '成分',
			'disclaimer.snap.ingredients.description' => '成分复杂的菜肴可能导致估计的准确性降低。',
			'disclaimer.snap.databaseLimitations.title' => '数据库限制',
			'disclaimer.snap.databaseLimitations.description' => 'Calorify的食物数据库庞大，但可能不会包含每一种食物或变体。',
			'disclaimer.weightEstimate.title' => '关于体重估计',
			'disclaimer.weightEstimate.description' => '预计的体重变化是基于简单的卡路里摄入与消耗模型的理论估计。仅用于激励指导，而非对您实际体重的预测。',
			'disclaimer.weightEstimate.calorieAccuracy.title' => '卡路里准确性',
			'disclaimer.weightEstimate.calorieAccuracy.description' => '此估计的准确性仅依赖于您记录的卡路里摄入与消耗。不准确的记录将导致不准确的预测。',
			'disclaimer.weightEstimate.biologicalFactors.title' => '生物因素',
			'disclaimer.weightEstimate.biologicalFactors.description' => '实际的体重减轻/增加受到新陈代谢、荷尔蒙、睡眠、压力、水分摄入和其他个体因素的影响，Calorify无法测量。',
			'disclaimer.weightEstimate.waterWeight.title' => '水分体重与波动',
			'disclaimer.weightEstimate.waterWeight.description' => '正常的日常体重可能因水分滞留、消化和时间而有显著波动。该估计未考虑这些日常变化。',
			'disclaimer.weightEstimate.professionalGuidance.title' => '专业指导',
			'disclaimer.weightEstimate.professionalGuidance.description' => '请勿仅凭此估计作出医疗决策。请始终咨询医疗专业人士或注册营养师以获取个性化的体重管理建议。',
			'common.cancel' => '取消',
			'common.save' => '保存',
			'common.delete' => '删除',
			'common.edit' => '编辑',
			'common.close' => '关闭',
			'common.kContinue' => '继续',
			'common.skip' => '跳过',
			'common.error' => '错误',
			'common.loading' => '加载中...',
			'common.notSet' => '未设定',
			'common.today' => '今天',
			'common.yesterday' => '昨天',
			'errors.loadingProfileData' => '加载个人资料数据时出错',
			'errors.generic' => '发生错误。请重试。',
			'debug.title' => '调试选项',
			'debug.showActiveNotifications' => '显示活动通知',
			'debug.scheduleTestNotification' => '安排测试通知 (10秒)',
			'debug.triggerBreakfastNotification' => '触发早餐通知',
			'debug.cancelAllNotifications' => '取消所有通知',
			'debug.activeNotifications' => '活动通知',
			'debug.id' => 'ID: {id}',
			'debug.fetchLatestWeight' => '获取最新体重',
			'debug.fetchLatestHeight' => '获取最新身高',
			'debug.writeTestWeight' => '写入测试体重 (70kg)',
			'debug.writeTestHeight' => '写入测试身高 (175cm)',
			'debug.syncLast7Days' => '同步过去7天',
			'debug.checkCurrentLocale' => '检查当前语言环境',
			_ => null,
		};
	}
}
