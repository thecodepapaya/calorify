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
	@override late final _TranslationsOnboardingJa onboarding = _TranslationsOnboardingJa._(_root);
	@override late final _TranslationsTabsJa tabs = _TranslationsTabsJa._(_root);
	@override late final _TranslationsHomeJa home = _TranslationsHomeJa._(_root);
	@override late final _TranslationsHistoryJa history = _TranslationsHistoryJa._(_root);
	@override late final _TranslationsMealJa meal = _TranslationsMealJa._(_root);
	@override late final _TranslationsFavoritesJa favorites = _TranslationsFavoritesJa._(_root);
	@override late final _TranslationsProfileJa profile = _TranslationsProfileJa._(_root);
	@override late final _TranslationsEditProfileJa editProfile = _TranslationsEditProfileJa._(_root);
	@override late final _TranslationsSettingsJa settings = _TranslationsSettingsJa._(_root);
	@override late final _TranslationsRemindersJa reminders = _TranslationsRemindersJa._(_root);
	@override late final _TranslationsNotificationsJa notifications = _TranslationsNotificationsJa._(_root);
	@override late final _TranslationsLoginJa login = _TranslationsLoginJa._(_root);
	@override late final _TranslationsDisclaimerJa disclaimer = _TranslationsDisclaimerJa._(_root);
	@override late final _TranslationsCommonJa common = _TranslationsCommonJa._(_root);
	@override late final _TranslationsErrorsJa errors = _TranslationsErrorsJa._(_root);
	@override late final _TranslationsDebugJa debug = _TranslationsDebugJa._(_root);
}

// Path: onboarding
class _TranslationsOnboardingJa implements TranslationsOnboardingEn {
	_TranslationsOnboardingJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Calorifyへようこそ';
	@override String get subtitle => 'AIによるあなたの個人的な栄養コンパニオン';
	@override String get getStarted => '始める';
	@override late final _TranslationsOnboardingFeaturesJa features = _TranslationsOnboardingFeaturesJa._(_root);
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
	@override String get title => '履歴';
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
	@override String get saveMeal => '食事を保存';
	@override late final _TranslationsMealDeleteConfirmationJa deleteConfirmation = _TranslationsMealDeleteConfirmationJa._(_root);
	@override String get addedToLog => '食事がログに追加されました！';
	@override String get couldNotAdd => '食事を追加できませんでした: {error}';
	@override String get removedFromFavorites => 'お気に入りから削除されました！';
	@override String get savedAsFavorite => '食事がお気に入りとして保存されました！';
	@override String get couldNotUpdateFavorite => 'お気に入りの更新に失敗しました: {error}';
	@override String get failedToProcess => '処理に失敗しました: {error}';
	@override String get failedToProcessImage => '画像の処理に失敗しました: {error}';
	@override String get errorCompressingImage => '画像の圧縮エラー: {error}';
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
	@override String get editProfile => 'プロフィールを編集';
	@override String get noProfileData => 'プロフィールデータが見つかりません';
	@override String get yourProfile => 'あなたのプロフィール';
	@override String get viewAndManage => '健康情報を表示・管理';
	@override late final _TranslationsProfileSectionsJa sections = _TranslationsProfileSectionsJa._(_root);
	@override String get gender => '性別';
	@override String get height => '身長';
	@override String get weight => '体重';
	@override String get age => '年齢';
	@override String get weightGoal => '体重目標';
	@override String get activityLevel => '活動レベル';
	@override String get healthMetrics => '健康指標';
	@override String get notSet => '未設定';
	@override String get years => '年';
	@override String get updatedSuccessfully => 'プロフィールが正常に更新されました！';
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
	@override String get metricCm => 'メートル法 (cm)';
	@override String get imperialFtIn => 'インペリアル (ft/in)';
	@override String get metricKg => 'メートル法 (kg)';
	@override String get imperialLbs => 'インペリアル (lbs)';
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
	@override late final _TranslationsSettingsSendFeedbackJa sendFeedback = _TranslationsSettingsSendFeedbackJa._(_root);
	@override late final _TranslationsSettingsClearAllDataJa clearAllData = _TranslationsSettingsClearAllDataJa._(_root);
	@override late final _TranslationsSettingsDebugOptionsJa debugOptions = _TranslationsSettingsDebugOptionsJa._(_root);
	@override String get developerModeEnabled => '開発者モードが有効になりました！';
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
	@override String get change => '変更';
	@override String get enableNotifications => '通知を有効にする';
	@override String get skipForNow => '今はスキップ';
	@override String get saveChanges => '変更を保存';
	@override String get continue_ => '続ける';
	@override String get enabledSuccessfully => '通知が正常に有効になりました！';
	@override String get permissionDenied => '通知の許可が拒否されました';
	@override String get errorEnabling => '通知を有効にする際のエラー: {error}';
	@override String get errorCompletingSetup => 'セットアップの完了に関するエラー: {error}';
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
	@override String get signInFailed => 'Googleサインインに失敗しましたまたはキャンセルされました。';
}

