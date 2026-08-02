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
	@override String get networkError => 'Ağ hatası. İnternet bağlantınızı kontrol edin.';
	@override String get unknownError => 'Bir şeyler yolunda gitmedi. Lütfen daha sonra tekrar deneyin.';
	@override String get loadingProfileData => 'Profil verileri yüklenirken hata oluştu';
	@override String get somethingWentWrong => 'Bir şeyler yolunda gitmedi.';
	@override String get retry => 'Tekrar dene';
}

// Path: onboarding
class _TranslationsOnboardingTr implements TranslationsOnboardingEn {
	_TranslationsOnboardingTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel} uygulamasına hoş geldiniz';
	@override String get subtitle => 'Yapay zekâ destekli kişisel beslenme yol arkadaşınız';
	@override String get getStarted => 'Başlayalım';
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
	@override String get dashboard => 'Ana Sayfa';
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
	@override String get noMeals => 'Kayıtlı öğün yok';
	@override String get emptyMessage => 'Buraya kaydetmek için son öğününüzün fotoğrafını çekin.';
	@override String get today => 'Bugün';
	@override String get yesterday => 'Dün';
}

// Path: meal
class _TranslationsMealTr implements TranslationsMealEn {
	_TranslationsMealTr._(this._root);

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
	@override String get mealQuantity => 'Öğün Miktarı';
	@override String get mealQuantityHint => 'ör., 1 kase, 2 dilim';
	@override String get timeOfMeal => 'Öğün Zamanı';
	@override String get timeOfMealHint => 'Öğünü yediğiniz zamanı seçin';
	@override String get mealType => 'Öğün Türü';
	@override late final _TranslationsMealNutritionTr nutrition = _TranslationsMealNutritionTr._(_root);
	@override late final _TranslationsMealDeleteConfirmationTr deleteConfirmation = _TranslationsMealDeleteConfirmationTr._(_root);
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
	@override late final _TranslationsMealQuestionFlowTr questionFlow = _TranslationsMealQuestionFlowTr._(_root);
	@override late final _TranslationsMealAnalysisTr analysis = _TranslationsMealAnalysisTr._(_root);
	@override late final _TranslationsMealFeedbackTr feedback = _TranslationsMealFeedbackTr._(_root);
	@override String get nameRequired => 'Kaydetmeden önce bir öğün adı girin.';
}

// Path: favorites
class _TranslationsFavoritesTr implements TranslationsFavoritesEn {
	_TranslationsFavoritesTr._(this._root);

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
	@override late final _TranslationsFavoritesSortOptionsTr sortOptions = _TranslationsFavoritesSortOptionsTr._(_root);
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
	@override String get targetWeight => 'Hedef Kilo';
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
	@override String get title => 'Sağlık Puanı';
	@override String get whyThisScore => 'Bu puan neden?';
	@override String get note => 'Bu puan, tanımlanan içerikler ve besin yoğunluğuna dayanan bir AI tahminidir. Beslenme ile ilgili tavsiye için her zaman bir uzmana danışın.';
	@override String get unhealthy => 'Sağlıksız';
	@override String get healthy => 'Sağlıklı';
	@override String get neutral => 'Nötr';
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
	@override String get metric => 'Metrik';
	@override String get imperial => 'İmperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metrik (cm)';
	@override String get imperialFtIn => 'İmperial (ft/in)';
	@override String get metricKg => 'Metrik (kg)';
	@override String get imperialLbs => 'İmperial (lbs)';
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
	@override late final _TranslationsSettingsExportMealHistoryTr exportMealHistory = _TranslationsSettingsExportMealHistoryTr._(_root);
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
	@override String get title => 'Giriş';
	@override String get signInWithGoogle => 'Google ile giriş yap';
	@override String get signInFailed => 'Google ile giriş başarısız oldu veya iptal edildi.';
}

