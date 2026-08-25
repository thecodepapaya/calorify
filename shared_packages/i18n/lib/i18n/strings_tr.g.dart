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
class TranslationsTr extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsTr _root = this; // ignore: unused_field

	@override 
	TranslationsTr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTr(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Türkçe';
	@override String get flag => '🇹🇷';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$tr errors = _Translations$errors$tr._(_root);
	@override late final _Translations$onboarding$tr onboarding = _Translations$onboarding$tr._(_root);
	@override late final _Translations$tabs$tr tabs = _Translations$tabs$tr._(_root);
	@override late final _Translations$home$tr home = _Translations$home$tr._(_root);
	@override late final _Translations$history$tr history = _Translations$history$tr._(_root);
	@override late final _Translations$meal$tr meal = _Translations$meal$tr._(_root);
	@override late final _Translations$favorites$tr favorites = _Translations$favorites$tr._(_root);
	@override late final _Translations$profile$tr profile = _Translations$profile$tr._(_root);
	@override late final _Translations$healthScore$tr healthScore = _Translations$healthScore$tr._(_root);
	@override late final _Translations$editProfile$tr editProfile = _Translations$editProfile$tr._(_root);
	@override late final _Translations$settings$tr settings = _Translations$settings$tr._(_root);
	@override late final _Translations$reminders$tr reminders = _Translations$reminders$tr._(_root);
	@override late final _Translations$notifications$tr notifications = _Translations$notifications$tr._(_root);
	@override late final _Translations$login$tr login = _Translations$login$tr._(_root);
	@override late final _Translations$disclaimer$tr disclaimer = _Translations$disclaimer$tr._(_root);
	@override late final _Translations$localNutritionPhase4$tr localNutritionPhase4 = _Translations$localNutritionPhase4$tr._(_root);
	@override late final _Translations$watch$tr watch = _Translations$watch$tr._(_root);
	@override late final _Translations$common$tr common = _Translations$common$tr._(_root);
	@override late final _Translations$feedbackRating$tr feedbackRating = _Translations$feedbackRating$tr._(_root);
	@override late final _Translations$health$tr health = _Translations$health$tr._(_root);
}

// Path: errors
class _Translations$errors$tr extends Translations$errors$en {
	_Translations$errors$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Çok fazla istek yaptınız. Lütfen tekrar denemeden önce biraz bekleyin.';
	@override String get networkError => 'Ağ hatası. İnternet bağlantınızı kontrol edin.';
	@override String get unknownError => 'Bir şeyler yolunda gitmedi. Lütfen daha sonra tekrar deneyin.';
	@override String get loadingProfileData => 'Profil verileri yüklenirken hata oluştu';
	@override String get somethingWentWrong => 'Bir şeyler yolunda gitmedi.';
	@override String get retry => 'Tekrar dene';
}

// Path: onboarding
class _Translations$onboarding$tr extends Translations$onboarding$en {
	_Translations$onboarding$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} uygulamasına hoş geldiniz';
	@override String get subtitle => 'Yapay zekâ destekli kişisel beslenme yol arkadaşınız';
	@override String get getStarted => 'Başlayalım';
	@override late final _Translations$onboarding$features$tr features = _Translations$onboarding$features$tr._(_root);
	@override late final _Translations$onboarding$gender$tr gender = _Translations$onboarding$gender$tr._(_root);
	@override late final _Translations$onboarding$height$tr height = _Translations$onboarding$height$tr._(_root);
	@override late final _Translations$onboarding$weight$tr weight = _Translations$onboarding$weight$tr._(_root);
	@override late final _Translations$onboarding$age$tr age = _Translations$onboarding$age$tr._(_root);
	@override late final _Translations$onboarding$bmiScale$tr bmiScale = _Translations$onboarding$bmiScale$tr._(_root);
	@override late final _Translations$onboarding$weightGoal$tr weightGoal = _Translations$onboarding$weightGoal$tr._(_root);
	@override late final _Translations$onboarding$activityLevel$tr activityLevel = _Translations$onboarding$activityLevel$tr._(_root);
	@override late final _Translations$onboarding$healthConnect$tr healthConnect = _Translations$onboarding$healthConnect$tr._(_root);
	@override late final _Translations$onboarding$reinforcement$tr reinforcement = _Translations$onboarding$reinforcement$tr._(_root);
}

// Path: tabs
class _Translations$tabs$tr extends Translations$tabs$en {
	_Translations$tabs$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Ana Sayfa';
	@override String get history => 'Geçmiş';
}

// Path: home
class _Translations$home$tr extends Translations$home$en {
	_Translations$home$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$tr aiSummary = _Translations$home$aiSummary$tr._(_root);
	@override late final _Translations$home$dailyGoal$tr dailyGoal = _Translations$home$dailyGoal$tr._(_root);
	@override late final _Translations$home$dailySummary$tr dailySummary = _Translations$home$dailySummary$tr._(_root);
	@override late final _Translations$home$intakeProgress$tr intakeProgress = _Translations$home$intakeProgress$tr._(_root);
	@override late final _Translations$home$intakeHistory$tr intakeHistory = _Translations$home$intakeHistory$tr._(_root);
	@override late final _Translations$home$mealLog$tr mealLog = _Translations$home$mealLog$tr._(_root);
	@override late final _Translations$home$mealDescription$tr mealDescription = _Translations$home$mealDescription$tr._(_root);
	@override late final _Translations$home$favoriteMeals$tr favoriteMeals = _Translations$home$favoriteMeals$tr._(_root);
	@override late final _Translations$home$mealSnap$tr mealSnap = _Translations$home$mealSnap$tr._(_root);
	@override late final _Translations$home$connectHealth$tr connectHealth = _Translations$home$connectHealth$tr._(_root);
}

// Path: history
class _Translations$history$tr extends Translations$history$en {
	_Translations$history$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Kayıtlı öğün yok';
	@override String get emptyMessage => 'Buraya kaydetmek için son öğününüzün fotoğrafını çekin.';
	@override String get today => 'Bugün';
	@override String get yesterday => 'Dün';
}

// Path: meal
class _Translations$meal$tr extends Translations$meal$en {
	_Translations$meal$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Ay hayır!';
	@override String get delete => 'Sil';
	@override String get editMeal => 'Öğünü Düzenle';
	@override String get addMeal => 'Öğün Ekle';
	@override String get saveMeal => 'Öğünü Kaydet';
	@override String get save => 'Kaydet';
	@override String get mealName => 'Öğün Adı';
	@override String get mealNameHint => 'ör., Çırpılmış Yumurta ve tost';
	@override String get nameRequired => 'Kaydetmeden önce bir öğün adı girin.';
	@override String get mealQuantity => 'Öğün Miktarı';
	@override String get mealQuantityHint => 'ör., 1 kase, 2 dilim';
	@override String get timeOfMeal => 'Öğün Zamanı';
	@override String get timeOfMealHint => 'Öğünü yediğiniz zamanı seçin';
	@override String get mealType => 'Öğün Türü';
	@override late final _Translations$meal$nutrition$tr nutrition = _Translations$meal$nutrition$tr._(_root);
	@override late final _Translations$meal$deleteConfirmation$tr deleteConfirmation = _Translations$meal$deleteConfirmation$tr._(_root);
	@override String get addedToLog => 'Öğün kaydınıza eklendi!';
	@override String couldNotAdd({required Object error}) => 'Öğün eklenemedi: ${error}';
	@override String get savedSuccessfully => 'Öğün başarıyla eklendi!';
	@override String get updatedSuccessfully => 'Öğün başarıyla güncellendi!';
	@override String errorSaving({required Object error}) => 'Öğün kaydedilirken hata: ${error}';
	@override String get removedFromFavorites => 'Favorilerden kaldırıldı!';
	@override String get savedAsFavorite => 'Öğün favori olarak kaydedildi!';
	@override String get unfavorite => 'Favorilerden çıkar';
	@override String couldNotUpdateFavorite({required Object error}) => 'Favori güncellenemedi: ${error}';
	@override String get feedbackThanks => 'Geri bildiriminiz için teşekkürler!';
	@override String get reanalysisUpdated => 'Geri bildiriminize göre öğün analizi güncellendi.';
	@override String failedToProcess({required Object error}) => 'İşlenemedi: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Görüntü işlenemedi: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Görüntü sıkıştırılırken hata: ${error}';
	@override String get failedToSave => 'Veri kaydedilemedi. Lütfen tekrar deneyin.';
	@override String get skip => 'Atla';
	@override late final _Translations$meal$questionFlow$tr questionFlow = _Translations$meal$questionFlow$tr._(_root);
	@override late final _Translations$meal$analysis$tr analysis = _Translations$meal$analysis$tr._(_root);
	@override late final _Translations$meal$localInference$tr localInference = _Translations$meal$localInference$tr._(_root);
	@override late final _Translations$meal$feedback$tr feedback = _Translations$meal$feedback$tr._(_root);
}

// Path: favorites
class _Translations$favorites$tr extends Translations$favorites$en {
	_Translations$favorites$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoriler';
	@override String get empty => 'Henüz favori öğün yok.';
	@override String get searchPlaceholder => 'Favori öğünlerde ara';
	@override String get searchEmptyTitle => 'Aramanızla eşleşen favori yok';
	@override String get searchEmptySubtitle => 'Farklı bir öğün adı, miktarı veya öğün türü deneyin.';
	@override String get sortLabel => 'Favorileri sırala';
	@override String get undo => 'Geri al';
	@override String removed({required Object name}) => '${name} favorilerden kaldırıldı';
	@override late final _Translations$favorites$sortOptions$tr sortOptions = _Translations$favorites$sortOptions$tr._(_root);
}

// Path: profile
class _Translations$profile$tr extends Translations$profile$en {
	_Translations$profile$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Profil verisi bulunamadı';
	@override String get yourProfile => 'Profiliniz';
	@override String get viewAndManage => 'Sağlık bilgilerinizi görüntüleyin ve yönetin';
	@override late final _Translations$profile$sections$tr sections = _Translations$profile$sections$tr._(_root);
	@override String get gender => 'Cinsiyet';
	@override String get height => 'Boy';
	@override String get weight => 'Kilo';
	@override String get age => 'Yaş';
	@override String get weightGoal => 'Kilo Hedefi';
	@override String get targetWeight => 'Hedef Kilo';
	@override String get activityLevel => 'Aktivite Seviyesi';
	@override String get healthMetrics => 'Sağlık Metrikleri';
	@override String get notSet => 'Ayarlanmadı';
	@override String get years => 'yıl';
	@override String get updatedSuccessfully => 'Profil başarıyla güncellendi!';
	@override late final _Translations$profile$calculatedValues$tr calculatedValues = _Translations$profile$calculatedValues$tr._(_root);
}

// Path: healthScore
class _Translations$healthScore$tr extends Translations$healthScore$en {
	_Translations$healthScore$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sağlık Puanı';
	@override String get whyThisScore => 'Bu puan neden?';
	@override String get note => 'Bu puan, tanımlanan içerikler ve besin yoğunluğuna dayanan bir AI tahminidir. Beslenme ile ilgili tavsiye için her zaman bir uzmana danışın.';
	@override String get unhealthy => 'Sağlıksız';
	@override String get healthy => 'Sağlıklı';
	@override String get neutral => 'Nötr';
}

// Path: editProfile
class _Translations$editProfile$tr extends Translations$editProfile$en {
	_Translations$editProfile$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profili Düzenle';
	@override late final _Translations$editProfile$sections$tr sections = _Translations$editProfile$sections$tr._(_root);
	@override String get gender => 'Cinsiyet';
	@override String get dateOfBirth => 'Doğum Tarihi';
	@override String get height => 'Boy';
	@override String get weight => 'Kilo';
	@override String get weightGoal => 'Kilo Hedefi';
	@override String get activityLevel => 'Aktivite Seviyesi';
	@override String get metric => 'Metrik';
	@override String get imperial => 'İmperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'libre (lbs)';
	@override String get metricCm => 'Metrik (cm)';
	@override String get imperialFtIn => 'İmperial (ft/in)';
	@override String get metricKg => 'Metrik (kg)';
	@override String get imperialLbs => 'İmperial (lbs)';
	@override late final _Translations$editProfile$genders$tr genders = _Translations$editProfile$genders$tr._(_root);
	@override late final _Translations$editProfile$weightGoals$tr weightGoals = _Translations$editProfile$weightGoals$tr._(_root);
	@override late final _Translations$editProfile$activityLevels$tr activityLevels = _Translations$editProfile$activityLevels$tr._(_root);
}

// Path: settings
class _Translations$settings$tr extends Translations$settings$en {
	_Translations$settings$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ayarlar';
	@override late final _Translations$settings$sections$tr sections = _Translations$settings$sections$tr._(_root);
	@override late final _Translations$settings$editProfile$tr editProfile = _Translations$settings$editProfile$tr._(_root);
	@override late final _Translations$settings$language$tr language = _Translations$settings$language$tr._(_root);
	@override late final _Translations$settings$heightUnit$tr heightUnit = _Translations$settings$heightUnit$tr._(_root);
	@override late final _Translations$settings$weightUnit$tr weightUnit = _Translations$settings$weightUnit$tr._(_root);
	@override late final _Translations$settings$mealReminders$tr mealReminders = _Translations$settings$mealReminders$tr._(_root);
	@override late final _Translations$settings$localInference$tr localInference = _Translations$settings$localInference$tr._(_root);
	@override late final _Translations$settings$theme$tr theme = _Translations$settings$theme$tr._(_root);
	@override late final _Translations$settings$sendFeedback$tr sendFeedback = _Translations$settings$sendFeedback$tr._(_root);
	@override late final _Translations$settings$exportMealHistory$tr exportMealHistory = _Translations$settings$exportMealHistory$tr._(_root);
	@override late final _Translations$settings$clearAllData$tr clearAllData = _Translations$settings$clearAllData$tr._(_root);
	@override late final _Translations$settings$debugOptions$tr debugOptions = _Translations$settings$debugOptions$tr._(_root);
	@override String get developerModeEnabled => 'Geliştirici modu etkinleştirildi!';
	@override late final _Translations$settings$healthConnect$tr healthConnect = _Translations$settings$healthConnect$tr._(_root);
	@override late final _Translations$settings$about$tr about = _Translations$settings$about$tr._(_root);
	@override late final _Translations$settings$appInfo$tr appInfo = _Translations$settings$appInfo$tr._(_root);
}

// Path: reminders
class _Translations$reminders$tr extends Translations$reminders$en {
	_Translations$reminders$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hatırlatıcılarla yolda kalın';
	@override String get description => 'Öğünlerinizi kaydetmeniz için nazik hatırlatmalar alın ve beslenme hedeflerinize bağlı kalın';
	@override String get notificationsEnabled => 'Bildirimler Etkin';
	@override String get notificationsDisabled => 'Bildirimler Devre Dışı';
	@override String get enabledSubtitle => 'Öğün hatırlatmaları alacaksınız';
	@override String get disabledSubtitle => 'Öğün hatırlatmaları almak için bildirimleri etkinleştirin';
	@override String get mealReminders => 'Öğün Hatırlatmaları';
	@override String get breakfast => 'Kahvaltı';
	@override String get lunch => 'Öğle';
	@override String get dinner => 'Akşam';
	@override String get snack => 'Ara Öğün';
	@override String get unknown => 'Bilinmiyor';
	@override String get change => 'Değiştir';
	@override String get enableNotifications => 'Bildirimleri Etkinleştir';
	@override String get skipForNow => 'Şimdi atla';
	@override String get saveChanges => 'Değişiklikleri Kaydet';
	@override String get enabledSuccessfully => 'Bildirimler başarıyla etkinleştirildi!';
	@override String get permissionDenied => 'Bildirim izni reddedildi';
	@override String errorEnabling({required Object error}) => 'Bildirimler etkinleştirilirken hata: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Kurulum tamamlanırken hata: ${error}';
}

// Path: notifications
class _Translations$notifications$tr extends Translations$notifications$en {
	_Translations$notifications$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$tr breakfast = _Translations$notifications$breakfast$tr._(_root);
	@override late final _Translations$notifications$lunch$tr lunch = _Translations$notifications$lunch$tr._(_root);
	@override late final _Translations$notifications$dinner$tr dinner = _Translations$notifications$dinner$tr._(_root);
	@override late final _Translations$notifications$snack$tr snack = _Translations$notifications$snack$tr._(_root);
	@override late final _Translations$notifications$test$tr test = _Translations$notifications$test$tr._(_root);
}