// Path: disclaimer
class _TranslationsDisclaimerJa implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'ご注意ください';
	@override late final _TranslationsDisclaimerSnapJa snap = _TranslationsDisclaimerSnapJa._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateJa weightEstimate = _TranslationsDisclaimerWeightEstimateJa._(_root);
}

// Path: common
class _TranslationsCommonJa implements TranslationsCommonEn {
	_TranslationsCommonJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'キャンセル';
	@override String get save => '保存';
	@override String get delete => '削除';
	@override String get edit => '編集';
	@override String get close => '閉じる';
	@override String get kContinue => '続ける';
	@override String get skip => 'スキップ';
	@override String get error => 'エラー';
	@override String get loading => '読み込み中...';
	@override String get notSet => '未設定';
	@override String get today => '今日';
	@override String get yesterday => '昨日';
}

// Path: errors
class _TranslationsErrorsJa implements TranslationsErrorsEn {
	_TranslationsErrorsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'プロフィールデータの読み込みエラー';
	@override String get generic => 'エラーが発生しました。再試行してください。';
}

// Path: debug
class _TranslationsDebugJa implements TranslationsDebugEn {
	_TranslationsDebugJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'デバッグオプション';
	@override String get showActiveNotifications => 'アクティブな通知を表示';
	@override String get scheduleTestNotification => 'テスト通知をスケジュール (10秒)';
	@override String get triggerBreakfastNotification => '朝食通知を発生させる';
	@override String get cancelAllNotifications => 'すべての通知をキャンセル';
	@override String get activeNotifications => 'アクティブな通知';
	@override String get id => 'ID: {id}';
	@override String get fetchLatestWeight => '最新の体重を取得';
	@override String get fetchLatestHeight => '最新の身長を取得';
	@override String get writeTestWeight => 'テスト体重を書く (70kg)';
	@override String get writeTestHeight => 'テスト身長を書く (175cm)';
	@override String get syncLast7Days => '最後の7日間を同期';
	@override String get checkCurrentLocale => '現在のロケールを確認';
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

// Path: editProfile.sections
class _TranslationsEditProfileSectionsJa implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => '個人情報';
	@override String get physicalMeasurements => '身体測定';
	@override String get goalsAndActivity => '目標と活動';
}

