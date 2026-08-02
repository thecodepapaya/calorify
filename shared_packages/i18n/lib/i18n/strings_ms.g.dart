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
class TranslationsMs with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsMs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ms,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ms>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsMs _root = this; // ignore: unused_field

	@override 
	TranslationsMs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsMs(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Bahasa Melayu';
	@override String get flag => '🇲🇾';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsMs errors = _TranslationsErrorsMs._(_root);
	@override late final _TranslationsOnboardingMs onboarding = _TranslationsOnboardingMs._(_root);
	@override late final _TranslationsTabsMs tabs = _TranslationsTabsMs._(_root);
	@override late final _TranslationsHomeMs home = _TranslationsHomeMs._(_root);
	@override late final _TranslationsHistoryMs history = _TranslationsHistoryMs._(_root);
	@override late final _TranslationsMealMs meal = _TranslationsMealMs._(_root);
	@override late final _TranslationsFavoritesMs favorites = _TranslationsFavoritesMs._(_root);
	@override late final _TranslationsProfileMs profile = _TranslationsProfileMs._(_root);
	@override late final _TranslationsHealthScoreMs healthScore = _TranslationsHealthScoreMs._(_root);
	@override late final _TranslationsEditProfileMs editProfile = _TranslationsEditProfileMs._(_root);
	@override late final _TranslationsSettingsMs settings = _TranslationsSettingsMs._(_root);
	@override late final _TranslationsRemindersMs reminders = _TranslationsRemindersMs._(_root);
	@override late final _TranslationsNotificationsMs notifications = _TranslationsNotificationsMs._(_root);
	@override late final _TranslationsLoginMs login = _TranslationsLoginMs._(_root);
	@override late final _TranslationsDisclaimerMs disclaimer = _TranslationsDisclaimerMs._(_root);
	@override late final _TranslationsCommonMs common = _TranslationsCommonMs._(_root);
	@override late final _TranslationsFeedbackRatingMs feedbackRating = _TranslationsFeedbackRatingMs._(_root);
	@override late final _TranslationsHealthMs health = _TranslationsHealthMs._(_root);
}

// Path: errors
class _TranslationsErrorsMs implements TranslationsErrorsEn {
	_TranslationsErrorsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Anda telah membuat terlalu banyak permintaan. Sila tunggu seketika sebelum mencuba lagi.';
	@override String get networkError => 'Ralat rangkaian. Sila periksa sambungan internet anda.';
	@override String get unknownError => 'Ada yang tidak kena. Sila cuba lagi nanti.';
	@override String get loadingProfileData => 'Ralat memuat data profil';
	@override String get somethingWentWrong => 'Ada yang tidak kena.';
	@override String get retry => 'Cuba semula';
}

// Path: onboarding
class _TranslationsOnboardingMs implements TranslationsOnboardingEn {
	_TranslationsOnboardingMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Selamat datang ke ${appLabel}';
	@override String get subtitle => 'Rakan pemakanan peribadi anda yang dikuasakan oleh AI';
	@override String get getStarted => 'Mula';
	@override late final _TranslationsOnboardingFeaturesMs features = _TranslationsOnboardingFeaturesMs._(_root);
	@override late final _TranslationsOnboardingGenderMs gender = _TranslationsOnboardingGenderMs._(_root);
	@override late final _TranslationsOnboardingHeightMs height = _TranslationsOnboardingHeightMs._(_root);
	@override late final _TranslationsOnboardingWeightMs weight = _TranslationsOnboardingWeightMs._(_root);
	@override late final _TranslationsOnboardingAgeMs age = _TranslationsOnboardingAgeMs._(_root);
	@override late final _TranslationsOnboardingBmiScaleMs bmiScale = _TranslationsOnboardingBmiScaleMs._(_root);
	@override late final _TranslationsOnboardingWeightGoalMs weightGoal = _TranslationsOnboardingWeightGoalMs._(_root);
	@override late final _TranslationsOnboardingActivityLevelMs activityLevel = _TranslationsOnboardingActivityLevelMs._(_root);
	@override late final _TranslationsOnboardingHealthConnectMs healthConnect = _TranslationsOnboardingHealthConnectMs._(_root);
	@override late final _TranslationsOnboardingReinforcementMs reinforcement = _TranslationsOnboardingReinforcementMs._(_root);
}

// Path: tabs
class _TranslationsTabsMs implements TranslationsTabsEn {
	_TranslationsTabsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Papan Pemuka';
	@override String get history => 'Sejarah';
}

// Path: home
class _TranslationsHomeMs implements TranslationsHomeEn {
	_TranslationsHomeMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryMs aiSummary = _TranslationsHomeAiSummaryMs._(_root);
	@override late final _TranslationsHomeDailyGoalMs dailyGoal = _TranslationsHomeDailyGoalMs._(_root);
	@override late final _TranslationsHomeDailySummaryMs dailySummary = _TranslationsHomeDailySummaryMs._(_root);
	@override late final _TranslationsHomeIntakeProgressMs intakeProgress = _TranslationsHomeIntakeProgressMs._(_root);
	@override late final _TranslationsHomeIntakeHistoryMs intakeHistory = _TranslationsHomeIntakeHistoryMs._(_root);
	@override late final _TranslationsHomeMealLogMs mealLog = _TranslationsHomeMealLogMs._(_root);
	@override late final _TranslationsHomeMealDescriptionMs mealDescription = _TranslationsHomeMealDescriptionMs._(_root);
	@override late final _TranslationsHomeFavoriteMealsMs favoriteMeals = _TranslationsHomeFavoriteMealsMs._(_root);
	@override late final _TranslationsHomeMealSnapMs mealSnap = _TranslationsHomeMealSnapMs._(_root);
	@override late final _TranslationsHomeConnectHealthMs connectHealth = _TranslationsHomeConnectHealthMs._(_root);
}

// Path: history
class _TranslationsHistoryMs implements TranslationsHistoryEn {
	_TranslationsHistoryMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Tiada hidangan direkod';
	@override String get emptyMessage => 'Snap gambar hidangan terakhir anda untuk direkod di sini.';
	@override String get today => 'Hari ini';
	@override String get yesterday => 'Semalam';
}

// Path: meal
class _TranslationsMealMs implements TranslationsMealEn {
	_TranslationsMealMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Aduh!';
	@override String get delete => 'Padam';
	@override String get editMeal => 'Sunting Hidangan';
	@override String get addMeal => 'Tambah Hidangan';
	@override String get saveMeal => 'Simpan Hidangan';
	@override String get save => 'Simpan';
	@override String get mealName => 'Nama Hidangan';
	@override String get mealNameHint => 'cth., Telur Dadar dengan roti bakar';
	@override String get mealQuantity => 'Kuantiti Hidangan';
	@override String get mealQuantityHint => 'cth., 1 mangkuk, 2 keping';
	@override String get timeOfMeal => 'Masa Hidangan';
	@override String get timeOfMealHint => 'Pilih masa anda makan hidangan';
	@override String get mealType => 'Jenis Hidangan';
	@override late final _TranslationsMealNutritionMs nutrition = _TranslationsMealNutritionMs._(_root);
	@override late final _TranslationsMealDeleteConfirmationMs deleteConfirmation = _TranslationsMealDeleteConfirmationMs._(_root);
	@override String get addedToLog => 'Hidangan ditambah ke log anda!';
	@override String couldNotAdd({required Object error}) => 'Tidak dapat menambah hidangan: ${error}';
	@override String get savedSuccessfully => 'Hidangan berjaya ditambah!';
	@override String get updatedSuccessfully => 'Hidangan berjaya dikemas kini!';
	@override String errorSaving({required Object error}) => 'Ralat menyimpan hidangan: ${error}';
	@override String get removedFromFavorites => 'Dikeluarkan dari kegemaran!';
	@override String get savedAsFavorite => 'Hidangan disimpan sebagai kegemaran!';
	@override String get unfavorite => 'Buang Kegemaran';
	@override String couldNotUpdateFavorite({required Object error}) => 'Tidak dapat mengemas kini kegemaran: ${error}';
	@override String get feedbackThanks => 'Terima kasih atas maklum balas!';
	@override String get reanalysisUpdated => 'Analisis hidangan dikemas kini berdasarkan maklum balas anda.';
	@override String failedToProcess({required Object error}) => 'Gagal memproses: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Gagal memproses imej: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Ralat memampatkan imej: ${error}';
	@override String get failedToSave => 'Gagal menyimpan data. Sila cuba lagi.';
	@override String get skip => 'Langkau';
	@override late final _TranslationsMealQuestionFlowMs questionFlow = _TranslationsMealQuestionFlowMs._(_root);
	@override late final _TranslationsMealAnalysisMs analysis = _TranslationsMealAnalysisMs._(_root);
	@override late final _TranslationsMealFeedbackMs feedback = _TranslationsMealFeedbackMs._(_root);
	@override String get nameRequired => 'Masukkan nama hidangan sebelum menyimpan.';
}

// Path: favorites
class _TranslationsFavoritesMs implements TranslationsFavoritesEn {
	_TranslationsFavoritesMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kegemaran';
	@override String get empty => 'Tiada hidangan kegemaran lagi.';
	@override String get searchPlaceholder => 'Cari hidangan kegemaran';
	@override String get searchEmptyTitle => 'Tiada kegemaran sepadan carian anda';
	@override String get searchEmptySubtitle => 'Cuba nama hidangan, kuantiti, atau jenis hidangan lain.';
	@override String get sortLabel => 'Susun kegemaran';
	@override String get undo => 'Batal';
	@override String removed({required Object name}) => 'Telah mengeluarkan ${name} dari kegemaran';
	@override late final _TranslationsFavoritesSortOptionsMs sortOptions = _TranslationsFavoritesSortOptionsMs._(_root);
}

// Path: profile
class _TranslationsProfileMs implements TranslationsProfileEn {
	_TranslationsProfileMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Tiada data profil ditemui';
	@override String get yourProfile => 'Profil Anda';
	@override String get viewAndManage => 'Lihat dan urus maklumat kesihatan anda';
	@override late final _TranslationsProfileSectionsMs sections = _TranslationsProfileSectionsMs._(_root);
	@override String get gender => 'Jantina';
	@override String get height => 'Tinggi';
	@override String get weight => 'Berat';
	@override String get age => 'Umur';
	@override String get weightGoal => 'Matlamat Berat';
	@override String get targetWeight => 'Berat Sasaran';
	@override String get activityLevel => 'Tahap Aktiviti';
	@override String get healthMetrics => 'Metik Kesihatan';
	@override String get notSet => 'Belum ditetapkan';
	@override String get years => 'tahun';
	@override String get updatedSuccessfully => 'Profil berjaya dikemas kini!';
	@override late final _TranslationsProfileCalculatedValuesMs calculatedValues = _TranslationsProfileCalculatedValuesMs._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreMs implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skor Kesihatan';
	@override String get whyThisScore => 'Kenapa skor ini?';
	@override String get note => 'Skor ini adalah anggaran AI berdasarkan bahan yang dikenalpasti dan kepadatan nutrisi. Sentiasa rujuk profesional untuk nasihat pemakanan peribadi.';
	@override String get unhealthy => 'Tidak sihat';
	@override String get healthy => 'Sihat';
	@override String get neutral => 'Neutral';
}

