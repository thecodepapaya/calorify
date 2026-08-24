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
class TranslationsRo extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ro,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ro>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsRo _root = this; // ignore: unused_field

	@override 
	TranslationsRo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRo(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Română';
	@override String get flag => '🇷🇴';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$ro errors = _Translations$errors$ro._(_root);
	@override late final _Translations$onboarding$ro onboarding = _Translations$onboarding$ro._(_root);
	@override late final _Translations$tabs$ro tabs = _Translations$tabs$ro._(_root);
	@override late final _Translations$home$ro home = _Translations$home$ro._(_root);
	@override late final _Translations$history$ro history = _Translations$history$ro._(_root);
	@override late final _Translations$meal$ro meal = _Translations$meal$ro._(_root);
	@override late final _Translations$favorites$ro favorites = _Translations$favorites$ro._(_root);
	@override late final _Translations$profile$ro profile = _Translations$profile$ro._(_root);
	@override late final _Translations$healthScore$ro healthScore = _Translations$healthScore$ro._(_root);
	@override late final _Translations$editProfile$ro editProfile = _Translations$editProfile$ro._(_root);
	@override late final _Translations$settings$ro settings = _Translations$settings$ro._(_root);
	@override late final _Translations$reminders$ro reminders = _Translations$reminders$ro._(_root);
	@override late final _Translations$notifications$ro notifications = _Translations$notifications$ro._(_root);
	@override late final _Translations$login$ro login = _Translations$login$ro._(_root);
	@override late final _Translations$disclaimer$ro disclaimer = _Translations$disclaimer$ro._(_root);
	@override late final _Translations$localNutritionPhase4$ro localNutritionPhase4 = _Translations$localNutritionPhase4$ro._(_root);
	@override late final _Translations$watch$ro watch = _Translations$watch$ro._(_root);
	@override late final _Translations$common$ro common = _Translations$common$ro._(_root);
	@override late final _Translations$feedbackRating$ro feedbackRating = _Translations$feedbackRating$ro._(_root);
	@override late final _Translations$health$ro health = _Translations$health$ro._(_root);
}

// Path: errors
class _Translations$errors$ro extends Translations$errors$en {
	_Translations$errors$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Ai făcut prea multe solicitări. Așteaptă puțin înainte de a încerca din nou.';
	@override String get networkError => 'Eroare de rețea. Verifică conexiunea la internet.';
	@override String get unknownError => 'Ceva nu a mers bine. Te rugăm încearcă din nou mai târziu.';
	@override String get loadingProfileData => 'Eroare la încărcarea datelor profilului';
	@override String get somethingWentWrong => 'Ceva nu a mers bine.';
	@override String get retry => 'Reîncearcă';
}

// Path: onboarding
class _Translations$onboarding$ro extends Translations$onboarding$en {
	_Translations$onboarding$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bine ai venit la ${appLabel}';
	@override String get subtitle => 'Companionul tău personal pentru nutriție alimentat de AI';
	@override String get getStarted => 'Începe';
	@override late final _Translations$onboarding$features$ro features = _Translations$onboarding$features$ro._(_root);
	@override late final _Translations$onboarding$gender$ro gender = _Translations$onboarding$gender$ro._(_root);
	@override late final _Translations$onboarding$height$ro height = _Translations$onboarding$height$ro._(_root);
	@override late final _Translations$onboarding$weight$ro weight = _Translations$onboarding$weight$ro._(_root);
	@override late final _Translations$onboarding$age$ro age = _Translations$onboarding$age$ro._(_root);
	@override late final _Translations$onboarding$bmiScale$ro bmiScale = _Translations$onboarding$bmiScale$ro._(_root);
	@override late final _Translations$onboarding$weightGoal$ro weightGoal = _Translations$onboarding$weightGoal$ro._(_root);
	@override late final _Translations$onboarding$activityLevel$ro activityLevel = _Translations$onboarding$activityLevel$ro._(_root);
	@override late final _Translations$onboarding$healthConnect$ro healthConnect = _Translations$onboarding$healthConnect$ro._(_root);
	@override late final _Translations$onboarding$reinforcement$ro reinforcement = _Translations$onboarding$reinforcement$ro._(_root);
}

// Path: tabs
class _Translations$tabs$ro extends Translations$tabs$en {
	_Translations$tabs$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Tabloul de bord';
	@override String get history => 'Istoric';
}

// Path: home
class _Translations$home$ro extends Translations$home$en {
	_Translations$home$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$ro aiSummary = _Translations$home$aiSummary$ro._(_root);
	@override late final _Translations$home$dailyGoal$ro dailyGoal = _Translations$home$dailyGoal$ro._(_root);
	@override late final _Translations$home$dailySummary$ro dailySummary = _Translations$home$dailySummary$ro._(_root);
	@override late final _Translations$home$intakeProgress$ro intakeProgress = _Translations$home$intakeProgress$ro._(_root);
	@override late final _Translations$home$intakeHistory$ro intakeHistory = _Translations$home$intakeHistory$ro._(_root);
	@override late final _Translations$home$mealLog$ro mealLog = _Translations$home$mealLog$ro._(_root);
	@override late final _Translations$home$mealDescription$ro mealDescription = _Translations$home$mealDescription$ro._(_root);
	@override late final _Translations$home$favoriteMeals$ro favoriteMeals = _Translations$home$favoriteMeals$ro._(_root);
	@override late final _Translations$home$mealSnap$ro mealSnap = _Translations$home$mealSnap$ro._(_root);
	@override late final _Translations$home$connectHealth$ro connectHealth = _Translations$home$connectHealth$ro._(_root);
}

// Path: history
class _Translations$history$ro extends Translations$history$en {
	_Translations$history$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Nicio masă înregistrată';
	@override String get emptyMessage => 'Fă o poză ultimei tale mese pentru a o înregistra aici.';
	@override String get today => 'Azi';
	@override String get yesterday => 'Ieri';
}

// Path: meal
class _Translations$meal$ro extends Translations$meal$en {
	_Translations$meal$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'O, nu!';
	@override String get delete => 'Șterge';
	@override String get editMeal => 'Editează masa';
	@override String get addMeal => 'Adaugă masă';
	@override String get saveMeal => 'Salvează masa';
	@override String get save => 'Salvează';
	@override String get mealName => 'Numele mesei';
	@override String get mealNameHint => 'ex.: Ouă amestecate cu pâine prăjită';
	@override String get nameRequired => 'Introduceți un nume pentru masă înainte de a salva.';
	@override String get mealQuantity => 'Cantitate masă';
	@override String get mealQuantityHint => 'ex.: 1 bol, 2 felii';
	@override String get timeOfMeal => 'Ora mesei';
	@override String get timeOfMealHint => 'Selectează ora la care ai mâncat';
	@override String get mealType => 'Tipul mesei';
	@override late final _Translations$meal$nutrition$ro nutrition = _Translations$meal$nutrition$ro._(_root);
	@override late final _Translations$meal$deleteConfirmation$ro deleteConfirmation = _Translations$meal$deleteConfirmation$ro._(_root);
	@override String get addedToLog => 'Masa a fost adăugată în jurnal!';
	@override String couldNotAdd({required Object error}) => 'Nu s-a putut adăuga masa: ${error}';
	@override String get savedSuccessfully => 'Masa a fost adăugată cu succes!';
	@override String get updatedSuccessfully => 'Masa a fost actualizată cu succes!';
	@override String errorSaving({required Object error}) => 'Eroare la salvarea mesei: ${error}';
	@override String get removedFromFavorites => 'Eliminat din favorite!';
	@override String get savedAsFavorite => 'Masa salvată ca favorit!';
	@override String get unfavorite => 'Elimină din favorite';
	@override String couldNotUpdateFavorite({required Object error}) => 'Nu s-a putut actualiza favorit: ${error}';
	@override String get feedbackThanks => 'Mulțumim pentru feedback!';
	@override String get reanalysisUpdated => 'Analiza mesei a fost actualizată pe baza feedback-ului tău.';
	@override String failedToProcess({required Object error}) => 'Procesare eșuată: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Procesare imagine eșuată: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Eroare la comprimarea imaginii: ${error}';
	@override String get failedToSave => 'Salvarea datelor a eșuat. Te rugăm încearcă din nou.';
	@override String get skip => 'Sari';
	@override late final _Translations$meal$questionFlow$ro questionFlow = _Translations$meal$questionFlow$ro._(_root);
	@override late final _Translations$meal$analysis$ro analysis = _Translations$meal$analysis$ro._(_root);
	@override late final _Translations$meal$localInference$ro localInference = _Translations$meal$localInference$ro._(_root);
	@override late final _Translations$meal$feedback$ro feedback = _Translations$meal$feedback$ro._(_root);
}

// Path: favorites
class _Translations$favorites$ro extends Translations$favorites$en {
	_Translations$favorites$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorite';
	@override String get empty => 'Nu există mese favorite încă.';
	@override String get searchPlaceholder => 'Caută mese favorite';
	@override String get searchEmptyTitle => 'Niciun favorit nu se potrivește căutării';
	@override String get searchEmptySubtitle => 'Încearcă un alt nume de masă, cantitate sau tip de masă.';
	@override String get sortLabel => 'Sortează favoritele';
	@override String get undo => 'Anulează';
	@override String removed({required Object name}) => 'Am eliminat ${name} din favorite';
	@override late final _Translations$favorites$sortOptions$ro sortOptions = _Translations$favorites$sortOptions$ro._(_root);
}

// Path: profile
class _Translations$profile$ro extends Translations$profile$en {
	_Translations$profile$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Nu s-au găsit date de profil';
	@override String get yourProfile => 'Profilul tău';
	@override String get viewAndManage => 'Vizualizează și gestionează informațiile tale de sănătate';
	@override late final _Translations$profile$sections$ro sections = _Translations$profile$sections$ro._(_root);
	@override String get gender => 'Gen';
	@override String get height => 'Înălțime';
	@override String get weight => 'Greutate';
	@override String get age => 'Vârstă';
	@override String get weightGoal => 'Obiectiv greutate';
	@override String get targetWeight => 'Greutate țintă';
	@override String get activityLevel => 'Nivel de activitate';
	@override String get healthMetrics => 'Metrici de sănătate';
	@override String get notSet => 'Nedefinit';
	@override String get years => 'ani';
	@override String get updatedSuccessfully => 'Profil actualizat cu succes!';
	@override late final _Translations$profile$calculatedValues$ro calculatedValues = _Translations$profile$calculatedValues$ro._(_root);
}

// Path: healthScore
class _Translations$healthScore$ro extends Translations$healthScore$en {
	_Translations$healthScore$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scor de sănătate';
	@override String get whyThisScore => 'De ce acest scor?';
	@override String get note => 'Acest scor este o estimare AI bazată pe ingredientele identificate și densitatea nutrițională. Consultă întotdeauna un profesionist pentru sfaturi dietetice.';
	@override String get unhealthy => 'Nesănătos';
	@override String get healthy => 'Sănătos';
	@override String get neutral => 'Neutru';
}

// Path: editProfile
class _Translations$editProfile$ro extends Translations$editProfile$en {
	_Translations$editProfile$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editează profilul';
	@override late final _Translations$editProfile$sections$ro sections = _Translations$editProfile$sections$ro._(_root);
	@override String get gender => 'Gen';
	@override String get dateOfBirth => 'Data nașterii';
	@override String get height => 'Înălțime';
	@override String get weight => 'Greutate';
	@override String get weightGoal => 'Obiectiv greutate';
	@override String get activityLevel => 'Nivel de activitate';
	@override String get metric => 'Sistem metric';
	@override String get imperial => 'Sistem imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lb';
	@override String get metricCm => 'Sistem metric (cm)';
	@override String get imperialFtIn => 'Sistem imperial (ft/in)';
	@override String get metricKg => 'Sistem metric (kg)';
	@override String get imperialLbs => 'Sistem imperial (lb)';
	@override late final _Translations$editProfile$genders$ro genders = _Translations$editProfile$genders$ro._(_root);
	@override late final _Translations$editProfile$weightGoals$ro weightGoals = _Translations$editProfile$weightGoals$ro._(_root);
	@override late final _Translations$editProfile$activityLevels$ro activityLevels = _Translations$editProfile$activityLevels$ro._(_root);
}

// Path: settings
class _Translations$settings$ro extends Translations$settings$en {
	_Translations$settings$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Setări';
	@override late final _Translations$settings$sections$ro sections = _Translations$settings$sections$ro._(_root);
	@override late final _Translations$settings$editProfile$ro editProfile = _Translations$settings$editProfile$ro._(_root);
	@override late final _Translations$settings$language$ro language = _Translations$settings$language$ro._(_root);
	@override late final _Translations$settings$heightUnit$ro heightUnit = _Translations$settings$heightUnit$ro._(_root);
	@override late final _Translations$settings$weightUnit$ro weightUnit = _Translations$settings$weightUnit$ro._(_root);
	@override late final _Translations$settings$mealReminders$ro mealReminders = _Translations$settings$mealReminders$ro._(_root);
	@override late final _Translations$settings$localInference$ro localInference = _Translations$settings$localInference$ro._(_root);
	@override late final _Translations$settings$theme$ro theme = _Translations$settings$theme$ro._(_root);
	@override late final _Translations$settings$sendFeedback$ro sendFeedback = _Translations$settings$sendFeedback$ro._(_root);
	@override late final _Translations$settings$exportMealHistory$ro exportMealHistory = _Translations$settings$exportMealHistory$ro._(_root);
	@override late final _Translations$settings$clearAllData$ro clearAllData = _Translations$settings$clearAllData$ro._(_root);
	@override late final _Translations$settings$debugOptions$ro debugOptions = _Translations$settings$debugOptions$ro._(_root);
	@override String get developerModeEnabled => 'Mod dezvoltator activat!';
	@override late final _Translations$settings$healthConnect$ro healthConnect = _Translations$settings$healthConnect$ro._(_root);
	@override late final _Translations$settings$about$ro about = _Translations$settings$about$ro._(_root);
	@override late final _Translations$settings$appInfo$ro appInfo = _Translations$settings$appInfo$ro._(_root);
}

// Path: reminders
class _Translations$reminders$ro extends Translations$reminders$en {
	_Translations$reminders$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rămâi pe drumul cel bun cu mementouri';
	@override String get description => 'Primește mementouri blânde pentru a-ți înregistra mesele și a rămâne consecvent cu obiectivele nutriționale';
	@override String get notificationsEnabled => 'Notificări activate';
	@override String get notificationsDisabled => 'Notificări dezactivate';
	@override String get enabledSubtitle => 'Vei primi mementouri pentru mese';
	@override String get disabledSubtitle => 'Activează notificările pentru a primi mementouri pentru mese';
	@override String get mealReminders => 'Mementouri mese';
	@override String get breakfast => 'Mic dejun';
	@override String get lunch => 'Prânz';
	@override String get dinner => 'Cină';
	@override String get snack => 'Gustare';
	@override String get unknown => 'Necunoscut';
	@override String get change => 'Schimbă';
	@override String get enableNotifications => 'Activează notificările';
	@override String get skipForNow => 'Sari pentru moment';
	@override String get saveChanges => 'Salvează modificările';
	@override String get enabledSuccessfully => 'Notificările au fost activate cu succes!';
	@override String get permissionDenied => 'Permisiune notificări refuzată';
	@override String errorEnabling({required Object error}) => 'Eroare la activarea notificărilor: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Eroare la finalizarea configurării: ${error}';
}