// Path: login
class _Translations$login$tr extends Translations$login$en {
	_Translations$login$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giriş';
	@override String get signInWithGoogle => 'Google ile giriş yap';
	@override String get signInFailed => 'Google ile giriş başarısız oldu veya iptal edildi.';
}

// Path: disclaimer
class _Translations$disclaimer$tr extends Translations$disclaimer$en {
	_Translations$disclaimer$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Lütfen Dikkat';
	@override late final _Translations$disclaimer$snap$tr snap = _Translations$disclaimer$snap$tr._(_root);
	@override late final _Translations$disclaimer$weightEstimate$tr weightEstimate = _Translations$disclaimer$weightEstimate$tr._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tr healthMetrics = _Translations$disclaimer$healthMetrics$tr._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$tr calorieExpenditure = _Translations$disclaimer$calorieExpenditure$tr._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$tr extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get portionSmaller => 'Daha küçük';
	@override String get portionEstimated => 'Tahmini';
	@override String get portionLarger => 'Daha büyük';
	@override String portionQuestion({required Object ingredient}) => '${ingredient} için en yakın porsiyon hangisiydi?';
	@override String get mealTypeQuestion => 'Bu hangi öğündü?';
	@override String get localNutritionTip => 'Doğrulanmış yerel besin verilerinden hesaplandı.';
	@override String get offlineNutritionTitle => 'Besin verilerini indir';
	@override String get offlineNutritionSubtitle => 'Tüm malzemeler kapsandığında bu cihazda doğrulanmış USDA satırlarını ve deterministik hesaplamayı kullanın.';
	@override String get offlineNutritionUnavailable => 'Yerel besin verileri bu uygulama sürümü için kullanılamıyor.';
	@override String get offlineNutritionNotDownloaded => 'Doğrulanmış bir besin paketi indirilmedi.';
	@override String get offlineNutritionInstalling => 'Besin verileri indiriliyor ve doğrulanıyor…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Paket ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} önbelleğe alınmış USDA satırı · ${size}';
	@override String get offlineNutritionUpdate => 'Güncellemeyi kontrol et';
	@override String get offlineNutritionClear => 'Yerel besin verilerini temizle';
	@override String get offlineNutritionClearTitle => 'Yerel besin verileri temizlensin mi?';
	@override String get offlineNutritionClearBody => 'Bu işlem indirilen USDA paketini ve arama önbelleğini kaldırır. Kaydedilen öğünler, kaydedilirken kullanılan tam besin anlık görüntüsünü korur.';
	@override String get offlineNutritionClearConfirm => 'Verileri temizle';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Yerel besin verileri indirilemedi ve doğrulanamadı: ${error}';
	@override String get offlineNutritionCleared => 'Yerel besin verileri temizlendi';
}

// Path: watch
class _Translations$watch$tr extends Translations$watch$en {
	_Translations$watch$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Saat';
	@override late final _Translations$watch$common$tr common = _Translations$watch$common$tr._(_root);
	@override late final _Translations$watch$nutrition$tr nutrition = _Translations$watch$nutrition$tr._(_root);
	@override late final _Translations$watch$sync$tr sync = _Translations$watch$sync$tr._(_root);
	@override late final _Translations$watch$home$tr home = _Translations$watch$home$tr._(_root);
	@override late final _Translations$watch$history$tr history = _Translations$watch$history$tr._(_root);
	@override late final _Translations$watch$favorites$tr favorites = _Translations$watch$favorites$tr._(_root);
	@override late final _Translations$watch$meal$tr meal = _Translations$watch$meal$tr._(_root);
	@override late final _Translations$watch$voice$tr voice = _Translations$watch$voice$tr._(_root);
	@override late final _Translations$watch$result$tr result = _Translations$watch$result$tr._(_root);
}

// Path: common
class _Translations$common$tr extends Translations$common$en {
	_Translations$common$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Beta';
	@override String get close => 'Kapat';
	@override String get kContinue => 'Devam';
}

// Path: feedbackRating
class _Translations$feedbackRating$tr extends Translations$feedbackRating$en {
	_Translations$feedbackRating$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel} hoşunuza gidiyor mu?';
	@override String get yes => 'Evet, hoşuma gidiyor';
	@override String get no => 'Pek değil';
	@override String get rateStepHeading => 'Play Store\'da oy verin';
	@override String get emailStepHeading => 'E-posta ile geri bildirim gönder';
	@override String soloDevMessage({required Object appLabel}) => 'Kısa bir değerlendirme, diğerlerinin ${appLabel}\'i bulmasına yardımcı olur ve geliştirmeyi sürdürür. Bir dakikanızı ayırıp bir yorum bırakır mısınız?';
	@override String get shareFeedbackViaEmail => 'Geri bildiriminiz gelecekleri şekillendirir — her mesajı okuyoruz. Düşüncelerinizi e-posta ile paylaşmak ister misiniz?';
	@override String get rateCta => 'Play Store\'da oy ver';
	@override String get maybeLater => 'Belki sonra';
	@override String get sendFeedback => 'Geri bildirimi gönder';
	@override String get noThanks => 'Hayır, teşekkürler';
	@override String get aboutUsDescription => 'Özenle hazırlanmış küçük bir ekip tarafından yapıldı. Gizlilik, sadelik ve daha iyi yeme alışkanlıkları oluşturmanıza yardımcı olmaya odaklanıyoruz.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '${appLabel} arkasında kimlerin olduğunu merak mı ediyorsunuz? Bakın ';
	@override String get aboutUsLinkLabel => 'Hakkımızda';
	@override String get thankYouMessage => 'Teşekkürler! Başka bir zaman tekrar soracağız.';
}

// Path: health
class _Translations$health$tr extends Translations$health$en {
	_Translations$health$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect ile senkronize edilemedi';
	@override String get mealSynced => 'Öğün Health Connect ile senkronize edildi';
}

// Path: onboarding.features
class _Translations$onboarding$features$tr extends Translations$onboarding$features$en {
	_Translations$onboarding$features$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$tr foodRecognition = _Translations$onboarding$features$foodRecognition$tr._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$tr aiAnalysis = _Translations$onboarding$features$aiAnalysis$tr._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$tr healthIntegration = _Translations$onboarding$features$healthIntegration$tr._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$tr extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cinsiyetiniz nedir?';
	@override String get description => 'Cinsiyet, bazal metabolizma hızınızı (BMR) doğru hesaplamamıza yardımcı olur.';
	@override String get next => 'İleri';
}

// Path: onboarding.height
class _Translations$onboarding$height$tr extends Translations$onboarding$height$en {
	_Translations$onboarding$height$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Boyunuz ne kadar?';
	@override String get description => 'Boyunuz BMI ve enerji ihtiyacınızı doğru hesaplamamız için önemlidir.';
	@override String get metric => 'Metrik';
	@override String get imperial => 'İmperial';
	@override String get next => 'İleri';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$tr extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Mevcut kilonuz nedir?';
	@override String get currentDescription => 'Günlük hedeflerinizi kişiselleştirmek için mevcut kilonuz gereklidir.';
	@override String get targetTitle => 'Hedef kilonuz nedir?';
	@override String get targetDescription => 'Bir hedef kilo belirlemek uzun vadeli planınızı oluşturmamıza yardımcı olur.';
	@override String get metric => 'Metrik';
	@override String get imperial => 'İmperial';
	@override String get next => 'İleri';
}

// Path: onboarding.age
class _Translations$onboarding$age$tr extends Translations$onboarding$age$en {
	_Translations$onboarding$age$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Doğum tarihiniz ne zaman?';
	@override String get description => 'Yaşınız kalori ihtiyacınızı doğru hesaplamamıza yardımcı olur.';
	@override String get next => 'İleri';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$tr extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Zayıf';
	@override String get healthy => 'Sağlıklı';
	@override String get overweight => 'Fazla';
	@override String get obese => 'Obez';
	@override late final _Translations$onboarding$bmiScale$categories$tr categories = _Translations$onboarding$bmiScale$categories$tr._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$tr messages = _Translations$onboarding$bmiScale$messages$tr._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$tr extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hedefiniz nedir?';
	@override String get description => 'Başarmak istediğinizi en iyi tanımlayan hedefi seçin';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$tr extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ne kadar aktifsiniz?';
	@override String get description => 'Bu, günlük kalori ihtiyacınızı daha doğru hesaplamamıza yardımcı olur';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$tr extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ile bağlanın';
	@override String get description => 'Günlük hedefinizde yakılan kalorileri kullanın ve isterseniz kaydettiğiniz öğünleri Health Connect ile paylaşın.';
	@override String get overviewDescription => 'Günlük hedefinizde yakılan kalorileri kullanın ve isterseniz kaydettiğiniz öğünleri Health Connect ile paylaşın.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$tr automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$tr._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$tr caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$tr._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$tr progressInsights = _Translations$onboarding$healthConnect$progressInsights$tr._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$tr shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$tr._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$tr seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$tr._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$tr userControl = _Translations$onboarding$healthConnect$userControl$tr._(_root);
	@override String get connected => 'Health Connect Bağlandı';
	@override String get notConnected => 'Health Connect Bağlı Değil';
	@override String get setup => 'Health Connect Kurulumu';
	@override String get skipForNow => 'Şimdi atla';
	@override String get statusConnected => 'Health Connect bağlı.';
	@override String get statusSuccess => 'Health Connect başarıyla bağlandı!';
	@override String get statusNotConnected => 'Etkinleştirmek istediğiniz Health Connect özelliklerini seçin.';
	@override String get statusPartial => 'Health Connect kısmen bağlı. Her iki özelliği de kullanmak için kalan izni etkinleştirin.';
	@override String get statusProviderUpdateRequired => 'Devam etmek için Health Connect\'i yükleyin veya güncelleyin.';
	@override String get statusUnavailable => 'Health Connect bu cihazda desteklenmiyor.';
	@override String get installOrUpdate => 'Yükle veya güncelle';
	@override String get manageAccess => 'Erişimi yönet';
	@override String statusPermissionDenied({required Object appLabel}) => 'İzin reddedildi. Lütfen ${appLabel} için Health Connect izinlerini telefon ayarlarından etkinleştirin.';
	@override String statusError({required Object error}) => 'Health Connect kurulurken hata: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$tr extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$tr trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$tr._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$tr healthProfile = _Translations$onboarding$reinforcement$healthProfile$tr._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$tr goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$tr._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$tr extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI Özetiniz';
	@override String get logMore => 'Kişiselleştirilmiş AI içgörüleri almak için önümüzdeki günlerde daha fazla öğün kaydedin.';
	@override String get loading => 'Özetiniz yükleniyor...';
	@override String mealCount({required Object count}) => '${count} öğün kaydedildi';
	@override String macroBalanceScore({required Object score}) => 'Denge puanı ${score}';
	@override String get topFoods => 'Sık tüketilenler';
	@override String get trendUp => 'Kaloriler artıyor';
	@override String get trendDown => 'Kaloriler azalıyor';
	@override String get trendSteady => 'Kaloriler sabit';
	@override String generatedAt({required Object time}) => 'Güncellendi ${time}';
}

// Path: home.dailyGoal
class _Translations$home$dailyGoal$tr extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Günlük Hedefinizi Belirleyin';
	@override String get titleSet => 'Günlük Hedefiniz';
	@override String get description => 'Sağlıklı yaşam yolculuğunuza hazır mısınız? İlerlemenizi başlatmak için aşağıda günlük kalori hedefinizi belirleyin.';
	@override String get descriptionSet => 'Pusulanız ayarlandı! Bu, size rehberlik edecek günlük kalori hedefinizdir.';
	@override String get yourGoal => 'Hedefiniz';
	@override String get goal => 'Hedef';
	@override String get dailyCalories => 'Günlük kalori (kcal)';
	@override String get setGoal => 'Hedef Belirle';
	@override String get intake => 'Alım';
	@override String get burned => 'Yakılan';
	@override String get weightImpact => 'Kilo Etkisi';
	@override String get estLoss => 'Tahmini kayıp';
	@override String get estGain => 'Tahmini kazanç';
	@override String get kcal => 'kilokalori (kcal)';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$tr extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Günlük Özet';
	@override String get calories => 'Kaloriler';
	@override String get carbs => 'Karbonhidrat';
	@override String get protein => 'Protein miktarı';
	@override String get fat => 'Yağ';
	@override String get fiber => 'Lif';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Makro besin grafiği';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$tr extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bugünün Makro Dağılımı';
	@override String get target => 'Hedef';
	@override String get current => 'Mevcut';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$tr extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '7 Günlük Makro Geçmişi';
	@override String get trendTitle => 'Bugünün Eğilimi';
	@override String peakHour({required Object hour}) => 'Zirve: ${hour}:00';
	@override String get noHistoryYet => 'Henüz geçmiş yok';
	@override String get startLogging => 'Öğün kaydetmeye başlayın ve\n7 günlük makro eğilimlerinizi burada görün';
}

// Path: home.mealLog
class _Translations$home$mealLog$tr extends Translations$home$mealLog$en {
	_Translations$home$mealLog$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kaydedilen Öğünler';
	@override String get emptyMessage => 'Buraya kaydetmek için son öğününüzün fotoğrafını çekin.';
	@override String get noMealsToday => 'Bugün için kayıtlı öğün yok';
	@override String get seeAllMeals => 'Tüm öğünleri gör';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$tr extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI ile Hızlı Ekle';
	@override String get description => 'Öğününüzü tanımlayın, gerisini AI halletsin.';
	@override String get hint => 'ör. Kahvaltıda büyük bir kase yulaf ezmesi, dilimlenmiş muz ve bir ölçek whey ...';
	@override String get analyzeMeal => 'Öğünü analiz et';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$tr extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favori Öğünler';
	@override String get description => 'Favori öğünlerinizi hızlıca ekleyin.';
	@override String get noFavorites => 'Henüz favori öğün yok.';
	@override String get addFavoriteHint => 'Bir öğünü favori yapmak için yıldıza tıklayın.';
	@override String get seeAll => 'Tümünü gör';
	@override String get add => 'Ekle';
}

// Path: home.mealSnap
class _Translations$home$mealSnap$tr extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yemeği Fotoğraflayın & Takip Edin';
	@override String get description => 'AI analizi için yiyeceğinizin fotoğrafını çekmek için kameranızı kullanın.';
	@override String get openCamera => 'Kamerayı Aç';
	@override String get gallery => 'Galeri';
	@override String get compressingPhoto => 'Fotoğraf optimize ediliyor…';
	@override String get uploadingPhoto => 'Fotoğraf yükleniyor…';
}

// Path: home.connectHealth
class _Translations$home$connectHealth$tr extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ile Senkronize Et';
	@override String get description => 'Hedefinizde yakılan kalorileri kullanın ve kaydettiğiniz öğünleri paylaşın';
	@override String get install => 'Yükle veya güncelle';
	@override String get dataUseDescription => 'Hedefinizde yakılan kalorileri kullanın ve kaydedilen öğünleri paylaşın';
	@override String get installOrUpdate => 'Yükle veya güncelle';
	@override String get connect => 'Bağla';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$tr extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalori';
	@override String get carbs => 'Karbonhidrat (g)';
	@override String get protein => 'Protein (gram)';
	@override String get fat => 'Yağ (g)';
	@override String get fiber => 'Lif (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$tr extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Öğünü Sil';
	@override String get message => 'Bu öğün kaydını silmek istediğinizden emin misiniz?';
	@override String get cancel => 'İptal';
	@override String get delete => 'Sil';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$tr extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Soru ${current} / ${total}';
	@override String get noQuestionsAvailable => 'Kullanılabilir soru yok';
	@override String get next => 'İleri';
	@override String get continueLabel => 'Devam';
	@override String get countQuestion => 'Miktarı seçin';
	@override String get itemSizeQuestion => 'Ürün boyutunu seçin';
	@override String get portionSizeQuestion => 'Porsiyon boyutunu seçin';
	@override String get option6plus => '6 veya daha fazla';
	@override String get optionSmall => 'Küçük';
	@override String get optionRegular => 'Normal';
	@override String get optionLarge => 'Büyük';
	@override String get optionThin => 'İnce';
	@override String get optionThick => 'Kalın';
	@override String get optionMini => 'Mini';
	@override String get optionStuffed => 'Doldurulmuş';
	@override String get optionHeavy => 'Ağır';
	@override String get optionSmaller => 'Daha küçük';
	@override String get optionTypical => 'Tipik';
	@override String get optionLarger => 'Daha büyük';
}

