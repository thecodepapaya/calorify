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
class TranslationsTr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsTr _root = this; // ignore: unused_field

	@override 
	TranslationsTr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTr(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Türkçe';
	@override String get flag => '🇹🇷';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsTr errors = _TranslationsErrorsTr._(_root);
	@override late final _TranslationsOnboardingTr onboarding = _TranslationsOnboardingTr._(_root);
	@override late final _TranslationsTabsTr tabs = _TranslationsTabsTr._(_root);
	@override late final _TranslationsHomeTr home = _TranslationsHomeTr._(_root);
	@override late final _TranslationsHistoryTr history = _TranslationsHistoryTr._(_root);
	@override late final _TranslationsMealTr meal = _TranslationsMealTr._(_root);
	@override late final _TranslationsFavoritesTr favorites = _TranslationsFavoritesTr._(_root);
	@override late final _TranslationsProfileTr profile = _TranslationsProfileTr._(_root);
	@override late final _TranslationsHealthScoreTr healthScore = _TranslationsHealthScoreTr._(_root);
	@override late final _TranslationsEditProfileTr editProfile = _TranslationsEditProfileTr._(_root);
	@override late final _TranslationsSettingsTr settings = _TranslationsSettingsTr._(_root);
	@override late final _TranslationsRemindersTr reminders = _TranslationsRemindersTr._(_root);
	@override late final _TranslationsNotificationsTr notifications = _TranslationsNotificationsTr._(_root);
	@override late final _TranslationsLoginTr login = _TranslationsLoginTr._(_root);
	@override late final _TranslationsDisclaimerTr disclaimer = _TranslationsDisclaimerTr._(_root);
	@override late final _TranslationsCommonTr common = _TranslationsCommonTr._(_root);
	@override late final _TranslationsFeedbackRatingTr feedbackRating = _TranslationsFeedbackRatingTr._(_root);
	@override late final _TranslationsHealthTr health = _TranslationsHealthTr._(_root);
}

// Path: errors
class _TranslationsErrorsTr implements TranslationsErrorsEn {
	_TranslationsErrorsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Çok fazla istek yaptınız. Lütfen tekrar denemeden önce biraz bekleyin.';
	@override String get networkError => 'Ağ hatası. Lütfen internet bağlantınızı kontrol edin.';
	@override String get unknownError => 'Bir şeyler ters gitti. Lütfen daha sonra tekrar deneyin.';
	@override String get loadingProfileData => 'Profil verileri yüklenirken hata';
	@override String get somethingWentWrong => 'Bir şeyler ters gitti.';
	@override String get retry => 'Tekrar dene';
}

// Path: onboarding
class _TranslationsOnboardingTr implements TranslationsOnboardingEn {
	_TranslationsOnboardingTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel}\'ye hoş geldiniz';
	@override String get subtitle => 'AI ile güçlendirilmiş kişisel beslenme danışmanınız';
	@override String get getStarted => 'Başlayın';
	@override late final _TranslationsOnboardingFeaturesTr features = _TranslationsOnboardingFeaturesTr._(_root);
	@override late final _TranslationsOnboardingGenderTr gender = _TranslationsOnboardingGenderTr._(_root);
	@override late final _TranslationsOnboardingHeightTr height = _TranslationsOnboardingHeightTr._(_root);
	@override late final _TranslationsOnboardingWeightTr weight = _TranslationsOnboardingWeightTr._(_root);
	@override late final _TranslationsOnboardingAgeTr age = _TranslationsOnboardingAgeTr._(_root);
	@override late final _TranslationsOnboardingBmiScaleTr bmiScale = _TranslationsOnboardingBmiScaleTr._(_root);
	@override late final _TranslationsOnboardingWeightGoalTr weightGoal = _TranslationsOnboardingWeightGoalTr._(_root);
	@override late final _TranslationsOnboardingActivityLevelTr activityLevel = _TranslationsOnboardingActivityLevelTr._(_root);
	@override late final _TranslationsOnboardingHealthConnectTr healthConnect = _TranslationsOnboardingHealthConnectTr._(_root);
	@override late final _TranslationsOnboardingReinforcementTr reinforcement = _TranslationsOnboardingReinforcementTr._(_root);
}

// Path: tabs
class _TranslationsTabsTr implements TranslationsTabsEn {
	_TranslationsTabsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Gösterge Tablosu';
	@override String get history => 'Geçmiş';
}

// Path: home
class _TranslationsHomeTr implements TranslationsHomeEn {
	_TranslationsHomeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryTr aiSummary = _TranslationsHomeAiSummaryTr._(_root);
	@override late final _TranslationsHomeDailyGoalTr dailyGoal = _TranslationsHomeDailyGoalTr._(_root);
	@override late final _TranslationsHomeDailySummaryTr dailySummary = _TranslationsHomeDailySummaryTr._(_root);
	@override late final _TranslationsHomeIntakeProgressTr intakeProgress = _TranslationsHomeIntakeProgressTr._(_root);
	@override late final _TranslationsHomeIntakeHistoryTr intakeHistory = _TranslationsHomeIntakeHistoryTr._(_root);
	@override late final _TranslationsHomeMealLogTr mealLog = _TranslationsHomeMealLogTr._(_root);
	@override late final _TranslationsHomeMealDescriptionTr mealDescription = _TranslationsHomeMealDescriptionTr._(_root);
	@override late final _TranslationsHomeFavoriteMealsTr favoriteMeals = _TranslationsHomeFavoriteMealsTr._(_root);
	@override late final _TranslationsHomeMealSnapTr mealSnap = _TranslationsHomeMealSnapTr._(_root);
	@override late final _TranslationsHomeConnectHealthTr connectHealth = _TranslationsHomeConnectHealthTr._(_root);
}

// Path: history
class _TranslationsHistoryTr implements TranslationsHistoryEn {
	_TranslationsHistoryTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Yemek kaydı yok';
	@override String get emptyMessage => 'Son yemeğinizin fotoğrafını çekin ve burada kaydedin.';
	@override String get today => 'Bugün';
	@override String get yesterday => 'Dün';
}

// Path: meal
class _TranslationsMealTr implements TranslationsMealEn {
	_TranslationsMealTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Ah hayır!';
	@override String get delete => 'Sil';
	@override String get editMeal => 'Yemeği Düzenle';
	@override String get addMeal => 'Yemek Ekle';
	@override String get saveMeal => 'Yemeği Kaydet';
	@override String get save => 'Kaydet';
	@override String get mealName => 'Yemek Adı';
	@override String get mealNameHint => 'örn. Çırpılmış yumurta ve tost';
	@override String get mealQuantity => 'Yemek Miktarı';
	@override String get mealQuantityHint => 'Örneğin, 1 kase, 2 dilim';
	@override String get timeOfMeal => 'Yemeğin Zamanı';
	@override String get timeOfMealHint => 'Yemeğinizi yediğiniz zamanı seçin';
	@override String get mealType => 'Yemek Türü';
	@override late final _TranslationsMealNutritionTr nutrition = _TranslationsMealNutritionTr._(_root);
	@override late final _TranslationsMealDeleteConfirmationTr deleteConfirmation = _TranslationsMealDeleteConfirmationTr._(_root);
	@override String get addedToLog => 'Yemek kaydınıza eklendi!';
	@override String couldNotAdd({required Object error}) => 'Yemek eklenemedi: ${error}';
	@override String get savedSuccessfully => 'Öğün başarıyla eklendi!';
	@override String get updatedSuccessfully => 'Öğün başarıyla güncellendi!';
	@override String errorSaving({required Object error}) => 'Öğün kaydedilirken hata oluştu: ${error}';
	@override String get removedFromFavorites => 'Favorilerden çıkarıldı!';
	@override String get savedAsFavorite => 'Yemek favori olarak kaydedildi!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Favori güncellenemedi: ${error}';
	@override String failedToProcess({required Object error}) => 'İşlem gerçekleştirilemedi: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Görüntü işlenemedi: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Görüntü sıkıştırırken hata: ${error}';
	@override String get failedToSave => 'Veri kaydedilemedi. Lütfen tekrar deneyin.';
	@override String get skip => 'Atla';
	@override late final _TranslationsMealVariationTr variation = _TranslationsMealVariationTr._(_root);
}

// Path: favorites
class _TranslationsFavoritesTr implements TranslationsFavoritesEn {
	_TranslationsFavoritesTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoriler';
	@override String get empty => 'Henüz favori yemek yok.';
}

// Path: profile
class _TranslationsProfileTr implements TranslationsProfileEn {
	_TranslationsProfileTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Profil verisi bulunamadı';
	@override String get yourProfile => 'Profiliniz';
	@override String get viewAndManage => 'Sağlık bilgilerinizi görüntüleyin ve yönetin';
	@override late final _TranslationsProfileSectionsTr sections = _TranslationsProfileSectionsTr._(_root);
	@override String get gender => 'Cinsiyet';
	@override String get height => 'Boy';
	@override String get weight => 'Kilo';
	@override String get age => 'Yaş';
	@override String get weightGoal => 'Kilo Hedefi';
	@override String get targetWeight => 'Hedef Ağırlık';
	@override String get activityLevel => 'Aktivite Seviyesi';
	@override String get healthMetrics => 'Sağlık Metrikleri';
	@override String get notSet => 'Ayarlanmadı';
	@override String get years => 'yıl';
	@override String get updatedSuccessfully => 'Profil başarıyla güncellendi!';
	@override late final _TranslationsProfileCalculatedValuesTr calculatedValues = _TranslationsProfileCalculatedValuesTr._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreTr implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sağlık Skoru';
	@override String get whyThisScore => 'Bu puan neden?';
	@override String get note => 'Bu puan, tanımlanan bileşenler ve beslenme yoğunluğuna dayanan bir AI tahminidir. Her zaman bir profesyonelle diyet tavsiyesi için danışın.';
	@override String get unhealthy => 'Sağlıksız';
	@override String get healthy => 'Sağlıklı';
	@override String get neutral => 'Tarafsız';
}

// Path: editProfile
class _TranslationsEditProfileTr implements TranslationsEditProfileEn {
	_TranslationsEditProfileTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profili Düzenle';
	@override late final _TranslationsEditProfileSectionsTr sections = _TranslationsEditProfileSectionsTr._(_root);
	@override String get gender => 'Cinsiyet';
	@override String get dateOfBirth => 'Doğum Tarihi';
	@override String get height => 'Boy';
	@override String get weight => 'Kilo';
	@override String get weightGoal => 'Kilo Hedefi';
	@override String get activityLevel => 'Aktivite Seviyesi';
	@override String get metric => 'Metrekes';
	@override String get imperial => 'İngilizce';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metrekes (cm)';
	@override String get imperialFtIn => 'İngilizce (ft/in)';
	@override String get metricKg => 'Metrekes (kg)';
	@override String get imperialLbs => 'İngilizce (lbs)';
	@override late final _TranslationsEditProfileGendersTr genders = _TranslationsEditProfileGendersTr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsTr weightGoals = _TranslationsEditProfileWeightGoalsTr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsTr activityLevels = _TranslationsEditProfileActivityLevelsTr._(_root);
}

