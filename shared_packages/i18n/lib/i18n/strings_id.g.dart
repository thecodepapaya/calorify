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
class TranslationsId with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsId({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.id,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <id>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsId _root = this; // ignore: unused_field

	@override 
	TranslationsId $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsId(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Bahasa Indonesia';
	@override String get flag => '🇮🇩';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsOnboardingId onboarding = _TranslationsOnboardingId._(_root);
	@override late final _TranslationsTabsId tabs = _TranslationsTabsId._(_root);
	@override late final _TranslationsHomeId home = _TranslationsHomeId._(_root);
	@override late final _TranslationsHistoryId history = _TranslationsHistoryId._(_root);
	@override late final _TranslationsMealId meal = _TranslationsMealId._(_root);
	@override late final _TranslationsFavoritesId favorites = _TranslationsFavoritesId._(_root);
	@override late final _TranslationsProfileId profile = _TranslationsProfileId._(_root);
	@override late final _TranslationsHealthScoreId healthScore = _TranslationsHealthScoreId._(_root);
	@override late final _TranslationsEditProfileId editProfile = _TranslationsEditProfileId._(_root);
	@override late final _TranslationsSettingsId settings = _TranslationsSettingsId._(_root);
	@override late final _TranslationsRemindersId reminders = _TranslationsRemindersId._(_root);
	@override late final _TranslationsNotificationsId notifications = _TranslationsNotificationsId._(_root);
	@override late final _TranslationsLoginId login = _TranslationsLoginId._(_root);
	@override late final _TranslationsDisclaimerId disclaimer = _TranslationsDisclaimerId._(_root);
	@override late final _TranslationsCommonId common = _TranslationsCommonId._(_root);
	@override late final _TranslationsFeedbackRatingId feedbackRating = _TranslationsFeedbackRatingId._(_root);
	@override late final _TranslationsErrorsId errors = _TranslationsErrorsId._(_root);
	@override late final _TranslationsDebugId debug = _TranslationsDebugId._(_root);
	@override late final _TranslationsHealthId health = _TranslationsHealthId._(_root);
}

// Path: onboarding
class _TranslationsOnboardingId implements TranslationsOnboardingEn {
	_TranslationsOnboardingId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Selamat datang di ${appLabel}';
	@override String get subtitle => 'Pendamping nutrisi pribadi Anda yang didukung oleh AI';
	@override String get getStarted => 'Mulai';
	@override late final _TranslationsOnboardingFeaturesId features = _TranslationsOnboardingFeaturesId._(_root);
	@override late final _TranslationsOnboardingGenderId gender = _TranslationsOnboardingGenderId._(_root);
	@override late final _TranslationsOnboardingHeightId height = _TranslationsOnboardingHeightId._(_root);
	@override late final _TranslationsOnboardingWeightId weight = _TranslationsOnboardingWeightId._(_root);
	@override late final _TranslationsOnboardingAgeId age = _TranslationsOnboardingAgeId._(_root);
	@override late final _TranslationsOnboardingBmiScaleId bmiScale = _TranslationsOnboardingBmiScaleId._(_root);
	@override late final _TranslationsOnboardingWeightGoalId weightGoal = _TranslationsOnboardingWeightGoalId._(_root);
	@override late final _TranslationsOnboardingActivityLevelId activityLevel = _TranslationsOnboardingActivityLevelId._(_root);
	@override late final _TranslationsOnboardingHealthConnectId healthConnect = _TranslationsOnboardingHealthConnectId._(_root);
	@override late final _TranslationsOnboardingReinforcementId reinforcement = _TranslationsOnboardingReinforcementId._(_root);
}

// Path: tabs
class _TranslationsTabsId implements TranslationsTabsEn {
	_TranslationsTabsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Dasbor';
	@override String get history => 'Riwayat';
}

// Path: home
class _TranslationsHomeId implements TranslationsHomeEn {
	_TranslationsHomeId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalId dailyGoal = _TranslationsHomeDailyGoalId._(_root);
	@override late final _TranslationsHomeDailySummaryId dailySummary = _TranslationsHomeDailySummaryId._(_root);
	@override late final _TranslationsHomeIntakeProgressId intakeProgress = _TranslationsHomeIntakeProgressId._(_root);
	@override late final _TranslationsHomeIntakeHistoryId intakeHistory = _TranslationsHomeIntakeHistoryId._(_root);
	@override late final _TranslationsHomeMealLogId mealLog = _TranslationsHomeMealLogId._(_root);
	@override late final _TranslationsHomeMealDescriptionId mealDescription = _TranslationsHomeMealDescriptionId._(_root);
	@override late final _TranslationsHomeFavoriteMealsId favoriteMeals = _TranslationsHomeFavoriteMealsId._(_root);
	@override late final _TranslationsHomeMealSnapId mealSnap = _TranslationsHomeMealSnapId._(_root);
	@override late final _TranslationsHomeConnectHealthId connectHealth = _TranslationsHomeConnectHealthId._(_root);
}

// Path: history
class _TranslationsHistoryId implements TranslationsHistoryEn {
	_TranslationsHistoryId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Tidak ada makanan yang dicatat';
	@override String get emptyMessage => 'Ambil gambar makanan terakhir Anda untuk dicatat di sini.';
	@override String get today => 'Hari ini';
	@override String get yesterday => 'Kemarin';
}

// Path: meal
class _TranslationsMealId implements TranslationsMealEn {
	_TranslationsMealId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Oh tidak!';
	@override String get delete => 'Hapus';
	@override String get editMeal => 'Edit Makanan';
	@override String get addMeal => 'Tambah Makanan';
	@override String get saveMeal => 'Simpan Makanan';
	@override String get save => 'Simpan';
	@override String get mealName => 'Nama Makanan';
	@override String get mealNameHint => 'Misalnya: Telur orak-arik dengan roti panggang';
	@override String get mealQuantity => 'Jumlah Makanan';
	@override String get mealQuantityHint => 'misalnya, 1 mangkuk, 2 irisan';
	@override String get timeOfMeal => 'Waktu Makanan';
	@override String get timeOfMealHint => 'Pilih waktu saat Anda makan';
	@override String get mealType => 'Jenis Makanan';
	@override late final _TranslationsMealNutritionId nutrition = _TranslationsMealNutritionId._(_root);
	@override late final _TranslationsMealDeleteConfirmationId deleteConfirmation = _TranslationsMealDeleteConfirmationId._(_root);
	@override String get addedToLog => 'Makanan ditambahkan ke catatan Anda!';
	@override String couldNotAdd({required Object error}) => 'Tidak dapat menambahkan makanan: ${error}';
	@override String get savedSuccessfully => 'Makanan berhasil ditambahkan!';
	@override String get updatedSuccessfully => 'Makanan berhasil diperbarui!';
	@override String errorSaving({required Object error}) => 'Terjadi kesalahan saat menyimpan makanan: ${error}';
	@override String get removedFromFavorites => 'Dihapus dari favorit!';
	@override String get savedAsFavorite => 'Makanan disimpan sebagai favorit!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Tidak dapat memperbarui favorit: ${error}';
	@override String failedToProcess({required Object error}) => 'Gagal memproses: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Gagal memproses gambar: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Kesalahan saat mengompres gambar: ${error}';
	@override String get failedToSave => 'Gagal menyimpan data. Silakan coba lagi.';
	@override String get skip => 'Lewati';
	@override late final _TranslationsMealVariationId variation = _TranslationsMealVariationId._(_root);
}

// Path: favorites
class _TranslationsFavoritesId implements TranslationsFavoritesEn {
	_TranslationsFavoritesId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorit';
	@override String get empty => 'Belum ada makanan favorit.';
}

// Path: profile
class _TranslationsProfileId implements TranslationsProfileEn {
	_TranslationsProfileId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Data profil tidak ditemukan';
	@override String get yourProfile => 'Profil Anda';
	@override String get viewAndManage => 'Lihat dan kelola informasi kesehatan Anda';
	@override late final _TranslationsProfileSectionsId sections = _TranslationsProfileSectionsId._(_root);
	@override String get gender => 'Jenis Kelamin';
	@override String get height => 'Tinggi';
	@override String get weight => 'Berat';
	@override String get age => 'Usia';
	@override String get weightGoal => 'Tujuan Berat';
	@override String get targetWeight => 'Berat Target';
	@override String get activityLevel => 'Tingkat Aktivitas';
	@override String get healthMetrics => 'Metrik Kesehatan';
	@override String get notSet => 'Belum diatur';
	@override String get years => 'tahun';
	@override String get updatedSuccessfully => 'Profil berhasil diperbarui!';
	@override late final _TranslationsProfileCalculatedValuesId calculatedValues = _TranslationsProfileCalculatedValuesId._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreId implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skor Kesehatan';
	@override String get whyThisScore => 'Mengapa skor ini?';
	@override String get note => 'Skor ini adalah perkiraan AI berdasarkan bahan yang teridentifikasi dan kepadatan nutrisi. Selalu konsultasikan dengan profesional untuk saran diet.';
	@override String get unhealthy => 'Tidak Sehat';
	@override String get healthy => 'Sehat';
	@override String get neutral => 'Netral';
}

// Path: editProfile
class _TranslationsEditProfileId implements TranslationsEditProfileEn {
	_TranslationsEditProfileId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edit Profil';
	@override late final _TranslationsEditProfileSectionsId sections = _TranslationsEditProfileSectionsId._(_root);
	@override String get gender => 'Jenis Kelamin';
	@override String get dateOfBirth => 'Tanggal Lahir';
	@override String get height => 'Tinggi';
	@override String get weight => 'Berat';
	@override String get weightGoal => 'Tujuan Berat';
	@override String get activityLevel => 'Tingkat Aktivitas';
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
	@override late final _TranslationsEditProfileGendersId genders = _TranslationsEditProfileGendersId._(_root);
	@override late final _TranslationsEditProfileWeightGoalsId weightGoals = _TranslationsEditProfileWeightGoalsId._(_root);
	@override late final _TranslationsEditProfileActivityLevelsId activityLevels = _TranslationsEditProfileActivityLevelsId._(_root);
}

// Path: settings
class _TranslationsSettingsId implements TranslationsSettingsEn {
	_TranslationsSettingsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengaturan';
	@override late final _TranslationsSettingsSectionsId sections = _TranslationsSettingsSectionsId._(_root);
	@override late final _TranslationsSettingsEditProfileId editProfile = _TranslationsSettingsEditProfileId._(_root);
	@override late final _TranslationsSettingsLanguageId language = _TranslationsSettingsLanguageId._(_root);
	@override late final _TranslationsSettingsHeightUnitId heightUnit = _TranslationsSettingsHeightUnitId._(_root);
	@override late final _TranslationsSettingsWeightUnitId weightUnit = _TranslationsSettingsWeightUnitId._(_root);
	@override late final _TranslationsSettingsMealRemindersId mealReminders = _TranslationsSettingsMealRemindersId._(_root);
	@override late final _TranslationsSettingsThemeId theme = _TranslationsSettingsThemeId._(_root);
	@override late final _TranslationsSettingsSendFeedbackId sendFeedback = _TranslationsSettingsSendFeedbackId._(_root);
	@override late final _TranslationsSettingsClearAllDataId clearAllData = _TranslationsSettingsClearAllDataId._(_root);
	@override late final _TranslationsSettingsDebugOptionsId debugOptions = _TranslationsSettingsDebugOptionsId._(_root);
	@override String get developerModeEnabled => 'Mode pengembang diaktifkan!';
	@override late final _TranslationsSettingsHealthConnectId healthConnect = _TranslationsSettingsHealthConnectId._(_root);
	@override late final _TranslationsSettingsAboutId about = _TranslationsSettingsAboutId._(_root);
	@override late final _TranslationsSettingsAppInfoId appInfo = _TranslationsSettingsAppInfoId._(_root);
}

// Path: reminders
class _TranslationsRemindersId implements TranslationsRemindersEn {
	_TranslationsRemindersId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tetap pada jalur dengan pengingat';
	@override String get description => 'Dapatkan pengingat lembut untuk mencatat makanan Anda dan tetap konsisten dengan tujuan nutrisi Anda';
	@override String get notificationsEnabled => 'Pemberitahuan Diaktifkan';
	@override String get notificationsDisabled => 'Pemberitahuan Dinonaktifkan';
	@override String get enabledSubtitle => 'Anda akan menerima pengingat makanan';
	@override String get disabledSubtitle => 'Aktifkan pemberitahuan untuk mendapatkan pengingat makanan';
	@override String get mealReminders => 'Pengingat Makanan';
	@override String get breakfast => 'Sarapan';
	@override String get lunch => 'Makan Siang';
	@override String get dinner => 'Makan Malam';
	@override String get snack => 'Camilan';
	@override String get unknown => 'Tidak Diketahui';
	@override String get change => 'Ubah';
	@override String get enableNotifications => 'Aktifkan Pemberitahuan';
	@override String get skipForNow => 'Lewati untuk sekarang';
	@override String get saveChanges => 'Simpan Perubahan';
	@override String get enabledSuccessfully => 'Pemberitahuan berhasil diaktifkan!';
	@override String get permissionDenied => 'Izin pemberitahuan ditolak';
	@override String errorEnabling({required Object error}) => 'Kesalahan saat mengaktifkan pemberitahuan: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Kesalahan saat menyelesaikan pengaturan: ${error}';
}

// Path: notifications
class _TranslationsNotificationsId implements TranslationsNotificationsEn {
	_TranslationsNotificationsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastId breakfast = _TranslationsNotificationsBreakfastId._(_root);
	@override late final _TranslationsNotificationsLunchId lunch = _TranslationsNotificationsLunchId._(_root);
	@override late final _TranslationsNotificationsDinnerId dinner = _TranslationsNotificationsDinnerId._(_root);
	@override late final _TranslationsNotificationsSnackId snack = _TranslationsNotificationsSnackId._(_root);
	@override late final _TranslationsNotificationsTestId test = _TranslationsNotificationsTestId._(_root);
}

// Path: login
class _TranslationsLoginId implements TranslationsLoginEn {
	_TranslationsLoginId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masuk';
	@override String get signInWithGoogle => 'Masuk dengan Google';
	@override String get signInFailed => 'Masuk Google gagal atau dibatalkan.';
}

// Path: disclaimer
class _TranslationsDisclaimerId implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Harap Dicatat';
	@override late final _TranslationsDisclaimerSnapId snap = _TranslationsDisclaimerSnapId._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateId weightEstimate = _TranslationsDisclaimerWeightEstimateId._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsId healthMetrics = _TranslationsDisclaimerHealthMetricsId._(_root);
}

// Path: common
class _TranslationsCommonId implements TranslationsCommonEn {
	_TranslationsCommonId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get close => 'Tutup';
	@override String get kContinue => 'Lanjutkan';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingId implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Menikmati ${appLabel}?';
	@override String get yes => 'Ya, saya menikmatinya';
	@override String get no => 'Tidak begitu';
	@override String soloDevMessage({required Object appLabel}) => 'Penilaian singkat membantu orang lain menemukan ${appLabel} dan mendukung kelanjutan pengembangannya. Maukah Anda meluangkan waktu untuk memberi penilaian?';
	@override String get shareFeedbackViaEmail => 'Masukan Anda membentuk apa yang akan datang — kami membaca setiap pesan. Apakah Anda ingin membagikan pemikiran Anda melalui email?';
	@override String get rateCta => 'Beri penilaian di Play Store';
	@override String get maybeLater => 'Nanti saja';
	@override String get sendFeedback => 'Kirim umpan balik';
	@override String get noThanks => 'Tidak, terima kasih';
	@override String get aboutUsDescription => 'Dibuat dengan penuh perhatian oleh tim kecil. Kami berfokus pada privasi, kesederhanaan, dan membantu Anda membangun kebiasaan makan yang lebih sehat.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Penasaran siapa di balik ${appLabel}? Lihat ';
	@override String get aboutUsLinkLabel => 'Tentang kami';
}

// Path: errors
class _TranslationsErrorsId implements TranslationsErrorsEn {
	_TranslationsErrorsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Kesalahan saat memuat data profil';
	@override String get somethingWentWrong => 'Terjadi kesalahan.';
}

// Path: debug
class _TranslationsDebugId implements TranslationsDebugEn {
	_TranslationsDebugId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opsi Debug';
	@override late final _TranslationsDebugSectionsId sections = _TranslationsDebugSectionsId._(_root);
	@override String get showActiveNotifications => 'Tampilkan Pemberitahuan Aktif';
	@override String get scheduleTestNotification => 'Jadwalkan Pemberitahuan Uji (10 detik)';
	@override String get triggerBreakfastNotification => 'Aktifkan Pemberitahuan Sarapan';
	@override String get cancelAllNotifications => 'Batalkan Semua Pemberitahuan';
	@override String get activeNotifications => 'Pemberitahuan Aktif';
	@override String get noTitle => 'Tidak Ada Judul';
	@override String get noBody => 'Tidak Ada Isi';
	@override String get fetchTodaysSteps => 'Ambil Langkah Hari Ini';
	@override String get fetchTodaysCalories => 'Ambil Kalori Hari Ini';
	@override String get fetchLatestWeight => 'Ambil Berat Terakhir';
	@override String get fetchLatestHeight => 'Ambil Tinggi Terakhir';
	@override String get writeTestWeight => 'Tulis Berat Uji (70kg)';
	@override String get writeTestHeight => 'Tulis Tinggi Uji (175cm)';
	@override String get syncLast7Days => 'Sinkronkan 7 Hari Terakhir';
	@override String get sync7DaysTitle => 'Sinkron 7 Hari';
	@override String get checkCurrentLocale => 'Periksa Locale Saat Ini';
	@override String get currentLocale => 'Locale Saat Ini';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Bahasa: ${languageCode}\nNegara: ${countryCode}\nSistem Unit: ${unitSystem}';
	@override String get latestWeight => 'Berat Terakhir';
	@override String get latestHeight => 'Tinggi Terakhir';
	@override String get todaysCalories => 'Kalori Hari Ini';
	@override String totalCaloriesBurned({required Object calories}) => 'Total kalori yang terbakar: ${calories}';
	@override String syncSuccess({required Object count}) => 'Berhasil mengambil ${count} data untuk Langkah, Kalori, dan Berat dalam 7 hari terakhir.';
	@override String get noWeightData => 'Tidak ada data berat badan ditemukan dalam 30 hari terakhir.';
	@override String get noHeightData => 'Tidak ada data tinggi badan ditemukan dalam setahun terakhir.';
	@override String get noCalorieData => 'Tidak ada data kalori ditemukan untuk hari ini.';
	@override String get weightWritten => 'Berhasil menulis berat uji (70kg).';
	@override String get weightWriteFailed => 'Gagal menulis berat uji.';
	@override String get heightWritten => 'Berhasil menulis tinggi uji (175cm).';
	@override String get heightWriteFailed => 'Gagal menulis tinggi uji.';
	@override String get noNotifications => 'Tidak ada pemberitahuan aktif.';
	@override String get testNotificationScheduled => 'Pemberitahuan uji dijadwalkan dalam 10 detik dari sekarang.';
	@override String get testNotificationBody => 'Ini adalah pemberitahuan uji yang dijadwalkan dalam 10 detik dari sekarang.';
	@override String get breakfastNotificationTriggered => 'Pemberitahuan sarapan diaktifkan.';
	@override String get allNotificationsCancelled => 'Semua pemberitahuan dibatalkan.';
	@override String get fetchingData => 'Mengambil data untuk 7 hari terakhir...';
	@override String id({required Object id}) => 'ID: ${id}';
	@override String get showFeedbackRatingSheet => 'Tampilkan lembar umpan balik / penilaian';
	@override String get clearUserPreferences => 'Hapus preferensi pengguna';
	@override String get clearUserPreferencesConfirmationTitle => 'Hapus preferensi pengguna?';
	@override String get clearUserPreferencesConfirmationMessage => 'Tema, bahasa, dan preferensi umpan balik akan diatur ulang. Data makanan dan profil tidak akan terpengaruh.';
	@override String get clearUserProfile => 'Hapus profil pengguna';
	@override String get clearUserProfileConfirmationTitle => 'Hapus profil pengguna?';
	@override String get clearUserProfileConfirmationMessage => 'Data profil Anda (target harian, tinggi, berat, dll.) akan dihapus. Data makanan dan preferensi tidak akan terpengaruh.';
	@override String get clear => 'Hapus';
	@override String get cancel => 'Batal';
}

// Path: health
class _TranslationsHealthId implements TranslationsHealthEn {
	_TranslationsHealthId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Tidak dapat menyinkronkan dengan Health Connect';
	@override String get mealSynced => 'Makanan disinkronkan dengan Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesId implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionId foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionId._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisId aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisId._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationId healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationId._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderId implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apa jenis kelamin Anda?';
	@override String get description => 'Jenis kelamin membantu kami menghitung laju metabolisme basal (BMR) Anda dengan akurat.';
	@override String get next => 'Selanjutnya';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightId implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seberapa tinggi Anda?';
	@override String get description => 'Tinggi badan Anda membantu kami menghitung BMI dan kebutuhan energi Anda dengan akurat.';
	@override String get metric => 'Metrik';
	@override String get imperial => 'Imperial';
	@override String get next => 'Selanjutnya';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightId implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Apa berat badan Anda saat ini?';
	@override String get currentDescription => 'Berat badan Anda saat ini sangat penting untuk mempersonalisasi tujuan harian Anda.';
	@override String get targetTitle => 'Apa berat badan target Anda?';
	@override String get targetDescription => 'Menetapkan berat badan target membantu kami menentukan rencana jangka panjang Anda.';
	@override String get metric => 'Metrik';
	@override String get imperial => 'Imperial';
	@override String get next => 'Selanjutnya';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeId implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kapan ulang tahun Anda?';
	@override String get description => 'Usia Anda membantu kami menghitung kebutuhan kalori Anda dengan akurat.';
	@override String get next => 'Selanjutnya';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleId implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kekurangan berat badan';
	@override String get healthy => 'Sehat';
	@override String get overweight => 'Kelebihan berat badan';
	@override String get obese => 'Obesitas';
	@override late final _TranslationsOnboardingBmiScaleCategoriesId categories = _TranslationsOnboardingBmiScaleCategoriesId._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesId messages = _TranslationsOnboardingBmiScaleMessagesId._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalId implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apa tujuan Anda?';
	@override String get description => 'Pilih tujuan yang paling mendeskripsikan apa yang ingin Anda capai';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelId implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seberapa aktif Anda?';
	@override String get description => 'Ini membantu kami menghitung kebutuhan kalori harian Anda dengan lebih akurat';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectId implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hubungkan dengan Health Connect';
	@override String get description => 'Sinkronkan data kesehatan Anda untuk wawasan yang lebih baik dan pelacakan kalori otomatis';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingId automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingId._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsId progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsId._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationId seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationId._(_root);
	@override String get connected => 'Health Connect Terhubung';
	@override String get notConnected => 'Health Connect Belum Terhubung';
	@override String get setup => 'Siapkan Health Connect';
	@override String get skipForNow => 'Lewati untuk sekarang';
	@override String get statusConnected => 'Health Connect terhubung.';
	@override String get statusSuccess => 'Health Connect telah berhasil terhubung!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Izin ditolak. Silakan aktifkan izin Health Connect dari pengaturan ponsel Anda untuk ${appLabel}.';
	@override String statusError({required Object error}) => 'Kesalahan saat menyiapkan Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementId implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessId trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessId._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileId healthProfile = _TranslationsOnboardingReinforcementHealthProfileId._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleId goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleId._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalId implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tetapkan Tujuan Harian Anda';
	@override String get titleSet => 'Tujuan Harian Anda';
	@override String get description => 'Siap untuk memulai perjalanan kesejahteraan Anda? Tetapkan target kalori harian Anda di bawah ini untuk memulai kemajuan Anda.';
	@override String get descriptionSet => 'Kompas Anda sudah diatur! Ini adalah target kalori harian Anda untuk memandu Anda.';
	@override String get yourGoal => 'Tujuan Anda';
	@override String get dailyCalories => 'Kalori harian (kcal)';
	@override String get setGoal => 'Tetapkan Tujuan';
	@override String get intake => 'Asupan';
	@override String get burned => 'Terbakar';
	@override String get weightImpact => 'Dampak Berat';
	@override String get estLoss => 'Perkiraan kehilangan';
	@override String get estGain => 'Perkiraan kenaikan';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryId implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ringkasan Harian';
	@override String get calories => 'Kalori';
	@override String get carbs => 'Karbohidrat';
	@override String get protein => 'Protein';
	@override String get fat => 'Lemak';
	@override String get fiber => 'Serat';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressId implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pemisahan Makro Hari Ini';
	@override String get target => 'Target';
	@override String get current => 'Sekarang';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryId implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Riwayat Makro 7-Hari';
	@override String get noHistoryYet => 'Belum ada riwayat';
	@override String get startLogging => 'Mulailah mencatat makanan untuk melihat tren makro 7-hari Anda di sini';
}

// Path: home.mealLog
class _TranslationsHomeMealLogId implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Makanan yang Dicatat';
	@override String get emptyMessage => 'Ambil gambar makanan terakhir Anda untuk dicatat di sini.';
	@override String get noMealsToday => 'Belum ada makanan yang dicatat untuk hari ini';
	@override String get seeAllMeals => 'Lihat semua makanan';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionId implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tambah Cepat dengan AI';
	@override String get description => 'Deskripsikan makanan Anda, dan biarkan AI menangani detailnya.';
	@override String get hint => 'misalnya, Untuk sarapan saya memiliki semangkuk besar oatmeal dengan satu pisang iris dan satu sendok whey ...';
	@override String get analyzeMeal => 'Analisis makanan';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsId implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Makanan Favorit';
	@override String get description => 'Tambahkan salah satu makanan favorit Anda dengan cepat.';
	@override String get noFavorites => 'Belum ada makanan favorit.';
	@override String get addFavoriteHint => 'Klik bintang pada makanan untuk menandainya sebagai favorit.';
	@override String get seeAll => 'Lihat semua';
	@override String get add => 'Tambah';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapId implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ambil & Lacak Makanan Anda';
	@override String get description => 'Gunakan kamera Anda untuk mengambil gambar makanan Anda untuk analisis AI.';
	@override String get openCamera => 'Buka Kamera';
	@override String get gallery => 'Galeri';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthId implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sinkronkan dengan Health Connect';
	@override String get description => 'Sinkronkan data nutrisi Anda dengan Health Connect';
	@override String get install => 'Instal';
	@override String get connect => 'Hubungkan';
}