// Path: editProfile
class _TranslationsEditProfileMs implements TranslationsEditProfileEn {
	_TranslationsEditProfileMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sunting Profil';
	@override late final _TranslationsEditProfileSectionsMs sections = _TranslationsEditProfileSectionsMs._(_root);
	@override String get gender => 'Jantina';
	@override String get dateOfBirth => 'Tarikh Lahir';
	@override String get height => 'Tinggi';
	@override String get weight => 'Berat';
	@override String get weightGoal => 'Matlamat Berat';
	@override String get activityLevel => 'Tahap Aktiviti';
	@override String get metric => 'Metrik';
	@override String get imperial => 'Imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metrik (cm)';
	@override String get imperialFtIn => 'Imperial (ft/in)';
	@override String get metricKg => 'Metrik (kg)';
	@override String get imperialLbs => 'Imperial (lbs)';
	@override late final _TranslationsEditProfileGendersMs genders = _TranslationsEditProfileGendersMs._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMs weightGoals = _TranslationsEditProfileWeightGoalsMs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsMs activityLevels = _TranslationsEditProfileActivityLevelsMs._(_root);
}

// Path: settings
class _TranslationsSettingsMs implements TranslationsSettingsEn {
	_TranslationsSettingsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tetapan';
	@override late final _TranslationsSettingsSectionsMs sections = _TranslationsSettingsSectionsMs._(_root);
	@override late final _TranslationsSettingsEditProfileMs editProfile = _TranslationsSettingsEditProfileMs._(_root);
	@override late final _TranslationsSettingsLanguageMs language = _TranslationsSettingsLanguageMs._(_root);
	@override late final _TranslationsSettingsHeightUnitMs heightUnit = _TranslationsSettingsHeightUnitMs._(_root);
	@override late final _TranslationsSettingsWeightUnitMs weightUnit = _TranslationsSettingsWeightUnitMs._(_root);
	@override late final _TranslationsSettingsMealRemindersMs mealReminders = _TranslationsSettingsMealRemindersMs._(_root);
	@override late final _TranslationsSettingsThemeMs theme = _TranslationsSettingsThemeMs._(_root);
	@override late final _TranslationsSettingsSendFeedbackMs sendFeedback = _TranslationsSettingsSendFeedbackMs._(_root);
	@override late final _TranslationsSettingsExportMealHistoryMs exportMealHistory = _TranslationsSettingsExportMealHistoryMs._(_root);
	@override late final _TranslationsSettingsClearAllDataMs clearAllData = _TranslationsSettingsClearAllDataMs._(_root);
	@override late final _TranslationsSettingsDebugOptionsMs debugOptions = _TranslationsSettingsDebugOptionsMs._(_root);
	@override String get developerModeEnabled => 'Mod pembangun diaktifkan!';
	@override late final _TranslationsSettingsHealthConnectMs healthConnect = _TranslationsSettingsHealthConnectMs._(_root);
	@override late final _TranslationsSettingsAboutMs about = _TranslationsSettingsAboutMs._(_root);
	@override late final _TranslationsSettingsAppInfoMs appInfo = _TranslationsSettingsAppInfoMs._(_root);
}

// Path: reminders
class _TranslationsRemindersMs implements TranslationsRemindersEn {
	_TranslationsRemindersMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kekal pada landasan dengan peringatan';
	@override String get description => 'Dapatkan peringatan lembut untuk log hidangan anda dan kekal konsisten dengan matlamat pemakanan anda';
	@override String get notificationsEnabled => 'Pemberitahuan Diaktifkan';
	@override String get notificationsDisabled => 'Pemberitahuan Dinonaktifkan';
	@override String get enabledSubtitle => 'Anda akan menerima peringatan hidangan';
	@override String get disabledSubtitle => 'Aktifkan pemberitahuan untuk mendapatkan peringatan hidangan';
	@override String get mealReminders => 'Peringatan Hidangan';
	@override String get breakfast => 'Sarapan';
	@override String get lunch => 'Makan Tengah Hari';
	@override String get dinner => 'Makan Malam';
	@override String get snack => 'Snek';
	@override String get unknown => 'Tidak Diketahui';
	@override String get change => 'Tukar';
	@override String get enableNotifications => 'Aktifkan Pemberitahuan';
	@override String get skipForNow => 'Langkau buat masa ini';
	@override String get saveChanges => 'Simpan Perubahan';
	@override String get enabledSuccessfully => 'Pemberitahuan berjaya diaktifkan!';
	@override String get permissionDenied => 'Kebenaran pemberitahuan ditolak';
	@override String errorEnabling({required Object error}) => 'Ralat mengaktifkan pemberitahuan: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Ralat melengkapkan persediaan: ${error}';
}

// Path: notifications
class _TranslationsNotificationsMs implements TranslationsNotificationsEn {
	_TranslationsNotificationsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastMs breakfast = _TranslationsNotificationsBreakfastMs._(_root);
	@override late final _TranslationsNotificationsLunchMs lunch = _TranslationsNotificationsLunchMs._(_root);
	@override late final _TranslationsNotificationsDinnerMs dinner = _TranslationsNotificationsDinnerMs._(_root);
	@override late final _TranslationsNotificationsSnackMs snack = _TranslationsNotificationsSnackMs._(_root);
	@override late final _TranslationsNotificationsTestMs test = _TranslationsNotificationsTestMs._(_root);
}

// Path: login
class _TranslationsLoginMs implements TranslationsLoginEn {
	_TranslationsLoginMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Log Masuk';
	@override String get signInWithGoogle => 'Log masuk dengan Google';
	@override String get signInFailed => 'Log Masuk Google gagal atau dibatalkan.';
}

// Path: disclaimer
class _TranslationsDisclaimerMs implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Sila Maklum';
	@override late final _TranslationsDisclaimerSnapMs snap = _TranslationsDisclaimerSnapMs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateMs weightEstimate = _TranslationsDisclaimerWeightEstimateMs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsMs healthMetrics = _TranslationsDisclaimerHealthMetricsMs._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureMs calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureMs._(_root);
}

// Path: common
class _TranslationsCommonMs implements TranslationsCommonEn {
	_TranslationsCommonMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get close => 'Tutup';
	@override String get kContinue => 'Teruskan';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingMs implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Menikmati ${appLabel}?';
	@override String get yes => 'Ya, saya menikmatinya';
	@override String get no => 'Tidak begitu';
	@override String get rateStepHeading => 'Beri penilaian di Play Store';
	@override String get emailStepHeading => 'Hantar maklum balas melalui e-mel';
	@override String soloDevMessage({required Object appLabel}) => 'Penilaian ringkas membantu orang lain menemui ${appLabel} dan menyokong pembangunan. Boleh luangkan masa untuk beri satu?';
	@override String get shareFeedbackViaEmail => 'Maklum balas anda membentuk apa yang akan datang — kami baca setiap mesej. Mahu kongsi pendapat melalui e-mel?';
	@override String get rateCta => 'Beri penilaian di Play Store';
	@override String get maybeLater => 'Mungkin nanti';
	@override String get sendFeedback => 'Hantar maklum balas';
	@override String get noThanks => 'Tidak, terima kasih';
	@override String get aboutUsDescription => 'Dibuat dengan penuh perhatian oleh pasukan kecil. Kami memberi tumpuan pada privasi, kesederhanaan, dan membantu anda membina tabiat makan yang lebih baik.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Ingin tahu siapa di sebalik ${appLabel}? Lihat ';
	@override String get aboutUsLinkLabel => 'Tentang kami';
	@override String get thankYouMessage => 'Terima kasih! Kami akan bertanya lagi pada masa lain.';
}

// Path: health
class _TranslationsHealthMs implements TranslationsHealthEn {
	_TranslationsHealthMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Tidak dapat menyegerakkan ke Health Connect';
	@override String get mealSynced => 'Hidangan disegerakkan dengan Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesMs implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionMs foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionMs._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisMs aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisMs._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationMs healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationMs._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderMs implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apakah jantina anda?';
	@override String get description => 'Jantina membantu kami mengira kadar metabolisme basal (BMR) dengan tepat.';
	@override String get next => 'Seterusnya';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightMs implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berapa tinggi anda?';
	@override String get description => 'Tinggi anda membantu kami mengira BMI dan keperluan tenaga dengan tepat.';
	@override String get metric => 'Metrik';
	@override String get imperial => 'Imperial';
	@override String get next => 'Seterusnya';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightMs implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Berapa berat anda sekarang?';
	@override String get currentDescription => 'Berat semasa anda penting untuk menyesuaikan sasaran harian anda.';
	@override String get targetTitle => 'Berapa berat sasaran anda?';
	@override String get targetDescription => 'Menetapkan berat sasaran membantu kami menentukan pelan jangka panjang anda.';
	@override String get metric => 'Metrik';
	@override String get imperial => 'Imperial';
	@override String get next => 'Seterusnya';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeMs implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bila tarikh lahir anda?';
	@override String get description => 'Umur anda membantu kami mengira keperluan kalori dengan tepat.';
	@override String get next => 'Seterusnya';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleMs implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kurang';
	@override String get healthy => 'Sihat';
	@override String get overweight => 'Berlebihan';
	@override String get obese => 'Obes';
	@override late final _TranslationsOnboardingBmiScaleCategoriesMs categories = _TranslationsOnboardingBmiScaleCategoriesMs._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesMs messages = _TranslationsOnboardingBmiScaleMessagesMs._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalMs implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apakah matlamat anda?';
	@override String get description => 'Pilih matlamat yang paling menggambarkan apa yang anda mahu capai';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelMs implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sejauh mana aktif anda?';
	@override String get description => 'Ini membantu kami mengira keperluan kalori harian anda dengan lebih tepat';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectMs implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sambung dengan Health Connect';
	@override String get description => 'Segerakkan data kesihatan anda untuk maklumat lebih baik dan pengesanan kalori automatik';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingMs automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingMs._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsMs progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsMs._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationMs seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationMs._(_root);
	@override String get connected => 'Health Connect Disambungkan';
	@override String get notConnected => 'Health Connect Tidak Disambungkan';
	@override String get setup => 'Sediakan Health Connect';
	@override String get skipForNow => 'Langkau buat masa ini';
	@override String get statusConnected => 'Health Connect telah disambungkan.';
	@override String get statusSuccess => 'Health Connect berjaya disambungkan!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Kebenaran ditolak. Sila aktifkan kebenaran Health Connect dari tetapan telefon untuk ${appLabel}.';
	@override String statusError({required Object error}) => 'Ralat semasa menyediakan Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementMs implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessMs trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessMs._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileMs healthProfile = _TranslationsOnboardingReinforcementHealthProfileMs._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleMs goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleMs._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryMs implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ringkasan AI Anda';
	@override String get logMore => 'Log lebih banyak hidangan dalam beberapa hari akan datang untuk mendapatkan wawasan AI peribadi anda.';
	@override String get loading => 'Memuat ringkasan anda...';
	@override String mealCount({required Object count}) => '${count} hidangan direkod';
	@override String macroBalanceScore({required Object score}) => 'Skor imbangan ${score}';
	@override String get topFoods => 'Makanan teratas';
	@override String get trendUp => 'Kalori meningkat';
	@override String get trendDown => 'Kalori menurun';
	@override String get trendSteady => 'Kalori stabil';
	@override String generatedAt({required Object time}) => 'Dikemas kini ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalMs implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tetapkan Sasaran Harian Anda';
	@override String get titleSet => 'Sasaran Harian Anda';
	@override String get description => 'Bersedia untuk memulakan perjalanan kesejahteraan anda? Tetapkan sasaran kalori harian di bawah untuk memulakan kemajuan anda.';
	@override String get descriptionSet => 'Kompas anda telah ditetapkan! Ini ialah sasaran kalori harian anda untuk membimbing anda.';
	@override String get yourGoal => 'Sasaran Anda';
	@override String get goal => 'Sasaran';
	@override String get dailyCalories => 'Kalori harian (kcal)';
	@override String get setGoal => 'Tetapkan Sasaran';
	@override String get intake => 'Pengambilan';
	@override String get burned => 'Dibakar';
	@override String get weightImpact => 'Kesan Berat';
	@override String get estLoss => 'Anggaran kehilangan';
	@override String get estGain => 'Anggaran penambahan';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryMs implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ringkasan Harian';
	@override String get calories => 'Kalori';
	@override String get carbs => 'Karbohidrat';
	@override String get protein => 'Protein';
	@override String get fat => 'Lemak';
	@override String get fiber => 'Serat';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Carta makro';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressMs implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pembahagian Makro Hari Ini';
	@override String get target => 'Sasaran';
	@override String get current => 'Semasa';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryMs implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sejarah Makro 7 Hari';
	@override String get trendTitle => 'Trend Hari Ini';
	@override String peakHour({required Object hour}) => 'Kemuncak: ${hour}:00';
	@override String get noHistoryYet => 'Tiada sejarah lagi';
	@override String get startLogging => 'Mula log hidangan untuk melihat\ntrend makro 7 hari anda di sini';
}

