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
	@override late final _TranslationsErrorsId errors = _TranslationsErrorsId._(_root);
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
	@override late final _TranslationsLocalNutritionPhase4Id localNutritionPhase4 = _TranslationsLocalNutritionPhase4Id._(_root);
	@override late final _TranslationsCommonId common = _TranslationsCommonId._(_root);
	@override late final _TranslationsFeedbackRatingId feedbackRating = _TranslationsFeedbackRatingId._(_root);
	@override late final _TranslationsHealthId health = _TranslationsHealthId._(_root);
}

// Path: errors
class _TranslationsErrorsId implements TranslationsErrorsEn {
	_TranslationsErrorsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Anda telah membuat terlalu banyak permintaan. Mohon tunggu sebentar sebelum mencoba lagi.';
	@override String get networkError => 'Kesalahan jaringan. Periksa koneksi internet Anda.';
	@override String get unknownError => 'Terjadi kesalahan. Silakan coba lagi nanti.';
	@override String get loadingProfileData => 'Gagal memuat data profil';
	@override String get somethingWentWrong => 'Terjadi kesalahan.';
	@override String get retry => 'Coba lagi';
}

// Path: onboarding
class _TranslationsOnboardingId implements TranslationsOnboardingEn {
	_TranslationsOnboardingId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Selamat datang di ${appLabel}';
	@override String get subtitle => 'Pendamping nutrisi pribadi Anda yang didukung AI';
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
	@override late final _TranslationsHomeAiSummaryId aiSummary = _TranslationsHomeAiSummaryId._(_root);
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
	@override String get noMeals => 'Belum ada makanan tercatat';
	@override String get emptyMessage => 'Ambil foto makanan terakhir Anda untuk mencatat di sini.';
	@override String get today => 'Hari ini';
	@override String get yesterday => 'Kemarin';
}

// Path: meal
class _TranslationsMealId implements TranslationsMealEn {
	_TranslationsMealId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Aduh!';
	@override String get delete => 'Hapus';
	@override String get editMeal => 'Edit Makanan';
	@override String get addMeal => 'Tambah Makanan';
	@override String get saveMeal => 'Simpan Makanan';
	@override String get save => 'Simpan';
	@override String get mealName => 'Nama Makanan';
	@override String get mealNameHint => 'mis., Telur orak-arik dengan roti';
	@override String get nameRequired => 'Masukkan nama makanan sebelum menyimpan.';
	@override String get mealQuantity => 'Jumlah Makanan';
	@override String get mealQuantityHint => 'mis., 1 mangkuk, 2 potong';
	@override String get timeOfMeal => 'Waktu Makan';
	@override String get timeOfMealHint => 'Pilih waktu Anda makan';
	@override String get mealType => 'Jenis Makanan';
	@override late final _TranslationsMealNutritionId nutrition = _TranslationsMealNutritionId._(_root);
	@override late final _TranslationsMealDeleteConfirmationId deleteConfirmation = _TranslationsMealDeleteConfirmationId._(_root);
	@override String get addedToLog => 'Makanan ditambahkan ke log Anda!';
	@override String couldNotAdd({required Object error}) => 'Gagal menambahkan makanan: ${error}';
	@override String get savedSuccessfully => 'Makanan berhasil ditambahkan!';
	@override String get updatedSuccessfully => 'Makanan berhasil diperbarui!';
	@override String errorSaving({required Object error}) => 'Kesalahan menyimpan makanan: ${error}';
	@override String get removedFromFavorites => 'Dihapus dari favorit!';
	@override String get savedAsFavorite => 'Makanan disimpan sebagai favorit!';
	@override String get unfavorite => 'Hapus favorit';
	@override String couldNotUpdateFavorite({required Object error}) => 'Gagal memperbarui favorit: ${error}';
	@override String get feedbackThanks => 'Terima kasih atas umpan baliknya!';
	@override String get reanalysisUpdated => 'Analisis makanan diperbarui berdasarkan umpan balik Anda.';
	@override String failedToProcess({required Object error}) => 'Gagal memproses: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Gagal memproses gambar: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Kesalahan mengompresi gambar: ${error}';
	@override String get failedToSave => 'Gagal menyimpan data. Silakan coba lagi.';
	@override String get skip => 'Lewati';
	@override late final _TranslationsMealQuestionFlowId questionFlow = _TranslationsMealQuestionFlowId._(_root);
	@override late final _TranslationsMealAnalysisId analysis = _TranslationsMealAnalysisId._(_root);
	@override late final _TranslationsMealLocalInferenceId localInference = _TranslationsMealLocalInferenceId._(_root);
	@override late final _TranslationsMealFeedbackId feedback = _TranslationsMealFeedbackId._(_root);
}

// Path: favorites
class _TranslationsFavoritesId implements TranslationsFavoritesEn {
	_TranslationsFavoritesId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorit';
	@override String get empty => 'Belum ada makanan favorit.';
	@override String get searchPlaceholder => 'Cari makanan favorit';
	@override String get searchEmptyTitle => 'Tidak ada favorit yang cocok';
	@override String get searchEmptySubtitle => 'Coba nama makanan, jumlah, atau jenis makanan yang berbeda.';
	@override String get sortLabel => 'Urutkan favorit';
	@override String get undo => 'Urungkan';
	@override String removed({required Object name}) => 'Menghapus ${name} dari favorit';
	@override late final _TranslationsFavoritesSortOptionsId sortOptions = _TranslationsFavoritesSortOptionsId._(_root);
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
	@override String get note => 'Skor ini adalah perkiraan AI berdasarkan bahan yang teridentifikasi dan kepadatan nutrisi. Selalu konsultasikan ke profesional untuk saran diet personal.';
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
	@override late final _TranslationsSettingsLocalInferenceId localInference = _TranslationsSettingsLocalInferenceId._(_root);
	@override late final _TranslationsSettingsThemeId theme = _TranslationsSettingsThemeId._(_root);
	@override late final _TranslationsSettingsSendFeedbackId sendFeedback = _TranslationsSettingsSendFeedbackId._(_root);
	@override late final _TranslationsSettingsExportMealHistoryId exportMealHistory = _TranslationsSettingsExportMealHistoryId._(_root);
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
	@override String get description => 'Dapatkan pengingat lembut untuk mencatat makanan Anda dan tetap konsisten dengan tujuan nutrisi';
	@override String get notificationsEnabled => 'Notifikasi Diaktifkan';
	@override String get notificationsDisabled => 'Notifikasi Dinonaktifkan';
	@override String get enabledSubtitle => 'Anda akan menerima pengingat makan';
	@override String get disabledSubtitle => 'Aktifkan notifikasi untuk mendapatkan pengingat makan';
	@override String get mealReminders => 'Pengingat Makan';
	@override String get breakfast => 'Sarapan';
	@override String get lunch => 'Makan Siang';
	@override String get dinner => 'Makan Malam';
	@override String get snack => 'Cemilan';
	@override String get unknown => 'Tidak diketahui';
	@override String get change => 'Ubah';
	@override String get enableNotifications => 'Aktifkan Notifikasi';
	@override String get skipForNow => 'Lewati sekarang';
	@override String get saveChanges => 'Simpan Perubahan';
	@override String get enabledSuccessfully => 'Notifikasi berhasil diaktifkan!';
	@override String get permissionDenied => 'Izin notifikasi ditolak';
	@override String errorEnabling({required Object error}) => 'Kesalahan mengaktifkan notifikasi: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Kesalahan menyelesaikan pengaturan: ${error}';
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
	@override String get signInFailed => 'Google Sign-In gagal atau dibatalkan.';
}

// Path: disclaimer
class _TranslationsDisclaimerId implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Harap Diperhatikan';
	@override late final _TranslationsDisclaimerSnapId snap = _TranslationsDisclaimerSnapId._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateId weightEstimate = _TranslationsDisclaimerWeightEstimateId._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsId healthMetrics = _TranslationsDisclaimerHealthMetricsId._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureId calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureId._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4Id implements TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4Id._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'Nutrition matched from the downloaded USDA pack';
	@override String get nutritionCached => 'Nutrition matched from the on-device USDA cache';
	@override String get nutritionMixed => 'Nutrition combined from downloaded, cached, and remote USDA rows';
	@override String get calculationLocal => 'Calories and macros calculated on this device';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient}: downloaded USDA pack';
	@override String ingredientCached({required Object ingredient}) => '${ingredient}: on-device USDA cache';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient}: USDA row fetched through Calorify';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient}: deterministic nutrition constant';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · dataset ${datasetVersion}';
	@override String get portionSmaller => 'Smaller';
	@override String get portionEstimated => 'Estimated';
	@override String get portionLarger => 'Larger';
	@override String portionQuestion({required Object ingredient}) => 'Which portion was closest for ${ingredient}?';
	@override String get mealTypeQuestion => 'Which meal was this?';
	@override String get localNutritionTip => 'Calculated from verified local nutrition data.';
	@override String get offlineNutritionTitle => 'Download nutrition data';
	@override String get offlineNutritionSubtitle => 'Use verified USDA rows and deterministic calculation on this device when every ingredient is covered.';
	@override String get offlineNutritionUnavailable => 'Local nutrition data is not available for this app release.';
	@override String get offlineNutritionNotDownloaded => 'No verified nutrition pack is downloaded.';
	@override String get offlineNutritionInstalling => 'Downloading and verifying nutrition data…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Pack ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} cached USDA rows · ${size}';
	@override String get offlineNutritionUpdate => 'Check for update';
	@override String get offlineNutritionClear => 'Clear local nutrition data';
	@override String get offlineNutritionClearTitle => 'Clear local nutrition data?';
	@override String get offlineNutritionClearBody => 'This removes the downloaded USDA pack and lookup cache. Logged meals keep the exact nutrition snapshot used when they were saved.';
	@override String get offlineNutritionClearConfirm => 'Clear data';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Could not download and verify local nutrition data: ${error}';
	@override String get offlineNutritionCleared => 'Local nutrition data cleared';
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
	@override String get rateStepHeading => 'Beri rating di Play Store';
	@override String get emailStepHeading => 'Kirim umpan balik lewat email';
	@override String soloDevMessage({required Object appLabel}) => 'Rating singkat membantu orang lain menemukan ${appLabel} dan mendukung pengembangan. Maukah Anda meluangkan waktu untuk memberi rating?';
	@override String get shareFeedbackViaEmail => 'Umpan balik Anda membentuk perkembangan selanjutnya — kami membaca setiap pesan. Ingin berbagi melalui email?';
	@override String get rateCta => 'Beri rating di Play Store';
	@override String get maybeLater => 'Nanti saja';
	@override String get sendFeedback => 'Kirim umpan balik';
	@override String get noThanks => 'Tidak, terima kasih';
	@override String get aboutUsDescription => 'Dibuat dengan hati-hati oleh tim kecil. Kami fokus pada privasi, kesederhanaan, dan membantu Anda membentuk kebiasaan makan yang lebih baik.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Penasaran siapa di balik ${appLabel}? Lihat ';
	@override String get aboutUsLinkLabel => 'Tentang kami';
	@override String get thankYouMessage => 'Terima kasih! Kami akan menanyakan lagi di lain waktu.';
}