// Path: meal.analysis
class _Translations$meal$analysis$tr extends Translations$meal$analysis$en {
	_Translations$meal$analysis$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Öğününüz analiz ediliyor';
	@override String get stepStarted => 'Başlanıyor…';
	@override String get stepDecomposition => 'Öğününüz anlaşılıyor…';
	@override String get stepIngredients => 'İçerikler besin veritabanıyla eşleştiriliyor…';
	@override String get stepUncertainty => 'Güven kontrolü yapılıyor…';
	@override String get stepMealTypeQuestion => 'Çok az kaldı…';
	@override String get stepResult => 'Sonuç finalize ediliyor…';
	@override String get stepError => 'Bir şeyler yolunda gitmedi';
	@override String get stepDefault => 'Öğününüz analiz ediliyor…';
	@override String get progressUnderstand => 'Öğününüz anlaşılıyor';
	@override String get progressMatch => 'İçeriklerin besin bilgileri aranıyor';
	@override String get progressCheck => 'Porsiyonlar ve güven kontrol ediliyor';
	@override String get progressMealType => 'Öğün türü seçiliyor';
	@override String get progressFinish => 'Kalori ve makrolar hesaplanıyor';
	@override String get detectedIngredientHeading => 'Tespit ettiğimiz içerikler';
	@override String ingredientsOverflow({required Object count}) => '${count} daha';
	@override String ingredientsLine({required Object count}) => '${count} içerik tespit edildi';
	@override String get ingredientsPending => 'İçerikler taranıyor…';
	@override String mealPreviewDescription({required Object text}) => '“${text}”';
	@override String get offlineTip0 => 'İpucu: Tutarlılık mükemmellikten daha önemlidir—düzenli kayıtlar önemli kalıpları ortaya çıkarır.';
	@override String get offlineTip1 => 'İpucu: Fotoğraflar için doğal ışık ve üstten çekim porsiyon doğruluğuna yardımcı olur.';
	@override String get offlineTip2 => 'İpucu: İçecekler, soslar ve pişirme yağını belirtin—bunlar genellikle unutulan kalorileri ekler.';
	@override String get offlineTip3 => 'İpucu: Hızlı bir porsiyon notu (1 kase, büyük kahve) tahminleri çok daha isabetli yapar.';
	@override String get offlineTip4 => 'İpucu: Öğünden sonra kayıt yapmak da alışkanlık kazandırır; mükemmellik zorunlu değildir.';
	@override String get offlineTip5 => 'İpucu: Kalorileri çok değiştiren pişirme şeklini belirtin (kızartma vs fırınlama).';
	@override String get noFoodTip => 'Hiçbir yiyecek algılanmadı. Başka bir fotoğraf veya açıklama deneyin.';
}

// Path: meal.localInference
class _Translations$meal$localInference$tr extends Translations$meal$localInference$en {
	_Translations$meal$localInference$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Tespit edilen malzemeleri gözden geçir';
	@override String get reviewSubtitle => 'Bu işlem cihazınızda gerçekleştirildi. Besin değerleri hesaplanmadan önce isimleri veya porsiyonları düzeltin.';
	@override String get mealName => 'Öğün adı';
	@override String get ingredient => 'Malzeme';
	@override String get grams => 'Tahmini gram';
	@override String get removeIngredient => 'Malzemeyi kaldır';
	@override String get continueLabel => 'Devam et';
	@override String get invalidProposal => 'Lütfen en az bir malzeme ekleyin ve pozitif bir gram miktarı girin.';
	@override String get localUnavailable => 'Cihaz içi analiz şu anda kullanılamıyor.';
}

// Path: meal.feedback
class _Translations$meal$feedback$tr extends Translations$meal$feedback$en {
	_Translations$meal$feedback$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Neresi yanlış görünüyor?';
	@override String get subtitle => 'Analizi geliştirmemize yardımcı olmak için bir veya birden fazla sorun seçin.';
	@override String get tellUsMore => 'Daha fazla anlatın';
	@override String get describeIncorrect => 'Yanlış olanı açıklayın';
	@override String get submit => 'Gönder';
	@override String get issueFoodIdentification => 'Yiyecek tanımlaması';
	@override String get issuePortionSize => 'Porsiyon boyutu';
	@override String get issueCalorieDistribution => 'Kalori dağılımı';
	@override String get issueMacrosWrong => 'Makrolar yanlış';
	@override String get issueMissingItems => 'Eksik öğeler';
	@override String get issueExtraItems => 'Ekstra öğeler';
	@override String get issueOther => 'Diğer';
}

// Path: favorites.sortOptions
class _Translations$favorites$sortOptions$tr extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Son Eklenen';
	@override String get calories => 'Kalori';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _Translations$profile$sections$tr extends Translations$profile$sections$en {
	_Translations$profile$sections$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFİL';
	@override String get basicInformation => 'TEMEL BİLGİLER';
	@override String get goalsAndActivity => 'HEDEFLER & AKTİVİTE';
	@override String get calculatedValues => 'HESAPLANMIŞ DEĞERLER';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$tr extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Günlük Hedef';
	@override String get calPerDay => 'cal/gün';
	@override String get notAvailable => 'YOK';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$tr extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'KİŞİSEL BİLGİLER';
	@override String get physicalMeasurements => 'FİZİKSEL ÖLÇÜMLER';
	@override String get goalsAndActivity => 'HEDEFLER & AKTİVİTE';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$tr extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get male => 'Erkek';
	@override String get female => 'Kadın';
	@override String get other => 'Diğer';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$tr extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$tr loseWeight = _Translations$editProfile$weightGoals$loseWeight$tr._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$tr maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$tr._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$tr gainWeight = _Translations$editProfile$weightGoals$gainWeight$tr._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$tr extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$tr sedentary = _Translations$editProfile$activityLevels$sedentary$tr._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$tr lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$tr._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$tr moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$tr._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$tr veryActive = _Translations$editProfile$activityLevels$veryActive$tr._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$tr extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$tr._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$tr extends Translations$settings$sections$en {
	_Translations$settings$sections$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFİL';
	@override String get localization => 'LOKALİZASYON';
	@override String get notifications => 'BİLDİRİMLER';
	@override String get healthConnect => 'HEALTH CONNECT ENTEGRASYONU';
	@override String get localInference => 'CİHAZ İÇİ ANALİZ';
	@override String get supportAndLegal => 'DESTEK & YASAL';
	@override String get about => 'HAKKINDA';
	@override String get dangerZone => 'TEHLİKELİ BÖLGE';
	@override String get developer => 'GELİŞTİRİCİ';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$tr extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profili Düzenle';
	@override String get subtitle => 'Kişisel bilgilerinizi güncelleyin';
}

// Path: settings.language
class _Translations$settings$language$tr extends Translations$settings$language$en {
	_Translations$settings$language$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dil';
	@override String get subtitle => 'Tercih ettiğiniz dili seçin';
	@override String get searchHint => 'Dillerde ara...';
	@override String get noResults => 'Sonuç bulunamadı';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$tr extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Boy Birimi';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$tr extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kilo Birimi';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$tr extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Öğün Hatırlatıcıları';
	@override String get subtitle => 'Zamanında uyarılarla yolda kalın';
}

// Path: settings.localInference
class _Translations$settings$localInference$tr extends Translations$settings$localInference$en {
	_Translations$settings$localInference$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cihaz içi öğün analizi';
	@override String get subtitle => 'Besin değerleri hesaplanmadan önce desteklenen öğünleri Gemini Nano ile yorumlayın';
	@override String get unavailable => 'Bu cihazda mevcut değil';
	@override String get rolloutUnavailable => 'Uygun donanım bulundu ancak bu özellik bu uygulama sürümü için etkinleştirilmedi';
	@override String get modelSetup => 'Bu özelliğin etkinleştirilebilmesi için Gemini Nano\'nun indirme işlemini tamamlaması gerekiyor';
	@override String get useLocalTitle => 'Cihaz içi analizi kullan';
	@override String get useLocalSubtitle => 'İsteğe bağlıdır ve varsayılan olarak kapalıdır. Karmaşık öğünler için sonuçlar daha az güvenilir olabilir.';
	@override String get disclosureTitle => 'Cihaz içi analizi etkinleştirmeden önce';
	@override String get disclosureBody => 'Gemini Nano, desteklenen Android cihazlarda malzemeleri tanımlayabilir ve porsiyonları tahmin edebilir. Gözden geçirdiğiniz malzeme önerisi, USDA besin temellendirmesi ve hesaplama için Calorify\'a gönderilir.';
	@override String get disclosureLimit1 => 'Karmaşık yemekler, gizli malzemeler ve porsiyon boyutları yanlış tanımlanabilir.';
	@override String get disclosureLimit2 => 'Model; indirme sırasında, meşgulken, arka plandayken veya cihaz tarafından sınırlandırıldığında kullanılamayabilir.';
	@override String get disclosureLimit3 => 'Yerel yorumlama tamamlanamazsa, bu beta sürümü orijinal öğün açıklamanızı bulut analizi için otomatik olarak Calorify\'a gönderir.';
	@override String get acknowledgement => 'Tespit edilen malzemeleri ve porsiyonları gözden geçirmem gerektiğini anlıyorum.';
	@override String get enable => 'Onayla ve etkinleştir';
	@override String get cancel => 'İptal';
}

// Path: settings.theme
class _Translations$settings$theme$tr extends Translations$settings$theme$en {
	_Translations$settings$theme$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Açık';
	@override String get dark => 'Koyu';
	@override String get system => 'Sistem';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$tr extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Geri Bildirim Gönder';
	@override String subtitle({required Object appLabel}) => '${appLabel} için geri bildirimde bulunun';
	@override String emailSubject({required Object appLabel}) => '${appLabel} Uygulama Geri Bildirimi';
	@override String get emailBodyPrefix => 'Lütfen aşağıya geri bildiriminizi ekleyin:';
	@override String get appVersion => 'Uygulama Sürümü';
	@override String get device => 'Cihaz';
	@override String get osVersion => 'İşletim Sistemi Sürümü';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _Translations$settings$exportMealHistory$tr extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Öğün Geçmişini Dışa Aktar';
	@override String get subtitle => 'Kaydettiğiniz öğünlerin CSV\'sini paylaşın';
	@override String get shareText => 'Calorify öğün geçmişi dışa aktarımınız';
	@override String failed({required Object error}) => 'Öğün geçmişi dışa aktarılamadı: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$tr extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tüm Verileri Temizle';
	@override String get subtitle => 'Bu cihazda saklanan Calorify verilerini silin';
	@override String get localOnlySubtitle => 'Bu cihazda saklanan Calorify verilerini sil';
	@override String get confirmationTitle => 'Tüm Veriler Temizlensin mi?';
	@override String get confirmationMessage => 'Bu işlem kaydedilen öğünleri, favorileri ve profil ayarlarını bu cihazdan kalıcı olarak siler. Health Connect ile önceden paylaşılmış öğünler ve Health Connect erişimi Ayarlar > Health Connect bölümünde ayrı olarak yönetilir.';
	@override String get localOnlyConfirmationMessage => 'Bu işlem, kaydedilen öğünleri, favorileri ve profil ayarlarını bu cihazdan kalıcı olarak siler. Health Connect ile paylaşılmış öğünler ve Health Connect erişimi Ayarlar > Health Connect bölümünde ayrı olarak yönetilir.';
	@override String get cancel => 'İptal';
	@override String get clearEverything => 'Her Şeyi Temizle';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$tr extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hata Ayıklama Seçenekleri';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$tr extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'İzinleri görüntüleyin ve yönetin';
	@override late final _Translations$settings$healthConnect$unavailable$tr unavailable = _Translations$settings$healthConnect$unavailable$tr._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$tr updateRequired = _Translations$settings$healthConnect$updateRequired$tr._(_root);
	@override late final _Translations$settings$healthConnect$permissions$tr permissions = _Translations$settings$healthConnect$permissions$tr._(_root);
	@override String get managePermissions => 'İzinleri Yönet';
	@override String get openSettings => 'Health Connect Ayarlarını Aç';
	@override String get disconnect => 'Health Connect bağlantısını kes';
	@override String get disconnectConfirmationTitle => 'Health Connect bağlantısı kesilsin mi?';
	@override String get disconnectConfirmationMessage => 'Calorify, Health Connect erişimini kaybedecek. Önceden yazılmış veriler silinmeyecek.';
	@override String get disconnectConfirmationAction => 'Bağlantıyı kes';
	@override String get deleteSyncedMeals => 'Calorify öğünlerini Health Connect\'ten sil';
	@override String get deleteSyncedMealsConfirmationTitle => 'Senkronize edilen öğünler silinsin mi?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Calorify\'ın bu sürümü tarafından senkronize edilen öğünler Health Connect\'ten silinsin mi? Yerel öğün günlüğünüz değişmez. Eski Calorify kayıtlarının Health Connect\'teki Verileri Yönet bölümünden ayrıca kaldırılması gerekebilir.';
	@override String get deleteSyncedMealsConfirmationAction => 'Senkronize edilen öğünleri sil';
	@override String get deleteSyncedMealsSuccess => 'Calorify öğünleri Health Connect\'ten silindi.';
	@override String get deleteSyncedMealsFailed => 'Senkronize edilen öğünler silinemedi. Lütfen tekrar deneyin.';
	@override String get connectionPartial => 'Bazı Health Connect özellikleri etkin.';
	@override String get connectionComplete => 'Her iki Health Connect özelliği de etkin.';
	@override String get actionFailed => 'Health Connect açılamadı. Lütfen tekrar deneyin.';
	@override String get requestPermissions => 'İzin İste';
	@override String get permissionRequestCancelledOrFailed => 'İzin isteği iptal edildi veya başarısız oldu. Lütfen tekrar deneyin veya izinleri Health Connect ayarlarından manuel olarak verin.';
	@override String get permissionRequestFailed => 'İzin isteği yapılamıyor. Lütfen tekrar deneyin veya izinleri Health Connect ayarlarından manuel olarak verin.';
	@override String get requestingPermissions => 'İzinler isteniyor...';
}

// Path: settings.about
class _Translations$settings$about$tr extends Translations$settings$about$en {
	_Translations$settings$about$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hakkında';
	@override String get tagline => 'Hızlı, ücretsiz ve gizliliği önceliklendiren kalori farkındalığı';
	@override late final _Translations$settings$about$ourStory$tr ourStory = _Translations$settings$about$ourStory$tr._(_root);
	@override late final _Translations$settings$about$privacy$tr privacy = _Translations$settings$about$privacy$tr._(_root);
	@override late final _Translations$settings$about$developer$tr developer = _Translations$settings$about$developer$tr._(_root);
	@override late final _Translations$settings$about$feedback$tr feedback = _Translations$settings$about$feedback$tr._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$tr extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify sürüm ${version}';
	@override String build({required Object buildNumber}) => 'Yapı ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$tr extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kahvaltı Zamanı! 🍳';
	@override String get body => 'Kahvaltınızı kaydetmeyi unutmayın';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$tr extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Öğle Vakti! 🥗';
	@override String get body => 'Öğlen yemeğinizi kaydetme zamanı';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$tr extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Akşam Yemeği Zamanı! 🍽️';
	@override String get body => 'Akşam yemeğinizi kaydetmeyi unutmayın';
}

// Path: notifications.snack
class _Translations$notifications$snack$tr extends Translations$notifications$snack$en {
	_Translations$notifications$snack$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ara Öğün Zamanı! 🍎';
	@override String get body => 'Sağlıklı bir ara öğün zamanı';
}

// Path: notifications.test
class _Translations$notifications$test$tr extends Translations$notifications$test$en {
	_Translations$notifications$test$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Test Bildirimi';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$tr extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} tahmini besin bilgileri sağlar. Doğruluk, girdiğiniz bilgilere ve yiyecek çeşitlerine bağlıdır. Bir rehber olarak kullanın, kesin kaynak olarak değil. Kişisel beslenme tavsiyesi için bir uzmana danışın.';
	@override late final _Translations$disclaimer$snap$portionSize$tr portionSize = _Translations$disclaimer$snap$portionSize$tr._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$tr preparationMethods = _Translations$disclaimer$snap$preparationMethods$tr._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$tr ingredients = _Translations$disclaimer$snap$ingredients$tr._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$tr databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$tr._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$tr extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kilo Tahmini Hakkında';
	@override String get description => 'Projeksiyon olarak verilen kilo değişimi basit kalori içeriği vs harcama modeli üzerine kurulu teorik bir tahmindir. Motivasyon kaynağı olarak düşünülmelidir, gerçek ağırlığın bir tahmini değildir.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$tr calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$tr._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$tr biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$tr._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$tr waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$tr._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$tr professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$tr._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$tr extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get description => 'Bu metrikler, vücudunuzun enerji ihtiyaçlarını anlamanıza ve beslenme hedeflerinize rehberlik etmenize yardımcı olur.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$tr bmr = _Translations$disclaimer$healthMetrics$bmr$tr._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$tr tdee = _Translations$disclaimer$healthMetrics$tdee$tr._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$tr dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$tr._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$tr extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalori Harcama Tahmini';
	@override String get description => 'Health Connect verileri kullanılamadığında, bugünkü yakılan kalorileri Basal Metabolizma Hızınız (BMR) ve aktivite seviyeniz (TDEE) kullanılarak, günün geçen kısmına göre ölçeklenmiş şekilde tahmin ederiz.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$tr howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$tr._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$tr professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$tr._(_root);
}

// Path: watch.common
class _Translations$watch$common$tr extends Translations$watch$common$en {
	_Translations$watch$common$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get back => 'Geri';
	@override String get cancel => 'İptal';
	@override String get delete => 'Sil';
	@override String get retry => 'Tekrar dene';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$tr extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Besin';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} gram';
	@override String get protein => 'Protein';
	@override String get carbs => 'Karbonhidrat';
	@override String get fat => 'Yağ';
	@override String get fiber => 'Lif';
}

// Path: watch.sync
class _Translations$watch$sync$tr extends Translations$watch$sync$en {
	_Translations$watch$sync$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Telefonla eşitle';
	@override String get syncing => 'Eşitleniyor…';
	@override String get synced => 'Eşitlendi';
	@override String get syncedJustNow => 'Az önce eşitlendi';
	@override String syncedMinutesAgo({required Object minutes}) => '${minutes}dk önce eşitlendi';
	@override String get failed => 'Eşitleme başarısız';
	@override String get phoneDisconnected => 'Telefon bağlantısı kesildi';
	@override String get tapToSync => 'Eşitlemek için dokun';
	@override String get refreshFailed => 'Yenilenemedi. Telefonunuzu kontrol edin.';
	@override String get openPhone => 'Telefonunuzda Calorify\'i açın, ardından yenileye dokunun.';
}

// Path: watch.home
class _Translations$watch$home$tr extends Translations$watch$home$en {
	_Translations$watch$home$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get today => 'Bugün';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} kalori tüketildi, hedef ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} hedefin üzerinde';
	@override String remaining({required Object calories}) => '${calories} kaldı';
	@override String left({required Object calories}) => '${calories} kaldı';
	@override String goal({required Object calories}) => '${calories} kcal hedef';
	@override String get logMeal => 'Yemek kaydet';
	@override String get todayMeals => 'Bugünün yemekleri';
	@override String todayMealsCount({required Object count}) => 'Bugünün yemekleri, ${count}';
	@override String viewMore({required Object count}) => '${count} tane daha görüntüle';
	@override String viewMoreSemantics({required Object count}) => '${count} yemek daha, hepsini görüntülemek için dokun';
	@override String get noMeals => 'Yemek kaydı yok';
	@override String get noMealsSemantics => 'Bugün yemek kaydı yok';
	@override String get tapLog => 'Başlamak için Kaydet\'e dokun';
	@override String get removedFromQueue => 'Yemek çevrimdışı kuyruğundan kaldırıldı.';
	@override String get removedOffline => 'Yemek çevrimdışı olarak kaldırıldı. Telefonunuz yeniden bağlandığında eşitlenecek.';
	@override String get deleteFailed => 'Yemek silinemedi';
}

