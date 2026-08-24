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
class TranslationsId extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsId({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.id,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <id>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsId _root = this; // ignore: unused_field

	@override 
	TranslationsId $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsId(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Bahasa Indonesia';
	@override String get flag => '🇮🇩';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$id errors = _Translations$errors$id._(_root);
	@override late final _Translations$onboarding$id onboarding = _Translations$onboarding$id._(_root);
	@override late final _Translations$tabs$id tabs = _Translations$tabs$id._(_root);
	@override late final _Translations$home$id home = _Translations$home$id._(_root);
	@override late final _Translations$history$id history = _Translations$history$id._(_root);
	@override late final _Translations$meal$id meal = _Translations$meal$id._(_root);
	@override late final _Translations$favorites$id favorites = _Translations$favorites$id._(_root);
	@override late final _Translations$profile$id profile = _Translations$profile$id._(_root);
	@override late final _Translations$healthScore$id healthScore = _Translations$healthScore$id._(_root);
	@override late final _Translations$editProfile$id editProfile = _Translations$editProfile$id._(_root);
	@override late final _Translations$settings$id settings = _Translations$settings$id._(_root);
	@override late final _Translations$reminders$id reminders = _Translations$reminders$id._(_root);
	@override late final _Translations$notifications$id notifications = _Translations$notifications$id._(_root);
	@override late final _Translations$login$id login = _Translations$login$id._(_root);
	@override late final _Translations$disclaimer$id disclaimer = _Translations$disclaimer$id._(_root);
	@override late final _Translations$localNutritionPhase4$id localNutritionPhase4 = _Translations$localNutritionPhase4$id._(_root);
	@override late final _Translations$watch$id watch = _Translations$watch$id._(_root);
	@override late final _Translations$common$id common = _Translations$common$id._(_root);
	@override late final _Translations$feedbackRating$id feedbackRating = _Translations$feedbackRating$id._(_root);
	@override late final _Translations$health$id health = _Translations$health$id._(_root);
}

// Path: errors
class _Translations$errors$id extends Translations$errors$en {
	_Translations$errors$id._(TranslationsId root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$id extends Translations$onboarding$en {
	_Translations$onboarding$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Selamat datang di ${appLabel}';
	@override String get subtitle => 'Pendamping nutrisi pribadi Anda yang didukung AI';
	@override String get getStarted => 'Mulai';
	@override late final _Translations$onboarding$features$id features = _Translations$onboarding$features$id._(_root);
	@override late final _Translations$onboarding$gender$id gender = _Translations$onboarding$gender$id._(_root);
	@override late final _Translations$onboarding$height$id height = _Translations$onboarding$height$id._(_root);
	@override late final _Translations$onboarding$weight$id weight = _Translations$onboarding$weight$id._(_root);
	@override late final _Translations$onboarding$age$id age = _Translations$onboarding$age$id._(_root);
	@override late final _Translations$onboarding$bmiScale$id bmiScale = _Translations$onboarding$bmiScale$id._(_root);
	@override late final _Translations$onboarding$weightGoal$id weightGoal = _Translations$onboarding$weightGoal$id._(_root);
	@override late final _Translations$onboarding$activityLevel$id activityLevel = _Translations$onboarding$activityLevel$id._(_root);
	@override late final _Translations$onboarding$healthConnect$id healthConnect = _Translations$onboarding$healthConnect$id._(_root);
	@override late final _Translations$onboarding$reinforcement$id reinforcement = _Translations$onboarding$reinforcement$id._(_root);
}

// Path: tabs
class _Translations$tabs$id extends Translations$tabs$en {
	_Translations$tabs$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Dasbor';
	@override String get history => 'Riwayat';
}

// Path: home
class _Translations$home$id extends Translations$home$en {
	_Translations$home$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$id aiSummary = _Translations$home$aiSummary$id._(_root);
	@override late final _Translations$home$dailyGoal$id dailyGoal = _Translations$home$dailyGoal$id._(_root);
	@override late final _Translations$home$dailySummary$id dailySummary = _Translations$home$dailySummary$id._(_root);
	@override late final _Translations$home$intakeProgress$id intakeProgress = _Translations$home$intakeProgress$id._(_root);
	@override late final _Translations$home$intakeHistory$id intakeHistory = _Translations$home$intakeHistory$id._(_root);
	@override late final _Translations$home$mealLog$id mealLog = _Translations$home$mealLog$id._(_root);
	@override late final _Translations$home$mealDescription$id mealDescription = _Translations$home$mealDescription$id._(_root);
	@override late final _Translations$home$favoriteMeals$id favoriteMeals = _Translations$home$favoriteMeals$id._(_root);
	@override late final _Translations$home$mealSnap$id mealSnap = _Translations$home$mealSnap$id._(_root);
	@override late final _Translations$home$connectHealth$id connectHealth = _Translations$home$connectHealth$id._(_root);
}

// Path: history
class _Translations$history$id extends Translations$history$en {
	_Translations$history$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Belum ada makanan tercatat';
	@override String get emptyMessage => 'Ambil foto makanan terakhir Anda untuk mencatat di sini.';
	@override String get today => 'Hari ini';
	@override String get yesterday => 'Kemarin';
}

// Path: meal
class _Translations$meal$id extends Translations$meal$en {
	_Translations$meal$id._(TranslationsId root) : this._root = root, super.internal(root);

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
	@override late final _Translations$meal$nutrition$id nutrition = _Translations$meal$nutrition$id._(_root);
	@override late final _Translations$meal$deleteConfirmation$id deleteConfirmation = _Translations$meal$deleteConfirmation$id._(_root);
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
	@override late final _Translations$meal$questionFlow$id questionFlow = _Translations$meal$questionFlow$id._(_root);
	@override late final _Translations$meal$analysis$id analysis = _Translations$meal$analysis$id._(_root);
	@override late final _Translations$meal$localInference$id localInference = _Translations$meal$localInference$id._(_root);
	@override late final _Translations$meal$feedback$id feedback = _Translations$meal$feedback$id._(_root);
}

// Path: favorites
class _Translations$favorites$id extends Translations$favorites$en {
	_Translations$favorites$id._(TranslationsId root) : this._root = root, super.internal(root);

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
	@override late final _Translations$favorites$sortOptions$id sortOptions = _Translations$favorites$sortOptions$id._(_root);
}

// Path: profile
class _Translations$profile$id extends Translations$profile$en {
	_Translations$profile$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Data profil tidak ditemukan';
	@override String get yourProfile => 'Profil Anda';
	@override String get viewAndManage => 'Lihat dan kelola informasi kesehatan Anda';
	@override late final _Translations$profile$sections$id sections = _Translations$profile$sections$id._(_root);
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
	@override late final _Translations$profile$calculatedValues$id calculatedValues = _Translations$profile$calculatedValues$id._(_root);
}

// Path: healthScore
class _Translations$healthScore$id extends Translations$healthScore$en {
	_Translations$healthScore$id._(TranslationsId root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$id extends Translations$editProfile$en {
	_Translations$editProfile$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edit Profil';
	@override late final _Translations$editProfile$sections$id sections = _Translations$editProfile$sections$id._(_root);
	@override String get gender => 'Jenis Kelamin';
	@override String get dateOfBirth => 'Tanggal Lahir';
	@override String get height => 'Tinggi';
	@override String get weight => 'Berat';
	@override String get weightGoal => 'Tujuan Berat';
	@override String get activityLevel => 'Tingkat Aktivitas';
	@override String get metric => 'Metrik';
	@override String get imperial => 'Satuan imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'pon (lbs)';
	@override String get metricCm => 'Metrik (cm)';
	@override String get imperialFtIn => 'Satuan imperial (ft/in)';
	@override String get metricKg => 'Metrik (kg)';
	@override String get imperialLbs => 'Satuan imperial (lbs)';
	@override late final _Translations$editProfile$genders$id genders = _Translations$editProfile$genders$id._(_root);
	@override late final _Translations$editProfile$weightGoals$id weightGoals = _Translations$editProfile$weightGoals$id._(_root);
	@override late final _Translations$editProfile$activityLevels$id activityLevels = _Translations$editProfile$activityLevels$id._(_root);
}

// Path: settings
class _Translations$settings$id extends Translations$settings$en {
	_Translations$settings$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengaturan';
	@override late final _Translations$settings$sections$id sections = _Translations$settings$sections$id._(_root);
	@override late final _Translations$settings$editProfile$id editProfile = _Translations$settings$editProfile$id._(_root);
	@override late final _Translations$settings$language$id language = _Translations$settings$language$id._(_root);
	@override late final _Translations$settings$heightUnit$id heightUnit = _Translations$settings$heightUnit$id._(_root);
	@override late final _Translations$settings$weightUnit$id weightUnit = _Translations$settings$weightUnit$id._(_root);
	@override late final _Translations$settings$mealReminders$id mealReminders = _Translations$settings$mealReminders$id._(_root);
	@override late final _Translations$settings$localInference$id localInference = _Translations$settings$localInference$id._(_root);
	@override late final _Translations$settings$theme$id theme = _Translations$settings$theme$id._(_root);
	@override late final _Translations$settings$sendFeedback$id sendFeedback = _Translations$settings$sendFeedback$id._(_root);
	@override late final _Translations$settings$exportMealHistory$id exportMealHistory = _Translations$settings$exportMealHistory$id._(_root);
	@override late final _Translations$settings$clearAllData$id clearAllData = _Translations$settings$clearAllData$id._(_root);
	@override late final _Translations$settings$debugOptions$id debugOptions = _Translations$settings$debugOptions$id._(_root);
	@override String get developerModeEnabled => 'Mode pengembang diaktifkan!';
	@override late final _Translations$settings$healthConnect$id healthConnect = _Translations$settings$healthConnect$id._(_root);
	@override late final _Translations$settings$about$id about = _Translations$settings$about$id._(_root);
	@override late final _Translations$settings$appInfo$id appInfo = _Translations$settings$appInfo$id._(_root);
}

// Path: reminders
class _Translations$reminders$id extends Translations$reminders$en {
	_Translations$reminders$id._(TranslationsId root) : this._root = root, super.internal(root);

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
class _Translations$notifications$id extends Translations$notifications$en {
	_Translations$notifications$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$id breakfast = _Translations$notifications$breakfast$id._(_root);
	@override late final _Translations$notifications$lunch$id lunch = _Translations$notifications$lunch$id._(_root);
	@override late final _Translations$notifications$dinner$id dinner = _Translations$notifications$dinner$id._(_root);
	@override late final _Translations$notifications$snack$id snack = _Translations$notifications$snack$id._(_root);
	@override late final _Translations$notifications$test$id test = _Translations$notifications$test$id._(_root);
}

// Path: login
class _Translations$login$id extends Translations$login$en {
	_Translations$login$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masuk';
	@override String get signInWithGoogle => 'Masuk dengan Google';
	@override String get signInFailed => 'Google Sign-In gagal atau dibatalkan.';
}

// Path: disclaimer
class _Translations$disclaimer$id extends Translations$disclaimer$en {
	_Translations$disclaimer$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Harap Diperhatikan';
	@override late final _Translations$disclaimer$snap$id snap = _Translations$disclaimer$snap$id._(_root);
	@override late final _Translations$disclaimer$weightEstimate$id weightEstimate = _Translations$disclaimer$weightEstimate$id._(_root);
	@override late final _Translations$disclaimer$healthMetrics$id healthMetrics = _Translations$disclaimer$healthMetrics$id._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$id calorieExpenditure = _Translations$disclaimer$calorieExpenditure$id._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$id extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get portionSmaller => 'Lebih kecil';
	@override String get portionEstimated => 'Perkiraan';
	@override String get portionLarger => 'Lebih besar';
	@override String portionQuestion({required Object ingredient}) => 'Porsi mana yang paling mendekati untuk ${ingredient}?';
	@override String get mealTypeQuestion => 'Ini termasuk waktu makan apa?';
	@override String get localNutritionTip => 'Dihitung dari data nutrisi lokal yang terverifikasi.';
	@override String get offlineNutritionTitle => 'Unduh data nutrisi';
	@override String get offlineNutritionSubtitle => 'Gunakan baris USDA terverifikasi dan penghitungan deterministik di perangkat ini saat semua bahan tercakup.';
	@override String get offlineNutritionUnavailable => 'Data nutrisi lokal tidak tersedia untuk rilis aplikasi ini.';
	@override String get offlineNutritionNotDownloaded => 'Belum ada paket nutrisi terverifikasi yang diunduh.';
	@override String get offlineNutritionInstalling => 'Mengunduh dan memverifikasi data nutrisi…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Paket ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} baris USDA di-cache · ${size}';
	@override String get offlineNutritionUpdate => 'Periksa pembaruan';
	@override String get offlineNutritionClear => 'Hapus data nutrisi lokal';
	@override String get offlineNutritionClearTitle => 'Hapus data nutrisi lokal?';
	@override String get offlineNutritionClearBody => 'Tindakan ini menghapus paket USDA yang diunduh dan cache pencarian. Makanan yang dicatat tetap menyimpan snapshot nutrisi persis yang digunakan saat disimpan.';
	@override String get offlineNutritionClearConfirm => 'Hapus data';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Tidak dapat mengunduh dan memverifikasi data nutrisi lokal: ${error}';
	@override String get offlineNutritionCleared => 'Data nutrisi lokal dihapus';
}

// Path: watch
class _Translations$watch$id extends Translations$watch$en {
	_Translations$watch$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$id common = _Translations$watch$common$id._(_root);
	@override late final _Translations$watch$nutrition$id nutrition = _Translations$watch$nutrition$id._(_root);
	@override late final _Translations$watch$sync$id sync = _Translations$watch$sync$id._(_root);
	@override late final _Translations$watch$home$id home = _Translations$watch$home$id._(_root);
	@override late final _Translations$watch$history$id history = _Translations$watch$history$id._(_root);
	@override late final _Translations$watch$favorites$id favorites = _Translations$watch$favorites$id._(_root);
	@override late final _Translations$watch$meal$id meal = _Translations$watch$meal$id._(_root);
	@override late final _Translations$watch$voice$id voice = _Translations$watch$voice$id._(_root);
	@override late final _Translations$watch$result$id result = _Translations$watch$result$id._(_root);
}

// Path: common
class _Translations$common$id extends Translations$common$en {
	_Translations$common$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Beta';
	@override String get close => 'Tutup';
	@override String get kContinue => 'Lanjutkan';
}

// Path: feedbackRating
class _Translations$feedbackRating$id extends Translations$feedbackRating$en {
	_Translations$feedbackRating$id._(TranslationsId root) : this._root = root, super.internal(root);

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
class _Translations$health$id extends Translations$health$en {
	_Translations$health$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Gagal menyinkronkan ke Health Connect';
	@override String get mealSynced => 'Makanan disinkronkan dengan Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$id extends Translations$onboarding$features$en {
	_Translations$onboarding$features$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$id foodRecognition = _Translations$onboarding$features$foodRecognition$id._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$id aiAnalysis = _Translations$onboarding$features$aiAnalysis$id._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$id healthIntegration = _Translations$onboarding$features$healthIntegration$id._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$id extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apa jenis kelamin Anda?';
	@override String get description => 'Jenis kelamin membantu kami menghitung basal metabolic rate (BMR) secara akurat.';
	@override String get next => 'Berikutnya';
}

// Path: onboarding.height
class _Translations$onboarding$height$id extends Translations$onboarding$height$en {
	_Translations$onboarding$height$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berapa tinggi Anda?';
	@override String get description => 'Tinggi Anda membantu kami menghitung BMI dan kebutuhan energi dengan tepat.';
	@override String get metric => 'Metrik';
	@override String get imperial => 'Satuan imperial';
	@override String get next => 'Berikutnya';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$id extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Berapa berat Anda saat ini?';
	@override String get currentDescription => 'Berat Anda saat ini penting untuk mempersonalisasi target harian Anda.';
	@override String get targetTitle => 'Berapa berat tujuan Anda?';
	@override String get targetDescription => 'Menetapkan berat tujuan membantu kami menentukan rencana jangka panjang Anda.';
	@override String get metric => 'Metrik';
	@override String get imperial => 'Satuan imperial';
	@override String get next => 'Berikutnya';
}

// Path: onboarding.age
class _Translations$onboarding$age$id extends Translations$onboarding$age$en {
	_Translations$onboarding$age$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kapan ulang tahun Anda?';
	@override String get description => 'Usia Anda membantu kami menghitung kebutuhan kalori dengan akurat.';
	@override String get next => 'Berikutnya';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$id extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kurang';
	@override String get healthy => 'Sehat';
	@override String get overweight => 'Lebih';
	@override String get obese => 'Obesitas';
	@override late final _Translations$onboarding$bmiScale$categories$id categories = _Translations$onboarding$bmiScale$categories$id._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$id messages = _Translations$onboarding$bmiScale$messages$id._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$id extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apa tujuan Anda?';
	@override String get description => 'Pilih tujuan yang paling menggambarkan apa yang ingin Anda capai';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$id extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Seberapa aktif Anda?';
	@override String get description => 'Ini membantu kami menghitung kebutuhan kalori harian Anda lebih akurat';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$id extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sambungkan dengan Health Connect';
	@override String get description => 'Sinkronkan data kesehatan Anda untuk wawasan yang lebih baik dan pelacakan kalori otomatis';
	@override String get overviewDescription => 'Gunakan kalori yang dibakar dalam target harian Anda dan, jika diinginkan, bagikan makanan yang dicatat dengan Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$id automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$id._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$id caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$id._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$id progressInsights = _Translations$onboarding$healthConnect$progressInsights$id._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$id shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$id._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$id seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$id._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$id userControl = _Translations$onboarding$healthConnect$userControl$id._(_root);
	@override String get connected => 'Health Connect Terhubung';
	@override String get notConnected => 'Health Connect Tidak Terhubung';
	@override String get setup => 'Siapkan Health Connect';
	@override String get skipForNow => 'Lewati sekarang';
	@override String get statusConnected => 'Health Connect terhubung.';
	@override String get statusSuccess => 'Health Connect berhasil dihubungkan!';
	@override String get statusNotConnected => 'Pilih fitur Health Connect yang ingin Anda aktifkan.';
	@override String get statusPartial => 'Health Connect terhubung sebagian. Aktifkan izin yang tersisa untuk menggunakan kedua fitur.';
	@override String get statusProviderUpdateRequired => 'Pasang atau perbarui Health Connect untuk melanjutkan.';
	@override String get statusUnavailable => 'Health Connect tidak didukung di perangkat ini.';
	@override String get installOrUpdate => 'Pasang atau perbarui';
	@override String get manageAccess => 'Kelola akses';
	@override String statusPermissionDenied({required Object appLabel}) => 'Izin ditolak. Silakan aktifkan izin Health Connect dari pengaturan ponsel untuk ${appLabel}.';
	@override String statusError({required Object error}) => 'Terjadi kesalahan saat menyiapkan Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$id extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$id trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$id._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$id healthProfile = _Translations$onboarding$reinforcement$healthProfile$id._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$id goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$id._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$id extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$id._(TranslationsId root) : this._root = root, super.internal(root);

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
class _Translations$home$dailyGoal$id extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$id._(TranslationsId root) : this._root = root, super.internal(root);

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
	@override String get kcal => 'kilokalori (kcal)';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$id extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ringkasan Harian';
	@override String get calories => 'Kalori';
	@override String get carbs => 'Karbohidrat';
	@override String get protein => 'Asupan protein';
	@override String get fat => 'Lemak';
	@override String get fiber => 'Serat';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Grafik makro';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$id extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pembagian Makro Hari Ini';
	@override String get target => 'Sasaran';
	@override String get current => 'Saat ini';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$id extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Riwayat Makro 7 Hari';
	@override String get trendTitle => 'Tren Hari Ini';
	@override String peakHour({required Object hour}) => 'Puncak: ${hour}:00';
	@override String get noHistoryYet => 'Belum ada riwayat';
	@override String get startLogging => 'Mulai mencatat makanan untuk melihat\ntren makro 7 hari Anda di sini';
}

// Path: home.mealLog
class _Translations$home$mealLog$id extends Translations$home$mealLog$en {
	_Translations$home$mealLog$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Makanan Tercatat';
	@override String get emptyMessage => 'Ambil foto makanan terakhir Anda untuk mencatat di sini.';
	@override String get noMealsToday => 'Belum ada makanan tercatat hari ini';
	@override String get seeAllMeals => 'Lihat semua makanan';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$id extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tambah Cepat dengan AI';
	@override String get description => 'Deskripsikan makanan Anda, dan biarkan AI menangani rinciannya.';
	@override String get hint => 'mis. Untuk sarapan saya makan semangkuk besar oatmeal dengan pisang iris dan satu scoop whey ...';
	@override String get analyzeMeal => 'Analisis makanan';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$id extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$id._(TranslationsId root) : this._root = root, super.internal(root);

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
class _Translations$home$mealSnap$id extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$id._(TranslationsId root) : this._root = root, super.internal(root);

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
class _Translations$home$connectHealth$id extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sinkronkan dengan Health Connect';
	@override String get description => 'Sinkronkan data nutrisi Anda dengan Health Connect';
	@override String get install => 'Pasang';
	@override String get dataUseDescription => 'Gunakan kalori yang dibakar dalam target Anda dan bagikan makanan yang dicatat';
	@override String get installOrUpdate => 'Pasang atau perbarui';
	@override String get connect => 'Sambungkan';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$id extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalori';
	@override String get carbs => 'Karbo (g)';
	@override String get protein => 'Protein (gram)';
	@override String get fat => 'Lemak (g)';
	@override String get fiber => 'Serat (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$id extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hapus Makanan';
	@override String get message => 'Apakah Anda yakin ingin menghapus entri makanan ini?';
	@override String get cancel => 'Batal';
	@override String get delete => 'Hapus';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$id extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Pertanyaan ${current} dari ${total}';
	@override String get noQuestionsAvailable => 'Tidak ada pertanyaan tersedia';
	@override String get next => 'Berikutnya';
	@override String get continueLabel => 'Lanjutkan';
}

// Path: meal.analysis
class _Translations$meal$analysis$id extends Translations$meal$analysis$en {
	_Translations$meal$analysis$id._(TranslationsId root) : this._root = root, super.internal(root);

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
	@override String mealPreviewDescription({required Object text}) => '“${text}”';
	@override String get offlineTip0 => 'Tip: Konsistensi lebih penting daripada kesempurnaan—catatan rutin mengungkap pola yang berarti.';
	@override String get offlineTip1 => 'Tip: Untuk foto, cahaya alami dan sudut atas membantu akurasi porsi.';
	@override String get offlineTip2 => 'Tip: Sebutkan minuman, saus, dan minyak masak—mereka menambah kalori yang sering terlupakan.';
	@override String get offlineTip3 => 'Tip: Catatan porsi singkat (1 mangkuk, kopi besar) membuat perkiraan menjadi lebih tajam.';
	@override String get offlineTip4 => 'Tip: Mencatat setelah makan tetap membangun kebiasaan; kesempurnaan tidak wajib.';
	@override String get offlineTip5 => 'Tip: Sebutkan cara memasak ketika mengubah kalori signifikan (digoreng vs dipanggang).';
}

// Path: meal.localInference
class _Translations$meal$localInference$id extends Translations$meal$localInference$en {
	_Translations$meal$localInference$id._(TranslationsId root) : this._root = root, super.internal(root);

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
}

// Path: meal.feedback
class _Translations$meal$feedback$id extends Translations$meal$feedback$en {
	_Translations$meal$feedback$id._(TranslationsId root) : this._root = root, super.internal(root);

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
class _Translations$favorites$sortOptions$id extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Terbaru';
	@override String get calories => 'Kalori';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _Translations$profile$sections$id extends Translations$profile$sections$en {
	_Translations$profile$sections$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'INFORMASI DASAR';
	@override String get goalsAndActivity => 'TUJUAN & AKTIVITAS';
	@override String get calculatedValues => 'NILAI TERHITUNG';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$id extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Target Harian';
	@override String get calPerDay => 'cal/hari';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$id extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMASI PRIBADI';
	@override String get physicalMeasurements => 'UKURAN FISIK';
	@override String get goalsAndActivity => 'TUJUAN & AKTIVITAS';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$id extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get male => 'Pria';
	@override String get female => 'Wanita';
	@override String get other => 'Lainnya';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$id extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$id loseWeight = _Translations$editProfile$weightGoals$loseWeight$id._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$id maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$id._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$id gainWeight = _Translations$editProfile$weightGoals$gainWeight$id._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$id extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$id sedentary = _Translations$editProfile$activityLevels$sedentary$id._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$id lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$id._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$id moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$id._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$id veryActive = _Translations$editProfile$activityLevels$veryActive$id._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$id extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$id._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$id extends Translations$settings$sections$en {
	_Translations$settings$sections$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALISASI';
	@override String get notifications => 'NOTIFIKASI';
	@override String get healthConnect => 'INTEGRASI HEALTH CONNECT';
	@override String get localInference => 'ANALISIS PADA PERANGKAT';
	@override String get supportAndLegal => 'DUKUNGAN & HUKUM';
	@override String get about => 'TENTANG';
	@override String get dangerZone => 'AREA BERISIKO';
	@override String get developer => 'PENGEMBANG';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$id extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Edit Profil';
	@override String get subtitle => 'Perbarui informasi pribadi Anda';
}

// Path: settings.language
class _Translations$settings$language$id extends Translations$settings$language$en {
	_Translations$settings$language$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bahasa';
	@override String get subtitle => 'Pilih bahasa pilihan Anda';
	@override String get searchHint => 'Cari bahasa...';
	@override String get noResults => 'Tidak ada hasil';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$id extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Satuan Tinggi';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$id extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Satuan Berat';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$id extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengingat Makan';
	@override String get subtitle => 'Tetap pada jalur dengan pengingat tepat waktu';
}

// Path: settings.localInference
class _Translations$settings$localInference$id extends Translations$settings$localInference$en {
	_Translations$settings$localInference$id._(TranslationsId root) : this._root = root, super.internal(root);

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
class _Translations$settings$theme$id extends Translations$settings$theme$en {
	_Translations$settings$theme$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Terang';
	@override String get dark => 'Gelap';
	@override String get system => 'Sistem';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$id extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$id._(TranslationsId root) : this._root = root, super.internal(root);

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
class _Translations$settings$exportMealHistory$id extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ekspor Riwayat Makan';
	@override String get subtitle => 'Bagikan CSV dari makanan yang Anda catat';
	@override String get shareText => 'Ekspor riwayat makanan Calorify Anda';
	@override String failed({required Object error}) => 'Tidak dapat mengekspor riwayat makan: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$id extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hapus Semua Data';
	@override String get subtitle => 'Hapus semua informasi Anda secara tak dapat dikembalikan';
	@override String get localOnlySubtitle => 'Hapus data Calorify yang tersimpan di perangkat ini';
	@override String get confirmationTitle => 'Hapus Semua Data?';
	@override String get confirmationMessage => 'Tindakan ini tidak dapat dibatalkan. Semua catatan makanan, favorit, dan pengaturan profil Anda akan dihapus secara permanen.';
	@override String get localOnlyConfirmationMessage => 'Tindakan ini menghapus secara permanen makanan yang dicatat, favorit, dan pengaturan profil dari perangkat ini. Makanan yang telah dibagikan ke Health Connect dan akses Health Connect dikelola secara terpisah di Pengaturan > Health Connect.';
	@override String get cancel => 'Batal';
	@override String get clearEverything => 'Hapus Semua';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$id extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opsi Debug';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$id extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Lihat dan kelola izin';
	@override late final _Translations$settings$healthConnect$unavailable$id unavailable = _Translations$settings$healthConnect$unavailable$id._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$id updateRequired = _Translations$settings$healthConnect$updateRequired$id._(_root);
	@override late final _Translations$settings$healthConnect$permissions$id permissions = _Translations$settings$healthConnect$permissions$id._(_root);
	@override String get managePermissions => 'Kelola Izin';
	@override String get openSettings => 'Buka Pengaturan Health Connect';
	@override String get disconnect => 'Putuskan Health Connect';
	@override String get disconnectConfirmationTitle => 'Putuskan Health Connect?';
	@override String get disconnectConfirmationMessage => 'Calorify akan kehilangan akses ke Health Connect. Data yang sudah ditulis di sana tidak akan dihapus.';
	@override String get disconnectConfirmationAction => 'Putuskan';
	@override String get deleteSyncedMeals => 'Hapus makanan Calorify dari Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'Hapus makanan tersinkron?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Hapus makanan yang disinkronkan oleh versi Calorify ini dari Health Connect? Catatan makanan lokal Anda tidak akan berubah. Entri Calorify yang lebih lama mungkin masih perlu dihapus melalui Kelola Data di Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Hapus makanan tersinkron';
	@override String get deleteSyncedMealsSuccess => 'Makanan Calorify telah dihapus dari Health Connect.';
	@override String get deleteSyncedMealsFailed => 'Makanan tersinkron tidak dapat dihapus. Silakan coba lagi.';
	@override String get connectionPartial => 'Beberapa fitur Health Connect telah diaktifkan.';
	@override String get connectionComplete => 'Kedua fitur Health Connect telah diaktifkan.';
	@override String get actionFailed => 'Health Connect tidak dapat dibuka. Silakan coba lagi.';
	@override String get requestPermissions => 'Minta Izin';
	@override String get permissionRequestCancelledOrFailed => 'Permintaan izin dibatalkan atau gagal. Silakan coba lagi atau berikan izin secara manual di pengaturan Health Connect.';
	@override String get permissionRequestFailed => 'Tidak dapat meminta izin. Silakan coba lagi atau berikan izin secara manual di pengaturan Health Connect.';
	@override String get requestingPermissions => 'Meminta...';
}

// Path: settings.about
class _Translations$settings$about$id extends Translations$settings$about$en {
	_Translations$settings$about$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tentang';
	@override String get tagline => 'Cepat, gratis, dan mengutamakan privasi untuk kesadaran kalori';
	@override late final _Translations$settings$about$ourStory$id ourStory = _Translations$settings$about$ourStory$id._(_root);
	@override late final _Translations$settings$about$privacy$id privacy = _Translations$settings$about$privacy$id._(_root);
	@override late final _Translations$settings$about$developer$id developer = _Translations$settings$about$developer$id._(_root);
	@override late final _Translations$settings$about$feedback$id feedback = _Translations$settings$about$feedback$id._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$id extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify versi ${version}';
	@override String build({required Object buildNumber}) => 'Build nomor ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$id extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Waktunya Sarapan! 🍳';
	@override String get body => 'Jangan lupa mencatat sarapan Anda';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$id extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Waktunya Makan Siang! 🥗';
	@override String get body => 'Saatnya mencatat makan siang Anda';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$id extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Waktunya Makan Malam! 🍽️';
	@override String get body => 'Jangan lupa mencatat makan malam Anda';
}

// Path: notifications.snack
class _Translations$notifications$snack$id extends Translations$notifications$snack$en {
	_Translations$notifications$snack$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Waktunya Cemilan! 🍎';
	@override String get body => 'Waktunya cemilan sehat';
}

// Path: notifications.test
class _Translations$notifications$test$id extends Translations$notifications$test$en {
	_Translations$notifications$test$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notifikasi Tes';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$id extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} menyediakan informasi nutrisi perkiraan. Ketepatan bergantung pada input Anda & variasi makanan. Gunakan sebagai panduan, bukan sumber pasti. Konsultasikan profesional untuk saran diet personal.';
	@override late final _Translations$disclaimer$snap$portionSize$id portionSize = _Translations$disclaimer$snap$portionSize$id._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$id preparationMethods = _Translations$disclaimer$snap$preparationMethods$id._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$id ingredients = _Translations$disclaimer$snap$ingredients$id._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$id databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$id._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$id extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tentang Perkiraan Berat';
	@override String get description => 'Perubahan berat yang diproyeksikan adalah perkiraan teoretis berdasarkan model kalori masuk vs keluar sederhana. Ini dimaksudkan untuk panduan motivasi saja, bukan prediksi berat aktual Anda.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$id calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$id._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$id biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$id._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$id waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$id._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$id professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$id._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$id extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get description => 'Metrik ini membantu Anda memahami kebutuhan energi tubuh dan membimbing tujuan nutrisi Anda.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$id bmr = _Translations$disclaimer$healthMetrics$bmr$id._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$id tdee = _Translations$disclaimer$healthMetrics$tdee$id._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$id dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$id._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$id extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perkiraan Pengeluaran Kalori';
	@override String get description => 'Saat data Health Connect tidak tersedia, kami memperkirakan kalori yang terbakar hari ini menggunakan Basal Metabolic Rate (BMR) dan tingkat aktivitas Anda (TDEE), diskalakan untuk porsi hari yang telah berlalu.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$id howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$id._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$id professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$id._(_root);
}

// Path: watch.common
class _Translations$watch$common$id extends Translations$watch$common$en {
	_Translations$watch$common$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get back => 'Kembali';
	@override String get cancel => 'Batal';
	@override String get delete => 'Hapus';
	@override String get retry => 'Coba lagi';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$id extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Nutrisi';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} gram';
	@override String get protein => 'Protein';
	@override String get carbs => 'Karbohidrat';
	@override String get fat => 'Lemak';
	@override String get fiber => 'Serat';
}

// Path: watch.sync
class _Translations$watch$sync$id extends Translations$watch$sync$en {
	_Translations$watch$sync$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Sinkronkan dengan ponsel';
	@override String get syncing => 'Menyinkronkan…';
	@override String get synced => 'Tersinkron';
	@override String get syncedJustNow => 'Baru saja tersinkron';
	@override String syncedMinutesAgo({required Object minutes}) => 'Tersinkron ${minutes}m yang lalu';
	@override String get failed => 'Gagal menyinkron';
	@override String get phoneDisconnected => 'Ponsel terputus';
	@override String get tapToSync => 'Ketuk untuk menyinkronkan';
	@override String get refreshFailed => 'Tidak dapat menyegarkan. Periksa ponsel Anda.';
	@override String get openPhone => 'Buka Calorify di ponsel Anda, lalu ketuk segarkan.';
}

// Path: watch.home
class _Translations$watch$home$id extends Translations$watch$home$en {
	_Translations$watch$home$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get today => 'Hari ini';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} kalori dikonsumsi dari ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} melebihi target';
	@override String remaining({required Object calories}) => '${calories} tersisa';
	@override String left({required Object calories}) => '${calories} tersisa';
	@override String goal({required Object calories}) => 'Target ${calories} kcal';
	@override String get logMeal => 'Catat makanan';
	@override String get todayMeals => 'Makanan hari ini';
	@override String todayMealsCount({required Object count}) => 'Makanan hari ini, ${count}';
	@override String viewMore({required Object count}) => 'Lihat ${count} lagi';
	@override String viewMoreSemantics({required Object count}) => '${count} makanan lagi, ketuk untuk melihat semua';
	@override String get noMeals => 'Belum ada makanan yang dicatat';
	@override String get noMealsSemantics => 'Belum ada makanan yang dicatat hari ini';
	@override String get tapLog => 'Ketuk Catat untuk memulai';
	@override String get removedFromQueue => 'Makanan dihapus dari antrean offline.';
	@override String get removedOffline => 'Makanan dihapus secara offline. Akan tersinkron saat ponsel Anda terhubung kembali.';
	@override String get deleteFailed => 'Tidak dapat menghapus makanan';
}

// Path: watch.history
class _Translations$watch$history$id extends Translations$watch$history$en {
	_Translations$watch$history$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Makanan hari ini';
	@override String get refresh => 'Segarkan makanan';
	@override String get loadFailed => 'Tidak dapat memuat makanan';
	@override String get syncFailed => 'Tidak dapat menyinkronkan';
	@override String get emptyTitle => 'Belum ada makanan';
	@override String get emptyMessage => 'Catat makanan dari Beranda untuk melihatnya di sini.';
}

// Path: watch.favorites
class _Translations$watch$favorites$id extends Translations$watch$favorites$en {
	_Translations$watch$favorites$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorit';
	@override String get refresh => 'Segarkan favorit';
	@override String get loadFailed => 'Tidak dapat memuat favorit';
	@override String get syncFailed => 'Tidak dapat menyinkronkan';
	@override String get emptyTitle => 'Belum ada favorit';
	@override String get emptyMessage => 'Bintangi makanan di aplikasi ponsel untuk mencatat sekali ketuk di sini.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} kalori. Ketuk untuk mencatat.';
	@override String logged({required Object name}) => '${name} dicatat!';
	@override String savedOffline({required Object name}) => '${name} disimpan secara offline. Akan tersinkron saat ponsel Anda terhubung kembali.';
	@override String get saveFailed => 'Tidak dapat menyimpan makanan. Silakan coba lagi.';
	@override String get log => 'Catat';
}

// Path: watch.meal
class _Translations$watch$meal$id extends Translations$watch$meal$en {
	_Translations$watch$meal$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kalori, dicatat pada ${time}.';
	@override String get longPressDelete => 'Tekan lama untuk menghapus.';
	@override String get deleteTitle => 'Hapus makanan?';
}

// Path: watch.voice
class _Translations$watch$voice$id extends Translations$watch$voice$en {
	_Translations$watch$voice$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Catat makanan dengan suara';
	@override String get processing => 'Memeriksa makanan Anda…';
	@override String get processingDescription => 'Memperkirakan porsi dan nutrisi';
	@override String get listening => 'Mendengarkan';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Hentikan perekaman';
	@override String get start => 'Ketuk untuk mulai merekam';
	@override String get starting => 'Memulai mikrofon…';
	@override String get prompt => 'Ketuk, lalu jelaskan makanan Anda';
	@override String get tapToRetry => 'Ketuk untuk mencoba lagi';
	@override String get example => 'Coba “2 roti dengan dal”';
	@override String get unavailable => 'Input suara tidak tersedia. Periksa izin mikrofon di pengaturan jam.';
	@override String get didNotStart => 'Mikrofon tidak mulai. Ketuk untuk mencoba lagi.';
	@override String get startFailed => 'Tidak dapat memulai perekaman. Periksa izin mikrofon.';
	@override String get allowMicrophone => 'Izinkan akses mikrofon untuk mencatat makanan dengan suara.';
	@override String get needsConnection => 'Pengenalan suara membutuhkan koneksi. Ketuk untuk mencoba lagi.';
	@override String get microphoneUnavailable => 'Mikrofon tidak tersedia. Ketuk untuk mencoba lagi.';
	@override String get microphoneBusy => 'Mikrofon sedang digunakan. Tunggu sebentar dan coba lagi.';
	@override String get languageUnsupported => 'Input suara tidak mendukung bahasa jam.';
	@override String get temporarilyBusy => 'Input suara sedang sibuk sementara. Tunggu sebentar dan coba lagi.';
	@override String get notRecognized => 'Saya tidak menangkapnya. Ketuk mikrofon dan coba lagi.';
	@override String get noSpeech => 'Tidak terdeteksi suara. Ketuk mikrofon untuk mencoba lagi.';
	@override String get analysisFailed => 'Analisis gagal. Silakan coba lagi.';
	@override String get mealNotIdentified => 'Tidak dapat mengidentifikasi makanan itu. Coba jelaskan dengan cara berbeda.';
}

// Path: watch.result
class _Translations$watch$result$id extends Translations$watch$result$en {
	_Translations$watch$result$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Detail makanan';
	@override String get savedOffline => 'Disimpan secara offline';
	@override String get logged => 'Dicatat!';
	@override String get mealFound => 'Makanan ditemukan';
	@override String get estimatedEnergy => 'Perkiraan energi';
	@override String get logMeal => 'Catat makanan';
	@override String get logging => 'Mencatat…';
	@override String get logAnother => 'Catat lagi';
	@override String get goingBack => 'Kembali…';
	@override String get savedOfflineMessage => 'Makanan disimpan secara offline. Akan tersinkron saat ponsel Anda terhubung kembali.';
	@override String get saveFailed => 'Tidak dapat menyimpan makanan. Silakan coba lagi.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$id extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengenalan Makanan Pintar';
	@override String get description => 'Ambil foto dan biarkan AI mengenali makanan Anda';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$id extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analisis AI';
	@override String get description => 'Dapatkan fakta nutrisi instan dari deskripsi Anda';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$id extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrasi Health Connect';
	@override String get description => 'Sambungkan dengan Health Connect untuk wawasan yang lebih baik';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$id extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Berat badan kurang';
	@override String get healthyWeight => 'Berat badan sehat';
	@override String get overweight => 'Berat badan berlebih';
	@override String get obese => 'Obesitas';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$id extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kami dapat membantu Anda menyusun rencana sehat untuk mencapai berat seimbang dengan makanan padat nutrisi.';
	@override String get healthy => 'Kerja bagus! Anda berada dalam kisaran sehat. Kami akan membantu Anda mempertahankan vitalitas dan energi.';
	@override String overweight({required Object appLabel}) => '${appLabel} akan mempermudah perjalanan Anda dengan pelacakan bertenaga AI untuk membantu mencapai target dengan nyaman.';
	@override String get obese => 'Kami hadir untuk mendukung Anda dengan panduan personal dan strategi berkelanjutan untuk tujuan kesehatan Anda.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$id extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pelacakan Kalori Otomatis';
	@override String get description => 'Lacak kalori yang dibakar dari aplikasi kebugaran Anda';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$id extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalori Terbakar';
	@override String get description => 'Baca total kalori yang dibakar hari ini dari Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$id extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wawasan Kemajuan';
	@override String get description => 'Dapatkan wawasan rinci tentang tren kesehatan Anda';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$id extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bagikan Makanan yang Dicatat';
	@override String get description => 'Tulis makanan yang Anda catat di Calorify ke Health Connect';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$id extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrasi Tanpa Hambatan';
	@override String get description => 'Sinkronkan data dari aplikasi kesehatan favorit Anda';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$id extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kendali Ada pada Anda';
	@override String get description => 'Pilih salah satu izin dan ubah akses kapan saja';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$id extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$id._(TranslationsId root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$healthProfile$id extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$id._(TranslationsId root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$goalLifestyle$id extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$id._(TranslationsId root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$weightGoals$loseWeight$id extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Turunkan Berat';
	@override String get description => 'Buat defisit kalori untuk menurunkan berat badan';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$id extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Pertahankan Berat';
	@override String get description => 'Mempertahankan berat Anda saat ini';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$id extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tambah Berat';
	@override String get description => 'Buat surplus kalori untuk menambah berat';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$id extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentari';
	@override String get description => 'Sedikit atau tidak ada olahraga';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$id extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ringan Aktif';
	@override String get description => 'Olahraga ringan 1-3 hari/minggu';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$id extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Cukup Aktif';
	@override String get description => 'Olahraga sedang 3-5 hari/minggu';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$id extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sangat Aktif';
	@override String get description => 'Olahraga berat 6-7 hari/minggu';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$id extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ekstrem Aktif';
	@override String get description => 'Olahraga sangat berat, pekerjaan fisik';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$id extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect Tidak Tersedia';
	@override String get description => 'Health Connect tidak tersedia di perangkat ini. Silakan pasang Health Connect dari Play Store (Android 9+) atau perbarui ke Android 14+.';
	@override String get unsupportedDescription => 'Health Connect tidak didukung di perangkat ini.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$id extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect perlu diperhatikan';
	@override String get description => 'Pasang atau perbarui Health Connect sebelum mengelola akses.';
	@override String get action => 'Pasang atau perbarui';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$id extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Izin';
	@override String get description => 'Izin berikut diminta untuk menyediakan integrasi Health Connect:';
	@override String get granted => 'Diberikan';
	@override String get notGranted => 'Belum Diberikan';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$id caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$id._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$id nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$id._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$id nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$id._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$id extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kisah Kami';
	@override String content({required Object appLabel}) => '${appLabel} lahir dari satu kekesalan sederhana: sebagian besar aplikasi pelacak kalori terlalu rumit, menuntut input manual terus-menerus, mengenakan biaya langganan tinggi, atau mengorbankan privasi.\n\nSebagai pengembang solo, saya ingin membuat sesuatu yang lebih sederhana dan lebih adil — aplikasi yang menggunakan AI untuk mengurangi usaha, tetap cepat dan gratis digunakan, serta menghargai data kesehatan Anda.\n\n${appLabel} adalah aplikasi yang saya harap ada: tanpa akun, tanpa pelacakan, tanpa iklan — hanya wawasan yang jelas dan praktis serta tujuan kesehatan Anda.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$id extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Privasi Anda Penting';
	@override String get description => 'Privasi bukan sekadar pemikiran tambahan — itu adalah prinsip desain. Berikut arti itu dalam praktik:';
	@override String get noAccounts => 'Tanpa akun\nGunakan aplikasi langsung. Tidak perlu mendaftar, tanpa identitas.';
	@override String noTracking({required Object appLabel}) => 'Tanpa pelacakan perilaku\n${appLabel} tidak memantau aktivitas Anda, membuat profil penggunaan, atau melacak Anda antar aplikasi atau situs web.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Analitik dan diagnostik terbatas\n${appLabel} menggunakan peristiwa dasar aplikasi dan diagnostik kerusakan untuk meningkatkan keandalan. Nilai catatan kesehatan tidak digunakan untuk iklan atau dijual.';
	@override String noAds({required Object appLabel}) => 'Tanpa iklan secara desain\n${appLabel} dibuat untuk bekerja tanpa iklan atau monetisasi berbasis data.';
	@override String get noDataSelling => 'Tidak menjual data\nData kesehatan Anda tidak pernah dijual atau dibagikan dengan pihak ketiga.';
	@override String get localStorage => 'Penyimpanan lokal-pertama\nData Anda tetap di perangkat Anda.';
	@override String get privacyPolicy => 'Kebijakan Privasi';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$id extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dibuat oleh Pengembang Solo';
	@override String description({required Object appLabel}) => '${appLabel} dibuat dan dipelihara oleh satu pengembang solo yang fokus pada pembuatan perangkat lunak kesehatan yang tenang dan menghormati privasi.\n\nUmpan balik dibaca secara pribadi dan membantu membentuk arah aplikasi.';
	@override String get website => 'Situs Web';
	@override String get email => 'Surel';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$id extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Menikmati ${appLabel}?';
	@override String description({required Object appLabel}) => 'Umpan balik Anda membantu membuat ${appLabel} lebih baik untuk semua orang.';
	@override String get rateApp => 'Beri rating di Play Store';
	@override String get sendFeedback => 'Kirim Umpan Balik';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$id extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ukuran Porsi';
	@override String get description => 'Akurasi perkiraan sangat bergantung pada penilaian ukuran porsi yang benar.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$id extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Metode Persiapan';
	@override String description({required Object appLabel}) => 'Metode memasak dapat mengubah kandungan nutrisi secara signifikan. Perkiraan ${appLabel} mungkin tidak selalu memperhitungkan variasi ini.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$id extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bahan';
	@override String get description => 'Hidangan kompleks dengan banyak bahan tersembunyi dapat menyebabkan estimasi yang kurang akurat.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$id extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Batasan Basis Data';
	@override String description({required Object appLabel}) => 'Basis data makanan ${appLabel} luas tetapi mungkin tidak mencakup setiap item makanan atau variasinya.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$id extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Akurasi Kalori';
	@override String get description => 'Perkiraan ini hanya seakurat pencatatan asupan dan pengeluaran kalori Anda. Pencatatan yang tidak akurat akan menghasilkan proyeksi yang tidak akurat.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$id extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Faktor Biologis';
	@override String description({required Object appLabel}) => 'Penurunan/penambahan berat aktual dipengaruhi oleh metabolisme, hormon, tidur, stres, hidrasi, dan faktor individu lain yang tidak dapat diukur oleh ${appLabel}.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$id extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berat Air & Fluktuasi';
	@override String get description => 'Berat harian normal dapat berfluktuasi secara signifikan akibat retensi air, pencernaan, dan waktu. Perkiraan tidak memperhitungkan perubahan harian ini.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$id extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Panduan Profesional';
	@override String get description => 'Jangan gunakan perkiraan ini untuk membuat keputusan medis. Selalu konsultasikan profesional kesehatan atau ahli diet terdaftar untuk saran manajemen berat personal.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$id extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) adalah jumlah kalori yang dibakar tubuh Anda saat istirahat untuk mempertahankan fungsi dasar seperti bernapas dan sirkulasi. BMR bergantung pada usia, jenis kelamin, tinggi, dan berat badan. BMR lebih tinggi berarti tubuh Anda secara alami membakar lebih banyak kalori saat istirahat, seringkali karena massa otot lebih banyak, usia lebih muda, atau laki-laki. BMR lebih rendah biasanya menunjukkan massa otot lebih sedikit, usia lebih tua, atau perempuan.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$id extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) adalah total kalori yang Anda bakar per hari, termasuk BMR ditambah kalori dari aktivitas fisik dan gerakan harian. TDEE bergantung pada BMR dan tingkat aktivitas Anda. TDEE lebih tinggi berarti Anda membakar lebih banyak kalori secara keseluruhan, biasanya karena lebih aktif atau memiliki BMR lebih tinggi. TDEE lebih rendah menunjukkan aktivitas harian yang lebih sedikit atau BMR lebih rendah.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$id extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Target Harian';
	@override String get description => 'Target Harian adalah rekomendasi asupan kalori harian Anda berdasarkan TDEE dan tujuan berat Anda. Untuk penurunan berat, Anda mengonsumsi lebih sedikit kalori daripada TDEE. Untuk mempertahankan berat, Anda mencocokkan TDEE. Untuk penambahan berat, Anda mengonsumsi lebih banyak kalori daripada TDEE. Ini membantu Anda mencapai perubahan berat yang diinginkan dengan kecepatan yang sehat.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$id extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bagaimana Perkiraan Dihitung';
	@override String get description => 'Kami menghitung TDEE Anda (berdasarkan profil Anda) dan mengalikannya dengan fraksi hari yang telah berlalu (jam + menit) / 24 untuk memperkirakan kalori yang terbakar sejauh ini.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$id extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Panduan Profesional';
	@override String get description => 'Jangan gunakan perkiraan ini untuk membuat keputusan medis. Selalu konsultasikan profesional kesehatan atau ahli diet terdaftar untuk saran manajemen berat personal.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$id extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Baca Total Kalori Terbakar';
	@override String get description => 'Memungkinkan aplikasi membaca total kalori yang Anda bakar dari Health Connect.';
	@override String get usage => 'Izin ini digunakan untuk menampilkan pembakaran kalori harian Anda di aplikasi, membantu Anda memahami total pengeluaran energi sepanjang hari.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$id extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$id._(TranslationsId root) : this._root = root, super.internal(root);

	final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Baca Data Nutrisi';
	@override String get description => 'Memungkinkan aplikasi membaca data nutrisi dari Health Connect.';
	@override String get usage => 'Izin ini memungkinkan aplikasi membaca informasi nutrisi yang mungkin telah dicatat oleh aplikasi lain yang terhubung ke Health Connect, memberikan pandangan yang komprehensif tentang nutrisi Anda.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$id extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$id._(TranslationsId root) : this._root = root, super.internal(root);

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
			'onboarding.height.imperial' => 'Satuan imperial',
			'onboarding.height.next' => 'Berikutnya',
			'onboarding.weight.currentTitle' => 'Berapa berat Anda saat ini?',
			'onboarding.weight.currentDescription' => 'Berat Anda saat ini penting untuk mempersonalisasi target harian Anda.',
			'onboarding.weight.targetTitle' => 'Berapa berat tujuan Anda?',
			'onboarding.weight.targetDescription' => 'Menetapkan berat tujuan membantu kami menentukan rencana jangka panjang Anda.',
			'onboarding.weight.metric' => 'Metrik',
			'onboarding.weight.imperial' => 'Satuan imperial',
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
			'onboarding.healthConnect.overviewDescription' => 'Gunakan kalori yang dibakar dalam target harian Anda dan, jika diinginkan, bagikan makanan yang dicatat dengan Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Pelacakan Kalori Otomatis',
			'onboarding.healthConnect.automaticTracking.description' => 'Lacak kalori yang dibakar dari aplikasi kebugaran Anda',
			'onboarding.healthConnect.caloriesBurned.title' => 'Kalori Terbakar',
			'onboarding.healthConnect.caloriesBurned.description' => 'Baca total kalori yang dibakar hari ini dari Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Wawasan Kemajuan',
			'onboarding.healthConnect.progressInsights.description' => 'Dapatkan wawasan rinci tentang tren kesehatan Anda',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Bagikan Makanan yang Dicatat',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Tulis makanan yang Anda catat di Calorify ke Health Connect',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integrasi Tanpa Hambatan',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sinkronkan data dari aplikasi kesehatan favorit Anda',
			'onboarding.healthConnect.userControl.title' => 'Kendali Ada pada Anda',
			'onboarding.healthConnect.userControl.description' => 'Pilih salah satu izin dan ubah akses kapan saja',
			'onboarding.healthConnect.connected' => 'Health Connect Terhubung',
			'onboarding.healthConnect.notConnected' => 'Health Connect Tidak Terhubung',
			'onboarding.healthConnect.setup' => 'Siapkan Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Lewati sekarang',
			'onboarding.healthConnect.statusConnected' => 'Health Connect terhubung.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect berhasil dihubungkan!',
			'onboarding.healthConnect.statusNotConnected' => 'Pilih fitur Health Connect yang ingin Anda aktifkan.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect terhubung sebagian. Aktifkan izin yang tersisa untuk menggunakan kedua fitur.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Pasang atau perbarui Health Connect untuk melanjutkan.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect tidak didukung di perangkat ini.',
			'onboarding.healthConnect.installOrUpdate' => 'Pasang atau perbarui',
			'onboarding.healthConnect.manageAccess' => 'Kelola akses',
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
			'home.dailyGoal.kcal' => 'kilokalori (kcal)',
			'home.dailySummary.title' => 'Ringkasan Harian',
			'home.dailySummary.calories' => 'Kalori',
			'home.dailySummary.carbs' => 'Karbohidrat',
			'home.dailySummary.protein' => 'Asupan protein',
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
			'home.connectHealth.dataUseDescription' => 'Gunakan kalori yang dibakar dalam target Anda dan bagikan makanan yang dicatat',
			'home.connectHealth.installOrUpdate' => 'Pasang atau perbarui',
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
			'meal.nutrition.protein' => 'Protein (gram)',
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
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '“${text}”',
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
			'editProfile.imperial' => 'Satuan imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'pon (lbs)',
			'editProfile.metricCm' => 'Metrik (cm)',
			'editProfile.imperialFtIn' => 'Satuan imperial (ft/in)',
			'editProfile.metricKg' => 'Metrik (kg)',
			'editProfile.imperialLbs' => 'Satuan imperial (lbs)',
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
			'settings.sections.healthConnect' => 'INTEGRASI HEALTH CONNECT',
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
			'settings.clearAllData.localOnlySubtitle' => 'Hapus data Calorify yang tersimpan di perangkat ini',
			'settings.clearAllData.confirmationTitle' => 'Hapus Semua Data?',
			'settings.clearAllData.confirmationMessage' => 'Tindakan ini tidak dapat dibatalkan. Semua catatan makanan, favorit, dan pengaturan profil Anda akan dihapus secara permanen.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Tindakan ini menghapus secara permanen makanan yang dicatat, favorit, dan pengaturan profil dari perangkat ini. Makanan yang telah dibagikan ke Health Connect dan akses Health Connect dikelola secara terpisah di Pengaturan > Health Connect.',
			'settings.clearAllData.cancel' => 'Batal',
			'settings.clearAllData.clearEverything' => 'Hapus Semua',
			'settings.debugOptions.title' => 'Opsi Debug',
			'settings.developerModeEnabled' => 'Mode pengembang diaktifkan!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Lihat dan kelola izin',
			'settings.healthConnect.unavailable.title' => 'Health Connect Tidak Tersedia',
			'settings.healthConnect.unavailable.description' => 'Health Connect tidak tersedia di perangkat ini. Silakan pasang Health Connect dari Play Store (Android 9+) atau perbarui ke Android 14+.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect tidak didukung di perangkat ini.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect perlu diperhatikan',
			'settings.healthConnect.updateRequired.description' => 'Pasang atau perbarui Health Connect sebelum mengelola akses.',
			'settings.healthConnect.updateRequired.action' => 'Pasang atau perbarui',
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
			'settings.healthConnect.disconnect' => 'Putuskan Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Putuskan Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify akan kehilangan akses ke Health Connect. Data yang sudah ditulis di sana tidak akan dihapus.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Putuskan',
			'settings.healthConnect.deleteSyncedMeals' => 'Hapus makanan Calorify dari Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Hapus makanan tersinkron?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Hapus makanan yang disinkronkan oleh versi Calorify ini dari Health Connect? Catatan makanan lokal Anda tidak akan berubah. Entri Calorify yang lebih lama mungkin masih perlu dihapus melalui Kelola Data di Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Hapus makanan tersinkron',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Makanan Calorify telah dihapus dari Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Makanan tersinkron tidak dapat dihapus. Silakan coba lagi.',
			'settings.healthConnect.connectionPartial' => 'Beberapa fitur Health Connect telah diaktifkan.',
			'settings.healthConnect.connectionComplete' => 'Kedua fitur Health Connect telah diaktifkan.',
			'settings.healthConnect.actionFailed' => 'Health Connect tidak dapat dibuka. Silakan coba lagi.',
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
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Analitik dan diagnostik terbatas\n${appLabel} menggunakan peristiwa dasar aplikasi dan diagnostik kerusakan untuk meningkatkan keandalan. Nilai catatan kesehatan tidak digunakan untuk iklan atau dijual.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Tanpa iklan secara desain\n${appLabel} dibuat untuk bekerja tanpa iklan atau monetisasi berbasis data.',
			'settings.about.privacy.noDataSelling' => 'Tidak menjual data\nData kesehatan Anda tidak pernah dijual atau dibagikan dengan pihak ketiga.',
			'settings.about.privacy.localStorage' => 'Penyimpanan lokal-pertama\nData Anda tetap di perangkat Anda.',
			'settings.about.privacy.privacyPolicy' => 'Kebijakan Privasi',
			'settings.about.developer.title' => 'Dibuat oleh Pengembang Solo',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} dibuat dan dipelihara oleh satu pengembang solo yang fokus pada pembuatan perangkat lunak kesehatan yang tenang dan menghormati privasi.\n\nUmpan balik dibaca secara pribadi dan membantu membentuk arah aplikasi.',
			'settings.about.developer.website' => 'Situs Web',
			'settings.about.developer.email' => 'Surel',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Menikmati ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Umpan balik Anda membantu membuat ${appLabel} lebih baik untuk semua orang.',
			'settings.about.feedback.rateApp' => 'Beri rating di Play Store',
			'settings.about.feedback.sendFeedback' => 'Kirim Umpan Balik',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify versi ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build nomor ${buildNumber}',
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
			_ => null,
		} ?? switch (path) {
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
			'localNutritionPhase4.portionSmaller' => 'Lebih kecil',
			'localNutritionPhase4.portionEstimated' => 'Perkiraan',
			'localNutritionPhase4.portionLarger' => 'Lebih besar',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Porsi mana yang paling mendekati untuk ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Ini termasuk waktu makan apa?',
			'localNutritionPhase4.localNutritionTip' => 'Dihitung dari data nutrisi lokal yang terverifikasi.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Unduh data nutrisi',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Gunakan baris USDA terverifikasi dan penghitungan deterministik di perangkat ini saat semua bahan tercakup.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Data nutrisi lokal tidak tersedia untuk rilis aplikasi ini.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Belum ada paket nutrisi terverifikasi yang diunduh.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Mengunduh dan memverifikasi data nutrisi…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Paket ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} baris USDA di-cache · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Periksa pembaruan',
			'localNutritionPhase4.offlineNutritionClear' => 'Hapus data nutrisi lokal',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Hapus data nutrisi lokal?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Tindakan ini menghapus paket USDA yang diunduh dan cache pencarian. Makanan yang dicatat tetap menyimpan snapshot nutrisi persis yang digunakan saat disimpan.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Hapus data',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Tidak dapat mengunduh dan memverifikasi data nutrisi lokal: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Data nutrisi lokal dihapus',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'Kembali',
			'watch.common.cancel' => 'Batal',
			'watch.common.delete' => 'Hapus',
			'watch.common.retry' => 'Coba lagi',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Nutrisi',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} gram',
			'watch.nutrition.protein' => 'Protein',
			'watch.nutrition.carbs' => 'Karbohidrat',
			'watch.nutrition.fat' => 'Lemak',
			'watch.nutrition.fiber' => 'Serat',
			'watch.sync.syncWithPhone' => 'Sinkronkan dengan ponsel',
			'watch.sync.syncing' => 'Menyinkronkan…',
			'watch.sync.synced' => 'Tersinkron',
			'watch.sync.syncedJustNow' => 'Baru saja tersinkron',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Tersinkron ${minutes}m yang lalu',
			'watch.sync.failed' => 'Gagal menyinkron',
			'watch.sync.phoneDisconnected' => 'Ponsel terputus',
			'watch.sync.tapToSync' => 'Ketuk untuk menyinkronkan',
			'watch.sync.refreshFailed' => 'Tidak dapat menyegarkan. Periksa ponsel Anda.',
			'watch.sync.openPhone' => 'Buka Calorify di ponsel Anda, lalu ketuk segarkan.',
			'watch.home.today' => 'Hari ini',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} kalori dikonsumsi dari ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} melebihi target',
			'watch.home.remaining' => ({required Object calories}) => '${calories} tersisa',
			'watch.home.left' => ({required Object calories}) => '${calories} tersisa',
			'watch.home.goal' => ({required Object calories}) => 'Target ${calories} kcal',
			'watch.home.logMeal' => 'Catat makanan',
			'watch.home.todayMeals' => 'Makanan hari ini',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Makanan hari ini, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Lihat ${count} lagi',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} makanan lagi, ketuk untuk melihat semua',
			'watch.home.noMeals' => 'Belum ada makanan yang dicatat',
			'watch.home.noMealsSemantics' => 'Belum ada makanan yang dicatat hari ini',
			'watch.home.tapLog' => 'Ketuk Catat untuk memulai',
			'watch.home.removedFromQueue' => 'Makanan dihapus dari antrean offline.',
			'watch.home.removedOffline' => 'Makanan dihapus secara offline. Akan tersinkron saat ponsel Anda terhubung kembali.',
			'watch.home.deleteFailed' => 'Tidak dapat menghapus makanan',
			'watch.history.title' => 'Makanan hari ini',
			'watch.history.refresh' => 'Segarkan makanan',
			'watch.history.loadFailed' => 'Tidak dapat memuat makanan',
			'watch.history.syncFailed' => 'Tidak dapat menyinkronkan',
			'watch.history.emptyTitle' => 'Belum ada makanan',
			'watch.history.emptyMessage' => 'Catat makanan dari Beranda untuk melihatnya di sini.',
			'watch.favorites.title' => 'Favorit',
			'watch.favorites.refresh' => 'Segarkan favorit',
			'watch.favorites.loadFailed' => 'Tidak dapat memuat favorit',
			'watch.favorites.syncFailed' => 'Tidak dapat menyinkronkan',
			'watch.favorites.emptyTitle' => 'Belum ada favorit',
			'watch.favorites.emptyMessage' => 'Bintangi makanan di aplikasi ponsel untuk mencatat sekali ketuk di sini.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} kalori. Ketuk untuk mencatat.',
			'watch.favorites.logged' => ({required Object name}) => '${name} dicatat!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} disimpan secara offline. Akan tersinkron saat ponsel Anda terhubung kembali.',
			'watch.favorites.saveFailed' => 'Tidak dapat menyimpan makanan. Silakan coba lagi.',
			'watch.favorites.log' => 'Catat',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kalori, dicatat pada ${time}.',
			'watch.meal.longPressDelete' => 'Tekan lama untuk menghapus.',
			'watch.meal.deleteTitle' => 'Hapus makanan?',
			'watch.voice.title' => 'Catat makanan dengan suara',
			'watch.voice.processing' => 'Memeriksa makanan Anda…',
			'watch.voice.processingDescription' => 'Memperkirakan porsi dan nutrisi',
			'watch.voice.listening' => 'Mendengarkan',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Hentikan perekaman',
			'watch.voice.start' => 'Ketuk untuk mulai merekam',
			'watch.voice.starting' => 'Memulai mikrofon…',
			'watch.voice.prompt' => 'Ketuk, lalu jelaskan makanan Anda',
			'watch.voice.tapToRetry' => 'Ketuk untuk mencoba lagi',
			'watch.voice.example' => 'Coba “2 roti dengan dal”',
			'watch.voice.unavailable' => 'Input suara tidak tersedia. Periksa izin mikrofon di pengaturan jam.',
			'watch.voice.didNotStart' => 'Mikrofon tidak mulai. Ketuk untuk mencoba lagi.',
			'watch.voice.startFailed' => 'Tidak dapat memulai perekaman. Periksa izin mikrofon.',
			'watch.voice.allowMicrophone' => 'Izinkan akses mikrofon untuk mencatat makanan dengan suara.',
			'watch.voice.needsConnection' => 'Pengenalan suara membutuhkan koneksi. Ketuk untuk mencoba lagi.',
			'watch.voice.microphoneUnavailable' => 'Mikrofon tidak tersedia. Ketuk untuk mencoba lagi.',
			'watch.voice.microphoneBusy' => 'Mikrofon sedang digunakan. Tunggu sebentar dan coba lagi.',
			'watch.voice.languageUnsupported' => 'Input suara tidak mendukung bahasa jam.',
			'watch.voice.temporarilyBusy' => 'Input suara sedang sibuk sementara. Tunggu sebentar dan coba lagi.',
			'watch.voice.notRecognized' => 'Saya tidak menangkapnya. Ketuk mikrofon dan coba lagi.',
			'watch.voice.noSpeech' => 'Tidak terdeteksi suara. Ketuk mikrofon untuk mencoba lagi.',
			'watch.voice.analysisFailed' => 'Analisis gagal. Silakan coba lagi.',
			'watch.voice.mealNotIdentified' => 'Tidak dapat mengidentifikasi makanan itu. Coba jelaskan dengan cara berbeda.',
			'watch.result.title' => 'Detail makanan',
			'watch.result.savedOffline' => 'Disimpan secara offline',
			'watch.result.logged' => 'Dicatat!',
			'watch.result.mealFound' => 'Makanan ditemukan',
			'watch.result.estimatedEnergy' => 'Perkiraan energi',
			'watch.result.logMeal' => 'Catat makanan',
			'watch.result.logging' => 'Mencatat…',
			'watch.result.logAnother' => 'Catat lagi',
			'watch.result.goingBack' => 'Kembali…',
			'watch.result.savedOfflineMessage' => 'Makanan disimpan secara offline. Akan tersinkron saat ponsel Anda terhubung kembali.',
			'watch.result.saveFailed' => 'Tidak dapat menyimpan makanan. Silakan coba lagi.',
			'common.betaTag' => 'Beta',
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
