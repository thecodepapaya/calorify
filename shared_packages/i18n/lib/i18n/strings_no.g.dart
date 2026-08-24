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
class TranslationsNo extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsNo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.no,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <no>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsNo _root = this; // ignore: unused_field

	@override 
	TranslationsNo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsNo(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Norsk';
	@override String get flag => '🇳🇴';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$no errors = _Translations$errors$no._(_root);
	@override late final _Translations$onboarding$no onboarding = _Translations$onboarding$no._(_root);
	@override late final _Translations$tabs$no tabs = _Translations$tabs$no._(_root);
	@override late final _Translations$home$no home = _Translations$home$no._(_root);
	@override late final _Translations$history$no history = _Translations$history$no._(_root);
	@override late final _Translations$meal$no meal = _Translations$meal$no._(_root);
	@override late final _Translations$favorites$no favorites = _Translations$favorites$no._(_root);
	@override late final _Translations$profile$no profile = _Translations$profile$no._(_root);
	@override late final _Translations$healthScore$no healthScore = _Translations$healthScore$no._(_root);
	@override late final _Translations$editProfile$no editProfile = _Translations$editProfile$no._(_root);
	@override late final _Translations$settings$no settings = _Translations$settings$no._(_root);
	@override late final _Translations$reminders$no reminders = _Translations$reminders$no._(_root);
	@override late final _Translations$notifications$no notifications = _Translations$notifications$no._(_root);
	@override late final _Translations$login$no login = _Translations$login$no._(_root);
	@override late final _Translations$disclaimer$no disclaimer = _Translations$disclaimer$no._(_root);
	@override late final _Translations$localNutritionPhase4$no localNutritionPhase4 = _Translations$localNutritionPhase4$no._(_root);
	@override late final _Translations$watch$no watch = _Translations$watch$no._(_root);
	@override late final _Translations$common$no common = _Translations$common$no._(_root);
	@override late final _Translations$feedbackRating$no feedbackRating = _Translations$feedbackRating$no._(_root);
	@override late final _Translations$health$no health = _Translations$health$no._(_root);
}

// Path: errors
class _Translations$errors$no extends Translations$errors$en {
	_Translations$errors$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Du har sendt for mange forespørsler. Vennligst vent et øyeblikk og prøv igjen.';
	@override String get networkError => 'Nettverksfeil. Sjekk internettforbindelsen din.';
	@override String get unknownError => 'Noe gikk galt. Prøv igjen senere.';
	@override String get loadingProfileData => 'Feil ved lasting av profildata';
	@override String get somethingWentWrong => 'Noe gikk galt.';
	@override String get retry => 'Prøv igjen';
}

// Path: onboarding
class _Translations$onboarding$no extends Translations$onboarding$en {
	_Translations$onboarding$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Velkommen til ${appLabel}';
	@override String get subtitle => 'Din personlige ernæringsvenn drevet av AI';
	@override String get getStarted => 'Kom i gang';
	@override late final _Translations$onboarding$features$no features = _Translations$onboarding$features$no._(_root);
	@override late final _Translations$onboarding$gender$no gender = _Translations$onboarding$gender$no._(_root);
	@override late final _Translations$onboarding$height$no height = _Translations$onboarding$height$no._(_root);
	@override late final _Translations$onboarding$weight$no weight = _Translations$onboarding$weight$no._(_root);
	@override late final _Translations$onboarding$age$no age = _Translations$onboarding$age$no._(_root);
	@override late final _Translations$onboarding$bmiScale$no bmiScale = _Translations$onboarding$bmiScale$no._(_root);
	@override late final _Translations$onboarding$weightGoal$no weightGoal = _Translations$onboarding$weightGoal$no._(_root);
	@override late final _Translations$onboarding$activityLevel$no activityLevel = _Translations$onboarding$activityLevel$no._(_root);
	@override late final _Translations$onboarding$healthConnect$no healthConnect = _Translations$onboarding$healthConnect$no._(_root);
	@override late final _Translations$onboarding$reinforcement$no reinforcement = _Translations$onboarding$reinforcement$no._(_root);
}

// Path: tabs
class _Translations$tabs$no extends Translations$tabs$en {
	_Translations$tabs$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Oversikt';
	@override String get history => 'Historikk';
}

// Path: home
class _Translations$home$no extends Translations$home$en {
	_Translations$home$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$no aiSummary = _Translations$home$aiSummary$no._(_root);
	@override late final _Translations$home$dailyGoal$no dailyGoal = _Translations$home$dailyGoal$no._(_root);
	@override late final _Translations$home$dailySummary$no dailySummary = _Translations$home$dailySummary$no._(_root);
	@override late final _Translations$home$intakeProgress$no intakeProgress = _Translations$home$intakeProgress$no._(_root);
	@override late final _Translations$home$intakeHistory$no intakeHistory = _Translations$home$intakeHistory$no._(_root);
	@override late final _Translations$home$mealLog$no mealLog = _Translations$home$mealLog$no._(_root);
	@override late final _Translations$home$mealDescription$no mealDescription = _Translations$home$mealDescription$no._(_root);
	@override late final _Translations$home$favoriteMeals$no favoriteMeals = _Translations$home$favoriteMeals$no._(_root);
	@override late final _Translations$home$mealSnap$no mealSnap = _Translations$home$mealSnap$no._(_root);
	@override late final _Translations$home$connectHealth$no connectHealth = _Translations$home$connectHealth$no._(_root);
}

// Path: history
class _Translations$history$no extends Translations$history$en {
	_Translations$history$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Ingen måltider registrert';
	@override String get emptyMessage => 'Ta et bilde av forrige måltid for å logge det her.';
	@override String get today => 'I dag';
	@override String get yesterday => 'I går';
}

// Path: meal
class _Translations$meal$no extends Translations$meal$en {
	_Translations$meal$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Å nei!';
	@override String get delete => 'Slett';
	@override String get editMeal => 'Rediger måltid';
	@override String get addMeal => 'Legg til måltid';
	@override String get saveMeal => 'Lagre måltid';
	@override String get save => 'Lagre';
	@override String get mealName => 'Måltidsnavn';
	@override String get mealNameHint => 'f.eks. Eggerøre med toast';
	@override String get nameRequired => 'Oppgi et måltidsnavn før du lagrer.';
	@override String get mealQuantity => 'Mengde';
	@override String get mealQuantityHint => 'f.eks. 1 bolle, 2 skiver';
	@override String get timeOfMeal => 'Tidspunkt for måltidet';
	@override String get timeOfMealHint => 'Velg tidspunktet du spiste måltidet';
	@override String get mealType => 'Måltidstype';
	@override late final _Translations$meal$nutrition$no nutrition = _Translations$meal$nutrition$no._(_root);
	@override late final _Translations$meal$deleteConfirmation$no deleteConfirmation = _Translations$meal$deleteConfirmation$no._(_root);
	@override String get addedToLog => 'Måltid lagt til i loggen!';
	@override String couldNotAdd({required Object error}) => 'Kunne ikke legge til måltid: ${error}';
	@override String get savedSuccessfully => 'Måltid lagt til!';
	@override String get updatedSuccessfully => 'Måltid oppdatert!';
	@override String errorSaving({required Object error}) => 'Feil ved lagring av måltid: ${error}';
	@override String get removedFromFavorites => 'Fjernet fra favoritter!';
	@override String get savedAsFavorite => 'Måltid lagret som favoritt!';
	@override String get unfavorite => 'Fjern favoritt';
	@override String couldNotUpdateFavorite({required Object error}) => 'Kunne ikke oppdatere favoritt: ${error}';
	@override String get feedbackThanks => 'Takk for tilbakemeldingen!';
	@override String get reanalysisUpdated => 'Oppdaterte måltidsanalysen basert på din tilbakemelding.';
	@override String failedToProcess({required Object error}) => 'Kunne ikke behandle: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Kunne ikke behandle bildet: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Feil ved komprimering av bilde: ${error}';
	@override String get failedToSave => 'Kunne ikke lagre data. Prøv igjen.';
	@override String get skip => 'Hopp over';
	@override late final _Translations$meal$questionFlow$no questionFlow = _Translations$meal$questionFlow$no._(_root);
	@override late final _Translations$meal$analysis$no analysis = _Translations$meal$analysis$no._(_root);
	@override late final _Translations$meal$localInference$no localInference = _Translations$meal$localInference$no._(_root);
	@override late final _Translations$meal$feedback$no feedback = _Translations$meal$feedback$no._(_root);
}

// Path: favorites
class _Translations$favorites$no extends Translations$favorites$en {
	_Translations$favorites$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritter';
	@override String get empty => 'Ingen favorittmåltider ennå.';
	@override String get searchPlaceholder => 'Søk i favorittmåltider';
	@override String get searchEmptyTitle => 'Ingen favoritter stemmer med søket';
	@override String get searchEmptySubtitle => 'Prøv et annet måltidsnavn, mengde eller måltidstype.';
	@override String get sortLabel => 'Sorter favoritter';
	@override String get undo => 'Angre';
	@override String removed({required Object name}) => 'Fjernet ${name} fra favoritter';
	@override late final _Translations$favorites$sortOptions$no sortOptions = _Translations$favorites$sortOptions$no._(_root);
}

// Path: profile
class _Translations$profile$no extends Translations$profile$en {
	_Translations$profile$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Ingen profildata funnet';
	@override String get yourProfile => 'Din profil';
	@override String get viewAndManage => 'Vis og administrer helseinformasjonen din';
	@override late final _Translations$profile$sections$no sections = _Translations$profile$sections$no._(_root);
	@override String get gender => 'Kjønn';
	@override String get height => 'Høyde';
	@override String get weight => 'Vekt';
	@override String get age => 'Alder';
	@override String get weightGoal => 'Vektmål';
	@override String get targetWeight => 'Målvekt';
	@override String get activityLevel => 'Aktivitetsnivå';
	@override String get healthMetrics => 'Helsemålinger';
	@override String get notSet => 'Ikke satt';
	@override String get years => 'år';
	@override String get updatedSuccessfully => 'Profil oppdatert!';
	@override late final _Translations$profile$calculatedValues$no calculatedValues = _Translations$profile$calculatedValues$no._(_root);
}

// Path: healthScore
class _Translations$healthScore$no extends Translations$healthScore$en {
	_Translations$healthScore$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Helsescore';
	@override String get whyThisScore => 'Hvorfor denne scoren?';
	@override String get note => 'Denne scoren er et AI-estimat basert på identifiserte ingredienser og næringstetthet. Rådfør deg alltid med en fagperson for personlig kostholdsveiledning.';
	@override String get unhealthy => 'Usunn';
	@override String get healthy => 'Sunn';
	@override String get neutral => 'Nøytral';
}

// Path: editProfile
class _Translations$editProfile$no extends Translations$editProfile$en {
	_Translations$editProfile$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rediger profil';
	@override late final _Translations$editProfile$sections$no sections = _Translations$editProfile$sections$no._(_root);
	@override String get gender => 'Kjønn';
	@override String get dateOfBirth => 'Fødselsdato';
	@override String get height => 'Høyde';
	@override String get weight => 'Vekt';
	@override String get weightGoal => 'Vektmål';
	@override String get activityLevel => 'Aktivitetsnivå';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Britisk-amerikansk';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'pund (lb)';
	@override String get metricCm => 'Metrisk (cm)';
	@override String get imperialFtIn => 'Britisk-amerikansk (ft/in)';
	@override String get metricKg => 'Metrisk (kg)';
	@override String get imperialLbs => 'Britisk-amerikansk (lbs)';
	@override late final _Translations$editProfile$genders$no genders = _Translations$editProfile$genders$no._(_root);
	@override late final _Translations$editProfile$weightGoals$no weightGoals = _Translations$editProfile$weightGoals$no._(_root);
	@override late final _Translations$editProfile$activityLevels$no activityLevels = _Translations$editProfile$activityLevels$no._(_root);
}

// Path: settings
class _Translations$settings$no extends Translations$settings$en {
	_Translations$settings$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Innstillinger';
	@override late final _Translations$settings$sections$no sections = _Translations$settings$sections$no._(_root);
	@override late final _Translations$settings$editProfile$no editProfile = _Translations$settings$editProfile$no._(_root);
	@override late final _Translations$settings$language$no language = _Translations$settings$language$no._(_root);
	@override late final _Translations$settings$heightUnit$no heightUnit = _Translations$settings$heightUnit$no._(_root);
	@override late final _Translations$settings$weightUnit$no weightUnit = _Translations$settings$weightUnit$no._(_root);
	@override late final _Translations$settings$mealReminders$no mealReminders = _Translations$settings$mealReminders$no._(_root);
	@override late final _Translations$settings$localInference$no localInference = _Translations$settings$localInference$no._(_root);
	@override late final _Translations$settings$theme$no theme = _Translations$settings$theme$no._(_root);
	@override late final _Translations$settings$sendFeedback$no sendFeedback = _Translations$settings$sendFeedback$no._(_root);
	@override late final _Translations$settings$exportMealHistory$no exportMealHistory = _Translations$settings$exportMealHistory$no._(_root);
	@override late final _Translations$settings$clearAllData$no clearAllData = _Translations$settings$clearAllData$no._(_root);
	@override late final _Translations$settings$debugOptions$no debugOptions = _Translations$settings$debugOptions$no._(_root);
	@override String get developerModeEnabled => 'Utviklermodus aktivert!';
	@override late final _Translations$settings$healthConnect$no healthConnect = _Translations$settings$healthConnect$no._(_root);
	@override late final _Translations$settings$about$no about = _Translations$settings$about$no._(_root);
	@override late final _Translations$settings$appInfo$no appInfo = _Translations$settings$appInfo$no._(_root);
}

// Path: reminders
class _Translations$reminders$no extends Translations$reminders$en {
	_Translations$reminders$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hold deg på sporet med påminnelser';
	@override String get description => 'Få vennlige påminnelser om å logge måltidene dine og være konsekvent med ernæringsmålene dine';
	@override String get notificationsEnabled => 'Varsler aktivert';
	@override String get notificationsDisabled => 'Varsler deaktivert';
	@override String get enabledSubtitle => 'Du vil motta måltidspåminnelser';
	@override String get disabledSubtitle => 'Aktiver varsler for å få måltidspåminnelser';
	@override String get mealReminders => 'Måltidspåminnelser';
	@override String get breakfast => 'Frokost';
	@override String get lunch => 'Lunsj';
	@override String get dinner => 'Middag';
	@override String get snack => 'Mellommåltid';
	@override String get unknown => 'Ukjent';
	@override String get change => 'Endre';
	@override String get enableNotifications => 'Aktiver varsler';
	@override String get skipForNow => 'Hopp over for nå';
	@override String get saveChanges => 'Lagre endringer';
	@override String get enabledSuccessfully => 'Varsler aktivert!';
	@override String get permissionDenied => 'Tillatelse til varsler nektet';
	@override String errorEnabling({required Object error}) => 'Feil ved aktivering av varsler: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Feil ved fullføring av oppsett: ${error}';
}