// Path: notifications
class _Translations$notifications$ro extends Translations$notifications$en {
	_Translations$notifications$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$ro breakfast = _Translations$notifications$breakfast$ro._(_root);
	@override late final _Translations$notifications$lunch$ro lunch = _Translations$notifications$lunch$ro._(_root);
	@override late final _Translations$notifications$dinner$ro dinner = _Translations$notifications$dinner$ro._(_root);
	@override late final _Translations$notifications$snack$ro snack = _Translations$notifications$snack$ro._(_root);
	@override late final _Translations$notifications$test$ro test = _Translations$notifications$test$ro._(_root);
}

// Path: login
class _Translations$login$ro extends Translations$login$en {
	_Translations$login$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autentificare';
	@override String get signInWithGoogle => 'Autentifică-te cu Google';
	@override String get signInFailed => 'Autentificarea cu Google a eșuat sau a fost anulată.';
}

// Path: disclaimer
class _Translations$disclaimer$ro extends Translations$disclaimer$en {
	_Translations$disclaimer$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Te rugăm să reții';
	@override late final _Translations$disclaimer$snap$ro snap = _Translations$disclaimer$snap$ro._(_root);
	@override late final _Translations$disclaimer$weightEstimate$ro weightEstimate = _Translations$disclaimer$weightEstimate$ro._(_root);
	@override late final _Translations$disclaimer$healthMetrics$ro healthMetrics = _Translations$disclaimer$healthMetrics$ro._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$ro calorieExpenditure = _Translations$disclaimer$calorieExpenditure$ro._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$ro extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get portionSmaller => 'Mai mică';
	@override String get portionEstimated => 'Estimată';
	@override String get portionLarger => 'Mai mare';
	@override String portionQuestion({required Object ingredient}) => 'Ce porție a fost cea mai apropiată pentru ${ingredient}?';
	@override String get mealTypeQuestion => 'Ce masă a fost aceasta?';
	@override String get localNutritionTip => 'Calculat din date nutriționale locale verificate.';
	@override String get offlineNutritionTitle => 'Descarcă date nutriționale';
	@override String get offlineNutritionSubtitle => 'Folosește rânduri USDA verificate și calcul determinist pe acest dispozitiv atunci când toate ingredientele sunt acoperite.';
	@override String get offlineNutritionUnavailable => 'Datele nutriționale locale nu sunt disponibile pentru această versiune a aplicației.';
	@override String get offlineNutritionNotDownloaded => 'Nu este descărcat niciun pachet nutrițional verificat.';
	@override String get offlineNutritionInstalling => 'Se descarcă și se verifică datele nutriționale…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Pachet ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} rânduri USDA în cache · ${size}';
	@override String get offlineNutritionUpdate => 'Caută actualizări';
	@override String get offlineNutritionClear => 'Șterge datele nutriționale locale';
	@override String get offlineNutritionClearTitle => 'Ștergi datele nutriționale locale?';
	@override String get offlineNutritionClearBody => 'Această acțiune elimină pachetul USDA descărcat și memoria cache de căutare. Mesele înregistrate păstrează instantaneul nutrițional exact folosit când au fost salvate.';
	@override String get offlineNutritionClearConfirm => 'Șterge datele';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Datele nutriționale locale nu au putut fi descărcate și verificate: ${error}';
	@override String get offlineNutritionCleared => 'Datele nutriționale locale au fost șterse';
}

// Path: watch
class _Translations$watch$ro extends Translations$watch$en {
	_Translations$watch$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$ro common = _Translations$watch$common$ro._(_root);
	@override late final _Translations$watch$nutrition$ro nutrition = _Translations$watch$nutrition$ro._(_root);
	@override late final _Translations$watch$sync$ro sync = _Translations$watch$sync$ro._(_root);
	@override late final _Translations$watch$home$ro home = _Translations$watch$home$ro._(_root);
	@override late final _Translations$watch$history$ro history = _Translations$watch$history$ro._(_root);
	@override late final _Translations$watch$favorites$ro favorites = _Translations$watch$favorites$ro._(_root);
	@override late final _Translations$watch$meal$ro meal = _Translations$watch$meal$ro._(_root);
	@override late final _Translations$watch$voice$ro voice = _Translations$watch$voice$ro._(_root);
	@override late final _Translations$watch$result$ro result = _Translations$watch$result$ro._(_root);
}

// Path: common
class _Translations$common$ro extends Translations$common$en {
	_Translations$common$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Beta';
	@override String get close => 'Închide';
	@override String get kContinue => 'Continuă';
}

// Path: feedbackRating
class _Translations$feedbackRating$ro extends Translations$feedbackRating$en {
	_Translations$feedbackRating$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Îți place ${appLabel}?';
	@override String get yes => 'Da, îmi place';
	@override String get no => 'Nu chiar';
	@override String get rateStepHeading => 'Evaluează în Play Store';
	@override String get emailStepHeading => 'Trimite feedback prin email';
	@override String soloDevMessage({required Object appLabel}) => 'O evaluare rapidă ajută alții să găsească ${appLabel} și susține dezvoltarea. Ai putea lăsa una?';
	@override String get shareFeedbackViaEmail => 'Feedback-ul tău modelează viitorul — citim fiecare mesaj. Vrei să ne împărtășești gândurile prin email?';
	@override String get rateCta => 'Evaluează în Play Store';
	@override String get maybeLater => 'Poate mai târziu';
	@override String get sendFeedback => 'Trimite feedback';
	@override String get noThanks => 'Nu, mulțumesc';
	@override String get aboutUsDescription => 'Creat cu grijă de o echipă mică. Ne concentrăm pe confidențialitate, simplitate și pe a te ajuta să construiești obiceiuri alimentare mai bune.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Curios cine stă în spatele ${appLabel}? Vezi ';
	@override String get aboutUsLinkLabel => 'Despre noi';
	@override String get thankYouMessage => 'Mulțumim! Te vom întreba din nou altădată.';
}

// Path: health
class _Translations$health$ro extends Translations$health$en {
	_Translations$health$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Sincronizarea cu Health Connect a eșuat';
	@override String get mealSynced => 'Masa sincronizată cu Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$ro extends Translations$onboarding$features$en {
	_Translations$onboarding$features$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$ro foodRecognition = _Translations$onboarding$features$foodRecognition$ro._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$ro aiAnalysis = _Translations$onboarding$features$aiAnalysis$ro._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$ro healthIntegration = _Translations$onboarding$features$healthIntegration$ro._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$ro extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Care este genul tău?';
	@override String get description => 'Genul ne ajută să calculăm corect rata metabolică bazală (BMR).';
	@override String get next => 'Următorul';
}

// Path: onboarding.height
class _Translations$onboarding$height$ro extends Translations$onboarding$height$en {
	_Translations$onboarding$height$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cât de înalt ești?';
	@override String get description => 'Înălțimea te ajută să calculăm BMI și nevoile energetice cu acuratețe.';
	@override String get metric => 'Sistem metric';
	@override String get imperial => 'Sistem imperial';
	@override String get next => 'Următorul';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$ro extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Care este greutatea ta actuală?';
	@override String get currentDescription => 'Greutatea actuală este esențială pentru personalizarea obiectivelor zilnice.';
	@override String get targetTitle => 'Care este greutatea ta țintă?';
	@override String get targetDescription => 'Stabilirea unei greutăți țintă ne ajută să determinăm planul pe termen lung.';
	@override String get metric => 'Sistem metric';
	@override String get imperial => 'Sistem imperial';
	@override String get next => 'Următorul';
}

// Path: onboarding.age
class _Translations$onboarding$age$ro extends Translations$onboarding$age$en {
	_Translations$onboarding$age$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Când e ziua ta de naștere?';
	@override String get description => 'Vârsta te ajută să calculăm cu acuratețe necesarul tău caloric.';
	@override String get next => 'Următorul';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$ro extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Sub';
	@override String get healthy => 'Sănătos';
	@override String get overweight => 'Peste';
	@override String get obese => 'Obez';
	@override late final _Translations$onboarding$bmiScale$categories$ro categories = _Translations$onboarding$bmiScale$categories$ro._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$ro messages = _Translations$onboarding$bmiScale$messages$ro._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$ro extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Care este obiectivul tău?';
	@override String get description => 'Alege obiectivul care descrie cel mai bine ce vrei să obții';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$ro extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cât de activ ești?';
	@override String get description => 'Acest lucru ne ajută să calculăm mai precis necesarul tău caloric zilnic';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$ro extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conectează-te la Health Connect';
	@override String get description => 'Folosește caloriile arse în obiectivul tău zilnic și, opțional, partajează mesele înregistrate cu Health Connect.';
	@override String get overviewDescription => 'Folosește caloriile arse în obiectivul tău zilnic și, opțional, partajează mesele înregistrate cu Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$ro automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$ro._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$ro caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$ro._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$ro progressInsights = _Translations$onboarding$healthConnect$progressInsights$ro._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$ro shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$ro._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$ro seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$ro._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$ro userControl = _Translations$onboarding$healthConnect$userControl$ro._(_root);
	@override String get connected => 'Health Connect conectat';
	@override String get notConnected => 'Health Connect neconectat';
	@override String get setup => 'Configurează Health Connect';
	@override String get skipForNow => 'Sari pentru moment';
	@override String get statusConnected => 'Health Connect este conectat.';
	@override String get statusSuccess => 'Health Connect a fost conectat cu succes!';
	@override String get statusNotConnected => 'Alege funcțiile Health Connect pe care vrei să le activezi.';
	@override String get statusPartial => 'Health Connect este conectat parțial. Activează permisiunea rămasă pentru a folosi ambele funcții.';
	@override String get statusProviderUpdateRequired => 'Instalează sau actualizează Health Connect pentru a continua.';
	@override String get statusUnavailable => 'Health Connect nu este acceptat pe acest dispozitiv.';
	@override String get installOrUpdate => 'Instalează sau actualizează';
	@override String get manageAccess => 'Gestionează accesul';
	@override String statusPermissionDenied({required Object appLabel}) => 'Permisiune refuzată. Activează permisiunile Health Connect din setările telefonului pentru ${appLabel}.';
	@override String statusError({required Object error}) => 'Eroare la configurarea Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$ro extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$ro trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$ro._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$ro healthProfile = _Translations$onboarding$reinforcement$healthProfile$ro._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$ro goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$ro._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$ro extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rezumat AI';
	@override String get logMore => 'Înregistrează mai multe mese în următoarele zile pentru a primi perspective AI personalizate.';
	@override String get loading => 'Se încarcă rezumatul...';
	@override String mealCount({required Object count}) => '${count} mese înregistrate';
	@override String macroBalanceScore({required Object score}) => 'Scor echilibru ${score}';
	@override String get topFoods => 'Alimente principale';
	@override String get trendUp => 'Calorii în creștere';
	@override String get trendDown => 'Calorii în scădere';
	@override String get trendSteady => 'Calorii stabile';
	@override String generatedAt({required Object time}) => 'Actualizat ${time}';
}

// Path: home.dailyGoal
class _Translations$home$dailyGoal$ro extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Setează-ți obiectivul zilnic';
	@override String get titleSet => 'Obiectivul tău zilnic';
	@override String get description => 'Gata să pornești călătoria spre bine? Setează-ți ținta calorică zilnică mai jos pentru a-ți începe progresul.';
	@override String get descriptionSet => 'Compasul tău este setat! Aceasta este ținta ta calorică zilnică pentru orientare.';
	@override String get yourGoal => 'Obiectivul tău';
	@override String get goal => 'Obiectiv';
	@override String get dailyCalories => 'Calorii zilnice (kcal)';
	@override String get setGoal => 'Setează obiectiv';
	@override String get intake => 'Consum';
	@override String get burned => 'Arse';
	@override String get weightImpact => 'Impact asupra greutății';
	@override String get estLoss => 'Estim. pierdere de';
	@override String get estGain => 'Estim. câștig de';
	@override String get kcal => 'kilocalorii';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$ro extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rezumat zilnic';
	@override String get calories => 'Calorii';
	@override String get carbs => 'Carbohidrați';
	@override String get protein => 'Proteine';
	@override String get fat => 'Grăsimi';
	@override String get fiber => 'Fibră';
	@override String get grams => 'grame';
	@override String get chartAccessibilityLabel => 'Graficul macronutrienților';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$ro extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Distribuția macro de azi';
	@override String get target => 'Țintă';
	@override String get current => 'Curent';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$ro extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Istoric macro pe 7 zile';
	@override String get trendTitle => 'Tendința de azi';
	@override String peakHour({required Object hour}) => 'Vârf: ${hour}:00';
	@override String get noHistoryYet => 'Încă nu există istoricul';
	@override String get startLogging => 'Începe să înregistrezi mese pentru a vedea\n7-day macro trends here';
}

// Path: home.mealLog
class _Translations$home$mealLog$ro extends Translations$home$mealLog$en {
	_Translations$home$mealLog$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mese înregistrate';
	@override String get emptyMessage => 'Fă o poză ultimei tale mese pentru a o înregistra aici.';
	@override String get noMealsToday => 'Nicio masă înregistrată pentru azi';
	@override String get seeAllMeals => 'Vezi toate mesele';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$ro extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Adăugare rapidă cu AI';
	@override String get description => 'Descrie-ți masa și lasă AI să se ocupe de detalii.';
	@override String get hint => 'ex. la micul dejun am avut un bol mare de fulgi de ovăz cu o banană feliată și o cupă de whey ...';
	@override String get analyzeMeal => 'Analizează masa';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$ro extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mese favorite';
	@override String get description => 'Adaugă rapid una dintre mesele tale preferate.';
	@override String get noFavorites => 'Nu există mese favorite încă.';
	@override String get addFavoriteHint => 'Apasă steaua pe o masă pentru a o marca ca favorit.';
	@override String get seeAll => 'Vezi toate';
	@override String get add => 'Adaugă';
}

// Path: home.mealSnap
class _Translations$home$mealSnap$ro extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fă o poză & urmărește masa';
	@override String get description => 'Folosește camera pentru a face o poză alimentelor pentru analiza AI.';
	@override String get openCamera => 'Deschide camera';
	@override String get gallery => 'Galerie';
	@override String get compressingPhoto => 'Optimizare fotografie…';
	@override String get uploadingPhoto => 'Încărcare fotografie…';
}