// Path: meal.nutrition
class _TranslationsMealNutritionId implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalori';
	@override String get carbs => 'Karbohidrat (g)';
	@override String get protein => 'Protein (g)';
	@override String get fat => 'Lemak (g)';
	@override String get fiber => 'Serat (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationId implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hapus Makanan';
	@override String get message => 'Apakah Anda yakin ingin menghapus entri makanan ini?';
	@override String get cancel => 'Batal';
	@override String get delete => 'Hapus';
}

// Path: meal.variation
class _TranslationsMealVariationId implements TranslationsMealVariationEn {
	_TranslationsMealVariationId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Pertanyaan ${current} dari ${total}';
	@override String get noVariationsAvailable => 'Tidak ada variasi yang tersedia';
}

// Path: profile.sections
class _TranslationsProfileSectionsId implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'INFORMASI DASAR';
	@override String get goalsAndActivity => 'TUJUAN & AKTIVITAS';
	@override String get calculatedValues => 'NILAI YANG DIHITUNG';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesId implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Tujuan Harian';
	@override String get calPerDay => 'kal/hari';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsId implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMASI PRIBADI';
	@override String get physicalMeasurements => 'UKURAN FISIK';
	@override String get goalsAndActivity => 'TUJUAN & AKTIVITAS';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersId implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get male => 'Laki-laki';
	@override String get female => 'Perempuan';
	@override String get other => 'Lainnya';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsId implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightId loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightId._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightId maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightId._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightId gainWeight = _TranslationsEditProfileWeightGoalsGainWeightId._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsId implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryId sedentary = _TranslationsEditProfileActivityLevelsSedentaryId._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveId lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveId._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveId moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveId._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveId veryActive = _TranslationsEditProfileActivityLevelsVeryActiveId._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveId extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveId._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsId implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALISASI';
	@override String get notifications => 'PEMBERITAHUAN';
	@override String get healthConnect => 'KONEKSI KESEHATAN';
	@override String get supportAndLegal => 'DUKUNGAN & HUKUM';
	@override String get about => 'TENTANG';
	@override String get dangerZone => 'ZONA BAHAYA';
	@override String get developer => 'PEMBANGUN';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileId implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edit Profil';
	@override String get subtitle => 'Perbarui informasi pribadi Anda';
}