// Path: notifications
class _Translations$notifications$no extends Translations$notifications$en {
	_Translations$notifications$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$no breakfast = _Translations$notifications$breakfast$no._(_root);
	@override late final _Translations$notifications$lunch$no lunch = _Translations$notifications$lunch$no._(_root);
	@override late final _Translations$notifications$dinner$no dinner = _Translations$notifications$dinner$no._(_root);
	@override late final _Translations$notifications$snack$no snack = _Translations$notifications$snack$no._(_root);
	@override late final _Translations$notifications$test$no test = _Translations$notifications$test$no._(_root);
}

// Path: login
class _Translations$login$no extends Translations$login$en {
	_Translations$login$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Logg inn';
	@override String get signInWithGoogle => 'Logg inn med Google';
	@override String get signInFailed => 'Google-pålogging mislyktes eller ble avbrutt.';
}

// Path: disclaimer
class _Translations$disclaimer$no extends Translations$disclaimer$en {
	_Translations$disclaimer$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Vennligst merk';
	@override late final _Translations$disclaimer$snap$no snap = _Translations$disclaimer$snap$no._(_root);
	@override late final _Translations$disclaimer$weightEstimate$no weightEstimate = _Translations$disclaimer$weightEstimate$no._(_root);
	@override late final _Translations$disclaimer$healthMetrics$no healthMetrics = _Translations$disclaimer$healthMetrics$no._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$no calorieExpenditure = _Translations$disclaimer$calorieExpenditure$no._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$no extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get portionSmaller => 'Mindre';
	@override String get portionEstimated => 'Anslått';
	@override String get portionLarger => 'Større';
	@override String portionQuestion({required Object ingredient}) => 'Hvilken porsjon passet best for ${ingredient}?';
	@override String get mealTypeQuestion => 'Hvilket måltid var dette?';
	@override String get localNutritionTip => 'Beregnet fra verifiserte lokale ernæringsdata.';
	@override String get offlineNutritionTitle => 'Last ned ernæringsdata';
	@override String get offlineNutritionSubtitle => 'Bruk verifiserte USDA-rader og deterministisk beregning på denne enheten når alle ingrediensene er dekket.';
	@override String get offlineNutritionUnavailable => 'Lokale ernæringsdata er ikke tilgjengelige for denne appversjonen.';
	@override String get offlineNutritionNotDownloaded => 'Ingen verifisert ernæringspakke er lastet ned.';
	@override String get offlineNutritionInstalling => 'Laster ned og verifiserer ernæringsdata…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Pakke ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} hurtigbufrede USDA-rader · ${size}';
	@override String get offlineNutritionUpdate => 'Se etter oppdatering';
	@override String get offlineNutritionClear => 'Tøm lokale ernæringsdata';
	@override String get offlineNutritionClearTitle => 'Tøm lokale ernæringsdata?';
	@override String get offlineNutritionClearBody => 'Dette fjerner den nedlastede USDA-pakken og oppslagshurtigbufferen. Loggførte måltider beholder det nøyaktige øyeblikksbildet av ernæringsdata som ble brukt da de ble lagret.';
	@override String get offlineNutritionClearConfirm => 'Tøm data';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Kunne ikke laste ned og verifisere lokale ernæringsdata: ${error}';
	@override String get offlineNutritionCleared => 'Lokale ernæringsdata er tømt';
}

// Path: watch
class _Translations$watch$no extends Translations$watch$en {
	_Translations$watch$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$no common = _Translations$watch$common$no._(_root);
	@override late final _Translations$watch$nutrition$no nutrition = _Translations$watch$nutrition$no._(_root);
	@override late final _Translations$watch$sync$no sync = _Translations$watch$sync$no._(_root);
	@override late final _Translations$watch$home$no home = _Translations$watch$home$no._(_root);
	@override late final _Translations$watch$history$no history = _Translations$watch$history$no._(_root);
	@override late final _Translations$watch$favorites$no favorites = _Translations$watch$favorites$no._(_root);
	@override late final _Translations$watch$meal$no meal = _Translations$watch$meal$no._(_root);
	@override late final _Translations$watch$voice$no voice = _Translations$watch$voice$no._(_root);
	@override late final _Translations$watch$result$no result = _Translations$watch$result$no._(_root);
}

// Path: common
class _Translations$common$no extends Translations$common$en {
	_Translations$common$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Beta';
	@override String get close => 'Lukk';
	@override String get kContinue => 'Fortsett';
}

// Path: feedbackRating
class _Translations$feedbackRating$no extends Translations$feedbackRating$en {
	_Translations$feedbackRating$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Liker du ${appLabel}?';
	@override String get yes => 'Ja, jeg liker den';
	@override String get no => 'Ikke så mye';
	@override String get rateStepHeading => 'Vurder i Play Store';
	@override String get emailStepHeading => 'Send tilbakemelding via e-post';
	@override String soloDevMessage({required Object appLabel}) => 'En rask vurdering hjelper andre å finne ${appLabel} og støtter videre utvikling. Vil du bruke et øyeblikk på å legge igjen en vurdering?';
	@override String get shareFeedbackViaEmail => 'Din tilbakemelding former hva som kommer neste — vi leser hver melding. Vil du dele tankene dine via e-post?';
	@override String get rateCta => 'Vurder i Play Store';
	@override String get maybeLater => 'Kanskje senere';
	@override String get sendFeedback => 'Send tilbakemelding';
	@override String get noThanks => 'Nei takk';
	@override String get aboutUsDescription => 'Lagett med omtanke av et lite team. Vi fokuserer på personvern, enkelhet og å hjelpe deg bygge bedre spisevaner.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Nysgjerrig på hvem som står bak ${appLabel}? Se ';
	@override String get aboutUsLinkLabel => 'Om oss';
	@override String get thankYouMessage => 'Takk! Vi spør igjen senere.';
}

// Path: health
class _Translations$health$no extends Translations$health$en {
	_Translations$health$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Kunne ikke synkronisere med Health Connect';
	@override String get mealSynced => 'Måltid synkronisert med Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$no extends Translations$onboarding$features$en {
	_Translations$onboarding$features$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$no foodRecognition = _Translations$onboarding$features$foodRecognition$no._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$no aiAnalysis = _Translations$onboarding$features$aiAnalysis$no._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$no healthIntegration = _Translations$onboarding$features$healthIntegration$no._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$no extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hva er kjønn?';
	@override String get description => 'Kjønn hjelper oss å beregne din basal metabolic rate (BMR) nøyaktig.';
	@override String get next => 'Neste';
}

// Path: onboarding.height
class _Translations$onboarding$height$no extends Translations$onboarding$height$en {
	_Translations$onboarding$height$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvor høy er du?';
	@override String get description => 'Høyden din hjelper oss å beregne BMI og energibehov nøyaktig.';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Britisk-amerikansk';
	@override String get next => 'Neste';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$no extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Hva er din nåværende vekt?';
	@override String get currentDescription => 'Din nåværende vekt er viktig for å tilpasse dine daglige mål.';
	@override String get targetTitle => 'Hva er din målsatte vekt?';
	@override String get targetDescription => 'Å sette en målvekt hjelper oss å planlegge langsiktig for deg.';
	@override String get metric => 'Metrisk';
	@override String get imperial => 'Britisk-amerikansk';
	@override String get next => 'Neste';
}

// Path: onboarding.age
class _Translations$onboarding$age$no extends Translations$onboarding$age$en {
	_Translations$onboarding$age$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Når er bursdagen din?';
	@override String get description => 'Alderen din hjelper oss å beregne kaloriebehovet ditt nøyaktig.';
	@override String get next => 'Neste';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$no extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Undervekt';
	@override String get healthy => 'Sunn';
	@override String get overweight => 'Overvekt';
	@override String get obese => 'Fedme';
	@override late final _Translations$onboarding$bmiScale$categories$no categories = _Translations$onboarding$bmiScale$categories$no._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$no messages = _Translations$onboarding$bmiScale$messages$no._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$no extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hva er målet ditt?';
	@override String get description => 'Velg målet som best beskriver hva du ønsker å oppnå';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$no extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvor aktiv er du?';
	@override String get description => 'Dette hjelper oss å beregne ditt daglige kaloriebehov mer nøyaktig';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$no extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Koble til Health Connect';
	@override String get description => 'Bruk forbrente kalorier i dagsmålet ditt, og del loggførte måltider med Health Connect hvis du vil.';
	@override String get overviewDescription => 'Bruk forbrente kalorier i dagsmålet ditt, og del loggførte måltider med Health Connect hvis du vil.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$no automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$no._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$no caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$no._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$no progressInsights = _Translations$onboarding$healthConnect$progressInsights$no._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$no shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$no._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$no seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$no._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$no userControl = _Translations$onboarding$healthConnect$userControl$no._(_root);
	@override String get connected => 'Health Connect tilkoblet';
	@override String get notConnected => 'Health Connect ikke tilkoblet';
	@override String get setup => 'Sett opp Health Connect';
	@override String get skipForNow => 'Hopp over for nå';
	@override String get statusConnected => 'Health Connect er tilkoblet.';
	@override String get statusSuccess => 'Health Connect ble koblet til!';
	@override String get statusNotConnected => 'Velg hvilke Health Connect-funksjoner du vil aktivere.';
	@override String get statusPartial => 'Health Connect er delvis tilkoblet. Aktiver den gjenværende tillatelsen for å bruke begge funksjonene.';
	@override String get statusProviderUpdateRequired => 'Installer eller oppdater Health Connect for å fortsette.';
	@override String get statusUnavailable => 'Health Connect støttes ikke på denne enheten.';
	@override String get installOrUpdate => 'Installer eller oppdater';
	@override String get manageAccess => 'Administrer tilgang';
	@override String statusPermissionDenied({required Object appLabel}) => 'Tillatelse nektet. Aktiver Health Connect-tillatelser i telefonens innstillinger for ${appLabel}.';
	@override String statusError({required Object error}) => 'Feil ved oppsett av Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$no extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$no trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$no._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$no healthProfile = _Translations$onboarding$reinforcement$healthProfile$no._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$no goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$no._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$no extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din AI-oppsummering';
	@override String get logMore => 'Logg flere måltider de neste dagene for å få personlige AI-innsikter.';
	@override String get loading => 'Laster oppsummeringen din...';
	@override String mealCount({required Object count}) => '${count} måltider logget';
	@override String macroBalanceScore({required Object score}) => 'Balansescore ${score}';
	@override String get topFoods => 'Mest spiste matvarer';
	@override String get trendUp => 'Kalorier øker';
	@override String get trendDown => 'Kalorier synker';
	@override String get trendSteady => 'Kalorier stabile';
	@override String generatedAt({required Object time}) => 'Oppdatert ${time}';
}

// Path: home.dailyGoal
class _Translations$home$dailyGoal$no extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sett ditt daglige mål';
	@override String get titleSet => 'Ditt daglige mål';
	@override String get description => 'Klar for å starte din velværereise? Sett ditt daglige kalori mål nedenfor for å komme i gang.';
	@override String get descriptionSet => 'Kompasset er satt! Dette er ditt daglige kalori mål som vil veilede deg.';
	@override String get yourGoal => 'Ditt mål';
	@override String get goal => 'Mål';
	@override String get dailyCalories => 'Daglige kalorier (kcal)';
	@override String get setGoal => 'Sett mål';
	@override String get intake => 'Inntak';
	@override String get burned => 'Forbrent';
	@override String get weightImpact => 'Vektpåvirkning';
	@override String get estLoss => 'Estimert tap på';
	@override String get estGain => 'Estimert økning på';
	@override String get kcal => 'kilokalorier (kcal)';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$no extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagsoversikt';
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Karbohydrater';
	@override String get protein => 'Proteiner';
	@override String get fat => 'Fett';
	@override String get fiber => 'Kostfiber';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Makrodiagram';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$no extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagens makrofordeling';
	@override String get target => 'Mål';
	@override String get current => 'Nåværende';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$no extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => '7-dagers makrohistorikk';
	@override String get trendTitle => 'Dagens trend';
	@override String peakHour({required Object hour}) => 'Topp: ${hour}:00';
	@override String get noHistoryYet => 'Ingen historikk ennå';
	@override String get startLogging => 'Begynn å logge måltider for å se dine\n7-dagers makrotrender her';
}

// Path: home.mealLog
class _Translations$home$mealLog$no extends Translations$home$mealLog$en {
	_Translations$home$mealLog$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Loggede måltider';
	@override String get emptyMessage => 'Ta et bilde av forrige måltid for å logge det her.';
	@override String get noMealsToday => 'Ingen måltider registrert i dag';
	@override String get seeAllMeals => 'Se alle måltider';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$no extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Raskt tillegg med AI';
	@override String get description => 'Beskriv måltidet, så håndterer AI resten.';
	@override String get hint => 'f.eks. Til frokost hadde jeg en stor bolle havregrøt med en skivet banan og en scoop whey ...';
	@override String get analyzeMeal => 'Analyser måltid';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$no extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorittmåltider';
	@override String get description => 'Legg raskt til et av favorittmåltidene dine.';
	@override String get noFavorites => 'Ingen favorittmåltider ennå.';
	@override String get addFavoriteHint => 'Klikk stjernen på et måltid for å merke det som favoritt.';
	@override String get seeAll => 'Se alle';
	@override String get add => 'Legg til';
}

// Path: home.mealSnap
class _Translations$home$mealSnap$no extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ta bilde & logg måltidet';
	@override String get description => 'Bruk kameraet for å ta et bilde av maten for AI-analyse.';
	@override String get openCamera => 'Åpne kamera';
	@override String get gallery => 'Galleri';
	@override String get compressingPhoto => 'Optimaliserer bilde…';
	@override String get uploadingPhoto => 'Laster opp bilde…';
}