// Path: home.connectHealth
class _Translations$home$connectHealth$ro extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sincronizează cu Health Connect';
	@override String get description => 'Folosește caloriile arse în obiectivul tău și partajează mesele înregistrate';
	@override String get install => 'Instalează sau actualizează';
	@override String get dataUseDescription => 'Folosește caloriile arse în obiectivul tău și partajează mesele înregistrate';
	@override String get installOrUpdate => 'Instalează sau actualizează';
	@override String get connect => 'Conectează-te';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$ro extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calorii';
	@override String get carbs => 'Carbohidrați (g)';
	@override String get protein => 'Proteine (g)';
	@override String get fat => 'Grăsimi (g)';
	@override String get fiber => 'Fibră (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$ro extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Șterge masa';
	@override String get message => 'Ești sigur că vrei să ștergi această înregistrare a mesei?';
	@override String get cancel => 'Anulează';
	@override String get delete => 'Șterge';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$ro extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Întrebare ${current} din ${total}';
	@override String get noQuestionsAvailable => 'Nu există întrebări disponibile';
	@override String get next => 'Următorul';
	@override String get continueLabel => 'Continuă';
}

// Path: meal.analysis
class _Translations$meal$analysis$ro extends Translations$meal$analysis$en {
	_Translations$meal$analysis$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Se analizează masa ta';
	@override String get stepStarted => 'Începem…';
	@override String get stepDecomposition => 'Înțelegem masa…';
	@override String get stepIngredients => 'Potrivim ingredientele cu date nutriționale…';
	@override String get stepUncertainty => 'Verificăm încrederea…';
	@override String get stepMealTypeQuestion => 'Mai aproape…';
	@override String get stepResult => 'Finalizăm rezultatul…';
	@override String get stepError => 'Ceva nu a mers bine';
	@override String get stepDefault => 'Se analizează masa ta…';
	@override String get progressUnderstand => 'Înțelegerea mesei';
	@override String get progressMatch => 'Căutarea informațiilor nutriționale pentru ingrediente';
	@override String get progressCheck => 'Verificarea porțiilor și a încrederii';
	@override String get progressMealType => 'Alegerea tipului de masă';
	@override String get progressFinish => 'Calcularea caloriilor și a macronutrienților';
	@override String get detectedIngredientHeading => 'Ingredientele pe care le observăm';
	@override String ingredientsOverflow({required Object count}) => '${count} în plus';
	@override String ingredientsLine({required Object count}) => '${count} ingrediente detectate';
	@override String get ingredientsPending => 'Scanare ingrediente…';
	@override String mealPreviewDescription({required Object text}) => '„${text}”';
	@override String get offlineTip0 => 'Sfat: Consistența bate perfecțiunea—înregistrările regulate dezvăluie tiparele care contează.';
	@override String get offlineTip1 => 'Sfat: Pentru fotografii, lumina naturală și o vedere de sus ajută la acuratețea porțiilor.';
	@override String get offlineTip2 => 'Sfat: Menționează băuturile, sosurile și uleiul de gătit—ele adaugă calorii pe care oamenii le uită des.';
	@override String get offlineTip3 => 'Sfat: O scurtă notă despre porție (1 bol, cafea mare) face estimările mult mai precise.';
	@override String get offlineTip4 => 'Sfat: Înregistrarea după masă tot construiește obiceiul; perfecțiunea e opțională.';
	@override String get offlineTip5 => 'Sfat: Spune cum a fost gătit când afectează mult caloriile (prăjit vs copt).';
}

// Path: meal.localInference
class _Translations$meal$localInference$ro extends Translations$meal$localInference$en {
	_Translations$meal$localInference$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Revizuiește ingredientele detectate';
	@override String get reviewSubtitle => 'Acestea au fost interpretate pe dispozitivul tău. Corectează numele sau porțiile înainte de calculul nutrițional.';
	@override String get mealName => 'Numele mesei';
	@override String get ingredient => 'Component alimentar';
	@override String get grams => 'Grame estimate';
	@override String get removeIngredient => 'Elimină ingredientul';
	@override String get continueLabel => 'Continuă';
	@override String get invalidProposal => 'Adaugă cel puțin un ingredient și folosește o cantitate pozitivă de grame.';
	@override String get localUnavailable => 'Analiza pe dispozitiv nu este disponibilă în acest moment.';
}

// Path: meal.feedback
class _Translations$meal$feedback$ro extends Translations$meal$feedback$en {
	_Translations$meal$feedback$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ce pare greșit?';
	@override String get subtitle => 'Ajută-ne să îmbunătățim analiza selectând una sau mai multe probleme.';
	@override String get tellUsMore => 'Spune-ne mai mult';
	@override String get describeIncorrect => 'Descrie ce a fost incorect';
	@override String get submit => 'Trimite';
	@override String get issueFoodIdentification => 'Identificare aliment';
	@override String get issuePortionSize => 'Mărimea porției';
	@override String get issueCalorieDistribution => 'Distribuția caloriilor';
	@override String get issueMacrosWrong => 'Macronutrienții sunt greșiți';
	@override String get issueMissingItems => 'Lipsesc elemente';
	@override String get issueExtraItems => 'Elemente în plus';
	@override String get issueOther => 'Altceva';
}

// Path: favorites.sortOptions
class _Translations$favorites$sortOptions$ro extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Recente';
	@override String get calories => 'Calorii';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _Translations$profile$sections$ro extends Translations$profile$sections$en {
	_Translations$profile$sections$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'INFORMAȚII DE BAZĂ';
	@override String get goalsAndActivity => 'OBIECTIVE & ACTIVITATE';
	@override String get calculatedValues => 'VALORI CALCULATE';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$ro extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Obiectiv zilnic';
	@override String get calPerDay => 'cal/zi';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$ro extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMAȚII PERSONALE';
	@override String get physicalMeasurements => 'MĂSURĂTORI FIZICE';
	@override String get goalsAndActivity => 'OBIECTIVE & ACTIVITATE';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$ro extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get male => 'Bărbat';
	@override String get female => 'Femeie';
	@override String get other => 'Altul';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$ro extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$ro loseWeight = _Translations$editProfile$weightGoals$loseWeight$ro._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$ro maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$ro._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$ro gainWeight = _Translations$editProfile$weightGoals$gainWeight$ro._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$ro extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$ro sedentary = _Translations$editProfile$activityLevels$sedentary$ro._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$ro lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$ro._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$ro moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$ro._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$ro veryActive = _Translations$editProfile$activityLevels$veryActive$ro._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$ro extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$ro._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$ro extends Translations$settings$sections$en {
	_Translations$settings$sections$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOCALIZARE';
	@override String get notifications => 'NOTIFICĂRI';
	@override String get healthConnect => 'CONECTARE HEALTH CONNECT';
	@override String get localInference => 'ANALIZĂ PE DISPOZITIV';
	@override String get supportAndLegal => 'SUPORT & LEGAL';
	@override String get about => 'DESPRE';
	@override String get dangerZone => 'ZONĂ DE PERICOL';
	@override String get developer => 'DEZVOLTATOR';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$ro extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editează profilul';
	@override String get subtitle => 'Actualizează informațiile tale personale';
}

// Path: settings.language
class _Translations$settings$language$ro extends Translations$settings$language$en {
	_Translations$settings$language$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limbă';
	@override String get subtitle => 'Alege limba preferată';
	@override String get searchHint => 'Caută limbi...';
	@override String get noResults => 'Nu s-au găsit rezultate';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$ro extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unitate înălțime';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$ro extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unitate greutate';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$ro extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mementouri mese';
	@override String get subtitle => 'Rămâi pe drumul cel bun cu alerte la timp';
}

// Path: settings.localInference
class _Translations$settings$localInference$ro extends Translations$settings$localInference$en {
	_Translations$settings$localInference$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analiza meselor pe dispozitiv';
	@override String get subtitle => 'Interpretează mesele suportate cu Gemini Nano înainte de calculul nutrițional';
	@override String get unavailable => 'Nedisponibil pe acest dispozitiv';
	@override String get rolloutUnavailable => 'Hardware compatibil găsit, dar această funcție nu este activată pentru această versiune a aplicației';
	@override String get modelSetup => 'Gemini Nano trebuie să finalizeze descărcarea înainte de a putea fi activat';
	@override String get useLocalTitle => 'Folosește analiza pe dispozitiv';
	@override String get useLocalSubtitle => 'Opțional și dezactivat implicit. Rezultatele pot fi mai puțin sigure pentru mese complexe.';
	@override String get disclosureTitle => 'Înainte de a activa analiza pe dispozitiv';
	@override String get disclosureBody => 'Gemini Nano poate identifica ingredientele și poate estima porțiile pe dispozitivele Android suportate. Propunerea de ingrediente revizuită este trimisă către Calorify pentru fundamentarea nutrițională USDA și calcul.';
	@override String get disclosureLimit1 => 'Felurile de mâncare complexe, ingredientele ascunse și dimensiunile porțiilor pot fi identificate incorect.';
	@override String get disclosureLimit2 => 'Modelul poate fi indisponibil în timpul descărcării, când este ocupat, în fundal sau limitat de dispozitiv.';
	@override String get disclosureLimit3 => 'Dacă interpretarea locală nu poate fi finalizată, această versiune beta trimite automat descrierea originală a mesei către Calorify pentru analiza în cloud.';
	@override String get acknowledgement => 'Înțeleg că trebuie să revizuiesc ingredientele și porțiile detectate.';
	@override String get enable => 'Confirm și activez';
	@override String get cancel => 'Anulează';
}

// Path: settings.theme
class _Translations$settings$theme$ro extends Translations$settings$theme$en {
	_Translations$settings$theme$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Temă';
	@override String get light => 'Lumină';
	@override String get dark => 'Întunecat';
	@override String get system => 'Sistem';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$ro extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Trimite feedback';
	@override String subtitle({required Object appLabel}) => 'Ajută-ne să îmbunătățim ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Feedback pentru ${appLabel}';
	@override String get emailBodyPrefix => 'Te rugăm oferă feedback-ul tău mai jos:';
	@override String get appVersion => 'Versiune aplicație';
	@override String get device => 'Dispozitiv';
	@override String get osVersion => 'Versiune OS';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _Translations$settings$exportMealHistory$ro extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exportă istoricul meselor';
	@override String get subtitle => 'Partajează un CSV cu mesele înregistrate';
	@override String get shareText => 'Exportul istoricului meselor Calorify';
	@override String failed({required Object error}) => 'Nu s-a putut exporta istoricul meselor: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$ro extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Șterge toate datele';
	@override String get subtitle => 'Șterge datele Calorify stocate pe acest dispozitiv';
	@override String get localOnlySubtitle => 'Șterge datele Calorify stocate pe acest dispozitiv';
	@override String get confirmationTitle => 'Ștergi toate datele?';
	@override String get confirmationMessage => 'Aceasta șterge definitiv de pe acest dispozitiv mesele înregistrate, favoritele și setările profilului. Mesele deja partajate cu Health Connect și accesul la Health Connect sunt gestionate separat în Setări > Health Connect.';
	@override String get localOnlyConfirmationMessage => 'Aceasta șterge definitiv de pe acest dispozitiv mesele înregistrate, favoritele și setările profilului. Mesele deja partajate cu Health Connect și accesul la Health Connect sunt gestionate separat în Setări > Health Connect.';
	@override String get cancel => 'Anulează';
	@override String get clearEverything => 'Șterge totul';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$ro extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opțiuni debug';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$ro extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Vizualizează și gestionează permisiunile';
	@override late final _Translations$settings$healthConnect$unavailable$ro unavailable = _Translations$settings$healthConnect$unavailable$ro._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$ro updateRequired = _Translations$settings$healthConnect$updateRequired$ro._(_root);
	@override late final _Translations$settings$healthConnect$permissions$ro permissions = _Translations$settings$healthConnect$permissions$ro._(_root);
	@override String get managePermissions => 'Gestionare permisiuni';
	@override String get openSettings => 'Deschide setările Health Connect';
	@override String get disconnect => 'Deconectează Health Connect';
	@override String get disconnectConfirmationTitle => 'Deconectezi Health Connect?';
	@override String get disconnectConfirmationMessage => 'Calorify va pierde accesul la Health Connect. Datele deja scrise acolo nu vor fi șterse.';
	@override String get disconnectConfirmationAction => 'Deconectează';
	@override String get deleteSyncedMeals => 'Șterge mesele Calorify din Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'Ștergi mesele sincronizate?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Ștergi din Health Connect mesele sincronizate de această versiune de Calorify? Jurnalul local de mese nu se va modifica. Este posibil ca intrările Calorify mai vechi să trebuiască eliminate în continuare prin Gestionează datele din Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Șterge mesele sincronizate';
	@override String get deleteSyncedMealsSuccess => 'Mesele Calorify au fost șterse din Health Connect.';
	@override String get deleteSyncedMealsFailed => 'Mesele sincronizate nu au putut fi șterse. Încearcă din nou.';
	@override String get connectionPartial => 'Unele funcții Health Connect sunt activate.';
	@override String get connectionComplete => 'Ambele funcții Health Connect sunt activate.';
	@override String get actionFailed => 'Health Connect nu a putut fi deschis. Încearcă din nou.';
	@override String get requestPermissions => 'Solicită permisiuni';
	@override String get permissionRequestCancelledOrFailed => 'Cererea de permisiuni a fost anulată sau a eșuat. Te rugăm încearcă din nou sau acordă permisiunile manual în setările Health Connect.';
	@override String get permissionRequestFailed => 'Imposibil de solicitat permisiuni. Te rugăm încearcă din nou sau acordă permisiunile manual în setările Health Connect.';
	@override String get requestingPermissions => 'Se solicită...';
}

// Path: settings.about
class _Translations$settings$about$ro extends Translations$settings$about$en {
	_Translations$settings$about$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Despre';
	@override String get tagline => 'Conștientizare calorică rapidă, gratuită și cu confidențialitate pe primul loc';
	@override late final _Translations$settings$about$ourStory$ro ourStory = _Translations$settings$about$ourStory$ro._(_root);
	@override late final _Translations$settings$about$privacy$ro privacy = _Translations$settings$about$privacy$ro._(_root);
	@override late final _Translations$settings$about$developer$ro developer = _Translations$settings$about$developer$ro._(_root);
	@override late final _Translations$settings$about$feedback$ro feedback = _Translations$settings$about$feedback$ro._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$ro extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify versiunea ${version}';
	@override String build({required Object buildNumber}) => 'Compilarea ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$ro extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mic dejun! 🍳';
	@override String get body => 'Nu uita să-ți înregistrezi micul dejun';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$ro extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Prânz! 🥗';
	@override String get body => 'E timpul să notezi prânzul';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$ro extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cină! 🍽️';
	@override String get body => 'Nu uita să-ți înregistrezi cina';
}

// Path: notifications.snack
class _Translations$notifications$snack$ro extends Translations$notifications$snack$en {
	_Translations$notifications$snack$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gustare! 🍎';
	@override String get body => 'E timpul pentru o gustare sănătoasă';
}

// Path: notifications.test
class _Translations$notifications$test$ro extends Translations$notifications$test$en {
	_Translations$notifications$test$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificare de test';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$ro extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} oferă informații nutriționale estimate. Precizia depinde de datele tale și de variațiile alimentelor. Folosește-le ca ghid, nu ca sursă definitivă. Consultă un specialist pentru sfaturi dietetice personalizate.';
	@override late final _Translations$disclaimer$snap$portionSize$ro portionSize = _Translations$disclaimer$snap$portionSize$ro._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$ro preparationMethods = _Translations$disclaimer$snap$preparationMethods$ro._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$ro ingredients = _Translations$disclaimer$snap$ingredients$ro._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$ro databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$ro._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$ro extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Despre estimarea greutății';
	@override String get description => 'Schimbarea proiectată a greutății este o estimare teoretică bazată pe modelul simplu calorii-in vs calorii-out. Este destinat doar ca ghid motivațional, nu ca o predicție a greutății tale reale.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$ro calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$ro._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$ro biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$ro._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$ro waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$ro._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$ro professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$ro._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$ro extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Acești indicatori te ajută să înțelegi nevoile de energie ale corpului tău și să îți ghideze obiectivele nutriționale.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$ro bmr = _Translations$disclaimer$healthMetrics$bmr$ro._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$ro tdee = _Translations$disclaimer$healthMetrics$tdee$ro._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$ro dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$ro._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$ro extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimare cheltuieli calorice';
	@override String get description => 'Când datele din Health Connect nu sunt disponibile, estimăm caloriile arse astăzi folosind BMR și nivelul de activitate (TDEE), scalate pentru porțiunea zilei care a trecut.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$ro howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$ro._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$ro professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$ro._(_root);
}

// Path: watch.common
class _Translations$watch$common$ro extends Translations$watch$common$en {
	_Translations$watch$common$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get back => 'Înapoi';
	@override String get cancel => 'Anulează';
	@override String get delete => 'Șterge';
	@override String get retry => 'Reîncearcă';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$ro extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Nutrient';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} grame';
	@override String get protein => 'Proteine';
	@override String get carbs => 'Carbohidrați';
	@override String get fat => 'Grăsimi';
	@override String get fiber => 'Fibre';
}

// Path: watch.sync
class _Translations$watch$sync$ro extends Translations$watch$sync$en {
	_Translations$watch$sync$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Sincronizează cu telefonul';
	@override String get syncing => 'Sincronizare…';
	@override String get synced => 'Sincronizat';
	@override String get syncedJustNow => 'Sincronizat chiar acum';
	@override String syncedMinutesAgo({required Object minutes}) => 'Sincronizat acum ${minutes}m';
	@override String get failed => 'Sincronizare eșuată';
	@override String get phoneDisconnected => 'Telefon deconectat';
	@override String get tapToSync => 'Atinge pentru a sincroniza';
	@override String get refreshFailed => 'Nu s-a putut reîmprospăta. Verifică-ți telefonul.';
	@override String get openPhone => 'Deschide Calorify pe telefon, apoi apasă reîmprospătare.';
}

// Path: watch.home
class _Translations$watch$home$ro extends Translations$watch$home$en {
	_Translations$watch$home$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get today => 'Astăzi';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} calorii consumate din ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} peste obiectiv';
	@override String remaining({required Object calories}) => '${calories} rămase';
	@override String left({required Object calories}) => '${calories} rămase';
	@override String goal({required Object calories}) => '${calories} kcal obiectiv';
	@override String get logMeal => 'Înregistrează o masă';
	@override String get todayMeals => 'Mesele de azi';
	@override String todayMealsCount({required Object count}) => 'Mesele de azi, ${count}';
	@override String viewMore({required Object count}) => 'Vezi încă ${count}';
	@override String viewMoreSemantics({required Object count}) => '${count} mese în plus, atinge pentru a le vedea pe toate';
	@override String get noMeals => 'Nu a fost înregistrată nicio masă';
	@override String get noMealsSemantics => 'Nicio masă înregistrată azi';
	@override String get tapLog => 'Atinge Înregistrează pentru a începe';
	@override String get removedFromQueue => 'Masa a fost eliminată din coada offline.';
	@override String get removedOffline => 'Masa eliminată offline. Se va sincroniza când telefonul se reconectează.';
	@override String get deleteFailed => 'Nu s-a putut șterge masa';
}

