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
	@override late final _Translations$errors$ja errors = _Translations$errors$ja._(_root);
	@override late final _Translations$onboarding$ja onboarding = _Translations$onboarding$ja._(_root);
	@override late final _Translations$tabs$ja tabs = _Translations$tabs$ja._(_root);
	@override late final _Translations$home$ja home = _Translations$home$ja._(_root);
	@override late final _Translations$history$ja history = _Translations$history$ja._(_root);
	@override late final _Translations$meal$ja meal = _Translations$meal$ja._(_root);
	@override late final _Translations$favorites$ja favorites = _Translations$favorites$ja._(_root);
	@override late final _Translations$profile$ja profile = _Translations$profile$ja._(_root);
	@override late final _Translations$healthScore$ja healthScore = _Translations$healthScore$ja._(_root);
	@override late final _Translations$editProfile$ja editProfile = _Translations$editProfile$ja._(_root);
	@override late final _Translations$settings$ja settings = _Translations$settings$ja._(_root);
	@override late final _Translations$reminders$ja reminders = _Translations$reminders$ja._(_root);
	@override late final _Translations$notifications$ja notifications = _Translations$notifications$ja._(_root);
	@override late final _Translations$login$ja login = _Translations$login$ja._(_root);
	@override late final _Translations$disclaimer$ja disclaimer = _Translations$disclaimer$ja._(_root);
	@override late final _Translations$watch$ja watch = _Translations$watch$ja._(_root);
	@override late final _Translations$common$ja common = _Translations$common$ja._(_root);
	@override late final _Translations$feedbackRating$ja feedbackRating = _Translations$feedbackRating$ja._(_root);
	@override late final _Translations$health$ja health = _Translations$health$ja._(_root);
}

