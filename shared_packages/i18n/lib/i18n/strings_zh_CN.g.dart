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
class TranslationsZhCn extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhCn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zhCn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-CN>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsZhCn _root = this; // ignore: unused_field

	@override 
	TranslationsZhCn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsZhCn(meta: meta ?? this.$meta);

	// Translations
	@override String get language => '简体中文';
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
	@override late final _TranslationsLocalNutritionPhase4ZhCn localNutritionPhase4 = _TranslationsLocalNutritionPhase4ZhCn._(_root);
	@override late final _TranslationsCommonZhCn common = _TranslationsCommonZhCn._(_root);
	@override late final _TranslationsFeedbackRatingZhCn feedbackRating = _TranslationsFeedbackRatingZhCn._(_root);
	@override late final _TranslationsHealthZhCn health = _TranslationsHealthZhCn._(_root);
}

// Path: errors
class _TranslationsErrorsZhCn extends TranslationsErrorsEn {
	_TranslationsErrorsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => '请求过多。请稍候再试。';
	@override String get networkError => '网络错误。请检查你的网络连接。';
	@override String get unknownError => '出现问题。请稍后再试。';
	@override String get loadingProfileData => '加载个人资料数据时出错';
	@override String get somethingWentWrong => '出现问题。';
	@override String get retry => '重试';
}

// Path: onboarding
class _TranslationsOnboardingZhCn extends TranslationsOnboardingEn {
	_TranslationsOnboardingZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '欢迎使用 ${appLabel}';
	@override String get subtitle => '由 AI 驱动的你的专属营养助手';
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
class _TranslationsTabsZhCn extends TranslationsTabsEn {
	_TranslationsTabsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get dashboard => '仪表盘';
	@override String get history => '历史';
}

// Path: home
class _TranslationsHomeZhCn extends TranslationsHomeEn {
	_TranslationsHomeZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class _TranslationsHistoryZhCn extends TranslationsHistoryEn {
	_TranslationsHistoryZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get noMeals => '暂无记录的餐食';
	@override String get emptyMessage => '拍下你最近的一餐照片以在此记录。';
	@override String get today => '今天';
	@override String get yesterday => '昨天';
}

// Path: meal
class _TranslationsMealZhCn extends TranslationsMealEn {
	_TranslationsMealZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

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
	@override String get nameRequired => '请在保存前输入餐名。';
	@override String get mealQuantity => '餐食数量';
	@override String get mealQuantityHint => '例如：1 碗，2 片';
	@override String get timeOfMeal => '用餐时间';
	@override String get timeOfMealHint => '选择你用餐的时间';
	@override String get mealType => '餐次类型';
	@override late final _TranslationsMealNutritionZhCn nutrition = _TranslationsMealNutritionZhCn._(_root);
	@override late final _TranslationsMealDeleteConfirmationZhCn deleteConfirmation = _TranslationsMealDeleteConfirmationZhCn._(_root);
	@override String get addedToLog => '餐食已添加到记录！';
	@override String couldNotAdd({required Object error}) => '无法添加餐食：${error}';
	@override String get savedSuccessfully => '餐食添加成功！';
	@override String get updatedSuccessfully => '餐食更新成功！';
	@override String errorSaving({required Object error}) => '保存餐食时出错：${error}';
	@override String get removedFromFavorites => '已从收藏中移除！';
	@override String get savedAsFavorite => '已将餐食保存为收藏！';
	@override String get unfavorite => '取消收藏';
	@override String couldNotUpdateFavorite({required Object error}) => '无法更新收藏：${error}';
	@override String get feedbackThanks => '感谢你的反馈！';
	@override String get reanalysisUpdated => '已根据你的反馈更新餐食分析。';
	@override String failedToProcess({required Object error}) => '处理失败：${error}';
	@override String failedToProcessImage({required Object error}) => '处理图片失败：${error}';
	@override String errorCompressingImage({required Object error}) => '压缩图片时出错：${error}';
	@override String get failedToSave => '保存数据失败。请重试。';
	@override String get skip => '跳过';
	@override late final _TranslationsMealQuestionFlowZhCn questionFlow = _TranslationsMealQuestionFlowZhCn._(_root);
	@override late final _TranslationsMealAnalysisZhCn analysis = _TranslationsMealAnalysisZhCn._(_root);
	@override late final _TranslationsMealLocalInferenceZhCn localInference = _TranslationsMealLocalInferenceZhCn._(_root);
	@override late final _TranslationsMealFeedbackZhCn feedback = _TranslationsMealFeedbackZhCn._(_root);
}

// Path: favorites
class _TranslationsFavoritesZhCn extends TranslationsFavoritesEn {
	_TranslationsFavoritesZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '收藏';
	@override String get empty => '还没有收藏的餐食。';
	@override String get searchPlaceholder => '搜索收藏的餐食';
	@override String get searchEmptyTitle => '没有收藏符合搜索条件';
	@override String get searchEmptySubtitle => '尝试使用不同的餐名、数量或餐次类型。';
	@override String get sortLabel => '排序收藏';
	@override String get undo => '撤销';
	@override String removed({required Object name}) => '已从收藏中移除 ${name}';
	@override late final _TranslationsFavoritesSortOptionsZhCn sortOptions = _TranslationsFavoritesSortOptionsZhCn._(_root);
}

// Path: profile
class _TranslationsProfileZhCn extends TranslationsProfileEn {
	_TranslationsProfileZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '个人资料';
	@override String get noProfileData => '未找到个人资料数据';
	@override String get yourProfile => '你的个人资料';
	@override String get viewAndManage => '查看并管理你的健康信息';
	@override late final _TranslationsProfileSectionsZhCn sections = _TranslationsProfileSectionsZhCn._(_root);
	@override String get gender => '性别';
	@override String get height => '身高';
	@override String get weight => '体重';
	@override String get age => '年龄';
	@override String get weightGoal => '体重目标';
	@override String get targetWeight => '目标体重';
	@override String get activityLevel => '活动等级';
	@override String get healthMetrics => '健康指标';
	@override String get notSet => '未设置';
	@override String get years => '岁';
	@override String get updatedSuccessfully => '个人资料更新成功！';
	@override late final _TranslationsProfileCalculatedValuesZhCn calculatedValues = _TranslationsProfileCalculatedValuesZhCn._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreZhCn extends TranslationsHealthScoreEn {
	_TranslationsHealthScoreZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '健康评分';
	@override String get whyThisScore => '为什么是这个评分？';
	@override String get note => '此评分为 AI 基于识别到的食材和营养密度的估算。饮食建议请咨询专业人士。';
	@override String get unhealthy => '不健康';
	@override String get healthy => '健康';
	@override String get neutral => '中性';
}

// Path: editProfile
class _TranslationsEditProfileZhCn extends TranslationsEditProfileEn {
	_TranslationsEditProfileZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '编辑个人资料';
	@override late final _TranslationsEditProfileSectionsZhCn sections = _TranslationsEditProfileSectionsZhCn._(_root);
	@override String get gender => '性别';
	@override String get dateOfBirth => '出生日期';
	@override String get height => '身高';
	@override String get weight => '体重';
	@override String get weightGoal => '体重目标';
	@override String get activityLevel => '活动等级';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => '磅 (lbs)';
	@override String get metricCm => '公制 (cm)';
	@override String get imperialFtIn => '英制 (ft/in)';
	@override String get metricKg => '公制 (kg)';
	@override String get imperialLbs => '英制 (lbs)';
	@override late final _TranslationsEditProfileGendersZhCn genders = _TranslationsEditProfileGendersZhCn._(_root);
	@override late final _TranslationsEditProfileWeightGoalsZhCn weightGoals = _TranslationsEditProfileWeightGoalsZhCn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsZhCn activityLevels = _TranslationsEditProfileActivityLevelsZhCn._(_root);
}

// Path: settings
class _TranslationsSettingsZhCn extends TranslationsSettingsEn {
	_TranslationsSettingsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '设置';
	@override late final _TranslationsSettingsSectionsZhCn sections = _TranslationsSettingsSectionsZhCn._(_root);
	@override late final _TranslationsSettingsEditProfileZhCn editProfile = _TranslationsSettingsEditProfileZhCn._(_root);
	@override late final _TranslationsSettingsLanguageZhCn language = _TranslationsSettingsLanguageZhCn._(_root);
	@override late final _TranslationsSettingsHeightUnitZhCn heightUnit = _TranslationsSettingsHeightUnitZhCn._(_root);
	@override late final _TranslationsSettingsWeightUnitZhCn weightUnit = _TranslationsSettingsWeightUnitZhCn._(_root);
	@override late final _TranslationsSettingsMealRemindersZhCn mealReminders = _TranslationsSettingsMealRemindersZhCn._(_root);
	@override late final _TranslationsSettingsLocalInferenceZhCn localInference = _TranslationsSettingsLocalInferenceZhCn._(_root);
	@override late final _TranslationsSettingsThemeZhCn theme = _TranslationsSettingsThemeZhCn._(_root);
	@override late final _TranslationsSettingsSendFeedbackZhCn sendFeedback = _TranslationsSettingsSendFeedbackZhCn._(_root);
	@override late final _TranslationsSettingsExportMealHistoryZhCn exportMealHistory = _TranslationsSettingsExportMealHistoryZhCn._(_root);
	@override late final _TranslationsSettingsClearAllDataZhCn clearAllData = _TranslationsSettingsClearAllDataZhCn._(_root);
	@override late final _TranslationsSettingsDebugOptionsZhCn debugOptions = _TranslationsSettingsDebugOptionsZhCn._(_root);
	@override String get developerModeEnabled => '开发者模式已启用！';
	@override late final _TranslationsSettingsHealthConnectZhCn healthConnect = _TranslationsSettingsHealthConnectZhCn._(_root);
	@override late final _TranslationsSettingsAboutZhCn about = _TranslationsSettingsAboutZhCn._(_root);
	@override late final _TranslationsSettingsAppInfoZhCn appInfo = _TranslationsSettingsAppInfoZhCn._(_root);
}

// Path: reminders
class _TranslationsRemindersZhCn extends TranslationsRemindersEn {
	_TranslationsRemindersZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '用提醒保持进度';
	@override String get description => '收到温和的提醒以记录餐食并坚持你的营养目标';
	@override String get notificationsEnabled => '通知已启用';
	@override String get notificationsDisabled => '通知已禁用';
	@override String get enabledSubtitle => '你将收到餐食提醒';
	@override String get disabledSubtitle => '启用通知以接收餐食提醒';
	@override String get mealReminders => '餐食提醒';
	@override String get breakfast => '早餐';
	@override String get lunch => '午餐';
	@override String get dinner => '晚餐';
	@override String get snack => '加餐';
	@override String get unknown => '未知';
	@override String get change => '更改';
	@override String get enableNotifications => '启用通知';
	@override String get skipForNow => '暂不启用';
	@override String get saveChanges => '保存更改';
	@override String get enabledSuccessfully => '通知已成功启用！';
	@override String get permissionDenied => '通知权限被拒绝';
	@override String errorEnabling({required Object error}) => '启用通知时出错：${error}';
	@override String errorCompletingSetup({required Object error}) => '完成设置时出错：${error}';
}

// Path: notifications
class _TranslationsNotificationsZhCn extends TranslationsNotificationsEn {
	_TranslationsNotificationsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastZhCn breakfast = _TranslationsNotificationsBreakfastZhCn._(_root);
	@override late final _TranslationsNotificationsLunchZhCn lunch = _TranslationsNotificationsLunchZhCn._(_root);
	@override late final _TranslationsNotificationsDinnerZhCn dinner = _TranslationsNotificationsDinnerZhCn._(_root);
	@override late final _TranslationsNotificationsSnackZhCn snack = _TranslationsNotificationsSnackZhCn._(_root);
	@override late final _TranslationsNotificationsTestZhCn test = _TranslationsNotificationsTestZhCn._(_root);
}

// Path: login
class _TranslationsLoginZhCn extends TranslationsLoginEn {
	_TranslationsLoginZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '登录';
	@override String get signInWithGoogle => '使用 Google 登录';
	@override String get signInFailed => 'Google 登录失败或已取消。';
}

// Path: disclaimer
class _TranslationsDisclaimerZhCn extends TranslationsDisclaimerEn {
	_TranslationsDisclaimerZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => '请注意';
	@override late final _TranslationsDisclaimerSnapZhCn snap = _TranslationsDisclaimerSnapZhCn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateZhCn weightEstimate = _TranslationsDisclaimerWeightEstimateZhCn._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsZhCn healthMetrics = _TranslationsDisclaimerHealthMetricsZhCn._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureZhCn calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureZhCn._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4ZhCn extends TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4ZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => '营养信息来自已下载的 USDA 数据包';
	@override String get nutritionCached => '营养信息来自设备上的 USDA 缓存';
	@override String get nutritionMixed => '营养信息由已下载、已缓存和远程获取的 USDA 数据行合并而成';
	@override String get calculationLocal => '已在此设备上计算热量和宏量营养素';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}：已下载的 USDA 数据包';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}：设备上的 USDA 缓存';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}：通过 Calorify 获取的 USDA 数据行';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}：确定性营养常量';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · 数据集 ${datasetVersion}';
	@override String get portionSmaller => '较小';
	@override String get portionEstimated => '估算';
	@override String get portionLarger => '较大';
	@override String portionQuestion({required Object ingredient}) => '${ingredient} 最接近哪个份量？';
	@override String get mealTypeQuestion => '这是哪一餐？';
	@override String get localNutritionTip => '根据已验证的本地营养数据计算。';
	@override String get offlineNutritionTitle => '下载营养数据';
	@override String get offlineNutritionSubtitle => '当所有食材均有数据时，在此设备上使用已验证的 USDA 数据行和确定性计算。';
	@override String get offlineNutritionUnavailable => '此应用版本不提供本地营养数据。';
	@override String get offlineNutritionNotDownloaded => '尚未下载已验证的营养数据包。';
	@override String get offlineNutritionInstalling => '正在下载并验证营养数据…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => '数据包 ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} 条已缓存的 USDA 数据行 · ${size}';
	@override String get offlineNutritionUpdate => '检查更新';
	@override String get offlineNutritionClear => '清除本地营养数据';
	@override String get offlineNutritionClearTitle => '清除本地营养数据？';
	@override String get offlineNutritionClearBody => '这将移除已下载的 USDA 数据包和查询缓存。已记录的餐食会保留保存时使用的准确营养快照。';
	@override String get offlineNutritionClearConfirm => '清除数据';
	@override String offlineNutritionInstallFailed({required Object error}) => '无法下载并验证本地营养数据：${error}';
	@override String get offlineNutritionCleared => '已清除本地营养数据';
}

