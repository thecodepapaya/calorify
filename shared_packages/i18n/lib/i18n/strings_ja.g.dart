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
class TranslationsJa extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override String get language => '日本語';
	@override String get flag => '🇯🇵';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsJa errors = _TranslationsErrorsJa._(_root);
	@override late final _TranslationsOnboardingJa onboarding = _TranslationsOnboardingJa._(_root);
	@override late final _TranslationsTabsJa tabs = _TranslationsTabsJa._(_root);
	@override late final _TranslationsHomeJa home = _TranslationsHomeJa._(_root);
	@override late final _TranslationsHistoryJa history = _TranslationsHistoryJa._(_root);
	@override late final _TranslationsMealJa meal = _TranslationsMealJa._(_root);
	@override late final _TranslationsFavoritesJa favorites = _TranslationsFavoritesJa._(_root);
	@override late final _TranslationsProfileJa profile = _TranslationsProfileJa._(_root);
	@override late final _TranslationsHealthScoreJa healthScore = _TranslationsHealthScoreJa._(_root);
	@override late final _TranslationsEditProfileJa editProfile = _TranslationsEditProfileJa._(_root);
	@override late final _TranslationsSettingsJa settings = _TranslationsSettingsJa._(_root);
	@override late final _TranslationsRemindersJa reminders = _TranslationsRemindersJa._(_root);
	@override late final _TranslationsNotificationsJa notifications = _TranslationsNotificationsJa._(_root);
	@override late final _TranslationsLoginJa login = _TranslationsLoginJa._(_root);
	@override late final _TranslationsDisclaimerJa disclaimer = _TranslationsDisclaimerJa._(_root);
	@override late final _TranslationsLocalNutritionPhase4Ja localNutritionPhase4 = _TranslationsLocalNutritionPhase4Ja._(_root);
	@override late final _TranslationsCommonJa common = _TranslationsCommonJa._(_root);
	@override late final _TranslationsFeedbackRatingJa feedbackRating = _TranslationsFeedbackRatingJa._(_root);
	@override late final _TranslationsHealthJa health = _TranslationsHealthJa._(_root);
}

// Path: errors
class _TranslationsErrorsJa extends TranslationsErrorsEn {
	_TranslationsErrorsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'リクエストが多すぎます。しばらく待ってから再試行してください。';
	@override String get networkError => 'ネットワークエラーが発生しました。インターネット接続を確認してください。';
	@override String get unknownError => '問題が発生しました。後でもう一度お試しください。';
	@override String get loadingProfileData => 'プロフィールデータの読み込み中にエラーが発生しました';
	@override String get somethingWentWrong => '問題が発生しました。';
	@override String get retry => '再試行';
}

// Path: onboarding
class _TranslationsOnboardingJa extends TranslationsOnboardingEn {
	_TranslationsOnboardingJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'ようこそ、${appLabel}へ';
	@override String get subtitle => 'AIが支える、あなた専用の栄養コンパニオン';
	@override String get getStarted => '始める';
	@override late final _TranslationsOnboardingFeaturesJa features = _TranslationsOnboardingFeaturesJa._(_root);
	@override late final _TranslationsOnboardingGenderJa gender = _TranslationsOnboardingGenderJa._(_root);
	@override late final _TranslationsOnboardingHeightJa height = _TranslationsOnboardingHeightJa._(_root);
	@override late final _TranslationsOnboardingWeightJa weight = _TranslationsOnboardingWeightJa._(_root);
	@override late final _TranslationsOnboardingAgeJa age = _TranslationsOnboardingAgeJa._(_root);
	@override late final _TranslationsOnboardingBmiScaleJa bmiScale = _TranslationsOnboardingBmiScaleJa._(_root);
	@override late final _TranslationsOnboardingWeightGoalJa weightGoal = _TranslationsOnboardingWeightGoalJa._(_root);
	@override late final _TranslationsOnboardingActivityLevelJa activityLevel = _TranslationsOnboardingActivityLevelJa._(_root);
	@override late final _TranslationsOnboardingHealthConnectJa healthConnect = _TranslationsOnboardingHealthConnectJa._(_root);
	@override late final _TranslationsOnboardingReinforcementJa reinforcement = _TranslationsOnboardingReinforcementJa._(_root);
}

// Path: tabs
class _TranslationsTabsJa extends TranslationsTabsEn {
	_TranslationsTabsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'ダッシュボード';
	@override String get history => '履歴';
}

// Path: home
class _TranslationsHomeJa extends TranslationsHomeEn {
	_TranslationsHomeJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryJa aiSummary = _TranslationsHomeAiSummaryJa._(_root);
	@override late final _TranslationsHomeDailyGoalJa dailyGoal = _TranslationsHomeDailyGoalJa._(_root);
	@override late final _TranslationsHomeDailySummaryJa dailySummary = _TranslationsHomeDailySummaryJa._(_root);
	@override late final _TranslationsHomeIntakeProgressJa intakeProgress = _TranslationsHomeIntakeProgressJa._(_root);
	@override late final _TranslationsHomeIntakeHistoryJa intakeHistory = _TranslationsHomeIntakeHistoryJa._(_root);
	@override late final _TranslationsHomeMealLogJa mealLog = _TranslationsHomeMealLogJa._(_root);
	@override late final _TranslationsHomeMealDescriptionJa mealDescription = _TranslationsHomeMealDescriptionJa._(_root);
	@override late final _TranslationsHomeFavoriteMealsJa favoriteMeals = _TranslationsHomeFavoriteMealsJa._(_root);
	@override late final _TranslationsHomeMealSnapJa mealSnap = _TranslationsHomeMealSnapJa._(_root);
	@override late final _TranslationsHomeConnectHealthJa connectHealth = _TranslationsHomeConnectHealthJa._(_root);
}

// Path: history
class _TranslationsHistoryJa extends TranslationsHistoryEn {
	_TranslationsHistoryJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get noMeals => '記録された食事はありません';
	@override String get emptyMessage => '最後の食事の写真を撮ってここに記録しましょう。';
	@override String get today => '今日';
	@override String get yesterday => '昨日';
}

// Path: meal
class _TranslationsMealJa extends TranslationsMealEn {
	_TranslationsMealJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'おっと！';
	@override String get delete => '削除';
	@override String get editMeal => '食事を編集';
	@override String get addMeal => '食事を追加';
	@override String get saveMeal => '食事を保存';
	@override String get save => '保存';
	@override String get mealName => '食事名';
	@override String get mealNameHint => '例：スクランブルエッグとトースト';
	@override String get nameRequired => '保存する前に食事名を入力してください。';
	@override String get mealQuantity => '食事の量';
	@override String get mealQuantityHint => '例：1杯、2枚';
	@override String get timeOfMeal => '食事の時間';
	@override String get timeOfMealHint => '食べた時間を選択してください';
	@override String get mealType => '食事の種類';
	@override late final _TranslationsMealNutritionJa nutrition = _TranslationsMealNutritionJa._(_root);
	@override late final _TranslationsMealDeleteConfirmationJa deleteConfirmation = _TranslationsMealDeleteConfirmationJa._(_root);
	@override String get addedToLog => '食事が記録に追加されました！';
	@override String couldNotAdd({required Object error}) => '食事を追加できませんでした: ${error}';
	@override String get savedSuccessfully => '食事が正常に追加されました！';
	@override String get updatedSuccessfully => '食事が正常に更新されました！';
	@override String errorSaving({required Object error}) => '食事の保存中にエラーが発生しました: ${error}';
	@override String get removedFromFavorites => 'お気に入りから削除しました！';
	@override String get savedAsFavorite => '食事をお気に入りに保存しました！';
	@override String get unfavorite => 'お気に入り解除';
	@override String couldNotUpdateFavorite({required Object error}) => 'お気に入りを更新できませんでした: ${error}';
	@override String get feedbackThanks => 'フィードバックありがとうございます！';
	@override String get reanalysisUpdated => 'フィードバックに基づいて食事分析を更新しました。';
	@override String failedToProcess({required Object error}) => '処理に失敗しました: ${error}';
	@override String failedToProcessImage({required Object error}) => '画像の処理に失敗しました: ${error}';
	@override String errorCompressingImage({required Object error}) => '画像圧縮中にエラーが発生しました: ${error}';
	@override String get failedToSave => 'データの保存に失敗しました。もう一度お試しください。';
	@override String get skip => 'スキップ';
	@override late final _TranslationsMealQuestionFlowJa questionFlow = _TranslationsMealQuestionFlowJa._(_root);
	@override late final _TranslationsMealAnalysisJa analysis = _TranslationsMealAnalysisJa._(_root);
	@override late final _TranslationsMealLocalInferenceJa localInference = _TranslationsMealLocalInferenceJa._(_root);
	@override late final _TranslationsMealFeedbackJa feedback = _TranslationsMealFeedbackJa._(_root);
}

// Path: favorites
class _TranslationsFavoritesJa extends TranslationsFavoritesEn {
	_TranslationsFavoritesJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'お気に入り';
	@override String get empty => 'お気に入りはまだありません。';
	@override String get searchPlaceholder => 'お気に入りの食事を検索';
	@override String get searchEmptyTitle => '検索に一致するお気に入りはありません';
	@override String get searchEmptySubtitle => '別の食事名、分量、または食事タイプを試してください。';
	@override String get sortLabel => 'お気に入りを並べ替え';
	@override String get undo => '元に戻す';
	@override String removed({required Object name}) => '${name}をお気に入りから削除しました';
	@override late final _TranslationsFavoritesSortOptionsJa sortOptions = _TranslationsFavoritesSortOptionsJa._(_root);
}

