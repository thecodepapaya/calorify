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
class TranslationsMs extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsMs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ms,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ms>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsMs _root = this; // ignore: unused_field

	@override 
	TranslationsMs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsMs(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Bahasa Melayu';
	@override String get flag => '🇲🇾';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$ms errors = _Translations$errors$ms._(_root);
	@override late final _Translations$onboarding$ms onboarding = _Translations$onboarding$ms._(_root);
	@override late final _Translations$tabs$ms tabs = _Translations$tabs$ms._(_root);
	@override late final _Translations$home$ms home = _Translations$home$ms._(_root);
	@override late final _Translations$history$ms history = _Translations$history$ms._(_root);
	@override late final _Translations$meal$ms meal = _Translations$meal$ms._(_root);
	@override late final _Translations$favorites$ms favorites = _Translations$favorites$ms._(_root);
	@override late final _Translations$profile$ms profile = _Translations$profile$ms._(_root);
	@override late final _Translations$healthScore$ms healthScore = _Translations$healthScore$ms._(_root);
	@override late final _Translations$editProfile$ms editProfile = _Translations$editProfile$ms._(_root);
	@override late final _Translations$settings$ms settings = _Translations$settings$ms._(_root);
	@override late final _Translations$reminders$ms reminders = _Translations$reminders$ms._(_root);
	@override late final _Translations$notifications$ms notifications = _Translations$notifications$ms._(_root);
	@override late final _Translations$login$ms login = _Translations$login$ms._(_root);
	@override late final _Translations$disclaimer$ms disclaimer = _Translations$disclaimer$ms._(_root);
	@override late final _Translations$watch$ms watch = _Translations$watch$ms._(_root);
	@override late final _Translations$common$ms common = _Translations$common$ms._(_root);
	@override late final _Translations$feedbackRating$ms feedbackRating = _Translations$feedbackRating$ms._(_root);
	@override late final _Translations$health$ms health = _Translations$health$ms._(_root);
}

