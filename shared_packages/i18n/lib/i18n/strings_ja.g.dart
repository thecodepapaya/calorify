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
class TranslationsJa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override String get language => '日本語';
	@override String get flag => '🇯🇵';
	@override String appLabel({required Object env}) => 'Calorify${env}';
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
	@override late final _TranslationsCommonJa common = _TranslationsCommonJa._(_root);
	@override late final _TranslationsFeedbackRatingJa feedbackRating = _TranslationsFeedbackRatingJa._(_root);
	@override late final _TranslationsErrorsJa errors = _TranslationsErrorsJa._(_root);
	@override late final _TranslationsDebugJa debug = _TranslationsDebugJa._(_root);
	@override late final _TranslationsHealthJa health = _TranslationsHealthJa._(_root);
}

// Path: onboarding
class _TranslationsOnboardingJa implements TranslationsOnboardingEn {
	_TranslationsOnboardingJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel}へようこそ';
	@override String get subtitle => 'AIによるあなたの個人的な栄養コンパニオン';
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
class _TranslationsTabsJa implements TranslationsTabsEn {
	_TranslationsTabsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'ダッシュボード';
	@override String get history => '履歴';
}

// Path: home
class _TranslationsHomeJa implements TranslationsHomeEn {
	_TranslationsHomeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
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
class _TranslationsHistoryJa implements TranslationsHistoryEn {
	_TranslationsHistoryJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get noMeals => '記録された食事はありません';
	@override String get emptyMessage => '最後の食事の写真を撮ってここに記録しましょう。';
	@override String get today => '今日';
	@override String get yesterday => '昨日';
}

// Path: meal
class _TranslationsMealJa implements TranslationsMealEn {
	_TranslationsMealJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'おっと！';
	@override String get delete => '削除';
	@override String get editMeal => '食事を編集';
	@override String get addMeal => '食事を追加';
	@override String get saveMeal => '食事を保存';
	@override String get save => '保存';
	@override String get mealName => '食事の名前';
	@override String get mealNameHint => '例：スクランブルエッグとトースト';
	@override String get mealQuantity => '食事の分量';
	@override String get mealQuantityHint => '例：1杯、2枚';
	@override String get timeOfMeal => '食事の時間';
	@override String get timeOfMealHint => '食事をした時間を選択してください';
	@override String get mealType => '食事の種類';
	@override late final _TranslationsMealNutritionJa nutrition = _TranslationsMealNutritionJa._(_root);
	@override late final _TranslationsMealDeleteConfirmationJa deleteConfirmation = _TranslationsMealDeleteConfirmationJa._(_root);
	@override String get addedToLog => '食事がログに追加されました！';
	@override String couldNotAdd({required Object error}) => '食事を追加できませんでした: ${error}';
	@override String get savedSuccessfully => '食事を追加しました！';
	@override String get updatedSuccessfully => '食事を更新しました！';
	@override String errorSaving({required Object error}) => '食事の保存中にエラーが発生しました：${error}';
	@override String get removedFromFavorites => 'お気に入りから削除されました！';
	@override String get savedAsFavorite => '食事がお気に入りとして保存されました！';
	@override String couldNotUpdateFavorite({required Object error}) => 'お気に入りの更新に失敗しました: ${error}';
	@override String failedToProcess({required Object error}) => '処理に失敗しました: ${error}';
	@override String failedToProcessImage({required Object error}) => '画像の処理に失敗しました: ${error}';
	@override String errorCompressingImage({required Object error}) => '画像の圧縮エラー: ${error}';
	@override String get failedToSave => 'データの保存に失敗しました。再試行してください。';
	@override String get skip => 'スキップ';
	@override late final _TranslationsMealVariationJa variation = _TranslationsMealVariationJa._(_root);
}

// Path: favorites
class _TranslationsFavoritesJa implements TranslationsFavoritesEn {
	_TranslationsFavoritesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'お気に入り';
	@override String get empty => 'まだお気に入りの食事はありません。';
}

// Path: profile
class _TranslationsProfileJa implements TranslationsProfileEn {
	_TranslationsProfileJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィール';
	@override String get noProfileData => 'プロフィールデータが見つかりません';
	@override String get yourProfile => 'あなたのプロフィール';
	@override String get viewAndManage => '健康情報を表示・管理';
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
	@override String get years => '年';
	@override String get updatedSuccessfully => 'プロフィールが正常に更新されました！';
	@override late final _TranslationsProfileCalculatedValuesJa calculatedValues = _TranslationsProfileCalculatedValuesJa._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreJa implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '健康スコア';
	@override String get whyThisScore => 'このスコアの理由は？';
	@override String get note => 'このスコアは、特定された成分と栄養密度に基づくAIの推定値です。食事に関するアドバイスは常に専門家に相談してください。';
	@override String get unhealthy => '不健康';
	@override String get healthy => '健康';
	@override String get neutral => '中立';
}

// Path: editProfile
class _TranslationsEditProfileJa implements TranslationsEditProfileEn {
	_TranslationsEditProfileJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィールを編集';
	@override late final _TranslationsEditProfileSectionsJa sections = _TranslationsEditProfileSectionsJa._(_root);
	@override String get gender => '性別';
	@override String get dateOfBirth => '生年月日';
	@override String get height => '身長';
	@override String get weight => '体重';
	@override String get weightGoal => '体重目標';
	@override String get activityLevel => '活動レベル';
	@override String get metric => 'メートル法';
	@override String get imperial => 'インペリアル';
	@override String get unitCm => '㎝';
	@override String get unitFt => 'ft';
	@override String get unitKg => '㎏';
	@override String get unitLbs => 'lb';
	@override String get metricCm => 'メートル法 (cm)';
	@override String get imperialFtIn => 'インペリアル (ft/in)';
	@override String get metricKg => 'メートル法 (kg)';
	@override String get imperialLbs => 'インペリアル (lbs)';
	@override late final _TranslationsEditProfileGendersJa genders = _TranslationsEditProfileGendersJa._(_root);
	@override late final _TranslationsEditProfileWeightGoalsJa weightGoals = _TranslationsEditProfileWeightGoalsJa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsJa activityLevels = _TranslationsEditProfileActivityLevelsJa._(_root);
}

// Path: settings
class _TranslationsSettingsJa implements TranslationsSettingsEn {
	_TranslationsSettingsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '設定';
	@override late final _TranslationsSettingsSectionsJa sections = _TranslationsSettingsSectionsJa._(_root);
	@override late final _TranslationsSettingsEditProfileJa editProfile = _TranslationsSettingsEditProfileJa._(_root);
	@override late final _TranslationsSettingsLanguageJa language = _TranslationsSettingsLanguageJa._(_root);
	@override late final _TranslationsSettingsHeightUnitJa heightUnit = _TranslationsSettingsHeightUnitJa._(_root);
	@override late final _TranslationsSettingsWeightUnitJa weightUnit = _TranslationsSettingsWeightUnitJa._(_root);
	@override late final _TranslationsSettingsMealRemindersJa mealReminders = _TranslationsSettingsMealRemindersJa._(_root);
	@override late final _TranslationsSettingsThemeJa theme = _TranslationsSettingsThemeJa._(_root);
	@override late final _TranslationsSettingsSendFeedbackJa sendFeedback = _TranslationsSettingsSendFeedbackJa._(_root);
	@override late final _TranslationsSettingsClearAllDataJa clearAllData = _TranslationsSettingsClearAllDataJa._(_root);
	@override late final _TranslationsSettingsDebugOptionsJa debugOptions = _TranslationsSettingsDebugOptionsJa._(_root);
	@override String get developerModeEnabled => '開発者モードが有効になりました！';
	@override late final _TranslationsSettingsHealthConnectJa healthConnect = _TranslationsSettingsHealthConnectJa._(_root);
	@override late final _TranslationsSettingsAboutJa about = _TranslationsSettingsAboutJa._(_root);
	@override late final _TranslationsSettingsAppInfoJa appInfo = _TranslationsSettingsAppInfoJa._(_root);
}

// Path: reminders
class _TranslationsRemindersJa implements TranslationsRemindersEn {
	_TranslationsRemindersJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'リマインダーで進捗を維持';
	@override String get description => '食事を記録し、栄養目標を一貫して守るための穏やかなリマインダーを受け取ります';
	@override String get notificationsEnabled => '通知が有効';
	@override String get notificationsDisabled => '通知が無効';
	@override String get enabledSubtitle => '食事リマインダーを受け取ります';
	@override String get disabledSubtitle => '通知を有効にして食事リマインダーを受け取りましょう';
	@override String get mealReminders => '食事リマインダー';
	@override String get breakfast => '朝食';
	@override String get lunch => '昼食';
	@override String get dinner => '夕食';
	@override String get snack => 'スナック';
	@override String get unknown => '不明';
	@override String get change => '変更';
	@override String get enableNotifications => '通知を有効にする';
	@override String get skipForNow => '今はスキップ';
	@override String get saveChanges => '変更を保存';
	@override String get enabledSuccessfully => '通知が正常に有効になりました！';
	@override String get permissionDenied => '通知の許可が拒否されました';
	@override String errorEnabling({required Object error}) => '通知を有効にする際のエラー: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'セットアップの完了に関するエラー: ${error}';
}

// Path: notifications
class _TranslationsNotificationsJa implements TranslationsNotificationsEn {
	_TranslationsNotificationsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastJa breakfast = _TranslationsNotificationsBreakfastJa._(_root);
	@override late final _TranslationsNotificationsLunchJa lunch = _TranslationsNotificationsLunchJa._(_root);
	@override late final _TranslationsNotificationsDinnerJa dinner = _TranslationsNotificationsDinnerJa._(_root);
	@override late final _TranslationsNotificationsSnackJa snack = _TranslationsNotificationsSnackJa._(_root);
	@override late final _TranslationsNotificationsTestJa test = _TranslationsNotificationsTestJa._(_root);
}

// Path: login
class _TranslationsLoginJa implements TranslationsLoginEn {
	_TranslationsLoginJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ログイン';
	@override String get signInWithGoogle => 'Googleでサインイン';
	@override String get signInFailed => 'Googleサインインに失敗しました、またはキャンセルされました。';
}

// Path: disclaimer
class _TranslationsDisclaimerJa implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'ご注意ください';
	@override late final _TranslationsDisclaimerSnapJa snap = _TranslationsDisclaimerSnapJa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateJa weightEstimate = _TranslationsDisclaimerWeightEstimateJa._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsJa healthMetrics = _TranslationsDisclaimerHealthMetricsJa._(_root);
}