// Path: profile
class _TranslationsProfileJa extends TranslationsProfileEn {
	_TranslationsProfileJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィール';
	@override String get noProfileData => 'プロフィールデータが見つかりません';
	@override String get yourProfile => 'あなたのプロフィール';
	@override String get viewAndManage => '健康情報を表示・管理する';
	@override late final _TranslationsProfileSectionsJa sections = _TranslationsProfileSectionsJa._(_root);
	@override String get gender => '性別';
	@override String get height => '身長';
	@override String get weight => '体重';
	@override String get age => '年齢';
	@override String get weightGoal => '体重目標';
	@override String get targetWeight => '目標体重';
	@override String get activityLevel => '活動レベル';
	@override String get healthMetrics => '健康指標';
	@override String get notSet => '未設定';
	@override String get years => '歳';
	@override String get updatedSuccessfully => 'プロフィールが正常に更新されました！';
	@override late final _TranslationsProfileCalculatedValuesJa calculatedValues = _TranslationsProfileCalculatedValuesJa._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreJa extends TranslationsHealthScoreEn {
	_TranslationsHealthScoreJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ヘルススコア';
	@override String get whyThisScore => 'このスコアの理由';
	@override String get note => 'このスコアは、特定された材料と栄養密度に基づくAIによる推定です。個別の食事アドバイスは専門家にご相談ください。';
	@override String get unhealthy => '不健康';
	@override String get healthy => '健康的';
	@override String get neutral => '中立';
}

// Path: editProfile
class _TranslationsEditProfileJa extends TranslationsEditProfileEn {
	_TranslationsEditProfileJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィール編集';
	@override late final _TranslationsEditProfileSectionsJa sections = _TranslationsEditProfileSectionsJa._(_root);
	@override String get gender => '性別';
	@override String get dateOfBirth => '生年月日';
	@override String get height => '身長';
	@override String get weight => '体重';
	@override String get weightGoal => '体重目標';
	@override String get activityLevel => '活動レベル';
	@override String get metric => 'メートル法';
	@override String get imperial => 'インペリアル';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'メートル法（cm）';
	@override String get imperialFtIn => 'インペリアル（ft/in）';
	@override String get metricKg => 'メートル法（kg）';
	@override String get imperialLbs => 'インペリアル（lbs）';
	@override late final _TranslationsEditProfileGendersJa genders = _TranslationsEditProfileGendersJa._(_root);
	@override late final _TranslationsEditProfileWeightGoalsJa weightGoals = _TranslationsEditProfileWeightGoalsJa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsJa activityLevels = _TranslationsEditProfileActivityLevelsJa._(_root);
}

// Path: settings
class _TranslationsSettingsJa extends TranslationsSettingsEn {
	_TranslationsSettingsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '設定';
	@override late final _TranslationsSettingsSectionsJa sections = _TranslationsSettingsSectionsJa._(_root);
	@override late final _TranslationsSettingsEditProfileJa editProfile = _TranslationsSettingsEditProfileJa._(_root);
	@override late final _TranslationsSettingsLanguageJa language = _TranslationsSettingsLanguageJa._(_root);
	@override late final _TranslationsSettingsHeightUnitJa heightUnit = _TranslationsSettingsHeightUnitJa._(_root);
	@override late final _TranslationsSettingsWeightUnitJa weightUnit = _TranslationsSettingsWeightUnitJa._(_root);
	@override late final _TranslationsSettingsMealRemindersJa mealReminders = _TranslationsSettingsMealRemindersJa._(_root);
	@override late final _TranslationsSettingsLocalInferenceJa localInference = _TranslationsSettingsLocalInferenceJa._(_root);
	@override late final _TranslationsSettingsThemeJa theme = _TranslationsSettingsThemeJa._(_root);
	@override late final _TranslationsSettingsSendFeedbackJa sendFeedback = _TranslationsSettingsSendFeedbackJa._(_root);
	@override late final _TranslationsSettingsExportMealHistoryJa exportMealHistory = _TranslationsSettingsExportMealHistoryJa._(_root);
	@override late final _TranslationsSettingsClearAllDataJa clearAllData = _TranslationsSettingsClearAllDataJa._(_root);
	@override late final _TranslationsSettingsDebugOptionsJa debugOptions = _TranslationsSettingsDebugOptionsJa._(_root);
	@override String get developerModeEnabled => '開発者モードが有効になりました！';
	@override late final _TranslationsSettingsHealthConnectJa healthConnect = _TranslationsSettingsHealthConnectJa._(_root);
	@override late final _TranslationsSettingsAboutJa about = _TranslationsSettingsAboutJa._(_root);
	@override late final _TranslationsSettingsAppInfoJa appInfo = _TranslationsSettingsAppInfoJa._(_root);
}

// Path: reminders
class _TranslationsRemindersJa extends TranslationsRemindersEn {
	_TranslationsRemindersJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'リマインダーで習慣を維持';
	@override String get description => '食事を記録する優しいリマインダーを受け取り、栄養目標の継続をサポートします';
	@override String get notificationsEnabled => '通知が有効です';
	@override String get notificationsDisabled => '通知が無効です';
	@override String get enabledSubtitle => '食事のリマインダーを受け取ります';
	@override String get disabledSubtitle => '通知を有効にして食事リマインダーを受け取りましょう';
	@override String get mealReminders => '食事リマインダー';
	@override String get breakfast => '朝食';
	@override String get lunch => '昼食';
	@override String get dinner => '夕食';
	@override String get snack => 'おやつ';
	@override String get unknown => '不明';
	@override String get change => '変更';
	@override String get enableNotifications => '通知を有効にする';
	@override String get skipForNow => 'とりあえずスキップ';
	@override String get saveChanges => '変更を保存';
	@override String get enabledSuccessfully => '通知を有効にしました！';
	@override String get permissionDenied => '通知権限が拒否されました';
	@override String errorEnabling({required Object error}) => '通知の有効化中にエラーが発生しました: ${error}';
	@override String errorCompletingSetup({required Object error}) => '設定の完了中にエラーが発生しました: ${error}';
}

// Path: notifications
class _TranslationsNotificationsJa extends TranslationsNotificationsEn {
	_TranslationsNotificationsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastJa breakfast = _TranslationsNotificationsBreakfastJa._(_root);
	@override late final _TranslationsNotificationsLunchJa lunch = _TranslationsNotificationsLunchJa._(_root);
	@override late final _TranslationsNotificationsDinnerJa dinner = _TranslationsNotificationsDinnerJa._(_root);
	@override late final _TranslationsNotificationsSnackJa snack = _TranslationsNotificationsSnackJa._(_root);
	@override late final _TranslationsNotificationsTestJa test = _TranslationsNotificationsTestJa._(_root);
}

// Path: login
class _TranslationsLoginJa extends TranslationsLoginEn {
	_TranslationsLoginJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ログイン';
	@override String get signInWithGoogle => 'Googleでサインイン';
	@override String get signInFailed => 'Googleサインインに失敗するか、キャンセルされました。';
}

// Path: disclaimer
class _TranslationsDisclaimerJa extends TranslationsDisclaimerEn {
	_TranslationsDisclaimerJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'ご注意';
	@override late final _TranslationsDisclaimerSnapJa snap = _TranslationsDisclaimerSnapJa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateJa weightEstimate = _TranslationsDisclaimerWeightEstimateJa._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsJa healthMetrics = _TranslationsDisclaimerHealthMetricsJa._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureJa calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureJa._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4Ja extends TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4Ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'ダウンロード済みのUSDAパックから栄養情報を照合しました';
	@override String get nutritionCached => '端末内のUSDAキャッシュから栄養情報を照合しました';
	@override String get nutritionMixed => 'ダウンロード済み、キャッシュ済み、リモートのUSDAデータから栄養情報を統合しました';
	@override String get calculationLocal => 'この端末でカロリーとマクロ栄養素を計算しました';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: ダウンロード済みUSDAパック';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: 端末内USDAキャッシュ';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: Calorify経由で取得したUSDAデータ';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: 決定論的な栄養定数';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · データセット ${datasetVersion}';
	@override String get portionSmaller => '少なめ';
	@override String get portionEstimated => '推定量';
	@override String get portionLarger => '多め';
	@override String portionQuestion({required Object ingredient}) => '${ingredient}の量に最も近いものはどれでしたか？';
	@override String get mealTypeQuestion => 'どの食事でしたか？';
	@override String get localNutritionTip => '検証済みのローカル栄養データから計算しました。';
	@override String get offlineNutritionTitle => '栄養データをダウンロード';
	@override String get offlineNutritionSubtitle => 'すべての食材が対象の場合、この端末で検証済みのUSDAデータと決定論的計算を使用します。';
	@override String get offlineNutritionUnavailable => 'このアプリのリリースではローカル栄養データを利用できません。';
	@override String get offlineNutritionNotDownloaded => '検証済みの栄養パックはダウンロードされていません。';
	@override String get offlineNutritionInstalling => '栄養データをダウンロードして検証しています…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'パック ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => 'キャッシュ済みUSDAデータ ${count}件 · ${size}';
	@override String get offlineNutritionUpdate => '更新を確認';
	@override String get offlineNutritionClear => 'ローカル栄養データを消去';
	@override String get offlineNutritionClearTitle => 'ローカル栄養データを消去しますか？';
	@override String get offlineNutritionClearBody => 'ダウンロード済みのUSDAパックと検索キャッシュを削除します。記録済みの食事には、保存時に使用した正確な栄養スナップショットが保持されます。';
	@override String get offlineNutritionClearConfirm => 'データを消去';
	@override String offlineNutritionInstallFailed({required Object error}) => 'ローカル栄養データをダウンロードして検証できませんでした: ${error}';
	@override String get offlineNutritionCleared => 'ローカル栄養データを消去しました';
}

// Path: common
class _TranslationsCommonJa extends TranslationsCommonEn {
	_TranslationsCommonJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get close => '閉じる';
	@override String get kContinue => '続ける';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingJa extends TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel}を楽しんでいますか？';
	@override String get yes => 'はい、楽しんでいます';
	@override String get no => 'あまり…';
	@override String get rateStepHeading => 'Play Storeで評価';
	@override String get emailStepHeading => 'メールでフィードバックを送信';
	@override String soloDevMessage({required Object appLabel}) => '簡単な評価が他の人の${appLabel}発見を助け、開発継続の支えになります。よろしければ評価をお願いします。';
	@override String get shareFeedbackViaEmail => 'あなたのフィードバックが今後を形作ります—すべてのメッセージを目を通しています。メールで共有しますか？';
	@override String get rateCta => 'Play Storeで評価';
	@override String get maybeLater => '後で';
	@override String get sendFeedback => 'フィードバックを送る';
	@override String get noThanks => '結構です';
	@override String get aboutUsDescription => '少人数で丁寧に作られています。プライバシー、シンプルさ、より良い食習慣の構築に注力しています。';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '${appLabel}の開発者に興味がありますか？こちらを見てください：';
	@override String get aboutUsLinkLabel => '私たちについて';
	@override String get thankYouMessage => 'ありがとうございます！また別の機会にお伺いします。';
}

// Path: health
class _TranslationsHealthJa extends TranslationsHealthEn {
	_TranslationsHealthJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connectへの同期に失敗しました';
	@override String get mealSynced => '食事をHealth Connectに同期しました';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesJa extends TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionJa foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionJa._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisJa aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisJa._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationJa healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationJa._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderJa extends TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '性別は？';
	@override String get description => '性別は基礎代謝量（BMR）の算出に役立ちます。';
	@override String get next => '次へ';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightJa extends TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '身長は？';
	@override String get description => '身長はBMIやエネルギー必要量の正確な計算に使用します。';
	@override String get metric => 'メートル法';
	@override String get imperial => 'インペリアル';
	@override String get next => '次へ';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightJa extends TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => '現在の体重は？';
	@override String get currentDescription => '現在の体重は、日々の目標をパーソナライズするために重要です。';
	@override String get targetTitle => '目標体重は？';
	@override String get targetDescription => '目標体重を設定すると、長期的なプランが決まります。';
	@override String get metric => 'キログラム';
	@override String get imperial => 'ポンド';
	@override String get next => '次へ';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeJa extends TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '生年月日は？';
	@override String get description => '年齢はカロリー必要量の正確な計算に使用します。';
	@override String get next => '次へ';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleJa extends TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get underweight => '低';
	@override String get healthy => '適正';
	@override String get overweight => '過剰';
	@override String get obese => '肥満';
	@override late final _TranslationsOnboardingBmiScaleCategoriesJa categories = _TranslationsOnboardingBmiScaleCategoriesJa._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesJa messages = _TranslationsOnboardingBmiScaleMessagesJa._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalJa extends TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '目標は何ですか？';
	@override String get description => '達成したいことに最も近い目標を選んでください';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelJa extends TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'どのくらい活動的ですか？';
	@override String get description => 'これは毎日のカロリー必要量をより正確に算出するのに役立ちます';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectJa extends TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connectと接続';
	@override String get description => '健康データを同期して、より良いインサイトと自動カロリートラッキングを実現します';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingJa automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingJa._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsJa progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsJa._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationJa seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationJa._(_root);
	@override String get connected => 'Health Connectに接続済み';
	@override String get notConnected => 'Health Connectに未接続';
	@override String get setup => 'Health Connectを設定';
	@override String get skipForNow => 'とりあえずスキップ';
	@override String get statusConnected => 'Health Connectが接続されています。';
	@override String get statusSuccess => 'Health Connectの接続に成功しました！';
	@override String statusPermissionDenied({required Object appLabel}) => '権限が拒否されました。${appLabel}のHealth Connect権限を端末の設定で有効にしてください。';
	@override String statusError({required Object error}) => 'Health Connectの設定中にエラーが発生しました: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementJa extends TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessJa trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessJa._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileJa healthProfile = _TranslationsOnboardingReinforcementHealthProfileJa._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleJa goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleJa._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryJa extends TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AIサマリー';
	@override String get logMore => '今後数日で食事をもっと記録すると、あなた専用のAIインサイトが得られます。';
	@override String get loading => 'サマリーを読み込み中…';
	@override String mealCount({required Object count}) => '${count}件の食事を記録済み';
	@override String macroBalanceScore({required Object score}) => 'バランススコア ${score}';
	@override String get topFoods => 'よく食べている食品';
	@override String get trendUp => 'カロリー増加傾向';
	@override String get trendDown => 'カロリー減少傾向';
	@override String get trendSteady => 'カロリー安定傾向';
	@override String generatedAt({required Object time}) => '${time}に更新';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalJa extends TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '日次目標を設定';
	@override String get titleSet => 'あなたの日次目標';
	@override String get description => 'ウェルネスの旅を始める準備はできていますか？以下で日次カロリー目標を設定して進みましょう。';
	@override String get descriptionSet => 'コンパスが設定されました！これは目安となる日次カロリー目標です。';
	@override String get yourGoal => 'あなたの目標';
	@override String get goal => '目標';
	@override String get dailyCalories => '1日のカロリー（kcal）';
	@override String get setGoal => '目標を設定';
	@override String get intake => '摂取';
	@override String get burned => '消費';
	@override String get weightImpact => '体重への影響';
	@override String get estLoss => '推定減少';
	@override String get estGain => '推定増加';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryJa extends TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '本日のサマリー';
	@override String get calories => 'カロリー';
	@override String get carbs => '炭水化物';
	@override String get protein => 'たんぱく質';
	@override String get fat => '脂質';
	@override String get fiber => '食物繊維';
	@override String get grams => 'グラム';
	@override String get chartAccessibilityLabel => 'マクロ栄養素のチャート';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressJa extends TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '今日のマクロ内訳';
	@override String get target => '目標';
	@override String get current => '現在';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryJa extends TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '7日間のマクロ履歴';
	@override String get trendTitle => '今日の傾向';
	@override String peakHour({required Object hour}) => 'ピーク: ${hour}:00';
	@override String get noHistoryYet => 'まだ履歴がありません';
	@override String get startLogging => '食事を記録して、ここで\n7日間のマクロ傾向を確認しましょう';
}