// Path: settings.language
class _TranslationsSettingsLanguageId implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bahasa';
	@override String get subtitle => 'Pilih bahasa yang Anda inginkan';
	@override String get searchHint => 'Cari bahasa...';
	@override String get noResults => 'Tidak ada hasil ditemukan';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitId implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Satuan Tinggi';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitId implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Satuan Berat';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersId implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengingat Makanan';
	@override String get subtitle => 'Tetap pada jalur dengan peringatan tepat waktu';
}

// Path: settings.theme
class _TranslationsSettingsThemeId implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Terang';
	@override String get dark => 'Gelap';
	@override String get system => 'Sistem';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackId implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kirim Umpan Balik';
	@override String subtitle({required Object appLabel}) => 'Bantu kami memperbaiki ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Umpan Balik Aplikasi ${appLabel}';
	@override String get emailBodyPrefix => 'Silakan berikan umpan balik Anda di bawah ini:';
	@override String get appVersion => 'Versi Aplikasi';
	@override String get device => 'Perangkat';
	@override String get osVersion => 'Versi OS';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataId implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hapus Semua Data';
	@override String get subtitle => 'Hapus semua informasi Anda secara tidak dapat dibalik';
	@override String get confirmationTitle => 'Hapus Semua Data?';
	@override String get confirmationMessage => 'Tindakan ini tidak dapat dibatalkan. Semua makanan yang dicatat, favorit, dan pengaturan profil Anda akan dihapus secara permanen.';
	@override String get cancel => 'Batal';
	@override String get clearEverything => 'Hapus Semuanya';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsId implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opsi Debug';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectId implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Koneksi Kesehatan';
	@override String get subtitle => 'Lihat dan kelola izin';
	@override late final _TranslationsSettingsHealthConnectUnavailableId unavailable = _TranslationsSettingsHealthConnectUnavailableId._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsId permissions = _TranslationsSettingsHealthConnectPermissionsId._(_root);
	@override String get managePermissions => 'Kelola Izin';
	@override String get openSettings => 'Buka Pengaturan Kesehatan Terhubung';
	@override String get requestPermissions => 'Minta Izin';
	@override String get permissionRequestCancelledOrFailed => 'Permintaan izin dibatalkan atau gagal. Silakan coba lagi atau berikan izin secara manual di pengaturan Health Connect.';
	@override String get permissionRequestFailed => 'Tidak dapat meminta izin. Silakan coba lagi atau berikan izin secara manual di pengaturan Health Connect.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutId implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tentang';
	@override String get tagline => 'Kesadaran kalori yang cepat, gratis, dan mengutamakan privasi';
	@override late final _TranslationsSettingsAboutOurStoryId ourStory = _TranslationsSettingsAboutOurStoryId._(_root);
	@override late final _TranslationsSettingsAboutPrivacyId privacy = _TranslationsSettingsAboutPrivacyId._(_root);
	@override late final _TranslationsSettingsAboutDeveloperId developer = _TranslationsSettingsAboutDeveloperId._(_root);
	@override late final _TranslationsSettingsAboutFeedbackId feedback = _TranslationsSettingsAboutFeedbackId._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoId implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastId implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Waktunya Sarapan! 🍳';
	@override String get body => 'Jangan lupa untuk mencatat sarapan Anda';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchId implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Waktunya Makan Siang! 🥗';
	@override String get body => 'Saatnya mencatat makan siang Anda';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerId implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Waktunya Makan Malam! 🍽️';
	@override String get body => 'Jangan lupa untuk mencatat makan malam Anda';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackId implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Waktunya Camilan! 🍎';
	@override String get body => 'Saatnya untuk camilan sehat';
}