// Path: home.connectHealth
class _Translations$home$connectHealth$no extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synk med Health Connect';
	@override String get description => 'Bruk forbrente kalorier i målet ditt, og del loggførte måltider';
	@override String get install => 'Installer eller oppdater';
	@override String get dataUseDescription => 'Bruk forbrente kalorier i målet ditt, og del loggførte måltider';
	@override String get installOrUpdate => 'Installer eller oppdater';
	@override String get connect => 'Koble til';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$no extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorier';
	@override String get carbs => 'Karbohydrater (g)';
	@override String get protein => 'Proteiner (g)';
	@override String get fat => 'Fett (g)';
	@override String get fiber => 'Kostfiber (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$no extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Slett måltid';
	@override String get message => 'Er du sikker på at du vil slette denne måltidsoppføringen?';
	@override String get cancel => 'Avbryt';
	@override String get delete => 'Slett';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$no extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Spørsmål ${current} av ${total}';
	@override String get noQuestionsAvailable => 'Ingen spørsmål tilgjengelig';
	@override String get next => 'Neste';
	@override String get continueLabel => 'Fortsett';
}

// Path: meal.analysis
class _Translations$meal$analysis$no extends Translations$meal$analysis$en {
	_Translations$meal$analysis$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyserer måltidet ditt';
	@override String get stepStarted => 'Kommer i gang…';
	@override String get stepDecomposition => 'Forstår måltidet ditt…';
	@override String get stepIngredients => 'Matcher ingredienser med næringsdata…';
	@override String get stepUncertainty => 'Sjekker sikkerhet…';
	@override String get stepMealTypeQuestion => 'Nesten ferdig…';
	@override String get stepResult => 'Ferdigstiller resultatet…';
	@override String get stepError => 'Noe gikk galt';
	@override String get stepDefault => 'Analyserer måltidet ditt…';
	@override String get progressUnderstand => 'Forstår måltidet ditt';
	@override String get progressMatch => 'Slår opp ingrediensnæring';
	@override String get progressCheck => 'Sjekker porsjoner og sikkerhet';
	@override String get progressMealType => 'Velger måltidstype';
	@override String get progressFinish => 'Beregner kalorier og makroer';
	@override String get detectedIngredientHeading => 'Ingredienser vi ser';
	@override String ingredientsOverflow({required Object count}) => '${count} til';
	@override String ingredientsLine({required Object count}) => '${count} ingredienser oppdaget';
	@override String get ingredientsPending => 'Skanner ingredienser…';
	@override String mealPreviewDescription({required Object text}) => '«${text}»';
	@override String get offlineTip0 => 'Tips: Konsistens slår perfeksjon—jevn logging avdekker mønstrene som betyr noe.';
	@override String get offlineTip1 => 'Tips: Naturlig lys og et bilde ovenfra hjelper med porsjonsnøyaktighet.';
	@override String get offlineTip2 => 'Tips: Nevn drikker, sauser og matolje—de tilfører ofte kalorier folk glemmer.';
	@override String get offlineTip3 => 'Tips: En kort porsjonsbeskrivelse (1 bolle, stor kaffe) gjør estimatene mye mer presise.';
	@override String get offlineTip4 => 'Tips: Å logge etter måltidet bygger fortsatt vanen; perfeksjon er valgfritt.';
	@override String get offlineTip5 => 'Tips: Si hvordan maten er tilberedt når det påvirker kalorier mye (stekt vs bakt).';
}

// Path: meal.localInference
class _Translations$meal$localInference$no extends Translations$meal$localInference$en {
	_Translations$meal$localInference$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Se over gjenkjente ingredienser';
	@override String get reviewSubtitle => 'Dette ble tolket på enheten din. Korriger navn eller porsjoner før næringsinnholdet beregnes.';
	@override String get mealName => 'Måltidnavn';
	@override String get ingredient => 'Ingrediens';
	@override String get grams => 'Estimert antall gram';
	@override String get removeIngredient => 'Fjern ingrediens';
	@override String get continueLabel => 'Fortsett';
	@override String get invalidProposal => 'Legg til minst én ingrediens og bruk en positiv mengde gram.';
	@override String get localUnavailable => 'Analyse på enheten er utilgjengelig akkurat nå.';
}

// Path: meal.feedback
class _Translations$meal$feedback$no extends Translations$meal$feedback$en {
	_Translations$meal$feedback$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hva ser feil ut?';
	@override String get subtitle => 'Hjelp oss forbedre analysen ved å velge ett eller flere problemer.';
	@override String get tellUsMore => 'Fortell oss mer';
	@override String get describeIncorrect => 'Beskriv hva som var feil';
	@override String get submit => 'Send inn';
	@override String get issueFoodIdentification => 'Matidentifikasjon';
	@override String get issuePortionSize => 'Porsjonsstørrelse';
	@override String get issueCalorieDistribution => 'Kalorifordeling';
	@override String get issueMacrosWrong => 'Makroer feil';
	@override String get issueMissingItems => 'Mangler elementer';
	@override String get issueExtraItems => 'Ekstra elementer';
	@override String get issueOther => 'Annet';
}

// Path: favorites.sortOptions
class _Translations$favorites$sortOptions$no extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Nylige';
	@override String get calories => 'Kalorier';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _Translations$profile$sections$no extends Translations$profile$sections$en {
	_Translations$profile$sections$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'BASISINFORMASJON';
	@override String get goalsAndActivity => 'MÅL & AKTIVITET';
	@override String get calculatedValues => 'BEREGNEDE VERDIER';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$no extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Daglig mål';
	@override String get calPerDay => 'cal/dag';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$no extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSONLIG INFORMASJON';
	@override String get physicalMeasurements => 'FYSISKE MÅL';
	@override String get goalsAndActivity => 'MÅL & AKTIVITET';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$no extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get male => 'Mann';
	@override String get female => 'Kvinne';
	@override String get other => 'Annet';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$no extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$no loseWeight = _Translations$editProfile$weightGoals$loseWeight$no._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$no maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$no._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$no gainWeight = _Translations$editProfile$weightGoals$gainWeight$no._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$no extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$no sedentary = _Translations$editProfile$activityLevels$sedentary$no._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$no lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$no._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$no moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$no._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$no veryActive = _Translations$editProfile$activityLevels$veryActive$no._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$no extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$no._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$no extends Translations$settings$sections$en {
	_Translations$settings$sections$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALISERING';
	@override String get notifications => 'MELDINGER';
	@override String get healthConnect => 'Health Connect';
	@override String get localInference => 'ANALYSE PÅ ENHETEN';
	@override String get supportAndLegal => 'SUPPORT & JURIDISK';
	@override String get about => 'OM';
	@override String get dangerZone => 'FARLIG SONE';
	@override String get developer => 'UTVIKLER';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$no extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rediger profil';
	@override String get subtitle => 'Oppdater din personlige informasjon';
}

// Path: settings.language
class _Translations$settings$language$no extends Translations$settings$language$en {
	_Translations$settings$language$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Språk';
	@override String get subtitle => 'Velg foretrukket språk';
	@override String get searchHint => 'Søk i språk...';
	@override String get noResults => 'Ingen resultater funnet';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$no extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Høydeenhet';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$no extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vektenhet';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$no extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Måltidspåminnelser';
	@override String get subtitle => 'Hold deg på sporet med vennlige varsler';
}

// Path: settings.localInference
class _Translations$settings$localInference$no extends Translations$settings$localInference$en {
	_Translations$settings$localInference$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Måltidsanalyse på enheten';
	@override String get subtitle => 'Tolk støttede måltider med Gemini Nano før næringsinnholdet beregnes';
	@override String get unavailable => 'Ikke tilgjengelig på denne enheten';
	@override String get rolloutUnavailable => 'Støttet maskinvare funnet, men denne funksjonen er ikke aktivert for denne app-versjonen';
	@override String get modelSetup => 'Gemini Nano må fullføre nedlastingen før dette kan aktiveres';
	@override String get useLocalTitle => 'Bruk analyse på enheten';
	@override String get useLocalSubtitle => 'Valgfritt og avslått som standard. Resultatene kan være mindre pålitelige for komplekse måltider.';
	@override String get disclosureTitle => 'Før du aktiverer analyse på enheten';
	@override String get disclosureBody => 'Gemini Nano kan identifisere ingredienser og estimere porsjoner på støttede Android-enheter. Ditt gjennomgåtte forslag til ingredienser sendes til Calorify for USDA-næringsgrunnlag og beregning.';
	@override String get disclosureLimit1 => 'Komplekse retter, skjulte ingredienser og porsjonsstørrelser kan bli identifisert feil.';
	@override String get disclosureLimit2 => 'Modellen kan være utilgjengelig under nedlasting, når den er opptatt, kjører i bakgrunnen eller er begrenset av enheten.';
	@override String get disclosureLimit3 => 'Hvis lokal tolkning ikke kan fullføres, sender denne betaen automatisk din opprinnelige måltidsbeskrivelse til Calorify for skyanalyse.';
	@override String get acknowledgement => 'Jeg forstår at jeg bør se over gjenkjente ingredienser og porsjoner.';
	@override String get enable => 'Bekreft og aktiver';
	@override String get cancel => 'Avbryt';
}

// Path: settings.theme
class _Translations$settings$theme$no extends Translations$settings$theme$en {
	_Translations$settings$theme$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Lyst';
	@override String get dark => 'Mørkt';
	@override String get system => 'Systemstandard';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$no extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Send tilbakemelding';
	@override String subtitle({required Object appLabel}) => 'Hjelp oss forbedre ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Tilbakemelding for ${appLabel}-appen';
	@override String get emailBodyPrefix => 'Vennligst gi din tilbakemelding nedenfor:';
	@override String get appVersion => 'Appversjon';
	@override String get device => 'Enhet';
	@override String get osVersion => 'OS-versjon';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _Translations$settings$exportMealHistory$no extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eksporter måltidshistorikk';
	@override String get subtitle => 'Del en CSV av dine loggede måltider';
	@override String get shareText => 'Din Calorify-måltidshistorikk eksport';
	@override String failed({required Object error}) => 'Kunne ikke eksportere måltidshistorikk: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$no extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Slett alle data';
	@override String get subtitle => 'Slett Calorify-data som er lagret på denne enheten';
	@override String get localOnlySubtitle => 'Slett Calorify-data som er lagret på denne enheten';
	@override String get confirmationTitle => 'Slette alle data?';
	@override String get confirmationMessage => 'Dette sletter loggførte måltider, favoritter og profilinnstillinger permanent fra denne enheten. Måltider som allerede er delt med Health Connect, og Health Connect-tilgang administreres separat under Innstillinger > Health Connect.';
	@override String get localOnlyConfirmationMessage => 'Dette sletter loggførte måltider, favoritter og profilinnstillinger permanent fra denne enheten. Måltider som allerede er delt med Health Connect, og Health Connect-tilgang administreres separat under Innstillinger > Health Connect.';
	@override String get cancel => 'Avbryt';
	@override String get clearEverything => 'Slett alt';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$no extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Feilsøkingsvalg';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$no extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Se og administrer tillatelser';
	@override late final _Translations$settings$healthConnect$unavailable$no unavailable = _Translations$settings$healthConnect$unavailable$no._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$no updateRequired = _Translations$settings$healthConnect$updateRequired$no._(_root);
	@override late final _Translations$settings$healthConnect$permissions$no permissions = _Translations$settings$healthConnect$permissions$no._(_root);
	@override String get managePermissions => 'Administrer tillatelser';
	@override String get openSettings => 'Åpne Health Connect-innstillinger';
	@override String get disconnect => 'Koble fra Health Connect';
	@override String get disconnectConfirmationTitle => 'Koble fra Health Connect?';
	@override String get disconnectConfirmationMessage => 'Calorify mister tilgangen til Health Connect. Data som allerede er skrevet der, blir ikke slettet.';
	@override String get disconnectConfirmationAction => 'Koble fra';
	@override String get deleteSyncedMeals => 'Slett Calorify-måltider fra Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'Slette synkroniserte måltider?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Vil du slette måltider som er synkronisert av denne versjonen av Calorify, fra Health Connect? Den lokale måltidsloggen endres ikke. Eldre Calorify-oppføringer må kanskje fortsatt fjernes via Administrer data i Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Slett synkroniserte måltider';
	@override String get deleteSyncedMealsSuccess => 'Calorify-måltider ble slettet fra Health Connect.';
	@override String get deleteSyncedMealsFailed => 'Synkroniserte måltider kunne ikke slettes. Prøv igjen.';
	@override String get connectionPartial => 'Noen Health Connect-funksjoner er aktivert.';
	@override String get connectionComplete => 'Begge Health Connect-funksjonene er aktivert.';
	@override String get actionFailed => 'Health Connect kunne ikke åpnes. Prøv igjen.';
	@override String get requestPermissions => 'Be om tillatelser';
	@override String get permissionRequestCancelledOrFailed => 'Tillatelsesforespørselen ble avbrutt eller mislyktes. Prøv igjen eller gi tillatelser manuelt i Health Connect-innstillingene.';
	@override String get permissionRequestFailed => 'Kunne ikke be om tillatelser. Prøv igjen eller gi tillatelser manuelt i Health Connect-innstillingene.';
	@override String get requestingPermissions => 'Ber om...';
}

// Path: settings.about
class _Translations$settings$about$no extends Translations$settings$about$en {
	_Translations$settings$about$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om';
	@override String get tagline => 'Rask, gratis og personvernfokusert kalorioversikt';
	@override late final _Translations$settings$about$ourStory$no ourStory = _Translations$settings$about$ourStory$no._(_root);
	@override late final _Translations$settings$about$privacy$no privacy = _Translations$settings$about$privacy$no._(_root);
	@override late final _Translations$settings$about$developer$no developer = _Translations$settings$about$developer$no._(_root);
	@override late final _Translations$settings$about$feedback$no feedback = _Translations$settings$about$feedback$no._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$no extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify versjon ${version}';
	@override String build({required Object buildNumber}) => 'Bygg ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$no extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Frokosttid! 🍳';
	@override String get body => 'Ikke glem å logge frokosten din';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$no extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lunsjtid! 🥗';
	@override String get body => 'Det er på tide å logge lunsjen din';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$no extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Middagstid! 🍽️';
	@override String get body => 'Ikke glem å logge middagen din';
}

// Path: notifications.snack
class _Translations$notifications$snack$no extends Translations$notifications$snack$en {
	_Translations$notifications$snack$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snacketid! 🍎';
	@override String get body => 'Tid for en sunn snack';
}

// Path: notifications.test
class _Translations$notifications$test$no extends Translations$notifications$test$en {
	_Translations$notifications$test$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testvarsel';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$no extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} gir estimerte næringsverdier. Nøyaktigheten avhenger av innspillene dine og variasjon i mat. Bruk som veiledning, ikke som en definitiv kilde. Rådfør deg med en fagperson for personlig kostholdsråd.';
	@override late final _Translations$disclaimer$snap$portionSize$no portionSize = _Translations$disclaimer$snap$portionSize$no._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$no preparationMethods = _Translations$disclaimer$snap$preparationMethods$no._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$no ingredients = _Translations$disclaimer$snap$ingredients$no._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$no databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$no._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$no extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Om vektestimatet';
	@override String get description => 'Den projiserte vektendringen er et teoretisk estimat basert på det enkle kalori inn vs. kalori ut-modellen. Det er ment som motivasjonsveiledning, ikke en prediksjon av din faktiske vekt.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$no calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$no._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$no biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$no._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$no waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$no._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$no professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$no._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$no extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get description => 'Disse målingene hjelper deg å forstå kroppens energibehov og veileder ernæringsmålene dine.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$no bmr = _Translations$disclaimer$healthMetrics$bmr$no._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$no tdee = _Translations$disclaimer$healthMetrics$tdee$no._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$no dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$no._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$no extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimert kalori-forbruk';
	@override String get description => 'Når Health Connect-data ikke er tilgjengelig, estimerer vi dagens forbruk ved å bruke din BMR og aktivitetsnivå (TDEE), skalert etter hvor mye av dagen som har gått.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$no howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$no._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$no professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$no._(_root);
}

// Path: watch.common
class _Translations$watch$common$no extends Translations$watch$common$en {
	_Translations$watch$common$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get back => 'Tilbake';
	@override String get cancel => 'Avbryt';
	@override String get delete => 'Slett';
	@override String get retry => 'Prøv igjen';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$no extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Næringsstoff';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} grams';
	@override String get protein => 'Protein';
	@override String get carbs => 'Karbohydrater';
	@override String get fat => 'Fett';
	@override String get fiber => 'Fiber';
}

// Path: watch.sync
class _Translations$watch$sync$no extends Translations$watch$sync$en {
	_Translations$watch$sync$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Synkroniser med telefon';
	@override String get syncing => 'Synkroniserer…';
	@override String get synced => 'Synkronisert';
	@override String get syncedJustNow => 'Synkronisert nå';
	@override String syncedMinutesAgo({required Object minutes}) => 'Synkronisert ${minutes}m siden';
	@override String get failed => 'Synkronisering mislyktes';
	@override String get phoneDisconnected => 'Telefon koblet fra';
	@override String get tapToSync => 'Trykk for å synkronisere';
	@override String get refreshFailed => 'Kunne ikke oppdatere. Sjekk telefonen din.';
	@override String get openPhone => 'Åpne Calorify på telefonen din, og trykk Oppdater.';
}

// Path: watch.home
class _Translations$watch$home$no extends Translations$watch$home$en {
	_Translations$watch$home$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get today => 'I dag';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} kalorier inntatt av ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} over målet';
	@override String remaining({required Object calories}) => '${calories} igjen';
	@override String left({required Object calories}) => '${calories} igjen';
	@override String goal({required Object calories}) => 'Mål: ${calories} kcal';
	@override String get logMeal => 'Logg et måltid';
	@override String get todayMeals => 'Dagens måltider';
	@override String todayMealsCount({required Object count}) => 'Dagens måltider, ${count}';
	@override String viewMore({required Object count}) => 'Se ${count} til';
	@override String viewMoreSemantics({required Object count}) => '${count} flere måltider, trykk for å vise alle';
	@override String get noMeals => 'Ingen måltider registrert';
	@override String get noMealsSemantics => 'Ingen måltider registrert i dag';
	@override String get tapLog => 'Trykk Logg for å starte';
	@override String get removedFromQueue => 'Måltid fjernet fra offline-køen.';
	@override String get removedOffline => 'Måltidet ble fjernet mens du var frakoblet. Det synkroniseres når telefonen kobler til igjen.';
	@override String get deleteFailed => 'Kunne ikke slette måltidet';
}