// Path: settings
class _TranslationsSettingsTr implements TranslationsSettingsEn {
	_TranslationsSettingsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ayarlar';
	@override late final _TranslationsSettingsSectionsTr sections = _TranslationsSettingsSectionsTr._(_root);
	@override late final _TranslationsSettingsEditProfileTr editProfile = _TranslationsSettingsEditProfileTr._(_root);
	@override late final _TranslationsSettingsLanguageTr language = _TranslationsSettingsLanguageTr._(_root);
	@override late final _TranslationsSettingsHeightUnitTr heightUnit = _TranslationsSettingsHeightUnitTr._(_root);
	@override late final _TranslationsSettingsWeightUnitTr weightUnit = _TranslationsSettingsWeightUnitTr._(_root);
	@override late final _TranslationsSettingsMealRemindersTr mealReminders = _TranslationsSettingsMealRemindersTr._(_root);
	@override late final _TranslationsSettingsThemeTr theme = _TranslationsSettingsThemeTr._(_root);
	@override late final _TranslationsSettingsSendFeedbackTr sendFeedback = _TranslationsSettingsSendFeedbackTr._(_root);
	@override late final _TranslationsSettingsClearAllDataTr clearAllData = _TranslationsSettingsClearAllDataTr._(_root);
	@override late final _TranslationsSettingsDebugOptionsTr debugOptions = _TranslationsSettingsDebugOptionsTr._(_root);
	@override String get developerModeEnabled => 'Geliştirici modu etkinleştirildi!';
	@override late final _TranslationsSettingsHealthConnectTr healthConnect = _TranslationsSettingsHealthConnectTr._(_root);
	@override late final _TranslationsSettingsAboutTr about = _TranslationsSettingsAboutTr._(_root);
	@override late final _TranslationsSettingsAppInfoTr appInfo = _TranslationsSettingsAppInfoTr._(_root);
}

// Path: reminders
class _TranslationsRemindersTr implements TranslationsRemindersEn {
	_TranslationsRemindersTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hatırlatıcılarla doğru yolda kalın';
	@override String get description => 'Yemeklerinizi kaydetmek ve beslenme hedeflerinize sadık kalmak için nazik hatırlatmalar alın';
	@override String get notificationsEnabled => 'Bildirimler Etkinleştirildi';
	@override String get notificationsDisabled => 'Bildirimler Devre Dışı';
	@override String get enabledSubtitle => 'Yemek hatırlatmalarını alacaksınız';
	@override String get disabledSubtitle => 'Yemek hatırlatmaları almak için bildirimleri etkinleştirin';
	@override String get mealReminders => 'Yemek Hatırlatmaları';
	@override String get breakfast => 'Kahvaltı';
	@override String get lunch => 'Öğle';
	@override String get dinner => 'Akşam';
	@override String get snack => 'Atıştırmalık';
	@override String get unknown => 'Bilinmiyor';
	@override String get change => 'Değiştir';
	@override String get enableNotifications => 'Bildirimleri Etkinleştir';
	@override String get skipForNow => 'Şu an için atla';
	@override String get saveChanges => 'Değişiklikleri Kaydet';
	@override String get enabledSuccessfully => 'Bildirimler başarıyla etkinleştirildi!';
	@override String get permissionDenied => 'Bildirim izni reddedildi';
	@override String errorEnabling({required Object error}) => 'Bildirimleri etkinleştirirken hata: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Kurulum tamamlanırken hata: ${error}';
}

// Path: notifications
class _TranslationsNotificationsTr implements TranslationsNotificationsEn {
	_TranslationsNotificationsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastTr breakfast = _TranslationsNotificationsBreakfastTr._(_root);
	@override late final _TranslationsNotificationsLunchTr lunch = _TranslationsNotificationsLunchTr._(_root);
	@override late final _TranslationsNotificationsDinnerTr dinner = _TranslationsNotificationsDinnerTr._(_root);
	@override late final _TranslationsNotificationsSnackTr snack = _TranslationsNotificationsSnackTr._(_root);
	@override late final _TranslationsNotificationsTestTr test = _TranslationsNotificationsTestTr._(_root);
}

// Path: login
class _TranslationsLoginTr implements TranslationsLoginEn {
	_TranslationsLoginTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Giriş Yap';
	@override String get signInWithGoogle => 'Google ile giriş yap';
	@override String get signInFailed => 'Google Girişi başarısız oldu veya iptal edildi.';
}

// Path: disclaimer
class _TranslationsDisclaimerTr implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Lütfen Dikkate Alın';
	@override late final _TranslationsDisclaimerSnapTr snap = _TranslationsDisclaimerSnapTr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateTr weightEstimate = _TranslationsDisclaimerWeightEstimateTr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTr healthMetrics = _TranslationsDisclaimerHealthMetricsTr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureTr calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureTr._(_root);
}

// Path: common
class _TranslationsCommonTr implements TranslationsCommonEn {
	_TranslationsCommonTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get close => 'Kapat';
	@override String get kContinue => 'Devam Et';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingTr implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel} hoşunuza gidiyor mu?';
	@override String get yes => 'Evet, beğeniyorum';
	@override String get no => 'Pek değil';
	@override String get rateStepHeading => 'Play Store\'da puan verin';
	@override String get emailStepHeading => 'Geri bildirimi e-postayla gönderin';
	@override String soloDevMessage({required Object appLabel}) => 'Kısa bir değerlendirme, diğer kullanıcıların ${appLabel}\'ı keşfetmesine yardımcı olur ve geliştirmeye devam etmemizi sağlar. Birkaç dakikanızı ayırıp değerlendirme bırakır mısınız?';
	@override String get shareFeedbackViaEmail => 'Geri bildiriminiz geleceği şekillendirir — her mesajı dikkatle okuyoruz. Düşüncelerinizi e-posta ile paylaşmak ister misiniz?';
	@override String get rateCta => 'Play Store\'da puan ver';
	@override String get maybeLater => 'Belki sonra';
	@override String get sendFeedback => 'Geri bildirim gönder';
	@override String get noThanks => 'Hayır, teşekkürler';
	@override String get aboutUsDescription => 'Küçük bir ekip tarafından özenle hazırlandı. Gizliliğe, sadeliğe ve daha sağlıklı beslenme alışkanlıkları edinmenize yardımcı olmaya odaklanıyoruz.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '${appLabel}\'ın arkasında kim olduğunu merak ediyor musunuz? ';
	@override String get aboutUsLinkLabel => 'Hakkımızda';
	@override String get thankYouMessage => 'Teşekkürler! Başka bir zaman tekrar soracağız.';
}

// Path: health
class _TranslationsHealthTr implements TranslationsHealthEn {
	_TranslationsHealthTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect ile senkronize edilemedi';
	@override String get mealSynced => 'Yemek Health Connect ile senkronize edildi';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesTr implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionTr foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionTr._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisTr aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisTr._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationTr healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationTr._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderTr implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cinsiyetiniz nedir?';
	@override String get description => 'Cinsiyet, bazal metabolizma hızınızı (BMR) doğru bir şekilde hesaplamamıza yardımcı olur.';
	@override String get next => 'İleri';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightTr implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Boyunuz ne kadar?';
	@override String get description => 'Boyunuz, BMI ve enerji ihtiyaçlarınızı doğru bir şekilde hesaplamamıza yardımcı olur.';
	@override String get metric => 'Metrik';
	@override String get imperial => 'İngiliz birimi';
	@override String get next => 'İleri';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightTr implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Mevcut kilonuz nedir?';
	@override String get currentDescription => 'Mevcut kilonuz günlük hedeflerinizi kişiselleştirmek için önemlidir.';
	@override String get targetTitle => 'Hedef kilonuz nedir?';
	@override String get targetDescription => 'Bir hedef kiloyu belirlemek, uzun vadeli planınızı belirlememize yardımcı olur.';
	@override String get metric => 'Metrekes';
	@override String get imperial => 'İngilizce';
	@override String get next => 'İleri';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeTr implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Doğum gününüz ne zaman?';
	@override String get description => 'Yaşınız, kalori ihtiyaçlarınızı doğru bir şekilde hesaplamamıza yardımcı olur.';
	@override String get next => 'İleri';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleTr implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Zayıf';
	@override String get healthy => 'Sağlıklı';
	@override String get overweight => 'Kilolu';
	@override String get obese => 'Obez';
	@override late final _TranslationsOnboardingBmiScaleCategoriesTr categories = _TranslationsOnboardingBmiScaleCategoriesTr._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesTr messages = _TranslationsOnboardingBmiScaleMessagesTr._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalTr implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hedefiniz nedir?';
	@override String get description => 'Başarmak istediğinizi en iyi tanımlayan hedefi seçin';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelTr implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ne kadar aktifsiniz?';
	@override String get description => 'Bu, günlük kalori ihtiyaçlarınızı daha doğru bir şekilde hesaplamamıza yardımcı olur';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectTr implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ile Bağlan';
	@override String get description => 'Daha iyi içgörüler ve otomatik kalori takibi için sağlık verilerinizi senkronize edin';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingTr automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingTr._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsTr progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsTr._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationTr seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationTr._(_root);
	@override String get connected => 'Health Connect Bağlandı';
	@override String get notConnected => 'Health Connect Bağlı Değil';
	@override String get setup => 'Health Connect Kurulumu';
	@override String get skipForNow => 'Şu an için atla';
	@override String get statusConnected => 'Health Connect bağlı.';
	@override String get statusSuccess => 'Health Connect başarıyla bağlandı!';
	@override String statusPermissionDenied({required Object appLabel}) => 'İzin reddedildi. Lütfen ${appLabel} için telefon ayarlarınızdan Sağlık Bağlantısı izinlerini etkinleştirin.';
	@override String statusError({required Object error}) => 'Health Connect kurulurken hata: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementTr implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessTr trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessTr._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileTr healthProfile = _TranslationsOnboardingReinforcementHealthProfileTr._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleTr goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleTr._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryTr implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yapay Zeka Özetiniz';
	@override String get logMore => 'Kişiselleştirilmiş yapay zeka içgörülerinizi almak için önümüzdeki birkaç gün içinde daha fazla öğün kaydedin.';
	@override String get loading => 'Özetiniz yükleniyor...';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalTr implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Günlük Hedefinizi Belirleyin';
	@override String get titleSet => 'Günlük Hedefiniz';
	@override String get description => 'Sağlık yolculuğunuza başlamaya hazır mısınız? Aşağıda günlük kalori hedefinizi belirleyin ve ilerlemenize başlayın.';
	@override String get descriptionSet => 'Pusulanız ayarlandı! Bu günlük kalori hedefiniz, size rehberlik edecek.';
	@override String get yourGoal => 'Hedefiniz';
	@override String get goal => 'Hedef';
	@override String get dailyCalories => 'Günlük kalori (kcal)';
	@override String get setGoal => 'Hedef Belirle';
	@override String get intake => 'Alım';
	@override String get burned => 'Yakılan';
	@override String get weightImpact => 'Kilo Etkisi';
	@override String get estLoss => 'Tahmini kayıp';
	@override String get estGain => 'Tahmini kazanım';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryTr implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Günlük Özeti';
	@override String get calories => 'Kaloriler';
	@override String get carbs => 'Karbonhidratlar';
	@override String get protein => 'Protein';
	@override String get fat => 'Yağ';
	@override String get fiber => 'Lif';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Makro besinler grafiği';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressTr implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bugünün Makro Dağılımı';
	@override String get target => 'Hedef';
	@override String get current => 'Mevcut';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryTr implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '7 Günlük Makro Geçmişi';
	@override String get noHistoryYet => 'Henüz geçmiş yok';
	@override String get startLogging => 'Yemekleri kaydetmeye başlayın ve burada\n7 günlük makro eğilimlerinizi görün';
}

