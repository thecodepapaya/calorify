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
	@override String get rateLimitExceeded => 'Anda telah membuat terlalu banyak permintaan. Sila tunggu sebentar sebelum mencuba lagi.';
	@override String get networkError => 'Ralat rangkaian. Sila periksa sambungan internet anda.';
	@override String get unknownError => 'Ada sesuatu yang tidak kena. Sila cuba lagi kemudian.';
	@override String get loadingProfileData => 'Ralat memuatkan data profil';
	@override String get somethingWentWrong => 'Ada yang tidak kena.';
	@override String get retry => 'Cuba lagi';
}

// Path: onboarding
class _TranslationsOnboardingMs implements TranslationsOnboardingEn {
	_TranslationsOnboardingMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Selamat datang ke ${appLabel}';
	@override String get subtitle => 'Rakan pemakanan peribadi anda yang dikuasakan oleh AI';
	@override String get getStarted => 'Mulakan';
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
	@override String get noMeals => 'Tiada hidangan dicatat';
	@override String get emptyMessage => 'Ambil gambar hidangan terakhir anda untuk dicatat di sini.';
	@override String get today => 'Hari Ini';
	@override String get yesterday => 'Semalam';
}

// Path: meal
class _TranslationsMealMs implements TranslationsMealEn {
	_TranslationsMealMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Oh tidak!';
	@override String get delete => 'Padam';
	@override String get editMeal => 'Edit Hidangan';
	@override String get addMeal => 'Tambah Hidangan';
	@override String get saveMeal => 'Simpan Hidangan';
	@override String get save => 'Simpan';
	@override String get mealName => 'Nama Hidangan';
	@override String get mealNameHint => 'Contoh: Telur hancur dengan roti bakar';
	@override String get mealQuantity => 'Kuantiti Hidangan';
	@override String get mealQuantityHint => 'cth., 1 mangkuk, 2 keping';
	@override String get timeOfMeal => 'Masa Hidangan';
	@override String get timeOfMealHint => 'Pilih masa anda menghidang';
	@override String get mealType => 'Jenis Hidangan';
	@override late final _TranslationsMealNutritionMs nutrition = _TranslationsMealNutritionMs._(_root);
	@override late final _TranslationsMealDeleteConfirmationMs deleteConfirmation = _TranslationsMealDeleteConfirmationMs._(_root);
	@override String get addedToLog => 'Hidangan ditambah ke log anda!';
	@override String couldNotAdd({required Object error}) => 'Tidak dapat menambah hidangan: ${error}';
	@override String get savedSuccessfully => 'Makanan berjaya ditambahkan!';
	@override String get updatedSuccessfully => 'Makanan berjaya dikemas kini!';
	@override String errorSaving({required Object error}) => 'Ralat semasa menyimpan makanan: ${error}';
	@override String get removedFromFavorites => 'Dihapus dari kegemaran!';
	@override String get savedAsFavorite => 'Hidangan disimpan sebagai kegemaran!';
	@override String get unfavorite => 'Keluarkan dari kegemaran';
	@override String couldNotUpdateFavorite({required Object error}) => 'Tidak dapat mengemas kini kegemaran: ${error}';
	@override String get feedbackThanks => 'Terima kasih atas maklum balas anda!';
	@override String get reanalysisUpdated => 'Analisis hidangan telah dikemas kini berdasarkan maklum balas anda.';
	@override String failedToProcess({required Object error}) => 'Gagal untuk memproses: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Gagal untuk memproses gambar: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Ralat memampatkan gambar: ${error}';
	@override String get failedToSave => 'Gagal menyimpan data. Sila cuba lagi.';
	@override String get skip => 'Langkau';
	@override late final _TranslationsMealVariationMs variation = _TranslationsMealVariationMs._(_root);
}

// Path: favorites
class _TranslationsFavoritesMs implements TranslationsFavoritesEn {
	_TranslationsFavoritesMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kegemaran';
	@override String get empty => 'Tiada hidangan kegemaran lagi.';
	@override String get searchPlaceholder => 'Cari hidangan kegemaran';
	@override String get searchEmptyTitle => 'Tiada makanan kegemaran yang sepadan dengan carian anda';
	@override String get searchEmptySubtitle => 'Cuba nama hidangan, kuantiti, atau jenis hidangan yang berbeza.';
	@override String get sortLabel => 'Susun kegemaran';
	@override String get undo => 'Batal';
	@override String removed({required Object name}) => 'Anda telah mengeluarkan ${name} daripada kegemaran.';
	@override late final _TranslationsFavoritesSortOptionsMs sortOptions = _TranslationsFavoritesSortOptionsMs._(_root);
}

// Path: profile
class _TranslationsProfileMs implements TranslationsProfileEn {
	_TranslationsProfileMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Tiada data profil ditemukan';
	@override String get yourProfile => 'Profil Anda';
	@override String get viewAndManage => 'Lihat dan urus maklumat kesihatan anda';
	@override late final _TranslationsProfileSectionsMs sections = _TranslationsProfileSectionsMs._(_root);
	@override String get gender => 'Jantina';
	@override String get height => 'Tinggi';
	@override String get weight => 'Berat';
	@override String get age => 'Umur';
	@override String get weightGoal => 'Sasaran Berat';
	@override String get targetWeight => 'Berat Sasaran';
	@override String get activityLevel => 'Tahap Aktiviti';
	@override String get healthMetrics => 'Metrik Kesihatan';
	@override String get notSet => 'Tidak ditetapkan';
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
	@override String get whyThisScore => 'Mengapa skor ini?';
	@override String get note => 'Skor ini adalah anggaran AI berdasarkan bahan yang dikenali dan kepadatan nutrisi. Sentiasa berunding dengan profesional untuk nasihat diet.';
	@override String get unhealthy => 'Tidak Sihat';
	@override String get healthy => 'Sihat';
	@override String get neutral => 'Neutral';
}

// Path: editProfile
class _TranslationsEditProfileMs implements TranslationsEditProfileEn {
	_TranslationsEditProfileMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edit Profil';
	@override late final _TranslationsEditProfileSectionsMs sections = _TranslationsEditProfileSectionsMs._(_root);
	@override String get gender => 'Jantina';
	@override String get dateOfBirth => 'Tarikh Lahir';
	@override String get height => 'Tinggi';
	@override String get weight => 'Berat';
	@override String get weightGoal => 'Sasaran Berat';
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
	@override String get developerModeEnabled => 'Mod pengembang diaktifkan!';
	@override late final _TranslationsSettingsHealthConnectMs healthConnect = _TranslationsSettingsHealthConnectMs._(_root);
	@override late final _TranslationsSettingsAboutMs about = _TranslationsSettingsAboutMs._(_root);
	@override late final _TranslationsSettingsAppInfoMs appInfo = _TranslationsSettingsAppInfoMs._(_root);
}

// Path: reminders
class _TranslationsRemindersMs implements TranslationsRemindersEn {
	_TranslationsRemindersMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tetap pada landasan dengan peringatan';
	@override String get description => 'Dapatkan peringatan lembut untuk mencatat hidangan anda dan tetap konsisten dengan matlamat pemakanan anda';
	@override String get notificationsEnabled => 'Pemberitahuan Diaktifkan';
	@override String get notificationsDisabled => 'Pemberitahuan Dinonaktifkan';
	@override String get enabledSubtitle => 'Anda akan menerima peringatan hidangan';
	@override String get disabledSubtitle => 'Aktifkan pemberitahuan untuk mendapatkan peringatan hidangan';
	@override String get mealReminders => 'Peringatan Hidangan';
	@override String get breakfast => 'Sarapan';
	@override String get lunch => 'Makan Tengahari';
	@override String get dinner => 'Makan Malam';
	@override String get snack => 'Snek';
	@override String get unknown => 'Tidak Diketahui';
	@override String get change => 'Ubah';
	@override String get enableNotifications => 'Aktifkan Pemberitahuan';
	@override String get skipForNow => 'Langkau buat masa sekarang';
	@override String get saveChanges => 'Simpan Perubahan';
	@override String get enabledSuccessfully => 'Pemberitahuan diaktifkan dengan jayanya!';
	@override String get permissionDenied => 'Kebenaran pemberitahuan ditolak';
	@override String errorEnabling({required Object error}) => 'Ralat mengaktifkan pemberitahuan: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Ralat menyelesaikan persediaan: ${error}';
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
	@override String get pleaseNote => 'Sila Ambil Perhatian';
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
	@override String enjoyingQuestion({required Object appLabel}) => 'Anda menikmati ${appLabel}?';
	@override String get yes => 'Ya, saya menikmatinya';
	@override String get no => 'Tidak begitu';
	@override String get rateStepHeading => 'Beri penilaian di Play Store';
	@override String get emailStepHeading => 'Hantar maklum balas melalui e-mel';
	@override String soloDevMessage({required Object appLabel}) => 'Penilaian ringkas membantu orang lain menemui ${appLabel} dan menyokong pembangunan aplikasi. Boleh luangkan sedikit masa untuk memberi penilaian?';
	@override String get shareFeedbackViaEmail => 'Maklum balas anda membentuk apa yang akan datang — kami membaca setiap mesej. Adakah anda ingin berkongsi pendapat melalui e-mel?';
	@override String get rateCta => 'Beri penilaian di Play Store';
	@override String get maybeLater => 'Mungkin nanti';
	@override String get sendFeedback => 'Hantar maklum balas';
	@override String get noThanks => 'Tidak, terima kasih';
	@override String get aboutUsDescription => 'Dibuat dengan penuh perhatian oleh sebuah pasukan kecil. Kami memberi tumpuan kepada privasi, kesederhanaan, dan membantu anda membina tabiat pemakanan yang lebih baik.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Ingin tahu siapa di sebalik ${appLabel}? Lihat ';
	@override String get aboutUsLinkLabel => 'Tentang kami';
	@override String get thankYouMessage => 'Terima kasih! Kami akan bertanya lagi lain kali.';
}