// Path: disclaimer
class _TranslationsDisclaimerTr implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Lütfen Dikkat';
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
	@override String get kContinue => 'Devam';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingTr implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingTr._(this._root);

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
class _TranslationsHealthTr implements TranslationsHealthEn {
	_TranslationsHealthTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect ile senkronize edilemedi';
	@override String get mealSynced => 'Öğün Health Connect ile senkronize edildi';
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
	@override String get description => 'Cinsiyet, bazal metabolizma hızınızı (BMR) doğru hesaplamamıza yardımcı olur.';
	@override String get next => 'İleri';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightTr implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Boyunuz ne kadar?';
	@override String get description => 'Boyunuz BMI ve enerji ihtiyacınızı doğru hesaplamamız için önemlidir.';
	@override String get metric => 'Metrik';
	@override String get imperial => 'İmperial';
	@override String get next => 'İleri';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightTr implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightTr._(this._root);

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
class _TranslationsOnboardingAgeTr implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Doğum tarihiniz ne zaman?';
	@override String get description => 'Yaşınız kalori ihtiyacınızı doğru hesaplamamıza yardımcı olur.';
	@override String get next => 'İleri';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleTr implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Zayıf';
	@override String get healthy => 'Sağlıklı';
	@override String get overweight => 'Fazla';
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
	@override String get description => 'Bu, günlük kalori ihtiyacınızı daha doğru hesaplamamıza yardımcı olur';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectTr implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ile bağlanın';
	@override String get description => 'Daha iyi içgörüler ve otomatik kalori takibi için sağlık verilerinizi senkronize edin';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingTr automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingTr._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsTr progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsTr._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationTr seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationTr._(_root);
	@override String get connected => 'Health Connect Bağlandı';
	@override String get notConnected => 'Health Connect Bağlı Değil';
	@override String get setup => 'Health Connect Kurulumu';
	@override String get skipForNow => 'Şimdi atla';
	@override String get statusConnected => 'Health Connect bağlı.';
	@override String get statusSuccess => 'Health Connect başarıyla bağlandı!';
	@override String statusPermissionDenied({required Object appLabel}) => 'İzin reddedildi. Lütfen ${appLabel} için Health Connect izinlerini telefon ayarlarından etkinleştirin.';
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
class _TranslationsHomeDailyGoalTr implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalTr._(this._root);

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
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryTr implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Günlük Özet';
	@override String get calories => 'Kaloriler';
	@override String get carbs => 'Karbonhidrat';
	@override String get protein => 'Protein';
	@override String get fat => 'Yağ';
	@override String get fiber => 'Lif';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Makro besin grafiği';
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
	@override String get trendTitle => 'Bugünün Eğilimi';
	@override String peakHour({required Object hour}) => 'Zirve: ${hour}:00';
	@override String get noHistoryYet => 'Henüz geçmiş yok';
	@override String get startLogging => 'Öğün kaydetmeye başlayın ve\n7 günlük makro eğilimlerinizi burada görün';
}

// Path: home.mealLog
class _TranslationsHomeMealLogTr implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kaydedilen Öğünler';
	@override String get emptyMessage => 'Buraya kaydetmek için son öğününüzün fotoğrafını çekin.';
	@override String get noMealsToday => 'Bugün için kayıtlı öğün yok';
	@override String get seeAllMeals => 'Tüm öğünleri gör';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionTr implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI ile Hızlı Ekle';
	@override String get description => 'Öğününüzü tanımlayın, gerisini AI halletsin.';
	@override String get hint => 'ör. Kahvaltıda büyük bir kase yulaf ezmesi, dilimlenmiş muz ve bir ölçek whey ...';
	@override String get analyzeMeal => 'Öğünü analiz et';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsTr implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsTr._(this._root);

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
class _TranslationsHomeMealSnapTr implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapTr._(this._root);

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
class _TranslationsHomeConnectHealthTr implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect ile Senkronize Et';
	@override String get description => 'Beslenme verilerinizi Health Connect ile senkronize edin';
	@override String get install => 'Yükle';
	@override String get connect => 'Bağla';
}

// Path: meal.nutrition
class _TranslationsMealNutritionTr implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalori';
	@override String get carbs => 'Karbonhidrat (g)';
	@override String get protein => 'Protein (g)';
	@override String get fat => 'Yağ (g)';
	@override String get fiber => 'Lif (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationTr implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Öğünü Sil';
	@override String get message => 'Bu öğün kaydını silmek istediğinizden emin misiniz?';
	@override String get cancel => 'İptal';
	@override String get delete => 'Sil';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowTr implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Soru ${current} / ${total}';
	@override String get noQuestionsAvailable => 'Kullanılabilir soru yok';
	@override String get next => 'İleri';
	@override String get continueLabel => 'Devam';
}