// Path: home.mealLog
class _TranslationsHomeMealLogJa extends TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '記録した食事';
	@override String get emptyMessage => '最後の食事の写真を撮ってここに記録しましょう。';
	@override String get noMealsToday => '今日の記録はありません';
	@override String get seeAllMeals => 'すべての食事を表示';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionJa extends TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AIでクイック追加';
	@override String get description => '食事を説明すると、AIが詳細を処理します。';
	@override String get hint => '例：朝食にオートミール大盛り、スライスしたバナナ1本、ホエイプロテイン一杯…';
	@override String get analyzeMeal => '食事を分析';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsJa extends TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'お気に入りの食事';
	@override String get description => 'お気に入りを素早く追加できます。';
	@override String get noFavorites => 'お気に入りはまだありません。';
	@override String get addFavoriteHint => '食事のスターをクリックしてお気に入りに追加します。';
	@override String get seeAll => 'すべて表示';
	@override String get add => '追加';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapJa extends TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '撮って記録する';
	@override String get description => 'カメラで食事の写真を撮ってAIで分析しましょう。';
	@override String get openCamera => 'カメラを開く';
	@override String get gallery => 'ギャラリー';
	@override String get compressingPhoto => '写真を最適化しています…';
	@override String get uploadingPhoto => '写真をアップロードしています…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthJa extends TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connectと同期';
	@override String get description => '栄養データをHealth Connectと同期します';
	@override String get install => 'インストール';
	@override String get connect => '接続';
}

// Path: meal.nutrition
class _TranslationsMealNutritionJa extends TranslationsMealNutritionEn {
	_TranslationsMealNutritionJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get calories => 'カロリー';
	@override String get carbs => '炭水化物 (g)';
	@override String get protein => 'たんぱく質 (g)';
	@override String get fat => '脂質 (g)';
	@override String get fiber => '食物繊維 (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationJa extends TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '食事を削除';
	@override String get message => 'この食事の記録を本当に削除しますか？';
	@override String get cancel => 'キャンセル';
	@override String get delete => '削除';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowJa extends TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => '質問 ${current}/${total}';
	@override String get noQuestionsAvailable => '利用可能な質問はありません';
	@override String get next => '次へ';
	@override String get continueLabel => '続ける';
}

// Path: meal.analysis
class _TranslationsMealAnalysisJa extends TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '食事を分析中';
	@override String get stepStarted => '開始しています…';
	@override String get stepDecomposition => '食事を理解しています…';
	@override String get stepIngredients => '栄養データと材料を照合しています…';
	@override String get stepUncertainty => '信頼度をチェックしています…';
	@override String get stepMealTypeQuestion => 'もう少しで完了です…';
	@override String get stepResult => '結果を最終化しています…';
	@override String get stepError => '問題が発生しました';
	@override String get stepDefault => '食事を分析しています…';
	@override String get progressUnderstand => '食事を理解中';
	@override String get progressMatch => '材料の栄養を照合中';
	@override String get progressCheck => '分量と信頼度を確認中';
	@override String get progressMealType => '食事の種類を選択中';
	@override String get progressFinish => 'カロリーとマクロを計算中';
	@override String get detectedIngredientHeading => '識別された材料';
	@override String ingredientsOverflow({required Object count}) => '他に${count}件';
	@override String ingredientsLine({required Object count}) => '${count}件の材料を検出';
	@override String get ingredientsPending => '材料をスキャン中…';
	@override String mealPreviewDescription({required Object text}) => '「${text}」';
	@override String get offlineTip0 => 'ヒント：完璧さより継続が大事—定期的な記録が重要な傾向を明らかにします。';
	@override String get offlineTip1 => 'ヒント：写真は自然光で上から撮ると分量推定が向上します。';
	@override String get offlineTip2 => 'ヒント：飲み物、ソース、調理油も伝えてください—見落としがちなカロリーが含まれます。';
	@override String get offlineTip3 => 'ヒント：分量の簡単なメモ（例：1杯、大きめのコーヒー）が推定を大きく改善します。';
	@override String get offlineTip4 => 'ヒント：食後に記録しても習慣化になります。完璧である必要はありません。';
	@override String get offlineTip5 => 'ヒント：調理方法（揚げる・焼くなど）を伝えるとカロリー推定がより正確になります。';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceJa extends TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => '検出された食材を確認';
	@override String get reviewSubtitle => 'これはデバイス上で解析されました。栄養計算の前に、名称や分量を修正してください。';
	@override String get mealName => '食事名';
	@override String get ingredient => '食材';
	@override String get grams => '推定重量 (g)';
	@override String get removeIngredient => '食材を削除';
	@override String get continueLabel => '次へ';
	@override String get invalidProposal => '少なくとも1つの食材を追加し、正の数値を入力してください。';
	@override String get localUnavailable => '現在、デバイス上での解析は利用できません。';
	@override String get calculationDetails => '計算方法の詳細';
	@override String get interpretationLocal => 'このデバイスで解析された食材';
	@override String get interpretationCloud => 'クラウドで解析された食材';
	@override String get interpretationManual => 'ユーザーによって確認または編集された食材';
	@override String get nutritionRemote => 'Calorifyを通じてUSDAから取得した栄養価';
	@override String get nutritionFallback => '一部の栄養価はリモートで推定されました';
	@override String get calculationServer => 'カロリーとマクロ栄養素はCalorifyによって計算されました';
	@override String get fallbackUsed => 'ローカル解析からクラウド処理に切り替わりました';
	@override String get noRawContent => '診断用レシートに食事のテキストや写真は含まれません。';
}

// Path: meal.feedback
class _TranslationsMealFeedbackJa extends TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'どこが違いますか？';
	@override String get subtitle => '分析の改善のために、1つ以上の問題を選んでください。';
	@override String get tellUsMore => '詳しく教えてください';
	@override String get describeIncorrect => '何が間違っていたか説明してください';
	@override String get submit => '送信';
	@override String get issueFoodIdentification => '食品の識別';
	@override String get issuePortionSize => '分量の誤り';
	@override String get issueCalorieDistribution => 'カロリー配分';
	@override String get issueMacrosWrong => 'マクロが間違っている';
	@override String get issueMissingItems => '欠けている項目';
	@override String get issueExtraItems => '余分な項目';
	@override String get issueOther => 'その他';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsJa extends TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get recent => '最近';
	@override String get calories => 'カロリー順';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsJa extends TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'プロフィール';
	@override String get basicInformation => '基本情報';
	@override String get goalsAndActivity => '目標と活動';
	@override String get calculatedValues => '算出値';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesJa extends TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => '日次目標';
	@override String get calPerDay => 'cal/日';
	@override String get notAvailable => '該当なし';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsJa extends TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => '個人情報';
	@override String get physicalMeasurements => '身体計測';
	@override String get goalsAndActivity => '目標と活動';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersJa extends TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get male => '男性';
	@override String get female => '女性';
	@override String get other => 'その他';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsJa extends TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightJa loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightJa._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightJa maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightJa._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightJa gainWeight = _TranslationsEditProfileWeightGoalsGainWeightJa._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsJa extends TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryJa sedentary = _TranslationsEditProfileActivityLevelsSedentaryJa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveJa lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveJa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveJa moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveJa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveJa veryActive = _TranslationsEditProfileActivityLevelsVeryActiveJa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveJa extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveJa._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsJa extends TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'プロフィール';
	@override String get localization => 'ローカリゼーション';
	@override String get notifications => '通知';
	@override String get healthConnect => 'Health Connect';
	@override String get localInference => 'デバイス上での解析';
	@override String get supportAndLegal => 'サポートと法務';
	@override String get about => 'このアプリについて';
	@override String get dangerZone => '危険領域';
	@override String get developer => '開発者';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileJa extends TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィール編集';
	@override String get subtitle => '個人情報を更新する';
}

// Path: settings.language
class _TranslationsSettingsLanguageJa extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '言語';
	@override String get subtitle => '希望する言語を選択してください';
	@override String get searchHint => '言語を検索…';
	@override String get noResults => '結果が見つかりません';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitJa extends TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '身長の単位';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitJa extends TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '体重の単位';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersJa extends TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '食事リマインダー';
	@override String get subtitle => 'タイムリーな通知で軌道に乗りましょう';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceJa extends TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'デバイス上での食事解析';
	@override String get subtitle => '栄養計算の前に、Gemini Nanoを使用して対応している食事を解析します';
	@override String get unavailable => 'このデバイスでは利用できません';
	@override String get rolloutUnavailable => '対応ハードウェアは見つかりましたが、このアプリのバージョンでは機能が有効になっていません';
	@override String get modelSetup => '有効にする前にGemini Nanoのダウンロードを完了させる必要があります';
	@override String get useLocalTitle => 'デバイス上での解析を使用';
	@override String get useLocalSubtitle => 'オプションであり、デフォルトではオフになっています。複雑な食事の場合、結果の信頼性が低くなることがあります。';
	@override String get disclosureTitle => 'デバイス上での解析を有効にする前に';
	@override String get disclosureBody => 'Gemini Nanoは、対応するAndroidデバイスで食材の特定と分量の推定が可能です。確認済みの食材案は、USDAの栄養データに基づいた計算のためCalorifyに送信されます。';
	@override String get disclosureLimit1 => '複雑な料理、隠れた食材、分量の特定が正しく行われない場合があります。';
	@override String get disclosureLimit2 => 'ダウンロード中、ビジー状態、バックグラウンド動作中、またはデバイスの制限により、モデルが利用できない場合があります。';
	@override String get disclosureLimit3 => 'ローカルでの解析が完了できない場合、このベータ版では元の食事内容が自動的にCalorifyに送信され、クラウドで解析されます。';
	@override String get acknowledgement => '検出された食材と分量を確認する必要があることを理解しました。';
	@override String get enable => '同意して有効にする';
	@override String get cancel => 'キャンセル';
}

