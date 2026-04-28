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
	@override late final _TranslationsCommonJa common = _TranslationsCommonJa._(_root);
	@override late final _TranslationsFeedbackRatingJa feedbackRating = _TranslationsFeedbackRatingJa._(_root);
	@override late final _TranslationsHealthJa health = _TranslationsHealthJa._(_root);
}

// Path: errors
class _TranslationsErrorsJa implements TranslationsErrorsEn {
	_TranslationsErrorsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'リクエストが多すぎます。少し待ってからもう一度お試しください。';
	@override String get networkError => 'ネットワークエラー。インターネット接続を確認してください。';
	@override String get unknownError => '問題が発生しました。しばらくしてからもう一度お試しください。';
	@override String get loadingProfileData => 'プロフィールデータの読み込みでエラーが発生しました';
	@override String get somethingWentWrong => '問題が発生しました。';
	@override String get retry => '再試行';
}

// Path: onboarding
class _TranslationsOnboardingJa implements TranslationsOnboardingEn {
	_TranslationsOnboardingJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} へようこそ';
	@override String get subtitle => 'AI 搭載のあなた専用の栄養コンパニオン';
	@override String get getStarted => 'はじめる';
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
class _TranslationsHistoryJa implements TranslationsHistoryEn {
	_TranslationsHistoryJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get noMeals => '食事は記録されていません';
	@override String get emptyMessage => '直近の食事を撮影して、ここに記録しましょう。';
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
	@override String get mealName => '食事名';
	@override String get mealNameHint => '例: スクランブルエッグとトースト';
	@override String get mealQuantity => '量';
	@override String get mealQuantityHint => '例: 1 杯、2 枚';
	@override String get timeOfMeal => '食事の時間';
	@override String get timeOfMealHint => '食事をした時間を選択';
	@override String get mealType => '食事の種類';
	@override late final _TranslationsMealNutritionJa nutrition = _TranslationsMealNutritionJa._(_root);
	@override late final _TranslationsMealDeleteConfirmationJa deleteConfirmation = _TranslationsMealDeleteConfirmationJa._(_root);
	@override String get addedToLog => '食事を記録に追加しました！';
	@override String couldNotAdd({required Object error}) => '食事を追加できませんでした: ${error}';
	@override String get savedSuccessfully => '食事を追加しました！';
	@override String get updatedSuccessfully => '食事を更新しました！';
	@override String errorSaving({required Object error}) => '食事の保存中にエラーが発生しました: ${error}';
	@override String get removedFromFavorites => 'お気に入りから削除しました！';
	@override String get savedAsFavorite => '食事をお気に入りに保存しました！';
	@override String get unfavorite => 'お気に入り解除';
	@override String couldNotUpdateFavorite({required Object error}) => 'お気に入りを更新できませんでした: ${error}';
	@override String get feedbackThanks => 'フィードバックありがとうございます！';
	@override String get reanalysisUpdated => 'フィードバックに基づいて分析を更新しました。';
	@override String failedToProcess({required Object error}) => '処理に失敗しました: ${error}';
	@override String failedToProcessImage({required Object error}) => '画像の処理に失敗しました: ${error}';
	@override String errorCompressingImage({required Object error}) => '画像の圧縮中にエラーが発生しました: ${error}';
	@override String get failedToSave => 'データを保存できませんでした。もう一度お試しください。';
	@override String get skip => 'スキップ';
	@override late final _TranslationsMealVariationJa variation = _TranslationsMealVariationJa._(_root);
	@override late final _TranslationsMealAnalysisJa analysis = _TranslationsMealAnalysisJa._(_root);
	@override late final _TranslationsMealFeedbackJa feedback = _TranslationsMealFeedbackJa._(_root);
}

// Path: favorites
class _TranslationsFavoritesJa implements TranslationsFavoritesEn {
	_TranslationsFavoritesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'お気に入り';
	@override String get empty => 'お気に入りの食事はまだありません。';
	@override String get searchPlaceholder => 'お気に入りを検索';
	@override String get searchEmptyTitle => '検索条件に一致するお気に入りはありません';
	@override String get searchEmptySubtitle => '別の食事名、量、または食事の種類でお試しください。';
	@override String get sortLabel => '並べ替え';
	@override String get undo => '元に戻す';
	@override String removed({required Object name}) => '${name} をお気に入りから削除しました';
	@override late final _TranslationsFavoritesSortOptionsJa sortOptions = _TranslationsFavoritesSortOptionsJa._(_root);
}

// Path: profile
class _TranslationsProfileJa implements TranslationsProfileEn {
	_TranslationsProfileJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィール';
	@override String get noProfileData => 'プロフィールデータが見つかりません';
	@override String get yourProfile => 'あなたのプロフィール';
	@override String get viewAndManage => '健康情報の表示と管理';
	@override late final _TranslationsProfileSectionsJa sections = _TranslationsProfileSectionsJa._(_root);
	@override String get gender => '性別';
	@override String get height => '身長';
	@override String get weight => '体重';
	@override String get age => '年齢';
	@override String get weightGoal => '体重の目標';
	@override String get targetWeight => '目標体重';
	@override String get activityLevel => '活動量';
	@override String get healthMetrics => '健康指標';
	@override String get notSet => '未設定';
	@override String get years => '歳';
	@override String get updatedSuccessfully => 'プロフィールを更新しました！';
	@override late final _TranslationsProfileCalculatedValuesJa calculatedValues = _TranslationsProfileCalculatedValuesJa._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreJa implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ヘルススコア';
	@override String get whyThisScore => 'このスコアの理由';
	@override String get note => 'このスコアは、特定された食材と栄養密度に基づく AI の推定値です。食事に関するアドバイスは、必ず専門家にご相談ください。';
	@override String get unhealthy => '不健康';
	@override String get healthy => '健康的';
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
	@override String get weightGoal => '体重の目標';
	@override String get activityLevel => '活動量';
	@override String get metric => 'メートル法';
	@override String get imperial => 'ヤード・ポンド法';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'メートル法（cm）';
	@override String get imperialFtIn => 'ヤード・ポンド法（ft/in）';
	@override String get metricKg => 'メートル法（kg）';
	@override String get imperialLbs => 'ヤード・ポンド法（lbs）';
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
	@override late final _TranslationsSettingsExportMealHistoryJa exportMealHistory = _TranslationsSettingsExportMealHistoryJa._(_root);
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
	@override String get title => 'リマインダーで継続をサポート';
	@override String get description => '食事を記録するやさしいリマインドで、栄養目標の継続を後押しします';
	@override String get notificationsEnabled => '通知は有効です';
	@override String get notificationsDisabled => '通知は無効です';
	@override String get enabledSubtitle => '食事リマインダーを受け取ります';
	@override String get disabledSubtitle => '通知を有効にして食事リマインダーを受け取りましょう';
	@override String get mealReminders => '食事リマインダー';
	@override String get breakfast => '朝食';
	@override String get lunch => '昼食';
	@override String get dinner => '夕食';
	@override String get snack => '間食';
	@override String get unknown => '不明';
	@override String get change => '変更';
	@override String get enableNotifications => '通知を有効にする';
	@override String get skipForNow => '今はスキップ';
	@override String get saveChanges => '変更を保存';
	@override String get enabledSuccessfully => '通知を有効にしました！';
	@override String get permissionDenied => '通知の権限が拒否されました';
	@override String errorEnabling({required Object error}) => '通知の有効化中にエラーが発生しました: ${error}';
	@override String errorCompletingSetup({required Object error}) => '設定の完了中にエラーが発生しました: ${error}';
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
	@override String get signInWithGoogle => 'Google でログイン';
	@override String get signInFailed => 'Google でのログインに失敗したか、キャンセルされました。';
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
	@override late final _TranslationsDisclaimerCalorieExpenditureJa calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureJa._(_root);
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
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel} を気に入っていただけていますか？';
	@override String get yes => 'はい、気に入っています';
	@override String get no => 'あまり…';
	@override String get rateStepHeading => 'Play ストアで評価する';
	@override String get emailStepHeading => 'メールでフィードバックを送る';
	@override String soloDevMessage({required Object appLabel}) => '短い評価でも、${appLabel} を見つけてもらう助けになり、開発の継続に繋がります。よろしければ評価をお願いできますか？';
	@override String get shareFeedbackViaEmail => 'あなたの声が次の一歩を形作ります。すべてのメッセージに目を通します。メールで感想を共有しませんか？';
	@override String get rateCta => 'Play ストアで評価';
	@override String get maybeLater => 'また今度';
	@override String get sendFeedback => 'フィードバックを送る';
	@override String get noThanks => '結構です';
	@override String get aboutUsDescription => '小さなチームが心を込めて作りました。私たちはプライバシー、シンプルさ、より良い食習慣づくりに焦点を当てています。';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '${appLabel} の裏側にいる人に興味がありますか？こちらをご覧ください ';
	@override String get aboutUsLinkLabel => '開発者情報';
	@override String get thankYouMessage => 'ありがとうございます！また別の機会にお伺いします。';
}