// Path: errors
class _Translations$errors$ms extends Translations$errors$en {
	_Translations$errors$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$ms extends Translations$onboarding$en {
	_Translations$onboarding$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Selamat datang ke ${appLabel}';
	@override String get subtitle => 'Rakan pemakanan peribadi anda yang dikuasakan oleh AI';
	@override String get getStarted => 'Mula';
	@override late final _Translations$onboarding$features$ms features = _Translations$onboarding$features$ms._(_root);
	@override late final _Translations$onboarding$gender$ms gender = _Translations$onboarding$gender$ms._(_root);
	@override late final _Translations$onboarding$height$ms height = _Translations$onboarding$height$ms._(_root);
	@override late final _Translations$onboarding$weight$ms weight = _Translations$onboarding$weight$ms._(_root);
	@override late final _Translations$onboarding$age$ms age = _Translations$onboarding$age$ms._(_root);
	@override late final _Translations$onboarding$bmiScale$ms bmiScale = _Translations$onboarding$bmiScale$ms._(_root);
	@override late final _Translations$onboarding$weightGoal$ms weightGoal = _Translations$onboarding$weightGoal$ms._(_root);
	@override late final _Translations$onboarding$activityLevel$ms activityLevel = _Translations$onboarding$activityLevel$ms._(_root);
	@override late final _Translations$onboarding$healthConnect$ms healthConnect = _Translations$onboarding$healthConnect$ms._(_root);
	@override late final _Translations$onboarding$reinforcement$ms reinforcement = _Translations$onboarding$reinforcement$ms._(_root);
}

// Path: tabs
class _Translations$tabs$ms extends Translations$tabs$en {
	_Translations$tabs$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Papan Pemuka';
	@override String get history => 'Sejarah';
}

// Path: home
class _Translations$home$ms extends Translations$home$en {
	_Translations$home$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$ms aiSummary = _Translations$home$aiSummary$ms._(_root);
	@override late final _Translations$home$dailyGoal$ms dailyGoal = _Translations$home$dailyGoal$ms._(_root);
	@override late final _Translations$home$dailySummary$ms dailySummary = _Translations$home$dailySummary$ms._(_root);
	@override late final _Translations$home$intakeProgress$ms intakeProgress = _Translations$home$intakeProgress$ms._(_root);
	@override late final _Translations$home$intakeHistory$ms intakeHistory = _Translations$home$intakeHistory$ms._(_root);
	@override late final _Translations$home$mealLog$ms mealLog = _Translations$home$mealLog$ms._(_root);
	@override late final _Translations$home$mealDescription$ms mealDescription = _Translations$home$mealDescription$ms._(_root);
	@override late final _Translations$home$favoriteMeals$ms favoriteMeals = _Translations$home$favoriteMeals$ms._(_root);
	@override late final _Translations$home$mealSnap$ms mealSnap = _Translations$home$mealSnap$ms._(_root);
	@override late final _Translations$home$connectHealth$ms connectHealth = _Translations$home$connectHealth$ms._(_root);
}

// Path: history
class _Translations$history$ms extends Translations$history$en {
	_Translations$history$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Tiada hidangan direkod';
	@override String get emptyMessage => 'Snap gambar hidangan terakhir anda untuk direkod di sini.';
	@override String get today => 'Hari ini';
	@override String get yesterday => 'Semalam';
}

// Path: meal
class _Translations$meal$ms extends Translations$meal$en {
	_Translations$meal$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
	@override String get nameRequired => 'Masukkan nama hidangan sebelum menyimpan.';
	@override String get mealQuantity => 'Kuantiti Hidangan';
	@override String get mealQuantityHint => 'cth., 1 mangkuk, 2 keping';
	@override String get timeOfMeal => 'Masa Hidangan';
	@override String get timeOfMealHint => 'Pilih masa anda makan hidangan';
	@override String get mealType => 'Jenis Hidangan';
	@override late final _Translations$meal$nutrition$ms nutrition = _Translations$meal$nutrition$ms._(_root);
	@override late final _Translations$meal$deleteConfirmation$ms deleteConfirmation = _Translations$meal$deleteConfirmation$ms._(_root);
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
	@override String get imageTooLarge => 'Foto ini masih melebihi 1 MB selepas dimampatkan. Sila pilih foto lain.';
	@override String get failedToSave => 'Gagal menyimpan data. Sila cuba lagi.';
	@override String get skip => 'Langkau';
	@override late final _Translations$meal$questionFlow$ms questionFlow = _Translations$meal$questionFlow$ms._(_root);
	@override late final _Translations$meal$analysis$ms analysis = _Translations$meal$analysis$ms._(_root);
	@override late final _Translations$meal$feedback$ms feedback = _Translations$meal$feedback$ms._(_root);
}

// Path: favorites
class _Translations$favorites$ms extends Translations$favorites$en {
	_Translations$favorites$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
	@override late final _Translations$favorites$sortOptions$ms sortOptions = _Translations$favorites$sortOptions$ms._(_root);
}

// Path: profile
class _Translations$profile$ms extends Translations$profile$en {
	_Translations$profile$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Tiada data profil ditemui';
	@override String get yourProfile => 'Profil Anda';
	@override String get viewAndManage => 'Lihat dan urus maklumat kesihatan anda';
	@override late final _Translations$profile$sections$ms sections = _Translations$profile$sections$ms._(_root);
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
	@override late final _Translations$profile$calculatedValues$ms calculatedValues = _Translations$profile$calculatedValues$ms._(_root);
}

// Path: healthScore
class _Translations$healthScore$ms extends Translations$healthScore$en {
	_Translations$healthScore$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skor Kesihatan';
	@override String get whyThisScore => 'Kenapa skor ini?';
	@override String get note => 'Skor ini adalah anggaran AI berdasarkan bahan yang dikenalpasti dan kepadatan nutrisi. Sentiasa rujuk profesional untuk nasihat pemakanan peribadi.';
	@override String get unhealthy => 'Tidak sihat';
	@override String get healthy => 'Sihat';
	@override String get neutral => 'Seimbang';
}

// Path: editProfile
class _Translations$editProfile$ms extends Translations$editProfile$en {
	_Translations$editProfile$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sunting Profil';
	@override late final _Translations$editProfile$sections$ms sections = _Translations$editProfile$sections$ms._(_root);
	@override String get gender => 'Jantina';
	@override String get dateOfBirth => 'Tarikh Lahir';
	@override String get height => 'Tinggi';
	@override String get weight => 'Berat';
	@override String get weightGoal => 'Matlamat Berat';
	@override String get activityLevel => 'Tahap Aktiviti';
	@override String get metric => 'Metrik';
	@override String get imperial => 'Sistem imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'paun (lbs)';
	@override String get metricCm => 'Metrik (cm)';
	@override String get imperialFtIn => 'Sistem imperial (ft/in)';
	@override String get metricKg => 'Metrik (kg)';
	@override String get imperialLbs => 'Sistem imperial (lbs)';
	@override late final _Translations$editProfile$genders$ms genders = _Translations$editProfile$genders$ms._(_root);
	@override late final _Translations$editProfile$weightGoals$ms weightGoals = _Translations$editProfile$weightGoals$ms._(_root);
	@override late final _Translations$editProfile$activityLevels$ms activityLevels = _Translations$editProfile$activityLevels$ms._(_root);
}

// Path: settings
class _Translations$settings$ms extends Translations$settings$en {
	_Translations$settings$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tetapan';
	@override late final _Translations$settings$sections$ms sections = _Translations$settings$sections$ms._(_root);
	@override late final _Translations$settings$editProfile$ms editProfile = _Translations$settings$editProfile$ms._(_root);
	@override late final _Translations$settings$language$ms language = _Translations$settings$language$ms._(_root);
	@override late final _Translations$settings$heightUnit$ms heightUnit = _Translations$settings$heightUnit$ms._(_root);
	@override late final _Translations$settings$weightUnit$ms weightUnit = _Translations$settings$weightUnit$ms._(_root);
	@override late final _Translations$settings$mealReminders$ms mealReminders = _Translations$settings$mealReminders$ms._(_root);
	@override late final _Translations$settings$theme$ms theme = _Translations$settings$theme$ms._(_root);
	@override late final _Translations$settings$sendFeedback$ms sendFeedback = _Translations$settings$sendFeedback$ms._(_root);
	@override late final _Translations$settings$exportMealHistory$ms exportMealHistory = _Translations$settings$exportMealHistory$ms._(_root);
	@override late final _Translations$settings$clearAllData$ms clearAllData = _Translations$settings$clearAllData$ms._(_root);
	@override late final _Translations$settings$debugOptions$ms debugOptions = _Translations$settings$debugOptions$ms._(_root);
	@override String get developerModeEnabled => 'Mod pembangun diaktifkan!';
	@override late final _Translations$settings$healthConnect$ms healthConnect = _Translations$settings$healthConnect$ms._(_root);
	@override late final _Translations$settings$about$ms about = _Translations$settings$about$ms._(_root);
	@override late final _Translations$settings$appInfo$ms appInfo = _Translations$settings$appInfo$ms._(_root);
}

// Path: reminders
class _Translations$reminders$ms extends Translations$reminders$en {
	_Translations$reminders$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
class _Translations$notifications$ms extends Translations$notifications$en {
	_Translations$notifications$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$ms breakfast = _Translations$notifications$breakfast$ms._(_root);
	@override late final _Translations$notifications$lunch$ms lunch = _Translations$notifications$lunch$ms._(_root);
	@override late final _Translations$notifications$dinner$ms dinner = _Translations$notifications$dinner$ms._(_root);
	@override late final _Translations$notifications$snack$ms snack = _Translations$notifications$snack$ms._(_root);
	@override late final _Translations$notifications$test$ms test = _Translations$notifications$test$ms._(_root);
}

// Path: login
class _Translations$login$ms extends Translations$login$en {
	_Translations$login$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Log Masuk';
	@override String get signInWithGoogle => 'Log masuk dengan Google';
	@override String get signInFailed => 'Log Masuk Google gagal atau dibatalkan.';
}

// Path: disclaimer
class _Translations$disclaimer$ms extends Translations$disclaimer$en {
	_Translations$disclaimer$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Sila Maklum';
	@override late final _Translations$disclaimer$snap$ms snap = _Translations$disclaimer$snap$ms._(_root);
	@override late final _Translations$disclaimer$weightEstimate$ms weightEstimate = _Translations$disclaimer$weightEstimate$ms._(_root);
	@override late final _Translations$disclaimer$healthMetrics$ms healthMetrics = _Translations$disclaimer$healthMetrics$ms._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$ms calorieExpenditure = _Translations$disclaimer$calorieExpenditure$ms._(_root);
}

// Path: watch
class _Translations$watch$ms extends Translations$watch$en {
	_Translations$watch$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$ms common = _Translations$watch$common$ms._(_root);
	@override late final _Translations$watch$nutrition$ms nutrition = _Translations$watch$nutrition$ms._(_root);
	@override late final _Translations$watch$sync$ms sync = _Translations$watch$sync$ms._(_root);
	@override late final _Translations$watch$home$ms home = _Translations$watch$home$ms._(_root);
	@override late final _Translations$watch$history$ms history = _Translations$watch$history$ms._(_root);
	@override late final _Translations$watch$favorites$ms favorites = _Translations$watch$favorites$ms._(_root);
	@override late final _Translations$watch$meal$ms meal = _Translations$watch$meal$ms._(_root);
	@override late final _Translations$watch$voice$ms voice = _Translations$watch$voice$ms._(_root);
	@override late final _Translations$watch$result$ms result = _Translations$watch$result$ms._(_root);
}

// Path: common
class _Translations$common$ms extends Translations$common$en {
	_Translations$common$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Beta';
	@override String get close => 'Tutup';
	@override String get kContinue => 'Teruskan';
}

// Path: feedbackRating
class _Translations$feedbackRating$ms extends Translations$feedbackRating$en {
	_Translations$feedbackRating$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
class _Translations$health$ms extends Translations$health$en {
	_Translations$health$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Tidak dapat menyegerakkan ke Health Connect';
	@override String get mealSynced => 'Hidangan disegerakkan dengan Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$ms extends Translations$onboarding$features$en {
	_Translations$onboarding$features$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$ms foodRecognition = _Translations$onboarding$features$foodRecognition$ms._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$ms aiAnalysis = _Translations$onboarding$features$aiAnalysis$ms._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$ms healthIntegration = _Translations$onboarding$features$healthIntegration$ms._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$ms extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apakah jantina anda?';
	@override String get description => 'Jantina membantu kami mengira kadar metabolisme basal (BMR) dengan tepat.';
	@override String get next => 'Seterusnya';
}

// Path: onboarding.height
class _Translations$onboarding$height$ms extends Translations$onboarding$height$en {
	_Translations$onboarding$height$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berapa tinggi anda?';
	@override String get description => 'Tinggi anda membantu kami mengira BMI dan keperluan tenaga dengan tepat.';
	@override String get metric => 'Metrik';
	@override String get imperial => 'Sistem imperial';
	@override String get next => 'Seterusnya';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$ms extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Berapa berat anda sekarang?';
	@override String get currentDescription => 'Berat semasa anda penting untuk menyesuaikan sasaran harian anda.';
	@override String get targetTitle => 'Berapa berat sasaran anda?';
	@override String get targetDescription => 'Menetapkan berat sasaran membantu kami menentukan pelan jangka panjang anda.';
	@override String get metric => 'Metrik';
	@override String get imperial => 'Sistem imperial';
	@override String get next => 'Seterusnya';
}

// Path: onboarding.age
class _Translations$onboarding$age$ms extends Translations$onboarding$age$en {
	_Translations$onboarding$age$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bila tarikh lahir anda?';
	@override String get description => 'Umur anda membantu kami mengira keperluan kalori dengan tepat.';
	@override String get next => 'Seterusnya';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$ms extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kurang';
	@override String get healthy => 'Sihat';
	@override String get overweight => 'Berlebihan';
	@override String get obese => 'Obes';
	@override late final _Translations$onboarding$bmiScale$categories$ms categories = _Translations$onboarding$bmiScale$categories$ms._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$ms messages = _Translations$onboarding$bmiScale$messages$ms._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$ms extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apakah matlamat anda?';
	@override String get description => 'Pilih matlamat yang paling menggambarkan apa yang anda mahu capai';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$ms extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sejauh mana aktif anda?';
	@override String get description => 'Ini membantu kami mengira keperluan kalori harian anda dengan lebih tepat';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$ms extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sambung dengan Health Connect';
	@override String get description => 'Gunakan kalori yang dibakar dalam matlamat harian anda dan, jika mahu, kongsi hidangan yang direkodkan dengan Health Connect.';
	@override String get overviewDescription => 'Gunakan kalori yang dibakar dalam matlamat harian anda dan, jika mahu, kongsi hidangan yang direkodkan dengan Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$ms automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$ms._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$ms caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$ms._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$ms progressInsights = _Translations$onboarding$healthConnect$progressInsights$ms._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$ms shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$ms._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$ms seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$ms._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$ms userControl = _Translations$onboarding$healthConnect$userControl$ms._(_root);
	@override String get connected => 'Health Connect Disambungkan';
	@override String get notConnected => 'Health Connect Tidak Disambungkan';
	@override String get setup => 'Sediakan Health Connect';
	@override String get skipForNow => 'Langkau buat masa ini';
	@override String get statusConnected => 'Health Connect telah disambungkan.';
	@override String get statusSuccess => 'Health Connect berjaya disambungkan!';
	@override String get statusNotConnected => 'Pilih ciri Health Connect yang ingin anda aktifkan.';
	@override String get statusPartial => 'Health Connect disambungkan sebahagiannya. Aktifkan kebenaran yang selebihnya untuk menggunakan kedua-dua ciri.';
	@override String get statusProviderUpdateRequired => 'Pasang atau kemas kini Health Connect untuk meneruskan.';
	@override String get statusUnavailable => 'Health Connect tidak disokong pada peranti ini.';
	@override String get installOrUpdate => 'Pasang atau kemas kini';
	@override String get manageAccess => 'Urus akses';
	@override String statusPermissionDenied({required Object appLabel}) => 'Kebenaran ditolak. Sila aktifkan kebenaran Health Connect dari tetapan telefon untuk ${appLabel}.';
	@override String statusError({required Object error}) => 'Ralat semasa menyediakan Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$ms extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$ms trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$ms._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$ms healthProfile = _Translations$onboarding$reinforcement$healthProfile$ms._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$ms goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$ms._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$ms extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
class _Translations$home$dailyGoal$ms extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
	@override String get kcal => 'kilokalori (kcal)';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$ms extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ringkasan Harian';
	@override String get calories => 'Kalori';
	@override String get carbs => 'Karbohidrat';
	@override String get protein => 'Jumlah protein';
	@override String get fat => 'Lemak';
	@override String get fiber => 'Serat';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Carta makro';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$ms extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pembahagian Makro Hari Ini';
	@override String get target => 'Sasaran';
	@override String get current => 'Semasa';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$ms extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sejarah Makro 7 Hari';
	@override String get trendTitle => 'Trend Hari Ini';
	@override String peakHour({required Object hour}) => 'Kemuncak: ${hour}:00';
	@override String get noHistoryYet => 'Tiada sejarah lagi';
	@override String get startLogging => 'Mula log hidangan untuk melihat\ntrend makro 7 hari anda di sini';
}

// Path: home.mealLog
class _Translations$home$mealLog$ms extends Translations$home$mealLog$en {
	_Translations$home$mealLog$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hidangan Direkod';
	@override String get emptyMessage => 'Snap gambar hidangan terakhir anda untuk direkod di sini.';
	@override String get noMealsToday => 'Tiada hidangan direkod untuk hari ini';
	@override String get seeAllMeals => 'Lihat semua hidangan';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$ms extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tambah Pantas dengan AI';
	@override String get description => 'Huraikan hidangan anda, dan biarkan AI menguruskan butirannya.';
	@override String get hint => 'cth. untuk sarapan saya makan semangkuk besar oat dengan sebiji pisang dihiris dan satu scoop whey ...';
	@override String get analyzeMeal => 'Analisis hidangan';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$ms extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
class _Translations$home$mealSnap$ms extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
class _Translations$home$connectHealth$ms extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Segerakkan dengan Health Connect';
	@override String get description => 'Gunakan kalori yang dibakar dalam matlamat anda dan kongsi hidangan yang direkodkan';
	@override String get install => 'Pasang atau kemas kini';
	@override String get dataUseDescription => 'Gunakan kalori yang dibakar dalam matlamat anda dan kongsi hidangan yang direkodkan';
	@override String get installOrUpdate => 'Pasang atau kemas kini';
	@override String get connect => 'Sambung';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$ms extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalori';
	@override String get carbs => 'Karbohidrat (g)';
	@override String get protein => 'Protein (gram)';
	@override String get fat => 'Lemak (g)';
	@override String get fiber => 'Serat (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$ms extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Padam Hidangan';
	@override String get message => 'Anda pasti mahu memadam entri hidangan ini?';
	@override String get cancel => 'Batal';
	@override String get delete => 'Padam';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$ms extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Soalan ${current} dari ${total}';
	@override String get noQuestionsAvailable => 'Tiada soalan tersedia';
	@override String get next => 'Seterusnya';
	@override String get continueLabel => 'Teruskan';
	@override String get countQuestion => 'Pilih kuantiti';
	@override String get itemSizeQuestion => 'Pilih saiz item';
	@override String get portionSizeQuestion => 'Pilih saiz hidangan';
	@override String get option6plus => '6 atau lebih';
	@override String get optionSmall => 'Kecil';
	@override String get optionRegular => 'Biasa';
	@override String get optionLarge => 'Besar';
	@override String get optionThin => 'Nipis';
	@override String get optionThick => 'Tebal';
	@override String get optionMini => 'Mini';
	@override String get optionStuffed => 'Berinti';
	@override String get optionHeavy => 'Berat';
	@override String get optionSmaller => 'Lebih kecil';
	@override String get optionTypical => 'Biasa';
	@override String get optionLarger => 'Lebih besar';
	@override String get useEstimate => 'Guna anggaran';
	@override String numberRange({required Object min, required Object max, required Object step}) => 'Dari ${min} hingga ${max}, dengan kenaikan ${step}';
	@override String get invalidNumber => 'Masukkan nilai dalam julat yang dibenarkan';
}

// Path: meal.analysis
class _Translations$meal$analysis$ms extends Translations$meal$analysis$en {
	_Translations$meal$analysis$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
	@override String get providerUnavailable => 'Penyedia analisis hidangan tidak tersedia buat sementara waktu. Sila cuba lagi.';
	@override String get invalidModelOutput => 'Respons hidangan tidak dapat difahami. Sila cuba lagi.';
	@override String get nutritionDataUnavailable => 'Data pemakanan tidak tersedia buat sementara waktu. Sila cuba lagi.';
	@override String get analysisUnavailable => 'Analisis hidangan tidak tersedia buat sementara waktu. Sila cuba lagi.';
	@override String get unresolvedNutrition => 'Kami tidak dapat memadankan data pemakanan untuk hidangan ini dengan yakin. Cuba tambahkan butiran lanjut.';
	@override String get noFoodTip => 'Tiada makanan dikesan. Cuba gambar atau penerangan lain.';
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
	@override String mealPreviewDescription({required Object text}) => '“${text}”';
	@override String calorieRange({required Object min, required Object max}) => 'Julat anggaran: ${min}–${max} kcal';
	@override String get offlineTip0 => 'Tip: Konsistensi lebih penting daripada kesempurnaan—log secara tetap mendedahkan corak yang bermakna.';
	@override String get offlineTip1 => 'Tip: Untuk foto, cahaya semula jadi dan pandangan dari atas membantu ketepatan bahagian.';
	@override String get offlineTip2 => 'Tip: Nyatakan minuman, sos, dan minyak masak—mereka menambah kalori yang sering terlupa.';
	@override String get offlineTip3 => 'Tip: Nota bahagian ringkas (1 mangkuk, kopi besar) menjadikan anggaran lebih tepat.';
	@override String get offlineTip4 => 'Tip: Log selepas makan masih membina tabiat; kesempurnaan bukan wajib.';
	@override String get offlineTip5 => 'Tip: Beritahu cara penyediaan jika ia menukar kalori dengan banyak (goreng vs bakar).';
}

// Path: meal.feedback
class _Translations$meal$feedback$ms extends Translations$meal$feedback$en {
	_Translations$meal$feedback$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
class _Translations$favorites$sortOptions$ms extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Terkini';
	@override String get calories => 'Kalori';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _Translations$profile$sections$ms extends Translations$profile$sections$en {
	_Translations$profile$sections$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'MAKLUMAT ASAS';
	@override String get goalsAndActivity => 'SASARAN & AKTIVITI';
	@override String get calculatedValues => 'NILAI DIKIRA';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$ms extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Sasaran Harian';
	@override String get calPerDay => 'cal/hari';
	@override String get notAvailable => 'T/T';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$ms extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'MAKLUMAT PERIBADI';
	@override String get physicalMeasurements => 'UKURAN FIZIKAL';
	@override String get goalsAndActivity => 'SASARAN & AKTIVITI';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$ms extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get male => 'Lelaki';
	@override String get female => 'Perempuan';
	@override String get other => 'Lain-lain';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$ms extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$ms loseWeight = _Translations$editProfile$weightGoals$loseWeight$ms._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$ms maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$ms._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$ms gainWeight = _Translations$editProfile$weightGoals$gainWeight$ms._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$ms extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$ms sedentary = _Translations$editProfile$activityLevels$sedentary$ms._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$ms lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$ms._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$ms moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$ms._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$ms veryActive = _Translations$editProfile$activityLevels$veryActive$ms._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$ms extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$ms._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$ms extends Translations$settings$sections$en {
	_Translations$settings$sections$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'PENENTUAN LOKAL';
	@override String get notifications => 'PEMBERITAHUAN';
	@override String get healthConnect => 'INTEGRASI HEALTH CONNECT';
	@override String get supportAndLegal => 'SOKONGAN & UNDANG-UNDANG';
	@override String get about => 'TENTANG';
	@override String get dangerZone => 'ZON BERISIKO';
	@override String get developer => 'PEMBANGUN';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$ms extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sunting Profil';
	@override String get subtitle => 'Kemas kini maklumat peribadi anda';
}

// Path: settings.language
class _Translations$settings$language$ms extends Translations$settings$language$en {
	_Translations$settings$language$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bahasa';
	@override String get subtitle => 'Pilih bahasa pilihan anda';
	@override String get searchHint => 'Cari bahasa...';
	@override String get noResults => 'Tiada keputusan ditemui';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$ms extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unit Tinggi';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$ms extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unit Berat';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$ms extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Peringatan Hidangan';
	@override String get subtitle => 'Kekal pada landasan dengan amaran tepat pada masanya';
}

// Path: settings.theme
class _Translations$settings$theme$ms extends Translations$settings$theme$en {
	_Translations$settings$theme$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Cerah';
	@override String get dark => 'Gelap';
	@override String get system => 'Sistem';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$ms extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
class _Translations$settings$exportMealHistory$ms extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eksport Sejarah Hidangan';
	@override String get subtitle => 'Kongsi CSV hidangan yang anda log';
	@override String get shareText => 'Eksport sejarah hidangan Calorify anda';
	@override String failed({required Object error}) => 'Tidak dapat mengeksport sejarah hidangan: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$ms extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kosongkan Semua Data';
	@override String get subtitle => 'Padam data Calorify yang disimpan pada peranti ini';
	@override String get localOnlySubtitle => 'Padam data Calorify yang disimpan pada peranti ini';
	@override String get confirmationTitle => 'Kosongkan Semua Data?';
	@override String get confirmationMessage => 'Ini akan memadamkan secara kekal hidangan yang direkodkan, kegemaran dan tetapan profil daripada peranti ini. Hidangan yang telah dikongsi ke Health Connect dan akses Health Connect diurus secara berasingan dalam Tetapan > Health Connect.';
	@override String get localOnlyConfirmationMessage => 'Ini memadamkan secara kekal hidangan yang direkodkan, kegemaran dan tetapan profil daripada peranti ini. Hidangan yang telah dikongsi ke Health Connect dan akses Health Connect diurus secara berasingan dalam Tetapan > Health Connect.';
	@override String get cancel => 'Batal';
	@override String get clearEverything => 'Padam Semua';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$ms extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pilihan Debug';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$ms extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Lihat dan urus kebenaran';
	@override late final _Translations$settings$healthConnect$unavailable$ms unavailable = _Translations$settings$healthConnect$unavailable$ms._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$ms updateRequired = _Translations$settings$healthConnect$updateRequired$ms._(_root);
	@override late final _Translations$settings$healthConnect$permissions$ms permissions = _Translations$settings$healthConnect$permissions$ms._(_root);
	@override String get managePermissions => 'Urus Kebenaran';
	@override String get openSettings => 'Buka Tetapan Health Connect';
	@override String get disconnect => 'Putuskan sambungan Health Connect';
	@override String get disconnectConfirmationTitle => 'Putuskan sambungan Health Connect?';
	@override String get disconnectConfirmationMessage => 'Calorify akan kehilangan akses kepada Health Connect. Data yang telah ditulis di sana tidak akan dipadamkan.';
	@override String get disconnectConfirmationAction => 'Putuskan sambungan';
	@override String get deleteSyncedMeals => 'Padam hidangan Calorify daripada Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'Padam hidangan yang disegerakkan?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Padam hidangan yang disegerakkan oleh versi Calorify ini daripada Health Connect? Log hidangan setempat anda tidak akan berubah. Entri Calorify yang lebih lama mungkin masih perlu dipadamkan melalui Urus Data dalam Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Padam hidangan yang disegerakkan';
	@override String get deleteSyncedMealsSuccess => 'Hidangan Calorify telah dipadamkan daripada Health Connect.';
	@override String get deleteSyncedMealsFailed => 'Hidangan yang disegerakkan tidak dapat dipadamkan. Sila cuba lagi.';
	@override String get connectionPartial => 'Sesetengah ciri Health Connect diaktifkan.';
	@override String get connectionComplete => 'Kedua-dua ciri Health Connect diaktifkan.';
	@override String get actionFailed => 'Health Connect tidak dapat dibuka. Sila cuba lagi.';
	@override String get requestPermissions => 'Minta Kebenaran';
	@override String get permissionRequestCancelledOrFailed => 'Permintaan kebenaran dibatalkan atau gagal. Sila cuba lagi atau beri kebenaran secara manual di tetapan Health Connect.';
	@override String get permissionRequestFailed => 'Tidak dapat meminta kebenaran. Sila cuba lagi atau beri kebenaran secara manual di tetapan Health Connect.';
	@override String get requestingPermissions => 'Meminta...';
}

// Path: settings.about
class _Translations$settings$about$ms extends Translations$settings$about$en {
	_Translations$settings$about$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tentang';
	@override String get tagline => 'Cepat, percuma, dan mengutamakan privasi untuk kesedaran kalori';
	@override late final _Translations$settings$about$ourStory$ms ourStory = _Translations$settings$about$ourStory$ms._(_root);
	@override late final _Translations$settings$about$privacy$ms privacy = _Translations$settings$about$privacy$ms._(_root);
	@override late final _Translations$settings$about$developer$ms developer = _Translations$settings$about$developer$ms._(_root);
	@override late final _Translations$settings$about$feedback$ms feedback = _Translations$settings$about$feedback$ms._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$ms extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify versi ${version}';
	@override String build({required Object buildNumber}) => 'Binaan ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$ms extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masa Sarapan! 🍳';
	@override String get body => 'Jangan lupa log sarapan anda';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$ms extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masa Makan Tengah Hari! 🥗';
	@override String get body => 'Masa untuk log makan tengah hari anda';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$ms extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masa Makan Malam! 🍽️';
	@override String get body => 'Jangan lupa log makan malam anda';
}

// Path: notifications.snack
class _Translations$notifications$snack$ms extends Translations$notifications$snack$en {
	_Translations$notifications$snack$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Masa Snek! 🍎';
	@override String get body => 'Masa untuk snek sihat';
}

// Path: notifications.test
class _Translations$notifications$test$ms extends Translations$notifications$test$en {
	_Translations$notifications$test$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pemberitahuan Ujian';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$ms extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} menyediakan maklumat pemakanan anggaran. Ketepatan bergantung pada input anda & variasi makanan. Gunakan sebagai panduan, bukan sumber muktamad. Rujuk profesional untuk nasihat pemakanan peribadi.';
	@override late final _Translations$disclaimer$snap$portionSize$ms portionSize = _Translations$disclaimer$snap$portionSize$ms._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$ms preparationMethods = _Translations$disclaimer$snap$preparationMethods$ms._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$ms ingredients = _Translations$disclaimer$snap$ingredients$ms._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$ms databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$ms._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$ms extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mengenai Anggaran Berat';
	@override String get description => 'Perubahan berat yang dijangka adalah anggaran teoretikal berdasarkan model kalori masuk vs keluar yang mudah. Ia bertujuan sebagai panduan motivasi sahaja, bukan ramalan berat sebenar anda.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$ms calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$ms._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$ms biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$ms._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$ms waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$ms._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$ms professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$ms._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$ms extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get description => 'Metik ini membantu anda memahami keperluan tenaga badan anda dan membimbing sasaran pemakanan anda.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$ms bmr = _Translations$disclaimer$healthMetrics$bmr$ms._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$ms tdee = _Translations$disclaimer$healthMetrics$tdee$ms._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$ms dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$ms._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$ms extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anggaran Pembakaran Kalori';
	@override String get description => 'Apabila data Health Connect tidak tersedia, kami menganggarkan kalori yang dibakar hari ini menggunakan BMR dan tahap aktiviti (TDEE), diselaraskan mengikut bahagian hari yang telah berlalu.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$ms howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$ms._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$ms professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$ms._(_root);
}

// Path: watch.common
class _Translations$watch$common$ms extends Translations$watch$common$en {
	_Translations$watch$common$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get back => 'Kembali';
	@override String get cancel => 'Batal';
	@override String get delete => 'Padam';
	@override String get retry => 'Cuba lagi';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$ms extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Nutrien';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} gram';
	@override String get protein => 'Protein';
	@override String get carbs => 'Karbohidrat';
	@override String get fat => 'Lemak';
	@override String get fiber => 'Serat';
}

// Path: watch.sync
class _Translations$watch$sync$ms extends Translations$watch$sync$en {
	_Translations$watch$sync$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Segerakkan dengan telefon';
	@override String get syncing => 'Menyegerakkan…';
	@override String get synced => 'Disegerakkan';
	@override String get syncedJustNow => 'Baru sahaja disegerakkan';
	@override String syncedMinutesAgo({required Object minutes}) => 'Disegerakkan ${minutes}m lalu';
	@override String get failed => 'Gagal menyegerakkan';
	@override String get phoneDisconnected => 'Telefon terputus';
	@override String get tapToSync => 'Ketuk untuk segerakkan';
	@override String get refreshFailed => 'Tidak dapat segarkan. Periksa telefon anda.';
	@override String get openPhone => 'Buka Calorify pada telefon anda, kemudian ketuk Segarkan.';
}

// Path: watch.home
class _Translations$watch$home$ms extends Translations$watch$home$en {
	_Translations$watch$home$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get today => 'Hari ini';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} kalori telah dimakan daripada ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} melebihi sasaran';
	@override String remaining({required Object calories}) => '${calories} baki';
	@override String left({required Object calories}) => '${calories} tinggal';
	@override String goal({required Object calories}) => '${calories} kcal sasaran';
	@override String get logMeal => 'Catat makanan';
	@override String get todayMeals => 'Makanan hari ini';
	@override String todayMealsCount({required Object count}) => 'Makanan hari ini, ${count}';
	@override String viewMore({required Object count}) => 'Lihat ${count} lagi';
	@override String viewMoreSemantics({required Object count}) => '${count} lagi makanan, ketuk untuk lihat semua';
	@override String get noMeals => 'Tiada makanan dicatat';
	@override String get noMealsSemantics => 'Tiada makanan dicatat hari ini';
	@override String get tapLog => 'Ketuk Catat untuk mula';
	@override String get removedFromQueue => 'Makanan dikeluarkan dari barisan luar talian.';
	@override String get removedOffline => 'Makanan dialih keluar luar talian. Ia akan disegerakkan apabila telefon anda bersambung semula.';
	@override String get deleteFailed => 'Tidak dapat memadam makanan';
}

// Path: watch.history
class _Translations$watch$history$ms extends Translations$watch$history$en {
	_Translations$watch$history$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Makanan hari ini';
	@override String get refresh => 'Segarkan makanan';
	@override String get loadFailed => 'Tidak dapat memuatkan makanan';
	@override String get syncFailed => 'Tidak dapat menyegerakkan';
	@override String get emptyTitle => 'Tiada makanan lagi';
	@override String get emptyMessage => 'Catat makanan dari Laman Utama untuk melihatnya di sini.';
}

// Path: watch.favorites
class _Translations$watch$favorites$ms extends Translations$watch$favorites$en {
	_Translations$watch$favorites$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kegemaran';
	@override String get refresh => 'Segarkan kegemaran';
	@override String get loadFailed => 'Tidak dapat memuatkan kegemaran';
	@override String get syncFailed => 'Tidak dapat menyegerakkan';
	@override String get emptyTitle => 'Tiada kegemaran lagi';
	@override String get emptyMessage => 'Tandakan makanan sebagai kegemaran dalam aplikasi telefon untuk log satu ketik di sini.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} kalori. Ketuk untuk catat.';
	@override String logged({required Object name}) => '${name} dicatat!';
	@override String savedOffline({required Object name}) => '${name} disimpan secara luar talian. Ia akan disegerakkan apabila telefon anda bersambung semula.';
	@override String get saveFailed => 'Tidak dapat menyimpan makanan. Sila cuba lagi.';
	@override String get log => 'Catat';
}

// Path: watch.meal
class _Translations$watch$meal$ms extends Translations$watch$meal$en {
	_Translations$watch$meal$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kalori, dicatat pada ${time}.';
	@override String get longPressDelete => 'Tekan lama untuk padam.';
	@override String get deleteTitle => 'Padam makanan?';
}

// Path: watch.voice
class _Translations$watch$voice$ms extends Translations$watch$voice$en {
	_Translations$watch$voice$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Log makanan melalui suara';
	@override String get processing => 'Memeriksa makanan anda…';
	@override String get processingDescription => 'Menganggarkan saiz hidangan dan nutrisi';
	@override String get listening => 'Mendengar';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Hentikan rakaman';
	@override String get start => 'Ketuk untuk mula rakaman';
	@override String get starting => 'Mengaktifkan mikrofon…';
	@override String get prompt => 'Ketuk, kemudian terangkan makanan anda';
	@override String get tapToRetry => 'Ketuk untuk cuba lagi';
	@override String get example => 'Cuba “2 roti dengan dal”';
	@override String get unavailable => 'Input suara tidak tersedia. Semak kebenaran mikrofon dalam tetapan jam.';
	@override String get didNotStart => 'Mikrofon tidak bermula. Ketuk untuk cuba lagi.';
	@override String get startFailed => 'Tidak dapat memulakan rakaman. Semak kebenaran mikrofon.';
	@override String get allowMicrophone => 'Benarkan akses mikrofon untuk mencatat makanan melalui suara.';
	@override String get needsConnection => 'Pengecaman suara memerlukan sambungan. Ketuk untuk cuba lagi.';
	@override String get microphoneUnavailable => 'Mikrofon tidak tersedia. Ketuk untuk cuba lagi.';
	@override String get microphoneBusy => 'Mikrofon sedang digunakan. Tunggu sebentar dan cuba lagi.';
	@override String get languageUnsupported => 'Input suara tidak menyokong bahasa jam.';
	@override String get temporarilyBusy => 'Input suara sedang sibuk buat masa ini. Tunggu sebentar dan cuba lagi.';
	@override String get notRecognized => 'Saya tidak faham. Ketuk ikon mikrofon dan cuba lagi.';
	@override String get noSpeech => 'Tiada suara dikesan. Ketuk ikon mikrofon untuk cuba lagi.';
	@override String get analysisFailed => 'Analisis gagal. Sila cuba lagi.';
	@override String get mealNotIdentified => 'Tidak dapat kenal pasti makanan itu. Cuba terangkan dengan cara lain.';
}

// Path: watch.result
class _Translations$watch$result$ms extends Translations$watch$result$en {
	_Translations$watch$result$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perincian makanan';
	@override String get savedOffline => 'Disimpan secara luar talian';
	@override String get logged => 'Dicatat!';
	@override String get mealFound => 'Makanan ditemui';
	@override String get estimatedEnergy => 'Anggaran tenaga';
	@override String get logMeal => 'Catat makanan';
	@override String get logging => 'Mencatat…';
	@override String get logAnother => 'Catat lagi';
	@override String get goingBack => 'Kembali…';
	@override String get savedOfflineMessage => 'Makanan disimpan secara luar talian. Ia akan disegerakkan apabila telefon anda bersambung semula.';
	@override String get saveFailed => 'Tidak dapat menyimpan makanan. Sila cuba lagi.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$ms extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pengesanan Makanan Pintar';
	@override String get description => 'Ambil gambar dan biarkan AI kenal pasti hidangan anda';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$ms extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analisis AI';
	@override String get description => 'Dapatkan fakta pemakanan segera daripada penerangan anda';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$ms extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrasi Kesihatan';
	@override String get description => 'Sambungkan dengan Health Connect untuk maklumat yang lebih baik';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$ms extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Berat kurang';
	@override String get healthyWeight => 'Berat sihat';
	@override String get overweight => 'Berat berlebihan';
	@override String get obese => 'Obes';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$ms extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Kami boleh membantu anda membina pelan sihat untuk mencapai berat seimbang dengan makanan berkhasiat.';
	@override String get healthy => 'Bagus! Anda berada dalam julat sihat. Kami akan membantu mengekalkan tenaga dan kecergasan anda.';
	@override String overweight({required Object appLabel}) => '${appLabel} akan memudahkan perjalanan anda dengan pengesanan dikuasakan AI untuk membantu anda mencapai sasaran dengan selesa.';
	@override String get obese => 'Kami sedia menyokong anda dengan panduan peribadi dan strategi mampan untuk matlamat kesihatan anda.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$ms extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalori Dibakar';
	@override String get description => 'Baca jumlah kalori yang dibakar hari ini daripada Health Connect';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$ms extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalori Dibakar';
	@override String get description => 'Baca jumlah kalori yang dibakar hari ini daripada Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$ms extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kongsi Hidangan yang Direkodkan';
	@override String get description => 'Tulis hidangan yang anda rekod dalam Calorify ke Health Connect';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$ms extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kongsi Hidangan yang Direkodkan';
	@override String get description => 'Tulis hidangan yang anda rekod dalam Calorify ke Health Connect';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$ms extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anda yang Mengawal';
	@override String get description => 'Pilih salah satu kebenaran dan ubah akses pada bila-bila masa';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$ms extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anda yang Mengawal';
	@override String get description => 'Pilih salah satu kebenaran dan ubah akses pada bila-bila masa';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$ms extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$healthProfile$ms extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$goalLifestyle$ms extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$weightGoals$loseWeight$ms extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Turunkan Berat';
	@override String get description => 'Cipta defisit kalori untuk menurunkan berat';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$ms extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kekalkan Berat';
	@override String get description => 'Kekalkan berat semasa anda';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$ms extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tambah Berat';
	@override String get description => 'Cipta lebihan kalori untuk menambah berat';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$ms extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Tidak Aktif';
	@override String get description => 'Sedikit atau tiada senaman';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$ms extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Kurang Aktif';
	@override String get description => 'Senaman ringan 1-3 hari/minggu';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$ms extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sederhana Aktif';
	@override String get description => 'Senaman sederhana 3-5 hari/minggu';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$ms extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sangat Aktif';
	@override String get description => 'Senaman berat 6-7 hari/minggu';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$ms extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Amat Aktif';
	@override String get description => 'Senaman sangat berat atau kerja fizikal';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$ms extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect Tidak Tersedia';
	@override String get description => 'Health Connect tidak disokong pada peranti ini.';
	@override String get unsupportedDescription => 'Health Connect tidak disokong pada peranti ini.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$ms extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect memerlukan perhatian';
	@override String get description => 'Pasang atau kemas kini Health Connect sebelum mengurus akses.';
	@override String get action => 'Pasang atau kemas kini';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$ms extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kebenaran';
	@override String get description => 'Kebenaran berikut diminta untuk menyediakan integrasi Health Connect:';
	@override String get granted => 'Diberi';
	@override String get notGranted => 'Belum Diberi';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$ms caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$ms._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$ms nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$ms._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$ms nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$ms._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$ms extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kisah Kami';
	@override String content({required Object appLabel}) => '${appLabel} lahir daripada kekecewaan ringkas: kebanyakan aplikasi pengesanan kalori terlalu rumit, memerlukan input manual berterusan, mengenakan yuran langganan tinggi, atau mengkompromi privasi.\n\nSebagai pembangun solo, saya mahu membina sesuatu yang lebih ringkas dan adil — sebuah aplikasi yang menggunakan AI untuk mengurangkan usaha, kekal pantas dan percuma untuk digunakan, serta menghormati data kesihatan anda.\n\n${appLabel} ialah aplikasi yang saya harap wujud: tiada akaun, tiada penjejakan, tiada iklan — cuma wawasan yang jelas dan praktikal serta matlamat kesihatan anda.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$ms extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Privasi Anda Penting';
	@override String get description => 'Privasi bukan selepas-fikir — ia adalah prinsip reka bentuk. Ini maksudnya dalam amalan:';
	@override String get noAccounts => 'Tiada akaun diperlukan\nGunakan aplikasi serta-merta. Tiada pendaftaran, tiada identiti.';
	@override String noTracking({required Object appLabel}) => 'Analitik dan diagnostik terhad\n${appLabel} menggunakan peristiwa asas aplikasi dan diagnostik ranap untuk meningkatkan kebolehpercayaan. Nilai rekod kesihatan tidak digunakan untuk pengiklanan atau dijual.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Analitik dan diagnostik terhad\n${appLabel} menggunakan peristiwa asas aplikasi dan diagnostik ranap untuk meningkatkan kebolehpercayaan. Nilai rekod kesihatan tidak digunakan untuk pengiklanan atau dijual.';
	@override String noAds({required Object appLabel}) => 'Tiada iklan secara reka bentuk\n${appLabel} dibina untuk berfungsi tanpa iklan atau pemanfaatkan data.';
	@override String get noDataSelling => 'Tiada penjualan data\nData kesihatan anda tidak pernah dijual atau dikongsi dengan pihak ketiga.';
	@override String get localStorage => 'Penyimpanan bermula-lokal\nData anda kekal pada peranti anda.';
	@override String get privacyPolicy => 'Dasar Privasi';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$ms extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dibina oleh Pembangun Solo';
	@override String description({required Object appLabel}) => '${appLabel} dibina dan diselenggara oleh seorang pembangun solo yang memberi tumpuan kepada mencipta perisian kesihatan yang tenang dan menghormati privasi.\n\nMaklum balas dibaca secara peribadi dan membantu membentuk hala tuju aplikasi.';
	@override String get website => 'Laman Web';
	@override String get email => 'E-mel';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$ms extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Menikmati ${appLabel}?';
	@override String description({required Object appLabel}) => 'Maklum balas anda membantu menjadikan ${appLabel} lebih baik untuk semua.';
	@override String get rateApp => 'Beri penilaian di Play Store';
	@override String get sendFeedback => 'Hantar Maklum Balas';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$ms extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Saiz Bahagian';
	@override String get description => 'Ketepatan anggaran bergantung kuat pada penilaian saiz bahagian yang betul oleh anda.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$ms extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kaedah Penyediaan';
	@override String description({required Object appLabel}) => 'Kaedah memasak boleh mengubah kandungan pemakanan makanan dengan ketara. Anggaran ${appLabel} mungkin tidak sentiasa mengambil kira variasi ini.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$ms extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bahan';
	@override String get description => 'Hidangan kompleks dengan banyak bahan tersembunyi mungkin menghasilkan anggaran kurang tepat.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$ms extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Had Pangkalan Data';
	@override String description({required Object appLabel}) => 'Pangkalan data makanan ${appLabel} luas tetapi mungkin tidak mengandungi setiap item makanan atau variasinya.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$ms extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ketepatan Kalori';
	@override String get description => 'Anggaran ini hanya setepat pengambilan dan perbelanjaan kalori yang anda log. Pencatatan tidak tepat akan menghasilkan unjuran yang tidak tepat.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$ms extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Faktor Biologi';
	@override String description({required Object appLabel}) => 'Kehilangan/penambahan berat sebenar dipengaruhi oleh metabolisme, hormon, tidur, tekanan, hidrasi, dan faktor individu lain yang ${appLabel} tidak dapat ukur.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$ms extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berat Air & Fluktuasi';
	@override String get description => 'Berat harian normal boleh berfluktuasi dengan ketara disebabkan penahanan air, pencernaan, dan masa. Anggaran tidak mengambil kira perubahan harian ini.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$ms extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Panduan Profesional';
	@override String get description => 'Jangan gunakan anggaran ini untuk membuat keputusan perubatan. Sentiasa rujuk profesional kesihatan atau pakar diet berdaftar untuk nasihat pengurusan berat peribadi.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$ms extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) ialah jumlah kalori yang badan anda bakar ketika berehat untuk mengekalkan fungsi asas seperti bernafas dan peredaran. BMR bergantung pada umur, jantina, tinggi, dan berat anda. BMR lebih tinggi bermaksud badan anda secara semula jadi membakar lebih banyak kalori ketika berehat, sering kerana lebih banyak jisim otot, usia lebih muda, atau jantina lelaki. BMR lebih rendah biasanya menunjukkan jisim otot berkurang, usia lebih tua, atau jantina perempuan.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$ms extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) ialah jumlah kalori yang anda bakar sehari, termasuk BMR anda ditambah kalori dari aktiviti fizikal dan pergerakan harian. TDEE bergantung pada BMR dan tahap aktiviti anda. TDEE lebih tinggi bermaksud anda membakar lebih banyak kalori keseluruhan, biasanya kerana lebih aktif atau mempunyai BMR lebih tinggi. TDEE lebih rendah menunjukkan aktiviti harian kurang atau BMR lebih rendah.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$ms extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sasaran Harian';
	@override String get description => 'Sasaran Harian ialah pengambilan kalori harian yang disyorkan berdasarkan TDEE dan matlamat berat anda. Untuk penurunan berat, anda mengambil lebih sedikit kalori daripada TDEE anda. Untuk mengekalkan berat, anda menyamai TDEE anda. Untuk penambahan berat, anda mengambil lebih banyak kalori daripada TDEE anda. Ini membantu anda mencapai perubahan berat yang diingini pada kadar sihat.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$ms extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bagaimana Anggaran Dikira';
	@override String get description => 'Kami mengira TDEE anda (berdasarkan profil anda) dan mendarabkannya dengan pecahan hari yang telah berlalu (jam + minit) / 24 untuk menganggarkan kalori yang dibakar setakat ini.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$ms extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Panduan Profesional';
	@override String get description => 'Jangan gunakan anggaran ini untuk membuat keputusan perubatan. Sentiasa rujuk profesional kesihatan atau pakar diet berdaftar untuk nasihat pengurusan berat peribadi.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$ms extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Baca Jumlah Kalori Dibakar';
	@override String get description => 'Membenarkan aplikasi membaca jumlah kalori anda yang dibakar dari Health Connect.';
	@override String get usage => 'Kebenaran ini digunakan untuk memaparkan pembakaran kalori harian anda dalam aplikasi, membantu anda memahami perbelanjaan tenaga keseluruhan anda sepanjang hari.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$ms extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$ms._(TranslationsMs root) : this._root = root, super.internal(root);