// Path: health
class _TranslationsHealthId implements TranslationsHealthEn {
	_TranslationsHealthId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Gagal menyinkronkan ke Health Connect';
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
	@override String get description => 'Jenis kelamin membantu kami menghitung basal metabolic rate (BMR) secara akurat.';
	@override String get next => 'Berikutnya';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightId implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berapa tinggi Anda?';
	@override String get description => 'Tinggi Anda membantu kami menghitung BMI dan kebutuhan energi dengan tepat.';
	@override String get metric => 'Metrik';
	@override String get imperial => 'Imperial';
	@override String get next => 'Berikutnya';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightId implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Berapa berat Anda saat ini?';
	@override String get currentDescription => 'Berat Anda saat ini penting untuk mempersonalisasi target harian Anda.';
	@override String get targetTitle => 'Berapa berat tujuan Anda?';
	@override String get targetDescription => 'Menetapkan berat tujuan membantu kami menentukan rencana jangka panjang Anda.';
	@override String get metric => 'Metrik';
	@override String get imperial => 'Imperial';
	@override String get next => 'Berikutnya';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeId implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kapan ulang tahun Anda?';
	@override String get description => 'Usia Anda membantu kami menghitung kebutuhan kalori dengan akurat.';
	@override String get next => 'Berikutnya';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleId implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kurang';
	@override String get healthy => 'Sehat';
	@override String get overweight => 'Lebih';
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
	@override String get description => 'Pilih tujuan yang paling menggambarkan apa yang ingin Anda capai';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelId implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seberapa aktif Anda?';
	@override String get description => 'Ini membantu kami menghitung kebutuhan kalori harian Anda lebih akurat';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectId implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sambungkan dengan Health Connect';
	@override String get description => 'Sinkronkan data kesehatan Anda untuk wawasan yang lebih baik dan pelacakan kalori otomatis';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingId automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingId._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsId progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsId._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationId seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationId._(_root);
	@override String get connected => 'Health Connect Terhubung';
	@override String get notConnected => 'Health Connect Tidak Terhubung';
	@override String get setup => 'Siapkan Health Connect';
	@override String get skipForNow => 'Lewati sekarang';
	@override String get statusConnected => 'Health Connect terhubung.';
	@override String get statusSuccess => 'Health Connect berhasil dihubungkan!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Izin ditolak. Silakan aktifkan izin Health Connect dari pengaturan ponsel untuk ${appLabel}.';
	@override String statusError({required Object error}) => 'Terjadi kesalahan saat menyiapkan Health Connect: ${error}';
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

// Path: home.aiSummary
class _TranslationsHomeAiSummaryId implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ringkasan AI Anda';
	@override String get logMore => 'Catat lebih banyak makanan dalam beberapa hari ke depan untuk mendapatkan wawasan AI yang dipersonalisasi.';
	@override String get loading => 'Memuat ringkasan Anda...';
	@override String mealCount({required Object count}) => '${count} makanan tercatat';
	@override String macroBalanceScore({required Object score}) => 'Skor keseimbangan ${score}';
	@override String get topFoods => 'Makanan teratas';
	@override String get trendUp => 'Kalori meningkat';
	@override String get trendDown => 'Kalori menurun';
	@override String get trendSteady => 'Kalori stabil';
	@override String generatedAt({required Object time}) => 'Diperbarui ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalId implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Atur Target Harian Anda';
	@override String get titleSet => 'Target Harian Anda';
	@override String get description => 'Siap memulai perjalanan kesehatan Anda? Atur target kalori harian di bawah untuk memulai kemajuan Anda.';
	@override String get descriptionSet => 'Kompas Anda sudah diatur! Ini adalah target kalori harian untuk membimbing Anda.';
	@override String get yourGoal => 'Target Anda';
	@override String get goal => 'Target';
	@override String get dailyCalories => 'Kalori harian (kcal)';
	@override String get setGoal => 'Atur Target';
	@override String get intake => 'Asupan';
	@override String get burned => 'Terbakar';
	@override String get weightImpact => 'Dampak Berat';
	@override String get estLoss => 'Perk. penurunan';
	@override String get estGain => 'Perk. kenaikan';
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
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Grafik makro';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressId implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pembagian Makro Hari Ini';
	@override String get target => 'Sasaran';
	@override String get current => 'Saat ini';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryId implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Riwayat Makro 7 Hari';
	@override String get trendTitle => 'Tren Hari Ini';
	@override String peakHour({required Object hour}) => 'Puncak: ${hour}:00';
	@override String get noHistoryYet => 'Belum ada riwayat';
	@override String get startLogging => 'Mulai mencatat makanan untuk melihat\ntren makro 7 hari Anda di sini';
}

// Path: home.mealLog
class _TranslationsHomeMealLogId implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Makanan Tercatat';
	@override String get emptyMessage => 'Ambil foto makanan terakhir Anda untuk mencatat di sini.';
	@override String get noMealsToday => 'Belum ada makanan tercatat hari ini';
	@override String get seeAllMeals => 'Lihat semua makanan';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionId implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tambah Cepat dengan AI';
	@override String get description => 'Deskripsikan makanan Anda, dan biarkan AI menangani rinciannya.';
	@override String get hint => 'mis. Untuk sarapan saya makan semangkuk besar oatmeal dengan pisang iris dan satu scoop whey ...';
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
	@override String get addFavoriteHint => 'Klik bintang pada makanan untuk menandai sebagai favorit.';
	@override String get seeAll => 'Lihat semua';
	@override String get add => 'Tambah';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapId implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Foto & Catat Makanan Anda';
	@override String get description => 'Gunakan kamera untuk memotret makanan Anda untuk analisis AI.';
	@override String get openCamera => 'Buka Kamera';
	@override String get gallery => 'Galeri';
	@override String get compressingPhoto => 'Mengoptimalkan foto…';
	@override String get uploadingPhoto => 'Mengunggah foto…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthId implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sinkronkan dengan Health Connect';
	@override String get description => 'Sinkronkan data nutrisi Anda dengan Health Connect';
	@override String get install => 'Pasang';
	@override String get connect => 'Sambungkan';
}

// Path: meal.nutrition
class _TranslationsMealNutritionId implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalori';
	@override String get carbs => 'Karbo (g)';
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

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowId implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Pertanyaan ${current} dari ${total}';
	@override String get noQuestionsAvailable => 'Tidak ada pertanyaan tersedia';
	@override String get next => 'Berikutnya';
	@override String get continueLabel => 'Lanjutkan';
}