// Path: watch.history
class _Translations$watch$history$ro extends Translations$watch$history$en {
	_Translations$watch$history$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mesele de azi';
	@override String get refresh => 'Reîmprospătează mesele';
	@override String get loadFailed => 'Nu s-au putut încărca mesele';
	@override String get syncFailed => 'Nu s-a putut sincroniza';
	@override String get emptyTitle => 'Nicio masă încă';
	@override String get emptyMessage => 'Înregistrează o masă din ecranul principal pentru a o vedea aici.';
}

// Path: watch.favorites
class _Translations$watch$favorites$ro extends Translations$watch$favorites$en {
	_Translations$watch$favorites$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preferate';
	@override String get refresh => 'Reîmprospătează preferatele';
	@override String get loadFailed => 'Nu s-au putut încărca preferatele';
	@override String get syncFailed => 'Nu s-a putut sincroniza';
	@override String get emptyTitle => 'Niciun favorit încă';
	@override String get emptyMessage => 'Favoritează mesele în aplicația de pe telefon pentru a le înregistra cu un singur tap aici.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} calorii. Atinge pentru a înregistra.';
	@override String logged({required Object name}) => '${name} înregistrată!';
	@override String savedOffline({required Object name}) => '${name} salvat offline. Se va sincroniza când telefonul se reconectează.';
	@override String get saveFailed => 'Nu s-a putut salva masa. Te rog încearcă din nou.';
	@override String get log => 'Înregistrează';
}

// Path: watch.meal
class _Translations$watch$meal$ro extends Translations$watch$meal$en {
	_Translations$watch$meal$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} calorii, înregistrată la ${time}.';
	@override String get longPressDelete => 'Apăsare lungă pentru a șterge.';
	@override String get deleteTitle => 'Ștergi masa?';
}

// Path: watch.voice
class _Translations$watch$voice$ro extends Translations$watch$voice$en {
	_Translations$watch$voice$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Înregistrare vocală a mesei';
	@override String get processing => 'Verificăm masa…';
	@override String get processingDescription => 'Estimăm porțiile și valorile nutriționale';
	@override String get listening => 'Ascultând';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Oprește înregistrarea';
	@override String get start => 'Atinge pentru a începe înregistrarea';
	@override String get starting => 'Pornire microfon…';
	@override String get prompt => 'Atinge, apoi descrie masa';
	@override String get tapToRetry => 'Atinge pentru a reîncerca';
	@override String get example => 'Încearcă „2 rotis cu dal”';
	@override String get unavailable => 'Introducerea vocală nu este disponibilă. Verifică permisiunea microfonului în setările ceasului.';
	@override String get didNotStart => 'Microfonul nu a pornit. Atinge pentru a reîncerca.';
	@override String get startFailed => 'Nu s-a putut porni înregistrarea. Verifică permisiunile microfonului.';
	@override String get allowMicrophone => 'Permite accesul la microfon pentru a înregistra mesele vocal.';
	@override String get needsConnection => 'Recunoașterea vocală necesită conexiune. Atinge pentru a reîncerca.';
	@override String get microphoneUnavailable => 'Microfonul nu este disponibil. Atinge pentru a reîncerca.';
	@override String get microphoneBusy => 'Microfonul este ocupat. Așteaptă puțin și reîncearcă.';
	@override String get languageUnsupported => 'Introducerea vocală nu suportă limba ceasului.';
	@override String get temporarilyBusy => 'Introducerea vocală este temporar ocupată. Așteaptă puțin și reîncearcă.';
	@override String get notRecognized => 'Nu am înțeles. Atinge microfonul și încearcă din nou.';
	@override String get noSpeech => 'Nu s-a detectat vorbire. Atinge microfonul pentru a încerca din nou.';
	@override String get analysisFailed => 'Analiza a eșuat. Te rog încearcă din nou.';
	@override String get mealNotIdentified => 'Nu am putut identifica acea masă. Încearcă să o descrii diferit.';
}

// Path: watch.result
class _Translations$watch$result$ro extends Translations$watch$result$en {
	_Translations$watch$result$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Detalii masă';
	@override String get savedOffline => 'Salvat offline';
	@override String get logged => 'Înregistrat!';
	@override String get mealFound => 'Masă găsită';
	@override String get estimatedEnergy => 'Energie estimată';
	@override String get logMeal => 'Înregistrează masa';
	@override String get logging => 'Se înregistrează…';
	@override String get logAnother => 'Înregistrează alta';
	@override String get goingBack => 'Se întoarce…';
	@override String get savedOfflineMessage => 'Masa salvată offline. Se va sincroniza când telefonul se reconectează.';
	@override String get saveFailed => 'Nu s-a putut salva masa. Te rog încearcă din nou.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$ro extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Recunoaștere inteligentă a alimentelor';
	@override String get description => 'Fă o fotografie și lasă AI să identifice masa ta';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$ro extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analiză AI';
	@override String get description => 'Primește informații nutriționale instant din descrierile tale';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$ro extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrare Health Connect';
	@override String get description => 'Conectează-te la Health Connect pentru informații mai bune';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$ro extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Sub greutate';
	@override String get healthyWeight => 'Greutate sănătoasă';
	@override String get overweight => 'Supraponderal';
	@override String get obese => 'Obez';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$ro extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Te putem ajuta să construiești un plan sănătos pentru a ajunge la o greutate echilibrată, cu mese bogate în nutrienți.';
	@override String get healthy => 'Felicitări! Te încadrezi într-un interval sănătos. Te vom ajuta să-ți menții vitalitatea și nivelul de energie.';
	@override String overweight({required Object appLabel}) => '${appLabel} îți va simplifica parcursul cu urmărire asistată de AI pentru a te ajuta să-ți atingi ținta confortabil.';
	@override String get obese => 'Suntem aici să te susținem cu recomandări personalizate și strategii sustenabile pentru obiectivele tale de sănătate.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$ro extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calorii arse';
	@override String get description => 'Citește totalul caloriilor arse astăzi din Health Connect';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$ro extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calorii arse';
	@override String get description => 'Citește totalul caloriilor arse astăzi din Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$ro extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Partajează mesele înregistrate';
	@override String get description => 'Scrie în Health Connect mesele pe care le înregistrezi în Calorify';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$ro extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Partajează mesele înregistrate';
	@override String get description => 'Scrie în Health Connect mesele pe care le înregistrezi în Calorify';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$ro extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tu deții controlul';
	@override String get description => 'Alege oricare dintre permisiuni și modifică accesul oricând';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$ro extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tu deții controlul';
	@override String get description => 'Alege oricare dintre permisiuni și modifică accesul oricând';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$ro extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nu ești singur';
	@override String get genericMessage => 'Cercetările arată că urmărirea consecventă este principalul predictor al succesului pe termen lung.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Pentru o persoană de ${age} ani (${gender}) care dorește să ${goal}, urmărirea constantă este principalul predictor al succesului.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} face procesul de 10x mai ușor decât manual.';
	@override String get getStartedTitle => 'Gata să începi?';
	@override String get tipPhoto => 'Fotografiază mesele pentru analiză instantanee';
	@override String get tipConsistency => 'Înregistrează constant pentru a vedea progrese semnificative';
	@override String get tipProgress => 'Urmărește-ți progresul zilnic pentru a rămâne motivat';
	@override String get button => 'Hai să începem';
	@override String get defaultGender => 'persoană';
	@override String get defaultGoal => 'tu mai sănătos';
}

// Path: onboarding.reinforcement.healthProfile
class _Translations$onboarding$reinforcement$healthProfile$ro extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profilul tău de sănătate';
	@override String bmiDescription({required Object bmi}) => 'Pe baza metricilor tale, BMI este ${bmi}.';
	@override String get finalizeDescription => 'Să finalizăm profilul tău pentru a-ți personaliza experiența.';
	@override String get goalGain => 'câștigă';
	@override String get goalLose => 'pierde';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Pentru a-ți atinge obiectivul, vei ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Ai atins greutatea țintă! Te vom ajuta să o menții.';
	@override String get button => 'Hai să începem';
}

// Path: onboarding.reinforcement.goalLifestyle
class _Translations$onboarding$reinforcement$goalLifestyle$ro extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Un început excelent!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Ai făcut primul pas către ${goalText}. Deoarece ești ${activityText}, ${appLabel} îți va ajusta țintele pentru a se potrivi stilului tău de viață.';
	@override String get personalizedTargets => 'Ținte calorice personalizate';
	@override String get aiMealDetection => 'Detectare mese asistată de AI';
	@override String get macroBreakdowns => 'Defalcări detaliate ale macronutrienților';
	@override String get button => 'Hai să începem';
	@override String get defaultGoal => 'obiectivele tale';
	@override String get defaultActivity => 'activ';
}