// Path: meal.analysis
class _TranslationsMealAnalysisTr implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisTr._(this._root);

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
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'İpucu: Tutarlılık mükemmellikten daha önemlidir—düzenli kayıtlar önemli kalıpları ortaya çıkarır.';
	@override String get offlineTip1 => 'İpucu: Fotoğraflar için doğal ışık ve üstten çekim porsiyon doğruluğuna yardımcı olur.';
	@override String get offlineTip2 => 'İpucu: İçecekler, soslar ve pişirme yağını belirtin—bunlar genellikle unutulan kalorileri ekler.';
	@override String get offlineTip3 => 'İpucu: Hızlı bir porsiyon notu (1 kase, büyük kahve) tahminleri çok daha isabetli yapar.';
	@override String get offlineTip4 => 'İpucu: Öğünden sonra kayıt yapmak da alışkanlık kazandırır; mükemmellik zorunlu değildir.';
	@override String get offlineTip5 => 'İpucu: Kalorileri çok değiştiren pişirme şeklini belirtin (kızartma vs fırınlama).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackTr implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackTr._(this._root);

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
class _TranslationsFavoritesSortOptionsTr implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Son Eklenen';
	@override String get calories => 'Kalori';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsTr implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFİL';
	@override String get basicInformation => 'TEMEL BİLGİLER';
	@override String get goalsAndActivity => 'HEDEFLER & AKTİVİTE';
	@override String get calculatedValues => 'HESAPLANMIŞ DEĞERLER';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesTr implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Günlük Hedef';
	@override String get calPerDay => 'cal/gün';
	@override String get notAvailable => 'YOK';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsTr implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'KİŞİSEL BİLGİLER';
	@override String get physicalMeasurements => 'FİZİKSEL ÖLÇÜMLER';
	@override String get goalsAndActivity => 'HEDEFLER & AKTİVİTE';
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
	@override String get localization => 'LOKALİZASYON';
	@override String get notifications => 'BİLDİRİMLER';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'DESTEK & YASAL';
	@override String get about => 'HAKKINDA';
	@override String get dangerZone => 'TEHLİKELİ BÖLGE';
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
	@override String get searchHint => 'Dillerde ara...';
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
	@override String get title => 'Öğün Hatırlatıcıları';
	@override String get subtitle => 'Zamanında uyarılarla yolda kalın';
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
	@override String subtitle({required Object appLabel}) => '${appLabel} için geri bildirimde bulunun';
	@override String emailSubject({required Object appLabel}) => '${appLabel} Uygulama Geri Bildirimi';
	@override String get emailBodyPrefix => 'Lütfen aşağıya geri bildiriminizi ekleyin:';
	@override String get appVersion => 'Uygulama Sürümü';
	@override String get device => 'Cihaz';
	@override String get osVersion => 'İşletim Sistemi Sürümü';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryTr implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Öğün Geçmişini Dışa Aktar';
	@override String get subtitle => 'Kaydettiğiniz öğünlerin CSV\'sini paylaşın';
	@override String get shareText => 'Calorify öğün geçmişi dışa aktarımınız';
	@override String failed({required Object error}) => 'Öğün geçmişi dışa aktarılamadı: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataTr implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tüm Verileri Temizle';
	@override String get subtitle => 'Tüm bilgilerinizi geri dönülemez şekilde silin';
	@override String get confirmationTitle => 'Tüm Veriler Temizlensin mi?';
	@override String get confirmationMessage => 'Bu işlem geri alınamaz. Tüm kaydedilmiş öğünleriniz, favorileriniz ve profil ayarlarınız kalıcı olarak silinecektir.';
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
	@override String get title => 'Health Connect';
	@override String get subtitle => 'İzinleri görüntüleyin ve yönetin';
	@override late final _TranslationsSettingsHealthConnectUnavailableTr unavailable = _TranslationsSettingsHealthConnectUnavailableTr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsTr permissions = _TranslationsSettingsHealthConnectPermissionsTr._(_root);
	@override String get managePermissions => 'İzinleri Yönet';
	@override String get openSettings => 'Health Connect Ayarlarını Aç';
	@override String get requestPermissions => 'İzin İste';
	@override String get permissionRequestCancelledOrFailed => 'İzin isteği iptal edildi veya başarısız oldu. Lütfen tekrar deneyin veya izinleri Health Connect ayarlarından manuel olarak verin.';
	@override String get permissionRequestFailed => 'İzin isteği yapılamıyor. Lütfen tekrar deneyin veya izinleri Health Connect ayarlarından manuel olarak verin.';
	@override String get requestingPermissions => 'İzinler isteniyor...';
}