// Path: watch.history
class _Translations$watch$history$tr extends Translations$watch$history$en {
	_Translations$watch$history$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bugünün yemekleri';
	@override String get refresh => 'Yemekleri yenile';
	@override String get loadFailed => 'Yemekler yüklenemedi';
	@override String get syncFailed => 'Eşitlenemedi';
	@override String get emptyTitle => 'Henüz yemek yok';
	@override String get emptyMessage => 'Burada görmek için Ana ekrandan bir yemek kaydedin.';
}

// Path: watch.favorites
class _Translations$watch$favorites$tr extends Translations$watch$favorites$en {
	_Translations$watch$favorites$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoriler';
	@override String get refresh => 'Favorileri yenile';
	@override String get loadFailed => 'Favoriler yüklenemedi';
	@override String get syncFailed => 'Eşitlenemedi';
	@override String get emptyTitle => 'Henüz favori yok';
	@override String get emptyMessage => 'Telefon uygulamasında yemekleri yıldızlayın; burada tek dokunuşla kaydedebilirsiniz.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} kalori. Kaydetmek için dokun.';
	@override String logged({required Object name}) => '${name} kaydedildi!';
	@override String savedOffline({required Object name}) => '${name} çevrimdışı olarak kaydedildi. Telefonunuz tekrar bağlandığında eşitlenecek.';
	@override String get saveFailed => 'Yemek kaydedilemedi. Lütfen tekrar deneyin.';
	@override String get log => 'Kaydet';
}

// Path: watch.meal
class _Translations$watch$meal$tr extends Translations$watch$meal$en {
	_Translations$watch$meal$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kalori, ${time}\'de kaydedildi.';
	@override String get longPressDelete => 'Silmek için uzun basın.';
	@override String get deleteTitle => 'Yemeği sil?';
}

// Path: watch.voice
class _Translations$watch$voice$tr extends Translations$watch$voice$en {
	_Translations$watch$voice$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sesle yemek kaydı';
	@override String get processing => 'Yemeğiniz kontrol ediliyor…';
	@override String get processingDescription => 'Porsiyon ve besin değerleri tahmin ediliyor';
	@override String get listening => 'Dinliyor';
	@override String secondsLeft({required Object seconds}) => '${seconds}sn';
	@override String get stop => 'Kaydı durdur';
	@override String get start => 'Kaydı başlatmak için dokun';
	@override String get starting => 'Mikrofon başlatılıyor…';
	@override String get prompt => 'Dokun, sonra yemeğini tarif et';
	@override String get tapToRetry => 'Tekrar denemek için dokun';
	@override String get example => 'Örneğin “2 roti ile dal”';
	@override String get unavailable => 'Ses girişi kullanılamıyor. Saat ayarlarında mikrofon iznini kontrol edin.';
	@override String get didNotStart => 'Mikrofon başlamadı. Tekrar denemek için dokun.';
	@override String get startFailed => 'Kayıt başlatılamadı. Mikrofon izinlerini kontrol edin.';
	@override String get allowMicrophone => 'Yemekleri sesle kaydetmek için mikrofon erişimine izin verin.';
	@override String get needsConnection => 'Ses tanıma bağlantı gerektirir. Tekrar denemek için dokun.';
	@override String get microphoneUnavailable => 'Mikrofon kullanılamıyor. Tekrar denemek için dokun.';
	@override String get microphoneBusy => 'Mikrofon meşgul. Biraz bekleyip tekrar deneyin.';
	@override String get languageUnsupported => 'Ses girişi saatinizin dilini desteklemiyor.';
	@override String get temporarilyBusy => 'Ses girişi geçici olarak meşgul. Biraz bekleyip tekrar deneyin.';
	@override String get notRecognized => 'Yakalayamadım. Mikrofon simgesine dokunup tekrar deneyin.';
	@override String get noSpeech => 'Konuşma algılanmadı. Tekrar denemek için mikrofona dokunun.';
	@override String get analysisFailed => 'Analiz başarısız oldu. Lütfen tekrar deneyin.';
	@override String get mealNotIdentified => 'Bu yemeği tanımlayamadım. Farklı şekilde tarif etmeyi deneyin.';
}

// Path: watch.result
class _Translations$watch$result$tr extends Translations$watch$result$en {
	_Translations$watch$result$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yemek ayrıntıları';
	@override String get savedOffline => 'Çevrimdışı kaydedildi';
	@override String get logged => 'Kaydedildi!';
	@override String get mealFound => 'Yemek bulundu';
	@override String get estimatedEnergy => 'Tahmini enerji';
	@override String get logMeal => 'Yemeği kaydet';
	@override String get logging => 'Kaydediliyor…';
	@override String get logAnother => 'Bir tane daha kaydet';
	@override String get goingBack => 'Geri dönülüyor…';
	@override String get savedOfflineMessage => 'Yemek çevrimdışı kaydedildi. Telefonunuz tekrar bağlandığında eşitlenecek.';
	@override String get saveFailed => 'Yemek kaydedilemedi. Lütfen tekrar deneyin.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$tr extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Akıllı Yemek Tanıma';
	@override String get description => 'Bir fotoğraf çekin, yapay zekâ yemeğinizi tanısın';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$tr extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI Analizi';
	@override String get description => 'Açıklamalarınızdan anında besin bilgileri alın';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$tr extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect Entegrasyonu';
	@override String get description => 'Daha iyi içgörüler için Health Connect ile bağlayın';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$tr extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Zayıf';
	@override String get healthyWeight => 'Sağlıklı kilo';
	@override String get overweight => 'Fazla kilolu';
	@override String get obese => 'Obez';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$tr extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Dengeli kiloya ulaşmanız için besin değeri yüksek öğünlerle sağlıklı bir plan oluşturmada yardımcı olabiliriz.';
	@override String get healthy => 'Aferin! Sağlıklı bir aralıktasınız. Canlılığınızı ve enerjinizi korumanıza yardımcı olacağız.';
	@override String overweight({required Object appLabel}) => '${appLabel}, hedefinize rahatça ulaşmanız için yapay zekâ destekli takibi basitleştirecek.';
	@override String get obese => 'Sağlık hedefleriniz için kişiselleştirilmiş rehberlik ve sürdürülebilir stratejilerle yanınızdayız.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$tr extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yakılan Kaloriler';
	@override String get description => 'Bugün yakılan toplam kaloriyi Health Connect\'ten okuyun';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$tr extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yakılan Kaloriler';
	@override String get description => 'Health Connect üzerinden bugün yakılan toplam kaloriyi okuyun';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$tr extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kaydedilen Öğünleri Paylaş';
	@override String get description => 'Calorify\'da kaydettiğiniz öğünleri Health Connect\'e yazın';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$tr extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kaydedilen Öğünleri Paylaş';
	@override String get description => 'Calorify uygulamasında kaydettiğiniz öğünleri Health Connect sistemine yazın';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$tr extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kontrol Sizde';
	@override String get description => 'İki izinden birini seçin ve erişimi istediğiniz zaman değiştirin';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$tr extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kontrol Sizde';
	@override String get description => 'İstediğiniz izni seçin ve erişimi dilediğiniz zaman değiştirin';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$tr extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yalnız değilsiniz';
	@override String get genericMessage => 'Araştırmalar gösteriyor ki, tutarlı takip uzun vadeli başarının 1 numaralı öngörücüsüdür.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age} yaşında bir ${gender} için ${goal} hedefleyenlerde, düzenli takip başarı için bir numaralı belirleyicidir.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} bunu elle yapmaktan 10 kat daha kolay hale getirir.';
	@override String get getStartedTitle => 'Başlamaya hazır mısınız?';
	@override String get tipPhoto => 'Anında analiz için öğünlerinizin fotoğrafını çekin';
	@override String get tipConsistency => 'Anlamlı ilerleme görmek için düzenli olarak kaydedin';
	@override String get tipProgress => 'Motivasyonu sürdürmek için ilerlemenizi günlük takip edin';
	@override String get button => 'Hadi Başlayalım';
	@override String get defaultGender => 'birey';
	@override String get defaultGoal => 'daha sağlıklı siz';
}

// Path: onboarding.reinforcement.healthProfile
class _Translations$onboarding$reinforcement$healthProfile$tr extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sağlık Profiliniz';
	@override String bmiDescription({required Object bmi}) => 'Metriklerinize göre BMI\'niz ${bmi}.';
	@override String get finalizeDescription => 'Deneyiminizi özelleştirmek için profilinizi tamamlayalım.';
	@override String get goalGain => 'kazanmak';
	@override String get goalLose => 'vermek';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Hedefinize ulaşmak için ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Hedef kilonuzdasınız! Korumanıza yardımcı olacağız.';
	@override String get button => 'Hadi Başlayalım';
}

// Path: onboarding.reinforcement.goalLifestyle
class _Translations$onboarding$reinforcement$goalLifestyle$tr extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Harika Bir Başlangıç!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => '${goalText} hedefinize ilk adımı attınız. ${activityText} olduğunuz için ${appLabel} hedeflerinizi yaşam tarzınıza göre ayarlayacak.';
	@override String get personalizedTargets => 'Kişiselleştirilmiş kalori hedefleri';
	@override String get aiMealDetection => 'AI destekli öğün tespiti';
	@override String get macroBreakdowns => 'Detaylı makro besin dağılımları';
	@override String get button => 'Hadi Başlayalım';
	@override String get defaultGoal => 'hedefleriniz';
	@override String get defaultActivity => 'aktif';
}