// Path: home.mealLog
class _TranslationsHomeMealLogMs implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hidangan Direkod';
	@override String get emptyMessage => 'Snap gambar hidangan terakhir anda untuk direkod di sini.';
	@override String get noMealsToday => 'Tiada hidangan direkod untuk hari ini';
	@override String get seeAllMeals => 'Lihat semua hidangan';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionMs implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tambah Pantas dengan AI';
	@override String get description => 'Huraikan hidangan anda, dan biarkan AI menguruskan butirannya.';
	@override String get hint => 'cth. untuk sarapan saya makan semangkuk besar oat dengan sebiji pisang dihiris dan satu scoop whey ...';
	@override String get analyzeMeal => 'Analisis hidangan';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsMs implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hidangan Kegemaran';
	@override String get description => 'Tambah salah satu hidangan kegemaran anda dengan pantas.';
	@override String get noFavorites => 'Tiada hidangan kegemaran lagi.';
	@override String get addFavoriteHint => 'Klik bintang pada hidangan untuk tandakan sebagai kegemaran.';
	@override String get seeAll => 'Lihat semua';
	@override String get add => 'Tambah';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapMs implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snap & Jejak Hidangan Anda';
	@override String get description => 'Gunakan kamera anda untuk mengambil gambar makanan untuk analisis AI.';
	@override String get openCamera => 'Buka Kamera';
	@override String get gallery => 'Galeri';
	@override String get compressingPhoto => 'Mengoptimumkan foto…';
	@override String get uploadingPhoto => 'Muat naik foto…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthMs implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Segerakkan dengan Health Connect';
	@override String get description => 'Segerakkan data pemakanan anda dengan Health Connect';
	@override String get install => 'Pasang';
	@override String get connect => 'Sambung';
}

// Path: meal.nutrition
class _TranslationsMealNutritionMs implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalori';
	@override String get carbs => 'Karbohidrat (g)';
	@override String get protein => 'Protein (g)';
	@override String get fat => 'Lemak (g)';
	@override String get fiber => 'Serat (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationMs implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Padam Hidangan';
	@override String get message => 'Anda pasti mahu memadam entri hidangan ini?';
	@override String get cancel => 'Batal';
	@override String get delete => 'Padam';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowMs implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Soalan ${current} dari ${total}';
	@override String get noQuestionsAvailable => 'Tiada soalan tersedia';
	@override String get next => 'Seterusnya';
	@override String get continueLabel => 'Teruskan';
}

// Path: meal.analysis
class _TranslationsMealAnalysisMs implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Menganalisis hidangan anda';
	@override String get stepStarted => 'Bermula…';
	@override String get stepDecomposition => 'Memahami hidangan anda…';
	@override String get stepIngredients => 'Memadankan bahan dengan data pemakanan…';
	@override String get stepUncertainty => 'Menyemak keyakinan…';
	@override String get stepMealTypeQuestion => 'Hampir siap…';
	@override String get stepResult => 'Memfinalkan keputusan anda…';
	@override String get stepError => 'Ada yang tidak kena';
	@override String get stepDefault => 'Menganalisis hidangan anda…';
	@override String get progressUnderstand => 'Memahami hidangan anda';
	@override String get progressMatch => 'Mencari nutrisi bahan';
	@override String get progressCheck => 'Menyemak bahagian dan keyakinan';
	@override String get progressMealType => 'Memilih jenis hidangan';
	@override String get progressFinish => 'Mengira kalori dan makro';
	@override String get detectedIngredientHeading => 'Bahan yang kami kenal pasti';
	@override String ingredientsOverflow({required Object count}) => '${count} lagi';
	@override String ingredientsLine({required Object count}) => '${count} bahan dikesan';
	@override String get ingredientsPending => 'Mengimbas bahan…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Konsistensi lebih penting daripada kesempurnaan—log secara tetap mendedahkan corak yang bermakna.';
	@override String get offlineTip1 => 'Tip: Untuk foto, cahaya semula jadi dan pandangan dari atas membantu ketepatan bahagian.';
	@override String get offlineTip2 => 'Tip: Nyatakan minuman, sos, dan minyak masak—mereka menambah kalori yang sering terlupa.';
	@override String get offlineTip3 => 'Tip: Nota bahagian ringkas (1 mangkuk, kopi besar) menjadikan anggaran lebih tepat.';
	@override String get offlineTip4 => 'Tip: Log selepas makan masih membina tabiat; kesempurnaan bukan wajib.';
	@override String get offlineTip5 => 'Tip: Beritahu cara penyediaan jika ia menukar kalori dengan banyak (goreng vs bakar).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackMs implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apa yang kelihatan salah?';
	@override String get subtitle => 'Bantu kami memperbaiki analisis dengan memilih satu atau lebih isu.';
	@override String get tellUsMore => 'Beritahu kami lebih lanjut';
	@override String get describeIncorrect => 'Huraikan apa yang tidak tepat';
	@override String get submit => 'Hantar';
	@override String get issueFoodIdentification => 'Pengenalpastian makanan';
	@override String get issuePortionSize => 'Saiz bahagian';
	@override String get issueCalorieDistribution => 'Pengagihan kalori';
	@override String get issueMacrosWrong => 'Makro salah';
	@override String get issueMissingItems => 'Barang hilang';
	@override String get issueExtraItems => 'Barang tambahan';
	@override String get issueOther => 'Lain-lain';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsMs implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Terkini';
	@override String get calories => 'Kalori';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsMs implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'MAKLUMAT ASAS';
	@override String get goalsAndActivity => 'SASARAN & AKTIVITI';
	@override String get calculatedValues => 'NILAI DIKIRA';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesMs implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Sasaran Harian';
	@override String get calPerDay => 'cal/hari';
	@override String get notAvailable => 'T/T';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsMs implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'MAKLUMAT PERIBADI';
	@override String get physicalMeasurements => 'UKURAN FIZIKAL';
	@override String get goalsAndActivity => 'SASARAN & AKTIVITI';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersMs implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get male => 'Lelaki';
	@override String get female => 'Perempuan';
	@override String get other => 'Lain-lain';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsMs implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightMs loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightMs._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightMs maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightMs._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightMs gainWeight = _TranslationsEditProfileWeightGoalsGainWeightMs._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsMs implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryMs sedentary = _TranslationsEditProfileActivityLevelsSedentaryMs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveMs lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveMs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveMs moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveMs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveMs veryActive = _TranslationsEditProfileActivityLevelsVeryActiveMs._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveMs extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveMs._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsMs implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'PENENTUAN LOKAL';
	@override String get notifications => 'PEMBERITAHUAN';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'SOKONGAN & UNDANG-UNDANG';
	@override String get about => 'TENTANG';
	@override String get dangerZone => 'ZON BERISIKO';
	@override String get developer => 'PEMBANGUN';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileMs implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sunting Profil';
	@override String get subtitle => 'Kemas kini maklumat peribadi anda';
}

// Path: settings.language
class _TranslationsSettingsLanguageMs implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bahasa';
	@override String get subtitle => 'Pilih bahasa pilihan anda';
	@override String get searchHint => 'Cari bahasa...';
	@override String get noResults => 'Tiada keputusan ditemui';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitMs implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unit Tinggi';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitMs implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unit Berat';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersMs implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Peringatan Hidangan';
	@override String get subtitle => 'Kekal pada landasan dengan amaran tepat pada masanya';
}

// Path: settings.theme
class _TranslationsSettingsThemeMs implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Cerah';
	@override String get dark => 'Gelap';
	@override String get system => 'Sistem';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackMs implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hantar Maklum Balas';
	@override String subtitle({required Object appLabel}) => 'Bantu kami memperbaiki ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} Maklum Balas Aplikasi';
	@override String get emailBodyPrefix => 'Sila nyatakan maklum balas anda di bawah:';
	@override String get appVersion => 'Versi App';
	@override String get device => 'Peranti';
	@override String get osVersion => 'Versi OS';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryMs implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eksport Sejarah Hidangan';
	@override String get subtitle => 'Kongsi CSV hidangan yang anda log';
	@override String get shareText => 'Eksport sejarah hidangan Calorify anda';
	@override String failed({required Object error}) => 'Tidak dapat mengeksport sejarah hidangan: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataMs implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kosongkan Semua Data';
	@override String get subtitle => 'Padam semua maklumat anda secara tidak boleh dipulihkan';
	@override String get confirmationTitle => 'Kosongkan Semua Data?';
	@override String get confirmationMessage => 'Tindakan ini tidak boleh dibatalkan. Semua hidangan yang anda log, kegemaran, dan tetapan profil akan dipadamkan secara kekal.';
	@override String get cancel => 'Batal';
	@override String get clearEverything => 'Padam Semua';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsMs implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pilihan Debug';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectMs implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Lihat dan urus kebenaran';
	@override late final _TranslationsSettingsHealthConnectUnavailableMs unavailable = _TranslationsSettingsHealthConnectUnavailableMs._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsMs permissions = _TranslationsSettingsHealthConnectPermissionsMs._(_root);
	@override String get managePermissions => 'Urus Kebenaran';
	@override String get openSettings => 'Buka Tetapan Health Connect';
	@override String get requestPermissions => 'Minta Kebenaran';
	@override String get permissionRequestCancelledOrFailed => 'Permintaan kebenaran dibatalkan atau gagal. Sila cuba lagi atau beri kebenaran secara manual di tetapan Health Connect.';
	@override String get permissionRequestFailed => 'Tidak dapat meminta kebenaran. Sila cuba lagi atau beri kebenaran secara manual di tetapan Health Connect.';
	@override String get requestingPermissions => 'Meminta...';
}