// Path: watch.history
class _Translations$watch$history$no extends Translations$watch$history$en {
	_Translations$watch$history$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagens måltider';
	@override String get refresh => 'Oppdater måltider';
	@override String get loadFailed => 'Kunne ikke laste måltider';
	@override String get syncFailed => 'Kunne ikke synkronisere';
	@override String get emptyTitle => 'Ingen måltider ennå';
	@override String get emptyMessage => 'Registrer et måltid fra Hjem for å se det her.';
}

// Path: watch.favorites
class _Translations$watch$favorites$no extends Translations$watch$favorites$en {
	_Translations$watch$favorites$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoritter';
	@override String get refresh => 'Oppdater favoritter';
	@override String get loadFailed => 'Kunne ikke laste favoritter';
	@override String get syncFailed => 'Kunne ikke synkronisere';
	@override String get emptyTitle => 'Ingen favoritter ennå';
	@override String get emptyMessage => 'Marker måltider som favoritter i telefonappen for å logge dem med ett trykk her.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} kalorier. Trykk for å logge.';
	@override String logged({required Object name}) => '${name} logget!';
	@override String savedOffline({required Object name}) => '${name} lagret mens du var frakoblet. Det synkroniseres når telefonen kobler til igjen.';
	@override String get saveFailed => 'Kunne ikke lagre måltidet. Prøv igjen.';
	@override String get log => 'Logg';
}

// Path: watch.meal
class _Translations$watch$meal$no extends Translations$watch$meal$en {
	_Translations$watch$meal$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kalorier, logget kl. ${time}.';
	@override String get longPressDelete => 'Hold nede for å slette.';
	@override String get deleteTitle => 'Slette måltid?';
}

// Path: watch.voice
class _Translations$watch$voice$no extends Translations$watch$voice$en {
	_Translations$watch$voice$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Taleregistrering';
	@override String get processing => 'Sjekker måltidet ditt…';
	@override String get processingDescription => 'Beregner porsjoner og næringsinnhold';
	@override String get listening => 'Lytter';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Stopp opptak';
	@override String get start => 'Trykk for å starte opptak';
	@override String get starting => 'Starter mikrofon…';
	@override String get prompt => 'Trykk, og beskriv deretter måltidet ditt';
	@override String get tapToRetry => 'Trykk for å prøve igjen';
	@override String get example => 'Prøv “2 rotis med dal”';
	@override String get unavailable => 'Taleinndata er ikke tilgjengelig. Sjekk mikrofon-tillatelse i klokkens innstillinger.';
	@override String get didNotStart => 'Mikrofonen startet ikke. Trykk for å prøve igjen.';
	@override String get startFailed => 'Kunne ikke starte opptak. Sjekk mikrofontillatelser.';
	@override String get allowMicrophone => 'Gi tilgang til mikrofonen for å registrere måltider med stemme.';
	@override String get needsConnection => 'Talegjenkjenning trenger en tilkobling. Trykk for å prøve igjen.';
	@override String get microphoneUnavailable => 'Mikrofonen er ikke tilgjengelig. Trykk for å prøve igjen.';
	@override String get microphoneBusy => 'Mikrofonen er opptatt. Vent et øyeblikk og prøv igjen.';
	@override String get languageUnsupported => 'Taleinndata støtter ikke klokkens språk.';
	@override String get temporarilyBusy => 'Taleinndata er midlertidig opptatt. Vent et øyeblikk og prøv igjen.';
	@override String get notRecognized => 'Det hørte jeg ikke. Trykk på mikrofonen og prøv igjen.';
	@override String get noSpeech => 'Ingen tale registrert. Trykk på mikrofonen for å prøve igjen.';
	@override String get analysisFailed => 'Analyse mislyktes. Prøv igjen.';
	@override String get mealNotIdentified => 'Kunne ikke identifisere måltidet. Prøv å beskrive det på en annen måte.';
}

// Path: watch.result
class _Translations$watch$result$no extends Translations$watch$result$en {
	_Translations$watch$result$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Måltidsdetaljer';
	@override String get savedOffline => 'Lagret frakoblet';
	@override String get logged => 'Logget!';
	@override String get mealFound => 'Måltid funnet';
	@override String get estimatedEnergy => 'Estimert energi';
	@override String get logMeal => 'Logg måltid';
	@override String get logging => 'Logger…';
	@override String get logAnother => 'Logg et til';
	@override String get goingBack => 'Går tilbake…';
	@override String get savedOfflineMessage => 'Måltidet er lagret frakoblet. Det synkroniseres når telefonen kobler til igjen.';
	@override String get saveFailed => 'Kunne ikke lagre måltidet. Prøv igjen.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$no extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Smart matgjenkjenning';
	@override String get description => 'Ta et bilde og la AI identifisere måltidet ditt';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$no extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-analyse';
	@override String get description => 'Få øyeblikkelige næringsfakta fra beskrivelsene dine';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$no extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Helsesynk';
	@override String get description => 'Koble til Health Connect for bedre innsikt';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$no extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Undervekt';
	@override String get healthyWeight => 'Sunn vekt';
	@override String get overweight => 'Overvekt';
	@override String get obese => 'Fedme';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$no extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Vi kan hjelpe deg med å bygge en sunn plan for å nå en balansert vekt med næringstette måltider.';
	@override String get healthy => 'Flott jobb! Du er i et sunt område. Vi hjelper deg å opprettholde energi og vitalitet.';
	@override String overweight({required Object appLabel}) => '${appLabel} vil gjøre reisen enklere med AI-basert sporing for å hjelpe deg nå målet på en bærekraftig måte.';
	@override String get obese => 'Vi er her for å støtte deg med personlig veiledning og bærekraftige strategier for dine helse mål.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$no extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Forbrente kalorier';
	@override String get description => 'Les dagens totale kaloriforbrenning fra Health Connect';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$no extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Forbrente kalorier';
	@override String get description => 'Les dagens totale kaloriforbrenning fra Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$no extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Del loggførte måltider';
	@override String get description => 'Skriv måltider du logger i Calorify, til Health Connect';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$no extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Del loggførte måltider';
	@override String get description => 'Skriv måltider du logger i Calorify, til Health Connect';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$no extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du har kontrollen';
	@override String get description => 'Velg én eller begge tillatelser, og endre tilgangen når som helst';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$no extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du har kontrollen';
	@override String get description => 'Velg én eller begge tillatelser, og endre tilgangen når som helst';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$no extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du er ikke alene';
	@override String get genericMessage => 'Forskning viser at jevn sporing er den viktigste faktoren for langsiktig suksess.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'For en ${age} år gammel ${gender} som ønsker å ${goal}, er jevn sporing den viktigste prediktoren for suksess.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} gjør det 10x enklere enn å gjøre det manuelt.';
	@override String get getStartedTitle => 'Klar til å starte?';
	@override String get tipPhoto => 'Ta et bilde av måltidene for øyeblikkelig analyse';
	@override String get tipConsistency => 'Logg jevnlig for å se meningsfull fremgang';
	@override String get tipProgress => 'Følg fremgangen din daglig for motivasjon';
	@override String get button => 'La oss gå';
	@override String get defaultGender => 'individ';
	@override String get defaultGoal => 'en sunnere deg';
}

// Path: onboarding.reinforcement.healthProfile
class _Translations$onboarding$reinforcement$healthProfile$no extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Din helseprofil';
	@override String bmiDescription({required Object bmi}) => 'Basert på målingene dine er BMI-en din ${bmi}.';
	@override String get finalizeDescription => 'La oss fullføre profilen for å tilpasse opplevelsen din.';
	@override String get goalGain => 'øke';
	@override String get goalLose => 'miste';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'For å nå målet ditt vil du ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Du er på målvekten! Vi hjelper deg å vedlikeholde den.';
	@override String get button => 'La oss gå';
}

// Path: onboarding.reinforcement.goalLifestyle
class _Translations$onboarding$reinforcement$goalLifestyle$no extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Utmerket start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har tatt første skritt mot ${goalText}. Siden du er ${activityText}, vil ${appLabel} justere målene dine for å passe livsstilen din.';
	@override String get personalizedTargets => 'Personlige kalori mål';
	@override String get aiMealDetection => 'AI-drevet måltidsdeteksjon';
	@override String get macroBreakdowns => 'Detaljerte makronæringsfordelinger';
	@override String get button => 'La oss gå';
	@override String get defaultGoal => 'dine mål';
	@override String get defaultActivity => 'aktiv';
}

