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
class TranslationsNl extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsNl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.nl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <nl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsNl _root = this; // ignore: unused_field

	@override 
	TranslationsNl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsNl(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Nederlands';
	@override String get flag => '🇳🇱';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$nl errors = _Translations$errors$nl._(_root);
	@override late final _Translations$onboarding$nl onboarding = _Translations$onboarding$nl._(_root);
	@override late final _Translations$tabs$nl tabs = _Translations$tabs$nl._(_root);
	@override late final _Translations$home$nl home = _Translations$home$nl._(_root);
	@override late final _Translations$history$nl history = _Translations$history$nl._(_root);
	@override late final _Translations$meal$nl meal = _Translations$meal$nl._(_root);
	@override late final _Translations$favorites$nl favorites = _Translations$favorites$nl._(_root);
	@override late final _Translations$profile$nl profile = _Translations$profile$nl._(_root);
	@override late final _Translations$healthScore$nl healthScore = _Translations$healthScore$nl._(_root);
	@override late final _Translations$editProfile$nl editProfile = _Translations$editProfile$nl._(_root);
	@override late final _Translations$settings$nl settings = _Translations$settings$nl._(_root);
	@override late final _Translations$reminders$nl reminders = _Translations$reminders$nl._(_root);
	@override late final _Translations$notifications$nl notifications = _Translations$notifications$nl._(_root);
	@override late final _Translations$login$nl login = _Translations$login$nl._(_root);
	@override late final _Translations$disclaimer$nl disclaimer = _Translations$disclaimer$nl._(_root);
	@override late final _Translations$localNutritionPhase4$nl localNutritionPhase4 = _Translations$localNutritionPhase4$nl._(_root);
	@override late final _Translations$watch$nl watch = _Translations$watch$nl._(_root);
	@override late final _Translations$common$nl common = _Translations$common$nl._(_root);
	@override late final _Translations$feedbackRating$nl feedbackRating = _Translations$feedbackRating$nl._(_root);
	@override late final _Translations$health$nl health = _Translations$health$nl._(_root);
}

// Path: errors
class _Translations$errors$nl extends Translations$errors$en {
	_Translations$errors$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Je hebt te veel verzoeken gedaan. Wacht even voordat je het opnieuw probeert.';
	@override String get networkError => 'Netwerkfout. Controleer je internetverbinding.';
	@override String get unknownError => 'Er is iets misgegaan. Probeer het later opnieuw.';
	@override String get loadingProfileData => 'Fout bij het laden van profielgegevens';
	@override String get somethingWentWrong => 'Er is iets misgegaan.';
	@override String get retry => 'Opnieuw proberen';
}

// Path: onboarding
class _Translations$onboarding$nl extends Translations$onboarding$en {
	_Translations$onboarding$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Welkom bij ${appLabel}';
	@override String get subtitle => 'Je persoonlijke voedingsassistent met AI';
	@override String get getStarted => 'Aan de slag';
	@override late final _Translations$onboarding$features$nl features = _Translations$onboarding$features$nl._(_root);
	@override late final _Translations$onboarding$gender$nl gender = _Translations$onboarding$gender$nl._(_root);
	@override late final _Translations$onboarding$height$nl height = _Translations$onboarding$height$nl._(_root);
	@override late final _Translations$onboarding$weight$nl weight = _Translations$onboarding$weight$nl._(_root);
	@override late final _Translations$onboarding$age$nl age = _Translations$onboarding$age$nl._(_root);
	@override late final _Translations$onboarding$bmiScale$nl bmiScale = _Translations$onboarding$bmiScale$nl._(_root);
	@override late final _Translations$onboarding$weightGoal$nl weightGoal = _Translations$onboarding$weightGoal$nl._(_root);
	@override late final _Translations$onboarding$activityLevel$nl activityLevel = _Translations$onboarding$activityLevel$nl._(_root);
	@override late final _Translations$onboarding$healthConnect$nl healthConnect = _Translations$onboarding$healthConnect$nl._(_root);
	@override late final _Translations$onboarding$reinforcement$nl reinforcement = _Translations$onboarding$reinforcement$nl._(_root);
}

// Path: tabs
class _Translations$tabs$nl extends Translations$tabs$en {
	_Translations$tabs$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Overzicht';
	@override String get history => 'Geschiedenis';
}

// Path: home
class _Translations$home$nl extends Translations$home$en {
	_Translations$home$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$nl aiSummary = _Translations$home$aiSummary$nl._(_root);
	@override late final _Translations$home$dailyGoal$nl dailyGoal = _Translations$home$dailyGoal$nl._(_root);
	@override late final _Translations$home$dailySummary$nl dailySummary = _Translations$home$dailySummary$nl._(_root);
	@override late final _Translations$home$intakeProgress$nl intakeProgress = _Translations$home$intakeProgress$nl._(_root);
	@override late final _Translations$home$intakeHistory$nl intakeHistory = _Translations$home$intakeHistory$nl._(_root);
	@override late final _Translations$home$mealLog$nl mealLog = _Translations$home$mealLog$nl._(_root);
	@override late final _Translations$home$mealDescription$nl mealDescription = _Translations$home$mealDescription$nl._(_root);
	@override late final _Translations$home$favoriteMeals$nl favoriteMeals = _Translations$home$favoriteMeals$nl._(_root);
	@override late final _Translations$home$mealSnap$nl mealSnap = _Translations$home$mealSnap$nl._(_root);
	@override late final _Translations$home$connectHealth$nl connectHealth = _Translations$home$connectHealth$nl._(_root);
}

// Path: history
class _Translations$history$nl extends Translations$history$en {
	_Translations$history$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Geen geregistreerde maaltijden';
	@override String get emptyMessage => 'Maak een foto van je laatste maaltijd om hier te registreren.';
	@override String get today => 'Vandaag';
	@override String get yesterday => 'Gisteren';
}

// Path: meal
class _Translations$meal$nl extends Translations$meal$en {
	_Translations$meal$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Oh nee!';
	@override String get delete => 'Verwijderen';
	@override String get editMeal => 'Maaltijd bewerken';
	@override String get addMeal => 'Maaltijd toevoegen';
	@override String get saveMeal => 'Maaltijd opslaan';
	@override String get save => 'Opslaan';
	@override String get mealName => 'Naam van maaltijd';
	@override String get mealNameHint => 'bijv., Roerei met toast';
	@override String get nameRequired => 'Voer een naam voor je maaltijd in voordat je deze opslaat.';
	@override String get mealQuantity => 'Hoeveelheid maaltijd';
	@override String get mealQuantityHint => 'bijv., 1 kom, 2 sneetjes';
	@override String get timeOfMeal => 'Tijd van maaltijd';
	@override String get timeOfMealHint => 'Selecteer de tijd waarop je at';
	@override String get mealType => 'Soort maaltijd';
	@override late final _Translations$meal$nutrition$nl nutrition = _Translations$meal$nutrition$nl._(_root);
	@override late final _Translations$meal$deleteConfirmation$nl deleteConfirmation = _Translations$meal$deleteConfirmation$nl._(_root);
	@override String get addedToLog => 'Maaltijd toegevoegd aan je log!';
	@override String couldNotAdd({required Object error}) => 'Kon maaltijd niet toevoegen: ${error}';
	@override String get savedSuccessfully => 'Maaltijd succesvol toegevoegd!';
	@override String get updatedSuccessfully => 'Maaltijd succesvol bijgewerkt!';
	@override String errorSaving({required Object error}) => 'Fout bij opslaan van maaltijd: ${error}';
	@override String get removedFromFavorites => 'Verwijderd uit favorieten!';
	@override String get savedAsFavorite => 'Maaltijd opgeslagen als favoriet!';
	@override String get unfavorite => 'Favoriet verwijderen';
	@override String couldNotUpdateFavorite({required Object error}) => 'Kon favoriet niet bijwerken: ${error}';
	@override String get feedbackThanks => 'Bedankt voor de feedback!';
	@override String get reanalysisUpdated => 'Maaltijdanalyse bijgewerkt op basis van je feedback.';
	@override String failedToProcess({required Object error}) => 'Verwerking mislukt: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Verwerking afbeelding mislukt: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Fout bij comprimeren van afbeelding: ${error}';
	@override String get imageTooLarge => 'Deze foto is na compressie nog steeds groter dan 1 MB. Kies een andere foto.';
	@override String get failedToSave => 'Gegevens opslaan mislukt. Probeer het opnieuw.';
	@override String get skip => 'Overslaan';
	@override late final _Translations$meal$questionFlow$nl questionFlow = _Translations$meal$questionFlow$nl._(_root);
	@override late final _Translations$meal$analysis$nl analysis = _Translations$meal$analysis$nl._(_root);
	@override late final _Translations$meal$localInference$nl localInference = _Translations$meal$localInference$nl._(_root);
	@override late final _Translations$meal$feedback$nl feedback = _Translations$meal$feedback$nl._(_root);
}

// Path: favorites
class _Translations$favorites$nl extends Translations$favorites$en {
	_Translations$favorites$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorieten';
	@override String get empty => 'Nog geen favoriete maaltijden.';
	@override String get searchPlaceholder => 'Zoek favoriete maaltijden';
	@override String get searchEmptyTitle => 'Geen favorieten bij je zoekopdracht';
	@override String get searchEmptySubtitle => 'Probeer een andere maaltijdnaam, hoeveelheid of maaltijdtype.';
	@override String get sortLabel => 'Sorteer favorieten';
	@override String get undo => 'Ongedaan maken';
	@override String removed({required Object name}) => 'Verwijderd ${name} uit favorieten';
	@override late final _Translations$favorites$sortOptions$nl sortOptions = _Translations$favorites$sortOptions$nl._(_root);
}

// Path: profile
class _Translations$profile$nl extends Translations$profile$en {
	_Translations$profile$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profiel';
	@override String get noProfileData => 'Geen profielgegevens gevonden';
	@override String get yourProfile => 'Je profiel';
	@override String get viewAndManage => 'Bekijk en beheer je gezondheidsinformatie';
	@override late final _Translations$profile$sections$nl sections = _Translations$profile$sections$nl._(_root);
	@override String get gender => 'Geslacht';
	@override String get height => 'Lengte';
	@override String get weight => 'Gewicht';
	@override String get age => 'Leeftijd';
	@override String get weightGoal => 'Gewichtsdoel';
	@override String get targetWeight => 'Streefgewicht';
	@override String get activityLevel => 'Activiteitsniveau';
	@override String get healthMetrics => 'Gezondheidswaarden';
	@override String get notSet => 'Niet ingesteld';
	@override String get years => 'jaar';
	@override String get updatedSuccessfully => 'Profiel succesvol bijgewerkt!';
	@override late final _Translations$profile$calculatedValues$nl calculatedValues = _Translations$profile$calculatedValues$nl._(_root);
}

// Path: healthScore
class _Translations$healthScore$nl extends Translations$healthScore$en {
	_Translations$healthScore$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gezondheidsscore';
	@override String get whyThisScore => 'Waarom deze score?';
	@override String get note => 'Deze score is een AI-schatting op basis van de geïdentificeerde ingrediënten en voedingsdichtheid. Raadpleeg altijd een professional voor voedingsadvies.';
	@override String get unhealthy => 'Ongezond';
	@override String get healthy => 'Gezond';
	@override String get neutral => 'Neutraal';
}

// Path: editProfile
class _Translations$editProfile$nl extends Translations$editProfile$en {
	_Translations$editProfile$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profiel bewerken';
	@override late final _Translations$editProfile$sections$nl sections = _Translations$editProfile$sections$nl._(_root);
	@override String get gender => 'Geslacht';
	@override String get dateOfBirth => 'Geboortedatum';
	@override String get height => 'Lengte';
	@override String get weight => 'Gewicht';
	@override String get weightGoal => 'Gewichtsdoel';
	@override String get activityLevel => 'Activiteitsniveau';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperiaal';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lb';
	@override String get metricCm => 'Metrisch (cm)';
	@override String get imperialFtIn => 'Imperiaal (ft/in)';
	@override String get metricKg => 'Metrisch (kg)';
	@override String get imperialLbs => 'Imperiaal (lbs)';
	@override late final _Translations$editProfile$genders$nl genders = _Translations$editProfile$genders$nl._(_root);
	@override late final _Translations$editProfile$weightGoals$nl weightGoals = _Translations$editProfile$weightGoals$nl._(_root);
	@override late final _Translations$editProfile$activityLevels$nl activityLevels = _Translations$editProfile$activityLevels$nl._(_root);
}

// Path: settings
class _Translations$settings$nl extends Translations$settings$en {
	_Translations$settings$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Instellingen';
	@override late final _Translations$settings$sections$nl sections = _Translations$settings$sections$nl._(_root);
	@override late final _Translations$settings$editProfile$nl editProfile = _Translations$settings$editProfile$nl._(_root);
	@override late final _Translations$settings$language$nl language = _Translations$settings$language$nl._(_root);
	@override late final _Translations$settings$heightUnit$nl heightUnit = _Translations$settings$heightUnit$nl._(_root);
	@override late final _Translations$settings$weightUnit$nl weightUnit = _Translations$settings$weightUnit$nl._(_root);
	@override late final _Translations$settings$mealReminders$nl mealReminders = _Translations$settings$mealReminders$nl._(_root);
	@override late final _Translations$settings$localInference$nl localInference = _Translations$settings$localInference$nl._(_root);
	@override late final _Translations$settings$theme$nl theme = _Translations$settings$theme$nl._(_root);
	@override late final _Translations$settings$sendFeedback$nl sendFeedback = _Translations$settings$sendFeedback$nl._(_root);
	@override late final _Translations$settings$exportMealHistory$nl exportMealHistory = _Translations$settings$exportMealHistory$nl._(_root);
	@override late final _Translations$settings$clearAllData$nl clearAllData = _Translations$settings$clearAllData$nl._(_root);
	@override late final _Translations$settings$debugOptions$nl debugOptions = _Translations$settings$debugOptions$nl._(_root);
	@override String get developerModeEnabled => 'Ontwikkelaarsmodus ingeschakeld!';
	@override late final _Translations$settings$healthConnect$nl healthConnect = _Translations$settings$healthConnect$nl._(_root);
	@override late final _Translations$settings$about$nl about = _Translations$settings$about$nl._(_root);
	@override late final _Translations$settings$appInfo$nl appInfo = _Translations$settings$appInfo$nl._(_root);
}

// Path: reminders
class _Translations$reminders$nl extends Translations$reminders$en {
	_Translations$reminders$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Blijf op koers met herinneringen';
	@override String get description => 'Ontvang vriendelijke herinneringen om je maaltijden te loggen en consistent te blijven met je voedingsdoelen';
	@override String get notificationsEnabled => 'Meldingen ingeschakeld';
	@override String get notificationsDisabled => 'Meldingen uitgeschakeld';
	@override String get enabledSubtitle => 'Je ontvangt maaltijdherinneringen';
	@override String get disabledSubtitle => 'Schakel meldingen in om maaltijdherinneringen te ontvangen';
	@override String get mealReminders => 'Maaltijdherinneringen';
	@override String get breakfast => 'Ontbijt';
	@override String get lunch => 'Middagmaal';
	@override String get dinner => 'Diner';
	@override String get snack => 'Tussendoortje';
	@override String get unknown => 'Onbekend';
	@override String get change => 'Wijzig';
	@override String get enableNotifications => 'Schakel meldingen in';
	@override String get skipForNow => 'Sla voorlopig over';
	@override String get saveChanges => 'Wijzigingen opslaan';
	@override String get enabledSuccessfully => 'Meldingen succesvol ingeschakeld!';
	@override String get permissionDenied => 'Meldingstoestemming geweigerd';
	@override String errorEnabling({required Object error}) => 'Fout bij inschakelen van meldingen: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Fout bij voltooien van installatie: ${error}';
}