// Path: editProfile.weightGoals.loseWeight
class _Translations$editProfile$weightGoals$loseWeight$ro extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Slăbește';
	@override String get description => 'Creează un deficit caloric pentru a pierde în greutate';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$ro extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Menține greutatea';
	@override String get description => 'Menține greutatea actuală';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$ro extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Crește în greutate';
	@override String get description => 'Creează un surplus caloric pentru a crește în greutate';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$ro extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentar';
	@override String get description => 'Puțin sau deloc exercițiu';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$ro extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ușor activ';
	@override String get description => 'Exercițiu ușor 1-3 zile/săptămână';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$ro extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderat activ';
	@override String get description => 'Exercițiu moderat 3-5 zile/săptămână';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$ro extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Foarte activ';
	@override String get description => 'Exercițiu intens 6-7 zile/săptămână';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$ro extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrem de activ';
	@override String get description => 'Exercițiu foarte intens, muncă fizică';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$ro extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect indisponibil';
	@override String get description => 'Health Connect nu este acceptat pe acest dispozitiv.';
	@override String get unsupportedDescription => 'Health Connect nu este acceptat pe acest dispozitiv.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$ro extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect necesită atenție';
	@override String get description => 'Instalează sau actualizează Health Connect înainte de a gestiona accesul.';
	@override String get action => 'Instalează sau actualizează';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$ro extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permisiuni';
	@override String get description => 'Următoarele permisiuni sunt solicitate pentru integrarea cu Health Connect:';
	@override String get granted => 'Acordat';
	@override String get notGranted => 'Neacordat';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$ro caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$ro._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$ro nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$ro._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$ro nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$ro._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$ro extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Povestea noastră';
	@override String content({required Object appLabel}) => '${appLabel} a luat naștere dintr-o frustrare simplă: majoritatea aplicațiilor de urmărire a caloriilor sunt fie prea complicate, solicită introduceri manuale constante, percep taxe mari de abonament sau compromit confidențialitatea.\n\nCa dezvoltator solo, am vrut să creez ceva mai simplu și mai corect — o aplicație care folosește AI pentru a reduce efortul, rămâne rapidă și gratuită și tratează datele tale de sănătate cu respect.\n\n${appLabel} este aplicația pe care mi-aș fi dorit să existe: fără conturi, fără urmărire, fără reclame — doar informații clare, practice și obiectivele tale de sănătate.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$ro extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Confidențialitatea ta contează';
	@override String get description => 'Confidențialitatea nu este un detaliu — este un principiu de design. Iată ce înseamnă asta în practică:';
	@override String get noAccounts => 'Fără conturi necesare\nFolosește aplicația imediat. Fără înregistrări, fără identități.';
	@override String noTracking({required Object appLabel}) => 'Analize și diagnosticare limitate\n${appLabel} folosește evenimente de bază din aplicație și diagnosticarea blocărilor pentru a îmbunătăți fiabilitatea. Valorile din înregistrările de sănătate nu sunt folosite pentru publicitate și nu sunt vândute.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Analize și diagnosticare limitate\n${appLabel} folosește evenimente de bază din aplicație și diagnosticarea blocărilor pentru a îmbunătăți fiabilitatea. Valorile din înregistrările de sănătate nu sunt folosite pentru publicitate și nu sunt vândute.';
	@override String noAds({required Object appLabel}) => 'Fără reclame prin design\n${appLabel} este construit pentru a funcționa fără reclame sau monetizare bazată pe date.';
	@override String get noDataSelling => 'Fără vânzare de date\nDatele tale de sănătate nu sunt niciodată vândute sau împărtășite terților.';
	@override String get localStorage => 'Stocare locală prioritară\nDatele tale rămân pe dispozitivul tău.';
	@override String get privacyPolicy => 'Politica de confidențialitate';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$ro extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Creat de un dezvoltator solo';
	@override String description({required Object appLabel}) => '${appLabel} este creat și întreținut de un singur dezvoltator concentrat pe crearea de software de sănătate calm și respectuos cu confidențialitatea.\n\nFeedback-ul este citit personal și ajută la direcționarea aplicației.';
	@override String get website => 'Site web';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$ro extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Îți place ${appLabel}?';
	@override String description({required Object appLabel}) => 'Feedback-ul tău ajută la îmbunătățirea ${appLabel} pentru toată lumea.';
	@override String get rateApp => 'Evaluează în Play Store';
	@override String get sendFeedback => 'Trimite feedback';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$ro extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mărimea porției';
	@override String get description => 'Acuratețea estimărilor depinde în mare măsură de evaluarea corectă a mărimii porției.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$ro extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Metode de preparare';
	@override String description({required Object appLabel}) => 'Metodele de gătit pot altera semnificativ conținutul nutrițional. Estimările ${appLabel} pot să nu ia întotdeauna în calcul aceste variații.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$ro extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingrediente';
	@override String get description => 'Preparatele complexe cu multe ingrediente ascunse pot duce la estimări mai puțin exacte.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$ro extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitări ale bazei de date';
	@override String description({required Object appLabel}) => 'Baza de date de alimente a ${appLabel} este extinsă, dar s-ar putea să nu includă fiecare aliment sau variație.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$ro extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Acuratețea caloriilor';
	@override String get description => 'Această estimare este la fel de precisă ca înregistrările tale de aport și cheltuieli calorice. Înregistrările inexacte vor conduce la proiecții inexacte.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$ro extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Factori biologici';
	@override String description({required Object appLabel}) => 'Pierderea/câștigul real în greutate este influențat de metabolism, hormoni, somn, stres, hidratare și alți factori individuali pe care ${appLabel} nu îi poate măsura.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$ro extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Greutate apă & fluctuații';
	@override String get description => 'Greutatea zilnică normală poate fluctua semnificativ din cauza retenției de apă, digestiei și a momentului. Estimarea nu ia în calcul aceste schimbări zilnice.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$ro extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ghidare profesională';
	@override String get description => 'Nu folosi această estimare pentru decizii medicale. Consultă întotdeauna un profesionist în sănătate sau un dietetician înregistrat pentru sfaturi personalizate privind gestionarea greutății.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$ro extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Rata metabolică bazală (BMR) este numărul de calorii pe care corpul le arde în repaus pentru a menține funcțiile de bază precum respirația și circulația. BMR depinde de vârstă, gen, înălțime și greutate. Un BMR mai mare înseamnă că organismul arde natural mai multe calorii în repaus, de obicei din cauza masei musculare mai mari, a vârstei mai tinere sau a sexului masculin. Un BMR mai mic indică de obicei masă musculară mai redusă, vârstă mai înaintată sau sex feminin.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$ro extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Cheltuiala totală de energie pe zi (TDEE) este totalul caloriilor arse zilnic, incluzând BMR plus caloriile din activitate fizică și mișcare zilnică. TDEE depinde de BMR și nivelul de activitate. Un TDEE mai mare înseamnă că arzi mai multe calorii în total, de obicei pentru că ești mai activ sau ai un BMR mai mare. Un TDEE mai mic sugerează mai puțină activitate zilnică sau un BMR mai mic.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$ro extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Obiectiv zilnic';
	@override String get description => 'Obiectivul zilnic este recomandarea ta de aport caloric zilnic bazată pe TDEE și obiectivul de greutate. Pentru pierdere în greutate, consumi mai puține calorii decât TDEE. Pentru menținere, egalezi TDEE. Pentru creștere, consumi mai multe calorii decât TDEE. Acest lucru te ajută să atingi schimbarea dorită a greutății într-un ritm sănătos.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$ro extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cum se calculează estimarea';
	@override String get description => 'Calculăm TDEE-ul tău (pe baza profilului) și îl înmulțim cu fracțiunea zilei trecute (ore + minute) / 24 pentru a estima caloriile arse până acum.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$ro extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ghidare profesională';
	@override String get description => 'Nu folosi această estimare pentru decizii medicale. Consultă întotdeauna un profesionist în sănătate sau un dietetician înregistrat pentru sfaturi personalizate privind gestionarea greutății.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$ro extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Citește caloriile totale arse';
	@override String get description => 'Permite aplicației să citească caloriile tale totale arse din Health Connect.';
	@override String get usage => 'Această permisiune este folosită pentru a afișa arderea zilnică de calorii în aplicație, ajutându-te să înțelegi cheltuiala totală de energie pe parcursul zilei.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$ro extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Citește date nutriționale';
	@override String get description => 'Permite aplicației să citească date nutriționale din Health Connect.';
	@override String get usage => 'Această permisiune permite aplicației să citească informații nutriționale înregistrate de alte aplicații conectate la Health Connect, oferind o vedere completă a nutriției tale.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$ro extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$ro._(TranslationsRo root) : this._root = root, super.internal(root);

	final TranslationsRo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scrie date nutriționale';
	@override String get description => 'Permite aplicației să scrie date nutriționale în Health Connect.';
	@override String get usage => 'Această permisiune permite aplicației să sincronizeze mesele înregistrate în Health Connect, făcând datele tale nutriționale disponibile pentru alte aplicații de sănătate și fitness pe care le folosești.';
}