// Path: editProfile.weightGoals.loseWeight
class _Translations$editProfile$weightGoals$loseWeight$tr extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kilo Ver';
	@override String get description => 'Kilo vermek için kalori açığı oluşturun';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$tr extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kilo Koruma';
	@override String get description => 'Mevcut kilonuzu koruyun';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$tr extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kilo Al';
	@override String get description => 'Kilo almak için kalori fazlası oluşturun';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$tr extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hareketsiz';
	@override String get description => 'Az veya hiç egzersiz yok';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$tr extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hafif Aktif';
	@override String get description => 'Haftada 1-3 gün hafif egzersiz';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$tr extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Orta Aktif';
	@override String get description => 'Haftada 3-5 gün orta düzey egzersiz';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$tr extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Çok Aktif';
	@override String get description => 'Haftada 6-7 gün yoğun egzersiz';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$tr extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Aşırı Aktif';
	@override String get description => 'Çok yoğun egzersiz veya fiziksel iş';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$tr extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect Kullanılamıyor';
	@override String get description => 'Health Connect bu cihazda desteklenmiyor.';
	@override String get unsupportedDescription => 'Health Connect bu cihazda desteklenmiyor.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$tr extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ile ilgilenmeniz gerekiyor';
	@override String get description => 'Erişimi yönetmeden önce Health Connect\'i yükleyin veya güncelleyin.';
	@override String get action => 'Yükle veya güncelle';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$tr extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'İzinler';
	@override String get description => 'Health Connect entegrasyonu sağlamak için aşağıdaki izinler istenmektedir:';
	@override String get granted => 'Verildi';
	@override String get notGranted => 'Verilmedi';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$tr caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$tr._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$tr nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$tr._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$tr nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$tr._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$tr extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bizim Hikâyemiz';
	@override String content({required Object appLabel}) => '${appLabel} basit bir hayal kırıklığından doğdu: çoğu kalori takip uygulaması ya aşırı karmaşık, sürekli manuel giriş gerektiren, yüksek abonelik ücretleri talep eden ya da gizliliği riske atan uygulamalardı.\n\nTek kişilik bir geliştirici olarak, daha basit ve daha adil bir şey yapmak istedim — çaba gereksinimini azaltmak için AI kullanan, hızlı ve ücretsiz kalan ve sağlık verilerinize saygı duyan bir uygulama.\n\n${appLabel} var olmasını dilediğim uygulama: hesap yok, izleme yok, reklam yok — sadece net, pratik içgörüler ve sağlık hedefleriniz.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$tr extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gizliliğiniz Önemli';
	@override String get description => 'Gizlilik sonradan düşünülmüş bir unsur değil — bir tasarım ilkesidir. Bu pratikte şu anlama gelir:';
	@override String get noAccounts => 'Hesap gerekmez\nUygulamayı hemen kullanın. Kayıt yok, kimlik yok.';
	@override String noTracking({required Object appLabel}) => 'Sınırlı analiz ve tanılama\n${appLabel}, güvenilirliği artırmak için temel uygulama etkinliklerini ve kilitlenme tanılamasını kullanır. Sağlık kaydı değerleri reklam için kullanılmaz veya satılmaz.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Sınırlı analiz ve tanılama\n${appLabel}, güvenilirliği artırmak için temel uygulama olaylarını ve çökme tanılamalarını kullanır. Sağlık kaydı değerleri reklam için kullanılmaz veya satılmaz.';
	@override String noAds({required Object appLabel}) => 'Reklamsız tasarım\n${appLabel} reklamlar veya veri odaklı para kazanma yöntemleri olmadan çalışacak şekilde tasarlandı.';
	@override String get noDataSelling => 'Veri satışı yok\nSağlık verileriniz üçüncü taraflara asla satılmaz veya paylaşılmaz.';
	@override String get localStorage => 'Yerel öncelikli depolama\nVerileriniz cihazınızda kalır.';
	@override String get privacyPolicy => 'Gizlilik Politikası';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$tr extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tek Geliştirici Tarafından Yapıldı';
	@override String description({required Object appLabel}) => '${appLabel}, sakin, gizliliğe saygılı sağlık yazılımları yaratmaya odaklanmış tek bir geliştirici tarafından inşa edilip sürdürülmektedir.\n\nGeri bildirimler kişisel olarak okunur ve uygulamanın yönünü şekillendirmeye yardımcı olur.';
	@override String get website => 'Web sitesi';
	@override String get email => 'E-posta';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$tr extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} hoşunuza gidiyor mu?';
	@override String description({required Object appLabel}) => 'Geri bildiriminiz ${appLabel}\'i herkes için daha iyi hale getirmeye yardımcı olur.';
	@override String get rateApp => 'Play Store\'da oy verin';
	@override String get sendFeedback => 'Geri Bildirim Gönder';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$tr extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Porsiyon Boyutu';
	@override String get description => 'Tahminlerin doğruluğu büyük ölçüde porsiyon boyutunu doğru değerlendirmenize bağlıdır.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$tr extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hazırlama Yöntemleri';
	@override String description({required Object appLabel}) => 'Pişirme yöntemleri yiyeceğin besin içeriğini önemli ölçüde değiştirebilir. ${appLabel} tahminleri her zaman bu farklılıkları hesaba katmayabilir.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$tr extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'İçerikler';
	@override String get description => 'Birçok gizli içeriğe sahip karmaşık yemekler daha az doğru tahminlere yol açabilir.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$tr extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veritabanı Sınırlamaları';
	@override String description({required Object appLabel}) => '${appLabel}\'in gıda veritabanı kapsamlıdır ancak her bir yiyecek öğesini veya varyasyonunu içermeyebilir.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$tr extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalori Doğruluğu';
	@override String get description => 'Bu tahmin, izlediğiniz kalori alımı ve harcamasının doğruluğuna bağlıdır. Hatalı kayıtlar tahminin yanlış olmasına neden olur.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$tr extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biyolojik Faktörler';
	@override String description({required Object appLabel}) => 'Gerçek kilo kaybı/kazancı metabolizma, hormonlar, uyku, stres, hidrasyon ve ${appLabel}’in ölçemeyeceği diğer bireysel faktörlerden etkilenir.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$tr extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Su Ağırlığı & Dalgalanmalar';
	@override String get description => 'Normal günlük kilo su tutma, sindirim ve zamana bağlı olarak önemli ölçüde dalgalanabilir. Tahmin bu günlük değişiklikleri hesaba katmaz.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$tr extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uzman Rehberliği';
	@override String get description => 'Tıbbi kararlar için bu tahmini kullanmayın. Kişiselleştirilmiş kilo yönetimi tavsiyesi için her zaman bir sağlık uzmanına veya kayıtlı diyetisyene danışın.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$tr extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Bazal Metabolizma Hızı (BMR), vücudunuzun dinlenme halinde temel fonksiyonları sürdürmek için yaktığı kalori miktarıdır. BMR yaşınıza, cinsiyetinize, boyunuza ve kilonuza bağlıdır. Daha yüksek bir BMR, genellikle daha fazla kas kütlesi, daha genç yaş veya erkek olmak nedeniyle dinlenirken daha fazla kalori yaktığınız anlamına gelir. Daha düşük BMR ise genellikle daha az kas kütlesi, daha ileri yaş veya kadın olmayı gösterir.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$tr extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Toplam Günlük Enerji Harcaması (TDEE), BMR\'niz artı fiziksel aktivite ve günlük hareketle birlikte günde yaktığınız toplam kaloridir. TDEE BMR ve aktivite seviyenize bağlıdır. Daha yüksek bir TDEE, genellikle daha aktif olmak veya daha yüksek bir BMR nedeniyle daha fazla kalori yaktığınız anlamına gelir. Daha düşük bir TDEE ise daha az günlük aktivite veya daha düşük bir BMR\'e işaret eder.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$tr extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Günlük Hedef';
	@override String get description => 'Günlük Hedef, TDEE\'niz ve kilo hedefinize dayanarak önerilen günlük kalori alımınızdır. Kilo kaybı için TDEE\'nizden daha az kalori alırsınız. Kilo koruma için TDEE\'nizle eşleşirsiniz. Kilo kazanımı için TDEE\'nizden daha fazla kalori alırsınız. Bu, istenen kilo değişikliğine sağlıklı bir hızda ulaşmanıza yardımcı olur.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$tr extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tahmin Nasıl Hesaplanıyor';
	@override String get description => 'TDEE\'nizi (profilinize göre) hesaplıyoruz ve günün geçen kısmının kesriyle (saat + dakika) / 24 çarparak şu ana kadar yakılan kalorileri tahmin ediyoruz.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$tr extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uzman Rehberliği';
	@override String get description => 'Tıbbi kararlar için bu tahmini kullanmayın. Kişiselleştirilmiş kilo yönetimi tavsiyesi için her zaman bir sağlık uzmanına veya kayıtlı diyetisyene danışın.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$tr extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Toplam Yakılan Kalorileri Okuma';
	@override String get description => 'Uygulamanın Health Connect\'ten toplam yakılan kalorilerinizi okumasına izin verir.';
	@override String get usage => 'Bu izin, uygulamada günlük yakılan kaloriyi göstererek toplam enerji harcamanızı gün içinde anlamanıza yardımcı olur.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$tr extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beslenme Verilerini Okuma';
	@override String get description => 'Uygulamanın Health Connect\'ten beslenme verilerini okumasına izin verir.';
	@override String get usage => 'Bu izin, Health Connect\'e bağlı diğer uygulamalar tarafından kaydedilmiş beslenme bilgilerini okuyarak kapsamlı bir beslenme görünümü sağlar.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$tr extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$tr._(TranslationsTr root) : this._root = root, super.internal(root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beslenme Verilerini Yazma';
	@override String get description => 'Uygulamanın beslenme verilerini Health Connect\'e yazmasına izin verir.';
	@override String get usage => 'Bu izin, kaydettiğiniz öğünleri Health Connect ile senkronize ederek beslenme verilerinizi kullandığınız diğer sağlık ve fitness uygulamalarına sunar.';
}