// Path: notifications
class _Translations$notifications$nl extends Translations$notifications$en {
	_Translations$notifications$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$nl breakfast = _Translations$notifications$breakfast$nl._(_root);
	@override late final _Translations$notifications$lunch$nl lunch = _Translations$notifications$lunch$nl._(_root);
	@override late final _Translations$notifications$dinner$nl dinner = _Translations$notifications$dinner$nl._(_root);
	@override late final _Translations$notifications$snack$nl snack = _Translations$notifications$snack$nl._(_root);
	@override late final _Translations$notifications$test$nl test = _Translations$notifications$test$nl._(_root);
}

// Path: login
class _Translations$login$nl extends Translations$login$en {
	_Translations$login$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inloggen';
	@override String get signInWithGoogle => 'Inloggen met Google';
	@override String get signInFailed => 'Google-aanmelding is mislukt of geannuleerd.';
}

// Path: disclaimer
class _Translations$disclaimer$nl extends Translations$disclaimer$en {
	_Translations$disclaimer$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Let op';
	@override late final _Translations$disclaimer$snap$nl snap = _Translations$disclaimer$snap$nl._(_root);
	@override late final _Translations$disclaimer$weightEstimate$nl weightEstimate = _Translations$disclaimer$weightEstimate$nl._(_root);
	@override late final _Translations$disclaimer$healthMetrics$nl healthMetrics = _Translations$disclaimer$healthMetrics$nl._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$nl calorieExpenditure = _Translations$disclaimer$calorieExpenditure$nl._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$nl extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get portionSmaller => 'Kleiner';
	@override String get portionEstimated => 'Geschat';
	@override String get portionLarger => 'Groter';
	@override String portionQuestion({required Object ingredient}) => 'Welke portie kwam het dichtst in de buurt voor ${ingredient}?';
	@override String get mealTypeQuestion => 'Welke maaltijd was dit?';
	@override String get localNutritionTip => 'Berekend met geverifieerde lokale voedingsgegevens.';
	@override String get offlineNutritionTitle => 'Voedingsgegevens downloaden';
	@override String get offlineNutritionSubtitle => 'Gebruik geverifieerde USDA-rijen en deterministische berekening op dit apparaat wanneer alle ingrediënten gedekt zijn.';
	@override String get offlineNutritionUnavailable => 'Lokale voedingsgegevens zijn niet beschikbaar voor deze appversie.';
	@override String get offlineNutritionNotDownloaded => 'Er is geen geverifieerd voedingspakket gedownload.';
	@override String get offlineNutritionInstalling => 'Voedingsgegevens downloaden en verifiëren…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Pakket ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} gecachte USDA-rijen · ${size}';
	@override String get offlineNutritionUpdate => 'Controleren op update';
	@override String get offlineNutritionClear => 'Lokale voedingsgegevens wissen';
	@override String get offlineNutritionClearTitle => 'Lokale voedingsgegevens wissen?';
	@override String get offlineNutritionClearBody => 'Hiermee worden het gedownloade USDA-pakket en de zoekcache verwijderd. Geregistreerde maaltijden behouden de exacte voedingsmomentopname die bij het opslaan is gebruikt.';
	@override String get offlineNutritionClearConfirm => 'Gegevens wissen';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Lokale voedingsgegevens konden niet worden gedownload en geverifieerd: ${error}';
	@override String get offlineNutritionCleared => 'Lokale voedingsgegevens gewist';
}

// Path: watch
class _Translations$watch$nl extends Translations$watch$en {
	_Translations$watch$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$nl common = _Translations$watch$common$nl._(_root);
	@override late final _Translations$watch$nutrition$nl nutrition = _Translations$watch$nutrition$nl._(_root);
	@override late final _Translations$watch$sync$nl sync = _Translations$watch$sync$nl._(_root);
	@override late final _Translations$watch$home$nl home = _Translations$watch$home$nl._(_root);
	@override late final _Translations$watch$history$nl history = _Translations$watch$history$nl._(_root);
	@override late final _Translations$watch$favorites$nl favorites = _Translations$watch$favorites$nl._(_root);
	@override late final _Translations$watch$meal$nl meal = _Translations$watch$meal$nl._(_root);
	@override late final _Translations$watch$voice$nl voice = _Translations$watch$voice$nl._(_root);
	@override late final _Translations$watch$result$nl result = _Translations$watch$result$nl._(_root);
}

// Path: common
class _Translations$common$nl extends Translations$common$en {
	_Translations$common$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Bèta';
	@override String get close => 'Sluiten';
	@override String get kContinue => 'Doorgaan';
}

// Path: feedbackRating
class _Translations$feedbackRating$nl extends Translations$feedbackRating$en {
	_Translations$feedbackRating$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Geniet je van ${appLabel}?';
	@override String get yes => 'Ja, ik geniet ervan';
	@override String get no => 'Niet echt';
	@override String get rateStepHeading => 'Beoordeel in Play Store';
	@override String get emailStepHeading => 'Stuur feedback per e-mail';
	@override String soloDevMessage({required Object appLabel}) => 'Een korte beoordeling helpt anderen ${appLabel} te vinden en houdt de ontwikkeling gaande. Wil je even een moment nemen om er één achter te laten?';
	@override String get shareFeedbackViaEmail => 'Je feedback bepaalt wat er hierna komt — we lezen elk bericht. Wil je je gedachten delen via e-mail?';
	@override String get rateCta => 'Beoordeel in Play Store';
	@override String get maybeLater => 'Misschien later';
	@override String get sendFeedback => 'Feedback versturen';
	@override String get noThanks => 'Nee bedankt';
	@override String get aboutUsDescription => 'Gemaakt met zorg door een klein team. We richten ons op privacy, eenvoud en helpen je betere eetgewoonten opbouwen.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Benieuwd wie erachter ${appLabel} zit? Zie ';
	@override String get aboutUsLinkLabel => 'Over ons';
	@override String get thankYouMessage => 'Bedankt! We vragen het later nog eens.';
}

// Path: health
class _Translations$health$nl extends Translations$health$en {
	_Translations$health$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Kon niet synchroniseren met Health Connect';
	@override String get mealSynced => 'Maaltijd gesynchroniseerd met Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$nl extends Translations$onboarding$features$en {
	_Translations$onboarding$features$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$nl foodRecognition = _Translations$onboarding$features$foodRecognition$nl._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$nl aiAnalysis = _Translations$onboarding$features$aiAnalysis$nl._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$nl healthIntegration = _Translations$onboarding$features$healthIntegration$nl._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$nl extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wat is je gender?';
	@override String get description => 'Je gender helpt ons je basale stofwisselingssnelheid (BMR) nauwkeurig te berekenen.';
	@override String get next => 'Volgende';
}

// Path: onboarding.height
class _Translations$onboarding$height$nl extends Translations$onboarding$height$en {
	_Translations$onboarding$height$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hoe lang ben je?';
	@override String get description => 'Je lengte helpt ons je BMI en energiebehoefte nauwkeurig te berekenen.';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperiaal';
	@override String get next => 'Volgende';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$nl extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Wat is je huidige gewicht?';
	@override String get currentDescription => 'Je huidige gewicht is essentieel om je dagelijkse doelen te personaliseren.';
	@override String get targetTitle => 'Wat is je streefgewicht?';
	@override String get targetDescription => 'Het instellen van een streefgewicht helpt ons je langetermijnplan te bepalen.';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperiaal';
	@override String get next => 'Volgende';
}

// Path: onboarding.age
class _Translations$onboarding$age$nl extends Translations$onboarding$age$en {
	_Translations$onboarding$age$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wanneer is je verjaardag?';
	@override String get description => 'Je leeftijd helpt ons je caloriebehoefte nauwkeurig te berekenen.';
	@override String get next => 'Volgende';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$nl extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Onder';
	@override String get healthy => 'Gezond';
	@override String get overweight => 'Overgewicht';
	@override String get obese => 'Obees';
	@override late final _Translations$onboarding$bmiScale$categories$nl categories = _Translations$onboarding$bmiScale$categories$nl._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$nl messages = _Translations$onboarding$bmiScale$messages$nl._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$nl extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wat is je doel?';
	@override String get description => 'Kies het doel dat het beste beschrijft wat je wilt bereiken';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$nl extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hoe actief ben je?';
	@override String get description => 'Dit helpt ons je dagelijkse caloriebehoefte nauwkeuriger te berekenen';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$nl extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Koppel met Health Connect';
	@override String get description => 'Gebruik verbrande calorieën in je dagelijkse doel en deel desgewenst gelogde maaltijden met Health Connect.';
	@override String get overviewDescription => 'Gebruik verbrande calorieën in je dagelijkse doel en deel desgewenst gelogde maaltijden met Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$nl automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$nl._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$nl caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$nl._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$nl progressInsights = _Translations$onboarding$healthConnect$progressInsights$nl._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$nl shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$nl._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$nl seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$nl._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$nl userControl = _Translations$onboarding$healthConnect$userControl$nl._(_root);
	@override String get connected => 'Health Connect verbonden';
	@override String get notConnected => 'Health Connect niet verbonden';
	@override String get setup => 'Health Connect instellen';
	@override String get skipForNow => 'Sla voorlopig over';
	@override String get statusConnected => 'Health Connect is verbonden.';
	@override String get statusSuccess => 'Health Connect is succesvol verbonden!';
	@override String get statusNotConnected => 'Kies welke Health Connect-functies je wilt inschakelen.';
	@override String get statusPartial => 'Health Connect is gedeeltelijk verbonden. Schakel de resterende machtiging in om beide functies te gebruiken.';
	@override String get statusProviderUpdateRequired => 'Installeer of werk Health Connect bij om door te gaan.';
	@override String get statusUnavailable => 'Health Connect wordt niet ondersteund op dit apparaat.';
	@override String get installOrUpdate => 'Installeren of bijwerken';
	@override String get manageAccess => 'Toegang beheren';
	@override String statusPermissionDenied({required Object appLabel}) => 'Toestemming geweigerd. Schakel Health Connect-machtigingen in via de telefooninstellingen voor ${appLabel}.';
	@override String statusError({required Object error}) => 'Fout bij instellen van Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$nl extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$nl trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$nl._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$nl healthProfile = _Translations$onboarding$reinforcement$healthProfile$nl._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$nl goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$nl._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$nl extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jouw AI-samenvatting';
	@override String get logMore => 'Log de komende dagen meer maaltijden om je gepersonaliseerde AI-inzichten te krijgen.';
	@override String get loading => 'Je samenvatting wordt geladen...';
	@override String mealCount({required Object count}) => '${count} maaltijden geregistreerd';
	@override String macroBalanceScore({required Object score}) => 'Balansscore ${score}';
	@override String get topFoods => 'Top voedingsmiddelen';
	@override String get trendUp => 'Calorieën stijgen';
	@override String get trendDown => 'Calorieën dalen';
	@override String get trendSteady => 'Calorieën stabiel';
	@override String generatedAt({required Object time}) => 'Bijgewerkt ${time}';
}

// Path: home.dailyGoal
class _Translations$home$dailyGoal$nl extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stel je dagelijkse doel';
	@override String get titleSet => 'Je dagelijkse doel';
	@override String get description => 'Klaar om aan je wellness-reis te beginnen? Stel hieronder je dagelijkse calorie-doel in om van start te gaan.';
	@override String get descriptionSet => 'Je kompas is ingesteld! Dit is je dagelijkse calorie-doel om je te begeleiden.';
	@override String get yourGoal => 'Je doel';
	@override String get goal => 'Doel';
	@override String get dailyCalories => 'Dagelijkse calorieën (kcal)';
	@override String get setGoal => 'Stel doel in';
	@override String get intake => 'Inname';
	@override String get burned => 'Verbrand';
	@override String get weightImpact => 'Gewichtsimpact';
	@override String get estLoss => 'Gesch. verlies van';
	@override String get estGain => 'Gesch. toename van';
	@override String get kcal => 'kilocalorieën';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$nl extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagelijkse samenvatting';
	@override String get calories => 'Calorieën';
	@override String get carbs => 'Koolhydraten';
	@override String get protein => 'Eiwit';
	@override String get fat => 'Vetten';
	@override String get fiber => 'Vezels';
	@override String get grams => 'gram';
	@override String get chartAccessibilityLabel => 'Macro-grafiek';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$nl extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Macroverdeling vandaag';
	@override String get target => 'Doel';
	@override String get current => 'Huidig';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$nl extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Macrogeschiedenis (7 dagen)';
	@override String get trendTitle => 'Huidige trend';
	@override String peakHour({required Object hour}) => 'Piek: ${hour}:00';
	@override String get noHistoryYet => 'Nog geen geschiedenis';
	@override String get startLogging => 'Start met het loggen van maaltijden om je\n7-daagse macrotrends hier te zien';
}

// Path: home.mealLog
class _Translations$home$mealLog$nl extends Translations$home$mealLog$en {
	_Translations$home$mealLog$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Geregistreerde maaltijden';
	@override String get emptyMessage => 'Maak een foto van je laatste maaltijd om hier te registreren.';
	@override String get noMealsToday => 'Geen maaltijden geregistreerd voor vandaag';
	@override String get seeAllMeals => 'Alle maaltijden bekijken';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$nl extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snel toevoegen met AI';
	@override String get description => 'Beschrijf je maaltijd en laat AI de details invullen.';
	@override String get hint => 'bijv. Bij het ontbijt had ik een grote kom havermout met een gesneden banaan en een schep whey ...';
	@override String get analyzeMeal => 'Analyseer maaltijd';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$nl extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoriete maaltijden';
	@override String get description => 'Voeg snel een van je favoriete maaltijden toe.';
	@override String get noFavorites => 'Nog geen favoriete maaltijden.';
	@override String get addFavoriteHint => 'Klik op de ster bij een maaltijd om het als favoriet te markeren.';
	@override String get seeAll => 'Alles zien';
	@override String get add => 'Toevoegen';
}

// Path: home.mealSnap
class _Translations$home$mealSnap$nl extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maak een foto & registreer je maaltijd';
	@override String get description => 'Gebruik je camera om een foto van je eten te maken voor AI-analyse.';
	@override String get openCamera => 'Camera openen';
	@override String get gallery => 'Galerij';
	@override String get compressingPhoto => 'Foto optimaliseren…';
	@override String get uploadingPhoto => 'Foto uploaden…';
}

// Path: home.connectHealth
class _Translations$home$connectHealth$nl extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synchroniseren met Health Connect';
	@override String get description => 'Gebruik verbrande calorieën in je doel en deel gelogde maaltijden';
	@override String get install => 'Installeren of bijwerken';
	@override String get dataUseDescription => 'Gebruik verbrande calorieën in je doel en deel gelogde maaltijden';
	@override String get installOrUpdate => 'Installeren of bijwerken';
	@override String get connect => 'Koppelen';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$nl extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calorieën';
	@override String get carbs => 'Koolhydraten (g)';
	@override String get protein => 'Eiwit (g)';
	@override String get fat => 'Vet (g)';
	@override String get fiber => 'Vezels (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$nl extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maaltijd verwijderen';
	@override String get message => 'Weet je zeker dat je deze maaltijd wilt verwijderen?';
	@override String get cancel => 'Annuleren';
	@override String get delete => 'Verwijderen';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$nl extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Vraag ${current} van ${total}';
	@override String get noQuestionsAvailable => 'Geen vragen beschikbaar';
	@override String get next => 'Volgende';
	@override String get continueLabel => 'Doorgaan';
	@override String get countQuestion => 'Kies het aantal';
	@override String get itemSizeQuestion => 'Kies de afmeting';
	@override String get portionSizeQuestion => 'Kies de portiegrootte';
	@override String get option6plus => '6 of meer';
	@override String get optionSmall => 'Klein';
	@override String get optionRegular => 'Normaal';
	@override String get optionLarge => 'Groot';
	@override String get optionThin => 'Dun';
	@override String get optionThick => 'Dik';
	@override String get optionMini => 'Mini';
	@override String get optionStuffed => 'Gevuld';
	@override String get optionHeavy => 'Zwaar';
	@override String get optionSmaller => 'Kleiner';
	@override String get optionTypical => 'Typisch';
	@override String get optionLarger => 'Groter';
}