// Path: common
class _TranslationsCommonZhCn extends TranslationsCommonEn {
	_TranslationsCommonZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get close => '关闭';
	@override String get kContinue => '继续';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingZhCn extends TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '喜欢 ${appLabel} 吗？';
	@override String get yes => '是，我很喜欢';
	@override String get no => '不太喜欢';
	@override String get rateStepHeading => '在 Play Store 评分';
	@override String get emailStepHeading => '通过邮件发送反馈';
	@override String soloDevMessage({required Object appLabel}) => '一个简短的评分能帮助更多人发现 ${appLabel} 并支持开发。你愿意花一点时间评分吗？';
	@override String get shareFeedbackViaEmail => '你的反馈决定下一步方向——我们会阅读每条信息。你愿意通过邮件分享你的想法吗？';
	@override String get rateCta => '在 Play Store 评分';
	@override String get maybeLater => '稍后再说';
	@override String get sendFeedback => '发送反馈';
	@override String get noThanks => '不用了，谢谢';
	@override String get aboutUsDescription => '由小团队用心打造。我们专注于隐私、简洁，并帮助你养成更好的饮食习惯。';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '想知道是谁在背后构建 ${appLabel}？查看 ';
	@override String get aboutUsLinkLabel => '关于我们';
	@override String get thankYouMessage => '谢谢！我们会在之后再次询问。';
}

// Path: health
class _TranslationsHealthZhCn extends TranslationsHealthEn {
	_TranslationsHealthZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => '无法同步到 Health Connect';
	@override String get mealSynced => '餐食已与 Health Connect 同步';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesZhCn extends TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionZhCn foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionZhCn._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisZhCn aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisZhCn._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationZhCn healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationZhCn._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderZhCn extends TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的性别是？';
	@override String get description => '性别有助于我们更准确地计算你的基础代谢率 (BMR)。';
	@override String get next => '下一步';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightZhCn extends TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的身高是多少？';
	@override String get description => '你的身高有助于我们准确计算 BMI 和能量需求。';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get next => '下一步';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightZhCn extends TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => '你当前的体重是多少？';
	@override String get currentDescription => '你的当前体重对于个性化每日目标至关重要。';
	@override String get targetTitle => '你的目标体重是多少？';
	@override String get targetDescription => '设定目标体重可以帮助我们为你制定长期计划。';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get next => '下一步';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeZhCn extends TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的出生日期是？';
	@override String get description => '你的年龄有助于我们准确计算所需热量。';
	@override String get next => '下一步';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleZhCn extends TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get underweight => '偏低';
	@override String get healthy => '健康';
	@override String get overweight => '偏重';
	@override String get obese => '肥胖';
	@override late final _TranslationsOnboardingBmiScaleCategoriesZhCn categories = _TranslationsOnboardingBmiScaleCategoriesZhCn._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesZhCn messages = _TranslationsOnboardingBmiScaleMessagesZhCn._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalZhCn extends TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的目标是什么？';
	@override String get description => '选择最符合你想实现目标的选项';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelZhCn extends TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的日常活动量如何？';
	@override String get description => '这有助于我们更准确地计算你的每日热量需求';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectZhCn extends TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '连接 Health Connect';
	@override String get description => '同步你的健康数据以获得更佳洞察与自动卡路里追踪';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingZhCn automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingZhCn._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsZhCn progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsZhCn._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationZhCn seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationZhCn._(_root);
	@override String get connected => '已连接 Health Connect';
	@override String get notConnected => '未连接 Health Connect';
	@override String get setup => '设置 Health Connect';
	@override String get skipForNow => '暂不连接';
	@override String get statusConnected => 'Health Connect 已连接。';
	@override String get statusSuccess => '已成功连接 Health Connect！';
	@override String statusPermissionDenied({required Object appLabel}) => '权限被拒绝。请在手机设置中为 ${appLabel} 启用 Health Connect 权限。';
	@override String statusError({required Object error}) => '设置 Health Connect 时出错：${error}';
	@override late final _TranslationsOnboardingHealthConnectCaloriesBurnedZhCn caloriesBurned = _TranslationsOnboardingHealthConnectCaloriesBurnedZhCn._(_root);
	@override String get installOrUpdate => '安装或更新';
	@override String get manageAccess => '管理访问权限';
	@override String get overviewDescription => '将已消耗的卡路里计入每日目标，并可选择与 Health Connect 共享记录的餐食。';
	@override late final _TranslationsOnboardingHealthConnectShareLoggedMealsZhCn shareLoggedMeals = _TranslationsOnboardingHealthConnectShareLoggedMealsZhCn._(_root);
	@override String get statusNotConnected => '选择要启用的 Health Connect 功能。';
	@override String get statusPartial => 'Health Connect 已部分连接。请启用剩余权限以使用两项功能。';
	@override String get statusProviderUpdateRequired => '安装或更新 Health Connect 以继续。';
	@override String get statusUnavailable => '此设备不支持 Health Connect。';
	@override late final _TranslationsOnboardingHealthConnectUserControlZhCn userControl = _TranslationsOnboardingHealthConnectUserControlZhCn._(_root);
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementZhCn extends TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessZhCn trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessZhCn._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileZhCn healthProfile = _TranslationsOnboardingReinforcementHealthProfileZhCn._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleZhCn goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleZhCn._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryZhCn extends TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的 AI 摘要';
	@override String get logMore => '在接下来的几天里多记录几餐，以获得个性化的 AI 洞察。';
	@override String get loading => '正在加载你的摘要...';
	@override String mealCount({required Object count}) => '已记录 ${count} 餐';
	@override String macroBalanceScore({required Object score}) => '平衡评分 ${score}';
	@override String get topFoods => '常见食物';
	@override String get trendUp => '热量上升趋势';
	@override String get trendDown => '热量下降趋势';
	@override String get trendSteady => '热量保持稳定';
	@override String generatedAt({required Object time}) => '更新于 ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalZhCn extends TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '设定你的每日目标';
	@override String get titleSet => '你的每日目标';
	@override String get description => '准备开始你的健康旅程吗？在下方设置你的每日卡路里目标以开启进步。';
	@override String get descriptionSet => '指南已设置！这是指引你的每日卡路里目标。';
	@override String get yourGoal => '你的目标';
	@override String get goal => '目标';
	@override String get dailyCalories => '每日卡路里 (kcal)';
	@override String get setGoal => '设定目标';
	@override String get intake => '摄入';
	@override String get burned => '消耗';
	@override String get weightImpact => '体重影响';
	@override String get estLoss => '预计减少';
	@override String get estGain => '预计增加';
	@override String get kcal => '千卡 (kcal)';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryZhCn extends TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '每日汇总';
	@override String get calories => '卡路里';
	@override String get carbs => '碳水';
	@override String get protein => '蛋白质';
	@override String get fat => '脂肪';
	@override String get fiber => '纤维';
	@override String get grams => '克';
	@override String get chartAccessibilityLabel => '宏量营养素图表';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressZhCn extends TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '今日宏量分配';
	@override String get target => '目标';
	@override String get current => '当前';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryZhCn extends TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '7 天宏量历史';
	@override String get trendTitle => '今日趋势';
	@override String peakHour({required Object hour}) => '峰值：${hour}:00';
	@override String get noHistoryYet => '暂无历史';
	@override String get startLogging => '开始记录餐食以在此查看你的\n7 天宏量趋势';
}

// Path: home.mealLog
class _TranslationsHomeMealLogZhCn extends TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '已记录的餐食';
	@override String get emptyMessage => '拍下你最近的一餐照片以在此记录。';
	@override String get noMealsToday => '今日暂无记录的餐食';
	@override String get seeAllMeals => '查看所有餐食';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionZhCn extends TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 快速添加';
	@override String get description => '描述你的餐食，让 AI 处理细节。';
	@override String get hint => '例如：早餐我吃了一大碗燕麦粥，切了一根香蕉，加入一勺乳清蛋白……';
	@override String get analyzeMeal => '分析餐食';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsZhCn extends TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '收藏餐食';
	@override String get description => '快速添加你收藏的餐食之一。';
	@override String get noFavorites => '还没有收藏的餐食。';
	@override String get addFavoriteHint => '点击餐食上的星标将其标为收藏。';
	@override String get seeAll => '查看全部';
	@override String get add => '添加';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapZhCn extends TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '拍照并记录餐食';
	@override String get description => '使用相机拍摄食物照片以进行 AI 分析。';
	@override String get openCamera => '打开相机';
	@override String get gallery => '相册';
	@override String get compressingPhoto => '优化照片…';
	@override String get uploadingPhoto => '上传照片…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthZhCn extends TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '与 Health Connect 同步';
	@override String get description => '将你的营养数据同步到 Health Connect';
	@override String get install => '安装';
	@override String get connect => '连接';
	@override String get dataUseDescription => '将已消耗的卡路里计入目标，并共享记录的餐食';
	@override String get installOrUpdate => '安装或更新';
}