// Path: home.mealLog
class _TranslationsHomeMealLogTr implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kaydedilen Yemekler';
	@override String get emptyMessage => 'Son yemeğinizin fotoğrafını çekin ve burada kaydedin.';
	@override String get noMealsToday => 'Bugün kaydedilmiş yemek yok';
	@override String get seeAllMeals => 'Tüm yemekleri gör';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionTr implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI ile Hızlı Ekle';
	@override String get description => 'Yemeğinizi tanımlayın, AI detaylarla ilgilensin.';
	@override String get hint => 'Örneğin, kahvaltıda bir koca kase yulaf ezmesi, dilimlenmiş muz ve bir ölçek whey protein yedim ...';
	@override String get analyzeMeal => 'Yemeği analiz et';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsTr implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favori Yemekler';
	@override String get description => 'Favori yemeklerinizden birini hızlıca ekleyin.';
	@override String get noFavorites => 'Henüz favori yemek yok.';
	@override String get addFavoriteHint => 'Favori olarak işaretlemek için bir yemeğin üzerine yıldızı tıklayın.';
	@override String get seeAll => 'Hepsini Gör';
	@override String get add => 'Ekle';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapTr implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yemeğinizi Yakala ve Takip Et';
	@override String get description => 'AI analizi için yiyeceklerinizin fotoğrafını çekmek üzere kameranızı kullanın.';
	@override String get openCamera => 'Kamerayı Aç';
	@override String get gallery => 'Galeri';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthTr implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ile Senkronize Ol';
	@override String get description => 'Beslenme verilerinizi Health Connect ile senkronize edin';
	@override String get install => 'Kur';
	@override String get connect => 'Bağlan';
}

// Path: meal.nutrition
class _TranslationsMealNutritionTr implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kaloriler';
	@override String get carbs => 'Karbonhidratlar (g)';
	@override String get protein => 'Protein (g)';
	@override String get fat => 'Yağ (g)';
	@override String get fiber => 'Lif (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationTr implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yemeği Sil';
	@override String get message => 'Bu yemek kaydını silmek istediğinize emin misiniz?';
	@override String get cancel => 'İptal';
	@override String get delete => 'Sil';
}

// Path: meal.variation
class _TranslationsMealVariationTr implements TranslationsMealVariationEn {
	_TranslationsMealVariationTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Soru ${current} / ${total}';
	@override String get noVariationsAvailable => 'Hiç varyasyon bulunamadı';
}

// Path: profile.sections
class _TranslationsProfileSectionsTr implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFİL';
	@override String get basicInformation => 'TEMEL BİLGİLER';
	@override String get goalsAndActivity => 'HEDEFLER VE FAALİYETLER';
	@override String get calculatedValues => 'HESAPLANAN DEĞERLER';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesTr implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Günlük Hedef';
	@override String get calPerDay => 'kal/gün';
	@override String get notAvailable => 'YOK';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsTr implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'KİŞİSEL BİLGİLER';
	@override String get physicalMeasurements => 'FİZİKSEL ÖLÇÜMLER';
	@override String get goalsAndActivity => 'HEDEFLER VE FAALİYETLER';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersTr implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get male => 'Erkek';
	@override String get female => 'Kadın';
	@override String get other => 'Diğer';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsTr implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightTr loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightTr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightTr maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightTr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightTr gainWeight = _TranslationsEditProfileWeightGoalsGainWeightTr._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsTr implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryTr sedentary = _TranslationsEditProfileActivityLevelsSedentaryTr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveTr lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveTr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveTr moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveTr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveTr veryActive = _TranslationsEditProfileActivityLevelsVeryActiveTr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveTr extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveTr._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsTr implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFİL';
	@override String get localization => 'YERELLEŞTİRME';
	@override String get notifications => 'BİLDİRİMLER';
	@override String get healthConnect => 'SAĞLIK BAĞLANTISI';
	@override String get supportAndLegal => 'DESTEK & YASAL';
	@override String get about => 'HAKKINDA';
	@override String get dangerZone => 'TEHLİKE BÖLGESİ';
	@override String get developer => 'GELİŞTİRİCİ';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileTr implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profili Düzenle';
	@override String get subtitle => 'Kişisel bilgilerinizi güncelleyin';
}

// Path: settings.language
class _TranslationsSettingsLanguageTr implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dil';
	@override String get subtitle => 'Tercih ettiğiniz dili seçin';
	@override String get searchHint => 'Dilleri ara...';
	@override String get noResults => 'Sonuç bulunamadı';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitTr implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Boy Birimi';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitTr implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kilo Birimi';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersTr implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yemek Hatırlatıcıları';
	@override String get subtitle => 'Zamanında uyarılarla doğru yolda kalın';
}

// Path: settings.theme
class _TranslationsSettingsThemeTr implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Açık';
	@override String get dark => 'Koyu';
	@override String get system => 'Sistem';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackTr implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Geri Bildirim Gönder';
	@override String subtitle({required Object appLabel}) => '${appLabel}\'yi geliştirmemize yardımcı olun';
	@override String emailSubject({required Object appLabel}) => '${appLabel} Uygulaması Geri Bildirimi';
	@override String get emailBodyPrefix => 'Lütfen geri bildiriminizi aşağıda belirtin:';
	@override String get appVersion => 'Uygulama Versiyonu';
	@override String get device => 'Cihaz';
	@override String get osVersion => 'İşletim Sistemi Versiyonu';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataTr implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tüm Verileri Temizle';
	@override String get subtitle => 'Tüm bilgilerinizi geri döndürülemez bir şekilde silin';
	@override String get confirmationTitle => 'Tüm Verileri Temizle?';
	@override String get confirmationMessage => 'Bu işlem geri alınamaz. Tüm kaydedilmiş yemekleriniz, favorileriniz ve profil ayarlarınız kalıcı olarak silinecektir.';
	@override String get cancel => 'İptal';
	@override String get clearEverything => 'Her Şeyi Temizle';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsTr implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hata Ayıklama Seçenekleri';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectTr implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sağlık Bağlantısı';
	@override String get subtitle => 'İzinleri görüntüleyin ve yönetin';
	@override late final _TranslationsSettingsHealthConnectUnavailableTr unavailable = _TranslationsSettingsHealthConnectUnavailableTr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsTr permissions = _TranslationsSettingsHealthConnectPermissionsTr._(_root);
	@override String get managePermissions => 'İzinleri Yönet';
	@override String get openSettings => 'Sağlık Bağlantısı Ayarlarını Aç';
	@override String get requestPermissions => 'İzinleri Talep Et';
	@override String get permissionRequestCancelledOrFailed => 'İzin talebi iptal edildi veya başarısız oldu. Lütfen tekrar deneyin veya izinleri Manuel olarak Sağlık Bağlantısı ayarlarında verin.';
	@override String get permissionRequestFailed => 'İzinleri talep edemiyorum. Lütfen tekrar deneyin veya izinleri Manuel olarak Sağlık Bağlantısı ayarlarında verin.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutTr implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hakkında';
	@override String get tagline => 'Hızlı, ücretsiz ve gizlilik odaklı kalori farkındalığı';
	@override late final _TranslationsSettingsAboutOurStoryTr ourStory = _TranslationsSettingsAboutOurStoryTr._(_root);
	@override late final _TranslationsSettingsAboutPrivacyTr privacy = _TranslationsSettingsAboutPrivacyTr._(_root);
	@override late final _TranslationsSettingsAboutDeveloperTr developer = _TranslationsSettingsAboutDeveloperTr._(_root);
	@override late final _TranslationsSettingsAboutFeedbackTr feedback = _TranslationsSettingsAboutFeedbackTr._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoTr implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Yapı ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastTr implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kahvaltı Zamanı! 🍳';
	@override String get body => 'Kahvaltınızı kaydetmeyi unutmayın';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchTr implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Öğle Zamanı! 🥗';
	@override String get body => 'Öğle yemeğinizi kaydetme zamanı';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerTr implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Akşam Yemeği Zamanı! 🍽️';
	@override String get body => 'Akşam yemeğinizi kaydetmeyi unutmayın';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackTr implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Atıştırmalık Zamanı! 🍎';
	@override String get body => 'Sağlıklı bir atıştırmalık zamanı';
}