// Path: meal.analysis
class _Translations$meal$analysis$nl extends Translations$meal$analysis$en {
	_Translations$meal$analysis$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Je maaltijd wordt geanalyseerd';
	@override String get stepStarted => 'Bezig met starten…';
	@override String get stepDecomposition => 'Begrijpen van je maaltijd…';
	@override String get stepIngredients => 'Ingrediënten matchen met voedingsdata…';
	@override String get stepUncertainty => 'Betrouwbaarheid controleren…';
	@override String get stepMealTypeQuestion => 'Bijna klaar…';
	@override String get stepResult => 'Resultaat finaliseren…';
	@override String get stepError => 'Er is iets misgegaan';
	@override String get noFoodTip => 'Er is geen voedsel gedetecteerd. Probeer een andere foto of beschrijving.';
	@override String get stepDefault => 'Maaltijd analyseren…';
	@override String get progressUnderstand => 'Je maaltijd begrijpen';
	@override String get progressMatch => 'Voedingswaarden opzoeken voor ingrediënten';
	@override String get progressCheck => 'Porties en betrouwbaarheid controleren';
	@override String get progressMealType => 'Maaltijdtype kiezen';
	@override String get progressFinish => 'Calorieën en macro\'s berekenen';
	@override String get detectedIngredientHeading => 'Ingrediënten die we herkennen';
	@override String ingredientsOverflow({required Object count}) => '${count} meer';
	@override String ingredientsLine({required Object count}) => '${count} ingrediënten gedetecteerd';
	@override String get ingredientsPending => 'Ingrediënten scannen…';
	@override String mealPreviewDescription({required Object text}) => '‘${text}’';
	@override String get offlineTip0 => 'Tip: Consistentie is belangrijker dan perfectie—regelmatig loggen onthult de patronen die ertoe doen.';
	@override String get offlineTip1 => 'Tip: Voor foto\'s helpen natuurlijk licht en een bovenaanzicht bij de portie-accuraatheid.';
	@override String get offlineTip2 => 'Tip: Noem drankjes, sauzen en bakolie—ze voegen vaak vergeten calorieën toe.';
	@override String get offlineTip3 => 'Tip: Een korte portie-opmerking (1 kom, grote koffie) maakt schattingen veel nauwkeuriger.';
	@override String get offlineTip4 => 'Tip: Loggen na de maaltijd bouwt nog steeds de gewoonte op; perfectie is niet verplicht.';
	@override String get offlineTip5 => 'Tip: Vermeld hoe het eten is bereid wanneer dit veel calorieën verandert (gefrituurd vs. gebakken).';
}

// Path: meal.localInference
class _Translations$meal$localInference$nl extends Translations$meal$localInference$en {
	_Translations$meal$localInference$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Gedetecteerde ingrediënten controleren';
	@override String get reviewSubtitle => 'Dit is op je apparaat geïnterpreteerd. Corrigeer namen of porties voordat de voedingswaarde wordt berekend.';
	@override String get mealName => 'Maaltijdnaam';
	@override String get ingredient => 'Ingrediënt';
	@override String get grams => 'Geschatte grammen';
	@override String get removeIngredient => 'Ingrediënt verwijderen';
	@override String get continueLabel => 'Doorgaan';
	@override String get invalidProposal => 'Voeg minstens één ingrediënt toe en gebruik een positief aantal grammen.';
	@override String get localUnavailable => 'Analyse op het apparaat is momenteel niet beschikbaar.';
}

// Path: meal.feedback
class _Translations$meal$feedback$nl extends Translations$meal$feedback$en {
	_Translations$meal$feedback$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wat klopt er niet?';
	@override String get subtitle => 'Help ons de analyse te verbeteren door één of meer problemen te selecteren.';
	@override String get tellUsMore => 'Vertel ons meer';
	@override String get describeIncorrect => 'Beschrijf wat onjuist was';
	@override String get submit => 'Verstuur';
	@override String get issueFoodIdentification => 'Voedselidentificatie';
	@override String get issuePortionSize => 'Portiegrootte';
	@override String get issueCalorieDistribution => 'Verdeling van calorieën';
	@override String get issueMacrosWrong => 'Macro\'s kloppen niet';
	@override String get issueMissingItems => 'Ontbrekende items';
	@override String get issueExtraItems => 'Overtollige onderdelen';
	@override String get issueOther => 'Anders';
}

// Path: favorites.sortOptions
class _Translations$favorites$sortOptions$nl extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Meest recent';
	@override String get calories => 'Calorieën';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _Translations$profile$sections$nl extends Translations$profile$sections$en {
	_Translations$profile$sections$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIEL';
	@override String get basicInformation => 'BASISINFORMATIE';
	@override String get goalsAndActivity => 'DOELEN & ACTIVITEIT';
	@override String get calculatedValues => 'BEREKENDE WAARDEN';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$nl extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Dagelijks doel';
	@override String get calPerDay => 'cal/dag';
	@override String get notAvailable => 'N.v.t.';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$nl extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSOONLIJKE GEGEVENS';
	@override String get physicalMeasurements => 'LICHAAMSMAAT';
	@override String get goalsAndActivity => 'DOELEN & ACTIVITEIT';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$nl extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get male => 'Man';
	@override String get female => 'Vrouw';
	@override String get other => 'Anders';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$nl extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$nl loseWeight = _Translations$editProfile$weightGoals$loseWeight$nl._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$nl maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$nl._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$nl gainWeight = _Translations$editProfile$weightGoals$gainWeight$nl._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$nl extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$nl sedentary = _Translations$editProfile$activityLevels$sedentary$nl._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$nl lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$nl._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$nl moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$nl._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$nl veryActive = _Translations$editProfile$activityLevels$veryActive$nl._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$nl extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$nl._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$nl extends Translations$settings$sections$en {
	_Translations$settings$sections$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIEL';
	@override String get localization => 'LOKALISATIE';
	@override String get notifications => 'MELDINGEN';
	@override String get healthConnect => 'HEALTH CONNECT-KOPPELING';
	@override String get localInference => 'ANALYSE OP APPARAAT';
	@override String get supportAndLegal => 'ONDERSTEUNING & JURIDISCH';
	@override String get about => 'OVER';
	@override String get dangerZone => 'GEVAARZONE';
	@override String get developer => 'ONTWIKKELAAR';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$nl extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profiel bewerken';
	@override String get subtitle => 'Werk je persoonlijke gegevens bij';
}

// Path: settings.language
class _Translations$settings$language$nl extends Translations$settings$language$en {
	_Translations$settings$language$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Taal';
	@override String get subtitle => 'Kies je voorkeurstaal';
	@override String get searchHint => 'Zoek talen...';
	@override String get noResults => 'Geen resultaten gevonden';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$nl extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hoogteeenheid';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$nl extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gewichtseenheid';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$nl extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maaltijdherinneringen';
	@override String get subtitle => 'Blijf op koers met tijdige meldingen';
}

// Path: settings.localInference
class _Translations$settings$localInference$nl extends Translations$settings$localInference$en {
	_Translations$settings$localInference$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maaltijdanalyse op apparaat';
	@override String get subtitle => 'Ondersteunde maaltijden interpreteren met Gemini Nano voordat de voedingswaarde wordt berekend';
	@override String get unavailable => 'Niet beschikbaar op dit apparaat';
	@override String get rolloutUnavailable => 'Geschikte hardware gevonden, maar deze functie is niet ingeschakeld voor deze app-versie';
	@override String get modelSetup => 'Gemini Nano moet eerst volledig worden gedownload voordat dit kan worden ingeschakeld';
	@override String get useLocalTitle => 'Analyse op apparaat gebruiken';
	@override String get useLocalSubtitle => 'Bij complexe maaltijden kunnen de resultaten minder betrouwbaar zijn.';
	@override String get disclosureTitle => 'Voordat je analyse op apparaat inschakelt';
	@override String get disclosureBody => 'Gemini Nano kan ingrediënten identificeren en porties schatten op ondersteunde Android-apparaten. Je gecontroleerde ingrediëntenvoorstel wordt naar Calorify gestuurd voor USDA-voedingsonderbouwing en berekening.';
	@override String get disclosureLimit1 => 'Complexe gerechten, verborgen ingrediënten en portiegroottes kunnen onjuist worden geïdentificeerd.';
	@override String get disclosureLimit2 => 'Het model kan onbeschikbaar zijn tijdens het downloaden, wanneer het bezet is, op de achtergrond draait of beperkt wordt door het apparaat.';
	@override String get disclosureLimit3 => 'Als de lokale interpretatie niet kan worden voltooid, stuurt deze bèta automatisch je oorspronkelijke maaltijdbeschrijving naar Calorify voor cloudanalyse.';
	@override String get acknowledgement => 'Ik begrijp dat ik de gedetecteerde ingrediënten en porties moet controleren.';
	@override String get enable => 'Bevestigen en inschakelen';
	@override String get cancel => 'Annuleren';
}

// Path: settings.theme
class _Translations$settings$theme$nl extends Translations$settings$theme$en {
	_Translations$settings$theme$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thema';
	@override String get light => 'Licht';
	@override String get dark => 'Donker';
	@override String get system => 'Systeem';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$nl extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Feedback verzenden';
	@override String subtitle({required Object appLabel}) => 'Help ${appLabel} verbeteren';
	@override String emailSubject({required Object appLabel}) => 'Feedback voor ${appLabel}';
	@override String get emailBodyPrefix => 'Geef hieronder je feedback:';
	@override String get appVersion => 'App-versie';
	@override String get device => 'Apparaat';
	@override String get osVersion => 'OS-versie';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _Translations$settings$exportMealHistory$nl extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exporteer maaltijdgeschiedenis';
	@override String get subtitle => 'Deel een CSV van je geregistreerde maaltijden';
	@override String get shareText => 'Je Calorify maaltijdgeschiedenis-export';
	@override String failed({required Object error}) => 'Kon maaltijdgeschiedenis niet exporteren: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$nl extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alle gegevens wissen';
	@override String get subtitle => 'Verwijder Calorify-gegevens die op dit apparaat zijn opgeslagen';
	@override String get localOnlySubtitle => 'Calorify-gegevens verwijderen die op dit apparaat zijn opgeslagen';
	@override String get confirmationTitle => 'Alle gegevens wissen?';
	@override String get confirmationMessage => 'Hiermee worden gelogde maaltijden, favorieten en profielinstellingen permanent van dit apparaat verwijderd. Maaltijden die al met Health Connect zijn gedeeld en de toegang tot Health Connect beheer je afzonderlijk via Instellingen > Health Connect.';
	@override String get localOnlyConfirmationMessage => 'Hiermee worden gelogde maaltijden, favorieten en profielinstellingen permanent van dit apparaat verwijderd. Maaltijden die al met Health Connect zijn gedeeld en de toegang tot Health Connect worden afzonderlijk beheerd via Instellingen > Health Connect.';
	@override String get cancel => 'Annuleren';
	@override String get clearEverything => 'Alles wissen';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$nl extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug-opties';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$nl extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Bekijk en beheer machtigingen';
	@override late final _Translations$settings$healthConnect$unavailable$nl unavailable = _Translations$settings$healthConnect$unavailable$nl._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$nl updateRequired = _Translations$settings$healthConnect$updateRequired$nl._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nl permissions = _Translations$settings$healthConnect$permissions$nl._(_root);
	@override String get managePermissions => 'Machtigingen beheren';
	@override String get openSettings => 'Open Health Connect-instellingen';
	@override String get disconnect => 'Health Connect loskoppelen';
	@override String get disconnectConfirmationTitle => 'Health Connect loskoppelen?';
	@override String get disconnectConfirmationMessage => 'Calorify verliest de toegang tot Health Connect. Gegevens die daar al zijn geschreven, worden niet verwijderd.';
	@override String get disconnectConfirmationAction => 'Loskoppelen';
	@override String get deleteSyncedMeals => 'Calorify-maaltijden uit Health Connect verwijderen';
	@override String get deleteSyncedMealsConfirmationTitle => 'Gesynchroniseerde maaltijden verwijderen?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Maaltijden die door deze versie van Calorify zijn gesynchroniseerd uit Health Connect verwijderen? Je lokale maaltijdlogboek verandert niet. Oudere Calorify-vermeldingen moet je mogelijk nog verwijderen via Gegevens beheren in Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Gesynchroniseerde maaltijden verwijderen';
	@override String get deleteSyncedMealsSuccess => 'Calorify-maaltijden zijn uit Health Connect verwijderd.';
	@override String get deleteSyncedMealsFailed => 'Gesynchroniseerde maaltijden konden niet worden verwijderd. Probeer het opnieuw.';
	@override String get connectionPartial => 'Sommige Health Connect-functies zijn ingeschakeld.';
	@override String get connectionComplete => 'Beide Health Connect-functies zijn ingeschakeld.';
	@override String get actionFailed => 'Health Connect kon niet worden geopend. Probeer het opnieuw.';
	@override String get requestPermissions => 'Vraag machtigingen aan';
	@override String get permissionRequestCancelledOrFailed => 'De toestemmingsaanvraag is geannuleerd of mislukt. Probeer het opnieuw of geef machtigingen handmatig in de Health Connect-instellingen.';
	@override String get permissionRequestFailed => 'Kan geen machtigingen aanvragen. Probeer het opnieuw of geef machtigingen handmatig in de Health Connect-instellingen.';
	@override String get requestingPermissions => 'Bezig met aanvragen...';
}

// Path: settings.about
class _Translations$settings$about$nl extends Translations$settings$about$en {
	_Translations$settings$about$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Over';
	@override String get tagline => 'Snel, gratis en privacygericht caloriebewustzijn';
	@override late final _Translations$settings$about$ourStory$nl ourStory = _Translations$settings$about$ourStory$nl._(_root);
	@override late final _Translations$settings$about$privacy$nl privacy = _Translations$settings$about$privacy$nl._(_root);
	@override late final _Translations$settings$about$developer$nl developer = _Translations$settings$about$developer$nl._(_root);
	@override late final _Translations$settings$about$feedback$nl feedback = _Translations$settings$about$feedback$nl._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$nl extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify versie ${version}';
	@override String build({required Object buildNumber}) => 'Buildnummer ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$nl extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tijd voor ontbijt! 🍳';
	@override String get body => 'Vergeet niet je ontbijt te registreren';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$nl extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tijd voor lunch! 🥗';
	@override String get body => 'Tijd om je lunch te registreren';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$nl extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tijd voor diner! 🍽️';
	@override String get body => 'Vergeet niet je diner te registreren';
}

// Path: notifications.snack
class _Translations$notifications$snack$nl extends Translations$notifications$snack$en {
	_Translations$notifications$snack$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tijd voor een snack! 🍎';
	@override String get body => 'Tijd voor een gezonde snack';
}

// Path: notifications.test
class _Translations$notifications$test$nl extends Translations$notifications$test$en {
	_Translations$notifications$test$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testmelding';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$nl extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} geeft geschatte voedingsinformatie. De nauwkeurigheid hangt af van je invoer en variaties in voedsel. Gebruik het als richtlijn, niet als definitieve bron. Raadpleeg een professional voor persoonlijk voedingsadvies.';
	@override late final _Translations$disclaimer$snap$portionSize$nl portionSize = _Translations$disclaimer$snap$portionSize$nl._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$nl preparationMethods = _Translations$disclaimer$snap$preparationMethods$nl._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$nl ingredients = _Translations$disclaimer$snap$ingredients$nl._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$nl databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$nl._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$nl extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Over gewichtsschatting';
	@override String get description => 'De geschatte gewichtsverandering is een theoretische schatting gebaseerd op het eenvoudige model calorieën-in vs calorieën-uit. Het is bedoeld als motivatiegids, niet als voorspelling van je werkelijke gewicht.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$nl calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$nl._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$nl biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$nl._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$nl waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$nl._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$nl professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$nl._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$nl extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get description => 'Deze meetwaarden helpen je je energiebehoefte te begrijpen en je voedingsdoelen te sturen.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$nl bmr = _Translations$disclaimer$healthMetrics$bmr$nl._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$nl tdee = _Translations$disclaimer$healthMetrics$tdee$nl._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$nl dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$nl._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$nl extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Schatting van calorieverbruik';
	@override String get description => 'Wanneer Health Connect-gegevens niet beschikbaar zijn, schatten we de verbrande calorieën van vandaag met behulp van je Basal Metabolic Rate (BMR) en activiteitsniveau (TDEE), geschaald voor het reeds verstreken deel van de dag.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$nl howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$nl._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$nl professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$nl._(_root);
}

// Path: watch.common
class _Translations$watch$common$nl extends Translations$watch$common$en {
	_Translations$watch$common$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get back => 'Terug';
	@override String get cancel => 'Annuleren';
	@override String get delete => 'Verwijderen';
	@override String get retry => 'Opnieuw';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$nl extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Voedingsstof';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} g';
	@override String get protein => 'Eiwit';
	@override String get carbs => 'Koolhydraten';
	@override String get fat => 'Vetten';
	@override String get fiber => 'Vezels';
}

// Path: watch.sync
class _Translations$watch$sync$nl extends Translations$watch$sync$en {
	_Translations$watch$sync$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Synchroniseer met telefoon';
	@override String get syncing => 'Synchroniseren…';
	@override String get synced => 'Gesynchroniseerd';
	@override String get syncedJustNow => 'Zojuist gesynchroniseerd';
	@override String syncedMinutesAgo({required Object minutes}) => 'Gesynchroniseerd ${minutes}m geleden';
	@override String get failed => 'Synchronisatie mislukt';
	@override String get phoneDisconnected => 'Telefoon niet verbonden';
	@override String get tapToSync => 'Tik om te synchroniseren';
	@override String get refreshFailed => 'Vernieuwen mislukt. Controleer je telefoon.';
	@override String get openPhone => 'Open Calorify op je telefoon en tik op vernieuwen.';
}

// Path: watch.home
class _Translations$watch$home$nl extends Translations$watch$home$en {
	_Translations$watch$home$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get today => 'Vandaag';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} calorieën geconsumeerd van ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} boven je doel';
	@override String remaining({required Object calories}) => '${calories} resterend';
	@override String left({required Object calories}) => 'Nog ${calories}';
	@override String goal({required Object calories}) => '${calories} kcal doel';
	@override String get logMeal => 'Maaltijd loggen';
	@override String get todayMeals => 'Maaltijden van vandaag';
	@override String todayMealsCount({required Object count}) => 'Maaltijden van vandaag, ${count}';
	@override String viewMore({required Object count}) => 'Bekijk nog ${count}';
	@override String viewMoreSemantics({required Object count}) => '${count} meer maaltijden, tik om alles te bekijken';
	@override String get noMeals => 'Geen maaltijden geregistreerd';
	@override String get noMealsSemantics => 'Vandaag geen maaltijden geregistreerd';
	@override String get tapLog => 'Tik op Loggen om te beginnen';
	@override String get removedFromQueue => 'Maaltijd verwijderd uit de offline wachtrij.';
	@override String get removedOffline => 'Maaltijd offline verwijderd. Deze wordt gesynchroniseerd wanneer je telefoon weer verbinding maakt.';
	@override String get deleteFailed => 'Kon maaltijd niet verwijderen';
}