// Path: health
class _TranslationsHealthJa implements TranslationsHealthEn {
	_TranslationsHealthJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect に同期できませんでした';
	@override String get mealSynced => 'Health Connect と同期しました';
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
	@override String get title => '性別を教えてください';
	@override String get description => '性別は基礎代謝量（BMR）の正確な計算に役立ちます。';
	@override String get next => '次へ';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightJa implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '身長はどのくらいですか？';
	@override String get description => '身長は BMI とエネルギー必要量の正確な計算に役立ちます。';
	@override String get metric => 'メートル法';
	@override String get imperial => 'ヤード・ポンド法';
	@override String get next => '次へ';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightJa implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => '現在の体重は？';
	@override String get currentDescription => '日々の目標をパーソナライズするために必要です。';
	@override String get targetTitle => '目標体重は？';
	@override String get targetDescription => '目標体重の設定は、長期プランの策定に役立ちます。';
	@override String get metric => 'メートル法';
	@override String get imperial => 'ヤード・ポンド法';
	@override String get next => '次へ';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeJa implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '誕生日はいつですか？';
	@override String get description => '年齢は正確なカロリー必要量の計算に役立ちます。';
	@override String get next => '次へ';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleJa implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get underweight => '低体重';
	@override String get healthy => '標準';
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
	@override String get title => '目標は何ですか？';
	@override String get description => 'あなたが達成したい内容に最も近い目標を選びましょう';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelJa implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '普段の活動量は？';
	@override String get description => 'より正確な 1 日のカロリー必要量の計算に役立ちます';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectJa implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect と連携';
	@override String get description => '健康データを同期して、より良いインサイトと自動カロリートラッキングを';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingJa automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingJa._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsJa progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsJa._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationJa seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationJa._(_root);
	@override String get connected => 'Health Connect 連携済み';
	@override String get notConnected => 'Health Connect 未連携';
	@override String get setup => 'Health Connect を設定';
	@override String get skipForNow => '今はスキップ';
	@override String get statusConnected => 'Health Connect は接続済みです。';
	@override String get statusSuccess => 'Health Connect の接続に成功しました！';
	@override String statusPermissionDenied({required Object appLabel}) => '権限が拒否されました。${appLabel} の設定から Health Connect の権限を有効にしてください。';
	@override String statusError({required Object error}) => 'Health Connect の設定中にエラーが発生しました: ${error}';
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

// Path: home.aiSummary
class _TranslationsHomeAiSummaryJa implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたの AI サマリー';
	@override String get logMore => '今後数日で食事をさらに記録すると、パーソナライズされた AI インサイトが得られます。';
	@override String get loading => 'サマリーを読み込み中…';
	@override String mealCount({required Object count}) => '記録した食事 ${count} 件';
	@override String macroBalanceScore({required Object score}) => 'バランススコア ${score}';
	@override String get topFoods => 'よく食べる食品';
	@override String get trendUp => 'カロリーは増加傾向';
	@override String get trendDown => 'カロリーは減少傾向';
	@override String get trendSteady => 'カロリーは安定傾向';
	@override String generatedAt({required Object time}) => '更新 ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalJa implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '1日の目標を設定';
	@override String get titleSet => 'あなたの 1 日の目標';
	@override String get description => 'ウェルネスの旅を始めませんか？下で 1 日のカロリー目標を設定しましょう。';
	@override String get descriptionSet => 'コンパスはセット完了！これがあなたの 1 日のカロリー目標です。';
	@override String get yourGoal => 'あなたの目標';
	@override String get goal => '目標';
	@override String get dailyCalories => '1 日のカロリー（kcal）';
	@override String get setGoal => '目標を設定';
	@override String get intake => '摂取';
	@override String get burned => '消費';
	@override String get weightImpact => '体重への影響';
	@override String get estLoss => '推定減少';
	@override String get estGain => '推定増加';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryJa implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '1 日のまとめ';
	@override String get calories => 'カロリー';
	@override String get carbs => '炭水化物';
	@override String get protein => 'たんぱく質';
	@override String get fat => '脂質';
	@override String get fiber => '食物繊維';
	@override String get grams => 'グラム';
	@override String get chartAccessibilityLabel => 'マクロのチャート';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressJa implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '今日のマクロ比';
	@override String get target => '目標';
	@override String get current => '現在';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryJa implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '7 日間のマクロ履歴';
	@override String get trendTitle => '今日のトレンド';
	@override String peakHour({required Object hour}) => 'ピーク: ${hour}:00';
	@override String get noHistoryYet => '履歴はまだありません';
	@override String get startLogging => 'ここに 7 日間のマクロ傾向を表示するには\n食事の記録を始めましょう';
}

// Path: home.mealLog
class _TranslationsHomeMealLogJa implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '記録された食事';
	@override String get emptyMessage => '直近の食事を撮影して、ここに記録しましょう。';
	@override String get noMealsToday => '今日は食事が記録されていません';
	@override String get seeAllMeals => 'すべての食事を見る';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionJa implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI でクイック追加';
	@override String get description => '食事内容を説明するだけで、詳細は AI にお任せ。';
	@override String get hint => '例: 朝食に大盛りのオートミールにスライスバナナとホエイプロテインを 1 スクープ…';
	@override String get analyzeMeal => '食事を解析';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsJa implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'お気に入りの食事';
	@override String get description => 'よく食べる食事を素早く追加できます。';
	@override String get noFavorites => 'お気に入りはまだありません。';
	@override String get addFavoriteHint => '星マークをタップすると、お気に入りに登録できます。';
	@override String get seeAll => 'すべて見る';
	@override String get add => '追加';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapJa implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '撮って記録';
	@override String get description => 'カメラで食事を撮影して、AI に分析させましょう。';
	@override String get openCamera => 'カメラを開く';
	@override String get gallery => 'ギャラリー';
	@override String get compressingPhoto => '写真を最適化中…';
	@override String get uploadingPhoto => '写真をアップロード中…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthJa implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect と同期';
	@override String get description => '栄養データを Health Connect と同期';
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
	@override String get fat => '脂質 (g)';
	@override String get fiber => '食物繊維 (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationJa implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '食事を削除';
	@override String get message => 'この食事の記録を削除してもよろしいですか？';
	@override String get cancel => 'キャンセル';
	@override String get delete => '削除';
}

// Path: meal.variation
class _TranslationsMealVariationJa implements TranslationsMealVariationEn {
	_TranslationsMealVariationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String question({required Object total, required Object current}) => '${total} 問中 ${current} 問目';
	@override String get noVariationsAvailable => 'バリエーションはありません';
}

// Path: meal.analysis
class _TranslationsMealAnalysisJa implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI の食事分析';
	@override String get reassurance => '通常は数秒で完了します。';
	@override String get stepStarted => '開始しています…';
	@override String get stepDecomposition => '食事内容を理解しています…';
	@override String get stepIngredients => '栄養データに食材を照合しています…';
	@override String get stepUncertainty => '信頼度を確認しています…';
	@override String get stepMealTypeQuestion => 'もう少しで完了です…';
	@override String get stepResult => '結果を確定しています…';
	@override String get stepError => '問題が発生しました';
	@override String get stepDefault => '食事を分析しています…';
	@override String get progressUnderstand => '理解';
	@override String get progressMatch => '照合';
	@override String get progressCheck => '確認';
	@override String get progressFinish => '完了';
	@override String ingredientsLine({required Object count}) => '${count} 個の食材を検出';
	@override String get ingredientsPending => '食材をスキャン中…';
	@override String mealPreviewDescription({required Object text}) => '「${text}」';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackJa implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'どこが間違っていますか？';
	@override String get subtitle => '1 つ以上の問題を選択して、分析の改善にご協力ください。';
	@override String get tellUsMore => '詳しく教えてください';
	@override String get describeIncorrect => '何が間違っていたか教えてください';
	@override String get submit => '送信';
	@override String get issueFoodIdentification => '食品の識別';
	@override String get issuePortionSize => '1 食分の量';
	@override String get issueCalorieDistribution => 'カロリー配分';
	@override String get issueMacrosWrong => 'マクロが正しくない';
	@override String get issueMissingItems => '不足している項目';
	@override String get issueExtraItems => '余分な項目';
	@override String get issueOther => 'その他';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsJa implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get recent => '最近';
	@override String get calories => 'カロリー';
	@override String get alphabetical => 'アルファベット順';
}