// Path: errors
class _Translations$errors$ja extends Translations$errors$en {
	_Translations$errors$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$ja extends Translations$onboarding$en {
	_Translations$onboarding$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'ようこそ、${appLabel}へ';
	@override String get subtitle => 'AIが支える、あなた専用の栄養コンパニオン';
	@override String get getStarted => '始める';
	@override late final _Translations$onboarding$features$ja features = _Translations$onboarding$features$ja._(_root);
	@override late final _Translations$onboarding$gender$ja gender = _Translations$onboarding$gender$ja._(_root);
	@override late final _Translations$onboarding$height$ja height = _Translations$onboarding$height$ja._(_root);
	@override late final _Translations$onboarding$weight$ja weight = _Translations$onboarding$weight$ja._(_root);
	@override late final _Translations$onboarding$age$ja age = _Translations$onboarding$age$ja._(_root);
	@override late final _Translations$onboarding$bmiScale$ja bmiScale = _Translations$onboarding$bmiScale$ja._(_root);
	@override late final _Translations$onboarding$weightGoal$ja weightGoal = _Translations$onboarding$weightGoal$ja._(_root);
	@override late final _Translations$onboarding$activityLevel$ja activityLevel = _Translations$onboarding$activityLevel$ja._(_root);
	@override late final _Translations$onboarding$healthConnect$ja healthConnect = _Translations$onboarding$healthConnect$ja._(_root);
	@override late final _Translations$onboarding$reinforcement$ja reinforcement = _Translations$onboarding$reinforcement$ja._(_root);
}

// Path: tabs
class _Translations$tabs$ja extends Translations$tabs$en {
	_Translations$tabs$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'ダッシュボード';
	@override String get history => '履歴';
}

// Path: home
class _Translations$home$ja extends Translations$home$en {
	_Translations$home$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$ja aiSummary = _Translations$home$aiSummary$ja._(_root);
	@override late final _Translations$home$dailyGoal$ja dailyGoal = _Translations$home$dailyGoal$ja._(_root);
	@override late final _Translations$home$dailySummary$ja dailySummary = _Translations$home$dailySummary$ja._(_root);
	@override late final _Translations$home$intakeProgress$ja intakeProgress = _Translations$home$intakeProgress$ja._(_root);
	@override late final _Translations$home$intakeHistory$ja intakeHistory = _Translations$home$intakeHistory$ja._(_root);
	@override late final _Translations$home$mealLog$ja mealLog = _Translations$home$mealLog$ja._(_root);
	@override late final _Translations$home$mealDescription$ja mealDescription = _Translations$home$mealDescription$ja._(_root);
	@override late final _Translations$home$favoriteMeals$ja favoriteMeals = _Translations$home$favoriteMeals$ja._(_root);
	@override late final _Translations$home$mealSnap$ja mealSnap = _Translations$home$mealSnap$ja._(_root);
	@override late final _Translations$home$connectHealth$ja connectHealth = _Translations$home$connectHealth$ja._(_root);
}

// Path: history
class _Translations$history$ja extends Translations$history$en {
	_Translations$history$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get noMeals => '記録された食事はありません';
	@override String get emptyMessage => '最後の食事の写真を撮ってここに記録しましょう。';
	@override String get today => '今日';
	@override String get yesterday => '昨日';
}

// Path: meal
class _Translations$meal$ja extends Translations$meal$en {
	_Translations$meal$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
	@override late final _Translations$meal$nutrition$ja nutrition = _Translations$meal$nutrition$ja._(_root);
	@override late final _Translations$meal$deleteConfirmation$ja deleteConfirmation = _Translations$meal$deleteConfirmation$ja._(_root);
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
	@override String get imageTooLarge => 'この写真は圧縮してもまだ1MBを超えています。別の写真を選んでください。';
	@override String get failedToSave => 'データの保存に失敗しました。もう一度お試しください。';
	@override String get skip => 'スキップ';
	@override late final _Translations$meal$questionFlow$ja questionFlow = _Translations$meal$questionFlow$ja._(_root);
	@override late final _Translations$meal$analysis$ja analysis = _Translations$meal$analysis$ja._(_root);
	@override late final _Translations$meal$feedback$ja feedback = _Translations$meal$feedback$ja._(_root);
}

// Path: favorites
class _Translations$favorites$ja extends Translations$favorites$en {
	_Translations$favorites$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
	@override late final _Translations$favorites$sortOptions$ja sortOptions = _Translations$favorites$sortOptions$ja._(_root);
}

// Path: profile
class _Translations$profile$ja extends Translations$profile$en {
	_Translations$profile$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィール';
	@override String get noProfileData => 'プロフィールデータが見つかりません';
	@override String get yourProfile => 'あなたのプロフィール';
	@override String get viewAndManage => '健康情報を表示・管理する';
	@override late final _Translations$profile$sections$ja sections = _Translations$profile$sections$ja._(_root);
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
	@override late final _Translations$profile$calculatedValues$ja calculatedValues = _Translations$profile$calculatedValues$ja._(_root);
}

// Path: healthScore
class _Translations$healthScore$ja extends Translations$healthScore$en {
	_Translations$healthScore$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$ja extends Translations$editProfile$en {
	_Translations$editProfile$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィール編集';
	@override late final _Translations$editProfile$sections$ja sections = _Translations$editProfile$sections$ja._(_root);
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
	@override String get unitLbs => 'ポンド（lbs）';
	@override String get metricCm => 'メートル法（cm）';
	@override String get imperialFtIn => 'インペリアル（ft/in）';
	@override String get metricKg => 'メートル法（kg）';
	@override String get imperialLbs => 'インペリアル（lbs）';
	@override late final _Translations$editProfile$genders$ja genders = _Translations$editProfile$genders$ja._(_root);
	@override late final _Translations$editProfile$weightGoals$ja weightGoals = _Translations$editProfile$weightGoals$ja._(_root);
	@override late final _Translations$editProfile$activityLevels$ja activityLevels = _Translations$editProfile$activityLevels$ja._(_root);
}

// Path: settings
class _Translations$settings$ja extends Translations$settings$en {
	_Translations$settings$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '設定';
	@override late final _Translations$settings$sections$ja sections = _Translations$settings$sections$ja._(_root);
	@override late final _Translations$settings$editProfile$ja editProfile = _Translations$settings$editProfile$ja._(_root);
	@override late final _Translations$settings$language$ja language = _Translations$settings$language$ja._(_root);
	@override late final _Translations$settings$heightUnit$ja heightUnit = _Translations$settings$heightUnit$ja._(_root);
	@override late final _Translations$settings$weightUnit$ja weightUnit = _Translations$settings$weightUnit$ja._(_root);
	@override late final _Translations$settings$mealReminders$ja mealReminders = _Translations$settings$mealReminders$ja._(_root);
	@override late final _Translations$settings$theme$ja theme = _Translations$settings$theme$ja._(_root);
	@override late final _Translations$settings$sendFeedback$ja sendFeedback = _Translations$settings$sendFeedback$ja._(_root);
	@override late final _Translations$settings$exportMealHistory$ja exportMealHistory = _Translations$settings$exportMealHistory$ja._(_root);
	@override late final _Translations$settings$clearAllData$ja clearAllData = _Translations$settings$clearAllData$ja._(_root);
	@override late final _Translations$settings$debugOptions$ja debugOptions = _Translations$settings$debugOptions$ja._(_root);
	@override String get developerModeEnabled => '開発者モードが有効になりました！';
	@override late final _Translations$settings$healthConnect$ja healthConnect = _Translations$settings$healthConnect$ja._(_root);
	@override late final _Translations$settings$about$ja about = _Translations$settings$about$ja._(_root);
	@override late final _Translations$settings$appInfo$ja appInfo = _Translations$settings$appInfo$ja._(_root);
}

// Path: reminders
class _Translations$reminders$ja extends Translations$reminders$en {
	_Translations$reminders$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$notifications$ja extends Translations$notifications$en {
	_Translations$notifications$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$ja breakfast = _Translations$notifications$breakfast$ja._(_root);
	@override late final _Translations$notifications$lunch$ja lunch = _Translations$notifications$lunch$ja._(_root);
	@override late final _Translations$notifications$dinner$ja dinner = _Translations$notifications$dinner$ja._(_root);
	@override late final _Translations$notifications$snack$ja snack = _Translations$notifications$snack$ja._(_root);
	@override late final _Translations$notifications$test$ja test = _Translations$notifications$test$ja._(_root);
}

// Path: login
class _Translations$login$ja extends Translations$login$en {
	_Translations$login$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ログイン';
	@override String get signInWithGoogle => 'Googleでサインイン';
	@override String get signInFailed => 'Googleサインインに失敗するか、キャンセルされました。';
}

// Path: disclaimer
class _Translations$disclaimer$ja extends Translations$disclaimer$en {
	_Translations$disclaimer$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'ご注意';
	@override late final _Translations$disclaimer$snap$ja snap = _Translations$disclaimer$snap$ja._(_root);
	@override late final _Translations$disclaimer$weightEstimate$ja weightEstimate = _Translations$disclaimer$weightEstimate$ja._(_root);
	@override late final _Translations$disclaimer$healthMetrics$ja healthMetrics = _Translations$disclaimer$healthMetrics$ja._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$ja calorieExpenditure = _Translations$disclaimer$calorieExpenditure$ja._(_root);
}

// Path: watch
class _Translations$watch$ja extends Translations$watch$en {
	_Translations$watch$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify ウォッチ';
	@override late final _Translations$watch$common$ja common = _Translations$watch$common$ja._(_root);
	@override late final _Translations$watch$nutrition$ja nutrition = _Translations$watch$nutrition$ja._(_root);
	@override late final _Translations$watch$sync$ja sync = _Translations$watch$sync$ja._(_root);
	@override late final _Translations$watch$home$ja home = _Translations$watch$home$ja._(_root);
	@override late final _Translations$watch$history$ja history = _Translations$watch$history$ja._(_root);
	@override late final _Translations$watch$favorites$ja favorites = _Translations$watch$favorites$ja._(_root);
	@override late final _Translations$watch$meal$ja meal = _Translations$watch$meal$ja._(_root);
	@override late final _Translations$watch$voice$ja voice = _Translations$watch$voice$ja._(_root);
	@override late final _Translations$watch$result$ja result = _Translations$watch$result$ja._(_root);
}

// Path: common
class _Translations$common$ja extends Translations$common$en {
	_Translations$common$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'ベータ版';
	@override String get close => '閉じる';
	@override String get kContinue => '続ける';
}

// Path: feedbackRating
class _Translations$feedbackRating$ja extends Translations$feedbackRating$en {
	_Translations$feedbackRating$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$health$ja extends Translations$health$en {
	_Translations$health$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connectへの同期に失敗しました';
	@override String get mealSynced => '食事をHealth Connectに同期しました';
}

// Path: onboarding.features
class _Translations$onboarding$features$ja extends Translations$onboarding$features$en {
	_Translations$onboarding$features$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$ja foodRecognition = _Translations$onboarding$features$foodRecognition$ja._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$ja aiAnalysis = _Translations$onboarding$features$aiAnalysis$ja._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$ja healthIntegration = _Translations$onboarding$features$healthIntegration$ja._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$ja extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '性別は？';
	@override String get description => '性別は基礎代謝量（BMR）の算出に役立ちます。';
	@override String get next => '次へ';
}

// Path: onboarding.height
class _Translations$onboarding$height$ja extends Translations$onboarding$height$en {
	_Translations$onboarding$height$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '身長は？';
	@override String get description => '身長はBMIやエネルギー必要量の正確な計算に使用します。';
	@override String get metric => 'メートル法';
	@override String get imperial => 'インペリアル';
	@override String get next => '次へ';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$ja extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$age$ja extends Translations$onboarding$age$en {
	_Translations$onboarding$age$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '生年月日は？';
	@override String get description => '年齢はカロリー必要量の正確な計算に使用します。';
	@override String get next => '次へ';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$ja extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get underweight => '低';
	@override String get healthy => '適正';
	@override String get overweight => '過剰';
	@override String get obese => '肥満';
	@override late final _Translations$onboarding$bmiScale$categories$ja categories = _Translations$onboarding$bmiScale$categories$ja._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$ja messages = _Translations$onboarding$bmiScale$messages$ja._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$ja extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '目標は何ですか？';
	@override String get description => '達成したいことに最も近い目標を選んでください';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$ja extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'どのくらい活動的ですか？';
	@override String get description => 'これは毎日のカロリー必要量をより正確に算出するのに役立ちます';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$ja extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connectと接続';
	@override String get description => '健康データを同期して、より良いインサイトと自動カロリートラッキングを実現します';
	@override String get overviewDescription => '日次目標に消費カロリーを反映し、必要に応じて記録した食事をHealth Connectと共有します。';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$ja automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$ja._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$ja caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$ja._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$ja progressInsights = _Translations$onboarding$healthConnect$progressInsights$ja._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$ja shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$ja._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$ja seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$ja._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$ja userControl = _Translations$onboarding$healthConnect$userControl$ja._(_root);
	@override String get connected => 'Health Connectに接続済み';
	@override String get notConnected => 'Health Connectに未接続';
	@override String get setup => 'Health Connectを設定';
	@override String get skipForNow => 'とりあえずスキップ';
	@override String get statusConnected => 'Health Connectが接続されています。';
	@override String get statusSuccess => 'Health Connectの接続に成功しました！';
	@override String get statusNotConnected => '有効にするHealth Connect機能を選択してください。';
	@override String get statusPartial => 'Health Connectの一部が接続されています。両方の機能を使うには、残りの権限を有効にしてください。';
	@override String get statusProviderUpdateRequired => '続行するにはHealth Connectをインストールまたは更新してください。';
	@override String get statusUnavailable => 'この端末はHealth Connectに対応していません。';
	@override String get installOrUpdate => 'インストールまたは更新';
	@override String get manageAccess => 'アクセスを管理';
	@override String statusPermissionDenied({required Object appLabel}) => '権限が拒否されました。${appLabel}のHealth Connect権限を端末の設定で有効にしてください。';
	@override String statusError({required Object error}) => 'Health Connectの設定中にエラーが発生しました: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$ja extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$ja trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$ja._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$ja healthProfile = _Translations$onboarding$reinforcement$healthProfile$ja._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$ja goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$ja._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$ja extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$home$dailyGoal$ja extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
	@override String get kcal => 'キロカロリー（kcal）';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$ja extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$home$intakeProgress$ja extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '今日のマクロ内訳';
	@override String get target => '目標';
	@override String get current => '現在';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$ja extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '7日間のマクロ履歴';
	@override String get trendTitle => '今日の傾向';
	@override String peakHour({required Object hour}) => 'ピーク: ${hour}:00';
	@override String get noHistoryYet => 'まだ履歴がありません';
	@override String get startLogging => '食事を記録して、ここで\n7日間のマクロ傾向を確認しましょう';
}

// Path: home.mealLog
class _Translations$home$mealLog$ja extends Translations$home$mealLog$en {
	_Translations$home$mealLog$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '記録した食事';
	@override String get emptyMessage => '最後の食事の写真を撮ってここに記録しましょう。';
	@override String get noMealsToday => '今日の記録はありません';
	@override String get seeAllMeals => 'すべての食事を表示';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$ja extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AIでクイック追加';
	@override String get description => '食事を説明すると、AIが詳細を処理します。';
	@override String get hint => '例：朝食にオートミール大盛り、スライスしたバナナ1本、ホエイプロテイン一杯…';
	@override String get analyzeMeal => '食事を分析';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$ja extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$home$mealSnap$ja extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$home$connectHealth$ja extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connectと同期';
	@override String get description => '栄養データをHealth Connectと同期します';
	@override String get install => 'インストール';
	@override String get dataUseDescription => '目標に消費カロリーを反映し、記録した食事を共有します';
	@override String get installOrUpdate => 'インストールまたは更新';
	@override String get connect => '接続';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$ja extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get calories => 'カロリー';
	@override String get carbs => '炭水化物 (g)';
	@override String get protein => 'たんぱく質 (g)';
	@override String get fat => '脂質 (g)';
	@override String get fiber => '食物繊維 (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$ja extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '食事を削除';
	@override String get message => 'この食事の記録を本当に削除しますか？';
	@override String get cancel => 'キャンセル';
	@override String get delete => '削除';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$ja extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => '質問 ${current}/${total}';
	@override String get noQuestionsAvailable => '利用可能な質問はありません';
	@override String get next => '次へ';
	@override String get continueLabel => '続ける';
	@override String get countQuestion => '数量を選択';
	@override String get itemSizeQuestion => 'サイズを選択';
	@override String get portionSizeQuestion => 'ポーションサイズを選択';
	@override String get option6plus => '6個以上';
	@override String get optionSmall => '小';
	@override String get optionRegular => '普通';
	@override String get optionLarge => '大';
	@override String get optionThin => '薄い';
	@override String get optionThick => '厚い';
	@override String get optionMini => 'ミニ';
	@override String get optionStuffed => '詰め物入り';
	@override String get optionHeavy => 'ヘビー';
	@override String get optionSmaller => '小さい';
	@override String get optionTypical => '標準';
	@override String get optionLarger => '大きい';
	@override String get useEstimate => '推定値を使用';
	@override String numberRange({required Object min, required Object max, required Object step}) => '範囲: ${min}～${max} (${step}刻み)';
	@override String get invalidNumber => '指定された範囲内の数値を入力してください';
}

// Path: meal.analysis
class _Translations$meal$analysis$ja extends Translations$meal$analysis$en {
	_Translations$meal$analysis$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
	@override String get providerUnavailable => '食事分析サービスは現在ご利用いただけません。しばらくしてからもう一度お試しください。';
	@override String get invalidModelOutput => '食事の分析結果を正しく読み取れませんでした。もう一度お試しください。';
	@override String get nutritionDataUnavailable => '栄養データは現在ご利用いただけません。しばらくしてからもう一度お試しください。';
	@override String get analysisUnavailable => '食事の分析は現在ご利用いただけません。しばらくしてからもう一度お試しください。';
	@override String get unresolvedNutrition => 'この食事に確実に一致する栄養データを特定できませんでした。詳細をもう少し追加してみてください。';
	@override String get noFoodTip => '食品が検出されませんでした。別の写真または説明をお試しください。';
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
	@override String calorieRange({required Object min, required Object max}) => '推定範囲: ${min}～${max}kcal';
	@override String get offlineTip0 => 'ヒント：完璧さより継続が大事—定期的な記録が重要な傾向を明らかにします。';
	@override String get offlineTip1 => 'ヒント：写真は自然光で上から撮ると分量推定が向上します。';
	@override String get offlineTip2 => 'ヒント：飲み物、ソース、調理油も伝えてください—見落としがちなカロリーが含まれます。';
	@override String get offlineTip3 => 'ヒント：分量の簡単なメモ（例：1杯、大きめのコーヒー）が推定を大きく改善します。';
	@override String get offlineTip4 => 'ヒント：食後に記録しても習慣化になります。完璧である必要はありません。';
	@override String get offlineTip5 => 'ヒント：調理方法（揚げる・焼くなど）を伝えるとカロリー推定がより正確になります。';
}

// Path: meal.feedback
class _Translations$meal$feedback$ja extends Translations$meal$feedback$en {
	_Translations$meal$feedback$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$favorites$sortOptions$ja extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get recent => '最近';
	@override String get calories => 'カロリー順';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _Translations$profile$sections$ja extends Translations$profile$sections$en {
	_Translations$profile$sections$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'プロフィール';
	@override String get basicInformation => '基本情報';
	@override String get goalsAndActivity => '目標と活動';
	@override String get calculatedValues => '算出値';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$ja extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => '日次目標';
	@override String get calPerDay => 'cal/日';
	@override String get notAvailable => '該当なし';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$ja extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => '個人情報';
	@override String get physicalMeasurements => '身体計測';
	@override String get goalsAndActivity => '目標と活動';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$ja extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get male => '男性';
	@override String get female => '女性';
	@override String get other => 'その他';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$ja extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$ja loseWeight = _Translations$editProfile$weightGoals$loseWeight$ja._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$ja maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$ja._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$ja gainWeight = _Translations$editProfile$weightGoals$gainWeight$ja._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$ja extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$ja sedentary = _Translations$editProfile$activityLevels$sedentary$ja._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$ja lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$ja._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$ja moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$ja._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$ja veryActive = _Translations$editProfile$activityLevels$veryActive$ja._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$ja extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$ja._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$ja extends Translations$settings$sections$en {
	_Translations$settings$sections$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'プロフィール';
	@override String get localization => 'ローカリゼーション';
	@override String get notifications => '通知';
	@override String get healthConnect => 'Health Connect';
	@override String get supportAndLegal => 'サポートと法務';
	@override String get about => 'このアプリについて';
	@override String get dangerZone => '危険領域';
	@override String get developer => '開発者';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$ja extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィール編集';
	@override String get subtitle => '個人情報を更新する';
}

// Path: settings.language
class _Translations$settings$language$ja extends Translations$settings$language$en {
	_Translations$settings$language$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '言語';
	@override String get subtitle => '希望する言語を選択してください';
	@override String get searchHint => '言語を検索…';
	@override String get noResults => '結果が見つかりません';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$ja extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '身長の単位';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$ja extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '体重の単位';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$ja extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '食事リマインダー';
	@override String get subtitle => 'タイムリーな通知で軌道に乗りましょう';
}

// Path: settings.theme
class _Translations$settings$theme$ja extends Translations$settings$theme$en {
	_Translations$settings$theme$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'テーマ';
	@override String get light => 'ライト';
	@override String get dark => 'ダーク';
	@override String get system => 'システム';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$ja extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$settings$exportMealHistory$ja extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '食事履歴をエクスポート';
	@override String get subtitle => '記録した食事のCSVを共有する';
	@override String get shareText => 'あなたのCalorify食事履歴のエクスポート';
	@override String failed({required Object error}) => '食事履歴をエクスポートできませんでした: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$ja extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'すべてのデータを消去';
	@override String get subtitle => 'あなたの情報を元に戻せない形で削除します';
	@override String get localOnlySubtitle => 'この端末に保存されたCalorifyデータを削除します';
	@override String get confirmationTitle => 'すべてのデータを消去しますか？';
	@override String get confirmationMessage => 'この操作は元に戻せません。記録した全ての食事、お気に入り、プロフィール設定が永久に削除されます。';
	@override String get localOnlyConfirmationMessage => 'この端末から、記録した食事、お気に入り、プロフィール設定を完全に削除します。Health Connectに共有済みの食事とHealth Connectへのアクセスは、設定 > Health Connectで別途管理されます。';
	@override String get cancel => 'キャンセル';
	@override String get clearEverything => 'すべて消去';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$ja extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'デバッグオプション';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$ja extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => '権限の表示と管理';
	@override late final _Translations$settings$healthConnect$unavailable$ja unavailable = _Translations$settings$healthConnect$unavailable$ja._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$ja updateRequired = _Translations$settings$healthConnect$updateRequired$ja._(_root);
	@override late final _Translations$settings$healthConnect$permissions$ja permissions = _Translations$settings$healthConnect$permissions$ja._(_root);
	@override String get managePermissions => '権限を管理';
	@override String get openSettings => 'Health Connect設定を開く';
	@override String get disconnect => 'Health Connectとの接続を解除';
	@override String get disconnectConfirmationTitle => 'Health Connectとの接続を解除しますか？';
	@override String get disconnectConfirmationMessage => 'CalorifyはHealth Connectへのアクセスを失います。すでに書き込まれたデータは削除されません。';
	@override String get disconnectConfirmationAction => '接続を解除';
	@override String get deleteSyncedMeals => 'Health ConnectからCalorifyの食事を削除';
	@override String get deleteSyncedMealsConfirmationTitle => '同期した食事を削除しますか？';
	@override String get deleteSyncedMealsConfirmationMessage => 'このバージョンのCalorifyがHealth Connectへ同期した食事を削除しますか？端末内の食事記録は変更されません。以前のCalorifyエントリは、Health Connectの「データを管理」から削除する必要がある場合があります。';
	@override String get deleteSyncedMealsConfirmationAction => '同期した食事を削除';
	@override String get deleteSyncedMealsSuccess => 'Calorifyの食事をHealth Connectから削除しました。';
	@override String get deleteSyncedMealsFailed => '同期した食事を削除できませんでした。もう一度お試しください。';
	@override String get connectionPartial => 'Health Connectの一部の機能が有効です。';
	@override String get connectionComplete => 'Health Connectの両方の機能が有効です。';
	@override String get actionFailed => 'Health Connectを開けませんでした。もう一度お試しください。';
	@override String get requestPermissions => '権限を要求';
	@override String get permissionRequestCancelledOrFailed => '権限要求がキャンセルされたか失敗しました。もう一度お試しいただくか、Health Connectの設定で手動で権限を付与してください。';
	@override String get permissionRequestFailed => '権限の要求ができませんでした。もう一度お試しいただくか、Health Connectの設定で手動で権限を付与してください。';
	@override String get requestingPermissions => '要求中…';
}

// Path: settings.about
class _Translations$settings$about$ja extends Translations$settings$about$en {
	_Translations$settings$about$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'このアプリについて';
	@override String get tagline => '速く、無料、プライバシー優先のカロリー意識';
	@override late final _Translations$settings$about$ourStory$ja ourStory = _Translations$settings$about$ourStory$ja._(_root);
	@override late final _Translations$settings$about$privacy$ja privacy = _Translations$settings$about$privacy$ja._(_root);
	@override late final _Translations$settings$about$developer$ja developer = _Translations$settings$about$developer$ja._(_root);
	@override late final _Translations$settings$about$feedback$ja feedback = _Translations$settings$about$feedback$ja._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$ja extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify バージョン${version}';
	@override String build({required Object buildNumber}) => 'ビルド ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$ja extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '朝ごはんの時間です！ 🍳';
	@override String get body => '朝食を記録するのを忘れずに';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$ja extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'お昼の時間です！ 🥗';
	@override String get body => '昼食を記録しましょう';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$ja extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '夕食の時間です！ 🍽️';
	@override String get body => '夕食を記録するのを忘れずに';
}

// Path: notifications.snack
class _Translations$notifications$snack$ja extends Translations$notifications$snack$en {
	_Translations$notifications$snack$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'おやつの時間です！ 🍎';
	@override String get body => '健康的なおやつを記録しましょう';
}

// Path: notifications.test
class _Translations$notifications$test$ja extends Translations$notifications$test$en {
	_Translations$notifications$test$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'テスト通知';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$ja extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel}は推定の栄養情報を提供します。精度は入力と食品のばらつきに依存します。参考としてご利用ください。個別の食事相談は専門家にご相談ください。';
	@override late final _Translations$disclaimer$snap$portionSize$ja portionSize = _Translations$disclaimer$snap$portionSize$ja._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$ja preparationMethods = _Translations$disclaimer$snap$preparationMethods$ja._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$ja ingredients = _Translations$disclaimer$snap$ingredients$ja._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$ja databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$ja._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$ja extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '体重推定について';
	@override String get description => '推定される体重変化は、単純なカロリー収支モデルに基づく理論的な推定です。モチベーションの指標として意図されており、実際の体重予測ではありません。';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$ja calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$ja._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$ja biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$ja._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$ja waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$ja._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$ja professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$ja._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$ja extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get description => 'これらの指標は体のエネルギー必要量を理解し、栄養目標を導くのに役立ちます。';
	@override late final _Translations$disclaimer$healthMetrics$bmr$ja bmr = _Translations$disclaimer$healthMetrics$bmr$ja._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$ja tdee = _Translations$disclaimer$healthMetrics$tdee$ja._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$ja dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$ja._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$ja extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '消費カロリーの推定';
	@override String get description => 'Health Connectのデータが利用できない場合、今日の消費カロリーを基礎代謝（BMR）と活動レベル（TDEE）を使用して、経過した日の割合に応じて推定します。';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$ja howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$ja._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$ja professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$ja._(_root);
}

// Path: watch.common
class _Translations$watch$common$ja extends Translations$watch$common$en {
	_Translations$watch$common$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get back => '戻る';
	@override String get cancel => 'キャンセル';
	@override String get delete => '削除';
	@override String get retry => '再試行';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$ja extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get nutrient => '栄養素';
	@override String grams({required Object label, required Object value}) => '${label}、${value} g';
	@override String get protein => 'タンパク質';
	@override String get carbs => '炭水化物';
	@override String get fat => '脂質';
	@override String get fiber => '食物繊維';
}

// Path: watch.sync
class _Translations$watch$sync$ja extends Translations$watch$sync$en {
	_Translations$watch$sync$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => '電話と同期';
	@override String get syncing => '同期中…';
	@override String get synced => '同期済み';
	@override String get syncedJustNow => '同期したばかりです';
	@override String syncedMinutesAgo({required Object minutes}) => '約${minutes}分前に同期しました';
	@override String get failed => '同期に失敗しました';
	@override String get phoneDisconnected => '電話の接続が切れました';
	@override String get tapToSync => 'タップして同期';
	@override String get refreshFailed => '更新できませんでした。電話を確認してください。';
	@override String get openPhone => '電話で Calorify を開き、更新をタップしてください。';
}

// Path: watch.home
class _Translations$watch$home$ja extends Translations$watch$home$en {
	_Translations$watch$home$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get today => '今日';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} kcal を ${goal} 中 消費しました。${status}。';
	@override String overGoal({required Object calories}) => '${calories} オーバー';
	@override String remaining({required Object calories}) => '${calories} 残り';
	@override String left({required Object calories}) => '${calories} 残り';
	@override String goal({required Object calories}) => '${calories} kcal 目標';
	@override String get logMeal => '食事を記録';
	@override String get todayMeals => '今日の食事';
	@override String todayMealsCount({required Object count}) => '今日の食事、${count}件';
	@override String viewMore({required Object count}) => '${count}件を表示';
	@override String viewMoreSemantics({required Object count}) => '${count}件の追加の食事があります。タップしてすべて表示。';
	@override String get noMeals => '記録された食事はありません';
	@override String get noMealsSemantics => '今日の記録はありません';
	@override String get tapLog => '開始するには「記録」をタップ';
	@override String get removedFromQueue => 'オフラインキューから食事が削除されました。';
	@override String get removedOffline => 'オフラインで食事を削除しました。電話が再接続されると同期されます。';
	@override String get deleteFailed => '食事を削除できませんでした';
}

// Path: watch.history
class _Translations$watch$history$ja extends Translations$watch$history$en {
	_Translations$watch$history$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '今日の食事';
	@override String get refresh => '食事を更新';
	@override String get loadFailed => '食事を読み込めませんでした';
	@override String get syncFailed => '同期できませんでした';
	@override String get emptyTitle => 'まだ食事がありません';
	@override String get emptyMessage => 'ホームで食事を記録するとここに表示されます。';
}

// Path: watch.favorites
class _Translations$watch$favorites$ja extends Translations$watch$favorites$en {
	_Translations$watch$favorites$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'お気に入り';
	@override String get refresh => 'お気に入りを更新';
	@override String get loadFailed => 'お気に入りを読み込めませんでした';
	@override String get syncFailed => '同期できませんでした';
	@override String get emptyTitle => 'まだお気に入りはありません';
	@override String get emptyMessage => '電話アプリで食事に★を付けると、ここでワンタップで記録できます。';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}、${calories}。タップして記録。';
	@override String logged({required Object name}) => '${name} を記録しました！';
	@override String savedOffline({required Object name}) => '${name} をオフラインで保存しました。電話が再接続されると同期されます。';
	@override String get saveFailed => '食事を保存できませんでした。再度お試しください。';
	@override String get log => '記録';
}

// Path: watch.meal
class _Translations$watch$meal$ja extends Translations$watch$meal$en {
	_Translations$watch$meal$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}、${calories}、${time} に記録済み。';
	@override String get longPressDelete => '削除するには長押ししてください。';
	@override String get deleteTitle => '食事を削除しますか？';
}

// Path: watch.voice
class _Translations$watch$voice$ja extends Translations$watch$voice$en {
	_Translations$watch$voice$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '音声で記録';
	@override String get processing => '食事を確認しています…';
	@override String get processingDescription => '分量と栄養を推定しています';
	@override String get listening => '聞き取り中';
	@override String secondsLeft({required Object seconds}) => '${seconds}秒';
	@override String get stop => '録音を停止';
	@override String get start => 'タップして録音を開始';
	@override String get starting => 'マイクを起動しています…';
	@override String get prompt => 'タップしてから食事を説明してください';
	@override String get tapToRetry => 'タップして再試行';
	@override String get example => '例：「ロティ2枚とダール」';
	@override String get unavailable => '音声入力は利用できません。ウォッチの設定でマイクの権限を確認してください。';
	@override String get didNotStart => 'マイクが起動しませんでした。タップして再試行してください。';
	@override String get startFailed => '録音を開始できませんでした。マイクの権限を確認してください。';
	@override String get allowMicrophone => '音声で記録するにはマイクのアクセスを許可してください。';
	@override String get needsConnection => '音声認識には接続が必要です。タップして再試行してください。';
	@override String get microphoneUnavailable => 'マイクが利用できません。タップして再試行してください。';
	@override String get microphoneBusy => 'マイクが使用中です。少し待ってから再試行してください。';
	@override String get languageUnsupported => '音声入力はこのウォッチの言語をサポートしていません。';
	@override String get temporarilyBusy => '音声入力が一時的に混雑しています。少し待ってから再試行してください。';
	@override String get notRecognized => '聞き取れませんでした。マイクをタップしてもう一度お試しください。';
	@override String get noSpeech => '音声が検出されませんでした。マイクをタップして再度お試しください。';
	@override String get analysisFailed => '解析に失敗しました。もう一度お試しください。';
	@override String get mealNotIdentified => 'その食事を特定できませんでした。別の言い方で説明してみてください。';
}

// Path: watch.result
class _Translations$watch$result$ja extends Translations$watch$result$en {
	_Translations$watch$result$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '食事の詳細';
	@override String get savedOffline => 'オフラインで保存されました';
	@override String get logged => '記録しました！';
	@override String get mealFound => '食事を見つけました';
	@override String get estimatedEnergy => '推定エネルギー';
	@override String get logMeal => '食事を記録';
	@override String get logging => '記録中…';
	@override String get logAnother => '別の食事を記録';
	@override String get goingBack => '戻ります…';
	@override String get savedOfflineMessage => '食事はオフラインで保存されました。電話が再接続されると同期されます。';
	@override String get saveFailed => '食事を保存できませんでした。もう一度お試しください。';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$ja extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'スマートな食事認識';
	@override String get description => '写真を撮ってAIに食事を識別させましょう';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$ja extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AIによる分析';
	@override String get description => '説明から瞬時に栄養情報を取得します';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$ja extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect連携';
	@override String get description => 'Health Connectと接続してより良いインサイトを得る';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$ja extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get underweight => '低体重';
	@override String get healthyWeight => '適正体重';
	@override String get overweight => '過体重';
	@override String get obese => '肥満';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$ja extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get underweight => '栄養価の高い食事でバランスの取れた体重を目指す健康的なプランを一緒に作りましょう。';
	@override String get healthy => '素晴らしい！適正範囲にいます。活力とエネルギーを維持するお手伝いをします。';
	@override String overweight({required Object appLabel}) => '${appLabel}はAIによるトラッキングで、無理なく目標に近づけるようサポートします。';
	@override String get obese => '個別のガイダンスと持続可能な戦略であなたの健康目標を支援します。';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$ja extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '自動カロリートラッキング';
	@override String get description => 'フィットネスアプリから消費カロリーを追跡します';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$ja extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '消費カロリー';
	@override String get description => 'Health Connectから今日の総消費カロリーを読み取ります';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$ja extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '進捗インサイト';
	@override String get description => '健康トレンドに関する詳細なインサイトを取得します';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$ja extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '記録した食事を共有';
	@override String get description => 'Calorifyに記録した食事をHealth Connectへ書き込みます';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$ja extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'シームレスな連携';
	@override String get description => 'お気に入りのヘルスアプリからデータを同期します';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$ja extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '設定はいつでも変更できます';
	@override String get description => 'どちらかの権限を選び、アクセス設定をいつでも変更できます';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$ja extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$healthProfile$ja extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$goalLifestyle$ja extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$weightGoals$loseWeight$ja extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '体重を減らす';
	@override String get description => 'カロリー不足を作って体重を減らします';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$ja extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '体重を維持';
	@override String get description => '現在の体重を維持します';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$ja extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '体重を増やす';
	@override String get description => 'カロリー余剰を作って体重を増やします';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$ja extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '座りがち';
	@override String get description => 'ほとんど運動しない';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$ja extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => 'やや活動的';
	@override String get description => '週1〜3日程度の軽い運動';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$ja extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '中程度に活動的';
	@override String get description => '週3〜5日の中程度の運動';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$ja extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '非常に活動的';
	@override String get description => '週6〜7日の激しい運動';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$ja extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '極めて活動的';
	@override String get description => '非常に激しい運動や肉体労働';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$ja extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connectが利用できません';
	@override String get description => 'この端末ではHealth Connectが利用できません。Play StoreからHealth Connectをインストールするか（Android 9+）、Androidを14+にアップデートしてください。';
	@override String get unsupportedDescription => 'この端末はHealth Connectに対応していません。';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$ja extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connectの対応が必要です';
	@override String get description => 'アクセスを管理する前にHealth Connectをインストールまたは更新してください。';
	@override String get action => 'インストールまたは更新';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$ja extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '権限';
	@override String get description => 'Health Connect連携のために次の権限が要求されます：';
	@override String get granted => '許可済み';
	@override String get notGranted => '未許可';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$ja caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$ja._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$ja nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$ja._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$ja nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$ja._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$ja extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '私たちのストーリー';
	@override String content({required Object appLabel}) => '${appLabel}はシンプルなフラストレーションから生まれました：多くのカロリートラッキングアプリは複雑すぎる、手入力が多すぎる、高額なサブスクリプションが必要、あるいはプライバシーを損なう。\n\nソロ開発者として、もっとシンプルで公平なものを作りたかった—AIで手間を減らし、速くて無料のまま、健康データを尊重するアプリを。\n\n${appLabel}は私が欲しかったアプリです：アカウント不要、トラッキングなし、広告なし—明確で実用的なインサイトとあなたの健康目標だけ。';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$ja extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'あなたのプライバシーを重視しています';
	@override String get description => 'プライバシーは後付けではなく設計原則です。実際にどういうことかは以下の通りです：';
	@override String get noAccounts => 'アカウント不要\nすぐにアプリを使えます。サインアップや個人情報は不要です。';
	@override String noTracking({required Object appLabel}) => '行動トラッキングなし\n${appLabel}はあなたの行動を監視したり、使用プロファイルを構築したり、アプリやウェブを横断して追跡したりしません。';
	@override String analyticsDisclosure({required Object appLabel}) => '限定的な分析と診断\n${appLabel}は信頼性向上のため、基本的なアプリイベントとクラッシュ診断を使用します。健康記録の値を広告に使用したり、販売したりすることはありません。';
	@override String noAds({required Object appLabel}) => '広告なしで設計\n${appLabel}は広告やデータ駆動のマネタイズなしで動作するよう作られています。';
	@override String get noDataSelling => 'データ販売なし\nあなたの健康データが第三者に販売または共有されることはありません。';
	@override String get localStorage => 'ローカルファーストの保存\nあなたのデータは端末に留まります。';
	@override String get privacyPolicy => 'プライバシーポリシー';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$ja extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ソロ開発者による開発';
	@override String description({required Object appLabel}) => '${appLabel}は、落ち着いたプライバシー重視の健康ソフトウェアを作ることに集中する単独の開発者によって作られ、維持されています。\n\nフィードバックは個人で読み、アプリの方向性を形作るのに役立ちます。';
	@override String get website => 'ウェブサイト';
	@override String get email => 'メール';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$ja extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel}を気に入っていますか？';
	@override String description({required Object appLabel}) => 'あなたのフィードバックは${appLabel}を全員にとってより良くします。';
	@override String get rateApp => 'Play Storeで評価する';
	@override String get sendFeedback => 'フィードバックを送る';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$ja extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '分量';
	@override String get description => '推定の精度は分量の正確な評価に大きく依存します。';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$ja extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '調理方法';
	@override String description({required Object appLabel}) => '調理方法は栄養成分を大きく変える可能性があります。${appLabel}の推定が必ずしもこれらを考慮しているとは限りません。';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$ja extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '材料';
	@override String get description => '材料が複雑で隠れた材料が多い料理は、推定精度が低くなる可能性があります。';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$ja extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'データベースの制限';
	@override String description({required Object appLabel}) => '${appLabel}の食品データベースは豊富ですが、すべての食品やバリエーションを網羅しているわけではありません。';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$ja extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'カロリーの精度';
	@override String get description => 'この推定は、記録されたカロリー摂取と消費の精度に依存します。不正確な記録は不正確な推定を生みます。';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$ja extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '生物学的要因';
	@override String description({required Object appLabel}) => '実際の体重変化は代謝、ホルモン、睡眠、ストレス、水分量など個人差のある要因に影響され、${appLabel}では測定できません。';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$ja extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '水分による変動';
	@override String get description => '日々の体重は水分保持、消化、タイミングにより大きく変動することがあります。推定はこれらの一時的な変動を考慮していません。';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$ja extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '専門的な助言';
	@override String get description => '医療上の判断にこの推定を使用しないでください。個別の体重管理については医療専門家や登録栄養士に必ず相談してください。';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$ja extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => '基礎代謝量（BMR）は、呼吸や循環など安静時に体が基本機能を維持するために消費するカロリー量です。BMRは年齢、性別、身長、体重に依存します。筋肉量が多い、若い、男性であるほどBMRは高くなる傾向があります。逆に筋肉量が少ない、年齢が高い、または女性であると低くなる傾向があります。';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$ja extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => '総日次エネルギー消費（TDEE）は、BMRに身体活動や日常の動きによる消費カロリーを加えた1日あたりの総消費カロリーです。TDEEはBMRと活動レベルに依存します。活動的であったりBMRが高いとTDEEは高くなります。';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$ja extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '日次目標';
	@override String get description => '日次目標は、TDEEと体重目標に基づく推奨摂取カロリーです。減量の場合はTDEEより少ないカロリーを、維持はTDEEと同等、増量はTDEEより多いカロリーを摂取します。健康的なペースで目標体重を達成するのに役立ちます。';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$ja extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '推定の計算方法';
	@override String get description => 'プロフィールに基づいてTDEEを算出し、経過した日の割合（時間＋分）/24を掛けて、これまでの消費カロリーを推定します。';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$ja extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '専門的な助言';
	@override String get description => 'この推定を医療上の判断に使用しないでください。個別の体重管理については医療専門家や登録栄養士に必ず相談してください。';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$ja extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '総消費カロリーの読み取り';
	@override String get description => 'アプリがHealth Connectから総消費カロリーを読み取れるようにします。';
	@override String get usage => 'この権限はアプリ内で日次消費カロリーを表示し、1日の総エネルギー消費を理解するために使用されます。';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$ja extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$ja._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '栄養データの読み取り';
	@override String get description => 'アプリがHealth Connectから栄養データを読み取れるようにします。';
	@override String get usage => 'この権限により、他のアプリがHealth Connectへ記録した栄養情報を読み取り、栄養の包括的なビューを提供できます。';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$ja extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$ja._(TranslationsJa root) : this._root = root, super.internal(root);

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
			'onboarding.healthConnect.overviewDescription' => '日次目標に消費カロリーを反映し、必要に応じて記録した食事をHealth Connectと共有します。',
			'onboarding.healthConnect.automaticTracking.title' => '自動カロリートラッキング',
			'onboarding.healthConnect.automaticTracking.description' => 'フィットネスアプリから消費カロリーを追跡します',
			'onboarding.healthConnect.caloriesBurned.title' => '消費カロリー',
			'onboarding.healthConnect.caloriesBurned.description' => 'Health Connectから今日の総消費カロリーを読み取ります',
			'onboarding.healthConnect.progressInsights.title' => '進捗インサイト',
			'onboarding.healthConnect.progressInsights.description' => '健康トレンドに関する詳細なインサイトを取得します',
			'onboarding.healthConnect.shareLoggedMeals.title' => '記録した食事を共有',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Calorifyに記録した食事をHealth Connectへ書き込みます',
			'onboarding.healthConnect.seamlessIntegration.title' => 'シームレスな連携',
			'onboarding.healthConnect.seamlessIntegration.description' => 'お気に入りのヘルスアプリからデータを同期します',
			'onboarding.healthConnect.userControl.title' => '設定はいつでも変更できます',
			'onboarding.healthConnect.userControl.description' => 'どちらかの権限を選び、アクセス設定をいつでも変更できます',
			'onboarding.healthConnect.connected' => 'Health Connectに接続済み',
			'onboarding.healthConnect.notConnected' => 'Health Connectに未接続',
			'onboarding.healthConnect.setup' => 'Health Connectを設定',
			'onboarding.healthConnect.skipForNow' => 'とりあえずスキップ',
			'onboarding.healthConnect.statusConnected' => 'Health Connectが接続されています。',
			'onboarding.healthConnect.statusSuccess' => 'Health Connectの接続に成功しました！',
			'onboarding.healthConnect.statusNotConnected' => '有効にするHealth Connect機能を選択してください。',
			'onboarding.healthConnect.statusPartial' => 'Health Connectの一部が接続されています。両方の機能を使うには、残りの権限を有効にしてください。',
			'onboarding.healthConnect.statusProviderUpdateRequired' => '続行するにはHealth Connectをインストールまたは更新してください。',
			'onboarding.healthConnect.statusUnavailable' => 'この端末はHealth Connectに対応していません。',
			'onboarding.healthConnect.installOrUpdate' => 'インストールまたは更新',
			'onboarding.healthConnect.manageAccess' => 'アクセスを管理',
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
			'home.dailyGoal.kcal' => 'キロカロリー（kcal）',
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
			'home.connectHealth.dataUseDescription' => '目標に消費カロリーを反映し、記録した食事を共有します',
			'home.connectHealth.installOrUpdate' => 'インストールまたは更新',
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
			'meal.imageTooLarge' => 'この写真は圧縮してもまだ1MBを超えています。別の写真を選んでください。',
			'meal.failedToSave' => 'データの保存に失敗しました。もう一度お試しください。',
			'meal.skip' => 'スキップ',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => '質問 ${current}/${total}',
			'meal.questionFlow.noQuestionsAvailable' => '利用可能な質問はありません',
			'meal.questionFlow.next' => '次へ',
			'meal.questionFlow.continueLabel' => '続ける',
			'meal.questionFlow.countQuestion' => '数量を選択',
			'meal.questionFlow.itemSizeQuestion' => 'サイズを選択',
			'meal.questionFlow.portionSizeQuestion' => 'ポーションサイズを選択',
			'meal.questionFlow.option6plus' => '6個以上',
			'meal.questionFlow.optionSmall' => '小',
			'meal.questionFlow.optionRegular' => '普通',
			'meal.questionFlow.optionLarge' => '大',
			'meal.questionFlow.optionThin' => '薄い',
			'meal.questionFlow.optionThick' => '厚い',
			'meal.questionFlow.optionMini' => 'ミニ',
			'meal.questionFlow.optionStuffed' => '詰め物入り',
			'meal.questionFlow.optionHeavy' => 'ヘビー',
			'meal.questionFlow.optionSmaller' => '小さい',
			'meal.questionFlow.optionTypical' => '標準',
			'meal.questionFlow.optionLarger' => '大きい',
			'meal.questionFlow.useEstimate' => '推定値を使用',
			'meal.questionFlow.numberRange' => ({required Object min, required Object max, required Object step}) => '範囲: ${min}～${max} (${step}刻み)',
			'meal.questionFlow.invalidNumber' => '指定された範囲内の数値を入力してください',
			'meal.analysis.title' => '食事を分析中',
			'meal.analysis.stepStarted' => '開始しています…',
			'meal.analysis.stepDecomposition' => '食事を理解しています…',
			'meal.analysis.stepIngredients' => '栄養データと材料を照合しています…',
			'meal.analysis.stepUncertainty' => '信頼度をチェックしています…',
			'meal.analysis.stepMealTypeQuestion' => 'もう少しで完了です…',
			'meal.analysis.stepResult' => '結果を最終化しています…',
			'meal.analysis.stepError' => '問題が発生しました',
			'meal.analysis.providerUnavailable' => '食事分析サービスは現在ご利用いただけません。しばらくしてからもう一度お試しください。',
			'meal.analysis.invalidModelOutput' => '食事の分析結果を正しく読み取れませんでした。もう一度お試しください。',
			'meal.analysis.nutritionDataUnavailable' => '栄養データは現在ご利用いただけません。しばらくしてからもう一度お試しください。',
			'meal.analysis.analysisUnavailable' => '食事の分析は現在ご利用いただけません。しばらくしてからもう一度お試しください。',
			'meal.analysis.unresolvedNutrition' => 'この食事に確実に一致する栄養データを特定できませんでした。詳細をもう少し追加してみてください。',
			'meal.analysis.noFoodTip' => '食品が検出されませんでした。別の写真または説明をお試しください。',
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
			'meal.analysis.calorieRange' => ({required Object min, required Object max}) => '推定範囲: ${min}～${max}kcal',
			'meal.analysis.offlineTip0' => 'ヒント：完璧さより継続が大事—定期的な記録が重要な傾向を明らかにします。',
			'meal.analysis.offlineTip1' => 'ヒント：写真は自然光で上から撮ると分量推定が向上します。',
			'meal.analysis.offlineTip2' => 'ヒント：飲み物、ソース、調理油も伝えてください—見落としがちなカロリーが含まれます。',
			'meal.analysis.offlineTip3' => 'ヒント：分量の簡単なメモ（例：1杯、大きめのコーヒー）が推定を大きく改善します。',
			'meal.analysis.offlineTip4' => 'ヒント：食後に記録しても習慣化になります。完璧である必要はありません。',
			'meal.analysis.offlineTip5' => 'ヒント：調理方法（揚げる・焼くなど）を伝えるとカロリー推定がより正確になります。',
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
			'editProfile.unitLbs' => 'ポンド（lbs）',
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
			'settings.clearAllData.localOnlySubtitle' => 'この端末に保存されたCalorifyデータを削除します',
			'settings.clearAllData.confirmationTitle' => 'すべてのデータを消去しますか？',
			'settings.clearAllData.confirmationMessage' => 'この操作は元に戻せません。記録した全ての食事、お気に入り、プロフィール設定が永久に削除されます。',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'この端末から、記録した食事、お気に入り、プロフィール設定を完全に削除します。Health Connectに共有済みの食事とHealth Connectへのアクセスは、設定 > Health Connectで別途管理されます。',
			'settings.clearAllData.cancel' => 'キャンセル',
			'settings.clearAllData.clearEverything' => 'すべて消去',
			'settings.debugOptions.title' => 'デバッグオプション',
			'settings.developerModeEnabled' => '開発者モードが有効になりました！',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => '権限の表示と管理',
			'settings.healthConnect.unavailable.title' => 'Health Connectが利用できません',
			'settings.healthConnect.unavailable.description' => 'この端末ではHealth Connectが利用できません。Play StoreからHealth Connectをインストールするか（Android 9+）、Androidを14+にアップデートしてください。',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'この端末はHealth Connectに対応していません。',
			'settings.healthConnect.updateRequired.title' => 'Health Connectの対応が必要です',
			'settings.healthConnect.updateRequired.description' => 'アクセスを管理する前にHealth Connectをインストールまたは更新してください。',
			'settings.healthConnect.updateRequired.action' => 'インストールまたは更新',
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
			'settings.healthConnect.disconnect' => 'Health Connectとの接続を解除',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Health Connectとの接続を解除しますか？',
			'settings.healthConnect.disconnectConfirmationMessage' => 'CalorifyはHealth Connectへのアクセスを失います。すでに書き込まれたデータは削除されません。',
			'settings.healthConnect.disconnectConfirmationAction' => '接続を解除',
			'settings.healthConnect.deleteSyncedMeals' => 'Health ConnectからCalorifyの食事を削除',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => '同期した食事を削除しますか？',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'このバージョンのCalorifyがHealth Connectへ同期した食事を削除しますか？端末内の食事記録は変更されません。以前のCalorifyエントリは、Health Connectの「データを管理」から削除する必要がある場合があります。',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => '同期した食事を削除',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Calorifyの食事をHealth Connectから削除しました。',
			'settings.healthConnect.deleteSyncedMealsFailed' => '同期した食事を削除できませんでした。もう一度お試しください。',
			'settings.healthConnect.connectionPartial' => 'Health Connectの一部の機能が有効です。',
			'settings.healthConnect.connectionComplete' => 'Health Connectの両方の機能が有効です。',
			'settings.healthConnect.actionFailed' => 'Health Connectを開けませんでした。もう一度お試しください。',
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
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => '限定的な分析と診断\n${appLabel}は信頼性向上のため、基本的なアプリイベントとクラッシュ診断を使用します。健康記録の値を広告に使用したり、販売したりすることはありません。',
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
			'settings.appInfo.version' => ({required Object version}) => 'Calorify バージョン${version}',
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
			_ => null,
		} ?? switch (path) {
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
			'watch.appTitle' => 'Calorify ウォッチ',
			'watch.common.back' => '戻る',
			'watch.common.cancel' => 'キャンセル',
			'watch.common.delete' => '削除',
			'watch.common.retry' => '再試行',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => '栄養素',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}、${value} g',
			'watch.nutrition.protein' => 'タンパク質',
			'watch.nutrition.carbs' => '炭水化物',
			'watch.nutrition.fat' => '脂質',
			'watch.nutrition.fiber' => '食物繊維',
			'watch.sync.syncWithPhone' => '電話と同期',
			'watch.sync.syncing' => '同期中…',
			'watch.sync.synced' => '同期済み',
			'watch.sync.syncedJustNow' => '同期したばかりです',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => '約${minutes}分前に同期しました',
			'watch.sync.failed' => '同期に失敗しました',
			'watch.sync.phoneDisconnected' => '電話の接続が切れました',
			'watch.sync.tapToSync' => 'タップして同期',
			'watch.sync.refreshFailed' => '更新できませんでした。電話を確認してください。',
			'watch.sync.openPhone' => '電話で Calorify を開き、更新をタップしてください。',
			'watch.home.today' => '今日',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} kcal を ${goal} 中 消費しました。${status}。',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} オーバー',
			'watch.home.remaining' => ({required Object calories}) => '${calories} 残り',
			'watch.home.left' => ({required Object calories}) => '${calories} 残り',
			'watch.home.goal' => ({required Object calories}) => '${calories} kcal 目標',
			'watch.home.logMeal' => '食事を記録',
			'watch.home.todayMeals' => '今日の食事',
			'watch.home.todayMealsCount' => ({required Object count}) => '今日の食事、${count}件',
			'watch.home.viewMore' => ({required Object count}) => '${count}件を表示',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count}件の追加の食事があります。タップしてすべて表示。',
			'watch.home.noMeals' => '記録された食事はありません',
			'watch.home.noMealsSemantics' => '今日の記録はありません',
			'watch.home.tapLog' => '開始するには「記録」をタップ',
			'watch.home.removedFromQueue' => 'オフラインキューから食事が削除されました。',
			'watch.home.removedOffline' => 'オフラインで食事を削除しました。電話が再接続されると同期されます。',
			'watch.home.deleteFailed' => '食事を削除できませんでした',
			'watch.history.title' => '今日の食事',
			'watch.history.refresh' => '食事を更新',
			'watch.history.loadFailed' => '食事を読み込めませんでした',
			'watch.history.syncFailed' => '同期できませんでした',
			'watch.history.emptyTitle' => 'まだ食事がありません',
			'watch.history.emptyMessage' => 'ホームで食事を記録するとここに表示されます。',
			'watch.favorites.title' => 'お気に入り',
			'watch.favorites.refresh' => 'お気に入りを更新',
			'watch.favorites.loadFailed' => 'お気に入りを読み込めませんでした',
			'watch.favorites.syncFailed' => '同期できませんでした',
			'watch.favorites.emptyTitle' => 'まだお気に入りはありません',
			'watch.favorites.emptyMessage' => '電話アプリで食事に★を付けると、ここでワンタップで記録できます。',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}、${calories}。タップして記録。',
			'watch.favorites.logged' => ({required Object name}) => '${name} を記録しました！',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} をオフラインで保存しました。電話が再接続されると同期されます。',
			'watch.favorites.saveFailed' => '食事を保存できませんでした。再度お試しください。',
			'watch.favorites.log' => '記録',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}、${calories}、${time} に記録済み。',
			'watch.meal.longPressDelete' => '削除するには長押ししてください。',
			'watch.meal.deleteTitle' => '食事を削除しますか？',
			'watch.voice.title' => '音声で記録',
			'watch.voice.processing' => '食事を確認しています…',
			'watch.voice.processingDescription' => '分量と栄養を推定しています',
			'watch.voice.listening' => '聞き取り中',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}秒',
			'watch.voice.stop' => '録音を停止',
			'watch.voice.start' => 'タップして録音を開始',
			'watch.voice.starting' => 'マイクを起動しています…',
			'watch.voice.prompt' => 'タップしてから食事を説明してください',
			'watch.voice.tapToRetry' => 'タップして再試行',
			'watch.voice.example' => '例：「ロティ2枚とダール」',
			'watch.voice.unavailable' => '音声入力は利用できません。ウォッチの設定でマイクの権限を確認してください。',
			'watch.voice.didNotStart' => 'マイクが起動しませんでした。タップして再試行してください。',
			'watch.voice.startFailed' => '録音を開始できませんでした。マイクの権限を確認してください。',
			'watch.voice.allowMicrophone' => '音声で記録するにはマイクのアクセスを許可してください。',
			'watch.voice.needsConnection' => '音声認識には接続が必要です。タップして再試行してください。',
			'watch.voice.microphoneUnavailable' => 'マイクが利用できません。タップして再試行してください。',
			'watch.voice.microphoneBusy' => 'マイクが使用中です。少し待ってから再試行してください。',
			'watch.voice.languageUnsupported' => '音声入力はこのウォッチの言語をサポートしていません。',
			'watch.voice.temporarilyBusy' => '音声入力が一時的に混雑しています。少し待ってから再試行してください。',
			'watch.voice.notRecognized' => '聞き取れませんでした。マイクをタップしてもう一度お試しください。',
			'watch.voice.noSpeech' => '音声が検出されませんでした。マイクをタップして再度お試しください。',
			'watch.voice.analysisFailed' => '解析に失敗しました。もう一度お試しください。',
			'watch.voice.mealNotIdentified' => 'その食事を特定できませんでした。別の言い方で説明してみてください。',
			'watch.result.title' => '食事の詳細',
			'watch.result.savedOffline' => 'オフラインで保存されました',
			'watch.result.logged' => '記録しました！',
			'watch.result.mealFound' => '食事を見つけました',
			'watch.result.estimatedEnergy' => '推定エネルギー',
			'watch.result.logMeal' => '食事を記録',
			'watch.result.logging' => '記録中…',
			'watch.result.logAnother' => '別の食事を記録',
			'watch.result.goingBack' => '戻ります…',
			'watch.result.savedOfflineMessage' => '食事はオフラインで保存されました。電話が再接続されると同期されます。',
			'watch.result.saveFailed' => '食事を保存できませんでした。もう一度お試しください。',
			'common.betaTag' => 'ベータ版',
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