// Path: watch.history
class _Translations$watch$history$nl extends Translations$watch$history$en {
	_Translations$watch$history$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maaltijden van vandaag';
	@override String get refresh => 'Vernieuw maaltijden';
	@override String get loadFailed => 'Kon maaltijden niet laden';
	@override String get syncFailed => 'Kon niet synchroniseren';
	@override String get emptyTitle => 'Nog geen maaltijden';
	@override String get emptyMessage => 'Log een maaltijd via het beginscherm om die hier te zien.';
}

// Path: watch.favorites
class _Translations$watch$favorites$nl extends Translations$watch$favorites$en {
	_Translations$watch$favorites$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favorieten';
	@override String get refresh => 'Vernieuw favorieten';
	@override String get loadFailed => 'Kon favorieten niet laden';
	@override String get syncFailed => 'Kon niet synchroniseren';
	@override String get emptyTitle => 'Nog geen favorieten';
	@override String get emptyMessage => 'Markeer maaltijden met een ster in de telefoon-app zodat je ze hier met één tik kunt loggen.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} calorieën. Tik om te loggen.';
	@override String logged({required Object name}) => '${name} gelogd!';
	@override String savedOffline({required Object name}) => '${name} offline opgeslagen. Deze wordt gesynchroniseerd wanneer je telefoon weer verbinding maakt.';
	@override String get saveFailed => 'Kon de maaltijd niet opslaan. Probeer het opnieuw.';
	@override String get log => 'Loggen';
}

// Path: watch.meal
class _Translations$watch$meal$nl extends Translations$watch$meal$en {
	_Translations$watch$meal$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} calorieën, gelogd om ${time}.';
	@override String get longPressDelete => 'Lang indrukken om te verwijderen.';
	@override String get deleteTitle => 'Maaltijd verwijderen?';
}

// Path: watch.voice
class _Translations$watch$voice$nl extends Translations$watch$voice$en {
	_Translations$watch$voice$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maaltijd loggen met spraak';
	@override String get processing => 'Maaltijd controleren…';
	@override String get processingDescription => 'Porties en voedingswaarden schatten';
	@override String get listening => 'Luistert';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Opname stoppen';
	@override String get start => 'Tik om opname te starten';
	@override String get starting => 'Microfoon starten…';
	@override String get prompt => 'Tik en beschrijf daarna je maaltijd';
	@override String get tapToRetry => 'Tik om het opnieuw te proberen';
	@override String get example => 'Probeer “2 rotis met dal”';
	@override String get unavailable => 'Spraakinvoer is niet beschikbaar. Controleer de microfoonmachtiging in de instellingen van je horloge.';
	@override String get didNotStart => 'Microfoon is niet gestart. Tik om het opnieuw te proberen.';
	@override String get startFailed => 'Kon opname niet starten. Controleer microfoonmachtigingen.';
	@override String get allowMicrophone => 'Sta microfoontoegang toe om maaltijden via spraak te loggen.';
	@override String get needsConnection => 'Spraakherkenning heeft een verbinding nodig. Tik om het opnieuw te proberen.';
	@override String get microphoneUnavailable => 'De microfoon is niet beschikbaar. Tik om het opnieuw te proberen.';
	@override String get microphoneBusy => 'De microfoon is in gebruik. Wacht even en probeer het opnieuw.';
	@override String get languageUnsupported => 'Spraakinvoer ondersteunt de taal van het horloge niet.';
	@override String get temporarilyBusy => 'Spraakinvoer is tijdelijk bezet. Wacht even en probeer het opnieuw.';
	@override String get notRecognized => 'Ik verstond dat niet. Tik op de microfoon en probeer het opnieuw.';
	@override String get noSpeech => 'Geen spraak gedetecteerd. Tik op de microfoon om het opnieuw te proberen.';
	@override String get analysisFailed => 'Analyse is mislukt. Probeer het opnieuw.';
	@override String get mealNotIdentified => 'Kon die maaltijd niet identificeren. Probeer deze anders te beschrijven.';
}

// Path: watch.result
class _Translations$watch$result$nl extends Translations$watch$result$en {
	_Translations$watch$result$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Maaltijdgegevens';
	@override String get savedOffline => 'Offline opgeslagen';
	@override String get logged => 'Gelogd!';
	@override String get mealFound => 'Maaltijd gevonden';
	@override String get estimatedEnergy => 'Geschatte energie';
	@override String get logMeal => 'Maaltijd loggen';
	@override String get logging => 'Bezig met loggen…';
	@override String get logAnother => 'Nog een loggen';
	@override String get goingBack => 'Teruggaan…';
	@override String get savedOfflineMessage => 'Maaltijd offline opgeslagen. Deze wordt gesynchroniseerd wanneer je telefoon weer verbinding maakt.';
	@override String get saveFailed => 'Kon de maaltijd niet opslaan. Probeer het opnieuw.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$nl extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Slimme voedingsherkenning';
	@override String get description => 'Maak een foto en laat AI je maaltijd identificeren';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$nl extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-analyse';
	@override String get description => 'Krijg direct voedingswaarden op basis van je beschrijvingen';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$nl extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect-integratie';
	@override String get description => 'Koppel met Health Connect voor betere inzichten';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$nl extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Ondergewicht';
	@override String get healthyWeight => 'Gezond gewicht';
	@override String get overweight => 'Overgewicht';
	@override String get obese => 'Obesitas';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$nl extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'We kunnen je helpen een gezond plan op te bouwen om een evenwichtig gewicht te bereiken met voedzame maaltijden.';
	@override String get healthy => 'Goed bezig! Je zit in een gezond bereik. We helpen je je vitaliteit en energieniveau te behouden.';
	@override String overweight({required Object appLabel}) => '${appLabel} maakt je reis eenvoudiger met AI-gestuurde tracking om je comfortabel je doel te laten bereiken.';
	@override String get obese => 'We zijn er om je te ondersteunen met gepersonaliseerde begeleiding en duurzame strategieën voor je gezondheidsdoelen.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$nl extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verbrande calorieën';
	@override String get description => 'Lees het totale aantal calorieën dat vandaag is verbrand via Health Connect';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$nl extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verbrande calorieën';
	@override String get description => 'Lees het totale aantal calorieën dat vandaag is verbrand via Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$nl extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Geloggde maaltijden delen';
	@override String get description => 'Schrijf maaltijden die je in Calorify logt naar Health Connect';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$nl extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gelogde maaltijden delen';
	@override String get description => 'Schrijf maaltijden die je in Calorify logt naar Health Connect';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$nl extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jij houdt de controle';
	@override String get description => 'Kies een van beide machtigingen en wijzig de toegang wanneer je wilt';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$nl extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jij houdt de controle';
	@override String get description => 'Kies een van beide machtigingen en wijzig de toegang wanneer je wilt';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$nl extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Je staat er niet alleen voor';
	@override String get genericMessage => 'Onderzoek toont aan dat consistent bijhouden de belangrijkste voorspeller is van langdurig succes.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Voor een ${age} jaar oude ${gender} die wil ${goal}, is consistent bijhouden de belangrijkste voorspeller van succes.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} maakt het 10x gemakkelijker dan handmatig bijhouden.';
	@override String get getStartedTitle => 'Klaar om te beginnen?';
	@override String get tipPhoto => 'Maak een foto van je maaltijd voor directe analyse';
	@override String get tipConsistency => 'Log regelmatig om echte vooruitgang te zien';
	@override String get tipProgress => 'Volg je voortgang dagelijks om gemotiveerd te blijven';
	@override String get button => 'Laten we gaan';
	@override String get defaultGender => 'persoon';
	@override String get defaultGoal => 'een gezondere jij';
}

// Path: onboarding.reinforcement.healthProfile
class _Translations$onboarding$reinforcement$healthProfile$nl extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Je gezondheidsprofiel';
	@override String bmiDescription({required Object bmi}) => 'Op basis van je gegevens is je BMI ${bmi}.';
	@override String get finalizeDescription => 'Laten we je profiel afronden om je ervaring te personaliseren.';
	@override String get goalGain => 'aankomen';
	@override String get goalLose => 'afvallen';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Om je doel te bereiken, zul je ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Je hebt je streefgewicht bereikt! We helpen je het te behouden.';
	@override String get button => 'Laten we gaan';
}

// Path: onboarding.reinforcement.goalLifestyle
class _Translations$onboarding$reinforcement$goalLifestyle$nl extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Uitstekende start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Je hebt de eerste stap gezet richting ${goalText}. Aangezien je ${activityText}, past ${appLabel} je doelen aan op jouw levensstijl.';
	@override String get personalizedTargets => 'Gepersonaliseerde calorie-doelen';
	@override String get aiMealDetection => 'AI-gestuurde maaltijddetectie';
	@override String get macroBreakdowns => 'Gedetailleerde macroverdelingen';
	@override String get button => 'Laten we gaan';
	@override String get defaultGoal => 'je doelen';
	@override String get defaultActivity => 'actief';
}