// Path: meal.nutrition
class _TranslationsMealNutritionZhCn extends TranslationsMealNutritionEn {
	_TranslationsMealNutritionZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get calories => '卡路里';
	@override String get carbs => '碳水 (g)';
	@override String get protein => '蛋白质 (g)';
	@override String get fat => '脂肪 (g)';
	@override String get fiber => '纤维 (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationZhCn extends TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '删除餐食';
	@override String get message => '确定要删除此餐食记录吗？';
	@override String get cancel => '取消';
	@override String get delete => '删除';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowZhCn extends TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => '问题 ${current} / ${total}';
	@override String get noQuestionsAvailable => '暂无可用问题';
	@override String get next => '下一步';
	@override String get continueLabel => '继续';
}

// Path: meal.analysis
class _TranslationsMealAnalysisZhCn extends TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '正在分析你的餐食';
	@override String get stepStarted => '开始处理…';
	@override String get stepDecomposition => '理解你的餐食…';
	@override String get stepIngredients => '将食材匹配到营养数据…';
	@override String get stepUncertainty => '核查信心水平…';
	@override String get stepMealTypeQuestion => '快好了…';
	@override String get stepResult => '最终结果生成中…';
	@override String get stepError => '出现问题';
	@override String get stepDefault => '正在分析你的餐食…';
	@override String get progressUnderstand => '理解你的餐食';
	@override String get progressMatch => '查找食材营养信息';
	@override String get progressCheck => '核对分量与置信度';
	@override String get progressMealType => '选择餐次类型';
	@override String get progressFinish => '计算卡路里与宏量营养素';
	@override String get detectedIngredientHeading => '我们识别到的食材';
	@override String ingredientsOverflow({required Object count}) => '另外还有 ${count} 项';
	@override String ingredientsLine({required Object count}) => '检测到 ${count} 种食材';
	@override String get ingredientsPending => '扫描食材中…';
	@override String mealPreviewDescription({required Object text}) => '“${text}”';
	@override String get offlineTip0 => '提示：持续记录比追求完美更重要——规律的记录能揭示真正有用的模式。';
	@override String get offlineTip1 => '提示：拍照时使用自然光并从俯视角度拍摄，有助于提升分量估算准确性。';
	@override String get offlineTip2 => '提示：记得说明饮料、酱汁和食用油——这些常被忽略但会增加热量。';
	@override String get offlineTip3 => '提示：简短的分量说明（1 碗、大杯咖啡）会让估算更精确。';
	@override String get offlineTip4 => '提示：饭后记录同样能培养习惯；不必追求完美。';
	@override String get offlineTip5 => '提示：烹饪方式会大幅影响热量（煎 vs 烤），说明烹饪方法有助于准确估算。';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceZhCn extends TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => '核对检测到的食材';
	@override String get reviewSubtitle => '此内容由您的设备解析。在计算营养成分前，请修正名称或分量。';
	@override String get mealName => '餐食名称';
	@override String get ingredient => '食材';
	@override String get grams => '预计克数';
	@override String get removeIngredient => '移除食材';
	@override String get continueLabel => '继续';
	@override String get invalidProposal => '请至少添加一种食材，并输入正数的克数。';
	@override String get localUnavailable => '目前无法使用设备端分析。';
	@override String get calculationDetails => '计算详情';
	@override String get interpretationLocal => '由本设备解析的食材';
	@override String get interpretationCloud => '由云端解析的食材';
	@override String get interpretationManual => '由您核对或编辑的食材';
	@override String get nutritionRemote => '营养数据通过 Calorify 从 USDA 获取';
	@override String get nutritionFallback => '部分营养数值为远程估算';
	@override String get calculationServer => '卡路里和宏量营养素由 Calorify 计算';
	@override String get fallbackUsed => '本地分析已回退至云端处理';
	@override String get noRawContent => '诊断收据不包含您的餐食文本或照片。';
}

// Path: meal.feedback
class _TranslationsMealFeedbackZhCn extends TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '哪里看起来不对？';
	@override String get subtitle => '通过选择一个或多个问题来帮助我们改进分析。';
	@override String get tellUsMore => '告诉我们更多信息';
	@override String get describeIncorrect => '描述不正确的地方';
	@override String get submit => '提交';
	@override String get issueFoodIdentification => '食物识别错误';
	@override String get issuePortionSize => '分量错误';
	@override String get issueCalorieDistribution => '卡路里分配错误';
	@override String get issueMacrosWrong => '宏量营养数据错误';
	@override String get issueMissingItems => '遗漏项';
	@override String get issueExtraItems => '多余项';
	@override String get issueOther => '其他';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsZhCn extends TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get recent => '最近';
	@override String get calories => '卡路里';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsZhCn extends TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get profile => '个人资料';
	@override String get basicInformation => '基础信息';
	@override String get goalsAndActivity => '目标与活动';
	@override String get calculatedValues => '计算值';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesZhCn extends TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => '每日目标';
	@override String get calPerDay => '卡/天';
	@override String get notAvailable => '无可用数据';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsZhCn extends TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => '个人信息';
	@override String get physicalMeasurements => '身体测量';
	@override String get goalsAndActivity => '目标与活动';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersZhCn extends TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get male => '男性';
	@override String get female => '女性';
	@override String get other => '其他';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsZhCn extends TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightZhCn loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightZhCn._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightZhCn maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightZhCn._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightZhCn gainWeight = _TranslationsEditProfileWeightGoalsGainWeightZhCn._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsZhCn extends TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryZhCn sedentary = _TranslationsEditProfileActivityLevelsSedentaryZhCn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveZhCn lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveZhCn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveZhCn moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveZhCn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveZhCn veryActive = _TranslationsEditProfileActivityLevelsVeryActiveZhCn._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveZhCn extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveZhCn._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsZhCn extends TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get profile => '个人资料';
	@override String get localization => '本地化';
	@override String get notifications => '通知';
	@override String get healthConnect => 'Health Connect';
	@override String get localInference => '设备端分析';
	@override String get supportAndLegal => '支持与法律';
	@override String get about => '关于';
	@override String get dangerZone => '危险操作';
	@override String get developer => '开发者';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileZhCn extends TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '编辑个人资料';
	@override String get subtitle => '更新你的个人信息';
}

// Path: settings.language
class _TranslationsSettingsLanguageZhCn extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '语言';
	@override String get subtitle => '选择你偏好的语言';
	@override String get searchHint => '搜索语言...';
	@override String get noResults => '未找到结果';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitZhCn extends TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '身高单位';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitZhCn extends TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '体重单位';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersZhCn extends TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '餐食提醒';
	@override String get subtitle => '用及时提醒帮助你保持记录';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceZhCn extends TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '设备端餐食分析';
	@override String get subtitle => '在计算营养成分前，使用 Gemini Nano 解析支持的餐食';
	@override String get unavailable => '此设备不支持';
	@override String get rolloutUnavailable => '检测到可用硬件，但此功能在当前应用版本中尚未启用';
	@override String get modelSetup => 'Gemini Nano 需要完成下载后才能启用此功能';
	@override String get useLocalTitle => '使用设备端分析';
	@override String get useLocalSubtitle => '可选功能，默认关闭。对于复杂餐食，结果的可靠性可能较低。';
	@override String get disclosureTitle => '在启用设备端分析之前';
	@override String get disclosureBody => 'Gemini Nano 可以在支持的 Android 设备上识别食材并估算分量。您核对后的食材方案将发送至 Calorify，以便进行 USDA 营养数据比对和计算。';
	@override String get disclosureLimit1 => '复杂菜肴、隐藏食材和分量大小可能会被错误识别。';
	@override String get disclosureLimit2 => '模型在下载中、繁忙、处于后台或受设备限制时可能无法使用。';
	@override String get disclosureLimit3 => '如果本地解析无法完成，此 Beta 版本会自动将您的原始餐食描述发送至 Calorify 进行云端分析。';
	@override String get acknowledgement => '我明白我应当核对检测到的食材和分量。';
	@override String get enable => '确认并启用';
	@override String get cancel => '取消';
}

// Path: settings.theme
class _TranslationsSettingsThemeZhCn extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '主题';
	@override String get light => '浅色';
	@override String get dark => '深色';
	@override String get system => '跟随系统';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackZhCn extends TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsExportMealHistoryZhCn extends TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '导出餐食历史';
	@override String get subtitle => '共享已记录餐食的 CSV';
	@override String get shareText => '你的 Calorify 餐食历史导出';
	@override String failed({required Object error}) => '无法导出餐食历史：${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataZhCn extends TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '清除所有数据';
	@override String get subtitle => '不可逆地删除你的全部信息';
	@override String get confirmationTitle => '清除所有数据？';
	@override String get confirmationMessage => '此操作不可撤销。你所有的记录、收藏和个人设置将被永久删除。';
	@override String get cancel => '取消';
	@override String get clearEverything => '清除全部';
	@override String get localOnlyConfirmationMessage => '这将从此设备永久删除记录的餐食、收藏和个人资料设置。已共享到 Health Connect 的餐食和 Health Connect 访问权限需在“设置 > Health Connect”中单独管理。';
	@override String get localOnlySubtitle => '删除此设备上存储的 Calorify 数据';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsZhCn extends TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '调试选项';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectZhCn extends TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => '查看并管理权限';
	@override late final _TranslationsSettingsHealthConnectUnavailableZhCn unavailable = _TranslationsSettingsHealthConnectUnavailableZhCn._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsZhCn permissions = _TranslationsSettingsHealthConnectPermissionsZhCn._(_root);
	@override String get managePermissions => '管理权限';
	@override String get openSettings => '打开 Health Connect 设置';
	@override String get requestPermissions => '请求权限';
	@override String get permissionRequestCancelledOrFailed => '权限请求已取消或失败。请重试或在 Health Connect 设置中手动授予权限。';
	@override String get permissionRequestFailed => '无法请求权限。请重试或在 Health Connect 设置中手动授予权限。';
	@override String get requestingPermissions => '正在请求…';
	@override String get actionFailed => '无法打开 Health Connect，请重试。';
	@override String get connectionComplete => '两项 Health Connect 功能均已启用。';
	@override String get connectionPartial => '部分 Health Connect 功能已启用。';
	@override String get deleteSyncedMeals => '从 Health Connect 删除 Calorify 餐食';
	@override String get deleteSyncedMealsConfirmationAction => '删除已同步的餐食';
	@override String get deleteSyncedMealsConfirmationMessage => '要从 Health Connect 删除此版本 Calorify 同步的餐食吗？本地餐食日志不会改变。较早的 Calorify 条目可能仍需通过 Health Connect 中的“管理数据”删除。';
	@override String get deleteSyncedMealsConfirmationTitle => '删除已同步的餐食？';
	@override String get deleteSyncedMealsFailed => '无法删除已同步的餐食，请重试。';
	@override String get deleteSyncedMealsSuccess => '已从 Health Connect 删除 Calorify 餐食。';
	@override String get disconnect => '断开 Health Connect';
	@override String get disconnectConfirmationAction => '断开连接';
	@override String get disconnectConfirmationMessage => 'Calorify 将失去 Health Connect 访问权限。已写入其中的数据不会被删除。';
	@override String get disconnectConfirmationTitle => '断开 Health Connect？';
	@override late final _TranslationsSettingsHealthConnectUpdateRequiredZhCn updateRequired = _TranslationsSettingsHealthConnectUpdateRequiredZhCn._(_root);
}