// Path: health
class _TranslationsHealthMs implements TranslationsHealthEn {
	_TranslationsHealthMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Tidak dapat menyinkronkan ke Health Connect';
	@override String get mealSynced => 'Hidangan disinkronkan dengan Health Connect';
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
	@override String get title => 'Apa jantina anda?';
	@override String get description => 'Jantina membantu kami mengira kadar metabolisme basal (BMR) anda dengan tepat.';
	@override String get next => 'Seterusnya';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightMs implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berapa tinggi anda?';
	@override String get description => 'Tinggi anda membantu kami mengira BMI dan keperluan tenaga anda dengan tepat.';
	@override String get metric => 'Metrik';
	@override String get imperial => 'Imperial';
	@override String get next => 'Seterusnya';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightMs implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Apakah berat semasa anda?';
	@override String get currentDescription => 'Berat semasa anda adalah penting untuk mempersonalisasi sasaran harian anda.';
	@override String get targetTitle => 'Apakah berat sasaran anda?';
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
	@override String get title => 'Bila hari lahir anda?';
	@override String get description => 'Umur anda membantu kami mengira keperluan kalori anda dengan tepat.';
	@override String get next => 'Seterusnya';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleMs implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Berat Rendah';
	@override String get healthy => 'Sihat';
	@override String get overweight => 'Berat Berlebihan';
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
	@override String get description => 'Pilih matlamat yang paling menggambarkan apa yang anda ingin capai';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelMs implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seberapa aktif anda?';
	@override String get description => 'Ini membantu kami mengira keperluan kalori harian anda dengan lebih tepat';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectMs implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sambung dengan Health Connect';
	@override String get description => 'Sinkronkan data kesihatan anda untuk pemahaman yang lebih baik dan penjejakan kalori automatik';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingMs automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingMs._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsMs progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsMs._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationMs seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationMs._(_root);
	@override String get connected => 'Health Connect Disambungkan';
	@override String get notConnected => 'Health Connect Tidak Disambungkan';
	@override String get setup => 'Sediakan Health Connect';
	@override String get skipForNow => 'Langkau buat masa sekarang';
	@override String get statusConnected => 'Health Connect disambungkan.';
	@override String get statusSuccess => 'Health Connect telah berjaya disambungkan!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Kebenaran ditolak. Sila aktifkan kebenaran Health Connect dari tetapan telefon anda untuk ${appLabel}.';
	@override String statusError({required Object error}) => 'Ralat membuat persediaan Health Connect: ${error}';
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
	@override String get logMore => 'Catat lebih banyak hidangan dalam beberapa hari akan datang supaya AI dapat memberikan wawasan peribadi untuk anda.';
	@override String get loading => 'Memuatkan ringkasan anda...';
	@override String mealCount({required Object count}) => '${count} hidangan dicatat';
	@override String macroBalanceScore({required Object score}) => 'Skor keseimbangan ${score}';
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
	@override String get description => 'Bersedia untuk memulakan perjalanan kesihatan anda? Tetapkan sasaran kalori harian anda di bawah untuk memulakan kemajuan anda.';
	@override String get descriptionSet => 'Kompas anda sudah diset! Ini adalah sasaran kalori harian anda untuk memandu anda.';
	@override String get yourGoal => 'Matlamat Anda';
	@override String get goal => 'Matlamat';
	@override String get dailyCalories => 'Kalori harian (kcal)';
	@override String get setGoal => 'Tetapkan Sasaran';
	@override String get intake => 'Pengambilan';
	@override String get burned => 'Dibakar';
	@override String get weightImpact => 'Kesan Berat';
	@override String get estLoss => 'Anggaran kehilangan';
	@override String get estGain => 'Anggaran peningkatan';
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
	@override String get chartAccessibilityLabel => 'Carta makronutrien';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressMs implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pecahan Makro Hari Ini';
	@override String get target => 'Sasaran';
	@override String get current => 'Semasa';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryMs implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sejarah Makro 7-Hari';
	@override String get trendTitle => 'Trend Hari Ini';
	@override String peakHour({required Object hour}) => 'Jam puncak: ${hour}:00';
	@override String get noHistoryYet => 'Tiada sejarah lagi';
	@override String get startLogging => 'Mulakan pencatatan hidangan untuk melihat\ntrend makro 7-hari anda di sini';
}

// Path: home.mealLog
class _TranslationsHomeMealLogMs implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hidangan yang Dicatat';
	@override String get emptyMessage => 'Ambil gambar hidangan terakhir anda untuk dicatat di sini.';
	@override String get noMealsToday => 'Tiada hidangan dicatat untuk hari ini';
	@override String get seeAllMeals => 'Lihat semua hidangan';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionMs implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tambah Cepat dengan AI';
	@override String get description => 'Huraikan hidangan anda, dan biarkan AI menguruskan butiran.';
	@override String get hint => 'cth. Untuk sarapan, saya mempunyai semangkuk besar oatmeal dengan pisang yang dihiris dan satu skop whey ...';
	@override String get analyzeMeal => 'Analisis hidangan';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsMs implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hidangan Kegemaran';
	@override String get description => 'Tambah dengan cepat salah satu hidangan kegemaran anda.';
	@override String get noFavorites => 'Tiada hidangan kegemaran lagi.';
	@override String get addFavoriteHint => 'Klik bintang pada hidangan untuk menandakannya sebagai kegemaran.';
	@override String get seeAll => 'Lihat semua';
	@override String get add => 'Tambah';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapMs implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ambil & Jejaki Hidangan Anda';
	@override String get description => 'Gunakan kamera anda untuk mengambil gambar makanan anda untuk analisis AI.';
	@override String get openCamera => 'Buka Kamera';
	@override String get gallery => 'Galeri';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthMs implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sinkronkan dengan Health Connect';
	@override String get description => 'Sinkronkan data nutrisi anda dengan Health Connect';
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
	@override String get message => 'Adakah anda pasti ingin memadam entri hidangan ini?';
	@override String get cancel => 'Batal';
	@override String get delete => 'Padam';
}