	final TranslationsMs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Baca Data Pemakanan';
	@override String get description => 'Membenarkan aplikasi membaca data pemakanan dari Health Connect.';
	@override String get usage => 'Kebenaran ini membolehkan aplikasi membaca maklumat pemakanan yang mungkin telah direkod oleh aplikasi lain yang disambungkan ke Health Connect, memberikan gambaran menyeluruh tentang pemakanan anda.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$ms extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$ms._(TranslationsMs root) : this._root = root, super.internal(root);

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
			'onboarding.height.imperial' => 'Sistem imperial',
			'onboarding.height.next' => 'Seterusnya',
			'onboarding.weight.currentTitle' => 'Berapa berat anda sekarang?',
			'onboarding.weight.currentDescription' => 'Berat semasa anda penting untuk menyesuaikan sasaran harian anda.',
			'onboarding.weight.targetTitle' => 'Berapa berat sasaran anda?',
			'onboarding.weight.targetDescription' => 'Menetapkan berat sasaran membantu kami menentukan pelan jangka panjang anda.',
			'onboarding.weight.metric' => 'Metrik',
			'onboarding.weight.imperial' => 'Sistem imperial',
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
			'onboarding.healthConnect.description' => 'Gunakan kalori yang dibakar dalam matlamat harian anda dan, jika mahu, kongsi hidangan yang direkodkan dengan Health Connect.',
			'onboarding.healthConnect.overviewDescription' => 'Gunakan kalori yang dibakar dalam matlamat harian anda dan, jika mahu, kongsi hidangan yang direkodkan dengan Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Kalori Dibakar',
			'onboarding.healthConnect.automaticTracking.description' => 'Baca jumlah kalori yang dibakar hari ini daripada Health Connect',
			'onboarding.healthConnect.caloriesBurned.title' => 'Kalori Dibakar',
			'onboarding.healthConnect.caloriesBurned.description' => 'Baca jumlah kalori yang dibakar hari ini daripada Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Kongsi Hidangan yang Direkodkan',
			'onboarding.healthConnect.progressInsights.description' => 'Tulis hidangan yang anda rekod dalam Calorify ke Health Connect',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Kongsi Hidangan yang Direkodkan',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Tulis hidangan yang anda rekod dalam Calorify ke Health Connect',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Anda yang Mengawal',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Pilih salah satu kebenaran dan ubah akses pada bila-bila masa',
			'onboarding.healthConnect.userControl.title' => 'Anda yang Mengawal',
			'onboarding.healthConnect.userControl.description' => 'Pilih salah satu kebenaran dan ubah akses pada bila-bila masa',
			'onboarding.healthConnect.connected' => 'Health Connect Disambungkan',
			'onboarding.healthConnect.notConnected' => 'Health Connect Tidak Disambungkan',
			'onboarding.healthConnect.setup' => 'Sediakan Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Langkau buat masa ini',
			'onboarding.healthConnect.statusConnected' => 'Health Connect telah disambungkan.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect berjaya disambungkan!',
			'onboarding.healthConnect.statusNotConnected' => 'Pilih ciri Health Connect yang ingin anda aktifkan.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect disambungkan sebahagiannya. Aktifkan kebenaran yang selebihnya untuk menggunakan kedua-dua ciri.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Pasang atau kemas kini Health Connect untuk meneruskan.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect tidak disokong pada peranti ini.',
			'onboarding.healthConnect.installOrUpdate' => 'Pasang atau kemas kini',
			'onboarding.healthConnect.manageAccess' => 'Urus akses',
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
			'home.dailyGoal.kcal' => 'kilokalori (kcal)',
			'home.dailySummary.title' => 'Ringkasan Harian',
			'home.dailySummary.calories' => 'Kalori',
			'home.dailySummary.carbs' => 'Karbohidrat',
			'home.dailySummary.protein' => 'Jumlah protein',
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
			'home.connectHealth.description' => 'Gunakan kalori yang dibakar dalam matlamat anda dan kongsi hidangan yang direkodkan',
			'home.connectHealth.install' => 'Pasang atau kemas kini',
			'home.connectHealth.dataUseDescription' => 'Gunakan kalori yang dibakar dalam matlamat anda dan kongsi hidangan yang direkodkan',
			'home.connectHealth.installOrUpdate' => 'Pasang atau kemas kini',
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
			'meal.nameRequired' => 'Masukkan nama hidangan sebelum menyimpan.',
			'meal.mealQuantity' => 'Kuantiti Hidangan',
			'meal.mealQuantityHint' => 'cth., 1 mangkuk, 2 keping',
			'meal.timeOfMeal' => 'Masa Hidangan',
			'meal.timeOfMealHint' => 'Pilih masa anda makan hidangan',
			'meal.mealType' => 'Jenis Hidangan',
			'meal.nutrition.calories' => 'Kalori',
			'meal.nutrition.carbs' => 'Karbohidrat (g)',
			'meal.nutrition.protein' => 'Protein (gram)',
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
			'meal.imageTooLarge' => 'Foto ini masih melebihi 1 MB selepas dimampatkan. Sila pilih foto lain.',
			'meal.failedToSave' => 'Gagal menyimpan data. Sila cuba lagi.',
			'meal.skip' => 'Langkau',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Soalan ${current} dari ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Tiada soalan tersedia',
			'meal.questionFlow.next' => 'Seterusnya',
			'meal.questionFlow.continueLabel' => 'Teruskan',
			'meal.questionFlow.countQuestion' => 'Pilih kuantiti',
			'meal.questionFlow.itemSizeQuestion' => 'Pilih saiz item',
			'meal.questionFlow.portionSizeQuestion' => 'Pilih saiz hidangan',
			'meal.questionFlow.option6plus' => '6 atau lebih',
			'meal.questionFlow.optionSmall' => 'Kecil',
			'meal.questionFlow.optionRegular' => 'Biasa',
			'meal.questionFlow.optionLarge' => 'Besar',
			'meal.questionFlow.optionThin' => 'Nipis',
			'meal.questionFlow.optionThick' => 'Tebal',
			'meal.questionFlow.optionMini' => 'Mini',
			'meal.questionFlow.optionStuffed' => 'Berinti',
			'meal.questionFlow.optionHeavy' => 'Berat',
			'meal.questionFlow.optionSmaller' => 'Lebih kecil',
			'meal.questionFlow.optionTypical' => 'Biasa',
			'meal.questionFlow.optionLarger' => 'Lebih besar',
			'meal.questionFlow.useEstimate' => 'Guna anggaran',
			'meal.questionFlow.numberRange' => ({required Object min, required Object max, required Object step}) => 'Dari ${min} hingga ${max}, dengan kenaikan ${step}',
			'meal.questionFlow.invalidNumber' => 'Masukkan nilai dalam julat yang dibenarkan',
			'meal.analysis.title' => 'Menganalisis hidangan anda',
			'meal.analysis.stepStarted' => 'Bermula…',
			'meal.analysis.stepDecomposition' => 'Memahami hidangan anda…',
			'meal.analysis.stepIngredients' => 'Memadankan bahan dengan data pemakanan…',
			'meal.analysis.stepUncertainty' => 'Menyemak keyakinan…',
			'meal.analysis.stepMealTypeQuestion' => 'Hampir siap…',
			'meal.analysis.stepResult' => 'Memfinalkan keputusan anda…',
			'meal.analysis.stepError' => 'Ada yang tidak kena',
			'meal.analysis.providerUnavailable' => 'Penyedia analisis hidangan tidak tersedia buat sementara waktu. Sila cuba lagi.',
			'meal.analysis.invalidModelOutput' => 'Respons hidangan tidak dapat difahami. Sila cuba lagi.',
			'meal.analysis.nutritionDataUnavailable' => 'Data pemakanan tidak tersedia buat sementara waktu. Sila cuba lagi.',
			'meal.analysis.analysisUnavailable' => 'Analisis hidangan tidak tersedia buat sementara waktu. Sila cuba lagi.',
			'meal.analysis.unresolvedNutrition' => 'Kami tidak dapat memadankan data pemakanan untuk hidangan ini dengan yakin. Cuba tambahkan butiran lanjut.',
			'meal.analysis.noFoodTip' => 'Tiada makanan dikesan. Cuba gambar atau penerangan lain.',
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
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '“${text}”',
			'meal.analysis.calorieRange' => ({required Object min, required Object max}) => 'Julat anggaran: ${min}–${max} kcal',
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
			'healthScore.neutral' => 'Seimbang',
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
			'editProfile.imperial' => 'Sistem imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'paun (lbs)',
			'editProfile.metricCm' => 'Metrik (cm)',
			'editProfile.imperialFtIn' => 'Sistem imperial (ft/in)',
			'editProfile.metricKg' => 'Metrik (kg)',
			'editProfile.imperialLbs' => 'Sistem imperial (lbs)',
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
			'settings.sections.healthConnect' => 'INTEGRASI HEALTH CONNECT',
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
			'settings.clearAllData.subtitle' => 'Padam data Calorify yang disimpan pada peranti ini',
			'settings.clearAllData.localOnlySubtitle' => 'Padam data Calorify yang disimpan pada peranti ini',
			'settings.clearAllData.confirmationTitle' => 'Kosongkan Semua Data?',
			'settings.clearAllData.confirmationMessage' => 'Ini akan memadamkan secara kekal hidangan yang direkodkan, kegemaran dan tetapan profil daripada peranti ini. Hidangan yang telah dikongsi ke Health Connect dan akses Health Connect diurus secara berasingan dalam Tetapan > Health Connect.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Ini memadamkan secara kekal hidangan yang direkodkan, kegemaran dan tetapan profil daripada peranti ini. Hidangan yang telah dikongsi ke Health Connect dan akses Health Connect diurus secara berasingan dalam Tetapan > Health Connect.',
			'settings.clearAllData.cancel' => 'Batal',
			'settings.clearAllData.clearEverything' => 'Padam Semua',
			'settings.debugOptions.title' => 'Pilihan Debug',
			'settings.developerModeEnabled' => 'Mod pembangun diaktifkan!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Lihat dan urus kebenaran',
			'settings.healthConnect.unavailable.title' => 'Health Connect Tidak Tersedia',
			'settings.healthConnect.unavailable.description' => 'Health Connect tidak disokong pada peranti ini.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect tidak disokong pada peranti ini.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect memerlukan perhatian',
			'settings.healthConnect.updateRequired.description' => 'Pasang atau kemas kini Health Connect sebelum mengurus akses.',
			'settings.healthConnect.updateRequired.action' => 'Pasang atau kemas kini',
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
			'settings.healthConnect.disconnect' => 'Putuskan sambungan Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Putuskan sambungan Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify akan kehilangan akses kepada Health Connect. Data yang telah ditulis di sana tidak akan dipadamkan.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Putuskan sambungan',
			'settings.healthConnect.deleteSyncedMeals' => 'Padam hidangan Calorify daripada Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Padam hidangan yang disegerakkan?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Padam hidangan yang disegerakkan oleh versi Calorify ini daripada Health Connect? Log hidangan setempat anda tidak akan berubah. Entri Calorify yang lebih lama mungkin masih perlu dipadamkan melalui Urus Data dalam Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Padam hidangan yang disegerakkan',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Hidangan Calorify telah dipadamkan daripada Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Hidangan yang disegerakkan tidak dapat dipadamkan. Sila cuba lagi.',
			'settings.healthConnect.connectionPartial' => 'Sesetengah ciri Health Connect diaktifkan.',
			'settings.healthConnect.connectionComplete' => 'Kedua-dua ciri Health Connect diaktifkan.',
			'settings.healthConnect.actionFailed' => 'Health Connect tidak dapat dibuka. Sila cuba lagi.',
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
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Analitik dan diagnostik terhad\n${appLabel} menggunakan peristiwa asas aplikasi dan diagnostik ranap untuk meningkatkan kebolehpercayaan. Nilai rekod kesihatan tidak digunakan untuk pengiklanan atau dijual.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Analitik dan diagnostik terhad\n${appLabel} menggunakan peristiwa asas aplikasi dan diagnostik ranap untuk meningkatkan kebolehpercayaan. Nilai rekod kesihatan tidak digunakan untuk pengiklanan atau dijual.',
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
			'settings.appInfo.version' => ({required Object version}) => 'Calorify versi ${version}',
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
			_ => null,
		} ?? switch (path) {
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
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'Kembali',
			'watch.common.cancel' => 'Batal',
			'watch.common.delete' => 'Padam',
			'watch.common.retry' => 'Cuba lagi',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Nutrien',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} gram',
			'watch.nutrition.protein' => 'Protein',
			'watch.nutrition.carbs' => 'Karbohidrat',
			'watch.nutrition.fat' => 'Lemak',
			'watch.nutrition.fiber' => 'Serat',
			'watch.sync.syncWithPhone' => 'Segerakkan dengan telefon',
			'watch.sync.syncing' => 'Menyegerakkan…',
			'watch.sync.synced' => 'Disegerakkan',
			'watch.sync.syncedJustNow' => 'Baru sahaja disegerakkan',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Disegerakkan ${minutes}m lalu',
			'watch.sync.failed' => 'Gagal menyegerakkan',
			'watch.sync.phoneDisconnected' => 'Telefon terputus',
			'watch.sync.tapToSync' => 'Ketuk untuk segerakkan',
			'watch.sync.refreshFailed' => 'Tidak dapat segarkan. Periksa telefon anda.',
			'watch.sync.openPhone' => 'Buka Calorify pada telefon anda, kemudian ketuk Segarkan.',
			'watch.home.today' => 'Hari ini',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} kalori telah dimakan daripada ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} melebihi sasaran',
			'watch.home.remaining' => ({required Object calories}) => '${calories} baki',
			'watch.home.left' => ({required Object calories}) => '${calories} tinggal',
			'watch.home.goal' => ({required Object calories}) => '${calories} kcal sasaran',
			'watch.home.logMeal' => 'Catat makanan',
			'watch.home.todayMeals' => 'Makanan hari ini',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Makanan hari ini, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Lihat ${count} lagi',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} lagi makanan, ketuk untuk lihat semua',
			'watch.home.noMeals' => 'Tiada makanan dicatat',
			'watch.home.noMealsSemantics' => 'Tiada makanan dicatat hari ini',
			'watch.home.tapLog' => 'Ketuk Catat untuk mula',
			'watch.home.removedFromQueue' => 'Makanan dikeluarkan dari barisan luar talian.',
			'watch.home.removedOffline' => 'Makanan dialih keluar luar talian. Ia akan disegerakkan apabila telefon anda bersambung semula.',
			'watch.home.deleteFailed' => 'Tidak dapat memadam makanan',
			'watch.history.title' => 'Makanan hari ini',
			'watch.history.refresh' => 'Segarkan makanan',
			'watch.history.loadFailed' => 'Tidak dapat memuatkan makanan',
			'watch.history.syncFailed' => 'Tidak dapat menyegerakkan',
			'watch.history.emptyTitle' => 'Tiada makanan lagi',
			'watch.history.emptyMessage' => 'Catat makanan dari Laman Utama untuk melihatnya di sini.',
			'watch.favorites.title' => 'Kegemaran',
			'watch.favorites.refresh' => 'Segarkan kegemaran',
			'watch.favorites.loadFailed' => 'Tidak dapat memuatkan kegemaran',
			'watch.favorites.syncFailed' => 'Tidak dapat menyegerakkan',
			'watch.favorites.emptyTitle' => 'Tiada kegemaran lagi',
			'watch.favorites.emptyMessage' => 'Tandakan makanan sebagai kegemaran dalam aplikasi telefon untuk log satu ketik di sini.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} kalori. Ketuk untuk catat.',
			'watch.favorites.logged' => ({required Object name}) => '${name} dicatat!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} disimpan secara luar talian. Ia akan disegerakkan apabila telefon anda bersambung semula.',
			'watch.favorites.saveFailed' => 'Tidak dapat menyimpan makanan. Sila cuba lagi.',
			'watch.favorites.log' => 'Catat',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kalori, dicatat pada ${time}.',
			'watch.meal.longPressDelete' => 'Tekan lama untuk padam.',
			'watch.meal.deleteTitle' => 'Padam makanan?',
			'watch.voice.title' => 'Log makanan melalui suara',
			'watch.voice.processing' => 'Memeriksa makanan anda…',
			'watch.voice.processingDescription' => 'Menganggarkan saiz hidangan dan nutrisi',
			'watch.voice.listening' => 'Mendengar',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Hentikan rakaman',
			'watch.voice.start' => 'Ketuk untuk mula rakaman',
			'watch.voice.starting' => 'Mengaktifkan mikrofon…',
			'watch.voice.prompt' => 'Ketuk, kemudian terangkan makanan anda',
			'watch.voice.tapToRetry' => 'Ketuk untuk cuba lagi',
			'watch.voice.example' => 'Cuba “2 roti dengan dal”',
			'watch.voice.unavailable' => 'Input suara tidak tersedia. Semak kebenaran mikrofon dalam tetapan jam.',
			'watch.voice.didNotStart' => 'Mikrofon tidak bermula. Ketuk untuk cuba lagi.',
			'watch.voice.startFailed' => 'Tidak dapat memulakan rakaman. Semak kebenaran mikrofon.',
			'watch.voice.allowMicrophone' => 'Benarkan akses mikrofon untuk mencatat makanan melalui suara.',
			'watch.voice.needsConnection' => 'Pengecaman suara memerlukan sambungan. Ketuk untuk cuba lagi.',
			'watch.voice.microphoneUnavailable' => 'Mikrofon tidak tersedia. Ketuk untuk cuba lagi.',
			'watch.voice.microphoneBusy' => 'Mikrofon sedang digunakan. Tunggu sebentar dan cuba lagi.',
			'watch.voice.languageUnsupported' => 'Input suara tidak menyokong bahasa jam.',
			'watch.voice.temporarilyBusy' => 'Input suara sedang sibuk buat masa ini. Tunggu sebentar dan cuba lagi.',
			'watch.voice.notRecognized' => 'Saya tidak faham. Ketuk ikon mikrofon dan cuba lagi.',
			'watch.voice.noSpeech' => 'Tiada suara dikesan. Ketuk ikon mikrofon untuk cuba lagi.',
			'watch.voice.analysisFailed' => 'Analisis gagal. Sila cuba lagi.',
			'watch.voice.mealNotIdentified' => 'Tidak dapat kenal pasti makanan itu. Cuba terangkan dengan cara lain.',
			'watch.result.title' => 'Perincian makanan',
			'watch.result.savedOffline' => 'Disimpan secara luar talian',
			'watch.result.logged' => 'Dicatat!',
			'watch.result.mealFound' => 'Makanan ditemui',
			'watch.result.estimatedEnergy' => 'Anggaran tenaga',
			'watch.result.logMeal' => 'Catat makanan',
			'watch.result.logging' => 'Mencatat…',
			'watch.result.logAnother' => 'Catat lagi',
			'watch.result.goingBack' => 'Kembali…',
			'watch.result.savedOfflineMessage' => 'Makanan disimpan secara luar talian. Ia akan disegerakkan apabila telefon anda bersambung semula.',
			'watch.result.saveFailed' => 'Tidak dapat menyimpan makanan. Sila cuba lagi.',
			'common.betaTag' => 'Beta',
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