// Path: settings.about
class _TranslationsSettingsAboutMs implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tentang';
	@override String get tagline => 'Cepat, percuma, dan mengutamakan privasi untuk kesedaran kalori';
	@override late final _TranslationsSettingsAboutOurStoryMs ourStory = _TranslationsSettingsAboutOurStoryMs._(_root);
	@override late final _TranslationsSettingsAboutPrivacyMs privacy = _TranslationsSettingsAboutPrivacyMs._(_root);
	@override late final _TranslationsSettingsAboutDeveloperMs developer = _TranslationsSettingsAboutDeveloperMs._(_root);
	@override late final _TranslationsSettingsAboutFeedbackMs feedback = _TranslationsSettingsAboutFeedbackMs._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoMs implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Binaan ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastMs implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masa Sarapan! 🍳';
	@override String get body => 'Jangan lupa log sarapan anda';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchMs implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masa Makan Tengah Hari! 🥗';
	@override String get body => 'Masa untuk log makan tengah hari anda';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerMs implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masa Makan Malam! 🍽️';
	@override String get body => 'Jangan lupa log makan malam anda';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackMs implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masa Snek! 🍎';
	@override String get body => 'Masa untuk snek sihat';
}

// Path: notifications.test
class _TranslationsNotificationsTestMs implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pemberitahuan Ujian';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapMs implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} menyediakan maklumat pemakanan anggaran. Ketepatan bergantung pada input anda & variasi makanan. Gunakan sebagai panduan, bukan sumber muktamad. Rujuk profesional untuk nasihat pemakanan peribadi.';
	@override late final _TranslationsDisclaimerSnapPortionSizeMs portionSize = _TranslationsDisclaimerSnapPortionSizeMs._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsMs preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsMs._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsMs ingredients = _TranslationsDisclaimerSnapIngredientsMs._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsMs databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsMs._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateMs implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mengenai Anggaran Berat';
	@override String get description => 'Perubahan berat yang dijangka adalah anggaran teoretikal berdasarkan model kalori masuk vs keluar yang mudah. Ia bertujuan sebagai panduan motivasi sahaja, bukan ramalan berat sebenar anda.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyMs calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyMs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsMs biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsMs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightMs waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightMs._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceMs professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceMs._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsMs implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Metik ini membantu anda memahami keperluan tenaga badan anda dan membimbing sasaran pemakanan anda.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrMs bmr = _TranslationsDisclaimerHealthMetricsBmrMs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeMs tdee = _TranslationsDisclaimerHealthMetricsTdeeMs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalMs dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalMs._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureMs implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anggaran Pembakaran Kalori';
	@override String get description => 'Apabila data Health Connect tidak tersedia, kami menganggarkan kalori yang dibakar hari ini menggunakan BMR dan tahap aktiviti (TDEE), diselaraskan mengikut bahagian hari yang telah berlalu.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedMs howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedMs._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceMs professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceMs._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionMs implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengesanan Makanan Pintar';
	@override String get description => 'Ambil gambar dan biarkan AI kenal pasti hidangan anda';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisMs implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analisis AI';
	@override String get description => 'Dapatkan fakta pemakanan segera daripada penerangan anda';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationMs implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrasi Kesihatan';
	@override String get description => 'Sambungkan dengan Health Connect untuk maklumat yang lebih baik';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesMs implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Berat kurang';
	@override String get healthyWeight => 'Berat sihat';
	@override String get overweight => 'Berat berlebihan';
	@override String get obese => 'Obes';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesMs implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kami boleh membantu anda membina pelan sihat untuk mencapai berat seimbang dengan makanan berkhasiat.';
	@override String get healthy => 'Bagus! Anda berada dalam julat sihat. Kami akan membantu mengekalkan tenaga dan kecergasan anda.';
	@override String overweight({required Object appLabel}) => '${appLabel} akan memudahkan perjalanan anda dengan pengesanan dikuasakan AI untuk membantu anda mencapai sasaran dengan selesa.';
	@override String get obese => 'Kami sedia menyokong anda dengan panduan peribadi dan strategi mampan untuk matlamat kesihatan anda.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingMs implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengesanan Kalori Automatik';
	@override String get description => 'Jejaki kalori yang dibakar dari aplikasi kecergasan anda';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsMs implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wawasan Kemajuan';
	@override String get description => 'Dapatkan wawasan terperinci tentang trend kesihatan anda';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationMs implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrasi Lancar';
	@override String get description => 'Segerakkan data dari aplikasi kesihatan kegemaran anda';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessMs implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anda Tidak Bersendirian';
	@override String get genericMessage => 'Penyelidikan menunjukkan pengesanan konsisten adalah peramal nombor 1 kejayaan jangka panjang.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Bagi seorang ${age} tahun ${gender} yang ingin ${goal}, pengesanan konsisten adalah peramal nombor 1 kejayaan.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} menjadikannya 10x lebih mudah berbanding melakukan secara manual.';
	@override String get getStartedTitle => 'Sedia untuk bermula?';
	@override String get tipPhoto => 'Ambil gambar hidangan anda untuk analisis segera';
	@override String get tipConsistency => 'Log secara konsisten untuk melihat kemajuan bermakna';
	@override String get tipProgress => 'Jejaki kemajuan anda setiap hari untuk kekal bermotivasi';
	@override String get button => 'Mari Mula';
	@override String get defaultGender => 'individu';
	@override String get defaultGoal => 'anda yang lebih sihat';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileMs implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil Kesihatan Anda';
	@override String bmiDescription({required Object bmi}) => 'Berdasarkan metrik anda, BMI anda ialah ${bmi}.';
	@override String get finalizeDescription => 'Mari lengkapkan profil anda untuk menyesuaikan pengalaman anda.';
	@override String get goalGain => 'menambah';
	@override String get goalLose => 'mengurangkan';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Untuk mencapai matlamat anda, anda akan ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Anda telah mencapai berat sasaran! Kami akan membantu anda mengekalkannya.';
	@override String get button => 'Mari Mula';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleMs implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permulaan Hebat!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Anda telah mengambil langkah pertama ke arah ${goalText}. Oleh kerana anda ${activityText}, ${appLabel} akan menyesuaikan sasaran anda mengikut gaya hidup anda.';
	@override String get personalizedTargets => 'Sasaran kalori peribadi';
	@override String get aiMealDetection => 'Pengesanan hidangan dikuasakan AI';
	@override String get macroBreakdowns => 'Pecahan makro-nutrien terperinci';
	@override String get button => 'Mari Mula';
	@override String get defaultGoal => 'matlamat anda';
	@override String get defaultActivity => 'aktif';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightMs implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Turunkan Berat';
	@override String get description => 'Cipta defisit kalori untuk menurunkan berat';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightMs implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kekalkan Berat';
	@override String get description => 'Kekalkan berat semasa anda';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightMs implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tambah Berat';
	@override String get description => 'Cipta lebihan kalori untuk menambah berat';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryMs implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tidak Aktif';
	@override String get description => 'Sedikit atau tiada senaman';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveMs implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kurang Aktif';
	@override String get description => 'Senaman ringan 1-3 hari/minggu';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveMs implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sederhana Aktif';
	@override String get description => 'Senaman sederhana 3-5 hari/minggu';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveMs implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sangat Aktif';
	@override String get description => 'Senaman berat 6-7 hari/minggu';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveMs implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Amat Aktif';
	@override String get description => 'Senaman sangat berat atau kerja fizikal';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableMs implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect Tidak Tersedia';
	@override String get description => 'Health Connect tidak tersedia pada peranti ini. Sila pasang Health Connect dari Play Store (Android 9+) atau kemas kini ke Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsMs implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kebenaran';
	@override String get description => 'Kebenaran berikut diminta untuk menyediakan integrasi Health Connect:';
	@override String get granted => 'Diberi';
	@override String get notGranted => 'Belum Diberi';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedMs caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedMs._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadMs nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadMs._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteMs nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteMs._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryMs implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kisah Kami';
	@override String content({required Object appLabel}) => '${appLabel} lahir daripada kekecewaan ringkas: kebanyakan aplikasi pengesanan kalori terlalu rumit, memerlukan input manual berterusan, mengenakan yuran langganan tinggi, atau mengkompromi privasi.\n\nSebagai pembangun solo, saya mahu membina sesuatu yang lebih ringkas dan adil — sebuah aplikasi yang menggunakan AI untuk mengurangkan usaha, kekal pantas dan percuma untuk digunakan, serta menghormati data kesihatan anda.\n\n${appLabel} ialah aplikasi yang saya harap wujud: tiada akaun, tiada penjejakan, tiada iklan — cuma wawasan yang jelas dan praktikal serta matlamat kesihatan anda.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyMs implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Privasi Anda Penting';
	@override String get description => 'Privasi bukan selepas-fikir — ia adalah prinsip reka bentuk. Ini maksudnya dalam amalan:';
	@override String get noAccounts => 'Tiada akaun diperlukan\nGunakan aplikasi serta-merta. Tiada pendaftaran, tiada identiti.';
	@override String noTracking({required Object appLabel}) => 'Tiada penjejakan tingkah laku\n${appLabel} tidak memantau aktiviti anda, membina profil penggunaan, atau menjejak anda merentasi aplikasi atau laman web.';
	@override String noAds({required Object appLabel}) => 'Tiada iklan secara reka bentuk\n${appLabel} dibina untuk berfungsi tanpa iklan atau pemanfaatkan data.';
	@override String get noDataSelling => 'Tiada penjualan data\nData kesihatan anda tidak pernah dijual atau dikongsi dengan pihak ketiga.';
	@override String get localStorage => 'Penyimpanan bermula-lokal\nData anda kekal pada peranti anda.';
	@override String get privacyPolicy => 'Dasar Privasi';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperMs implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dibina oleh Pembangun Solo';
	@override String description({required Object appLabel}) => '${appLabel} dibina dan diselenggara oleh seorang pembangun solo yang memberi tumpuan kepada mencipta perisian kesihatan yang tenang dan menghormati privasi.\n\nMaklum balas dibaca secara peribadi dan membantu membentuk hala tuju aplikasi.';
	@override String get website => 'Laman Web';
	@override String get email => 'E-mel';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackMs implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Menikmati ${appLabel}?';
	@override String description({required Object appLabel}) => 'Maklum balas anda membantu menjadikan ${appLabel} lebih baik untuk semua.';
	@override String get rateApp => 'Beri penilaian di Play Store';
	@override String get sendFeedback => 'Hantar Maklum Balas';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeMs implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Saiz Bahagian';
	@override String get description => 'Ketepatan anggaran bergantung kuat pada penilaian saiz bahagian yang betul oleh anda.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsMs implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kaedah Penyediaan';
	@override String description({required Object appLabel}) => 'Kaedah memasak boleh mengubah kandungan pemakanan makanan dengan ketara. Anggaran ${appLabel} mungkin tidak sentiasa mengambil kira variasi ini.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsMs implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bahan';
	@override String get description => 'Hidangan kompleks dengan banyak bahan tersembunyi mungkin menghasilkan anggaran kurang tepat.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsMs implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Had Pangkalan Data';
	@override String description({required Object appLabel}) => 'Pangkalan data makanan ${appLabel} luas tetapi mungkin tidak mengandungi setiap item makanan atau variasinya.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyMs implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ketepatan Kalori';
	@override String get description => 'Anggaran ini hanya setepat pengambilan dan perbelanjaan kalori yang anda log. Pencatatan tidak tepat akan menghasilkan unjuran yang tidak tepat.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsMs implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Faktor Biologi';
	@override String description({required Object appLabel}) => 'Kehilangan/penambahan berat sebenar dipengaruhi oleh metabolisme, hormon, tidur, tekanan, hidrasi, dan faktor individu lain yang ${appLabel} tidak dapat ukur.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightMs implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berat Air & Fluktuasi';
	@override String get description => 'Berat harian normal boleh berfluktuasi dengan ketara disebabkan penahanan air, pencernaan, dan masa. Anggaran tidak mengambil kira perubahan harian ini.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceMs implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Panduan Profesional';
	@override String get description => 'Jangan gunakan anggaran ini untuk membuat keputusan perubatan. Sentiasa rujuk profesional kesihatan atau pakar diet berdaftar untuk nasihat pengurusan berat peribadi.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrMs implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) ialah jumlah kalori yang badan anda bakar ketika berehat untuk mengekalkan fungsi asas seperti bernafas dan peredaran. BMR bergantung pada umur, jantina, tinggi, dan berat anda. BMR lebih tinggi bermaksud badan anda secara semula jadi membakar lebih banyak kalori ketika berehat, sering kerana lebih banyak jisim otot, usia lebih muda, atau jantina lelaki. BMR lebih rendah biasanya menunjukkan jisim otot berkurang, usia lebih tua, atau jantina perempuan.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeMs implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) ialah jumlah kalori yang anda bakar sehari, termasuk BMR anda ditambah kalori dari aktiviti fizikal dan pergerakan harian. TDEE bergantung pada BMR dan tahap aktiviti anda. TDEE lebih tinggi bermaksud anda membakar lebih banyak kalori keseluruhan, biasanya kerana lebih aktif atau mempunyai BMR lebih tinggi. TDEE lebih rendah menunjukkan aktiviti harian kurang atau BMR lebih rendah.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalMs implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sasaran Harian';
	@override String get description => 'Sasaran Harian ialah pengambilan kalori harian yang disyorkan berdasarkan TDEE dan matlamat berat anda. Untuk penurunan berat, anda mengambil lebih sedikit kalori daripada TDEE anda. Untuk mengekalkan berat, anda menyamai TDEE anda. Untuk penambahan berat, anda mengambil lebih banyak kalori daripada TDEE anda. Ini membantu anda mencapai perubahan berat yang diingini pada kadar sihat.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedMs implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bagaimana Anggaran Dikira';
	@override String get description => 'Kami mengira TDEE anda (berdasarkan profil anda) dan mendarabkannya dengan pecahan hari yang telah berlalu (jam + minit) / 24 untuk menganggarkan kalori yang dibakar setakat ini.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceMs implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Panduan Profesional';
	@override String get description => 'Jangan gunakan anggaran ini untuk membuat keputusan perubatan. Sentiasa rujuk profesional kesihatan atau pakar diet berdaftar untuk nasihat pengurusan berat peribadi.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedMs implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Baca Jumlah Kalori Dibakar';
	@override String get description => 'Membenarkan aplikasi membaca jumlah kalori anda yang dibakar dari Health Connect.';
	@override String get usage => 'Kebenaran ini digunakan untuk memaparkan pembakaran kalori harian anda dalam aplikasi, membantu anda memahami perbelanjaan tenaga keseluruhan anda sepanjang hari.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadMs implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Baca Data Pemakanan';
	@override String get description => 'Membenarkan aplikasi membaca data pemakanan dari Health Connect.';
	@override String get usage => 'Kebenaran ini membolehkan aplikasi membaca maklumat pemakanan yang mungkin telah direkod oleh aplikasi lain yang disambungkan ke Health Connect, memberikan gambaran menyeluruh tentang pemakanan anda.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteMs implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tulis Data Pemakanan';
	@override String get description => 'Membenarkan aplikasi menulis data pemakanan ke Health Connect.';
	@override String get usage => 'Kebenaran ini membolehkan aplikasi menyegerakkan hidangan yang anda log ke Health Connect, menjadikan data pemakanan anda tersedia kepada aplikasi kesihatan dan kecergasan lain yang anda gunakan.';
}