// Path: profile.sections
class _TranslationsProfileSectionsJa implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'プロフィール';
	@override String get basicInformation => '基本情報';
	@override String get goalsAndActivity => '目標と活動量';
	@override String get calculatedValues => '算出値';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesJa implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => '1 日の目標';
	@override String get calPerDay => 'kcal/日';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsJa implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => '個人情報';
	@override String get physicalMeasurements => '身体計測';
	@override String get goalsAndActivity => '目標と活動量';
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
	@override String get healthConnect => 'Health Connect';
	@override String get supportAndLegal => 'サポートと法務';
	@override String get about => '情報';
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
	@override String get subtitle => '使用する言語を選択';
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
	@override String get subtitle => 'タイムリーな通知で習慣化をサポート';
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
	@override String get title => 'フィードバックを送る';
	@override String subtitle({required Object appLabel}) => '${appLabel} の改善にご協力ください';
	@override String emailSubject({required Object appLabel}) => '${appLabel} アプリのフィードバック';
	@override String get emailBodyPrefix => '以下にフィードバックをご記入ください:';
	@override String get appVersion => 'アプリのバージョン';
	@override String get device => 'デバイス';
	@override String get osVersion => 'OS バージョン';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryJa implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '食事履歴をエクスポート';
	@override String get subtitle => '記録した食事の CSV を共有';
	@override String get shareText => 'Calorify の食事履歴エクスポート';
	@override String failed({required Object error}) => '食事履歴をエクスポートできませんでした: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataJa implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'すべてのデータを削除';
	@override String get subtitle => 'すべての情報を元に戻せない形で削除します';
	@override String get confirmationTitle => 'すべてのデータを削除しますか？';
	@override String get confirmationMessage => 'この操作は元に戻せません。記録した食事、お気に入り、プロフィール設定はすべて完全に削除されます。';
	@override String get cancel => 'キャンセル';
	@override String get clearEverything => 'すべて削除';
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
	@override String get title => 'Health Connect';
	@override String get subtitle => '権限の表示と管理';
	@override late final _TranslationsSettingsHealthConnectUnavailableJa unavailable = _TranslationsSettingsHealthConnectUnavailableJa._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsJa permissions = _TranslationsSettingsHealthConnectPermissionsJa._(_root);
	@override String get managePermissions => '権限を管理';
	@override String get openSettings => 'Health Connect の設定を開く';
	@override String get requestPermissions => '権限をリクエスト';
	@override String get permissionRequestCancelledOrFailed => '権限リクエストがキャンセルまたは失敗しました。もう一度お試しになるか、Health Connect の設定で手動で許可してください。';
	@override String get permissionRequestFailed => '権限をリクエストできませんでした。もう一度お試しになるか、Health Connect の設定で手動で許可してください。';
	@override String get requestingPermissions => 'リクエスト中...';
}

