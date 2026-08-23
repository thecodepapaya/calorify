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
	@override late final Translations$errors$zh_CN errors = Translations$errors$zh_CN.internal(_root);
	@override late final Translations$onboarding$zh_CN onboarding = Translations$onboarding$zh_CN.internal(_root);
	@override late final Translations$tabs$zh_CN tabs = Translations$tabs$zh_CN.internal(_root);
	@override late final Translations$home$zh_CN home = Translations$home$zh_CN.internal(_root);
	@override late final Translations$history$zh_CN history = Translations$history$zh_CN.internal(_root);
	@override late final Translations$meal$zh_CN meal = Translations$meal$zh_CN.internal(_root);
	@override late final Translations$favorites$zh_CN favorites = Translations$favorites$zh_CN.internal(_root);
	@override late final Translations$profile$zh_CN profile = Translations$profile$zh_CN.internal(_root);
	@override late final Translations$healthScore$zh_CN healthScore = Translations$healthScore$zh_CN.internal(_root);
	@override late final Translations$editProfile$zh_CN editProfile = Translations$editProfile$zh_CN.internal(_root);
	@override late final Translations$settings$zh_CN settings = Translations$settings$zh_CN.internal(_root);
	@override late final Translations$reminders$zh_CN reminders = Translations$reminders$zh_CN.internal(_root);
	@override late final Translations$notifications$zh_CN notifications = Translations$notifications$zh_CN.internal(_root);
	@override late final Translations$login$zh_CN login = Translations$login$zh_CN.internal(_root);
	@override late final Translations$disclaimer$zh_CN disclaimer = Translations$disclaimer$zh_CN.internal(_root);
	@override late final Translations$localNutritionPhase4$zh_CN localNutritionPhase4 = Translations$localNutritionPhase4$zh_CN.internal(_root);
	@override late final Translations$watch$zh_CN watch = Translations$watch$zh_CN.internal(_root);
	@override late final Translations$common$zh_CN common = Translations$common$zh_CN.internal(_root);
	@override late final Translations$feedbackRating$zh_CN feedbackRating = Translations$feedbackRating$zh_CN.internal(_root);
	@override late final Translations$health$zh_CN health = Translations$health$zh_CN.internal(_root);
}