// Path: settings.theme
class _TranslationsSettingsThemeJa extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'テーマ';
	@override String get light => 'ライト';
	@override String get dark => 'ダーク';
	@override String get system => 'システム';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackJa extends TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'フィードバックを送る';
	@override String subtitle({required Object appLabel}) => '${appLabel}の改善にご協力ください';
	@override String emailSubject({required Object appLabel}) => '${appLabel} アプリのフィードバック';
	@override String get emailBodyPrefix => '以下にフィードバックをご記入ください：';
	@override String get appVersion => 'アプリバージョン';
	@override String get device => 'デバイス';
	@override String get osVersion => 'OSバージョン';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryJa extends TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '食事履歴をエクスポート';
	@override String get subtitle => '記録した食事のCSVを共有する';
	@override String get shareText => 'あなたのCalorify食事履歴のエクスポート';
	@override String failed({required Object error}) => '食事履歴をエクスポートできませんでした: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataJa extends TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'すべてのデータを消去';
	@override String get subtitle => 'あなたの情報を元に戻せない形で削除します';
	@override String get confirmationTitle => 'すべてのデータを消去しますか？';
	@override String get confirmationMessage => 'この操作は元に戻せません。記録した全ての食事、お気に入り、プロフィール設定が永久に削除されます。';
	@override String get cancel => 'キャンセル';
	@override String get clearEverything => 'すべて消去';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsJa extends TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'デバッグオプション';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectJa extends TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => '権限の表示と管理';
	@override late final _TranslationsSettingsHealthConnectUnavailableJa unavailable = _TranslationsSettingsHealthConnectUnavailableJa._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsJa permissions = _TranslationsSettingsHealthConnectPermissionsJa._(_root);
	@override String get managePermissions => '権限を管理';
	@override String get openSettings => 'Health Connect設定を開く';
	@override String get requestPermissions => '権限を要求';
	@override String get permissionRequestCancelledOrFailed => '権限要求がキャンセルされたか失敗しました。もう一度お試しいただくか、Health Connectの設定で手動で権限を付与してください。';
	@override String get permissionRequestFailed => '権限の要求ができませんでした。もう一度お試しいただくか、Health Connectの設定で手動で権限を付与してください。';
	@override String get requestingPermissions => '要求中…';
}

// Path: settings.about
class _TranslationsSettingsAboutJa extends TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'このアプリについて';
	@override String get tagline => '速く、無料、プライバシー優先のカロリー意識';
	@override late final _TranslationsSettingsAboutOurStoryJa ourStory = _TranslationsSettingsAboutOurStoryJa._(_root);
	@override late final _TranslationsSettingsAboutPrivacyJa privacy = _TranslationsSettingsAboutPrivacyJa._(_root);
	@override late final _TranslationsSettingsAboutDeveloperJa developer = _TranslationsSettingsAboutDeveloperJa._(_root);
	@override late final _TranslationsSettingsAboutFeedbackJa feedback = _TranslationsSettingsAboutFeedbackJa._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoJa extends TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'ビルド ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastJa extends TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '朝ごはんの時間です！ 🍳';
	@override String get body => '朝食を記録するのを忘れずに';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchJa extends TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'お昼の時間です！ 🥗';
	@override String get body => '昼食を記録しましょう';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerJa extends TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '夕食の時間です！ 🍽️';
	@override String get body => '夕食を記録するのを忘れずに';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackJa extends TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'おやつの時間です！ 🍎';
	@override String get body => '健康的なおやつを記録しましょう';
}