// Path: meal.analysis
class _TranslationsMealAnalysisId implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Menganalisis makanan Anda';
	@override String get stepStarted => 'Memulai…';
	@override String get stepDecomposition => 'Memahami makanan Anda…';
	@override String get stepIngredients => 'Mencocokkan bahan dengan data nutrisi…';
	@override String get stepUncertainty => 'Memeriksa tingkat keyakinan…';
	@override String get stepMealTypeQuestion => 'Hampir selesai…';
	@override String get stepResult => 'Menyelesaikan hasil Anda…';
	@override String get stepError => 'Terjadi kesalahan';
	@override String get stepDefault => 'Menganalisis makanan Anda…';
	@override String get progressUnderstand => 'Memahami makanan Anda';
	@override String get progressMatch => 'Mencari nutrisi bahan';
	@override String get progressCheck => 'Memeriksa porsi dan keyakinan';
	@override String get progressMealType => 'Memilih jenis makanan';
	@override String get progressFinish => 'Menghitung kalori dan makro';
	@override String get detectedIngredientHeading => 'Bahan yang terdeteksi';
	@override String ingredientsOverflow({required Object count}) => '${count} lagi';
	@override String ingredientsLine({required Object count}) => '${count} bahan terdeteksi';
	@override String get ingredientsPending => 'Memindai bahan…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Konsistensi lebih penting daripada kesempurnaan—catatan rutin mengungkap pola yang berarti.';
	@override String get offlineTip1 => 'Tip: Untuk foto, cahaya alami dan sudut atas membantu akurasi porsi.';
	@override String get offlineTip2 => 'Tip: Sebutkan minuman, saus, dan minyak masak—mereka menambah kalori yang sering terlupakan.';
	@override String get offlineTip3 => 'Tip: Catatan porsi singkat (1 mangkuk, kopi besar) membuat perkiraan menjadi lebih tajam.';
	@override String get offlineTip4 => 'Tip: Mencatat setelah makan tetap membangun kebiasaan; kesempurnaan tidak wajib.';
	@override String get offlineTip5 => 'Tip: Sebutkan cara memasak ketika mengubah kalori signifikan (digoreng vs dipanggang).';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceId implements TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Tinjau bahan yang terdeteksi';
	@override String get reviewSubtitle => 'Ini diinterpretasikan pada perangkat Anda. Perbaiki nama atau porsi sebelum nutrisi dihitung.';
	@override String get mealName => 'Nama makanan';
	@override String get ingredient => 'Bahan';
	@override String get grams => 'Estimasi gram';
	@override String get removeIngredient => 'Hapus bahan';
	@override String get continueLabel => 'Lanjutkan';
	@override String get invalidProposal => 'Tambahkan setidaknya satu bahan dan gunakan jumlah gram yang positif.';
	@override String get localUnavailable => 'Analisis pada perangkat saat ini tidak tersedia.';
	@override String get calculationDetails => 'Cara perhitungan ini dilakukan';
	@override String get interpretationLocal => 'Bahan diinterpretasikan pada perangkat ini';
	@override String get interpretationCloud => 'Bahan diinterpretasikan di cloud';
	@override String get interpretationManual => 'Bahan ditinjau atau diedit oleh Anda';
	@override String get nutritionRemote => 'Nutrisi diambil dari USDA melalui Calorify';
	@override String get nutritionFallback => 'Beberapa nilai nutrisi diestimasi secara jarak jauh';
	@override String get calculationServer => 'Kalori dan makro dihitung oleh Calorify';
	@override String get fallbackUsed => 'Analisis lokal dialihkan ke pemrosesan cloud';
	@override String get noRawContent => 'Resi diagnostik tidak menyertakan teks atau foto makanan Anda.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackId implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apa yang kelihatan salah?';
	@override String get subtitle => 'Bantu kami meningkatkan analisis dengan memilih satu atau beberapa masalah.';
	@override String get tellUsMore => 'Ceritakan lebih lanjut';
	@override String get describeIncorrect => 'Jelaskan apa yang salah';
	@override String get submit => 'Kirim';
	@override String get issueFoodIdentification => 'Identifikasi makanan';
	@override String get issuePortionSize => 'Ukuran porsi';
	@override String get issueCalorieDistribution => 'Distribusi kalori';
	@override String get issueMacrosWrong => 'Makro salah';
	@override String get issueMissingItems => 'Item hilang';
	@override String get issueExtraItems => 'Item ekstra';
	@override String get issueOther => 'Lainnya';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsId implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Terbaru';
	@override String get calories => 'Kalori';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsId implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'INFORMASI DASAR';
	@override String get goalsAndActivity => 'TUJUAN & AKTIVITAS';
	@override String get calculatedValues => 'NILAI TERHITUNG';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesId implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Target Harian';
	@override String get calPerDay => 'cal/hari';
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
	@override String get male => 'Pria';
	@override String get female => 'Wanita';
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
	@override String get notifications => 'NOTIFIKASI';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get localInference => 'ANALISIS PADA PERANGKAT';
	@override String get supportAndLegal => 'DUKUNGAN & HUKUM';
	@override String get about => 'TENTANG';
	@override String get dangerZone => 'AREA BERISIKO';
	@override String get developer => 'PENGEMBANG';
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
	@override String get subtitle => 'Pilih bahasa pilihan Anda';
	@override String get searchHint => 'Cari bahasa...';
	@override String get noResults => 'Tidak ada hasil';
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
	@override String get title => 'Pengingat Makan';
	@override String get subtitle => 'Tetap pada jalur dengan pengingat tepat waktu';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceId implements TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analisis makanan pada perangkat';
	@override String get subtitle => 'Interpretasikan makanan yang didukung dengan Gemini Nano sebelum nutrisi dihitung';
	@override String get unavailable => 'Tidak tersedia pada perangkat ini';
	@override String get rolloutUnavailable => 'Perangkat keras yang kompatibel ditemukan, tetapi fitur ini belum diaktifkan untuk rilis aplikasi ini';
	@override String get modelSetup => 'Gemini Nano perlu menyelesaikan pengunduhan sebelum fitur ini dapat diaktifkan';
	@override String get useLocalTitle => 'Gunakan analisis pada perangkat';
	@override String get useLocalSubtitle => 'Opsional dan nonaktif secara default. Hasil mungkin kurang akurat untuk makanan yang kompleks.';
	@override String get disclosureTitle => 'Sebelum Anda mengaktifkan analisis pada perangkat';
	@override String get disclosureBody => 'Gemini Nano dapat mengidentifikasi bahan dan mengestimasi porsi pada perangkat Android yang didukung. Proposal bahan yang Anda tinjau akan dikirim ke Calorify untuk dasar nutrisi USDA dan perhitungan.';
	@override String get disclosureLimit1 => 'Hidangan kompleks, bahan tersembunyi, dan ukuran porsi mungkin teridentifikasi secara tidak tepat.';
	@override String get disclosureLimit2 => 'Model mungkin tidak tersedia saat mengunduh, sedang sibuk, berjalan di latar belakang, atau dibatasi oleh perangkat.';
	@override String get disclosureLimit3 => 'Jika interpretasi lokal tidak dapat selesai, versi beta ini secara otomatis mengirimkan deskripsi makanan asli Anda ke Calorify untuk analisis cloud.';
	@override String get acknowledgement => 'Saya mengerti bahwa saya harus meninjau bahan dan porsi yang terdeteksi.';
	@override String get enable => 'Setujui dan aktifkan';
	@override String get cancel => 'Batal';
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
	@override String subtitle({required Object appLabel}) => 'Bantu kami meningkatkan ${appLabel}';
	@override String emailSubject({required Object appLabel}) => '${appLabel} Umpan Balik Aplikasi';
	@override String get emailBodyPrefix => 'Silakan berikan umpan balik Anda di bawah:';
	@override String get appVersion => 'Versi Aplikasi';
	@override String get device => 'Perangkat';
	@override String get osVersion => 'Versi OS';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryId implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ekspor Riwayat Makan';
	@override String get subtitle => 'Bagikan CSV dari makanan yang Anda catat';
	@override String get shareText => 'Ekspor riwayat makanan Calorify Anda';
	@override String failed({required Object error}) => 'Tidak dapat mengekspor riwayat makan: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataId implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hapus Semua Data';
	@override String get subtitle => 'Hapus semua informasi Anda secara tak dapat dikembalikan';
	@override String get confirmationTitle => 'Hapus Semua Data?';
	@override String get confirmationMessage => 'Tindakan ini tidak dapat dibatalkan. Semua catatan makanan, favorit, dan pengaturan profil Anda akan dihapus secara permanen.';
	@override String get cancel => 'Batal';
	@override String get clearEverything => 'Hapus Semua';
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
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Lihat dan kelola izin';
	@override late final _TranslationsSettingsHealthConnectUnavailableId unavailable = _TranslationsSettingsHealthConnectUnavailableId._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsId permissions = _TranslationsSettingsHealthConnectPermissionsId._(_root);
	@override String get managePermissions => 'Kelola Izin';
	@override String get openSettings => 'Buka Pengaturan Health Connect';
	@override String get requestPermissions => 'Minta Izin';
	@override String get permissionRequestCancelledOrFailed => 'Permintaan izin dibatalkan atau gagal. Silakan coba lagi atau berikan izin secara manual di pengaturan Health Connect.';
	@override String get permissionRequestFailed => 'Tidak dapat meminta izin. Silakan coba lagi atau berikan izin secara manual di pengaturan Health Connect.';
	@override String get requestingPermissions => 'Meminta...';
}

// Path: settings.about
class _TranslationsSettingsAboutId implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tentang';
	@override String get tagline => 'Cepat, gratis, dan mengutamakan privasi untuk kesadaran kalori';
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
	@override String get body => 'Jangan lupa mencatat sarapan Anda';
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
	@override String get body => 'Jangan lupa mencatat makan malam Anda';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackId implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Waktunya Cemilan! 🍎';
	@override String get body => 'Waktunya cemilan sehat';
}