// Path: editProfile.weightGoals.loseWeight
class _Translations$editProfile$weightGoals$loseWeight$nl extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Afvallen';
	@override String get description => 'Creëer een calorie-tekort om af te vallen';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$nl extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gewicht behouden';
	@override String get description => 'Behoud je huidige gewicht';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$nl extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Aankomen';
	@override String get description => 'Creëer een calorie-overschot om aan te komen';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$nl extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Weinig actief';
	@override String get description => 'Weinig tot geen beweging';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$nl extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Licht actief';
	@override String get description => 'Lichte inspanning 1-3 dagen/week';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$nl extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Matig actief';
	@override String get description => 'Matige inspanning 3-5 dagen/week';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$nl extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Zeer actief';
	@override String get description => 'Zware inspanning 6-7 dagen/week';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$nl extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extreem actief';
	@override String get description => 'Zeer zware inspanning, fysiek werk';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$nl extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect niet beschikbaar';
	@override String get description => 'Health Connect wordt niet ondersteund op dit apparaat.';
	@override String get unsupportedDescription => 'Health Connect wordt niet ondersteund op dit apparaat.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$nl extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect vereist aandacht';
	@override String get description => 'Installeer of werk Health Connect bij voordat je de toegang beheert.';
	@override String get action => 'Installeren of bijwerken';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$nl extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Machtigingen';
	@override String get description => 'De volgende machtigingen worden gevraagd om Health Connect-integratie te bieden:';
	@override String get granted => 'Toegewezen';
	@override String get notGranted => 'Niet toegewezen';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$nl caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$nl._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$nl nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$nl._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$nl nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$nl._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$nl extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ons verhaal';
	@override String content({required Object appLabel}) => '${appLabel} is ontstaan uit een eenvoudige frustratie: de meeste calorie-trackingapps zijn óf te ingewikkeld, vereisen constant handmatig invoer, vragen hoge abonnementskosten of schenden de privacy.\n\nAls solo-ontwikkelaar wilde ik iets eenvoudigers en eerlijkers bouwen — een app die AI gebruikt om inspanning te verminderen, snel en gratis blijft, en je gezondheidsgegevens met respect behandelt.\n\n${appLabel} is de app die ik had willen bestaan: geen accounts, geen tracking, geen advertenties — alleen heldere, praktische inzichten en jouw gezondheidsdoelen.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$nl extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Je privacy doet ertoe';
	@override String get description => 'Privacy is geen bijzaak — het is een ontwerpprincipe. Dit betekent het in de praktijk:';
	@override String get noAccounts => 'Geen accounts nodig\nGebruik de app direct. Geen aanmeldingen, geen identificaties.';
	@override String noTracking({required Object appLabel}) => 'Beperkte analyses en diagnostiek\n${appLabel} gebruikt basis-appgebeurtenissen en crashdiagnostiek om de betrouwbaarheid te verbeteren. Waarden uit gezondheidsgegevens worden niet voor advertenties gebruikt of verkocht.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Beperkte analyse en diagnostiek\n${appLabel} gebruikt basis-appgebeurtenissen en crashdiagnostiek om de betrouwbaarheid te verbeteren. Waarden uit gezondheidsgegevens worden niet gebruikt voor advertenties en niet verkocht.';
	@override String noAds({required Object appLabel}) => 'Advertentievrij bij ontwerp\n${appLabel} is gebouwd om te werken zonder advertenties of datagedreven monetisatie.';
	@override String get noDataSelling => 'Geen verkoop van gegevens\nJe gezondheidsgegevens worden nooit verkocht of gedeeld met derden.';
	@override String get localStorage => 'Lokaal als eerste opslag\nJe gegevens blijven op je apparaat.';
	@override String get privacyPolicy => 'Privacybeleid';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$nl extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gemaakt door een solo-ontwikkelaar';
	@override String description({required Object appLabel}) => '${appLabel} is gebouwd en wordt onderhouden door een enkele solo-ontwikkelaar die zich richt op het maken van rustige, privacy-respecterende gezondheidssoftware.\n\nFeedback wordt persoonlijk gelezen en helpt de richting van de app vormgeven.';
	@override String get website => 'Webpagina';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$nl extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Geniet je van ${appLabel}?';
	@override String description({required Object appLabel}) => 'Je feedback helpt ${appLabel} beter te maken voor iedereen.';
	@override String get rateApp => 'Beoordeel in Play Store';
	@override String get sendFeedback => 'Verstuur feedback';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$nl extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Portiegrootte';
	@override String get description => 'De nauwkeurigheid van de schattingen hangt sterk af van je juiste inschatting van de portiegrootte.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$nl extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bereidingsmethoden';
	@override String description({required Object appLabel}) => 'Bereidingsmethoden kunnen de voedingswaarde aanzienlijk veranderen. De schattingen van ${appLabel} houden mogelijk niet altijd rekening met deze variaties.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$nl extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingrediënten';
	@override String get description => 'Complexe gerechten met veel verborgen ingrediënten kunnen leiden tot minder nauwkeurige schattingen.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$nl extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Beperkingen van de database';
	@override String description({required Object appLabel}) => '${appLabel}\'s voedseldatabase is uitgebreid maar bevat mogelijk niet elk afzonderlijk voedingsmiddel of variant.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$nl extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nauwkeurigheid van calorieën';
	@override String get description => 'Deze schatting is slechts zo nauwkeurig als je geregistreerde calorie-inname en -verbruik. Onnauwkeurig loggen resulteert in een onnauwkeurige prognose.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$nl extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologische factoren';
	@override String description({required Object appLabel}) => 'Werkelijk gewichtsverlies/-toename wordt beïnvloed door metabolisme, hormonen, slaap, stress, hydratatie en andere individuele factoren die ${appLabel} niet kan meten.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$nl extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Watergewicht & Schommelingen';
	@override String get description => 'Dagelijks gewicht kan flink fluctueren door waterretentie, spijsvertering en timing. De schatting houdt geen rekening met deze dagelijkse veranderingen.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$nl extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionele begeleiding';
	@override String get description => 'Gebruik deze schatting niet voor medische beslissingen. Raadpleeg altijd een zorgprofessional of geregistreerde diëtist voor persoonlijk gewichtsadvies.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$nl extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'BMR (Basal Metabolic Rate) is het aantal calorieën dat je lichaam in rust verbrandt om basisfuncties zoals ademen en bloedsomloop te behouden. BMR is afhankelijk van je leeftijd, gender, lengte en gewicht. Een hogere BMR betekent dat je lichaam in rust meer calorieën verbrandt, vaak door meer spiermassa, jongere leeftijd of mannelijk geslacht. Een lagere BMR duidt meestal op minder spiermassa, hogere leeftijd of vrouwelijk geslacht.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$nl extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'TDEE is het totale aantal calorieën dat je per dag verbrandt, inclusief je BMR plus calorieën uit fysieke activiteit en dagelijkse beweging. TDEE is afhankelijk van je BMR en activiteitsniveau. Een hogere TDEE betekent dat je in totaal meer calorieën verbrandt, meestal door actiever te zijn of een hogere BMR. Een lagere TDEE wijst op minder dagelijkse activiteit of een lagere BMR.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$nl extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dagelijks doel';
	@override String get description => 'Het dagelijkse doel is je aanbevolen dagelijkse calorie-inname op basis van je TDEE en gewichtsdoel. Voor gewichtsverlies consumeer je minder calorieën dan je TDEE. Voor gewichtsonderhoud stem je je inname af op je TDEE. Voor gewichtstoename consumeer je meer calorieën dan je TDEE. Dit helpt je het gewenste gewichtsverandering in een gezond tempo te bereiken.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$nl extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hoe de schatting wordt berekend';
	@override String get description => 'We berekenen je TDEE (op basis van je profiel) en vermenigvuldigen het met het aandeel van de dag dat verstreken is (uren + minuten) / 24 om de tot nu toe verbrande calorieën te schatten.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$nl extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionele begeleiding';
	@override String get description => 'Gebruik deze schatting niet voor medische beslissingen. Raadpleeg altijd een zorgprofessional of geregistreerde diëtist voor persoonlijk gewichtsadvies.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$nl extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lees totaal verbrande calorieën';
	@override String get description => 'Staat de app toe je totaal verbrande calorieën te lezen van Health Connect.';
	@override String get usage => 'Deze toestemming wordt gebruikt om je dagelijkse calorieverbruik in de app weer te geven, zodat je je totale energieverbruik gedurende de dag begrijpt.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$nl extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lees voedingsgegevens';
	@override String get description => 'Staat de app toe voedingsgegevens te lezen van Health Connect.';
	@override String get usage => 'Deze toestemming maakt het mogelijk dat de app voedingsinformatie leest die mogelijk door andere apps naar Health Connect is gelogd, voor een compleet beeld van je voeding.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$nl extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$nl._(TranslationsNl root) : this._root = root, super.internal(root);

	final TranslationsNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Schrijf voedingsgegevens';
	@override String get description => 'Staat de app toe voedingsgegevens te schrijven naar Health Connect.';
	@override String get usage => 'Deze toestemming maakt het mogelijk dat de app je geregistreerde maaltijden synchroniseert met Health Connect, zodat je voedingsgegevens beschikbaar zijn voor andere gezondheids- en fitnessapps.';
}