// Path: errors
class Translations$errors$zh_CN extends Translations$errors$en {
	Translations$errors$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$onboarding$zh_CN extends Translations$onboarding$en {
	Translations$onboarding$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '欢迎使用 ${appLabel}';
	@override String get subtitle => '由 AI 驱动的你的专属营养助手';
	@override String get getStarted => '开始使用';
	@override late final Translations$onboarding$features$zh_CN features = Translations$onboarding$features$zh_CN.internal(_root);
	@override late final Translations$onboarding$gender$zh_CN gender = Translations$onboarding$gender$zh_CN.internal(_root);
	@override late final Translations$onboarding$height$zh_CN height = Translations$onboarding$height$zh_CN.internal(_root);
	@override late final Translations$onboarding$weight$zh_CN weight = Translations$onboarding$weight$zh_CN.internal(_root);
	@override late final Translations$onboarding$age$zh_CN age = Translations$onboarding$age$zh_CN.internal(_root);
	@override late final Translations$onboarding$bmiScale$zh_CN bmiScale = Translations$onboarding$bmiScale$zh_CN.internal(_root);
	@override late final Translations$onboarding$weightGoal$zh_CN weightGoal = Translations$onboarding$weightGoal$zh_CN.internal(_root);
	@override late final Translations$onboarding$activityLevel$zh_CN activityLevel = Translations$onboarding$activityLevel$zh_CN.internal(_root);
	@override late final Translations$onboarding$healthConnect$zh_CN healthConnect = Translations$onboarding$healthConnect$zh_CN.internal(_root);
	@override late final Translations$onboarding$reinforcement$zh_CN reinforcement = Translations$onboarding$reinforcement$zh_CN.internal(_root);
}

// Path: tabs
class Translations$tabs$zh_CN extends Translations$tabs$en {
	Translations$tabs$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get dashboard => '仪表盘';
	@override String get history => '历史';
}

// Path: home
class Translations$home$zh_CN extends Translations$home$en {
	Translations$home$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final Translations$home$aiSummary$zh_CN aiSummary = Translations$home$aiSummary$zh_CN.internal(_root);
	@override late final Translations$home$dailyGoal$zh_CN dailyGoal = Translations$home$dailyGoal$zh_CN.internal(_root);
	@override late final Translations$home$dailySummary$zh_CN dailySummary = Translations$home$dailySummary$zh_CN.internal(_root);
	@override late final Translations$home$intakeProgress$zh_CN intakeProgress = Translations$home$intakeProgress$zh_CN.internal(_root);
	@override late final Translations$home$intakeHistory$zh_CN intakeHistory = Translations$home$intakeHistory$zh_CN.internal(_root);
	@override late final Translations$home$mealLog$zh_CN mealLog = Translations$home$mealLog$zh_CN.internal(_root);
	@override late final Translations$home$mealDescription$zh_CN mealDescription = Translations$home$mealDescription$zh_CN.internal(_root);
	@override late final Translations$home$favoriteMeals$zh_CN favoriteMeals = Translations$home$favoriteMeals$zh_CN.internal(_root);
	@override late final Translations$home$mealSnap$zh_CN mealSnap = Translations$home$mealSnap$zh_CN.internal(_root);
	@override late final Translations$home$connectHealth$zh_CN connectHealth = Translations$home$connectHealth$zh_CN.internal(_root);
}

// Path: history
class Translations$history$zh_CN extends Translations$history$en {
	Translations$history$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get noMeals => '暂无记录的餐食';
	@override String get emptyMessage => '拍下你最近的一餐照片以在此记录。';
	@override String get today => '今天';
	@override String get yesterday => '昨天';
}

// Path: meal
class Translations$meal$zh_CN extends Translations$meal$en {
	Translations$meal$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
	@override late final Translations$meal$nutrition$zh_CN nutrition = Translations$meal$nutrition$zh_CN.internal(_root);
	@override late final Translations$meal$deleteConfirmation$zh_CN deleteConfirmation = Translations$meal$deleteConfirmation$zh_CN.internal(_root);
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
	@override late final Translations$meal$questionFlow$zh_CN questionFlow = Translations$meal$questionFlow$zh_CN.internal(_root);
	@override late final Translations$meal$analysis$zh_CN analysis = Translations$meal$analysis$zh_CN.internal(_root);
	@override late final Translations$meal$localInference$zh_CN localInference = Translations$meal$localInference$zh_CN.internal(_root);
	@override late final Translations$meal$feedback$zh_CN feedback = Translations$meal$feedback$zh_CN.internal(_root);
}

// Path: favorites
class Translations$favorites$zh_CN extends Translations$favorites$en {
	Translations$favorites$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
	@override late final Translations$favorites$sortOptions$zh_CN sortOptions = Translations$favorites$sortOptions$zh_CN.internal(_root);
}

// Path: profile
class Translations$profile$zh_CN extends Translations$profile$en {
	Translations$profile$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '个人资料';
	@override String get noProfileData => '未找到个人资料数据';
	@override String get yourProfile => '你的个人资料';
	@override String get viewAndManage => '查看并管理你的健康信息';
	@override late final Translations$profile$sections$zh_CN sections = Translations$profile$sections$zh_CN.internal(_root);
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
	@override late final Translations$profile$calculatedValues$zh_CN calculatedValues = Translations$profile$calculatedValues$zh_CN.internal(_root);
}

// Path: healthScore
class Translations$healthScore$zh_CN extends Translations$healthScore$en {
	Translations$healthScore$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$editProfile$zh_CN extends Translations$editProfile$en {
	Translations$editProfile$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '编辑个人资料';
	@override late final Translations$editProfile$sections$zh_CN sections = Translations$editProfile$sections$zh_CN.internal(_root);
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
	@override late final Translations$editProfile$genders$zh_CN genders = Translations$editProfile$genders$zh_CN.internal(_root);
	@override late final Translations$editProfile$weightGoals$zh_CN weightGoals = Translations$editProfile$weightGoals$zh_CN.internal(_root);
	@override late final Translations$editProfile$activityLevels$zh_CN activityLevels = Translations$editProfile$activityLevels$zh_CN.internal(_root);
}

// Path: settings
class Translations$settings$zh_CN extends Translations$settings$en {
	Translations$settings$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '设置';
	@override late final Translations$settings$sections$zh_CN sections = Translations$settings$sections$zh_CN.internal(_root);
	@override late final Translations$settings$editProfile$zh_CN editProfile = Translations$settings$editProfile$zh_CN.internal(_root);
	@override late final Translations$settings$language$zh_CN language = Translations$settings$language$zh_CN.internal(_root);
	@override late final Translations$settings$heightUnit$zh_CN heightUnit = Translations$settings$heightUnit$zh_CN.internal(_root);
	@override late final Translations$settings$weightUnit$zh_CN weightUnit = Translations$settings$weightUnit$zh_CN.internal(_root);
	@override late final Translations$settings$mealReminders$zh_CN mealReminders = Translations$settings$mealReminders$zh_CN.internal(_root);
	@override late final Translations$settings$localInference$zh_CN localInference = Translations$settings$localInference$zh_CN.internal(_root);
	@override late final Translations$settings$theme$zh_CN theme = Translations$settings$theme$zh_CN.internal(_root);
	@override late final Translations$settings$sendFeedback$zh_CN sendFeedback = Translations$settings$sendFeedback$zh_CN.internal(_root);
	@override late final Translations$settings$exportMealHistory$zh_CN exportMealHistory = Translations$settings$exportMealHistory$zh_CN.internal(_root);
	@override late final Translations$settings$clearAllData$zh_CN clearAllData = Translations$settings$clearAllData$zh_CN.internal(_root);
	@override late final Translations$settings$debugOptions$zh_CN debugOptions = Translations$settings$debugOptions$zh_CN.internal(_root);
	@override String get developerModeEnabled => '开发者模式已启用！';
	@override late final Translations$settings$healthConnect$zh_CN healthConnect = Translations$settings$healthConnect$zh_CN.internal(_root);
	@override late final Translations$settings$about$zh_CN about = Translations$settings$about$zh_CN.internal(_root);
	@override late final Translations$settings$appInfo$zh_CN appInfo = Translations$settings$appInfo$zh_CN.internal(_root);
}

// Path: reminders
class Translations$reminders$zh_CN extends Translations$reminders$en {
	Translations$reminders$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$notifications$zh_CN extends Translations$notifications$en {
	Translations$notifications$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final Translations$notifications$breakfast$zh_CN breakfast = Translations$notifications$breakfast$zh_CN.internal(_root);
	@override late final Translations$notifications$lunch$zh_CN lunch = Translations$notifications$lunch$zh_CN.internal(_root);
	@override late final Translations$notifications$dinner$zh_CN dinner = Translations$notifications$dinner$zh_CN.internal(_root);
	@override late final Translations$notifications$snack$zh_CN snack = Translations$notifications$snack$zh_CN.internal(_root);
	@override late final Translations$notifications$test$zh_CN test = Translations$notifications$test$zh_CN.internal(_root);
}

// Path: login
class Translations$login$zh_CN extends Translations$login$en {
	Translations$login$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '登录';
	@override String get signInWithGoogle => '使用 Google 登录';
	@override String get signInFailed => 'Google 登录失败或已取消。';
}

// Path: disclaimer
class Translations$disclaimer$zh_CN extends Translations$disclaimer$en {
	Translations$disclaimer$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => '请注意';
	@override late final Translations$disclaimer$snap$zh_CN snap = Translations$disclaimer$snap$zh_CN.internal(_root);
	@override late final Translations$disclaimer$weightEstimate$zh_CN weightEstimate = Translations$disclaimer$weightEstimate$zh_CN.internal(_root);
	@override late final Translations$disclaimer$healthMetrics$zh_CN healthMetrics = Translations$disclaimer$healthMetrics$zh_CN.internal(_root);
	@override late final Translations$disclaimer$calorieExpenditure$zh_CN calorieExpenditure = Translations$disclaimer$calorieExpenditure$zh_CN.internal(_root);
}

// Path: localNutritionPhase4
class Translations$localNutritionPhase4$zh_CN extends Translations$localNutritionPhase4$en {
	Translations$localNutritionPhase4$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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

// Path: watch
class Translations$watch$zh_CN extends Translations$watch$en {
	Translations$watch$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify 手表';
	@override late final Translations$watch$common$zh_CN common = Translations$watch$common$zh_CN.internal(_root);
	@override late final Translations$watch$nutrition$zh_CN nutrition = Translations$watch$nutrition$zh_CN.internal(_root);
	@override late final Translations$watch$sync$zh_CN sync = Translations$watch$sync$zh_CN.internal(_root);
	@override late final Translations$watch$home$zh_CN home = Translations$watch$home$zh_CN.internal(_root);
	@override late final Translations$watch$history$zh_CN history = Translations$watch$history$zh_CN.internal(_root);
	@override late final Translations$watch$favorites$zh_CN favorites = Translations$watch$favorites$zh_CN.internal(_root);
	@override late final Translations$watch$meal$zh_CN meal = Translations$watch$meal$zh_CN.internal(_root);
	@override late final Translations$watch$voice$zh_CN voice = Translations$watch$voice$zh_CN.internal(_root);
	@override late final Translations$watch$result$zh_CN result = Translations$watch$result$zh_CN.internal(_root);
}

// Path: common
class Translations$common$zh_CN extends Translations$common$en {
	Translations$common$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get close => '关闭';
	@override String get kContinue => '继续';
}

// Path: feedbackRating
class Translations$feedbackRating$zh_CN extends Translations$feedbackRating$en {
	Translations$feedbackRating$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$health$zh_CN extends Translations$health$en {
	Translations$health$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => '无法同步到 Health Connect';
	@override String get mealSynced => '餐食已与 Health Connect 同步';
}

// Path: onboarding.features
class Translations$onboarding$features$zh_CN extends Translations$onboarding$features$en {
	Translations$onboarding$features$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final Translations$onboarding$features$foodRecognition$zh_CN foodRecognition = Translations$onboarding$features$foodRecognition$zh_CN.internal(_root);
	@override late final Translations$onboarding$features$aiAnalysis$zh_CN aiAnalysis = Translations$onboarding$features$aiAnalysis$zh_CN.internal(_root);
	@override late final Translations$onboarding$features$healthIntegration$zh_CN healthIntegration = Translations$onboarding$features$healthIntegration$zh_CN.internal(_root);
}

// Path: onboarding.gender
class Translations$onboarding$gender$zh_CN extends Translations$onboarding$gender$en {
	Translations$onboarding$gender$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的性别是？';
	@override String get description => '性别有助于我们更准确地计算你的基础代谢率 (BMR)。';
	@override String get next => '下一步';
}

// Path: onboarding.height
class Translations$onboarding$height$zh_CN extends Translations$onboarding$height$en {
	Translations$onboarding$height$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的身高是多少？';
	@override String get description => '你的身高有助于我们准确计算 BMI 和能量需求。';
	@override String get metric => '公制';
	@override String get imperial => '英制';
	@override String get next => '下一步';
}

// Path: onboarding.weight
class Translations$onboarding$weight$zh_CN extends Translations$onboarding$weight$en {
	Translations$onboarding$weight$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$onboarding$age$zh_CN extends Translations$onboarding$age$en {
	Translations$onboarding$age$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的出生日期是？';
	@override String get description => '你的年龄有助于我们准确计算所需热量。';
	@override String get next => '下一步';
}

// Path: onboarding.bmiScale
class Translations$onboarding$bmiScale$zh_CN extends Translations$onboarding$bmiScale$en {
	Translations$onboarding$bmiScale$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get underweight => '偏低';
	@override String get healthy => '健康';
	@override String get overweight => '偏重';
	@override String get obese => '肥胖';
	@override late final Translations$onboarding$bmiScale$categories$zh_CN categories = Translations$onboarding$bmiScale$categories$zh_CN.internal(_root);
	@override late final Translations$onboarding$bmiScale$messages$zh_CN messages = Translations$onboarding$bmiScale$messages$zh_CN.internal(_root);
}

// Path: onboarding.weightGoal
class Translations$onboarding$weightGoal$zh_CN extends Translations$onboarding$weightGoal$en {
	Translations$onboarding$weightGoal$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的目标是什么？';
	@override String get description => '选择最符合你想实现目标的选项';
}

// Path: onboarding.activityLevel
class Translations$onboarding$activityLevel$zh_CN extends Translations$onboarding$activityLevel$en {
	Translations$onboarding$activityLevel$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的日常活动量如何？';
	@override String get description => '这有助于我们更准确地计算你的每日热量需求';
}

// Path: onboarding.healthConnect
class Translations$onboarding$healthConnect$zh_CN extends Translations$onboarding$healthConnect$en {
	Translations$onboarding$healthConnect$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '连接 Health Connect';
	@override String get description => '同步你的健康数据以获得更佳洞察与自动卡路里追踪';
	@override String get overviewDescription => '将已消耗的卡路里计入每日目标，并可选择与 Health Connect 共享记录的餐食。';
	@override late final Translations$onboarding$healthConnect$automaticTracking$zh_CN automaticTracking = Translations$onboarding$healthConnect$automaticTracking$zh_CN.internal(_root);
	@override late final Translations$onboarding$healthConnect$caloriesBurned$zh_CN caloriesBurned = Translations$onboarding$healthConnect$caloriesBurned$zh_CN.internal(_root);
	@override late final Translations$onboarding$healthConnect$progressInsights$zh_CN progressInsights = Translations$onboarding$healthConnect$progressInsights$zh_CN.internal(_root);
	@override late final Translations$onboarding$healthConnect$shareLoggedMeals$zh_CN shareLoggedMeals = Translations$onboarding$healthConnect$shareLoggedMeals$zh_CN.internal(_root);
	@override late final Translations$onboarding$healthConnect$seamlessIntegration$zh_CN seamlessIntegration = Translations$onboarding$healthConnect$seamlessIntegration$zh_CN.internal(_root);
	@override late final Translations$onboarding$healthConnect$userControl$zh_CN userControl = Translations$onboarding$healthConnect$userControl$zh_CN.internal(_root);
	@override String get connected => '已连接 Health Connect';
	@override String get notConnected => '未连接 Health Connect';
	@override String get setup => '设置 Health Connect';
	@override String get skipForNow => '暂不连接';
	@override String get statusConnected => 'Health Connect 已连接。';
	@override String get statusSuccess => '已成功连接 Health Connect！';
	@override String get statusNotConnected => '选择要启用的 Health Connect 功能。';
	@override String get statusPartial => 'Health Connect 已部分连接。请启用剩余权限以使用两项功能。';
	@override String get statusProviderUpdateRequired => '安装或更新 Health Connect 以继续。';
	@override String get statusUnavailable => '此设备不支持 Health Connect。';
	@override String get installOrUpdate => '安装或更新';
	@override String get manageAccess => '管理访问权限';
	@override String statusPermissionDenied({required Object appLabel}) => '权限被拒绝。请在手机设置中为 ${appLabel} 启用 Health Connect 权限。';
	@override String statusError({required Object error}) => '设置 Health Connect 时出错：${error}';
}

// Path: onboarding.reinforcement
class Translations$onboarding$reinforcement$zh_CN extends Translations$onboarding$reinforcement$en {
	Translations$onboarding$reinforcement$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final Translations$onboarding$reinforcement$trackingSuccess$zh_CN trackingSuccess = Translations$onboarding$reinforcement$trackingSuccess$zh_CN.internal(_root);
	@override late final Translations$onboarding$reinforcement$healthProfile$zh_CN healthProfile = Translations$onboarding$reinforcement$healthProfile$zh_CN.internal(_root);
	@override late final Translations$onboarding$reinforcement$goalLifestyle$zh_CN goalLifestyle = Translations$onboarding$reinforcement$goalLifestyle$zh_CN.internal(_root);
}

// Path: home.aiSummary
class Translations$home$aiSummary$zh_CN extends Translations$home$aiSummary$en {
	Translations$home$aiSummary$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$home$dailyGoal$zh_CN extends Translations$home$dailyGoal$en {
	Translations$home$dailyGoal$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$home$dailySummary$zh_CN extends Translations$home$dailySummary$en {
	Translations$home$dailySummary$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$home$intakeProgress$zh_CN extends Translations$home$intakeProgress$en {
	Translations$home$intakeProgress$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '今日宏量分配';
	@override String get target => '目标';
	@override String get current => '当前';
}

// Path: home.intakeHistory
class Translations$home$intakeHistory$zh_CN extends Translations$home$intakeHistory$en {
	Translations$home$intakeHistory$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '7 天宏量历史';
	@override String get trendTitle => '今日趋势';
	@override String peakHour({required Object hour}) => '峰值：${hour}:00';
	@override String get noHistoryYet => '暂无历史';
	@override String get startLogging => '开始记录餐食以在此查看你的\n7 天宏量趋势';
}

// Path: home.mealLog
class Translations$home$mealLog$zh_CN extends Translations$home$mealLog$en {
	Translations$home$mealLog$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '已记录的餐食';
	@override String get emptyMessage => '拍下你最近的一餐照片以在此记录。';
	@override String get noMealsToday => '今日暂无记录的餐食';
	@override String get seeAllMeals => '查看所有餐食';
}

// Path: home.mealDescription
class Translations$home$mealDescription$zh_CN extends Translations$home$mealDescription$en {
	Translations$home$mealDescription$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 快速添加';
	@override String get description => '描述你的餐食，让 AI 处理细节。';
	@override String get hint => '例如：早餐我吃了一大碗燕麦粥，切了一根香蕉，加入一勺乳清蛋白……';
	@override String get analyzeMeal => '分析餐食';
}

// Path: home.favoriteMeals
class Translations$home$favoriteMeals$zh_CN extends Translations$home$favoriteMeals$en {
	Translations$home$favoriteMeals$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$home$mealSnap$zh_CN extends Translations$home$mealSnap$en {
	Translations$home$mealSnap$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$home$connectHealth$zh_CN extends Translations$home$connectHealth$en {
	Translations$home$connectHealth$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '与 Health Connect 同步';
	@override String get description => '将你的营养数据同步到 Health Connect';
	@override String get install => '安装';
	@override String get dataUseDescription => '将已消耗的卡路里计入目标，并共享记录的餐食';
	@override String get installOrUpdate => '安装或更新';
	@override String get connect => '连接';
}

// Path: meal.nutrition
class Translations$meal$nutrition$zh_CN extends Translations$meal$nutrition$en {
	Translations$meal$nutrition$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get calories => '卡路里';
	@override String get carbs => '碳水 (g)';
	@override String get protein => '蛋白质 (g)';
	@override String get fat => '脂肪 (g)';
	@override String get fiber => '纤维 (g)';
}

// Path: meal.deleteConfirmation
class Translations$meal$deleteConfirmation$zh_CN extends Translations$meal$deleteConfirmation$en {
	Translations$meal$deleteConfirmation$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '删除餐食';
	@override String get message => '确定要删除此餐食记录吗？';
	@override String get cancel => '取消';
	@override String get delete => '删除';
}

// Path: meal.questionFlow
class Translations$meal$questionFlow$zh_CN extends Translations$meal$questionFlow$en {
	Translations$meal$questionFlow$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => '问题 ${current} / ${total}';
	@override String get noQuestionsAvailable => '暂无可用问题';
	@override String get next => '下一步';
	@override String get continueLabel => '继续';
}

// Path: meal.analysis
class Translations$meal$analysis$zh_CN extends Translations$meal$analysis$en {
	Translations$meal$analysis$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$meal$localInference$zh_CN extends Translations$meal$localInference$en {
	Translations$meal$localInference$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$meal$feedback$zh_CN extends Translations$meal$feedback$en {
	Translations$meal$feedback$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$favorites$sortOptions$zh_CN extends Translations$favorites$sortOptions$en {
	Translations$favorites$sortOptions$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get recent => '最近';
	@override String get calories => '卡路里';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class Translations$profile$sections$zh_CN extends Translations$profile$sections$en {
	Translations$profile$sections$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get profile => '个人资料';
	@override String get basicInformation => '基础信息';
	@override String get goalsAndActivity => '目标与活动';
	@override String get calculatedValues => '计算值';
}

// Path: profile.calculatedValues
class Translations$profile$calculatedValues$zh_CN extends Translations$profile$calculatedValues$en {
	Translations$profile$calculatedValues$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => '每日目标';
	@override String get calPerDay => '卡/天';
	@override String get notAvailable => '无可用数据';
}

// Path: editProfile.sections
class Translations$editProfile$sections$zh_CN extends Translations$editProfile$sections$en {
	Translations$editProfile$sections$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => '个人信息';
	@override String get physicalMeasurements => '身体测量';
	@override String get goalsAndActivity => '目标与活动';
}

// Path: editProfile.genders
class Translations$editProfile$genders$zh_CN extends Translations$editProfile$genders$en {
	Translations$editProfile$genders$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get male => '男性';
	@override String get female => '女性';
	@override String get other => '其他';
}

// Path: editProfile.weightGoals
class Translations$editProfile$weightGoals$zh_CN extends Translations$editProfile$weightGoals$en {
	Translations$editProfile$weightGoals$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final Translations$editProfile$weightGoals$loseWeight$zh_CN loseWeight = Translations$editProfile$weightGoals$loseWeight$zh_CN.internal(_root);
	@override late final Translations$editProfile$weightGoals$maintainWeight$zh_CN maintainWeight = Translations$editProfile$weightGoals$maintainWeight$zh_CN.internal(_root);
	@override late final Translations$editProfile$weightGoals$gainWeight$zh_CN gainWeight = Translations$editProfile$weightGoals$gainWeight$zh_CN.internal(_root);
}

// Path: editProfile.activityLevels
class Translations$editProfile$activityLevels$zh_CN extends Translations$editProfile$activityLevels$en {
	Translations$editProfile$activityLevels$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final Translations$editProfile$activityLevels$sedentary$zh_CN sedentary = Translations$editProfile$activityLevels$sedentary$zh_CN.internal(_root);
	@override late final Translations$editProfile$activityLevels$lightlyActive$zh_CN lightlyActive = Translations$editProfile$activityLevels$lightlyActive$zh_CN.internal(_root);
	@override late final Translations$editProfile$activityLevels$moderatelyActive$zh_CN moderatelyActive = Translations$editProfile$activityLevels$moderatelyActive$zh_CN.internal(_root);
	@override late final Translations$editProfile$activityLevels$veryActive$zh_CN veryActive = Translations$editProfile$activityLevels$veryActive$zh_CN.internal(_root);
	@override late final Translations$editProfile$activityLevels$extremelyActive$zh_CN extremelyActive = Translations$editProfile$activityLevels$extremelyActive$zh_CN.internal(_root);
}

// Path: settings.sections
class Translations$settings$sections$zh_CN extends Translations$settings$sections$en {
	Translations$settings$sections$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$settings$editProfile$zh_CN extends Translations$settings$editProfile$en {
	Translations$settings$editProfile$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '编辑个人资料';
	@override String get subtitle => '更新你的个人信息';
}

// Path: settings.language
class Translations$settings$language$zh_CN extends Translations$settings$language$en {
	Translations$settings$language$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '语言';
	@override String get subtitle => '选择你偏好的语言';
	@override String get searchHint => '搜索语言...';
	@override String get noResults => '未找到结果';
}

// Path: settings.heightUnit
class Translations$settings$heightUnit$zh_CN extends Translations$settings$heightUnit$en {
	Translations$settings$heightUnit$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '身高单位';
}

// Path: settings.weightUnit
class Translations$settings$weightUnit$zh_CN extends Translations$settings$weightUnit$en {
	Translations$settings$weightUnit$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '体重单位';
}

// Path: settings.mealReminders
class Translations$settings$mealReminders$zh_CN extends Translations$settings$mealReminders$en {
	Translations$settings$mealReminders$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '餐食提醒';
	@override String get subtitle => '用及时提醒帮助你保持记录';
}

// Path: settings.localInference
class Translations$settings$localInference$zh_CN extends Translations$settings$localInference$en {
	Translations$settings$localInference$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$settings$theme$zh_CN extends Translations$settings$theme$en {
	Translations$settings$theme$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '主题';
	@override String get light => '浅色';
	@override String get dark => '深色';
	@override String get system => '跟随系统';
}

// Path: settings.sendFeedback
class Translations$settings$sendFeedback$zh_CN extends Translations$settings$sendFeedback$en {
	Translations$settings$sendFeedback$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$settings$exportMealHistory$zh_CN extends Translations$settings$exportMealHistory$en {
	Translations$settings$exportMealHistory$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '导出餐食历史';
	@override String get subtitle => '共享已记录餐食的 CSV';
	@override String get shareText => '你的 Calorify 餐食历史导出';
	@override String failed({required Object error}) => '无法导出餐食历史：${error}';
}

// Path: settings.clearAllData
class Translations$settings$clearAllData$zh_CN extends Translations$settings$clearAllData$en {
	Translations$settings$clearAllData$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '清除所有数据';
	@override String get subtitle => '不可逆地删除你的全部信息';
	@override String get localOnlySubtitle => '删除此设备上存储的 Calorify 数据';
	@override String get confirmationTitle => '清除所有数据？';
	@override String get confirmationMessage => '此操作不可撤销。你所有的记录、收藏和个人设置将被永久删除。';
	@override String get localOnlyConfirmationMessage => '这将从此设备永久删除记录的餐食、收藏和个人资料设置。已共享到 Health Connect 的餐食和 Health Connect 访问权限需在“设置 > Health Connect”中单独管理。';
	@override String get cancel => '取消';
	@override String get clearEverything => '清除全部';
}

// Path: settings.debugOptions
class Translations$settings$debugOptions$zh_CN extends Translations$settings$debugOptions$en {
	Translations$settings$debugOptions$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '调试选项';
}

// Path: settings.healthConnect
class Translations$settings$healthConnect$zh_CN extends Translations$settings$healthConnect$en {
	Translations$settings$healthConnect$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => '查看并管理权限';
	@override late final Translations$settings$healthConnect$unavailable$zh_CN unavailable = Translations$settings$healthConnect$unavailable$zh_CN.internal(_root);
	@override late final Translations$settings$healthConnect$updateRequired$zh_CN updateRequired = Translations$settings$healthConnect$updateRequired$zh_CN.internal(_root);
	@override late final Translations$settings$healthConnect$permissions$zh_CN permissions = Translations$settings$healthConnect$permissions$zh_CN.internal(_root);
	@override String get managePermissions => '管理权限';
	@override String get openSettings => '打开 Health Connect 设置';
	@override String get disconnect => '断开 Health Connect';
	@override String get disconnectConfirmationTitle => '断开 Health Connect？';
	@override String get disconnectConfirmationMessage => 'Calorify 将失去 Health Connect 访问权限。已写入其中的数据不会被删除。';
	@override String get disconnectConfirmationAction => '断开连接';
	@override String get deleteSyncedMeals => '从 Health Connect 删除 Calorify 餐食';
	@override String get deleteSyncedMealsConfirmationTitle => '删除已同步的餐食？';
	@override String get deleteSyncedMealsConfirmationMessage => '要从 Health Connect 删除此版本 Calorify 同步的餐食吗？本地餐食日志不会改变。较早的 Calorify 条目可能仍需通过 Health Connect 中的“管理数据”删除。';
	@override String get deleteSyncedMealsConfirmationAction => '删除已同步的餐食';
	@override String get deleteSyncedMealsSuccess => '已从 Health Connect 删除 Calorify 餐食。';
	@override String get deleteSyncedMealsFailed => '无法删除已同步的餐食，请重试。';
	@override String get connectionPartial => '部分 Health Connect 功能已启用。';
	@override String get connectionComplete => '两项 Health Connect 功能均已启用。';
	@override String get actionFailed => '无法打开 Health Connect，请重试。';
	@override String get requestPermissions => '请求权限';
	@override String get permissionRequestCancelledOrFailed => '权限请求已取消或失败。请重试或在 Health Connect 设置中手动授予权限。';
	@override String get permissionRequestFailed => '无法请求权限。请重试或在 Health Connect 设置中手动授予权限。';
	@override String get requestingPermissions => '正在请求…';
}

// Path: settings.about
class Translations$settings$about$zh_CN extends Translations$settings$about$en {
	Translations$settings$about$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '关于';
	@override String get tagline => '快速、免费且以隐私为先的卡路里感知工具';
	@override late final Translations$settings$about$ourStory$zh_CN ourStory = Translations$settings$about$ourStory$zh_CN.internal(_root);
	@override late final Translations$settings$about$privacy$zh_CN privacy = Translations$settings$about$privacy$zh_CN.internal(_root);
	@override late final Translations$settings$about$developer$zh_CN developer = Translations$settings$about$developer$zh_CN.internal(_root);
	@override late final Translations$settings$about$feedback$zh_CN feedback = Translations$settings$about$feedback$zh_CN.internal(_root);
}

// Path: settings.appInfo
class Translations$settings$appInfo$zh_CN extends Translations$settings$appInfo$en {
	Translations$settings$appInfo$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify 版本 ${version}';
	@override String build({required Object buildNumber}) => '构建 ${buildNumber}';
}

// Path: notifications.breakfast
class Translations$notifications$breakfast$zh_CN extends Translations$notifications$breakfast$en {
	Translations$notifications$breakfast$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '早餐时间！ 🍳';
	@override String get body => '别忘了记录你的早餐';
}

// Path: notifications.lunch
class Translations$notifications$lunch$zh_CN extends Translations$notifications$lunch$en {
	Translations$notifications$lunch$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '午餐时间！ 🥗';
	@override String get body => '是时候记录午餐了';
}

// Path: notifications.dinner
class Translations$notifications$dinner$zh_CN extends Translations$notifications$dinner$en {
	Translations$notifications$dinner$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '晚餐时间！ 🍽️';
	@override String get body => '别忘了记录你的晚餐';
}

// Path: notifications.snack
class Translations$notifications$snack$zh_CN extends Translations$notifications$snack$en {
	Translations$notifications$snack$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '加餐时间！ 🍎';
	@override String get body => '来点健康的加餐吧';
}

// Path: notifications.test
class Translations$notifications$test$zh_CN extends Translations$notifications$test$en {
	Translations$notifications$test$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '测试通知';
}

// Path: disclaimer.snap
class Translations$disclaimer$snap$zh_CN extends Translations$disclaimer$snap$en {
	Translations$disclaimer$snap$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} 提供的是估算的营养信息。准确性取决于你的输入与食物差异。作为参考而非权威来源。如需个性化饮食建议，请咨询专业人士。';
	@override late final Translations$disclaimer$snap$portionSize$zh_CN portionSize = Translations$disclaimer$snap$portionSize$zh_CN.internal(_root);
	@override late final Translations$disclaimer$snap$preparationMethods$zh_CN preparationMethods = Translations$disclaimer$snap$preparationMethods$zh_CN.internal(_root);
	@override late final Translations$disclaimer$snap$ingredients$zh_CN ingredients = Translations$disclaimer$snap$ingredients$zh_CN.internal(_root);
	@override late final Translations$disclaimer$snap$databaseLimitations$zh_CN databaseLimitations = Translations$disclaimer$snap$databaseLimitations$zh_CN.internal(_root);
}

// Path: disclaimer.weightEstimate
class Translations$disclaimer$weightEstimate$zh_CN extends Translations$disclaimer$weightEstimate$en {
	Translations$disclaimer$weightEstimate$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '关于体重估算';
	@override String get description => '预测的体重变化是基于简单的热量摄入与消耗模型的理论估算。仅用于激励参考，而非实际体重预测。';
	@override late final Translations$disclaimer$weightEstimate$calorieAccuracy$zh_CN calorieAccuracy = Translations$disclaimer$weightEstimate$calorieAccuracy$zh_CN.internal(_root);
	@override late final Translations$disclaimer$weightEstimate$biologicalFactors$zh_CN biologicalFactors = Translations$disclaimer$weightEstimate$biologicalFactors$zh_CN.internal(_root);
	@override late final Translations$disclaimer$weightEstimate$waterWeight$zh_CN waterWeight = Translations$disclaimer$weightEstimate$waterWeight$zh_CN.internal(_root);
	@override late final Translations$disclaimer$weightEstimate$professionalGuidance$zh_CN professionalGuidance = Translations$disclaimer$weightEstimate$professionalGuidance$zh_CN.internal(_root);
}

// Path: disclaimer.healthMetrics
class Translations$disclaimer$healthMetrics$zh_CN extends Translations$disclaimer$healthMetrics$en {
	Translations$disclaimer$healthMetrics$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get description => '这些指标帮助你了解身体的能量需求并指导营养目标。';
	@override late final Translations$disclaimer$healthMetrics$bmr$zh_CN bmr = Translations$disclaimer$healthMetrics$bmr$zh_CN.internal(_root);
	@override late final Translations$disclaimer$healthMetrics$tdee$zh_CN tdee = Translations$disclaimer$healthMetrics$tdee$zh_CN.internal(_root);
	@override late final Translations$disclaimer$healthMetrics$dailyGoal$zh_CN dailyGoal = Translations$disclaimer$healthMetrics$dailyGoal$zh_CN.internal(_root);
}

// Path: disclaimer.calorieExpenditure
class Translations$disclaimer$calorieExpenditure$zh_CN extends Translations$disclaimer$calorieExpenditure$en {
	Translations$disclaimer$calorieExpenditure$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '卡路里消耗估算';
	@override String get description => '当 Health Connect 数据不可用时，我们会使用你的基础代谢率 (BMR) 和活动水平 (TDEE) 来估算今天已消耗的卡路里，并按当天已过的时间比例进行缩放。';
	@override late final Translations$disclaimer$calorieExpenditure$howCalculated$zh_CN howCalculated = Translations$disclaimer$calorieExpenditure$howCalculated$zh_CN.internal(_root);
	@override late final Translations$disclaimer$calorieExpenditure$professionalGuidance$zh_CN professionalGuidance = Translations$disclaimer$calorieExpenditure$professionalGuidance$zh_CN.internal(_root);
}

// Path: watch.common
class Translations$watch$common$zh_CN extends Translations$watch$common$en {
	Translations$watch$common$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get back => '返回';
	@override String get cancel => '取消';
	@override String get delete => '删除';
	@override String get retry => '重试';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class Translations$watch$nutrition$zh_CN extends Translations$watch$nutrition$en {
	Translations$watch$nutrition$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get nutrient => '营养成分';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} 克';
	@override String get protein => '蛋白质';
	@override String get carbs => '碳水';
	@override String get fat => '脂肪';
	@override String get fiber => '膳食纤维';
}

// Path: watch.sync
class Translations$watch$sync$zh_CN extends Translations$watch$sync$en {
	Translations$watch$sync$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => '与手机同步';
	@override String get syncing => '正在同步…';
	@override String get synced => '已同步';
	@override String get syncedJustNow => '刚刚同步';
	@override String syncedMinutesAgo({required Object minutes}) => '已同步，${minutes} 分钟前';
	@override String get failed => '同步失败';
	@override String get phoneDisconnected => '手机已断开连接';
	@override String get tapToSync => '点按以同步';
	@override String get refreshFailed => '无法刷新。请检查手机。';
	@override String get openPhone => '在手机上打开 Calorify，然后点按刷新。';
}

// Path: watch.home
class Translations$watch$home$zh_CN extends Translations$watch$home$en {
	Translations$watch$home$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get today => '今天';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '已摄入 ${consumed} 卡路里，目标为 ${goal}。${status}。';
	@override String overGoal({required Object calories}) => '${calories} 超出目标';
	@override String remaining({required Object calories}) => '${calories} 剩余';
	@override String left({required Object calories}) => '${calories} 剩余';
	@override String goal({required Object calories}) => '${calories} kcal 目标';
	@override String get logMeal => '记录餐食';
	@override String get todayMeals => '今日餐食';
	@override String todayMealsCount({required Object count}) => '今日餐食，${count}';
	@override String viewMore({required Object count}) => '查看更多 ${count} 项';
	@override String viewMoreSemantics({required Object count}) => '${count} 条餐食，点按查看全部';
	@override String get noMeals => '尚未记录餐食';
	@override String get noMealsSemantics => '今日尚未记录餐食';
	@override String get tapLog => '点按“记录”开始';
	@override String get removedFromQueue => '餐食已从离线队列中移除。';
	@override String get removedOffline => '餐食已离线移除。手机重新连接后会同步。';
	@override String get deleteFailed => '无法删除餐食';
}

// Path: watch.history
class Translations$watch$history$zh_CN extends Translations$watch$history$en {
	Translations$watch$history$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '今日餐食';
	@override String get refresh => '刷新餐食';
	@override String get loadFailed => '无法加载餐食';
	@override String get syncFailed => '无法同步';
	@override String get emptyTitle => '尚无餐食记录';
	@override String get emptyMessage => '在主页记录一餐即可在此查看。';
}

// Path: watch.favorites
class Translations$watch$favorites$zh_CN extends Translations$watch$favorites$en {
	Translations$watch$favorites$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '收藏';
	@override String get refresh => '刷新收藏';
	@override String get loadFailed => '无法加载收藏';
	@override String get syncFailed => '无法同步';
	@override String get emptyTitle => '尚无收藏';
	@override String get emptyMessage => '在手机应用中为餐食标星，便可在此一键记录。';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}，${calories} 卡路里。点按以记录。';
	@override String logged({required Object name}) => '${name} 已记录！';
	@override String savedOffline({required Object name}) => '${name} 已离线保存。手机重新连接后会同步。';
	@override String get saveFailed => '无法保存餐食。请重试。';
	@override String get log => '记录';
}

// Path: watch.meal
class Translations$watch$meal$zh_CN extends Translations$watch$meal$en {
	Translations$watch$meal$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}，${calories} 卡路里，于 ${time} 记录。';
	@override String get longPressDelete => '长按以删除。';
	@override String get deleteTitle => '删除该餐食？';
}

// Path: watch.voice
class Translations$watch$voice$zh_CN extends Translations$watch$voice$en {
	Translations$watch$voice$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '语音记录餐食';
	@override String get processing => '正在识别您的餐食…';
	@override String get processingDescription => '估算份量和营养';
	@override String get listening => '正在聆听';
	@override String secondsLeft({required Object seconds}) => '${seconds}秒';
	@override String get stop => '停止录音';
	@override String get start => '点按开始录音';
	@override String get starting => '正在启动麦克风…';
	@override String get prompt => '点按后描述您的餐食';
	@override String get tapToRetry => '点按重试';
	@override String get example => '例如：“2 rotis with dal”';
	@override String get unavailable => '语音输入不可用。请在手表设置中检查麦克风权限。';
	@override String get didNotStart => '麦克风未能启动。点按重试。';
	@override String get startFailed => '无法开始录音。请检查麦克风权限。';
	@override String get allowMicrophone => '允许麦克风访问以使用语音记录餐食。';
	@override String get needsConnection => '语音识别需要网络连接。点按重试。';
	@override String get microphoneUnavailable => '麦克风不可用。点按重试。';
	@override String get microphoneBusy => '麦克风正被占用。请稍候再试。';
	@override String get languageUnsupported => '语音输入不支持手表语言。';
	@override String get temporarilyBusy => '语音输入暂时忙碌。请稍候再试。';
	@override String get notRecognized => '没听清。点按麦克风再试一次。';
	@override String get noSpeech => '未检测到语音。点按麦克风再试。';
	@override String get analysisFailed => '分析失败。请重试。';
	@override String get mealNotIdentified => '无法识别该餐食。请尝试换种描述方式。';
}

// Path: watch.result
class Translations$watch$result$zh_CN extends Translations$watch$result$en {
	Translations$watch$result$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '餐食详情';
	@override String get savedOffline => '已离线保存';
	@override String get logged => '已记录！';
	@override String get mealFound => '已找到餐食';
	@override String get estimatedEnergy => '估算能量';
	@override String get logMeal => '记录餐食';
	@override String get logging => '正在记录…';
	@override String get logAnother => '再记录一餐';
	@override String get goingBack => '正在返回…';
	@override String get savedOfflineMessage => '餐食已离线保存。手机重新连接后会同步。';
	@override String get saveFailed => '无法保存餐食。请重试。';
}

// Path: onboarding.features.foodRecognition
class Translations$onboarding$features$foodRecognition$zh_CN extends Translations$onboarding$features$foodRecognition$en {
	Translations$onboarding$features$foodRecognition$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '智能食物识别';
	@override String get description => '拍张照片，让 AI 识别你的餐点';
}

// Path: onboarding.features.aiAnalysis
class Translations$onboarding$features$aiAnalysis$zh_CN extends Translations$onboarding$features$aiAnalysis$en {
	Translations$onboarding$features$aiAnalysis$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 分析';
	@override String get description => '从你的描述中即时获得营养信息';
}

// Path: onboarding.features.healthIntegration
class Translations$onboarding$features$healthIntegration$zh_CN extends Translations$onboarding$features$healthIntegration$en {
	Translations$onboarding$features$healthIntegration$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '健康数据集成';
	@override String get description => '连接 Health Connect 获取更全面的洞察';
}

// Path: onboarding.bmiScale.categories
class Translations$onboarding$bmiScale$categories$zh_CN extends Translations$onboarding$bmiScale$categories$en {
	Translations$onboarding$bmiScale$categories$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get underweight => '体重偏低';
	@override String get healthyWeight => '健康体重';
	@override String get overweight => '超重';
	@override String get obese => '肥胖';
}

// Path: onboarding.bmiScale.messages
class Translations$onboarding$bmiScale$messages$zh_CN extends Translations$onboarding$bmiScale$messages$en {
	Translations$onboarding$bmiScale$messages$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get underweight => '我们可以帮助你制定健康计划，通过富含营养的餐食达到更平衡的体重。';
	@override String get healthy => '做得很好！你处于健康范围内。我们会帮助你维持活力与能量。';
	@override String overweight({required Object appLabel}) => '${appLabel} 会用 AI 化简你的过程，帮助你舒适地接近目标体重。';
	@override String get obese => '我们会为你提供个性化支持和可持续的健康策略，陪伴你的目标实现。';
}

// Path: onboarding.healthConnect.automaticTracking
class Translations$onboarding$healthConnect$automaticTracking$zh_CN extends Translations$onboarding$healthConnect$automaticTracking$en {
	Translations$onboarding$healthConnect$automaticTracking$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '自动卡路里追踪';
	@override String get description => '追踪来自你健身应用的消耗卡路里';
}

// Path: onboarding.healthConnect.caloriesBurned
class Translations$onboarding$healthConnect$caloriesBurned$zh_CN extends Translations$onboarding$healthConnect$caloriesBurned$en {
	Translations$onboarding$healthConnect$caloriesBurned$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '已消耗卡路里';
	@override String get description => '从 Health Connect 读取今天消耗的总卡路里';
}

// Path: onboarding.healthConnect.progressInsights
class Translations$onboarding$healthConnect$progressInsights$zh_CN extends Translations$onboarding$healthConnect$progressInsights$en {
	Translations$onboarding$healthConnect$progressInsights$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '进度洞察';
	@override String get description => '获取关于你健康趋势的详细洞察';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class Translations$onboarding$healthConnect$shareLoggedMeals$zh_CN extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	Translations$onboarding$healthConnect$shareLoggedMeals$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '共享记录的餐食';
	@override String get description => '将你在 Calorify 中记录的餐食写入 Health Connect';
}

// Path: onboarding.healthConnect.seamlessIntegration
class Translations$onboarding$healthConnect$seamlessIntegration$zh_CN extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	Translations$onboarding$healthConnect$seamlessIntegration$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '无缝集成';
	@override String get description => '从你喜欢的健康应用同步数据';
}

// Path: onboarding.healthConnect.userControl
class Translations$onboarding$healthConnect$userControl$zh_CN extends Translations$onboarding$healthConnect$userControl$en {
	Translations$onboarding$healthConnect$userControl$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '由你掌控';
	@override String get description => '选择任一权限，并随时更改访问设置';
}

// Path: onboarding.reinforcement.trackingSuccess
class Translations$onboarding$reinforcement$trackingSuccess$zh_CN extends Translations$onboarding$reinforcement$trackingSuccess$en {
	Translations$onboarding$reinforcement$trackingSuccess$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$onboarding$reinforcement$healthProfile$zh_CN extends Translations$onboarding$reinforcement$healthProfile$en {
	Translations$onboarding$reinforcement$healthProfile$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$onboarding$reinforcement$goalLifestyle$zh_CN extends Translations$onboarding$reinforcement$goalLifestyle$en {
	Translations$onboarding$reinforcement$goalLifestyle$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
class Translations$editProfile$weightGoals$loseWeight$zh_CN extends Translations$editProfile$weightGoals$loseWeight$en {
	Translations$editProfile$weightGoals$loseWeight$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '减重';
	@override String get description => '创建热量赤字以减轻体重';
}

// Path: editProfile.weightGoals.maintainWeight
class Translations$editProfile$weightGoals$maintainWeight$zh_CN extends Translations$editProfile$weightGoals$maintainWeight$en {
	Translations$editProfile$weightGoals$maintainWeight$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '维持体重';
	@override String get description => '维持你当前的体重';
}

// Path: editProfile.weightGoals.gainWeight
class Translations$editProfile$weightGoals$gainWeight$zh_CN extends Translations$editProfile$weightGoals$gainWeight$en {
	Translations$editProfile$weightGoals$gainWeight$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '增重';
	@override String get description => '创建热量盈余以增加体重';
}

// Path: editProfile.activityLevels.sedentary
class Translations$editProfile$activityLevels$sedentary$zh_CN extends Translations$editProfile$activityLevels$sedentary$en {
	Translations$editProfile$activityLevels$sedentary$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '久坐';
	@override String get description => '几乎不运动';
}

// Path: editProfile.activityLevels.lightlyActive
class Translations$editProfile$activityLevels$lightlyActive$zh_CN extends Translations$editProfile$activityLevels$lightlyActive$en {
	Translations$editProfile$activityLevels$lightlyActive$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '轻度活跃';
	@override String get description => '每周 1-3 天轻量运动';
}

// Path: editProfile.activityLevels.moderatelyActive
class Translations$editProfile$activityLevels$moderatelyActive$zh_CN extends Translations$editProfile$activityLevels$moderatelyActive$en {
	Translations$editProfile$activityLevels$moderatelyActive$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '中度活跃';
	@override String get description => '每周 3-5 天中等强度运动';
}

// Path: editProfile.activityLevels.veryActive
class Translations$editProfile$activityLevels$veryActive$zh_CN extends Translations$editProfile$activityLevels$veryActive$en {
	Translations$editProfile$activityLevels$veryActive$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '高度活跃';
	@override String get description => '每周 6-7 天高强度运动';
}

// Path: editProfile.activityLevels.extremelyActive
class Translations$editProfile$activityLevels$extremelyActive$zh_CN extends Translations$editProfile$activityLevels$extremelyActive$en {
	Translations$editProfile$activityLevels$extremelyActive$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get name => '极度活跃';
	@override String get description => '非常高强度运动或体力工作';
}

// Path: settings.healthConnect.unavailable
class Translations$settings$healthConnect$unavailable$zh_CN extends Translations$settings$healthConnect$unavailable$en {
	Translations$settings$healthConnect$unavailable$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect 不可用';
	@override String get description => '此设备上无法使用 Health Connect。请从 Play Store 安装 Health Connect（Android 9+）或更新到 Android 14+。';
	@override String get unsupportedDescription => '此设备不支持 Health Connect。';
}

// Path: settings.healthConnect.updateRequired
class Translations$settings$healthConnect$updateRequired$zh_CN extends Translations$settings$healthConnect$updateRequired$en {
	Translations$settings$healthConnect$updateRequired$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect 需要处理';
	@override String get description => '请先安装或更新 Health Connect，再管理访问权限。';
	@override String get action => '安装或更新';
}

// Path: settings.healthConnect.permissions
class Translations$settings$healthConnect$permissions$zh_CN extends Translations$settings$healthConnect$permissions$en {
	Translations$settings$healthConnect$permissions$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '权限';
	@override String get description => '为提供 Health Connect 集成功能，请求以下权限：';
	@override String get granted => '已授予';
	@override String get notGranted => '未授予';
	@override late final Translations$settings$healthConnect$permissions$caloriesBurned$zh_CN caloriesBurned = Translations$settings$healthConnect$permissions$caloriesBurned$zh_CN.internal(_root);
	@override late final Translations$settings$healthConnect$permissions$nutritionRead$zh_CN nutritionRead = Translations$settings$healthConnect$permissions$nutritionRead$zh_CN.internal(_root);
	@override late final Translations$settings$healthConnect$permissions$nutritionWrite$zh_CN nutritionWrite = Translations$settings$healthConnect$permissions$nutritionWrite$zh_CN.internal(_root);
}

// Path: settings.about.ourStory
class Translations$settings$about$ourStory$zh_CN extends Translations$settings$about$ourStory$en {
	Translations$settings$about$ourStory$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '我们的故事';
	@override String content({required Object appLabel}) => '${appLabel} 源自一个简单的挫败感：大多数卡路里追踪应用要么过于复杂、需要大量手动输入、收费高昂，要么在隐私上妥协。\n\n作为一名独立开发者，我想做一个更简单、更公平的应用——一个用 AI 减少操作负担、保持快速且免费使用，并尊重你的健康数据的应用。\n\n${appLabel} 是我希望存在的应用：无需账号、无追踪、无广告——只有清晰、实用的洞察和你的健康目标。';
}

// Path: settings.about.privacy
class Translations$settings$about$privacy$zh_CN extends Translations$settings$about$privacy$en {
	Translations$settings$about$privacy$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '你的隐私很重要';
	@override String get description => '隐私不是事后考虑——它是设计原则。以下是实践中的含义：';
	@override String get noAccounts => '无需账号\n立即使用应用。无注册、无身份绑定。';
	@override String noTracking({required Object appLabel}) => '无行为追踪\n${appLabel} 不会监控你的活动、构建使用档案或跨应用/网站跟踪你。';
	@override String analyticsDisclosure({required Object appLabel}) => '有限的分析与诊断\n${appLabel} 使用基本应用事件和崩溃诊断来提高可靠性。健康记录值不会用于广告或出售。';
	@override String noAds({required Object appLabel}) => '内建无广告\n${appLabel} 旨在无需广告或基于数据的变现运行。';
	@override String get noDataSelling => '不出售数据\n你的健康数据不会被出售或分享给第三方。';
	@override String get localStorage => '本地优先存储\n你的数据保留在你的设备上。';
	@override String get privacyPolicy => '隐私政策';
}

// Path: settings.about.developer
class Translations$settings$about$developer$zh_CN extends Translations$settings$about$developer$en {
	Translations$settings$about$developer$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '由独立开发者构建';
	@override String description({required Object appLabel}) => '${appLabel} 由一位独立开发者构建和维护，致力于创建平静、尊重隐私的健康软件。\n\n反馈由开发者本人阅读，并帮助塑造应用的方向。';
	@override String get website => '网站';
	@override String get email => '邮件';
}

// Path: settings.about.feedback
class Translations$settings$about$feedback$zh_CN extends Translations$settings$about$feedback$en {
	Translations$settings$about$feedback$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '喜欢 ${appLabel} 吗？';
	@override String description({required Object appLabel}) => '你的反馈能让 ${appLabel} 变得更好，惠及所有用户。';
	@override String get rateApp => '在 Play Store 评分';
	@override String get sendFeedback => '发送反馈';
}

// Path: disclaimer.snap.portionSize
class Translations$disclaimer$snap$portionSize$zh_CN extends Translations$disclaimer$snap$portionSize$en {
	Translations$disclaimer$snap$portionSize$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '分量大小';
	@override String get description => '估算的准确性在很大程度上依赖于你对分量大小的正确评估。';
}

// Path: disclaimer.snap.preparationMethods
class Translations$disclaimer$snap$preparationMethods$zh_CN extends Translations$disclaimer$snap$preparationMethods$en {
	Translations$disclaimer$snap$preparationMethods$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '烹饪方式';
	@override String description({required Object appLabel}) => '烹饪方法会显著改变食物的营养成分。${appLabel} 的估算可能无法始终考虑这些差异。';
}

// Path: disclaimer.snap.ingredients
class Translations$disclaimer$snap$ingredients$zh_CN extends Translations$disclaimer$snap$ingredients$en {
	Translations$disclaimer$snap$ingredients$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '食材';
	@override String get description => '复杂菜肴中存在许多隐含成分可能导致估算不够准确。';
}

// Path: disclaimer.snap.databaseLimitations
class Translations$disclaimer$snap$databaseLimitations$zh_CN extends Translations$disclaimer$snap$databaseLimitations$en {
	Translations$disclaimer$snap$databaseLimitations$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '数据库限制';
	@override String description({required Object appLabel}) => '${appLabel} 的食物数据库虽然很广泛，但可能不包含每一种食物或所有变体。';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class Translations$disclaimer$weightEstimate$calorieAccuracy$zh_CN extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	Translations$disclaimer$weightEstimate$calorieAccuracy$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '卡路里准确性';
	@override String get description => '此估算的准确性取决于你记录的卡路里摄入与消耗。记录不准确会导致预测不准确。';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class Translations$disclaimer$weightEstimate$biologicalFactors$zh_CN extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	Translations$disclaimer$weightEstimate$biologicalFactors$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '生理因素';
	@override String description({required Object appLabel}) => '实际的体重变化受代谢、激素、睡眠、压力、体液和其他个体差异影响，${appLabel} 无法测量这些因素。';
}

// Path: disclaimer.weightEstimate.waterWeight
class Translations$disclaimer$weightEstimate$waterWeight$zh_CN extends Translations$disclaimer$weightEstimate$waterWeight$en {
	Translations$disclaimer$weightEstimate$waterWeight$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '水重波动';
	@override String get description => '日常体重可能因水分滞留、消化和记录时机而显著波动。估算并不考虑这些日常变化。';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class Translations$disclaimer$weightEstimate$professionalGuidance$zh_CN extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	Translations$disclaimer$weightEstimate$professionalGuidance$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '专业指导';
	@override String get description => '不要用此估算做出医疗决策。有关个性化体重管理建议，请始终咨询医疗专业人士或注册营养师。';
}

// Path: disclaimer.healthMetrics.bmr
class Translations$disclaimer$healthMetrics$bmr$zh_CN extends Translations$disclaimer$healthMetrics$bmr$en {
	Translations$disclaimer$healthMetrics$bmr$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => '基础代谢率 (BMR) 是你静息时为维持呼吸、循环等基本功能而消耗的卡路里数。BMR 取决于你的年龄、性别、身高和体重。较高的 BMR 表示你在静息时自然消耗更多热量，通常与更多的肌肉、更年轻的年龄或男性有关。较低的 BMR 通常表示肌肉较少、年龄较大或女性。';
}

// Path: disclaimer.healthMetrics.tdee
class Translations$disclaimer$healthMetrics$tdee$zh_CN extends Translations$disclaimer$healthMetrics$tdee$en {
	Translations$disclaimer$healthMetrics$tdee$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => '每日总能量消耗 (TDEE) 是你每天消耗的总卡路里，包括 BMR 以及来自身体活动和日常活动的卡路里。TDEE 取决于你的 BMR 和活动水平。较高的 TDEE 表示你总体消耗更多卡路里，通常与更活跃或更高的 BMR 有关。较低的 TDEE 则表示日常活动较少或 BMR 较低。';
}

// Path: disclaimer.healthMetrics.dailyGoal
class Translations$disclaimer$healthMetrics$dailyGoal$zh_CN extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	Translations$disclaimer$healthMetrics$dailyGoal$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '每日目标';
	@override String get description => '每日目标是基于你的 TDEE 和体重目标推荐的每日摄入卡路里。为了减重，你需摄入低于 TDEE 的卡路里；维持体重则与 TDEE 相当；增重则摄入高于 TDEE 的卡路里。这有助于你以健康节奏实现期望的体重变化。';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class Translations$disclaimer$calorieExpenditure$howCalculated$zh_CN extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	Translations$disclaimer$calorieExpenditure$howCalculated$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '估算如何计算';
	@override String get description => '我们基于你的档案计算 TDEE，并乘以当天已过时间的比例 (小时 + 分钟) / 24，以估算目前为止已消耗的卡路里。';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class Translations$disclaimer$calorieExpenditure$professionalGuidance$zh_CN extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	Translations$disclaimer$calorieExpenditure$professionalGuidance$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '专业指导';
	@override String get description => '不要用此估算做出医疗决策。有关个性化体重管理建议，请始终咨询医疗专业人士或注册营养师。';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class Translations$settings$healthConnect$permissions$caloriesBurned$zh_CN extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	Translations$settings$healthConnect$permissions$caloriesBurned$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '读取总消耗卡路里';
	@override String get description => '允许应用读取来自 Health Connect 的总消耗卡路里。';
	@override String get usage => '该权限用于在应用中显示你的每日消耗卡路里，帮助你了解全天的总能量消耗。';
}

// Path: settings.healthConnect.permissions.nutritionRead
class Translations$settings$healthConnect$permissions$nutritionRead$zh_CN extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	Translations$settings$healthConnect$permissions$nutritionRead$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '读取营养数据';
	@override String get description => '允许应用读取来自 Health Connect 的营养数据。';
	@override String get usage => '此权限允许应用读取可能由其他连接到 Health Connect 的应用记录的营养信息，从而提供更全面的营养视图。';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class Translations$settings$healthConnect$permissions$nutritionWrite$zh_CN extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	Translations$settings$healthConnect$permissions$nutritionWrite$zh_CN.internal(TranslationsZhCn root) : this._root = root, super.internal(root);

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
			'onboarding.healthConnect.overviewDescription' => '将已消耗的卡路里计入每日目标，并可选择与 Health Connect 共享记录的餐食。',
			'onboarding.healthConnect.automaticTracking.title' => '自动卡路里追踪',
			'onboarding.healthConnect.automaticTracking.description' => '追踪来自你健身应用的消耗卡路里',
			'onboarding.healthConnect.caloriesBurned.title' => '已消耗卡路里',
			'onboarding.healthConnect.caloriesBurned.description' => '从 Health Connect 读取今天消耗的总卡路里',
			'onboarding.healthConnect.progressInsights.title' => '进度洞察',
			'onboarding.healthConnect.progressInsights.description' => '获取关于你健康趋势的详细洞察',
			'onboarding.healthConnect.shareLoggedMeals.title' => '共享记录的餐食',
			'onboarding.healthConnect.shareLoggedMeals.description' => '将你在 Calorify 中记录的餐食写入 Health Connect',
			'onboarding.healthConnect.seamlessIntegration.title' => '无缝集成',
			'onboarding.healthConnect.seamlessIntegration.description' => '从你喜欢的健康应用同步数据',
			'onboarding.healthConnect.userControl.title' => '由你掌控',
			'onboarding.healthConnect.userControl.description' => '选择任一权限，并随时更改访问设置',
			'onboarding.healthConnect.connected' => '已连接 Health Connect',
			'onboarding.healthConnect.notConnected' => '未连接 Health Connect',
			'onboarding.healthConnect.setup' => '设置 Health Connect',
			'onboarding.healthConnect.skipForNow' => '暂不连接',
			'onboarding.healthConnect.statusConnected' => 'Health Connect 已连接。',
			'onboarding.healthConnect.statusSuccess' => '已成功连接 Health Connect！',
			'onboarding.healthConnect.statusNotConnected' => '选择要启用的 Health Connect 功能。',
			'onboarding.healthConnect.statusPartial' => 'Health Connect 已部分连接。请启用剩余权限以使用两项功能。',
			'onboarding.healthConnect.statusProviderUpdateRequired' => '安装或更新 Health Connect 以继续。',
			'onboarding.healthConnect.statusUnavailable' => '此设备不支持 Health Connect。',
			'onboarding.healthConnect.installOrUpdate' => '安装或更新',
			'onboarding.healthConnect.manageAccess' => '管理访问权限',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => '权限被拒绝。请在手机设置中为 ${appLabel} 启用 Health Connect 权限。',
			'onboarding.healthConnect.statusError' => ({required Object error}) => '设置 Health Connect 时出错：${error}',
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
			'home.connectHealth.dataUseDescription' => '将已消耗的卡路里计入目标，并共享记录的餐食',
			'home.connectHealth.installOrUpdate' => '安装或更新',
			'home.connectHealth.connect' => '连接',
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
			'settings.clearAllData.localOnlySubtitle' => '删除此设备上存储的 Calorify 数据',
			'settings.clearAllData.confirmationTitle' => '清除所有数据？',
			'settings.clearAllData.confirmationMessage' => '此操作不可撤销。你所有的记录、收藏和个人设置将被永久删除。',
			'settings.clearAllData.localOnlyConfirmationMessage' => '这将从此设备永久删除记录的餐食、收藏和个人资料设置。已共享到 Health Connect 的餐食和 Health Connect 访问权限需在“设置 > Health Connect”中单独管理。',
			'settings.clearAllData.cancel' => '取消',
			'settings.clearAllData.clearEverything' => '清除全部',
			'settings.debugOptions.title' => '调试选项',
			'settings.developerModeEnabled' => '开发者模式已启用！',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => '查看并管理权限',
			'settings.healthConnect.unavailable.title' => 'Health Connect 不可用',
			'settings.healthConnect.unavailable.description' => '此设备上无法使用 Health Connect。请从 Play Store 安装 Health Connect（Android 9+）或更新到 Android 14+。',
			'settings.healthConnect.unavailable.unsupportedDescription' => '此设备不支持 Health Connect。',
			'settings.healthConnect.updateRequired.title' => 'Health Connect 需要处理',
			'settings.healthConnect.updateRequired.description' => '请先安装或更新 Health Connect，再管理访问权限。',
			'settings.healthConnect.updateRequired.action' => '安装或更新',
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
			'settings.healthConnect.disconnect' => '断开 Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => '断开 Health Connect？',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify 将失去 Health Connect 访问权限。已写入其中的数据不会被删除。',
			'settings.healthConnect.disconnectConfirmationAction' => '断开连接',
			'settings.healthConnect.deleteSyncedMeals' => '从 Health Connect 删除 Calorify 餐食',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => '删除已同步的餐食？',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => '要从 Health Connect 删除此版本 Calorify 同步的餐食吗？本地餐食日志不会改变。较早的 Calorify 条目可能仍需通过 Health Connect 中的“管理数据”删除。',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => '删除已同步的餐食',
			'settings.healthConnect.deleteSyncedMealsSuccess' => '已从 Health Connect 删除 Calorify 餐食。',
			'settings.healthConnect.deleteSyncedMealsFailed' => '无法删除已同步的餐食，请重试。',
			'settings.healthConnect.connectionPartial' => '部分 Health Connect 功能已启用。',
			'settings.healthConnect.connectionComplete' => '两项 Health Connect 功能均已启用。',
			'settings.healthConnect.actionFailed' => '无法打开 Health Connect，请重试。',
			'settings.healthConnect.requestPermissions' => '请求权限',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => '权限请求已取消或失败。请重试或在 Health Connect 设置中手动授予权限。',
			'settings.healthConnect.permissionRequestFailed' => '无法请求权限。请重试或在 Health Connect 设置中手动授予权限。',
			'settings.healthConnect.requestingPermissions' => '正在请求…',
			'settings.about.title' => '关于',
			'settings.about.tagline' => '快速、免费且以隐私为先的卡路里感知工具',
			'settings.about.ourStory.title' => '我们的故事',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} 源自一个简单的挫败感：大多数卡路里追踪应用要么过于复杂、需要大量手动输入、收费高昂，要么在隐私上妥协。\n\n作为一名独立开发者，我想做一个更简单、更公平的应用——一个用 AI 减少操作负担、保持快速且免费使用，并尊重你的健康数据的应用。\n\n${appLabel} 是我希望存在的应用：无需账号、无追踪、无广告——只有清晰、实用的洞察和你的健康目标。',
			'settings.about.privacy.title' => '你的隐私很重要',
			'settings.about.privacy.description' => '隐私不是事后考虑——它是设计原则。以下是实践中的含义：',
			'settings.about.privacy.noAccounts' => '无需账号\n立即使用应用。无注册、无身份绑定。',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => '无行为追踪\n${appLabel} 不会监控你的活动、构建使用档案或跨应用/网站跟踪你。',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => '有限的分析与诊断\n${appLabel} 使用基本应用事件和崩溃诊断来提高可靠性。健康记录值不会用于广告或出售。',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => '内建无广告\n${appLabel} 旨在无需广告或基于数据的变现运行。',
			'settings.about.privacy.noDataSelling' => '不出售数据\n你的健康数据不会被出售或分享给第三方。',
			'settings.about.privacy.localStorage' => '本地优先存储\n你的数据保留在你的设备上。',
			'settings.about.privacy.privacyPolicy' => '隐私政策',
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
			'watch.appTitle' => 'Calorify 手表',
			'watch.common.back' => '返回',
			'watch.common.cancel' => '取消',
			'watch.common.delete' => '删除',
			'watch.common.retry' => '重试',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => '营养成分',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} 克',
			'watch.nutrition.protein' => '蛋白质',
			'watch.nutrition.carbs' => '碳水',
			'watch.nutrition.fat' => '脂肪',
			'watch.nutrition.fiber' => '膳食纤维',
			'watch.sync.syncWithPhone' => '与手机同步',
			'watch.sync.syncing' => '正在同步…',
			'watch.sync.synced' => '已同步',
			'watch.sync.syncedJustNow' => '刚刚同步',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => '已同步，${minutes} 分钟前',
			'watch.sync.failed' => '同步失败',
			'watch.sync.phoneDisconnected' => '手机已断开连接',
			'watch.sync.tapToSync' => '点按以同步',
			'watch.sync.refreshFailed' => '无法刷新。请检查手机。',
			'watch.sync.openPhone' => '在手机上打开 Calorify，然后点按刷新。',
			'watch.home.today' => '今天',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '已摄入 ${consumed} 卡路里，目标为 ${goal}。${status}。',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} 超出目标',
			'watch.home.remaining' => ({required Object calories}) => '${calories} 剩余',
			'watch.home.left' => ({required Object calories}) => '${calories} 剩余',
			'watch.home.goal' => ({required Object calories}) => '${calories} kcal 目标',
			'watch.home.logMeal' => '记录餐食',
			'watch.home.todayMeals' => '今日餐食',
			'watch.home.todayMealsCount' => ({required Object count}) => '今日餐食，${count}',
			'watch.home.viewMore' => ({required Object count}) => '查看更多 ${count} 项',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} 条餐食，点按查看全部',
			'watch.home.noMeals' => '尚未记录餐食',
			'watch.home.noMealsSemantics' => '今日尚未记录餐食',
			'watch.home.tapLog' => '点按“记录”开始',
			'watch.home.removedFromQueue' => '餐食已从离线队列中移除。',
			'watch.home.removedOffline' => '餐食已离线移除。手机重新连接后会同步。',
			'watch.home.deleteFailed' => '无法删除餐食',
			'watch.history.title' => '今日餐食',
			'watch.history.refresh' => '刷新餐食',
			'watch.history.loadFailed' => '无法加载餐食',
			'watch.history.syncFailed' => '无法同步',
			'watch.history.emptyTitle' => '尚无餐食记录',
			'watch.history.emptyMessage' => '在主页记录一餐即可在此查看。',
			'watch.favorites.title' => '收藏',
			'watch.favorites.refresh' => '刷新收藏',
			'watch.favorites.loadFailed' => '无法加载收藏',
			'watch.favorites.syncFailed' => '无法同步',
			'watch.favorites.emptyTitle' => '尚无收藏',
			'watch.favorites.emptyMessage' => '在手机应用中为餐食标星，便可在此一键记录。',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}，${calories} 卡路里。点按以记录。',
			'watch.favorites.logged' => ({required Object name}) => '${name} 已记录！',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} 已离线保存。手机重新连接后会同步。',
			'watch.favorites.saveFailed' => '无法保存餐食。请重试。',
			'watch.favorites.log' => '记录',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}，${calories} 卡路里，于 ${time} 记录。',
			'watch.meal.longPressDelete' => '长按以删除。',
			'watch.meal.deleteTitle' => '删除该餐食？',
			'watch.voice.title' => '语音记录餐食',
			'watch.voice.processing' => '正在识别您的餐食…',
			'watch.voice.processingDescription' => '估算份量和营养',
			'watch.voice.listening' => '正在聆听',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}秒',
			'watch.voice.stop' => '停止录音',
			'watch.voice.start' => '点按开始录音',
			'watch.voice.starting' => '正在启动麦克风…',
			'watch.voice.prompt' => '点按后描述您的餐食',
			'watch.voice.tapToRetry' => '点按重试',
			'watch.voice.example' => '例如：“2 rotis with dal”',
			'watch.voice.unavailable' => '语音输入不可用。请在手表设置中检查麦克风权限。',
			'watch.voice.didNotStart' => '麦克风未能启动。点按重试。',
			'watch.voice.startFailed' => '无法开始录音。请检查麦克风权限。',
			'watch.voice.allowMicrophone' => '允许麦克风访问以使用语音记录餐食。',
			'watch.voice.needsConnection' => '语音识别需要网络连接。点按重试。',
			'watch.voice.microphoneUnavailable' => '麦克风不可用。点按重试。',
			'watch.voice.microphoneBusy' => '麦克风正被占用。请稍候再试。',
			'watch.voice.languageUnsupported' => '语音输入不支持手表语言。',
			'watch.voice.temporarilyBusy' => '语音输入暂时忙碌。请稍候再试。',
			'watch.voice.notRecognized' => '没听清。点按麦克风再试一次。',
			'watch.voice.noSpeech' => '未检测到语音。点按麦克风再试。',
			'watch.voice.analysisFailed' => '分析失败。请重试。',
			'watch.voice.mealNotIdentified' => '无法识别该餐食。请尝试换种描述方式。',
			'watch.result.title' => '餐食详情',
			'watch.result.savedOffline' => '已离线保存',
			'watch.result.logged' => '已记录！',
			'watch.result.mealFound' => '已找到餐食',
			'watch.result.estimatedEnergy' => '估算能量',
			'watch.result.logMeal' => '记录餐食',
			'watch.result.logging' => '正在记录…',
			'watch.result.logAnother' => '再记录一餐',
			'watch.result.goingBack' => '正在返回…',
			'watch.result.savedOfflineMessage' => '餐食已离线保存。手机重新连接后会同步。',
			'watch.result.saveFailed' => '无法保存餐食。请重试。',
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