// Path: notifications.test
class _TranslationsNotificationsTestJa extends TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'テスト通知';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapJa extends TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel}は推定の栄養情報を提供します。精度は入力と食品のばらつきに依存します。参考としてご利用ください。個別の食事相談は専門家にご相談ください。';
	@override late final _TranslationsDisclaimerSnapPortionSizeJa portionSize = _TranslationsDisclaimerSnapPortionSizeJa._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsJa preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsJa._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsJa ingredients = _TranslationsDisclaimerSnapIngredientsJa._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsJa databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsJa._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateJa extends TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '体重推定について';
	@override String get description => '推定される体重変化は、単純なカロリー収支モデルに基づく理論的な推定です。モチベーションの指標として意図されており、実際の体重予測ではありません。';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyJa calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyJa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsJa biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsJa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightJa waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightJa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceJa professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceJa._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsJa extends TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get description => 'これらの指標は体のエネルギー必要量を理解し、栄養目標を導くのに役立ちます。';
	@override late final _TranslationsDisclaimerHealthMetricsBmrJa bmr = _TranslationsDisclaimerHealthMetricsBmrJa._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeJa tdee = _TranslationsDisclaimerHealthMetricsTdeeJa._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalJa dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalJa._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureJa extends TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '消費カロリーの推定';
	@override String get description => 'Health Connectのデータが利用できない場合、今日の消費カロリーを基礎代謝（BMR）と活動レベル（TDEE）を使用して、経過した日の割合に応じて推定します。';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedJa howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedJa._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceJa professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceJa._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionJa extends TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'スマートな食事認識';
	@override String get description => '写真を撮ってAIに食事を識別させましょう';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisJa extends TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AIによる分析';
	@override String get description => '説明から瞬時に栄養情報を取得します';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationJa extends TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect連携';
	@override String get description => 'Health Connectと接続してより良いインサイトを得る';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesJa extends TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get underweight => '低体重';
	@override String get healthyWeight => '適正体重';
	@override String get overweight => '過体重';
	@override String get obese => '肥満';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesJa extends TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get underweight => '栄養価の高い食事でバランスの取れた体重を目指す健康的なプランを一緒に作りましょう。';
	@override String get healthy => '素晴らしい！適正範囲にいます。活力とエネルギーを維持するお手伝いをします。';
	@override String overweight({required Object appLabel}) => '${appLabel}はAIによるトラッキングで、無理なく目標に近づけるようサポートします。';
	@override String get obese => '個別のガイダンスと持続可能な戦略であなたの健康目標を支援します。';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingJa extends TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '自動カロリートラッキング';
	@override String get description => 'フィットネスアプリから消費カロリーを追跡します';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsJa extends TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '進捗インサイト';
	@override String get description => '健康トレンドに関する詳細なインサイトを取得します';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationJa extends TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'シームレスな連携';
	@override String get description => 'お気に入りのヘルスアプリからデータを同期します';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessJa extends TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたは一人じゃない';
	@override String get genericMessage => '研究では、一貫した記録が長期的成功の最も重要な予測因子であることが示されています。';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age}歳の${gender}で${goal}を目指す場合、一貫した記録が成功の最も重要な予測因子です。';
	@override String closingMessage({required Object appLabel}) => '${appLabel}は手動で行うより10倍簡単にします。';
	@override String get getStartedTitle => '始める準備はいいですか？';
	@override String get tipPhoto => '食事の写真を撮って瞬時に分析';
	@override String get tipConsistency => '継続的に記録して意味のある進捗を見ましょう';
	@override String get tipProgress => '毎日進捗を記録してモチベーションを維持しましょう';
	@override String get button => '始めよう';
	@override String get defaultGender => '個人';
	@override String get defaultGoal => 'より健康なあなた';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileJa extends TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたの健康プロフィール';
	@override String bmiDescription({required Object bmi}) => 'あなたの指標に基づくと、BMIは${bmi}です。';
	@override String get finalizeDescription => 'プロフィールを最終確認して、体験をカスタマイズしましょう。';
	@override String get goalGain => '増量';
	@override String get goalLose => '減量';
	@override String goalReach({required Object diff, required Object unit, required Object direction}) => '目標達成には、${diff}${unit}の${direction}が必要です。';
	@override String get goalReached => '目標体重に到達しています！維持するお手伝いをします。';
	@override String get button => '始めよう';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleJa extends TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '素晴らしいスタートです！';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => '${goalText}に向けた第一歩を踏み出しました。あなたは${activityText}なので、${appLabel}はライフスタイルに合わせて目標を調整します。';
	@override String get personalizedTargets => 'パーソナライズされたカロリー目標';
	@override String get aiMealDetection => 'AIによる食事検出';
	@override String get macroBreakdowns => '詳細な三大栄養素内訳';
	@override String get button => '始めよう';
	@override String get defaultGoal => 'あなたの目標';
	@override String get defaultActivity => 'アクティブ';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightJa extends TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '体重を減らす';
	@override String get description => 'カロリー不足を作って体重を減らします';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightJa extends TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '体重を維持';
	@override String get description => '現在の体重を維持します';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightJa extends TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '体重を増やす';
	@override String get description => 'カロリー余剰を作って体重を増やします';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryJa extends TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '座りがち';
	@override String get description => 'ほとんど運動しない';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveJa extends TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => 'やや活動的';
	@override String get description => '週1〜3日程度の軽い運動';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveJa extends TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '中程度に活動的';
	@override String get description => '週3〜5日の中程度の運動';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveJa extends TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '非常に活動的';
	@override String get description => '週6〜7日の激しい運動';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveJa extends TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '極めて活動的';
	@override String get description => '非常に激しい運動や肉体労働';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableJa extends TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connectが利用できません';
	@override String get description => 'この端末ではHealth Connectが利用できません。Play StoreからHealth Connectをインストールするか（Android 9+）、Androidを14+にアップデートしてください。';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsJa extends TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '権限';
	@override String get description => 'Health Connect連携のために次の権限が要求されます：';
	@override String get granted => '許可済み';
	@override String get notGranted => '未許可';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedJa caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedJa._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadJa nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadJa._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteJa nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteJa._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryJa extends TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '私たちのストーリー';
	@override String content({required Object appLabel}) => '${appLabel}はシンプルなフラストレーションから生まれました：多くのカロリートラッキングアプリは複雑すぎる、手入力が多すぎる、高額なサブスクリプションが必要、あるいはプライバシーを損なう。\n\nソロ開発者として、もっとシンプルで公平なものを作りたかった—AIで手間を減らし、速くて無料のまま、健康データを尊重するアプリを。\n\n${appLabel}は私が欲しかったアプリです：アカウント不要、トラッキングなし、広告なし—明確で実用的なインサイトとあなたの健康目標だけ。';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyJa extends TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたのプライバシーを重視しています';
	@override String get description => 'プライバシーは後付けではなく設計原則です。実際にどういうことかは以下の通りです：';
	@override String get noAccounts => 'アカウント不要\nすぐにアプリを使えます。サインアップや個人情報は不要です。';
	@override String noTracking({required Object appLabel}) => '行動トラッキングなし\n${appLabel}はあなたの行動を監視したり、使用プロファイルを構築したり、アプリやウェブを横断して追跡したりしません。';
	@override String noAds({required Object appLabel}) => '広告なしで設計\n${appLabel}は広告やデータ駆動のマネタイズなしで動作するよう作られています。';
	@override String get noDataSelling => 'データ販売なし\nあなたの健康データが第三者に販売または共有されることはありません。';
	@override String get localStorage => 'ローカルファーストの保存\nあなたのデータは端末に留まります。';
	@override String get privacyPolicy => 'プライバシーポリシー';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperJa extends TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ソロ開発者による開発';
	@override String description({required Object appLabel}) => '${appLabel}は、落ち着いたプライバシー重視の健康ソフトウェアを作ることに集中する単独の開発者によって作られ、維持されています。\n\nフィードバックは個人で読み、アプリの方向性を形作るのに役立ちます。';
	@override String get website => 'ウェブサイト';
	@override String get email => 'メール';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackJa extends TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel}を気に入っていますか？';
	@override String description({required Object appLabel}) => 'あなたのフィードバックは${appLabel}を全員にとってより良くします。';
	@override String get rateApp => 'Play Storeで評価する';
	@override String get sendFeedback => 'フィードバックを送る';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeJa extends TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '分量';
	@override String get description => '推定の精度は分量の正確な評価に大きく依存します。';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsJa extends TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '調理方法';
	@override String description({required Object appLabel}) => '調理方法は栄養成分を大きく変える可能性があります。${appLabel}の推定が必ずしもこれらを考慮しているとは限りません。';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsJa extends TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '材料';
	@override String get description => '材料が複雑で隠れた材料が多い料理は、推定精度が低くなる可能性があります。';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsJa extends TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'データベースの制限';
	@override String description({required Object appLabel}) => '${appLabel}の食品データベースは豊富ですが、すべての食品やバリエーションを網羅しているわけではありません。';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyJa extends TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'カロリーの精度';
	@override String get description => 'この推定は、記録されたカロリー摂取と消費の精度に依存します。不正確な記録は不正確な推定を生みます。';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsJa extends TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '生物学的要因';
	@override String description({required Object appLabel}) => '実際の体重変化は代謝、ホルモン、睡眠、ストレス、水分量など個人差のある要因に影響され、${appLabel}では測定できません。';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightJa extends TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '水分による変動';
	@override String get description => '日々の体重は水分保持、消化、タイミングにより大きく変動することがあります。推定はこれらの一時的な変動を考慮していません。';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceJa extends TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '専門的な助言';
	@override String get description => '医療上の判断にこの推定を使用しないでください。個別の体重管理については医療専門家や登録栄養士に必ず相談してください。';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrJa extends TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => '基礎代謝量（BMR）は、呼吸や循環など安静時に体が基本機能を維持するために消費するカロリー量です。BMRは年齢、性別、身長、体重に依存します。筋肉量が多い、若い、男性であるほどBMRは高くなる傾向があります。逆に筋肉量が少ない、年齢が高い、または女性であると低くなる傾向があります。';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeJa extends TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => '総日次エネルギー消費（TDEE）は、BMRに身体活動や日常の動きによる消費カロリーを加えた1日あたりの総消費カロリーです。TDEEはBMRと活動レベルに依存します。活動的であったりBMRが高いとTDEEは高くなります。';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalJa extends TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '日次目標';
	@override String get description => '日次目標は、TDEEと体重目標に基づく推奨摂取カロリーです。減量の場合はTDEEより少ないカロリーを、維持はTDEEと同等、増量はTDEEより多いカロリーを摂取します。健康的なペースで目標体重を達成するのに役立ちます。';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedJa extends TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '推定の計算方法';
	@override String get description => 'プロフィールに基づいてTDEEを算出し、経過した日の割合（時間＋分）/24を掛けて、これまでの消費カロリーを推定します。';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceJa extends TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '専門的な助言';
	@override String get description => 'この推定を医療上の判断に使用しないでください。個別の体重管理については医療専門家や登録栄養士に必ず相談してください。';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedJa extends TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '総消費カロリーの読み取り';
	@override String get description => 'アプリがHealth Connectから総消費カロリーを読み取れるようにします。';
	@override String get usage => 'この権限はアプリ内で日次消費カロリーを表示し、1日の総エネルギー消費を理解するために使用されます。';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadJa extends TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '栄養データの読み取り';
	@override String get description => 'アプリがHealth Connectから栄養データを読み取れるようにします。';
	@override String get usage => 'この権限により、他のアプリがHealth Connectへ記録した栄養情報を読み取り、栄養の包括的なビューを提供できます。';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteJa extends TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '栄養データの書き込み';
	@override String get description => 'アプリが栄養データをHealth Connectに書き込めるようにします。';
	@override String get usage => 'この権限により、記録した食事をHealth Connectへ同期し、他のヘルス／フィットネスアプリでも栄養データを利用可能にします。';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => '日本語',
			'flag' => '🇯🇵',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'リクエストが多すぎます。しばらく待ってから再試行してください。',
			'errors.networkError' => 'ネットワークエラーが発生しました。インターネット接続を確認してください。',
			'errors.unknownError' => '問題が発生しました。後でもう一度お試しください。',
			'errors.loadingProfileData' => 'プロフィールデータの読み込み中にエラーが発生しました',
			'errors.somethingWentWrong' => '問題が発生しました。',
			'errors.retry' => '再試行',
			'onboarding.welcome' => ({required Object appLabel}) => 'ようこそ、${appLabel}へ',
			'onboarding.subtitle' => 'AIが支える、あなた専用の栄養コンパニオン',
			'onboarding.getStarted' => '始める',
			'onboarding.features.foodRecognition.title' => 'スマートな食事認識',
			'onboarding.features.foodRecognition.description' => '写真を撮ってAIに食事を識別させましょう',
			'onboarding.features.aiAnalysis.title' => 'AIによる分析',
			'onboarding.features.aiAnalysis.description' => '説明から瞬時に栄養情報を取得します',
			'onboarding.features.healthIntegration.title' => 'Health Connect連携',
			'onboarding.features.healthIntegration.description' => 'Health Connectと接続してより良いインサイトを得る',
			'onboarding.gender.title' => '性別は？',
			'onboarding.gender.description' => '性別は基礎代謝量（BMR）の算出に役立ちます。',
			'onboarding.gender.next' => '次へ',
			'onboarding.height.title' => '身長は？',
			'onboarding.height.description' => '身長はBMIやエネルギー必要量の正確な計算に使用します。',
			'onboarding.height.metric' => 'メートル法',
			'onboarding.height.imperial' => 'インペリアル',
			'onboarding.height.next' => '次へ',
			'onboarding.weight.currentTitle' => '現在の体重は？',
			'onboarding.weight.currentDescription' => '現在の体重は、日々の目標をパーソナライズするために重要です。',
			'onboarding.weight.targetTitle' => '目標体重は？',
			'onboarding.weight.targetDescription' => '目標体重を設定すると、長期的なプランが決まります。',
			'onboarding.weight.metric' => 'キログラム',
			'onboarding.weight.imperial' => 'ポンド',
			'onboarding.weight.next' => '次へ',
			'onboarding.age.title' => '生年月日は？',
			'onboarding.age.description' => '年齢はカロリー必要量の正確な計算に使用します。',
			'onboarding.age.next' => '次へ',
			'onboarding.bmiScale.underweight' => '低',
			'onboarding.bmiScale.healthy' => '適正',
			'onboarding.bmiScale.overweight' => '過剰',
			'onboarding.bmiScale.obese' => '肥満',
			'onboarding.bmiScale.categories.underweight' => '低体重',
			'onboarding.bmiScale.categories.healthyWeight' => '適正体重',
			'onboarding.bmiScale.categories.overweight' => '過体重',
			'onboarding.bmiScale.categories.obese' => '肥満',
			'onboarding.bmiScale.messages.underweight' => '栄養価の高い食事でバランスの取れた体重を目指す健康的なプランを一緒に作りましょう。',
			'onboarding.bmiScale.messages.healthy' => '素晴らしい！適正範囲にいます。活力とエネルギーを維持するお手伝いをします。',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel}はAIによるトラッキングで、無理なく目標に近づけるようサポートします。',
			'onboarding.bmiScale.messages.obese' => '個別のガイダンスと持続可能な戦略であなたの健康目標を支援します。',
			'onboarding.weightGoal.title' => '目標は何ですか？',
			'onboarding.weightGoal.description' => '達成したいことに最も近い目標を選んでください',
			'onboarding.activityLevel.title' => 'どのくらい活動的ですか？',
			'onboarding.activityLevel.description' => 'これは毎日のカロリー必要量をより正確に算出するのに役立ちます',
			'onboarding.healthConnect.title' => 'Health Connectと接続',
			'onboarding.healthConnect.description' => '健康データを同期して、より良いインサイトと自動カロリートラッキングを実現します',
			'onboarding.healthConnect.automaticTracking.title' => '自動カロリートラッキング',
			'onboarding.healthConnect.automaticTracking.description' => 'フィットネスアプリから消費カロリーを追跡します',
			'onboarding.healthConnect.progressInsights.title' => '進捗インサイト',
			'onboarding.healthConnect.progressInsights.description' => '健康トレンドに関する詳細なインサイトを取得します',
			'onboarding.healthConnect.seamlessIntegration.title' => 'シームレスな連携',
			'onboarding.healthConnect.seamlessIntegration.description' => 'お気に入りのヘルスアプリからデータを同期します',
			'onboarding.healthConnect.connected' => 'Health Connectに接続済み',
			'onboarding.healthConnect.notConnected' => 'Health Connectに未接続',
			'onboarding.healthConnect.setup' => 'Health Connectを設定',
			'onboarding.healthConnect.skipForNow' => 'とりあえずスキップ',
			'onboarding.healthConnect.statusConnected' => 'Health Connectが接続されています。',
			'onboarding.healthConnect.statusSuccess' => 'Health Connectの接続に成功しました！',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => '権限が拒否されました。${appLabel}のHealth Connect権限を端末の設定で有効にしてください。',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connectの設定中にエラーが発生しました: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'あなたは一人じゃない',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => '研究では、一貫した記録が長期的成功の最も重要な予測因子であることが示されています。',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age}歳の${gender}で${goal}を目指す場合、一貫した記録が成功の最も重要な予測因子です。',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel}は手動で行うより10倍簡単にします。',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => '始める準備はいいですか？',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => '食事の写真を撮って瞬時に分析',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => '継続的に記録して意味のある進捗を見ましょう',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => '毎日進捗を記録してモチベーションを維持しましょう',
			'onboarding.reinforcement.trackingSuccess.button' => '始めよう',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => '個人',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'より健康なあなた',
			'onboarding.reinforcement.healthProfile.title' => 'あなたの健康プロフィール',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'あなたの指標に基づくと、BMIは${bmi}です。',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'プロフィールを最終確認して、体験をカスタマイズしましょう。',
			'onboarding.reinforcement.healthProfile.goalGain' => '増量',
			'onboarding.reinforcement.healthProfile.goalLose' => '減量',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object diff, required Object unit, required Object direction}) => '目標達成には、${diff}${unit}の${direction}が必要です。',
			'onboarding.reinforcement.healthProfile.goalReached' => '目標体重に到達しています！維持するお手伝いをします。',
			'onboarding.reinforcement.healthProfile.button' => '始めよう',
			'onboarding.reinforcement.goalLifestyle.title' => '素晴らしいスタートです！',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => '${goalText}に向けた第一歩を踏み出しました。あなたは${activityText}なので、${appLabel}はライフスタイルに合わせて目標を調整します。',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'パーソナライズされたカロリー目標',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AIによる食事検出',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => '詳細な三大栄養素内訳',
			'onboarding.reinforcement.goalLifestyle.button' => '始めよう',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'あなたの目標',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'アクティブ',
			'tabs.dashboard' => 'ダッシュボード',
			'tabs.history' => '履歴',
			'home.aiSummary.title' => 'AIサマリー',
			'home.aiSummary.logMore' => '今後数日で食事をもっと記録すると、あなた専用のAIインサイトが得られます。',
			'home.aiSummary.loading' => 'サマリーを読み込み中…',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count}件の食事を記録済み',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'バランススコア ${score}',
			'home.aiSummary.topFoods' => 'よく食べている食品',
			'home.aiSummary.trendUp' => 'カロリー増加傾向',
			'home.aiSummary.trendDown' => 'カロリー減少傾向',
			'home.aiSummary.trendSteady' => 'カロリー安定傾向',
			'home.aiSummary.generatedAt' => ({required Object time}) => '${time}に更新',
			'home.dailyGoal.title' => '日次目標を設定',
			'home.dailyGoal.titleSet' => 'あなたの日次目標',
			'home.dailyGoal.description' => 'ウェルネスの旅を始める準備はできていますか？以下で日次カロリー目標を設定して進みましょう。',
			'home.dailyGoal.descriptionSet' => 'コンパスが設定されました！これは目安となる日次カロリー目標です。',
			'home.dailyGoal.yourGoal' => 'あなたの目標',
			'home.dailyGoal.goal' => '目標',
			'home.dailyGoal.dailyCalories' => '1日のカロリー（kcal）',
			'home.dailyGoal.setGoal' => '目標を設定',
			'home.dailyGoal.intake' => '摂取',
			'home.dailyGoal.burned' => '消費',
			'home.dailyGoal.weightImpact' => '体重への影響',
			'home.dailyGoal.estLoss' => '推定減少',
			'home.dailyGoal.estGain' => '推定増加',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => '本日のサマリー',
			'home.dailySummary.calories' => 'カロリー',
			'home.dailySummary.carbs' => '炭水化物',
			'home.dailySummary.protein' => 'たんぱく質',
			'home.dailySummary.fat' => '脂質',
			'home.dailySummary.fiber' => '食物繊維',
			'home.dailySummary.grams' => 'グラム',
			'home.dailySummary.chartAccessibilityLabel' => 'マクロ栄養素のチャート',
			'home.intakeProgress.title' => '今日のマクロ内訳',
			'home.intakeProgress.target' => '目標',
			'home.intakeProgress.current' => '現在',
			'home.intakeHistory.title' => '7日間のマクロ履歴',
			'home.intakeHistory.trendTitle' => '今日の傾向',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'ピーク: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'まだ履歴がありません',
			'home.intakeHistory.startLogging' => '食事を記録して、ここで\n7日間のマクロ傾向を確認しましょう',
			'home.mealLog.title' => '記録した食事',
			'home.mealLog.emptyMessage' => '最後の食事の写真を撮ってここに記録しましょう。',
			'home.mealLog.noMealsToday' => '今日の記録はありません',
			'home.mealLog.seeAllMeals' => 'すべての食事を表示',
			'home.mealDescription.title' => 'AIでクイック追加',
			'home.mealDescription.description' => '食事を説明すると、AIが詳細を処理します。',
			'home.mealDescription.hint' => '例：朝食にオートミール大盛り、スライスしたバナナ1本、ホエイプロテイン一杯…',
			'home.mealDescription.analyzeMeal' => '食事を分析',
			'home.favoriteMeals.title' => 'お気に入りの食事',
			'home.favoriteMeals.description' => 'お気に入りを素早く追加できます。',
			'home.favoriteMeals.noFavorites' => 'お気に入りはまだありません。',
			'home.favoriteMeals.addFavoriteHint' => '食事のスターをクリックしてお気に入りに追加します。',
			'home.favoriteMeals.seeAll' => 'すべて表示',
			'home.favoriteMeals.add' => '追加',
			'home.mealSnap.title' => '撮って記録する',
			'home.mealSnap.description' => 'カメラで食事の写真を撮ってAIで分析しましょう。',
			'home.mealSnap.openCamera' => 'カメラを開く',
			'home.mealSnap.gallery' => 'ギャラリー',
			'home.mealSnap.compressingPhoto' => '写真を最適化しています…',
			'home.mealSnap.uploadingPhoto' => '写真をアップロードしています…',
			'home.connectHealth.title' => 'Health Connectと同期',
			'home.connectHealth.description' => '栄養データをHealth Connectと同期します',
			'home.connectHealth.install' => 'インストール',
			'home.connectHealth.connect' => '接続',
			'history.noMeals' => '記録された食事はありません',
			'history.emptyMessage' => '最後の食事の写真を撮ってここに記録しましょう。',
			'history.today' => '今日',
			'history.yesterday' => '昨日',
			'meal.ohNo' => 'おっと！',
			'meal.delete' => '削除',
			'meal.editMeal' => '食事を編集',
			'meal.addMeal' => '食事を追加',
			'meal.saveMeal' => '食事を保存',
			'meal.save' => '保存',
			'meal.mealName' => '食事名',
			'meal.mealNameHint' => '例：スクランブルエッグとトースト',
			'meal.nameRequired' => '保存する前に食事名を入力してください。',
			'meal.mealQuantity' => '食事の量',
			'meal.mealQuantityHint' => '例：1杯、2枚',
			'meal.timeOfMeal' => '食事の時間',
			'meal.timeOfMealHint' => '食べた時間を選択してください',
			'meal.mealType' => '食事の種類',
			'meal.nutrition.calories' => 'カロリー',
			'meal.nutrition.carbs' => '炭水化物 (g)',
			'meal.nutrition.protein' => 'たんぱく質 (g)',
			'meal.nutrition.fat' => '脂質 (g)',
			'meal.nutrition.fiber' => '食物繊維 (g)',
			'meal.deleteConfirmation.title' => '食事を削除',
			'meal.deleteConfirmation.message' => 'この食事の記録を本当に削除しますか？',
			'meal.deleteConfirmation.cancel' => 'キャンセル',
			'meal.deleteConfirmation.delete' => '削除',
			'meal.addedToLog' => '食事が記録に追加されました！',
			'meal.couldNotAdd' => ({required Object error}) => '食事を追加できませんでした: ${error}',
			'meal.savedSuccessfully' => '食事が正常に追加されました！',
			'meal.updatedSuccessfully' => '食事が正常に更新されました！',
			'meal.errorSaving' => ({required Object error}) => '食事の保存中にエラーが発生しました: ${error}',
			'meal.removedFromFavorites' => 'お気に入りから削除しました！',
			'meal.savedAsFavorite' => '食事をお気に入りに保存しました！',
			'meal.unfavorite' => 'お気に入り解除',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'お気に入りを更新できませんでした: ${error}',
			'meal.feedbackThanks' => 'フィードバックありがとうございます！',
			'meal.reanalysisUpdated' => 'フィードバックに基づいて食事分析を更新しました。',
			'meal.failedToProcess' => ({required Object error}) => '処理に失敗しました: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => '画像の処理に失敗しました: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => '画像圧縮中にエラーが発生しました: ${error}',
			'meal.failedToSave' => 'データの保存に失敗しました。もう一度お試しください。',
			'meal.skip' => 'スキップ',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => '質問 ${current}/${total}',
			'meal.questionFlow.noQuestionsAvailable' => '利用可能な質問はありません',
			'meal.questionFlow.next' => '次へ',
			'meal.questionFlow.continueLabel' => '続ける',
			'meal.analysis.title' => '食事を分析中',
			'meal.analysis.stepStarted' => '開始しています…',
			'meal.analysis.stepDecomposition' => '食事を理解しています…',
			'meal.analysis.stepIngredients' => '栄養データと材料を照合しています…',
			'meal.analysis.stepUncertainty' => '信頼度をチェックしています…',
			'meal.analysis.stepMealTypeQuestion' => 'もう少しで完了です…',
			'meal.analysis.stepResult' => '結果を最終化しています…',
			'meal.analysis.stepError' => '問題が発生しました',
			'meal.analysis.stepDefault' => '食事を分析しています…',
			'meal.analysis.progressUnderstand' => '食事を理解中',
			'meal.analysis.progressMatch' => '材料の栄養を照合中',
			'meal.analysis.progressCheck' => '分量と信頼度を確認中',
			'meal.analysis.progressMealType' => '食事の種類を選択中',
			'meal.analysis.progressFinish' => 'カロリーとマクロを計算中',
			'meal.analysis.detectedIngredientHeading' => '識別された材料',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '他に${count}件',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count}件の材料を検出',
			'meal.analysis.ingredientsPending' => '材料をスキャン中…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '「${text}」',
			'meal.analysis.offlineTip0' => 'ヒント：完璧さより継続が大事—定期的な記録が重要な傾向を明らかにします。',
			'meal.analysis.offlineTip1' => 'ヒント：写真は自然光で上から撮ると分量推定が向上します。',
			'meal.analysis.offlineTip2' => 'ヒント：飲み物、ソース、調理油も伝えてください—見落としがちなカロリーが含まれます。',
			'meal.analysis.offlineTip3' => 'ヒント：分量の簡単なメモ（例：1杯、大きめのコーヒー）が推定を大きく改善します。',
			'meal.analysis.offlineTip4' => 'ヒント：食後に記録しても習慣化になります。完璧である必要はありません。',
			'meal.analysis.offlineTip5' => 'ヒント：調理方法（揚げる・焼くなど）を伝えるとカロリー推定がより正確になります。',
			'meal.localInference.reviewTitle' => '検出された食材を確認',
			'meal.localInference.reviewSubtitle' => 'これはデバイス上で解析されました。栄養計算の前に、名称や分量を修正してください。',
			'meal.localInference.mealName' => '食事名',
			'meal.localInference.ingredient' => '食材',
			'meal.localInference.grams' => '推定重量 (g)',
			'meal.localInference.removeIngredient' => '食材を削除',
			'meal.localInference.continueLabel' => '次へ',
			'meal.localInference.invalidProposal' => '少なくとも1つの食材を追加し、正の数値を入力してください。',
			'meal.localInference.localUnavailable' => '現在、デバイス上での解析は利用できません。',
			'meal.localInference.calculationDetails' => '計算方法の詳細',
			'meal.localInference.interpretationLocal' => 'このデバイスで解析された食材',
			'meal.localInference.interpretationCloud' => 'クラウドで解析された食材',
			'meal.localInference.interpretationManual' => 'ユーザーによって確認または編集された食材',
			'meal.localInference.nutritionRemote' => 'Calorifyを通じてUSDAから取得した栄養価',
			'meal.localInference.nutritionFallback' => '一部の栄養価はリモートで推定されました',
			'meal.localInference.calculationServer' => 'カロリーとマクロ栄養素はCalorifyによって計算されました',
			'meal.localInference.fallbackUsed' => 'ローカル解析からクラウド処理に切り替わりました',
			'meal.localInference.noRawContent' => '診断用レシートに食事のテキストや写真は含まれません。',
			'meal.feedback.title' => 'どこが違いますか？',
			'meal.feedback.subtitle' => '分析の改善のために、1つ以上の問題を選んでください。',
			'meal.feedback.tellUsMore' => '詳しく教えてください',
			'meal.feedback.describeIncorrect' => '何が間違っていたか説明してください',
			'meal.feedback.submit' => '送信',
			'meal.feedback.issueFoodIdentification' => '食品の識別',
			'meal.feedback.issuePortionSize' => '分量の誤り',
			'meal.feedback.issueCalorieDistribution' => 'カロリー配分',
			'meal.feedback.issueMacrosWrong' => 'マクロが間違っている',
			'meal.feedback.issueMissingItems' => '欠けている項目',
			'meal.feedback.issueExtraItems' => '余分な項目',
			'meal.feedback.issueOther' => 'その他',
			'favorites.title' => 'お気に入り',
			'favorites.empty' => 'お気に入りはまだありません。',
			'favorites.searchPlaceholder' => 'お気に入りの食事を検索',
			'favorites.searchEmptyTitle' => '検索に一致するお気に入りはありません',
			'favorites.searchEmptySubtitle' => '別の食事名、分量、または食事タイプを試してください。',
			'favorites.sortLabel' => 'お気に入りを並べ替え',
			'favorites.undo' => '元に戻す',
			'favorites.removed' => ({required Object name}) => '${name}をお気に入りから削除しました',
			'favorites.sortOptions.recent' => '最近',
			'favorites.sortOptions.calories' => 'カロリー順',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'プロフィール',
			'profile.noProfileData' => 'プロフィールデータが見つかりません',
			'profile.yourProfile' => 'あなたのプロフィール',
			'profile.viewAndManage' => '健康情報を表示・管理する',
			'profile.sections.profile' => 'プロフィール',
			'profile.sections.basicInformation' => '基本情報',
			'profile.sections.goalsAndActivity' => '目標と活動',
			'profile.sections.calculatedValues' => '算出値',
			'profile.gender' => '性別',
			'profile.height' => '身長',
			'profile.weight' => '体重',
			'profile.age' => '年齢',
			'profile.weightGoal' => '体重目標',
			'profile.targetWeight' => '目標体重',
			'profile.activityLevel' => '活動レベル',
			'profile.healthMetrics' => '健康指標',
			'profile.notSet' => '未設定',
			'profile.years' => '歳',
			'profile.updatedSuccessfully' => 'プロフィールが正常に更新されました！',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => '日次目標',
			'profile.calculatedValues.calPerDay' => 'cal/日',
			'profile.calculatedValues.notAvailable' => '該当なし',
			'healthScore.title' => 'ヘルススコア',
			'healthScore.whyThisScore' => 'このスコアの理由',
			'healthScore.note' => 'このスコアは、特定された材料と栄養密度に基づくAIによる推定です。個別の食事アドバイスは専門家にご相談ください。',
			'healthScore.unhealthy' => '不健康',
			'healthScore.healthy' => '健康的',
			'healthScore.neutral' => '中立',
			'editProfile.title' => 'プロフィール編集',
			'editProfile.sections.personalInformation' => '個人情報',
			'editProfile.sections.physicalMeasurements' => '身体計測',
			'editProfile.sections.goalsAndActivity' => '目標と活動',
			'editProfile.gender' => '性別',
			'editProfile.dateOfBirth' => '生年月日',
			'editProfile.height' => '身長',
			'editProfile.weight' => '体重',
			'editProfile.weightGoal' => '体重目標',
			'editProfile.activityLevel' => '活動レベル',
			'editProfile.metric' => 'メートル法',
			'editProfile.imperial' => 'インペリアル',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'メートル法（cm）',
			'editProfile.imperialFtIn' => 'インペリアル（ft/in）',
			'editProfile.metricKg' => 'メートル法（kg）',
			'editProfile.imperialLbs' => 'インペリアル（lbs）',
			'editProfile.genders.male' => '男性',
			'editProfile.genders.female' => '女性',
			'editProfile.genders.other' => 'その他',
			'editProfile.weightGoals.loseWeight.name' => '体重を減らす',
			'editProfile.weightGoals.loseWeight.description' => 'カロリー不足を作って体重を減らします',
			'editProfile.weightGoals.maintainWeight.name' => '体重を維持',
			'editProfile.weightGoals.maintainWeight.description' => '現在の体重を維持します',
			'editProfile.weightGoals.gainWeight.name' => '体重を増やす',
			'editProfile.weightGoals.gainWeight.description' => 'カロリー余剰を作って体重を増やします',
			'editProfile.activityLevels.sedentary.name' => '座りがち',
			'editProfile.activityLevels.sedentary.description' => 'ほとんど運動しない',
			'editProfile.activityLevels.lightlyActive.name' => 'やや活動的',
			'editProfile.activityLevels.lightlyActive.description' => '週1〜3日程度の軽い運動',
			'editProfile.activityLevels.moderatelyActive.name' => '中程度に活動的',
			'editProfile.activityLevels.moderatelyActive.description' => '週3〜5日の中程度の運動',
			'editProfile.activityLevels.veryActive.name' => '非常に活動的',
			'editProfile.activityLevels.veryActive.description' => '週6〜7日の激しい運動',
			'editProfile.activityLevels.extremelyActive.name' => '極めて活動的',
			'editProfile.activityLevels.extremelyActive.description' => '非常に激しい運動や肉体労働',
			'settings.title' => '設定',
			'settings.sections.profile' => 'プロフィール',
			'settings.sections.localization' => 'ローカリゼーション',
			'settings.sections.notifications' => '通知',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.localInference' => 'デバイス上での解析',
			'settings.sections.supportAndLegal' => 'サポートと法務',
			'settings.sections.about' => 'このアプリについて',
			'settings.sections.dangerZone' => '危険領域',
			'settings.sections.developer' => '開発者',
			'settings.editProfile.title' => 'プロフィール編集',
			'settings.editProfile.subtitle' => '個人情報を更新する',
			'settings.language.title' => '言語',
			'settings.language.subtitle' => '希望する言語を選択してください',
			'settings.language.searchHint' => '言語を検索…',
			'settings.language.noResults' => '結果が見つかりません',
			'settings.heightUnit.title' => '身長の単位',
			'settings.weightUnit.title' => '体重の単位',
			'settings.mealReminders.title' => '食事リマインダー',
			'settings.mealReminders.subtitle' => 'タイムリーな通知で軌道に乗りましょう',
			'settings.localInference.title' => 'デバイス上での食事解析',
			'settings.localInference.subtitle' => '栄養計算の前に、Gemini Nanoを使用して対応している食事を解析します',
			'settings.localInference.unavailable' => 'このデバイスでは利用できません',
			'settings.localInference.rolloutUnavailable' => '対応ハードウェアは見つかりましたが、このアプリのバージョンでは機能が有効になっていません',
			'settings.localInference.modelSetup' => '有効にする前にGemini Nanoのダウンロードを完了させる必要があります',
			'settings.localInference.useLocalTitle' => 'デバイス上での解析を使用',
			'settings.localInference.useLocalSubtitle' => 'オプションであり、デフォルトではオフになっています。複雑な食事の場合、結果の信頼性が低くなることがあります。',
			'settings.localInference.disclosureTitle' => 'デバイス上での解析を有効にする前に',
			'settings.localInference.disclosureBody' => 'Gemini Nanoは、対応するAndroidデバイスで食材の特定と分量の推定が可能です。確認済みの食材案は、USDAの栄養データに基づいた計算のためCalorifyに送信されます。',
			'settings.localInference.disclosureLimit1' => '複雑な料理、隠れた食材、分量の特定が正しく行われない場合があります。',
			'settings.localInference.disclosureLimit2' => 'ダウンロード中、ビジー状態、バックグラウンド動作中、またはデバイスの制限により、モデルが利用できない場合があります。',
			'settings.localInference.disclosureLimit3' => 'ローカルでの解析が完了できない場合、このベータ版では元の食事内容が自動的にCalorifyに送信され、クラウドで解析されます。',
			'settings.localInference.acknowledgement' => '検出された食材と分量を確認する必要があることを理解しました。',
			'settings.localInference.enable' => '同意して有効にする',
			'settings.localInference.cancel' => 'キャンセル',
			'settings.theme.title' => 'テーマ',
			'settings.theme.light' => 'ライト',
			'settings.theme.dark' => 'ダーク',
			'settings.theme.system' => 'システム',
			'settings.sendFeedback.title' => 'フィードバックを送る',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel}の改善にご協力ください',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} アプリのフィードバック',
			'settings.sendFeedback.emailBodyPrefix' => '以下にフィードバックをご記入ください：',
			'settings.sendFeedback.appVersion' => 'アプリバージョン',
			'settings.sendFeedback.device' => 'デバイス',
			'settings.sendFeedback.osVersion' => 'OSバージョン',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => '食事履歴をエクスポート',
			'settings.exportMealHistory.subtitle' => '記録した食事のCSVを共有する',
			'settings.exportMealHistory.shareText' => 'あなたのCalorify食事履歴のエクスポート',
			'settings.exportMealHistory.failed' => ({required Object error}) => '食事履歴をエクスポートできませんでした: ${error}',
			'settings.clearAllData.title' => 'すべてのデータを消去',
			'settings.clearAllData.subtitle' => 'あなたの情報を元に戻せない形で削除します',
			'settings.clearAllData.confirmationTitle' => 'すべてのデータを消去しますか？',
			'settings.clearAllData.confirmationMessage' => 'この操作は元に戻せません。記録した全ての食事、お気に入り、プロフィール設定が永久に削除されます。',
			'settings.clearAllData.cancel' => 'キャンセル',
			'settings.clearAllData.clearEverything' => 'すべて消去',
			'settings.debugOptions.title' => 'デバッグオプション',
			'settings.developerModeEnabled' => '開発者モードが有効になりました！',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => '権限の表示と管理',
			'settings.healthConnect.unavailable.title' => 'Health Connectが利用できません',
			'settings.healthConnect.unavailable.description' => 'この端末ではHealth Connectが利用できません。Play StoreからHealth Connectをインストールするか（Android 9+）、Androidを14+にアップデートしてください。',
			'settings.healthConnect.permissions.title' => '権限',
			'settings.healthConnect.permissions.description' => 'Health Connect連携のために次の権限が要求されます：',
			'settings.healthConnect.permissions.granted' => '許可済み',
			'settings.healthConnect.permissions.notGranted' => '未許可',
			'settings.healthConnect.permissions.caloriesBurned.title' => '総消費カロリーの読み取り',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'アプリがHealth Connectから総消費カロリーを読み取れるようにします。',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'この権限はアプリ内で日次消費カロリーを表示し、1日の総エネルギー消費を理解するために使用されます。',
			'settings.healthConnect.permissions.nutritionRead.title' => '栄養データの読み取り',
			'settings.healthConnect.permissions.nutritionRead.description' => 'アプリがHealth Connectから栄養データを読み取れるようにします。',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'この権限により、他のアプリがHealth Connectへ記録した栄養情報を読み取り、栄養の包括的なビューを提供できます。',
			'settings.healthConnect.permissions.nutritionWrite.title' => '栄養データの書き込み',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'アプリが栄養データをHealth Connectに書き込めるようにします。',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'この権限により、記録した食事をHealth Connectへ同期し、他のヘルス／フィットネスアプリでも栄養データを利用可能にします。',
			'settings.healthConnect.managePermissions' => '権限を管理',
			'settings.healthConnect.openSettings' => 'Health Connect設定を開く',
			'settings.healthConnect.requestPermissions' => '権限を要求',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => '権限要求がキャンセルされたか失敗しました。もう一度お試しいただくか、Health Connectの設定で手動で権限を付与してください。',
			'settings.healthConnect.permissionRequestFailed' => '権限の要求ができませんでした。もう一度お試しいただくか、Health Connectの設定で手動で権限を付与してください。',
			'settings.healthConnect.requestingPermissions' => '要求中…',
			'settings.about.title' => 'このアプリについて',
			'settings.about.tagline' => '速く、無料、プライバシー優先のカロリー意識',
			'settings.about.ourStory.title' => '私たちのストーリー',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel}はシンプルなフラストレーションから生まれました：多くのカロリートラッキングアプリは複雑すぎる、手入力が多すぎる、高額なサブスクリプションが必要、あるいはプライバシーを損なう。\n\nソロ開発者として、もっとシンプルで公平なものを作りたかった—AIで手間を減らし、速くて無料のまま、健康データを尊重するアプリを。\n\n${appLabel}は私が欲しかったアプリです：アカウント不要、トラッキングなし、広告なし—明確で実用的なインサイトとあなたの健康目標だけ。',
			'settings.about.privacy.title' => 'あなたのプライバシーを重視しています',
			'settings.about.privacy.description' => 'プライバシーは後付けではなく設計原則です。実際にどういうことかは以下の通りです：',
			'settings.about.privacy.noAccounts' => 'アカウント不要\nすぐにアプリを使えます。サインアップや個人情報は不要です。',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => '行動トラッキングなし\n${appLabel}はあなたの行動を監視したり、使用プロファイルを構築したり、アプリやウェブを横断して追跡したりしません。',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => '広告なしで設計\n${appLabel}は広告やデータ駆動のマネタイズなしで動作するよう作られています。',
			'settings.about.privacy.noDataSelling' => 'データ販売なし\nあなたの健康データが第三者に販売または共有されることはありません。',
			'settings.about.privacy.localStorage' => 'ローカルファーストの保存\nあなたのデータは端末に留まります。',
			'settings.about.privacy.privacyPolicy' => 'プライバシーポリシー',
			'settings.about.developer.title' => 'ソロ開発者による開発',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel}は、落ち着いたプライバシー重視の健康ソフトウェアを作ることに集中する単独の開発者によって作られ、維持されています。\n\nフィードバックは個人で読み、アプリの方向性を形作るのに役立ちます。',
			'settings.about.developer.website' => 'ウェブサイト',
			'settings.about.developer.email' => 'メール',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel}を気に入っていますか？',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'あなたのフィードバックは${appLabel}を全員にとってより良くします。',
			'settings.about.feedback.rateApp' => 'Play Storeで評価する',
			'settings.about.feedback.sendFeedback' => 'フィードバックを送る',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'ビルド ${buildNumber}',
			'reminders.title' => 'リマインダーで習慣を維持',
			'reminders.description' => '食事を記録する優しいリマインダーを受け取り、栄養目標の継続をサポートします',
			'reminders.notificationsEnabled' => '通知が有効です',
			'reminders.notificationsDisabled' => '通知が無効です',
			'reminders.enabledSubtitle' => '食事のリマインダーを受け取ります',
			'reminders.disabledSubtitle' => '通知を有効にして食事リマインダーを受け取りましょう',
			'reminders.mealReminders' => '食事リマインダー',
			'reminders.breakfast' => '朝食',
			'reminders.lunch' => '昼食',
			'reminders.dinner' => '夕食',
			'reminders.snack' => 'おやつ',
			'reminders.unknown' => '不明',
			'reminders.change' => '変更',
			'reminders.enableNotifications' => '通知を有効にする',
			'reminders.skipForNow' => 'とりあえずスキップ',
			'reminders.saveChanges' => '変更を保存',
			'reminders.enabledSuccessfully' => '通知を有効にしました！',
			'reminders.permissionDenied' => '通知権限が拒否されました',
			'reminders.errorEnabling' => ({required Object error}) => '通知の有効化中にエラーが発生しました: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => '設定の完了中にエラーが発生しました: ${error}',
			'notifications.breakfast.title' => '朝ごはんの時間です！ 🍳',
			'notifications.breakfast.body' => '朝食を記録するのを忘れずに',
			'notifications.lunch.title' => 'お昼の時間です！ 🥗',
			'notifications.lunch.body' => '昼食を記録しましょう',
			'notifications.dinner.title' => '夕食の時間です！ 🍽️',
			'notifications.dinner.body' => '夕食を記録するのを忘れずに',
			'notifications.snack.title' => 'おやつの時間です！ 🍎',
			'notifications.snack.body' => '健康的なおやつを記録しましょう',
			'notifications.test.title' => 'テスト通知',
			'login.title' => 'ログイン',
			'login.signInWithGoogle' => 'Googleでサインイン',
			'login.signInFailed' => 'Googleサインインに失敗するか、キャンセルされました。',
			'disclaimer.pleaseNote' => 'ご注意',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel}は推定の栄養情報を提供します。精度は入力と食品のばらつきに依存します。参考としてご利用ください。個別の食事相談は専門家にご相談ください。',
			'disclaimer.snap.portionSize.title' => '分量',
			'disclaimer.snap.portionSize.description' => '推定の精度は分量の正確な評価に大きく依存します。',
			'disclaimer.snap.preparationMethods.title' => '調理方法',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => '調理方法は栄養成分を大きく変える可能性があります。${appLabel}の推定が必ずしもこれらを考慮しているとは限りません。',
			'disclaimer.snap.ingredients.title' => '材料',
			'disclaimer.snap.ingredients.description' => '材料が複雑で隠れた材料が多い料理は、推定精度が低くなる可能性があります。',
			'disclaimer.snap.databaseLimitations.title' => 'データベースの制限',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}の食品データベースは豊富ですが、すべての食品やバリエーションを網羅しているわけではありません。',
			'disclaimer.weightEstimate.title' => '体重推定について',
			'disclaimer.weightEstimate.description' => '推定される体重変化は、単純なカロリー収支モデルに基づく理論的な推定です。モチベーションの指標として意図されており、実際の体重予測ではありません。',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'カロリーの精度',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'この推定は、記録されたカロリー摂取と消費の精度に依存します。不正確な記録は不正確な推定を生みます。',
			'disclaimer.weightEstimate.biologicalFactors.title' => '生物学的要因',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => '実際の体重変化は代謝、ホルモン、睡眠、ストレス、水分量など個人差のある要因に影響され、${appLabel}では測定できません。',
			'disclaimer.weightEstimate.waterWeight.title' => '水分による変動',
			'disclaimer.weightEstimate.waterWeight.description' => '日々の体重は水分保持、消化、タイミングにより大きく変動することがあります。推定はこれらの一時的な変動を考慮していません。',
			'disclaimer.weightEstimate.professionalGuidance.title' => '専門的な助言',
			'disclaimer.weightEstimate.professionalGuidance.description' => '医療上の判断にこの推定を使用しないでください。個別の体重管理については医療専門家や登録栄養士に必ず相談してください。',
			'disclaimer.healthMetrics.description' => 'これらの指標は体のエネルギー必要量を理解し、栄養目標を導くのに役立ちます。',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => '基礎代謝量（BMR）は、呼吸や循環など安静時に体が基本機能を維持するために消費するカロリー量です。BMRは年齢、性別、身長、体重に依存します。筋肉量が多い、若い、男性であるほどBMRは高くなる傾向があります。逆に筋肉量が少ない、年齢が高い、または女性であると低くなる傾向があります。',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => '総日次エネルギー消費（TDEE）は、BMRに身体活動や日常の動きによる消費カロリーを加えた1日あたりの総消費カロリーです。TDEEはBMRと活動レベルに依存します。活動的であったりBMRが高いとTDEEは高くなります。',
			'disclaimer.healthMetrics.dailyGoal.title' => '日次目標',
			'disclaimer.healthMetrics.dailyGoal.description' => '日次目標は、TDEEと体重目標に基づく推奨摂取カロリーです。減量の場合はTDEEより少ないカロリーを、維持はTDEEと同等、増量はTDEEより多いカロリーを摂取します。健康的なペースで目標体重を達成するのに役立ちます。',
			'disclaimer.calorieExpenditure.title' => '消費カロリーの推定',
			'disclaimer.calorieExpenditure.description' => 'Health Connectのデータが利用できない場合、今日の消費カロリーを基礎代謝（BMR）と活動レベル（TDEE）を使用して、経過した日の割合に応じて推定します。',
			'disclaimer.calorieExpenditure.howCalculated.title' => '推定の計算方法',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'プロフィールに基づいてTDEEを算出し、経過した日の割合（時間＋分）/24を掛けて、これまでの消費カロリーを推定します。',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => '専門的な助言',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'この推定を医療上の判断に使用しないでください。個別の体重管理については医療専門家や登録栄養士に必ず相談してください。',
			_ => null,
		} ?? switch (path) {
			'localNutritionPhase4.nutritionBundled' => 'ダウンロード済みのUSDAパックから栄養情報を照合しました',
			'localNutritionPhase4.nutritionCached' => '端末内のUSDAキャッシュから栄養情報を照合しました',
			'localNutritionPhase4.nutritionMixed' => 'ダウンロード済み、キャッシュ済み、リモートのUSDAデータから栄養情報を統合しました',
			'localNutritionPhase4.calculationLocal' => 'この端末でカロリーとマクロ栄養素を計算しました',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: ダウンロード済みUSDAパック',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: 端末内USDAキャッシュ',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: Calorify経由で取得したUSDAデータ',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: 決定論的な栄養定数',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · データセット ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => '少なめ',
			'localNutritionPhase4.portionEstimated' => '推定量',
			'localNutritionPhase4.portionLarger' => '多め',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => '${ingredient}の量に最も近いものはどれでしたか？',
			'localNutritionPhase4.mealTypeQuestion' => 'どの食事でしたか？',
			'localNutritionPhase4.localNutritionTip' => '検証済みのローカル栄養データから計算しました。',
			'localNutritionPhase4.offlineNutritionTitle' => '栄養データをダウンロード',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'すべての食材が対象の場合、この端末で検証済みのUSDAデータと決定論的計算を使用します。',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'このアプリのリリースではローカル栄養データを利用できません。',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => '検証済みの栄養パックはダウンロードされていません。',
			'localNutritionPhase4.offlineNutritionInstalling' => '栄養データをダウンロードして検証しています…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'パック ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => 'キャッシュ済みUSDAデータ ${count}件 · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => '更新を確認',
			'localNutritionPhase4.offlineNutritionClear' => 'ローカル栄養データを消去',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'ローカル栄養データを消去しますか？',
			'localNutritionPhase4.offlineNutritionClearBody' => 'ダウンロード済みのUSDAパックと検索キャッシュを削除します。記録済みの食事には、保存時に使用した正確な栄養スナップショットが保持されます。',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'データを消去',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'ローカル栄養データをダウンロードして検証できませんでした: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'ローカル栄養データを消去しました',
			'common.close' => '閉じる',
			'common.kContinue' => '続ける',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel}を楽しんでいますか？',
			'feedbackRating.yes' => 'はい、楽しんでいます',
			'feedbackRating.no' => 'あまり…',
			'feedbackRating.rateStepHeading' => 'Play Storeで評価',
			'feedbackRating.emailStepHeading' => 'メールでフィードバックを送信',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => '簡単な評価が他の人の${appLabel}発見を助け、開発継続の支えになります。よろしければ評価をお願いします。',
			'feedbackRating.shareFeedbackViaEmail' => 'あなたのフィードバックが今後を形作ります—すべてのメッセージを目を通しています。メールで共有しますか？',
			'feedbackRating.rateCta' => 'Play Storeで評価',
			'feedbackRating.maybeLater' => '後で',
			'feedbackRating.sendFeedback' => 'フィードバックを送る',
			'feedbackRating.noThanks' => '結構です',
			'feedbackRating.aboutUsDescription' => '少人数で丁寧に作られています。プライバシー、シンプルさ、より良い食習慣の構築に注力しています。',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '${appLabel}の開発者に興味がありますか？こちらを見てください：',
			'feedbackRating.aboutUsLinkLabel' => '私たちについて',
			'feedbackRating.thankYouMessage' => 'ありがとうございます！また別の機会にお伺いします。',
			'health.syncFailed' => 'Health Connectへの同期に失敗しました',
			'health.mealSynced' => '食事をHealth Connectに同期しました',
			_ => null,
		};
	}
}