// Path: notifications.test
class _TranslationsNotificationsTestId implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pemberitahuan Uji';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapId implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} memberikan informasi nutrisi yang diperkirakan. Akurasi tergantung pada input Anda & variasi makanan. Gunakan sebagai panduan, bukan sebagai sumber definitif. Konsultasikan dengan profesional untuk saran diet yang dipersonalisasi.';
	@override late final _TranslationsDisclaimerSnapPortionSizeId portionSize = _TranslationsDisclaimerSnapPortionSizeId._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsId preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsId._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsId ingredients = _TranslationsDisclaimerSnapIngredientsId._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsId databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsId._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateId implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tentang Perkiraan Berat';
	@override String get description => 'Perubahan berat yang diproyeksikan adalah perkiraan teoretis berdasarkan model kalori masuk vs. kalori keluar yang sederhana. Itu dimaksudkan untuk panduan motivasi saja, bukan sebagai prediksi berat badan Anda yang sebenarnya.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyId calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyId._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsId biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsId._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightId waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightId._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceId professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceId._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsId implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get description => 'Metrik ini membantu Anda memahami kebutuhan energi tubuh Anda dan memandu tujuan nutrisi Anda.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrId bmr = _TranslationsDisclaimerHealthMetricsBmrId._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeId tdee = _TranslationsDisclaimerHealthMetricsTdeeId._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalId dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalId._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsId implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Pemberitahuan';
	@override String get healthConnect => 'Health Connect';
	@override String get feedback => 'Umpan balik';
	@override String get dataReset => 'Atur ulang data';
	@override String get appInfo => 'Info Aplikasi';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionId implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengenalan Makanan Cerdas';
	@override String get description => 'Ambil foto dan biarkan AI mengidentifikasi makanan Anda';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisId implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analisis AI';
	@override String get description => 'Dapatkan fakta nutrisi secara instan dari deskripsi Anda';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationId implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrasi Kesehatan';
	@override String get description => 'Hubungkan dengan Health Connect untuk wawasan yang lebih baik';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesId implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kekurangan berat badan';
	@override String get healthyWeight => 'Berat badan sehat';
	@override String get overweight => 'Kelebihan berat badan';
	@override String get obese => 'Obesitas';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesId implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kami dapat membantu Anda membangun rencana sehat untuk mencapai berat badan yang seimbang dengan makanan padat nutrisi.';
	@override String get healthy => 'Kerja bagus! Anda berada dalam rentang sehat. Kami akan membantu Anda menjaga vitalitas dan tingkat energi Anda.';
	@override String overweight({required Object appLabel}) => '${appLabel} akan menyederhanakan perjalanan Anda dengan pelacakan bertenaga AI untuk membantu Anda mencapai target dengan nyaman.';
	@override String get obese => 'Kami di sini untuk mendukung Anda dengan panduan pribadi dan strategi berkelanjutan untuk tujuan kesehatan Anda.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingId implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pelacakan Kalori Otomatis';
	@override String get description => 'Lacak kalori yang terbakar dari aplikasi kebugaran Anda';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsId implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wawasan Kemajuan';
	@override String get description => 'Dapatkan wawasan mendetail tentang tren kesehatan Anda';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationId implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrasi Tanpa Hambatan';
	@override String get description => 'Sinkronkan data dari aplikasi kesehatan favorit Anda';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessId implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anda Tidak Sendirian';
	@override String get genericMessage => 'Penelitian menunjukkan bahwa pelacakan yang konsisten adalah prediktor sukses jangka panjang nomor 1.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Untuk seorang ${age} tahun ${gender} yang ingin ${goal}, pelacakan yang konsisten adalah prediktor sukses nomor 1.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} membuatnya 10x lebih mudah dibandingkan melakukannya secara manual.';
	@override String get getStartedTitle => 'Siap untuk memulai?';
	@override String get tipPhoto => 'Ambil foto makananmu untuk analisis instan';
	@override String get tipConsistency => 'Catat secara konsisten untuk melihat kemajuan yang signifikan';
	@override String get tipProgress => 'Lacak kemajuanmu setiap hari untuk tetap termotivasi';
	@override String get button => 'Ayo Mulai';
	@override String get defaultGender => 'individu';
	@override String get defaultGoal => 'Anda yang lebih sehat';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileId implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil Kesehatan Anda';
	@override String bmiDescription({required Object bmi}) => 'Berdasarkan metrik Anda, BMI Anda adalah ${bmi}.';
	@override String get finalizeDescription => 'Mari selesaikan profil Anda untuk mempersonalisasi pengalaman Anda.';
	@override String get goalGain => 'menambah';
	@override String get goalLose => 'mengurangi';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Untuk mencapai tujuan Anda, Anda perlu ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Anda sudah mencapai berat target Anda! Kami akan membantu Anda mempertahankannya.';
	@override String get button => 'Ayo Mulai';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleId implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Awal yang Sangat Bagus!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Anda telah mengambil langkah pertama menuju ${goalText}. Karena Anda ${activityText}, ${appLabel} akan menyesuaikan target Anda agar sesuai dengan gaya hidup Anda.';
	@override String get personalizedTargets => 'Target kalori yang dipersonalisasi';
	@override String get aiMealDetection => 'Deteksi makanan berbasis AI';
	@override String get macroBreakdowns => 'Rincian makronutrien yang mendetail';
	@override String get button => 'Ayo Mulai';
	@override String get defaultGoal => 'tujuan Anda';
	@override String get defaultActivity => 'aktif';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightId implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Menurunkan Berat Badan';
	@override String get description => 'Buat defisit kalori untuk menurunkan berat badan';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightId implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mempertahankan Berat Badan';
	@override String get description => 'Pertahankan berat badan Anda saat ini';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightId implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Menambah Berat Badan';
	@override String get description => 'Buat surplus kalori untuk menambah berat badan';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryId implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentari';
	@override String get description => 'Sedikit atau tidak ada olahraga';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveId implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedikit Aktif';
	@override String get description => 'Olahraga ringan 1-3 hari/minggu';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveId implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Aktif Sedang';
	@override String get description => 'Olahraga sedang 3-5 hari/minggu';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveId implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sangat Aktif';
	@override String get description => 'Olahraga keras 6-7 hari/minggu';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveId implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ekstrem Aktif';
	@override String get description => 'Olahraga sangat keras, pekerjaan fisik';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableId implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect Tidak Tersedia';
	@override String get description => 'Health Connect tidak tersedia di perangkat ini. Silakan instal Health Connect dari Play Store (Android 9+) atau perbarui ke Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsId implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Izin';
	@override String get description => 'Izin berikut diminta untuk menyediakan integrasi Koneksi Kesehatan:';
	@override String get granted => 'Diberikan';
	@override String get notGranted => 'Tidak Diberikan';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedId caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedId._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadId nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadId._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteId nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteId._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryId implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kisah Kami';
	@override String content({required Object appLabel}) => '${appLabel} lahir dari sebuah frustrasi sederhana: sebagian besar aplikasi pelacak kalori terlalu rumit, membutuhkan input manual yang konstan, memungut biaya berlangganan yang tinggi, atau mengorbankan privasi.\n\nSebagai pengembang solo, saya ingin membuat sesuatu yang lebih sederhana dan adil — sebuah aplikasi yang menggunakan AI untuk mengurangi usaha, tetap cepat dan gratis digunakan, serta menghormati data kesehatan Anda.\n\n${appLabel} adalah aplikasi yang saya harap ada: tanpa akun, tanpa pelacakan, tanpa iklan — hanya wawasan yang jelas dan praktis serta tujuan kesehatan Anda.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyId implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Privasi Anda Penting';
	@override String get description => 'Privasi bukanlah pemikiran setelahnya — itu adalah prinsip desain. Berikut adalah apa artinya dalam praktik:';
	@override String get noAccounts => 'Tanpa akun yang diperlukan\nGunakan aplikasi segera. Tanpa pendaftaran, tanpa identitas.';
	@override String noTracking({required Object appLabel}) => 'Tanpa pelacakan perilaku\n${appLabel} tidak memantau aktivitas Anda, membangun profil penggunaan, atau melacak Anda di aplikasi atau situs web lain.';
	@override String noAds({required Object appLabel}) => 'Tanpa iklan secara desain\n${appLabel} dibangun untuk berfungsi tanpa iklan atau monetisasi berbasis data.';
	@override String get noDataSelling => 'Tanpa penjualan data\nData kesehatan Anda tidak pernah dijual atau dibagikan dengan pihak ketiga.';
	@override String get localStorage => 'Penyimpanan lokal terlebih dahulu\nData Anda tetap di perangkat Anda.';
	@override String get privacyPolicy => 'Kebijakan Privasi';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperId implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dibuat oleh Pengembang Solo';
	@override String description({required Object appLabel}) => '${appLabel} dibangun dan dipelihara oleh seorang pengembang solo tunggal yang fokus pada menciptakan perangkat lunak kesehatan yang tenang dan menghormati privasi.\n\nMasukan dibaca secara pribadi dan membantu membentuk arah aplikasi.';
	@override String get website => 'Situs Web';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackId implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Menikmati ${appLabel}?';
	@override String description({required Object appLabel}) => 'Masukan Anda membantu menjadikan ${appLabel} lebih baik untuk semua orang.';
	@override String get rateApp => 'Beri Rating di Play Store';
	@override String get sendFeedback => 'Kirim Masukan';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeId implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ukuran Porsi';
	@override String get description => 'Akurasi perkiraan sangat bergantung pada penilaian yang benar tentang ukuran porsi Anda.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsId implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Metode Persiapan';
	@override String description({required Object appLabel}) => 'Metode memasak dapat secara signifikan mengubah kandungan nutrisi makanan. Perkiraan ${appLabel} mungkin tidak selalu memperhitungkan variasi ini.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsId implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bahan-Bahan';
	@override String get description => 'Hidangan kompleks dengan banyak bahan tersembunyi mungkin menghasilkan perkiraan yang kurang akurat.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsId implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Keterbatasan Database';
	@override String description({required Object appLabel}) => 'Basis data makanan ${appLabel} luas tetapi mungkin tidak mencakup setiap item makanan atau variasi.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyId implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Akurasi Kalori';
	@override String get description => 'Perkiraan ini hanya seakurat asupan dan pengeluaran kalori Anda yang dilacak. Pencatatan yang tidak akurat akan menghasilkan proyeksi yang tidak akurat.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsId implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Faktor Biologis';
	@override String description({required Object appLabel}) => 'Kehilangan/kenaikan berat badan yang sebenarnya dipengaruhi oleh metabolisme, hormon, tidur, stres, hidrasi, dan faktor individu lainnya yang tidak dapat diukur oleh ${appLabel}.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightId implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berat Air & Fluktuasi';
	@override String get description => 'Berat badan harian normal dapat berfluktuasi secara signifikan karena retensi air, pencernaan, dan waktu. Perkiraan tidak memperhitungkan perubahan harian ini.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceId implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Panduan Profesional';
	@override String get description => 'Jangan gunakan perkiraan ini untuk membuat keputusan medis. Selalu konsultasikan dengan profesional kesehatan atau ahli gizi terdaftar untuk saran manajemen berat badan yang dipersonalisasi.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrId implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) adalah jumlah kalori yang dibakar tubuh Anda saat dalam keadaan istirahat untuk mempertahankan fungsi dasar seperti bernapas dan sirkulasi. BMR tergantung pada usia, jenis kelamin, tinggi badan, dan berat badan Anda. BMR yang lebih tinggi berarti tubuh Anda secara alami membakar lebih banyak kalori saat istirahat, sering kali disebabkan oleh lebih banyak massa otot, usia yang lebih muda, atau jenis kelamin laki-laki. BMR yang lebih rendah biasanya menunjukkan kurangnya massa otot, usia yang lebih tua, atau jenis kelamin perempuan.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeId implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) adalah total kalori yang Anda bakar per hari, termasuk BMR Anda ditambah kalori dari aktivitas fisik dan pergerakan sehari-hari. TDEE tergantung pada BMR dan tingkat aktivitas Anda. TDEE yang lebih tinggi berarti Anda membakar lebih banyak kalori secara keseluruhan, biasanya karena lebih aktif atau memiliki BMR yang lebih tinggi. TDEE yang lebih rendah menunjukkan kurangnya aktivitas sehari-hari atau BMR yang lebih rendah.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalId implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tujuan Harian';
	@override String get description => 'Tujuan Harian adalah asupan kalori harian yang direkomendasikan berdasarkan TDEE dan tujuan berat badan Anda. Untuk penurunan berat badan, Anda mengonsumsi kalori lebih sedikit daripada TDEE Anda. Untuk mempertahankan berat badan, Anda mencocokkan TDEE Anda. Untuk penambahan berat badan, Anda mengonsumsi kalori lebih banyak daripada TDEE Anda. Ini membantu Anda mencapai perubahan berat yang diinginkan dengan cara yang sehat.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedId implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Baca Total Kalori yang Terbakar';
	@override String get description => 'Memungkinkan aplikasi untuk membaca total kalori yang terbakar dari Koneksi Kesehatan.';
	@override String get usage => 'Izin ini digunakan untuk menampilkan pembakaran kalori harian Anda di aplikasi, membantu Anda memahami total pengeluaran energi Anda sepanjang hari.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadId implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Baca Data Nutrisi';
	@override String get description => 'Memungkinkan aplikasi untuk membaca data nutrisi dari Koneksi Kesehatan.';
	@override String get usage => 'Izin ini memungkinkan aplikasi untuk membaca informasi nutrisi yang mungkin telah dicatat oleh aplikasi lain yang terhubung ke Koneksi Kesehatan, memberikan pandangan menyeluruh tentang nutrisi Anda.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteId implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tulis Data Nutrisi';
	@override String get description => 'Memungkinkan aplikasi untuk menulis data nutrisi ke Koneksi Kesehatan.';
	@override String get usage => 'Izin ini memungkinkan aplikasi untuk menyinkronkan makanan yang telah dicatat ke Koneksi Kesehatan, sehingga data nutrisi Anda tersedia untuk aplikasi kesehatan dan kebugaran lain yang Anda gunakan.';
}