// Path: notifications.test
class _TranslationsNotificationsTestTr implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Test Bildirimi';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapTr implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel}, tahmini besin bilgileri sağlar. Doğruluk, girdiğiniz bilgilere ve gıda çeşitliliklerine bağlıdır. Rehber olarak kullanın, kesin bir kaynak olarak değil. Kişisel diyet tavsiyesi için bir uzmana danışın.';
	@override late final _TranslationsDisclaimerSnapPortionSizeTr portionSize = _TranslationsDisclaimerSnapPortionSizeTr._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsTr preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsTr._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsTr ingredients = _TranslationsDisclaimerSnapIngredientsTr._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsTr databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsTr._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateTr implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kilo Tahmini Hakkında';
	@override String get description => 'Proje edilen kilo değişikliği, basit kalori-giriş vs. kalori-çıkış modeline dayanan bir teorik tahmindir. Bu sadece motivasyonel rehberlik içindir, gerçek kilonuzu tahmin etmek için değil.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyTr calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyTr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsTr biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsTr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightTr waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightTr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTr professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTr._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsTr implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get description => 'Bu metrikler, vücudunuzun enerji ihtiyaçlarını anlamanıza ve beslenme hedeflerinizi yönlendirmenize yardımcı olur.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrTr bmr = _TranslationsDisclaimerHealthMetricsBmrTr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeTr tdee = _TranslationsDisclaimerHealthMetricsTdeeTr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalTr dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalTr._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureTr implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalori harcaması tahmini';
	@override String get description => 'Health Connect verileri kullanılamadığında, bugünkü yakılan kaloriyi Bazal Metabolizma Hızınız (BMR) ve aktivite seviyeniz (TDEE) kullanarak, günün geçen bölümüne göre ölçekleyerek tahmin ederiz.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedTr howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedTr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTr professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTr._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionTr implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Akıllı Gıda Tanıma';
	@override String get description => 'Bir fotoğraf çekin ve AI\'nın yemeğinizi tanımasına izin verin';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisTr implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI Analizi';
	@override String get description => 'Tanımlarınızdan anlık beslenme bilgileri alın';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationTr implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sağlık Entegrasyonu';
	@override String get description => 'Daha iyi içgörüler için Health Connect ile bağlanın';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesTr implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Zayıf';
	@override String get healthyWeight => 'Sağlıklı ağırlık';
	@override String get overweight => 'Kilolu';
	@override String get obese => 'Obez';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesTr implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Dengeli bir kiloya ulaşmak için sağlıklı besinlerle bir plan oluşturmanıza yardımcı olabiliriz.';
	@override String get healthy => 'Harika bir iş çıkardınız! Sağlıklı bir aralıktasınız. Enerjinizi ve canlılığınızı korumanıza yardımcı olacağız.';
	@override String overweight({required Object appLabel}) => '${appLabel}, AI destekli takibiyle hedefinize ulaşmanızı kolaylaştıracak.';
	@override String get obese => 'Sağlık hedefleriniz için kişiselleştirilmiş rehberlik ve sürdürülebilir stratejilerle destek olmak için buradayız.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingTr implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Otomatik Kalori Takibi';
	@override String get description => 'Fitness uygulamalarınızdan yaktığınız kalorileri takip edin';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsTr implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'İlerleme İçgörüleri';
	@override String get description => 'Sağlık eğilimleriniz hakkında detaylı içgörüler alın';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationTr implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sorunsuz Entegrasyon';
	@override String get description => 'En sevdiğiniz sağlık uygulamalarından verileri senkronize edin';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessTr implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yalnız Değilsiniz';
	@override String get genericMessage => 'Araştırmalar, sürekli takibin uzun vadeli başarının en önemli belirleyicisi olduğunu gösteriyor.';
	@override String personalizedMessage({required Object goal, required Object gender, required Object age}) => '${goal} hedefini ulaşmak isteyen ${gender} bir ${age} yaşındaki biri için, sürekli takip başarı için en önemli belirleyicidir.';
	@override String closingMessage({required Object appLabel}) => '${appLabel}, bunu manuel olarak yapmaktan 10 kat daha kolay hale getiriyor.';
	@override String get getStartedTitle => 'Başlamaya hazır mısın?';
	@override String get tipPhoto => 'Anında analiz için yemeklerinin fotoğrafını çek';
	@override String get tipConsistency => 'Anlamlı ilerleme görmek için düzenli kaydet';
	@override String get tipProgress => 'Motivasyonunu korumak için ilerlemeni her gün takip et';
	@override String get button => 'Hadi Gidelim';
	@override String get defaultGender => 'birey';
	@override String get defaultGoal => 'daha sağlıklı bir siz';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileTr implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sağlık Profiliniz';
	@override String bmiDescription({required Object bmi}) => 'Ölçümlerinize dayalı olarak, BMI\'niz ${bmi}.';
	@override String get finalizeDescription => 'Deneyiminizi kişiselleştirmek için profilinizi sonlandıralım.';
	@override String get goalGain => 'kazan';
	@override String get goalLose => 'kaybet';
	@override String goalReach({required Object diff, required Object unit, required Object direction}) => 'Hedefinize ulaşmak için ${diff} ${unit} ${direction} yapmalısın.';
	@override String get goalReached => 'Hedef kilonuzdasınız! Bunu korumanıza yardımcı olacağız.';
	@override String get button => 'Hadi Gidelim';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleTr implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mükemmel Bir Başlangıç!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => '${goalText} yönünde ilk adımı attınız. ${activityText} olduğunuz için, ${appLabel} hedeflerinizi yaşam tarzınıza uyacak şekilde ayarlayacak.';
	@override String get personalizedTargets => 'Kişiselleştirilmiş kalori hedefleri';
	@override String get aiMealDetection => 'AI destekli yemek tespiti';
	@override String get macroBreakdowns => 'Detaylı makro besin dağılımları';
	@override String get button => 'Hadi Gidelim';
	@override String get defaultGoal => 'hedeflerin';
	@override String get defaultActivity => 'aktif';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightTr implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kilo Kaybet';
	@override String get description => 'Kilo kaybetmek için kalori açığı oluşturun';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightTr implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kilo Koruma';
	@override String get description => 'Mevcut kilonuzu koruyun';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightTr implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kilo Kazan';
	@override String get description => 'Kilo almak için kalori fazlası oluşturun';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryTr implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hareketsiz';
	@override String get description => 'Az veya hiç egzersiz yok';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveTr implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hafif Aktif';
	@override String get description => 'Haftada 1-3 gün hafif egzersiz';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveTr implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Orta Derecede Aktif';
	@override String get description => 'Haftada 3-5 gün orta düzeyde egzersiz';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveTr implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Çok Aktif';
	@override String get description => 'Haftada 6-7 gün yoğun egzersiz';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveTr implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Aşırı Aktif';
	@override String get description => 'Çok zor bir egzersiz, fiziksel iş';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableTr implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sağlık Bağlantısı Kullanılamıyor';
	@override String get description => 'Sağlık Bağlantısı bu cihazda kullanılamıyor. Android 14 veya sonrası gerekmektedir.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsTr implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'İzinler';
	@override String get description => 'Sağlık Bağlantısı entegrasyonunu sağlamak için aşağıdaki izinler istenmektedir:';
	@override String get granted => 'Verildi';
	@override String get notGranted => 'Verilmedi';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTr caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadTr nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadTr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteTr nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteTr._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryTr implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hikayemiz';
	@override String content({required Object appLabel}) => '${appLabel}, basit bir hayal kırıklığından doğdu: çoğu kalori takip uygulaması ya aşırı karmaşık, sürekli manuel giriş gerektiriyor, yüksek abonelik ücretleri talep ediyor ya da gizliliği ihlal ediyor.\n\nBir bağımsız geliştirici olarak, daha basit ve adil bir şey inşa etmek istedim - çabayı azaltan, hızlı ve ücretsiz kalmayı sağlayan ve sağlık verilerinize saygı gösteren bir uygulama.\n\n${appLabel}, var olmasını istediğim uygulama: hesap yok, izleme yok, reklam yok - sadece net, pratik bilgiler ve sağlık hedefleriniz.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyTr implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gizliliğiniz Önemli';
	@override String get description => 'Gizlilik, sonradan düşünülmüş bir konu değil - bir tasarım ilkesidir. Pratikte bunun ne anlama geldiği:';
	@override String get noAccounts => 'Hesap gerekmez\nUygulamayı hemen kullanın. Kayıt yok, kimlik yok.';
	@override String noTracking({required Object appLabel}) => 'Davranışsal izleme yok\n${appLabel}, etkinliğinizi izlemiyor, kullanım profilleri oluşturmuyor ya da sizi diğer uygulamalarda veya web sitelerinde takip etmiyor.';
	@override String noAds({required Object appLabel}) => 'Reklamsız tasarım\n${appLabel}, reklam veya veri odaklı para kazanma olmadan çalışacak şekilde tasarlanmıştır.';
	@override String get noDataSelling => 'Veri satışı yok\nSağlık verileriniz asla satılmıyor veya üçüncü taraflarla paylaşılmıyor.';
	@override String get localStorage => 'Yerel depolama\nVerileriniz cihazınızda kalır.';
	@override String get privacyPolicy => 'Gizlilik Politikası';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperTr implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bir Bağımsız Geliştirici Tarafından İnovasyon';
	@override String description({required Object appLabel}) => '${appLabel}, sakin ve gizliliğe saygılı sağlık yazılımları oluşturma hedefiyle tek bir bağımsız geliştirici tarafından inşa ve bakım yapılmaktadır.\n\nGeri bildirimler kişisel olarak okunmakta ve uygulamanın yönünü şekillendirmeye yardımcı olmaktadır.';
	@override String get website => 'Web Sitesi';
	@override String get email => 'E-posta';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackTr implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel}\'dan memnun musunuz?';
	@override String description({required Object appLabel}) => 'Geri bildiriminiz, ${appLabel}\'ı herkes için daha iyi hale getirmeye yardımcı oluyor.';
	@override String get rateApp => 'Play Store\'da Derecelendir';
	@override String get sendFeedback => 'Geri Bildirim Gönder';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeTr implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Porsiyon Boyutu';
	@override String get description => 'Tahminlerin doğruluğu, porsiyon boyutunun doğru bir şekilde değerlendirilmesine dayanmaktadır.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsTr implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hazırlama Yöntemleri';
	@override String description({required Object appLabel}) => 'Pişirme yöntemleri, gıdaların besin içeriğini önemli ölçüde etkileyebilir. ${appLabel}\'nin tahminleri bu çeşitlilikleri her zaman hesaba katmayabilir.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsTr implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bileşenler';
	@override String get description => 'Çok sayıda gizli bileşeni olan karmaşık yemekler, daha az doğru tahminlere yol açabilir.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsTr implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veritabanı Sınırlamaları';
	@override String description({required Object appLabel}) => '${appLabel}\'nin gıda veritabanı geniştir ancak her bir gıda maddesini veya varyasyonunu içermeyebilir.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyTr implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalori Doğruluğu';
	@override String get description => 'Bu tahmin, yalnızca takip edilen kalori alımınız ve harcamanıza ne kadar doğru olduğuna bağlıdır. Hatalı kayıt, hatalı bir projeksiyona neden olacaktır.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsTr implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biyolojik Faktörler';
	@override String description({required Object appLabel}) => 'Gerçek kilo kaybı/almayı etkileyen metabolizma, hormonlar, uyku, stres, hidrasyon ve diğer bireysel faktörler, ${appLabel} tarafından ölçülemez.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightTr implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Su Ağırlığı ve Dalgalanmalar';
	@override String get description => 'Normal günlük ağırlık, su tutma, sindirim ve zamanlama nedeniyle önemli ölçüde dalgalanabilir. Tahmin, bu günlük değişiklikleri dikkate almaz.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTr implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profesyonel Rehberlik';
	@override String get description => 'Bu tahmini tıbbi kararlar almak için kullanmayın. Kişiselleştirilmiş kilo yönetimi tavsiyeleri için her zaman bir sağlık uzmanı veya kayıtlı diyetisyen ile danışın.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrTr implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Bazal Metabolizma Hızı (BMR), vücudunuzun temel işlevleri sürdürebilmek için dinlenme halinde yaktığı kalori sayısıdır; bu işlevler arasında nefes alma ve dolaşım yer alır. BMR, yaşınıza, cinsiyetinize, boyunuza ve kilonuza bağlıdır. Daha yüksek bir BMR, vücudunuzun genellikle dinlenme halinde daha fazla kalori yaktığı anlamına gelir; bu genellikle daha fazla kas kütlesi, daha genç bir yaş veya erkek olma durumuna bağlıdır. Daha düşük bir BMR genellikle daha az kas kütlesi, daha ileri yaş veya kadın olmanın göstergesidir.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeTr implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Toplam Günlük Enerji Harcaması (TDEE), gün boyunca yaktığınız toplam kalori miktarını ifade eder; bu, BMR’iniz ve fiziksel aktivite ile günlük hareketten kaynaklanan kalorileri içerir. TDEE, BMR’iniz ve aktivite seviyenizle bağlantılıdır. Daha yüksek bir TDEE, genellikle daha aktif olmaktan veya daha yüksek bir BMR\'e sahip olmaktan dolayı, toplamda daha fazla kalori yaktığınız anlamına gelir. Daha düşük bir TDEE, günlük aktivitenizin daha az olduğunu veya daha düşük bir BMR\'e sahip olduğunuzu gösterir.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalTr implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Günlük Hedef';
	@override String get description => 'Günlük Hedef, TDEE\'nize ve ağırlık hedefinize dayalı olarak önerilen günlük kalori alımınızdır. Kilo kaybı için, TDEE\'nizden daha az kalori alırsınız. Kilo koruma için, TDEE\'nizle eşleşirsiniz. Kilo almak için, TDEE\'nizden daha fazla kalori alırsınız. Bu, istediğiniz ağırlık değişimini sağlıklı bir hızda gerçekleştirmenize yardımcı olur.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedTr implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tahmin nasıl hesaplanır';
	@override String get description => 'Profilinize göre TDEE\'nizi hesaplar ve günün geçen kısmının kesri (saatler + dakikalar) / 24 ile çarparak şu ana kadar yakılan kaloriyi tahmin ederiz.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTr implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profesyonel Rehberlik';
	@override String get description => 'Bu tahmini tıbbi kararlar almak için kullanmayın. Kişiye özel kilo yönetimi önerileri için her zaman bir sağlık uzmanına veya kayıtlı diyetisyene danışın.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTr implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Toplam Yakılan Kalorileri Oku';
	@override String get description => 'Uygulamaya, Sağlık Bağlantısından toplam yakılan kalorilerinizi okuma izni verir.';
	@override String get usage => 'Bu izin, uygulamada günlük kalori yakımınızı görüntülemek için kullanılır ve gün boyunca toplam enerji harcamanızı anlamanıza yardımcı olur.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadTr implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Besin Verilerini Oku';
	@override String get description => 'Uygulamaya, Sağlık Bağlantısından besin verilerini okuma izni verir.';
	@override String get usage => 'Bu izin, diğer uygulamalar tarafından Sağlık Bağlantısına kaydedilen besin bilgilerini okumanızı sağlar ve beslenmenize dair kapsamlı bir görünüm sunar.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteTr implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Besin Verilerini Yaz';
	@override String get description => 'Uygulamaya, Sağlık Bağlantısına besin verilerini yazma izni verir.';
	@override String get usage => 'Bu izin, kaydedilen öğünlerinizi Sağlık Bağlantısına senkronize etmenizi sağlar ve besin verilerinizi kullandığınız diğer sağlık ve fitness uygulamalarında erişilebilir hale getirir.';
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
			'errors.networkError' => 'Ağ hatası. Lütfen internet bağlantınızı kontrol edin.',
			'errors.unknownError' => 'Bir şeyler ters gitti. Lütfen daha sonra tekrar deneyin.',
			'errors.loadingProfileData' => 'Profil verileri yüklenirken hata',
			'errors.somethingWentWrong' => 'Bir şeyler ters gitti.',
			'errors.retry' => 'Tekrar dene',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel}\'ye hoş geldiniz',
			'onboarding.subtitle' => 'AI ile güçlendirilmiş kişisel beslenme danışmanınız',
			'onboarding.getStarted' => 'Başlayın',
			'onboarding.features.foodRecognition.title' => 'Akıllı Gıda Tanıma',
			'onboarding.features.foodRecognition.description' => 'Bir fotoğraf çekin ve AI\'nın yemeğinizi tanımasına izin verin',
			'onboarding.features.aiAnalysis.title' => 'AI Analizi',
			'onboarding.features.aiAnalysis.description' => 'Tanımlarınızdan anlık beslenme bilgileri alın',
			'onboarding.features.healthIntegration.title' => 'Sağlık Entegrasyonu',
			'onboarding.features.healthIntegration.description' => 'Daha iyi içgörüler için Health Connect ile bağlanın',
			'onboarding.gender.title' => 'Cinsiyetiniz nedir?',
			'onboarding.gender.description' => 'Cinsiyet, bazal metabolizma hızınızı (BMR) doğru bir şekilde hesaplamamıza yardımcı olur.',
			'onboarding.gender.next' => 'İleri',
			'onboarding.height.title' => 'Boyunuz ne kadar?',
			'onboarding.height.description' => 'Boyunuz, BMI ve enerji ihtiyaçlarınızı doğru bir şekilde hesaplamamıza yardımcı olur.',
			'onboarding.height.metric' => 'Metrik',
			'onboarding.height.imperial' => 'İngiliz birimi',
			'onboarding.height.next' => 'İleri',
			'onboarding.weight.currentTitle' => 'Mevcut kilonuz nedir?',
			'onboarding.weight.currentDescription' => 'Mevcut kilonuz günlük hedeflerinizi kişiselleştirmek için önemlidir.',
			'onboarding.weight.targetTitle' => 'Hedef kilonuz nedir?',
			'onboarding.weight.targetDescription' => 'Bir hedef kiloyu belirlemek, uzun vadeli planınızı belirlememize yardımcı olur.',
			'onboarding.weight.metric' => 'Metrekes',
			'onboarding.weight.imperial' => 'İngilizce',
			'onboarding.weight.next' => 'İleri',
			'onboarding.age.title' => 'Doğum gününüz ne zaman?',
			'onboarding.age.description' => 'Yaşınız, kalori ihtiyaçlarınızı doğru bir şekilde hesaplamamıza yardımcı olur.',
			'onboarding.age.next' => 'İleri',
			'onboarding.bmiScale.underweight' => 'Zayıf',
			'onboarding.bmiScale.healthy' => 'Sağlıklı',
			'onboarding.bmiScale.overweight' => 'Kilolu',
			'onboarding.bmiScale.obese' => 'Obez',
			'onboarding.bmiScale.categories.underweight' => 'Zayıf',
			'onboarding.bmiScale.categories.healthyWeight' => 'Sağlıklı ağırlık',
			'onboarding.bmiScale.categories.overweight' => 'Kilolu',
			'onboarding.bmiScale.categories.obese' => 'Obez',
			'onboarding.bmiScale.messages.underweight' => 'Dengeli bir kiloya ulaşmak için sağlıklı besinlerle bir plan oluşturmanıza yardımcı olabiliriz.',
			'onboarding.bmiScale.messages.healthy' => 'Harika bir iş çıkardınız! Sağlıklı bir aralıktasınız. Enerjinizi ve canlılığınızı korumanıza yardımcı olacağız.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel}, AI destekli takibiyle hedefinize ulaşmanızı kolaylaştıracak.',
			'onboarding.bmiScale.messages.obese' => 'Sağlık hedefleriniz için kişiselleştirilmiş rehberlik ve sürdürülebilir stratejilerle destek olmak için buradayız.',
			'onboarding.weightGoal.title' => 'Hedefiniz nedir?',
			'onboarding.weightGoal.description' => 'Başarmak istediğinizi en iyi tanımlayan hedefi seçin',
			'onboarding.activityLevel.title' => 'Ne kadar aktifsiniz?',
			'onboarding.activityLevel.description' => 'Bu, günlük kalori ihtiyaçlarınızı daha doğru bir şekilde hesaplamamıza yardımcı olur',
			'onboarding.healthConnect.title' => 'Health Connect ile Bağlan',
			'onboarding.healthConnect.description' => 'Daha iyi içgörüler ve otomatik kalori takibi için sağlık verilerinizi senkronize edin',
			'onboarding.healthConnect.automaticTracking.title' => 'Otomatik Kalori Takibi',
			'onboarding.healthConnect.automaticTracking.description' => 'Fitness uygulamalarınızdan yaktığınız kalorileri takip edin',
			'onboarding.healthConnect.progressInsights.title' => 'İlerleme İçgörüleri',
			'onboarding.healthConnect.progressInsights.description' => 'Sağlık eğilimleriniz hakkında detaylı içgörüler alın',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Sorunsuz Entegrasyon',
			'onboarding.healthConnect.seamlessIntegration.description' => 'En sevdiğiniz sağlık uygulamalarından verileri senkronize edin',
			'onboarding.healthConnect.connected' => 'Health Connect Bağlandı',
			'onboarding.healthConnect.notConnected' => 'Health Connect Bağlı Değil',
			'onboarding.healthConnect.setup' => 'Health Connect Kurulumu',
			'onboarding.healthConnect.skipForNow' => 'Şu an için atla',
			'onboarding.healthConnect.statusConnected' => 'Health Connect bağlı.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect başarıyla bağlandı!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'İzin reddedildi. Lütfen ${appLabel} için telefon ayarlarınızdan Sağlık Bağlantısı izinlerini etkinleştirin.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect kurulurken hata: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Yalnız Değilsiniz',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Araştırmalar, sürekli takibin uzun vadeli başarının en önemli belirleyicisi olduğunu gösteriyor.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object goal, required Object gender, required Object age}) => '${goal} hedefini ulaşmak isteyen ${gender} bir ${age} yaşındaki biri için, sürekli takip başarı için en önemli belirleyicidir.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel}, bunu manuel olarak yapmaktan 10 kat daha kolay hale getiriyor.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Başlamaya hazır mısın?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Anında analiz için yemeklerinin fotoğrafını çek',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Anlamlı ilerleme görmek için düzenli kaydet',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Motivasyonunu korumak için ilerlemeni her gün takip et',
			'onboarding.reinforcement.trackingSuccess.button' => 'Hadi Gidelim',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'birey',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'daha sağlıklı bir siz',
			'onboarding.reinforcement.healthProfile.title' => 'Sağlık Profiliniz',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Ölçümlerinize dayalı olarak, BMI\'niz ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Deneyiminizi kişiselleştirmek için profilinizi sonlandıralım.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'kazan',
			'onboarding.reinforcement.healthProfile.goalLose' => 'kaybet',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object diff, required Object unit, required Object direction}) => 'Hedefinize ulaşmak için ${diff} ${unit} ${direction} yapmalısın.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Hedef kilonuzdasınız! Bunu korumanıza yardımcı olacağız.',
			'onboarding.reinforcement.healthProfile.button' => 'Hadi Gidelim',
			'onboarding.reinforcement.goalLifestyle.title' => 'Mükemmel Bir Başlangıç!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => '${goalText} yönünde ilk adımı attınız. ${activityText} olduğunuz için, ${appLabel} hedeflerinizi yaşam tarzınıza uyacak şekilde ayarlayacak.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Kişiselleştirilmiş kalori hedefleri',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI destekli yemek tespiti',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detaylı makro besin dağılımları',
			'onboarding.reinforcement.goalLifestyle.button' => 'Hadi Gidelim',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'hedeflerin',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktif',
			'tabs.dashboard' => 'Gösterge Tablosu',
			'tabs.history' => 'Geçmiş',
			'home.aiSummary.title' => 'Yapay Zeka Özetiniz',
			'home.aiSummary.logMore' => 'Kişiselleştirilmiş yapay zeka içgörülerinizi almak için önümüzdeki birkaç gün içinde daha fazla öğün kaydedin.',
			'home.aiSummary.loading' => 'Özetiniz yükleniyor...',
			'home.dailyGoal.title' => 'Günlük Hedefinizi Belirleyin',
			'home.dailyGoal.titleSet' => 'Günlük Hedefiniz',
			'home.dailyGoal.description' => 'Sağlık yolculuğunuza başlamaya hazır mısınız? Aşağıda günlük kalori hedefinizi belirleyin ve ilerlemenize başlayın.',
			'home.dailyGoal.descriptionSet' => 'Pusulanız ayarlandı! Bu günlük kalori hedefiniz, size rehberlik edecek.',
			'home.dailyGoal.yourGoal' => 'Hedefiniz',
			'home.dailyGoal.goal' => 'Hedef',
			'home.dailyGoal.dailyCalories' => 'Günlük kalori (kcal)',
			'home.dailyGoal.setGoal' => 'Hedef Belirle',
			'home.dailyGoal.intake' => 'Alım',
			'home.dailyGoal.burned' => 'Yakılan',
			'home.dailyGoal.weightImpact' => 'Kilo Etkisi',
			'home.dailyGoal.estLoss' => 'Tahmini kayıp',
			'home.dailyGoal.estGain' => 'Tahmini kazanım',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Günlük Özeti',
			'home.dailySummary.calories' => 'Kaloriler',
			'home.dailySummary.carbs' => 'Karbonhidratlar',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Yağ',
			'home.dailySummary.fiber' => 'Lif',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Makro besinler grafiği',
			'home.intakeProgress.title' => 'Bugünün Makro Dağılımı',
			'home.intakeProgress.target' => 'Hedef',
			'home.intakeProgress.current' => 'Mevcut',
			'home.intakeHistory.title' => '7 Günlük Makro Geçmişi',
			'home.intakeHistory.noHistoryYet' => 'Henüz geçmiş yok',
			'home.intakeHistory.startLogging' => 'Yemekleri kaydetmeye başlayın ve burada\n7 günlük makro eğilimlerinizi görün',
			'home.mealLog.title' => 'Kaydedilen Yemekler',
			'home.mealLog.emptyMessage' => 'Son yemeğinizin fotoğrafını çekin ve burada kaydedin.',
			'home.mealLog.noMealsToday' => 'Bugün kaydedilmiş yemek yok',
			'home.mealLog.seeAllMeals' => 'Tüm yemekleri gör',
			'home.mealDescription.title' => 'AI ile Hızlı Ekle',
			'home.mealDescription.description' => 'Yemeğinizi tanımlayın, AI detaylarla ilgilensin.',
			'home.mealDescription.hint' => 'Örneğin, kahvaltıda bir koca kase yulaf ezmesi, dilimlenmiş muz ve bir ölçek whey protein yedim ...',
			'home.mealDescription.analyzeMeal' => 'Yemeği analiz et',
			'home.favoriteMeals.title' => 'Favori Yemekler',
			'home.favoriteMeals.description' => 'Favori yemeklerinizden birini hızlıca ekleyin.',
			'home.favoriteMeals.noFavorites' => 'Henüz favori yemek yok.',
			'home.favoriteMeals.addFavoriteHint' => 'Favori olarak işaretlemek için bir yemeğin üzerine yıldızı tıklayın.',
			'home.favoriteMeals.seeAll' => 'Hepsini Gör',
			'home.favoriteMeals.add' => 'Ekle',
			'home.mealSnap.title' => 'Yemeğinizi Yakala ve Takip Et',
			'home.mealSnap.description' => 'AI analizi için yiyeceklerinizin fotoğrafını çekmek üzere kameranızı kullanın.',
			'home.mealSnap.openCamera' => 'Kamerayı Aç',
			'home.mealSnap.gallery' => 'Galeri',
			'home.connectHealth.title' => 'Health Connect ile Senkronize Ol',
			'home.connectHealth.description' => 'Beslenme verilerinizi Health Connect ile senkronize edin',
			'home.connectHealth.install' => 'Kur',
			'home.connectHealth.connect' => 'Bağlan',
			'history.noMeals' => 'Yemek kaydı yok',
			'history.emptyMessage' => 'Son yemeğinizin fotoğrafını çekin ve burada kaydedin.',
			'history.today' => 'Bugün',
			'history.yesterday' => 'Dün',
			'meal.ohNo' => 'Ah hayır!',
			'meal.delete' => 'Sil',
			'meal.editMeal' => 'Yemeği Düzenle',
			'meal.addMeal' => 'Yemek Ekle',
			'meal.saveMeal' => 'Yemeği Kaydet',
			'meal.save' => 'Kaydet',
			'meal.mealName' => 'Yemek Adı',
			'meal.mealNameHint' => 'örn. Çırpılmış yumurta ve tost',
			'meal.mealQuantity' => 'Yemek Miktarı',
			'meal.mealQuantityHint' => 'Örneğin, 1 kase, 2 dilim',
			'meal.timeOfMeal' => 'Yemeğin Zamanı',
			'meal.timeOfMealHint' => 'Yemeğinizi yediğiniz zamanı seçin',
			'meal.mealType' => 'Yemek Türü',
			'meal.nutrition.calories' => 'Kaloriler',
			'meal.nutrition.carbs' => 'Karbonhidratlar (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Yağ (g)',
			'meal.nutrition.fiber' => 'Lif (g)',
			'meal.deleteConfirmation.title' => 'Yemeği Sil',
			'meal.deleteConfirmation.message' => 'Bu yemek kaydını silmek istediğinize emin misiniz?',
			'meal.deleteConfirmation.cancel' => 'İptal',
			'meal.deleteConfirmation.delete' => 'Sil',
			'meal.addedToLog' => 'Yemek kaydınıza eklendi!',
			'meal.couldNotAdd' => ({required Object error}) => 'Yemek eklenemedi: ${error}',
			'meal.savedSuccessfully' => 'Öğün başarıyla eklendi!',
			'meal.updatedSuccessfully' => 'Öğün başarıyla güncellendi!',
			'meal.errorSaving' => ({required Object error}) => 'Öğün kaydedilirken hata oluştu: ${error}',
			'meal.removedFromFavorites' => 'Favorilerden çıkarıldı!',
			'meal.savedAsFavorite' => 'Yemek favori olarak kaydedildi!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Favori güncellenemedi: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'İşlem gerçekleştirilemedi: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Görüntü işlenemedi: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Görüntü sıkıştırırken hata: ${error}',
			'meal.failedToSave' => 'Veri kaydedilemedi. Lütfen tekrar deneyin.',
			'meal.skip' => 'Atla',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Soru ${current} / ${total}',
			'meal.variation.noVariationsAvailable' => 'Hiç varyasyon bulunamadı',
			'favorites.title' => 'Favoriler',
			'favorites.empty' => 'Henüz favori yemek yok.',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Profil verisi bulunamadı',
			'profile.yourProfile' => 'Profiliniz',
			'profile.viewAndManage' => 'Sağlık bilgilerinizi görüntüleyin ve yönetin',
			'profile.sections.profile' => 'PROFİL',
			'profile.sections.basicInformation' => 'TEMEL BİLGİLER',
			'profile.sections.goalsAndActivity' => 'HEDEFLER VE FAALİYETLER',
			'profile.sections.calculatedValues' => 'HESAPLANAN DEĞERLER',
			'profile.gender' => 'Cinsiyet',
			'profile.height' => 'Boy',
			'profile.weight' => 'Kilo',
			'profile.age' => 'Yaş',
			'profile.weightGoal' => 'Kilo Hedefi',
			'profile.targetWeight' => 'Hedef Ağırlık',
			'profile.activityLevel' => 'Aktivite Seviyesi',
			'profile.healthMetrics' => 'Sağlık Metrikleri',
			'profile.notSet' => 'Ayarlanmadı',
			'profile.years' => 'yıl',
			'profile.updatedSuccessfully' => 'Profil başarıyla güncellendi!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Günlük Hedef',
			'profile.calculatedValues.calPerDay' => 'kal/gün',
			'profile.calculatedValues.notAvailable' => 'YOK',
			'healthScore.title' => 'Sağlık Skoru',
			'healthScore.whyThisScore' => 'Bu puan neden?',
			'healthScore.note' => 'Bu puan, tanımlanan bileşenler ve beslenme yoğunluğuna dayanan bir AI tahminidir. Her zaman bir profesyonelle diyet tavsiyesi için danışın.',
			'healthScore.unhealthy' => 'Sağlıksız',
			'healthScore.healthy' => 'Sağlıklı',
			'healthScore.neutral' => 'Tarafsız',
			'editProfile.title' => 'Profili Düzenle',
			'editProfile.sections.personalInformation' => 'KİŞİSEL BİLGİLER',
			'editProfile.sections.physicalMeasurements' => 'FİZİKSEL ÖLÇÜMLER',
			'editProfile.sections.goalsAndActivity' => 'HEDEFLER VE FAALİYETLER',
			'editProfile.gender' => 'Cinsiyet',
			'editProfile.dateOfBirth' => 'Doğum Tarihi',
			'editProfile.height' => 'Boy',
			'editProfile.weight' => 'Kilo',
			'editProfile.weightGoal' => 'Kilo Hedefi',
			'editProfile.activityLevel' => 'Aktivite Seviyesi',
			'editProfile.metric' => 'Metrekes',
			'editProfile.imperial' => 'İngilizce',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metrekes (cm)',
			'editProfile.imperialFtIn' => 'İngilizce (ft/in)',
			'editProfile.metricKg' => 'Metrekes (kg)',
			'editProfile.imperialLbs' => 'İngilizce (lbs)',
			'editProfile.genders.male' => 'Erkek',
			'editProfile.genders.female' => 'Kadın',
			'editProfile.genders.other' => 'Diğer',
			'editProfile.weightGoals.loseWeight.name' => 'Kilo Kaybet',
			'editProfile.weightGoals.loseWeight.description' => 'Kilo kaybetmek için kalori açığı oluşturun',
			'editProfile.weightGoals.maintainWeight.name' => 'Kilo Koruma',
			'editProfile.weightGoals.maintainWeight.description' => 'Mevcut kilonuzu koruyun',
			'editProfile.weightGoals.gainWeight.name' => 'Kilo Kazan',
			'editProfile.weightGoals.gainWeight.description' => 'Kilo almak için kalori fazlası oluşturun',
			'editProfile.activityLevels.sedentary.name' => 'Hareketsiz',
			'editProfile.activityLevels.sedentary.description' => 'Az veya hiç egzersiz yok',
			'editProfile.activityLevels.lightlyActive.name' => 'Hafif Aktif',
			'editProfile.activityLevels.lightlyActive.description' => 'Haftada 1-3 gün hafif egzersiz',
			'editProfile.activityLevels.moderatelyActive.name' => 'Orta Derecede Aktif',
			'editProfile.activityLevels.moderatelyActive.description' => 'Haftada 3-5 gün orta düzeyde egzersiz',
			'editProfile.activityLevels.veryActive.name' => 'Çok Aktif',
			'editProfile.activityLevels.veryActive.description' => 'Haftada 6-7 gün yoğun egzersiz',
			'editProfile.activityLevels.extremelyActive.name' => 'Aşırı Aktif',
			'editProfile.activityLevels.extremelyActive.description' => 'Çok zor bir egzersiz, fiziksel iş',
			'settings.title' => 'Ayarlar',
			'settings.sections.profile' => 'PROFİL',
			'settings.sections.localization' => 'YERELLEŞTİRME',
			'settings.sections.notifications' => 'BİLDİRİMLER',
			'settings.sections.healthConnect' => 'SAĞLIK BAĞLANTISI',
			'settings.sections.supportAndLegal' => 'DESTEK & YASAL',
			'settings.sections.about' => 'HAKKINDA',
			'settings.sections.dangerZone' => 'TEHLİKE BÖLGESİ',
			'settings.sections.developer' => 'GELİŞTİRİCİ',
			'settings.editProfile.title' => 'Profili Düzenle',
			'settings.editProfile.subtitle' => 'Kişisel bilgilerinizi güncelleyin',
			'settings.language.title' => 'Dil',
			'settings.language.subtitle' => 'Tercih ettiğiniz dili seçin',
			'settings.language.searchHint' => 'Dilleri ara...',
			'settings.language.noResults' => 'Sonuç bulunamadı',
			'settings.heightUnit.title' => 'Boy Birimi',
			'settings.weightUnit.title' => 'Kilo Birimi',
			'settings.mealReminders.title' => 'Yemek Hatırlatıcıları',
			'settings.mealReminders.subtitle' => 'Zamanında uyarılarla doğru yolda kalın',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Açık',
			'settings.theme.dark' => 'Koyu',
			'settings.theme.system' => 'Sistem',
			'settings.sendFeedback.title' => 'Geri Bildirim Gönder',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel}\'yi geliştirmemize yardımcı olun',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} Uygulaması Geri Bildirimi',
			'settings.sendFeedback.emailBodyPrefix' => 'Lütfen geri bildiriminizi aşağıda belirtin:',
			'settings.sendFeedback.appVersion' => 'Uygulama Versiyonu',
			'settings.sendFeedback.device' => 'Cihaz',
			'settings.sendFeedback.osVersion' => 'İşletim Sistemi Versiyonu',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Tüm Verileri Temizle',
			'settings.clearAllData.subtitle' => 'Tüm bilgilerinizi geri döndürülemez bir şekilde silin',
			'settings.clearAllData.confirmationTitle' => 'Tüm Verileri Temizle?',
			'settings.clearAllData.confirmationMessage' => 'Bu işlem geri alınamaz. Tüm kaydedilmiş yemekleriniz, favorileriniz ve profil ayarlarınız kalıcı olarak silinecektir.',
			'settings.clearAllData.cancel' => 'İptal',
			'settings.clearAllData.clearEverything' => 'Her Şeyi Temizle',
			'settings.debugOptions.title' => 'Hata Ayıklama Seçenekleri',
			'settings.developerModeEnabled' => 'Geliştirici modu etkinleştirildi!',
			'settings.healthConnect.title' => 'Sağlık Bağlantısı',
			'settings.healthConnect.subtitle' => 'İzinleri görüntüleyin ve yönetin',
			'settings.healthConnect.unavailable.title' => 'Sağlık Bağlantısı Kullanılamıyor',
			'settings.healthConnect.unavailable.description' => 'Sağlık Bağlantısı bu cihazda kullanılamıyor. Android 14 veya sonrası gerekmektedir.',
			'settings.healthConnect.permissions.title' => 'İzinler',
			'settings.healthConnect.permissions.description' => 'Sağlık Bağlantısı entegrasyonunu sağlamak için aşağıdaki izinler istenmektedir:',
			'settings.healthConnect.permissions.granted' => 'Verildi',
			'settings.healthConnect.permissions.notGranted' => 'Verilmedi',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Toplam Yakılan Kalorileri Oku',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Uygulamaya, Sağlık Bağlantısından toplam yakılan kalorilerinizi okuma izni verir.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Bu izin, uygulamada günlük kalori yakımınızı görüntülemek için kullanılır ve gün boyunca toplam enerji harcamanızı anlamanıza yardımcı olur.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Besin Verilerini Oku',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Uygulamaya, Sağlık Bağlantısından besin verilerini okuma izni verir.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Bu izin, diğer uygulamalar tarafından Sağlık Bağlantısına kaydedilen besin bilgilerini okumanızı sağlar ve beslenmenize dair kapsamlı bir görünüm sunar.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Besin Verilerini Yaz',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Uygulamaya, Sağlık Bağlantısına besin verilerini yazma izni verir.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Bu izin, kaydedilen öğünlerinizi Sağlık Bağlantısına senkronize etmenizi sağlar ve besin verilerinizi kullandığınız diğer sağlık ve fitness uygulamalarında erişilebilir hale getirir.',
			'settings.healthConnect.managePermissions' => 'İzinleri Yönet',
			'settings.healthConnect.openSettings' => 'Sağlık Bağlantısı Ayarlarını Aç',
			'settings.healthConnect.requestPermissions' => 'İzinleri Talep Et',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'İzin talebi iptal edildi veya başarısız oldu. Lütfen tekrar deneyin veya izinleri Manuel olarak Sağlık Bağlantısı ayarlarında verin.',
			'settings.healthConnect.permissionRequestFailed' => 'İzinleri talep edemiyorum. Lütfen tekrar deneyin veya izinleri Manuel olarak Sağlık Bağlantısı ayarlarında verin.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'Hakkında',
			'settings.about.tagline' => 'Hızlı, ücretsiz ve gizlilik odaklı kalori farkındalığı',
			'settings.about.ourStory.title' => 'Hikayemiz',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel}, basit bir hayal kırıklığından doğdu: çoğu kalori takip uygulaması ya aşırı karmaşık, sürekli manuel giriş gerektiriyor, yüksek abonelik ücretleri talep ediyor ya da gizliliği ihlal ediyor.\n\nBir bağımsız geliştirici olarak, daha basit ve adil bir şey inşa etmek istedim - çabayı azaltan, hızlı ve ücretsiz kalmayı sağlayan ve sağlık verilerinize saygı gösteren bir uygulama.\n\n${appLabel}, var olmasını istediğim uygulama: hesap yok, izleme yok, reklam yok - sadece net, pratik bilgiler ve sağlık hedefleriniz.',
			'settings.about.privacy.title' => 'Gizliliğiniz Önemli',
			'settings.about.privacy.description' => 'Gizlilik, sonradan düşünülmüş bir konu değil - bir tasarım ilkesidir. Pratikte bunun ne anlama geldiği:',
			'settings.about.privacy.noAccounts' => 'Hesap gerekmez\nUygulamayı hemen kullanın. Kayıt yok, kimlik yok.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Davranışsal izleme yok\n${appLabel}, etkinliğinizi izlemiyor, kullanım profilleri oluşturmuyor ya da sizi diğer uygulamalarda veya web sitelerinde takip etmiyor.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Reklamsız tasarım\n${appLabel}, reklam veya veri odaklı para kazanma olmadan çalışacak şekilde tasarlanmıştır.',
			'settings.about.privacy.noDataSelling' => 'Veri satışı yok\nSağlık verileriniz asla satılmıyor veya üçüncü taraflarla paylaşılmıyor.',
			'settings.about.privacy.localStorage' => 'Yerel depolama\nVerileriniz cihazınızda kalır.',
			'settings.about.privacy.privacyPolicy' => 'Gizlilik Politikası',
			'settings.about.developer.title' => 'Bir Bağımsız Geliştirici Tarafından İnovasyon',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel}, sakin ve gizliliğe saygılı sağlık yazılımları oluşturma hedefiyle tek bir bağımsız geliştirici tarafından inşa ve bakım yapılmaktadır.\n\nGeri bildirimler kişisel olarak okunmakta ve uygulamanın yönünü şekillendirmeye yardımcı olmaktadır.',
			'settings.about.developer.website' => 'Web Sitesi',
			'settings.about.developer.email' => 'E-posta',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel}\'dan memnun musunuz?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Geri bildiriminiz, ${appLabel}\'ı herkes için daha iyi hale getirmeye yardımcı oluyor.',
			'settings.about.feedback.rateApp' => 'Play Store\'da Derecelendir',
			'settings.about.feedback.sendFeedback' => 'Geri Bildirim Gönder',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Yapı ${buildNumber}',
			'reminders.title' => 'Hatırlatıcılarla doğru yolda kalın',
			'reminders.description' => 'Yemeklerinizi kaydetmek ve beslenme hedeflerinize sadık kalmak için nazik hatırlatmalar alın',
			'reminders.notificationsEnabled' => 'Bildirimler Etkinleştirildi',
			'reminders.notificationsDisabled' => 'Bildirimler Devre Dışı',
			'reminders.enabledSubtitle' => 'Yemek hatırlatmalarını alacaksınız',
			'reminders.disabledSubtitle' => 'Yemek hatırlatmaları almak için bildirimleri etkinleştirin',
			'reminders.mealReminders' => 'Yemek Hatırlatmaları',
			'reminders.breakfast' => 'Kahvaltı',
			'reminders.lunch' => 'Öğle',
			'reminders.dinner' => 'Akşam',
			'reminders.snack' => 'Atıştırmalık',
			'reminders.unknown' => 'Bilinmiyor',
			'reminders.change' => 'Değiştir',
			'reminders.enableNotifications' => 'Bildirimleri Etkinleştir',
			'reminders.skipForNow' => 'Şu an için atla',
			'reminders.saveChanges' => 'Değişiklikleri Kaydet',
			'reminders.enabledSuccessfully' => 'Bildirimler başarıyla etkinleştirildi!',
			'reminders.permissionDenied' => 'Bildirim izni reddedildi',
			'reminders.errorEnabling' => ({required Object error}) => 'Bildirimleri etkinleştirirken hata: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Kurulum tamamlanırken hata: ${error}',
			'notifications.breakfast.title' => 'Kahvaltı Zamanı! 🍳',
			'notifications.breakfast.body' => 'Kahvaltınızı kaydetmeyi unutmayın',
			'notifications.lunch.title' => 'Öğle Zamanı! 🥗',
			'notifications.lunch.body' => 'Öğle yemeğinizi kaydetme zamanı',
			'notifications.dinner.title' => 'Akşam Yemeği Zamanı! 🍽️',
			'notifications.dinner.body' => 'Akşam yemeğinizi kaydetmeyi unutmayın',
			'notifications.snack.title' => 'Atıştırmalık Zamanı! 🍎',
			'notifications.snack.body' => 'Sağlıklı bir atıştırmalık zamanı',
			'notifications.test.title' => 'Test Bildirimi',
			'login.title' => 'Giriş Yap',
			'login.signInWithGoogle' => 'Google ile giriş yap',
			'login.signInFailed' => 'Google Girişi başarısız oldu veya iptal edildi.',
			'disclaimer.pleaseNote' => 'Lütfen Dikkate Alın',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel}, tahmini besin bilgileri sağlar. Doğruluk, girdiğiniz bilgilere ve gıda çeşitliliklerine bağlıdır. Rehber olarak kullanın, kesin bir kaynak olarak değil. Kişisel diyet tavsiyesi için bir uzmana danışın.',
			'disclaimer.snap.portionSize.title' => 'Porsiyon Boyutu',
			'disclaimer.snap.portionSize.description' => 'Tahminlerin doğruluğu, porsiyon boyutunun doğru bir şekilde değerlendirilmesine dayanmaktadır.',
			'disclaimer.snap.preparationMethods.title' => 'Hazırlama Yöntemleri',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Pişirme yöntemleri, gıdaların besin içeriğini önemli ölçüde etkileyebilir. ${appLabel}\'nin tahminleri bu çeşitlilikleri her zaman hesaba katmayabilir.',
			'disclaimer.snap.ingredients.title' => 'Bileşenler',
			'disclaimer.snap.ingredients.description' => 'Çok sayıda gizli bileşeni olan karmaşık yemekler, daha az doğru tahminlere yol açabilir.',
			'disclaimer.snap.databaseLimitations.title' => 'Veritabanı Sınırlamaları',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}\'nin gıda veritabanı geniştir ancak her bir gıda maddesini veya varyasyonunu içermeyebilir.',
			'disclaimer.weightEstimate.title' => 'Kilo Tahmini Hakkında',
			'disclaimer.weightEstimate.description' => 'Proje edilen kilo değişikliği, basit kalori-giriş vs. kalori-çıkış modeline dayanan bir teorik tahmindir. Bu sadece motivasyonel rehberlik içindir, gerçek kilonuzu tahmin etmek için değil.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalori Doğruluğu',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Bu tahmin, yalnızca takip edilen kalori alımınız ve harcamanıza ne kadar doğru olduğuna bağlıdır. Hatalı kayıt, hatalı bir projeksiyona neden olacaktır.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biyolojik Faktörler',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Gerçek kilo kaybı/almayı etkileyen metabolizma, hormonlar, uyku, stres, hidrasyon ve diğer bireysel faktörler, ${appLabel} tarafından ölçülemez.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Su Ağırlığı ve Dalgalanmalar',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normal günlük ağırlık, su tutma, sindirim ve zamanlama nedeniyle önemli ölçüde dalgalanabilir. Tahmin, bu günlük değişiklikleri dikkate almaz.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Profesyonel Rehberlik',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Bu tahmini tıbbi kararlar almak için kullanmayın. Kişiselleştirilmiş kilo yönetimi tavsiyeleri için her zaman bir sağlık uzmanı veya kayıtlı diyetisyen ile danışın.',
			'disclaimer.healthMetrics.description' => 'Bu metrikler, vücudunuzun enerji ihtiyaçlarını anlamanıza ve beslenme hedeflerinizi yönlendirmenize yardımcı olur.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Bazal Metabolizma Hızı (BMR), vücudunuzun temel işlevleri sürdürebilmek için dinlenme halinde yaktığı kalori sayısıdır; bu işlevler arasında nefes alma ve dolaşım yer alır. BMR, yaşınıza, cinsiyetinize, boyunuza ve kilonuza bağlıdır. Daha yüksek bir BMR, vücudunuzun genellikle dinlenme halinde daha fazla kalori yaktığı anlamına gelir; bu genellikle daha fazla kas kütlesi, daha genç bir yaş veya erkek olma durumuna bağlıdır. Daha düşük bir BMR genellikle daha az kas kütlesi, daha ileri yaş veya kadın olmanın göstergesidir.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Toplam Günlük Enerji Harcaması (TDEE), gün boyunca yaktığınız toplam kalori miktarını ifade eder; bu, BMR’iniz ve fiziksel aktivite ile günlük hareketten kaynaklanan kalorileri içerir. TDEE, BMR’iniz ve aktivite seviyenizle bağlantılıdır. Daha yüksek bir TDEE, genellikle daha aktif olmaktan veya daha yüksek bir BMR\'e sahip olmaktan dolayı, toplamda daha fazla kalori yaktığınız anlamına gelir. Daha düşük bir TDEE, günlük aktivitenizin daha az olduğunu veya daha düşük bir BMR\'e sahip olduğunuzu gösterir.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Günlük Hedef',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Günlük Hedef, TDEE\'nize ve ağırlık hedefinize dayalı olarak önerilen günlük kalori alımınızdır. Kilo kaybı için, TDEE\'nizden daha az kalori alırsınız. Kilo koruma için, TDEE\'nizle eşleşirsiniz. Kilo almak için, TDEE\'nizden daha fazla kalori alırsınız. Bu, istediğiniz ağırlık değişimini sağlıklı bir hızda gerçekleştirmenize yardımcı olur.',
			'disclaimer.calorieExpenditure.title' => 'Kalori harcaması tahmini',
			'disclaimer.calorieExpenditure.description' => 'Health Connect verileri kullanılamadığında, bugünkü yakılan kaloriyi Bazal Metabolizma Hızınız (BMR) ve aktivite seviyeniz (TDEE) kullanarak, günün geçen bölümüne göre ölçekleyerek tahmin ederiz.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Tahmin nasıl hesaplanır',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Profilinize göre TDEE\'nizi hesaplar ve günün geçen kısmının kesri (saatler + dakikalar) / 24 ile çarparak şu ana kadar yakılan kaloriyi tahmin ederiz.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Profesyonel Rehberlik',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Bu tahmini tıbbi kararlar almak için kullanmayın. Kişiye özel kilo yönetimi önerileri için her zaman bir sağlık uzmanına veya kayıtlı diyetisyene danışın.',
			'common.close' => 'Kapat',
			'common.kContinue' => 'Devam Et',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel} hoşunuza gidiyor mu?',
			'feedbackRating.yes' => 'Evet, beğeniyorum',
			'feedbackRating.no' => 'Pek değil',
			'feedbackRating.rateStepHeading' => 'Play Store\'da puan verin',
			'feedbackRating.emailStepHeading' => 'Geri bildirimi e-postayla gönderin',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Kısa bir değerlendirme, diğer kullanıcıların ${appLabel}\'ı keşfetmesine yardımcı olur ve geliştirmeye devam etmemizi sağlar. Birkaç dakikanızı ayırıp değerlendirme bırakır mısınız?',
			'feedbackRating.shareFeedbackViaEmail' => 'Geri bildiriminiz geleceği şekillendirir — her mesajı dikkatle okuyoruz. Düşüncelerinizi e-posta ile paylaşmak ister misiniz?',
			'feedbackRating.rateCta' => 'Play Store\'da puan ver',
			'feedbackRating.maybeLater' => 'Belki sonra',
			'feedbackRating.sendFeedback' => 'Geri bildirim gönder',
			'feedbackRating.noThanks' => 'Hayır, teşekkürler',
			'feedbackRating.aboutUsDescription' => 'Küçük bir ekip tarafından özenle hazırlandı. Gizliliğe, sadeliğe ve daha sağlıklı beslenme alışkanlıkları edinmenize yardımcı olmaya odaklanıyoruz.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '${appLabel}\'ın arkasında kim olduğunu merak ediyor musunuz? ',
			'feedbackRating.aboutUsLinkLabel' => 'Hakkımızda',
			'feedbackRating.thankYouMessage' => 'Teşekkürler! Başka bir zaman tekrar soracağız.',
			'health.syncFailed' => 'Health Connect ile senkronize edilemedi',
			'health.mealSynced' => 'Yemek Health Connect ile senkronize edildi',
			_ => null,
		};
	}
}