// Path: meal.variation
class _TranslationsMealVariationMs implements TranslationsMealVariationEn {
	_TranslationsMealVariationMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Soalan ${current} daripada ${total}';
	@override String get noVariationsAvailable => 'Tiada variasi tersedia';
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
	@override String get goalsAndActivity => 'MATLAMAT & AKTIVITI';
	@override String get calculatedValues => 'NILAI YANG DIKIRA';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesMs implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Sasaran Harian';
	@override String get calPerDay => 'kal/hari';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsMs implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'MAKLUMAT PERIBADI';
	@override String get physicalMeasurements => 'UKURAN FIZIKAL';
	@override String get goalsAndActivity => 'MATLAMAT & AKTIVITI';
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
	@override String get localization => 'PENGANTARABANGSA';
	@override String get notifications => 'NOTIFIKASI';
	@override String get healthConnect => 'SAMBUNGAN KESIHATAN';
	@override String get supportAndLegal => 'SOKONGAN & PERUNDANGAN';
	@override String get about => 'TENTANG';
	@override String get dangerZone => 'ZON BAHAYA';
	@override String get developer => 'PENGEMBANG';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileMs implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edit Profil';
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
	@override String get noResults => 'Tiada keputusan dijumpai';
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
	@override String get subtitle => 'Tetap pada landasan dengan pemberitahuan tepat pada masanya';
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
	@override String get title => 'Hantar Maklumbalas';
	@override String subtitle({required Object appLabel}) => 'Bantu kami memperbaiki ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Maklum Balas Aplikasi ${appLabel}';
	@override String get emailBodyPrefix => 'Sila berikan maklumbalas anda di bawah:';
	@override String get appVersion => 'Versi Aplikasi';
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
	@override String get subtitle => 'Kongsi fail CSV hidangan yang telah dicatat';
	@override String get shareText => 'Eksport sejarah hidangan Calorify anda';
	@override String failed({required Object error}) => 'Tidak dapat mengeksport sejarah hidangan: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataMs implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kosongkan Semua Data';
	@override String get subtitle => 'Padam semua maklumat anda secara tidak boleh kembali';
	@override String get confirmationTitle => 'Kosongkan Semua Data?';
	@override String get confirmationMessage => 'Tindakan ini tidak boleh dibatalkan. Semua hidangan yang dicatat, kegemaran, dan tetapan profil anda akan dipadamkan secara kekal.';
	@override String get cancel => 'Batal';
	@override String get clearEverything => 'Kosongkan Segalanya';
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
	@override String get title => 'Sambungan Kesihatan';
	@override String get subtitle => 'Lihat dan urus kebenaran';
	@override late final _TranslationsSettingsHealthConnectUnavailableMs unavailable = _TranslationsSettingsHealthConnectUnavailableMs._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsMs permissions = _TranslationsSettingsHealthConnectPermissionsMs._(_root);
	@override String get managePermissions => 'Urus Kebenaran';
	@override String get openSettings => 'Buka Tetapan Health Connect';
	@override String get requestPermissions => 'Minta Kebenaran';
	@override String get permissionRequestCancelledOrFailed => 'Permintaan kebenaran dibatalkan atau gagal. Sila cuba lagi atau berikan kebenaran secara manual dalam tetapan Health Connect.';
	@override String get permissionRequestFailed => 'Tidak dapat meminta kebenaran. Sila cuba lagi atau berikan kebenaran secara manual dalam tetapan Health Connect.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutMs implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tentang';
	@override String get tagline => 'Kesedaran kalori yang cepat, percuma, dan mengutamakan privasi';
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
	@override String get body => 'Jangan lupa untuk mencatat sarapan anda';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchMs implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masa Makan Tengahari! 🥗';
	@override String get body => 'Masa untuk mencatat makan tengahari anda';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerMs implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masa Makan Malam! 🍽️';
	@override String get body => 'Jangan lupa untuk mencatat makan malam anda';
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
	@override String get title => 'Pemberitahuan Uji';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapMs implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} menyediakan info nutrisi anggaran. Ketepatan bergantung pada input anda & variasi makanan. Gunakan sebagai panduan, bukan sumber definitif. Rujuk kepada profesional untuk nasihat diet peribadi.';
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
	@override String get title => 'Tentang Anggaran Berat';
	@override String get description => 'Perubahan berat yang diramalkan adalah anggaran teori berdasarkan model kalori masuk vs. kalori keluar yang mudah. Ia bertujuan sebagai panduan motivasi sahaja, bukan sebagai ramalan berat sebenar anda.';
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
	@override String get description => 'Metrik ini membantu anda memahami keperluan tenaga badan anda dan membimbing matlamat pemakanan anda.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrMs bmr = _TranslationsDisclaimerHealthMetricsBmrMs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeMs tdee = _TranslationsDisclaimerHealthMetricsTdeeMs._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalMs dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalMs._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureMs implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anggaran pembakaran kalori';
	@override String get description => 'Apabila data Health Connect tidak tersedia, kami menganggarkan kalori yang dibakar hari ini menggunakan Kadar Metabolik Asas (BMR) dan tahap aktiviti anda (TDEE), diselaraskan mengikut bahagian hari yang telah berlalu.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedMs howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedMs._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceMs professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceMs._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionMs implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengiktirafan Makanan Pintar';
	@override String get description => 'Ambil gambar dan biarkan AI mengenal pasti hidangan anda';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisMs implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analisis AI';
	@override String get description => 'Dapatkan fakta nutrisi serta-merta daripada penerangan anda';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationMs implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrasi Kesihatan';
	@override String get description => 'Sambung dengan Health Connect untuk pemahaman yang lebih baik';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesMs implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Berat badan rendah';
	@override String get healthyWeight => 'Berat badan sihat';
	@override String get overweight => 'Berat badan berlebihan';
	@override String get obese => 'Obes';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesMs implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kami dapat membantu anda membina pelan sihat untuk mencapai berat badan seimbang dengan pemakanan yang padat nutrisi.';
	@override String get healthy => 'Kerja yang bagus! Anda berada dalam julat yang sihat. Kami akan membantu anda mempertahankan vitaliti dan tahap tenaga anda.';
	@override String overweight({required Object appLabel}) => '${appLabel} akan mempermudahkan perjalanan anda dengan penjejakan berkuasa AI untuk membantu anda mencapai sasaran dengan selesa.';
	@override String get obese => 'Kami di sini untuk menyokong anda dengan bimbingan peribadi dan strategi yang berkelanjutan untuk matlamat kesihatan anda.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingMs implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Penjejakan Kalori Automatik';
	@override String get description => 'Jejaki kalori yang dibakar dari aplikasi kecergasan anda';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsMs implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pemahaman Kemajuan';
	@override String get description => 'Dapatkan pemahaman terperinci tentang trend kesihatan anda';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationMs implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrasi Tanpa Gangguan';
	@override String get description => 'Sinkronkan data dari aplikasi kesihatan kegemaran anda';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessMs implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anda Tidak Sendirian';
	@override String get genericMessage => 'Penyelidikan menunjukkan bahawa penjejakan yang konsisten adalah peramal utama kejayaan jangka panjang.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Untuk seorang ${age} tahun ${gender} yang ingin ${goal}, penjejakan yang konsisten adalah peramal utama kejayaan.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} menjadikannya 10x lebih mudah daripada melakukannya secara manual.';
	@override String get getStartedTitle => 'Bersedia untuk memulakan?';
	@override String get tipPhoto => 'Ambil gambar makanan anda untuk analisis segera';
	@override String get tipConsistency => 'Catat secara konsisten untuk melihat kemajuan yang bermakna';
	@override String get tipProgress => 'Jejaki kemajuan anda setiap hari untuk kekal bersemangat';
	@override String get button => 'Jom pergi';
	@override String get defaultGender => 'individu';
	@override String get defaultGoal => 'anda yang lebih sihat';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileMs implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil Kesihatan Anda';
	@override String bmiDescription({required Object bmi}) => 'Berdasarkan metrik anda, BMI anda adalah ${bmi}.';
	@override String get finalizeDescription => 'Mari kita akhir profil anda untuk menyesuaikan pengalaman anda.';
	@override String get goalGain => 'menambah';
	@override String get goalLose => 'mengurangkan';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Untuk mencapai matlamat anda, anda perlu ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Anda sudah mencapai berat sasaran anda! Kami akan membantu anda mengekalkannya.';
	@override String get button => 'Jom pergi';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleMs implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permulaan yang Hebat!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Anda telah mengambil langkah pertama ke arah ${goalText}. Memandangkan anda ${activityText}, ${appLabel} akan menyesuaikan sasaran anda untuk sepadan dengan gaya hidup anda.';
	@override String get personalizedTargets => 'Sasaran kalori peribadi';
	@override String get aiMealDetection => 'Pengesanan hidangan berkuasa AI';
	@override String get macroBreakdowns => 'Pecahan makro-nutrien terperinci';
	@override String get button => 'Jom pergi';
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
	@override String get description => 'Kekalkan berat anda semasa';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightMs implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tambah Berat';
	@override String get description => 'Cipta surplus kalori untuk menambah berat';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryMs implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentari';
	@override String get description => 'Sedikit atau tiada senaman';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveMs implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Aktif Sedikit';
	@override String get description => 'Senaman ringan 1-3 hari/minggu';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveMs implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Aktif Secara Sederhana';
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
	@override String get name => 'Sangat Sangat Aktif';
	@override String get description => 'Senaman sangat berat, pekerjaan fizikal';
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
	@override String get description => 'Kebenaran berikut diminta untuk menyediakan integrasi Sambungan Kesihatan:';
	@override String get granted => 'Diberikan';
	@override String get notGranted => 'Tidak Diberikan';
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
	@override String content({required Object appLabel}) => '${appLabel} lahir dari satu frustrasi yang sederhana: kebanyakan aplikasi penjejakan kalori sama ada terlalu rumit, memerlukan input manual yang berterusan, mengenakan yuran langganan yang tinggi, atau mengorbankan privasi.\n\nSebagai seorang pemaju solo, saya ingin membina sesuatu yang lebih sederhana dan adil — sebuah aplikasi yang menggunakan AI untuk mengurangkan usaha, kekal pantas dan percuma untuk digunakan, dan menghormati data kesihatan anda.\n\n${appLabel} adalah aplikasi yang saya harap wujud: tiada akaun, tiada penjejakan, tiada iklan — hanya panduan yang jelas dan praktikal serta matlamat kesihatan anda.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyMs implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Privasi Anda Penting';
	@override String get description => 'Privasi bukanlah sesuatu yang diambil ringan — ia adalah prinsip reka bentuk. Berikut adalah maksudnya dalam amalan:';
	@override String get noAccounts => 'Tiada akaun diperlukan\nGunakan aplikasi dengan segera. Tiada pendaftaran, tiada identiti.';
	@override String noTracking({required Object appLabel}) => 'Tiada penjejakan tingkah laku\n${appLabel} tidak memantau aktiviti anda, membina profil penggunaan, atau menjejak anda di antara aplikasi atau laman web.';
	@override String noAds({required Object appLabel}) => 'Tanpa iklan secara reka bentuk\n${appLabel} dibina untuk berfungsi tanpa iklan atau monetisasi berasaskan data.';
	@override String get noDataSelling => 'Tiada penjualan data\nData kesihatan anda tidak pernah dijual atau dikongsi dengan pihak ketiga.';
	@override String get localStorage => 'Penyimpanan pertama tempatan\nData anda kekal di peranti anda.';
	@override String get privacyPolicy => 'Dasar Privasi';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperMs implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dibina oleh Pemaju Solo';
	@override String description({required Object appLabel}) => '${appLabel} dibina dan diselenggara oleh seorang pemaju solo tunggal yang fokus kepada mencipta perisian kesihatan yang tenang dan menghormati privasi.\n\nMaklum balas dibaca secara peribadi dan membantu membentuk arah aplikasi ini.';
	@override String get website => 'Laman Web';
	@override String get email => 'Emel';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackMs implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Adakah Anda Menyukai ${appLabel}?';
	@override String description({required Object appLabel}) => 'Maklum balas anda membantu menjadikan ${appLabel} lebih baik untuk semua.';
	@override String get rateApp => 'Nilai di Play Store';
	@override String get sendFeedback => 'Hantar Maklum Balas';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeMs implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Saiz Hidangan';
	@override String get description => 'Ketepatan anggaran sangat bergantung pada penilaian saiz hidangan anda yang betul.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsMs implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kaedah Penyediaan';
	@override String description({required Object appLabel}) => 'Kaedah memasak boleh mengubah kandungan nutrisi makanan secara signifikan. Anggaran ${appLabel} mungkin tidak selalu mengambil kira variasi ini.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsMs implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bahan';
	@override String get description => 'Hidangan yang kompleks dengan banyak bahan tersembunyi mungkin menyebabkan anggaran kurang tepat.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsMs implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Had Pangkalan Data';
	@override String description({required Object appLabel}) => 'Pangkalan data makanan ${appLabel} adalah luas tetapi mungkin tidak termasuk setiap item makanan atau variasi.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyMs implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ketepatan Kalori';
	@override String get description => 'Anggaran ini hanya seakurat pengambilan kalori anda yang dicatat dan perbelanjaan. Pencatatan yang tidak tepat akan menghasilkan anggaran yang tidak tepat.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsMs implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Faktor Biologi';
	@override String description({required Object appLabel}) => 'Kehilangan/pertambahan berat badan yang sebenar dipengaruhi oleh metabolisme, hormon, tidur, tekanan, penghidratan, dan faktor individu lain yang tidak dapat diukur oleh ${appLabel}.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightMs implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berat Air & Fluktuasi';
	@override String get description => 'Berat harian normal boleh berfluktuasi dengan ketara disebabkan oleh penahanan air, pencernaan, dan masa. Anggaran ini tidak mengambil kira perubahan harian ini.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceMs implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bimbingan Profesional';
	@override String get description => 'Jangan gunakan anggaran ini untuk membuat keputusan perubatan. Sentiasa berunding dengan profesional kesihatan atau pakar diet berdaftar untuk nasihat pengurusan berat secara peribadi.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrMs implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Kadar Metabolik Basal (BMR) ialah jumlah kalori yang dibakar oleh badan anda pada waktu rehat untuk mengekalkan fungsi asas seperti pernafasan dan peredaran. BMR bergantung kepada umur, jantina, tinggi, dan berat anda. BMR yang lebih tinggi bermaksud badan anda secara semula jadi membakar lebih banyak kalori pada waktu rehat, sering disebabkan oleh lebih banyak jisim otot, umur yang lebih muda, atau jantina lelaki. BMR yang lebih rendah biasanya menunjukkan jisim otot yang lebih sedikit, umur yang lebih tua, atau jantina perempuan.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeMs implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Perbelanjaan Tenaga Harian Keseluruhan (TDEE) ialah jumlah kalori yang anda bakar setiap hari, termasuk BMR anda ditambah kalori dari aktiviti fizikal dan pergerakan harian. TDEE bergantung kepada BMR dan tahap aktiviti anda. TDEE yang lebih tinggi bermakna anda membakar lebih banyak kalori secara keseluruhan, biasanya dari menjadi lebih aktif atau mempunyai BMR yang lebih tinggi. TDEE yang lebih rendah menunjukkan aktiviti harian yang kurang atau BMR yang lebih rendah.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalMs implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Matlamat Harian';
	@override String get description => 'Matlamat Harian ialah pengambilan kalori harian yang disyorkan berdasarkan TDEE dan matlamat berat anda. Untuk penurunan berat badan, anda mengambil kalori kurang daripada TDEE anda. Untuk penyelenggaraan berat, anda sepadankan dengan TDEE anda. Untuk pertambahan berat, anda mengambil lebih banyak kalori daripada TDEE anda. Ini membantu anda mencapai perubahan berat yang diingini dengan cara yang sihat.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedMs implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bagaimana anggaran dikira';
	@override String get description => 'Kami mengira TDEE anda (berdasarkan profil anda) dan mendarabkannya dengan pecahan hari yang telah berlalu (jam + minit) / 24 untuk menganggarkan kalori yang telah dibakar setakat ini.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceMs implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Panduan profesional';
	@override String get description => 'Jangan gunakan anggaran ini untuk membuat keputusan perubatan. Sentiasa rujuk kepada profesional penjagaan kesihatan atau pakar diet berdaftar untuk nasihat pengurusan berat badan yang disesuaikan.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedMs implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Baca Jumlah Kalori Dibakar';
	@override String get description => 'Membenarkan aplikasi untuk membaca jumlah kalori yang telah anda bakar dari Sambungan Kesihatan.';
	@override String get usage => 'Kebenaran ini digunakan untuk memaparkan kalori bakar harian anda dalam aplikasi, membantu anda memahami jumlah pengeluaran tenaga anda sepanjang hari.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadMs implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Baca Data Pemakanan';
	@override String get description => 'Membenarkan aplikasi untuk membaca data pemakanan dari Sambungan Kesihatan.';
	@override String get usage => 'Kebenaran ini membenarkan aplikasi untuk membaca maklumat pemakanan yang mungkin telah direkod oleh aplikasi lain yang disambungkan ke Sambungan Kesihatan, memberikan pandangan menyeluruh tentang pemakanan anda.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteMs implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteMs._(this._root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tulis Data Pemakanan';
	@override String get description => 'Membenarkan aplikasi untuk menulis data pemakanan ke Sambungan Kesihatan.';
	@override String get usage => 'Kebenaran ini membenarkan aplikasi untuk menyelaraskan makanan yang anda catat ke Sambungan Kesihatan, menjadikan data pemakanan anda tersedia kepada aplikasi kesihatan dan kecergasan lain yang anda gunakan.';
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
			'errors.rateLimitExceeded' => 'Anda telah membuat terlalu banyak permintaan. Sila tunggu sebentar sebelum mencuba lagi.',
			'errors.networkError' => 'Ralat rangkaian. Sila periksa sambungan internet anda.',
			'errors.unknownError' => 'Ada sesuatu yang tidak kena. Sila cuba lagi kemudian.',
			'errors.loadingProfileData' => 'Ralat memuatkan data profil',
			'errors.somethingWentWrong' => 'Ada yang tidak kena.',
			'errors.retry' => 'Cuba lagi',
			'onboarding.welcome' => ({required Object appLabel}) => 'Selamat datang ke ${appLabel}',
			'onboarding.subtitle' => 'Rakan pemakanan peribadi anda yang dikuasakan oleh AI',
			'onboarding.getStarted' => 'Mulakan',
			'onboarding.features.foodRecognition.title' => 'Pengiktirafan Makanan Pintar',
			'onboarding.features.foodRecognition.description' => 'Ambil gambar dan biarkan AI mengenal pasti hidangan anda',
			'onboarding.features.aiAnalysis.title' => 'Analisis AI',
			'onboarding.features.aiAnalysis.description' => 'Dapatkan fakta nutrisi serta-merta daripada penerangan anda',
			'onboarding.features.healthIntegration.title' => 'Integrasi Kesihatan',
			'onboarding.features.healthIntegration.description' => 'Sambung dengan Health Connect untuk pemahaman yang lebih baik',
			'onboarding.gender.title' => 'Apa jantina anda?',
			'onboarding.gender.description' => 'Jantina membantu kami mengira kadar metabolisme basal (BMR) anda dengan tepat.',
			'onboarding.gender.next' => 'Seterusnya',
			'onboarding.height.title' => 'Berapa tinggi anda?',
			'onboarding.height.description' => 'Tinggi anda membantu kami mengira BMI dan keperluan tenaga anda dengan tepat.',
			'onboarding.height.metric' => 'Metrik',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Seterusnya',
			'onboarding.weight.currentTitle' => 'Apakah berat semasa anda?',
			'onboarding.weight.currentDescription' => 'Berat semasa anda adalah penting untuk mempersonalisasi sasaran harian anda.',
			'onboarding.weight.targetTitle' => 'Apakah berat sasaran anda?',
			'onboarding.weight.targetDescription' => 'Menetapkan berat sasaran membantu kami menentukan pelan jangka panjang anda.',
			'onboarding.weight.metric' => 'Metrik',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Seterusnya',
			'onboarding.age.title' => 'Bila hari lahir anda?',
			'onboarding.age.description' => 'Umur anda membantu kami mengira keperluan kalori anda dengan tepat.',
			'onboarding.age.next' => 'Seterusnya',
			'onboarding.bmiScale.underweight' => 'Berat Rendah',
			'onboarding.bmiScale.healthy' => 'Sihat',
			'onboarding.bmiScale.overweight' => 'Berat Berlebihan',
			'onboarding.bmiScale.obese' => 'Obes',
			'onboarding.bmiScale.categories.underweight' => 'Berat badan rendah',
			'onboarding.bmiScale.categories.healthyWeight' => 'Berat badan sihat',
			'onboarding.bmiScale.categories.overweight' => 'Berat badan berlebihan',
			'onboarding.bmiScale.categories.obese' => 'Obes',
			'onboarding.bmiScale.messages.underweight' => 'Kami dapat membantu anda membina pelan sihat untuk mencapai berat badan seimbang dengan pemakanan yang padat nutrisi.',
			'onboarding.bmiScale.messages.healthy' => 'Kerja yang bagus! Anda berada dalam julat yang sihat. Kami akan membantu anda mempertahankan vitaliti dan tahap tenaga anda.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} akan mempermudahkan perjalanan anda dengan penjejakan berkuasa AI untuk membantu anda mencapai sasaran dengan selesa.',
			'onboarding.bmiScale.messages.obese' => 'Kami di sini untuk menyokong anda dengan bimbingan peribadi dan strategi yang berkelanjutan untuk matlamat kesihatan anda.',
			'onboarding.weightGoal.title' => 'Apakah matlamat anda?',
			'onboarding.weightGoal.description' => 'Pilih matlamat yang paling menggambarkan apa yang anda ingin capai',
			'onboarding.activityLevel.title' => 'Seberapa aktif anda?',
			'onboarding.activityLevel.description' => 'Ini membantu kami mengira keperluan kalori harian anda dengan lebih tepat',
			'onboarding.healthConnect.title' => 'Sambung dengan Health Connect',
			'onboarding.healthConnect.description' => 'Sinkronkan data kesihatan anda untuk pemahaman yang lebih baik dan penjejakan kalori automatik',
			'onboarding.healthConnect.automaticTracking.title' => 'Penjejakan Kalori Automatik',
			'onboarding.healthConnect.automaticTracking.description' => 'Jejaki kalori yang dibakar dari aplikasi kecergasan anda',
			'onboarding.healthConnect.progressInsights.title' => 'Pemahaman Kemajuan',
			'onboarding.healthConnect.progressInsights.description' => 'Dapatkan pemahaman terperinci tentang trend kesihatan anda',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integrasi Tanpa Gangguan',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sinkronkan data dari aplikasi kesihatan kegemaran anda',
			'onboarding.healthConnect.connected' => 'Health Connect Disambungkan',
			'onboarding.healthConnect.notConnected' => 'Health Connect Tidak Disambungkan',
			'onboarding.healthConnect.setup' => 'Sediakan Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Langkau buat masa sekarang',
			'onboarding.healthConnect.statusConnected' => 'Health Connect disambungkan.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect telah berjaya disambungkan!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Kebenaran ditolak. Sila aktifkan kebenaran Health Connect dari tetapan telefon anda untuk ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Ralat membuat persediaan Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Anda Tidak Sendirian',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Penyelidikan menunjukkan bahawa penjejakan yang konsisten adalah peramal utama kejayaan jangka panjang.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Untuk seorang ${age} tahun ${gender} yang ingin ${goal}, penjejakan yang konsisten adalah peramal utama kejayaan.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} menjadikannya 10x lebih mudah daripada melakukannya secara manual.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Bersedia untuk memulakan?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Ambil gambar makanan anda untuk analisis segera',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Catat secara konsisten untuk melihat kemajuan yang bermakna',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Jejaki kemajuan anda setiap hari untuk kekal bersemangat',
			'onboarding.reinforcement.trackingSuccess.button' => 'Jom pergi',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individu',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'anda yang lebih sihat',
			'onboarding.reinforcement.healthProfile.title' => 'Profil Kesihatan Anda',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Berdasarkan metrik anda, BMI anda adalah ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Mari kita akhir profil anda untuk menyesuaikan pengalaman anda.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'menambah',
			'onboarding.reinforcement.healthProfile.goalLose' => 'mengurangkan',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Untuk mencapai matlamat anda, anda perlu ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Anda sudah mencapai berat sasaran anda! Kami akan membantu anda mengekalkannya.',
			'onboarding.reinforcement.healthProfile.button' => 'Jom pergi',
			'onboarding.reinforcement.goalLifestyle.title' => 'Permulaan yang Hebat!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Anda telah mengambil langkah pertama ke arah ${goalText}. Memandangkan anda ${activityText}, ${appLabel} akan menyesuaikan sasaran anda untuk sepadan dengan gaya hidup anda.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Sasaran kalori peribadi',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Pengesanan hidangan berkuasa AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Pecahan makro-nutrien terperinci',
			'onboarding.reinforcement.goalLifestyle.button' => 'Jom pergi',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'matlamat anda',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktif',
			'tabs.dashboard' => 'Papan Pemuka',
			'tabs.history' => 'Sejarah',
			'home.aiSummary.title' => 'Ringkasan AI Anda',
			'home.aiSummary.logMore' => 'Catat lebih banyak hidangan dalam beberapa hari akan datang supaya AI dapat memberikan wawasan peribadi untuk anda.',
			'home.aiSummary.loading' => 'Memuatkan ringkasan anda...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} hidangan dicatat',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Skor keseimbangan ${score}',
			'home.aiSummary.topFoods' => 'Makanan teratas',
			'home.aiSummary.trendUp' => 'Kalori meningkat',
			'home.aiSummary.trendDown' => 'Kalori menurun',
			'home.aiSummary.trendSteady' => 'Kalori stabil',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Dikemas kini ${time}',
			'home.dailyGoal.title' => 'Tetapkan Sasaran Harian Anda',
			'home.dailyGoal.titleSet' => 'Sasaran Harian Anda',
			'home.dailyGoal.description' => 'Bersedia untuk memulakan perjalanan kesihatan anda? Tetapkan sasaran kalori harian anda di bawah untuk memulakan kemajuan anda.',
			'home.dailyGoal.descriptionSet' => 'Kompas anda sudah diset! Ini adalah sasaran kalori harian anda untuk memandu anda.',
			'home.dailyGoal.yourGoal' => 'Matlamat Anda',
			'home.dailyGoal.goal' => 'Matlamat',
			'home.dailyGoal.dailyCalories' => 'Kalori harian (kcal)',
			'home.dailyGoal.setGoal' => 'Tetapkan Sasaran',
			'home.dailyGoal.intake' => 'Pengambilan',
			'home.dailyGoal.burned' => 'Dibakar',
			'home.dailyGoal.weightImpact' => 'Kesan Berat',
			'home.dailyGoal.estLoss' => 'Anggaran kehilangan',
			'home.dailyGoal.estGain' => 'Anggaran peningkatan',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Ringkasan Harian',
			'home.dailySummary.calories' => 'Kalori',
			'home.dailySummary.carbs' => 'Karbohidrat',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Lemak',
			'home.dailySummary.fiber' => 'Serat',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Carta makronutrien',
			'home.intakeProgress.title' => 'Pecahan Makro Hari Ini',
			'home.intakeProgress.target' => 'Sasaran',
			'home.intakeProgress.current' => 'Semasa',
			'home.intakeHistory.title' => 'Sejarah Makro 7-Hari',
			'home.intakeHistory.trendTitle' => 'Trend Hari Ini',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Jam puncak: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Tiada sejarah lagi',
			'home.intakeHistory.startLogging' => 'Mulakan pencatatan hidangan untuk melihat\ntrend makro 7-hari anda di sini',
			'home.mealLog.title' => 'Hidangan yang Dicatat',
			'home.mealLog.emptyMessage' => 'Ambil gambar hidangan terakhir anda untuk dicatat di sini.',
			'home.mealLog.noMealsToday' => 'Tiada hidangan dicatat untuk hari ini',
			'home.mealLog.seeAllMeals' => 'Lihat semua hidangan',
			'home.mealDescription.title' => 'Tambah Cepat dengan AI',
			'home.mealDescription.description' => 'Huraikan hidangan anda, dan biarkan AI menguruskan butiran.',
			'home.mealDescription.hint' => 'cth. Untuk sarapan, saya mempunyai semangkuk besar oatmeal dengan pisang yang dihiris dan satu skop whey ...',
			'home.mealDescription.analyzeMeal' => 'Analisis hidangan',
			'home.favoriteMeals.title' => 'Hidangan Kegemaran',
			'home.favoriteMeals.description' => 'Tambah dengan cepat salah satu hidangan kegemaran anda.',
			'home.favoriteMeals.noFavorites' => 'Tiada hidangan kegemaran lagi.',
			'home.favoriteMeals.addFavoriteHint' => 'Klik bintang pada hidangan untuk menandakannya sebagai kegemaran.',
			'home.favoriteMeals.seeAll' => 'Lihat semua',
			'home.favoriteMeals.add' => 'Tambah',
			'home.mealSnap.title' => 'Ambil & Jejaki Hidangan Anda',
			'home.mealSnap.description' => 'Gunakan kamera anda untuk mengambil gambar makanan anda untuk analisis AI.',
			'home.mealSnap.openCamera' => 'Buka Kamera',
			'home.mealSnap.gallery' => 'Galeri',
			'home.connectHealth.title' => 'Sinkronkan dengan Health Connect',
			'home.connectHealth.description' => 'Sinkronkan data nutrisi anda dengan Health Connect',
			'home.connectHealth.install' => 'Pasang',
			'home.connectHealth.connect' => 'Sambung',
			'history.noMeals' => 'Tiada hidangan dicatat',
			'history.emptyMessage' => 'Ambil gambar hidangan terakhir anda untuk dicatat di sini.',
			'history.today' => 'Hari Ini',
			'history.yesterday' => 'Semalam',
			'meal.ohNo' => 'Oh tidak!',
			'meal.delete' => 'Padam',
			'meal.editMeal' => 'Edit Hidangan',
			'meal.addMeal' => 'Tambah Hidangan',
			'meal.saveMeal' => 'Simpan Hidangan',
			'meal.save' => 'Simpan',
			'meal.mealName' => 'Nama Hidangan',
			'meal.mealNameHint' => 'Contoh: Telur hancur dengan roti bakar',
			'meal.mealQuantity' => 'Kuantiti Hidangan',
			'meal.mealQuantityHint' => 'cth., 1 mangkuk, 2 keping',
			'meal.timeOfMeal' => 'Masa Hidangan',
			'meal.timeOfMealHint' => 'Pilih masa anda menghidang',
			'meal.mealType' => 'Jenis Hidangan',
			'meal.nutrition.calories' => 'Kalori',
			'meal.nutrition.carbs' => 'Karbohidrat (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Lemak (g)',
			'meal.nutrition.fiber' => 'Serat (g)',
			'meal.deleteConfirmation.title' => 'Padam Hidangan',
			'meal.deleteConfirmation.message' => 'Adakah anda pasti ingin memadam entri hidangan ini?',
			'meal.deleteConfirmation.cancel' => 'Batal',
			'meal.deleteConfirmation.delete' => 'Padam',
			'meal.addedToLog' => 'Hidangan ditambah ke log anda!',
			'meal.couldNotAdd' => ({required Object error}) => 'Tidak dapat menambah hidangan: ${error}',
			'meal.savedSuccessfully' => 'Makanan berjaya ditambahkan!',
			'meal.updatedSuccessfully' => 'Makanan berjaya dikemas kini!',
			'meal.errorSaving' => ({required Object error}) => 'Ralat semasa menyimpan makanan: ${error}',
			'meal.removedFromFavorites' => 'Dihapus dari kegemaran!',
			'meal.savedAsFavorite' => 'Hidangan disimpan sebagai kegemaran!',
			'meal.unfavorite' => 'Keluarkan dari kegemaran',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Tidak dapat mengemas kini kegemaran: ${error}',
			'meal.feedbackThanks' => 'Terima kasih atas maklum balas anda!',
			'meal.reanalysisUpdated' => 'Analisis hidangan telah dikemas kini berdasarkan maklum balas anda.',
			'meal.failedToProcess' => ({required Object error}) => 'Gagal untuk memproses: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Gagal untuk memproses gambar: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Ralat memampatkan gambar: ${error}',
			'meal.failedToSave' => 'Gagal menyimpan data. Sila cuba lagi.',
			'meal.skip' => 'Langkau',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Soalan ${current} daripada ${total}',
			'meal.variation.noVariationsAvailable' => 'Tiada variasi tersedia',
			'favorites.title' => 'Kegemaran',
			'favorites.empty' => 'Tiada hidangan kegemaran lagi.',
			'favorites.searchPlaceholder' => 'Cari hidangan kegemaran',
			'favorites.searchEmptyTitle' => 'Tiada makanan kegemaran yang sepadan dengan carian anda',
			'favorites.searchEmptySubtitle' => 'Cuba nama hidangan, kuantiti, atau jenis hidangan yang berbeza.',
			'favorites.sortLabel' => 'Susun kegemaran',
			'favorites.undo' => 'Batal',
			'favorites.removed' => ({required Object name}) => 'Anda telah mengeluarkan ${name} daripada kegemaran.',
			'favorites.sortOptions.recent' => 'Terkini',
			'favorites.sortOptions.calories' => 'Kalori',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Tiada data profil ditemukan',
			'profile.yourProfile' => 'Profil Anda',
			'profile.viewAndManage' => 'Lihat dan urus maklumat kesihatan anda',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'MAKLUMAT ASAS',
			'profile.sections.goalsAndActivity' => 'MATLAMAT & AKTIVITI',
			'profile.sections.calculatedValues' => 'NILAI YANG DIKIRA',
			'profile.gender' => 'Jantina',
			'profile.height' => 'Tinggi',
			'profile.weight' => 'Berat',
			'profile.age' => 'Umur',
			'profile.weightGoal' => 'Sasaran Berat',
			'profile.targetWeight' => 'Berat Sasaran',
			'profile.activityLevel' => 'Tahap Aktiviti',
			'profile.healthMetrics' => 'Metrik Kesihatan',
			'profile.notSet' => 'Tidak ditetapkan',
			'profile.years' => 'tahun',
			'profile.updatedSuccessfully' => 'Profil berjaya dikemas kini!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Sasaran Harian',
			'profile.calculatedValues.calPerDay' => 'kal/hari',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Skor Kesihatan',
			'healthScore.whyThisScore' => 'Mengapa skor ini?',
			'healthScore.note' => 'Skor ini adalah anggaran AI berdasarkan bahan yang dikenali dan kepadatan nutrisi. Sentiasa berunding dengan profesional untuk nasihat diet.',
			'healthScore.unhealthy' => 'Tidak Sihat',
			'healthScore.healthy' => 'Sihat',
			'healthScore.neutral' => 'Neutral',
			'editProfile.title' => 'Edit Profil',
			'editProfile.sections.personalInformation' => 'MAKLUMAT PERIBADI',
			'editProfile.sections.physicalMeasurements' => 'UKURAN FIZIKAL',
			'editProfile.sections.goalsAndActivity' => 'MATLAMAT & AKTIVITI',
			'editProfile.gender' => 'Jantina',
			'editProfile.dateOfBirth' => 'Tarikh Lahir',
			'editProfile.height' => 'Tinggi',
			'editProfile.weight' => 'Berat',
			'editProfile.weightGoal' => 'Sasaran Berat',
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
			'editProfile.weightGoals.maintainWeight.description' => 'Kekalkan berat anda semasa',
			'editProfile.weightGoals.gainWeight.name' => 'Tambah Berat',
			'editProfile.weightGoals.gainWeight.description' => 'Cipta surplus kalori untuk menambah berat',
			'editProfile.activityLevels.sedentary.name' => 'Sedentari',
			'editProfile.activityLevels.sedentary.description' => 'Sedikit atau tiada senaman',
			'editProfile.activityLevels.lightlyActive.name' => 'Aktif Sedikit',
			'editProfile.activityLevels.lightlyActive.description' => 'Senaman ringan 1-3 hari/minggu',
			'editProfile.activityLevels.moderatelyActive.name' => 'Aktif Secara Sederhana',
			'editProfile.activityLevels.moderatelyActive.description' => 'Senaman sederhana 3-5 hari/minggu',
			'editProfile.activityLevels.veryActive.name' => 'Sangat Aktif',
			'editProfile.activityLevels.veryActive.description' => 'Senaman berat 6-7 hari/minggu',
			'editProfile.activityLevels.extremelyActive.name' => 'Sangat Sangat Aktif',
			'editProfile.activityLevels.extremelyActive.description' => 'Senaman sangat berat, pekerjaan fizikal',
			'settings.title' => 'Tetapan',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'PENGANTARABANGSA',
			'settings.sections.notifications' => 'NOTIFIKASI',
			'settings.sections.healthConnect' => 'SAMBUNGAN KESIHATAN',
			'settings.sections.supportAndLegal' => 'SOKONGAN & PERUNDANGAN',
			'settings.sections.about' => 'TENTANG',
			'settings.sections.dangerZone' => 'ZON BAHAYA',
			'settings.sections.developer' => 'PENGEMBANG',
			'settings.editProfile.title' => 'Edit Profil',
			'settings.editProfile.subtitle' => 'Kemas kini maklumat peribadi anda',
			'settings.language.title' => 'Bahasa',
			'settings.language.subtitle' => 'Pilih bahasa pilihan anda',
			'settings.language.searchHint' => 'Cari bahasa...',
			'settings.language.noResults' => 'Tiada keputusan dijumpai',
			'settings.heightUnit.title' => 'Unit Tinggi',
			'settings.weightUnit.title' => 'Unit Berat',
			'settings.mealReminders.title' => 'Peringatan Hidangan',
			'settings.mealReminders.subtitle' => 'Tetap pada landasan dengan pemberitahuan tepat pada masanya',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Cerah',
			'settings.theme.dark' => 'Gelap',
			'settings.theme.system' => 'Sistem',
			'settings.sendFeedback.title' => 'Hantar Maklumbalas',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Bantu kami memperbaiki ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Maklum Balas Aplikasi ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Sila berikan maklumbalas anda di bawah:',
			'settings.sendFeedback.appVersion' => 'Versi Aplikasi',
			'settings.sendFeedback.device' => 'Peranti',
			'settings.sendFeedback.osVersion' => 'Versi OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Eksport Sejarah Hidangan',
			'settings.exportMealHistory.subtitle' => 'Kongsi fail CSV hidangan yang telah dicatat',
			'settings.exportMealHistory.shareText' => 'Eksport sejarah hidangan Calorify anda',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Tidak dapat mengeksport sejarah hidangan: ${error}',
			'settings.clearAllData.title' => 'Kosongkan Semua Data',
			'settings.clearAllData.subtitle' => 'Padam semua maklumat anda secara tidak boleh kembali',
			'settings.clearAllData.confirmationTitle' => 'Kosongkan Semua Data?',
			'settings.clearAllData.confirmationMessage' => 'Tindakan ini tidak boleh dibatalkan. Semua hidangan yang dicatat, kegemaran, dan tetapan profil anda akan dipadamkan secara kekal.',
			'settings.clearAllData.cancel' => 'Batal',
			'settings.clearAllData.clearEverything' => 'Kosongkan Segalanya',
			'settings.debugOptions.title' => 'Pilihan Debug',
			'settings.developerModeEnabled' => 'Mod pengembang diaktifkan!',
			'settings.healthConnect.title' => 'Sambungan Kesihatan',
			'settings.healthConnect.subtitle' => 'Lihat dan urus kebenaran',
			'settings.healthConnect.unavailable.title' => 'Health Connect Tidak Tersedia',
			'settings.healthConnect.unavailable.description' => 'Health Connect tidak tersedia pada peranti ini. Sila pasang Health Connect dari Play Store (Android 9+) atau kemas kini ke Android 14+.',
			'settings.healthConnect.permissions.title' => 'Kebenaran',
			'settings.healthConnect.permissions.description' => 'Kebenaran berikut diminta untuk menyediakan integrasi Sambungan Kesihatan:',
			'settings.healthConnect.permissions.granted' => 'Diberikan',
			'settings.healthConnect.permissions.notGranted' => 'Tidak Diberikan',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Baca Jumlah Kalori Dibakar',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Membenarkan aplikasi untuk membaca jumlah kalori yang telah anda bakar dari Sambungan Kesihatan.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Kebenaran ini digunakan untuk memaparkan kalori bakar harian anda dalam aplikasi, membantu anda memahami jumlah pengeluaran tenaga anda sepanjang hari.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Baca Data Pemakanan',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Membenarkan aplikasi untuk membaca data pemakanan dari Sambungan Kesihatan.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Kebenaran ini membenarkan aplikasi untuk membaca maklumat pemakanan yang mungkin telah direkod oleh aplikasi lain yang disambungkan ke Sambungan Kesihatan, memberikan pandangan menyeluruh tentang pemakanan anda.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Tulis Data Pemakanan',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Membenarkan aplikasi untuk menulis data pemakanan ke Sambungan Kesihatan.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Kebenaran ini membenarkan aplikasi untuk menyelaraskan makanan yang anda catat ke Sambungan Kesihatan, menjadikan data pemakanan anda tersedia kepada aplikasi kesihatan dan kecergasan lain yang anda gunakan.',
			'settings.healthConnect.managePermissions' => 'Urus Kebenaran',
			'settings.healthConnect.openSettings' => 'Buka Tetapan Health Connect',
			'settings.healthConnect.requestPermissions' => 'Minta Kebenaran',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Permintaan kebenaran dibatalkan atau gagal. Sila cuba lagi atau berikan kebenaran secara manual dalam tetapan Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Tidak dapat meminta kebenaran. Sila cuba lagi atau berikan kebenaran secara manual dalam tetapan Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'Tentang',
			'settings.about.tagline' => 'Kesedaran kalori yang cepat, percuma, dan mengutamakan privasi',
			'settings.about.ourStory.title' => 'Kisah Kami',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} lahir dari satu frustrasi yang sederhana: kebanyakan aplikasi penjejakan kalori sama ada terlalu rumit, memerlukan input manual yang berterusan, mengenakan yuran langganan yang tinggi, atau mengorbankan privasi.\n\nSebagai seorang pemaju solo, saya ingin membina sesuatu yang lebih sederhana dan adil — sebuah aplikasi yang menggunakan AI untuk mengurangkan usaha, kekal pantas dan percuma untuk digunakan, dan menghormati data kesihatan anda.\n\n${appLabel} adalah aplikasi yang saya harap wujud: tiada akaun, tiada penjejakan, tiada iklan — hanya panduan yang jelas dan praktikal serta matlamat kesihatan anda.',
			'settings.about.privacy.title' => 'Privasi Anda Penting',
			'settings.about.privacy.description' => 'Privasi bukanlah sesuatu yang diambil ringan — ia adalah prinsip reka bentuk. Berikut adalah maksudnya dalam amalan:',
			'settings.about.privacy.noAccounts' => 'Tiada akaun diperlukan\nGunakan aplikasi dengan segera. Tiada pendaftaran, tiada identiti.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Tiada penjejakan tingkah laku\n${appLabel} tidak memantau aktiviti anda, membina profil penggunaan, atau menjejak anda di antara aplikasi atau laman web.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Tanpa iklan secara reka bentuk\n${appLabel} dibina untuk berfungsi tanpa iklan atau monetisasi berasaskan data.',
			'settings.about.privacy.noDataSelling' => 'Tiada penjualan data\nData kesihatan anda tidak pernah dijual atau dikongsi dengan pihak ketiga.',
			'settings.about.privacy.localStorage' => 'Penyimpanan pertama tempatan\nData anda kekal di peranti anda.',
			'settings.about.privacy.privacyPolicy' => 'Dasar Privasi',
			'settings.about.developer.title' => 'Dibina oleh Pemaju Solo',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} dibina dan diselenggara oleh seorang pemaju solo tunggal yang fokus kepada mencipta perisian kesihatan yang tenang dan menghormati privasi.\n\nMaklum balas dibaca secara peribadi dan membantu membentuk arah aplikasi ini.',
			'settings.about.developer.website' => 'Laman Web',
			'settings.about.developer.email' => 'Emel',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Adakah Anda Menyukai ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Maklum balas anda membantu menjadikan ${appLabel} lebih baik untuk semua.',
			'settings.about.feedback.rateApp' => 'Nilai di Play Store',
			'settings.about.feedback.sendFeedback' => 'Hantar Maklum Balas',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Binaan ${buildNumber}',
			'reminders.title' => 'Tetap pada landasan dengan peringatan',
			'reminders.description' => 'Dapatkan peringatan lembut untuk mencatat hidangan anda dan tetap konsisten dengan matlamat pemakanan anda',
			'reminders.notificationsEnabled' => 'Pemberitahuan Diaktifkan',
			'reminders.notificationsDisabled' => 'Pemberitahuan Dinonaktifkan',
			'reminders.enabledSubtitle' => 'Anda akan menerima peringatan hidangan',
			'reminders.disabledSubtitle' => 'Aktifkan pemberitahuan untuk mendapatkan peringatan hidangan',
			'reminders.mealReminders' => 'Peringatan Hidangan',
			'reminders.breakfast' => 'Sarapan',
			'reminders.lunch' => 'Makan Tengahari',
			'reminders.dinner' => 'Makan Malam',
			'reminders.snack' => 'Snek',
			'reminders.unknown' => 'Tidak Diketahui',
			'reminders.change' => 'Ubah',
			'reminders.enableNotifications' => 'Aktifkan Pemberitahuan',
			'reminders.skipForNow' => 'Langkau buat masa sekarang',
			'reminders.saveChanges' => 'Simpan Perubahan',
			'reminders.enabledSuccessfully' => 'Pemberitahuan diaktifkan dengan jayanya!',
			'reminders.permissionDenied' => 'Kebenaran pemberitahuan ditolak',
			'reminders.errorEnabling' => ({required Object error}) => 'Ralat mengaktifkan pemberitahuan: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Ralat menyelesaikan persediaan: ${error}',
			'notifications.breakfast.title' => 'Masa Sarapan! 🍳',
			'notifications.breakfast.body' => 'Jangan lupa untuk mencatat sarapan anda',
			'notifications.lunch.title' => 'Masa Makan Tengahari! 🥗',
			'notifications.lunch.body' => 'Masa untuk mencatat makan tengahari anda',
			'notifications.dinner.title' => 'Masa Makan Malam! 🍽️',
			'notifications.dinner.body' => 'Jangan lupa untuk mencatat makan malam anda',
			'notifications.snack.title' => 'Masa Snek! 🍎',
			'notifications.snack.body' => 'Masa untuk snek sihat',
			'notifications.test.title' => 'Pemberitahuan Uji',
			'login.title' => 'Log Masuk',
			'login.signInWithGoogle' => 'Log masuk dengan Google',
			'login.signInFailed' => 'Log Masuk Google gagal atau dibatalkan.',
			'disclaimer.pleaseNote' => 'Sila Ambil Perhatian',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} menyediakan info nutrisi anggaran. Ketepatan bergantung pada input anda & variasi makanan. Gunakan sebagai panduan, bukan sumber definitif. Rujuk kepada profesional untuk nasihat diet peribadi.',
			'disclaimer.snap.portionSize.title' => 'Saiz Hidangan',
			'disclaimer.snap.portionSize.description' => 'Ketepatan anggaran sangat bergantung pada penilaian saiz hidangan anda yang betul.',
			'disclaimer.snap.preparationMethods.title' => 'Kaedah Penyediaan',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Kaedah memasak boleh mengubah kandungan nutrisi makanan secara signifikan. Anggaran ${appLabel} mungkin tidak selalu mengambil kira variasi ini.',
			'disclaimer.snap.ingredients.title' => 'Bahan',
			'disclaimer.snap.ingredients.description' => 'Hidangan yang kompleks dengan banyak bahan tersembunyi mungkin menyebabkan anggaran kurang tepat.',
			'disclaimer.snap.databaseLimitations.title' => 'Had Pangkalan Data',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Pangkalan data makanan ${appLabel} adalah luas tetapi mungkin tidak termasuk setiap item makanan atau variasi.',
			'disclaimer.weightEstimate.title' => 'Tentang Anggaran Berat',
			'disclaimer.weightEstimate.description' => 'Perubahan berat yang diramalkan adalah anggaran teori berdasarkan model kalori masuk vs. kalori keluar yang mudah. Ia bertujuan sebagai panduan motivasi sahaja, bukan sebagai ramalan berat sebenar anda.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Ketepatan Kalori',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Anggaran ini hanya seakurat pengambilan kalori anda yang dicatat dan perbelanjaan. Pencatatan yang tidak tepat akan menghasilkan anggaran yang tidak tepat.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Faktor Biologi',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Kehilangan/pertambahan berat badan yang sebenar dipengaruhi oleh metabolisme, hormon, tidur, tekanan, penghidratan, dan faktor individu lain yang tidak dapat diukur oleh ${appLabel}.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Berat Air & Fluktuasi',
			'disclaimer.weightEstimate.waterWeight.description' => 'Berat harian normal boleh berfluktuasi dengan ketara disebabkan oleh penahanan air, pencernaan, dan masa. Anggaran ini tidak mengambil kira perubahan harian ini.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Bimbingan Profesional',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Jangan gunakan anggaran ini untuk membuat keputusan perubatan. Sentiasa berunding dengan profesional kesihatan atau pakar diet berdaftar untuk nasihat pengurusan berat secara peribadi.',
			'disclaimer.healthMetrics.description' => 'Metrik ini membantu anda memahami keperluan tenaga badan anda dan membimbing matlamat pemakanan anda.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Kadar Metabolik Basal (BMR) ialah jumlah kalori yang dibakar oleh badan anda pada waktu rehat untuk mengekalkan fungsi asas seperti pernafasan dan peredaran. BMR bergantung kepada umur, jantina, tinggi, dan berat anda. BMR yang lebih tinggi bermaksud badan anda secara semula jadi membakar lebih banyak kalori pada waktu rehat, sering disebabkan oleh lebih banyak jisim otot, umur yang lebih muda, atau jantina lelaki. BMR yang lebih rendah biasanya menunjukkan jisim otot yang lebih sedikit, umur yang lebih tua, atau jantina perempuan.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Perbelanjaan Tenaga Harian Keseluruhan (TDEE) ialah jumlah kalori yang anda bakar setiap hari, termasuk BMR anda ditambah kalori dari aktiviti fizikal dan pergerakan harian. TDEE bergantung kepada BMR dan tahap aktiviti anda. TDEE yang lebih tinggi bermakna anda membakar lebih banyak kalori secara keseluruhan, biasanya dari menjadi lebih aktif atau mempunyai BMR yang lebih tinggi. TDEE yang lebih rendah menunjukkan aktiviti harian yang kurang atau BMR yang lebih rendah.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Matlamat Harian',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Matlamat Harian ialah pengambilan kalori harian yang disyorkan berdasarkan TDEE dan matlamat berat anda. Untuk penurunan berat badan, anda mengambil kalori kurang daripada TDEE anda. Untuk penyelenggaraan berat, anda sepadankan dengan TDEE anda. Untuk pertambahan berat, anda mengambil lebih banyak kalori daripada TDEE anda. Ini membantu anda mencapai perubahan berat yang diingini dengan cara yang sihat.',
			'disclaimer.calorieExpenditure.title' => 'Anggaran pembakaran kalori',
			'disclaimer.calorieExpenditure.description' => 'Apabila data Health Connect tidak tersedia, kami menganggarkan kalori yang dibakar hari ini menggunakan Kadar Metabolik Asas (BMR) dan tahap aktiviti anda (TDEE), diselaraskan mengikut bahagian hari yang telah berlalu.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Bagaimana anggaran dikira',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Kami mengira TDEE anda (berdasarkan profil anda) dan mendarabkannya dengan pecahan hari yang telah berlalu (jam + minit) / 24 untuk menganggarkan kalori yang telah dibakar setakat ini.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Panduan profesional',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Jangan gunakan anggaran ini untuk membuat keputusan perubatan. Sentiasa rujuk kepada profesional penjagaan kesihatan atau pakar diet berdaftar untuk nasihat pengurusan berat badan yang disesuaikan.',
			'common.close' => 'Tutup',
			'common.kContinue' => 'Teruskan',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Anda menikmati ${appLabel}?',
			'feedbackRating.yes' => 'Ya, saya menikmatinya',
			'feedbackRating.no' => 'Tidak begitu',
			'feedbackRating.rateStepHeading' => 'Beri penilaian di Play Store',
			'feedbackRating.emailStepHeading' => 'Hantar maklum balas melalui e-mel',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Penilaian ringkas membantu orang lain menemui ${appLabel} dan menyokong pembangunan aplikasi. Boleh luangkan sedikit masa untuk memberi penilaian?',
			'feedbackRating.shareFeedbackViaEmail' => 'Maklum balas anda membentuk apa yang akan datang — kami membaca setiap mesej. Adakah anda ingin berkongsi pendapat melalui e-mel?',
			'feedbackRating.rateCta' => 'Beri penilaian di Play Store',
			'feedbackRating.maybeLater' => 'Mungkin nanti',
			'feedbackRating.sendFeedback' => 'Hantar maklum balas',
			'feedbackRating.noThanks' => 'Tidak, terima kasih',
			'feedbackRating.aboutUsDescription' => 'Dibuat dengan penuh perhatian oleh sebuah pasukan kecil. Kami memberi tumpuan kepada privasi, kesederhanaan, dan membantu anda membina tabiat pemakanan yang lebih baik.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Ingin tahu siapa di sebalik ${appLabel}? Lihat ',
			'feedbackRating.aboutUsLinkLabel' => 'Tentang kami',
			'feedbackRating.thankYouMessage' => 'Terima kasih! Kami akan bertanya lagi lain kali.',
			'health.syncFailed' => 'Tidak dapat menyinkronkan ke Health Connect',
			'health.mealSynced' => 'Hidangan disinkronkan dengan Health Connect',
			_ => null,
		};
	}
}