// Path: notifications.test
class _TranslationsNotificationsTestId implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notifikasi Tes';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapId implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} menyediakan informasi nutrisi perkiraan. Ketepatan bergantung pada input Anda & variasi makanan. Gunakan sebagai panduan, bukan sumber pasti. Konsultasikan profesional untuk saran diet personal.';
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
	@override String get description => 'Perubahan berat yang diproyeksikan adalah perkiraan teoretis berdasarkan model kalori masuk vs keluar sederhana. Ini dimaksudkan untuk panduan motivasi saja, bukan prediksi berat aktual Anda.';
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
	@override String get description => 'Metrik ini membantu Anda memahami kebutuhan energi tubuh dan membimbing tujuan nutrisi Anda.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrId bmr = _TranslationsDisclaimerHealthMetricsBmrId._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeId tdee = _TranslationsDisclaimerHealthMetricsTdeeId._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalId dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalId._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureId implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perkiraan Pengeluaran Kalori';
	@override String get description => 'Saat data Health Connect tidak tersedia, kami memperkirakan kalori yang terbakar hari ini menggunakan Basal Metabolic Rate (BMR) dan tingkat aktivitas Anda (TDEE), diskalakan untuk porsi hari yang telah berlalu.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedId howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedId._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceId professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceId._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionId implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengenalan Makanan Pintar';
	@override String get description => 'Ambil foto dan biarkan AI mengenali makanan Anda';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisId implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analisis AI';
	@override String get description => 'Dapatkan fakta nutrisi instan dari deskripsi Anda';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationId implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrasi Health Connect';
	@override String get description => 'Sambungkan dengan Health Connect untuk wawasan yang lebih baik';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesId implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Berat badan kurang';
	@override String get healthyWeight => 'Berat badan sehat';
	@override String get overweight => 'Berat badan berlebih';
	@override String get obese => 'Obesitas';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesId implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kami dapat membantu Anda menyusun rencana sehat untuk mencapai berat seimbang dengan makanan padat nutrisi.';
	@override String get healthy => 'Kerja bagus! Anda berada dalam kisaran sehat. Kami akan membantu Anda mempertahankan vitalitas dan energi.';
	@override String overweight({required Object appLabel}) => '${appLabel} akan mempermudah perjalanan Anda dengan pelacakan bertenaga AI untuk membantu mencapai target dengan nyaman.';
	@override String get obese => 'Kami hadir untuk mendukung Anda dengan panduan personal dan strategi berkelanjutan untuk tujuan kesehatan Anda.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingId implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pelacakan Kalori Otomatis';
	@override String get description => 'Lacak kalori yang dibakar dari aplikasi kebugaran Anda';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsId implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wawasan Kemajuan';
	@override String get description => 'Dapatkan wawasan rinci tentang tren kesehatan Anda';
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
	@override String get title => 'Anda Tidak Sendiri';
	@override String get genericMessage => 'Penelitian menunjukkan pelacakan konsisten adalah prediktor nomor 1 keberhasilan jangka panjang.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Untuk individu berusia ${age} tahun berjenis ${gender} yang ingin ${goal}, pelacakan konsisten adalah prediktor utama keberhasilan.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} membuatnya 10x lebih mudah daripada melakukannya secara manual.';
	@override String get getStartedTitle => 'Siap untuk memulai?';
	@override String get tipPhoto => 'Ambil foto makanan untuk analisis instan';
	@override String get tipConsistency => 'Catat secara konsisten untuk melihat kemajuan bermakna';
	@override String get tipProgress => 'Lacak kemajuan Anda tiap hari untuk tetap termotivasi';
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
	@override String get finalizeDescription => 'Mari selesaikan profil Anda untuk menyesuaikan pengalaman.';
	@override String get goalGain => 'menambah';
	@override String get goalLose => 'mengurangi';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Untuk mencapai tujuan Anda, Anda akan ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Anda sudah mencapai berat target! Kami akan membantu mempertahankannya.';
	@override String get button => 'Ayo Mulai';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleId implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Awal yang Bagus!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Anda telah mengambil langkah pertama menuju ${goalText}. Karena Anda ${activityText}, ${appLabel} akan menyesuaikan target Anda agar sesuai gaya hidup Anda.';
	@override String get personalizedTargets => 'Target kalori personal';
	@override String get aiMealDetection => 'Deteksi makanan bertenaga AI';
	@override String get macroBreakdowns => 'Rincian makronutrien';
	@override String get button => 'Ayo Mulai';
	@override String get defaultGoal => 'tujuan Anda';
	@override String get defaultActivity => 'aktif';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightId implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Turunkan Berat';
	@override String get description => 'Buat defisit kalori untuk menurunkan berat badan';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightId implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Pertahankan Berat';
	@override String get description => 'Mempertahankan berat Anda saat ini';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightId implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tambah Berat';
	@override String get description => 'Buat surplus kalori untuk menambah berat';
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
	@override String get name => 'Ringan Aktif';
	@override String get description => 'Olahraga ringan 1-3 hari/minggu';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveId implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Cukup Aktif';
	@override String get description => 'Olahraga sedang 3-5 hari/minggu';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveId implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sangat Aktif';
	@override String get description => 'Olahraga berat 6-7 hari/minggu';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveId implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ekstrem Aktif';
	@override String get description => 'Olahraga sangat berat, pekerjaan fisik';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableId implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect Tidak Tersedia';
	@override String get description => 'Health Connect tidak tersedia di perangkat ini. Silakan pasang Health Connect dari Play Store (Android 9+) atau perbarui ke Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsId implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Izin';
	@override String get description => 'Izin berikut diminta untuk menyediakan integrasi Health Connect:';
	@override String get granted => 'Diberikan';
	@override String get notGranted => 'Belum Diberikan';
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
	@override String content({required Object appLabel}) => '${appLabel} lahir dari satu kekesalan sederhana: sebagian besar aplikasi pelacak kalori terlalu rumit, menuntut input manual terus-menerus, mengenakan biaya langganan tinggi, atau mengorbankan privasi.\n\nSebagai pengembang solo, saya ingin membuat sesuatu yang lebih sederhana dan lebih adil — aplikasi yang menggunakan AI untuk mengurangi usaha, tetap cepat dan gratis digunakan, serta menghargai data kesehatan Anda.\n\n${appLabel} adalah aplikasi yang saya harap ada: tanpa akun, tanpa pelacakan, tanpa iklan — hanya wawasan yang jelas dan praktis serta tujuan kesehatan Anda.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyId implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Privasi Anda Penting';
	@override String get description => 'Privasi bukan sekadar pemikiran tambahan — itu adalah prinsip desain. Berikut arti itu dalam praktik:';
	@override String get noAccounts => 'Tanpa akun\nGunakan aplikasi langsung. Tidak perlu mendaftar, tanpa identitas.';
	@override String noTracking({required Object appLabel}) => 'Tanpa pelacakan perilaku\n${appLabel} tidak memantau aktivitas Anda, membuat profil penggunaan, atau melacak Anda antar aplikasi atau situs web.';
	@override String noAds({required Object appLabel}) => 'Tanpa iklan secara desain\n${appLabel} dibuat untuk bekerja tanpa iklan atau monetisasi berbasis data.';
	@override String get noDataSelling => 'Tidak menjual data\nData kesehatan Anda tidak pernah dijual atau dibagikan dengan pihak ketiga.';
	@override String get localStorage => 'Penyimpanan lokal-pertama\nData Anda tetap di perangkat Anda.';
	@override String get privacyPolicy => 'Kebijakan Privasi';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperId implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dibuat oleh Pengembang Solo';
	@override String description({required Object appLabel}) => '${appLabel} dibuat dan dipelihara oleh satu pengembang solo yang fokus pada pembuatan perangkat lunak kesehatan yang tenang dan menghormati privasi.\n\nUmpan balik dibaca secara pribadi dan membantu membentuk arah aplikasi.';
	@override String get website => 'Situs Web';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackId implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Menikmati ${appLabel}?';
	@override String description({required Object appLabel}) => 'Umpan balik Anda membantu membuat ${appLabel} lebih baik untuk semua orang.';
	@override String get rateApp => 'Beri rating di Play Store';
	@override String get sendFeedback => 'Kirim Umpan Balik';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeId implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ukuran Porsi';
	@override String get description => 'Akurasi perkiraan sangat bergantung pada penilaian ukuran porsi yang benar.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsId implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Metode Persiapan';
	@override String description({required Object appLabel}) => 'Metode memasak dapat mengubah kandungan nutrisi secara signifikan. Perkiraan ${appLabel} mungkin tidak selalu memperhitungkan variasi ini.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsId implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bahan';
	@override String get description => 'Hidangan kompleks dengan banyak bahan tersembunyi dapat menyebabkan estimasi yang kurang akurat.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsId implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Batasan Basis Data';
	@override String description({required Object appLabel}) => 'Basis data makanan ${appLabel} luas tetapi mungkin tidak mencakup setiap item makanan atau variasinya.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyId implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Akurasi Kalori';
	@override String get description => 'Perkiraan ini hanya seakurat pencatatan asupan dan pengeluaran kalori Anda. Pencatatan yang tidak akurat akan menghasilkan proyeksi yang tidak akurat.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsId implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Faktor Biologis';
	@override String description({required Object appLabel}) => 'Penurunan/penambahan berat aktual dipengaruhi oleh metabolisme, hormon, tidur, stres, hidrasi, dan faktor individu lain yang tidak dapat diukur oleh ${appLabel}.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightId implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berat Air & Fluktuasi';
	@override String get description => 'Berat harian normal dapat berfluktuasi secara signifikan akibat retensi air, pencernaan, dan waktu. Perkiraan tidak memperhitungkan perubahan harian ini.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceId implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Panduan Profesional';
	@override String get description => 'Jangan gunakan perkiraan ini untuk membuat keputusan medis. Selalu konsultasikan profesional kesehatan atau ahli diet terdaftar untuk saran manajemen berat personal.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrId implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) adalah jumlah kalori yang dibakar tubuh Anda saat istirahat untuk mempertahankan fungsi dasar seperti bernapas dan sirkulasi. BMR bergantung pada usia, jenis kelamin, tinggi, dan berat badan. BMR lebih tinggi berarti tubuh Anda secara alami membakar lebih banyak kalori saat istirahat, seringkali karena massa otot lebih banyak, usia lebih muda, atau laki-laki. BMR lebih rendah biasanya menunjukkan massa otot lebih sedikit, usia lebih tua, atau perempuan.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeId implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) adalah total kalori yang Anda bakar per hari, termasuk BMR ditambah kalori dari aktivitas fisik dan gerakan harian. TDEE bergantung pada BMR dan tingkat aktivitas Anda. TDEE lebih tinggi berarti Anda membakar lebih banyak kalori secara keseluruhan, biasanya karena lebih aktif atau memiliki BMR lebih tinggi. TDEE lebih rendah menunjukkan aktivitas harian yang lebih sedikit atau BMR lebih rendah.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalId implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Target Harian';
	@override String get description => 'Target Harian adalah rekomendasi asupan kalori harian Anda berdasarkan TDEE dan tujuan berat Anda. Untuk penurunan berat, Anda mengonsumsi lebih sedikit kalori daripada TDEE. Untuk mempertahankan berat, Anda mencocokkan TDEE. Untuk penambahan berat, Anda mengonsumsi lebih banyak kalori daripada TDEE. Ini membantu Anda mencapai perubahan berat yang diinginkan dengan kecepatan yang sehat.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedId implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bagaimana Perkiraan Dihitung';
	@override String get description => 'Kami menghitung TDEE Anda (berdasarkan profil Anda) dan mengalikannya dengan fraksi hari yang telah berlalu (jam + menit) / 24 untuk memperkirakan kalori yang terbakar sejauh ini.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceId implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Panduan Profesional';
	@override String get description => 'Jangan gunakan perkiraan ini untuk membuat keputusan medis. Selalu konsultasikan profesional kesehatan atau ahli diet terdaftar untuk saran manajemen berat personal.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedId implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Baca Total Kalori Terbakar';
	@override String get description => 'Memungkinkan aplikasi membaca total kalori yang Anda bakar dari Health Connect.';
	@override String get usage => 'Izin ini digunakan untuk menampilkan pembakaran kalori harian Anda di aplikasi, membantu Anda memahami total pengeluaran energi sepanjang hari.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadId implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Baca Data Nutrisi';
	@override String get description => 'Memungkinkan aplikasi membaca data nutrisi dari Health Connect.';
	@override String get usage => 'Izin ini memungkinkan aplikasi membaca informasi nutrisi yang mungkin telah dicatat oleh aplikasi lain yang terhubung ke Health Connect, memberikan pandangan yang komprehensif tentang nutrisi Anda.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteId implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteId._(this._root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tulis Data Nutrisi';
	@override String get description => 'Memungkinkan aplikasi menulis data nutrisi ke Health Connect.';
	@override String get usage => 'Izin ini memungkinkan aplikasi menyinkronkan makanan yang Anda catat ke Health Connect, sehingga data nutrisi Anda tersedia untuk aplikasi kesehatan dan kebugaran lain yang Anda gunakan.';
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
			'errors.rateLimitExceeded' => 'Anda telah membuat terlalu banyak permintaan. Mohon tunggu sebentar sebelum mencoba lagi.',
			'errors.networkError' => 'Kesalahan jaringan. Periksa koneksi internet Anda.',
			'errors.unknownError' => 'Terjadi kesalahan. Silakan coba lagi nanti.',
			'errors.loadingProfileData' => 'Gagal memuat data profil',
			'errors.somethingWentWrong' => 'Terjadi kesalahan.',
			'errors.retry' => 'Coba lagi',
			'onboarding.welcome' => ({required Object appLabel}) => 'Selamat datang di ${appLabel}',
			'onboarding.subtitle' => 'Pendamping nutrisi pribadi Anda yang didukung AI',
			'onboarding.getStarted' => 'Mulai',
			'onboarding.features.foodRecognition.title' => 'Pengenalan Makanan Pintar',
			'onboarding.features.foodRecognition.description' => 'Ambil foto dan biarkan AI mengenali makanan Anda',
			'onboarding.features.aiAnalysis.title' => 'Analisis AI',
			'onboarding.features.aiAnalysis.description' => 'Dapatkan fakta nutrisi instan dari deskripsi Anda',
			'onboarding.features.healthIntegration.title' => 'Integrasi Health Connect',
			'onboarding.features.healthIntegration.description' => 'Sambungkan dengan Health Connect untuk wawasan yang lebih baik',
			'onboarding.gender.title' => 'Apa jenis kelamin Anda?',
			'onboarding.gender.description' => 'Jenis kelamin membantu kami menghitung basal metabolic rate (BMR) secara akurat.',
			'onboarding.gender.next' => 'Berikutnya',
			'onboarding.height.title' => 'Berapa tinggi Anda?',
			'onboarding.height.description' => 'Tinggi Anda membantu kami menghitung BMI dan kebutuhan energi dengan tepat.',
			'onboarding.height.metric' => 'Metrik',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Berikutnya',
			'onboarding.weight.currentTitle' => 'Berapa berat Anda saat ini?',
			'onboarding.weight.currentDescription' => 'Berat Anda saat ini penting untuk mempersonalisasi target harian Anda.',
			'onboarding.weight.targetTitle' => 'Berapa berat tujuan Anda?',
			'onboarding.weight.targetDescription' => 'Menetapkan berat tujuan membantu kami menentukan rencana jangka panjang Anda.',
			'onboarding.weight.metric' => 'Metrik',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Berikutnya',
			'onboarding.age.title' => 'Kapan ulang tahun Anda?',
			'onboarding.age.description' => 'Usia Anda membantu kami menghitung kebutuhan kalori dengan akurat.',
			'onboarding.age.next' => 'Berikutnya',
			'onboarding.bmiScale.underweight' => 'Kurang',
			'onboarding.bmiScale.healthy' => 'Sehat',
			'onboarding.bmiScale.overweight' => 'Lebih',
			'onboarding.bmiScale.obese' => 'Obesitas',
			'onboarding.bmiScale.categories.underweight' => 'Berat badan kurang',
			'onboarding.bmiScale.categories.healthyWeight' => 'Berat badan sehat',
			'onboarding.bmiScale.categories.overweight' => 'Berat badan berlebih',
			'onboarding.bmiScale.categories.obese' => 'Obesitas',
			'onboarding.bmiScale.messages.underweight' => 'Kami dapat membantu Anda menyusun rencana sehat untuk mencapai berat seimbang dengan makanan padat nutrisi.',
			'onboarding.bmiScale.messages.healthy' => 'Kerja bagus! Anda berada dalam kisaran sehat. Kami akan membantu Anda mempertahankan vitalitas dan energi.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} akan mempermudah perjalanan Anda dengan pelacakan bertenaga AI untuk membantu mencapai target dengan nyaman.',
			'onboarding.bmiScale.messages.obese' => 'Kami hadir untuk mendukung Anda dengan panduan personal dan strategi berkelanjutan untuk tujuan kesehatan Anda.',
			'onboarding.weightGoal.title' => 'Apa tujuan Anda?',
			'onboarding.weightGoal.description' => 'Pilih tujuan yang paling menggambarkan apa yang ingin Anda capai',
			'onboarding.activityLevel.title' => 'Seberapa aktif Anda?',
			'onboarding.activityLevel.description' => 'Ini membantu kami menghitung kebutuhan kalori harian Anda lebih akurat',
			'onboarding.healthConnect.title' => 'Sambungkan dengan Health Connect',
			'onboarding.healthConnect.description' => 'Sinkronkan data kesehatan Anda untuk wawasan yang lebih baik dan pelacakan kalori otomatis',
			'onboarding.healthConnect.automaticTracking.title' => 'Pelacakan Kalori Otomatis',
			'onboarding.healthConnect.automaticTracking.description' => 'Lacak kalori yang dibakar dari aplikasi kebugaran Anda',
			'onboarding.healthConnect.progressInsights.title' => 'Wawasan Kemajuan',
			'onboarding.healthConnect.progressInsights.description' => 'Dapatkan wawasan rinci tentang tren kesehatan Anda',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integrasi Tanpa Hambatan',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sinkronkan data dari aplikasi kesehatan favorit Anda',
			'onboarding.healthConnect.connected' => 'Health Connect Terhubung',
			'onboarding.healthConnect.notConnected' => 'Health Connect Tidak Terhubung',
			'onboarding.healthConnect.setup' => 'Siapkan Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Lewati sekarang',
			'onboarding.healthConnect.statusConnected' => 'Health Connect terhubung.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect berhasil dihubungkan!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Izin ditolak. Silakan aktifkan izin Health Connect dari pengaturan ponsel untuk ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Terjadi kesalahan saat menyiapkan Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Anda Tidak Sendiri',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Penelitian menunjukkan pelacakan konsisten adalah prediktor nomor 1 keberhasilan jangka panjang.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Untuk individu berusia ${age} tahun berjenis ${gender} yang ingin ${goal}, pelacakan konsisten adalah prediktor utama keberhasilan.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} membuatnya 10x lebih mudah daripada melakukannya secara manual.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Siap untuk memulai?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Ambil foto makanan untuk analisis instan',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Catat secara konsisten untuk melihat kemajuan bermakna',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Lacak kemajuan Anda tiap hari untuk tetap termotivasi',
			'onboarding.reinforcement.trackingSuccess.button' => 'Ayo Mulai',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individu',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'Anda yang lebih sehat',
			'onboarding.reinforcement.healthProfile.title' => 'Profil Kesehatan Anda',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Berdasarkan metrik Anda, BMI Anda adalah ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Mari selesaikan profil Anda untuk menyesuaikan pengalaman.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'menambah',
			'onboarding.reinforcement.healthProfile.goalLose' => 'mengurangi',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Untuk mencapai tujuan Anda, Anda akan ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Anda sudah mencapai berat target! Kami akan membantu mempertahankannya.',
			'onboarding.reinforcement.healthProfile.button' => 'Ayo Mulai',
			'onboarding.reinforcement.goalLifestyle.title' => 'Awal yang Bagus!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Anda telah mengambil langkah pertama menuju ${goalText}. Karena Anda ${activityText}, ${appLabel} akan menyesuaikan target Anda agar sesuai gaya hidup Anda.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Target kalori personal',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Deteksi makanan bertenaga AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Rincian makronutrien',
			'onboarding.reinforcement.goalLifestyle.button' => 'Ayo Mulai',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'tujuan Anda',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktif',
			'tabs.dashboard' => 'Dasbor',
			'tabs.history' => 'Riwayat',
			'home.aiSummary.title' => 'Ringkasan AI Anda',
			'home.aiSummary.logMore' => 'Catat lebih banyak makanan dalam beberapa hari ke depan untuk mendapatkan wawasan AI yang dipersonalisasi.',
			'home.aiSummary.loading' => 'Memuat ringkasan Anda...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} makanan tercatat',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Skor keseimbangan ${score}',
			'home.aiSummary.topFoods' => 'Makanan teratas',
			'home.aiSummary.trendUp' => 'Kalori meningkat',
			'home.aiSummary.trendDown' => 'Kalori menurun',
			'home.aiSummary.trendSteady' => 'Kalori stabil',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Diperbarui ${time}',
			'home.dailyGoal.title' => 'Atur Target Harian Anda',
			'home.dailyGoal.titleSet' => 'Target Harian Anda',
			'home.dailyGoal.description' => 'Siap memulai perjalanan kesehatan Anda? Atur target kalori harian di bawah untuk memulai kemajuan Anda.',
			'home.dailyGoal.descriptionSet' => 'Kompas Anda sudah diatur! Ini adalah target kalori harian untuk membimbing Anda.',
			'home.dailyGoal.yourGoal' => 'Target Anda',
			'home.dailyGoal.goal' => 'Target',
			'home.dailyGoal.dailyCalories' => 'Kalori harian (kcal)',
			'home.dailyGoal.setGoal' => 'Atur Target',
			'home.dailyGoal.intake' => 'Asupan',
			'home.dailyGoal.burned' => 'Terbakar',
			'home.dailyGoal.weightImpact' => 'Dampak Berat',
			'home.dailyGoal.estLoss' => 'Perk. penurunan',
			'home.dailyGoal.estGain' => 'Perk. kenaikan',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Ringkasan Harian',
			'home.dailySummary.calories' => 'Kalori',
			'home.dailySummary.carbs' => 'Karbohidrat',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Lemak',
			'home.dailySummary.fiber' => 'Serat',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Grafik makro',
			'home.intakeProgress.title' => 'Pembagian Makro Hari Ini',
			'home.intakeProgress.target' => 'Sasaran',
			'home.intakeProgress.current' => 'Saat ini',
			'home.intakeHistory.title' => 'Riwayat Makro 7 Hari',
			'home.intakeHistory.trendTitle' => 'Tren Hari Ini',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Puncak: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Belum ada riwayat',
			'home.intakeHistory.startLogging' => 'Mulai mencatat makanan untuk melihat\ntren makro 7 hari Anda di sini',
			'home.mealLog.title' => 'Makanan Tercatat',
			'home.mealLog.emptyMessage' => 'Ambil foto makanan terakhir Anda untuk mencatat di sini.',
			'home.mealLog.noMealsToday' => 'Belum ada makanan tercatat hari ini',
			'home.mealLog.seeAllMeals' => 'Lihat semua makanan',
			'home.mealDescription.title' => 'Tambah Cepat dengan AI',
			'home.mealDescription.description' => 'Deskripsikan makanan Anda, dan biarkan AI menangani rinciannya.',
			'home.mealDescription.hint' => 'mis. Untuk sarapan saya makan semangkuk besar oatmeal dengan pisang iris dan satu scoop whey ...',
			'home.mealDescription.analyzeMeal' => 'Analisis makanan',
			'home.favoriteMeals.title' => 'Makanan Favorit',
			'home.favoriteMeals.description' => 'Tambahkan salah satu makanan favorit Anda dengan cepat.',
			'home.favoriteMeals.noFavorites' => 'Belum ada makanan favorit.',
			'home.favoriteMeals.addFavoriteHint' => 'Klik bintang pada makanan untuk menandai sebagai favorit.',
			'home.favoriteMeals.seeAll' => 'Lihat semua',
			'home.favoriteMeals.add' => 'Tambah',
			'home.mealSnap.title' => 'Foto & Catat Makanan Anda',
			'home.mealSnap.description' => 'Gunakan kamera untuk memotret makanan Anda untuk analisis AI.',
			'home.mealSnap.openCamera' => 'Buka Kamera',
			'home.mealSnap.gallery' => 'Galeri',
			'home.mealSnap.compressingPhoto' => 'Mengoptimalkan foto…',
			'home.mealSnap.uploadingPhoto' => 'Mengunggah foto…',
			'home.connectHealth.title' => 'Sinkronkan dengan Health Connect',
			'home.connectHealth.description' => 'Sinkronkan data nutrisi Anda dengan Health Connect',
			'home.connectHealth.install' => 'Pasang',
			'home.connectHealth.connect' => 'Sambungkan',
			'history.noMeals' => 'Belum ada makanan tercatat',
			'history.emptyMessage' => 'Ambil foto makanan terakhir Anda untuk mencatat di sini.',
			'history.today' => 'Hari ini',
			'history.yesterday' => 'Kemarin',
			'meal.ohNo' => 'Aduh!',
			'meal.delete' => 'Hapus',
			'meal.editMeal' => 'Edit Makanan',
			'meal.addMeal' => 'Tambah Makanan',
			'meal.saveMeal' => 'Simpan Makanan',
			'meal.save' => 'Simpan',
			'meal.mealName' => 'Nama Makanan',
			'meal.mealNameHint' => 'mis., Telur orak-arik dengan roti',
			'meal.nameRequired' => 'Masukkan nama makanan sebelum menyimpan.',
			'meal.mealQuantity' => 'Jumlah Makanan',
			'meal.mealQuantityHint' => 'mis., 1 mangkuk, 2 potong',
			'meal.timeOfMeal' => 'Waktu Makan',
			'meal.timeOfMealHint' => 'Pilih waktu Anda makan',
			'meal.mealType' => 'Jenis Makanan',
			'meal.nutrition.calories' => 'Kalori',
			'meal.nutrition.carbs' => 'Karbo (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Lemak (g)',
			'meal.nutrition.fiber' => 'Serat (g)',
			'meal.deleteConfirmation.title' => 'Hapus Makanan',
			'meal.deleteConfirmation.message' => 'Apakah Anda yakin ingin menghapus entri makanan ini?',
			'meal.deleteConfirmation.cancel' => 'Batal',
			'meal.deleteConfirmation.delete' => 'Hapus',
			'meal.addedToLog' => 'Makanan ditambahkan ke log Anda!',
			'meal.couldNotAdd' => ({required Object error}) => 'Gagal menambahkan makanan: ${error}',
			'meal.savedSuccessfully' => 'Makanan berhasil ditambahkan!',
			'meal.updatedSuccessfully' => 'Makanan berhasil diperbarui!',
			'meal.errorSaving' => ({required Object error}) => 'Kesalahan menyimpan makanan: ${error}',
			'meal.removedFromFavorites' => 'Dihapus dari favorit!',
			'meal.savedAsFavorite' => 'Makanan disimpan sebagai favorit!',
			'meal.unfavorite' => 'Hapus favorit',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Gagal memperbarui favorit: ${error}',
			'meal.feedbackThanks' => 'Terima kasih atas umpan baliknya!',
			'meal.reanalysisUpdated' => 'Analisis makanan diperbarui berdasarkan umpan balik Anda.',
			'meal.failedToProcess' => ({required Object error}) => 'Gagal memproses: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Gagal memproses gambar: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Kesalahan mengompresi gambar: ${error}',
			'meal.failedToSave' => 'Gagal menyimpan data. Silakan coba lagi.',
			'meal.skip' => 'Lewati',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Pertanyaan ${current} dari ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Tidak ada pertanyaan tersedia',
			'meal.questionFlow.next' => 'Berikutnya',
			'meal.questionFlow.continueLabel' => 'Lanjutkan',
			'meal.analysis.title' => 'Menganalisis makanan Anda',
			'meal.analysis.stepStarted' => 'Memulai…',
			'meal.analysis.stepDecomposition' => 'Memahami makanan Anda…',
			'meal.analysis.stepIngredients' => 'Mencocokkan bahan dengan data nutrisi…',
			'meal.analysis.stepUncertainty' => 'Memeriksa tingkat keyakinan…',
			'meal.analysis.stepMealTypeQuestion' => 'Hampir selesai…',
			'meal.analysis.stepResult' => 'Menyelesaikan hasil Anda…',
			'meal.analysis.stepError' => 'Terjadi kesalahan',
			'meal.analysis.stepDefault' => 'Menganalisis makanan Anda…',
			'meal.analysis.progressUnderstand' => 'Memahami makanan Anda',
			'meal.analysis.progressMatch' => 'Mencari nutrisi bahan',
			'meal.analysis.progressCheck' => 'Memeriksa porsi dan keyakinan',
			'meal.analysis.progressMealType' => 'Memilih jenis makanan',
			'meal.analysis.progressFinish' => 'Menghitung kalori dan makro',
			'meal.analysis.detectedIngredientHeading' => 'Bahan yang terdeteksi',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} lagi',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} bahan terdeteksi',
			'meal.analysis.ingredientsPending' => 'Memindai bahan…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Konsistensi lebih penting daripada kesempurnaan—catatan rutin mengungkap pola yang berarti.',
			'meal.analysis.offlineTip1' => 'Tip: Untuk foto, cahaya alami dan sudut atas membantu akurasi porsi.',
			'meal.analysis.offlineTip2' => 'Tip: Sebutkan minuman, saus, dan minyak masak—mereka menambah kalori yang sering terlupakan.',
			'meal.analysis.offlineTip3' => 'Tip: Catatan porsi singkat (1 mangkuk, kopi besar) membuat perkiraan menjadi lebih tajam.',
			'meal.analysis.offlineTip4' => 'Tip: Mencatat setelah makan tetap membangun kebiasaan; kesempurnaan tidak wajib.',
			'meal.analysis.offlineTip5' => 'Tip: Sebutkan cara memasak ketika mengubah kalori signifikan (digoreng vs dipanggang).',
			'meal.localInference.reviewTitle' => 'Tinjau bahan yang terdeteksi',
			'meal.localInference.reviewSubtitle' => 'Ini diinterpretasikan pada perangkat Anda. Perbaiki nama atau porsi sebelum nutrisi dihitung.',
			'meal.localInference.mealName' => 'Nama makanan',
			'meal.localInference.ingredient' => 'Bahan',
			'meal.localInference.grams' => 'Estimasi gram',
			'meal.localInference.removeIngredient' => 'Hapus bahan',
			'meal.localInference.continueLabel' => 'Lanjutkan',
			'meal.localInference.invalidProposal' => 'Tambahkan setidaknya satu bahan dan gunakan jumlah gram yang positif.',
			'meal.localInference.localUnavailable' => 'Analisis pada perangkat saat ini tidak tersedia.',
			'meal.localInference.calculationDetails' => 'Cara perhitungan ini dilakukan',
			'meal.localInference.interpretationLocal' => 'Bahan diinterpretasikan pada perangkat ini',
			'meal.localInference.interpretationCloud' => 'Bahan diinterpretasikan di cloud',
			'meal.localInference.interpretationManual' => 'Bahan ditinjau atau diedit oleh Anda',
			'meal.localInference.nutritionRemote' => 'Nutrisi diambil dari USDA melalui Calorify',
			'meal.localInference.nutritionFallback' => 'Beberapa nilai nutrisi diestimasi secara jarak jauh',
			'meal.localInference.calculationServer' => 'Kalori dan makro dihitung oleh Calorify',
			'meal.localInference.fallbackUsed' => 'Analisis lokal dialihkan ke pemrosesan cloud',
			'meal.localInference.noRawContent' => 'Resi diagnostik tidak menyertakan teks atau foto makanan Anda.',
			'meal.feedback.title' => 'Apa yang kelihatan salah?',
			'meal.feedback.subtitle' => 'Bantu kami meningkatkan analisis dengan memilih satu atau beberapa masalah.',
			'meal.feedback.tellUsMore' => 'Ceritakan lebih lanjut',
			'meal.feedback.describeIncorrect' => 'Jelaskan apa yang salah',
			'meal.feedback.submit' => 'Kirim',
			'meal.feedback.issueFoodIdentification' => 'Identifikasi makanan',
			'meal.feedback.issuePortionSize' => 'Ukuran porsi',
			'meal.feedback.issueCalorieDistribution' => 'Distribusi kalori',
			'meal.feedback.issueMacrosWrong' => 'Makro salah',
			'meal.feedback.issueMissingItems' => 'Item hilang',
			'meal.feedback.issueExtraItems' => 'Item ekstra',
			'meal.feedback.issueOther' => 'Lainnya',
			'favorites.title' => 'Favorit',
			'favorites.empty' => 'Belum ada makanan favorit.',
			'favorites.searchPlaceholder' => 'Cari makanan favorit',
			'favorites.searchEmptyTitle' => 'Tidak ada favorit yang cocok',
			'favorites.searchEmptySubtitle' => 'Coba nama makanan, jumlah, atau jenis makanan yang berbeda.',
			'favorites.sortLabel' => 'Urutkan favorit',
			'favorites.undo' => 'Urungkan',
			'favorites.removed' => ({required Object name}) => 'Menghapus ${name} dari favorit',
			'favorites.sortOptions.recent' => 'Terbaru',
			'favorites.sortOptions.calories' => 'Kalori',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Data profil tidak ditemukan',
			'profile.yourProfile' => 'Profil Anda',
			'profile.viewAndManage' => 'Lihat dan kelola informasi kesehatan Anda',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'INFORMASI DASAR',
			'profile.sections.goalsAndActivity' => 'TUJUAN & AKTIVITAS',
			'profile.sections.calculatedValues' => 'NILAI TERHITUNG',
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
			'profile.calculatedValues.dailyGoal' => 'Target Harian',
			'profile.calculatedValues.calPerDay' => 'cal/hari',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Skor Kesehatan',
			'healthScore.whyThisScore' => 'Mengapa skor ini?',
			'healthScore.note' => 'Skor ini adalah perkiraan AI berdasarkan bahan yang teridentifikasi dan kepadatan nutrisi. Selalu konsultasikan ke profesional untuk saran diet personal.',
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
			'editProfile.genders.male' => 'Pria',
			'editProfile.genders.female' => 'Wanita',
			'editProfile.genders.other' => 'Lainnya',
			'editProfile.weightGoals.loseWeight.name' => 'Turunkan Berat',
			'editProfile.weightGoals.loseWeight.description' => 'Buat defisit kalori untuk menurunkan berat badan',
			'editProfile.weightGoals.maintainWeight.name' => 'Pertahankan Berat',
			'editProfile.weightGoals.maintainWeight.description' => 'Mempertahankan berat Anda saat ini',
			'editProfile.weightGoals.gainWeight.name' => 'Tambah Berat',
			'editProfile.weightGoals.gainWeight.description' => 'Buat surplus kalori untuk menambah berat',
			'editProfile.activityLevels.sedentary.name' => 'Sedentari',
			'editProfile.activityLevels.sedentary.description' => 'Sedikit atau tidak ada olahraga',
			'editProfile.activityLevels.lightlyActive.name' => 'Ringan Aktif',
			'editProfile.activityLevels.lightlyActive.description' => 'Olahraga ringan 1-3 hari/minggu',
			'editProfile.activityLevels.moderatelyActive.name' => 'Cukup Aktif',
			'editProfile.activityLevels.moderatelyActive.description' => 'Olahraga sedang 3-5 hari/minggu',
			'editProfile.activityLevels.veryActive.name' => 'Sangat Aktif',
			'editProfile.activityLevels.veryActive.description' => 'Olahraga berat 6-7 hari/minggu',
			'editProfile.activityLevels.extremelyActive.name' => 'Ekstrem Aktif',
			'editProfile.activityLevels.extremelyActive.description' => 'Olahraga sangat berat, pekerjaan fisik',
			'settings.title' => 'Pengaturan',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALISASI',
			'settings.sections.notifications' => 'NOTIFIKASI',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.localInference' => 'ANALISIS PADA PERANGKAT',
			'settings.sections.supportAndLegal' => 'DUKUNGAN & HUKUM',
			'settings.sections.about' => 'TENTANG',
			'settings.sections.dangerZone' => 'AREA BERISIKO',
			'settings.sections.developer' => 'PENGEMBANG',
			'settings.editProfile.title' => 'Edit Profil',
			'settings.editProfile.subtitle' => 'Perbarui informasi pribadi Anda',
			'settings.language.title' => 'Bahasa',
			'settings.language.subtitle' => 'Pilih bahasa pilihan Anda',
			'settings.language.searchHint' => 'Cari bahasa...',
			'settings.language.noResults' => 'Tidak ada hasil',
			'settings.heightUnit.title' => 'Satuan Tinggi',
			'settings.weightUnit.title' => 'Satuan Berat',
			'settings.mealReminders.title' => 'Pengingat Makan',
			'settings.mealReminders.subtitle' => 'Tetap pada jalur dengan pengingat tepat waktu',
			'settings.localInference.title' => 'Analisis makanan pada perangkat',
			'settings.localInference.subtitle' => 'Interpretasikan makanan yang didukung dengan Gemini Nano sebelum nutrisi dihitung',
			'settings.localInference.unavailable' => 'Tidak tersedia pada perangkat ini',
			'settings.localInference.rolloutUnavailable' => 'Perangkat keras yang kompatibel ditemukan, tetapi fitur ini belum diaktifkan untuk rilis aplikasi ini',
			'settings.localInference.modelSetup' => 'Gemini Nano perlu menyelesaikan pengunduhan sebelum fitur ini dapat diaktifkan',
			'settings.localInference.useLocalTitle' => 'Gunakan analisis pada perangkat',
			'settings.localInference.useLocalSubtitle' => 'Opsional dan nonaktif secara default. Hasil mungkin kurang akurat untuk makanan yang kompleks.',
			'settings.localInference.disclosureTitle' => 'Sebelum Anda mengaktifkan analisis pada perangkat',
			'settings.localInference.disclosureBody' => 'Gemini Nano dapat mengidentifikasi bahan dan mengestimasi porsi pada perangkat Android yang didukung. Proposal bahan yang Anda tinjau akan dikirim ke Calorify untuk dasar nutrisi USDA dan perhitungan.',
			'settings.localInference.disclosureLimit1' => 'Hidangan kompleks, bahan tersembunyi, dan ukuran porsi mungkin teridentifikasi secara tidak tepat.',
			'settings.localInference.disclosureLimit2' => 'Model mungkin tidak tersedia saat mengunduh, sedang sibuk, berjalan di latar belakang, atau dibatasi oleh perangkat.',
			'settings.localInference.disclosureLimit3' => 'Jika interpretasi lokal tidak dapat selesai, versi beta ini secara otomatis mengirimkan deskripsi makanan asli Anda ke Calorify untuk analisis cloud.',
			'settings.localInference.acknowledgement' => 'Saya mengerti bahwa saya harus meninjau bahan dan porsi yang terdeteksi.',
			'settings.localInference.enable' => 'Setujui dan aktifkan',
			'settings.localInference.cancel' => 'Batal',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Terang',
			'settings.theme.dark' => 'Gelap',
			'settings.theme.system' => 'Sistem',
			'settings.sendFeedback.title' => 'Kirim Umpan Balik',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Bantu kami meningkatkan ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} Umpan Balik Aplikasi',
			'settings.sendFeedback.emailBodyPrefix' => 'Silakan berikan umpan balik Anda di bawah:',
			'settings.sendFeedback.appVersion' => 'Versi Aplikasi',
			'settings.sendFeedback.device' => 'Perangkat',
			'settings.sendFeedback.osVersion' => 'Versi OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Ekspor Riwayat Makan',
			'settings.exportMealHistory.subtitle' => 'Bagikan CSV dari makanan yang Anda catat',
			'settings.exportMealHistory.shareText' => 'Ekspor riwayat makanan Calorify Anda',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Tidak dapat mengekspor riwayat makan: ${error}',
			'settings.clearAllData.title' => 'Hapus Semua Data',
			'settings.clearAllData.subtitle' => 'Hapus semua informasi Anda secara tak dapat dikembalikan',
			'settings.clearAllData.confirmationTitle' => 'Hapus Semua Data?',
			'settings.clearAllData.confirmationMessage' => 'Tindakan ini tidak dapat dibatalkan. Semua catatan makanan, favorit, dan pengaturan profil Anda akan dihapus secara permanen.',
			'settings.clearAllData.cancel' => 'Batal',
			'settings.clearAllData.clearEverything' => 'Hapus Semua',
			'settings.debugOptions.title' => 'Opsi Debug',
			'settings.developerModeEnabled' => 'Mode pengembang diaktifkan!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Lihat dan kelola izin',
			'settings.healthConnect.unavailable.title' => 'Health Connect Tidak Tersedia',
			'settings.healthConnect.unavailable.description' => 'Health Connect tidak tersedia di perangkat ini. Silakan pasang Health Connect dari Play Store (Android 9+) atau perbarui ke Android 14+.',
			'settings.healthConnect.permissions.title' => 'Izin',
			'settings.healthConnect.permissions.description' => 'Izin berikut diminta untuk menyediakan integrasi Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Diberikan',
			'settings.healthConnect.permissions.notGranted' => 'Belum Diberikan',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Baca Total Kalori Terbakar',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Memungkinkan aplikasi membaca total kalori yang Anda bakar dari Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Izin ini digunakan untuk menampilkan pembakaran kalori harian Anda di aplikasi, membantu Anda memahami total pengeluaran energi sepanjang hari.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Baca Data Nutrisi',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Memungkinkan aplikasi membaca data nutrisi dari Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Izin ini memungkinkan aplikasi membaca informasi nutrisi yang mungkin telah dicatat oleh aplikasi lain yang terhubung ke Health Connect, memberikan pandangan yang komprehensif tentang nutrisi Anda.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Tulis Data Nutrisi',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Memungkinkan aplikasi menulis data nutrisi ke Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Izin ini memungkinkan aplikasi menyinkronkan makanan yang Anda catat ke Health Connect, sehingga data nutrisi Anda tersedia untuk aplikasi kesehatan dan kebugaran lain yang Anda gunakan.',
			'settings.healthConnect.managePermissions' => 'Kelola Izin',
			'settings.healthConnect.openSettings' => 'Buka Pengaturan Health Connect',
			'settings.healthConnect.requestPermissions' => 'Minta Izin',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Permintaan izin dibatalkan atau gagal. Silakan coba lagi atau berikan izin secara manual di pengaturan Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Tidak dapat meminta izin. Silakan coba lagi atau berikan izin secara manual di pengaturan Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Meminta...',
			'settings.about.title' => 'Tentang',
			'settings.about.tagline' => 'Cepat, gratis, dan mengutamakan privasi untuk kesadaran kalori',
			'settings.about.ourStory.title' => 'Kisah Kami',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} lahir dari satu kekesalan sederhana: sebagian besar aplikasi pelacak kalori terlalu rumit, menuntut input manual terus-menerus, mengenakan biaya langganan tinggi, atau mengorbankan privasi.\n\nSebagai pengembang solo, saya ingin membuat sesuatu yang lebih sederhana dan lebih adil — aplikasi yang menggunakan AI untuk mengurangi usaha, tetap cepat dan gratis digunakan, serta menghargai data kesehatan Anda.\n\n${appLabel} adalah aplikasi yang saya harap ada: tanpa akun, tanpa pelacakan, tanpa iklan — hanya wawasan yang jelas dan praktis serta tujuan kesehatan Anda.',
			'settings.about.privacy.title' => 'Privasi Anda Penting',
			'settings.about.privacy.description' => 'Privasi bukan sekadar pemikiran tambahan — itu adalah prinsip desain. Berikut arti itu dalam praktik:',
			'settings.about.privacy.noAccounts' => 'Tanpa akun\nGunakan aplikasi langsung. Tidak perlu mendaftar, tanpa identitas.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Tanpa pelacakan perilaku\n${appLabel} tidak memantau aktivitas Anda, membuat profil penggunaan, atau melacak Anda antar aplikasi atau situs web.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Tanpa iklan secara desain\n${appLabel} dibuat untuk bekerja tanpa iklan atau monetisasi berbasis data.',
			'settings.about.privacy.noDataSelling' => 'Tidak menjual data\nData kesehatan Anda tidak pernah dijual atau dibagikan dengan pihak ketiga.',
			'settings.about.privacy.localStorage' => 'Penyimpanan lokal-pertama\nData Anda tetap di perangkat Anda.',
			'settings.about.privacy.privacyPolicy' => 'Kebijakan Privasi',
			'settings.about.developer.title' => 'Dibuat oleh Pengembang Solo',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} dibuat dan dipelihara oleh satu pengembang solo yang fokus pada pembuatan perangkat lunak kesehatan yang tenang dan menghormati privasi.\n\nUmpan balik dibaca secara pribadi dan membantu membentuk arah aplikasi.',
			'settings.about.developer.website' => 'Situs Web',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Menikmati ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Umpan balik Anda membantu membuat ${appLabel} lebih baik untuk semua orang.',
			'settings.about.feedback.rateApp' => 'Beri rating di Play Store',
			'settings.about.feedback.sendFeedback' => 'Kirim Umpan Balik',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Tetap pada jalur dengan pengingat',
			'reminders.description' => 'Dapatkan pengingat lembut untuk mencatat makanan Anda dan tetap konsisten dengan tujuan nutrisi',
			'reminders.notificationsEnabled' => 'Notifikasi Diaktifkan',
			'reminders.notificationsDisabled' => 'Notifikasi Dinonaktifkan',
			'reminders.enabledSubtitle' => 'Anda akan menerima pengingat makan',
			'reminders.disabledSubtitle' => 'Aktifkan notifikasi untuk mendapatkan pengingat makan',
			'reminders.mealReminders' => 'Pengingat Makan',
			'reminders.breakfast' => 'Sarapan',
			'reminders.lunch' => 'Makan Siang',
			'reminders.dinner' => 'Makan Malam',
			'reminders.snack' => 'Cemilan',
			'reminders.unknown' => 'Tidak diketahui',
			'reminders.change' => 'Ubah',
			'reminders.enableNotifications' => 'Aktifkan Notifikasi',
			'reminders.skipForNow' => 'Lewati sekarang',
			'reminders.saveChanges' => 'Simpan Perubahan',
			'reminders.enabledSuccessfully' => 'Notifikasi berhasil diaktifkan!',
			'reminders.permissionDenied' => 'Izin notifikasi ditolak',
			'reminders.errorEnabling' => ({required Object error}) => 'Kesalahan mengaktifkan notifikasi: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Kesalahan menyelesaikan pengaturan: ${error}',
			'notifications.breakfast.title' => 'Waktunya Sarapan! 🍳',
			'notifications.breakfast.body' => 'Jangan lupa mencatat sarapan Anda',
			'notifications.lunch.title' => 'Waktunya Makan Siang! 🥗',
			'notifications.lunch.body' => 'Saatnya mencatat makan siang Anda',
			'notifications.dinner.title' => 'Waktunya Makan Malam! 🍽️',
			'notifications.dinner.body' => 'Jangan lupa mencatat makan malam Anda',
			'notifications.snack.title' => 'Waktunya Cemilan! 🍎',
			'notifications.snack.body' => 'Waktunya cemilan sehat',
			'notifications.test.title' => 'Notifikasi Tes',
			'login.title' => 'Masuk',
			'login.signInWithGoogle' => 'Masuk dengan Google',
			'login.signInFailed' => 'Google Sign-In gagal atau dibatalkan.',
			'disclaimer.pleaseNote' => 'Harap Diperhatikan',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} menyediakan informasi nutrisi perkiraan. Ketepatan bergantung pada input Anda & variasi makanan. Gunakan sebagai panduan, bukan sumber pasti. Konsultasikan profesional untuk saran diet personal.',
			'disclaimer.snap.portionSize.title' => 'Ukuran Porsi',
			'disclaimer.snap.portionSize.description' => 'Akurasi perkiraan sangat bergantung pada penilaian ukuran porsi yang benar.',
			'disclaimer.snap.preparationMethods.title' => 'Metode Persiapan',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Metode memasak dapat mengubah kandungan nutrisi secara signifikan. Perkiraan ${appLabel} mungkin tidak selalu memperhitungkan variasi ini.',
			'disclaimer.snap.ingredients.title' => 'Bahan',
			'disclaimer.snap.ingredients.description' => 'Hidangan kompleks dengan banyak bahan tersembunyi dapat menyebabkan estimasi yang kurang akurat.',
			'disclaimer.snap.databaseLimitations.title' => 'Batasan Basis Data',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Basis data makanan ${appLabel} luas tetapi mungkin tidak mencakup setiap item makanan atau variasinya.',
			'disclaimer.weightEstimate.title' => 'Tentang Perkiraan Berat',
			'disclaimer.weightEstimate.description' => 'Perubahan berat yang diproyeksikan adalah perkiraan teoretis berdasarkan model kalori masuk vs keluar sederhana. Ini dimaksudkan untuk panduan motivasi saja, bukan prediksi berat aktual Anda.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Akurasi Kalori',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Perkiraan ini hanya seakurat pencatatan asupan dan pengeluaran kalori Anda. Pencatatan yang tidak akurat akan menghasilkan proyeksi yang tidak akurat.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Faktor Biologis',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Penurunan/penambahan berat aktual dipengaruhi oleh metabolisme, hormon, tidur, stres, hidrasi, dan faktor individu lain yang tidak dapat diukur oleh ${appLabel}.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Berat Air & Fluktuasi',
			'disclaimer.weightEstimate.waterWeight.description' => 'Berat harian normal dapat berfluktuasi secara signifikan akibat retensi air, pencernaan, dan waktu. Perkiraan tidak memperhitungkan perubahan harian ini.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Panduan Profesional',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Jangan gunakan perkiraan ini untuk membuat keputusan medis. Selalu konsultasikan profesional kesehatan atau ahli diet terdaftar untuk saran manajemen berat personal.',
			'disclaimer.healthMetrics.description' => 'Metrik ini membantu Anda memahami kebutuhan energi tubuh dan membimbing tujuan nutrisi Anda.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR) adalah jumlah kalori yang dibakar tubuh Anda saat istirahat untuk mempertahankan fungsi dasar seperti bernapas dan sirkulasi. BMR bergantung pada usia, jenis kelamin, tinggi, dan berat badan. BMR lebih tinggi berarti tubuh Anda secara alami membakar lebih banyak kalori saat istirahat, seringkali karena massa otot lebih banyak, usia lebih muda, atau laki-laki. BMR lebih rendah biasanya menunjukkan massa otot lebih sedikit, usia lebih tua, atau perempuan.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE) adalah total kalori yang Anda bakar per hari, termasuk BMR ditambah kalori dari aktivitas fisik dan gerakan harian. TDEE bergantung pada BMR dan tingkat aktivitas Anda. TDEE lebih tinggi berarti Anda membakar lebih banyak kalori secara keseluruhan, biasanya karena lebih aktif atau memiliki BMR lebih tinggi. TDEE lebih rendah menunjukkan aktivitas harian yang lebih sedikit atau BMR lebih rendah.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Target Harian',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Target Harian adalah rekomendasi asupan kalori harian Anda berdasarkan TDEE dan tujuan berat Anda. Untuk penurunan berat, Anda mengonsumsi lebih sedikit kalori daripada TDEE. Untuk mempertahankan berat, Anda mencocokkan TDEE. Untuk penambahan berat, Anda mengonsumsi lebih banyak kalori daripada TDEE. Ini membantu Anda mencapai perubahan berat yang diinginkan dengan kecepatan yang sehat.',
			'disclaimer.calorieExpenditure.title' => 'Perkiraan Pengeluaran Kalori',
			'disclaimer.calorieExpenditure.description' => 'Saat data Health Connect tidak tersedia, kami memperkirakan kalori yang terbakar hari ini menggunakan Basal Metabolic Rate (BMR) dan tingkat aktivitas Anda (TDEE), diskalakan untuk porsi hari yang telah berlalu.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Bagaimana Perkiraan Dihitung',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Kami menghitung TDEE Anda (berdasarkan profil Anda) dan mengalikannya dengan fraksi hari yang telah berlalu (jam + menit) / 24 untuk memperkirakan kalori yang terbakar sejauh ini.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Panduan Profesional',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Jangan gunakan perkiraan ini untuk membuat keputusan medis. Selalu konsultasikan profesional kesehatan atau ahli diet terdaftar untuk saran manajemen berat personal.',
			_ => null,
		} ?? switch (path) {
			'localNutritionPhase4.nutritionBundled' => 'Nutrition matched from the downloaded USDA pack',
			'localNutritionPhase4.nutritionCached' => 'Nutrition matched from the on-device USDA cache',
			'localNutritionPhase4.nutritionMixed' => 'Nutrition combined from downloaded, cached, and remote USDA rows',
			'localNutritionPhase4.calculationLocal' => 'Calories and macros calculated on this device',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient}: downloaded USDA pack',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient}: on-device USDA cache',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient}: USDA row fetched through Calorify',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient}: deterministic nutrition constant',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · dataset ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'Smaller',
			'localNutritionPhase4.portionEstimated' => 'Estimated',
			'localNutritionPhase4.portionLarger' => 'Larger',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Which portion was closest for ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Which meal was this?',
			'localNutritionPhase4.localNutritionTip' => 'Calculated from verified local nutrition data.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Download nutrition data',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Use verified USDA rows and deterministic calculation on this device when every ingredient is covered.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Local nutrition data is not available for this app release.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'No verified nutrition pack is downloaded.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Downloading and verifying nutrition data…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Pack ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} cached USDA rows · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Check for update',
			'localNutritionPhase4.offlineNutritionClear' => 'Clear local nutrition data',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Clear local nutrition data?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'This removes the downloaded USDA pack and lookup cache. Logged meals keep the exact nutrition snapshot used when they were saved.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Clear data',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Could not download and verify local nutrition data: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Local nutrition data cleared',
			'common.close' => 'Tutup',
			'common.kContinue' => 'Lanjutkan',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Menikmati ${appLabel}?',
			'feedbackRating.yes' => 'Ya, saya menikmatinya',
			'feedbackRating.no' => 'Tidak begitu',
			'feedbackRating.rateStepHeading' => 'Beri rating di Play Store',
			'feedbackRating.emailStepHeading' => 'Kirim umpan balik lewat email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Rating singkat membantu orang lain menemukan ${appLabel} dan mendukung pengembangan. Maukah Anda meluangkan waktu untuk memberi rating?',
			'feedbackRating.shareFeedbackViaEmail' => 'Umpan balik Anda membentuk perkembangan selanjutnya — kami membaca setiap pesan. Ingin berbagi melalui email?',
			'feedbackRating.rateCta' => 'Beri rating di Play Store',
			'feedbackRating.maybeLater' => 'Nanti saja',
			'feedbackRating.sendFeedback' => 'Kirim umpan balik',
			'feedbackRating.noThanks' => 'Tidak, terima kasih',
			'feedbackRating.aboutUsDescription' => 'Dibuat dengan hati-hati oleh tim kecil. Kami fokus pada privasi, kesederhanaan, dan membantu Anda membentuk kebiasaan makan yang lebih baik.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Penasaran siapa di balik ${appLabel}? Lihat ',
			'feedbackRating.aboutUsLinkLabel' => 'Tentang kami',
			'feedbackRating.thankYouMessage' => 'Terima kasih! Kami akan menanyakan lagi di lain waktu.',
			'health.syncFailed' => 'Gagal menyinkronkan ke Health Connect',
			'health.mealSynced' => 'Makanan disinkronkan dengan Health Connect',
			_ => null,
		};
	}
}