/// The flat map containing all translations for locale <id>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsId {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Bahasa Indonesia',
			'flag' => '🇮🇩',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => 'Selamat datang di ${appLabel}',
			'onboarding.subtitle' => 'Pendamping nutrisi pribadi Anda yang didukung oleh AI',
			'onboarding.getStarted' => 'Mulai',
			'onboarding.features.foodRecognition.title' => 'Pengenalan Makanan Cerdas',
			'onboarding.features.foodRecognition.description' => 'Ambil foto dan biarkan AI mengidentifikasi makanan Anda',
			'onboarding.features.aiAnalysis.title' => 'Analisis AI',
			'onboarding.features.aiAnalysis.description' => 'Dapatkan fakta nutrisi secara instan dari deskripsi Anda',
			'onboarding.features.healthIntegration.title' => 'Integrasi Kesehatan',
			'onboarding.features.healthIntegration.description' => 'Hubungkan dengan Health Connect untuk wawasan yang lebih baik',
			'onboarding.gender.title' => 'Apa jenis kelamin Anda?',
			'onboarding.gender.description' => 'Jenis kelamin membantu kami menghitung laju metabolisme basal (BMR) Anda dengan akurat.',
			'onboarding.gender.next' => 'Selanjutnya',
			'onboarding.height.title' => 'Seberapa tinggi Anda?',
			'onboarding.height.description' => 'Tinggi badan Anda membantu kami menghitung BMI dan kebutuhan energi Anda dengan akurat.',
			'onboarding.height.metric' => 'Metrik',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Selanjutnya',
			'onboarding.weight.currentTitle' => 'Apa berat badan Anda saat ini?',
			'onboarding.weight.currentDescription' => 'Berat badan Anda saat ini sangat penting untuk mempersonalisasi tujuan harian Anda.',
			'onboarding.weight.targetTitle' => 'Apa berat badan target Anda?',
			'onboarding.weight.targetDescription' => 'Menetapkan berat badan target membantu kami menentukan rencana jangka panjang Anda.',
			'onboarding.weight.metric' => 'Metrik',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Selanjutnya',
			'onboarding.age.title' => 'Kapan ulang tahun Anda?',
			'onboarding.age.description' => 'Usia Anda membantu kami menghitung kebutuhan kalori Anda dengan akurat.',
			'onboarding.age.next' => 'Selanjutnya',
			'onboarding.bmiScale.underweight' => 'Kekurangan berat badan',
			'onboarding.bmiScale.healthy' => 'Sehat',
			'onboarding.bmiScale.overweight' => 'Kelebihan berat badan',
			'onboarding.bmiScale.obese' => 'Obesitas',
			'onboarding.bmiScale.categories.underweight' => 'Kekurangan berat badan',
			'onboarding.bmiScale.categories.healthyWeight' => 'Berat badan sehat',
			'onboarding.bmiScale.categories.overweight' => 'Kelebihan berat badan',
			'onboarding.bmiScale.categories.obese' => 'Obesitas',
			'onboarding.bmiScale.messages.underweight' => 'Kami dapat membantu Anda membangun rencana sehat untuk mencapai berat badan yang seimbang dengan makanan padat nutrisi.',
			'onboarding.bmiScale.messages.healthy' => 'Kerja bagus! Anda berada dalam rentang sehat. Kami akan membantu Anda menjaga vitalitas dan tingkat energi Anda.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} akan menyederhanakan perjalanan Anda dengan pelacakan bertenaga AI untuk membantu Anda mencapai target dengan nyaman.',
			'onboarding.bmiScale.messages.obese' => 'Kami di sini untuk mendukung Anda dengan panduan pribadi dan strategi berkelanjutan untuk tujuan kesehatan Anda.',
			'onboarding.weightGoal.title' => 'Apa tujuan Anda?',
			'onboarding.weightGoal.description' => 'Pilih tujuan yang paling mendeskripsikan apa yang ingin Anda capai',
			'onboarding.activityLevel.title' => 'Seberapa aktif Anda?',
			'onboarding.activityLevel.description' => 'Ini membantu kami menghitung kebutuhan kalori harian Anda dengan lebih akurat',
			'onboarding.healthConnect.title' => 'Hubungkan dengan Health Connect',
			'onboarding.healthConnect.description' => 'Sinkronkan data kesehatan Anda untuk wawasan yang lebih baik dan pelacakan kalori otomatis',
			'onboarding.healthConnect.automaticTracking.title' => 'Pelacakan Kalori Otomatis',
			'onboarding.healthConnect.automaticTracking.description' => 'Lacak kalori yang terbakar dari aplikasi kebugaran Anda',
			'onboarding.healthConnect.progressInsights.title' => 'Wawasan Kemajuan',
			'onboarding.healthConnect.progressInsights.description' => 'Dapatkan wawasan mendetail tentang tren kesehatan Anda',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integrasi Tanpa Hambatan',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sinkronkan data dari aplikasi kesehatan favorit Anda',
			'onboarding.healthConnect.connected' => 'Health Connect Terhubung',
			'onboarding.healthConnect.notConnected' => 'Health Connect Belum Terhubung',
			'onboarding.healthConnect.setup' => 'Siapkan Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Lewati untuk sekarang',
			'onboarding.healthConnect.statusConnected' => 'Health Connect terhubung.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect telah berhasil terhubung!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Izin ditolak. Silakan aktifkan izin Health Connect dari pengaturan ponsel Anda untuk ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Kesalahan saat menyiapkan Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Anda Tidak Sendirian',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Penelitian menunjukkan bahwa pelacakan yang konsisten adalah prediktor sukses jangka panjang nomor 1.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Untuk seorang ${age} tahun ${gender} yang ingin ${goal}, pelacakan yang konsisten adalah prediktor sukses nomor 1.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} membuatnya 10x lebih mudah dibandingkan melakukannya secara manual.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Siap untuk memulai?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Ambil foto makananmu untuk analisis instan',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Catat secara konsisten untuk melihat kemajuan yang signifikan',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Lacak kemajuanmu setiap hari untuk tetap termotivasi',
			'onboarding.reinforcement.trackingSuccess.button' => 'Ayo Mulai',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individu',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'Anda yang lebih sehat',
			'onboarding.reinforcement.healthProfile.title' => 'Profil Kesehatan Anda',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Berdasarkan metrik Anda, BMI Anda adalah ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Mari selesaikan profil Anda untuk mempersonalisasi pengalaman Anda.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'menambah',
			'onboarding.reinforcement.healthProfile.goalLose' => 'mengurangi',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Untuk mencapai tujuan Anda, Anda perlu ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Anda sudah mencapai berat target Anda! Kami akan membantu Anda mempertahankannya.',
			'onboarding.reinforcement.healthProfile.button' => 'Ayo Mulai',
			'onboarding.reinforcement.goalLifestyle.title' => 'Awal yang Sangat Bagus!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Anda telah mengambil langkah pertama menuju ${goalText}. Karena Anda ${activityText}, ${appLabel} akan menyesuaikan target Anda agar sesuai dengan gaya hidup Anda.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Target kalori yang dipersonalisasi',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Deteksi makanan berbasis AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Rincian makronutrien yang mendetail',
			'onboarding.reinforcement.goalLifestyle.button' => 'Ayo Mulai',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'tujuan Anda',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktif',
			'tabs.dashboard' => 'Dasbor',
			'tabs.history' => 'Riwayat',
			'home.dailyGoal.title' => 'Tetapkan Tujuan Harian Anda',
			'home.dailyGoal.titleSet' => 'Tujuan Harian Anda',
			'home.dailyGoal.description' => 'Siap untuk memulai perjalanan kesejahteraan Anda? Tetapkan target kalori harian Anda di bawah ini untuk memulai kemajuan Anda.',
			'home.dailyGoal.descriptionSet' => 'Kompas Anda sudah diatur! Ini adalah target kalori harian Anda untuk memandu Anda.',
			'home.dailyGoal.yourGoal' => 'Tujuan Anda',
			'home.dailyGoal.dailyCalories' => 'Kalori harian (kcal)',
			'home.dailyGoal.setGoal' => 'Tetapkan Tujuan',
			'home.dailyGoal.intake' => 'Asupan',
			'home.dailyGoal.burned' => 'Terbakar',
			'home.dailyGoal.weightImpact' => 'Dampak Berat',
			'home.dailyGoal.estLoss' => 'Perkiraan kehilangan',
			'home.dailyGoal.estGain' => 'Perkiraan kenaikan',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Ringkasan Harian',
			'home.dailySummary.calories' => 'Kalori',
			'home.dailySummary.carbs' => 'Karbohidrat',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Lemak',
			'home.dailySummary.fiber' => 'Serat',
			'home.intakeProgress.title' => 'Pemisahan Makro Hari Ini',
			'home.intakeProgress.target' => 'Target',
			'home.intakeProgress.current' => 'Sekarang',
			'home.intakeHistory.title' => 'Riwayat Makro 7-Hari',
			'home.intakeHistory.noHistoryYet' => 'Belum ada riwayat',
			'home.intakeHistory.startLogging' => 'Mulailah mencatat makanan untuk melihat tren makro 7-hari Anda di sini',
			'home.mealLog.title' => 'Makanan yang Dicatat',
			'home.mealLog.emptyMessage' => 'Ambil gambar makanan terakhir Anda untuk dicatat di sini.',
			'home.mealLog.noMealsToday' => 'Belum ada makanan yang dicatat untuk hari ini',
			'home.mealLog.seeAllMeals' => 'Lihat semua makanan',
			'home.mealDescription.title' => 'Tambah Cepat dengan AI',
			'home.mealDescription.description' => 'Deskripsikan makanan Anda, dan biarkan AI menangani detailnya.',
			'home.mealDescription.hint' => 'misalnya, Untuk sarapan saya memiliki semangkuk besar oatmeal dengan satu pisang iris dan satu sendok whey ...',
			'home.mealDescription.analyzeMeal' => 'Analisis makanan',
			'home.favoriteMeals.title' => 'Makanan Favorit',
			'home.favoriteMeals.description' => 'Tambahkan salah satu makanan favorit Anda dengan cepat.',
			'home.favoriteMeals.noFavorites' => 'Belum ada makanan favorit.',
			'home.favoriteMeals.addFavoriteHint' => 'Klik bintang pada makanan untuk menandainya sebagai favorit.',
			'home.favoriteMeals.seeAll' => 'Lihat semua',
			'home.favoriteMeals.add' => 'Tambah',
			'home.mealSnap.title' => 'Ambil & Lacak Makanan Anda',
			'home.mealSnap.description' => 'Gunakan kamera Anda untuk mengambil gambar makanan Anda untuk analisis AI.',
			'home.mealSnap.openCamera' => 'Buka Kamera',
			'home.mealSnap.gallery' => 'Galeri',
			'home.connectHealth.title' => 'Sinkronkan dengan Health Connect',
			'home.connectHealth.description' => 'Sinkronkan data nutrisi Anda dengan Health Connect',
			'home.connectHealth.install' => 'Instal',
			'home.connectHealth.connect' => 'Hubungkan',
			'history.noMeals' => 'Tidak ada makanan yang dicatat',
			'history.emptyMessage' => 'Ambil gambar makanan terakhir Anda untuk dicatat di sini.',
			'history.today' => 'Hari ini',
			'history.yesterday' => 'Kemarin',
			'meal.ohNo' => 'Oh tidak!',
			'meal.delete' => 'Hapus',
			'meal.editMeal' => 'Edit Makanan',
			'meal.addMeal' => 'Tambah Makanan',
			'meal.saveMeal' => 'Simpan Makanan',
			'meal.save' => 'Simpan',
			'meal.mealName' => 'Nama Makanan',
			'meal.mealNameHint' => 'Misalnya: Telur orak-arik dengan roti panggang',
			'meal.mealQuantity' => 'Jumlah Makanan',
			'meal.mealQuantityHint' => 'misalnya, 1 mangkuk, 2 irisan',
			'meal.timeOfMeal' => 'Waktu Makanan',
			'meal.timeOfMealHint' => 'Pilih waktu saat Anda makan',
			'meal.mealType' => 'Jenis Makanan',
			'meal.nutrition.calories' => 'Kalori',
			'meal.nutrition.carbs' => 'Karbohidrat (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Lemak (g)',
			'meal.nutrition.fiber' => 'Serat (g)',
			'meal.deleteConfirmation.title' => 'Hapus Makanan',
			'meal.deleteConfirmation.message' => 'Apakah Anda yakin ingin menghapus entri makanan ini?',
			'meal.deleteConfirmation.cancel' => 'Batal',
			'meal.deleteConfirmation.delete' => 'Hapus',
			'meal.addedToLog' => 'Makanan ditambahkan ke catatan Anda!',
			'meal.couldNotAdd' => ({required Object error}) => 'Tidak dapat menambahkan makanan: ${error}',
			'meal.savedSuccessfully' => 'Makanan berhasil ditambahkan!',
			'meal.updatedSuccessfully' => 'Makanan berhasil diperbarui!',
			'meal.errorSaving' => ({required Object error}) => 'Terjadi kesalahan saat menyimpan makanan: ${error}',
			'meal.removedFromFavorites' => 'Dihapus dari favorit!',
			'meal.savedAsFavorite' => 'Makanan disimpan sebagai favorit!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Tidak dapat memperbarui favorit: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Gagal memproses: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Gagal memproses gambar: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Kesalahan saat mengompres gambar: ${error}',
			'meal.failedToSave' => 'Gagal menyimpan data. Silakan coba lagi.',
			'meal.skip' => 'Lewati',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Pertanyaan ${current} dari ${total}',
			'meal.variation.noVariationsAvailable' => 'Tidak ada variasi yang tersedia',
			'favorites.title' => 'Favorit',
			'favorites.empty' => 'Belum ada makanan favorit.',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Data profil tidak ditemukan',
			'profile.yourProfile' => 'Profil Anda',
			'profile.viewAndManage' => 'Lihat dan kelola informasi kesehatan Anda',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'INFORMASI DASAR',
			'profile.sections.goalsAndActivity' => 'TUJUAN & AKTIVITAS',
			'profile.sections.calculatedValues' => 'NILAI YANG DIHITUNG',
			'profile.gender' => 'Jenis Kelamin',
			'profile.height' => 'Tinggi',
			'profile.weight' => 'Berat',
			'profile.age' => 'Usia',
			'profile.weightGoal' => 'Tujuan Berat',
			'profile.targetWeight' => 'Berat Target',
			'profile.activityLevel' => 'Tingkat Aktivitas',
			'profile.healthMetrics' => 'Metrik Kesehatan',
			'profile.notSet' => 'Belum diatur',
			'profile.years' => 'tahun',
			'profile.updatedSuccessfully' => 'Profil berhasil diperbarui!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Tujuan Harian',
			'profile.calculatedValues.calPerDay' => 'kal/hari',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Skor Kesehatan',
			'healthScore.whyThisScore' => 'Mengapa skor ini?',
			'healthScore.note' => 'Skor ini adalah perkiraan AI berdasarkan bahan yang teridentifikasi dan kepadatan nutrisi. Selalu konsultasikan dengan profesional untuk saran diet.',
			'healthScore.unhealthy' => 'Tidak Sehat',
			'healthScore.healthy' => 'Sehat',
			'healthScore.neutral' => 'Netral',
			'editProfile.title' => 'Edit Profil',
			'editProfile.sections.personalInformation' => 'INFORMASI PRIBADI',
			'editProfile.sections.physicalMeasurements' => 'UKURAN FISIK',
			'editProfile.sections.goalsAndActivity' => 'TUJUAN & AKTIVITAS',
			'editProfile.gender' => 'Jenis Kelamin',
			'editProfile.dateOfBirth' => 'Tanggal Lahir',
			'editProfile.height' => 'Tinggi',
			'editProfile.weight' => 'Berat',
			'editProfile.weightGoal' => 'Tujuan Berat',
			'editProfile.activityLevel' => 'Tingkat Aktivitas',
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
			'editProfile.genders.male' => 'Laki-laki',
			'editProfile.genders.female' => 'Perempuan',
			'editProfile.genders.other' => 'Lainnya',
			'editProfile.weightGoals.loseWeight.name' => 'Menurunkan Berat Badan',
			'editProfile.weightGoals.loseWeight.description' => 'Buat defisit kalori untuk menurunkan berat badan',
			'editProfile.weightGoals.maintainWeight.name' => 'Mempertahankan Berat Badan',
			'editProfile.weightGoals.maintainWeight.description' => 'Pertahankan berat badan Anda saat ini',
			'editProfile.weightGoals.gainWeight.name' => 'Menambah Berat Badan',
			'editProfile.weightGoals.gainWeight.description' => 'Buat surplus kalori untuk menambah berat badan',
			'editProfile.activityLevels.sedentary.name' => 'Sedentari',
			'editProfile.activityLevels.sedentary.description' => 'Sedikit atau tidak ada olahraga',
			'editProfile.activityLevels.lightlyActive.name' => 'Sedikit Aktif',
			'editProfile.activityLevels.lightlyActive.description' => 'Olahraga ringan 1-3 hari/minggu',
			'editProfile.activityLevels.moderatelyActive.name' => 'Aktif Sedang',
			'editProfile.activityLevels.moderatelyActive.description' => 'Olahraga sedang 3-5 hari/minggu',
			'editProfile.activityLevels.veryActive.name' => 'Sangat Aktif',
			'editProfile.activityLevels.veryActive.description' => 'Olahraga keras 6-7 hari/minggu',
			'editProfile.activityLevels.extremelyActive.name' => 'Ekstrem Aktif',
			'editProfile.activityLevels.extremelyActive.description' => 'Olahraga sangat keras, pekerjaan fisik',
			'settings.title' => 'Pengaturan',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALISASI',
			'settings.sections.notifications' => 'PEMBERITAHUAN',
			'settings.sections.healthConnect' => 'KONEKSI KESEHATAN',
			'settings.sections.supportAndLegal' => 'DUKUNGAN & HUKUM',
			'settings.sections.about' => 'TENTANG',
			'settings.sections.dangerZone' => 'ZONA BAHAYA',
			'settings.sections.developer' => 'PEMBANGUN',
			'settings.editProfile.title' => 'Edit Profil',
			'settings.editProfile.subtitle' => 'Perbarui informasi pribadi Anda',
			'settings.language.title' => 'Bahasa',
			'settings.language.subtitle' => 'Pilih bahasa yang Anda inginkan',
			'settings.language.searchHint' => 'Cari bahasa...',
			'settings.language.noResults' => 'Tidak ada hasil ditemukan',
			'settings.heightUnit.title' => 'Satuan Tinggi',
			'settings.weightUnit.title' => 'Satuan Berat',
			'settings.mealReminders.title' => 'Pengingat Makanan',
			'settings.mealReminders.subtitle' => 'Tetap pada jalur dengan peringatan tepat waktu',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Terang',
			'settings.theme.dark' => 'Gelap',
			'settings.theme.system' => 'Sistem',
			'settings.sendFeedback.title' => 'Kirim Umpan Balik',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Bantu kami memperbaiki ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Umpan Balik Aplikasi ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Silakan berikan umpan balik Anda di bawah ini:',
			'settings.sendFeedback.appVersion' => 'Versi Aplikasi',
			'settings.sendFeedback.device' => 'Perangkat',
			'settings.sendFeedback.osVersion' => 'Versi OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Hapus Semua Data',
			'settings.clearAllData.subtitle' => 'Hapus semua informasi Anda secara tidak dapat dibalik',
			'settings.clearAllData.confirmationTitle' => 'Hapus Semua Data?',
			'settings.clearAllData.confirmationMessage' => 'Tindakan ini tidak dapat dibatalkan. Semua makanan yang dicatat, favorit, dan pengaturan profil Anda akan dihapus secara permanen.',
			'settings.clearAllData.cancel' => 'Batal',
			'settings.clearAllData.clearEverything' => 'Hapus Semuanya',
			'settings.debugOptions.title' => 'Opsi Debug',
			'settings.developerModeEnabled' => 'Mode pengembang diaktifkan!',
			'settings.healthConnect.title' => 'Koneksi Kesehatan',
			'settings.healthConnect.subtitle' => 'Lihat dan kelola izin',
			'settings.healthConnect.unavailable.title' => 'Health Connect Tidak Tersedia',
			'settings.healthConnect.unavailable.description' => 'Health Connect tidak tersedia di perangkat ini. Silakan instal Health Connect dari Play Store (Android 9+) atau perbarui ke Android 14+.',
			'settings.healthConnect.permissions.title' => 'Izin',
			'settings.healthConnect.permissions.description' => 'Izin berikut diminta untuk menyediakan integrasi Koneksi Kesehatan:',
			'settings.healthConnect.permissions.granted' => 'Diberikan',
			'settings.healthConnect.permissions.notGranted' => 'Tidak Diberikan',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Baca Total Kalori yang Terbakar',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Memungkinkan aplikasi untuk membaca total kalori yang terbakar dari Koneksi Kesehatan.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Izin ini digunakan untuk menampilkan pembakaran kalori harian Anda di aplikasi, membantu Anda memahami total pengeluaran energi Anda sepanjang hari.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Baca Data Nutrisi',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Memungkinkan aplikasi untuk membaca data nutrisi dari Koneksi Kesehatan.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Izin ini memungkinkan aplikasi untuk membaca informasi nutrisi yang mungkin telah dicatat oleh aplikasi lain yang terhubung ke Koneksi Kesehatan, memberikan pandangan menyeluruh tentang nutrisi Anda.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Tulis Data Nutrisi',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Memungkinkan aplikasi untuk menulis data nutrisi ke Koneksi Kesehatan.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Izin ini memungkinkan aplikasi untuk menyinkronkan makanan yang telah dicatat ke Koneksi Kesehatan, sehingga data nutrisi Anda tersedia untuk aplikasi kesehatan dan kebugaran lain yang Anda gunakan.',
			'settings.healthConnect.managePermissions' => 'Kelola Izin',
			'settings.healthConnect.openSettings' => 'Buka Pengaturan Kesehatan Terhubung',
			'settings.healthConnect.requestPermissions' => 'Minta Izin',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Permintaan izin dibatalkan atau gagal. Silakan coba lagi atau berikan izin secara manual di pengaturan Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Tidak dapat meminta izin. Silakan coba lagi atau berikan izin secara manual di pengaturan Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'Tentang',
			'settings.about.tagline' => 'Kesadaran kalori yang cepat, gratis, dan mengutamakan privasi',
			'settings.about.ourStory.title' => 'Kisah Kami',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} lahir dari sebuah frustrasi sederhana: sebagian besar aplikasi pelacak kalori terlalu rumit, membutuhkan input manual yang konstan, memungut biaya berlangganan yang tinggi, atau mengorbankan privasi.\n\nSebagai pengembang solo, saya ingin membuat sesuatu yang lebih sederhana dan adil — sebuah aplikasi yang menggunakan AI untuk mengurangi usaha, tetap cepat dan gratis digunakan, serta menghormati data kesehatan Anda.\n\n${appLabel} adalah aplikasi yang saya harap ada: tanpa akun, tanpa pelacakan, tanpa iklan — hanya wawasan yang jelas dan praktis serta tujuan kesehatan Anda.',
			'settings.about.privacy.title' => 'Privasi Anda Penting',
			'settings.about.privacy.description' => 'Privasi bukanlah pemikiran setelahnya — itu adalah prinsip desain. Berikut adalah apa artinya dalam praktik:',
			'settings.about.privacy.noAccounts' => 'Tanpa akun yang diperlukan\nGunakan aplikasi segera. Tanpa pendaftaran, tanpa identitas.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Tanpa pelacakan perilaku\n${appLabel} tidak memantau aktivitas Anda, membangun profil penggunaan, atau melacak Anda di aplikasi atau situs web lain.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Tanpa iklan secara desain\n${appLabel} dibangun untuk berfungsi tanpa iklan atau monetisasi berbasis data.',
			'settings.about.privacy.noDataSelling' => 'Tanpa penjualan data\nData kesehatan Anda tidak pernah dijual atau dibagikan dengan pihak ketiga.',
			'settings.about.privacy.localStorage' => 'Penyimpanan lokal terlebih dahulu\nData Anda tetap di perangkat Anda.',
			'settings.about.privacy.privacyPolicy' => 'Kebijakan Privasi',
			'settings.about.developer.title' => 'Dibuat oleh Pengembang Solo',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} dibangun dan dipelihara oleh seorang pengembang solo tunggal yang fokus pada menciptakan perangkat lunak kesehatan yang tenang dan menghormati privasi.\n\nMasukan dibaca secara pribadi dan membantu membentuk arah aplikasi.',
			'settings.about.developer.website' => 'Situs Web',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Menikmati ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Masukan Anda membantu menjadikan ${appLabel} lebih baik untuk semua orang.',
			'settings.about.feedback.rateApp' => 'Beri Rating di Play Store',
			'settings.about.feedback.sendFeedback' => 'Kirim Masukan',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Tetap pada jalur dengan pengingat',
			'reminders.description' => 'Dapatkan pengingat lembut untuk mencatat makanan Anda dan tetap konsisten dengan tujuan nutrisi Anda',
			'reminders.notificationsEnabled' => 'Pemberitahuan Diaktifkan',
			'reminders.notificationsDisabled' => 'Pemberitahuan Dinonaktifkan',
			'reminders.enabledSubtitle' => 'Anda akan menerima pengingat makanan',
			'reminders.disabledSubtitle' => 'Aktifkan pemberitahuan untuk mendapatkan pengingat makanan',
			'reminders.mealReminders' => 'Pengingat Makanan',
			'reminders.breakfast' => 'Sarapan',
			'reminders.lunch' => 'Makan Siang',
			'reminders.dinner' => 'Makan Malam',
			'reminders.snack' => 'Camilan',
			'reminders.unknown' => 'Tidak Diketahui',
			'reminders.change' => 'Ubah',
			'reminders.enableNotifications' => 'Aktifkan Pemberitahuan',
			'reminders.skipForNow' => 'Lewati untuk sekarang',
			'reminders.saveChanges' => 'Simpan Perubahan',
			'reminders.enabledSuccessfully' => 'Pemberitahuan berhasil diaktifkan!',
			'reminders.permissionDenied' => 'Izin pemberitahuan ditolak',
			'reminders.errorEnabling' => ({required Object error}) => 'Kesalahan saat mengaktifkan pemberitahuan: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Kesalahan saat menyelesaikan pengaturan: ${error}',
			'notifications.breakfast.title' => 'Waktunya Sarapan! 🍳',
			'notifications.breakfast.body' => 'Jangan lupa untuk mencatat sarapan Anda',
			'notifications.lunch.title' => 'Waktunya Makan Siang! 🥗',
			'notifications.lunch.body' => 'Saatnya mencatat makan siang Anda',
			'notifications.dinner.title' => 'Waktunya Makan Malam! 🍽️',
			'notifications.dinner.body' => 'Jangan lupa untuk mencatat makan malam Anda',
			'notifications.snack.title' => 'Waktunya Camilan! 🍎',
			'notifications.snack.body' => 'Saatnya untuk camilan sehat',
			'notifications.test.title' => 'Pemberitahuan Uji',
			'login.title' => 'Masuk',
			'login.signInWithGoogle' => 'Masuk dengan Google',
			'login.signInFailed' => 'Masuk Google gagal atau dibatalkan.',
			'disclaimer.pleaseNote' => 'Harap Dicatat',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} memberikan informasi nutrisi yang diperkirakan. Akurasi tergantung pada input Anda & variasi makanan. Gunakan sebagai panduan, bukan sebagai sumber definitif. Konsultasikan dengan profesional untuk saran diet yang dipersonalisasi.',
			'disclaimer.snap.portionSize.title' => 'Ukuran Porsi',
			'disclaimer.snap.portionSize.description' => 'Akurasi perkiraan sangat bergantung pada penilaian yang benar tentang ukuran porsi Anda.',
			'disclaimer.snap.preparationMethods.title' => 'Metode Persiapan',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Metode memasak dapat secara signifikan mengubah kandungan nutrisi makanan. Perkiraan ${appLabel} mungkin tidak selalu memperhitungkan variasi ini.',
			'disclaimer.snap.ingredients.title' => 'Bahan-Bahan',
			'disclaimer.snap.ingredients.description' => 'Hidangan kompleks dengan banyak bahan tersembunyi mungkin menghasilkan perkiraan yang kurang akurat.',
			'disclaimer.snap.databaseLimitations.title' => 'Keterbatasan Database',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Basis data makanan ${appLabel} luas tetapi mungkin tidak mencakup setiap item makanan atau variasi.',
			'disclaimer.weightEstimate.title' => 'Tentang Perkiraan Berat',
			'disclaimer.weightEstimate.description' => 'Perubahan berat yang diproyeksikan adalah perkiraan teoretis berdasarkan model kalori masuk vs. kalori keluar yang sederhana. Itu dimaksudkan untuk panduan motivasi saja, bukan sebagai prediksi berat badan Anda yang sebenarnya.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Akurasi Kalori',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Perkiraan ini hanya seakurat asupan dan pengeluaran kalori Anda yang dilacak. Pencatatan yang tidak akurat akan menghasilkan proyeksi yang tidak akurat.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Faktor Biologis',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Kehilangan/kenaikan berat badan yang sebenarnya dipengaruhi oleh metabolisme, hormon, tidur, stres, hidrasi, dan faktor individu lainnya yang tidak dapat diukur oleh ${appLabel}.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Berat Air & Fluktuasi',
			'disclaimer.weightEstimate.waterWeight.description' => 'Berat badan harian normal dapat berfluktuasi secara signifikan karena retensi air, pencernaan, dan waktu. Perkiraan tidak memperhitungkan perubahan harian ini.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Panduan Profesional',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Jangan gunakan perkiraan ini untuk membuat keputusan medis. Selalu konsultasikan dengan profesional kesehatan atau ahli gizi terdaftar untuk saran manajemen berat badan yang dipersonalisasi.',
			'disclaimer.healthMetrics.description' => 'Metrik ini membantu Anda memahami kebutuhan energi tubuh Anda dan memandu tujuan nutrisi Anda.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR) adalah jumlah kalori yang dibakar tubuh Anda saat dalam keadaan istirahat untuk mempertahankan fungsi dasar seperti bernapas dan sirkulasi. BMR tergantung pada usia, jenis kelamin, tinggi badan, dan berat badan Anda. BMR yang lebih tinggi berarti tubuh Anda secara alami membakar lebih banyak kalori saat istirahat, sering kali disebabkan oleh lebih banyak massa otot, usia yang lebih muda, atau jenis kelamin laki-laki. BMR yang lebih rendah biasanya menunjukkan kurangnya massa otot, usia yang lebih tua, atau jenis kelamin perempuan.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE) adalah total kalori yang Anda bakar per hari, termasuk BMR Anda ditambah kalori dari aktivitas fisik dan pergerakan sehari-hari. TDEE tergantung pada BMR dan tingkat aktivitas Anda. TDEE yang lebih tinggi berarti Anda membakar lebih banyak kalori secara keseluruhan, biasanya karena lebih aktif atau memiliki BMR yang lebih tinggi. TDEE yang lebih rendah menunjukkan kurangnya aktivitas sehari-hari atau BMR yang lebih rendah.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Tujuan Harian',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Tujuan Harian adalah asupan kalori harian yang direkomendasikan berdasarkan TDEE dan tujuan berat badan Anda. Untuk penurunan berat badan, Anda mengonsumsi kalori lebih sedikit daripada TDEE Anda. Untuk mempertahankan berat badan, Anda mencocokkan TDEE Anda. Untuk penambahan berat badan, Anda mengonsumsi kalori lebih banyak daripada TDEE Anda. Ini membantu Anda mencapai perubahan berat yang diinginkan dengan cara yang sehat.',
			'common.close' => 'Tutup',
			'common.kContinue' => 'Lanjutkan',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Menikmati ${appLabel}?',
			'feedbackRating.yes' => 'Ya, saya menikmatinya',
			'feedbackRating.no' => 'Tidak begitu',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Penilaian singkat membantu orang lain menemukan ${appLabel} dan mendukung kelanjutan pengembangannya. Maukah Anda meluangkan waktu untuk memberi penilaian?',
			'feedbackRating.shareFeedbackViaEmail' => 'Masukan Anda membentuk apa yang akan datang — kami membaca setiap pesan. Apakah Anda ingin membagikan pemikiran Anda melalui email?',
			'feedbackRating.rateCta' => 'Beri penilaian di Play Store',
			'feedbackRating.maybeLater' => 'Nanti saja',
			'feedbackRating.sendFeedback' => 'Kirim umpan balik',
			'feedbackRating.noThanks' => 'Tidak, terima kasih',
			'feedbackRating.aboutUsDescription' => 'Dibuat dengan penuh perhatian oleh tim kecil. Kami berfokus pada privasi, kesederhanaan, dan membantu Anda membangun kebiasaan makan yang lebih sehat.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Penasaran siapa di balik ${appLabel}? Lihat ',
			'feedbackRating.aboutUsLinkLabel' => 'Tentang kami',
			'errors.loadingProfileData' => 'Kesalahan saat memuat data profil',
			'errors.somethingWentWrong' => 'Terjadi kesalahan.',
			'debug.title' => 'Opsi Debug',
			'debug.sections.notifications' => 'Pemberitahuan',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.feedback' => 'Umpan balik',
			'debug.sections.dataReset' => 'Atur ulang data',
			'debug.sections.appInfo' => 'Info Aplikasi',
			'debug.showActiveNotifications' => 'Tampilkan Pemberitahuan Aktif',
			'debug.scheduleTestNotification' => 'Jadwalkan Pemberitahuan Uji (10 detik)',
			'debug.triggerBreakfastNotification' => 'Aktifkan Pemberitahuan Sarapan',
			'debug.cancelAllNotifications' => 'Batalkan Semua Pemberitahuan',
			'debug.activeNotifications' => 'Pemberitahuan Aktif',
			'debug.noTitle' => 'Tidak Ada Judul',
			'debug.noBody' => 'Tidak Ada Isi',
			'debug.fetchTodaysSteps' => 'Ambil Langkah Hari Ini',
			'debug.fetchTodaysCalories' => 'Ambil Kalori Hari Ini',
			'debug.fetchLatestWeight' => 'Ambil Berat Terakhir',
			'debug.fetchLatestHeight' => 'Ambil Tinggi Terakhir',
			'debug.writeTestWeight' => 'Tulis Berat Uji (70kg)',
			'debug.writeTestHeight' => 'Tulis Tinggi Uji (175cm)',
			'debug.syncLast7Days' => 'Sinkronkan 7 Hari Terakhir',
			'debug.sync7DaysTitle' => 'Sinkron 7 Hari',
			'debug.checkCurrentLocale' => 'Periksa Locale Saat Ini',
			'debug.currentLocale' => 'Locale Saat Ini',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Bahasa: ${languageCode}\nNegara: ${countryCode}\nSistem Unit: ${unitSystem}',
			'debug.latestWeight' => 'Berat Terakhir',
			'debug.latestHeight' => 'Tinggi Terakhir',
			'debug.todaysCalories' => 'Kalori Hari Ini',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'Total kalori yang terbakar: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'Berhasil mengambil ${count} data untuk Langkah, Kalori, dan Berat dalam 7 hari terakhir.',
			'debug.noWeightData' => 'Tidak ada data berat badan ditemukan dalam 30 hari terakhir.',
			'debug.noHeightData' => 'Tidak ada data tinggi badan ditemukan dalam setahun terakhir.',
			'debug.noCalorieData' => 'Tidak ada data kalori ditemukan untuk hari ini.',
			'debug.weightWritten' => 'Berhasil menulis berat uji (70kg).',
			'debug.weightWriteFailed' => 'Gagal menulis berat uji.',
			'debug.heightWritten' => 'Berhasil menulis tinggi uji (175cm).',
			'debug.heightWriteFailed' => 'Gagal menulis tinggi uji.',
			'debug.noNotifications' => 'Tidak ada pemberitahuan aktif.',
			'debug.testNotificationScheduled' => 'Pemberitahuan uji dijadwalkan dalam 10 detik dari sekarang.',
			'debug.testNotificationBody' => 'Ini adalah pemberitahuan uji yang dijadwalkan dalam 10 detik dari sekarang.',
			'debug.breakfastNotificationTriggered' => 'Pemberitahuan sarapan diaktifkan.',
			'debug.allNotificationsCancelled' => 'Semua pemberitahuan dibatalkan.',
			'debug.fetchingData' => 'Mengambil data untuk 7 hari terakhir...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'debug.showFeedbackRatingSheet' => 'Tampilkan lembar umpan balik / penilaian',
			'debug.clearUserPreferences' => 'Hapus preferensi pengguna',
			'debug.clearUserPreferencesConfirmationTitle' => 'Hapus preferensi pengguna?',
			'debug.clearUserPreferencesConfirmationMessage' => 'Tema, bahasa, dan preferensi umpan balik akan diatur ulang. Data makanan dan profil tidak akan terpengaruh.',
			'debug.clearUserProfile' => 'Hapus profil pengguna',
			'debug.clearUserProfileConfirmationTitle' => 'Hapus profil pengguna?',
			'debug.clearUserProfileConfirmationMessage' => 'Data profil Anda (target harian, tinggi, berat, dll.) akan dihapus. Data makanan dan preferensi tidak akan terpengaruh.',
			'debug.clear' => 'Hapus',
			'debug.cancel' => 'Batal',
			'health.syncFailed' => 'Tidak dapat menyinkronkan dengan Health Connect',
			'health.mealSynced' => 'Makanan disinkronkan dengan Health Connect',
			_ => null,
		};
	}
}