// Path: common
class _TranslationsCommonJa implements TranslationsCommonEn {
	_TranslationsCommonJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get close => '閉じる';
	@override String get kContinue => '続ける';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingJa implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel} を気に入っていますか？ご利用の感想は私たちにとって大切です。';
	@override String get yes => 'はい、気に入っています';
	@override String get no => 'あまり良くありません';
	@override String soloDevMessage({required Object appLabel}) => '${appLabel} はひとりで開発されています。Play ストアでの簡単な評価は他の人が見つけやすくなり、開発の継続にもつながります — 本当に助かります。評価をしていただけますか？';
	@override String shareFeedbackViaEmail({required Object appLabel}) => '${appLabel} はひとりで開発されています。皆さんのフィードバックが今後の改善に直結します — すべてのメッセージを拝見しています。メールでご意見を共有しますか？';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '${appLabel} の開発者について知りたいですか？こちらをご覧ください ';
	@override String get aboutUsLinkLabel => '私たちについて';
}

// Path: errors
class _TranslationsErrorsJa implements TranslationsErrorsEn {
	_TranslationsErrorsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'プロフィールデータの読み込みエラー';
	@override String get somethingWentWrong => '何かがうまくいきませんでした。';
}

// Path: debug
class _TranslationsDebugJa implements TranslationsDebugEn {
	_TranslationsDebugJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'デバッグオプション';
	@override late final _TranslationsDebugSectionsJa sections = _TranslationsDebugSectionsJa._(_root);
	@override String get showActiveNotifications => 'アクティブな通知を表示';
	@override String get scheduleTestNotification => 'テスト通知をスケジュール (10秒)';
	@override String get triggerBreakfastNotification => '朝食通知を発生させる';
	@override String get cancelAllNotifications => 'すべての通知をキャンセル';
	@override String get activeNotifications => 'アクティブな通知';
	@override String get noTitle => 'タイトルなし';
	@override String get noBody => '本文なし';
	@override String get fetchTodaysSteps => '今日のステップを取得';
	@override String get fetchTodaysCalories => '今日のカロリーを取得';
	@override String get fetchLatestWeight => '最新の体重を取得';
	@override String get fetchLatestHeight => '最新の身長を取得';
	@override String get writeTestWeight => 'テスト体重を書く (70kg)';
	@override String get writeTestHeight => 'テスト身長を書く (175cm)';
	@override String get syncLast7Days => '最後の7日間を同期';
	@override String get sync7DaysTitle => '7日間の同期';
	@override String get checkCurrentLocale => '現在のロケールを確認';
	@override String get currentLocale => '現在のロケール';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => '言語: ${languageCode}\n国: ${countryCode}\n単位システム: ${unitSystem}';
	@override String get latestWeight => '最新の体重';
	@override String get latestHeight => '最新の身長';
	@override String get todaysCalories => '今日のカロリー';
	@override String totalCaloriesBurned({required Object calories}) => '過去7日間で燃焼した合計カロリー: ${calories}';
	@override String syncSuccess({required Object count}) => '過去7日間のステップ、カロリー、体重に関する ${count} データポイントを正常に取得しました。';
	@override String get noWeightData => '過去30日間に体重データが見つかりませんでした。';
	@override String get noHeightData => '過去1年間に身長データが見つかりませんでした。';
	@override String get noCalorieData => '今日はカロリーデータが見つかりませんでした。';
	@override String get weightWritten => 'テスト体重 (70kg) を正常に書き込みました。';
	@override String get weightWriteFailed => 'テスト体重の書き込みに失敗しました。';
	@override String get heightWritten => 'テスト身長 (175cm) を正常に書き込みました。';
	@override String get heightWriteFailed => 'テスト身長の書き込みに失敗しました。';
	@override String get noNotifications => 'アクティブな通知はありません。';
	@override String get testNotificationScheduled => '10秒後にテスト通知がスケジュールされました。';
	@override String get testNotificationBody => 'これは、今から10秒後にスケジュールされたテスト通知です。';
	@override String get breakfastNotificationTriggered => '朝食通知がトリガーされました。';
	@override String get allNotificationsCancelled => 'すべての通知がキャンセルされました。';
	@override String get fetchingData => '過去7日間のデータを取得しています...';
	@override String id({required Object id}) => 'ID: ${id}';
	@override String get showFeedbackRatingSheet => 'フィードバック／評価シートを表示';
	@override String get clearUserPreferences => 'ユーザー設定をクリア';
	@override String get clearUserPreferencesConfirmationTitle => 'ユーザー設定をクリアしますか？';
	@override String get clearUserPreferencesConfirmationMessage => 'テーマ、言語、フィードバック設定がリセットされます。食事データやプロフィールには影響しません。';
	@override String get clearUserProfile => 'ユーザープロフィールをクリア';
	@override String get clearUserProfileConfirmationTitle => 'ユーザープロフィールをクリアしますか？';
	@override String get clearUserProfileConfirmationMessage => '日々の目標、身長、体重などのプロフィールデータが削除されます。食事データや設定には影響しません。';
	@override String get clear => 'クリア';
	@override String get cancel => 'キャンセル';
}

// Path: health
class _TranslationsHealthJa implements TranslationsHealthEn {
	_TranslationsHealthJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connectへの同期に失敗しました。';
	@override String get mealSynced => '食事がHealth Connectと同期されました。';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesJa implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionJa foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionJa._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisJa aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisJa._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationJa healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationJa._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderJa implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたの性別は何ですか？';
	@override String get description => '性別は基礎代謝率 (BMR) を正確に計算するのに役立ちます。';
	@override String get next => '次へ';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightJa implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたの身長はどれくらいですか？';
	@override String get description => 'あなたの身長は、BMIとエネルギーの必要量を正確に計算するのに役立ちます。';
	@override String get metric => 'メートル法';
	@override String get imperial => 'インペリアル';
	@override String get next => '次へ';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightJa implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => '現在の体重はどれくらいですか？';
	@override String get currentDescription => '現在の体重は、あなたの日々の目標をパーソナライズするために重要です。';
	@override String get targetTitle => '目標体重はどれくらいですか？';
	@override String get targetDescription => '目標体重を設定することで、長期的な計画を決定する手助けになります。';
	@override String get metric => 'メートル法';
	@override String get imperial => 'インペリアル';
	@override String get next => '次へ';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeJa implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたの誕生日はいつですか？';
	@override String get description => 'あなたの年齢は、カロリーの必要量を正確に計算するのに役立ちます。';
	@override String get next => '次へ';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleJa implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get underweight => '低体重';
	@override String get healthy => '健康';
	@override String get overweight => '過体重';
	@override String get obese => '肥満';
	@override late final _TranslationsOnboardingBmiScaleCategoriesJa categories = _TranslationsOnboardingBmiScaleCategoriesJa._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesJa messages = _TranslationsOnboardingBmiScaleMessagesJa._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalJa implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたの目標は何ですか？';
	@override String get description => '達成したいことを最もよく表す目標を選んでください。';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelJa implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたはどれくらい活動的ですか？';
	@override String get description => 'これにより、日々のカロリー必要量をより正確に計算できます。';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectJa implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connectと接続';
	@override String get description => '健康データを同期して、より良い洞察を得て自動カロリートラッキングを行いましょう';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingJa automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingJa._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsJa progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsJa._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationJa seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationJa._(_root);
	@override String get connected => 'Health Connectに接続済み';
	@override String get notConnected => 'Health Connectに未接続';
	@override String get setup => 'Health Connectを設定';
	@override String get skipForNow => '今はスキップ';
	@override String get statusConnected => 'Health Connectが接続されました。';
	@override String get statusSuccess => 'Health Connectが正常に接続されました！';
	@override String statusPermissionDenied({required Object appLabel}) => '権限が拒否されました。${appLabel}のために、お使いの電話の設定からHealth Connectの権限を有効にしてください。';
	@override String statusError({required Object error}) => 'Health Connectの設定中にエラーが発生しました: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementJa implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessJa trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessJa._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileJa healthProfile = _TranslationsOnboardingReinforcementHealthProfileJa._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleJa goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleJa._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalJa implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '日々の目標を設定';
	@override String get titleSet => 'あなたのデイリーゴール';
	@override String get description => 'ウェルネスの旅を始める準備はできましたか？進捗を促進させるために、下にあなたのデイリーカロリー目標を設定してください。';
	@override String get descriptionSet => 'コンパスが設定されました！これがあなたの進むべきデイリーカロリー目標です。';
	@override String get yourGoal => 'あなたの目標';
	@override String get dailyCalories => 'デイリーカロリー (kcal)';
	@override String get setGoal => '目標を設定';
	@override String get intake => '摂取';
	@override String get burned => '消費';
	@override String get weightImpact => '体重への影響';
	@override String get estLoss => '推定減少量';
	@override String get estGain => '推定増加量';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryJa implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'デイリーサマリー';
	@override String get calories => 'カロリー';
	@override String get carbs => '炭水化物';
	@override String get protein => 'タンパク質';
	@override String get fat => '脂肪';
	@override String get fiber => '繊維';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressJa implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '今日のマクロ分配';
	@override String get target => '目標';
	@override String get current => '現在';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryJa implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '7日間のマクロ履歴';
	@override String get noHistoryYet => '履歴はまだありません。';
	@override String get startLogging => '食事を記録し始めて、ここで7日間のマクロトレンドを確認しましょう。';
}