// Path: editProfile.weightGoals.loseWeight
class _Translations$editProfile$weightGoals$loseWeight$no extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gå ned i vekt';
	@override String get description => 'Skap kalorimangel for å gå ned i vekt';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$no extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Beholde vekt';
	@override String get description => 'Oppretthold din nåværende vekt';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$no extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gå opp i vekt';
	@override String get description => 'Skap kalorioverskudd for å gå opp i vekt';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$no extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Svært lite aktivitet';
	@override String get description => 'Lite eller ingen trening';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$no extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Lett aktiv';
	@override String get description => 'Lett trening 1–3 dager/uke';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$no extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderat aktiv';
	@override String get description => 'Moderat trening 3–5 dager/uke';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$no extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Veldig aktiv';
	@override String get description => 'Hard trening 6–7 dager/uke';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$no extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get name => 'Ekstremt aktiv';
	@override String get description => 'Veldig hard trening eller fysisk krevende jobb';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$no extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect utilgjengelig';
	@override String get description => 'Health Connect støttes ikke på denne enheten.';
	@override String get unsupportedDescription => 'Health Connect støttes ikke på denne enheten.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$no extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect krever oppmerksomhet';
	@override String get description => 'Installer eller oppdater Health Connect før du administrerer tilgang.';
	@override String get action => 'Installer eller oppdater';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$no extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tillatelser';
	@override String get description => 'Følgende tillatelser blir bedt om for å gi Health Connect-integrasjon:';
	@override String get granted => 'Gitt';
	@override String get notGranted => 'Ikke gitt';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$no caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$no._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$no nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$no._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$no nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$no._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$no extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vår historie';
	@override String content({required Object appLabel}) => '${appLabel} ble født ut fra en enkel frustrasjon: de fleste kaloritrapingsapper er enten for kompliserte, krever konstant manuelt innspill, tar høye abonnementsavgifter, eller går på kompromiss med personvernet.\n\nSom en solo-utvikler ønsket jeg å lage noe enklere og mer rettferdig — en app som bruker AI for å redusere innsatsen, forblir rask og gratis å bruke, og behandler helsedataene dine med respekt.\n\n${appLabel} er appen jeg skulle ønske fantes: ingen kontoer, ingen sporing, ingen annonser — bare klare, praktiske innsikter og dine helse mål.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$no extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ditt personvern betyr noe';
	@override String get description => 'Personvern er ikke en ettertanke — det er et designprinsipp. Her er hva det betyr i praksis:';
	@override String get noAccounts => 'Ingen kontoer nødvendig\nBruk appen med en gang. Ingen registrering, ingen identiteter.';
	@override String noTracking({required Object appLabel}) => 'Begrenset analyse og diagnostikk\n${appLabel} bruker grunnleggende apphendelser og krasjdiagnostikk for å forbedre påliteligheten. Verdier i helseoppføringer brukes ikke til annonsering eller salg.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Begrenset analyse og diagnostikk\n${appLabel} bruker grunnleggende apphendelser og krasjdiagnostikk for å forbedre påliteligheten. Verdier i helseoppføringer brukes ikke til annonsering eller salg.';
	@override String noAds({required Object appLabel}) => 'Annonsefri etter design\n${appLabel} er bygget for å fungere uten annonser eller datadrevet inntektsmodell.';
	@override String get noDataSelling => 'Ingen videresalg av data\nDine helsedata blir aldri solgt eller delt med tredjepart.';
	@override String get localStorage => 'Lokal-først lagring\nDine data blir værende på enheten din.';
	@override String get privacyPolicy => 'Personvernerklæring';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$no extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bygget av en solo-utvikler';
	@override String description({required Object appLabel}) => '${appLabel} er bygget og vedlikeholdt av én solo-utvikler som fokuserer på å lage rolig, personvernvennlig helseprogramvare.\n\nTilbakemeldinger leses personlig og former retningen for appen.';
	@override String get website => 'Nettsted';
	@override String get email => 'E-post';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$no extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Liker du ${appLabel}?';
	@override String description({required Object appLabel}) => 'Dine tilbakemeldinger gjør ${appLabel} bedre for alle.';
	@override String get rateApp => 'Vurder i Play Store';
	@override String get sendFeedback => 'Send tilbakemelding';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$no extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Porsjonsstørrelse';
	@override String get description => 'Nøyaktigheten av estimatene avhenger i stor grad av din korrekte vurdering av porsjonsstørrelsen.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$no extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tilberedningsmetoder';
	@override String description({required Object appLabel}) => 'Tilberedningsmetoder kan endre næringsinnholdet betydelig. ${appLabel}s estimater tar ikke alltid høyde for disse variasjonene.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$no extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredienser';
	@override String get description => 'Komplekse retter med mange skjulte ingredienser kan gi mindre nøyaktige estimater.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$no extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Databasebegrensninger';
	@override String description({required Object appLabel}) => '${appLabel}s matdatabase er omfattende, men kan ikke inneholde hvert enkelt matvarealternativ eller variasjon.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$no extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kalorinøyaktighet';
	@override String get description => 'Dette estimatet er så nøyaktig som registreringen av ditt kaloriinntak og -forbruk. Unøyaktig logging gir et unøyaktig estimat.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$no extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologiske faktorer';
	@override String description({required Object appLabel}) => 'Faktisk vekttap/økning påvirkes av metabolisme, hormoner, søvn, stress, hydrering og andre individuelle faktorer som ${appLabel} ikke kan måle.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$no extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vannvekt og svingninger';
	@override String get description => 'Normal daglig vekt kan variere betydelig på grunn av vannretensjon, fordøyelse og timing. Estimatet tar ikke hensyn til disse daglige endringene.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$no extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profesjonell veiledning';
	@override String get description => 'Bruk ikke dette estimatet til medisinske beslutninger. Rådfør deg alltid med helsepersonell eller en registrert ernæringsfysiolog for personlig veiledning.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$no extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Basal Metabolic Rate (BMR) er antall kalorier kroppen din forbrenner i hvile for å opprettholde grunnleggende funksjoner som pust og sirkulasjon. BMR avhenger av alder, kjønn, høyde og vekt. Høyere BMR betyr ofte at kroppen forbrenner mer kalorier i hvile, ofte på grunn av mer muskelmasse, yngre alder eller mannlig kjønn. Lavere BMR indikerer ofte mindre muskelmasse, høyere alder eller kvinnelig kjønn.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$no extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Total Daily Energy Expenditure (TDEE) er totale kalorier du forbrenner per dag, inkludert BMR pluss kalorier fra fysisk aktivitet og daglig bevegelse. TDEE avhenger av BMR og aktivitetsnivå. Høyere TDEE betyr at du forbrenner mer totalt, vanligvis fra mer aktivitet eller høyere BMR. Lavere TDEE antyder mindre daglig aktivitet eller lavere BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$no extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Daglig mål';
	@override String get description => 'Daglig mål er ditt anbefalte daglige kaloriinntak basert på TDEE og vektmål. For vekttap inntar du færre kalorier enn TDEE. For vektvedlikehold matcher du TDEE. For vektøkning inntar du mer enn TDEE. Dette hjelper deg å nå ønsket vektendring i et sunt tempo.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$no extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hvordan estimatet beregnes';
	@override String get description => 'Vi kalkulerer TDEE (basert på profilen din) og multipliserer med andelen av dagen som har gått (timer + minutter) / 24 for å estimere kalorier brukt så langt.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$no extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profesjonell veiledning';
	@override String get description => 'Bruk ikke dette estimatet til medisinske beslutninger. Rådfør deg alltid med helsepersonell eller en registrert ernæringsfysiolog for personlig veiledning.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$no extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Les totalforbrente kalorier';
	@override String get description => 'Lar appen lese dine totale forbrente kalorier fra Health Connect.';
	@override String get usage => 'Denne tillatelsen brukes for å vise din daglige kaloriforbrenning i appen, slik at du forstår total energiforbruk gjennom dagen.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$no extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Les ernæringsdata';
	@override String get description => 'Lar appen lese ernæringsdata fra Health Connect.';
	@override String get usage => 'Denne tillatelsen gjør at appen kan lese ernæringsinformasjon som kan være logget av andre apper koblet til Health Connect, og gir en helhetlig oversikt over ernæring.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$no extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$no._(TranslationsNo root) : this._root = root, super.internal(root);

	final TranslationsNo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Skriv ernæringsdata';
	@override String get description => 'Lar appen skrive ernæringsdata til Health Connect.';
	@override String get usage => 'Denne tillatelsen gjør at appen kan synkronisere dine loggede måltider til Health Connect, slik at ernæringsdataene dine blir tilgjengelige for andre helse- og treningsapper du bruker.';
}