/// The flat map containing all translations for locale <tr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Türkçe',
			'flag' => '🇹🇷',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Çok fazla istek yaptınız. Lütfen tekrar denemeden önce biraz bekleyin.',
			'errors.networkError' => 'Ağ hatası. İnternet bağlantınızı kontrol edin.',
			'errors.unknownError' => 'Bir şeyler yolunda gitmedi. Lütfen daha sonra tekrar deneyin.',
			'errors.loadingProfileData' => 'Profil verileri yüklenirken hata oluştu',
			'errors.somethingWentWrong' => 'Bir şeyler yolunda gitmedi.',
			'errors.retry' => 'Tekrar dene',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel} uygulamasına hoş geldiniz',
			'onboarding.subtitle' => 'Yapay zekâ destekli kişisel beslenme yol arkadaşınız',
			'onboarding.getStarted' => 'Başlayalım',
			'onboarding.features.foodRecognition.title' => 'Akıllı Yemek Tanıma',
			'onboarding.features.foodRecognition.description' => 'Bir fotoğraf çekin, yapay zekâ yemeğinizi tanısın',
			'onboarding.features.aiAnalysis.title' => 'AI Analizi',
			'onboarding.features.aiAnalysis.description' => 'Açıklamalarınızdan anında besin bilgileri alın',
			'onboarding.features.healthIntegration.title' => 'Health Connect Entegrasyonu',
			'onboarding.features.healthIntegration.description' => 'Daha iyi içgörüler için Health Connect ile bağlayın',
			'onboarding.gender.title' => 'Cinsiyetiniz nedir?',
			'onboarding.gender.description' => 'Cinsiyet, bazal metabolizma hızınızı (BMR) doğru hesaplamamıza yardımcı olur.',
			'onboarding.gender.next' => 'İleri',
			'onboarding.height.title' => 'Boyunuz ne kadar?',
			'onboarding.height.description' => 'Boyunuz BMI ve enerji ihtiyacınızı doğru hesaplamamız için önemlidir.',
			'onboarding.height.metric' => 'Metrik',
			'onboarding.height.imperial' => 'İmperial',
			'onboarding.height.next' => 'İleri',
			'onboarding.weight.currentTitle' => 'Mevcut kilonuz nedir?',
			'onboarding.weight.currentDescription' => 'Günlük hedeflerinizi kişiselleştirmek için mevcut kilonuz gereklidir.',
			'onboarding.weight.targetTitle' => 'Hedef kilonuz nedir?',
			'onboarding.weight.targetDescription' => 'Bir hedef kilo belirlemek uzun vadeli planınızı oluşturmamıza yardımcı olur.',
			'onboarding.weight.metric' => 'Metrik',
			'onboarding.weight.imperial' => 'İmperial',
			'onboarding.weight.next' => 'İleri',
			'onboarding.age.title' => 'Doğum tarihiniz ne zaman?',
			'onboarding.age.description' => 'Yaşınız kalori ihtiyacınızı doğru hesaplamamıza yardımcı olur.',
			'onboarding.age.next' => 'İleri',
			'onboarding.bmiScale.underweight' => 'Zayıf',
			'onboarding.bmiScale.healthy' => 'Sağlıklı',
			'onboarding.bmiScale.overweight' => 'Fazla',
			'onboarding.bmiScale.obese' => 'Obez',
			'onboarding.bmiScale.categories.underweight' => 'Zayıf',
			'onboarding.bmiScale.categories.healthyWeight' => 'Sağlıklı kilo',
			'onboarding.bmiScale.categories.overweight' => 'Fazla kilolu',
			'onboarding.bmiScale.categories.obese' => 'Obez',
			'onboarding.bmiScale.messages.underweight' => 'Dengeli kiloya ulaşmanız için besin değeri yüksek öğünlerle sağlıklı bir plan oluşturmada yardımcı olabiliriz.',
			'onboarding.bmiScale.messages.healthy' => 'Aferin! Sağlıklı bir aralıktasınız. Canlılığınızı ve enerjinizi korumanıza yardımcı olacağız.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel}, hedefinize rahatça ulaşmanız için yapay zekâ destekli takibi basitleştirecek.',
			'onboarding.bmiScale.messages.obese' => 'Sağlık hedefleriniz için kişiselleştirilmiş rehberlik ve sürdürülebilir stratejilerle yanınızdayız.',
			'onboarding.weightGoal.title' => 'Hedefiniz nedir?',
			'onboarding.weightGoal.description' => 'Başarmak istediğinizi en iyi tanımlayan hedefi seçin',
			'onboarding.activityLevel.title' => 'Ne kadar aktifsiniz?',
			'onboarding.activityLevel.description' => 'Bu, günlük kalori ihtiyacınızı daha doğru hesaplamamıza yardımcı olur',
			'onboarding.healthConnect.title' => 'Health Connect ile bağlanın',
			'onboarding.healthConnect.description' => 'Günlük hedefinizde yakılan kalorileri kullanın ve isterseniz kaydettiğiniz öğünleri Health Connect ile paylaşın.',
			'onboarding.healthConnect.overviewDescription' => 'Günlük hedefinizde yakılan kalorileri kullanın ve isterseniz kaydettiğiniz öğünleri Health Connect ile paylaşın.',
			'onboarding.healthConnect.automaticTracking.title' => 'Yakılan Kaloriler',
			'onboarding.healthConnect.automaticTracking.description' => 'Bugün yakılan toplam kaloriyi Health Connect\'ten okuyun',
			'onboarding.healthConnect.caloriesBurned.title' => 'Yakılan Kaloriler',
			'onboarding.healthConnect.caloriesBurned.description' => 'Health Connect üzerinden bugün yakılan toplam kaloriyi okuyun',
			'onboarding.healthConnect.progressInsights.title' => 'Kaydedilen Öğünleri Paylaş',
			'onboarding.healthConnect.progressInsights.description' => 'Calorify\'da kaydettiğiniz öğünleri Health Connect\'e yazın',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Kaydedilen Öğünleri Paylaş',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Calorify uygulamasında kaydettiğiniz öğünleri Health Connect sistemine yazın',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Kontrol Sizde',
			'onboarding.healthConnect.seamlessIntegration.description' => 'İki izinden birini seçin ve erişimi istediğiniz zaman değiştirin',
			'onboarding.healthConnect.userControl.title' => 'Kontrol Sizde',
			'onboarding.healthConnect.userControl.description' => 'İstediğiniz izni seçin ve erişimi dilediğiniz zaman değiştirin',
			'onboarding.healthConnect.connected' => 'Health Connect Bağlandı',
			'onboarding.healthConnect.notConnected' => 'Health Connect Bağlı Değil',
			'onboarding.healthConnect.setup' => 'Health Connect Kurulumu',
			'onboarding.healthConnect.skipForNow' => 'Şimdi atla',
			'onboarding.healthConnect.statusConnected' => 'Health Connect bağlı.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect başarıyla bağlandı!',
			'onboarding.healthConnect.statusNotConnected' => 'Etkinleştirmek istediğiniz Health Connect özelliklerini seçin.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect kısmen bağlı. Her iki özelliği de kullanmak için kalan izni etkinleştirin.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Devam etmek için Health Connect\'i yükleyin veya güncelleyin.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect bu cihazda desteklenmiyor.',
			'onboarding.healthConnect.installOrUpdate' => 'Yükle veya güncelle',
			'onboarding.healthConnect.manageAccess' => 'Erişimi yönet',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'İzin reddedildi. Lütfen ${appLabel} için Health Connect izinlerini telefon ayarlarından etkinleştirin.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect kurulurken hata: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Yalnız değilsiniz',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Araştırmalar gösteriyor ki, tutarlı takip uzun vadeli başarının 1 numaralı öngörücüsüdür.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age} yaşında bir ${gender} için ${goal} hedefleyenlerde, düzenli takip başarı için bir numaralı belirleyicidir.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} bunu elle yapmaktan 10 kat daha kolay hale getirir.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Başlamaya hazır mısınız?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Anında analiz için öğünlerinizin fotoğrafını çekin',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Anlamlı ilerleme görmek için düzenli olarak kaydedin',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Motivasyonu sürdürmek için ilerlemenizi günlük takip edin',
			'onboarding.reinforcement.trackingSuccess.button' => 'Hadi Başlayalım',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'birey',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'daha sağlıklı siz',
			'onboarding.reinforcement.healthProfile.title' => 'Sağlık Profiliniz',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Metriklerinize göre BMI\'niz ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Deneyiminizi özelleştirmek için profilinizi tamamlayalım.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'kazanmak',
			'onboarding.reinforcement.healthProfile.goalLose' => 'vermek',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Hedefinize ulaşmak için ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Hedef kilonuzdasınız! Korumanıza yardımcı olacağız.',
			'onboarding.reinforcement.healthProfile.button' => 'Hadi Başlayalım',
			'onboarding.reinforcement.goalLifestyle.title' => 'Harika Bir Başlangıç!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => '${goalText} hedefinize ilk adımı attınız. ${activityText} olduğunuz için ${appLabel} hedeflerinizi yaşam tarzınıza göre ayarlayacak.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Kişiselleştirilmiş kalori hedefleri',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI destekli öğün tespiti',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detaylı makro besin dağılımları',
			'onboarding.reinforcement.goalLifestyle.button' => 'Hadi Başlayalım',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'hedefleriniz',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktif',
			'tabs.dashboard' => 'Ana Sayfa',
			'tabs.history' => 'Geçmiş',
			'home.aiSummary.title' => 'AI Özetiniz',
			'home.aiSummary.logMore' => 'Kişiselleştirilmiş AI içgörüleri almak için önümüzdeki günlerde daha fazla öğün kaydedin.',
			'home.aiSummary.loading' => 'Özetiniz yükleniyor...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} öğün kaydedildi',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Denge puanı ${score}',
			'home.aiSummary.topFoods' => 'Sık tüketilenler',
			'home.aiSummary.trendUp' => 'Kaloriler artıyor',
			'home.aiSummary.trendDown' => 'Kaloriler azalıyor',
			'home.aiSummary.trendSteady' => 'Kaloriler sabit',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Güncellendi ${time}',
			'home.dailyGoal.title' => 'Günlük Hedefinizi Belirleyin',
			'home.dailyGoal.titleSet' => 'Günlük Hedefiniz',
			'home.dailyGoal.description' => 'Sağlıklı yaşam yolculuğunuza hazır mısınız? İlerlemenizi başlatmak için aşağıda günlük kalori hedefinizi belirleyin.',
			'home.dailyGoal.descriptionSet' => 'Pusulanız ayarlandı! Bu, size rehberlik edecek günlük kalori hedefinizdir.',
			'home.dailyGoal.yourGoal' => 'Hedefiniz',
			'home.dailyGoal.goal' => 'Hedef',
			'home.dailyGoal.dailyCalories' => 'Günlük kalori (kcal)',
			'home.dailyGoal.setGoal' => 'Hedef Belirle',
			'home.dailyGoal.intake' => 'Alım',
			'home.dailyGoal.burned' => 'Yakılan',
			'home.dailyGoal.weightImpact' => 'Kilo Etkisi',
			'home.dailyGoal.estLoss' => 'Tahmini kayıp',
			'home.dailyGoal.estGain' => 'Tahmini kazanç',
			'home.dailyGoal.kcal' => 'kilokalori (kcal)',
			'home.dailySummary.title' => 'Günlük Özet',
			'home.dailySummary.calories' => 'Kaloriler',
			'home.dailySummary.carbs' => 'Karbonhidrat',
			'home.dailySummary.protein' => 'Protein miktarı',
			'home.dailySummary.fat' => 'Yağ',
			'home.dailySummary.fiber' => 'Lif',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Makro besin grafiği',
			'home.intakeProgress.title' => 'Bugünün Makro Dağılımı',
			'home.intakeProgress.target' => 'Hedef',
			'home.intakeProgress.current' => 'Mevcut',
			'home.intakeHistory.title' => '7 Günlük Makro Geçmişi',
			'home.intakeHistory.trendTitle' => 'Bugünün Eğilimi',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Zirve: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Henüz geçmiş yok',
			'home.intakeHistory.startLogging' => 'Öğün kaydetmeye başlayın ve\n7 günlük makro eğilimlerinizi burada görün',
			'home.mealLog.title' => 'Kaydedilen Öğünler',
			'home.mealLog.emptyMessage' => 'Buraya kaydetmek için son öğününüzün fotoğrafını çekin.',
			'home.mealLog.noMealsToday' => 'Bugün için kayıtlı öğün yok',
			'home.mealLog.seeAllMeals' => 'Tüm öğünleri gör',
			'home.mealDescription.title' => 'AI ile Hızlı Ekle',
			'home.mealDescription.description' => 'Öğününüzü tanımlayın, gerisini AI halletsin.',
			'home.mealDescription.hint' => 'ör. Kahvaltıda büyük bir kase yulaf ezmesi, dilimlenmiş muz ve bir ölçek whey ...',
			'home.mealDescription.analyzeMeal' => 'Öğünü analiz et',
			'home.favoriteMeals.title' => 'Favori Öğünler',
			'home.favoriteMeals.description' => 'Favori öğünlerinizi hızlıca ekleyin.',
			'home.favoriteMeals.noFavorites' => 'Henüz favori öğün yok.',
			'home.favoriteMeals.addFavoriteHint' => 'Bir öğünü favori yapmak için yıldıza tıklayın.',
			'home.favoriteMeals.seeAll' => 'Tümünü gör',
			'home.favoriteMeals.add' => 'Ekle',
			'home.mealSnap.title' => 'Yemeği Fotoğraflayın & Takip Edin',
			'home.mealSnap.description' => 'AI analizi için yiyeceğinizin fotoğrafını çekmek için kameranızı kullanın.',
			'home.mealSnap.openCamera' => 'Kamerayı Aç',
			'home.mealSnap.gallery' => 'Galeri',
			'home.mealSnap.compressingPhoto' => 'Fotoğraf optimize ediliyor…',
			'home.mealSnap.uploadingPhoto' => 'Fotoğraf yükleniyor…',
			'home.connectHealth.title' => 'Health Connect ile Senkronize Et',
			'home.connectHealth.description' => 'Hedefinizde yakılan kalorileri kullanın ve kaydettiğiniz öğünleri paylaşın',
			'home.connectHealth.install' => 'Yükle veya güncelle',
			'home.connectHealth.dataUseDescription' => 'Hedefinizde yakılan kalorileri kullanın ve kaydedilen öğünleri paylaşın',
			'home.connectHealth.installOrUpdate' => 'Yükle veya güncelle',
			'home.connectHealth.connect' => 'Bağla',
			'history.noMeals' => 'Kayıtlı öğün yok',
			'history.emptyMessage' => 'Buraya kaydetmek için son öğününüzün fotoğrafını çekin.',
			'history.today' => 'Bugün',
			'history.yesterday' => 'Dün',
			'meal.ohNo' => 'Ay hayır!',
			'meal.delete' => 'Sil',
			'meal.editMeal' => 'Öğünü Düzenle',
			'meal.addMeal' => 'Öğün Ekle',
			'meal.saveMeal' => 'Öğünü Kaydet',
			'meal.save' => 'Kaydet',
			'meal.mealName' => 'Öğün Adı',
			'meal.mealNameHint' => 'ör., Çırpılmış Yumurta ve tost',
			'meal.nameRequired' => 'Kaydetmeden önce bir öğün adı girin.',
			'meal.mealQuantity' => 'Öğün Miktarı',
			'meal.mealQuantityHint' => 'ör., 1 kase, 2 dilim',
			'meal.timeOfMeal' => 'Öğün Zamanı',
			'meal.timeOfMealHint' => 'Öğünü yediğiniz zamanı seçin',
			'meal.mealType' => 'Öğün Türü',
			'meal.nutrition.calories' => 'Kalori',
			'meal.nutrition.carbs' => 'Karbonhidrat (g)',
			'meal.nutrition.protein' => 'Protein (gram)',
			'meal.nutrition.fat' => 'Yağ (g)',
			'meal.nutrition.fiber' => 'Lif (g)',
			'meal.deleteConfirmation.title' => 'Öğünü Sil',
			'meal.deleteConfirmation.message' => 'Bu öğün kaydını silmek istediğinizden emin misiniz?',
			'meal.deleteConfirmation.cancel' => 'İptal',
			'meal.deleteConfirmation.delete' => 'Sil',
			'meal.addedToLog' => 'Öğün kaydınıza eklendi!',
			'meal.couldNotAdd' => ({required Object error}) => 'Öğün eklenemedi: ${error}',
			'meal.savedSuccessfully' => 'Öğün başarıyla eklendi!',
			'meal.updatedSuccessfully' => 'Öğün başarıyla güncellendi!',
			'meal.errorSaving' => ({required Object error}) => 'Öğün kaydedilirken hata: ${error}',
			'meal.removedFromFavorites' => 'Favorilerden kaldırıldı!',
			'meal.savedAsFavorite' => 'Öğün favori olarak kaydedildi!',
			'meal.unfavorite' => 'Favorilerden çıkar',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Favori güncellenemedi: ${error}',
			'meal.feedbackThanks' => 'Geri bildiriminiz için teşekkürler!',
			'meal.reanalysisUpdated' => 'Geri bildiriminize göre öğün analizi güncellendi.',
			'meal.failedToProcess' => ({required Object error}) => 'İşlenemedi: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Görüntü işlenemedi: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Görüntü sıkıştırılırken hata: ${error}',
			'meal.failedToSave' => 'Veri kaydedilemedi. Lütfen tekrar deneyin.',
			'meal.skip' => 'Atla',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Soru ${current} / ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Kullanılabilir soru yok',
			'meal.questionFlow.next' => 'İleri',
			'meal.questionFlow.continueLabel' => 'Devam',
			'meal.questionFlow.countQuestion' => 'Miktarı seçin',
			'meal.questionFlow.itemSizeQuestion' => 'Ürün boyutunu seçin',
			'meal.questionFlow.portionSizeQuestion' => 'Porsiyon boyutunu seçin',
			'meal.questionFlow.option6plus' => '6 veya daha fazla',
			'meal.questionFlow.optionSmall' => 'Küçük',
			'meal.questionFlow.optionRegular' => 'Normal',
			'meal.questionFlow.optionLarge' => 'Büyük',
			'meal.questionFlow.optionThin' => 'İnce',
			'meal.questionFlow.optionThick' => 'Kalın',
			'meal.questionFlow.optionMini' => 'Mini',
			'meal.questionFlow.optionStuffed' => 'Doldurulmuş',
			'meal.questionFlow.optionHeavy' => 'Ağır',
			'meal.questionFlow.optionSmaller' => 'Daha küçük',
			'meal.questionFlow.optionTypical' => 'Tipik',
			'meal.questionFlow.optionLarger' => 'Daha büyük',
			'meal.analysis.title' => 'Öğününüz analiz ediliyor',
			'meal.analysis.stepStarted' => 'Başlanıyor…',
			'meal.analysis.stepDecomposition' => 'Öğününüz anlaşılıyor…',
			'meal.analysis.stepIngredients' => 'İçerikler besin veritabanıyla eşleştiriliyor…',
			'meal.analysis.stepUncertainty' => 'Güven kontrolü yapılıyor…',
			'meal.analysis.stepMealTypeQuestion' => 'Çok az kaldı…',
			'meal.analysis.stepResult' => 'Sonuç finalize ediliyor…',
			'meal.analysis.stepError' => 'Bir şeyler yolunda gitmedi',
			'meal.analysis.stepDefault' => 'Öğününüz analiz ediliyor…',
			'meal.analysis.progressUnderstand' => 'Öğününüz anlaşılıyor',
			'meal.analysis.progressMatch' => 'İçeriklerin besin bilgileri aranıyor',
			'meal.analysis.progressCheck' => 'Porsiyonlar ve güven kontrol ediliyor',
			'meal.analysis.progressMealType' => 'Öğün türü seçiliyor',
			'meal.analysis.progressFinish' => 'Kalori ve makrolar hesaplanıyor',
			'meal.analysis.detectedIngredientHeading' => 'Tespit ettiğimiz içerikler',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} daha',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} içerik tespit edildi',
			'meal.analysis.ingredientsPending' => 'İçerikler taranıyor…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '“${text}”',
			'meal.analysis.offlineTip0' => 'İpucu: Tutarlılık mükemmellikten daha önemlidir—düzenli kayıtlar önemli kalıpları ortaya çıkarır.',
			'meal.analysis.offlineTip1' => 'İpucu: Fotoğraflar için doğal ışık ve üstten çekim porsiyon doğruluğuna yardımcı olur.',
			'meal.analysis.offlineTip2' => 'İpucu: İçecekler, soslar ve pişirme yağını belirtin—bunlar genellikle unutulan kalorileri ekler.',
			'meal.analysis.offlineTip3' => 'İpucu: Hızlı bir porsiyon notu (1 kase, büyük kahve) tahminleri çok daha isabetli yapar.',
			'meal.analysis.offlineTip4' => 'İpucu: Öğünden sonra kayıt yapmak da alışkanlık kazandırır; mükemmellik zorunlu değildir.',
			'meal.analysis.offlineTip5' => 'İpucu: Kalorileri çok değiştiren pişirme şeklini belirtin (kızartma vs fırınlama).',
			'meal.analysis.noFoodTip' => 'Hiçbir yiyecek algılanmadı. Başka bir fotoğraf veya açıklama deneyin.',
			'meal.localInference.reviewTitle' => 'Tespit edilen malzemeleri gözden geçir',
			'meal.localInference.reviewSubtitle' => 'Bu işlem cihazınızda gerçekleştirildi. Besin değerleri hesaplanmadan önce isimleri veya porsiyonları düzeltin.',
			'meal.localInference.mealName' => 'Öğün adı',
			'meal.localInference.ingredient' => 'Malzeme',
			'meal.localInference.grams' => 'Tahmini gram',
			'meal.localInference.removeIngredient' => 'Malzemeyi kaldır',
			'meal.localInference.continueLabel' => 'Devam et',
			'meal.localInference.invalidProposal' => 'Lütfen en az bir malzeme ekleyin ve pozitif bir gram miktarı girin.',
			'meal.localInference.localUnavailable' => 'Cihaz içi analiz şu anda kullanılamıyor.',
			'meal.feedback.title' => 'Neresi yanlış görünüyor?',
			'meal.feedback.subtitle' => 'Analizi geliştirmemize yardımcı olmak için bir veya birden fazla sorun seçin.',
			'meal.feedback.tellUsMore' => 'Daha fazla anlatın',
			'meal.feedback.describeIncorrect' => 'Yanlış olanı açıklayın',
			'meal.feedback.submit' => 'Gönder',
			'meal.feedback.issueFoodIdentification' => 'Yiyecek tanımlaması',
			'meal.feedback.issuePortionSize' => 'Porsiyon boyutu',
			'meal.feedback.issueCalorieDistribution' => 'Kalori dağılımı',
			'meal.feedback.issueMacrosWrong' => 'Makrolar yanlış',
			'meal.feedback.issueMissingItems' => 'Eksik öğeler',
			'meal.feedback.issueExtraItems' => 'Ekstra öğeler',
			'meal.feedback.issueOther' => 'Diğer',
			'favorites.title' => 'Favoriler',
			'favorites.empty' => 'Henüz favori öğün yok.',
			'favorites.searchPlaceholder' => 'Favori öğünlerde ara',
			'favorites.searchEmptyTitle' => 'Aramanızla eşleşen favori yok',
			'favorites.searchEmptySubtitle' => 'Farklı bir öğün adı, miktarı veya öğün türü deneyin.',
			'favorites.sortLabel' => 'Favorileri sırala',
			'favorites.undo' => 'Geri al',
			'favorites.removed' => ({required Object name}) => '${name} favorilerden kaldırıldı',
			'favorites.sortOptions.recent' => 'Son Eklenen',
			'favorites.sortOptions.calories' => 'Kalori',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Profil verisi bulunamadı',
			'profile.yourProfile' => 'Profiliniz',
			'profile.viewAndManage' => 'Sağlık bilgilerinizi görüntüleyin ve yönetin',
			'profile.sections.profile' => 'PROFİL',
			'profile.sections.basicInformation' => 'TEMEL BİLGİLER',
			'profile.sections.goalsAndActivity' => 'HEDEFLER & AKTİVİTE',
			'profile.sections.calculatedValues' => 'HESAPLANMIŞ DEĞERLER',
			'profile.gender' => 'Cinsiyet',
			'profile.height' => 'Boy',
			'profile.weight' => 'Kilo',
			'profile.age' => 'Yaş',
			'profile.weightGoal' => 'Kilo Hedefi',
			'profile.targetWeight' => 'Hedef Kilo',
			'profile.activityLevel' => 'Aktivite Seviyesi',
			'profile.healthMetrics' => 'Sağlık Metrikleri',
			'profile.notSet' => 'Ayarlanmadı',
			'profile.years' => 'yıl',
			'profile.updatedSuccessfully' => 'Profil başarıyla güncellendi!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Günlük Hedef',
			'profile.calculatedValues.calPerDay' => 'cal/gün',
			'profile.calculatedValues.notAvailable' => 'YOK',
			'healthScore.title' => 'Sağlık Puanı',
			'healthScore.whyThisScore' => 'Bu puan neden?',
			'healthScore.note' => 'Bu puan, tanımlanan içerikler ve besin yoğunluğuna dayanan bir AI tahminidir. Beslenme ile ilgili tavsiye için her zaman bir uzmana danışın.',
			'healthScore.unhealthy' => 'Sağlıksız',
			'healthScore.healthy' => 'Sağlıklı',
			'healthScore.neutral' => 'Nötr',
			'editProfile.title' => 'Profili Düzenle',
			'editProfile.sections.personalInformation' => 'KİŞİSEL BİLGİLER',
			'editProfile.sections.physicalMeasurements' => 'FİZİKSEL ÖLÇÜMLER',
			'editProfile.sections.goalsAndActivity' => 'HEDEFLER & AKTİVİTE',
			'editProfile.gender' => 'Cinsiyet',
			'editProfile.dateOfBirth' => 'Doğum Tarihi',
			'editProfile.height' => 'Boy',
			'editProfile.weight' => 'Kilo',
			'editProfile.weightGoal' => 'Kilo Hedefi',
			'editProfile.activityLevel' => 'Aktivite Seviyesi',
			'editProfile.metric' => 'Metrik',
			'editProfile.imperial' => 'İmperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'libre (lbs)',
			'editProfile.metricCm' => 'Metrik (cm)',
			'editProfile.imperialFtIn' => 'İmperial (ft/in)',
			'editProfile.metricKg' => 'Metrik (kg)',
			'editProfile.imperialLbs' => 'İmperial (lbs)',
			'editProfile.genders.male' => 'Erkek',
			'editProfile.genders.female' => 'Kadın',
			'editProfile.genders.other' => 'Diğer',
			'editProfile.weightGoals.loseWeight.name' => 'Kilo Ver',
			'editProfile.weightGoals.loseWeight.description' => 'Kilo vermek için kalori açığı oluşturun',
			'editProfile.weightGoals.maintainWeight.name' => 'Kilo Koruma',
			'editProfile.weightGoals.maintainWeight.description' => 'Mevcut kilonuzu koruyun',
			'editProfile.weightGoals.gainWeight.name' => 'Kilo Al',
			'editProfile.weightGoals.gainWeight.description' => 'Kilo almak için kalori fazlası oluşturun',
			'editProfile.activityLevels.sedentary.name' => 'Hareketsiz',
			'editProfile.activityLevels.sedentary.description' => 'Az veya hiç egzersiz yok',
			'editProfile.activityLevels.lightlyActive.name' => 'Hafif Aktif',
			'editProfile.activityLevels.lightlyActive.description' => 'Haftada 1-3 gün hafif egzersiz',
			'editProfile.activityLevels.moderatelyActive.name' => 'Orta Aktif',
			'editProfile.activityLevels.moderatelyActive.description' => 'Haftada 3-5 gün orta düzey egzersiz',
			'editProfile.activityLevels.veryActive.name' => 'Çok Aktif',
			'editProfile.activityLevels.veryActive.description' => 'Haftada 6-7 gün yoğun egzersiz',
			'editProfile.activityLevels.extremelyActive.name' => 'Aşırı Aktif',
			'editProfile.activityLevels.extremelyActive.description' => 'Çok yoğun egzersiz veya fiziksel iş',
			'settings.title' => 'Ayarlar',
			'settings.sections.profile' => 'PROFİL',
			'settings.sections.localization' => 'LOKALİZASYON',
			'settings.sections.notifications' => 'BİLDİRİMLER',
			'settings.sections.healthConnect' => 'HEALTH CONNECT ENTEGRASYONU',
			'settings.sections.localInference' => 'CİHAZ İÇİ ANALİZ',
			'settings.sections.supportAndLegal' => 'DESTEK & YASAL',
			'settings.sections.about' => 'HAKKINDA',
			'settings.sections.dangerZone' => 'TEHLİKELİ BÖLGE',
			'settings.sections.developer' => 'GELİŞTİRİCİ',
			'settings.editProfile.title' => 'Profili Düzenle',
			'settings.editProfile.subtitle' => 'Kişisel bilgilerinizi güncelleyin',
			'settings.language.title' => 'Dil',
			'settings.language.subtitle' => 'Tercih ettiğiniz dili seçin',
			'settings.language.searchHint' => 'Dillerde ara...',
			'settings.language.noResults' => 'Sonuç bulunamadı',
			'settings.heightUnit.title' => 'Boy Birimi',
			'settings.weightUnit.title' => 'Kilo Birimi',
			'settings.mealReminders.title' => 'Öğün Hatırlatıcıları',
			'settings.mealReminders.subtitle' => 'Zamanında uyarılarla yolda kalın',
			'settings.localInference.title' => 'Cihaz içi öğün analizi',
			'settings.localInference.subtitle' => 'Besin değerleri hesaplanmadan önce desteklenen öğünleri Gemini Nano ile yorumlayın',
			'settings.localInference.unavailable' => 'Bu cihazda mevcut değil',
			'settings.localInference.rolloutUnavailable' => 'Uygun donanım bulundu ancak bu özellik bu uygulama sürümü için etkinleştirilmedi',
			'settings.localInference.modelSetup' => 'Bu özelliğin etkinleştirilebilmesi için Gemini Nano\'nun indirme işlemini tamamlaması gerekiyor',
			'settings.localInference.useLocalTitle' => 'Cihaz içi analizi kullan',
			'settings.localInference.useLocalSubtitle' => 'İsteğe bağlıdır ve varsayılan olarak kapalıdır. Karmaşık öğünler için sonuçlar daha az güvenilir olabilir.',
			'settings.localInference.disclosureTitle' => 'Cihaz içi analizi etkinleştirmeden önce',
			'settings.localInference.disclosureBody' => 'Gemini Nano, desteklenen Android cihazlarda malzemeleri tanımlayabilir ve porsiyonları tahmin edebilir. Gözden geçirdiğiniz malzeme önerisi, USDA besin temellendirmesi ve hesaplama için Calorify\'a gönderilir.',
			'settings.localInference.disclosureLimit1' => 'Karmaşık yemekler, gizli malzemeler ve porsiyon boyutları yanlış tanımlanabilir.',
			'settings.localInference.disclosureLimit2' => 'Model; indirme sırasında, meşgulken, arka plandayken veya cihaz tarafından sınırlandırıldığında kullanılamayabilir.',
			'settings.localInference.disclosureLimit3' => 'Yerel yorumlama tamamlanamazsa, bu beta sürümü orijinal öğün açıklamanızı bulut analizi için otomatik olarak Calorify\'a gönderir.',
			'settings.localInference.acknowledgement' => 'Tespit edilen malzemeleri ve porsiyonları gözden geçirmem gerektiğini anlıyorum.',
			'settings.localInference.enable' => 'Onayla ve etkinleştir',
			'settings.localInference.cancel' => 'İptal',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Açık',
			'settings.theme.dark' => 'Koyu',
			'settings.theme.system' => 'Sistem',
			'settings.sendFeedback.title' => 'Geri Bildirim Gönder',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} için geri bildirimde bulunun',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} Uygulama Geri Bildirimi',
			'settings.sendFeedback.emailBodyPrefix' => 'Lütfen aşağıya geri bildiriminizi ekleyin:',
			'settings.sendFeedback.appVersion' => 'Uygulama Sürümü',
			'settings.sendFeedback.device' => 'Cihaz',
			'settings.sendFeedback.osVersion' => 'İşletim Sistemi Sürümü',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Öğün Geçmişini Dışa Aktar',
			'settings.exportMealHistory.subtitle' => 'Kaydettiğiniz öğünlerin CSV\'sini paylaşın',
			'settings.exportMealHistory.shareText' => 'Calorify öğün geçmişi dışa aktarımınız',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Öğün geçmişi dışa aktarılamadı: ${error}',
			'settings.clearAllData.title' => 'Tüm Verileri Temizle',
			'settings.clearAllData.subtitle' => 'Bu cihazda saklanan Calorify verilerini silin',
			'settings.clearAllData.localOnlySubtitle' => 'Bu cihazda saklanan Calorify verilerini sil',
			'settings.clearAllData.confirmationTitle' => 'Tüm Veriler Temizlensin mi?',
			'settings.clearAllData.confirmationMessage' => 'Bu işlem kaydedilen öğünleri, favorileri ve profil ayarlarını bu cihazdan kalıcı olarak siler. Health Connect ile önceden paylaşılmış öğünler ve Health Connect erişimi Ayarlar > Health Connect bölümünde ayrı olarak yönetilir.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Bu işlem, kaydedilen öğünleri, favorileri ve profil ayarlarını bu cihazdan kalıcı olarak siler. Health Connect ile paylaşılmış öğünler ve Health Connect erişimi Ayarlar > Health Connect bölümünde ayrı olarak yönetilir.',
			'settings.clearAllData.cancel' => 'İptal',
			'settings.clearAllData.clearEverything' => 'Her Şeyi Temizle',
			'settings.debugOptions.title' => 'Hata Ayıklama Seçenekleri',
			'settings.developerModeEnabled' => 'Geliştirici modu etkinleştirildi!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'İzinleri görüntüleyin ve yönetin',
			'settings.healthConnect.unavailable.title' => 'Health Connect Kullanılamıyor',
			'settings.healthConnect.unavailable.description' => 'Health Connect bu cihazda desteklenmiyor.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect bu cihazda desteklenmiyor.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect ile ilgilenmeniz gerekiyor',
			'settings.healthConnect.updateRequired.description' => 'Erişimi yönetmeden önce Health Connect\'i yükleyin veya güncelleyin.',
			'settings.healthConnect.updateRequired.action' => 'Yükle veya güncelle',
			'settings.healthConnect.permissions.title' => 'İzinler',
			'settings.healthConnect.permissions.description' => 'Health Connect entegrasyonu sağlamak için aşağıdaki izinler istenmektedir:',
			'settings.healthConnect.permissions.granted' => 'Verildi',
			'settings.healthConnect.permissions.notGranted' => 'Verilmedi',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Toplam Yakılan Kalorileri Okuma',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Uygulamanın Health Connect\'ten toplam yakılan kalorilerinizi okumasına izin verir.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Bu izin, uygulamada günlük yakılan kaloriyi göstererek toplam enerji harcamanızı gün içinde anlamanıza yardımcı olur.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Beslenme Verilerini Okuma',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Uygulamanın Health Connect\'ten beslenme verilerini okumasına izin verir.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Bu izin, Health Connect\'e bağlı diğer uygulamalar tarafından kaydedilmiş beslenme bilgilerini okuyarak kapsamlı bir beslenme görünümü sağlar.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Beslenme Verilerini Yazma',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Uygulamanın beslenme verilerini Health Connect\'e yazmasına izin verir.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Bu izin, kaydettiğiniz öğünleri Health Connect ile senkronize ederek beslenme verilerinizi kullandığınız diğer sağlık ve fitness uygulamalarına sunar.',
			'settings.healthConnect.managePermissions' => 'İzinleri Yönet',
			'settings.healthConnect.openSettings' => 'Health Connect Ayarlarını Aç',
			'settings.healthConnect.disconnect' => 'Health Connect bağlantısını kes',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Health Connect bağlantısı kesilsin mi?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify, Health Connect erişimini kaybedecek. Önceden yazılmış veriler silinmeyecek.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Bağlantıyı kes',
			'settings.healthConnect.deleteSyncedMeals' => 'Calorify öğünlerini Health Connect\'ten sil',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Senkronize edilen öğünler silinsin mi?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Calorify\'ın bu sürümü tarafından senkronize edilen öğünler Health Connect\'ten silinsin mi? Yerel öğün günlüğünüz değişmez. Eski Calorify kayıtlarının Health Connect\'teki Verileri Yönet bölümünden ayrıca kaldırılması gerekebilir.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Senkronize edilen öğünleri sil',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Calorify öğünleri Health Connect\'ten silindi.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Senkronize edilen öğünler silinemedi. Lütfen tekrar deneyin.',
			'settings.healthConnect.connectionPartial' => 'Bazı Health Connect özellikleri etkin.',
			'settings.healthConnect.connectionComplete' => 'Her iki Health Connect özelliği de etkin.',
			'settings.healthConnect.actionFailed' => 'Health Connect açılamadı. Lütfen tekrar deneyin.',
			'settings.healthConnect.requestPermissions' => 'İzin İste',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'İzin isteği iptal edildi veya başarısız oldu. Lütfen tekrar deneyin veya izinleri Health Connect ayarlarından manuel olarak verin.',
			'settings.healthConnect.permissionRequestFailed' => 'İzin isteği yapılamıyor. Lütfen tekrar deneyin veya izinleri Health Connect ayarlarından manuel olarak verin.',
			'settings.healthConnect.requestingPermissions' => 'İzinler isteniyor...',
			'settings.about.title' => 'Hakkında',
			'settings.about.tagline' => 'Hızlı, ücretsiz ve gizliliği önceliklendiren kalori farkındalığı',
			'settings.about.ourStory.title' => 'Bizim Hikâyemiz',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} basit bir hayal kırıklığından doğdu: çoğu kalori takip uygulaması ya aşırı karmaşık, sürekli manuel giriş gerektiren, yüksek abonelik ücretleri talep eden ya da gizliliği riske atan uygulamalardı.\n\nTek kişilik bir geliştirici olarak, daha basit ve daha adil bir şey yapmak istedim — çaba gereksinimini azaltmak için AI kullanan, hızlı ve ücretsiz kalan ve sağlık verilerinize saygı duyan bir uygulama.\n\n${appLabel} var olmasını dilediğim uygulama: hesap yok, izleme yok, reklam yok — sadece net, pratik içgörüler ve sağlık hedefleriniz.',
			'settings.about.privacy.title' => 'Gizliliğiniz Önemli',
			'settings.about.privacy.description' => 'Gizlilik sonradan düşünülmüş bir unsur değil — bir tasarım ilkesidir. Bu pratikte şu anlama gelir:',
			'settings.about.privacy.noAccounts' => 'Hesap gerekmez\nUygulamayı hemen kullanın. Kayıt yok, kimlik yok.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Sınırlı analiz ve tanılama\n${appLabel}, güvenilirliği artırmak için temel uygulama etkinliklerini ve kilitlenme tanılamasını kullanır. Sağlık kaydı değerleri reklam için kullanılmaz veya satılmaz.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Sınırlı analiz ve tanılama\n${appLabel}, güvenilirliği artırmak için temel uygulama olaylarını ve çökme tanılamalarını kullanır. Sağlık kaydı değerleri reklam için kullanılmaz veya satılmaz.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Reklamsız tasarım\n${appLabel} reklamlar veya veri odaklı para kazanma yöntemleri olmadan çalışacak şekilde tasarlandı.',
			'settings.about.privacy.noDataSelling' => 'Veri satışı yok\nSağlık verileriniz üçüncü taraflara asla satılmaz veya paylaşılmaz.',
			'settings.about.privacy.localStorage' => 'Yerel öncelikli depolama\nVerileriniz cihazınızda kalır.',
			'settings.about.privacy.privacyPolicy' => 'Gizlilik Politikası',
			'settings.about.developer.title' => 'Tek Geliştirici Tarafından Yapıldı',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel}, sakin, gizliliğe saygılı sağlık yazılımları yaratmaya odaklanmış tek bir geliştirici tarafından inşa edilip sürdürülmektedir.\n\nGeri bildirimler kişisel olarak okunur ve uygulamanın yönünü şekillendirmeye yardımcı olur.',
			'settings.about.developer.website' => 'Web sitesi',
			'settings.about.developer.email' => 'E-posta',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel} hoşunuza gidiyor mu?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Geri bildiriminiz ${appLabel}\'i herkes için daha iyi hale getirmeye yardımcı olur.',
			'settings.about.feedback.rateApp' => 'Play Store\'da oy verin',
			'settings.about.feedback.sendFeedback' => 'Geri Bildirim Gönder',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify sürüm ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Yapı ${buildNumber}',
			'reminders.title' => 'Hatırlatıcılarla yolda kalın',
			'reminders.description' => 'Öğünlerinizi kaydetmeniz için nazik hatırlatmalar alın ve beslenme hedeflerinize bağlı kalın',
			'reminders.notificationsEnabled' => 'Bildirimler Etkin',
			'reminders.notificationsDisabled' => 'Bildirimler Devre Dışı',
			'reminders.enabledSubtitle' => 'Öğün hatırlatmaları alacaksınız',
			'reminders.disabledSubtitle' => 'Öğün hatırlatmaları almak için bildirimleri etkinleştirin',
			'reminders.mealReminders' => 'Öğün Hatırlatmaları',
			'reminders.breakfast' => 'Kahvaltı',
			'reminders.lunch' => 'Öğle',
			'reminders.dinner' => 'Akşam',
			'reminders.snack' => 'Ara Öğün',
			'reminders.unknown' => 'Bilinmiyor',
			'reminders.change' => 'Değiştir',
			'reminders.enableNotifications' => 'Bildirimleri Etkinleştir',
			'reminders.skipForNow' => 'Şimdi atla',
			'reminders.saveChanges' => 'Değişiklikleri Kaydet',
			'reminders.enabledSuccessfully' => 'Bildirimler başarıyla etkinleştirildi!',
			'reminders.permissionDenied' => 'Bildirim izni reddedildi',
			'reminders.errorEnabling' => ({required Object error}) => 'Bildirimler etkinleştirilirken hata: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Kurulum tamamlanırken hata: ${error}',
			'notifications.breakfast.title' => 'Kahvaltı Zamanı! 🍳',
			'notifications.breakfast.body' => 'Kahvaltınızı kaydetmeyi unutmayın',
			'notifications.lunch.title' => 'Öğle Vakti! 🥗',
			_ => null,
		} ?? switch (path) {
			'notifications.lunch.body' => 'Öğlen yemeğinizi kaydetme zamanı',
			'notifications.dinner.title' => 'Akşam Yemeği Zamanı! 🍽️',
			'notifications.dinner.body' => 'Akşam yemeğinizi kaydetmeyi unutmayın',
			'notifications.snack.title' => 'Ara Öğün Zamanı! 🍎',
			'notifications.snack.body' => 'Sağlıklı bir ara öğün zamanı',
			'notifications.test.title' => 'Test Bildirimi',
			'login.title' => 'Giriş',
			'login.signInWithGoogle' => 'Google ile giriş yap',
			'login.signInFailed' => 'Google ile giriş başarısız oldu veya iptal edildi.',
			'disclaimer.pleaseNote' => 'Lütfen Dikkat',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} tahmini besin bilgileri sağlar. Doğruluk, girdiğiniz bilgilere ve yiyecek çeşitlerine bağlıdır. Bir rehber olarak kullanın, kesin kaynak olarak değil. Kişisel beslenme tavsiyesi için bir uzmana danışın.',
			'disclaimer.snap.portionSize.title' => 'Porsiyon Boyutu',
			'disclaimer.snap.portionSize.description' => 'Tahminlerin doğruluğu büyük ölçüde porsiyon boyutunu doğru değerlendirmenize bağlıdır.',
			'disclaimer.snap.preparationMethods.title' => 'Hazırlama Yöntemleri',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Pişirme yöntemleri yiyeceğin besin içeriğini önemli ölçüde değiştirebilir. ${appLabel} tahminleri her zaman bu farklılıkları hesaba katmayabilir.',
			'disclaimer.snap.ingredients.title' => 'İçerikler',
			'disclaimer.snap.ingredients.description' => 'Birçok gizli içeriğe sahip karmaşık yemekler daha az doğru tahminlere yol açabilir.',
			'disclaimer.snap.databaseLimitations.title' => 'Veritabanı Sınırlamaları',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}\'in gıda veritabanı kapsamlıdır ancak her bir yiyecek öğesini veya varyasyonunu içermeyebilir.',
			'disclaimer.weightEstimate.title' => 'Kilo Tahmini Hakkında',
			'disclaimer.weightEstimate.description' => 'Projeksiyon olarak verilen kilo değişimi basit kalori içeriği vs harcama modeli üzerine kurulu teorik bir tahmindir. Motivasyon kaynağı olarak düşünülmelidir, gerçek ağırlığın bir tahmini değildir.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalori Doğruluğu',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Bu tahmin, izlediğiniz kalori alımı ve harcamasının doğruluğuna bağlıdır. Hatalı kayıtlar tahminin yanlış olmasına neden olur.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biyolojik Faktörler',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Gerçek kilo kaybı/kazancı metabolizma, hormonlar, uyku, stres, hidrasyon ve ${appLabel}’in ölçemeyeceği diğer bireysel faktörlerden etkilenir.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Su Ağırlığı & Dalgalanmalar',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normal günlük kilo su tutma, sindirim ve zamana bağlı olarak önemli ölçüde dalgalanabilir. Tahmin bu günlük değişiklikleri hesaba katmaz.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Uzman Rehberliği',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Tıbbi kararlar için bu tahmini kullanmayın. Kişiselleştirilmiş kilo yönetimi tavsiyesi için her zaman bir sağlık uzmanına veya kayıtlı diyetisyene danışın.',
			'disclaimer.healthMetrics.description' => 'Bu metrikler, vücudunuzun enerji ihtiyaçlarını anlamanıza ve beslenme hedeflerinize rehberlik etmenize yardımcı olur.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Bazal Metabolizma Hızı (BMR), vücudunuzun dinlenme halinde temel fonksiyonları sürdürmek için yaktığı kalori miktarıdır. BMR yaşınıza, cinsiyetinize, boyunuza ve kilonuza bağlıdır. Daha yüksek bir BMR, genellikle daha fazla kas kütlesi, daha genç yaş veya erkek olmak nedeniyle dinlenirken daha fazla kalori yaktığınız anlamına gelir. Daha düşük BMR ise genellikle daha az kas kütlesi, daha ileri yaş veya kadın olmayı gösterir.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Toplam Günlük Enerji Harcaması (TDEE), BMR\'niz artı fiziksel aktivite ve günlük hareketle birlikte günde yaktığınız toplam kaloridir. TDEE BMR ve aktivite seviyenize bağlıdır. Daha yüksek bir TDEE, genellikle daha aktif olmak veya daha yüksek bir BMR nedeniyle daha fazla kalori yaktığınız anlamına gelir. Daha düşük bir TDEE ise daha az günlük aktivite veya daha düşük bir BMR\'e işaret eder.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Günlük Hedef',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Günlük Hedef, TDEE\'niz ve kilo hedefinize dayanarak önerilen günlük kalori alımınızdır. Kilo kaybı için TDEE\'nizden daha az kalori alırsınız. Kilo koruma için TDEE\'nizle eşleşirsiniz. Kilo kazanımı için TDEE\'nizden daha fazla kalori alırsınız. Bu, istenen kilo değişikliğine sağlıklı bir hızda ulaşmanıza yardımcı olur.',
			'disclaimer.calorieExpenditure.title' => 'Kalori Harcama Tahmini',
			'disclaimer.calorieExpenditure.description' => 'Health Connect verileri kullanılamadığında, bugünkü yakılan kalorileri Basal Metabolizma Hızınız (BMR) ve aktivite seviyeniz (TDEE) kullanılarak, günün geçen kısmına göre ölçeklenmiş şekilde tahmin ederiz.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Tahmin Nasıl Hesaplanıyor',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'TDEE\'nizi (profilinize göre) hesaplıyoruz ve günün geçen kısmının kesriyle (saat + dakika) / 24 çarparak şu ana kadar yakılan kalorileri tahmin ediyoruz.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Uzman Rehberliği',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Tıbbi kararlar için bu tahmini kullanmayın. Kişiselleştirilmiş kilo yönetimi tavsiyesi için her zaman bir sağlık uzmanına veya kayıtlı diyetisyene danışın.',
			'localNutritionPhase4.portionSmaller' => 'Daha küçük',
			'localNutritionPhase4.portionEstimated' => 'Tahmini',
			'localNutritionPhase4.portionLarger' => 'Daha büyük',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => '${ingredient} için en yakın porsiyon hangisiydi?',
			'localNutritionPhase4.mealTypeQuestion' => 'Bu hangi öğündü?',
			'localNutritionPhase4.localNutritionTip' => 'Doğrulanmış yerel besin verilerinden hesaplandı.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Besin verilerini indir',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Tüm malzemeler kapsandığında bu cihazda doğrulanmış USDA satırlarını ve deterministik hesaplamayı kullanın.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Yerel besin verileri bu uygulama sürümü için kullanılamıyor.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Doğrulanmış bir besin paketi indirilmedi.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Besin verileri indiriliyor ve doğrulanıyor…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Paket ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} önbelleğe alınmış USDA satırı · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Güncellemeyi kontrol et',
			'localNutritionPhase4.offlineNutritionClear' => 'Yerel besin verilerini temizle',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Yerel besin verileri temizlensin mi?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Bu işlem indirilen USDA paketini ve arama önbelleğini kaldırır. Kaydedilen öğünler, kaydedilirken kullanılan tam besin anlık görüntüsünü korur.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Verileri temizle',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Yerel besin verileri indirilemedi ve doğrulanamadı: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Yerel besin verileri temizlendi',
			'watch.appTitle' => 'Calorify Saat',
			'watch.common.back' => 'Geri',
			'watch.common.cancel' => 'İptal',
			'watch.common.delete' => 'Sil',
			'watch.common.retry' => 'Tekrar dene',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Besin',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} gram',
			'watch.nutrition.protein' => 'Protein',
			'watch.nutrition.carbs' => 'Karbonhidrat',
			'watch.nutrition.fat' => 'Yağ',
			'watch.nutrition.fiber' => 'Lif',
			'watch.sync.syncWithPhone' => 'Telefonla eşitle',
			'watch.sync.syncing' => 'Eşitleniyor…',
			'watch.sync.synced' => 'Eşitlendi',
			'watch.sync.syncedJustNow' => 'Az önce eşitlendi',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => '${minutes}dk önce eşitlendi',
			'watch.sync.failed' => 'Eşitleme başarısız',
			'watch.sync.phoneDisconnected' => 'Telefon bağlantısı kesildi',
			'watch.sync.tapToSync' => 'Eşitlemek için dokun',
			'watch.sync.refreshFailed' => 'Yenilenemedi. Telefonunuzu kontrol edin.',
			'watch.sync.openPhone' => 'Telefonunuzda Calorify\'i açın, ardından yenileye dokunun.',
			'watch.home.today' => 'Bugün',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} kalori tüketildi, hedef ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} hedefin üzerinde',
			'watch.home.remaining' => ({required Object calories}) => '${calories} kaldı',
			'watch.home.left' => ({required Object calories}) => '${calories} kaldı',
			'watch.home.goal' => ({required Object calories}) => '${calories} kcal hedef',
			'watch.home.logMeal' => 'Yemek kaydet',
			'watch.home.todayMeals' => 'Bugünün yemekleri',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Bugünün yemekleri, ${count}',
			'watch.home.viewMore' => ({required Object count}) => '${count} tane daha görüntüle',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} yemek daha, hepsini görüntülemek için dokun',
			'watch.home.noMeals' => 'Yemek kaydı yok',
			'watch.home.noMealsSemantics' => 'Bugün yemek kaydı yok',
			'watch.home.tapLog' => 'Başlamak için Kaydet\'e dokun',
			'watch.home.removedFromQueue' => 'Yemek çevrimdışı kuyruğundan kaldırıldı.',
			'watch.home.removedOffline' => 'Yemek çevrimdışı olarak kaldırıldı. Telefonunuz yeniden bağlandığında eşitlenecek.',
			'watch.home.deleteFailed' => 'Yemek silinemedi',
			'watch.history.title' => 'Bugünün yemekleri',
			'watch.history.refresh' => 'Yemekleri yenile',
			'watch.history.loadFailed' => 'Yemekler yüklenemedi',
			'watch.history.syncFailed' => 'Eşitlenemedi',
			'watch.history.emptyTitle' => 'Henüz yemek yok',
			'watch.history.emptyMessage' => 'Burada görmek için Ana ekrandan bir yemek kaydedin.',
			'watch.favorites.title' => 'Favoriler',
			'watch.favorites.refresh' => 'Favorileri yenile',
			'watch.favorites.loadFailed' => 'Favoriler yüklenemedi',
			'watch.favorites.syncFailed' => 'Eşitlenemedi',
			'watch.favorites.emptyTitle' => 'Henüz favori yok',
			'watch.favorites.emptyMessage' => 'Telefon uygulamasında yemekleri yıldızlayın; burada tek dokunuşla kaydedebilirsiniz.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} kalori. Kaydetmek için dokun.',
			'watch.favorites.logged' => ({required Object name}) => '${name} kaydedildi!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} çevrimdışı olarak kaydedildi. Telefonunuz tekrar bağlandığında eşitlenecek.',
			'watch.favorites.saveFailed' => 'Yemek kaydedilemedi. Lütfen tekrar deneyin.',
			'watch.favorites.log' => 'Kaydet',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kalori, ${time}\'de kaydedildi.',
			'watch.meal.longPressDelete' => 'Silmek için uzun basın.',
			'watch.meal.deleteTitle' => 'Yemeği sil?',
			'watch.voice.title' => 'Sesle yemek kaydı',
			'watch.voice.processing' => 'Yemeğiniz kontrol ediliyor…',
			'watch.voice.processingDescription' => 'Porsiyon ve besin değerleri tahmin ediliyor',
			'watch.voice.listening' => 'Dinliyor',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}sn',
			'watch.voice.stop' => 'Kaydı durdur',
			'watch.voice.start' => 'Kaydı başlatmak için dokun',
			'watch.voice.starting' => 'Mikrofon başlatılıyor…',
			'watch.voice.prompt' => 'Dokun, sonra yemeğini tarif et',
			'watch.voice.tapToRetry' => 'Tekrar denemek için dokun',
			'watch.voice.example' => 'Örneğin “2 roti ile dal”',
			'watch.voice.unavailable' => 'Ses girişi kullanılamıyor. Saat ayarlarında mikrofon iznini kontrol edin.',
			'watch.voice.didNotStart' => 'Mikrofon başlamadı. Tekrar denemek için dokun.',
			'watch.voice.startFailed' => 'Kayıt başlatılamadı. Mikrofon izinlerini kontrol edin.',
			'watch.voice.allowMicrophone' => 'Yemekleri sesle kaydetmek için mikrofon erişimine izin verin.',
			'watch.voice.needsConnection' => 'Ses tanıma bağlantı gerektirir. Tekrar denemek için dokun.',
			'watch.voice.microphoneUnavailable' => 'Mikrofon kullanılamıyor. Tekrar denemek için dokun.',
			'watch.voice.microphoneBusy' => 'Mikrofon meşgul. Biraz bekleyip tekrar deneyin.',
			'watch.voice.languageUnsupported' => 'Ses girişi saatinizin dilini desteklemiyor.',
			'watch.voice.temporarilyBusy' => 'Ses girişi geçici olarak meşgul. Biraz bekleyip tekrar deneyin.',
			'watch.voice.notRecognized' => 'Yakalayamadım. Mikrofon simgesine dokunup tekrar deneyin.',
			'watch.voice.noSpeech' => 'Konuşma algılanmadı. Tekrar denemek için mikrofona dokunun.',
			'watch.voice.analysisFailed' => 'Analiz başarısız oldu. Lütfen tekrar deneyin.',
			'watch.voice.mealNotIdentified' => 'Bu yemeği tanımlayamadım. Farklı şekilde tarif etmeyi deneyin.',
			'watch.result.title' => 'Yemek ayrıntıları',
			'watch.result.savedOffline' => 'Çevrimdışı kaydedildi',
			'watch.result.logged' => 'Kaydedildi!',
			'watch.result.mealFound' => 'Yemek bulundu',
			'watch.result.estimatedEnergy' => 'Tahmini enerji',
			'watch.result.logMeal' => 'Yemeği kaydet',
			'watch.result.logging' => 'Kaydediliyor…',
			'watch.result.logAnother' => 'Bir tane daha kaydet',
			'watch.result.goingBack' => 'Geri dönülüyor…',
			'watch.result.savedOfflineMessage' => 'Yemek çevrimdışı kaydedildi. Telefonunuz tekrar bağlandığında eşitlenecek.',
			'watch.result.saveFailed' => 'Yemek kaydedilemedi. Lütfen tekrar deneyin.',
			'common.betaTag' => 'Beta',
			'common.close' => 'Kapat',
			'common.kContinue' => 'Devam',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel} hoşunuza gidiyor mu?',
			'feedbackRating.yes' => 'Evet, hoşuma gidiyor',
			'feedbackRating.no' => 'Pek değil',
			'feedbackRating.rateStepHeading' => 'Play Store\'da oy verin',
			'feedbackRating.emailStepHeading' => 'E-posta ile geri bildirim gönder',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Kısa bir değerlendirme, diğerlerinin ${appLabel}\'i bulmasına yardımcı olur ve geliştirmeyi sürdürür. Bir dakikanızı ayırıp bir yorum bırakır mısınız?',
			'feedbackRating.shareFeedbackViaEmail' => 'Geri bildiriminiz gelecekleri şekillendirir — her mesajı okuyoruz. Düşüncelerinizi e-posta ile paylaşmak ister misiniz?',
			'feedbackRating.rateCta' => 'Play Store\'da oy ver',
			'feedbackRating.maybeLater' => 'Belki sonra',
			'feedbackRating.sendFeedback' => 'Geri bildirimi gönder',
			'feedbackRating.noThanks' => 'Hayır, teşekkürler',
			'feedbackRating.aboutUsDescription' => 'Özenle hazırlanmış küçük bir ekip tarafından yapıldı. Gizlilik, sadelik ve daha iyi yeme alışkanlıkları oluşturmanıza yardımcı olmaya odaklanıyoruz.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '${appLabel} arkasında kimlerin olduğunu merak mı ediyorsunuz? Bakın ',
			'feedbackRating.aboutUsLinkLabel' => 'Hakkımızda',
			'feedbackRating.thankYouMessage' => 'Teşekkürler! Başka bir zaman tekrar soracağız.',
			'health.syncFailed' => 'Health Connect ile senkronize edilemedi',
			'health.mealSynced' => 'Öğün Health Connect ile senkronize edildi',
			_ => null,
		};
	}
}