// Path: settings.about
class _TranslationsSettingsAboutZhCn extends TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '关于';
	@override String get tagline => '快速、免费且以隐私为先的卡路里感知工具';
	@override late final _TranslationsSettingsAboutOurStoryZhCn ourStory = _TranslationsSettingsAboutOurStoryZhCn._(_root);
	@override late final _TranslationsSettingsAboutPrivacyZhCn privacy = _TranslationsSettingsAboutPrivacyZhCn._(_root);
	@override late final _TranslationsSettingsAboutDeveloperZhCn developer = _TranslationsSettingsAboutDeveloperZhCn._(_root);
	@override late final _TranslationsSettingsAboutFeedbackZhCn feedback = _TranslationsSettingsAboutFeedbackZhCn._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoZhCn extends TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify 版本 ${version}';
	@override String build({required Object buildNumber}) => '构建 ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastZhCn extends TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '早餐时间！ 🍳';
	@override String get body => '别忘了记录你的早餐';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchZhCn extends TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '午餐时间！ 🥗';
	@override String get body => '是时候记录午餐了';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerZhCn extends TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '晚餐时间！ 🍽️';
	@override String get body => '别忘了记录你的晚餐';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackZhCn extends TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '加餐时间！ 🍎';
	@override String get body => '来点健康的加餐吧';
}

// Path: notifications.test
class _TranslationsNotificationsTestZhCn extends TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '测试通知';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapZhCn extends TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} 提供的是估算的营养信息。准确性取决于你的输入与食物差异。作为参考而非权威来源。如需个性化饮食建议，请咨询专业人士。';
	@override late final _TranslationsDisclaimerSnapPortionSizeZhCn portionSize = _TranslationsDisclaimerSnapPortionSizeZhCn._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsZhCn preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsZhCn._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsZhCn ingredients = _TranslationsDisclaimerSnapIngredientsZhCn._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsZhCn databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsZhCn._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateZhCn extends TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '关于体重估算';
	@override String get description => '预测的体重变化是基于简单的热量摄入与消耗模型的理论估算。仅用于激励参考，而非实际体重预测。';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyZhCn calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyZhCn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsZhCn biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsZhCn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightZhCn waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightZhCn._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhCn professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhCn._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsZhCn extends TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get description => '这些指标帮助你了解身体的能量需求并指导营养目标。';
	@override late final _TranslationsDisclaimerHealthMetricsBmrZhCn bmr = _TranslationsDisclaimerHealthMetricsBmrZhCn._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeZhCn tdee = _TranslationsDisclaimerHealthMetricsTdeeZhCn._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalZhCn dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalZhCn._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureZhCn extends TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '卡路里消耗估算';
	@override String get description => '当 Health Connect 数据不可用时，我们会使用你的基础代谢率 (BMR) 和活动水平 (TDEE) 来估算今天已消耗的卡路里，并按当天已过的时间比例进行缩放。';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedZhCn howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedZhCn._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhCn professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhCn._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionZhCn extends TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '智能食物识别';
	@override String get description => '拍张照片，让 AI 识别你的餐点';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisZhCn extends TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 分析';
	@override String get description => '从你的描述中即时获得营养信息';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationZhCn extends TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '健康数据集成';
	@override String get description => '连接 Health Connect 获取更全面的洞察';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesZhCn extends TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get underweight => '体重偏低';
	@override String get healthyWeight => '健康体重';
	@override String get overweight => '超重';
	@override String get obese => '肥胖';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesZhCn extends TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get underweight => '我们可以帮助你制定健康计划，通过富含营养的餐食达到更平衡的体重。';
	@override String get healthy => '做得很好！你处于健康范围内。我们会帮助你维持活力与能量。';
	@override String overweight({required Object appLabel}) => '${appLabel} 会用 AI 化简你的过程，帮助你舒适地接近目标体重。';
	@override String get obese => '我们会为你提供个性化支持和可持续的健康策略，陪伴你的目标实现。';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingZhCn extends TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '自动卡路里追踪';
	@override String get description => '追踪来自你健身应用的消耗卡路里';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsZhCn extends TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '进度洞察';
	@override String get description => '获取关于你健康趋势的详细洞察';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationZhCn extends TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '无缝集成';
	@override String get description => '从你喜欢的健康应用同步数据';
}