/// The flat map containing all translations for locale <ms>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsMs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Bahasa Melayu',
			'flag' => '🇲🇾',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Anda telah membuat terlalu banyak permintaan. Sila tunggu seketika sebelum mencuba lagi.',
			'errors.networkError' => 'Ralat rangkaian. Sila periksa sambungan internet anda.',
			'errors.unknownError' => 'Ada yang tidak kena. Sila cuba lagi nanti.',
			'errors.loadingProfileData' => 'Ralat memuat data profil',
			'errors.somethingWentWrong' => 'Ada yang tidak kena.',
			'errors.retry' => 'Cuba semula',
			'onboarding.welcome' => ({required Object appLabel}) => 'Selamat datang ke ${appLabel}',
			'onboarding.subtitle' => 'Rakan pemakanan peribadi anda yang dikuasakan oleh AI',
			'onboarding.getStarted' => 'Mula',
			'onboarding.features.foodRecognition.title' => 'Pengesanan Makanan Pintar',
			'onboarding.features.foodRecognition.description' => 'Ambil gambar dan biarkan AI kenal pasti hidangan anda',
			'onboarding.features.aiAnalysis.title' => 'Analisis AI',
			'onboarding.features.aiAnalysis.description' => 'Dapatkan fakta pemakanan segera daripada penerangan anda',
			'onboarding.features.healthIntegration.title' => 'Integrasi Kesihatan',
			'onboarding.features.healthIntegration.description' => 'Sambungkan dengan Health Connect untuk maklumat yang lebih baik',
			'onboarding.gender.title' => 'Apakah jantina anda?',
			'onboarding.gender.description' => 'Jantina membantu kami mengira kadar metabolisme basal (BMR) dengan tepat.',
			'onboarding.gender.next' => 'Seterusnya',
			'onboarding.height.title' => 'Berapa tinggi anda?',
			'onboarding.height.description' => 'Tinggi anda membantu kami mengira BMI dan keperluan tenaga dengan tepat.',
			'onboarding.height.metric' => 'Metrik',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Seterusnya',
			'onboarding.weight.currentTitle' => 'Berapa berat anda sekarang?',
			'onboarding.weight.currentDescription' => 'Berat semasa anda penting untuk menyesuaikan sasaran harian anda.',
			'onboarding.weight.targetTitle' => 'Berapa berat sasaran anda?',
			'onboarding.weight.targetDescription' => 'Menetapkan berat sasaran membantu kami menentukan pelan jangka panjang anda.',
			'onboarding.weight.metric' => 'Metrik',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Seterusnya',
			'onboarding.age.title' => 'Bila tarikh lahir anda?',
			'onboarding.age.description' => 'Umur anda membantu kami mengira keperluan kalori dengan tepat.',
			'onboarding.age.next' => 'Seterusnya',
			'onboarding.bmiScale.underweight' => 'Kurang',
			'onboarding.bmiScale.healthy' => 'Sihat',
			'onboarding.bmiScale.overweight' => 'Berlebihan',
			'onboarding.bmiScale.obese' => 'Obes',
			'onboarding.bmiScale.categories.underweight' => 'Berat kurang',
			'onboarding.bmiScale.categories.healthyWeight' => 'Berat sihat',
			'onboarding.bmiScale.categories.overweight' => 'Berat berlebihan',
			'onboarding.bmiScale.categories.obese' => 'Obes',
			'onboarding.bmiScale.messages.underweight' => 'Kami boleh membantu anda membina pelan sihat untuk mencapai berat seimbang dengan makanan berkhasiat.',
			'onboarding.bmiScale.messages.healthy' => 'Bagus! Anda berada dalam julat sihat. Kami akan membantu mengekalkan tenaga dan kecergasan anda.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} akan memudahkan perjalanan anda dengan pengesanan dikuasakan AI untuk membantu anda mencapai sasaran dengan selesa.',
			'onboarding.bmiScale.messages.obese' => 'Kami sedia menyokong anda dengan panduan peribadi dan strategi mampan untuk matlamat kesihatan anda.',
			'onboarding.weightGoal.title' => 'Apakah matlamat anda?',
			'onboarding.weightGoal.description' => 'Pilih matlamat yang paling menggambarkan apa yang anda mahu capai',
			'onboarding.activityLevel.title' => 'Sejauh mana aktif anda?',
			'onboarding.activityLevel.description' => 'Ini membantu kami mengira keperluan kalori harian anda dengan lebih tepat',
			'onboarding.healthConnect.title' => 'Sambung dengan Health Connect',
			'onboarding.healthConnect.description' => 'Segerakkan data kesihatan anda untuk maklumat lebih baik dan pengesanan kalori automatik',
			'onboarding.healthConnect.automaticTracking.title' => 'Pengesanan Kalori Automatik',
			'onboarding.healthConnect.automaticTracking.description' => 'Jejaki kalori yang dibakar dari aplikasi kecergasan anda',
			'onboarding.healthConnect.progressInsights.title' => 'Wawasan Kemajuan',
			'onboarding.healthConnect.progressInsights.description' => 'Dapatkan wawasan terperinci tentang trend kesihatan anda',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integrasi Lancar',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Segerakkan data dari aplikasi kesihatan kegemaran anda',
			'onboarding.healthConnect.connected' => 'Health Connect Disambungkan',
			'onboarding.healthConnect.notConnected' => 'Health Connect Tidak Disambungkan',
			'onboarding.healthConnect.setup' => 'Sediakan Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Langkau buat masa ini',
			'onboarding.healthConnect.statusConnected' => 'Health Connect telah disambungkan.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect berjaya disambungkan!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Kebenaran ditolak. Sila aktifkan kebenaran Health Connect dari tetapan telefon untuk ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Ralat semasa menyediakan Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Anda Tidak Bersendirian',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Penyelidikan menunjukkan pengesanan konsisten adalah peramal nombor 1 kejayaan jangka panjang.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Bagi seorang ${age} tahun ${gender} yang ingin ${goal}, pengesanan konsisten adalah peramal nombor 1 kejayaan.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} menjadikannya 10x lebih mudah berbanding melakukan secara manual.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Sedia untuk bermula?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Ambil gambar hidangan anda untuk analisis segera',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Log secara konsisten untuk melihat kemajuan bermakna',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Jejaki kemajuan anda setiap hari untuk kekal bermotivasi',
			'onboarding.reinforcement.trackingSuccess.button' => 'Mari Mula',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individu',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'anda yang lebih sihat',
			'onboarding.reinforcement.healthProfile.title' => 'Profil Kesihatan Anda',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Berdasarkan metrik anda, BMI anda ialah ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Mari lengkapkan profil anda untuk menyesuaikan pengalaman anda.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'menambah',
			'onboarding.reinforcement.healthProfile.goalLose' => 'mengurangkan',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Untuk mencapai matlamat anda, anda akan ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Anda telah mencapai berat sasaran! Kami akan membantu anda mengekalkannya.',
			'onboarding.reinforcement.healthProfile.button' => 'Mari Mula',
			'onboarding.reinforcement.goalLifestyle.title' => 'Permulaan Hebat!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Anda telah mengambil langkah pertama ke arah ${goalText}. Oleh kerana anda ${activityText}, ${appLabel} akan menyesuaikan sasaran anda mengikut gaya hidup anda.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Sasaran kalori peribadi',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Pengesanan hidangan dikuasakan AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Pecahan makro-nutrien terperinci',
			'onboarding.reinforcement.goalLifestyle.button' => 'Mari Mula',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'matlamat anda',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktif',
			'tabs.dashboard' => 'Papan Pemuka',
			'tabs.history' => 'Sejarah',
			'home.aiSummary.title' => 'Ringkasan AI Anda',
			'home.aiSummary.logMore' => 'Log lebih banyak hidangan dalam beberapa hari akan datang untuk mendapatkan wawasan AI peribadi anda.',
			'home.aiSummary.loading' => 'Memuat ringkasan anda...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} hidangan direkod',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Skor imbangan ${score}',
			'home.aiSummary.topFoods' => 'Makanan teratas',
			'home.aiSummary.trendUp' => 'Kalori meningkat',
			'home.aiSummary.trendDown' => 'Kalori menurun',
			'home.aiSummary.trendSteady' => 'Kalori stabil',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Dikemas kini ${time}',
			'home.dailyGoal.title' => 'Tetapkan Sasaran Harian Anda',
			'home.dailyGoal.titleSet' => 'Sasaran Harian Anda',
			'home.dailyGoal.description' => 'Bersedia untuk memulakan perjalanan kesejahteraan anda? Tetapkan sasaran kalori harian di bawah untuk memulakan kemajuan anda.',
			'home.dailyGoal.descriptionSet' => 'Kompas anda telah ditetapkan! Ini ialah sasaran kalori harian anda untuk membimbing anda.',
			'home.dailyGoal.yourGoal' => 'Sasaran Anda',
			'home.dailyGoal.goal' => 'Sasaran',
			'home.dailyGoal.dailyCalories' => 'Kalori harian (kcal)',
			'home.dailyGoal.setGoal' => 'Tetapkan Sasaran',
			'home.dailyGoal.intake' => 'Pengambilan',
			'home.dailyGoal.burned' => 'Dibakar',
			'home.dailyGoal.weightImpact' => 'Kesan Berat',
			'home.dailyGoal.estLoss' => 'Anggaran kehilangan',
			'home.dailyGoal.estGain' => 'Anggaran penambahan',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Ringkasan Harian',
			'home.dailySummary.calories' => 'Kalori',
			'home.dailySummary.carbs' => 'Karbohidrat',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Lemak',
			'home.dailySummary.fiber' => 'Serat',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Carta makro',
			'home.intakeProgress.title' => 'Pembahagian Makro Hari Ini',
			'home.intakeProgress.target' => 'Sasaran',
			'home.intakeProgress.current' => 'Semasa',
			'home.intakeHistory.title' => 'Sejarah Makro 7 Hari',
			'home.intakeHistory.trendTitle' => 'Trend Hari Ini',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Kemuncak: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Tiada sejarah lagi',
			'home.intakeHistory.startLogging' => 'Mula log hidangan untuk melihat\ntrend makro 7 hari anda di sini',
			'home.mealLog.title' => 'Hidangan Direkod',
			'home.mealLog.emptyMessage' => 'Snap gambar hidangan terakhir anda untuk direkod di sini.',
			'home.mealLog.noMealsToday' => 'Tiada hidangan direkod untuk hari ini',
			'home.mealLog.seeAllMeals' => 'Lihat semua hidangan',
			'home.mealDescription.title' => 'Tambah Pantas dengan AI',
			'home.mealDescription.description' => 'Huraikan hidangan anda, dan biarkan AI menguruskan butirannya.',
			'home.mealDescription.hint' => 'cth. untuk sarapan saya makan semangkuk besar oat dengan sebiji pisang dihiris dan satu scoop whey ...',
			'home.mealDescription.analyzeMeal' => 'Analisis hidangan',
			'home.favoriteMeals.title' => 'Hidangan Kegemaran',
			'home.favoriteMeals.description' => 'Tambah salah satu hidangan kegemaran anda dengan pantas.',
			'home.favoriteMeals.noFavorites' => 'Tiada hidangan kegemaran lagi.',
			'home.favoriteMeals.addFavoriteHint' => 'Klik bintang pada hidangan untuk tandakan sebagai kegemaran.',
			'home.favoriteMeals.seeAll' => 'Lihat semua',
			'home.favoriteMeals.add' => 'Tambah',
			'home.mealSnap.title' => 'Snap & Jejak Hidangan Anda',
			'home.mealSnap.description' => 'Gunakan kamera anda untuk mengambil gambar makanan untuk analisis AI.',
			'home.mealSnap.openCamera' => 'Buka Kamera',
			'home.mealSnap.gallery' => 'Galeri',
			'home.mealSnap.compressingPhoto' => 'Mengoptimumkan foto…',
			'home.mealSnap.uploadingPhoto' => 'Muat naik foto…',
			'home.connectHealth.title' => 'Segerakkan dengan Health Connect',
			'home.connectHealth.description' => 'Segerakkan data pemakanan anda dengan Health Connect',
			'home.connectHealth.install' => 'Pasang',
			'home.connectHealth.connect' => 'Sambung',
			'history.noMeals' => 'Tiada hidangan direkod',
			'history.emptyMessage' => 'Snap gambar hidangan terakhir anda untuk direkod di sini.',
			'history.today' => 'Hari ini',
			'history.yesterday' => 'Semalam',
			'meal.ohNo' => 'Aduh!',
			'meal.delete' => 'Padam',
			'meal.editMeal' => 'Sunting Hidangan',
			'meal.addMeal' => 'Tambah Hidangan',
			'meal.saveMeal' => 'Simpan Hidangan',
			'meal.save' => 'Simpan',
			'meal.mealName' => 'Nama Hidangan',
			'meal.mealNameHint' => 'cth., Telur Dadar dengan roti bakar',
			'meal.mealQuantity' => 'Kuantiti Hidangan',
			'meal.mealQuantityHint' => 'cth., 1 mangkuk, 2 keping',
			'meal.timeOfMeal' => 'Masa Hidangan',
			'meal.timeOfMealHint' => 'Pilih masa anda makan hidangan',
			'meal.mealType' => 'Jenis Hidangan',
			'meal.nutrition.calories' => 'Kalori',
			'meal.nutrition.carbs' => 'Karbohidrat (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Lemak (g)',
			'meal.nutrition.fiber' => 'Serat (g)',
			'meal.deleteConfirmation.title' => 'Padam Hidangan',
			'meal.deleteConfirmation.message' => 'Anda pasti mahu memadam entri hidangan ini?',
			'meal.deleteConfirmation.cancel' => 'Batal',
			'meal.deleteConfirmation.delete' => 'Padam',
			'meal.addedToLog' => 'Hidangan ditambah ke log anda!',
			'meal.couldNotAdd' => ({required Object error}) => 'Tidak dapat menambah hidangan: ${error}',
			'meal.savedSuccessfully' => 'Hidangan berjaya ditambah!',
			'meal.updatedSuccessfully' => 'Hidangan berjaya dikemas kini!',
			'meal.errorSaving' => ({required Object error}) => 'Ralat menyimpan hidangan: ${error}',
			'meal.removedFromFavorites' => 'Dikeluarkan dari kegemaran!',
			'meal.savedAsFavorite' => 'Hidangan disimpan sebagai kegemaran!',
			'meal.unfavorite' => 'Buang Kegemaran',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Tidak dapat mengemas kini kegemaran: ${error}',
			'meal.feedbackThanks' => 'Terima kasih atas maklum balas!',
			'meal.reanalysisUpdated' => 'Analisis hidangan dikemas kini berdasarkan maklum balas anda.',
			'meal.failedToProcess' => ({required Object error}) => 'Gagal memproses: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Gagal memproses imej: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Ralat memampatkan imej: ${error}',
			'meal.failedToSave' => 'Gagal menyimpan data. Sila cuba lagi.',
			'meal.skip' => 'Langkau',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Soalan ${current} dari ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Tiada soalan tersedia',
			'meal.questionFlow.next' => 'Seterusnya',
			'meal.questionFlow.continueLabel' => 'Teruskan',
			'meal.analysis.title' => 'Menganalisis hidangan anda',
			'meal.analysis.stepStarted' => 'Bermula…',
			'meal.analysis.stepDecomposition' => 'Memahami hidangan anda…',
			'meal.analysis.stepIngredients' => 'Memadankan bahan dengan data pemakanan…',
			'meal.analysis.stepUncertainty' => 'Menyemak keyakinan…',
			'meal.analysis.stepMealTypeQuestion' => 'Hampir siap…',
			'meal.analysis.stepResult' => 'Memfinalkan keputusan anda…',
			'meal.analysis.stepError' => 'Ada yang tidak kena',
			'meal.analysis.stepDefault' => 'Menganalisis hidangan anda…',
			'meal.analysis.progressUnderstand' => 'Memahami hidangan anda',
			'meal.analysis.progressMatch' => 'Mencari nutrisi bahan',
			'meal.analysis.progressCheck' => 'Menyemak bahagian dan keyakinan',
			'meal.analysis.progressMealType' => 'Memilih jenis hidangan',
			'meal.analysis.progressFinish' => 'Mengira kalori dan makro',
			'meal.analysis.detectedIngredientHeading' => 'Bahan yang kami kenal pasti',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} lagi',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} bahan dikesan',
			'meal.analysis.ingredientsPending' => 'Mengimbas bahan…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Konsistensi lebih penting daripada kesempurnaan—log secara tetap mendedahkan corak yang bermakna.',
			'meal.analysis.offlineTip1' => 'Tip: Untuk foto, cahaya semula jadi dan pandangan dari atas membantu ketepatan bahagian.',
			'meal.analysis.offlineTip2' => 'Tip: Nyatakan minuman, sos, dan minyak masak—mereka menambah kalori yang sering terlupa.',
			'meal.analysis.offlineTip3' => 'Tip: Nota bahagian ringkas (1 mangkuk, kopi besar) menjadikan anggaran lebih tepat.',
			'meal.analysis.offlineTip4' => 'Tip: Log selepas makan masih membina tabiat; kesempurnaan bukan wajib.',
			'meal.analysis.offlineTip5' => 'Tip: Beritahu cara penyediaan jika ia menukar kalori dengan banyak (goreng vs bakar).',
			'meal.feedback.title' => 'Apa yang kelihatan salah?',
			'meal.feedback.subtitle' => 'Bantu kami memperbaiki analisis dengan memilih satu atau lebih isu.',
			'meal.feedback.tellUsMore' => 'Beritahu kami lebih lanjut',
			'meal.feedback.describeIncorrect' => 'Huraikan apa yang tidak tepat',
			'meal.feedback.submit' => 'Hantar',
			'meal.feedback.issueFoodIdentification' => 'Pengenalpastian makanan',
			'meal.feedback.issuePortionSize' => 'Saiz bahagian',
			'meal.feedback.issueCalorieDistribution' => 'Pengagihan kalori',
			'meal.feedback.issueMacrosWrong' => 'Makro salah',
			'meal.feedback.issueMissingItems' => 'Barang hilang',
			'meal.feedback.issueExtraItems' => 'Barang tambahan',
			'meal.feedback.issueOther' => 'Lain-lain',
			'meal.nameRequired' => 'Masukkan nama hidangan sebelum menyimpan.',
			'favorites.title' => 'Kegemaran',
			'favorites.empty' => 'Tiada hidangan kegemaran lagi.',
			'favorites.searchPlaceholder' => 'Cari hidangan kegemaran',
			'favorites.searchEmptyTitle' => 'Tiada kegemaran sepadan carian anda',
			'favorites.searchEmptySubtitle' => 'Cuba nama hidangan, kuantiti, atau jenis hidangan lain.',
			'favorites.sortLabel' => 'Susun kegemaran',
			'favorites.undo' => 'Batal',
			'favorites.removed' => ({required Object name}) => 'Telah mengeluarkan ${name} dari kegemaran',
			'favorites.sortOptions.recent' => 'Terkini',
			'favorites.sortOptions.calories' => 'Kalori',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Tiada data profil ditemui',
			'profile.yourProfile' => 'Profil Anda',
			'profile.viewAndManage' => 'Lihat dan urus maklumat kesihatan anda',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'MAKLUMAT ASAS',
			'profile.sections.goalsAndActivity' => 'SASARAN & AKTIVITI',
			'profile.sections.calculatedValues' => 'NILAI DIKIRA',
			'profile.gender' => 'Jantina',
			'profile.height' => 'Tinggi',
			'profile.weight' => 'Berat',
			'profile.age' => 'Umur',
			'profile.weightGoal' => 'Matlamat Berat',
			'profile.targetWeight' => 'Berat Sasaran',
			'profile.activityLevel' => 'Tahap Aktiviti',
			'profile.healthMetrics' => 'Metik Kesihatan',
			'profile.notSet' => 'Belum ditetapkan',
			'profile.years' => 'tahun',
			'profile.updatedSuccessfully' => 'Profil berjaya dikemas kini!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Sasaran Harian',
			'profile.calculatedValues.calPerDay' => 'cal/hari',
			'profile.calculatedValues.notAvailable' => 'T/T',
			'healthScore.title' => 'Skor Kesihatan',
			'healthScore.whyThisScore' => 'Kenapa skor ini?',
			'healthScore.note' => 'Skor ini adalah anggaran AI berdasarkan bahan yang dikenalpasti dan kepadatan nutrisi. Sentiasa rujuk profesional untuk nasihat pemakanan peribadi.',
			'healthScore.unhealthy' => 'Tidak sihat',
			'healthScore.healthy' => 'Sihat',
			'healthScore.neutral' => 'Neutral',
			'editProfile.title' => 'Sunting Profil',
			'editProfile.sections.personalInformation' => 'MAKLUMAT PERIBADI',
			'editProfile.sections.physicalMeasurements' => 'UKURAN FIZIKAL',
			'editProfile.sections.goalsAndActivity' => 'SASARAN & AKTIVITI',
			'editProfile.gender' => 'Jantina',
			'editProfile.dateOfBirth' => 'Tarikh Lahir',
			'editProfile.height' => 'Tinggi',
			'editProfile.weight' => 'Berat',
			'editProfile.weightGoal' => 'Matlamat Berat',
			'editProfile.activityLevel' => 'Tahap Aktiviti',
			'editProfile.metric' => 'Metrik',
			'editProfile.imperial' => 'Imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metrik (cm)',
			'editProfile.imperialFtIn' => 'Imperial (ft/in)',
			'editProfile.metricKg' => 'Metrik (kg)',
			'editProfile.imperialLbs' => 'Imperial (lbs)',
			'editProfile.genders.male' => 'Lelaki',
			'editProfile.genders.female' => 'Perempuan',
			'editProfile.genders.other' => 'Lain-lain',
			'editProfile.weightGoals.loseWeight.name' => 'Turunkan Berat',
			'editProfile.weightGoals.loseWeight.description' => 'Cipta defisit kalori untuk menurunkan berat',
			'editProfile.weightGoals.maintainWeight.name' => 'Kekalkan Berat',
			'editProfile.weightGoals.maintainWeight.description' => 'Kekalkan berat semasa anda',
			'editProfile.weightGoals.gainWeight.name' => 'Tambah Berat',
			'editProfile.weightGoals.gainWeight.description' => 'Cipta lebihan kalori untuk menambah berat',
			'editProfile.activityLevels.sedentary.name' => 'Tidak Aktif',
			'editProfile.activityLevels.sedentary.description' => 'Sedikit atau tiada senaman',
			'editProfile.activityLevels.lightlyActive.name' => 'Kurang Aktif',
			'editProfile.activityLevels.lightlyActive.description' => 'Senaman ringan 1-3 hari/minggu',
			'editProfile.activityLevels.moderatelyActive.name' => 'Sederhana Aktif',
			'editProfile.activityLevels.moderatelyActive.description' => 'Senaman sederhana 3-5 hari/minggu',
			'editProfile.activityLevels.veryActive.name' => 'Sangat Aktif',
			'editProfile.activityLevels.veryActive.description' => 'Senaman berat 6-7 hari/minggu',
			'editProfile.activityLevels.extremelyActive.name' => 'Amat Aktif',
			'editProfile.activityLevels.extremelyActive.description' => 'Senaman sangat berat atau kerja fizikal',
			'settings.title' => 'Tetapan',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'PENENTUAN LOKAL',
			'settings.sections.notifications' => 'PEMBERITAHUAN',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'SOKONGAN & UNDANG-UNDANG',
			'settings.sections.about' => 'TENTANG',
			'settings.sections.dangerZone' => 'ZON BERISIKO',
			'settings.sections.developer' => 'PEMBANGUN',
			'settings.editProfile.title' => 'Sunting Profil',
			'settings.editProfile.subtitle' => 'Kemas kini maklumat peribadi anda',
			'settings.language.title' => 'Bahasa',
			'settings.language.subtitle' => 'Pilih bahasa pilihan anda',
			'settings.language.searchHint' => 'Cari bahasa...',
			'settings.language.noResults' => 'Tiada keputusan ditemui',
			'settings.heightUnit.title' => 'Unit Tinggi',
			'settings.weightUnit.title' => 'Unit Berat',
			'settings.mealReminders.title' => 'Peringatan Hidangan',
			'settings.mealReminders.subtitle' => 'Kekal pada landasan dengan amaran tepat pada masanya',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Cerah',
			'settings.theme.dark' => 'Gelap',
			'settings.theme.system' => 'Sistem',
			'settings.sendFeedback.title' => 'Hantar Maklum Balas',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Bantu kami memperbaiki ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} Maklum Balas Aplikasi',
			'settings.sendFeedback.emailBodyPrefix' => 'Sila nyatakan maklum balas anda di bawah:',
			'settings.sendFeedback.appVersion' => 'Versi App',
			'settings.sendFeedback.device' => 'Peranti',
			'settings.sendFeedback.osVersion' => 'Versi OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Eksport Sejarah Hidangan',
			'settings.exportMealHistory.subtitle' => 'Kongsi CSV hidangan yang anda log',
			'settings.exportMealHistory.shareText' => 'Eksport sejarah hidangan Calorify anda',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Tidak dapat mengeksport sejarah hidangan: ${error}',
			'settings.clearAllData.title' => 'Kosongkan Semua Data',
			'settings.clearAllData.subtitle' => 'Padam semua maklumat anda secara tidak boleh dipulihkan',
			'settings.clearAllData.confirmationTitle' => 'Kosongkan Semua Data?',
			'settings.clearAllData.confirmationMessage' => 'Tindakan ini tidak boleh dibatalkan. Semua hidangan yang anda log, kegemaran, dan tetapan profil akan dipadamkan secara kekal.',
			'settings.clearAllData.cancel' => 'Batal',
			'settings.clearAllData.clearEverything' => 'Padam Semua',
			'settings.debugOptions.title' => 'Pilihan Debug',
			'settings.developerModeEnabled' => 'Mod pembangun diaktifkan!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Lihat dan urus kebenaran',
			'settings.healthConnect.unavailable.title' => 'Health Connect Tidak Tersedia',
			'settings.healthConnect.unavailable.description' => 'Health Connect tidak tersedia pada peranti ini. Sila pasang Health Connect dari Play Store (Android 9+) atau kemas kini ke Android 14+.',
			'settings.healthConnect.permissions.title' => 'Kebenaran',
			'settings.healthConnect.permissions.description' => 'Kebenaran berikut diminta untuk menyediakan integrasi Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Diberi',
			'settings.healthConnect.permissions.notGranted' => 'Belum Diberi',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Baca Jumlah Kalori Dibakar',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Membenarkan aplikasi membaca jumlah kalori anda yang dibakar dari Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Kebenaran ini digunakan untuk memaparkan pembakaran kalori harian anda dalam aplikasi, membantu anda memahami perbelanjaan tenaga keseluruhan anda sepanjang hari.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Baca Data Pemakanan',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Membenarkan aplikasi membaca data pemakanan dari Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Kebenaran ini membolehkan aplikasi membaca maklumat pemakanan yang mungkin telah direkod oleh aplikasi lain yang disambungkan ke Health Connect, memberikan gambaran menyeluruh tentang pemakanan anda.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Tulis Data Pemakanan',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Membenarkan aplikasi menulis data pemakanan ke Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Kebenaran ini membolehkan aplikasi menyegerakkan hidangan yang anda log ke Health Connect, menjadikan data pemakanan anda tersedia kepada aplikasi kesihatan dan kecergasan lain yang anda gunakan.',
			'settings.healthConnect.managePermissions' => 'Urus Kebenaran',
			'settings.healthConnect.openSettings' => 'Buka Tetapan Health Connect',
			'settings.healthConnect.requestPermissions' => 'Minta Kebenaran',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Permintaan kebenaran dibatalkan atau gagal. Sila cuba lagi atau beri kebenaran secara manual di tetapan Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Tidak dapat meminta kebenaran. Sila cuba lagi atau beri kebenaran secara manual di tetapan Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Meminta...',
			'settings.about.title' => 'Tentang',
			'settings.about.tagline' => 'Cepat, percuma, dan mengutamakan privasi untuk kesedaran kalori',
			'settings.about.ourStory.title' => 'Kisah Kami',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} lahir daripada kekecewaan ringkas: kebanyakan aplikasi pengesanan kalori terlalu rumit, memerlukan input manual berterusan, mengenakan yuran langganan tinggi, atau mengkompromi privasi.\n\nSebagai pembangun solo, saya mahu membina sesuatu yang lebih ringkas dan adil — sebuah aplikasi yang menggunakan AI untuk mengurangkan usaha, kekal pantas dan percuma untuk digunakan, serta menghormati data kesihatan anda.\n\n${appLabel} ialah aplikasi yang saya harap wujud: tiada akaun, tiada penjejakan, tiada iklan — cuma wawasan yang jelas dan praktikal serta matlamat kesihatan anda.',
			'settings.about.privacy.title' => 'Privasi Anda Penting',
			'settings.about.privacy.description' => 'Privasi bukan selepas-fikir — ia adalah prinsip reka bentuk. Ini maksudnya dalam amalan:',
			'settings.about.privacy.noAccounts' => 'Tiada akaun diperlukan\nGunakan aplikasi serta-merta. Tiada pendaftaran, tiada identiti.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Tiada penjejakan tingkah laku\n${appLabel} tidak memantau aktiviti anda, membina profil penggunaan, atau menjejak anda merentasi aplikasi atau laman web.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Tiada iklan secara reka bentuk\n${appLabel} dibina untuk berfungsi tanpa iklan atau pemanfaatkan data.',
			'settings.about.privacy.noDataSelling' => 'Tiada penjualan data\nData kesihatan anda tidak pernah dijual atau dikongsi dengan pihak ketiga.',
			'settings.about.privacy.localStorage' => 'Penyimpanan bermula-lokal\nData anda kekal pada peranti anda.',
			'settings.about.privacy.privacyPolicy' => 'Dasar Privasi',
			'settings.about.developer.title' => 'Dibina oleh Pembangun Solo',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} dibina dan diselenggara oleh seorang pembangun solo yang memberi tumpuan kepada mencipta perisian kesihatan yang tenang dan menghormati privasi.\n\nMaklum balas dibaca secara peribadi dan membantu membentuk hala tuju aplikasi.',
			'settings.about.developer.website' => 'Laman Web',
			'settings.about.developer.email' => 'E-mel',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Menikmati ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Maklum balas anda membantu menjadikan ${appLabel} lebih baik untuk semua.',
			'settings.about.feedback.rateApp' => 'Beri penilaian di Play Store',
			'settings.about.feedback.sendFeedback' => 'Hantar Maklum Balas',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Binaan ${buildNumber}',
			'reminders.title' => 'Kekal pada landasan dengan peringatan',
			'reminders.description' => 'Dapatkan peringatan lembut untuk log hidangan anda dan kekal konsisten dengan matlamat pemakanan anda',
			'reminders.notificationsEnabled' => 'Pemberitahuan Diaktifkan',
			'reminders.notificationsDisabled' => 'Pemberitahuan Dinonaktifkan',
			'reminders.enabledSubtitle' => 'Anda akan menerima peringatan hidangan',
			'reminders.disabledSubtitle' => 'Aktifkan pemberitahuan untuk mendapatkan peringatan hidangan',
			'reminders.mealReminders' => 'Peringatan Hidangan',
			'reminders.breakfast' => 'Sarapan',
			'reminders.lunch' => 'Makan Tengah Hari',
			'reminders.dinner' => 'Makan Malam',
			'reminders.snack' => 'Snek',
			'reminders.unknown' => 'Tidak Diketahui',
			'reminders.change' => 'Tukar',
			'reminders.enableNotifications' => 'Aktifkan Pemberitahuan',
			'reminders.skipForNow' => 'Langkau buat masa ini',
			'reminders.saveChanges' => 'Simpan Perubahan',
			'reminders.enabledSuccessfully' => 'Pemberitahuan berjaya diaktifkan!',
			'reminders.permissionDenied' => 'Kebenaran pemberitahuan ditolak',
			'reminders.errorEnabling' => ({required Object error}) => 'Ralat mengaktifkan pemberitahuan: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Ralat melengkapkan persediaan: ${error}',
			'notifications.breakfast.title' => 'Masa Sarapan! 🍳',
			'notifications.breakfast.body' => 'Jangan lupa log sarapan anda',
			'notifications.lunch.title' => 'Masa Makan Tengah Hari! 🥗',
			'notifications.lunch.body' => 'Masa untuk log makan tengah hari anda',
			'notifications.dinner.title' => 'Masa Makan Malam! 🍽️',
			'notifications.dinner.body' => 'Jangan lupa log makan malam anda',
			'notifications.snack.title' => 'Masa Snek! 🍎',
			'notifications.snack.body' => 'Masa untuk snek sihat',
			'notifications.test.title' => 'Pemberitahuan Ujian',
			'login.title' => 'Log Masuk',
			'login.signInWithGoogle' => 'Log masuk dengan Google',
			'login.signInFailed' => 'Log Masuk Google gagal atau dibatalkan.',
			'disclaimer.pleaseNote' => 'Sila Maklum',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} menyediakan maklumat pemakanan anggaran. Ketepatan bergantung pada input anda & variasi makanan. Gunakan sebagai panduan, bukan sumber muktamad. Rujuk profesional untuk nasihat pemakanan peribadi.',
			'disclaimer.snap.portionSize.title' => 'Saiz Bahagian',
			'disclaimer.snap.portionSize.description' => 'Ketepatan anggaran bergantung kuat pada penilaian saiz bahagian yang betul oleh anda.',
			'disclaimer.snap.preparationMethods.title' => 'Kaedah Penyediaan',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Kaedah memasak boleh mengubah kandungan pemakanan makanan dengan ketara. Anggaran ${appLabel} mungkin tidak sentiasa mengambil kira variasi ini.',
			'disclaimer.snap.ingredients.title' => 'Bahan',
			'disclaimer.snap.ingredients.description' => 'Hidangan kompleks dengan banyak bahan tersembunyi mungkin menghasilkan anggaran kurang tepat.',
			'disclaimer.snap.databaseLimitations.title' => 'Had Pangkalan Data',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Pangkalan data makanan ${appLabel} luas tetapi mungkin tidak mengandungi setiap item makanan atau variasinya.',
			'disclaimer.weightEstimate.title' => 'Mengenai Anggaran Berat',
			'disclaimer.weightEstimate.description' => 'Perubahan berat yang dijangka adalah anggaran teoretikal berdasarkan model kalori masuk vs keluar yang mudah. Ia bertujuan sebagai panduan motivasi sahaja, bukan ramalan berat sebenar anda.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Ketepatan Kalori',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Anggaran ini hanya setepat pengambilan dan perbelanjaan kalori yang anda log. Pencatatan tidak tepat akan menghasilkan unjuran yang tidak tepat.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Faktor Biologi',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Kehilangan/penambahan berat sebenar dipengaruhi oleh metabolisme, hormon, tidur, tekanan, hidrasi, dan faktor individu lain yang ${appLabel} tidak dapat ukur.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Berat Air & Fluktuasi',
			'disclaimer.weightEstimate.waterWeight.description' => 'Berat harian normal boleh berfluktuasi dengan ketara disebabkan penahanan air, pencernaan, dan masa. Anggaran tidak mengambil kira perubahan harian ini.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Panduan Profesional',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Jangan gunakan anggaran ini untuk membuat keputusan perubatan. Sentiasa rujuk profesional kesihatan atau pakar diet berdaftar untuk nasihat pengurusan berat peribadi.',
			'disclaimer.healthMetrics.description' => 'Metik ini membantu anda memahami keperluan tenaga badan anda dan membimbing sasaran pemakanan anda.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR) ialah jumlah kalori yang badan anda bakar ketika berehat untuk mengekalkan fungsi asas seperti bernafas dan peredaran. BMR bergantung pada umur, jantina, tinggi, dan berat anda. BMR lebih tinggi bermaksud badan anda secara semula jadi membakar lebih banyak kalori ketika berehat, sering kerana lebih banyak jisim otot, usia lebih muda, atau jantina lelaki. BMR lebih rendah biasanya menunjukkan jisim otot berkurang, usia lebih tua, atau jantina perempuan.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE) ialah jumlah kalori yang anda bakar sehari, termasuk BMR anda ditambah kalori dari aktiviti fizikal dan pergerakan harian. TDEE bergantung pada BMR dan tahap aktiviti anda. TDEE lebih tinggi bermaksud anda membakar lebih banyak kalori keseluruhan, biasanya kerana lebih aktif atau mempunyai BMR lebih tinggi. TDEE lebih rendah menunjukkan aktiviti harian kurang atau BMR lebih rendah.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Sasaran Harian',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Sasaran Harian ialah pengambilan kalori harian yang disyorkan berdasarkan TDEE dan matlamat berat anda. Untuk penurunan berat, anda mengambil lebih sedikit kalori daripada TDEE anda. Untuk mengekalkan berat, anda menyamai TDEE anda. Untuk penambahan berat, anda mengambil lebih banyak kalori daripada TDEE anda. Ini membantu anda mencapai perubahan berat yang diingini pada kadar sihat.',
			'disclaimer.calorieExpenditure.title' => 'Anggaran Pembakaran Kalori',
			'disclaimer.calorieExpenditure.description' => 'Apabila data Health Connect tidak tersedia, kami menganggarkan kalori yang dibakar hari ini menggunakan BMR dan tahap aktiviti (TDEE), diselaraskan mengikut bahagian hari yang telah berlalu.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Bagaimana Anggaran Dikira',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Kami mengira TDEE anda (berdasarkan profil anda) dan mendarabkannya dengan pecahan hari yang telah berlalu (jam + minit) / 24 untuk menganggarkan kalori yang dibakar setakat ini.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Panduan Profesional',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Jangan gunakan anggaran ini untuk membuat keputusan perubatan. Sentiasa rujuk profesional kesihatan atau pakar diet berdaftar untuk nasihat pengurusan berat peribadi.',
			'common.close' => 'Tutup',
			'common.kContinue' => 'Teruskan',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Menikmati ${appLabel}?',
			'feedbackRating.yes' => 'Ya, saya menikmatinya',
			'feedbackRating.no' => 'Tidak begitu',
			'feedbackRating.rateStepHeading' => 'Beri penilaian di Play Store',
			'feedbackRating.emailStepHeading' => 'Hantar maklum balas melalui e-mel',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Penilaian ringkas membantu orang lain menemui ${appLabel} dan menyokong pembangunan. Boleh luangkan masa untuk beri satu?',
			'feedbackRating.shareFeedbackViaEmail' => 'Maklum balas anda membentuk apa yang akan datang — kami baca setiap mesej. Mahu kongsi pendapat melalui e-mel?',
			'feedbackRating.rateCta' => 'Beri penilaian di Play Store',
			'feedbackRating.maybeLater' => 'Mungkin nanti',
			'feedbackRating.sendFeedback' => 'Hantar maklum balas',
			'feedbackRating.noThanks' => 'Tidak, terima kasih',
			'feedbackRating.aboutUsDescription' => 'Dibuat dengan penuh perhatian oleh pasukan kecil. Kami memberi tumpuan pada privasi, kesederhanaan, dan membantu anda membina tabiat makan yang lebih baik.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Ingin tahu siapa di sebalik ${appLabel}? Lihat ',
			'feedbackRating.aboutUsLinkLabel' => 'Tentang kami',
			'feedbackRating.thankYouMessage' => 'Terima kasih! Kami akan bertanya lagi pada masa lain.',
			'health.syncFailed' => 'Tidak dapat menyegerakkan ke Health Connect',
			'health.mealSynced' => 'Hidangan disegerakkan dengan Health Connect',
			_ => null,
		};
	}
}