// Path: settings.about
class _TranslationsSettingsAboutJa implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'このアプリについて';
	@override String get tagline => '速く、無料、プライバシー最優先のカロリー可視化';
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
	@override String get title => '朝食の時間です！🍳';
	@override String get body => '朝食の記録をお忘れなく';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchJa implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '昼食の時間です！🥗';
	@override String get body => '昼食を記録しましょう';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerJa implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '夕食の時間です！🍽️';
	@override String get body => '夕食の記録をお忘れなく';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackJa implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '間食の時間！🍎';
	@override String get body => 'ヘルシーなスナックの記録をどうぞ';
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
	@override String description({required Object appLabel}) => '${appLabel} は推定の栄養情報を提供します。精度は入力内容や食品の違いに依存します。目安として活用し、確定的な情報源としては使用しないでください。パーソナライズされた食事指導は専門家にご相談ください。';
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
	@override String get title => '体重推定について';
	@override String get description => '表示される体重変化は、単純な摂取カロリーと消費カロリーの差に基づく理論上の推定です。実際の体重を予測するものではなく、あくまでモチベーションの目安としてご利用ください。';
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
	@override String get description => 'これらの指標は、あなたのエネルギー必要量の理解と栄養目標の設定に役立ちます。';
	@override late final _TranslationsDisclaimerHealthMetricsBmrJa bmr = _TranslationsDisclaimerHealthMetricsBmrJa._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeJa tdee = _TranslationsDisclaimerHealthMetricsTdeeJa._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalJa dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalJa._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureJa implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '消費カロリーの推定';
	@override String get description => 'Health Connect のデータが利用できない場合は、基礎代謝量（BMR）と活動量（TDEE）をもとに、今日これまでに消費したカロリーを推定します。';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedJa howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedJa._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceJa professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceJa._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionJa implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'スマートな食品認識';
	@override String get description => '写真を撮るだけで AI が食事を特定します';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisJa implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 解析';
	@override String get description => '説明文から瞬時に栄養情報を取得';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationJa implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ヘルス連携';
	@override String get description => 'Health Connect と接続して、より良いインサイトを';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesJa implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get underweight => '低体重';
	@override String get healthyWeight => '標準体重';
	@override String get overweight => '過体重';
	@override String get obese => '肥満';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesJa implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get underweight => '栄養価の高い食事でバランスのとれた体重に近づく健康的なプラン作りをお手伝いします。';
	@override String get healthy => '素晴らしいですね！健康的な範囲にあります。活力とエネルギーの維持をサポートします。';
	@override String overweight({required Object appLabel}) => '${appLabel} は AI を活用したトラッキングで、無理なく目標に近づく旅をシンプルにします。';
	@override String get obese => 'あなたの健康目標に向けて、パーソナライズされたガイダンスと持続可能な戦略で寄り添います。';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingJa implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '自動カロリートラッキング';
	@override String get description => 'フィットネスアプリからの消費カロリーを記録';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsJa implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '進捗インサイト';
	@override String get description => '健康の傾向を詳しく把握';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationJa implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'シームレスな統合';
	@override String get description => 'お気に入りのヘルスアプリとデータを同期';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessJa implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '一人じゃありません';
	@override String get genericMessage => '研究によると、継続的な記録が長期的な成功の最も強力な指標です。';
	@override String personalizedMessage({required Object goal, required Object age, required Object gender}) => '${goal} を目指す ${age} 歳の${gender}にとっても、継続的な記録が成功のいちばんの近道です。';
	@override String closingMessage({required Object appLabel}) => '${appLabel} なら、手作業の 10 分の 1 の手間で続けられます。';
	@override String get getStartedTitle => 'さあ、始めましょうか？';
	@override String get tipPhoto => '食事の写真を撮れば即座に分析できます';
	@override String get tipConsistency => '継続して記録すると、意味のある進捗が見えてきます';
	@override String get tipProgress => '毎日進捗を振り返ってモチベーションを維持';
	@override String get button => 'はじめる';
	@override String get defaultGender => '方';
	@override String get defaultGoal => 'より健康なあなた';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileJa implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたの健康プロフィール';
	@override String bmiDescription({required Object bmi}) => 'あなたの指標に基づく BMI は ${bmi} です。';
	@override String get finalizeDescription => 'プロフィールを仕上げて、体験をあなた向けに最適化しましょう。';
	@override String get goalGain => '増やす';
	@override String get goalLose => '減らす';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => '目標に到達するには、${direction} ${diff}${unit} が必要です。';
	@override String get goalReached => 'すでに目標体重です！維持をサポートします。';
	@override String get button => 'はじめる';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleJa implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '素晴らしいスタート！';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => '${goalText} に向けて最初の一歩を踏み出しました。あなたは ${activityText} なので、${appLabel} がライフスタイルに合わせて目標を調整します。';
	@override String get personalizedTargets => 'パーソナライズされたカロリー目標';
	@override String get aiMealDetection => 'AI による食事検出';
	@override String get macroBreakdowns => '詳細なマクロ栄養の内訳';
	@override String get button => 'はじめる';
	@override String get defaultGoal => 'あなたの目標';
	@override String get defaultActivity => 'アクティブ';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightJa implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '減量';
	@override String get description => 'カロリー赤字を作って体重を減らす';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightJa implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '現状維持';
	@override String get description => '現在の体重を維持する';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightJa implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '増量';
	@override String get description => 'カロリー黒字を作って体重を増やす';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryJa implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '座りがち';
	@override String get description => '運動はほとんどしない';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveJa implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => 'ややアクティブ';
	@override String get description => '軽い運動を週 1〜3 日';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveJa implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '適度にアクティブ';
	@override String get description => '中程度の運動を週 3〜5 日';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveJa implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => 'とてもアクティブ';
	@override String get description => '激しい運動を週 6〜7 日';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveJa implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '超アクティブ';
	@override String get description => '非常に激しい運動／肉体労働';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableJa implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect が利用できません';
	@override String get description => 'この端末では Health Connect を利用できません。Play ストアから Health Connect をインストール（Android 9+）するか、Android 14 以上にアップデートしてください。';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsJa implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '権限';
	@override String get description => 'Health Connect 連携のために、次の権限をリクエストします。';
	@override String get granted => '許可済み';
	@override String get notGranted => '未許可';
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
	@override String content({required Object appLabel}) => '${appLabel} は単純なフラストレーションから生まれました。多くのカロリー記録アプリは複雑すぎたり、常に手入力を求めたり、高額なサブスクを請求したり、プライバシーを犠牲にしたりするからです。\n\nソロ開発者として、もっとシンプルで公正なものを作りたいと思いました。AI を使って手間を減らし、軽快で無料、そしてあなたの健康データを尊重するアプリです。\n\n${appLabel} は私が望んでいたアプリそのもの。アカウント不要、トラッキングなし、広告なし——明快で実践的なインサイトと、あなたの健康目標だけを。';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyJa implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたのプライバシーを大切に';
	@override String get description => 'プライバシーは後付けではなく設計思想です。具体的には次のことを意味します。';
	@override String get noAccounts => 'アカウント不要\nすぐに使い始められます。サインアップも個人情報も不要です。';
	@override String noTracking({required Object appLabel}) => '行動トラッキングなし\n${appLabel} はあなたの行動を監視したり、利用プロファイルを作成したり、他のアプリやウェブサイトを横断して追跡したりしません。';
	@override String noAds({required Object appLabel}) => '広告なしの設計\n${appLabel} は広告やデータ駆動のマネタイズに依存しません。';
	@override String get noDataSelling => 'データ販売なし\nあなたの健康データが第三者に販売・共有されることはありません。';
	@override String get localStorage => 'ローカル優先の保存\nあなたのデータは端末内に保存されます。';
	@override String get privacyPolicy => 'プライバシーポリシー';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperJa implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ソロ開発者が制作';
	@override String description({required Object appLabel}) => '${appLabel} は、落ち着きがありプライバシーを尊重するヘルスソフトウェアを目指して、ひとりの開発者が開発・保守しています。\n\nいただいたフィードバックはすべて目を通し、今後の方向性に活かします。';
	@override String get website => 'ウェブサイト';
	@override String get email => 'メール';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackJa implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} を気に入っていただけましたか？';
	@override String description({required Object appLabel}) => 'あなたの声が ${appLabel} をより良くします。';
	@override String get rateApp => 'Play ストアで評価する';
	@override String get sendFeedback => 'フィードバックを送る';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeJa implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ポーションサイズ';
	@override String get description => '推定の正確さは、あなたの適切な分量評価に大きく依存します。';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsJa implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '調理方法';
	@override String description({required Object appLabel}) => '調理方法によって栄養価は大きく変化します。${appLabel} の推定がこれらの違いを常に反映できるとは限りません。';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsJa implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '食材';
	@override String get description => '隠し食材の多い複雑な料理では、推定が不正確になる場合があります。';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsJa implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'データベースの限界';
	@override String description({required Object appLabel}) => '${appLabel} の食品データベースは充実していますが、すべての食品やバリエーションを網羅しているわけではありません。';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyJa implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'カロリーの正確性';
	@override String get description => 'この推定は、記録した摂取・消費カロリーの正確さに依存します。不正確な記録は、不正確な推定につながります。';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsJa implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '生理学的要因';
	@override String description({required Object appLabel}) => '実際の増減は、代謝、ホルモン、睡眠、ストレス、水分状態など、${appLabel} では測定できない個人差の影響を受けます。';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightJa implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '水分と体重変動';
	@override String get description => '日々の体重は、水分貯留、消化、タイミングによって大きく変動します。本推定はこうした日々の変動を考慮していません。';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceJa implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '専門家の助言';
	@override String get description => '医療判断には使用しないでください。体重管理の個別アドバイスは、必ず医療専門家または管理栄養士にご相談ください。';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrJa implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => '基礎代謝量（BMR）は、呼吸や循環などの生命維持に体が安静時に消費するカロリーです。BMR は年齢・性別・身長・体重に依存します。BMR が高いほど安静時に自然と多くのカロリーを消費し、一般に筋肉量が多い、年齢が若い、男性であることなどが要因です。BMR が低い場合は、筋肉量が少ない、年齢が高い、女性であることなどを示すことがあります。';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeJa implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => '総消費エネルギー量（TDEE）は、BMR に加えて身体活動や日常の動きによるカロリーを含む、1 日に消費する総カロリーです。TDEE は BMR と活動量に依存します。TDEE が高いほど総消費カロリーが多く、一般に活動的であるか BMR が高いことを示します。TDEE が低い場合は、日々の活動が少ないか BMR が低い可能性を示します。';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalJa implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '1 日の目標';
	@override String get description => '1 日の目標は、あなたの TDEE と体重目標に基づく推奨摂取カロリーです。減量では TDEE より少なく、維持では TDEE と同程度、増量では TDEE より多く摂取します。これにより、健康的なペースで望む体重変化を達成しやすくなります。';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedJa implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '推定方法';
	@override String get description => 'プロフィールから TDEE を計算し、経過した 1 日の割合（時間＋分）/ 24 を乗じて、これまでの推定消費カロリーを算出します。';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceJa implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '専門家の助言';
	@override String get description => '医療判断には使用しないでください。個別のアドバイスは、必ず医療専門家または管理栄養士にご相談ください。';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedJa implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '総消費カロリーの読み取り';
	@override String get description => 'Health Connect から総消費カロリーを読み取れるようにします。';
	@override String get usage => 'この権限は、1 日の消費カロリーをアプリに表示し、1 日の総エネルギー消費を把握するために使用します。';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadJa implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '栄養データの読み取り';
	@override String get description => 'Health Connect から栄養データを読み取れるようにします。';
	@override String get usage => 'この権限により、Health Connect と連携した他アプリが記録した栄養情報を読み取り、あなたの栄養状態を包括的に表示できます。';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteJa implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '栄養データの書き込み';
	@override String get description => 'Health Connect に栄養データを書き込めるようにします。';
	@override String get usage => 'この権限により、記録した食事を Health Connect と同期し、他のヘルス・フィットネスアプリでも栄養データを利用できるようにします。';
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
			'errors.rateLimitExceeded' => 'リクエストが多すぎます。少し待ってからもう一度お試しください。',
			'errors.networkError' => 'ネットワークエラー。インターネット接続を確認してください。',
			'errors.unknownError' => '問題が発生しました。しばらくしてからもう一度お試しください。',
			'errors.loadingProfileData' => 'プロフィールデータの読み込みでエラーが発生しました',
			'errors.somethingWentWrong' => '問題が発生しました。',
			'errors.retry' => '再試行',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel} へようこそ',
			'onboarding.subtitle' => 'AI 搭載のあなた専用の栄養コンパニオン',
			'onboarding.getStarted' => 'はじめる',
			'onboarding.features.foodRecognition.title' => 'スマートな食品認識',
			'onboarding.features.foodRecognition.description' => '写真を撮るだけで AI が食事を特定します',
			'onboarding.features.aiAnalysis.title' => 'AI 解析',
			'onboarding.features.aiAnalysis.description' => '説明文から瞬時に栄養情報を取得',
			'onboarding.features.healthIntegration.title' => 'ヘルス連携',
			'onboarding.features.healthIntegration.description' => 'Health Connect と接続して、より良いインサイトを',
			'onboarding.gender.title' => '性別を教えてください',
			'onboarding.gender.description' => '性別は基礎代謝量（BMR）の正確な計算に役立ちます。',
			'onboarding.gender.next' => '次へ',
			'onboarding.height.title' => '身長はどのくらいですか？',
			'onboarding.height.description' => '身長は BMI とエネルギー必要量の正確な計算に役立ちます。',
			'onboarding.height.metric' => 'メートル法',
			'onboarding.height.imperial' => 'ヤード・ポンド法',
			'onboarding.height.next' => '次へ',
			'onboarding.weight.currentTitle' => '現在の体重は？',
			'onboarding.weight.currentDescription' => '日々の目標をパーソナライズするために必要です。',
			'onboarding.weight.targetTitle' => '目標体重は？',
			'onboarding.weight.targetDescription' => '目標体重の設定は、長期プランの策定に役立ちます。',
			'onboarding.weight.metric' => 'メートル法',
			'onboarding.weight.imperial' => 'ヤード・ポンド法',
			'onboarding.weight.next' => '次へ',
			'onboarding.age.title' => '誕生日はいつですか？',
			'onboarding.age.description' => '年齢は正確なカロリー必要量の計算に役立ちます。',
			'onboarding.age.next' => '次へ',
			'onboarding.bmiScale.underweight' => '低体重',
			'onboarding.bmiScale.healthy' => '標準',
			'onboarding.bmiScale.overweight' => '過体重',
			'onboarding.bmiScale.obese' => '肥満',
			'onboarding.bmiScale.categories.underweight' => '低体重',
			'onboarding.bmiScale.categories.healthyWeight' => '標準体重',
			'onboarding.bmiScale.categories.overweight' => '過体重',
			'onboarding.bmiScale.categories.obese' => '肥満',
			'onboarding.bmiScale.messages.underweight' => '栄養価の高い食事でバランスのとれた体重に近づく健康的なプラン作りをお手伝いします。',
			'onboarding.bmiScale.messages.healthy' => '素晴らしいですね！健康的な範囲にあります。活力とエネルギーの維持をサポートします。',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} は AI を活用したトラッキングで、無理なく目標に近づく旅をシンプルにします。',
			'onboarding.bmiScale.messages.obese' => 'あなたの健康目標に向けて、パーソナライズされたガイダンスと持続可能な戦略で寄り添います。',
			'onboarding.weightGoal.title' => '目標は何ですか？',
			'onboarding.weightGoal.description' => 'あなたが達成したい内容に最も近い目標を選びましょう',
			'onboarding.activityLevel.title' => '普段の活動量は？',
			'onboarding.activityLevel.description' => 'より正確な 1 日のカロリー必要量の計算に役立ちます',
			'onboarding.healthConnect.title' => 'Health Connect と連携',
			'onboarding.healthConnect.description' => '健康データを同期して、より良いインサイトと自動カロリートラッキングを',
			'onboarding.healthConnect.automaticTracking.title' => '自動カロリートラッキング',
			'onboarding.healthConnect.automaticTracking.description' => 'フィットネスアプリからの消費カロリーを記録',
			'onboarding.healthConnect.progressInsights.title' => '進捗インサイト',
			'onboarding.healthConnect.progressInsights.description' => '健康の傾向を詳しく把握',
			'onboarding.healthConnect.seamlessIntegration.title' => 'シームレスな統合',
			'onboarding.healthConnect.seamlessIntegration.description' => 'お気に入りのヘルスアプリとデータを同期',
			'onboarding.healthConnect.connected' => 'Health Connect 連携済み',
			'onboarding.healthConnect.notConnected' => 'Health Connect 未連携',
			'onboarding.healthConnect.setup' => 'Health Connect を設定',
			'onboarding.healthConnect.skipForNow' => '今はスキップ',
			'onboarding.healthConnect.statusConnected' => 'Health Connect は接続済みです。',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect の接続に成功しました！',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => '権限が拒否されました。${appLabel} の設定から Health Connect の権限を有効にしてください。',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect の設定中にエラーが発生しました: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => '一人じゃありません',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => '研究によると、継続的な記録が長期的な成功の最も強力な指標です。',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object goal, required Object age, required Object gender}) => '${goal} を目指す ${age} 歳の${gender}にとっても、継続的な記録が成功のいちばんの近道です。',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} なら、手作業の 10 分の 1 の手間で続けられます。',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'さあ、始めましょうか？',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => '食事の写真を撮れば即座に分析できます',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => '継続して記録すると、意味のある進捗が見えてきます',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => '毎日進捗を振り返ってモチベーションを維持',
			'onboarding.reinforcement.trackingSuccess.button' => 'はじめる',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => '方',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'より健康なあなた',
			'onboarding.reinforcement.healthProfile.title' => 'あなたの健康プロフィール',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'あなたの指標に基づく BMI は ${bmi} です。',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'プロフィールを仕上げて、体験をあなた向けに最適化しましょう。',
			'onboarding.reinforcement.healthProfile.goalGain' => '増やす',
			'onboarding.reinforcement.healthProfile.goalLose' => '減らす',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => '目標に到達するには、${direction} ${diff}${unit} が必要です。',
			'onboarding.reinforcement.healthProfile.goalReached' => 'すでに目標体重です！維持をサポートします。',
			'onboarding.reinforcement.healthProfile.button' => 'はじめる',
			'onboarding.reinforcement.goalLifestyle.title' => '素晴らしいスタート！',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => '${goalText} に向けて最初の一歩を踏み出しました。あなたは ${activityText} なので、${appLabel} がライフスタイルに合わせて目標を調整します。',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'パーソナライズされたカロリー目標',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI による食事検出',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => '詳細なマクロ栄養の内訳',
			'onboarding.reinforcement.goalLifestyle.button' => 'はじめる',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'あなたの目標',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'アクティブ',
			'tabs.dashboard' => 'ダッシュボード',
			'tabs.history' => '履歴',
			'home.aiSummary.title' => 'あなたの AI サマリー',
			'home.aiSummary.logMore' => '今後数日で食事をさらに記録すると、パーソナライズされた AI インサイトが得られます。',
			'home.aiSummary.loading' => 'サマリーを読み込み中…',
			'home.aiSummary.mealCount' => ({required Object count}) => '記録した食事 ${count} 件',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'バランススコア ${score}',
			'home.aiSummary.topFoods' => 'よく食べる食品',
			'home.aiSummary.trendUp' => 'カロリーは増加傾向',
			'home.aiSummary.trendDown' => 'カロリーは減少傾向',
			'home.aiSummary.trendSteady' => 'カロリーは安定傾向',
			'home.aiSummary.generatedAt' => ({required Object time}) => '更新 ${time}',
			'home.dailyGoal.title' => '1日の目標を設定',
			'home.dailyGoal.titleSet' => 'あなたの 1 日の目標',
			'home.dailyGoal.description' => 'ウェルネスの旅を始めませんか？下で 1 日のカロリー目標を設定しましょう。',
			'home.dailyGoal.descriptionSet' => 'コンパスはセット完了！これがあなたの 1 日のカロリー目標です。',
			'home.dailyGoal.yourGoal' => 'あなたの目標',
			'home.dailyGoal.goal' => '目標',
			'home.dailyGoal.dailyCalories' => '1 日のカロリー（kcal）',
			'home.dailyGoal.setGoal' => '目標を設定',
			'home.dailyGoal.intake' => '摂取',
			'home.dailyGoal.burned' => '消費',
			'home.dailyGoal.weightImpact' => '体重への影響',
			'home.dailyGoal.estLoss' => '推定減少',
			'home.dailyGoal.estGain' => '推定増加',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => '1 日のまとめ',
			'home.dailySummary.calories' => 'カロリー',
			'home.dailySummary.carbs' => '炭水化物',
			'home.dailySummary.protein' => 'たんぱく質',
			'home.dailySummary.fat' => '脂質',
			'home.dailySummary.fiber' => '食物繊維',
			'home.dailySummary.grams' => 'グラム',
			'home.dailySummary.chartAccessibilityLabel' => 'マクロのチャート',
			'home.intakeProgress.title' => '今日のマクロ比',
			'home.intakeProgress.target' => '目標',
			'home.intakeProgress.current' => '現在',
			'home.intakeHistory.title' => '7 日間のマクロ履歴',
			'home.intakeHistory.trendTitle' => '今日のトレンド',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'ピーク: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => '履歴はまだありません',
			'home.intakeHistory.startLogging' => 'ここに 7 日間のマクロ傾向を表示するには\n食事の記録を始めましょう',
			'home.mealLog.title' => '記録された食事',
			'home.mealLog.emptyMessage' => '直近の食事を撮影して、ここに記録しましょう。',
			'home.mealLog.noMealsToday' => '今日は食事が記録されていません',
			'home.mealLog.seeAllMeals' => 'すべての食事を見る',
			'home.mealDescription.title' => 'AI でクイック追加',
			'home.mealDescription.description' => '食事内容を説明するだけで、詳細は AI にお任せ。',
			'home.mealDescription.hint' => '例: 朝食に大盛りのオートミールにスライスバナナとホエイプロテインを 1 スクープ…',
			'home.mealDescription.analyzeMeal' => '食事を解析',
			'home.favoriteMeals.title' => 'お気に入りの食事',
			'home.favoriteMeals.description' => 'よく食べる食事を素早く追加できます。',
			'home.favoriteMeals.noFavorites' => 'お気に入りはまだありません。',
			'home.favoriteMeals.addFavoriteHint' => '星マークをタップすると、お気に入りに登録できます。',
			'home.favoriteMeals.seeAll' => 'すべて見る',
			'home.favoriteMeals.add' => '追加',
			'home.mealSnap.title' => '撮って記録',
			'home.mealSnap.description' => 'カメラで食事を撮影して、AI に分析させましょう。',
			'home.mealSnap.openCamera' => 'カメラを開く',
			'home.mealSnap.gallery' => 'ギャラリー',
			'home.mealSnap.compressingPhoto' => '写真を最適化中…',
			'home.mealSnap.uploadingPhoto' => '写真をアップロード中…',
			'home.connectHealth.title' => 'Health Connect と同期',
			'home.connectHealth.description' => '栄養データを Health Connect と同期',
			'home.connectHealth.install' => 'インストール',
			'home.connectHealth.connect' => '接続',
			'history.noMeals' => '食事は記録されていません',
			'history.emptyMessage' => '直近の食事を撮影して、ここに記録しましょう。',
			'history.today' => '今日',
			'history.yesterday' => '昨日',
			'meal.ohNo' => 'おっと！',
			'meal.delete' => '削除',
			'meal.editMeal' => '食事を編集',
			'meal.addMeal' => '食事を追加',
			'meal.saveMeal' => '食事を保存',
			'meal.save' => '保存',
			'meal.mealName' => '食事名',
			'meal.mealNameHint' => '例: スクランブルエッグとトースト',
			'meal.mealQuantity' => '量',
			'meal.mealQuantityHint' => '例: 1 杯、2 枚',
			'meal.timeOfMeal' => '食事の時間',
			'meal.timeOfMealHint' => '食事をした時間を選択',
			'meal.mealType' => '食事の種類',
			'meal.nutrition.calories' => 'カロリー',
			'meal.nutrition.carbs' => '炭水化物 (g)',
			'meal.nutrition.protein' => 'たんぱく質 (g)',
			'meal.nutrition.fat' => '脂質 (g)',
			'meal.nutrition.fiber' => '食物繊維 (g)',
			'meal.deleteConfirmation.title' => '食事を削除',
			'meal.deleteConfirmation.message' => 'この食事の記録を削除してもよろしいですか？',
			'meal.deleteConfirmation.cancel' => 'キャンセル',
			'meal.deleteConfirmation.delete' => '削除',
			'meal.addedToLog' => '食事を記録に追加しました！',
			'meal.couldNotAdd' => ({required Object error}) => '食事を追加できませんでした: ${error}',
			'meal.savedSuccessfully' => '食事を追加しました！',
			'meal.updatedSuccessfully' => '食事を更新しました！',
			'meal.errorSaving' => ({required Object error}) => '食事の保存中にエラーが発生しました: ${error}',
			'meal.removedFromFavorites' => 'お気に入りから削除しました！',
			'meal.savedAsFavorite' => '食事をお気に入りに保存しました！',
			'meal.unfavorite' => 'お気に入り解除',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'お気に入りを更新できませんでした: ${error}',
			'meal.feedbackThanks' => 'フィードバックありがとうございます！',
			'meal.reanalysisUpdated' => 'フィードバックに基づいて分析を更新しました。',
			'meal.failedToProcess' => ({required Object error}) => '処理に失敗しました: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => '画像の処理に失敗しました: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => '画像の圧縮中にエラーが発生しました: ${error}',
			'meal.failedToSave' => 'データを保存できませんでした。もう一度お試しください。',
			'meal.skip' => 'スキップ',
			'meal.variation.question' => ({required Object total, required Object current}) => '${total} 問中 ${current} 問目',
			'meal.variation.noVariationsAvailable' => 'バリエーションはありません',
			'meal.analysis.title' => 'AI の食事分析',
			'meal.analysis.reassurance' => '通常は数秒で完了します。',
			'meal.analysis.stepStarted' => '開始しています…',
			'meal.analysis.stepDecomposition' => '食事内容を理解しています…',
			'meal.analysis.stepIngredients' => '栄養データに食材を照合しています…',
			'meal.analysis.stepUncertainty' => '信頼度を確認しています…',
			'meal.analysis.stepMealTypeQuestion' => 'もう少しで完了です…',
			'meal.analysis.stepResult' => '結果を確定しています…',
			'meal.analysis.stepError' => '問題が発生しました',
			'meal.analysis.stepDefault' => '食事を分析しています…',
			'meal.analysis.progressUnderstand' => '理解',
			'meal.analysis.progressMatch' => '照合',
			'meal.analysis.progressCheck' => '確認',
			'meal.analysis.progressFinish' => '完了',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} 個の食材を検出',
			'meal.analysis.ingredientsPending' => '食材をスキャン中…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '「${text}」',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'どこが間違っていますか？',
			'meal.feedback.subtitle' => '1 つ以上の問題を選択して、分析の改善にご協力ください。',
			'meal.feedback.tellUsMore' => '詳しく教えてください',
			'meal.feedback.describeIncorrect' => '何が間違っていたか教えてください',
			'meal.feedback.submit' => '送信',
			'meal.feedback.issueFoodIdentification' => '食品の識別',
			'meal.feedback.issuePortionSize' => '1 食分の量',
			'meal.feedback.issueCalorieDistribution' => 'カロリー配分',
			'meal.feedback.issueMacrosWrong' => 'マクロが正しくない',
			'meal.feedback.issueMissingItems' => '不足している項目',
			'meal.feedback.issueExtraItems' => '余分な項目',
			'meal.feedback.issueOther' => 'その他',
			'favorites.title' => 'お気に入り',
			'favorites.empty' => 'お気に入りの食事はまだありません。',
			'favorites.searchPlaceholder' => 'お気に入りを検索',
			'favorites.searchEmptyTitle' => '検索条件に一致するお気に入りはありません',
			'favorites.searchEmptySubtitle' => '別の食事名、量、または食事の種類でお試しください。',
			'favorites.sortLabel' => '並べ替え',
			'favorites.undo' => '元に戻す',
			'favorites.removed' => ({required Object name}) => '${name} をお気に入りから削除しました',
			'favorites.sortOptions.recent' => '最近',
			'favorites.sortOptions.calories' => 'カロリー',
			'favorites.sortOptions.alphabetical' => 'アルファベット順',
			'profile.title' => 'プロフィール',
			'profile.noProfileData' => 'プロフィールデータが見つかりません',
			'profile.yourProfile' => 'あなたのプロフィール',
			'profile.viewAndManage' => '健康情報の表示と管理',
			'profile.sections.profile' => 'プロフィール',
			'profile.sections.basicInformation' => '基本情報',
			'profile.sections.goalsAndActivity' => '目標と活動量',
			'profile.sections.calculatedValues' => '算出値',
			'profile.gender' => '性別',
			'profile.height' => '身長',
			'profile.weight' => '体重',
			'profile.age' => '年齢',
			'profile.weightGoal' => '体重の目標',
			'profile.targetWeight' => '目標体重',
			'profile.activityLevel' => '活動量',
			'profile.healthMetrics' => '健康指標',
			'profile.notSet' => '未設定',
			'profile.years' => '歳',
			'profile.updatedSuccessfully' => 'プロフィールを更新しました！',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => '1 日の目標',
			'profile.calculatedValues.calPerDay' => 'kcal/日',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'ヘルススコア',
			'healthScore.whyThisScore' => 'このスコアの理由',
			'healthScore.note' => 'このスコアは、特定された食材と栄養密度に基づく AI の推定値です。食事に関するアドバイスは、必ず専門家にご相談ください。',
			'healthScore.unhealthy' => '不健康',
			'healthScore.healthy' => '健康的',
			'healthScore.neutral' => '中立',
			'editProfile.title' => 'プロフィールを編集',
			'editProfile.sections.personalInformation' => '個人情報',
			'editProfile.sections.physicalMeasurements' => '身体計測',
			'editProfile.sections.goalsAndActivity' => '目標と活動量',
			'editProfile.gender' => '性別',
			'editProfile.dateOfBirth' => '生年月日',
			'editProfile.height' => '身長',
			'editProfile.weight' => '体重',
			'editProfile.weightGoal' => '体重の目標',
			'editProfile.activityLevel' => '活動量',
			'editProfile.metric' => 'メートル法',
			'editProfile.imperial' => 'ヤード・ポンド法',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'メートル法（cm）',
			'editProfile.imperialFtIn' => 'ヤード・ポンド法（ft/in）',
			'editProfile.metricKg' => 'メートル法（kg）',
			'editProfile.imperialLbs' => 'ヤード・ポンド法（lbs）',
			'editProfile.genders.male' => '男性',
			'editProfile.genders.female' => '女性',
			'editProfile.genders.other' => 'その他',
			'editProfile.weightGoals.loseWeight.name' => '減量',
			'editProfile.weightGoals.loseWeight.description' => 'カロリー赤字を作って体重を減らす',
			'editProfile.weightGoals.maintainWeight.name' => '現状維持',
			'editProfile.weightGoals.maintainWeight.description' => '現在の体重を維持する',
			'editProfile.weightGoals.gainWeight.name' => '増量',
			'editProfile.weightGoals.gainWeight.description' => 'カロリー黒字を作って体重を増やす',
			'editProfile.activityLevels.sedentary.name' => '座りがち',
			'editProfile.activityLevels.sedentary.description' => '運動はほとんどしない',
			'editProfile.activityLevels.lightlyActive.name' => 'ややアクティブ',
			'editProfile.activityLevels.lightlyActive.description' => '軽い運動を週 1〜3 日',
			'editProfile.activityLevels.moderatelyActive.name' => '適度にアクティブ',
			'editProfile.activityLevels.moderatelyActive.description' => '中程度の運動を週 3〜5 日',
			'editProfile.activityLevels.veryActive.name' => 'とてもアクティブ',
			'editProfile.activityLevels.veryActive.description' => '激しい運動を週 6〜7 日',
			'editProfile.activityLevels.extremelyActive.name' => '超アクティブ',
			'editProfile.activityLevels.extremelyActive.description' => '非常に激しい運動／肉体労働',
			'settings.title' => '設定',
			'settings.sections.profile' => 'プロフィール',
			'settings.sections.localization' => 'ローカライズ',
			'settings.sections.notifications' => '通知',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.supportAndLegal' => 'サポートと法務',
			'settings.sections.about' => '情報',
			'settings.sections.dangerZone' => '危険ゾーン',
			'settings.sections.developer' => '開発者',
			'settings.editProfile.title' => 'プロフィールを編集',
			'settings.editProfile.subtitle' => '個人情報を更新',
			'settings.language.title' => '言語',
			'settings.language.subtitle' => '使用する言語を選択',
			'settings.language.searchHint' => '言語を検索...',
			'settings.language.noResults' => '結果が見つかりません',
			'settings.heightUnit.title' => '身長の単位',
			'settings.weightUnit.title' => '体重の単位',
			'settings.mealReminders.title' => '食事リマインダー',
			'settings.mealReminders.subtitle' => 'タイムリーな通知で習慣化をサポート',
			'settings.theme.title' => 'テーマ',
			'settings.theme.light' => 'ライト',
			'settings.theme.dark' => 'ダーク',
			'settings.theme.system' => 'システム',
			'settings.sendFeedback.title' => 'フィードバックを送る',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} の改善にご協力ください',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} アプリのフィードバック',
			'settings.sendFeedback.emailBodyPrefix' => '以下にフィードバックをご記入ください:',
			'settings.sendFeedback.appVersion' => 'アプリのバージョン',
			'settings.sendFeedback.device' => 'デバイス',
			'settings.sendFeedback.osVersion' => 'OS バージョン',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => '食事履歴をエクスポート',
			'settings.exportMealHistory.subtitle' => '記録した食事の CSV を共有',
			'settings.exportMealHistory.shareText' => 'Calorify の食事履歴エクスポート',
			'settings.exportMealHistory.failed' => ({required Object error}) => '食事履歴をエクスポートできませんでした: ${error}',
			'settings.clearAllData.title' => 'すべてのデータを削除',
			'settings.clearAllData.subtitle' => 'すべての情報を元に戻せない形で削除します',
			'settings.clearAllData.confirmationTitle' => 'すべてのデータを削除しますか？',
			'settings.clearAllData.confirmationMessage' => 'この操作は元に戻せません。記録した食事、お気に入り、プロフィール設定はすべて完全に削除されます。',
			'settings.clearAllData.cancel' => 'キャンセル',
			'settings.clearAllData.clearEverything' => 'すべて削除',
			'settings.debugOptions.title' => 'デバッグオプション',
			'settings.developerModeEnabled' => '開発者モードが有効になりました！',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => '権限の表示と管理',
			'settings.healthConnect.unavailable.title' => 'Health Connect が利用できません',
			'settings.healthConnect.unavailable.description' => 'この端末では Health Connect を利用できません。Play ストアから Health Connect をインストール（Android 9+）するか、Android 14 以上にアップデートしてください。',
			'settings.healthConnect.permissions.title' => '権限',
			'settings.healthConnect.permissions.description' => 'Health Connect 連携のために、次の権限をリクエストします。',
			'settings.healthConnect.permissions.granted' => '許可済み',
			'settings.healthConnect.permissions.notGranted' => '未許可',
			'settings.healthConnect.permissions.caloriesBurned.title' => '総消費カロリーの読み取り',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Health Connect から総消費カロリーを読み取れるようにします。',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'この権限は、1 日の消費カロリーをアプリに表示し、1 日の総エネルギー消費を把握するために使用します。',
			'settings.healthConnect.permissions.nutritionRead.title' => '栄養データの読み取り',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Health Connect から栄養データを読み取れるようにします。',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'この権限により、Health Connect と連携した他アプリが記録した栄養情報を読み取り、あなたの栄養状態を包括的に表示できます。',
			'settings.healthConnect.permissions.nutritionWrite.title' => '栄養データの書き込み',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Health Connect に栄養データを書き込めるようにします。',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'この権限により、記録した食事を Health Connect と同期し、他のヘルス・フィットネスアプリでも栄養データを利用できるようにします。',
			'settings.healthConnect.managePermissions' => '権限を管理',
			'settings.healthConnect.openSettings' => 'Health Connect の設定を開く',
			'settings.healthConnect.requestPermissions' => '権限をリクエスト',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => '権限リクエストがキャンセルまたは失敗しました。もう一度お試しになるか、Health Connect の設定で手動で許可してください。',
			'settings.healthConnect.permissionRequestFailed' => '権限をリクエストできませんでした。もう一度お試しになるか、Health Connect の設定で手動で許可してください。',
			'settings.healthConnect.requestingPermissions' => 'リクエスト中...',
			'settings.about.title' => 'このアプリについて',
			'settings.about.tagline' => '速く、無料、プライバシー最優先のカロリー可視化',
			'settings.about.ourStory.title' => '私たちのストーリー',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} は単純なフラストレーションから生まれました。多くのカロリー記録アプリは複雑すぎたり、常に手入力を求めたり、高額なサブスクを請求したり、プライバシーを犠牲にしたりするからです。\n\nソロ開発者として、もっとシンプルで公正なものを作りたいと思いました。AI を使って手間を減らし、軽快で無料、そしてあなたの健康データを尊重するアプリです。\n\n${appLabel} は私が望んでいたアプリそのもの。アカウント不要、トラッキングなし、広告なし——明快で実践的なインサイトと、あなたの健康目標だけを。',
			'settings.about.privacy.title' => 'あなたのプライバシーを大切に',
			'settings.about.privacy.description' => 'プライバシーは後付けではなく設計思想です。具体的には次のことを意味します。',
			'settings.about.privacy.noAccounts' => 'アカウント不要\nすぐに使い始められます。サインアップも個人情報も不要です。',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => '行動トラッキングなし\n${appLabel} はあなたの行動を監視したり、利用プロファイルを作成したり、他のアプリやウェブサイトを横断して追跡したりしません。',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => '広告なしの設計\n${appLabel} は広告やデータ駆動のマネタイズに依存しません。',
			'settings.about.privacy.noDataSelling' => 'データ販売なし\nあなたの健康データが第三者に販売・共有されることはありません。',
			'settings.about.privacy.localStorage' => 'ローカル優先の保存\nあなたのデータは端末内に保存されます。',
			'settings.about.privacy.privacyPolicy' => 'プライバシーポリシー',
			'settings.about.developer.title' => 'ソロ開発者が制作',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} は、落ち着きがありプライバシーを尊重するヘルスソフトウェアを目指して、ひとりの開発者が開発・保守しています。\n\nいただいたフィードバックはすべて目を通し、今後の方向性に活かします。',
			'settings.about.developer.website' => 'ウェブサイト',
			'settings.about.developer.email' => 'メール',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel} を気に入っていただけましたか？',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'あなたの声が ${appLabel} をより良くします。',
			'settings.about.feedback.rateApp' => 'Play ストアで評価する',
			'settings.about.feedback.sendFeedback' => 'フィードバックを送る',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'ビルド ${buildNumber}',
			'reminders.title' => 'リマインダーで継続をサポート',
			'reminders.description' => '食事を記録するやさしいリマインドで、栄養目標の継続を後押しします',
			'reminders.notificationsEnabled' => '通知は有効です',
			'reminders.notificationsDisabled' => '通知は無効です',
			'reminders.enabledSubtitle' => '食事リマインダーを受け取ります',
			'reminders.disabledSubtitle' => '通知を有効にして食事リマインダーを受け取りましょう',
			'reminders.mealReminders' => '食事リマインダー',
			'reminders.breakfast' => '朝食',
			'reminders.lunch' => '昼食',
			'reminders.dinner' => '夕食',
			'reminders.snack' => '間食',
			'reminders.unknown' => '不明',
			'reminders.change' => '変更',
			'reminders.enableNotifications' => '通知を有効にする',
			'reminders.skipForNow' => '今はスキップ',
			'reminders.saveChanges' => '変更を保存',
			'reminders.enabledSuccessfully' => '通知を有効にしました！',
			'reminders.permissionDenied' => '通知の権限が拒否されました',
			'reminders.errorEnabling' => ({required Object error}) => '通知の有効化中にエラーが発生しました: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => '設定の完了中にエラーが発生しました: ${error}',
			'notifications.breakfast.title' => '朝食の時間です！🍳',
			'notifications.breakfast.body' => '朝食の記録をお忘れなく',
			'notifications.lunch.title' => '昼食の時間です！🥗',
			'notifications.lunch.body' => '昼食を記録しましょう',
			'notifications.dinner.title' => '夕食の時間です！🍽️',
			'notifications.dinner.body' => '夕食の記録をお忘れなく',
			'notifications.snack.title' => '間食の時間！🍎',
			'notifications.snack.body' => 'ヘルシーなスナックの記録をどうぞ',
			'notifications.test.title' => 'テスト通知',
			'login.title' => 'ログイン',
			'login.signInWithGoogle' => 'Google でログイン',
			'login.signInFailed' => 'Google でのログインに失敗したか、キャンセルされました。',
			'disclaimer.pleaseNote' => 'ご注意ください',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} は推定の栄養情報を提供します。精度は入力内容や食品の違いに依存します。目安として活用し、確定的な情報源としては使用しないでください。パーソナライズされた食事指導は専門家にご相談ください。',
			'disclaimer.snap.portionSize.title' => 'ポーションサイズ',
			'disclaimer.snap.portionSize.description' => '推定の正確さは、あなたの適切な分量評価に大きく依存します。',
			'disclaimer.snap.preparationMethods.title' => '調理方法',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => '調理方法によって栄養価は大きく変化します。${appLabel} の推定がこれらの違いを常に反映できるとは限りません。',
			'disclaimer.snap.ingredients.title' => '食材',
			'disclaimer.snap.ingredients.description' => '隠し食材の多い複雑な料理では、推定が不正確になる場合があります。',
			'disclaimer.snap.databaseLimitations.title' => 'データベースの限界',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel} の食品データベースは充実していますが、すべての食品やバリエーションを網羅しているわけではありません。',
			'disclaimer.weightEstimate.title' => '体重推定について',
			'disclaimer.weightEstimate.description' => '表示される体重変化は、単純な摂取カロリーと消費カロリーの差に基づく理論上の推定です。実際の体重を予測するものではなく、あくまでモチベーションの目安としてご利用ください。',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'カロリーの正確性',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'この推定は、記録した摂取・消費カロリーの正確さに依存します。不正確な記録は、不正確な推定につながります。',
			'disclaimer.weightEstimate.biologicalFactors.title' => '生理学的要因',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => '実際の増減は、代謝、ホルモン、睡眠、ストレス、水分状態など、${appLabel} では測定できない個人差の影響を受けます。',
			'disclaimer.weightEstimate.waterWeight.title' => '水分と体重変動',
			'disclaimer.weightEstimate.waterWeight.description' => '日々の体重は、水分貯留、消化、タイミングによって大きく変動します。本推定はこうした日々の変動を考慮していません。',
			'disclaimer.weightEstimate.professionalGuidance.title' => '専門家の助言',
			'disclaimer.weightEstimate.professionalGuidance.description' => '医療判断には使用しないでください。体重管理の個別アドバイスは、必ず医療専門家または管理栄養士にご相談ください。',
			'disclaimer.healthMetrics.description' => 'これらの指標は、あなたのエネルギー必要量の理解と栄養目標の設定に役立ちます。',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => '基礎代謝量（BMR）は、呼吸や循環などの生命維持に体が安静時に消費するカロリーです。BMR は年齢・性別・身長・体重に依存します。BMR が高いほど安静時に自然と多くのカロリーを消費し、一般に筋肉量が多い、年齢が若い、男性であることなどが要因です。BMR が低い場合は、筋肉量が少ない、年齢が高い、女性であることなどを示すことがあります。',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => '総消費エネルギー量（TDEE）は、BMR に加えて身体活動や日常の動きによるカロリーを含む、1 日に消費する総カロリーです。TDEE は BMR と活動量に依存します。TDEE が高いほど総消費カロリーが多く、一般に活動的であるか BMR が高いことを示します。TDEE が低い場合は、日々の活動が少ないか BMR が低い可能性を示します。',
			'disclaimer.healthMetrics.dailyGoal.title' => '1 日の目標',
			'disclaimer.healthMetrics.dailyGoal.description' => '1 日の目標は、あなたの TDEE と体重目標に基づく推奨摂取カロリーです。減量では TDEE より少なく、維持では TDEE と同程度、増量では TDEE より多く摂取します。これにより、健康的なペースで望む体重変化を達成しやすくなります。',
			'disclaimer.calorieExpenditure.title' => '消費カロリーの推定',
			'disclaimer.calorieExpenditure.description' => 'Health Connect のデータが利用できない場合は、基礎代謝量（BMR）と活動量（TDEE）をもとに、今日これまでに消費したカロリーを推定します。',
			'disclaimer.calorieExpenditure.howCalculated.title' => '推定方法',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'プロフィールから TDEE を計算し、経過した 1 日の割合（時間＋分）/ 24 を乗じて、これまでの推定消費カロリーを算出します。',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => '専門家の助言',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => '医療判断には使用しないでください。個別のアドバイスは、必ず医療専門家または管理栄養士にご相談ください。',
			'common.close' => '閉じる',
			'common.kContinue' => '続ける',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel} を気に入っていただけていますか？',
			'feedbackRating.yes' => 'はい、気に入っています',
			'feedbackRating.no' => 'あまり…',
			'feedbackRating.rateStepHeading' => 'Play ストアで評価する',
			'feedbackRating.emailStepHeading' => 'メールでフィードバックを送る',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => '短い評価でも、${appLabel} を見つけてもらう助けになり、開発の継続に繋がります。よろしければ評価をお願いできますか？',
			'feedbackRating.shareFeedbackViaEmail' => 'あなたの声が次の一歩を形作ります。すべてのメッセージに目を通します。メールで感想を共有しませんか？',
			'feedbackRating.rateCta' => 'Play ストアで評価',
			'feedbackRating.maybeLater' => 'また今度',
			'feedbackRating.sendFeedback' => 'フィードバックを送る',
			'feedbackRating.noThanks' => '結構です',
			'feedbackRating.aboutUsDescription' => '小さなチームが心を込めて作りました。私たちはプライバシー、シンプルさ、より良い食習慣づくりに焦点を当てています。',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '${appLabel} の裏側にいる人に興味がありますか？こちらをご覧ください ',
			'feedbackRating.aboutUsLinkLabel' => '開発者情報',
			'feedbackRating.thankYouMessage' => 'ありがとうございます！また別の機会にお伺いします。',
			'health.syncFailed' => 'Health Connect に同期できませんでした',
			'health.mealSynced' => 'Health Connect と同期しました',
			_ => null,
		};
	}
}