// Path: settings.sections
class _TranslationsSettingsSectionsJa implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'プロフィール';
	@override String get localization => 'ローカライズ';
	@override String get notifications => '通知';
	@override String get supportAndLegal => 'サポートと法律';
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

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackJa implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'フィードバックを送信';
	@override String get subtitle => 'Calorifyの改善にご協力ください';
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
	@override String get description => 'Calorifyは推定栄養情報を提供します。正確さはあなたの入力と食品の変動に依存します。ガイドとして使用し、確定的な情報源として使用しないでください。個別の食事アドバイスについては専門家に相談してください。';
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
	@override String get description => '調理方法は食材の栄養成分に大きく影響を与えることがあります。Calorifyの推定値は、これらの変動を常に考慮しているわけではありません。';
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
	@override String get description => 'Calorifyの食品データベースは広範ですが、すべての食品アイテムやバリエーションを含んでいるわけではありません。';
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
	@override String get description => '実際の体重の減少や増加は、代謝、ホルモン、睡眠、ストレス、水分摂取、その他の個別の要因によって影響を受けますが、Calorifyでは測定できません。';
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
			'onboarding.welcome' => 'Calorifyへようこそ',
			'onboarding.subtitle' => 'AIによるあなたの個人的な栄養コンパニオン',
			'onboarding.getStarted' => '始める',
			'onboarding.features.foodRecognition.title' => 'スマートフード認識',
			'onboarding.features.foodRecognition.description' => '写真を撮ってAIに食事を特定させましょう',
			'onboarding.features.aiAnalysis.title' => 'AI分析',
			'onboarding.features.aiAnalysis.description' => 'あなたの説明から即座に栄養情報を取得',
			'onboarding.features.healthIntegration.title' => '健康統合',
			'onboarding.features.healthIntegration.description' => 'より良い洞察のためにHealth Connectと接続する',
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
			'home.connectHealth.title' => 'Health Connectと同期',
			'home.connectHealth.description' => 'あなたの栄養データをHealth Connectと同期します',
			'home.connectHealth.install' => 'インストール',
			'home.connectHealth.connect' => '接続',
			'history.title' => '履歴',
			'history.noMeals' => '記録された食事はありません',
			'history.emptyMessage' => '最後の食事の写真を撮ってここに記録しましょう。',
			'history.today' => '今日',
			'history.yesterday' => '昨日',
			'meal.ohNo' => 'おっと！',
			'meal.delete' => '削除',
			'meal.editMeal' => '食事を編集',
			'meal.saveMeal' => '食事を保存',
			'meal.deleteConfirmation.title' => '食事を削除',
			'meal.deleteConfirmation.message' => '本当にこの食事のエントリーを削除してもよろしいですか？',
			'meal.deleteConfirmation.cancel' => 'キャンセル',
			'meal.deleteConfirmation.delete' => '削除',
			'meal.addedToLog' => '食事がログに追加されました！',
			'meal.couldNotAdd' => '食事を追加できませんでした: {error}',
			'meal.removedFromFavorites' => 'お気に入りから削除されました！',
			'meal.savedAsFavorite' => '食事がお気に入りとして保存されました！',
			'meal.couldNotUpdateFavorite' => 'お気に入りの更新に失敗しました: {error}',
			'meal.failedToProcess' => '処理に失敗しました: {error}',
			'meal.failedToProcessImage' => '画像の処理に失敗しました: {error}',
			'meal.errorCompressingImage' => '画像の圧縮エラー: {error}',
			'favorites.title' => 'お気に入り',
			'favorites.empty' => 'まだお気に入りの食事はありません。',
			'profile.title' => 'プロフィール',
			'profile.editProfile' => 'プロフィールを編集',
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
			'profile.activityLevel' => '活動レベル',
			'profile.healthMetrics' => '健康指標',
			'profile.notSet' => '未設定',
			'profile.years' => '年',
			'profile.updatedSuccessfully' => 'プロフィールが正常に更新されました！',
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
			'editProfile.metricCm' => 'メートル法 (cm)',
			'editProfile.imperialFtIn' => 'インペリアル (ft/in)',
			'editProfile.metricKg' => 'メートル法 (kg)',
			'editProfile.imperialLbs' => 'インペリアル (lbs)',
			'settings.title' => '設定',
			'settings.sections.profile' => 'プロフィール',
			'settings.sections.localization' => 'ローカライズ',
			'settings.sections.notifications' => '通知',
			'settings.sections.supportAndLegal' => 'サポートと法律',
			'settings.sections.dangerZone' => '危険ゾーン',
			'settings.sections.developer' => '開発者',
			'settings.editProfile.title' => 'プロフィールを編集',
			'settings.editProfile.subtitle' => '個人情報を更新',
			'settings.language.title' => '言語',
			'settings.heightUnit.title' => '身長の単位',
			'settings.weightUnit.title' => '体重の単位',
			'settings.mealReminders.title' => '食事リマインダー',
			'settings.mealReminders.subtitle' => 'タイムリーなアラートで進捗を維持',
			'settings.sendFeedback.title' => 'フィードバックを送信',
			'settings.sendFeedback.subtitle' => 'Calorifyの改善にご協力ください',
			'settings.clearAllData.title' => 'すべてのデータをクリア',
			'settings.clearAllData.subtitle' => 'すべての情報を取り消し不可能に削除します',
			'settings.clearAllData.confirmationTitle' => 'すべてのデータをクリアしますか？',
			'settings.clearAllData.confirmationMessage' => 'この操作は取り消せません。すべてのログされた食事、お気に入り、プロフィール設定は完全に削除されます。',
			'settings.clearAllData.cancel' => 'キャンセル',
			'settings.clearAllData.clearEverything' => 'すべてをクリア',
			'settings.debugOptions.title' => 'デバッグオプション',
			'settings.developerModeEnabled' => '開発者モードが有効になりました！',
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
			'reminders.change' => '変更',
			'reminders.enableNotifications' => '通知を有効にする',
			'reminders.skipForNow' => '今はスキップ',
			'reminders.saveChanges' => '変更を保存',
			'reminders.continue_' => '続ける',
			'reminders.enabledSuccessfully' => '通知が正常に有効になりました！',
			'reminders.permissionDenied' => '通知の許可が拒否されました',
			'reminders.errorEnabling' => '通知を有効にする際のエラー: {error}',
			'reminders.errorCompletingSetup' => 'セットアップの完了に関するエラー: {error}',
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
			'login.signInFailed' => 'Googleサインインに失敗しましたまたはキャンセルされました。',
			'disclaimer.pleaseNote' => 'ご注意ください',
			'disclaimer.snap.description' => 'Calorifyは推定栄養情報を提供します。正確さはあなたの入力と食品の変動に依存します。ガイドとして使用し、確定的な情報源として使用しないでください。個別の食事アドバイスについては専門家に相談してください。',
			'disclaimer.snap.portionSize.title' => 'ポーションサイズ',
			'disclaimer.snap.portionSize.description' => '推定の正確さは、ポーションサイズの正確な評価に大きく依存します。',
			'disclaimer.snap.preparationMethods.title' => '調理方法',
			'disclaimer.snap.preparationMethods.description' => '調理方法は食材の栄養成分に大きく影響を与えることがあります。Calorifyの推定値は、これらの変動を常に考慮しているわけではありません。',
			'disclaimer.snap.ingredients.title' => '材料',
			'disclaimer.snap.ingredients.description' => '隠れた材料が多い複雑な料理は、あまり正確な推定をもたらさない可能性があります。',
			'disclaimer.snap.databaseLimitations.title' => 'データベースの制限',
			'disclaimer.snap.databaseLimitations.description' => 'Calorifyの食品データベースは広範ですが、すべての食品アイテムやバリエーションを含んでいるわけではありません。',
			'disclaimer.weightEstimate.title' => '体重の推定について',
			'disclaimer.weightEstimate.description' => '予測される体重変化は、単純なカロリー摂取対カロリー消費のモデルに基づく理論的な推定です。これはモチベーションのガイダンスを目的としており、実際の体重の予測として使わないでください。',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'カロリーの正確性',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'この推定値は、追跡されたカロリー摂取と消費の正確さに依存しています。不正確な記録は不正確な推定をもたらします。',
			'disclaimer.weightEstimate.biologicalFactors.title' => '生物的要因',
			'disclaimer.weightEstimate.biologicalFactors.description' => '実際の体重の減少や増加は、代謝、ホルモン、睡眠、ストレス、水分摂取、その他の個別の要因によって影響を受けますが、Calorifyでは測定できません。',
			'disclaimer.weightEstimate.waterWeight.title' => '水分による体重の変動',
			'disclaimer.weightEstimate.waterWeight.description' => '通常の体重は、水分貯留、消化、タイミングによる影響で大きく変動することがあります。推定値はこれらの毎日の変動を考慮していません。',
			'disclaimer.weightEstimate.professionalGuidance.title' => '専門家のガイダンス',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'この推定を医療の決定に使用しないでください。個別の体重管理アドバイスについては、常に医療専門家または登録栄養士に相談してください。',
			'common.cancel' => 'キャンセル',
			'common.save' => '保存',
			'common.delete' => '削除',
			'common.edit' => '編集',
			'common.close' => '閉じる',
			'common.kContinue' => '続ける',
			'common.skip' => 'スキップ',
			'common.error' => 'エラー',
			'common.loading' => '読み込み中...',
			'common.notSet' => '未設定',
			'common.today' => '今日',
			'common.yesterday' => '昨日',
			'errors.loadingProfileData' => 'プロフィールデータの読み込みエラー',
			'errors.generic' => 'エラーが発生しました。再試行してください。',
			'debug.title' => 'デバッグオプション',
			'debug.showActiveNotifications' => 'アクティブな通知を表示',
			'debug.scheduleTestNotification' => 'テスト通知をスケジュール (10秒)',
			'debug.triggerBreakfastNotification' => '朝食通知を発生させる',
			'debug.cancelAllNotifications' => 'すべての通知をキャンセル',
			'debug.activeNotifications' => 'アクティブな通知',
			'debug.id' => 'ID: {id}',
			'debug.fetchLatestWeight' => '最新の体重を取得',
			'debug.fetchLatestHeight' => '最新の身長を取得',
			'debug.writeTestWeight' => 'テスト体重を書く (70kg)',
			'debug.writeTestHeight' => 'テスト身長を書く (175cm)',
			'debug.syncLast7Days' => '最後の7日間を同期',
			'debug.checkCurrentLocale' => '現在のロケールを確認',
			_ => null,
		};
	}
}