// Path: settings.about
class _TranslationsSettingsAboutTr implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hakkında';
	@override String get tagline => 'Hızlı, ücretsiz ve gizliliği önceliklendiren kalori farkındalığı';
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
	@override String get title => 'Öğle Vakti! 🥗';
	@override String get body => 'Öğlen yemeğinizi kaydetme zamanı';
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
	@override String get title => 'Ara Öğün Zamanı! 🍎';
	@override String get body => 'Sağlıklı bir ara öğün zamanı';
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
	@override String description({required Object appLabel}) => '${appLabel} tahmini besin bilgileri sağlar. Doğruluk, girdiğiniz bilgilere ve yiyecek çeşitlerine bağlıdır. Bir rehber olarak kullanın, kesin kaynak olarak değil. Kişisel beslenme tavsiyesi için bir uzmana danışın.';
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
	@override String get description => 'Projeksiyon olarak verilen kilo değişimi basit kalori içeriği vs harcama modeli üzerine kurulu teorik bir tahmindir. Motivasyon kaynağı olarak düşünülmelidir, gerçek ağırlığın bir tahmini değildir.';
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
	@override String get description => 'Bu metrikler, vücudunuzun enerji ihtiyaçlarını anlamanıza ve beslenme hedeflerinize rehberlik etmenize yardımcı olur.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrTr bmr = _TranslationsDisclaimerHealthMetricsBmrTr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeTr tdee = _TranslationsDisclaimerHealthMetricsTdeeTr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalTr dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalTr._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureTr implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalori Harcama Tahmini';
	@override String get description => 'Health Connect verileri kullanılamadığında, bugünkü yakılan kalorileri Basal Metabolizma Hızınız (BMR) ve aktivite seviyeniz (TDEE) kullanılarak, günün geçen kısmına göre ölçeklenmiş şekilde tahmin ederiz.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedTr howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedTr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTr professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTr._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionTr implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Akıllı Yemek Tanıma';
	@override String get description => 'Bir fotoğraf çekin, yapay zekâ yemeğinizi tanısın';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisTr implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI Analizi';
	@override String get description => 'Açıklamalarınızdan anında besin bilgileri alın';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationTr implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect Entegrasyonu';
	@override String get description => 'Daha iyi içgörüler için Health Connect ile bağlayın';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesTr implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Zayıf';
	@override String get healthyWeight => 'Sağlıklı kilo';
	@override String get overweight => 'Fazla kilolu';
	@override String get obese => 'Obez';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesTr implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Dengeli kiloya ulaşmanız için besin değeri yüksek öğünlerle sağlıklı bir plan oluşturmada yardımcı olabiliriz.';
	@override String get healthy => 'Aferin! Sağlıklı bir aralıktasınız. Canlılığınızı ve enerjinizi korumanıza yardımcı olacağız.';
	@override String overweight({required Object appLabel}) => '${appLabel}, hedefinize rahatça ulaşmanız için yapay zekâ destekli takibi basitleştirecek.';
	@override String get obese => 'Sağlık hedefleriniz için kişiselleştirilmiş rehberlik ve sürdürülebilir stratejilerle yanınızdayız.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingTr implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Otomatik Kalori Takibi';
	@override String get description => 'Fitness uygulamalarından yanan kalorileri takip edin';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsTr implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'İlerleme İçgörüleri';
	@override String get description => 'Sağlık eğilimleriniz hakkında detaylı içgörüler edinin';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationTr implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sorunsuz Entegrasyon';
	@override String get description => 'Favori sağlık uygulamalarınızdan veri senkronize edin';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessTr implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessTr._(this._root);

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
class _TranslationsOnboardingReinforcementHealthProfileTr implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileTr._(this._root);

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
class _TranslationsOnboardingReinforcementGoalLifestyleTr implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleTr._(this._root);

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
class _TranslationsEditProfileWeightGoalsLoseWeightTr implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kilo Ver';
	@override String get description => 'Kilo vermek için kalori açığı oluşturun';
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
	@override String get name => 'Kilo Al';
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
	@override String get name => 'Orta Aktif';
	@override String get description => 'Haftada 3-5 gün orta düzey egzersiz';
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
	@override String get description => 'Çok yoğun egzersiz veya fiziksel iş';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableTr implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect Kullanılamıyor';
	@override String get description => 'Bu cihazda Health Connect kullanılamıyor. Lütfen Play Store\'dan Health Connect\'i yükleyin (Android 9+) veya Android 14+\'e güncelleyin.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsTr implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'İzinler';
	@override String get description => 'Health Connect entegrasyonu sağlamak için aşağıdaki izinler istenmektedir:';
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
	@override String get title => 'Bizim Hikâyemiz';
	@override String content({required Object appLabel}) => '${appLabel} basit bir hayal kırıklığından doğdu: çoğu kalori takip uygulaması ya aşırı karmaşık, sürekli manuel giriş gerektiren, yüksek abonelik ücretleri talep eden ya da gizliliği riske atan uygulamalardı.\n\nTek kişilik bir geliştirici olarak, daha basit ve daha adil bir şey yapmak istedim — çaba gereksinimini azaltmak için AI kullanan, hızlı ve ücretsiz kalan ve sağlık verilerinize saygı duyan bir uygulama.\n\n${appLabel} var olmasını dilediğim uygulama: hesap yok, izleme yok, reklam yok — sadece net, pratik içgörüler ve sağlık hedefleriniz.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyTr implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gizliliğiniz Önemli';
	@override String get description => 'Gizlilik sonradan düşünülmüş bir unsur değil — bir tasarım ilkesidir. Bu pratikte şu anlama gelir:';
	@override String get noAccounts => 'Hesap gerekmez\nUygulamayı hemen kullanın. Kayıt yok, kimlik yok.';
	@override String noTracking({required Object appLabel}) => 'Davranışsal izleme yok\n${appLabel} etkinliğinizi izlemez, kullanımı profillemez veya uygulamalar/veb siteleri arasında sizi takip etmez.';
	@override String noAds({required Object appLabel}) => 'Reklamsız tasarım\n${appLabel} reklamlar veya veri odaklı para kazanma yöntemleri olmadan çalışacak şekilde tasarlandı.';
	@override String get noDataSelling => 'Veri satışı yok\nSağlık verileriniz üçüncü taraflara asla satılmaz veya paylaşılmaz.';
	@override String get localStorage => 'Yerel öncelikli depolama\nVerileriniz cihazınızda kalır.';
	@override String get privacyPolicy => 'Gizlilik Politikası';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperTr implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tek Geliştirici Tarafından Yapıldı';
	@override String description({required Object appLabel}) => '${appLabel}, sakin, gizliliğe saygılı sağlık yazılımları yaratmaya odaklanmış tek bir geliştirici tarafından inşa edilip sürdürülmektedir.\n\nGeri bildirimler kişisel olarak okunur ve uygulamanın yönünü şekillendirmeye yardımcı olur.';
	@override String get website => 'Web sitesi';
	@override String get email => 'E-posta';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackTr implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel} hoşunuza gidiyor mu?';
	@override String description({required Object appLabel}) => 'Geri bildiriminiz ${appLabel}\'i herkes için daha iyi hale getirmeye yardımcı olur.';
	@override String get rateApp => 'Play Store\'da oy verin';
	@override String get sendFeedback => 'Geri Bildirim Gönder';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeTr implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Porsiyon Boyutu';
	@override String get description => 'Tahminlerin doğruluğu büyük ölçüde porsiyon boyutunu doğru değerlendirmenize bağlıdır.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsTr implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hazırlama Yöntemleri';
	@override String description({required Object appLabel}) => 'Pişirme yöntemleri yiyeceğin besin içeriğini önemli ölçüde değiştirebilir. ${appLabel} tahminleri her zaman bu farklılıkları hesaba katmayabilir.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsTr implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'İçerikler';
	@override String get description => 'Birçok gizli içeriğe sahip karmaşık yemekler daha az doğru tahminlere yol açabilir.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsTr implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Veritabanı Sınırlamaları';
	@override String description({required Object appLabel}) => '${appLabel}\'in gıda veritabanı kapsamlıdır ancak her bir yiyecek öğesini veya varyasyonunu içermeyebilir.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyTr implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalori Doğruluğu';
	@override String get description => 'Bu tahmin, izlediğiniz kalori alımı ve harcamasının doğruluğuna bağlıdır. Hatalı kayıtlar tahminin yanlış olmasına neden olur.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsTr implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biyolojik Faktörler';
	@override String description({required Object appLabel}) => 'Gerçek kilo kaybı/kazancı metabolizma, hormonlar, uyku, stres, hidrasyon ve ${appLabel}’in ölçemeyeceği diğer bireysel faktörlerden etkilenir.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightTr implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Su Ağırlığı & Dalgalanmalar';
	@override String get description => 'Normal günlük kilo su tutma, sindirim ve zamana bağlı olarak önemli ölçüde dalgalanabilir. Tahmin bu günlük değişiklikleri hesaba katmaz.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceTr implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uzman Rehberliği';
	@override String get description => 'Tıbbi kararlar için bu tahmini kullanmayın. Kişiselleştirilmiş kilo yönetimi tavsiyesi için her zaman bir sağlık uzmanına veya kayıtlı diyetisyene danışın.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrTr implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Bazal Metabolizma Hızı (BMR), vücudunuzun dinlenme halinde temel fonksiyonları sürdürmek için yaktığı kalori miktarıdır. BMR yaşınıza, cinsiyetinize, boyunuza ve kilonuza bağlıdır. Daha yüksek bir BMR, genellikle daha fazla kas kütlesi, daha genç yaş veya erkek olmak nedeniyle dinlenirken daha fazla kalori yaktığınız anlamına gelir. Daha düşük BMR ise genellikle daha az kas kütlesi, daha ileri yaş veya kadın olmayı gösterir.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeTr implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Toplam Günlük Enerji Harcaması (TDEE), BMR\'niz artı fiziksel aktivite ve günlük hareketle birlikte günde yaktığınız toplam kaloridir. TDEE BMR ve aktivite seviyenize bağlıdır. Daha yüksek bir TDEE, genellikle daha aktif olmak veya daha yüksek bir BMR nedeniyle daha fazla kalori yaktığınız anlamına gelir. Daha düşük bir TDEE ise daha az günlük aktivite veya daha düşük bir BMR\'e işaret eder.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalTr implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Günlük Hedef';
	@override String get description => 'Günlük Hedef, TDEE\'niz ve kilo hedefinize dayanarak önerilen günlük kalori alımınızdır. Kilo kaybı için TDEE\'nizden daha az kalori alırsınız. Kilo koruma için TDEE\'nizle eşleşirsiniz. Kilo kazanımı için TDEE\'nizden daha fazla kalori alırsınız. Bu, istenen kilo değişikliğine sağlıklı bir hızda ulaşmanıza yardımcı olur.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedTr implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tahmin Nasıl Hesaplanıyor';
	@override String get description => 'TDEE\'nizi (profilinize göre) hesaplıyoruz ve günün geçen kısmının kesriyle (saat + dakika) / 24 çarparak şu ana kadar yakılan kalorileri tahmin ediyoruz.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTr implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uzman Rehberliği';
	@override String get description => 'Tıbbi kararlar için bu tahmini kullanmayın. Kişiselleştirilmiş kilo yönetimi tavsiyesi için her zaman bir sağlık uzmanına veya kayıtlı diyetisyene danışın.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTr implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Toplam Yakılan Kalorileri Okuma';
	@override String get description => 'Uygulamanın Health Connect\'ten toplam yakılan kalorilerinizi okumasına izin verir.';
	@override String get usage => 'Bu izin, uygulamada günlük yakılan kaloriyi göstererek toplam enerji harcamanızı gün içinde anlamanıza yardımcı olur.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadTr implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beslenme Verilerini Okuma';
	@override String get description => 'Uygulamanın Health Connect\'ten beslenme verilerini okumasına izin verir.';
	@override String get usage => 'Bu izin, Health Connect\'e bağlı diğer uygulamalar tarafından kaydedilmiş beslenme bilgilerini okuyarak kapsamlı bir beslenme görünümü sağlar.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteTr implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteTr._(this._root);

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
			'onboarding.healthConnect.description' => 'Daha iyi içgörüler ve otomatik kalori takibi için sağlık verilerinizi senkronize edin',
			'onboarding.healthConnect.automaticTracking.title' => 'Otomatik Kalori Takibi',
			'onboarding.healthConnect.automaticTracking.description' => 'Fitness uygulamalarından yanan kalorileri takip edin',
			'onboarding.healthConnect.progressInsights.title' => 'İlerleme İçgörüleri',
			'onboarding.healthConnect.progressInsights.description' => 'Sağlık eğilimleriniz hakkında detaylı içgörüler edinin',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Sorunsuz Entegrasyon',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Favori sağlık uygulamalarınızdan veri senkronize edin',
			'onboarding.healthConnect.connected' => 'Health Connect Bağlandı',
			'onboarding.healthConnect.notConnected' => 'Health Connect Bağlı Değil',
			'onboarding.healthConnect.setup' => 'Health Connect Kurulumu',
			'onboarding.healthConnect.skipForNow' => 'Şimdi atla',
			'onboarding.healthConnect.statusConnected' => 'Health Connect bağlı.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect başarıyla bağlandı!',
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
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Günlük Özet',
			'home.dailySummary.calories' => 'Kaloriler',
			'home.dailySummary.carbs' => 'Karbonhidrat',
			'home.dailySummary.protein' => 'Protein',
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
			'home.connectHealth.description' => 'Beslenme verilerinizi Health Connect ile senkronize edin',
			'home.connectHealth.install' => 'Yükle',
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
			'meal.mealQuantity' => 'Öğün Miktarı',
			'meal.mealQuantityHint' => 'ör., 1 kase, 2 dilim',
			'meal.timeOfMeal' => 'Öğün Zamanı',
			'meal.timeOfMealHint' => 'Öğünü yediğiniz zamanı seçin',
			'meal.mealType' => 'Öğün Türü',
			'meal.nutrition.calories' => 'Kalori',
			'meal.nutrition.carbs' => 'Karbonhidrat (g)',
			'meal.nutrition.protein' => 'Protein (g)',
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
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'İpucu: Tutarlılık mükemmellikten daha önemlidir—düzenli kayıtlar önemli kalıpları ortaya çıkarır.',
			'meal.analysis.offlineTip1' => 'İpucu: Fotoğraflar için doğal ışık ve üstten çekim porsiyon doğruluğuna yardımcı olur.',
			'meal.analysis.offlineTip2' => 'İpucu: İçecekler, soslar ve pişirme yağını belirtin—bunlar genellikle unutulan kalorileri ekler.',
			'meal.analysis.offlineTip3' => 'İpucu: Hızlı bir porsiyon notu (1 kase, büyük kahve) tahminleri çok daha isabetli yapar.',
			'meal.analysis.offlineTip4' => 'İpucu: Öğünden sonra kayıt yapmak da alışkanlık kazandırır; mükemmellik zorunlu değildir.',
			'meal.analysis.offlineTip5' => 'İpucu: Kalorileri çok değiştiren pişirme şeklini belirtin (kızartma vs fırınlama).',
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
			'meal.nameRequired' => 'Kaydetmeden önce bir öğün adı girin.',
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
			'editProfile.unitLbs' => 'lbs',
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
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
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
			'settings.clearAllData.subtitle' => 'Tüm bilgilerinizi geri dönülemez şekilde silin',
			'settings.clearAllData.confirmationTitle' => 'Tüm Veriler Temizlensin mi?',
			'settings.clearAllData.confirmationMessage' => 'Bu işlem geri alınamaz. Tüm kaydedilmiş öğünleriniz, favorileriniz ve profil ayarlarınız kalıcı olarak silinecektir.',
			'settings.clearAllData.cancel' => 'İptal',
			'settings.clearAllData.clearEverything' => 'Her Şeyi Temizle',
			'settings.debugOptions.title' => 'Hata Ayıklama Seçenekleri',
			'settings.developerModeEnabled' => 'Geliştirici modu etkinleştirildi!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'İzinleri görüntüleyin ve yönetin',
			'settings.healthConnect.unavailable.title' => 'Health Connect Kullanılamıyor',
			'settings.healthConnect.unavailable.description' => 'Bu cihazda Health Connect kullanılamıyor. Lütfen Play Store\'dan Health Connect\'i yükleyin (Android 9+) veya Android 14+\'e güncelleyin.',
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
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Davranışsal izleme yok\n${appLabel} etkinliğinizi izlemez, kullanımı profillemez veya uygulamalar/veb siteleri arasında sizi takip etmez.',
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
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
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