/// The flat map containing all translations for locale <ro>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsRo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Română',
			'flag' => '🇷🇴',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Ai făcut prea multe solicitări. Așteaptă puțin înainte de a încerca din nou.',
			'errors.networkError' => 'Eroare de rețea. Verifică conexiunea la internet.',
			'errors.unknownError' => 'Ceva nu a mers bine. Te rugăm încearcă din nou mai târziu.',
			'errors.loadingProfileData' => 'Eroare la încărcarea datelor profilului',
			'errors.somethingWentWrong' => 'Ceva nu a mers bine.',
			'errors.retry' => 'Reîncearcă',
			'onboarding.welcome' => ({required Object appLabel}) => 'Bine ai venit la ${appLabel}',
			'onboarding.subtitle' => 'Companionul tău personal pentru nutriție alimentat de AI',
			'onboarding.getStarted' => 'Începe',
			'onboarding.features.foodRecognition.title' => 'Recunoaștere inteligentă a alimentelor',
			'onboarding.features.foodRecognition.description' => 'Fă o fotografie și lasă AI să identifice masa ta',
			'onboarding.features.aiAnalysis.title' => 'Analiză AI',
			'onboarding.features.aiAnalysis.description' => 'Primește informații nutriționale instant din descrierile tale',
			'onboarding.features.healthIntegration.title' => 'Integrare Health Connect',
			'onboarding.features.healthIntegration.description' => 'Conectează-te la Health Connect pentru informații mai bune',
			'onboarding.gender.title' => 'Care este genul tău?',
			'onboarding.gender.description' => 'Genul ne ajută să calculăm corect rata metabolică bazală (BMR).',
			'onboarding.gender.next' => 'Următorul',
			'onboarding.height.title' => 'Cât de înalt ești?',
			'onboarding.height.description' => 'Înălțimea te ajută să calculăm BMI și nevoile energetice cu acuratețe.',
			'onboarding.height.metric' => 'Sistem metric',
			'onboarding.height.imperial' => 'Sistem imperial',
			'onboarding.height.next' => 'Următorul',
			'onboarding.weight.currentTitle' => 'Care este greutatea ta actuală?',
			'onboarding.weight.currentDescription' => 'Greutatea actuală este esențială pentru personalizarea obiectivelor zilnice.',
			'onboarding.weight.targetTitle' => 'Care este greutatea ta țintă?',
			'onboarding.weight.targetDescription' => 'Stabilirea unei greutăți țintă ne ajută să determinăm planul pe termen lung.',
			'onboarding.weight.metric' => 'Sistem metric',
			'onboarding.weight.imperial' => 'Sistem imperial',
			'onboarding.weight.next' => 'Următorul',
			'onboarding.age.title' => 'Când e ziua ta de naștere?',
			'onboarding.age.description' => 'Vârsta te ajută să calculăm cu acuratețe necesarul tău caloric.',
			'onboarding.age.next' => 'Următorul',
			'onboarding.bmiScale.underweight' => 'Sub',
			'onboarding.bmiScale.healthy' => 'Sănătos',
			'onboarding.bmiScale.overweight' => 'Peste',
			'onboarding.bmiScale.obese' => 'Obez',
			'onboarding.bmiScale.categories.underweight' => 'Sub greutate',
			'onboarding.bmiScale.categories.healthyWeight' => 'Greutate sănătoasă',
			'onboarding.bmiScale.categories.overweight' => 'Supraponderal',
			'onboarding.bmiScale.categories.obese' => 'Obez',
			'onboarding.bmiScale.messages.underweight' => 'Te putem ajuta să construiești un plan sănătos pentru a ajunge la o greutate echilibrată, cu mese bogate în nutrienți.',
			'onboarding.bmiScale.messages.healthy' => 'Felicitări! Te încadrezi într-un interval sănătos. Te vom ajuta să-ți menții vitalitatea și nivelul de energie.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} îți va simplifica parcursul cu urmărire asistată de AI pentru a te ajuta să-ți atingi ținta confortabil.',
			'onboarding.bmiScale.messages.obese' => 'Suntem aici să te susținem cu recomandări personalizate și strategii sustenabile pentru obiectivele tale de sănătate.',
			'onboarding.weightGoal.title' => 'Care este obiectivul tău?',
			'onboarding.weightGoal.description' => 'Alege obiectivul care descrie cel mai bine ce vrei să obții',
			'onboarding.activityLevel.title' => 'Cât de activ ești?',
			'onboarding.activityLevel.description' => 'Acest lucru ne ajută să calculăm mai precis necesarul tău caloric zilnic',
			'onboarding.healthConnect.title' => 'Conectează-te la Health Connect',
			'onboarding.healthConnect.description' => 'Folosește caloriile arse în obiectivul tău zilnic și, opțional, partajează mesele înregistrate cu Health Connect.',
			'onboarding.healthConnect.overviewDescription' => 'Folosește caloriile arse în obiectivul tău zilnic și, opțional, partajează mesele înregistrate cu Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Calorii arse',
			'onboarding.healthConnect.automaticTracking.description' => 'Citește totalul caloriilor arse astăzi din Health Connect',
			'onboarding.healthConnect.caloriesBurned.title' => 'Calorii arse',
			'onboarding.healthConnect.caloriesBurned.description' => 'Citește totalul caloriilor arse astăzi din Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Partajează mesele înregistrate',
			'onboarding.healthConnect.progressInsights.description' => 'Scrie în Health Connect mesele pe care le înregistrezi în Calorify',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Partajează mesele înregistrate',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Scrie în Health Connect mesele pe care le înregistrezi în Calorify',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Tu deții controlul',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Alege oricare dintre permisiuni și modifică accesul oricând',
			'onboarding.healthConnect.userControl.title' => 'Tu deții controlul',
			'onboarding.healthConnect.userControl.description' => 'Alege oricare dintre permisiuni și modifică accesul oricând',
			'onboarding.healthConnect.connected' => 'Health Connect conectat',
			'onboarding.healthConnect.notConnected' => 'Health Connect neconectat',
			'onboarding.healthConnect.setup' => 'Configurează Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Sari pentru moment',
			'onboarding.healthConnect.statusConnected' => 'Health Connect este conectat.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect a fost conectat cu succes!',
			'onboarding.healthConnect.statusNotConnected' => 'Alege funcțiile Health Connect pe care vrei să le activezi.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect este conectat parțial. Activează permisiunea rămasă pentru a folosi ambele funcții.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Instalează sau actualizează Health Connect pentru a continua.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect nu este acceptat pe acest dispozitiv.',
			'onboarding.healthConnect.installOrUpdate' => 'Instalează sau actualizează',
			'onboarding.healthConnect.manageAccess' => 'Gestionează accesul',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Permisiune refuzată. Activează permisiunile Health Connect din setările telefonului pentru ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Eroare la configurarea Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Nu ești singur',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Cercetările arată că urmărirea consecventă este principalul predictor al succesului pe termen lung.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Pentru o persoană de ${age} ani (${gender}) care dorește să ${goal}, urmărirea constantă este principalul predictor al succesului.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} face procesul de 10x mai ușor decât manual.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Gata să începi?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Fotografiază mesele pentru analiză instantanee',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Înregistrează constant pentru a vedea progrese semnificative',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Urmărește-ți progresul zilnic pentru a rămâne motivat',
			'onboarding.reinforcement.trackingSuccess.button' => 'Hai să începem',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'persoană',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'tu mai sănătos',
			'onboarding.reinforcement.healthProfile.title' => 'Profilul tău de sănătate',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Pe baza metricilor tale, BMI este ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Să finalizăm profilul tău pentru a-ți personaliza experiența.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'câștigă',
			'onboarding.reinforcement.healthProfile.goalLose' => 'pierde',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Pentru a-ți atinge obiectivul, vei ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Ai atins greutatea țintă! Te vom ajuta să o menții.',
			'onboarding.reinforcement.healthProfile.button' => 'Hai să începem',
			'onboarding.reinforcement.goalLifestyle.title' => 'Un început excelent!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Ai făcut primul pas către ${goalText}. Deoarece ești ${activityText}, ${appLabel} îți va ajusta țintele pentru a se potrivi stilului tău de viață.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Ținte calorice personalizate',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Detectare mese asistată de AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Defalcări detaliate ale macronutrienților',
			'onboarding.reinforcement.goalLifestyle.button' => 'Hai să începem',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'obiectivele tale',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'activ',
			'tabs.dashboard' => 'Tabloul de bord',
			'tabs.history' => 'Istoric',
			'home.aiSummary.title' => 'Rezumat AI',
			'home.aiSummary.logMore' => 'Înregistrează mai multe mese în următoarele zile pentru a primi perspective AI personalizate.',
			'home.aiSummary.loading' => 'Se încarcă rezumatul...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} mese înregistrate',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Scor echilibru ${score}',
			'home.aiSummary.topFoods' => 'Alimente principale',
			'home.aiSummary.trendUp' => 'Calorii în creștere',
			'home.aiSummary.trendDown' => 'Calorii în scădere',
			'home.aiSummary.trendSteady' => 'Calorii stabile',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Actualizat ${time}',
			'home.dailyGoal.title' => 'Setează-ți obiectivul zilnic',
			'home.dailyGoal.titleSet' => 'Obiectivul tău zilnic',
			'home.dailyGoal.description' => 'Gata să pornești călătoria spre bine? Setează-ți ținta calorică zilnică mai jos pentru a-ți începe progresul.',
			'home.dailyGoal.descriptionSet' => 'Compasul tău este setat! Aceasta este ținta ta calorică zilnică pentru orientare.',
			'home.dailyGoal.yourGoal' => 'Obiectivul tău',
			'home.dailyGoal.goal' => 'Obiectiv',
			'home.dailyGoal.dailyCalories' => 'Calorii zilnice (kcal)',
			'home.dailyGoal.setGoal' => 'Setează obiectiv',
			'home.dailyGoal.intake' => 'Consum',
			'home.dailyGoal.burned' => 'Arse',
			'home.dailyGoal.weightImpact' => 'Impact asupra greutății',
			'home.dailyGoal.estLoss' => 'Estim. pierdere de',
			'home.dailyGoal.estGain' => 'Estim. câștig de',
			'home.dailyGoal.kcal' => 'kilocalorii',
			'home.dailySummary.title' => 'Rezumat zilnic',
			'home.dailySummary.calories' => 'Calorii',
			'home.dailySummary.carbs' => 'Carbohidrați',
			'home.dailySummary.protein' => 'Proteine',
			'home.dailySummary.fat' => 'Grăsimi',
			'home.dailySummary.fiber' => 'Fibră',
			'home.dailySummary.grams' => 'grame',
			'home.dailySummary.chartAccessibilityLabel' => 'Graficul macronutrienților',
			'home.intakeProgress.title' => 'Distribuția macro de azi',
			'home.intakeProgress.target' => 'Țintă',
			'home.intakeProgress.current' => 'Curent',
			'home.intakeHistory.title' => 'Istoric macro pe 7 zile',
			'home.intakeHistory.trendTitle' => 'Tendința de azi',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Vârf: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Încă nu există istoricul',
			'home.intakeHistory.startLogging' => 'Începe să înregistrezi mese pentru a vedea\n7-day macro trends here',
			'home.mealLog.title' => 'Mese înregistrate',
			'home.mealLog.emptyMessage' => 'Fă o poză ultimei tale mese pentru a o înregistra aici.',
			'home.mealLog.noMealsToday' => 'Nicio masă înregistrată pentru azi',
			'home.mealLog.seeAllMeals' => 'Vezi toate mesele',
			'home.mealDescription.title' => 'Adăugare rapidă cu AI',
			'home.mealDescription.description' => 'Descrie-ți masa și lasă AI să se ocupe de detalii.',
			'home.mealDescription.hint' => 'ex. la micul dejun am avut un bol mare de fulgi de ovăz cu o banană feliată și o cupă de whey ...',
			'home.mealDescription.analyzeMeal' => 'Analizează masa',
			'home.favoriteMeals.title' => 'Mese favorite',
			'home.favoriteMeals.description' => 'Adaugă rapid una dintre mesele tale preferate.',
			'home.favoriteMeals.noFavorites' => 'Nu există mese favorite încă.',
			'home.favoriteMeals.addFavoriteHint' => 'Apasă steaua pe o masă pentru a o marca ca favorit.',
			'home.favoriteMeals.seeAll' => 'Vezi toate',
			'home.favoriteMeals.add' => 'Adaugă',
			'home.mealSnap.title' => 'Fă o poză & urmărește masa',
			'home.mealSnap.description' => 'Folosește camera pentru a face o poză alimentelor pentru analiza AI.',
			'home.mealSnap.openCamera' => 'Deschide camera',
			'home.mealSnap.gallery' => 'Galerie',
			'home.mealSnap.compressingPhoto' => 'Optimizare fotografie…',
			'home.mealSnap.uploadingPhoto' => 'Încărcare fotografie…',
			'home.connectHealth.title' => 'Sincronizează cu Health Connect',
			'home.connectHealth.description' => 'Folosește caloriile arse în obiectivul tău și partajează mesele înregistrate',
			'home.connectHealth.install' => 'Instalează sau actualizează',
			'home.connectHealth.dataUseDescription' => 'Folosește caloriile arse în obiectivul tău și partajează mesele înregistrate',
			'home.connectHealth.installOrUpdate' => 'Instalează sau actualizează',
			'home.connectHealth.connect' => 'Conectează-te',
			'history.noMeals' => 'Nicio masă înregistrată',
			'history.emptyMessage' => 'Fă o poză ultimei tale mese pentru a o înregistra aici.',
			'history.today' => 'Azi',
			'history.yesterday' => 'Ieri',
			'meal.ohNo' => 'O, nu!',
			'meal.delete' => 'Șterge',
			'meal.editMeal' => 'Editează masa',
			'meal.addMeal' => 'Adaugă masă',
			'meal.saveMeal' => 'Salvează masa',
			'meal.save' => 'Salvează',
			'meal.mealName' => 'Numele mesei',
			'meal.mealNameHint' => 'ex.: Ouă amestecate cu pâine prăjită',
			'meal.nameRequired' => 'Introduceți un nume pentru masă înainte de a salva.',
			'meal.mealQuantity' => 'Cantitate masă',
			'meal.mealQuantityHint' => 'ex.: 1 bol, 2 felii',
			'meal.timeOfMeal' => 'Ora mesei',
			'meal.timeOfMealHint' => 'Selectează ora la care ai mâncat',
			'meal.mealType' => 'Tipul mesei',
			'meal.nutrition.calories' => 'Calorii',
			'meal.nutrition.carbs' => 'Carbohidrați (g)',
			'meal.nutrition.protein' => 'Proteine (g)',
			'meal.nutrition.fat' => 'Grăsimi (g)',
			'meal.nutrition.fiber' => 'Fibră (g)',
			'meal.deleteConfirmation.title' => 'Șterge masa',
			'meal.deleteConfirmation.message' => 'Ești sigur că vrei să ștergi această înregistrare a mesei?',
			'meal.deleteConfirmation.cancel' => 'Anulează',
			'meal.deleteConfirmation.delete' => 'Șterge',
			'meal.addedToLog' => 'Masa a fost adăugată în jurnal!',
			'meal.couldNotAdd' => ({required Object error}) => 'Nu s-a putut adăuga masa: ${error}',
			'meal.savedSuccessfully' => 'Masa a fost adăugată cu succes!',
			'meal.updatedSuccessfully' => 'Masa a fost actualizată cu succes!',
			'meal.errorSaving' => ({required Object error}) => 'Eroare la salvarea mesei: ${error}',
			'meal.removedFromFavorites' => 'Eliminat din favorite!',
			'meal.savedAsFavorite' => 'Masa salvată ca favorit!',
			'meal.unfavorite' => 'Elimină din favorite',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Nu s-a putut actualiza favorit: ${error}',
			'meal.feedbackThanks' => 'Mulțumim pentru feedback!',
			'meal.reanalysisUpdated' => 'Analiza mesei a fost actualizată pe baza feedback-ului tău.',
			'meal.failedToProcess' => ({required Object error}) => 'Procesare eșuată: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Procesare imagine eșuată: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Eroare la comprimarea imaginii: ${error}',
			'meal.failedToSave' => 'Salvarea datelor a eșuat. Te rugăm încearcă din nou.',
			'meal.skip' => 'Sari',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Întrebare ${current} din ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Nu există întrebări disponibile',
			'meal.questionFlow.next' => 'Următorul',
			'meal.questionFlow.continueLabel' => 'Continuă',
			'meal.analysis.title' => 'Se analizează masa ta',
			'meal.analysis.stepStarted' => 'Începem…',
			'meal.analysis.stepDecomposition' => 'Înțelegem masa…',
			'meal.analysis.stepIngredients' => 'Potrivim ingredientele cu date nutriționale…',
			'meal.analysis.stepUncertainty' => 'Verificăm încrederea…',
			'meal.analysis.stepMealTypeQuestion' => 'Mai aproape…',
			'meal.analysis.stepResult' => 'Finalizăm rezultatul…',
			'meal.analysis.stepError' => 'Ceva nu a mers bine',
			'meal.analysis.stepDefault' => 'Se analizează masa ta…',
			'meal.analysis.progressUnderstand' => 'Înțelegerea mesei',
			'meal.analysis.progressMatch' => 'Căutarea informațiilor nutriționale pentru ingrediente',
			'meal.analysis.progressCheck' => 'Verificarea porțiilor și a încrederii',
			'meal.analysis.progressMealType' => 'Alegerea tipului de masă',
			'meal.analysis.progressFinish' => 'Calcularea caloriilor și a macronutrienților',
			'meal.analysis.detectedIngredientHeading' => 'Ingredientele pe care le observăm',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} în plus',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingrediente detectate',
			'meal.analysis.ingredientsPending' => 'Scanare ingrediente…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '„${text}”',
			'meal.analysis.offlineTip0' => 'Sfat: Consistența bate perfecțiunea—înregistrările regulate dezvăluie tiparele care contează.',
			'meal.analysis.offlineTip1' => 'Sfat: Pentru fotografii, lumina naturală și o vedere de sus ajută la acuratețea porțiilor.',
			'meal.analysis.offlineTip2' => 'Sfat: Menționează băuturile, sosurile și uleiul de gătit—ele adaugă calorii pe care oamenii le uită des.',
			'meal.analysis.offlineTip3' => 'Sfat: O scurtă notă despre porție (1 bol, cafea mare) face estimările mult mai precise.',
			'meal.analysis.offlineTip4' => 'Sfat: Înregistrarea după masă tot construiește obiceiul; perfecțiunea e opțională.',
			'meal.analysis.offlineTip5' => 'Sfat: Spune cum a fost gătit când afectează mult caloriile (prăjit vs copt).',
			'meal.localInference.reviewTitle' => 'Revizuiește ingredientele detectate',
			'meal.localInference.reviewSubtitle' => 'Acestea au fost interpretate pe dispozitivul tău. Corectează numele sau porțiile înainte de calculul nutrițional.',
			'meal.localInference.mealName' => 'Numele mesei',
			'meal.localInference.ingredient' => 'Component alimentar',
			'meal.localInference.grams' => 'Grame estimate',
			'meal.localInference.removeIngredient' => 'Elimină ingredientul',
			'meal.localInference.continueLabel' => 'Continuă',
			'meal.localInference.invalidProposal' => 'Adaugă cel puțin un ingredient și folosește o cantitate pozitivă de grame.',
			'meal.localInference.localUnavailable' => 'Analiza pe dispozitiv nu este disponibilă în acest moment.',
			'meal.feedback.title' => 'Ce pare greșit?',
			'meal.feedback.subtitle' => 'Ajută-ne să îmbunătățim analiza selectând una sau mai multe probleme.',
			'meal.feedback.tellUsMore' => 'Spune-ne mai mult',
			'meal.feedback.describeIncorrect' => 'Descrie ce a fost incorect',
			'meal.feedback.submit' => 'Trimite',
			'meal.feedback.issueFoodIdentification' => 'Identificare aliment',
			'meal.feedback.issuePortionSize' => 'Mărimea porției',
			'meal.feedback.issueCalorieDistribution' => 'Distribuția caloriilor',
			'meal.feedback.issueMacrosWrong' => 'Macronutrienții sunt greșiți',
			'meal.feedback.issueMissingItems' => 'Lipsesc elemente',
			'meal.feedback.issueExtraItems' => 'Elemente în plus',
			'meal.feedback.issueOther' => 'Altceva',
			'favorites.title' => 'Favorite',
			'favorites.empty' => 'Nu există mese favorite încă.',
			'favorites.searchPlaceholder' => 'Caută mese favorite',
			'favorites.searchEmptyTitle' => 'Niciun favorit nu se potrivește căutării',
			'favorites.searchEmptySubtitle' => 'Încearcă un alt nume de masă, cantitate sau tip de masă.',
			'favorites.sortLabel' => 'Sortează favoritele',
			'favorites.undo' => 'Anulează',
			'favorites.removed' => ({required Object name}) => 'Am eliminat ${name} din favorite',
			'favorites.sortOptions.recent' => 'Recente',
			'favorites.sortOptions.calories' => 'Calorii',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Nu s-au găsit date de profil',
			'profile.yourProfile' => 'Profilul tău',
			'profile.viewAndManage' => 'Vizualizează și gestionează informațiile tale de sănătate',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'INFORMAȚII DE BAZĂ',
			'profile.sections.goalsAndActivity' => 'OBIECTIVE & ACTIVITATE',
			'profile.sections.calculatedValues' => 'VALORI CALCULATE',
			'profile.gender' => 'Gen',
			'profile.height' => 'Înălțime',
			'profile.weight' => 'Greutate',
			'profile.age' => 'Vârstă',
			'profile.weightGoal' => 'Obiectiv greutate',
			'profile.targetWeight' => 'Greutate țintă',
			'profile.activityLevel' => 'Nivel de activitate',
			'profile.healthMetrics' => 'Metrici de sănătate',
			'profile.notSet' => 'Nedefinit',
			'profile.years' => 'ani',
			'profile.updatedSuccessfully' => 'Profil actualizat cu succes!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Obiectiv zilnic',
			'profile.calculatedValues.calPerDay' => 'cal/zi',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Scor de sănătate',
			'healthScore.whyThisScore' => 'De ce acest scor?',
			'healthScore.note' => 'Acest scor este o estimare AI bazată pe ingredientele identificate și densitatea nutrițională. Consultă întotdeauna un profesionist pentru sfaturi dietetice.',
			'healthScore.unhealthy' => 'Nesănătos',
			'healthScore.healthy' => 'Sănătos',
			'healthScore.neutral' => 'Neutru',
			'editProfile.title' => 'Editează profilul',
			'editProfile.sections.personalInformation' => 'INFORMAȚII PERSONALE',
			'editProfile.sections.physicalMeasurements' => 'MĂSURĂTORI FIZICE',
			'editProfile.sections.goalsAndActivity' => 'OBIECTIVE & ACTIVITATE',
			'editProfile.gender' => 'Gen',
			'editProfile.dateOfBirth' => 'Data nașterii',
			'editProfile.height' => 'Înălțime',
			'editProfile.weight' => 'Greutate',
			'editProfile.weightGoal' => 'Obiectiv greutate',
			'editProfile.activityLevel' => 'Nivel de activitate',
			'editProfile.metric' => 'Sistem metric',
			'editProfile.imperial' => 'Sistem imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lb',
			'editProfile.metricCm' => 'Sistem metric (cm)',
			'editProfile.imperialFtIn' => 'Sistem imperial (ft/in)',
			'editProfile.metricKg' => 'Sistem metric (kg)',
			'editProfile.imperialLbs' => 'Sistem imperial (lb)',
			'editProfile.genders.male' => 'Bărbat',
			'editProfile.genders.female' => 'Femeie',
			'editProfile.genders.other' => 'Altul',
			'editProfile.weightGoals.loseWeight.name' => 'Slăbește',
			'editProfile.weightGoals.loseWeight.description' => 'Creează un deficit caloric pentru a pierde în greutate',
			'editProfile.weightGoals.maintainWeight.name' => 'Menține greutatea',
			'editProfile.weightGoals.maintainWeight.description' => 'Menține greutatea actuală',
			'editProfile.weightGoals.gainWeight.name' => 'Crește în greutate',
			'editProfile.weightGoals.gainWeight.description' => 'Creează un surplus caloric pentru a crește în greutate',
			'editProfile.activityLevels.sedentary.name' => 'Sedentar',
			'editProfile.activityLevels.sedentary.description' => 'Puțin sau deloc exercițiu',
			'editProfile.activityLevels.lightlyActive.name' => 'Ușor activ',
			'editProfile.activityLevels.lightlyActive.description' => 'Exercițiu ușor 1-3 zile/săptămână',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderat activ',
			'editProfile.activityLevels.moderatelyActive.description' => 'Exercițiu moderat 3-5 zile/săptămână',
			'editProfile.activityLevels.veryActive.name' => 'Foarte activ',
			'editProfile.activityLevels.veryActive.description' => 'Exercițiu intens 6-7 zile/săptămână',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrem de activ',
			'editProfile.activityLevels.extremelyActive.description' => 'Exercițiu foarte intens, muncă fizică',
			'settings.title' => 'Setări',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOCALIZARE',
			'settings.sections.notifications' => 'NOTIFICĂRI',
			'settings.sections.healthConnect' => 'CONECTARE HEALTH CONNECT',
			'settings.sections.localInference' => 'ANALIZĂ PE DISPOZITIV',
			'settings.sections.supportAndLegal' => 'SUPORT & LEGAL',
			'settings.sections.about' => 'DESPRE',
			'settings.sections.dangerZone' => 'ZONĂ DE PERICOL',
			'settings.sections.developer' => 'DEZVOLTATOR',
			'settings.editProfile.title' => 'Editează profilul',
			'settings.editProfile.subtitle' => 'Actualizează informațiile tale personale',
			'settings.language.title' => 'Limbă',
			'settings.language.subtitle' => 'Alege limba preferată',
			'settings.language.searchHint' => 'Caută limbi...',
			'settings.language.noResults' => 'Nu s-au găsit rezultate',
			'settings.heightUnit.title' => 'Unitate înălțime',
			'settings.weightUnit.title' => 'Unitate greutate',
			'settings.mealReminders.title' => 'Mementouri mese',
			'settings.mealReminders.subtitle' => 'Rămâi pe drumul cel bun cu alerte la timp',
			'settings.localInference.title' => 'Analiza meselor pe dispozitiv',
			'settings.localInference.subtitle' => 'Interpretează mesele suportate cu Gemini Nano înainte de calculul nutrițional',
			'settings.localInference.unavailable' => 'Nedisponibil pe acest dispozitiv',
			'settings.localInference.rolloutUnavailable' => 'Hardware compatibil găsit, dar această funcție nu este activată pentru această versiune a aplicației',
			'settings.localInference.modelSetup' => 'Gemini Nano trebuie să finalizeze descărcarea înainte de a putea fi activat',
			'settings.localInference.useLocalTitle' => 'Folosește analiza pe dispozitiv',
			'settings.localInference.useLocalSubtitle' => 'Opțional și dezactivat implicit. Rezultatele pot fi mai puțin sigure pentru mese complexe.',
			'settings.localInference.disclosureTitle' => 'Înainte de a activa analiza pe dispozitiv',
			'settings.localInference.disclosureBody' => 'Gemini Nano poate identifica ingredientele și poate estima porțiile pe dispozitivele Android suportate. Propunerea de ingrediente revizuită este trimisă către Calorify pentru fundamentarea nutrițională USDA și calcul.',
			'settings.localInference.disclosureLimit1' => 'Felurile de mâncare complexe, ingredientele ascunse și dimensiunile porțiilor pot fi identificate incorect.',
			'settings.localInference.disclosureLimit2' => 'Modelul poate fi indisponibil în timpul descărcării, când este ocupat, în fundal sau limitat de dispozitiv.',
			'settings.localInference.disclosureLimit3' => 'Dacă interpretarea locală nu poate fi finalizată, această versiune beta trimite automat descrierea originală a mesei către Calorify pentru analiza în cloud.',
			'settings.localInference.acknowledgement' => 'Înțeleg că trebuie să revizuiesc ingredientele și porțiile detectate.',
			'settings.localInference.enable' => 'Confirm și activez',
			'settings.localInference.cancel' => 'Anulează',
			'settings.theme.title' => 'Temă',
			'settings.theme.light' => 'Lumină',
			'settings.theme.dark' => 'Întunecat',
			'settings.theme.system' => 'Sistem',
			'settings.sendFeedback.title' => 'Trimite feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Ajută-ne să îmbunătățim ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback pentru ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Te rugăm oferă feedback-ul tău mai jos:',
			'settings.sendFeedback.appVersion' => 'Versiune aplicație',
			'settings.sendFeedback.device' => 'Dispozitiv',
			'settings.sendFeedback.osVersion' => 'Versiune OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Exportă istoricul meselor',
			'settings.exportMealHistory.subtitle' => 'Partajează un CSV cu mesele înregistrate',
			'settings.exportMealHistory.shareText' => 'Exportul istoricului meselor Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Nu s-a putut exporta istoricul meselor: ${error}',
			'settings.clearAllData.title' => 'Șterge toate datele',
			'settings.clearAllData.subtitle' => 'Șterge datele Calorify stocate pe acest dispozitiv',
			'settings.clearAllData.localOnlySubtitle' => 'Șterge datele Calorify stocate pe acest dispozitiv',
			'settings.clearAllData.confirmationTitle' => 'Ștergi toate datele?',
			'settings.clearAllData.confirmationMessage' => 'Aceasta șterge definitiv de pe acest dispozitiv mesele înregistrate, favoritele și setările profilului. Mesele deja partajate cu Health Connect și accesul la Health Connect sunt gestionate separat în Setări > Health Connect.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Aceasta șterge definitiv de pe acest dispozitiv mesele înregistrate, favoritele și setările profilului. Mesele deja partajate cu Health Connect și accesul la Health Connect sunt gestionate separat în Setări > Health Connect.',
			'settings.clearAllData.cancel' => 'Anulează',
			'settings.clearAllData.clearEverything' => 'Șterge totul',
			'settings.debugOptions.title' => 'Opțiuni debug',
			'settings.developerModeEnabled' => 'Mod dezvoltator activat!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Vizualizează și gestionează permisiunile',
			'settings.healthConnect.unavailable.title' => 'Health Connect indisponibil',
			'settings.healthConnect.unavailable.description' => 'Health Connect nu este acceptat pe acest dispozitiv.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect nu este acceptat pe acest dispozitiv.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect necesită atenție',
			'settings.healthConnect.updateRequired.description' => 'Instalează sau actualizează Health Connect înainte de a gestiona accesul.',
			'settings.healthConnect.updateRequired.action' => 'Instalează sau actualizează',
			'settings.healthConnect.permissions.title' => 'Permisiuni',
			'settings.healthConnect.permissions.description' => 'Următoarele permisiuni sunt solicitate pentru integrarea cu Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Acordat',
			'settings.healthConnect.permissions.notGranted' => 'Neacordat',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Citește caloriile totale arse',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Permite aplicației să citească caloriile tale totale arse din Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Această permisiune este folosită pentru a afișa arderea zilnică de calorii în aplicație, ajutându-te să înțelegi cheltuiala totală de energie pe parcursul zilei.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Citește date nutriționale',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Permite aplicației să citească date nutriționale din Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Această permisiune permite aplicației să citească informații nutriționale înregistrate de alte aplicații conectate la Health Connect, oferind o vedere completă a nutriției tale.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Scrie date nutriționale',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Permite aplicației să scrie date nutriționale în Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Această permisiune permite aplicației să sincronizeze mesele înregistrate în Health Connect, făcând datele tale nutriționale disponibile pentru alte aplicații de sănătate și fitness pe care le folosești.',
			'settings.healthConnect.managePermissions' => 'Gestionare permisiuni',
			'settings.healthConnect.openSettings' => 'Deschide setările Health Connect',
			'settings.healthConnect.disconnect' => 'Deconectează Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Deconectezi Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify va pierde accesul la Health Connect. Datele deja scrise acolo nu vor fi șterse.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Deconectează',
			'settings.healthConnect.deleteSyncedMeals' => 'Șterge mesele Calorify din Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Ștergi mesele sincronizate?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Ștergi din Health Connect mesele sincronizate de această versiune de Calorify? Jurnalul local de mese nu se va modifica. Este posibil ca intrările Calorify mai vechi să trebuiască eliminate în continuare prin Gestionează datele din Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Șterge mesele sincronizate',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Mesele Calorify au fost șterse din Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Mesele sincronizate nu au putut fi șterse. Încearcă din nou.',
			'settings.healthConnect.connectionPartial' => 'Unele funcții Health Connect sunt activate.',
			'settings.healthConnect.connectionComplete' => 'Ambele funcții Health Connect sunt activate.',
			'settings.healthConnect.actionFailed' => 'Health Connect nu a putut fi deschis. Încearcă din nou.',
			'settings.healthConnect.requestPermissions' => 'Solicită permisiuni',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Cererea de permisiuni a fost anulată sau a eșuat. Te rugăm încearcă din nou sau acordă permisiunile manual în setările Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Imposibil de solicitat permisiuni. Te rugăm încearcă din nou sau acordă permisiunile manual în setările Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Se solicită...',
			'settings.about.title' => 'Despre',
			'settings.about.tagline' => 'Conștientizare calorică rapidă, gratuită și cu confidențialitate pe primul loc',
			'settings.about.ourStory.title' => 'Povestea noastră',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} a luat naștere dintr-o frustrare simplă: majoritatea aplicațiilor de urmărire a caloriilor sunt fie prea complicate, solicită introduceri manuale constante, percep taxe mari de abonament sau compromit confidențialitatea.\n\nCa dezvoltator solo, am vrut să creez ceva mai simplu și mai corect — o aplicație care folosește AI pentru a reduce efortul, rămâne rapidă și gratuită și tratează datele tale de sănătate cu respect.\n\n${appLabel} este aplicația pe care mi-aș fi dorit să existe: fără conturi, fără urmărire, fără reclame — doar informații clare, practice și obiectivele tale de sănătate.',
			'settings.about.privacy.title' => 'Confidențialitatea ta contează',
			'settings.about.privacy.description' => 'Confidențialitatea nu este un detaliu — este un principiu de design. Iată ce înseamnă asta în practică:',
			'settings.about.privacy.noAccounts' => 'Fără conturi necesare\nFolosește aplicația imediat. Fără înregistrări, fără identități.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Analize și diagnosticare limitate\n${appLabel} folosește evenimente de bază din aplicație și diagnosticarea blocărilor pentru a îmbunătăți fiabilitatea. Valorile din înregistrările de sănătate nu sunt folosite pentru publicitate și nu sunt vândute.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Analize și diagnosticare limitate\n${appLabel} folosește evenimente de bază din aplicație și diagnosticarea blocărilor pentru a îmbunătăți fiabilitatea. Valorile din înregistrările de sănătate nu sunt folosite pentru publicitate și nu sunt vândute.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Fără reclame prin design\n${appLabel} este construit pentru a funcționa fără reclame sau monetizare bazată pe date.',
			'settings.about.privacy.noDataSelling' => 'Fără vânzare de date\nDatele tale de sănătate nu sunt niciodată vândute sau împărtășite terților.',
			'settings.about.privacy.localStorage' => 'Stocare locală prioritară\nDatele tale rămân pe dispozitivul tău.',
			'settings.about.privacy.privacyPolicy' => 'Politica de confidențialitate',
			'settings.about.developer.title' => 'Creat de un dezvoltator solo',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} este creat și întreținut de un singur dezvoltator concentrat pe crearea de software de sănătate calm și respectuos cu confidențialitatea.\n\nFeedback-ul este citit personal și ajută la direcționarea aplicației.',
			'settings.about.developer.website' => 'Site web',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Îți place ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Feedback-ul tău ajută la îmbunătățirea ${appLabel} pentru toată lumea.',
			'settings.about.feedback.rateApp' => 'Evaluează în Play Store',
			'settings.about.feedback.sendFeedback' => 'Trimite feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify versiunea ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Compilarea ${buildNumber}',
			'reminders.title' => 'Rămâi pe drumul cel bun cu mementouri',
			'reminders.description' => 'Primește mementouri blânde pentru a-ți înregistra mesele și a rămâne consecvent cu obiectivele nutriționale',
			'reminders.notificationsEnabled' => 'Notificări activate',
			'reminders.notificationsDisabled' => 'Notificări dezactivate',
			'reminders.enabledSubtitle' => 'Vei primi mementouri pentru mese',
			'reminders.disabledSubtitle' => 'Activează notificările pentru a primi mementouri pentru mese',
			'reminders.mealReminders' => 'Mementouri mese',
			'reminders.breakfast' => 'Mic dejun',
			'reminders.lunch' => 'Prânz',
			'reminders.dinner' => 'Cină',
			'reminders.snack' => 'Gustare',
			'reminders.unknown' => 'Necunoscut',
			'reminders.change' => 'Schimbă',
			'reminders.enableNotifications' => 'Activează notificările',
			'reminders.skipForNow' => 'Sari pentru moment',
			'reminders.saveChanges' => 'Salvează modificările',
			'reminders.enabledSuccessfully' => 'Notificările au fost activate cu succes!',
			'reminders.permissionDenied' => 'Permisiune notificări refuzată',
			'reminders.errorEnabling' => ({required Object error}) => 'Eroare la activarea notificărilor: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Eroare la finalizarea configurării: ${error}',
			'notifications.breakfast.title' => 'Mic dejun! 🍳',
			'notifications.breakfast.body' => 'Nu uita să-ți înregistrezi micul dejun',
			'notifications.lunch.title' => 'Prânz! 🥗',
			'notifications.lunch.body' => 'E timpul să notezi prânzul',
			'notifications.dinner.title' => 'Cină! 🍽️',
			'notifications.dinner.body' => 'Nu uita să-ți înregistrezi cina',
			'notifications.snack.title' => 'Gustare! 🍎',
			'notifications.snack.body' => 'E timpul pentru o gustare sănătoasă',
			'notifications.test.title' => 'Notificare de test',
			'login.title' => 'Autentificare',
			'login.signInWithGoogle' => 'Autentifică-te cu Google',
			'login.signInFailed' => 'Autentificarea cu Google a eșuat sau a fost anulată.',
			'disclaimer.pleaseNote' => 'Te rugăm să reții',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} oferă informații nutriționale estimate. Precizia depinde de datele tale și de variațiile alimentelor. Folosește-le ca ghid, nu ca sursă definitivă. Consultă un specialist pentru sfaturi dietetice personalizate.',
			'disclaimer.snap.portionSize.title' => 'Mărimea porției',
			'disclaimer.snap.portionSize.description' => 'Acuratețea estimărilor depinde în mare măsură de evaluarea corectă a mărimii porției.',
			'disclaimer.snap.preparationMethods.title' => 'Metode de preparare',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Metodele de gătit pot altera semnificativ conținutul nutrițional. Estimările ${appLabel} pot să nu ia întotdeauna în calcul aceste variații.',
			'disclaimer.snap.ingredients.title' => 'Ingrediente',
			_ => null,
		} ?? switch (path) {
			'disclaimer.snap.ingredients.description' => 'Preparatele complexe cu multe ingrediente ascunse pot duce la estimări mai puțin exacte.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitări ale bazei de date',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Baza de date de alimente a ${appLabel} este extinsă, dar s-ar putea să nu includă fiecare aliment sau variație.',
			'disclaimer.weightEstimate.title' => 'Despre estimarea greutății',
			'disclaimer.weightEstimate.description' => 'Schimbarea proiectată a greutății este o estimare teoretică bazată pe modelul simplu calorii-in vs calorii-out. Este destinat doar ca ghid motivațional, nu ca o predicție a greutății tale reale.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Acuratețea caloriilor',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Această estimare este la fel de precisă ca înregistrările tale de aport și cheltuieli calorice. Înregistrările inexacte vor conduce la proiecții inexacte.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Factori biologici',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Pierderea/câștigul real în greutate este influențat de metabolism, hormoni, somn, stres, hidratare și alți factori individuali pe care ${appLabel} nu îi poate măsura.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Greutate apă & fluctuații',
			'disclaimer.weightEstimate.waterWeight.description' => 'Greutatea zilnică normală poate fluctua semnificativ din cauza retenției de apă, digestiei și a momentului. Estimarea nu ia în calcul aceste schimbări zilnice.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Ghidare profesională',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Nu folosi această estimare pentru decizii medicale. Consultă întotdeauna un profesionist în sănătate sau un dietetician înregistrat pentru sfaturi personalizate privind gestionarea greutății.',
			'disclaimer.healthMetrics.description' => 'Acești indicatori te ajută să înțelegi nevoile de energie ale corpului tău și să îți ghideze obiectivele nutriționale.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Rata metabolică bazală (BMR) este numărul de calorii pe care corpul le arde în repaus pentru a menține funcțiile de bază precum respirația și circulația. BMR depinde de vârstă, gen, înălțime și greutate. Un BMR mai mare înseamnă că organismul arde natural mai multe calorii în repaus, de obicei din cauza masei musculare mai mari, a vârstei mai tinere sau a sexului masculin. Un BMR mai mic indică de obicei masă musculară mai redusă, vârstă mai înaintată sau sex feminin.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Cheltuiala totală de energie pe zi (TDEE) este totalul caloriilor arse zilnic, incluzând BMR plus caloriile din activitate fizică și mișcare zilnică. TDEE depinde de BMR și nivelul de activitate. Un TDEE mai mare înseamnă că arzi mai multe calorii în total, de obicei pentru că ești mai activ sau ai un BMR mai mare. Un TDEE mai mic sugerează mai puțină activitate zilnică sau un BMR mai mic.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Obiectiv zilnic',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Obiectivul zilnic este recomandarea ta de aport caloric zilnic bazată pe TDEE și obiectivul de greutate. Pentru pierdere în greutate, consumi mai puține calorii decât TDEE. Pentru menținere, egalezi TDEE. Pentru creștere, consumi mai multe calorii decât TDEE. Acest lucru te ajută să atingi schimbarea dorită a greutății într-un ritm sănătos.',
			'disclaimer.calorieExpenditure.title' => 'Estimare cheltuieli calorice',
			'disclaimer.calorieExpenditure.description' => 'Când datele din Health Connect nu sunt disponibile, estimăm caloriile arse astăzi folosind BMR și nivelul de activitate (TDEE), scalate pentru porțiunea zilei care a trecut.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Cum se calculează estimarea',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Calculăm TDEE-ul tău (pe baza profilului) și îl înmulțim cu fracțiunea zilei trecute (ore + minute) / 24 pentru a estima caloriile arse până acum.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Ghidare profesională',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Nu folosi această estimare pentru decizii medicale. Consultă întotdeauna un profesionist în sănătate sau un dietetician înregistrat pentru sfaturi personalizate privind gestionarea greutății.',
			'localNutritionPhase4.portionSmaller' => 'Mai mică',
			'localNutritionPhase4.portionEstimated' => 'Estimată',
			'localNutritionPhase4.portionLarger' => 'Mai mare',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Ce porție a fost cea mai apropiată pentru ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Ce masă a fost aceasta?',
			'localNutritionPhase4.localNutritionTip' => 'Calculat din date nutriționale locale verificate.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Descarcă date nutriționale',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Folosește rânduri USDA verificate și calcul determinist pe acest dispozitiv atunci când toate ingredientele sunt acoperite.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Datele nutriționale locale nu sunt disponibile pentru această versiune a aplicației.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Nu este descărcat niciun pachet nutrițional verificat.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Se descarcă și se verifică datele nutriționale…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Pachet ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} rânduri USDA în cache · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Caută actualizări',
			'localNutritionPhase4.offlineNutritionClear' => 'Șterge datele nutriționale locale',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Ștergi datele nutriționale locale?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Această acțiune elimină pachetul USDA descărcat și memoria cache de căutare. Mesele înregistrate păstrează instantaneul nutrițional exact folosit când au fost salvate.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Șterge datele',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Datele nutriționale locale nu au putut fi descărcate și verificate: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Datele nutriționale locale au fost șterse',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'Înapoi',
			'watch.common.cancel' => 'Anulează',
			'watch.common.delete' => 'Șterge',
			'watch.common.retry' => 'Reîncearcă',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Nutrient',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} grame',
			'watch.nutrition.protein' => 'Proteine',
			'watch.nutrition.carbs' => 'Carbohidrați',
			'watch.nutrition.fat' => 'Grăsimi',
			'watch.nutrition.fiber' => 'Fibre',
			'watch.sync.syncWithPhone' => 'Sincronizează cu telefonul',
			'watch.sync.syncing' => 'Sincronizare…',
			'watch.sync.synced' => 'Sincronizat',
			'watch.sync.syncedJustNow' => 'Sincronizat chiar acum',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Sincronizat acum ${minutes}m',
			'watch.sync.failed' => 'Sincronizare eșuată',
			'watch.sync.phoneDisconnected' => 'Telefon deconectat',
			'watch.sync.tapToSync' => 'Atinge pentru a sincroniza',
			'watch.sync.refreshFailed' => 'Nu s-a putut reîmprospăta. Verifică-ți telefonul.',
			'watch.sync.openPhone' => 'Deschide Calorify pe telefon, apoi apasă reîmprospătare.',
			'watch.home.today' => 'Astăzi',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} calorii consumate din ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} peste obiectiv',
			'watch.home.remaining' => ({required Object calories}) => '${calories} rămase',
			'watch.home.left' => ({required Object calories}) => '${calories} rămase',
			'watch.home.goal' => ({required Object calories}) => '${calories} kcal obiectiv',
			'watch.home.logMeal' => 'Înregistrează o masă',
			'watch.home.todayMeals' => 'Mesele de azi',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Mesele de azi, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Vezi încă ${count}',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} mese în plus, atinge pentru a le vedea pe toate',
			'watch.home.noMeals' => 'Nu a fost înregistrată nicio masă',
			'watch.home.noMealsSemantics' => 'Nicio masă înregistrată azi',
			'watch.home.tapLog' => 'Atinge Înregistrează pentru a începe',
			'watch.home.removedFromQueue' => 'Masa a fost eliminată din coada offline.',
			'watch.home.removedOffline' => 'Masa eliminată offline. Se va sincroniza când telefonul se reconectează.',
			'watch.home.deleteFailed' => 'Nu s-a putut șterge masa',
			'watch.history.title' => 'Mesele de azi',
			'watch.history.refresh' => 'Reîmprospătează mesele',
			'watch.history.loadFailed' => 'Nu s-au putut încărca mesele',
			'watch.history.syncFailed' => 'Nu s-a putut sincroniza',
			'watch.history.emptyTitle' => 'Nicio masă încă',
			'watch.history.emptyMessage' => 'Înregistrează o masă din ecranul principal pentru a o vedea aici.',
			'watch.favorites.title' => 'Preferate',
			'watch.favorites.refresh' => 'Reîmprospătează preferatele',
			'watch.favorites.loadFailed' => 'Nu s-au putut încărca preferatele',
			'watch.favorites.syncFailed' => 'Nu s-a putut sincroniza',
			'watch.favorites.emptyTitle' => 'Niciun favorit încă',
			'watch.favorites.emptyMessage' => 'Favoritează mesele în aplicația de pe telefon pentru a le înregistra cu un singur tap aici.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} calorii. Atinge pentru a înregistra.',
			'watch.favorites.logged' => ({required Object name}) => '${name} înregistrată!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} salvat offline. Se va sincroniza când telefonul se reconectează.',
			'watch.favorites.saveFailed' => 'Nu s-a putut salva masa. Te rog încearcă din nou.',
			'watch.favorites.log' => 'Înregistrează',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} calorii, înregistrată la ${time}.',
			'watch.meal.longPressDelete' => 'Apăsare lungă pentru a șterge.',
			'watch.meal.deleteTitle' => 'Ștergi masa?',
			'watch.voice.title' => 'Înregistrare vocală a mesei',
			'watch.voice.processing' => 'Verificăm masa…',
			'watch.voice.processingDescription' => 'Estimăm porțiile și valorile nutriționale',
			'watch.voice.listening' => 'Ascultând',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Oprește înregistrarea',
			'watch.voice.start' => 'Atinge pentru a începe înregistrarea',
			'watch.voice.starting' => 'Pornire microfon…',
			'watch.voice.prompt' => 'Atinge, apoi descrie masa',
			'watch.voice.tapToRetry' => 'Atinge pentru a reîncerca',
			'watch.voice.example' => 'Încearcă „2 rotis cu dal”',
			'watch.voice.unavailable' => 'Introducerea vocală nu este disponibilă. Verifică permisiunea microfonului în setările ceasului.',
			'watch.voice.didNotStart' => 'Microfonul nu a pornit. Atinge pentru a reîncerca.',
			'watch.voice.startFailed' => 'Nu s-a putut porni înregistrarea. Verifică permisiunile microfonului.',
			'watch.voice.allowMicrophone' => 'Permite accesul la microfon pentru a înregistra mesele vocal.',
			'watch.voice.needsConnection' => 'Recunoașterea vocală necesită conexiune. Atinge pentru a reîncerca.',
			'watch.voice.microphoneUnavailable' => 'Microfonul nu este disponibil. Atinge pentru a reîncerca.',
			'watch.voice.microphoneBusy' => 'Microfonul este ocupat. Așteaptă puțin și reîncearcă.',
			'watch.voice.languageUnsupported' => 'Introducerea vocală nu suportă limba ceasului.',
			'watch.voice.temporarilyBusy' => 'Introducerea vocală este temporar ocupată. Așteaptă puțin și reîncearcă.',
			'watch.voice.notRecognized' => 'Nu am înțeles. Atinge microfonul și încearcă din nou.',
			'watch.voice.noSpeech' => 'Nu s-a detectat vorbire. Atinge microfonul pentru a încerca din nou.',
			'watch.voice.analysisFailed' => 'Analiza a eșuat. Te rog încearcă din nou.',
			'watch.voice.mealNotIdentified' => 'Nu am putut identifica acea masă. Încearcă să o descrii diferit.',
			'watch.result.title' => 'Detalii masă',
			'watch.result.savedOffline' => 'Salvat offline',
			'watch.result.logged' => 'Înregistrat!',
			'watch.result.mealFound' => 'Masă găsită',
			'watch.result.estimatedEnergy' => 'Energie estimată',
			'watch.result.logMeal' => 'Înregistrează masa',
			'watch.result.logging' => 'Se înregistrează…',
			'watch.result.logAnother' => 'Înregistrează alta',
			'watch.result.goingBack' => 'Se întoarce…',
			'watch.result.savedOfflineMessage' => 'Masa salvată offline. Se va sincroniza când telefonul se reconectează.',
			'watch.result.saveFailed' => 'Nu s-a putut salva masa. Te rog încearcă din nou.',
			'common.betaTag' => 'Beta',
			'common.close' => 'Închide',
			'common.kContinue' => 'Continuă',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Îți place ${appLabel}?',
			'feedbackRating.yes' => 'Da, îmi place',
			'feedbackRating.no' => 'Nu chiar',
			'feedbackRating.rateStepHeading' => 'Evaluează în Play Store',
			'feedbackRating.emailStepHeading' => 'Trimite feedback prin email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'O evaluare rapidă ajută alții să găsească ${appLabel} și susține dezvoltarea. Ai putea lăsa una?',
			'feedbackRating.shareFeedbackViaEmail' => 'Feedback-ul tău modelează viitorul — citim fiecare mesaj. Vrei să ne împărtășești gândurile prin email?',
			'feedbackRating.rateCta' => 'Evaluează în Play Store',
			'feedbackRating.maybeLater' => 'Poate mai târziu',
			'feedbackRating.sendFeedback' => 'Trimite feedback',
			'feedbackRating.noThanks' => 'Nu, mulțumesc',
			'feedbackRating.aboutUsDescription' => 'Creat cu grijă de o echipă mică. Ne concentrăm pe confidențialitate, simplitate și pe a te ajuta să construiești obiceiuri alimentare mai bune.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Curios cine stă în spatele ${appLabel}? Vezi ',
			'feedbackRating.aboutUsLinkLabel' => 'Despre noi',
			'feedbackRating.thankYouMessage' => 'Mulțumim! Te vom întreba din nou altădată.',
			'health.syncFailed' => 'Sincronizarea cu Health Connect a eșuat',
			'health.mealSynced' => 'Masa sincronizată cu Health Connect',
			_ => null,
		};
	}
}