// Path: onboarding.healthConnect.caloriesBurned
class _TranslationsOnboardingHealthConnectCaloriesBurnedZhCn extends TranslationsOnboardingHealthConnectCaloriesBurnedEn {
	_TranslationsOnboardingHealthConnectCaloriesBurnedZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get description => '从 Health Connect 读取今天消耗的总卡路里';
	@override String get title => '已消耗卡路里';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _TranslationsOnboardingHealthConnectShareLoggedMealsZhCn extends TranslationsOnboardingHealthConnectShareLoggedMealsEn {
	_TranslationsOnboardingHealthConnectShareLoggedMealsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get description => '将你在 Calorify 中记录的餐食写入 Health Connect';
	@override String get title => '共享记录的餐食';
}

// Path: onboarding.healthConnect.userControl
class _TranslationsOnboardingHealthConnectUserControlZhCn extends TranslationsOnboardingHealthConnectUserControlEn {
	_TranslationsOnboardingHealthConnectUserControlZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get description => '选择任一权限，并随时更改访问设置';
	@override String get title => '由你掌控';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessZhCn extends TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你并不孤单';
	@override String get genericMessage => '研究显示，持续记录是长期成功的头号预测因素。';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '对于一位 ${age} 岁的 ${gender} 希望 ${goal}，持续记录是成功的头号预测因素。';
	@override String closingMessage({required Object appLabel}) => '${appLabel} 让这项工作比手动操作容易 10 倍。';
	@override String get getStartedTitle => '准备好开始了吗？';
	@override String get tipPhoto => '拍摄餐点照片以获得即时分析';
	@override String get tipConsistency => '持续记录以看到有意义的进展';
	@override String get tipProgress => '每天跟踪进展以保持动力';
	@override String get button => '开始吧';
	@override String get defaultGender => '个人';
	@override String get defaultGoal => '更健康的你';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileZhCn extends TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的健康档案';
	@override String bmiDescription({required Object bmi}) => '根据你的指标，你的 BMI 为 ${bmi}。';
	@override String get finalizeDescription => '让我们完成你的档案以定制你的体验。';
	@override String get goalGain => '增加';
	@override String get goalLose => '减少';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => '为达到目标，你需要${direction}${diff}${unit}。';
	@override String get goalReached => '你已达到目标体重！我们会帮助你维持它。';
	@override String get button => '开始吧';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleZhCn extends TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '良好的开始！';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => '你已经迈出朝 ${goalText} 的第一步。既然你是${activityText}，${appLabel} 会调整你的目标以匹配你的生活方式。';
	@override String get personalizedTargets => '个性化卡路里目标';
	@override String get aiMealDetection => 'AI 驱动的餐食识别';
	@override String get macroBreakdowns => '详细的宏量营养素分解';
	@override String get button => '开始吧';
	@override String get defaultGoal => '你的目标';
	@override String get defaultActivity => '活跃';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightZhCn extends TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '减重';
	@override String get description => '创建热量赤字以减轻体重';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightZhCn extends TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '维持体重';
	@override String get description => '维持你当前的体重';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightZhCn extends TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '增重';
	@override String get description => '创建热量盈余以增加体重';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryZhCn extends TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '久坐';
	@override String get description => '几乎不运动';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveZhCn extends TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '轻度活跃';
	@override String get description => '每周 1-3 天轻量运动';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveZhCn extends TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '中度活跃';
	@override String get description => '每周 3-5 天中等强度运动';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveZhCn extends TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '高度活跃';
	@override String get description => '每周 6-7 天高强度运动';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveZhCn extends TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '极度活跃';
	@override String get description => '非常高强度运动或体力工作';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableZhCn extends TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect 不可用';
	@override String get description => '此设备上无法使用 Health Connect。请从 Play Store 安装 Health Connect（Android 9+）或更新到 Android 14+。';
	@override String get unsupportedDescription => '此设备不支持 Health Connect。';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsZhCn extends TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '权限';
	@override String get description => '为提供 Health Connect 集成功能，请求以下权限：';
	@override String get granted => '已授予';
	@override String get notGranted => '未授予';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhCn caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhCn._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadZhCn nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadZhCn._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteZhCn nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteZhCn._(_root);
}

// Path: settings.healthConnect.updateRequired
class _TranslationsSettingsHealthConnectUpdateRequiredZhCn extends TranslationsSettingsHealthConnectUpdateRequiredEn {
	_TranslationsSettingsHealthConnectUpdateRequiredZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get action => '安装或更新';
	@override String get description => '请先安装或更新 Health Connect，再管理访问权限。';
	@override String get title => 'Health Connect 需要处理';
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryZhCn extends TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '我们的故事';
	@override String content({required Object appLabel}) => '${appLabel} 源自一个简单的挫败感：大多数卡路里追踪应用要么过于复杂、需要大量手动输入、收费高昂，要么在隐私上妥协。\n\n作为一名独立开发者，我想做一个更简单、更公平的应用——一个用 AI 减少操作负担、保持快速且免费使用，并尊重你的健康数据的应用。\n\n${appLabel} 是我希望存在的应用：无需账号、无追踪、无广告——只有清晰、实用的洞察和你的健康目标。';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyZhCn extends TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的隐私很重要';
	@override String get description => '隐私不是事后考虑——它是设计原则。以下是实践中的含义：';
	@override String get noAccounts => '无需账号\n立即使用应用。无注册、无身份绑定。';
	@override String noTracking({required Object appLabel}) => '无行为追踪\n${appLabel} 不会监控你的活动、构建使用档案或跨应用/网站跟踪你。';
	@override String noAds({required Object appLabel}) => '内建无广告\n${appLabel} 旨在无需广告或基于数据的变现运行。';
	@override String get noDataSelling => '不出售数据\n你的健康数据不会被出售或分享给第三方。';
	@override String get localStorage => '本地优先存储\n你的数据保留在你的设备上。';
	@override String get privacyPolicy => '隐私政策';
	@override String analyticsDisclosure({required Object appLabel}) => '有限的分析与诊断\n${appLabel} 使用基本应用事件和崩溃诊断来提高可靠性。健康记录值不会用于广告或出售。';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperZhCn extends TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '由独立开发者构建';
	@override String description({required Object appLabel}) => '${appLabel} 由一位独立开发者构建和维护，致力于创建平静、尊重隐私的健康软件。\n\n反馈由开发者本人阅读，并帮助塑造应用的方向。';
	@override String get website => '网站';
	@override String get email => '邮件';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackZhCn extends TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '喜欢 ${appLabel} 吗？';
	@override String description({required Object appLabel}) => '你的反馈能让 ${appLabel} 变得更好，惠及所有用户。';
	@override String get rateApp => '在 Play Store 评分';
	@override String get sendFeedback => '发送反馈';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeZhCn extends TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '分量大小';
	@override String get description => '估算的准确性在很大程度上依赖于你对分量大小的正确评估。';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsZhCn extends TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '烹饪方式';
	@override String description({required Object appLabel}) => '烹饪方法会显著改变食物的营养成分。${appLabel} 的估算可能无法始终考虑这些差异。';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsZhCn extends TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '食材';
	@override String get description => '复杂菜肴中存在许多隐含成分可能导致估算不够准确。';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsZhCn extends TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '数据库限制';
	@override String description({required Object appLabel}) => '${appLabel} 的食物数据库虽然很广泛，但可能不包含每一种食物或所有变体。';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyZhCn extends TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '卡路里准确性';
	@override String get description => '此估算的准确性取决于你记录的卡路里摄入与消耗。记录不准确会导致预测不准确。';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsZhCn extends TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '生理因素';
	@override String description({required Object appLabel}) => '实际的体重变化受代谢、激素、睡眠、压力、体液和其他个体差异影响，${appLabel} 无法测量这些因素。';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightZhCn extends TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '水重波动';
	@override String get description => '日常体重可能因水分滞留、消化和记录时机而显著波动。估算并不考虑这些日常变化。';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhCn extends TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '专业指导';
	@override String get description => '不要用此估算做出医疗决策。有关个性化体重管理建议，请始终咨询医疗专业人士或注册营养师。';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrZhCn extends TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => '基础代谢率 (BMR) 是你静息时为维持呼吸、循环等基本功能而消耗的卡路里数。BMR 取决于你的年龄、性别、身高和体重。较高的 BMR 表示你在静息时自然消耗更多热量，通常与更多的肌肉、更年轻的年龄或男性有关。较低的 BMR 通常表示肌肉较少、年龄较大或女性。';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeZhCn extends TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => '每日总能量消耗 (TDEE) 是你每天消耗的总卡路里，包括 BMR 以及来自身体活动和日常活动的卡路里。TDEE 取决于你的 BMR 和活动水平。较高的 TDEE 表示你总体消耗更多卡路里，通常与更活跃或更高的 BMR 有关。较低的 TDEE 则表示日常活动较少或 BMR 较低。';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalZhCn extends TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '每日目标';
	@override String get description => '每日目标是基于你的 TDEE 和体重目标推荐的每日摄入卡路里。为了减重，你需摄入低于 TDEE 的卡路里；维持体重则与 TDEE 相当；增重则摄入高于 TDEE 的卡路里。这有助于你以健康节奏实现期望的体重变化。';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedZhCn extends TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '估算如何计算';
	@override String get description => '我们基于你的档案计算 TDEE，并乘以当天已过时间的比例 (小时 + 分钟) / 24，以估算目前为止已消耗的卡路里。';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhCn extends TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '专业指导';
	@override String get description => '不要用此估算做出医疗决策。有关个性化体重管理建议，请始终咨询医疗专业人士或注册营养师。';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhCn extends TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '读取总消耗卡路里';
	@override String get description => '允许应用读取来自 Health Connect 的总消耗卡路里。';
	@override String get usage => '该权限用于在应用中显示你的每日消耗卡路里，帮助你了解全天的总能量消耗。';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadZhCn extends TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '读取营养数据';
	@override String get description => '允许应用读取来自 Health Connect 的营养数据。';
	@override String get usage => '此权限允许应用读取可能由其他连接到 Health Connect 的应用记录的营养信息，从而提供更全面的营养视图。';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteZhCn extends TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '写入营养数据';
	@override String get description => '允许应用将营养数据写入 Health Connect。';
	@override String get usage => '此权限允许应用将你记录的餐食同步到 Health Connect，使你的营养数据可被你使用的其他健康与健身应用访问。';
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
			'errors.rateLimitExceeded' => '请求过多。请稍候再试。',
			'errors.networkError' => '网络错误。请检查你的网络连接。',
			'errors.unknownError' => '出现问题。请稍后再试。',
			'errors.loadingProfileData' => '加载个人资料数据时出错',
			'errors.somethingWentWrong' => '出现问题。',
			'errors.retry' => '重试',
			'onboarding.welcome' => ({required Object appLabel}) => '欢迎使用 ${appLabel}',
			'onboarding.subtitle' => '由 AI 驱动的你的专属营养助手',
			'onboarding.getStarted' => '开始使用',
			'onboarding.features.foodRecognition.title' => '智能食物识别',
			'onboarding.features.foodRecognition.description' => '拍张照片，让 AI 识别你的餐点',
			'onboarding.features.aiAnalysis.title' => 'AI 分析',
			'onboarding.features.aiAnalysis.description' => '从你的描述中即时获得营养信息',
			'onboarding.features.healthIntegration.title' => '健康数据集成',
			'onboarding.features.healthIntegration.description' => '连接 Health Connect 获取更全面的洞察',
			'onboarding.gender.title' => '你的性别是？',
			'onboarding.gender.description' => '性别有助于我们更准确地计算你的基础代谢率 (BMR)。',
			'onboarding.gender.next' => '下一步',
			'onboarding.height.title' => '你的身高是多少？',
			'onboarding.height.description' => '你的身高有助于我们准确计算 BMI 和能量需求。',
			'onboarding.height.metric' => '公制',
			'onboarding.height.imperial' => '英制',
			'onboarding.height.next' => '下一步',
			'onboarding.weight.currentTitle' => '你当前的体重是多少？',
			'onboarding.weight.currentDescription' => '你的当前体重对于个性化每日目标至关重要。',
			'onboarding.weight.targetTitle' => '你的目标体重是多少？',
			'onboarding.weight.targetDescription' => '设定目标体重可以帮助我们为你制定长期计划。',
			'onboarding.weight.metric' => '公制',
			'onboarding.weight.imperial' => '英制',
			'onboarding.weight.next' => '下一步',
			'onboarding.age.title' => '你的出生日期是？',
			'onboarding.age.description' => '你的年龄有助于我们准确计算所需热量。',
			'onboarding.age.next' => '下一步',
			'onboarding.bmiScale.underweight' => '偏低',
			'onboarding.bmiScale.healthy' => '健康',
			'onboarding.bmiScale.overweight' => '偏重',
			'onboarding.bmiScale.obese' => '肥胖',
			'onboarding.bmiScale.categories.underweight' => '体重偏低',
			'onboarding.bmiScale.categories.healthyWeight' => '健康体重',
			'onboarding.bmiScale.categories.overweight' => '超重',
			'onboarding.bmiScale.categories.obese' => '肥胖',
			'onboarding.bmiScale.messages.underweight' => '我们可以帮助你制定健康计划，通过富含营养的餐食达到更平衡的体重。',
			'onboarding.bmiScale.messages.healthy' => '做得很好！你处于健康范围内。我们会帮助你维持活力与能量。',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} 会用 AI 化简你的过程，帮助你舒适地接近目标体重。',
			'onboarding.bmiScale.messages.obese' => '我们会为你提供个性化支持和可持续的健康策略，陪伴你的目标实现。',
			'onboarding.weightGoal.title' => '你的目标是什么？',
			'onboarding.weightGoal.description' => '选择最符合你想实现目标的选项',
			'onboarding.activityLevel.title' => '你的日常活动量如何？',
			'onboarding.activityLevel.description' => '这有助于我们更准确地计算你的每日热量需求',
			'onboarding.healthConnect.title' => '连接 Health Connect',
			'onboarding.healthConnect.description' => '同步你的健康数据以获得更佳洞察与自动卡路里追踪',
			'onboarding.healthConnect.automaticTracking.title' => '自动卡路里追踪',
			'onboarding.healthConnect.automaticTracking.description' => '追踪来自你健身应用的消耗卡路里',
			'onboarding.healthConnect.progressInsights.title' => '进度洞察',
			'onboarding.healthConnect.progressInsights.description' => '获取关于你健康趋势的详细洞察',
			'onboarding.healthConnect.seamlessIntegration.title' => '无缝集成',
			'onboarding.healthConnect.seamlessIntegration.description' => '从你喜欢的健康应用同步数据',
			'onboarding.healthConnect.connected' => '已连接 Health Connect',
			'onboarding.healthConnect.notConnected' => '未连接 Health Connect',
			'onboarding.healthConnect.setup' => '设置 Health Connect',
			'onboarding.healthConnect.skipForNow' => '暂不连接',
			'onboarding.healthConnect.statusConnected' => 'Health Connect 已连接。',
			'onboarding.healthConnect.statusSuccess' => '已成功连接 Health Connect！',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => '权限被拒绝。请在手机设置中为 ${appLabel} 启用 Health Connect 权限。',
			'onboarding.healthConnect.statusError' => ({required Object error}) => '设置 Health Connect 时出错：${error}',
			'onboarding.healthConnect.caloriesBurned.description' => '从 Health Connect 读取今天消耗的总卡路里',
			'onboarding.healthConnect.caloriesBurned.title' => '已消耗卡路里',
			'onboarding.healthConnect.installOrUpdate' => '安装或更新',
			'onboarding.healthConnect.manageAccess' => '管理访问权限',
			'onboarding.healthConnect.overviewDescription' => '将已消耗的卡路里计入每日目标，并可选择与 Health Connect 共享记录的餐食。',
			'onboarding.healthConnect.shareLoggedMeals.description' => '将你在 Calorify 中记录的餐食写入 Health Connect',
			'onboarding.healthConnect.shareLoggedMeals.title' => '共享记录的餐食',
			'onboarding.healthConnect.statusNotConnected' => '选择要启用的 Health Connect 功能。',
			'onboarding.healthConnect.statusPartial' => 'Health Connect 已部分连接。请启用剩余权限以使用两项功能。',
			'onboarding.healthConnect.statusProviderUpdateRequired' => '安装或更新 Health Connect 以继续。',
			'onboarding.healthConnect.statusUnavailable' => '此设备不支持 Health Connect。',
			'onboarding.healthConnect.userControl.description' => '选择任一权限，并随时更改访问设置',
			'onboarding.healthConnect.userControl.title' => '由你掌控',
			'onboarding.reinforcement.trackingSuccess.title' => '你并不孤单',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => '研究显示，持续记录是长期成功的头号预测因素。',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '对于一位 ${age} 岁的 ${gender} 希望 ${goal}，持续记录是成功的头号预测因素。',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} 让这项工作比手动操作容易 10 倍。',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => '准备好开始了吗？',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => '拍摄餐点照片以获得即时分析',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => '持续记录以看到有意义的进展',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => '每天跟踪进展以保持动力',
			'onboarding.reinforcement.trackingSuccess.button' => '开始吧',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => '个人',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => '更健康的你',
			'onboarding.reinforcement.healthProfile.title' => '你的健康档案',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => '根据你的指标，你的 BMI 为 ${bmi}。',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => '让我们完成你的档案以定制你的体验。',
			'onboarding.reinforcement.healthProfile.goalGain' => '增加',
			'onboarding.reinforcement.healthProfile.goalLose' => '减少',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => '为达到目标，你需要${direction}${diff}${unit}。',
			'onboarding.reinforcement.healthProfile.goalReached' => '你已达到目标体重！我们会帮助你维持它。',
			'onboarding.reinforcement.healthProfile.button' => '开始吧',
			'onboarding.reinforcement.goalLifestyle.title' => '良好的开始！',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => '你已经迈出朝 ${goalText} 的第一步。既然你是${activityText}，${appLabel} 会调整你的目标以匹配你的生活方式。',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => '个性化卡路里目标',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI 驱动的餐食识别',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => '详细的宏量营养素分解',
			'onboarding.reinforcement.goalLifestyle.button' => '开始吧',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => '你的目标',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => '活跃',
			'tabs.dashboard' => '仪表盘',
			'tabs.history' => '历史',
			'home.aiSummary.title' => '你的 AI 摘要',
			'home.aiSummary.logMore' => '在接下来的几天里多记录几餐，以获得个性化的 AI 洞察。',
			'home.aiSummary.loading' => '正在加载你的摘要...',
			'home.aiSummary.mealCount' => ({required Object count}) => '已记录 ${count} 餐',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => '平衡评分 ${score}',
			'home.aiSummary.topFoods' => '常见食物',
			'home.aiSummary.trendUp' => '热量上升趋势',
			'home.aiSummary.trendDown' => '热量下降趋势',
			'home.aiSummary.trendSteady' => '热量保持稳定',
			'home.aiSummary.generatedAt' => ({required Object time}) => '更新于 ${time}',
			'home.dailyGoal.title' => '设定你的每日目标',
			'home.dailyGoal.titleSet' => '你的每日目标',
			'home.dailyGoal.description' => '准备开始你的健康旅程吗？在下方设置你的每日卡路里目标以开启进步。',
			'home.dailyGoal.descriptionSet' => '指南已设置！这是指引你的每日卡路里目标。',
			'home.dailyGoal.yourGoal' => '你的目标',
			'home.dailyGoal.goal' => '目标',
			'home.dailyGoal.dailyCalories' => '每日卡路里 (kcal)',
			'home.dailyGoal.setGoal' => '设定目标',
			'home.dailyGoal.intake' => '摄入',
			'home.dailyGoal.burned' => '消耗',
			'home.dailyGoal.weightImpact' => '体重影响',
			'home.dailyGoal.estLoss' => '预计减少',
			'home.dailyGoal.estGain' => '预计增加',
			'home.dailyGoal.kcal' => '千卡 (kcal)',
			'home.dailySummary.title' => '每日汇总',
			'home.dailySummary.calories' => '卡路里',
			'home.dailySummary.carbs' => '碳水',
			'home.dailySummary.protein' => '蛋白质',
			'home.dailySummary.fat' => '脂肪',
			'home.dailySummary.fiber' => '纤维',
			'home.dailySummary.grams' => '克',
			'home.dailySummary.chartAccessibilityLabel' => '宏量营养素图表',
			'home.intakeProgress.title' => '今日宏量分配',
			'home.intakeProgress.target' => '目标',
			'home.intakeProgress.current' => '当前',
			'home.intakeHistory.title' => '7 天宏量历史',
			'home.intakeHistory.trendTitle' => '今日趋势',
			'home.intakeHistory.peakHour' => ({required Object hour}) => '峰值：${hour}:00',
			'home.intakeHistory.noHistoryYet' => '暂无历史',
			'home.intakeHistory.startLogging' => '开始记录餐食以在此查看你的\n7 天宏量趋势',
			'home.mealLog.title' => '已记录的餐食',
			'home.mealLog.emptyMessage' => '拍下你最近的一餐照片以在此记录。',
			'home.mealLog.noMealsToday' => '今日暂无记录的餐食',
			'home.mealLog.seeAllMeals' => '查看所有餐食',
			'home.mealDescription.title' => 'AI 快速添加',
			'home.mealDescription.description' => '描述你的餐食，让 AI 处理细节。',
			'home.mealDescription.hint' => '例如：早餐我吃了一大碗燕麦粥，切了一根香蕉，加入一勺乳清蛋白……',
			'home.mealDescription.analyzeMeal' => '分析餐食',
			'home.favoriteMeals.title' => '收藏餐食',
			'home.favoriteMeals.description' => '快速添加你收藏的餐食之一。',
			'home.favoriteMeals.noFavorites' => '还没有收藏的餐食。',
			'home.favoriteMeals.addFavoriteHint' => '点击餐食上的星标将其标为收藏。',
			'home.favoriteMeals.seeAll' => '查看全部',
			'home.favoriteMeals.add' => '添加',
			'home.mealSnap.title' => '拍照并记录餐食',
			'home.mealSnap.description' => '使用相机拍摄食物照片以进行 AI 分析。',
			'home.mealSnap.openCamera' => '打开相机',
			'home.mealSnap.gallery' => '相册',
			'home.mealSnap.compressingPhoto' => '优化照片…',
			'home.mealSnap.uploadingPhoto' => '上传照片…',
			'home.connectHealth.title' => '与 Health Connect 同步',
			'home.connectHealth.description' => '将你的营养数据同步到 Health Connect',
			'home.connectHealth.install' => '安装',
			'home.connectHealth.connect' => '连接',
			'home.connectHealth.dataUseDescription' => '将已消耗的卡路里计入目标，并共享记录的餐食',
			'home.connectHealth.installOrUpdate' => '安装或更新',
			'history.noMeals' => '暂无记录的餐食',
			'history.emptyMessage' => '拍下你最近的一餐照片以在此记录。',
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
			'meal.nameRequired' => '请在保存前输入餐名。',
			'meal.mealQuantity' => '餐食数量',
			'meal.mealQuantityHint' => '例如：1 碗，2 片',
			'meal.timeOfMeal' => '用餐时间',
			'meal.timeOfMealHint' => '选择你用餐的时间',
			'meal.mealType' => '餐次类型',
			'meal.nutrition.calories' => '卡路里',
			'meal.nutrition.carbs' => '碳水 (g)',
			'meal.nutrition.protein' => '蛋白质 (g)',
			'meal.nutrition.fat' => '脂肪 (g)',
			'meal.nutrition.fiber' => '纤维 (g)',
			'meal.deleteConfirmation.title' => '删除餐食',
			'meal.deleteConfirmation.message' => '确定要删除此餐食记录吗？',
			'meal.deleteConfirmation.cancel' => '取消',
			'meal.deleteConfirmation.delete' => '删除',
			'meal.addedToLog' => '餐食已添加到记录！',
			'meal.couldNotAdd' => ({required Object error}) => '无法添加餐食：${error}',
			'meal.savedSuccessfully' => '餐食添加成功！',
			'meal.updatedSuccessfully' => '餐食更新成功！',
			'meal.errorSaving' => ({required Object error}) => '保存餐食时出错：${error}',
			'meal.removedFromFavorites' => '已从收藏中移除！',
			'meal.savedAsFavorite' => '已将餐食保存为收藏！',
			'meal.unfavorite' => '取消收藏',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => '无法更新收藏：${error}',
			'meal.feedbackThanks' => '感谢你的反馈！',
			'meal.reanalysisUpdated' => '已根据你的反馈更新餐食分析。',
			'meal.failedToProcess' => ({required Object error}) => '处理失败：${error}',
			'meal.failedToProcessImage' => ({required Object error}) => '处理图片失败：${error}',
			'meal.errorCompressingImage' => ({required Object error}) => '压缩图片时出错：${error}',
			'meal.failedToSave' => '保存数据失败。请重试。',
			'meal.skip' => '跳过',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => '问题 ${current} / ${total}',
			'meal.questionFlow.noQuestionsAvailable' => '暂无可用问题',
			'meal.questionFlow.next' => '下一步',
			'meal.questionFlow.continueLabel' => '继续',
			'meal.analysis.title' => '正在分析你的餐食',
			'meal.analysis.stepStarted' => '开始处理…',
			'meal.analysis.stepDecomposition' => '理解你的餐食…',
			'meal.analysis.stepIngredients' => '将食材匹配到营养数据…',
			'meal.analysis.stepUncertainty' => '核查信心水平…',
			'meal.analysis.stepMealTypeQuestion' => '快好了…',
			'meal.analysis.stepResult' => '最终结果生成中…',
			'meal.analysis.stepError' => '出现问题',
			'meal.analysis.stepDefault' => '正在分析你的餐食…',
			'meal.analysis.progressUnderstand' => '理解你的餐食',
			'meal.analysis.progressMatch' => '查找食材营养信息',
			'meal.analysis.progressCheck' => '核对分量与置信度',
			'meal.analysis.progressMealType' => '选择餐次类型',
			'meal.analysis.progressFinish' => '计算卡路里与宏量营养素',
			'meal.analysis.detectedIngredientHeading' => '我们识别到的食材',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '另外还有 ${count} 项',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '检测到 ${count} 种食材',
			'meal.analysis.ingredientsPending' => '扫描食材中…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '“${text}”',
			'meal.analysis.offlineTip0' => '提示：持续记录比追求完美更重要——规律的记录能揭示真正有用的模式。',
			'meal.analysis.offlineTip1' => '提示：拍照时使用自然光并从俯视角度拍摄，有助于提升分量估算准确性。',
			'meal.analysis.offlineTip2' => '提示：记得说明饮料、酱汁和食用油——这些常被忽略但会增加热量。',
			'meal.analysis.offlineTip3' => '提示：简短的分量说明（1 碗、大杯咖啡）会让估算更精确。',
			'meal.analysis.offlineTip4' => '提示：饭后记录同样能培养习惯；不必追求完美。',
			'meal.analysis.offlineTip5' => '提示：烹饪方式会大幅影响热量（煎 vs 烤），说明烹饪方法有助于准确估算。',
			'meal.localInference.reviewTitle' => '核对检测到的食材',
			'meal.localInference.reviewSubtitle' => '此内容由您的设备解析。在计算营养成分前，请修正名称或分量。',
			'meal.localInference.mealName' => '餐食名称',
			'meal.localInference.ingredient' => '食材',
			'meal.localInference.grams' => '预计克数',
			'meal.localInference.removeIngredient' => '移除食材',
			'meal.localInference.continueLabel' => '继续',
			'meal.localInference.invalidProposal' => '请至少添加一种食材，并输入正数的克数。',
			'meal.localInference.localUnavailable' => '目前无法使用设备端分析。',
			'meal.localInference.calculationDetails' => '计算详情',
			'meal.localInference.interpretationLocal' => '由本设备解析的食材',
			'meal.localInference.interpretationCloud' => '由云端解析的食材',
			'meal.localInference.interpretationManual' => '由您核对或编辑的食材',
			'meal.localInference.nutritionRemote' => '营养数据通过 Calorify 从 USDA 获取',
			'meal.localInference.nutritionFallback' => '部分营养数值为远程估算',
			'meal.localInference.calculationServer' => '卡路里和宏量营养素由 Calorify 计算',
			'meal.localInference.fallbackUsed' => '本地分析已回退至云端处理',
			'meal.localInference.noRawContent' => '诊断收据不包含您的餐食文本或照片。',
			'meal.feedback.title' => '哪里看起来不对？',
			'meal.feedback.subtitle' => '通过选择一个或多个问题来帮助我们改进分析。',
			'meal.feedback.tellUsMore' => '告诉我们更多信息',
			'meal.feedback.describeIncorrect' => '描述不正确的地方',
			'meal.feedback.submit' => '提交',
			'meal.feedback.issueFoodIdentification' => '食物识别错误',
			'meal.feedback.issuePortionSize' => '分量错误',
			'meal.feedback.issueCalorieDistribution' => '卡路里分配错误',
			'meal.feedback.issueMacrosWrong' => '宏量营养数据错误',
			'meal.feedback.issueMissingItems' => '遗漏项',
			'meal.feedback.issueExtraItems' => '多余项',
			'meal.feedback.issueOther' => '其他',
			'favorites.title' => '收藏',
			'favorites.empty' => '还没有收藏的餐食。',
			'favorites.searchPlaceholder' => '搜索收藏的餐食',
			'favorites.searchEmptyTitle' => '没有收藏符合搜索条件',
			'favorites.searchEmptySubtitle' => '尝试使用不同的餐名、数量或餐次类型。',
			'favorites.sortLabel' => '排序收藏',
			'favorites.undo' => '撤销',
			'favorites.removed' => ({required Object name}) => '已从收藏中移除 ${name}',
			'favorites.sortOptions.recent' => '最近',
			'favorites.sortOptions.calories' => '卡路里',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => '个人资料',
			'profile.noProfileData' => '未找到个人资料数据',
			'profile.yourProfile' => '你的个人资料',
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
			'profile.activityLevel' => '活动等级',
			'profile.healthMetrics' => '健康指标',
			'profile.notSet' => '未设置',
			'profile.years' => '岁',
			'profile.updatedSuccessfully' => '个人资料更新成功！',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => '每日目标',
			'profile.calculatedValues.calPerDay' => '卡/天',
			'profile.calculatedValues.notAvailable' => '无可用数据',
			'healthScore.title' => '健康评分',
			'healthScore.whyThisScore' => '为什么是这个评分？',
			'healthScore.note' => '此评分为 AI 基于识别到的食材和营养密度的估算。饮食建议请咨询专业人士。',
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
			'editProfile.activityLevel' => '活动等级',
			'editProfile.metric' => '公制',
			'editProfile.imperial' => '英制',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => '磅 (lbs)',
			'editProfile.metricCm' => '公制 (cm)',
			'editProfile.imperialFtIn' => '英制 (ft/in)',
			'editProfile.metricKg' => '公制 (kg)',
			'editProfile.imperialLbs' => '英制 (lbs)',
			'editProfile.genders.male' => '男性',
			'editProfile.genders.female' => '女性',
			'editProfile.genders.other' => '其他',
			'editProfile.weightGoals.loseWeight.name' => '减重',
			'editProfile.weightGoals.loseWeight.description' => '创建热量赤字以减轻体重',
			'editProfile.weightGoals.maintainWeight.name' => '维持体重',
			'editProfile.weightGoals.maintainWeight.description' => '维持你当前的体重',
			'editProfile.weightGoals.gainWeight.name' => '增重',
			'editProfile.weightGoals.gainWeight.description' => '创建热量盈余以增加体重',
			'editProfile.activityLevels.sedentary.name' => '久坐',
			'editProfile.activityLevels.sedentary.description' => '几乎不运动',
			'editProfile.activityLevels.lightlyActive.name' => '轻度活跃',
			'editProfile.activityLevels.lightlyActive.description' => '每周 1-3 天轻量运动',
			'editProfile.activityLevels.moderatelyActive.name' => '中度活跃',
			'editProfile.activityLevels.moderatelyActive.description' => '每周 3-5 天中等强度运动',
			'editProfile.activityLevels.veryActive.name' => '高度活跃',
			'editProfile.activityLevels.veryActive.description' => '每周 6-7 天高强度运动',
			'editProfile.activityLevels.extremelyActive.name' => '极度活跃',
			'editProfile.activityLevels.extremelyActive.description' => '非常高强度运动或体力工作',
			'settings.title' => '设置',
			'settings.sections.profile' => '个人资料',
			'settings.sections.localization' => '本地化',
			'settings.sections.notifications' => '通知',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.localInference' => '设备端分析',
			'settings.sections.supportAndLegal' => '支持与法律',
			'settings.sections.about' => '关于',
			'settings.sections.dangerZone' => '危险操作',
			'settings.sections.developer' => '开发者',
			'settings.editProfile.title' => '编辑个人资料',
			'settings.editProfile.subtitle' => '更新你的个人信息',
			'settings.language.title' => '语言',
			'settings.language.subtitle' => '选择你偏好的语言',
			'settings.language.searchHint' => '搜索语言...',
			'settings.language.noResults' => '未找到结果',
			'settings.heightUnit.title' => '身高单位',
			'settings.weightUnit.title' => '体重单位',
			'settings.mealReminders.title' => '餐食提醒',
			'settings.mealReminders.subtitle' => '用及时提醒帮助你保持记录',
			'settings.localInference.title' => '设备端餐食分析',
			'settings.localInference.subtitle' => '在计算营养成分前，使用 Gemini Nano 解析支持的餐食',
			'settings.localInference.unavailable' => '此设备不支持',
			'settings.localInference.rolloutUnavailable' => '检测到可用硬件，但此功能在当前应用版本中尚未启用',
			'settings.localInference.modelSetup' => 'Gemini Nano 需要完成下载后才能启用此功能',
			'settings.localInference.useLocalTitle' => '使用设备端分析',
			'settings.localInference.useLocalSubtitle' => '可选功能，默认关闭。对于复杂餐食，结果的可靠性可能较低。',
			'settings.localInference.disclosureTitle' => '在启用设备端分析之前',
			'settings.localInference.disclosureBody' => 'Gemini Nano 可以在支持的 Android 设备上识别食材并估算分量。您核对后的食材方案将发送至 Calorify，以便进行 USDA 营养数据比对和计算。',
			'settings.localInference.disclosureLimit1' => '复杂菜肴、隐藏食材和分量大小可能会被错误识别。',
			'settings.localInference.disclosureLimit2' => '模型在下载中、繁忙、处于后台或受设备限制时可能无法使用。',
			'settings.localInference.disclosureLimit3' => '如果本地解析无法完成，此 Beta 版本会自动将您的原始餐食描述发送至 Calorify 进行云端分析。',
			'settings.localInference.acknowledgement' => '我明白我应当核对检测到的食材和分量。',
			'settings.localInference.enable' => '确认并启用',
			'settings.localInference.cancel' => '取消',
			'settings.theme.title' => '主题',
			'settings.theme.light' => '浅色',
			'settings.theme.dark' => '深色',
			'settings.theme.system' => '跟随系统',
			'settings.sendFeedback.title' => '发送反馈',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '帮助我们改进 ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} 应用反馈',
			'settings.sendFeedback.emailBodyPrefix' => '请在下方提供你的反馈：',
			'settings.sendFeedback.appVersion' => '应用版本',
			'settings.sendFeedback.device' => '设备',
			'settings.sendFeedback.osVersion' => '系统版本',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => '导出餐食历史',
			'settings.exportMealHistory.subtitle' => '共享已记录餐食的 CSV',
			'settings.exportMealHistory.shareText' => '你的 Calorify 餐食历史导出',
			'settings.exportMealHistory.failed' => ({required Object error}) => '无法导出餐食历史：${error}',
			'settings.clearAllData.title' => '清除所有数据',
			'settings.clearAllData.subtitle' => '不可逆地删除你的全部信息',
			'settings.clearAllData.confirmationTitle' => '清除所有数据？',
			'settings.clearAllData.confirmationMessage' => '此操作不可撤销。你所有的记录、收藏和个人设置将被永久删除。',
			'settings.clearAllData.cancel' => '取消',
			'settings.clearAllData.clearEverything' => '清除全部',
			'settings.clearAllData.localOnlyConfirmationMessage' => '这将从此设备永久删除记录的餐食、收藏和个人资料设置。已共享到 Health Connect 的餐食和 Health Connect 访问权限需在“设置 > Health Connect”中单独管理。',
			'settings.clearAllData.localOnlySubtitle' => '删除此设备上存储的 Calorify 数据',
			'settings.debugOptions.title' => '调试选项',
			'settings.developerModeEnabled' => '开发者模式已启用！',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => '查看并管理权限',
			'settings.healthConnect.unavailable.title' => 'Health Connect 不可用',
			'settings.healthConnect.unavailable.description' => '此设备上无法使用 Health Connect。请从 Play Store 安装 Health Connect（Android 9+）或更新到 Android 14+。',
			'settings.healthConnect.unavailable.unsupportedDescription' => '此设备不支持 Health Connect。',
			'settings.healthConnect.permissions.title' => '权限',
			'settings.healthConnect.permissions.description' => '为提供 Health Connect 集成功能，请求以下权限：',
			'settings.healthConnect.permissions.granted' => '已授予',
			'settings.healthConnect.permissions.notGranted' => '未授予',
			'settings.healthConnect.permissions.caloriesBurned.title' => '读取总消耗卡路里',
			'settings.healthConnect.permissions.caloriesBurned.description' => '允许应用读取来自 Health Connect 的总消耗卡路里。',
			'settings.healthConnect.permissions.caloriesBurned.usage' => '该权限用于在应用中显示你的每日消耗卡路里，帮助你了解全天的总能量消耗。',
			'settings.healthConnect.permissions.nutritionRead.title' => '读取营养数据',
			'settings.healthConnect.permissions.nutritionRead.description' => '允许应用读取来自 Health Connect 的营养数据。',
			'settings.healthConnect.permissions.nutritionRead.usage' => '此权限允许应用读取可能由其他连接到 Health Connect 的应用记录的营养信息，从而提供更全面的营养视图。',
			'settings.healthConnect.permissions.nutritionWrite.title' => '写入营养数据',
			'settings.healthConnect.permissions.nutritionWrite.description' => '允许应用将营养数据写入 Health Connect。',
			'settings.healthConnect.permissions.nutritionWrite.usage' => '此权限允许应用将你记录的餐食同步到 Health Connect，使你的营养数据可被你使用的其他健康与健身应用访问。',
			'settings.healthConnect.managePermissions' => '管理权限',
			'settings.healthConnect.openSettings' => '打开 Health Connect 设置',
			'settings.healthConnect.requestPermissions' => '请求权限',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => '权限请求已取消或失败。请重试或在 Health Connect 设置中手动授予权限。',
			'settings.healthConnect.permissionRequestFailed' => '无法请求权限。请重试或在 Health Connect 设置中手动授予权限。',
			'settings.healthConnect.requestingPermissions' => '正在请求…',
			'settings.healthConnect.actionFailed' => '无法打开 Health Connect，请重试。',
			'settings.healthConnect.connectionComplete' => '两项 Health Connect 功能均已启用。',
			'settings.healthConnect.connectionPartial' => '部分 Health Connect 功能已启用。',
			'settings.healthConnect.deleteSyncedMeals' => '从 Health Connect 删除 Calorify 餐食',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => '删除已同步的餐食',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => '要从 Health Connect 删除此版本 Calorify 同步的餐食吗？本地餐食日志不会改变。较早的 Calorify 条目可能仍需通过 Health Connect 中的“管理数据”删除。',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => '删除已同步的餐食？',
			'settings.healthConnect.deleteSyncedMealsFailed' => '无法删除已同步的餐食，请重试。',
			'settings.healthConnect.deleteSyncedMealsSuccess' => '已从 Health Connect 删除 Calorify 餐食。',
			'settings.healthConnect.disconnect' => '断开 Health Connect',
			'settings.healthConnect.disconnectConfirmationAction' => '断开连接',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify 将失去 Health Connect 访问权限。已写入其中的数据不会被删除。',
			'settings.healthConnect.disconnectConfirmationTitle' => '断开 Health Connect？',
			'settings.healthConnect.updateRequired.action' => '安装或更新',
			'settings.healthConnect.updateRequired.description' => '请先安装或更新 Health Connect，再管理访问权限。',
			'settings.healthConnect.updateRequired.title' => 'Health Connect 需要处理',
			'settings.about.title' => '关于',
			'settings.about.tagline' => '快速、免费且以隐私为先的卡路里感知工具',
			'settings.about.ourStory.title' => '我们的故事',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} 源自一个简单的挫败感：大多数卡路里追踪应用要么过于复杂、需要大量手动输入、收费高昂，要么在隐私上妥协。\n\n作为一名独立开发者，我想做一个更简单、更公平的应用——一个用 AI 减少操作负担、保持快速且免费使用，并尊重你的健康数据的应用。\n\n${appLabel} 是我希望存在的应用：无需账号、无追踪、无广告——只有清晰、实用的洞察和你的健康目标。',
			'settings.about.privacy.title' => '你的隐私很重要',
			'settings.about.privacy.description' => '隐私不是事后考虑——它是设计原则。以下是实践中的含义：',
			'settings.about.privacy.noAccounts' => '无需账号\n立即使用应用。无注册、无身份绑定。',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => '无行为追踪\n${appLabel} 不会监控你的活动、构建使用档案或跨应用/网站跟踪你。',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => '内建无广告\n${appLabel} 旨在无需广告或基于数据的变现运行。',
			'settings.about.privacy.noDataSelling' => '不出售数据\n你的健康数据不会被出售或分享给第三方。',
			'settings.about.privacy.localStorage' => '本地优先存储\n你的数据保留在你的设备上。',
			'settings.about.privacy.privacyPolicy' => '隐私政策',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => '有限的分析与诊断\n${appLabel} 使用基本应用事件和崩溃诊断来提高可靠性。健康记录值不会用于广告或出售。',
			'settings.about.developer.title' => '由独立开发者构建',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} 由一位独立开发者构建和维护，致力于创建平静、尊重隐私的健康软件。\n\n反馈由开发者本人阅读，并帮助塑造应用的方向。',
			'settings.about.developer.website' => '网站',
			'settings.about.developer.email' => '邮件',
			'settings.about.feedback.title' => ({required Object appLabel}) => '喜欢 ${appLabel} 吗？',
			'settings.about.feedback.description' => ({required Object appLabel}) => '你的反馈能让 ${appLabel} 变得更好，惠及所有用户。',
			'settings.about.feedback.rateApp' => '在 Play Store 评分',
			'settings.about.feedback.sendFeedback' => '发送反馈',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify 版本 ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => '构建 ${buildNumber}',
			'reminders.title' => '用提醒保持进度',
			'reminders.description' => '收到温和的提醒以记录餐食并坚持你的营养目标',
			'reminders.notificationsEnabled' => '通知已启用',
			'reminders.notificationsDisabled' => '通知已禁用',
			'reminders.enabledSubtitle' => '你将收到餐食提醒',
			'reminders.disabledSubtitle' => '启用通知以接收餐食提醒',
			'reminders.mealReminders' => '餐食提醒',
			'reminders.breakfast' => '早餐',
			'reminders.lunch' => '午餐',
			'reminders.dinner' => '晚餐',
			'reminders.snack' => '加餐',
			'reminders.unknown' => '未知',
			'reminders.change' => '更改',
			'reminders.enableNotifications' => '启用通知',
			'reminders.skipForNow' => '暂不启用',
			'reminders.saveChanges' => '保存更改',
			'reminders.enabledSuccessfully' => '通知已成功启用！',
			'reminders.permissionDenied' => '通知权限被拒绝',
			'reminders.errorEnabling' => ({required Object error}) => '启用通知时出错：${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => '完成设置时出错：${error}',
			'notifications.breakfast.title' => '早餐时间！ 🍳',
			'notifications.breakfast.body' => '别忘了记录你的早餐',
			'notifications.lunch.title' => '午餐时间！ 🥗',
			'notifications.lunch.body' => '是时候记录午餐了',
			'notifications.dinner.title' => '晚餐时间！ 🍽️',
			'notifications.dinner.body' => '别忘了记录你的晚餐',
			'notifications.snack.title' => '加餐时间！ 🍎',
			'notifications.snack.body' => '来点健康的加餐吧',
			'notifications.test.title' => '测试通知',
			'login.title' => '登录',
			_ => null,
		} ?? switch (path) {
			'login.signInWithGoogle' => '使用 Google 登录',
			'login.signInFailed' => 'Google 登录失败或已取消。',
			'disclaimer.pleaseNote' => '请注意',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} 提供的是估算的营养信息。准确性取决于你的输入与食物差异。作为参考而非权威来源。如需个性化饮食建议，请咨询专业人士。',
			'disclaimer.snap.portionSize.title' => '分量大小',
			'disclaimer.snap.portionSize.description' => '估算的准确性在很大程度上依赖于你对分量大小的正确评估。',
			'disclaimer.snap.preparationMethods.title' => '烹饪方式',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => '烹饪方法会显著改变食物的营养成分。${appLabel} 的估算可能无法始终考虑这些差异。',
			'disclaimer.snap.ingredients.title' => '食材',
			'disclaimer.snap.ingredients.description' => '复杂菜肴中存在许多隐含成分可能导致估算不够准确。',
			'disclaimer.snap.databaseLimitations.title' => '数据库限制',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} 的食物数据库虽然很广泛，但可能不包含每一种食物或所有变体。',
			'disclaimer.weightEstimate.title' => '关于体重估算',
			'disclaimer.weightEstimate.description' => '预测的体重变化是基于简单的热量摄入与消耗模型的理论估算。仅用于激励参考，而非实际体重预测。',
			'disclaimer.weightEstimate.calorieAccuracy.title' => '卡路里准确性',
			'disclaimer.weightEstimate.calorieAccuracy.description' => '此估算的准确性取决于你记录的卡路里摄入与消耗。记录不准确会导致预测不准确。',
			'disclaimer.weightEstimate.biologicalFactors.title' => '生理因素',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => '实际的体重变化受代谢、激素、睡眠、压力、体液和其他个体差异影响，${appLabel} 无法测量这些因素。',
			'disclaimer.weightEstimate.waterWeight.title' => '水重波动',
			'disclaimer.weightEstimate.waterWeight.description' => '日常体重可能因水分滞留、消化和记录时机而显著波动。估算并不考虑这些日常变化。',
			'disclaimer.weightEstimate.professionalGuidance.title' => '专业指导',
			'disclaimer.weightEstimate.professionalGuidance.description' => '不要用此估算做出医疗决策。有关个性化体重管理建议，请始终咨询医疗专业人士或注册营养师。',
			'disclaimer.healthMetrics.description' => '这些指标帮助你了解身体的能量需求并指导营养目标。',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => '基础代谢率 (BMR) 是你静息时为维持呼吸、循环等基本功能而消耗的卡路里数。BMR 取决于你的年龄、性别、身高和体重。较高的 BMR 表示你在静息时自然消耗更多热量，通常与更多的肌肉、更年轻的年龄或男性有关。较低的 BMR 通常表示肌肉较少、年龄较大或女性。',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => '每日总能量消耗 (TDEE) 是你每天消耗的总卡路里，包括 BMR 以及来自身体活动和日常活动的卡路里。TDEE 取决于你的 BMR 和活动水平。较高的 TDEE 表示你总体消耗更多卡路里，通常与更活跃或更高的 BMR 有关。较低的 TDEE 则表示日常活动较少或 BMR 较低。',
			'disclaimer.healthMetrics.dailyGoal.title' => '每日目标',
			'disclaimer.healthMetrics.dailyGoal.description' => '每日目标是基于你的 TDEE 和体重目标推荐的每日摄入卡路里。为了减重，你需摄入低于 TDEE 的卡路里；维持体重则与 TDEE 相当；增重则摄入高于 TDEE 的卡路里。这有助于你以健康节奏实现期望的体重变化。',
			'disclaimer.calorieExpenditure.title' => '卡路里消耗估算',
			'disclaimer.calorieExpenditure.description' => '当 Health Connect 数据不可用时，我们会使用你的基础代谢率 (BMR) 和活动水平 (TDEE) 来估算今天已消耗的卡路里，并按当天已过的时间比例进行缩放。',
			'disclaimer.calorieExpenditure.howCalculated.title' => '估算如何计算',
			'disclaimer.calorieExpenditure.howCalculated.description' => '我们基于你的档案计算 TDEE，并乘以当天已过时间的比例 (小时 + 分钟) / 24，以估算目前为止已消耗的卡路里。',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => '专业指导',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => '不要用此估算做出医疗决策。有关个性化体重管理建议，请始终咨询医疗专业人士或注册营养师。',
			'localNutritionPhase4.nutritionBundled' => '营养信息来自已下载的 USDA 数据包',
			'localNutritionPhase4.nutritionCached' => '营养信息来自设备上的 USDA 缓存',
			'localNutritionPhase4.nutritionMixed' => '营养信息由已下载、已缓存和远程获取的 USDA 数据行合并而成',
			'localNutritionPhase4.calculationLocal' => '已在此设备上计算热量和宏量营养素',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}：已下载的 USDA 数据包',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}：设备上的 USDA 缓存',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}：通过 Calorify 获取的 USDA 数据行',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}：确定性营养常量',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · 数据集 ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => '较小',
			'localNutritionPhase4.portionEstimated' => '估算',
			'localNutritionPhase4.portionLarger' => '较大',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => '${ingredient} 最接近哪个份量？',
			'localNutritionPhase4.mealTypeQuestion' => '这是哪一餐？',
			'localNutritionPhase4.localNutritionTip' => '根据已验证的本地营养数据计算。',
			'localNutritionPhase4.offlineNutritionTitle' => '下载营养数据',
			'localNutritionPhase4.offlineNutritionSubtitle' => '当所有食材均有数据时，在此设备上使用已验证的 USDA 数据行和确定性计算。',
			'localNutritionPhase4.offlineNutritionUnavailable' => '此应用版本不提供本地营养数据。',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => '尚未下载已验证的营养数据包。',
			'localNutritionPhase4.offlineNutritionInstalling' => '正在下载并验证营养数据…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => '数据包 ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} 条已缓存的 USDA 数据行 · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => '检查更新',
			'localNutritionPhase4.offlineNutritionClear' => '清除本地营养数据',
			'localNutritionPhase4.offlineNutritionClearTitle' => '清除本地营养数据？',
			'localNutritionPhase4.offlineNutritionClearBody' => '这将移除已下载的 USDA 数据包和查询缓存。已记录的餐食会保留保存时使用的准确营养快照。',
			'localNutritionPhase4.offlineNutritionClearConfirm' => '清除数据',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => '无法下载并验证本地营养数据：${error}',
			'localNutritionPhase4.offlineNutritionCleared' => '已清除本地营养数据',
			'common.close' => '关闭',
			'common.kContinue' => '继续',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '喜欢 ${appLabel} 吗？',
			'feedbackRating.yes' => '是，我很喜欢',
			'feedbackRating.no' => '不太喜欢',
			'feedbackRating.rateStepHeading' => '在 Play Store 评分',
			'feedbackRating.emailStepHeading' => '通过邮件发送反馈',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => '一个简短的评分能帮助更多人发现 ${appLabel} 并支持开发。你愿意花一点时间评分吗？',
			'feedbackRating.shareFeedbackViaEmail' => '你的反馈决定下一步方向——我们会阅读每条信息。你愿意通过邮件分享你的想法吗？',
			'feedbackRating.rateCta' => '在 Play Store 评分',
			'feedbackRating.maybeLater' => '稍后再说',
			'feedbackRating.sendFeedback' => '发送反馈',
			'feedbackRating.noThanks' => '不用了，谢谢',
			'feedbackRating.aboutUsDescription' => '由小团队用心打造。我们专注于隐私、简洁，并帮助你养成更好的饮食习惯。',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '想知道是谁在背后构建 ${appLabel}？查看 ',
			'feedbackRating.aboutUsLinkLabel' => '关于我们',
			'feedbackRating.thankYouMessage' => '谢谢！我们会在之后再次询问。',
			'health.syncFailed' => '无法同步到 Health Connect',
			'health.mealSynced' => '餐食已与 Health Connect 同步',
			_ => null,
		};
	}
}