/// The flat map containing all translations for locale <no>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsNo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Norsk',
			'flag' => '🇳🇴',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Du har sendt for mange forespørsler. Vennligst vent et øyeblikk og prøv igjen.',
			'errors.networkError' => 'Nettverksfeil. Sjekk internettforbindelsen din.',
			'errors.unknownError' => 'Noe gikk galt. Prøv igjen senere.',
			'errors.loadingProfileData' => 'Feil ved lasting av profildata',
			'errors.somethingWentWrong' => 'Noe gikk galt.',
			'errors.retry' => 'Prøv igjen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Velkommen til ${appLabel}',
			'onboarding.subtitle' => 'Din personlige ernæringsvenn drevet av AI',
			'onboarding.getStarted' => 'Kom i gang',
			'onboarding.features.foodRecognition.title' => 'Smart matgjenkjenning',
			'onboarding.features.foodRecognition.description' => 'Ta et bilde og la AI identifisere måltidet ditt',
			'onboarding.features.aiAnalysis.title' => 'AI-analyse',
			'onboarding.features.aiAnalysis.description' => 'Få øyeblikkelige næringsfakta fra beskrivelsene dine',
			'onboarding.features.healthIntegration.title' => 'Helsesynk',
			'onboarding.features.healthIntegration.description' => 'Koble til Health Connect for bedre innsikt',
			'onboarding.gender.title' => 'Hva er kjønn?',
			'onboarding.gender.description' => 'Kjønn hjelper oss å beregne din basal metabolic rate (BMR) nøyaktig.',
			'onboarding.gender.next' => 'Neste',
			'onboarding.height.title' => 'Hvor høy er du?',
			'onboarding.height.description' => 'Høyden din hjelper oss å beregne BMI og energibehov nøyaktig.',
			'onboarding.height.metric' => 'Metrisk',
			'onboarding.height.imperial' => 'Britisk-amerikansk',
			'onboarding.height.next' => 'Neste',
			'onboarding.weight.currentTitle' => 'Hva er din nåværende vekt?',
			'onboarding.weight.currentDescription' => 'Din nåværende vekt er viktig for å tilpasse dine daglige mål.',
			'onboarding.weight.targetTitle' => 'Hva er din målsatte vekt?',
			'onboarding.weight.targetDescription' => 'Å sette en målvekt hjelper oss å planlegge langsiktig for deg.',
			'onboarding.weight.metric' => 'Metrisk',
			'onboarding.weight.imperial' => 'Britisk-amerikansk',
			'onboarding.weight.next' => 'Neste',
			'onboarding.age.title' => 'Når er bursdagen din?',
			'onboarding.age.description' => 'Alderen din hjelper oss å beregne kaloriebehovet ditt nøyaktig.',
			'onboarding.age.next' => 'Neste',
			'onboarding.bmiScale.underweight' => 'Undervekt',
			'onboarding.bmiScale.healthy' => 'Sunn',
			'onboarding.bmiScale.overweight' => 'Overvekt',
			'onboarding.bmiScale.obese' => 'Fedme',
			'onboarding.bmiScale.categories.underweight' => 'Undervekt',
			'onboarding.bmiScale.categories.healthyWeight' => 'Sunn vekt',
			'onboarding.bmiScale.categories.overweight' => 'Overvekt',
			'onboarding.bmiScale.categories.obese' => 'Fedme',
			'onboarding.bmiScale.messages.underweight' => 'Vi kan hjelpe deg med å bygge en sunn plan for å nå en balansert vekt med næringstette måltider.',
			'onboarding.bmiScale.messages.healthy' => 'Flott jobb! Du er i et sunt område. Vi hjelper deg å opprettholde energi og vitalitet.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} vil gjøre reisen enklere med AI-basert sporing for å hjelpe deg nå målet på en bærekraftig måte.',
			'onboarding.bmiScale.messages.obese' => 'Vi er her for å støtte deg med personlig veiledning og bærekraftige strategier for dine helse mål.',
			'onboarding.weightGoal.title' => 'Hva er målet ditt?',
			'onboarding.weightGoal.description' => 'Velg målet som best beskriver hva du ønsker å oppnå',
			'onboarding.activityLevel.title' => 'Hvor aktiv er du?',
			'onboarding.activityLevel.description' => 'Dette hjelper oss å beregne ditt daglige kaloriebehov mer nøyaktig',
			'onboarding.healthConnect.title' => 'Koble til Health Connect',
			'onboarding.healthConnect.description' => 'Bruk forbrente kalorier i dagsmålet ditt, og del loggførte måltider med Health Connect hvis du vil.',
			'onboarding.healthConnect.overviewDescription' => 'Bruk forbrente kalorier i dagsmålet ditt, og del loggførte måltider med Health Connect hvis du vil.',
			'onboarding.healthConnect.automaticTracking.title' => 'Forbrente kalorier',
			'onboarding.healthConnect.automaticTracking.description' => 'Les dagens totale kaloriforbrenning fra Health Connect',
			'onboarding.healthConnect.caloriesBurned.title' => 'Forbrente kalorier',
			'onboarding.healthConnect.caloriesBurned.description' => 'Les dagens totale kaloriforbrenning fra Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Del loggførte måltider',
			'onboarding.healthConnect.progressInsights.description' => 'Skriv måltider du logger i Calorify, til Health Connect',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Del loggførte måltider',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Skriv måltider du logger i Calorify, til Health Connect',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Du har kontrollen',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Velg én eller begge tillatelser, og endre tilgangen når som helst',
			'onboarding.healthConnect.userControl.title' => 'Du har kontrollen',
			'onboarding.healthConnect.userControl.description' => 'Velg én eller begge tillatelser, og endre tilgangen når som helst',
			'onboarding.healthConnect.connected' => 'Health Connect tilkoblet',
			'onboarding.healthConnect.notConnected' => 'Health Connect ikke tilkoblet',
			'onboarding.healthConnect.setup' => 'Sett opp Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Hopp over for nå',
			'onboarding.healthConnect.statusConnected' => 'Health Connect er tilkoblet.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect ble koblet til!',
			'onboarding.healthConnect.statusNotConnected' => 'Velg hvilke Health Connect-funksjoner du vil aktivere.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect er delvis tilkoblet. Aktiver den gjenværende tillatelsen for å bruke begge funksjonene.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Installer eller oppdater Health Connect for å fortsette.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect støttes ikke på denne enheten.',
			'onboarding.healthConnect.installOrUpdate' => 'Installer eller oppdater',
			'onboarding.healthConnect.manageAccess' => 'Administrer tilgang',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Tillatelse nektet. Aktiver Health Connect-tillatelser i telefonens innstillinger for ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Feil ved oppsett av Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Du er ikke alene',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Forskning viser at jevn sporing er den viktigste faktoren for langsiktig suksess.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'For en ${age} år gammel ${gender} som ønsker å ${goal}, er jevn sporing den viktigste prediktoren for suksess.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} gjør det 10x enklere enn å gjøre det manuelt.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Klar til å starte?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Ta et bilde av måltidene for øyeblikkelig analyse',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Logg jevnlig for å se meningsfull fremgang',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Følg fremgangen din daglig for motivasjon',
			'onboarding.reinforcement.trackingSuccess.button' => 'La oss gå',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individ',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'en sunnere deg',
			'onboarding.reinforcement.healthProfile.title' => 'Din helseprofil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Basert på målingene dine er BMI-en din ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'La oss fullføre profilen for å tilpasse opplevelsen din.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'øke',
			'onboarding.reinforcement.healthProfile.goalLose' => 'miste',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'For å nå målet ditt vil du ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Du er på målvekten! Vi hjelper deg å vedlikeholde den.',
			'onboarding.reinforcement.healthProfile.button' => 'La oss gå',
			'onboarding.reinforcement.goalLifestyle.title' => 'Utmerket start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Du har tatt første skritt mot ${goalText}. Siden du er ${activityText}, vil ${appLabel} justere målene dine for å passe livsstilen din.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personlige kalori mål',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-drevet måltidsdeteksjon',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detaljerte makronæringsfordelinger',
			'onboarding.reinforcement.goalLifestyle.button' => 'La oss gå',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'dine mål',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiv',
			'tabs.dashboard' => 'Oversikt',
			'tabs.history' => 'Historikk',
			'home.aiSummary.title' => 'Din AI-oppsummering',
			'home.aiSummary.logMore' => 'Logg flere måltider de neste dagene for å få personlige AI-innsikter.',
			'home.aiSummary.loading' => 'Laster oppsummeringen din...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} måltider logget',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Balansescore ${score}',
			'home.aiSummary.topFoods' => 'Mest spiste matvarer',
			'home.aiSummary.trendUp' => 'Kalorier øker',
			'home.aiSummary.trendDown' => 'Kalorier synker',
			'home.aiSummary.trendSteady' => 'Kalorier stabile',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Oppdatert ${time}',
			'home.dailyGoal.title' => 'Sett ditt daglige mål',
			'home.dailyGoal.titleSet' => 'Ditt daglige mål',
			'home.dailyGoal.description' => 'Klar for å starte din velværereise? Sett ditt daglige kalori mål nedenfor for å komme i gang.',
			'home.dailyGoal.descriptionSet' => 'Kompasset er satt! Dette er ditt daglige kalori mål som vil veilede deg.',
			'home.dailyGoal.yourGoal' => 'Ditt mål',
			'home.dailyGoal.goal' => 'Mål',
			'home.dailyGoal.dailyCalories' => 'Daglige kalorier (kcal)',
			'home.dailyGoal.setGoal' => 'Sett mål',
			'home.dailyGoal.intake' => 'Inntak',
			'home.dailyGoal.burned' => 'Forbrent',
			'home.dailyGoal.weightImpact' => 'Vektpåvirkning',
			'home.dailyGoal.estLoss' => 'Estimert tap på',
			'home.dailyGoal.estGain' => 'Estimert økning på',
			'home.dailyGoal.kcal' => 'kilokalorier (kcal)',
			'home.dailySummary.title' => 'Dagsoversikt',
			'home.dailySummary.calories' => 'Kalorier',
			'home.dailySummary.carbs' => 'Karbohydrater',
			'home.dailySummary.protein' => 'Proteiner',
			'home.dailySummary.fat' => 'Fett',
			'home.dailySummary.fiber' => 'Kostfiber',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Makrodiagram',
			'home.intakeProgress.title' => 'Dagens makrofordeling',
			'home.intakeProgress.target' => 'Mål',
			'home.intakeProgress.current' => 'Nåværende',
			'home.intakeHistory.title' => '7-dagers makrohistorikk',
			'home.intakeHistory.trendTitle' => 'Dagens trend',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Topp: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Ingen historikk ennå',
			'home.intakeHistory.startLogging' => 'Begynn å logge måltider for å se dine\n7-dagers makrotrender her',
			'home.mealLog.title' => 'Loggede måltider',
			'home.mealLog.emptyMessage' => 'Ta et bilde av forrige måltid for å logge det her.',
			'home.mealLog.noMealsToday' => 'Ingen måltider registrert i dag',
			'home.mealLog.seeAllMeals' => 'Se alle måltider',
			'home.mealDescription.title' => 'Raskt tillegg med AI',
			'home.mealDescription.description' => 'Beskriv måltidet, så håndterer AI resten.',
			'home.mealDescription.hint' => 'f.eks. Til frokost hadde jeg en stor bolle havregrøt med en skivet banan og en scoop whey ...',
			'home.mealDescription.analyzeMeal' => 'Analyser måltid',
			'home.favoriteMeals.title' => 'Favorittmåltider',
			'home.favoriteMeals.description' => 'Legg raskt til et av favorittmåltidene dine.',
			'home.favoriteMeals.noFavorites' => 'Ingen favorittmåltider ennå.',
			'home.favoriteMeals.addFavoriteHint' => 'Klikk stjernen på et måltid for å merke det som favoritt.',
			'home.favoriteMeals.seeAll' => 'Se alle',
			'home.favoriteMeals.add' => 'Legg til',
			'home.mealSnap.title' => 'Ta bilde & logg måltidet',
			'home.mealSnap.description' => 'Bruk kameraet for å ta et bilde av maten for AI-analyse.',
			'home.mealSnap.openCamera' => 'Åpne kamera',
			'home.mealSnap.gallery' => 'Galleri',
			'home.mealSnap.compressingPhoto' => 'Optimaliserer bilde…',
			'home.mealSnap.uploadingPhoto' => 'Laster opp bilde…',
			'home.connectHealth.title' => 'Synk med Health Connect',
			'home.connectHealth.description' => 'Bruk forbrente kalorier i målet ditt, og del loggførte måltider',
			'home.connectHealth.install' => 'Installer eller oppdater',
			'home.connectHealth.dataUseDescription' => 'Bruk forbrente kalorier i målet ditt, og del loggførte måltider',
			'home.connectHealth.installOrUpdate' => 'Installer eller oppdater',
			'home.connectHealth.connect' => 'Koble til',
			'history.noMeals' => 'Ingen måltider registrert',
			'history.emptyMessage' => 'Ta et bilde av forrige måltid for å logge det her.',
			'history.today' => 'I dag',
			'history.yesterday' => 'I går',
			'meal.ohNo' => 'Å nei!',
			'meal.delete' => 'Slett',
			'meal.editMeal' => 'Rediger måltid',
			'meal.addMeal' => 'Legg til måltid',
			'meal.saveMeal' => 'Lagre måltid',
			'meal.save' => 'Lagre',
			'meal.mealName' => 'Måltidsnavn',
			'meal.mealNameHint' => 'f.eks. Eggerøre med toast',
			'meal.nameRequired' => 'Oppgi et måltidsnavn før du lagrer.',
			'meal.mealQuantity' => 'Mengde',
			'meal.mealQuantityHint' => 'f.eks. 1 bolle, 2 skiver',
			'meal.timeOfMeal' => 'Tidspunkt for måltidet',
			'meal.timeOfMealHint' => 'Velg tidspunktet du spiste måltidet',
			'meal.mealType' => 'Måltidstype',
			'meal.nutrition.calories' => 'Kalorier',
			'meal.nutrition.carbs' => 'Karbohydrater (g)',
			'meal.nutrition.protein' => 'Proteiner (g)',
			'meal.nutrition.fat' => 'Fett (g)',
			'meal.nutrition.fiber' => 'Kostfiber (g)',
			'meal.deleteConfirmation.title' => 'Slett måltid',
			'meal.deleteConfirmation.message' => 'Er du sikker på at du vil slette denne måltidsoppføringen?',
			'meal.deleteConfirmation.cancel' => 'Avbryt',
			'meal.deleteConfirmation.delete' => 'Slett',
			'meal.addedToLog' => 'Måltid lagt til i loggen!',
			'meal.couldNotAdd' => ({required Object error}) => 'Kunne ikke legge til måltid: ${error}',
			'meal.savedSuccessfully' => 'Måltid lagt til!',
			'meal.updatedSuccessfully' => 'Måltid oppdatert!',
			'meal.errorSaving' => ({required Object error}) => 'Feil ved lagring av måltid: ${error}',
			'meal.removedFromFavorites' => 'Fjernet fra favoritter!',
			'meal.savedAsFavorite' => 'Måltid lagret som favoritt!',
			'meal.unfavorite' => 'Fjern favoritt',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Kunne ikke oppdatere favoritt: ${error}',
			'meal.feedbackThanks' => 'Takk for tilbakemeldingen!',
			'meal.reanalysisUpdated' => 'Oppdaterte måltidsanalysen basert på din tilbakemelding.',
			'meal.failedToProcess' => ({required Object error}) => 'Kunne ikke behandle: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Kunne ikke behandle bildet: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Feil ved komprimering av bilde: ${error}',
			'meal.failedToSave' => 'Kunne ikke lagre data. Prøv igjen.',
			'meal.skip' => 'Hopp over',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Spørsmål ${current} av ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Ingen spørsmål tilgjengelig',
			'meal.questionFlow.next' => 'Neste',
			'meal.questionFlow.continueLabel' => 'Fortsett',
			'meal.analysis.title' => 'Analyserer måltidet ditt',
			'meal.analysis.stepStarted' => 'Kommer i gang…',
			'meal.analysis.stepDecomposition' => 'Forstår måltidet ditt…',
			'meal.analysis.stepIngredients' => 'Matcher ingredienser med næringsdata…',
			'meal.analysis.stepUncertainty' => 'Sjekker sikkerhet…',
			'meal.analysis.stepMealTypeQuestion' => 'Nesten ferdig…',
			'meal.analysis.stepResult' => 'Ferdigstiller resultatet…',
			'meal.analysis.stepError' => 'Noe gikk galt',
			'meal.analysis.stepDefault' => 'Analyserer måltidet ditt…',
			'meal.analysis.progressUnderstand' => 'Forstår måltidet ditt',
			'meal.analysis.progressMatch' => 'Slår opp ingrediensnæring',
			'meal.analysis.progressCheck' => 'Sjekker porsjoner og sikkerhet',
			'meal.analysis.progressMealType' => 'Velger måltidstype',
			'meal.analysis.progressFinish' => 'Beregner kalorier og makroer',
			'meal.analysis.detectedIngredientHeading' => 'Ingredienser vi ser',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} til',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingredienser oppdaget',
			'meal.analysis.ingredientsPending' => 'Skanner ingredienser…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '«${text}»',
			'meal.analysis.offlineTip0' => 'Tips: Konsistens slår perfeksjon—jevn logging avdekker mønstrene som betyr noe.',
			'meal.analysis.offlineTip1' => 'Tips: Naturlig lys og et bilde ovenfra hjelper med porsjonsnøyaktighet.',
			'meal.analysis.offlineTip2' => 'Tips: Nevn drikker, sauser og matolje—de tilfører ofte kalorier folk glemmer.',
			'meal.analysis.offlineTip3' => 'Tips: En kort porsjonsbeskrivelse (1 bolle, stor kaffe) gjør estimatene mye mer presise.',
			'meal.analysis.offlineTip4' => 'Tips: Å logge etter måltidet bygger fortsatt vanen; perfeksjon er valgfritt.',
			'meal.analysis.offlineTip5' => 'Tips: Si hvordan maten er tilberedt når det påvirker kalorier mye (stekt vs bakt).',
			'meal.localInference.reviewTitle' => 'Se over gjenkjente ingredienser',
			'meal.localInference.reviewSubtitle' => 'Dette ble tolket på enheten din. Korriger navn eller porsjoner før næringsinnholdet beregnes.',
			'meal.localInference.mealName' => 'Måltidnavn',
			'meal.localInference.ingredient' => 'Ingrediens',
			'meal.localInference.grams' => 'Estimert antall gram',
			'meal.localInference.removeIngredient' => 'Fjern ingrediens',
			'meal.localInference.continueLabel' => 'Fortsett',
			'meal.localInference.invalidProposal' => 'Legg til minst én ingrediens og bruk en positiv mengde gram.',
			'meal.localInference.localUnavailable' => 'Analyse på enheten er utilgjengelig akkurat nå.',
			'meal.feedback.title' => 'Hva ser feil ut?',
			'meal.feedback.subtitle' => 'Hjelp oss forbedre analysen ved å velge ett eller flere problemer.',
			'meal.feedback.tellUsMore' => 'Fortell oss mer',
			'meal.feedback.describeIncorrect' => 'Beskriv hva som var feil',
			'meal.feedback.submit' => 'Send inn',
			'meal.feedback.issueFoodIdentification' => 'Matidentifikasjon',
			'meal.feedback.issuePortionSize' => 'Porsjonsstørrelse',
			'meal.feedback.issueCalorieDistribution' => 'Kalorifordeling',
			'meal.feedback.issueMacrosWrong' => 'Makroer feil',
			'meal.feedback.issueMissingItems' => 'Mangler elementer',
			'meal.feedback.issueExtraItems' => 'Ekstra elementer',
			'meal.feedback.issueOther' => 'Annet',
			'favorites.title' => 'Favoritter',
			'favorites.empty' => 'Ingen favorittmåltider ennå.',
			'favorites.searchPlaceholder' => 'Søk i favorittmåltider',
			'favorites.searchEmptyTitle' => 'Ingen favoritter stemmer med søket',
			'favorites.searchEmptySubtitle' => 'Prøv et annet måltidsnavn, mengde eller måltidstype.',
			'favorites.sortLabel' => 'Sorter favoritter',
			'favorites.undo' => 'Angre',
			'favorites.removed' => ({required Object name}) => 'Fjernet ${name} fra favoritter',
			'favorites.sortOptions.recent' => 'Nylige',
			'favorites.sortOptions.calories' => 'Kalorier',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Ingen profildata funnet',
			'profile.yourProfile' => 'Din profil',
			'profile.viewAndManage' => 'Vis og administrer helseinformasjonen din',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'BASISINFORMASJON',
			'profile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'profile.sections.calculatedValues' => 'BEREGNEDE VERDIER',
			'profile.gender' => 'Kjønn',
			'profile.height' => 'Høyde',
			'profile.weight' => 'Vekt',
			'profile.age' => 'Alder',
			'profile.weightGoal' => 'Vektmål',
			'profile.targetWeight' => 'Målvekt',
			'profile.activityLevel' => 'Aktivitetsnivå',
			'profile.healthMetrics' => 'Helsemålinger',
			'profile.notSet' => 'Ikke satt',
			'profile.years' => 'år',
			'profile.updatedSuccessfully' => 'Profil oppdatert!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Daglig mål',
			'profile.calculatedValues.calPerDay' => 'cal/dag',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Helsescore',
			'healthScore.whyThisScore' => 'Hvorfor denne scoren?',
			'healthScore.note' => 'Denne scoren er et AI-estimat basert på identifiserte ingredienser og næringstetthet. Rådfør deg alltid med en fagperson for personlig kostholdsveiledning.',
			'healthScore.unhealthy' => 'Usunn',
			'healthScore.healthy' => 'Sunn',
			'healthScore.neutral' => 'Nøytral',
			'editProfile.title' => 'Rediger profil',
			'editProfile.sections.personalInformation' => 'PERSONLIG INFORMASJON',
			'editProfile.sections.physicalMeasurements' => 'FYSISKE MÅL',
			'editProfile.sections.goalsAndActivity' => 'MÅL & AKTIVITET',
			'editProfile.gender' => 'Kjønn',
			'editProfile.dateOfBirth' => 'Fødselsdato',
			'editProfile.height' => 'Høyde',
			'editProfile.weight' => 'Vekt',
			'editProfile.weightGoal' => 'Vektmål',
			'editProfile.activityLevel' => 'Aktivitetsnivå',
			'editProfile.metric' => 'Metrisk',
			'editProfile.imperial' => 'Britisk-amerikansk',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'pund (lb)',
			'editProfile.metricCm' => 'Metrisk (cm)',
			'editProfile.imperialFtIn' => 'Britisk-amerikansk (ft/in)',
			'editProfile.metricKg' => 'Metrisk (kg)',
			'editProfile.imperialLbs' => 'Britisk-amerikansk (lbs)',
			'editProfile.genders.male' => 'Mann',
			'editProfile.genders.female' => 'Kvinne',
			'editProfile.genders.other' => 'Annet',
			'editProfile.weightGoals.loseWeight.name' => 'Gå ned i vekt',
			'editProfile.weightGoals.loseWeight.description' => 'Skap kalorimangel for å gå ned i vekt',
			'editProfile.weightGoals.maintainWeight.name' => 'Beholde vekt',
			'editProfile.weightGoals.maintainWeight.description' => 'Oppretthold din nåværende vekt',
			'editProfile.weightGoals.gainWeight.name' => 'Gå opp i vekt',
			'editProfile.weightGoals.gainWeight.description' => 'Skap kalorioverskudd for å gå opp i vekt',
			'editProfile.activityLevels.sedentary.name' => 'Svært lite aktivitet',
			'editProfile.activityLevels.sedentary.description' => 'Lite eller ingen trening',
			'editProfile.activityLevels.lightlyActive.name' => 'Lett aktiv',
			'editProfile.activityLevels.lightlyActive.description' => 'Lett trening 1–3 dager/uke',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderat aktiv',
			'editProfile.activityLevels.moderatelyActive.description' => 'Moderat trening 3–5 dager/uke',
			'editProfile.activityLevels.veryActive.name' => 'Veldig aktiv',
			'editProfile.activityLevels.veryActive.description' => 'Hard trening 6–7 dager/uke',
			'editProfile.activityLevels.extremelyActive.name' => 'Ekstremt aktiv',
			'editProfile.activityLevels.extremelyActive.description' => 'Veldig hard trening eller fysisk krevende jobb',
			'settings.title' => 'Innstillinger',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALISERING',
			'settings.sections.notifications' => 'MELDINGER',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.localInference' => 'ANALYSE PÅ ENHETEN',
			'settings.sections.supportAndLegal' => 'SUPPORT & JURIDISK',
			'settings.sections.about' => 'OM',
			'settings.sections.dangerZone' => 'FARLIG SONE',
			'settings.sections.developer' => 'UTVIKLER',
			'settings.editProfile.title' => 'Rediger profil',
			'settings.editProfile.subtitle' => 'Oppdater din personlige informasjon',
			'settings.language.title' => 'Språk',
			'settings.language.subtitle' => 'Velg foretrukket språk',
			'settings.language.searchHint' => 'Søk i språk...',
			'settings.language.noResults' => 'Ingen resultater funnet',
			'settings.heightUnit.title' => 'Høydeenhet',
			'settings.weightUnit.title' => 'Vektenhet',
			'settings.mealReminders.title' => 'Måltidspåminnelser',
			'settings.mealReminders.subtitle' => 'Hold deg på sporet med vennlige varsler',
			'settings.localInference.title' => 'Måltidsanalyse på enheten',
			'settings.localInference.subtitle' => 'Tolk støttede måltider med Gemini Nano før næringsinnholdet beregnes',
			'settings.localInference.unavailable' => 'Ikke tilgjengelig på denne enheten',
			'settings.localInference.rolloutUnavailable' => 'Støttet maskinvare funnet, men denne funksjonen er ikke aktivert for denne app-versjonen',
			'settings.localInference.modelSetup' => 'Gemini Nano må fullføre nedlastingen før dette kan aktiveres',
			'settings.localInference.useLocalTitle' => 'Bruk analyse på enheten',
			'settings.localInference.useLocalSubtitle' => 'Valgfritt og avslått som standard. Resultatene kan være mindre pålitelige for komplekse måltider.',
			'settings.localInference.disclosureTitle' => 'Før du aktiverer analyse på enheten',
			'settings.localInference.disclosureBody' => 'Gemini Nano kan identifisere ingredienser og estimere porsjoner på støttede Android-enheter. Ditt gjennomgåtte forslag til ingredienser sendes til Calorify for USDA-næringsgrunnlag og beregning.',
			'settings.localInference.disclosureLimit1' => 'Komplekse retter, skjulte ingredienser og porsjonsstørrelser kan bli identifisert feil.',
			'settings.localInference.disclosureLimit2' => 'Modellen kan være utilgjengelig under nedlasting, når den er opptatt, kjører i bakgrunnen eller er begrenset av enheten.',
			'settings.localInference.disclosureLimit3' => 'Hvis lokal tolkning ikke kan fullføres, sender denne betaen automatisk din opprinnelige måltidsbeskrivelse til Calorify for skyanalyse.',
			'settings.localInference.acknowledgement' => 'Jeg forstår at jeg bør se over gjenkjente ingredienser og porsjoner.',
			'settings.localInference.enable' => 'Bekreft og aktiver',
			'settings.localInference.cancel' => 'Avbryt',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Lyst',
			'settings.theme.dark' => 'Mørkt',
			'settings.theme.system' => 'Systemstandard',
			'settings.sendFeedback.title' => 'Send tilbakemelding',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Hjelp oss forbedre ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Tilbakemelding for ${appLabel}-appen',
			'settings.sendFeedback.emailBodyPrefix' => 'Vennligst gi din tilbakemelding nedenfor:',
			'settings.sendFeedback.appVersion' => 'Appversjon',
			'settings.sendFeedback.device' => 'Enhet',
			'settings.sendFeedback.osVersion' => 'OS-versjon',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Eksporter måltidshistorikk',
			'settings.exportMealHistory.subtitle' => 'Del en CSV av dine loggede måltider',
			'settings.exportMealHistory.shareText' => 'Din Calorify-måltidshistorikk eksport',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Kunne ikke eksportere måltidshistorikk: ${error}',
			'settings.clearAllData.title' => 'Slett alle data',
			'settings.clearAllData.subtitle' => 'Slett Calorify-data som er lagret på denne enheten',
			'settings.clearAllData.localOnlySubtitle' => 'Slett Calorify-data som er lagret på denne enheten',
			'settings.clearAllData.confirmationTitle' => 'Slette alle data?',
			'settings.clearAllData.confirmationMessage' => 'Dette sletter loggførte måltider, favoritter og profilinnstillinger permanent fra denne enheten. Måltider som allerede er delt med Health Connect, og Health Connect-tilgang administreres separat under Innstillinger > Health Connect.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Dette sletter loggførte måltider, favoritter og profilinnstillinger permanent fra denne enheten. Måltider som allerede er delt med Health Connect, og Health Connect-tilgang administreres separat under Innstillinger > Health Connect.',
			'settings.clearAllData.cancel' => 'Avbryt',
			'settings.clearAllData.clearEverything' => 'Slett alt',
			'settings.debugOptions.title' => 'Feilsøkingsvalg',
			'settings.developerModeEnabled' => 'Utviklermodus aktivert!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Se og administrer tillatelser',
			'settings.healthConnect.unavailable.title' => 'Health Connect utilgjengelig',
			'settings.healthConnect.unavailable.description' => 'Health Connect støttes ikke på denne enheten.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect støttes ikke på denne enheten.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect krever oppmerksomhet',
			'settings.healthConnect.updateRequired.description' => 'Installer eller oppdater Health Connect før du administrerer tilgang.',
			'settings.healthConnect.updateRequired.action' => 'Installer eller oppdater',
			'settings.healthConnect.permissions.title' => 'Tillatelser',
			'settings.healthConnect.permissions.description' => 'Følgende tillatelser blir bedt om for å gi Health Connect-integrasjon:',
			'settings.healthConnect.permissions.granted' => 'Gitt',
			'settings.healthConnect.permissions.notGranted' => 'Ikke gitt',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Les totalforbrente kalorier',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Lar appen lese dine totale forbrente kalorier fra Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Denne tillatelsen brukes for å vise din daglige kaloriforbrenning i appen, slik at du forstår total energiforbruk gjennom dagen.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Les ernæringsdata',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Lar appen lese ernæringsdata fra Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Denne tillatelsen gjør at appen kan lese ernæringsinformasjon som kan være logget av andre apper koblet til Health Connect, og gir en helhetlig oversikt over ernæring.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Skriv ernæringsdata',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Lar appen skrive ernæringsdata til Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Denne tillatelsen gjør at appen kan synkronisere dine loggede måltider til Health Connect, slik at ernæringsdataene dine blir tilgjengelige for andre helse- og treningsapper du bruker.',
			'settings.healthConnect.managePermissions' => 'Administrer tillatelser',
			'settings.healthConnect.openSettings' => 'Åpne Health Connect-innstillinger',
			'settings.healthConnect.disconnect' => 'Koble fra Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Koble fra Health Connect?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify mister tilgangen til Health Connect. Data som allerede er skrevet der, blir ikke slettet.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Koble fra',
			'settings.healthConnect.deleteSyncedMeals' => 'Slett Calorify-måltider fra Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Slette synkroniserte måltider?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Vil du slette måltider som er synkronisert av denne versjonen av Calorify, fra Health Connect? Den lokale måltidsloggen endres ikke. Eldre Calorify-oppføringer må kanskje fortsatt fjernes via Administrer data i Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Slett synkroniserte måltider',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Calorify-måltider ble slettet fra Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Synkroniserte måltider kunne ikke slettes. Prøv igjen.',
			'settings.healthConnect.connectionPartial' => 'Noen Health Connect-funksjoner er aktivert.',
			'settings.healthConnect.connectionComplete' => 'Begge Health Connect-funksjonene er aktivert.',
			'settings.healthConnect.actionFailed' => 'Health Connect kunne ikke åpnes. Prøv igjen.',
			'settings.healthConnect.requestPermissions' => 'Be om tillatelser',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Tillatelsesforespørselen ble avbrutt eller mislyktes. Prøv igjen eller gi tillatelser manuelt i Health Connect-innstillingene.',
			'settings.healthConnect.permissionRequestFailed' => 'Kunne ikke be om tillatelser. Prøv igjen eller gi tillatelser manuelt i Health Connect-innstillingene.',
			'settings.healthConnect.requestingPermissions' => 'Ber om...',
			'settings.about.title' => 'Om',
			'settings.about.tagline' => 'Rask, gratis og personvernfokusert kalorioversikt',
			'settings.about.ourStory.title' => 'Vår historie',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} ble født ut fra en enkel frustrasjon: de fleste kaloritrapingsapper er enten for kompliserte, krever konstant manuelt innspill, tar høye abonnementsavgifter, eller går på kompromiss med personvernet.\n\nSom en solo-utvikler ønsket jeg å lage noe enklere og mer rettferdig — en app som bruker AI for å redusere innsatsen, forblir rask og gratis å bruke, og behandler helsedataene dine med respekt.\n\n${appLabel} er appen jeg skulle ønske fantes: ingen kontoer, ingen sporing, ingen annonser — bare klare, praktiske innsikter og dine helse mål.',
			'settings.about.privacy.title' => 'Ditt personvern betyr noe',
			'settings.about.privacy.description' => 'Personvern er ikke en ettertanke — det er et designprinsipp. Her er hva det betyr i praksis:',
			'settings.about.privacy.noAccounts' => 'Ingen kontoer nødvendig\nBruk appen med en gang. Ingen registrering, ingen identiteter.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Begrenset analyse og diagnostikk\n${appLabel} bruker grunnleggende apphendelser og krasjdiagnostikk for å forbedre påliteligheten. Verdier i helseoppføringer brukes ikke til annonsering eller salg.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Begrenset analyse og diagnostikk\n${appLabel} bruker grunnleggende apphendelser og krasjdiagnostikk for å forbedre påliteligheten. Verdier i helseoppføringer brukes ikke til annonsering eller salg.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Annonsefri etter design\n${appLabel} er bygget for å fungere uten annonser eller datadrevet inntektsmodell.',
			'settings.about.privacy.noDataSelling' => 'Ingen videresalg av data\nDine helsedata blir aldri solgt eller delt med tredjepart.',
			'settings.about.privacy.localStorage' => 'Lokal-først lagring\nDine data blir værende på enheten din.',
			'settings.about.privacy.privacyPolicy' => 'Personvernerklæring',
			'settings.about.developer.title' => 'Bygget av en solo-utvikler',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} er bygget og vedlikeholdt av én solo-utvikler som fokuserer på å lage rolig, personvernvennlig helseprogramvare.\n\nTilbakemeldinger leses personlig og former retningen for appen.',
			'settings.about.developer.website' => 'Nettsted',
			'settings.about.developer.email' => 'E-post',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Liker du ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Dine tilbakemeldinger gjør ${appLabel} bedre for alle.',
			'settings.about.feedback.rateApp' => 'Vurder i Play Store',
			'settings.about.feedback.sendFeedback' => 'Send tilbakemelding',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify versjon ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Bygg ${buildNumber}',
			'reminders.title' => 'Hold deg på sporet med påminnelser',
			'reminders.description' => 'Få vennlige påminnelser om å logge måltidene dine og være konsekvent med ernæringsmålene dine',
			'reminders.notificationsEnabled' => 'Varsler aktivert',
			'reminders.notificationsDisabled' => 'Varsler deaktivert',
			'reminders.enabledSubtitle' => 'Du vil motta måltidspåminnelser',
			'reminders.disabledSubtitle' => 'Aktiver varsler for å få måltidspåminnelser',
			'reminders.mealReminders' => 'Måltidspåminnelser',
			'reminders.breakfast' => 'Frokost',
			'reminders.lunch' => 'Lunsj',
			'reminders.dinner' => 'Middag',
			'reminders.snack' => 'Mellommåltid',
			'reminders.unknown' => 'Ukjent',
			'reminders.change' => 'Endre',
			'reminders.enableNotifications' => 'Aktiver varsler',
			'reminders.skipForNow' => 'Hopp over for nå',
			'reminders.saveChanges' => 'Lagre endringer',
			'reminders.enabledSuccessfully' => 'Varsler aktivert!',
			'reminders.permissionDenied' => 'Tillatelse til varsler nektet',
			'reminders.errorEnabling' => ({required Object error}) => 'Feil ved aktivering av varsler: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Feil ved fullføring av oppsett: ${error}',
			'notifications.breakfast.title' => 'Frokosttid! 🍳',
			'notifications.breakfast.body' => 'Ikke glem å logge frokosten din',
			'notifications.lunch.title' => 'Lunsjtid! 🥗',
			'notifications.lunch.body' => 'Det er på tide å logge lunsjen din',
			'notifications.dinner.title' => 'Middagstid! 🍽️',
			'notifications.dinner.body' => 'Ikke glem å logge middagen din',
			'notifications.snack.title' => 'Snacketid! 🍎',
			'notifications.snack.body' => 'Tid for en sunn snack',
			'notifications.test.title' => 'Testvarsel',
			'login.title' => 'Logg inn',
			'login.signInWithGoogle' => 'Logg inn med Google',
			'login.signInFailed' => 'Google-pålogging mislyktes eller ble avbrutt.',
			'disclaimer.pleaseNote' => 'Vennligst merk',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} gir estimerte næringsverdier. Nøyaktigheten avhenger av innspillene dine og variasjon i mat. Bruk som veiledning, ikke som en definitiv kilde. Rådfør deg med en fagperson for personlig kostholdsråd.',
			'disclaimer.snap.portionSize.title' => 'Porsjonsstørrelse',
			'disclaimer.snap.portionSize.description' => 'Nøyaktigheten av estimatene avhenger i stor grad av din korrekte vurdering av porsjonsstørrelsen.',
			'disclaimer.snap.preparationMethods.title' => 'Tilberedningsmetoder',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Tilberedningsmetoder kan endre næringsinnholdet betydelig. ${appLabel}s estimater tar ikke alltid høyde for disse variasjonene.',
			'disclaimer.snap.ingredients.title' => 'Ingredienser',
			_ => null,
		} ?? switch (path) {
			'disclaimer.snap.ingredients.description' => 'Komplekse retter med mange skjulte ingredienser kan gi mindre nøyaktige estimater.',
			'disclaimer.snap.databaseLimitations.title' => 'Databasebegrensninger',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}s matdatabase er omfattende, men kan ikke inneholde hvert enkelt matvarealternativ eller variasjon.',
			'disclaimer.weightEstimate.title' => 'Om vektestimatet',
			'disclaimer.weightEstimate.description' => 'Den projiserte vektendringen er et teoretisk estimat basert på det enkle kalori inn vs. kalori ut-modellen. Det er ment som motivasjonsveiledning, ikke en prediksjon av din faktiske vekt.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kalorinøyaktighet',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Dette estimatet er så nøyaktig som registreringen av ditt kaloriinntak og -forbruk. Unøyaktig logging gir et unøyaktig estimat.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologiske faktorer',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Faktisk vekttap/økning påvirkes av metabolisme, hormoner, søvn, stress, hydrering og andre individuelle faktorer som ${appLabel} ikke kan måle.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Vannvekt og svingninger',
			'disclaimer.weightEstimate.waterWeight.description' => 'Normal daglig vekt kan variere betydelig på grunn av vannretensjon, fordøyelse og timing. Estimatet tar ikke hensyn til disse daglige endringene.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Profesjonell veiledning',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Bruk ikke dette estimatet til medisinske beslutninger. Rådfør deg alltid med helsepersonell eller en registrert ernæringsfysiolog for personlig veiledning.',
			'disclaimer.healthMetrics.description' => 'Disse målingene hjelper deg å forstå kroppens energibehov og veileder ernæringsmålene dine.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Basal Metabolic Rate (BMR) er antall kalorier kroppen din forbrenner i hvile for å opprettholde grunnleggende funksjoner som pust og sirkulasjon. BMR avhenger av alder, kjønn, høyde og vekt. Høyere BMR betyr ofte at kroppen forbrenner mer kalorier i hvile, ofte på grunn av mer muskelmasse, yngre alder eller mannlig kjønn. Lavere BMR indikerer ofte mindre muskelmasse, høyere alder eller kvinnelig kjønn.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Total Daily Energy Expenditure (TDEE) er totale kalorier du forbrenner per dag, inkludert BMR pluss kalorier fra fysisk aktivitet og daglig bevegelse. TDEE avhenger av BMR og aktivitetsnivå. Høyere TDEE betyr at du forbrenner mer totalt, vanligvis fra mer aktivitet eller høyere BMR. Lavere TDEE antyder mindre daglig aktivitet eller lavere BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Daglig mål',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Daglig mål er ditt anbefalte daglige kaloriinntak basert på TDEE og vektmål. For vekttap inntar du færre kalorier enn TDEE. For vektvedlikehold matcher du TDEE. For vektøkning inntar du mer enn TDEE. Dette hjelper deg å nå ønsket vektendring i et sunt tempo.',
			'disclaimer.calorieExpenditure.title' => 'Estimert kalori-forbruk',
			'disclaimer.calorieExpenditure.description' => 'Når Health Connect-data ikke er tilgjengelig, estimerer vi dagens forbruk ved å bruke din BMR og aktivitetsnivå (TDEE), skalert etter hvor mye av dagen som har gått.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Hvordan estimatet beregnes',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Vi kalkulerer TDEE (basert på profilen din) og multipliserer med andelen av dagen som har gått (timer + minutter) / 24 for å estimere kalorier brukt så langt.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Profesjonell veiledning',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Bruk ikke dette estimatet til medisinske beslutninger. Rådfør deg alltid med helsepersonell eller en registrert ernæringsfysiolog for personlig veiledning.',
			'localNutritionPhase4.portionSmaller' => 'Mindre',
			'localNutritionPhase4.portionEstimated' => 'Anslått',
			'localNutritionPhase4.portionLarger' => 'Større',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Hvilken porsjon passet best for ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Hvilket måltid var dette?',
			'localNutritionPhase4.localNutritionTip' => 'Beregnet fra verifiserte lokale ernæringsdata.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Last ned ernæringsdata',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Bruk verifiserte USDA-rader og deterministisk beregning på denne enheten når alle ingrediensene er dekket.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Lokale ernæringsdata er ikke tilgjengelige for denne appversjonen.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Ingen verifisert ernæringspakke er lastet ned.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Laster ned og verifiserer ernæringsdata…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Pakke ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} hurtigbufrede USDA-rader · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Se etter oppdatering',
			'localNutritionPhase4.offlineNutritionClear' => 'Tøm lokale ernæringsdata',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Tøm lokale ernæringsdata?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Dette fjerner den nedlastede USDA-pakken og oppslagshurtigbufferen. Loggførte måltider beholder det nøyaktige øyeblikksbildet av ernæringsdata som ble brukt da de ble lagret.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Tøm data',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Kunne ikke laste ned og verifisere lokale ernæringsdata: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Lokale ernæringsdata er tømt',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'Tilbake',
			'watch.common.cancel' => 'Avbryt',
			'watch.common.delete' => 'Slett',
			'watch.common.retry' => 'Prøv igjen',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Næringsstoff',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} grams',
			'watch.nutrition.protein' => 'Protein',
			'watch.nutrition.carbs' => 'Karbohydrater',
			'watch.nutrition.fat' => 'Fett',
			'watch.nutrition.fiber' => 'Fiber',
			'watch.sync.syncWithPhone' => 'Synkroniser med telefon',
			'watch.sync.syncing' => 'Synkroniserer…',
			'watch.sync.synced' => 'Synkronisert',
			'watch.sync.syncedJustNow' => 'Synkronisert nå',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Synkronisert ${minutes}m siden',
			'watch.sync.failed' => 'Synkronisering mislyktes',
			'watch.sync.phoneDisconnected' => 'Telefon koblet fra',
			'watch.sync.tapToSync' => 'Trykk for å synkronisere',
			'watch.sync.refreshFailed' => 'Kunne ikke oppdatere. Sjekk telefonen din.',
			'watch.sync.openPhone' => 'Åpne Calorify på telefonen din, og trykk Oppdater.',
			'watch.home.today' => 'I dag',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} kalorier inntatt av ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} over målet',
			'watch.home.remaining' => ({required Object calories}) => '${calories} igjen',
			'watch.home.left' => ({required Object calories}) => '${calories} igjen',
			'watch.home.goal' => ({required Object calories}) => 'Mål: ${calories} kcal',
			'watch.home.logMeal' => 'Logg et måltid',
			'watch.home.todayMeals' => 'Dagens måltider',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Dagens måltider, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Se ${count} til',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} flere måltider, trykk for å vise alle',
			'watch.home.noMeals' => 'Ingen måltider registrert',
			'watch.home.noMealsSemantics' => 'Ingen måltider registrert i dag',
			'watch.home.tapLog' => 'Trykk Logg for å starte',
			'watch.home.removedFromQueue' => 'Måltid fjernet fra offline-køen.',
			'watch.home.removedOffline' => 'Måltidet ble fjernet mens du var frakoblet. Det synkroniseres når telefonen kobler til igjen.',
			'watch.home.deleteFailed' => 'Kunne ikke slette måltidet',
			'watch.history.title' => 'Dagens måltider',
			'watch.history.refresh' => 'Oppdater måltider',
			'watch.history.loadFailed' => 'Kunne ikke laste måltider',
			'watch.history.syncFailed' => 'Kunne ikke synkronisere',
			'watch.history.emptyTitle' => 'Ingen måltider ennå',
			'watch.history.emptyMessage' => 'Registrer et måltid fra Hjem for å se det her.',
			'watch.favorites.title' => 'Favoritter',
			'watch.favorites.refresh' => 'Oppdater favoritter',
			'watch.favorites.loadFailed' => 'Kunne ikke laste favoritter',
			'watch.favorites.syncFailed' => 'Kunne ikke synkronisere',
			'watch.favorites.emptyTitle' => 'Ingen favoritter ennå',
			'watch.favorites.emptyMessage' => 'Marker måltider som favoritter i telefonappen for å logge dem med ett trykk her.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} kalorier. Trykk for å logge.',
			'watch.favorites.logged' => ({required Object name}) => '${name} logget!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} lagret mens du var frakoblet. Det synkroniseres når telefonen kobler til igjen.',
			'watch.favorites.saveFailed' => 'Kunne ikke lagre måltidet. Prøv igjen.',
			'watch.favorites.log' => 'Logg',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kalorier, logget kl. ${time}.',
			'watch.meal.longPressDelete' => 'Hold nede for å slette.',
			'watch.meal.deleteTitle' => 'Slette måltid?',
			'watch.voice.title' => 'Taleregistrering',
			'watch.voice.processing' => 'Sjekker måltidet ditt…',
			'watch.voice.processingDescription' => 'Beregner porsjoner og næringsinnhold',
			'watch.voice.listening' => 'Lytter',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Stopp opptak',
			'watch.voice.start' => 'Trykk for å starte opptak',
			'watch.voice.starting' => 'Starter mikrofon…',
			'watch.voice.prompt' => 'Trykk, og beskriv deretter måltidet ditt',
			'watch.voice.tapToRetry' => 'Trykk for å prøve igjen',
			'watch.voice.example' => 'Prøv “2 rotis med dal”',
			'watch.voice.unavailable' => 'Taleinndata er ikke tilgjengelig. Sjekk mikrofon-tillatelse i klokkens innstillinger.',
			'watch.voice.didNotStart' => 'Mikrofonen startet ikke. Trykk for å prøve igjen.',
			'watch.voice.startFailed' => 'Kunne ikke starte opptak. Sjekk mikrofontillatelser.',
			'watch.voice.allowMicrophone' => 'Gi tilgang til mikrofonen for å registrere måltider med stemme.',
			'watch.voice.needsConnection' => 'Talegjenkjenning trenger en tilkobling. Trykk for å prøve igjen.',
			'watch.voice.microphoneUnavailable' => 'Mikrofonen er ikke tilgjengelig. Trykk for å prøve igjen.',
			'watch.voice.microphoneBusy' => 'Mikrofonen er opptatt. Vent et øyeblikk og prøv igjen.',
			'watch.voice.languageUnsupported' => 'Taleinndata støtter ikke klokkens språk.',
			'watch.voice.temporarilyBusy' => 'Taleinndata er midlertidig opptatt. Vent et øyeblikk og prøv igjen.',
			'watch.voice.notRecognized' => 'Det hørte jeg ikke. Trykk på mikrofonen og prøv igjen.',
			'watch.voice.noSpeech' => 'Ingen tale registrert. Trykk på mikrofonen for å prøve igjen.',
			'watch.voice.analysisFailed' => 'Analyse mislyktes. Prøv igjen.',
			'watch.voice.mealNotIdentified' => 'Kunne ikke identifisere måltidet. Prøv å beskrive det på en annen måte.',
			'watch.result.title' => 'Måltidsdetaljer',
			'watch.result.savedOffline' => 'Lagret frakoblet',
			'watch.result.logged' => 'Logget!',
			'watch.result.mealFound' => 'Måltid funnet',
			'watch.result.estimatedEnergy' => 'Estimert energi',
			'watch.result.logMeal' => 'Logg måltid',
			'watch.result.logging' => 'Logger…',
			'watch.result.logAnother' => 'Logg et til',
			'watch.result.goingBack' => 'Går tilbake…',
			'watch.result.savedOfflineMessage' => 'Måltidet er lagret frakoblet. Det synkroniseres når telefonen kobler til igjen.',
			'watch.result.saveFailed' => 'Kunne ikke lagre måltidet. Prøv igjen.',
			'common.betaTag' => 'Beta',
			'common.close' => 'Lukk',
			'common.kContinue' => 'Fortsett',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Liker du ${appLabel}?',
			'feedbackRating.yes' => 'Ja, jeg liker den',
			'feedbackRating.no' => 'Ikke så mye',
			'feedbackRating.rateStepHeading' => 'Vurder i Play Store',
			'feedbackRating.emailStepHeading' => 'Send tilbakemelding via e-post',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'En rask vurdering hjelper andre å finne ${appLabel} og støtter videre utvikling. Vil du bruke et øyeblikk på å legge igjen en vurdering?',
			'feedbackRating.shareFeedbackViaEmail' => 'Din tilbakemelding former hva som kommer neste — vi leser hver melding. Vil du dele tankene dine via e-post?',
			'feedbackRating.rateCta' => 'Vurder i Play Store',
			'feedbackRating.maybeLater' => 'Kanskje senere',
			'feedbackRating.sendFeedback' => 'Send tilbakemelding',
			'feedbackRating.noThanks' => 'Nei takk',
			'feedbackRating.aboutUsDescription' => 'Lagett med omtanke av et lite team. Vi fokuserer på personvern, enkelhet og å hjelpe deg bygge bedre spisevaner.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Nysgjerrig på hvem som står bak ${appLabel}? Se ',
			'feedbackRating.aboutUsLinkLabel' => 'Om oss',
			'feedbackRating.thankYouMessage' => 'Takk! Vi spør igjen senere.',
			'health.syncFailed' => 'Kunne ikke synkronisere med Health Connect',
			'health.mealSynced' => 'Måltid synkronisert med Health Connect',
			_ => null,
		};
	}
}