// Path: home.mealLog
class _TranslationsHomeMealLogJa implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ログされた食事';
	@override String get emptyMessage => '最後の食事の写真を撮ってここに記録しましょう。';
	@override String get noMealsToday => '今日の食事はまだ記録されていません';
	@override String get seeAllMeals => 'すべての食事を見る';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionJa implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AIでクイック追加';
	@override String get description => '食事を説明して、AIに詳細を処理させましょう。';
	@override String get hint => '例：朝食に大きなオートミールのボウルをバナナスライスとホエイパウダーを加えて食べました...';
	@override String get analyzeMeal => '食事を分析';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsJa implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'お気に入りの食事';
	@override String get description => 'お気に入りの食事をすぐに追加します。';
	@override String get noFavorites => 'まだお気に入りの食事はありません。';
	@override String get addFavoriteHint => '食事の星をクリックしてお気に入りにマークします。';
	@override String get seeAll => 'すべてを見る';
	@override String get add => '追加';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapJa implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '食事を撮影して追跡';
	@override String get description => 'カメラを使って食べ物の写真を撮ってAI分析を行います。';
	@override String get openCamera => 'カメラを開く';
	@override String get gallery => 'ギャラリー';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthJa implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connectと同期';
	@override String get description => 'あなたの栄養データをHealth Connectと同期します';
	@override String get install => 'インストール';
	@override String get connect => '接続';
}

// Path: meal.nutrition
class _TranslationsMealNutritionJa implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get calories => 'カロリー';
	@override String get carbs => '炭水化物 (g)';
	@override String get protein => 'たんぱく質 (g)';
	@override String get fat => '脂肪 (g)';
	@override String get fiber => '繊維 (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationJa implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '食事を削除';
	@override String get message => '本当にこの食事のエントリーを削除してもよろしいですか？';
	@override String get cancel => 'キャンセル';
	@override String get delete => '削除';
}

// Path: meal.variation
class _TranslationsMealVariationJa implements TranslationsMealVariationEn {
	_TranslationsMealVariationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String question({required Object total, required Object current}) => '全${total}問中 ${current}問目';
	@override String get noVariationsAvailable => '利用可能なバリエーションはありません';
}

// Path: profile.sections
class _TranslationsProfileSectionsJa implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'プロフィール';
	@override String get basicInformation => '基本情報';
	@override String get goalsAndActivity => '目標と活動';
	@override String get calculatedValues => '計算された値';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesJa implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get bmr => '基礎代謝率 (BMR)';
	@override String get tdee => '1日の総消費カロリー (TDEE)';
	@override String get dailyGoal => '1日の目標';
	@override String get calPerDay => 'カロリー/日';
	@override String get notAvailable => '利用不可';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsJa implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => '個人情報';
	@override String get physicalMeasurements => '身体測定';
	@override String get goalsAndActivity => '目標と活動';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersJa implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get male => '男性';
	@override String get female => '女性';
	@override String get other => 'その他';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsJa implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightJa loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightJa._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightJa maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightJa._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightJa gainWeight = _TranslationsEditProfileWeightGoalsGainWeightJa._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsJa implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryJa sedentary = _TranslationsEditProfileActivityLevelsSedentaryJa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveJa lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveJa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveJa moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveJa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveJa veryActive = _TranslationsEditProfileActivityLevelsVeryActiveJa._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveJa extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveJa._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsJa implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'プロフィール';
	@override String get localization => 'ローカライズ';
	@override String get notifications => '通知';
	@override String get healthConnect => 'ヘルスコネクト';
	@override String get supportAndLegal => 'サポートと法律';
	@override String get about => 'について';
	@override String get dangerZone => '危険ゾーン';
	@override String get developer => '開発者';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileJa implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィールを編集';
	@override String get subtitle => '個人情報を更新';
}

// Path: settings.language
class _TranslationsSettingsLanguageJa implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '言語';
	@override String get subtitle => 'お好みの言語を選択してください';
	@override String get searchHint => '言語を検索...';
	@override String get noResults => '結果が見つかりません';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitJa implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '身長の単位';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitJa implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '体重の単位';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersJa implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '食事リマインダー';
	@override String get subtitle => 'タイムリーなアラートで進捗を維持';
}

// Path: settings.theme
class _TranslationsSettingsThemeJa implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'テーマ';
	@override String get light => 'ライト';
	@override String get dark => 'ダーク';
	@override String get system => 'システム';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackJa implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'フィードバックを送信';
	@override String subtitle({required Object appLabel}) => '${appLabel}の改善にご協力ください';
	@override String emailSubject({required Object appLabel}) => '${appLabel}アプリフィードバック';
	@override String get emailBodyPrefix => '以下にフィードバックをご記入ください:';
	@override String get appVersion => 'アプリのバージョン';
	@override String get device => 'デバイス';
	@override String get osVersion => 'OSバージョン';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataJa implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'すべてのデータをクリア';
	@override String get subtitle => 'すべての情報を取り消し不可能に削除します';
	@override String get confirmationTitle => 'すべてのデータをクリアしますか？';
	@override String get confirmationMessage => 'この操作は取り消せません。すべてのログされた食事、お気に入り、プロフィール設定は完全に削除されます。';
	@override String get cancel => 'キャンセル';
	@override String get clearEverything => 'すべてをクリア';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsJa implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'デバッグオプション';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectJa implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ヘルスコネクト';
	@override String get subtitle => '権限を表示および管理';
	@override late final _TranslationsSettingsHealthConnectUnavailableJa unavailable = _TranslationsSettingsHealthConnectUnavailableJa._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsJa permissions = _TranslationsSettingsHealthConnectPermissionsJa._(_root);
	@override String get managePermissions => '権限を管理';
	@override String get openSettings => 'ヘルスコネクト設定を開く';
	@override String get requestPermissions => '権限をリクエストする';
	@override String get permissionRequestCancelledOrFailed => '権限のリクエストがキャンセルされたか失敗しました。もう一度試すか、Health Connect の設定で手動で権限を付与してください。';
	@override String get permissionRequestFailed => '権限をリクエストできませんでした。もう一度試すか、Health Connect の設定で手動で権限を付与してください。';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutJa implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '私たちについて';
	@override String get tagline => '迅速で無料、プライバシー重視のカロリー認識';
	@override late final _TranslationsSettingsAboutOurStoryJa ourStory = _TranslationsSettingsAboutOurStoryJa._(_root);
	@override late final _TranslationsSettingsAboutPrivacyJa privacy = _TranslationsSettingsAboutPrivacyJa._(_root);
	@override late final _TranslationsSettingsAboutDeveloperJa developer = _TranslationsSettingsAboutDeveloperJa._(_root);
	@override late final _TranslationsSettingsAboutFeedbackJa feedback = _TranslationsSettingsAboutFeedbackJa._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoJa implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'ビルド ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastJa implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '朝食の時間！🍳';
	@override String get body => '朝食を記録するのを忘れないでください';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchJa implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '昼食の時間！🥗';
	@override String get body => '昼食を記録する時間です';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerJa implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '夕食の時間！🍽️';
	@override String get body => '夕食を記録するのを忘れないでください';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackJa implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'スナックの時間！🍎';
	@override String get body => 'ヘルシーなスナックの時間です';
}