/// The flat map containing all translations for locale <nl>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsNl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Nederlands',
			'flag' => '🇳🇱',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Je hebt te veel verzoeken gedaan. Wacht even voordat je het opnieuw probeert.',
			'errors.networkError' => 'Netwerkfout. Controleer je internetverbinding.',
			'errors.unknownError' => 'Er is iets misgegaan. Probeer het later opnieuw.',
			'errors.loadingProfileData' => 'Fout bij het laden van profielgegevens',
			'errors.somethingWentWrong' => 'Er is iets misgegaan.',
			'errors.retry' => 'Opnieuw proberen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Welkom bij ${appLabel}',
			'onboarding.subtitle' => 'Je persoonlijke voedingsassistent met AI',
			'onboarding.getStarted' => 'Aan de slag',
			'onboarding.features.foodRecognition.title' => 'Slimme voedingsherkenning',
			'onboarding.features.foodRecognition.description' => 'Maak een foto en laat AI je maaltijd identificeren',
			'onboarding.features.aiAnalysis.title' => 'AI-analyse',
			'onboarding.features.aiAnalysis.description' => 'Krijg direct voedingswaarden op basis van je beschrijvingen',
			'onboarding.features.healthIntegration.title' => 'Health Connect-integratie',
			'onboarding.features.healthIntegration.description' => 'Koppel met Health Connect voor betere inzichten',
			'onboarding.gender.title' => 'Wat is je gender?',
			'onboarding.gender.description' => 'Je gender helpt ons je basale stofwisselingssnelheid (BMR) nauwkeurig te berekenen.',
			'onboarding.gender.next' => 'Volgende',
			'onboarding.height.title' => 'Hoe lang ben je?',
			'onboarding.height.description' => 'Je lengte helpt ons je BMI en energiebehoefte nauwkeurig te berekenen.',
			'onboarding.height.metric' => 'Metrisch',
			'onboarding.height.imperial' => 'Imperiaal',
			'onboarding.height.next' => 'Volgende',
			'onboarding.weight.currentTitle' => 'Wat is je huidige gewicht?',
			'onboarding.weight.currentDescription' => 'Je huidige gewicht is essentieel om je dagelijkse doelen te personaliseren.',
			'onboarding.weight.targetTitle' => 'Wat is je streefgewicht?',
			'onboarding.weight.targetDescription' => 'Het instellen van een streefgewicht helpt ons je langetermijnplan te bepalen.',
			'onboarding.weight.metric' => 'Metrisch',
			'onboarding.weight.imperial' => 'Imperiaal',
			'onboarding.weight.next' => 'Volgende',
			'onboarding.age.title' => 'Wanneer is je verjaardag?',
			'onboarding.age.description' => 'Je leeftijd helpt ons je caloriebehoefte nauwkeurig te berekenen.',
			'onboarding.age.next' => 'Volgende',
			'onboarding.bmiScale.underweight' => 'Onder',
			'onboarding.bmiScale.healthy' => 'Gezond',
			'onboarding.bmiScale.overweight' => 'Overgewicht',
			'onboarding.bmiScale.obese' => 'Obees',
			'onboarding.bmiScale.categories.underweight' => 'Ondergewicht',
			'onboarding.bmiScale.categories.healthyWeight' => 'Gezond gewicht',
			'onboarding.bmiScale.categories.overweight' => 'Overgewicht',
			'onboarding.bmiScale.categories.obese' => 'Obesitas',
			'onboarding.bmiScale.messages.underweight' => 'We kunnen je helpen een gezond plan op te bouwen om een evenwichtig gewicht te bereiken met voedzame maaltijden.',
			'onboarding.bmiScale.messages.healthy' => 'Goed bezig! Je zit in een gezond bereik. We helpen je je vitaliteit en energieniveau te behouden.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} maakt je reis eenvoudiger met AI-gestuurde tracking om je comfortabel je doel te laten bereiken.',
			'onboarding.bmiScale.messages.obese' => 'We zijn er om je te ondersteunen met gepersonaliseerde begeleiding en duurzame strategieën voor je gezondheidsdoelen.',
			'onboarding.weightGoal.title' => 'Wat is je doel?',
			'onboarding.weightGoal.description' => 'Kies het doel dat het beste beschrijft wat je wilt bereiken',
			'onboarding.activityLevel.title' => 'Hoe actief ben je?',
			'onboarding.activityLevel.description' => 'Dit helpt ons je dagelijkse caloriebehoefte nauwkeuriger te berekenen',
			'onboarding.healthConnect.title' => 'Koppel met Health Connect',
			'onboarding.healthConnect.description' => 'Gebruik verbrande calorieën in je dagelijkse doel en deel desgewenst gelogde maaltijden met Health Connect.',
			'onboarding.healthConnect.overviewDescription' => 'Gebruik verbrande calorieën in je dagelijkse doel en deel desgewenst gelogde maaltijden met Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Verbrande calorieën',
			'onboarding.healthConnect.automaticTracking.description' => 'Lees het totale aantal calorieën dat vandaag is verbrand via Health Connect',
			'onboarding.healthConnect.caloriesBurned.title' => 'Verbrande calorieën',
			'onboarding.healthConnect.caloriesBurned.description' => 'Lees het totale aantal calorieën dat vandaag is verbrand via Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Geloggde maaltijden delen',
			'onboarding.healthConnect.progressInsights.description' => 'Schrijf maaltijden die je in Calorify logt naar Health Connect',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Gelogde maaltijden delen',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Schrijf maaltijden die je in Calorify logt naar Health Connect',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Jij houdt de controle',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Kies een van beide machtigingen en wijzig de toegang wanneer je wilt',
			'onboarding.healthConnect.userControl.title' => 'Jij houdt de controle',
			'onboarding.healthConnect.userControl.description' => 'Kies een van beide machtigingen en wijzig de toegang wanneer je wilt',
			'onboarding.healthConnect.connected' => 'Health Connect verbonden',
			'onboarding.healthConnect.notConnected' => 'Health Connect niet verbonden',
			'onboarding.healthConnect.setup' => 'Health Connect instellen',
			'onboarding.healthConnect.skipForNow' => 'Sla voorlopig over',
			'onboarding.healthConnect.statusConnected' => 'Health Connect is verbonden.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect is succesvol verbonden!',
			'onboarding.healthConnect.statusNotConnected' => 'Kies welke Health Connect-functies je wilt inschakelen.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect is gedeeltelijk verbonden. Schakel de resterende machtiging in om beide functies te gebruiken.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Installeer of werk Health Connect bij om door te gaan.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect wordt niet ondersteund op dit apparaat.',
			'onboarding.healthConnect.installOrUpdate' => 'Installeren of bijwerken',
			'onboarding.healthConnect.manageAccess' => 'Toegang beheren',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Toestemming geweigerd. Schakel Health Connect-machtigingen in via de telefooninstellingen voor ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Fout bij instellen van Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Je staat er niet alleen voor',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Onderzoek toont aan dat consistent bijhouden de belangrijkste voorspeller is van langdurig succes.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Voor een ${age} jaar oude ${gender} die wil ${goal}, is consistent bijhouden de belangrijkste voorspeller van succes.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} maakt het 10x gemakkelijker dan handmatig bijhouden.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Klaar om te beginnen?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Maak een foto van je maaltijd voor directe analyse',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Log regelmatig om echte vooruitgang te zien',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Volg je voortgang dagelijks om gemotiveerd te blijven',
			'onboarding.reinforcement.trackingSuccess.button' => 'Laten we gaan',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'persoon',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'een gezondere jij',
			'onboarding.reinforcement.healthProfile.title' => 'Je gezondheidsprofiel',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Op basis van je gegevens is je BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Laten we je profiel afronden om je ervaring te personaliseren.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'aankomen',
			'onboarding.reinforcement.healthProfile.goalLose' => 'afvallen',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Om je doel te bereiken, zul je ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Je hebt je streefgewicht bereikt! We helpen je het te behouden.',
			'onboarding.reinforcement.healthProfile.button' => 'Laten we gaan',
			'onboarding.reinforcement.goalLifestyle.title' => 'Uitstekende start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Je hebt de eerste stap gezet richting ${goalText}. Aangezien je ${activityText}, past ${appLabel} je doelen aan op jouw levensstijl.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Gepersonaliseerde calorie-doelen',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-gestuurde maaltijddetectie',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Gedetailleerde macroverdelingen',
			'onboarding.reinforcement.goalLifestyle.button' => 'Laten we gaan',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'je doelen',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'actief',
			'tabs.dashboard' => 'Overzicht',
			'tabs.history' => 'Geschiedenis',
			'home.aiSummary.title' => 'Jouw AI-samenvatting',
			'home.aiSummary.logMore' => 'Log de komende dagen meer maaltijden om je gepersonaliseerde AI-inzichten te krijgen.',
			'home.aiSummary.loading' => 'Je samenvatting wordt geladen...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} maaltijden geregistreerd',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Balansscore ${score}',
			'home.aiSummary.topFoods' => 'Top voedingsmiddelen',
			'home.aiSummary.trendUp' => 'Calorieën stijgen',
			'home.aiSummary.trendDown' => 'Calorieën dalen',
			'home.aiSummary.trendSteady' => 'Calorieën stabiel',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Bijgewerkt ${time}',
			'home.dailyGoal.title' => 'Stel je dagelijkse doel',
			'home.dailyGoal.titleSet' => 'Je dagelijkse doel',
			'home.dailyGoal.description' => 'Klaar om aan je wellness-reis te beginnen? Stel hieronder je dagelijkse calorie-doel in om van start te gaan.',
			'home.dailyGoal.descriptionSet' => 'Je kompas is ingesteld! Dit is je dagelijkse calorie-doel om je te begeleiden.',
			'home.dailyGoal.yourGoal' => 'Je doel',
			'home.dailyGoal.goal' => 'Doel',
			'home.dailyGoal.dailyCalories' => 'Dagelijkse calorieën (kcal)',
			'home.dailyGoal.setGoal' => 'Stel doel in',
			'home.dailyGoal.intake' => 'Inname',
			'home.dailyGoal.burned' => 'Verbrand',
			'home.dailyGoal.weightImpact' => 'Gewichtsimpact',
			'home.dailyGoal.estLoss' => 'Gesch. verlies van',
			'home.dailyGoal.estGain' => 'Gesch. toename van',
			'home.dailyGoal.kcal' => 'kilocalorieën',
			'home.dailySummary.title' => 'Dagelijkse samenvatting',
			'home.dailySummary.calories' => 'Calorieën',
			'home.dailySummary.carbs' => 'Koolhydraten',
			'home.dailySummary.protein' => 'Eiwit',
			'home.dailySummary.fat' => 'Vetten',
			'home.dailySummary.fiber' => 'Vezels',
			'home.dailySummary.grams' => 'gram',
			'home.dailySummary.chartAccessibilityLabel' => 'Macro-grafiek',
			'home.intakeProgress.title' => 'Macroverdeling vandaag',
			'home.intakeProgress.target' => 'Doel',
			'home.intakeProgress.current' => 'Huidig',
			'home.intakeHistory.title' => 'Macrogeschiedenis (7 dagen)',
			'home.intakeHistory.trendTitle' => 'Huidige trend',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Piek: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Nog geen geschiedenis',
			'home.intakeHistory.startLogging' => 'Start met het loggen van maaltijden om je\n7-daagse macrotrends hier te zien',
			'home.mealLog.title' => 'Geregistreerde maaltijden',
			'home.mealLog.emptyMessage' => 'Maak een foto van je laatste maaltijd om hier te registreren.',
			'home.mealLog.noMealsToday' => 'Geen maaltijden geregistreerd voor vandaag',
			'home.mealLog.seeAllMeals' => 'Alle maaltijden bekijken',
			'home.mealDescription.title' => 'Snel toevoegen met AI',
			'home.mealDescription.description' => 'Beschrijf je maaltijd en laat AI de details invullen.',
			'home.mealDescription.hint' => 'bijv. Bij het ontbijt had ik een grote kom havermout met een gesneden banaan en een schep whey ...',
			'home.mealDescription.analyzeMeal' => 'Analyseer maaltijd',
			'home.favoriteMeals.title' => 'Favoriete maaltijden',
			'home.favoriteMeals.description' => 'Voeg snel een van je favoriete maaltijden toe.',
			'home.favoriteMeals.noFavorites' => 'Nog geen favoriete maaltijden.',
			'home.favoriteMeals.addFavoriteHint' => 'Klik op de ster bij een maaltijd om het als favoriet te markeren.',
			'home.favoriteMeals.seeAll' => 'Alles zien',
			'home.favoriteMeals.add' => 'Toevoegen',
			'home.mealSnap.title' => 'Maak een foto & registreer je maaltijd',
			'home.mealSnap.description' => 'Gebruik je camera om een foto van je eten te maken voor AI-analyse.',
			'home.mealSnap.openCamera' => 'Camera openen',
			'home.mealSnap.gallery' => 'Galerij',
			'home.mealSnap.compressingPhoto' => 'Foto optimaliseren…',
			'home.mealSnap.uploadingPhoto' => 'Foto uploaden…',
			'home.connectHealth.title' => 'Synchroniseren met Health Connect',
			'home.connectHealth.description' => 'Gebruik verbrande calorieën in je doel en deel gelogde maaltijden',
			'home.connectHealth.install' => 'Installeren of bijwerken',
			'home.connectHealth.dataUseDescription' => 'Gebruik verbrande calorieën in je doel en deel gelogde maaltijden',
			'home.connectHealth.installOrUpdate' => 'Installeren of bijwerken',
			'home.connectHealth.connect' => 'Koppelen',
			'history.noMeals' => 'Geen geregistreerde maaltijden',
			'history.emptyMessage' => 'Maak een foto van je laatste maaltijd om hier te registreren.',
			'history.today' => 'Vandaag',
			'history.yesterday' => 'Gisteren',
			'meal.ohNo' => 'Oh nee!',
			'meal.delete' => 'Verwijderen',
			'meal.editMeal' => 'Maaltijd bewerken',
			'meal.addMeal' => 'Maaltijd toevoegen',
			'meal.saveMeal' => 'Maaltijd opslaan',
			'meal.save' => 'Opslaan',
			'meal.mealName' => 'Naam van maaltijd',
			'meal.mealNameHint' => 'bijv., Roerei met toast',
			'meal.nameRequired' => 'Voer een naam voor je maaltijd in voordat je deze opslaat.',
			'meal.mealQuantity' => 'Hoeveelheid maaltijd',
			'meal.mealQuantityHint' => 'bijv., 1 kom, 2 sneetjes',
			'meal.timeOfMeal' => 'Tijd van maaltijd',
			'meal.timeOfMealHint' => 'Selecteer de tijd waarop je at',
			'meal.mealType' => 'Soort maaltijd',
			'meal.nutrition.calories' => 'Calorieën',
			'meal.nutrition.carbs' => 'Koolhydraten (g)',
			'meal.nutrition.protein' => 'Eiwit (g)',
			'meal.nutrition.fat' => 'Vet (g)',
			'meal.nutrition.fiber' => 'Vezels (g)',
			'meal.deleteConfirmation.title' => 'Maaltijd verwijderen',
			'meal.deleteConfirmation.message' => 'Weet je zeker dat je deze maaltijd wilt verwijderen?',
			'meal.deleteConfirmation.cancel' => 'Annuleren',
			'meal.deleteConfirmation.delete' => 'Verwijderen',
			'meal.addedToLog' => 'Maaltijd toegevoegd aan je log!',
			'meal.couldNotAdd' => ({required Object error}) => 'Kon maaltijd niet toevoegen: ${error}',
			'meal.savedSuccessfully' => 'Maaltijd succesvol toegevoegd!',
			'meal.updatedSuccessfully' => 'Maaltijd succesvol bijgewerkt!',
			'meal.errorSaving' => ({required Object error}) => 'Fout bij opslaan van maaltijd: ${error}',
			'meal.removedFromFavorites' => 'Verwijderd uit favorieten!',
			'meal.savedAsFavorite' => 'Maaltijd opgeslagen als favoriet!',
			'meal.unfavorite' => 'Favoriet verwijderen',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Kon favoriet niet bijwerken: ${error}',
			'meal.feedbackThanks' => 'Bedankt voor de feedback!',
			'meal.reanalysisUpdated' => 'Maaltijdanalyse bijgewerkt op basis van je feedback.',
			'meal.failedToProcess' => ({required Object error}) => 'Verwerking mislukt: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Verwerking afbeelding mislukt: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Fout bij comprimeren van afbeelding: ${error}',
			'meal.imageTooLarge' => 'Deze foto is na compressie nog steeds groter dan 1 MB. Kies een andere foto.',
			'meal.failedToSave' => 'Gegevens opslaan mislukt. Probeer het opnieuw.',
			'meal.skip' => 'Overslaan',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Vraag ${current} van ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Geen vragen beschikbaar',
			'meal.questionFlow.next' => 'Volgende',
			'meal.questionFlow.continueLabel' => 'Doorgaan',
			'meal.questionFlow.countQuestion' => 'Kies het aantal',
			'meal.questionFlow.itemSizeQuestion' => 'Kies de afmeting',
			'meal.questionFlow.portionSizeQuestion' => 'Kies de portiegrootte',
			'meal.questionFlow.option6plus' => '6 of meer',
			'meal.questionFlow.optionSmall' => 'Klein',
			'meal.questionFlow.optionRegular' => 'Normaal',
			'meal.questionFlow.optionLarge' => 'Groot',
			'meal.questionFlow.optionThin' => 'Dun',
			'meal.questionFlow.optionThick' => 'Dik',
			'meal.questionFlow.optionMini' => 'Mini',
			'meal.questionFlow.optionStuffed' => 'Gevuld',
			'meal.questionFlow.optionHeavy' => 'Zwaar',
			'meal.questionFlow.optionSmaller' => 'Kleiner',
			'meal.questionFlow.optionTypical' => 'Typisch',
			'meal.questionFlow.optionLarger' => 'Groter',
			'meal.analysis.title' => 'Je maaltijd wordt geanalyseerd',
			'meal.analysis.stepStarted' => 'Bezig met starten…',
			'meal.analysis.stepDecomposition' => 'Begrijpen van je maaltijd…',
			'meal.analysis.stepIngredients' => 'Ingrediënten matchen met voedingsdata…',
			'meal.analysis.stepUncertainty' => 'Betrouwbaarheid controleren…',
			'meal.analysis.stepMealTypeQuestion' => 'Bijna klaar…',
			'meal.analysis.stepResult' => 'Resultaat finaliseren…',
			'meal.analysis.stepError' => 'Er is iets misgegaan',
			'meal.analysis.noFoodTip' => 'Er is geen voedsel gedetecteerd. Probeer een andere foto of beschrijving.',
			'meal.analysis.stepDefault' => 'Maaltijd analyseren…',
			'meal.analysis.progressUnderstand' => 'Je maaltijd begrijpen',
			'meal.analysis.progressMatch' => 'Voedingswaarden opzoeken voor ingrediënten',
			'meal.analysis.progressCheck' => 'Porties en betrouwbaarheid controleren',
			'meal.analysis.progressMealType' => 'Maaltijdtype kiezen',
			'meal.analysis.progressFinish' => 'Calorieën en macro\'s berekenen',
			'meal.analysis.detectedIngredientHeading' => 'Ingrediënten die we herkennen',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} meer',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingrediënten gedetecteerd',
			'meal.analysis.ingredientsPending' => 'Ingrediënten scannen…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '‘${text}’',
			'meal.analysis.offlineTip0' => 'Tip: Consistentie is belangrijker dan perfectie—regelmatig loggen onthult de patronen die ertoe doen.',
			'meal.analysis.offlineTip1' => 'Tip: Voor foto\'s helpen natuurlijk licht en een bovenaanzicht bij de portie-accuraatheid.',
			'meal.analysis.offlineTip2' => 'Tip: Noem drankjes, sauzen en bakolie—ze voegen vaak vergeten calorieën toe.',
			'meal.analysis.offlineTip3' => 'Tip: Een korte portie-opmerking (1 kom, grote koffie) maakt schattingen veel nauwkeuriger.',
			'meal.analysis.offlineTip4' => 'Tip: Loggen na de maaltijd bouwt nog steeds de gewoonte op; perfectie is niet verplicht.',
			'meal.analysis.offlineTip5' => 'Tip: Vermeld hoe het eten is bereid wanneer dit veel calorieën verandert (gefrituurd vs. gebakken).',
			'meal.localInference.reviewTitle' => 'Gedetecteerde ingrediënten controleren',
			'meal.localInference.reviewSubtitle' => 'Dit is op je apparaat geïnterpreteerd. Corrigeer namen of porties voordat de voedingswaarde wordt berekend.',
			'meal.localInference.mealName' => 'Maaltijdnaam',
			'meal.localInference.ingredient' => 'Ingrediënt',
			'meal.localInference.grams' => 'Geschatte grammen',
			'meal.localInference.removeIngredient' => 'Ingrediënt verwijderen',
			'meal.localInference.continueLabel' => 'Doorgaan',
			'meal.localInference.invalidProposal' => 'Voeg minstens één ingrediënt toe en gebruik een positief aantal grammen.',
			'meal.localInference.localUnavailable' => 'Analyse op het apparaat is momenteel niet beschikbaar.',
			'meal.feedback.title' => 'Wat klopt er niet?',
			'meal.feedback.subtitle' => 'Help ons de analyse te verbeteren door één of meer problemen te selecteren.',
			'meal.feedback.tellUsMore' => 'Vertel ons meer',
			'meal.feedback.describeIncorrect' => 'Beschrijf wat onjuist was',
			'meal.feedback.submit' => 'Verstuur',
			'meal.feedback.issueFoodIdentification' => 'Voedselidentificatie',
			'meal.feedback.issuePortionSize' => 'Portiegrootte',
			'meal.feedback.issueCalorieDistribution' => 'Verdeling van calorieën',
			'meal.feedback.issueMacrosWrong' => 'Macro\'s kloppen niet',
			'meal.feedback.issueMissingItems' => 'Ontbrekende items',
			'meal.feedback.issueExtraItems' => 'Overtollige onderdelen',
			'meal.feedback.issueOther' => 'Anders',
			'favorites.title' => 'Favorieten',
			'favorites.empty' => 'Nog geen favoriete maaltijden.',
			'favorites.searchPlaceholder' => 'Zoek favoriete maaltijden',
			'favorites.searchEmptyTitle' => 'Geen favorieten bij je zoekopdracht',
			'favorites.searchEmptySubtitle' => 'Probeer een andere maaltijdnaam, hoeveelheid of maaltijdtype.',
			'favorites.sortLabel' => 'Sorteer favorieten',
			'favorites.undo' => 'Ongedaan maken',
			'favorites.removed' => ({required Object name}) => 'Verwijderd ${name} uit favorieten',
			'favorites.sortOptions.recent' => 'Meest recent',
			'favorites.sortOptions.calories' => 'Calorieën',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profiel',
			'profile.noProfileData' => 'Geen profielgegevens gevonden',
			'profile.yourProfile' => 'Je profiel',
			'profile.viewAndManage' => 'Bekijk en beheer je gezondheidsinformatie',
			'profile.sections.profile' => 'PROFIEL',
			'profile.sections.basicInformation' => 'BASISINFORMATIE',
			'profile.sections.goalsAndActivity' => 'DOELEN & ACTIVITEIT',
			'profile.sections.calculatedValues' => 'BEREKENDE WAARDEN',
			'profile.gender' => 'Geslacht',
			'profile.height' => 'Lengte',
			'profile.weight' => 'Gewicht',
			'profile.age' => 'Leeftijd',
			'profile.weightGoal' => 'Gewichtsdoel',
			'profile.targetWeight' => 'Streefgewicht',
			'profile.activityLevel' => 'Activiteitsniveau',
			'profile.healthMetrics' => 'Gezondheidswaarden',
			'profile.notSet' => 'Niet ingesteld',
			'profile.years' => 'jaar',
			'profile.updatedSuccessfully' => 'Profiel succesvol bijgewerkt!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Dagelijks doel',
			'profile.calculatedValues.calPerDay' => 'cal/dag',
			'profile.calculatedValues.notAvailable' => 'N.v.t.',
			'healthScore.title' => 'Gezondheidsscore',
			'healthScore.whyThisScore' => 'Waarom deze score?',
			'healthScore.note' => 'Deze score is een AI-schatting op basis van de geïdentificeerde ingrediënten en voedingsdichtheid. Raadpleeg altijd een professional voor voedingsadvies.',
			'healthScore.unhealthy' => 'Ongezond',
			'healthScore.healthy' => 'Gezond',
			'healthScore.neutral' => 'Neutraal',
			'editProfile.title' => 'Profiel bewerken',
			'editProfile.sections.personalInformation' => 'PERSOONLIJKE GEGEVENS',
			'editProfile.sections.physicalMeasurements' => 'LICHAAMSMAAT',
			'editProfile.sections.goalsAndActivity' => 'DOELEN & ACTIVITEIT',
			'editProfile.gender' => 'Geslacht',
			'editProfile.dateOfBirth' => 'Geboortedatum',
			'editProfile.height' => 'Lengte',
			'editProfile.weight' => 'Gewicht',
			'editProfile.weightGoal' => 'Gewichtsdoel',
			'editProfile.activityLevel' => 'Activiteitsniveau',
			'editProfile.metric' => 'Metrisch',
			'editProfile.imperial' => 'Imperiaal',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lb',
			'editProfile.metricCm' => 'Metrisch (cm)',
			'editProfile.imperialFtIn' => 'Imperiaal (ft/in)',
			'editProfile.metricKg' => 'Metrisch (kg)',
			'editProfile.imperialLbs' => 'Imperiaal (lbs)',
			'editProfile.genders.male' => 'Man',
			'editProfile.genders.female' => 'Vrouw',
			'editProfile.genders.other' => 'Anders',
			'editProfile.weightGoals.loseWeight.name' => 'Afvallen',
			'editProfile.weightGoals.loseWeight.description' => 'Creëer een calorie-tekort om af te vallen',
			'editProfile.weightGoals.maintainWeight.name' => 'Gewicht behouden',
			'editProfile.weightGoals.maintainWeight.description' => 'Behoud je huidige gewicht',
			'editProfile.weightGoals.gainWeight.name' => 'Aankomen',
			'editProfile.weightGoals.gainWeight.description' => 'Creëer een calorie-overschot om aan te komen',
			'editProfile.activityLevels.sedentary.name' => 'Weinig actief',
			'editProfile.activityLevels.sedentary.description' => 'Weinig tot geen beweging',
			'editProfile.activityLevels.lightlyActive.name' => 'Licht actief',
			'editProfile.activityLevels.lightlyActive.description' => 'Lichte inspanning 1-3 dagen/week',
			'editProfile.activityLevels.moderatelyActive.name' => 'Matig actief',
			'editProfile.activityLevels.moderatelyActive.description' => 'Matige inspanning 3-5 dagen/week',
			'editProfile.activityLevels.veryActive.name' => 'Zeer actief',
			'editProfile.activityLevels.veryActive.description' => 'Zware inspanning 6-7 dagen/week',
			'editProfile.activityLevels.extremelyActive.name' => 'Extreem actief',
			'editProfile.activityLevels.extremelyActive.description' => 'Zeer zware inspanning, fysiek werk',
			'settings.title' => 'Instellingen',
			'settings.sections.profile' => 'PROFIEL',
			'settings.sections.localization' => 'LOKALISATIE',
			'settings.sections.notifications' => 'MELDINGEN',
			'settings.sections.healthConnect' => 'HEALTH CONNECT-KOPPELING',
			'settings.sections.localInference' => 'ANALYSE OP APPARAAT',
			'settings.sections.supportAndLegal' => 'ONDERSTEUNING & JURIDISCH',
			'settings.sections.about' => 'OVER',
			'settings.sections.dangerZone' => 'GEVAARZONE',
			'settings.sections.developer' => 'ONTWIKKELAAR',
			'settings.editProfile.title' => 'Profiel bewerken',
			'settings.editProfile.subtitle' => 'Werk je persoonlijke gegevens bij',
			'settings.language.title' => 'Taal',
			'settings.language.subtitle' => 'Kies je voorkeurstaal',
			'settings.language.searchHint' => 'Zoek talen...',
			'settings.language.noResults' => 'Geen resultaten gevonden',
			'settings.heightUnit.title' => 'Hoogteeenheid',
			'settings.weightUnit.title' => 'Gewichtseenheid',
			'settings.mealReminders.title' => 'Maaltijdherinneringen',
			'settings.mealReminders.subtitle' => 'Blijf op koers met tijdige meldingen',
			'settings.localInference.title' => 'Maaltijdanalyse op apparaat',
			'settings.localInference.subtitle' => 'Ondersteunde maaltijden interpreteren met Gemini Nano voordat de voedingswaarde wordt berekend',
			'settings.localInference.unavailable' => 'Niet beschikbaar op dit apparaat',
			'settings.localInference.rolloutUnavailable' => 'Geschikte hardware gevonden, maar deze functie is niet ingeschakeld voor deze app-versie',
			'settings.localInference.modelSetup' => 'Gemini Nano moet eerst volledig worden gedownload voordat dit kan worden ingeschakeld',
			'settings.localInference.useLocalTitle' => 'Analyse op apparaat gebruiken',
			'settings.localInference.useLocalSubtitle' => 'Bij complexe maaltijden kunnen de resultaten minder betrouwbaar zijn.',
			'settings.localInference.disclosureTitle' => 'Voordat je analyse op apparaat inschakelt',
			'settings.localInference.disclosureBody' => 'Gemini Nano kan ingrediënten identificeren en porties schatten op ondersteunde Android-apparaten. Je gecontroleerde ingrediëntenvoorstel wordt naar Calorify gestuurd voor USDA-voedingsonderbouwing en berekening.',
			'settings.localInference.disclosureLimit1' => 'Complexe gerechten, verborgen ingrediënten en portiegroottes kunnen onjuist worden geïdentificeerd.',
			'settings.localInference.disclosureLimit2' => 'Het model kan onbeschikbaar zijn tijdens het downloaden, wanneer het bezet is, op de achtergrond draait of beperkt wordt door het apparaat.',
			'settings.localInference.disclosureLimit3' => 'Als de lokale interpretatie niet kan worden voltooid, stuurt deze bèta automatisch je oorspronkelijke maaltijdbeschrijving naar Calorify voor cloudanalyse.',
			'settings.localInference.acknowledgement' => 'Ik begrijp dat ik de gedetecteerde ingrediënten en porties moet controleren.',
			'settings.localInference.enable' => 'Bevestigen en inschakelen',
			'settings.localInference.cancel' => 'Annuleren',
			'settings.theme.title' => 'Thema',
			'settings.theme.light' => 'Licht',
			'settings.theme.dark' => 'Donker',
			'settings.theme.system' => 'Systeem',
			'settings.sendFeedback.title' => 'Feedback verzenden',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Help ${appLabel} verbeteren',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback voor ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Geef hieronder je feedback:',
			'settings.sendFeedback.appVersion' => 'App-versie',
			'settings.sendFeedback.device' => 'Apparaat',
			'settings.sendFeedback.osVersion' => 'OS-versie',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Exporteer maaltijdgeschiedenis',
			'settings.exportMealHistory.subtitle' => 'Deel een CSV van je geregistreerde maaltijden',
			'settings.exportMealHistory.shareText' => 'Je Calorify maaltijdgeschiedenis-export',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Kon maaltijdgeschiedenis niet exporteren: ${error}',
			'settings.clearAllData.title' => 'Alle gegevens wissen',
			'settings.clearAllData.subtitle' => 'Verwijder Calorify-gegevens die op dit apparaat zijn opgeslagen',
			'settings.clearAllData.localOnlySubtitle' => 'Calorify-gegevens verwijderen die op dit apparaat zijn opgeslagen',
			'settings.clearAllData.confirmationTitle' => 'Alle gegevens wissen?',
			'settings.clearAllData.confirmationMessage' => 'Hiermee worden gelogde maaltijden, favorieten en profielinstellingen permanent van dit apparaat verwijderd. Maaltijden die al met Health Connect zijn gedeeld en de toegang tot Health Connect beheer je afzonderlijk via Instellingen > Health Connect.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Hiermee worden gelogde maaltijden, favorieten en profielinstellingen permanent van dit apparaat verwijderd. Maaltijden die al met Health Connect zijn gedeeld en de toegang tot Health Connect worden afzonderlijk beheerd via Instellingen > Health Connect.',
			'settings.clearAllData.cancel' => 'Annuleren',
			'settings.clearAllData.clearEverything' => 'Alles wissen',
			'settings.debugOptions.title' => 'Debug-opties',
			'settings.developerModeEnabled' => 'Ontwikkelaarsmodus ingeschakeld!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Bekijk en beheer machtigingen',
			'settings.healthConnect.unavailable.title' => 'Health Connect niet beschikbaar',
			'settings.healthConnect.unavailable.description' => 'Health Connect wordt niet ondersteund op dit apparaat.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect wordt niet ondersteund op dit apparaat.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect vereist aandacht',
			'settings.healthConnect.updateRequired.description' => 'Installeer of werk Health Connect bij voordat je de toegang beheert.',
			'settings.healthConnect.updateRequired.action' => 'Installeren of bijwerken',
			'settings.healthConnect.permissions.title' => 'Machtigingen',
			'settings.healthConnect.permissions.description' => 'De volgende machtigingen worden gevraagd om Health Connect-integratie te bieden:',
			'settings.healthConnect.permissions.granted' => 'Toegewezen',
			'settings.healthConnect.permissions.notGranted' => 'Niet toegewezen',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Lees totaal verbrande calorieën',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Staat de app toe je totaal verbrande calorieën te lezen van Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Deze toestemming wordt gebruikt om je dagelijkse calorieverbruik in de app weer te geven, zodat je je totale energieverbruik gedurende de dag begrijpt.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Lees voedingsgegevens',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Staat de app toe voedingsgegevens te lezen van Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Deze toestemming maakt het mogelijk dat de app voedingsinformatie leest die mogelijk door andere apps naar Health Connect is gelogd, voor een compleet beeld van je voeding.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Schrijf voedingsgegevens',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Staat de app toe voedingsgegevens te schrijven naar Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Deze toestemming maakt het mogelijk dat de app je geregistreerde maaltijden synchroniseert met Health Connect, zodat je voedingsgegevens beschikbaar zijn voor andere gezondheids- en fitnessapps.',
			'settings.healthConnect.managePermissions' => 'Machtigingen beheren',
			'settings.healthConnect.openSettings' => 'Open Health Connect-instellingen',
			'settings.healthConnect.disconnect' => 'Health Connect loskoppelen',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Health Connect loskoppelen?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify verliest de toegang tot Health Connect. Gegevens die daar al zijn geschreven, worden niet verwijderd.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Loskoppelen',
			'settings.healthConnect.deleteSyncedMeals' => 'Calorify-maaltijden uit Health Connect verwijderen',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Gesynchroniseerde maaltijden verwijderen?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Maaltijden die door deze versie van Calorify zijn gesynchroniseerd uit Health Connect verwijderen? Je lokale maaltijdlogboek verandert niet. Oudere Calorify-vermeldingen moet je mogelijk nog verwijderen via Gegevens beheren in Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Gesynchroniseerde maaltijden verwijderen',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Calorify-maaltijden zijn uit Health Connect verwijderd.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Gesynchroniseerde maaltijden konden niet worden verwijderd. Probeer het opnieuw.',
			'settings.healthConnect.connectionPartial' => 'Sommige Health Connect-functies zijn ingeschakeld.',
			'settings.healthConnect.connectionComplete' => 'Beide Health Connect-functies zijn ingeschakeld.',
			'settings.healthConnect.actionFailed' => 'Health Connect kon niet worden geopend. Probeer het opnieuw.',
			'settings.healthConnect.requestPermissions' => 'Vraag machtigingen aan',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'De toestemmingsaanvraag is geannuleerd of mislukt. Probeer het opnieuw of geef machtigingen handmatig in de Health Connect-instellingen.',
			'settings.healthConnect.permissionRequestFailed' => 'Kan geen machtigingen aanvragen. Probeer het opnieuw of geef machtigingen handmatig in de Health Connect-instellingen.',
			'settings.healthConnect.requestingPermissions' => 'Bezig met aanvragen...',
			'settings.about.title' => 'Over',
			'settings.about.tagline' => 'Snel, gratis en privacygericht caloriebewustzijn',
			'settings.about.ourStory.title' => 'Ons verhaal',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} is ontstaan uit een eenvoudige frustratie: de meeste calorie-trackingapps zijn óf te ingewikkeld, vereisen constant handmatig invoer, vragen hoge abonnementskosten of schenden de privacy.\n\nAls solo-ontwikkelaar wilde ik iets eenvoudigers en eerlijkers bouwen — een app die AI gebruikt om inspanning te verminderen, snel en gratis blijft, en je gezondheidsgegevens met respect behandelt.\n\n${appLabel} is de app die ik had willen bestaan: geen accounts, geen tracking, geen advertenties — alleen heldere, praktische inzichten en jouw gezondheidsdoelen.',
			'settings.about.privacy.title' => 'Je privacy doet ertoe',
			'settings.about.privacy.description' => 'Privacy is geen bijzaak — het is een ontwerpprincipe. Dit betekent het in de praktijk:',
			'settings.about.privacy.noAccounts' => 'Geen accounts nodig\nGebruik de app direct. Geen aanmeldingen, geen identificaties.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Beperkte analyses en diagnostiek\n${appLabel} gebruikt basis-appgebeurtenissen en crashdiagnostiek om de betrouwbaarheid te verbeteren. Waarden uit gezondheidsgegevens worden niet voor advertenties gebruikt of verkocht.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Beperkte analyse en diagnostiek\n${appLabel} gebruikt basis-appgebeurtenissen en crashdiagnostiek om de betrouwbaarheid te verbeteren. Waarden uit gezondheidsgegevens worden niet gebruikt voor advertenties en niet verkocht.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Advertentievrij bij ontwerp\n${appLabel} is gebouwd om te werken zonder advertenties of datagedreven monetisatie.',
			'settings.about.privacy.noDataSelling' => 'Geen verkoop van gegevens\nJe gezondheidsgegevens worden nooit verkocht of gedeeld met derden.',
			'settings.about.privacy.localStorage' => 'Lokaal als eerste opslag\nJe gegevens blijven op je apparaat.',
			'settings.about.privacy.privacyPolicy' => 'Privacybeleid',
			'settings.about.developer.title' => 'Gemaakt door een solo-ontwikkelaar',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} is gebouwd en wordt onderhouden door een enkele solo-ontwikkelaar die zich richt op het maken van rustige, privacy-respecterende gezondheidssoftware.\n\nFeedback wordt persoonlijk gelezen en helpt de richting van de app vormgeven.',
			'settings.about.developer.website' => 'Webpagina',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Geniet je van ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Je feedback helpt ${appLabel} beter te maken voor iedereen.',
			'settings.about.feedback.rateApp' => 'Beoordeel in Play Store',
			'settings.about.feedback.sendFeedback' => 'Verstuur feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify versie ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Buildnummer ${buildNumber}',
			'reminders.title' => 'Blijf op koers met herinneringen',
			'reminders.description' => 'Ontvang vriendelijke herinneringen om je maaltijden te loggen en consistent te blijven met je voedingsdoelen',
			'reminders.notificationsEnabled' => 'Meldingen ingeschakeld',
			'reminders.notificationsDisabled' => 'Meldingen uitgeschakeld',
			'reminders.enabledSubtitle' => 'Je ontvangt maaltijdherinneringen',
			'reminders.disabledSubtitle' => 'Schakel meldingen in om maaltijdherinneringen te ontvangen',
			'reminders.mealReminders' => 'Maaltijdherinneringen',
			'reminders.breakfast' => 'Ontbijt',
			'reminders.lunch' => 'Middagmaal',
			'reminders.dinner' => 'Diner',
			'reminders.snack' => 'Tussendoortje',
			'reminders.unknown' => 'Onbekend',
			'reminders.change' => 'Wijzig',
			'reminders.enableNotifications' => 'Schakel meldingen in',
			'reminders.skipForNow' => 'Sla voorlopig over',
			'reminders.saveChanges' => 'Wijzigingen opslaan',
			'reminders.enabledSuccessfully' => 'Meldingen succesvol ingeschakeld!',
			'reminders.permissionDenied' => 'Meldingstoestemming geweigerd',
			'reminders.errorEnabling' => ({required Object error}) => 'Fout bij inschakelen van meldingen: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Fout bij voltooien van installatie: ${error}',
			'notifications.breakfast.title' => 'Tijd voor ontbijt! 🍳',
			'notifications.breakfast.body' => 'Vergeet niet je ontbijt te registreren',
			_ => null,
		} ?? switch (path) {
			'notifications.lunch.title' => 'Tijd voor lunch! 🥗',
			'notifications.lunch.body' => 'Tijd om je lunch te registreren',
			'notifications.dinner.title' => 'Tijd voor diner! 🍽️',
			'notifications.dinner.body' => 'Vergeet niet je diner te registreren',
			'notifications.snack.title' => 'Tijd voor een snack! 🍎',
			'notifications.snack.body' => 'Tijd voor een gezonde snack',
			'notifications.test.title' => 'Testmelding',
			'login.title' => 'Inloggen',
			'login.signInWithGoogle' => 'Inloggen met Google',
			'login.signInFailed' => 'Google-aanmelding is mislukt of geannuleerd.',
			'disclaimer.pleaseNote' => 'Let op',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} geeft geschatte voedingsinformatie. De nauwkeurigheid hangt af van je invoer en variaties in voedsel. Gebruik het als richtlijn, niet als definitieve bron. Raadpleeg een professional voor persoonlijk voedingsadvies.',
			'disclaimer.snap.portionSize.title' => 'Portiegrootte',
			'disclaimer.snap.portionSize.description' => 'De nauwkeurigheid van de schattingen hangt sterk af van je juiste inschatting van de portiegrootte.',
			'disclaimer.snap.preparationMethods.title' => 'Bereidingsmethoden',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Bereidingsmethoden kunnen de voedingswaarde aanzienlijk veranderen. De schattingen van ${appLabel} houden mogelijk niet altijd rekening met deze variaties.',
			'disclaimer.snap.ingredients.title' => 'Ingrediënten',
			'disclaimer.snap.ingredients.description' => 'Complexe gerechten met veel verborgen ingrediënten kunnen leiden tot minder nauwkeurige schattingen.',
			'disclaimer.snap.databaseLimitations.title' => 'Beperkingen van de database',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}\'s voedseldatabase is uitgebreid maar bevat mogelijk niet elk afzonderlijk voedingsmiddel of variant.',
			'disclaimer.weightEstimate.title' => 'Over gewichtsschatting',
			'disclaimer.weightEstimate.description' => 'De geschatte gewichtsverandering is een theoretische schatting gebaseerd op het eenvoudige model calorieën-in vs calorieën-uit. Het is bedoeld als motivatiegids, niet als voorspelling van je werkelijke gewicht.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Nauwkeurigheid van calorieën',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Deze schatting is slechts zo nauwkeurig als je geregistreerde calorie-inname en -verbruik. Onnauwkeurig loggen resulteert in een onnauwkeurige prognose.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologische factoren',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Werkelijk gewichtsverlies/-toename wordt beïnvloed door metabolisme, hormonen, slaap, stress, hydratatie en andere individuele factoren die ${appLabel} niet kan meten.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Watergewicht & Schommelingen',
			'disclaimer.weightEstimate.waterWeight.description' => 'Dagelijks gewicht kan flink fluctueren door waterretentie, spijsvertering en timing. De schatting houdt geen rekening met deze dagelijkse veranderingen.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Professionele begeleiding',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Gebruik deze schatting niet voor medische beslissingen. Raadpleeg altijd een zorgprofessional of geregistreerde diëtist voor persoonlijk gewichtsadvies.',
			'disclaimer.healthMetrics.description' => 'Deze meetwaarden helpen je je energiebehoefte te begrijpen en je voedingsdoelen te sturen.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'BMR (Basal Metabolic Rate) is het aantal calorieën dat je lichaam in rust verbrandt om basisfuncties zoals ademen en bloedsomloop te behouden. BMR is afhankelijk van je leeftijd, gender, lengte en gewicht. Een hogere BMR betekent dat je lichaam in rust meer calorieën verbrandt, vaak door meer spiermassa, jongere leeftijd of mannelijk geslacht. Een lagere BMR duidt meestal op minder spiermassa, hogere leeftijd of vrouwelijk geslacht.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'TDEE is het totale aantal calorieën dat je per dag verbrandt, inclusief je BMR plus calorieën uit fysieke activiteit en dagelijkse beweging. TDEE is afhankelijk van je BMR en activiteitsniveau. Een hogere TDEE betekent dat je in totaal meer calorieën verbrandt, meestal door actiever te zijn of een hogere BMR. Een lagere TDEE wijst op minder dagelijkse activiteit of een lagere BMR.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Dagelijks doel',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Het dagelijkse doel is je aanbevolen dagelijkse calorie-inname op basis van je TDEE en gewichtsdoel. Voor gewichtsverlies consumeer je minder calorieën dan je TDEE. Voor gewichtsonderhoud stem je je inname af op je TDEE. Voor gewichtstoename consumeer je meer calorieën dan je TDEE. Dit helpt je het gewenste gewichtsverandering in een gezond tempo te bereiken.',
			'disclaimer.calorieExpenditure.title' => 'Schatting van calorieverbruik',
			'disclaimer.calorieExpenditure.description' => 'Wanneer Health Connect-gegevens niet beschikbaar zijn, schatten we de verbrande calorieën van vandaag met behulp van je Basal Metabolic Rate (BMR) en activiteitsniveau (TDEE), geschaald voor het reeds verstreken deel van de dag.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Hoe de schatting wordt berekend',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'We berekenen je TDEE (op basis van je profiel) en vermenigvuldigen het met het aandeel van de dag dat verstreken is (uren + minuten) / 24 om de tot nu toe verbrande calorieën te schatten.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Professionele begeleiding',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Gebruik deze schatting niet voor medische beslissingen. Raadpleeg altijd een zorgprofessional of geregistreerde diëtist voor persoonlijk gewichtsadvies.',
			'localNutritionPhase4.portionSmaller' => 'Kleiner',
			'localNutritionPhase4.portionEstimated' => 'Geschat',
			'localNutritionPhase4.portionLarger' => 'Groter',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Welke portie kwam het dichtst in de buurt voor ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Welke maaltijd was dit?',
			'localNutritionPhase4.localNutritionTip' => 'Berekend met geverifieerde lokale voedingsgegevens.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Voedingsgegevens downloaden',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Gebruik geverifieerde USDA-rijen en deterministische berekening op dit apparaat wanneer alle ingrediënten gedekt zijn.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Lokale voedingsgegevens zijn niet beschikbaar voor deze appversie.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Er is geen geverifieerd voedingspakket gedownload.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Voedingsgegevens downloaden en verifiëren…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Pakket ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} gecachte USDA-rijen · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Controleren op update',
			'localNutritionPhase4.offlineNutritionClear' => 'Lokale voedingsgegevens wissen',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Lokale voedingsgegevens wissen?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Hiermee worden het gedownloade USDA-pakket en de zoekcache verwijderd. Geregistreerde maaltijden behouden de exacte voedingsmomentopname die bij het opslaan is gebruikt.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Gegevens wissen',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Lokale voedingsgegevens konden niet worden gedownload en geverifieerd: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Lokale voedingsgegevens gewist',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'Terug',
			'watch.common.cancel' => 'Annuleren',
			'watch.common.delete' => 'Verwijderen',
			'watch.common.retry' => 'Opnieuw',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Voedingsstof',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} g',
			'watch.nutrition.protein' => 'Eiwit',
			'watch.nutrition.carbs' => 'Koolhydraten',
			'watch.nutrition.fat' => 'Vetten',
			'watch.nutrition.fiber' => 'Vezels',
			'watch.sync.syncWithPhone' => 'Synchroniseer met telefoon',
			'watch.sync.syncing' => 'Synchroniseren…',
			'watch.sync.synced' => 'Gesynchroniseerd',
			'watch.sync.syncedJustNow' => 'Zojuist gesynchroniseerd',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Gesynchroniseerd ${minutes}m geleden',
			'watch.sync.failed' => 'Synchronisatie mislukt',
			'watch.sync.phoneDisconnected' => 'Telefoon niet verbonden',
			'watch.sync.tapToSync' => 'Tik om te synchroniseren',
			'watch.sync.refreshFailed' => 'Vernieuwen mislukt. Controleer je telefoon.',
			'watch.sync.openPhone' => 'Open Calorify op je telefoon en tik op vernieuwen.',
			'watch.home.today' => 'Vandaag',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} calorieën geconsumeerd van ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} boven je doel',
			'watch.home.remaining' => ({required Object calories}) => '${calories} resterend',
			'watch.home.left' => ({required Object calories}) => 'Nog ${calories}',
			'watch.home.goal' => ({required Object calories}) => '${calories} kcal doel',
			'watch.home.logMeal' => 'Maaltijd loggen',
			'watch.home.todayMeals' => 'Maaltijden van vandaag',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Maaltijden van vandaag, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Bekijk nog ${count}',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} meer maaltijden, tik om alles te bekijken',
			'watch.home.noMeals' => 'Geen maaltijden geregistreerd',
			'watch.home.noMealsSemantics' => 'Vandaag geen maaltijden geregistreerd',
			'watch.home.tapLog' => 'Tik op Loggen om te beginnen',
			'watch.home.removedFromQueue' => 'Maaltijd verwijderd uit de offline wachtrij.',
			'watch.home.removedOffline' => 'Maaltijd offline verwijderd. Deze wordt gesynchroniseerd wanneer je telefoon weer verbinding maakt.',
			'watch.home.deleteFailed' => 'Kon maaltijd niet verwijderen',
			'watch.history.title' => 'Maaltijden van vandaag',
			'watch.history.refresh' => 'Vernieuw maaltijden',
			'watch.history.loadFailed' => 'Kon maaltijden niet laden',
			'watch.history.syncFailed' => 'Kon niet synchroniseren',
			'watch.history.emptyTitle' => 'Nog geen maaltijden',
			'watch.history.emptyMessage' => 'Log een maaltijd via het beginscherm om die hier te zien.',
			'watch.favorites.title' => 'Favorieten',
			'watch.favorites.refresh' => 'Vernieuw favorieten',
			'watch.favorites.loadFailed' => 'Kon favorieten niet laden',
			'watch.favorites.syncFailed' => 'Kon niet synchroniseren',
			'watch.favorites.emptyTitle' => 'Nog geen favorieten',
			'watch.favorites.emptyMessage' => 'Markeer maaltijden met een ster in de telefoon-app zodat je ze hier met één tik kunt loggen.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} calorieën. Tik om te loggen.',
			'watch.favorites.logged' => ({required Object name}) => '${name} gelogd!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} offline opgeslagen. Deze wordt gesynchroniseerd wanneer je telefoon weer verbinding maakt.',
			'watch.favorites.saveFailed' => 'Kon de maaltijd niet opslaan. Probeer het opnieuw.',
			'watch.favorites.log' => 'Loggen',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} calorieën, gelogd om ${time}.',
			'watch.meal.longPressDelete' => 'Lang indrukken om te verwijderen.',
			'watch.meal.deleteTitle' => 'Maaltijd verwijderen?',
			'watch.voice.title' => 'Maaltijd loggen met spraak',
			'watch.voice.processing' => 'Maaltijd controleren…',
			'watch.voice.processingDescription' => 'Porties en voedingswaarden schatten',
			'watch.voice.listening' => 'Luistert',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Opname stoppen',
			'watch.voice.start' => 'Tik om opname te starten',
			'watch.voice.starting' => 'Microfoon starten…',
			'watch.voice.prompt' => 'Tik en beschrijf daarna je maaltijd',
			'watch.voice.tapToRetry' => 'Tik om het opnieuw te proberen',
			'watch.voice.example' => 'Probeer “2 rotis met dal”',
			'watch.voice.unavailable' => 'Spraakinvoer is niet beschikbaar. Controleer de microfoonmachtiging in de instellingen van je horloge.',
			'watch.voice.didNotStart' => 'Microfoon is niet gestart. Tik om het opnieuw te proberen.',
			'watch.voice.startFailed' => 'Kon opname niet starten. Controleer microfoonmachtigingen.',
			'watch.voice.allowMicrophone' => 'Sta microfoontoegang toe om maaltijden via spraak te loggen.',
			'watch.voice.needsConnection' => 'Spraakherkenning heeft een verbinding nodig. Tik om het opnieuw te proberen.',
			'watch.voice.microphoneUnavailable' => 'De microfoon is niet beschikbaar. Tik om het opnieuw te proberen.',
			'watch.voice.microphoneBusy' => 'De microfoon is in gebruik. Wacht even en probeer het opnieuw.',
			'watch.voice.languageUnsupported' => 'Spraakinvoer ondersteunt de taal van het horloge niet.',
			'watch.voice.temporarilyBusy' => 'Spraakinvoer is tijdelijk bezet. Wacht even en probeer het opnieuw.',
			'watch.voice.notRecognized' => 'Ik verstond dat niet. Tik op de microfoon en probeer het opnieuw.',
			'watch.voice.noSpeech' => 'Geen spraak gedetecteerd. Tik op de microfoon om het opnieuw te proberen.',
			'watch.voice.analysisFailed' => 'Analyse is mislukt. Probeer het opnieuw.',
			'watch.voice.mealNotIdentified' => 'Kon die maaltijd niet identificeren. Probeer deze anders te beschrijven.',
			'watch.result.title' => 'Maaltijdgegevens',
			'watch.result.savedOffline' => 'Offline opgeslagen',
			'watch.result.logged' => 'Gelogd!',
			'watch.result.mealFound' => 'Maaltijd gevonden',
			'watch.result.estimatedEnergy' => 'Geschatte energie',
			'watch.result.logMeal' => 'Maaltijd loggen',
			'watch.result.logging' => 'Bezig met loggen…',
			'watch.result.logAnother' => 'Nog een loggen',
			'watch.result.goingBack' => 'Teruggaan…',
			'watch.result.savedOfflineMessage' => 'Maaltijd offline opgeslagen. Deze wordt gesynchroniseerd wanneer je telefoon weer verbinding maakt.',
			'watch.result.saveFailed' => 'Kon de maaltijd niet opslaan. Probeer het opnieuw.',
			'common.betaTag' => 'Bèta',
			'common.close' => 'Sluiten',
			'common.kContinue' => 'Doorgaan',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Geniet je van ${appLabel}?',
			'feedbackRating.yes' => 'Ja, ik geniet ervan',
			'feedbackRating.no' => 'Niet echt',
			'feedbackRating.rateStepHeading' => 'Beoordeel in Play Store',
			'feedbackRating.emailStepHeading' => 'Stuur feedback per e-mail',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Een korte beoordeling helpt anderen ${appLabel} te vinden en houdt de ontwikkeling gaande. Wil je even een moment nemen om er één achter te laten?',
			'feedbackRating.shareFeedbackViaEmail' => 'Je feedback bepaalt wat er hierna komt — we lezen elk bericht. Wil je je gedachten delen via e-mail?',
			'feedbackRating.rateCta' => 'Beoordeel in Play Store',
			'feedbackRating.maybeLater' => 'Misschien later',
			'feedbackRating.sendFeedback' => 'Feedback versturen',
			'feedbackRating.noThanks' => 'Nee bedankt',
			'feedbackRating.aboutUsDescription' => 'Gemaakt met zorg door een klein team. We richten ons op privacy, eenvoud en helpen je betere eetgewoonten opbouwen.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Benieuwd wie erachter ${appLabel} zit? Zie ',
			'feedbackRating.aboutUsLinkLabel' => 'Over ons',
			'feedbackRating.thankYouMessage' => 'Bedankt! We vragen het later nog eens.',
			'health.syncFailed' => 'Kon niet synchroniseren met Health Connect',
			'health.mealSynced' => 'Maaltijd gesynchroniseerd met Health Connect',
			_ => null,
		};
	}
}