// Path: notifications.test
class _TranslationsNotificationsTestJa implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'テスト通知';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapJa implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel}は推定栄養情報を提供します。正確性は、入力内容や食材のバリエーションに依存します。ガイドとして使用し、確定的な情報源とは見なさないでください。個別の食事アドバイスについては専門家に相談してください。';
	@override late final _TranslationsDisclaimerSnapPortionSizeJa portionSize = _TranslationsDisclaimerSnapPortionSizeJa._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsJa preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsJa._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsJa ingredients = _TranslationsDisclaimerSnapIngredientsJa._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsJa databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsJa._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateJa implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '体重の推定について';
	@override String get description => '予測される体重変化は、単純なカロリー摂取対カロリー消費のモデルに基づく理論的な推定です。これはモチベーションのガイダンスを目的としており、実際の体重の予測として使わないでください。';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyJa calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyJa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsJa biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsJa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightJa waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightJa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceJa professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceJa._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsJa implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get description => 'これらの指標は、あなたの体のエネルギーの必要性を理解し、栄養の目標を導くのに役立ちます。';
	@override late final _TranslationsDisclaimerHealthMetricsBmrJa bmr = _TranslationsDisclaimerHealthMetricsBmrJa._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeJa tdee = _TranslationsDisclaimerHealthMetricsTdeeJa._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalJa dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalJa._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsJa implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get notifications => '通知';
	@override String get healthConnect => 'Health Connect';
	@override String get feedback => 'フィードバック';
	@override String get dataReset => 'データのリセット';
	@override String get appInfo => 'アプリ情報';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionJa implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'スマートフード認識';
	@override String get description => '写真を撮ってAIに食事を特定させましょう';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisJa implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI分析';
	@override String get description => 'あなたの説明から即座に栄養情報を取得';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationJa implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '健康統合';
	@override String get description => 'より良い洞察のためにHealth Connectと接続する';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesJa implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get underweight => '低体重';
	@override String get healthyWeight => '健康体重';
	@override String get overweight => '過体重';
	@override String get obese => '肥満';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesJa implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get underweight => '栄養価の高い食事でバランスの取れた体重に到達するための健康的なプランを一緒に作りましょう。';
	@override String get healthy => '素晴らしい！あなたは健康的な範囲にいます。活力とエネルギーレベルを維持するお手伝いをします。';
	@override String overweight({required Object appLabel}) => '${appLabel}は、AIを活用したトラッキングで、快適に目標を達成する手助けをします。';
	@override String get obese => 'あなたの健康目標のために、個別の指導と持続可能な戦略でサポートします。';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingJa implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '自動カロリートラッキング';
	@override String get description => 'フィットネスアプリから消費カロリーを追跡します';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsJa implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '進捗の洞察';
	@override String get description => '健康トレンドに関する詳細な洞察を得ましょう';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationJa implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'シームレスな統合';
	@override String get description => 'お気に入りの健康アプリからデータを同期します';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessJa implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたは一人じゃない';
	@override String get genericMessage => '研究によると、一貫したトラッキングは長期的な成功の最も大きな予測因子です。';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age}歳の${gender}が${goal}を目指すためには、一貫したトラッキングが成功の最も大きな予測因子です。';
	@override String closingMessage({required Object appLabel}) => '${appLabel}は手動で行うよりも10倍簡単にします。';
	@override String get getStartedTitle => '始める準備はできましたか？';
	@override String get tipPhoto => '食事の写真を撮影して瞬時に分析します';
	@override String get tipConsistency => '一貫して記録して、意味のある進捗を確認しましょう';
	@override String get tipProgress => 'やる気を保つために、毎日進捗を追跡しましょう';
	@override String get button => '行きましょう';
	@override String get defaultGender => '個人';
	@override String get defaultGoal => 'より健康的な自分';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileJa implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたの健康プロフィール';
	@override String bmiDescription({required Object bmi}) => 'あなたの指標に基づくと、あなたのBMIは${bmi}です。';
	@override String get finalizeDescription => 'あなたの体験をカスタマイズするためにプロフィールを最終化しましょう。';
	@override String get goalGain => '増加';
	@override String get goalLose => '減少';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => '目標を達成するには、${direction} ${diff} ${unit}しなければなりません。';
	@override String get goalReached => 'あなたは目標体重に達しました！維持を支援します。';
	@override String get button => '行きましょう';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleJa implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '素晴らしいスタート！';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => '${goalText}に向けて第一歩を踏み出しましたね。あなたが${activityText}であるため、${appLabel}は生活スタイルに合わせて目標を調整します。';
	@override String get personalizedTargets => 'パーソナライズされたカロリターゲット';
	@override String get aiMealDetection => 'AIによる食事検出';
	@override String get macroBreakdowns => '詳細なマクロ栄養素の内訳';
	@override String get button => '行きましょう';
	@override String get defaultGoal => 'あなたの目標';
	@override String get defaultActivity => '活動的';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightJa implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '体重を減らす';
	@override String get description => '体重を減らすためにカロリー不足を作る';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightJa implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '体重を維持する';
	@override String get description => '現在の体重を維持する';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightJa implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '体重を増やす';
	@override String get description => '体重を増やすためにカロリー過剰を作る';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryJa implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '座りがち';
	@override String get description => 'ほとんど運動しない';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveJa implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '軽度に活動的';
	@override String get description => '週に1-3日の軽い運動';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveJa implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '中程度に活動的';
	@override String get description => '週に3-5日の中程度の運動';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveJa implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '非常に活動的';
	@override String get description => '週に6-7日のハードな運動';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveJa implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '極度に活動的';
	@override String get description => '非常にハードな運動や肉体労働';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableJa implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect を利用できません';
	@override String get description => 'このデバイスでは Health Connect を利用できません。Play ストア（Android 9+）から Health Connect をインストールするか、Android 14+ に更新してください。';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsJa implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '権限';
	@override String get description => 'ヘルスコネクト統合を提供するために要求される権限は以下の通りです。';
	@override String get granted => '付与済み';
	@override String get notGranted => '未付与';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedJa caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedJa._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadJa nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadJa._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteJa nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteJa._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryJa implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '私たちのストーリー';
	@override String content({required Object appLabel}) => '${appLabel}はシンプルなフラストレーションから生まれました：ほとんどのカロリー追跡アプリは、過度に複雑で、常に手動入力を要求され、高額なサブスクリプション料金を請求し、またはプライバシーを妥協します。\n\nインディー開発者として、私はよりシンプルで公正なものを作りたいと思いました — 努力を減らすためにAIを使用し、すぐに使えて速く、あなたの健康データを尊重するアプリです。\n\n${appLabel}は私が存在してほしかったアプリです：アカウント不要、トラッキングなし、広告なし — 明確で実用的な洞察とあなたの健康目標だけが提供されます。';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyJa implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたのプライバシーは重要です';
	@override String get description => 'プライバシーは後から考慮されるものではありません — デザイン原則です。これは実際に何を意味するのでしょうか：';
	@override String get noAccounts => 'アカウント不要\nすぐにアプリを使用できます。サインアップなし、個人情報なし。';
	@override String noTracking({required Object appLabel}) => '行動追跡なし\n${appLabel}はあなたの活動を監視せず、利用プロファイルを構築せず、アプリやウェブサイトを通じてあなたを追跡しません。';
	@override String noAds({required Object appLabel}) => '設計から広告なし\n${appLabel}は広告やデータ主導のマネタイズなしで機能するように構築されています。';
	@override String get noDataSelling => 'データ販売なし\nあなたの健康データは第三者に販売または共有されることはありません。';
	@override String get localStorage => 'ローカル優先のストレージ\nあなたのデータはデバイスに保存されます。';
	@override String get privacyPolicy => 'プライバシーポリシー';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperJa implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'インディー開発者によって構築されました';
	@override String description({required Object appLabel}) => '${appLabel}は、落ち着いたプライバシーを尊重する健康ソフトウェアを作成することに焦点を当てた単独のインディー開発者によって構築され、維持されています。\n\nフィードバックは個人的に読み、アプリの方向性を形作るのに役立ちます。';
	@override String get website => 'ウェブサイト';
	@override String get email => 'メール';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackJa implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel}を楽しんでいますか？';
	@override String description({required Object appLabel}) => 'あなたのフィードバックは、${appLabel}をより良いものにするのに役立ちます。';
	@override String get rateApp => 'Playストアで評価する';
	@override String get sendFeedback => 'フィードバックを送信';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeJa implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ポーションサイズ';
	@override String get description => '推定の正確さは、ポーションサイズの正確な評価に大きく依存します。';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsJa implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '調理方法';
	@override String description({required Object appLabel}) => '調理方法は食材の栄養価に大きく影響します。${appLabel}の推定値は、これらのバリエーションを常に考慮しているわけではありません。';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsJa implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '材料';
	@override String get description => '隠れた材料が多い複雑な料理は、あまり正確な推定をもたらさない可能性があります。';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsJa implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'データベースの制限';
	@override String description({required Object appLabel}) => '${appLabel}の食品データベースは広範囲ですが、すべての食品アイテムやバリエーションが含まれていない場合があります。';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyJa implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'カロリーの正確性';
	@override String get description => 'この推定値は、追跡されたカロリー摂取と消費の正確さに依存しています。不正確な記録は不正確な推定をもたらします。';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsJa implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '生物的要因';
	@override String description({required Object appLabel}) => '実際の体重減少/増加は、代謝、ホルモン、睡眠、ストレス、水分補給、その他の個々の要因によって影響され、${appLabel}では測定できません。';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightJa implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '水分による体重の変動';
	@override String get description => '通常の体重は、水分貯留、消化、タイミングによる影響で大きく変動することがあります。推定値はこれらの毎日の変動を考慮していません。';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceJa implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '専門家のガイダンス';
	@override String get description => 'この推定を医療の決定に使用しないでください。個別の体重管理アドバイスについては、常に医療専門家または登録栄養士に相談してください。';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrJa implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '基礎代謝量 (BMR)';
	@override String get description => '基礎代謝量 (BMR) は、呼吸や循環などの基本的な機能を維持するために、静止状態であなたの体が消費するカロリーの量です。BMRは年齢、性別、身長、体重によって異なります。BMRが高いと、通常は筋肉量が多い、若い、または男性であるために、静止時に自然に多くのカロリーを消費します。BMRが低い場合は、通常、筋肉量が少ない、高齢、または女性であることを示しています。';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeJa implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '1日の総エネルギー消費量 (TDEE)';
	@override String get description => '1日の総エネルギー消費量 (TDEE) は、BMRと身体活動や日常の動きからのカロリーを含めた、1日に消費する総カロリー量です。TDEEはあなたのBMRと活動レベルによって異なります。TDEEが高いと、一般的にはよりアクティブであるか、またはBMRが高いために、全体的に多くのカロリーを消費します。TDEEが低い場合は、日常の活動が少ないか、BMRが低いことを示唆しています。';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalJa implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '1日の目標';
	@override String get description => '1日の目標は、あなたのTDEEと体重目標に基づく推奨される1日のカロリー摂取量です。減量のためには、TDEEよりも少ないカロリーを摂取します。体重維持のためには、TDEEに合わせます。増量のためには、TDEEよりも多くのカロリーを摂取します。これにより、健康的なペースで望ましい体重の変化を達成することができます。';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedJa implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '総消費カロリーの読み取り';
	@override String get description => 'アプリがヘルスコネクトからあなたの総消費カロリーを読み取ることを許可します。';
	@override String get usage => 'この権限はアプリ内でのあなたの1日のカロリー消費を表示するために使用され、1日の総エネルギー消費を理解するのに役立ちます。';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadJa implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '栄養データの読み取り';
	@override String get description => 'アプリがヘルスコネクトから栄養データを読み取ることを許可します。';
	@override String get usage => 'この権限により、ヘルスコネクトに接続された他のアプリによって記録された栄養情報を読み取ることができ、包括的な栄養の見通しが得られます。';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteJa implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '栄養データの書き込み';
	@override String get description => 'アプリがヘルスコネクトに栄養データを書き込むことを許可します。';
	@override String get usage => 'この権限により、アプリがあなたの記録した食事をヘルスコネクトに同期させ、使用中の他の健康・フィットネスアプリで栄養データを利用できるようにします。';
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
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel}へようこそ',
			'onboarding.subtitle' => 'AIによるあなたの個人的な栄養コンパニオン',
			'onboarding.getStarted' => '始める',
			'onboarding.features.foodRecognition.title' => 'スマートフード認識',
			'onboarding.features.foodRecognition.description' => '写真を撮ってAIに食事を特定させましょう',
			'onboarding.features.aiAnalysis.title' => 'AI分析',
			'onboarding.features.aiAnalysis.description' => 'あなたの説明から即座に栄養情報を取得',
			'onboarding.features.healthIntegration.title' => '健康統合',
			'onboarding.features.healthIntegration.description' => 'より良い洞察のためにHealth Connectと接続する',
			'onboarding.gender.title' => 'あなたの性別は何ですか？',
			'onboarding.gender.description' => '性別は基礎代謝率 (BMR) を正確に計算するのに役立ちます。',
			'onboarding.gender.next' => '次へ',
			'onboarding.height.title' => 'あなたの身長はどれくらいですか？',
			'onboarding.height.description' => 'あなたの身長は、BMIとエネルギーの必要量を正確に計算するのに役立ちます。',
			'onboarding.height.metric' => 'メートル法',
			'onboarding.height.imperial' => 'インペリアル',
			'onboarding.height.next' => '次へ',
			'onboarding.weight.currentTitle' => '現在の体重はどれくらいですか？',
			'onboarding.weight.currentDescription' => '現在の体重は、あなたの日々の目標をパーソナライズするために重要です。',
			'onboarding.weight.targetTitle' => '目標体重はどれくらいですか？',
			'onboarding.weight.targetDescription' => '目標体重を設定することで、長期的な計画を決定する手助けになります。',
			'onboarding.weight.metric' => 'メートル法',
			'onboarding.weight.imperial' => 'インペリアル',
			'onboarding.weight.next' => '次へ',
			'onboarding.age.title' => 'あなたの誕生日はいつですか？',
			'onboarding.age.description' => 'あなたの年齢は、カロリーの必要量を正確に計算するのに役立ちます。',
			'onboarding.age.next' => '次へ',
			'onboarding.bmiScale.underweight' => '低体重',
			'onboarding.bmiScale.healthy' => '健康',
			'onboarding.bmiScale.overweight' => '過体重',
			'onboarding.bmiScale.obese' => '肥満',
			'onboarding.bmiScale.categories.underweight' => '低体重',
			'onboarding.bmiScale.categories.healthyWeight' => '健康体重',
			'onboarding.bmiScale.categories.overweight' => '過体重',
			'onboarding.bmiScale.categories.obese' => '肥満',
			'onboarding.bmiScale.messages.underweight' => '栄養価の高い食事でバランスの取れた体重に到達するための健康的なプランを一緒に作りましょう。',
			'onboarding.bmiScale.messages.healthy' => '素晴らしい！あなたは健康的な範囲にいます。活力とエネルギーレベルを維持するお手伝いをします。',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel}は、AIを活用したトラッキングで、快適に目標を達成する手助けをします。',
			'onboarding.bmiScale.messages.obese' => 'あなたの健康目標のために、個別の指導と持続可能な戦略でサポートします。',
			'onboarding.weightGoal.title' => 'あなたの目標は何ですか？',
			'onboarding.weightGoal.description' => '達成したいことを最もよく表す目標を選んでください。',
			'onboarding.activityLevel.title' => 'あなたはどれくらい活動的ですか？',
			'onboarding.activityLevel.description' => 'これにより、日々のカロリー必要量をより正確に計算できます。',
			'onboarding.healthConnect.title' => 'Health Connectと接続',
			'onboarding.healthConnect.description' => '健康データを同期して、より良い洞察を得て自動カロリートラッキングを行いましょう',
			'onboarding.healthConnect.automaticTracking.title' => '自動カロリートラッキング',
			'onboarding.healthConnect.automaticTracking.description' => 'フィットネスアプリから消費カロリーを追跡します',
			'onboarding.healthConnect.progressInsights.title' => '進捗の洞察',
			'onboarding.healthConnect.progressInsights.description' => '健康トレンドに関する詳細な洞察を得ましょう',
			'onboarding.healthConnect.seamlessIntegration.title' => 'シームレスな統合',
			'onboarding.healthConnect.seamlessIntegration.description' => 'お気に入りの健康アプリからデータを同期します',
			'onboarding.healthConnect.connected' => 'Health Connectに接続済み',
			'onboarding.healthConnect.notConnected' => 'Health Connectに未接続',
			'onboarding.healthConnect.setup' => 'Health Connectを設定',
			'onboarding.healthConnect.skipForNow' => '今はスキップ',
			'onboarding.healthConnect.statusConnected' => 'Health Connectが接続されました。',
			'onboarding.healthConnect.statusSuccess' => 'Health Connectが正常に接続されました！',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => '権限が拒否されました。${appLabel}のために、お使いの電話の設定からHealth Connectの権限を有効にしてください。',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connectの設定中にエラーが発生しました: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'あなたは一人じゃない',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => '研究によると、一貫したトラッキングは長期的な成功の最も大きな予測因子です。',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age}歳の${gender}が${goal}を目指すためには、一貫したトラッキングが成功の最も大きな予測因子です。',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel}は手動で行うよりも10倍簡単にします。',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => '始める準備はできましたか？',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => '食事の写真を撮影して瞬時に分析します',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => '一貫して記録して、意味のある進捗を確認しましょう',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'やる気を保つために、毎日進捗を追跡しましょう',
			'onboarding.reinforcement.trackingSuccess.button' => '行きましょう',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => '個人',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'より健康的な自分',
			'onboarding.reinforcement.healthProfile.title' => 'あなたの健康プロフィール',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'あなたの指標に基づくと、あなたのBMIは${bmi}です。',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'あなたの体験をカスタマイズするためにプロフィールを最終化しましょう。',
			'onboarding.reinforcement.healthProfile.goalGain' => '増加',
			'onboarding.reinforcement.healthProfile.goalLose' => '減少',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => '目標を達成するには、${direction} ${diff} ${unit}しなければなりません。',
			'onboarding.reinforcement.healthProfile.goalReached' => 'あなたは目標体重に達しました！維持を支援します。',
			'onboarding.reinforcement.healthProfile.button' => '行きましょう',
			'onboarding.reinforcement.goalLifestyle.title' => '素晴らしいスタート！',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => '${goalText}に向けて第一歩を踏み出しましたね。あなたが${activityText}であるため、${appLabel}は生活スタイルに合わせて目標を調整します。',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'パーソナライズされたカロリターゲット',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AIによる食事検出',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => '詳細なマクロ栄養素の内訳',
			'onboarding.reinforcement.goalLifestyle.button' => '行きましょう',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'あなたの目標',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => '活動的',
			'tabs.dashboard' => 'ダッシュボード',
			'tabs.history' => '履歴',
			'home.dailyGoal.title' => '日々の目標を設定',
			'home.dailyGoal.titleSet' => 'あなたのデイリーゴール',
			'home.dailyGoal.description' => 'ウェルネスの旅を始める準備はできましたか？進捗を促進させるために、下にあなたのデイリーカロリー目標を設定してください。',
			'home.dailyGoal.descriptionSet' => 'コンパスが設定されました！これがあなたの進むべきデイリーカロリー目標です。',
			'home.dailyGoal.yourGoal' => 'あなたの目標',
			'home.dailyGoal.dailyCalories' => 'デイリーカロリー (kcal)',
			'home.dailyGoal.setGoal' => '目標を設定',
			'home.dailyGoal.intake' => '摂取',
			'home.dailyGoal.burned' => '消費',
			'home.dailyGoal.weightImpact' => '体重への影響',
			'home.dailyGoal.estLoss' => '推定減少量',
			'home.dailyGoal.estGain' => '推定増加量',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'デイリーサマリー',
			'home.dailySummary.calories' => 'カロリー',
			'home.dailySummary.carbs' => '炭水化物',
			'home.dailySummary.protein' => 'タンパク質',
			'home.dailySummary.fat' => '脂肪',
			'home.dailySummary.fiber' => '繊維',
			'home.intakeProgress.title' => '今日のマクロ分配',
			'home.intakeProgress.target' => '目標',
			'home.intakeProgress.current' => '現在',
			'home.intakeHistory.title' => '7日間のマクロ履歴',
			'home.intakeHistory.noHistoryYet' => '履歴はまだありません。',
			'home.intakeHistory.startLogging' => '食事を記録し始めて、ここで7日間のマクロトレンドを確認しましょう。',
			'home.mealLog.title' => 'ログされた食事',
			'home.mealLog.emptyMessage' => '最後の食事の写真を撮ってここに記録しましょう。',
			'home.mealLog.noMealsToday' => '今日の食事はまだ記録されていません',
			'home.mealLog.seeAllMeals' => 'すべての食事を見る',
			'home.mealDescription.title' => 'AIでクイック追加',
			'home.mealDescription.description' => '食事を説明して、AIに詳細を処理させましょう。',
			'home.mealDescription.hint' => '例：朝食に大きなオートミールのボウルをバナナスライスとホエイパウダーを加えて食べました...',
			'home.mealDescription.analyzeMeal' => '食事を分析',
			'home.favoriteMeals.title' => 'お気に入りの食事',
			'home.favoriteMeals.description' => 'お気に入りの食事をすぐに追加します。',
			'home.favoriteMeals.noFavorites' => 'まだお気に入りの食事はありません。',
			'home.favoriteMeals.addFavoriteHint' => '食事の星をクリックしてお気に入りにマークします。',
			'home.favoriteMeals.seeAll' => 'すべてを見る',
			'home.favoriteMeals.add' => '追加',
			'home.mealSnap.title' => '食事を撮影して追跡',
			'home.mealSnap.description' => 'カメラを使って食べ物の写真を撮ってAI分析を行います。',
			'home.mealSnap.openCamera' => 'カメラを開く',
			'home.mealSnap.gallery' => 'ギャラリー',
			'home.connectHealth.title' => 'Health Connectと同期',
			'home.connectHealth.description' => 'あなたの栄養データをHealth Connectと同期します',
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
			'meal.mealName' => '食事の名前',
			'meal.mealNameHint' => '例：スクランブルエッグとトースト',
			'meal.mealQuantity' => '食事の分量',
			'meal.mealQuantityHint' => '例：1杯、2枚',
			'meal.timeOfMeal' => '食事の時間',
			'meal.timeOfMealHint' => '食事をした時間を選択してください',
			'meal.mealType' => '食事の種類',
			'meal.nutrition.calories' => 'カロリー',
			'meal.nutrition.carbs' => '炭水化物 (g)',
			'meal.nutrition.protein' => 'たんぱく質 (g)',
			'meal.nutrition.fat' => '脂肪 (g)',
			'meal.nutrition.fiber' => '繊維 (g)',
			'meal.deleteConfirmation.title' => '食事を削除',
			'meal.deleteConfirmation.message' => '本当にこの食事のエントリーを削除してもよろしいですか？',
			'meal.deleteConfirmation.cancel' => 'キャンセル',
			'meal.deleteConfirmation.delete' => '削除',
			'meal.addedToLog' => '食事がログに追加されました！',
			'meal.couldNotAdd' => ({required Object error}) => '食事を追加できませんでした: ${error}',
			'meal.savedSuccessfully' => '食事を追加しました！',
			'meal.updatedSuccessfully' => '食事を更新しました！',
			'meal.errorSaving' => ({required Object error}) => '食事の保存中にエラーが発生しました：${error}',
			'meal.removedFromFavorites' => 'お気に入りから削除されました！',
			'meal.savedAsFavorite' => '食事がお気に入りとして保存されました！',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'お気に入りの更新に失敗しました: ${error}',
			'meal.failedToProcess' => ({required Object error}) => '処理に失敗しました: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => '画像の処理に失敗しました: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => '画像の圧縮エラー: ${error}',
			'meal.failedToSave' => 'データの保存に失敗しました。再試行してください。',
			'meal.skip' => 'スキップ',
			'meal.variation.question' => ({required Object total, required Object current}) => '全${total}問中 ${current}問目',
			'meal.variation.noVariationsAvailable' => '利用可能なバリエーションはありません',
			'favorites.title' => 'お気に入り',
			'favorites.empty' => 'まだお気に入りの食事はありません。',
			'profile.title' => 'プロフィール',
			'profile.noProfileData' => 'プロフィールデータが見つかりません',
			'profile.yourProfile' => 'あなたのプロフィール',
			'profile.viewAndManage' => '健康情報を表示・管理',
			'profile.sections.profile' => 'プロフィール',
			'profile.sections.basicInformation' => '基本情報',
			'profile.sections.goalsAndActivity' => '目標と活動',
			'profile.sections.calculatedValues' => '計算された値',
			'profile.gender' => '性別',
			'profile.height' => '身長',
			'profile.weight' => '体重',
			'profile.age' => '年齢',
			'profile.weightGoal' => '体重目標',
			'profile.targetWeight' => '目標体重',
			'profile.activityLevel' => '活動レベル',
			'profile.healthMetrics' => '健康指標',
			'profile.notSet' => '未設定',
			'profile.years' => '年',
			'profile.updatedSuccessfully' => 'プロフィールが正常に更新されました！',
			'profile.calculatedValues.bmr' => '基礎代謝率 (BMR)',
			'profile.calculatedValues.tdee' => '1日の総消費カロリー (TDEE)',
			'profile.calculatedValues.dailyGoal' => '1日の目標',
			'profile.calculatedValues.calPerDay' => 'カロリー/日',
			'profile.calculatedValues.notAvailable' => '利用不可',
			'healthScore.title' => '健康スコア',
			'healthScore.whyThisScore' => 'このスコアの理由は？',
			'healthScore.note' => 'このスコアは、特定された成分と栄養密度に基づくAIの推定値です。食事に関するアドバイスは常に専門家に相談してください。',
			'healthScore.unhealthy' => '不健康',
			'healthScore.healthy' => '健康',
			'healthScore.neutral' => '中立',
			'editProfile.title' => 'プロフィールを編集',
			'editProfile.sections.personalInformation' => '個人情報',
			'editProfile.sections.physicalMeasurements' => '身体測定',
			'editProfile.sections.goalsAndActivity' => '目標と活動',
			'editProfile.gender' => '性別',
			'editProfile.dateOfBirth' => '生年月日',
			'editProfile.height' => '身長',
			'editProfile.weight' => '体重',
			'editProfile.weightGoal' => '体重目標',
			'editProfile.activityLevel' => '活動レベル',
			'editProfile.metric' => 'メートル法',
			'editProfile.imperial' => 'インペリアル',
			'editProfile.unitCm' => '㎝',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => '㎏',
			'editProfile.unitLbs' => 'lb',
			'editProfile.metricCm' => 'メートル法 (cm)',
			'editProfile.imperialFtIn' => 'インペリアル (ft/in)',
			'editProfile.metricKg' => 'メートル法 (kg)',
			'editProfile.imperialLbs' => 'インペリアル (lbs)',
			'editProfile.genders.male' => '男性',
			'editProfile.genders.female' => '女性',
			'editProfile.genders.other' => 'その他',
			'editProfile.weightGoals.loseWeight.name' => '体重を減らす',
			'editProfile.weightGoals.loseWeight.description' => '体重を減らすためにカロリー不足を作る',
			'editProfile.weightGoals.maintainWeight.name' => '体重を維持する',
			'editProfile.weightGoals.maintainWeight.description' => '現在の体重を維持する',
			'editProfile.weightGoals.gainWeight.name' => '体重を増やす',
			'editProfile.weightGoals.gainWeight.description' => '体重を増やすためにカロリー過剰を作る',
			'editProfile.activityLevels.sedentary.name' => '座りがち',
			'editProfile.activityLevels.sedentary.description' => 'ほとんど運動しない',
			'editProfile.activityLevels.lightlyActive.name' => '軽度に活動的',
			'editProfile.activityLevels.lightlyActive.description' => '週に1-3日の軽い運動',
			'editProfile.activityLevels.moderatelyActive.name' => '中程度に活動的',
			'editProfile.activityLevels.moderatelyActive.description' => '週に3-5日の中程度の運動',
			'editProfile.activityLevels.veryActive.name' => '非常に活動的',
			'editProfile.activityLevels.veryActive.description' => '週に6-7日のハードな運動',
			'editProfile.activityLevels.extremelyActive.name' => '極度に活動的',
			'editProfile.activityLevels.extremelyActive.description' => '非常にハードな運動や肉体労働',
			'settings.title' => '設定',
			'settings.sections.profile' => 'プロフィール',
			'settings.sections.localization' => 'ローカライズ',
			'settings.sections.notifications' => '通知',
			'settings.sections.healthConnect' => 'ヘルスコネクト',
			'settings.sections.supportAndLegal' => 'サポートと法律',
			'settings.sections.about' => 'について',
			'settings.sections.dangerZone' => '危険ゾーン',
			'settings.sections.developer' => '開発者',
			'settings.editProfile.title' => 'プロフィールを編集',
			'settings.editProfile.subtitle' => '個人情報を更新',
			'settings.language.title' => '言語',
			'settings.language.subtitle' => 'お好みの言語を選択してください',
			'settings.language.searchHint' => '言語を検索...',
			'settings.language.noResults' => '結果が見つかりません',
			'settings.heightUnit.title' => '身長の単位',
			'settings.weightUnit.title' => '体重の単位',
			'settings.mealReminders.title' => '食事リマインダー',
			'settings.mealReminders.subtitle' => 'タイムリーなアラートで進捗を維持',
			'settings.theme.title' => 'テーマ',
			'settings.theme.light' => 'ライト',
			'settings.theme.dark' => 'ダーク',
			'settings.theme.system' => 'システム',
			'settings.sendFeedback.title' => 'フィードバックを送信',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel}の改善にご協力ください',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel}アプリフィードバック',
			'settings.sendFeedback.emailBodyPrefix' => '以下にフィードバックをご記入ください:',
			'settings.sendFeedback.appVersion' => 'アプリのバージョン',
			'settings.sendFeedback.device' => 'デバイス',
			'settings.sendFeedback.osVersion' => 'OSバージョン',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'すべてのデータをクリア',
			'settings.clearAllData.subtitle' => 'すべての情報を取り消し不可能に削除します',
			'settings.clearAllData.confirmationTitle' => 'すべてのデータをクリアしますか？',
			'settings.clearAllData.confirmationMessage' => 'この操作は取り消せません。すべてのログされた食事、お気に入り、プロフィール設定は完全に削除されます。',
			'settings.clearAllData.cancel' => 'キャンセル',
			'settings.clearAllData.clearEverything' => 'すべてをクリア',
			'settings.debugOptions.title' => 'デバッグオプション',
			'settings.developerModeEnabled' => '開発者モードが有効になりました！',
			'settings.healthConnect.title' => 'ヘルスコネクト',
			'settings.healthConnect.subtitle' => '権限を表示および管理',
			'settings.healthConnect.unavailable.title' => 'Health Connect を利用できません',
			'settings.healthConnect.unavailable.description' => 'このデバイスでは Health Connect を利用できません。Play ストア（Android 9+）から Health Connect をインストールするか、Android 14+ に更新してください。',
			'settings.healthConnect.permissions.title' => '権限',
			'settings.healthConnect.permissions.description' => 'ヘルスコネクト統合を提供するために要求される権限は以下の通りです。',
			'settings.healthConnect.permissions.granted' => '付与済み',
			'settings.healthConnect.permissions.notGranted' => '未付与',
			'settings.healthConnect.permissions.caloriesBurned.title' => '総消費カロリーの読み取り',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'アプリがヘルスコネクトからあなたの総消費カロリーを読み取ることを許可します。',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'この権限はアプリ内でのあなたの1日のカロリー消費を表示するために使用され、1日の総エネルギー消費を理解するのに役立ちます。',
			'settings.healthConnect.permissions.nutritionRead.title' => '栄養データの読み取り',
			'settings.healthConnect.permissions.nutritionRead.description' => 'アプリがヘルスコネクトから栄養データを読み取ることを許可します。',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'この権限により、ヘルスコネクトに接続された他のアプリによって記録された栄養情報を読み取ることができ、包括的な栄養の見通しが得られます。',
			'settings.healthConnect.permissions.nutritionWrite.title' => '栄養データの書き込み',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'アプリがヘルスコネクトに栄養データを書き込むことを許可します。',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'この権限により、アプリがあなたの記録した食事をヘルスコネクトに同期させ、使用中の他の健康・フィットネスアプリで栄養データを利用できるようにします。',
			'settings.healthConnect.managePermissions' => '権限を管理',
			'settings.healthConnect.openSettings' => 'ヘルスコネクト設定を開く',
			'settings.healthConnect.requestPermissions' => '権限をリクエストする',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => '権限のリクエストがキャンセルされたか失敗しました。もう一度試すか、Health Connect の設定で手動で権限を付与してください。',
			'settings.healthConnect.permissionRequestFailed' => '権限をリクエストできませんでした。もう一度試すか、Health Connect の設定で手動で権限を付与してください。',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => '私たちについて',
			'settings.about.tagline' => '迅速で無料、プライバシー重視のカロリー認識',
			'settings.about.ourStory.title' => '私たちのストーリー',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel}はシンプルなフラストレーションから生まれました：ほとんどのカロリー追跡アプリは、過度に複雑で、常に手動入力を要求され、高額なサブスクリプション料金を請求し、またはプライバシーを妥協します。\n\nインディー開発者として、私はよりシンプルで公正なものを作りたいと思いました — 努力を減らすためにAIを使用し、すぐに使えて速く、あなたの健康データを尊重するアプリです。\n\n${appLabel}は私が存在してほしかったアプリです：アカウント不要、トラッキングなし、広告なし — 明確で実用的な洞察とあなたの健康目標だけが提供されます。',
			'settings.about.privacy.title' => 'あなたのプライバシーは重要です',
			'settings.about.privacy.description' => 'プライバシーは後から考慮されるものではありません — デザイン原則です。これは実際に何を意味するのでしょうか：',
			'settings.about.privacy.noAccounts' => 'アカウント不要\nすぐにアプリを使用できます。サインアップなし、個人情報なし。',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => '行動追跡なし\n${appLabel}はあなたの活動を監視せず、利用プロファイルを構築せず、アプリやウェブサイトを通じてあなたを追跡しません。',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => '設計から広告なし\n${appLabel}は広告やデータ主導のマネタイズなしで機能するように構築されています。',
			'settings.about.privacy.noDataSelling' => 'データ販売なし\nあなたの健康データは第三者に販売または共有されることはありません。',
			'settings.about.privacy.localStorage' => 'ローカル優先のストレージ\nあなたのデータはデバイスに保存されます。',
			'settings.about.privacy.privacyPolicy' => 'プライバシーポリシー',
			'settings.about.developer.title' => 'インディー開発者によって構築されました',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel}は、落ち着いたプライバシーを尊重する健康ソフトウェアを作成することに焦点を当てた単独のインディー開発者によって構築され、維持されています。\n\nフィードバックは個人的に読み、アプリの方向性を形作るのに役立ちます。',
			'settings.about.developer.website' => 'ウェブサイト',
			'settings.about.developer.email' => 'メール',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel}を楽しんでいますか？',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'あなたのフィードバックは、${appLabel}をより良いものにするのに役立ちます。',
			'settings.about.feedback.rateApp' => 'Playストアで評価する',
			'settings.about.feedback.sendFeedback' => 'フィードバックを送信',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'ビルド ${buildNumber}',
			'reminders.title' => 'リマインダーで進捗を維持',
			'reminders.description' => '食事を記録し、栄養目標を一貫して守るための穏やかなリマインダーを受け取ります',
			'reminders.notificationsEnabled' => '通知が有効',
			'reminders.notificationsDisabled' => '通知が無効',
			'reminders.enabledSubtitle' => '食事リマインダーを受け取ります',
			'reminders.disabledSubtitle' => '通知を有効にして食事リマインダーを受け取りましょう',
			'reminders.mealReminders' => '食事リマインダー',
			'reminders.breakfast' => '朝食',
			'reminders.lunch' => '昼食',
			'reminders.dinner' => '夕食',
			'reminders.snack' => 'スナック',
			'reminders.unknown' => '不明',
			'reminders.change' => '変更',
			'reminders.enableNotifications' => '通知を有効にする',
			'reminders.skipForNow' => '今はスキップ',
			'reminders.saveChanges' => '変更を保存',
			'reminders.enabledSuccessfully' => '通知が正常に有効になりました！',
			'reminders.permissionDenied' => '通知の許可が拒否されました',
			'reminders.errorEnabling' => ({required Object error}) => '通知を有効にする際のエラー: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'セットアップの完了に関するエラー: ${error}',
			'notifications.breakfast.title' => '朝食の時間！🍳',
			'notifications.breakfast.body' => '朝食を記録するのを忘れないでください',
			'notifications.lunch.title' => '昼食の時間！🥗',
			'notifications.lunch.body' => '昼食を記録する時間です',
			'notifications.dinner.title' => '夕食の時間！🍽️',
			'notifications.dinner.body' => '夕食を記録するのを忘れないでください',
			'notifications.snack.title' => 'スナックの時間！🍎',
			'notifications.snack.body' => 'ヘルシーなスナックの時間です',
			'notifications.test.title' => 'テスト通知',
			'login.title' => 'ログイン',
			'login.signInWithGoogle' => 'Googleでサインイン',
			'login.signInFailed' => 'Googleサインインに失敗しました、またはキャンセルされました。',
			'disclaimer.pleaseNote' => 'ご注意ください',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel}は推定栄養情報を提供します。正確性は、入力内容や食材のバリエーションに依存します。ガイドとして使用し、確定的な情報源とは見なさないでください。個別の食事アドバイスについては専門家に相談してください。',
			'disclaimer.snap.portionSize.title' => 'ポーションサイズ',
			'disclaimer.snap.portionSize.description' => '推定の正確さは、ポーションサイズの正確な評価に大きく依存します。',
			'disclaimer.snap.preparationMethods.title' => '調理方法',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => '調理方法は食材の栄養価に大きく影響します。${appLabel}の推定値は、これらのバリエーションを常に考慮しているわけではありません。',
			'disclaimer.snap.ingredients.title' => '材料',
			'disclaimer.snap.ingredients.description' => '隠れた材料が多い複雑な料理は、あまり正確な推定をもたらさない可能性があります。',
			'disclaimer.snap.databaseLimitations.title' => 'データベースの制限',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}の食品データベースは広範囲ですが、すべての食品アイテムやバリエーションが含まれていない場合があります。',
			'disclaimer.weightEstimate.title' => '体重の推定について',
			'disclaimer.weightEstimate.description' => '予測される体重変化は、単純なカロリー摂取対カロリー消費のモデルに基づく理論的な推定です。これはモチベーションのガイダンスを目的としており、実際の体重の予測として使わないでください。',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'カロリーの正確性',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'この推定値は、追跡されたカロリー摂取と消費の正確さに依存しています。不正確な記録は不正確な推定をもたらします。',
			'disclaimer.weightEstimate.biologicalFactors.title' => '生物的要因',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => '実際の体重減少/増加は、代謝、ホルモン、睡眠、ストレス、水分補給、その他の個々の要因によって影響され、${appLabel}では測定できません。',
			'disclaimer.weightEstimate.waterWeight.title' => '水分による体重の変動',
			'disclaimer.weightEstimate.waterWeight.description' => '通常の体重は、水分貯留、消化、タイミングによる影響で大きく変動することがあります。推定値はこれらの毎日の変動を考慮していません。',
			'disclaimer.weightEstimate.professionalGuidance.title' => '専門家のガイダンス',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'この推定を医療の決定に使用しないでください。個別の体重管理アドバイスについては、常に医療専門家または登録栄養士に相談してください。',
			'disclaimer.healthMetrics.description' => 'これらの指標は、あなたの体のエネルギーの必要性を理解し、栄養の目標を導くのに役立ちます。',
			'disclaimer.healthMetrics.bmr.title' => '基礎代謝量 (BMR)',
			'disclaimer.healthMetrics.bmr.description' => '基礎代謝量 (BMR) は、呼吸や循環などの基本的な機能を維持するために、静止状態であなたの体が消費するカロリーの量です。BMRは年齢、性別、身長、体重によって異なります。BMRが高いと、通常は筋肉量が多い、若い、または男性であるために、静止時に自然に多くのカロリーを消費します。BMRが低い場合は、通常、筋肉量が少ない、高齢、または女性であることを示しています。',
			'disclaimer.healthMetrics.tdee.title' => '1日の総エネルギー消費量 (TDEE)',
			'disclaimer.healthMetrics.tdee.description' => '1日の総エネルギー消費量 (TDEE) は、BMRと身体活動や日常の動きからのカロリーを含めた、1日に消費する総カロリー量です。TDEEはあなたのBMRと活動レベルによって異なります。TDEEが高いと、一般的にはよりアクティブであるか、またはBMRが高いために、全体的に多くのカロリーを消費します。TDEEが低い場合は、日常の活動が少ないか、BMRが低いことを示唆しています。',
			'disclaimer.healthMetrics.dailyGoal.title' => '1日の目標',
			'disclaimer.healthMetrics.dailyGoal.description' => '1日の目標は、あなたのTDEEと体重目標に基づく推奨される1日のカロリー摂取量です。減量のためには、TDEEよりも少ないカロリーを摂取します。体重維持のためには、TDEEに合わせます。増量のためには、TDEEよりも多くのカロリーを摂取します。これにより、健康的なペースで望ましい体重の変化を達成することができます。',
			'common.close' => '閉じる',
			'common.kContinue' => '続ける',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel} を気に入っていますか？ご利用の感想は私たちにとって大切です。',
			'feedbackRating.yes' => 'はい、気に入っています',
			'feedbackRating.no' => 'あまり良くありません',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => '${appLabel} はひとりで開発されています。Play ストアでの簡単な評価は他の人が見つけやすくなり、開発の継続にもつながります — 本当に助かります。評価をしていただけますか？',
			'feedbackRating.shareFeedbackViaEmail' => ({required Object appLabel}) => '${appLabel} はひとりで開発されています。皆さんのフィードバックが今後の改善に直結します — すべてのメッセージを拝見しています。メールでご意見を共有しますか？',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '${appLabel} の開発者について知りたいですか？こちらをご覧ください ',
			'feedbackRating.aboutUsLinkLabel' => '私たちについて',
			'errors.loadingProfileData' => 'プロフィールデータの読み込みエラー',
			'errors.somethingWentWrong' => '何かがうまくいきませんでした。',
			'debug.title' => 'デバッグオプション',
			'debug.sections.notifications' => '通知',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.feedback' => 'フィードバック',
			'debug.sections.dataReset' => 'データのリセット',
			'debug.sections.appInfo' => 'アプリ情報',
			'debug.showActiveNotifications' => 'アクティブな通知を表示',
			'debug.scheduleTestNotification' => 'テスト通知をスケジュール (10秒)',
			'debug.triggerBreakfastNotification' => '朝食通知を発生させる',
			'debug.cancelAllNotifications' => 'すべての通知をキャンセル',
			'debug.activeNotifications' => 'アクティブな通知',
			'debug.noTitle' => 'タイトルなし',
			'debug.noBody' => '本文なし',
			'debug.fetchTodaysSteps' => '今日のステップを取得',
			'debug.fetchTodaysCalories' => '今日のカロリーを取得',
			'debug.fetchLatestWeight' => '最新の体重を取得',
			'debug.fetchLatestHeight' => '最新の身長を取得',
			'debug.writeTestWeight' => 'テスト体重を書く (70kg)',
			'debug.writeTestHeight' => 'テスト身長を書く (175cm)',
			'debug.syncLast7Days' => '最後の7日間を同期',
			'debug.sync7DaysTitle' => '7日間の同期',
			'debug.checkCurrentLocale' => '現在のロケールを確認',
			'debug.currentLocale' => '現在のロケール',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => '言語: ${languageCode}\n国: ${countryCode}\n単位システム: ${unitSystem}',
			'debug.latestWeight' => '最新の体重',
			'debug.latestHeight' => '最新の身長',
			'debug.todaysCalories' => '今日のカロリー',
			'debug.totalCaloriesBurned' => ({required Object calories}) => '過去7日間で燃焼した合計カロリー: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => '過去7日間のステップ、カロリー、体重に関する ${count} データポイントを正常に取得しました。',
			'debug.noWeightData' => '過去30日間に体重データが見つかりませんでした。',
			'debug.noHeightData' => '過去1年間に身長データが見つかりませんでした。',
			'debug.noCalorieData' => '今日はカロリーデータが見つかりませんでした。',
			'debug.weightWritten' => 'テスト体重 (70kg) を正常に書き込みました。',
			'debug.weightWriteFailed' => 'テスト体重の書き込みに失敗しました。',
			'debug.heightWritten' => 'テスト身長 (175cm) を正常に書き込みました。',
			'debug.heightWriteFailed' => 'テスト身長の書き込みに失敗しました。',
			'debug.noNotifications' => 'アクティブな通知はありません。',
			'debug.testNotificationScheduled' => '10秒後にテスト通知がスケジュールされました。',
			'debug.testNotificationBody' => 'これは、今から10秒後にスケジュールされたテスト通知です。',
			'debug.breakfastNotificationTriggered' => '朝食通知がトリガーされました。',
			'debug.allNotificationsCancelled' => 'すべての通知がキャンセルされました。',
			'debug.fetchingData' => '過去7日間のデータを取得しています...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'debug.showFeedbackRatingSheet' => 'フィードバック／評価シートを表示',
			'debug.clearUserPreferences' => 'ユーザー設定をクリア',
			'debug.clearUserPreferencesConfirmationTitle' => 'ユーザー設定をクリアしますか？',
			'debug.clearUserPreferencesConfirmationMessage' => 'テーマ、言語、フィードバック設定がリセットされます。食事データやプロフィールには影響しません。',
			'debug.clearUserProfile' => 'ユーザープロフィールをクリア',
			'debug.clearUserProfileConfirmationTitle' => 'ユーザープロフィールをクリアしますか？',
			'debug.clearUserProfileConfirmationMessage' => '日々の目標、身長、体重などのプロフィールデータが削除されます。食事データや設定には影響しません。',
			'debug.clear' => 'クリア',
			'debug.cancel' => 'キャンセル',
			'health.syncFailed' => 'Health Connectへの同期に失敗しました。',
			'health.mealSynced' => '食事がHealth Connectと同期されました。',
			_ => null,
		};
	}
}
