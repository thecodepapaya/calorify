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
class TranslationsDe extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	@override 
	TranslationsDe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDe(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Deutsch';
	@override String get flag => '🇩🇪';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$de errors = _Translations$errors$de._(_root);
	@override late final _Translations$onboarding$de onboarding = _Translations$onboarding$de._(_root);
	@override late final _Translations$tabs$de tabs = _Translations$tabs$de._(_root);
	@override late final _Translations$home$de home = _Translations$home$de._(_root);
	@override late final _Translations$history$de history = _Translations$history$de._(_root);
	@override late final _Translations$meal$de meal = _Translations$meal$de._(_root);
	@override late final _Translations$favorites$de favorites = _Translations$favorites$de._(_root);
	@override late final _Translations$profile$de profile = _Translations$profile$de._(_root);
	@override late final _Translations$healthScore$de healthScore = _Translations$healthScore$de._(_root);
	@override late final _Translations$editProfile$de editProfile = _Translations$editProfile$de._(_root);
	@override late final _Translations$settings$de settings = _Translations$settings$de._(_root);
	@override late final _Translations$reminders$de reminders = _Translations$reminders$de._(_root);
	@override late final _Translations$notifications$de notifications = _Translations$notifications$de._(_root);
	@override late final _Translations$login$de login = _Translations$login$de._(_root);
	@override late final _Translations$disclaimer$de disclaimer = _Translations$disclaimer$de._(_root);
	@override late final _Translations$localNutritionPhase4$de localNutritionPhase4 = _Translations$localNutritionPhase4$de._(_root);
	@override late final _Translations$watch$de watch = _Translations$watch$de._(_root);
	@override late final _Translations$common$de common = _Translations$common$de._(_root);
	@override late final _Translations$feedbackRating$de feedbackRating = _Translations$feedbackRating$de._(_root);
	@override late final _Translations$health$de health = _Translations$health$de._(_root);
}

// Path: errors
class _Translations$errors$de extends Translations$errors$en {
	_Translations$errors$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Du hast zu viele Anfragen gesendet. Bitte warte einen Moment und versuche es dann erneut.';
	@override String get networkError => 'Netzwerkfehler. Bitte überprüfe deine Internetverbindung.';
	@override String get unknownError => 'Etwas ist schiefgelaufen. Bitte versuche es später noch einmal.';
	@override String get loadingProfileData => 'Fehler beim Laden der Profildaten';
	@override String get somethingWentWrong => 'Etwas ist schiefgelaufen.';
	@override String get retry => 'Erneut versuchen';
}

// Path: onboarding
class _Translations$onboarding$de extends Translations$onboarding$en {
	_Translations$onboarding$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Willkommen bei ${appLabel}';
	@override String get subtitle => 'Dein persönlicher Ernährungsbegleiter, unterstützt von AI';
	@override String get getStarted => 'Loslegen';
	@override late final _Translations$onboarding$features$de features = _Translations$onboarding$features$de._(_root);
	@override late final _Translations$onboarding$gender$de gender = _Translations$onboarding$gender$de._(_root);
	@override late final _Translations$onboarding$height$de height = _Translations$onboarding$height$de._(_root);
	@override late final _Translations$onboarding$weight$de weight = _Translations$onboarding$weight$de._(_root);
	@override late final _Translations$onboarding$age$de age = _Translations$onboarding$age$de._(_root);
	@override late final _Translations$onboarding$bmiScale$de bmiScale = _Translations$onboarding$bmiScale$de._(_root);
	@override late final _Translations$onboarding$weightGoal$de weightGoal = _Translations$onboarding$weightGoal$de._(_root);
	@override late final _Translations$onboarding$activityLevel$de activityLevel = _Translations$onboarding$activityLevel$de._(_root);
	@override late final _Translations$onboarding$healthConnect$de healthConnect = _Translations$onboarding$healthConnect$de._(_root);
	@override late final _Translations$onboarding$reinforcement$de reinforcement = _Translations$onboarding$reinforcement$de._(_root);
}

// Path: tabs
class _Translations$tabs$de extends Translations$tabs$en {
	_Translations$tabs$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Übersicht';
	@override String get history => 'Verlauf';
}

// Path: home
class _Translations$home$de extends Translations$home$en {
	_Translations$home$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$de aiSummary = _Translations$home$aiSummary$de._(_root);
	@override late final _Translations$home$dailyGoal$de dailyGoal = _Translations$home$dailyGoal$de._(_root);
	@override late final _Translations$home$dailySummary$de dailySummary = _Translations$home$dailySummary$de._(_root);
	@override late final _Translations$home$intakeProgress$de intakeProgress = _Translations$home$intakeProgress$de._(_root);
	@override late final _Translations$home$intakeHistory$de intakeHistory = _Translations$home$intakeHistory$de._(_root);
	@override late final _Translations$home$mealLog$de mealLog = _Translations$home$mealLog$de._(_root);
	@override late final _Translations$home$mealDescription$de mealDescription = _Translations$home$mealDescription$de._(_root);
	@override late final _Translations$home$favoriteMeals$de favoriteMeals = _Translations$home$favoriteMeals$de._(_root);
	@override late final _Translations$home$mealSnap$de mealSnap = _Translations$home$mealSnap$de._(_root);
	@override late final _Translations$home$connectHealth$de connectHealth = _Translations$home$connectHealth$de._(_root);
}

// Path: history
class _Translations$history$de extends Translations$history$en {
	_Translations$history$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Keine Mahlzeiten erfasst';
	@override String get emptyMessage => 'Mach ein Foto deiner letzten Mahlzeit, um sie hier zu protokollieren.';
	@override String get today => 'Heute';
	@override String get yesterday => 'Gestern';
}

// Path: meal
class _Translations$meal$de extends Translations$meal$en {
	_Translations$meal$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Oh nein!';
	@override String get delete => 'Löschen';
	@override String get editMeal => 'Mahlzeit bearbeiten';
	@override String get addMeal => 'Mahlzeit hinzufügen';
	@override String get saveMeal => 'Mahlzeit speichern';
	@override String get save => 'Speichern';
	@override String get mealName => 'Name der Mahlzeit';
	@override String get mealNameHint => 'z. B. Rührei mit Toast';
	@override String get nameRequired => 'Gib einen Namen für die Mahlzeit ein, bevor du sie speicherst.';
	@override String get mealQuantity => 'Mengenangabe';
	@override String get mealQuantityHint => 'z. B. 1 Schale, 2 Scheiben';
	@override String get timeOfMeal => 'Uhrzeit der Mahlzeit';
	@override String get timeOfMealHint => 'Wähle die Uhrzeit, zu der du gegessen hast';
	@override String get mealType => 'Mahlzeittyp';
	@override late final _Translations$meal$nutrition$de nutrition = _Translations$meal$nutrition$de._(_root);
	@override late final _Translations$meal$deleteConfirmation$de deleteConfirmation = _Translations$meal$deleteConfirmation$de._(_root);
	@override String get addedToLog => 'Mahlzeit zu deinem Protokoll hinzugefügt!';
	@override String couldNotAdd({required Object error}) => 'Konnte Mahlzeit nicht hinzufügen: ${error}';
	@override String get savedSuccessfully => 'Mahlzeit erfolgreich hinzugefügt!';
	@override String get updatedSuccessfully => 'Mahlzeit erfolgreich aktualisiert!';
	@override String errorSaving({required Object error}) => 'Fehler beim Speichern der Mahlzeit: ${error}';
	@override String get removedFromFavorites => 'Aus Favoriten entfernt!';
	@override String get savedAsFavorite => 'Mahlzeit als Favorit gespeichert!';
	@override String get unfavorite => 'Als Favorit entfernen';
	@override String couldNotUpdateFavorite({required Object error}) => 'Favorit konnte nicht aktualisiert werden: ${error}';
	@override String get feedbackThanks => 'Danke für dein Feedback!';
	@override String get reanalysisUpdated => 'Mahlzeitanalyse basierend auf deinem Feedback aktualisiert.';
	@override String failedToProcess({required Object error}) => 'Verarbeitung fehlgeschlagen: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Bildverarbeitung fehlgeschlagen: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Fehler beim Komprimieren des Bildes: ${error}';
	@override String get failedToSave => 'Daten konnten nicht gespeichert werden. Bitte versuche es erneut.';
	@override String get skip => 'Überspringen';
	@override late final _Translations$meal$questionFlow$de questionFlow = _Translations$meal$questionFlow$de._(_root);
	@override late final _Translations$meal$analysis$de analysis = _Translations$meal$analysis$de._(_root);
	@override late final _Translations$meal$localInference$de localInference = _Translations$meal$localInference$de._(_root);
	@override late final _Translations$meal$feedback$de feedback = _Translations$meal$feedback$de._(_root);
}

// Path: favorites
class _Translations$favorites$de extends Translations$favorites$en {
	_Translations$favorites$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoriten';
	@override String get empty => 'Noch keine Lieblingsmahlzeiten.';
	@override String get searchPlaceholder => 'Favorisierte Mahlzeiten durchsuchen';
	@override String get searchEmptyTitle => 'Keine Favoriten gefunden';
	@override String get searchEmptySubtitle => 'Versuche einen anderen Namen, eine andere Menge oder einen anderen Mahlzeittyp.';
	@override String get sortLabel => 'Favoriten sortieren';
	@override String get undo => 'Rückgängig';
	@override String removed({required Object name}) => '${name} aus Favoriten entfernt';
	@override late final _Translations$favorites$sortOptions$de sortOptions = _Translations$favorites$sortOptions$de._(_root);
}

// Path: profile
class _Translations$profile$de extends Translations$profile$en {
	_Translations$profile$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Keine Profildaten gefunden';
	@override String get yourProfile => 'Dein Profil';
	@override String get viewAndManage => 'Deine Gesundheitsinformationen anzeigen und verwalten';
	@override late final _Translations$profile$sections$de sections = _Translations$profile$sections$de._(_root);
	@override String get gender => 'Geschlecht';
	@override String get height => 'Größe';
	@override String get weight => 'Gewicht';
	@override String get age => 'Alter';
	@override String get weightGoal => 'Gewichtsziel';
	@override String get targetWeight => 'Zielgewicht';
	@override String get activityLevel => 'Aktivitätslevel';
	@override String get healthMetrics => 'Gesundheitswerte';
	@override String get notSet => 'Nicht gesetzt';
	@override String get years => 'Jahre';
	@override String get updatedSuccessfully => 'Profil erfolgreich aktualisiert!';
	@override late final _Translations$profile$calculatedValues$de calculatedValues = _Translations$profile$calculatedValues$de._(_root);
}

// Path: healthScore
class _Translations$healthScore$de extends Translations$healthScore$en {
	_Translations$healthScore$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health-Score';
	@override String get whyThisScore => 'Warum diese Bewertung?';
	@override String get note => 'Diese Bewertung ist eine AI‑Schätzung basierend auf erkannten Zutaten und Nährstoffdichte. Ziehe für Ernährungsberatung stets eine Fachperson zu Rate.';
	@override String get unhealthy => 'Ungesund';
	@override String get healthy => 'Gesund';
	@override String get neutral => 'Neutraler Bereich';
}

// Path: editProfile
class _Translations$editProfile$de extends Translations$editProfile$en {
	_Translations$editProfile$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil bearbeiten';
	@override late final _Translations$editProfile$sections$de sections = _Translations$editProfile$sections$de._(_root);
	@override String get gender => 'Geschlecht';
	@override String get dateOfBirth => 'Geburtsdatum';
	@override String get height => 'Größe';
	@override String get weight => 'Gewicht';
	@override String get weightGoal => 'Gewichtsziel';
	@override String get activityLevel => 'Aktivitätslevel';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperiales System';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'Pfund (lb)';
	@override String get metricCm => 'Metrisch (cm)';
	@override String get imperialFtIn => 'Imperiales System (ft/in)';
	@override String get metricKg => 'Metrisch (kg)';
	@override String get imperialLbs => 'Imperiales System (lbs)';
	@override late final _Translations$editProfile$genders$de genders = _Translations$editProfile$genders$de._(_root);
	@override late final _Translations$editProfile$weightGoals$de weightGoals = _Translations$editProfile$weightGoals$de._(_root);
	@override late final _Translations$editProfile$activityLevels$de activityLevels = _Translations$editProfile$activityLevels$de._(_root);
}

// Path: settings
class _Translations$settings$de extends Translations$settings$en {
	_Translations$settings$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Einstellungen';
	@override late final _Translations$settings$sections$de sections = _Translations$settings$sections$de._(_root);
	@override late final _Translations$settings$editProfile$de editProfile = _Translations$settings$editProfile$de._(_root);
	@override late final _Translations$settings$language$de language = _Translations$settings$language$de._(_root);
	@override late final _Translations$settings$heightUnit$de heightUnit = _Translations$settings$heightUnit$de._(_root);
	@override late final _Translations$settings$weightUnit$de weightUnit = _Translations$settings$weightUnit$de._(_root);
	@override late final _Translations$settings$mealReminders$de mealReminders = _Translations$settings$mealReminders$de._(_root);
	@override late final _Translations$settings$localInference$de localInference = _Translations$settings$localInference$de._(_root);
	@override late final _Translations$settings$theme$de theme = _Translations$settings$theme$de._(_root);
	@override late final _Translations$settings$sendFeedback$de sendFeedback = _Translations$settings$sendFeedback$de._(_root);
	@override late final _Translations$settings$exportMealHistory$de exportMealHistory = _Translations$settings$exportMealHistory$de._(_root);
	@override late final _Translations$settings$clearAllData$de clearAllData = _Translations$settings$clearAllData$de._(_root);
	@override late final _Translations$settings$debugOptions$de debugOptions = _Translations$settings$debugOptions$de._(_root);
	@override String get developerModeEnabled => 'Entwicklermodus aktiviert!';
	@override late final _Translations$settings$healthConnect$de healthConnect = _Translations$settings$healthConnect$de._(_root);
	@override late final _Translations$settings$about$de about = _Translations$settings$about$de._(_root);
	@override late final _Translations$settings$appInfo$de appInfo = _Translations$settings$appInfo$de._(_root);
}

// Path: reminders
class _Translations$reminders$de extends Translations$reminders$en {
	_Translations$reminders$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bleib mit Erinnerungen auf Kurs';
	@override String get description => 'Erhalte freundliche Erinnerungen, um Mahlzeiten zu protokollieren und konsequent bei deinen Ernährungszielen zu bleiben';
	@override String get notificationsEnabled => 'Benachrichtigungen aktiviert';
	@override String get notificationsDisabled => 'Benachrichtigungen deaktiviert';
	@override String get enabledSubtitle => 'Du erhältst Mahlzeit‑Erinnerungen';
	@override String get disabledSubtitle => 'Aktiviere Benachrichtigungen, um Mahlzeit‑Erinnerungen zu erhalten';
	@override String get mealReminders => 'Mahlzeit‑Erinnerungen';
	@override String get breakfast => 'Frühstück';
	@override String get lunch => 'Mittagessen';
	@override String get dinner => 'Abendessen';
	@override String get snack => 'Zwischenmahlzeit';
	@override String get unknown => 'Unbekannt';
	@override String get change => 'Ändern';
	@override String get enableNotifications => 'Benachrichtigungen aktivieren';
	@override String get skipForNow => 'Vorerst überspringen';
	@override String get saveChanges => 'Änderungen speichern';
	@override String get enabledSuccessfully => 'Benachrichtigungen erfolgreich aktiviert!';
	@override String get permissionDenied => 'Benachrichtigungsberechtigung verweigert';
	@override String errorEnabling({required Object error}) => 'Fehler beim Aktivieren der Benachrichtigungen: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Fehler beim Abschließen der Einrichtung: ${error}';
}

// Path: notifications
class _Translations$notifications$de extends Translations$notifications$en {
	_Translations$notifications$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$de breakfast = _Translations$notifications$breakfast$de._(_root);
	@override late final _Translations$notifications$lunch$de lunch = _Translations$notifications$lunch$de._(_root);
	@override late final _Translations$notifications$dinner$de dinner = _Translations$notifications$dinner$de._(_root);
	@override late final _Translations$notifications$snack$de snack = _Translations$notifications$snack$de._(_root);
	@override late final _Translations$notifications$test$de test = _Translations$notifications$test$de._(_root);
}

// Path: login
class _Translations$login$de extends Translations$login$en {
	_Translations$login$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anmelden';
	@override String get signInWithGoogle => 'Mit Google anmelden';
	@override String get signInFailed => 'Google-Anmeldung fehlgeschlagen oder abgebrochen.';
}

// Path: disclaimer
class _Translations$disclaimer$de extends Translations$disclaimer$en {
	_Translations$disclaimer$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Bitte beachten';
	@override late final _Translations$disclaimer$snap$de snap = _Translations$disclaimer$snap$de._(_root);
	@override late final _Translations$disclaimer$weightEstimate$de weightEstimate = _Translations$disclaimer$weightEstimate$de._(_root);
	@override late final _Translations$disclaimer$healthMetrics$de healthMetrics = _Translations$disclaimer$healthMetrics$de._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$de calorieExpenditure = _Translations$disclaimer$calorieExpenditure$de._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$de extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get portionSmaller => 'Kleiner';
	@override String get portionEstimated => 'Geschätzt';
	@override String get portionLarger => 'Größer';
	@override String portionQuestion({required Object ingredient}) => 'Welche Portion passte am besten zu ${ingredient}?';
	@override String get mealTypeQuestion => 'Um welche Mahlzeit handelte es sich?';
	@override String get localNutritionTip => 'Anhand verifizierter lokaler Nährwertdaten berechnet.';
	@override String get offlineNutritionTitle => 'Nährwertdaten herunterladen';
	@override String get offlineNutritionSubtitle => 'Verifizierte USDA-Datensätze und deterministische Berechnung auf diesem Gerät verwenden, wenn alle Zutaten abgedeckt sind.';
	@override String get offlineNutritionUnavailable => 'Lokale Nährwertdaten sind für diese App-Version nicht verfügbar.';
	@override String get offlineNutritionNotDownloaded => 'Es wurde kein verifiziertes Nährwertpaket heruntergeladen.';
	@override String get offlineNutritionInstalling => 'Nährwertdaten werden heruntergeladen und überprüft…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Paket ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} zwischengespeicherte USDA-Datensätze · ${size}';
	@override String get offlineNutritionUpdate => 'Nach Update suchen';
	@override String get offlineNutritionClear => 'Lokale Nährwertdaten löschen';
	@override String get offlineNutritionClearTitle => 'Lokale Nährwertdaten löschen?';
	@override String get offlineNutritionClearBody => 'Dadurch werden das heruntergeladene USDA-Paket und der Suchcache entfernt. Protokollierte Mahlzeiten behalten den exakten Nährwert-Schnappschuss, der beim Speichern verwendet wurde.';
	@override String get offlineNutritionClearConfirm => 'Daten löschen';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Lokale Nährwertdaten konnten nicht heruntergeladen und überprüft werden: ${error}';
	@override String get offlineNutritionCleared => 'Lokale Nährwertdaten gelöscht';
}

// Path: watch
class _Translations$watch$de extends Translations$watch$en {
	_Translations$watch$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$de common = _Translations$watch$common$de._(_root);
	@override late final _Translations$watch$nutrition$de nutrition = _Translations$watch$nutrition$de._(_root);
	@override late final _Translations$watch$sync$de sync = _Translations$watch$sync$de._(_root);
	@override late final _Translations$watch$home$de home = _Translations$watch$home$de._(_root);
	@override late final _Translations$watch$history$de history = _Translations$watch$history$de._(_root);
	@override late final _Translations$watch$favorites$de favorites = _Translations$watch$favorites$de._(_root);
	@override late final _Translations$watch$meal$de meal = _Translations$watch$meal$de._(_root);
	@override late final _Translations$watch$voice$de voice = _Translations$watch$voice$de._(_root);
	@override late final _Translations$watch$result$de result = _Translations$watch$result$de._(_root);
}

// Path: common
class _Translations$common$de extends Translations$common$en {
	_Translations$common$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Beta';
	@override String get close => 'Schließen';
	@override String get kContinue => 'Weiter';
}

// Path: feedbackRating
class _Translations$feedbackRating$de extends Translations$feedbackRating$en {
	_Translations$feedbackRating$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Gefällt dir ${appLabel}?';
	@override String get yes => 'Ja, mir gefällt es';
	@override String get no => 'Nicht wirklich';
	@override String get rateStepHeading => 'Im Play Store bewerten';
	@override String get emailStepHeading => 'Feedback per E‑Mail senden';
	@override String soloDevMessage({required Object appLabel}) => 'Eine kurze Bewertung hilft anderen, ${appLabel} zu finden, und unterstützt die Entwicklung. Würdest du kurz eine Bewertung abgeben?';
	@override String get shareFeedbackViaEmail => 'Dein Feedback bestimmt, was als Nächstes kommt — wir lesen jede Nachricht. Möchtest du deine Gedanken per E‑Mail teilen?';
	@override String get rateCta => 'Im Play Store bewerten';
	@override String get maybeLater => 'Vielleicht später';
	@override String get sendFeedback => 'Feedback senden';
	@override String get noThanks => 'Nein, danke';
	@override String get aboutUsDescription => 'Mit Sorgfalt von einem kleinen Team entwickelt. Wir legen Wert auf Datenschutz, Einfachheit und helfen dir, bessere Essgewohnheiten aufzubauen.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Neugierig, wer hinter ${appLabel} steckt? Sieh ';
	@override String get aboutUsLinkLabel => 'Über uns';
	@override String get thankYouMessage => 'Danke! Wir fragen ein anderes Mal noch einmal.';
}

// Path: health
class _Translations$health$de extends Translations$health$en {
	_Translations$health$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Synchronisierung mit Health Connect fehlgeschlagen';
	@override String get mealSynced => 'Mahlzeit mit Health Connect synchronisiert';
}

// Path: onboarding.features
class _Translations$onboarding$features$de extends Translations$onboarding$features$en {
	_Translations$onboarding$features$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$de foodRecognition = _Translations$onboarding$features$foodRecognition$de._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$de aiAnalysis = _Translations$onboarding$features$aiAnalysis$de._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$de healthIntegration = _Translations$onboarding$features$healthIntegration$de._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$de extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Was ist dein Geschlecht?';
	@override String get description => 'Dein Geschlecht hilft uns, deinen Ruheumsatz (BMR) genau zu berechnen.';
	@override String get next => 'Weiter';
}

// Path: onboarding.height
class _Translations$onboarding$height$de extends Translations$onboarding$height$en {
	_Translations$onboarding$height$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wie groß bist du?';
	@override String get description => 'Deine Körpergröße hilft uns, BMI und Energiebedarf genau zu berechnen.';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperiales System';
	@override String get next => 'Weiter';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$de extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Wie viel wiegst du aktuell?';
	@override String get currentDescription => 'Dein aktuelles Gewicht ist wichtig, um deine täglichen Ziele zu personalisieren.';
	@override String get targetTitle => 'Welches Zielgewicht hast du?';
	@override String get targetDescription => 'Ein Zielgewicht hilft uns, deinen langfristigen Plan zu bestimmen.';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperiales System';
	@override String get next => 'Weiter';
}

// Path: onboarding.age
class _Translations$onboarding$age$de extends Translations$onboarding$age$en {
	_Translations$onboarding$age$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wann ist dein Geburtstag?';
	@override String get description => 'Dein Alter hilft uns, deinen Kalorienbedarf genau zu berechnen.';
	@override String get next => 'Weiter';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$de extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Unter';
	@override String get healthy => 'Gesund';
	@override String get overweight => 'Über';
	@override String get obese => 'Adipös';
	@override late final _Translations$onboarding$bmiScale$categories$de categories = _Translations$onboarding$bmiScale$categories$de._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$de messages = _Translations$onboarding$bmiScale$messages$de._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$de extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Was ist dein Ziel?';
	@override String get description => 'Wähle das Ziel, das am besten beschreibt, was du erreichen möchtest';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$de extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wie aktiv bist du?';
	@override String get description => 'Das hilft uns, deinen täglichen Kalorienbedarf genauer zu berechnen';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$de extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mit Health Connect verbinden';
	@override String get description => 'Synchronisiere deine Gesundheitsdaten für bessere Einblicke und automatische Kalorienverfolgung';
	@override String get overviewDescription => 'Nutze verbrannte Kalorien für dein Tagesziel und teile protokollierte Mahlzeiten optional mit Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$de automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$de._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$de caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$de._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$de progressInsights = _Translations$onboarding$healthConnect$progressInsights$de._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$de shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$de._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$de seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$de._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$de userControl = _Translations$onboarding$healthConnect$userControl$de._(_root);
	@override String get connected => 'Health Connect verbunden';
	@override String get notConnected => 'Health Connect nicht verbunden';
	@override String get setup => 'Health Connect einrichten';
	@override String get skipForNow => 'Später überspringen';
	@override String get statusConnected => 'Health Connect ist verbunden.';
	@override String get statusSuccess => 'Health Connect wurde erfolgreich verbunden!';
	@override String get statusNotConnected => 'Wähle die Health Connect-Funktionen aus, die du aktivieren möchtest.';
	@override String get statusPartial => 'Health Connect ist teilweise verbunden. Aktiviere die verbleibende Berechtigung, um beide Funktionen zu nutzen.';
	@override String get statusProviderUpdateRequired => 'Installiere oder aktualisiere Health Connect, um fortzufahren.';
	@override String get statusUnavailable => 'Health Connect wird auf diesem Gerät nicht unterstützt.';
	@override String get installOrUpdate => 'Installieren oder aktualisieren';
	@override String get manageAccess => 'Zugriff verwalten';
	@override String statusPermissionDenied({required Object appLabel}) => 'Berechtigung verweigert. Bitte aktiviere die Health Connect-Berechtigungen in den Einstellungen deines Telefons für ${appLabel}.';
	@override String statusError({required Object error}) => 'Fehler bei der Einrichtung von Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$de extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$de trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$de._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$de healthProfile = _Translations$onboarding$reinforcement$healthProfile$de._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$de goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$de._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$de extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Deine AI-Zusammenfassung';
	@override String get logMore => 'Trage in den nächsten Tagen mehr Mahlzeiten ein, um personalisierte AI-Einblicke zu erhalten.';
	@override String get loading => 'Lade deine Zusammenfassung...';
	@override String mealCount({required Object count}) => '${count} Mahlzeiten protokolliert';
	@override String macroBalanceScore({required Object score}) => 'Balancestufe ${score}';
	@override String get topFoods => 'Top-Lebensmittel';
	@override String get trendUp => 'Kalorien steigen';
	@override String get trendDown => 'Kalorien sinken';
	@override String get trendSteady => 'Kalorien stabil';
	@override String generatedAt({required Object time}) => 'Aktualisiert ${time}';
}

// Path: home.dailyGoal
class _Translations$home$dailyGoal$de extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Setze dein Tagesziel';
	@override String get titleSet => 'Dein Tagesziel';
	@override String get description => 'Bereit für deine Gesundheitsreise? Lege unten dein tägliches Kalorienziel fest, um loszulegen.';
	@override String get descriptionSet => 'Dein Kompass ist gesetzt! Dies ist dein tägliches Kalorienziel zur Orientierung.';
	@override String get yourGoal => 'Dein Ziel';
	@override String get goal => 'Ziel';
	@override String get dailyCalories => 'Tägliche Kalorien (kcal)';
	@override String get setGoal => 'Ziel festlegen';
	@override String get intake => 'Zufuhr';
	@override String get burned => 'Verbrannt';
	@override String get weightImpact => 'Gewichtsauswirkung';
	@override String get estLoss => 'Geschätzter Verlust von';
	@override String get estGain => 'Geschätzter Zuwachs von';
	@override String get kcal => 'Kilokalorien (kcal)';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$de extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tagesübersicht';
	@override String get calories => 'Kalorien';
	@override String get carbs => 'Kohlenhydrate';
	@override String get protein => 'Eiweiß';
	@override String get fat => 'Fett';
	@override String get fiber => 'Ballaststoffe';
	@override String get grams => 'Gramm';
	@override String get chartAccessibilityLabel => 'Makronährstoff-Diagramm';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$de extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Heutige Makroaufteilung';
	@override String get target => 'Ziel';
	@override String get current => 'Aktuell';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$de extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '7-Tage-Makroverlauf';
	@override String get trendTitle => 'Heutiger Trend';
	@override String peakHour({required Object hour}) => 'Höchstwert: ${hour}:00';
	@override String get noHistoryYet => 'Noch keine Daten';
	@override String get startLogging => 'Beginne, Mahlzeiten zu protokollieren, um deine\n7‑tägigen Makrotrends hier zu sehen';
}

// Path: home.mealLog
class _Translations$home$mealLog$de extends Translations$home$mealLog$en {
	_Translations$home$mealLog$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Protokollierte Mahlzeiten';
	@override String get emptyMessage => 'Mach ein Foto deiner letzten Mahlzeit, um sie hier zu protokollieren.';
	@override String get noMealsToday => 'Heute keine Mahlzeiten erfasst';
	@override String get seeAllMeals => 'Alle Mahlzeiten ansehen';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$de extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Schnell hinzufügen mit AI';
	@override String get description => 'Beschreibe deine Mahlzeit und lass AI die Details übernehmen.';
	@override String get hint => 'z. B. Zum Frühstück hatte ich eine große Schale Haferflocken mit einer aufgeschnittenen Banane und einem Becher Whey ...';
	@override String get analyzeMeal => 'Mahlzeit analysieren';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$de extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lieblingsmahlzeiten';
	@override String get description => 'Füge schnell eine deiner Lieblingsmahlzeiten hinzu.';
	@override String get noFavorites => 'Noch keine Favoriten.';
	@override String get addFavoriteHint => 'Klicke den Stern bei einer Mahlzeit, um sie zu favorisieren.';
	@override String get seeAll => 'Alle anzeigen';
	@override String get add => 'Hinzufügen';
}

// Path: home.mealSnap
class _Translations$home$mealSnap$de extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Foto & Verfolge deine Mahlzeit';
	@override String get description => 'Nutze deine Kamera, um ein Foto deines Essens für die AI-Analyse zu machen.';
	@override String get openCamera => 'Kamera öffnen';
	@override String get gallery => 'Galerie';
	@override String get compressingPhoto => 'Foto wird optimiert…';
	@override String get uploadingPhoto => 'Foto wird hochgeladen…';
}

// Path: home.connectHealth
class _Translations$home$connectHealth$de extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mit Health Connect synchronisieren';
	@override String get description => 'Synchronisiere deine Ernährungsdaten mit Health Connect';
	@override String get install => 'Installieren';
	@override String get dataUseDescription => 'Nutze verbrannte Kalorien für dein Ziel und teile protokollierte Mahlzeiten';
	@override String get installOrUpdate => 'Installieren oder aktualisieren';
	@override String get connect => 'Verbinden';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$de extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorien';
	@override String get carbs => 'Kohlenhydrate (g)';
	@override String get protein => 'Eiweiß (g)';
	@override String get fat => 'Fett (g)';
	@override String get fiber => 'Ballaststoffe (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$de extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahlzeit löschen';
	@override String get message => 'Möchtest du diesen Eintrag wirklich löschen?';
	@override String get cancel => 'Abbrechen';
	@override String get delete => 'Löschen';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$de extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Frage ${current} von ${total}';
	@override String get noQuestionsAvailable => 'Keine Fragen verfügbar';
	@override String get next => 'Weiter';
	@override String get continueLabel => 'Weiter';
}

// Path: meal.analysis
class _Translations$meal$analysis$de extends Translations$meal$analysis$en {
	_Translations$meal$analysis$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wir analysieren deine Mahlzeit';
	@override String get stepStarted => 'Starte…';
	@override String get stepDecomposition => 'Mahlzeit wird erfasst…';
	@override String get stepIngredients => 'Zutaten werden mit Nährwertdaten abgeglichen…';
	@override String get stepUncertainty => 'Vertrauensniveau prüfen…';
	@override String get stepMealTypeQuestion => 'Fast fertig…';
	@override String get stepResult => 'Ergebnis wird abgeschlossen…';
	@override String get stepError => 'Etwas ist schiefgelaufen';
	@override String get stepDefault => 'Mahlzeit wird analysiert…';
	@override String get progressUnderstand => 'Mahlzeit erfassen';
	@override String get progressMatch => 'Nährwerte der Zutaten suchen';
	@override String get progressCheck => 'Portionen und Sicherheit prüfen';
	@override String get progressMealType => 'Mahlzeittyp auswählen';
	@override String get progressFinish => 'Kalorien und Makros berechnen';
	@override String get detectedIngredientHeading => 'Erkannte Zutaten';
	@override String ingredientsOverflow({required Object count}) => '${count} weitere';
	@override String ingredientsLine({required Object count}) => '${count} Zutaten erkannt';
	@override String get ingredientsPending => 'Zutaten werden gescannt…';
	@override String mealPreviewDescription({required Object text}) => '„${text}“';
	@override String get offlineTip0 => 'Tipp: Konstanz schlägt Perfektion – regelmäßige Einträge zeigen die wirklich wichtigen Muster.';
	@override String get offlineTip1 => 'Tipp: Bei Fotos helfen natürliches Licht und Draufsicht für genauere Portionsschätzungen.';
	@override String get offlineTip2 => 'Tipp: Erwähne Getränke, Soßen und Öl – sie liefern oft vergessene Kalorien.';
	@override String get offlineTip3 => 'Tipp: Eine kurze Mengenangabe (z. B. 1 Schale, großer Kaffee) macht Schätzungen präziser.';
	@override String get offlineTip4 => 'Tipp: Auch nachträgliches Eintragen stärkt die Gewohnheit; Perfektion ist optional.';
	@override String get offlineTip5 => 'Tipp: Gib an, wie etwas zubereitet wurde, wenn das viele Kalorien ausmacht (gebraten vs. gebacken).';
}

// Path: meal.localInference
class _Translations$meal$localInference$de extends Translations$meal$localInference$en {
	_Translations$meal$localInference$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Erkannte Zutaten prüfen';
	@override String get reviewSubtitle => 'Dies wurde auf Ihrem Gerät interpretiert. Bitte korrigieren Sie Namen oder Mengen, bevor die Nährwerte berechnet werden.';
	@override String get mealName => 'Mahlzeitenname';
	@override String get ingredient => 'Zutat';
	@override String get grams => 'Geschätzte Gramm';
	@override String get removeIngredient => 'Zutat entfernen';
	@override String get continueLabel => 'Weiter';
	@override String get invalidProposal => 'Fügen Sie mindestens eine Zutat hinzu und geben Sie eine positive Grammzahl an.';
	@override String get localUnavailable => 'Die On-Device-Analyse ist derzeit nicht verfügbar.';
}

// Path: meal.feedback
class _Translations$meal$feedback$de extends Translations$meal$feedback$en {
	_Translations$meal$feedback$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Was stimmt hier nicht?';
	@override String get subtitle => 'Hilf uns, die Analyse zu verbessern, indem du ein oder mehrere Probleme auswählst.';
	@override String get tellUsMore => 'Erzähl uns mehr';
	@override String get describeIncorrect => 'Beschreibe, was falsch war';
	@override String get submit => 'Absenden';
	@override String get issueFoodIdentification => 'Lebensmittelzuordnung';
	@override String get issuePortionSize => 'Portionsgröße';
	@override String get issueCalorieDistribution => 'Kalorienverteilung';
	@override String get issueMacrosWrong => 'Makros sind falsch';
	@override String get issueMissingItems => 'Fehlende Zutaten';
	@override String get issueExtraItems => 'Zusätzliche Zutaten';
	@override String get issueOther => 'Andere';
}

// Path: favorites.sortOptions
class _Translations$favorites$sortOptions$de extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Neueste';
	@override String get calories => 'Kalorien';
	@override String get alphabetical => 'A–Z';
}

// Path: profile.sections
class _Translations$profile$sections$de extends Translations$profile$sections$en {
	_Translations$profile$sections$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'GRUNDINFORMATIONEN';
	@override String get goalsAndActivity => 'ZIELE & AKTIVITÄT';
	@override String get calculatedValues => 'BERECHNETE WERTE';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$de extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Tagesziel';
	@override String get calPerDay => 'cal/Tag';
	@override String get notAvailable => 'k. A.';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$de extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSÖNLICHE DATEN';
	@override String get physicalMeasurements => 'KÖRPERMAßE';
	@override String get goalsAndActivity => 'ZIELE & AKTIVITÄT';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$de extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get male => 'Männlich';
	@override String get female => 'Weiblich';
	@override String get other => 'Andere';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$de extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$de loseWeight = _Translations$editProfile$weightGoals$loseWeight$de._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$de maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$de._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$de gainWeight = _Translations$editProfile$weightGoals$gainWeight$de._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$de extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$de sedentary = _Translations$editProfile$activityLevels$sedentary$de._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$de lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$de._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$de moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$de._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$de veryActive = _Translations$editProfile$activityLevels$veryActive$de._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$de extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$de._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$de extends Translations$settings$sections$en {
	_Translations$settings$sections$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALISIERUNG';
	@override String get notifications => 'BENACHRICHTIGUNGEN';
	@override String get healthConnect => 'Health Connect';
	@override String get localInference => 'ON-DEVICE-ANALYSE';
	@override String get supportAndLegal => 'SUPPORT & RECHTLICHES';
	@override String get about => 'ÜBER';
	@override String get dangerZone => 'RISIKOBEREICH';
	@override String get developer => 'ENTWICKLER';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$de extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil bearbeiten';
	@override String get subtitle => 'Aktualisiere deine persönlichen Daten';
}

// Path: settings.language
class _Translations$settings$language$de extends Translations$settings$language$en {
	_Translations$settings$language$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sprache';
	@override String get subtitle => 'Wähle deine bevorzugte Sprache';
	@override String get searchHint => 'Sprachen suchen...';
	@override String get noResults => 'Keine Ergebnisse gefunden';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$de extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Längeneinheit';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$de extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gewichtseinheit';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$de extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahlzeit‑Erinnerungen';
	@override String get subtitle => 'Bleib mit rechtzeitigen Erinnerungen auf Kurs';
}

// Path: settings.localInference
class _Translations$settings$localInference$de extends Translations$settings$localInference$en {
	_Translations$settings$localInference$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'On-Device-Mahlzeitenanalyse';
	@override String get subtitle => 'Unterstützte Mahlzeiten mit Gemini Nano interpretieren, bevor die Nährwerte berechnet werden';
	@override String get unavailable => 'Auf diesem Gerät nicht verfügbar';
	@override String get rolloutUnavailable => 'Kompatible Hardware gefunden, aber diese Funktion ist für diese App-Version nicht aktiviert';
	@override String get modelSetup => 'Gemini Nano muss den Download abschließen, bevor dies aktiviert werden kann';
	@override String get useLocalTitle => 'On-Device-Analyse verwenden';
	@override String get useLocalSubtitle => 'Optional und standardmäßig deaktiviert. Ergebnisse bei komplexen Mahlzeiten können weniger zuverlässig sein.';
	@override String get disclosureTitle => 'Bevor Sie die On-Device-Analyse aktivieren';
	@override String get disclosureBody => 'Gemini Nano kann Zutaten identifizieren und Portionen auf unterstützten Android-Geräten schätzen. Ihr geprüfter Zutatenvorschlag wird an Calorify zur USDA-Nährwertprüfung und Berechnung gesendet.';
	@override String get disclosureLimit1 => 'Komplexe Gerichte, versteckte Zutaten und Portionsgrößen können falsch identifiziert werden.';
	@override String get disclosureLimit2 => 'Das Modell kann während des Downloads, bei hoher Auslastung, im Hintergrund oder durch das Gerät eingeschränkt sein.';
	@override String get disclosureLimit3 => 'Wenn die lokale Interpretation nicht abgeschlossen werden kann, sendet diese Beta-Version Ihre ursprüngliche Mahlzeitenbeschreibung automatisch an Calorify zur Cloud-Analyse.';
	@override String get acknowledgement => 'Ich verstehe, dass ich die erkannten Zutaten und Portionen prüfen sollte.';
	@override String get enable => 'Bestätigen und aktivieren';
	@override String get cancel => 'Abbrechen';
}

// Path: settings.theme
class _Translations$settings$theme$de extends Translations$settings$theme$en {
	_Translations$settings$theme$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Design';
	@override String get light => 'Hell';
	@override String get dark => 'Dunkel';
	@override String get system => 'Systemeinstellung';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$de extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Feedback senden';
	@override String subtitle({required Object appLabel}) => 'Hilf uns, ${appLabel} zu verbessern';
	@override String emailSubject({required Object appLabel}) => 'Feedback zur ${appLabel}-App';
	@override String get emailBodyPrefix => 'Bitte gib dein Feedback unten ein:';
	@override String get appVersion => 'App-Version';
	@override String get device => 'Gerät';
	@override String get osVersion => 'OS‑Version';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _Translations$settings$exportMealHistory$de extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahlzeitenverlauf exportieren';
	@override String get subtitle => 'Teile eine CSV deiner protokollierten Mahlzeiten';
	@override String get shareText => 'Dein Calorify‑Mahlzeitenexport';
	@override String failed({required Object error}) => 'Mahlzeitenverlauf konnte nicht exportiert werden: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$de extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alle Daten löschen';
	@override String get subtitle => 'Alle deine Informationen unwiderruflich löschen';
	@override String get localOnlySubtitle => 'Auf diesem Gerät gespeicherte Calorify-Daten löschen';
	@override String get confirmationTitle => 'Alle Daten löschen?';
	@override String get confirmationMessage => 'Dieser Vorgang kann nicht rückgängig gemacht werden. Alle protokollierten Mahlzeiten, Favoriten und Profileinstellungen werden dauerhaft gelöscht.';
	@override String get localOnlyConfirmationMessage => 'Dadurch werden protokollierte Mahlzeiten, Favoriten und Profileinstellungen dauerhaft von diesem Gerät gelöscht. Bereits mit Health Connect geteilte Mahlzeiten und der Health Connect-Zugriff werden separat unter Einstellungen > Health Connect verwaltet.';
	@override String get cancel => 'Abbrechen';
	@override String get clearEverything => 'Alles löschen';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$de extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug‑Optionen';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$de extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Berechtigungen anzeigen und verwalten';
	@override late final _Translations$settings$healthConnect$unavailable$de unavailable = _Translations$settings$healthConnect$unavailable$de._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$de updateRequired = _Translations$settings$healthConnect$updateRequired$de._(_root);
	@override late final _Translations$settings$healthConnect$permissions$de permissions = _Translations$settings$healthConnect$permissions$de._(_root);
	@override String get managePermissions => 'Berechtigungen verwalten';
	@override String get openSettings => 'Health Connect Einstellungen öffnen';
	@override String get disconnect => 'Health Connect trennen';
	@override String get disconnectConfirmationTitle => 'Health Connect trennen?';
	@override String get disconnectConfirmationMessage => 'Calorify verliert den Zugriff auf Health Connect. Bereits dort gespeicherte Daten werden nicht gelöscht.';
	@override String get disconnectConfirmationAction => 'Trennen';
	@override String get deleteSyncedMeals => 'Calorify-Mahlzeiten aus Health Connect löschen';
	@override String get deleteSyncedMealsConfirmationTitle => 'Synchronisierte Mahlzeiten löschen?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Möchtest du Mahlzeiten, die von dieser Calorify-Version synchronisiert wurden, aus Health Connect löschen? Dein lokales Mahlzeitenprotokoll bleibt unverändert. Ältere Calorify-Einträge müssen möglicherweise weiterhin über Daten verwalten in Health Connect entfernt werden.';
	@override String get deleteSyncedMealsConfirmationAction => 'Synchronisierte Mahlzeiten löschen';
	@override String get deleteSyncedMealsSuccess => 'Calorify-Mahlzeiten wurden aus Health Connect gelöscht.';
	@override String get deleteSyncedMealsFailed => 'Synchronisierte Mahlzeiten konnten nicht gelöscht werden. Bitte versuche es erneut.';
	@override String get connectionPartial => 'Einige Health Connect-Funktionen sind aktiviert.';
	@override String get connectionComplete => 'Beide Health Connect-Funktionen sind aktiviert.';
	@override String get actionFailed => 'Health Connect konnte nicht geöffnet werden. Bitte versuche es erneut.';
	@override String get requestPermissions => 'Berechtigungen anfordern';
	@override String get permissionRequestCancelledOrFailed => 'Die Berechtigungsanfrage wurde abgebrochen oder ist fehlgeschlagen. Bitte versuche es erneut oder erteile die Berechtigungen manuell in den Health Connect‑Einstellungen.';
	@override String get permissionRequestFailed => 'Berechtigungen konnten nicht angefragt werden. Bitte versuche es erneut oder erteile die Berechtigungen manuell in den Health Connect‑Einstellungen.';
	@override String get requestingPermissions => 'Anfrage läuft...';
}

// Path: settings.about
class _Translations$settings$about$de extends Translations$settings$about$en {
	_Translations$settings$about$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Über';
	@override String get tagline => 'Schnell, kostenlos und datenschutzorientiert: Kalorien-Bewusstsein';
	@override late final _Translations$settings$about$ourStory$de ourStory = _Translations$settings$about$ourStory$de._(_root);
	@override late final _Translations$settings$about$privacy$de privacy = _Translations$settings$about$privacy$de._(_root);
	@override late final _Translations$settings$about$developer$de developer = _Translations$settings$about$developer$de._(_root);
	@override late final _Translations$settings$about$feedback$de feedback = _Translations$settings$about$feedback$de._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$de extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify Version ${version}';
	@override String build({required Object buildNumber}) => 'Buildnummer ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$de extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Frühstückszeit! 🍳';
	@override String get body => 'Vergiss nicht, dein Frühstück zu erfassen';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$de extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mittagszeit! 🥗';
	@override String get body => 'Zeit, dein Mittagessen zu protokollieren';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$de extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Abendessen! 🍽️';
	@override String get body => 'Vergiss nicht, dein Abendessen zu erfassen';
}

// Path: notifications.snack
class _Translations$notifications$snack$de extends Translations$notifications$snack$en {
	_Translations$notifications$snack$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snack‑Zeit! 🍎';
	@override String get body => 'Zeit für einen gesunden Snack';
}

// Path: notifications.test
class _Translations$notifications$test$de extends Translations$notifications$test$en {
	_Translations$notifications$test$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Test‑Benachrichtigung';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$de extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} liefert geschätzte Nährwertangaben. Die Genauigkeit hängt von deinen Eingaben und Lebensmittelvarianten ab. Nutze die Angaben als Orientierung, nicht als endgültige Quelle. Konsultiere eine Fachperson für personalisierte Ernährungsberatung.';
	@override late final _Translations$disclaimer$snap$portionSize$de portionSize = _Translations$disclaimer$snap$portionSize$de._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$de preparationMethods = _Translations$disclaimer$snap$preparationMethods$de._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$de ingredients = _Translations$disclaimer$snap$ingredients$de._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$de databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$de._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$de extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zur Gewichtsschätzung';
	@override String get description => 'Die prognostizierte Gewichtsveränderung ist eine theoretische Schätzung basierend auf dem einfachen Kalorien‑ein‑/Kalorien‑aus‑Modell. Sie dient nur zur Motivation und nicht als Vorhersage deines tatsächlichen Gewichts.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$de calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$de._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$de biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$de._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$de waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$de._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$de professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$de._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$de extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Diese Kennzahlen helfen dir, den Energiebedarf deines Körpers zu verstehen und deine Ernährungsziele zu steuern.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$de bmr = _Translations$disclaimer$healthMetrics$bmr$de._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$de tdee = _Translations$disclaimer$healthMetrics$tdee$de._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$de dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$de._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$de extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Geschätzter Kalorienverbrauch';
	@override String get description => 'Wenn Health Connect-Daten nicht verfügbar sind, schätzen wir den heutigen Kalorienverbrauch anhand deines Ruheumsatzes (BMR) und Aktivitätsniveaus (TDEE), skaliert auf den bereits vergangenen Teil des Tages.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$de howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$de._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$de professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$de._(_root);
}

// Path: watch.common
class _Translations$watch$common$de extends Translations$watch$common$en {
	_Translations$watch$common$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get back => 'Zurück';
	@override String get cancel => 'Abbrechen';
	@override String get delete => 'Löschen';
	@override String get retry => 'Erneut versuchen';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$de extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Nährstoff';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} g';
	@override String get protein => 'Eiweiß';
	@override String get carbs => 'Kohlenhydrate';
	@override String get fat => 'Fett';
	@override String get fiber => 'Ballaststoffe';
}

// Path: watch.sync
class _Translations$watch$sync$de extends Translations$watch$sync$en {
	_Translations$watch$sync$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Mit Telefon synchronisieren';
	@override String get syncing => 'Synchronisiere…';
	@override String get synced => 'Synchronisiert';
	@override String get syncedJustNow => 'Gerade synchronisiert';
	@override String syncedMinutesAgo({required Object minutes}) => 'Vor ${minutes} Min. synchronisiert';
	@override String get failed => 'Synchronisierung fehlgeschlagen';
	@override String get phoneDisconnected => 'Telefon getrennt';
	@override String get tapToSync => 'Tippen zum Synchronisieren';
	@override String get refreshFailed => 'Aktualisierung fehlgeschlagen. Prüfe dein Telefon.';
	@override String get openPhone => 'Öffne Calorify auf deinem Telefon, dann tippe auf Aktualisieren.';
}

// Path: watch.home
class _Translations$watch$home$de extends Translations$watch$home$en {
	_Translations$watch$home$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get today => 'Heute';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} kcal von ${goal} aufgenommen. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} über dem Ziel';
	@override String remaining({required Object calories}) => '${calories} verbleibend';
	@override String left({required Object calories}) => '${calories} übrig';
	@override String goal({required Object calories}) => '${calories} kcal Ziel';
	@override String get logMeal => 'Mahlzeit protokollieren';
	@override String get todayMeals => 'Mahlzeiten heute';
	@override String todayMealsCount({required Object count}) => 'Mahlzeiten heute, ${count}';
	@override String viewMore({required Object count}) => 'Zeige ${count} weitere';
	@override String viewMoreSemantics({required Object count}) => '${count} weitere Mahlzeiten, tippe, um alle anzuzeigen';
	@override String get noMeals => 'Keine Mahlzeiten protokolliert';
	@override String get noMealsSemantics => 'Heute keine Mahlzeiten protokolliert';
	@override String get tapLog => 'Tippe auf ‚Protokollieren‘, um zu beginnen.';
	@override String get removedFromQueue => 'Mahlzeit aus Offline‑Warteschlange entfernt.';
	@override String get removedOffline => 'Mahlzeit offline entfernt. Sie wird synchronisiert, wenn dein Telefon sich wieder verbindet.';
	@override String get deleteFailed => 'Mahlzeit konnte nicht gelöscht werden';
}

// Path: watch.history
class _Translations$watch$history$de extends Translations$watch$history$en {
	_Translations$watch$history$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahlzeiten heute';
	@override String get refresh => 'Mahlzeiten aktualisieren';
	@override String get loadFailed => 'Mahlzeiten konnten nicht geladen werden';
	@override String get syncFailed => 'Synchronisierung fehlgeschlagen';
	@override String get emptyTitle => 'Noch keine Mahlzeiten';
	@override String get emptyMessage => 'Erfasse eine Mahlzeit auf der Startseite, um sie hier zu sehen.';
}

// Path: watch.favorites
class _Translations$watch$favorites$de extends Translations$watch$favorites$en {
	_Translations$watch$favorites$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoriten';
	@override String get refresh => 'Favoriten aktualisieren';
	@override String get loadFailed => 'Favoriten konnten nicht geladen werden';
	@override String get syncFailed => 'Synchronisierung fehlgeschlagen';
	@override String get emptyTitle => 'Noch keine Favoriten';
	@override String get emptyMessage => 'Markiere Mahlzeiten in der Telefon-App mit einem Stern, um sie hier mit einem Tipp zu protokollieren.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} kcal. Tippe zum Protokollieren.';
	@override String logged({required Object name}) => '${name} protokolliert!';
	@override String savedOffline({required Object name}) => '${name} offline gespeichert. Wird synchronisiert, wenn dein Telefon sich wieder verbindet.';
	@override String get saveFailed => 'Mahlzeit konnte nicht gespeichert werden. Bitte erneut versuchen.';
	@override String get log => 'Protokollieren';
}

// Path: watch.meal
class _Translations$watch$meal$de extends Translations$watch$meal$en {
	_Translations$watch$meal$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kcal, protokolliert um ${time}.';
	@override String get longPressDelete => 'Lange drücken zum Löschen.';
	@override String get deleteTitle => 'Mahlzeit löschen?';
}

// Path: watch.voice
class _Translations$watch$voice$de extends Translations$watch$voice$en {
	_Translations$watch$voice$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sprachprotokoll für Mahlzeiten';
	@override String get processing => 'Prüfe deine Mahlzeit…';
	@override String get processingDescription => 'Ermittle Portionen und Nährwerte';
	@override String get listening => 'Aufnahme läuft';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Aufnahme stoppen';
	@override String get start => 'Tippe, um Aufnahme zu starten';
	@override String get starting => 'Mikrofon wird gestartet…';
	@override String get prompt => 'Tippe, dann beschreibe deine Mahlzeit';
	@override String get tapToRetry => 'Tippe, um es erneut zu versuchen';
	@override String get example => 'Versuche z. B. „2 Rotis mit Dal“';
	@override String get unavailable => 'Spracheingabe ist nicht verfügbar. Prüfe die Mikrofonberechtigung in den Uhreinstellungen.';
	@override String get didNotStart => 'Mikrofon hat nicht gestartet. Tippe, um es erneut zu versuchen.';
	@override String get startFailed => 'Aufnahme konnte nicht gestartet werden. Prüfe die Mikrofonberechtigungen.';
	@override String get allowMicrophone => 'Erlaube den Mikrofonzugriff, um Mahlzeiten per Sprache zu erfassen.';
	@override String get needsConnection => 'Spracherkennung benötigt eine Verbindung. Tippe, um es erneut zu versuchen.';
	@override String get microphoneUnavailable => 'Das Mikrofon ist nicht verfügbar. Tippe, um es erneut zu versuchen.';
	@override String get microphoneBusy => 'Das Mikrofon ist beschäftigt. Warte kurz und versuche es erneut.';
	@override String get languageUnsupported => 'Die Spracheingabe unterstützt die Sprache der Uhr nicht.';
	@override String get temporarilyBusy => 'Die Spracheingabe ist vorübergehend beschäftigt. Warte kurz und versuche es erneut.';
	@override String get notRecognized => 'Ich habe das nicht verstanden. Tippe auf das Mikrofon und versuche es erneut.';
	@override String get noSpeech => 'Keine Sprache erkannt. Tippe auf das Mikrofon, um es erneut zu versuchen.';
	@override String get analysisFailed => 'Analyse fehlgeschlagen. Bitte erneut versuchen.';
	@override String get mealNotIdentified => 'Konnte die Mahlzeit nicht identifizieren. Versuche, sie anders zu beschreiben.';
}

// Path: watch.result
class _Translations$watch$result$de extends Translations$watch$result$en {
	_Translations$watch$result$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahlzeitdetails';
	@override String get savedOffline => 'Offline gespeichert';
	@override String get logged => 'Protokolliert!';
	@override String get mealFound => 'Mahlzeit gefunden';
	@override String get estimatedEnergy => 'Geschätzte Energie';
	@override String get logMeal => 'Mahlzeit protokollieren';
	@override String get logging => 'Protokolliere…';
	@override String get logAnother => 'Weitere protokollieren';
	@override String get goingBack => 'Zurück…';
	@override String get savedOfflineMessage => 'Mahlzeit offline gespeichert. Sie wird synchronisiert, wenn dein Telefon sich wieder verbindet.';
	@override String get saveFailed => 'Mahlzeit konnte nicht gespeichert werden. Bitte erneut versuchen.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$de extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intelligente Lebensmittelerkennung';
	@override String get description => 'Mach ein Foto und lass AI dein Gericht identifizieren';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$de extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-Analyse';
	@override String get description => 'Erhalte sofort Nährwertangaben aus deinen Beschreibungen';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$de extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gesundheitsintegration';
	@override String get description => 'Verbinde dich mit Health Connect für bessere Einblicke';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$de extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Untergewicht';
	@override String get healthyWeight => 'Gesundes Gewicht';
	@override String get overweight => 'Übergewicht';
	@override String get obese => 'Adipös';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$de extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Wir helfen dir dabei, einen gesunden Plan zu erstellen, um ein ausgeglichenes Gewicht mit nährstoffreichen Mahlzeiten zu erreichen.';
	@override String get healthy => 'Gut gemacht! Du liegst im gesunden Bereich. Wir helfen dir, deine Vitalität und Energie zu erhalten.';
	@override String overweight({required Object appLabel}) => '${appLabel} macht deine Reise einfacher mit AI-gestütztem Tracking, damit du bequem dein Ziel erreichst.';
	@override String get obese => 'Wir unterstützen dich mit persönlicher Anleitung und nachhaltigen Strategien für deine Gesundheitsziele.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$de extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatische Kalorienverfolgung';
	@override String get description => 'Erfasste verbrannte Kalorien aus deinen Fitness-Apps verfolgen';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$de extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verbrannte Kalorien';
	@override String get description => 'Die heute insgesamt verbrannten Kalorien aus Health Connect lesen';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$de extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fortschritts-Einblicke';
	@override String get description => 'Erhalte detaillierte Einblicke in deine Gesundheitsentwicklungen';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$de extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Protokollierte Mahlzeiten teilen';
	@override String get description => 'In Calorify protokollierte Mahlzeiten in Health Connect schreiben';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$de extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nahtlose Integration';
	@override String get description => 'Synchronisiere Daten aus deinen bevorzugten Gesundheits-Apps';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$de extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du hast die Kontrolle';
	@override String get description => 'Wähle eine beliebige Berechtigung und ändere den Zugriff jederzeit';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$de extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du bist nicht allein';
	@override String get genericMessage => 'Studien zeigen, dass konsequentes Tracking der wichtigste Prädiktor für langfristigen Erfolg ist.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Bei einer ${age}-jährigen Person (${gender}), die ${goal} möchte, ist konsequentes Tracking der wichtigste Erfolgsfaktor.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} macht es 10x einfacher als manuelle Aufzeichnung.';
	@override String get getStartedTitle => 'Bereit loszulegen?';
	@override String get tipPhoto => 'Fotografiere deine Mahlzeiten für eine sofortige Analyse';
	@override String get tipConsistency => 'Trage regelmäßig ein, um echte Fortschritte zu sehen';
	@override String get tipProgress => 'Verfolge deinen Fortschritt täglich, um motiviert zu bleiben';
	@override String get button => 'Los geht\'s';
	@override String get defaultGender => 'Person';
	@override String get defaultGoal => 'ein gesünderes Du';
}

// Path: onboarding.reinforcement.healthProfile
class _Translations$onboarding$reinforcement$healthProfile$de extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dein Gesundheitsprofil';
	@override String bmiDescription({required Object bmi}) => 'Basierend auf deinen Daten liegt dein BMI bei ${bmi}.';
	@override String get finalizeDescription => 'Fassen wir dein Profil zusammen, um dein Erlebnis zu personalisieren.';
	@override String get goalGain => 'zunehmen';
	@override String get goalLose => 'abnehmen';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Um dein Ziel zu erreichen, wirst du ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Du hast dein Zielgewicht erreicht! Wir helfen dir, es zu halten.';
	@override String get button => 'Los geht\'s';
}

// Path: onboarding.reinforcement.goalLifestyle
class _Translations$onboarding$reinforcement$goalLifestyle$de extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hervorragender Start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Du hast den ersten Schritt in Richtung ${goalText} gemacht. Da du ${activityText} bist, passt ${appLabel} deine Ziele an deinen Lebensstil an.';
	@override String get personalizedTargets => 'Personalisierte Kalorienziele';
	@override String get aiMealDetection => 'AI-gestützte Mahlzeitenerkennung';
	@override String get macroBreakdowns => 'Detaillierte Makronährstoffaufschlüsselung';
	@override String get button => 'Los geht\'s';
	@override String get defaultGoal => 'deine Ziele';
	@override String get defaultActivity => 'aktiv';
}

// Path: editProfile.weightGoals.loseWeight
class _Translations$editProfile$weightGoals$loseWeight$de extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Abnehmen';
	@override String get description => 'Erschaffe ein Kaloriendefizit zum Abnehmen';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$de extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gewicht halten';
	@override String get description => 'Halte dein aktuelles Gewicht';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$de extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Zunehmen';
	@override String get description => 'Erschaffe einen Kalorienüberschuss zum Zunehmen';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$de extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Wenig aktiv';
	@override String get description => 'Kaum oder keine Bewegung';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$de extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Leicht aktiv';
	@override String get description => 'Leichte Aktivität 1–3 Tage/Woche';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$de extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderat aktiv';
	@override String get description => 'Mäßige Aktivität 3–5 Tage/Woche';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$de extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sehr aktiv';
	@override String get description => 'Intensive Aktivität 6–7 Tage/Woche';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$de extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrem aktiv';
	@override String get description => 'Sehr harte Aktivität oder körperlich anstrengender Beruf';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$de extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect nicht verfügbar';
	@override String get description => 'Health Connect ist auf diesem Gerät nicht verfügbar. Bitte installiere Health Connect aus dem Play Store (Android 9+) oder aktualisiere auf Android 14+.';
	@override String get unsupportedDescription => 'Health Connect wird auf diesem Gerät nicht unterstützt.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$de extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect erfordert Aufmerksamkeit';
	@override String get description => 'Installiere oder aktualisiere Health Connect, bevor du den Zugriff verwaltest.';
	@override String get action => 'Installieren oder aktualisieren';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$de extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berechtigungen';
	@override String get description => 'Die folgenden Berechtigungen werden angefragt, um Health Connect zu integrieren:';
	@override String get granted => 'Gewährt';
	@override String get notGranted => 'Nicht gewährt';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$de caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$de._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$de nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$de._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$de nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$de._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$de extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unsere Geschichte';
	@override String content({required Object appLabel}) => '${appLabel} entstand aus einer einfachen Frustration: Die meisten Kalorienzähler sind entweder zu kompliziert, verlangen ständige manuelle Eingaben, verlangen hohe Abo‑Gebühren oder gefährden die Privatsphäre.\n\nAls Solo‑Entwickler wollte ich etwas Einfacheres und Gerechteres schaffen — eine App, die AI nutzt, um Aufwand zu reduzieren, schnell und kostenlos bleibt und deine Gesundheitsdaten respektvoll behandelt.\n\n${appLabel} ist die App, die ich mir gewünscht hätte: keine Konten, kein Tracking, keine Werbung — nur klare, praktische Einblicke und deine Gesundheitsziele.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$de extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dein Datenschutz ist wichtig';
	@override String get description => 'Datenschutz ist kein Nebengedanke, sondern ein Designprinzip. Das bedeutet in der Praxis:';
	@override String get noAccounts => 'Keine Konten erforderlich\nApp sofort nutzen. Keine Registrierung, keine Identitäten.';
	@override String noTracking({required Object appLabel}) => 'Kein Verhaltens‑Tracking\n${appLabel} überwacht deine Aktivitäten nicht, erstellt keine Nutzungsprofile und verfolgt dich nicht über Apps oder Websites hinweg.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Begrenzte Analysen und Diagnosen\n${appLabel} verwendet grundlegende App-Ereignisse und Absturzdiagnosen, um die Zuverlässigkeit zu verbessern. Werte aus Gesundheitsdaten werden weder für Werbung verwendet noch verkauft.';
	@override String noAds({required Object appLabel}) => 'Werbefrei aus Prinzip\n${appLabel} wurde so entwickelt, dass es ohne Werbung oder datengetriebene Monetarisierung funktioniert.';
	@override String get noDataSelling => 'Kein Verkauf von Daten\nDeine Gesundheitsdaten werden niemals an Dritte verkauft oder weitergegeben.';
	@override String get localStorage => 'Lokale Speicherung\nDeine Daten bleiben auf deinem Gerät.';
	@override String get privacyPolicy => 'Datenschutzerklärung';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$de extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Von einem Solo‑Entwickler entwickelt';
	@override String description({required Object appLabel}) => '${appLabel} wird von einem einzelnen Entwickler gebaut und gepflegt, der sich auf ruhige, datenschutzfreundliche Gesundheitssoftware konzentriert.\n\nFeedback wird persönlich gelesen und beeinflusst die Richtung der App.';
	@override String get website => 'Webseite';
	@override String get email => 'E‑Mail';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$de extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Gefällt dir ${appLabel}?';
	@override String description({required Object appLabel}) => 'Dein Feedback macht ${appLabel} für alle besser.';
	@override String get rateApp => 'Im Play Store bewerten';
	@override String get sendFeedback => 'Feedback senden';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$de extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Portionsgröße';
	@override String get description => 'Die Genauigkeit der Schätzungen hängt stark von deiner korrekten Einschätzung der Portionsgröße ab.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$de extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zubereitungsmethoden';
	@override String description({required Object appLabel}) => 'Zubereitungsarten können den Nährstoffgehalt erheblich verändern. Die Schätzungen von ${appLabel} berücksichtigen diese Variationen möglicherweise nicht vollständig.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$de extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zutaten';
	@override String get description => 'Komplexe Gerichte mit vielen versteckten Zutaten können zu ungenaueren Schätzungen führen.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$de extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Datenbankbegrenzungen';
	@override String description({required Object appLabel}) => 'Die Lebensmitteldatenbank von ${appLabel} ist umfangreich, enthält aber möglicherweise nicht jedes einzelne Lebensmittel oder jede Variante.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$de extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Genauigkeit der Kalorien';
	@override String get description => 'Diese Schätzung ist nur so genau wie deine erfassten Kalorienzufuhr- und verbrauchsangaben. Ungenaue Einträge führen zu ungenauen Vorhersagen.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$de extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologische Faktoren';
	@override String description({required Object appLabel}) => 'Gewichtsveränderungen werden von Stoffwechsel, Hormonen, Schlaf, Stress, Flüssigkeitshaushalt und anderen individuellen Faktoren beeinflusst, die ${appLabel} nicht messen kann.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$de extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wassergewicht & Schwankungen';
	@override String get description => 'Das tägliche Gewicht kann durch Wassereinlagerungen, Verdauung und Zeitpunkt stark schwanken. Die Schätzung berücksichtigt diese täglichen Veränderungen nicht.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$de extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionelle Beratung';
	@override String get description => 'Nutze diese Schätzung nicht für medizinische Entscheidungen. Konsultiere stets eine Fachperson oder eine registrierte Ernährungsberaterin/einen registrierten Ernährungsberater für persönliche Gewichtsmanagement‑Beratung.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$de extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Der Ruheumsatz (BMR) ist die Menge an Kalorien, die dein Körper im Ruhezustand zur Aufrechterhaltung grundlegender Funktionen wie Atmung und Kreislauf verbrennt. Der BMR hängt von Alter, Geschlecht, Größe und Gewicht ab. Ein höherer BMR bedeutet, dass dein Körper im Ruhezustand mehr Kalorien verbrennt – oft bedingt durch mehr Muskelmasse, jüngeres Alter oder männliches Geschlecht. Ein niedrigerer BMR weist typischerweise auf weniger Muskelmasse, höheres Alter oder weibliches Geschlecht hin.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$de extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Der gesamte tägliche Energieverbrauch (TDEE) ist die Gesamtmenge an Kalorien, die du pro Tag verbrennst, einschließlich BMR sowie Kalorien durch körperliche Aktivität und Alltagsbewegung. Der TDEE hängt von deinem BMR und deinem Aktivitätsniveau ab. Ein höherer TDEE bedeutet, dass du insgesamt mehr Kalorien verbrennst, meist durch mehr Aktivität oder einen höheren BMR. Ein niedrigerer TDEE deutet auf weniger tägliche Aktivität oder einen niedrigeren BMR hin.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$de extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tagesziel';
	@override String get description => 'Das Tagesziel ist deine empfohlene tägliche Kalorienzufuhr basierend auf deinem TDEE und deinem Gewichtsziel. Beim Abnehmen konsumierst du weniger Kalorien als dein TDEE. Zur Gewichtserhaltung entspricht deine Aufnahme dem TDEE. Zum Zunehmen konsumierst du mehr Kalorien als dein TDEE. Das hilft dir, die gewünschte Gewichtsentwicklung in einem gesunden Tempo zu erreichen.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$de extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wie die Schätzung berechnet wird';
	@override String get description => 'Wir berechnen deinen TDEE (auf Basis deines Profils) und multiplizieren ihn mit dem Anteil des bereits vergangenen Tages (Stunden + Minuten) / 24, um die bisher verbrannten Kalorien abzuschätzen.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$de extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionelle Beratung';
	@override String get description => 'Nutze diese Schätzung nicht für medizinische Entscheidungen. Konsultiere stets eine Fachperson oder eine registrierte Ernährungsberaterin/einen registrierten Ernährungsberater für persönliche Gewichtsmanagement‑Beratung.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$de extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gesamte verbrannte Kalorien lesen';
	@override String get description => 'Ermöglicht der App, deine insgesamt verbrannten Kalorien aus Health Connect zu lesen.';
	@override String get usage => 'Diese Berechtigung wird verwendet, um deinen täglichen Kalorienverbrauch in der App anzuzeigen und so deinen gesamten Energieverbrauch über den Tag zu verstehen.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$de extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ernährungsdaten lesen';
	@override String get description => 'Ermöglicht der App, Ernährungsdaten aus Health Connect zu lesen.';
	@override String get usage => 'Diese Berechtigung erlaubt der App, Ernährungsinformationen zu lesen, die möglicherweise von anderen mit Health Connect verbundenen Apps protokolliert wurden, und bietet so eine umfassende Übersicht deiner Ernährung.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$de extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$de._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ernährungsdaten schreiben';
	@override String get description => 'Ermöglicht der App, Ernährungsdaten in Health Connect zu schreiben.';
	@override String get usage => 'Diese Berechtigung erlaubt der App, deine protokollierten Mahlzeiten mit Health Connect zu synchronisieren, sodass deine Ernährungsdaten auch anderen Gesundheits‑ und Fitness‑Apps zur Verfügung stehen.';
}

/// The flat map containing all translations for locale <de>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Deutsch',
			'flag' => '🇩🇪',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Du hast zu viele Anfragen gesendet. Bitte warte einen Moment und versuche es dann erneut.',
			'errors.networkError' => 'Netzwerkfehler. Bitte überprüfe deine Internetverbindung.',
			'errors.unknownError' => 'Etwas ist schiefgelaufen. Bitte versuche es später noch einmal.',
			'errors.loadingProfileData' => 'Fehler beim Laden der Profildaten',
			'errors.somethingWentWrong' => 'Etwas ist schiefgelaufen.',
			'errors.retry' => 'Erneut versuchen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Willkommen bei ${appLabel}',
			'onboarding.subtitle' => 'Dein persönlicher Ernährungsbegleiter, unterstützt von AI',
			'onboarding.getStarted' => 'Loslegen',
			'onboarding.features.foodRecognition.title' => 'Intelligente Lebensmittelerkennung',
			'onboarding.features.foodRecognition.description' => 'Mach ein Foto und lass AI dein Gericht identifizieren',
			'onboarding.features.aiAnalysis.title' => 'AI-Analyse',
			'onboarding.features.aiAnalysis.description' => 'Erhalte sofort Nährwertangaben aus deinen Beschreibungen',
			'onboarding.features.healthIntegration.title' => 'Gesundheitsintegration',
			'onboarding.features.healthIntegration.description' => 'Verbinde dich mit Health Connect für bessere Einblicke',
			'onboarding.gender.title' => 'Was ist dein Geschlecht?',
			'onboarding.gender.description' => 'Dein Geschlecht hilft uns, deinen Ruheumsatz (BMR) genau zu berechnen.',
			'onboarding.gender.next' => 'Weiter',
			'onboarding.height.title' => 'Wie groß bist du?',
			'onboarding.height.description' => 'Deine Körpergröße hilft uns, BMI und Energiebedarf genau zu berechnen.',
			'onboarding.height.metric' => 'Metrisch',
			'onboarding.height.imperial' => 'Imperiales System',
			'onboarding.height.next' => 'Weiter',
			'onboarding.weight.currentTitle' => 'Wie viel wiegst du aktuell?',
			'onboarding.weight.currentDescription' => 'Dein aktuelles Gewicht ist wichtig, um deine täglichen Ziele zu personalisieren.',
			'onboarding.weight.targetTitle' => 'Welches Zielgewicht hast du?',
			'onboarding.weight.targetDescription' => 'Ein Zielgewicht hilft uns, deinen langfristigen Plan zu bestimmen.',
			'onboarding.weight.metric' => 'Metrisch',
			'onboarding.weight.imperial' => 'Imperiales System',
			'onboarding.weight.next' => 'Weiter',
			'onboarding.age.title' => 'Wann ist dein Geburtstag?',
			'onboarding.age.description' => 'Dein Alter hilft uns, deinen Kalorienbedarf genau zu berechnen.',
			'onboarding.age.next' => 'Weiter',
			'onboarding.bmiScale.underweight' => 'Unter',
			'onboarding.bmiScale.healthy' => 'Gesund',
			'onboarding.bmiScale.overweight' => 'Über',
			'onboarding.bmiScale.obese' => 'Adipös',
			'onboarding.bmiScale.categories.underweight' => 'Untergewicht',
			'onboarding.bmiScale.categories.healthyWeight' => 'Gesundes Gewicht',
			'onboarding.bmiScale.categories.overweight' => 'Übergewicht',
			'onboarding.bmiScale.categories.obese' => 'Adipös',
			'onboarding.bmiScale.messages.underweight' => 'Wir helfen dir dabei, einen gesunden Plan zu erstellen, um ein ausgeglichenes Gewicht mit nährstoffreichen Mahlzeiten zu erreichen.',
			'onboarding.bmiScale.messages.healthy' => 'Gut gemacht! Du liegst im gesunden Bereich. Wir helfen dir, deine Vitalität und Energie zu erhalten.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} macht deine Reise einfacher mit AI-gestütztem Tracking, damit du bequem dein Ziel erreichst.',
			'onboarding.bmiScale.messages.obese' => 'Wir unterstützen dich mit persönlicher Anleitung und nachhaltigen Strategien für deine Gesundheitsziele.',
			'onboarding.weightGoal.title' => 'Was ist dein Ziel?',
			'onboarding.weightGoal.description' => 'Wähle das Ziel, das am besten beschreibt, was du erreichen möchtest',
			'onboarding.activityLevel.title' => 'Wie aktiv bist du?',
			'onboarding.activityLevel.description' => 'Das hilft uns, deinen täglichen Kalorienbedarf genauer zu berechnen',
			'onboarding.healthConnect.title' => 'Mit Health Connect verbinden',
			'onboarding.healthConnect.description' => 'Synchronisiere deine Gesundheitsdaten für bessere Einblicke und automatische Kalorienverfolgung',
			'onboarding.healthConnect.overviewDescription' => 'Nutze verbrannte Kalorien für dein Tagesziel und teile protokollierte Mahlzeiten optional mit Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatische Kalorienverfolgung',
			'onboarding.healthConnect.automaticTracking.description' => 'Erfasste verbrannte Kalorien aus deinen Fitness-Apps verfolgen',
			'onboarding.healthConnect.caloriesBurned.title' => 'Verbrannte Kalorien',
			'onboarding.healthConnect.caloriesBurned.description' => 'Die heute insgesamt verbrannten Kalorien aus Health Connect lesen',
			'onboarding.healthConnect.progressInsights.title' => 'Fortschritts-Einblicke',
			'onboarding.healthConnect.progressInsights.description' => 'Erhalte detaillierte Einblicke in deine Gesundheitsentwicklungen',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Protokollierte Mahlzeiten teilen',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'In Calorify protokollierte Mahlzeiten in Health Connect schreiben',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Nahtlose Integration',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchronisiere Daten aus deinen bevorzugten Gesundheits-Apps',
			'onboarding.healthConnect.userControl.title' => 'Du hast die Kontrolle',
			'onboarding.healthConnect.userControl.description' => 'Wähle eine beliebige Berechtigung und ändere den Zugriff jederzeit',
			'onboarding.healthConnect.connected' => 'Health Connect verbunden',
			'onboarding.healthConnect.notConnected' => 'Health Connect nicht verbunden',
			'onboarding.healthConnect.setup' => 'Health Connect einrichten',
			'onboarding.healthConnect.skipForNow' => 'Später überspringen',
			'onboarding.healthConnect.statusConnected' => 'Health Connect ist verbunden.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect wurde erfolgreich verbunden!',
			'onboarding.healthConnect.statusNotConnected' => 'Wähle die Health Connect-Funktionen aus, die du aktivieren möchtest.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect ist teilweise verbunden. Aktiviere die verbleibende Berechtigung, um beide Funktionen zu nutzen.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Installiere oder aktualisiere Health Connect, um fortzufahren.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect wird auf diesem Gerät nicht unterstützt.',
			'onboarding.healthConnect.installOrUpdate' => 'Installieren oder aktualisieren',
			'onboarding.healthConnect.manageAccess' => 'Zugriff verwalten',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Berechtigung verweigert. Bitte aktiviere die Health Connect-Berechtigungen in den Einstellungen deines Telefons für ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Fehler bei der Einrichtung von Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Du bist nicht allein',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Studien zeigen, dass konsequentes Tracking der wichtigste Prädiktor für langfristigen Erfolg ist.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Bei einer ${age}-jährigen Person (${gender}), die ${goal} möchte, ist konsequentes Tracking der wichtigste Erfolgsfaktor.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} macht es 10x einfacher als manuelle Aufzeichnung.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Bereit loszulegen?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Fotografiere deine Mahlzeiten für eine sofortige Analyse',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Trage regelmäßig ein, um echte Fortschritte zu sehen',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Verfolge deinen Fortschritt täglich, um motiviert zu bleiben',
			'onboarding.reinforcement.trackingSuccess.button' => 'Los geht\'s',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'Person',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'ein gesünderes Du',
			'onboarding.reinforcement.healthProfile.title' => 'Dein Gesundheitsprofil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Basierend auf deinen Daten liegt dein BMI bei ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Fassen wir dein Profil zusammen, um dein Erlebnis zu personalisieren.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'zunehmen',
			'onboarding.reinforcement.healthProfile.goalLose' => 'abnehmen',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Um dein Ziel zu erreichen, wirst du ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Du hast dein Zielgewicht erreicht! Wir helfen dir, es zu halten.',
			'onboarding.reinforcement.healthProfile.button' => 'Los geht\'s',
			'onboarding.reinforcement.goalLifestyle.title' => 'Hervorragender Start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Du hast den ersten Schritt in Richtung ${goalText} gemacht. Da du ${activityText} bist, passt ${appLabel} deine Ziele an deinen Lebensstil an.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personalisierte Kalorienziele',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI-gestützte Mahlzeitenerkennung',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detaillierte Makronährstoffaufschlüsselung',
			'onboarding.reinforcement.goalLifestyle.button' => 'Los geht\'s',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'deine Ziele',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiv',
			'tabs.dashboard' => 'Übersicht',
			'tabs.history' => 'Verlauf',
			'home.aiSummary.title' => 'Deine AI-Zusammenfassung',
			'home.aiSummary.logMore' => 'Trage in den nächsten Tagen mehr Mahlzeiten ein, um personalisierte AI-Einblicke zu erhalten.',
			'home.aiSummary.loading' => 'Lade deine Zusammenfassung...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} Mahlzeiten protokolliert',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Balancestufe ${score}',
			'home.aiSummary.topFoods' => 'Top-Lebensmittel',
			'home.aiSummary.trendUp' => 'Kalorien steigen',
			'home.aiSummary.trendDown' => 'Kalorien sinken',
			'home.aiSummary.trendSteady' => 'Kalorien stabil',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Aktualisiert ${time}',
			'home.dailyGoal.title' => 'Setze dein Tagesziel',
			'home.dailyGoal.titleSet' => 'Dein Tagesziel',
			'home.dailyGoal.description' => 'Bereit für deine Gesundheitsreise? Lege unten dein tägliches Kalorienziel fest, um loszulegen.',
			'home.dailyGoal.descriptionSet' => 'Dein Kompass ist gesetzt! Dies ist dein tägliches Kalorienziel zur Orientierung.',
			'home.dailyGoal.yourGoal' => 'Dein Ziel',
			'home.dailyGoal.goal' => 'Ziel',
			'home.dailyGoal.dailyCalories' => 'Tägliche Kalorien (kcal)',
			'home.dailyGoal.setGoal' => 'Ziel festlegen',
			'home.dailyGoal.intake' => 'Zufuhr',
			'home.dailyGoal.burned' => 'Verbrannt',
			'home.dailyGoal.weightImpact' => 'Gewichtsauswirkung',
			'home.dailyGoal.estLoss' => 'Geschätzter Verlust von',
			'home.dailyGoal.estGain' => 'Geschätzter Zuwachs von',
			'home.dailyGoal.kcal' => 'Kilokalorien (kcal)',
			'home.dailySummary.title' => 'Tagesübersicht',
			'home.dailySummary.calories' => 'Kalorien',
			'home.dailySummary.carbs' => 'Kohlenhydrate',
			'home.dailySummary.protein' => 'Eiweiß',
			'home.dailySummary.fat' => 'Fett',
			'home.dailySummary.fiber' => 'Ballaststoffe',
			'home.dailySummary.grams' => 'Gramm',
			'home.dailySummary.chartAccessibilityLabel' => 'Makronährstoff-Diagramm',
			'home.intakeProgress.title' => 'Heutige Makroaufteilung',
			'home.intakeProgress.target' => 'Ziel',
			'home.intakeProgress.current' => 'Aktuell',
			'home.intakeHistory.title' => '7-Tage-Makroverlauf',
			'home.intakeHistory.trendTitle' => 'Heutiger Trend',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Höchstwert: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Noch keine Daten',
			'home.intakeHistory.startLogging' => 'Beginne, Mahlzeiten zu protokollieren, um deine\n7‑tägigen Makrotrends hier zu sehen',
			'home.mealLog.title' => 'Protokollierte Mahlzeiten',
			'home.mealLog.emptyMessage' => 'Mach ein Foto deiner letzten Mahlzeit, um sie hier zu protokollieren.',
			'home.mealLog.noMealsToday' => 'Heute keine Mahlzeiten erfasst',
			'home.mealLog.seeAllMeals' => 'Alle Mahlzeiten ansehen',
			'home.mealDescription.title' => 'Schnell hinzufügen mit AI',
			'home.mealDescription.description' => 'Beschreibe deine Mahlzeit und lass AI die Details übernehmen.',
			'home.mealDescription.hint' => 'z. B. Zum Frühstück hatte ich eine große Schale Haferflocken mit einer aufgeschnittenen Banane und einem Becher Whey ...',
			'home.mealDescription.analyzeMeal' => 'Mahlzeit analysieren',
			'home.favoriteMeals.title' => 'Lieblingsmahlzeiten',
			'home.favoriteMeals.description' => 'Füge schnell eine deiner Lieblingsmahlzeiten hinzu.',
			'home.favoriteMeals.noFavorites' => 'Noch keine Favoriten.',
			'home.favoriteMeals.addFavoriteHint' => 'Klicke den Stern bei einer Mahlzeit, um sie zu favorisieren.',
			'home.favoriteMeals.seeAll' => 'Alle anzeigen',
			'home.favoriteMeals.add' => 'Hinzufügen',
			'home.mealSnap.title' => 'Foto & Verfolge deine Mahlzeit',
			'home.mealSnap.description' => 'Nutze deine Kamera, um ein Foto deines Essens für die AI-Analyse zu machen.',
			'home.mealSnap.openCamera' => 'Kamera öffnen',
			'home.mealSnap.gallery' => 'Galerie',
			'home.mealSnap.compressingPhoto' => 'Foto wird optimiert…',
			'home.mealSnap.uploadingPhoto' => 'Foto wird hochgeladen…',
			'home.connectHealth.title' => 'Mit Health Connect synchronisieren',
			'home.connectHealth.description' => 'Synchronisiere deine Ernährungsdaten mit Health Connect',
			'home.connectHealth.install' => 'Installieren',
			'home.connectHealth.dataUseDescription' => 'Nutze verbrannte Kalorien für dein Ziel und teile protokollierte Mahlzeiten',
			'home.connectHealth.installOrUpdate' => 'Installieren oder aktualisieren',
			'home.connectHealth.connect' => 'Verbinden',
			'history.noMeals' => 'Keine Mahlzeiten erfasst',
			'history.emptyMessage' => 'Mach ein Foto deiner letzten Mahlzeit, um sie hier zu protokollieren.',
			'history.today' => 'Heute',
			'history.yesterday' => 'Gestern',
			'meal.ohNo' => 'Oh nein!',
			'meal.delete' => 'Löschen',
			'meal.editMeal' => 'Mahlzeit bearbeiten',
			'meal.addMeal' => 'Mahlzeit hinzufügen',
			'meal.saveMeal' => 'Mahlzeit speichern',
			'meal.save' => 'Speichern',
			'meal.mealName' => 'Name der Mahlzeit',
			'meal.mealNameHint' => 'z. B. Rührei mit Toast',
			'meal.nameRequired' => 'Gib einen Namen für die Mahlzeit ein, bevor du sie speicherst.',
			'meal.mealQuantity' => 'Mengenangabe',
			'meal.mealQuantityHint' => 'z. B. 1 Schale, 2 Scheiben',
			'meal.timeOfMeal' => 'Uhrzeit der Mahlzeit',
			'meal.timeOfMealHint' => 'Wähle die Uhrzeit, zu der du gegessen hast',
			'meal.mealType' => 'Mahlzeittyp',
			'meal.nutrition.calories' => 'Kalorien',
			'meal.nutrition.carbs' => 'Kohlenhydrate (g)',
			'meal.nutrition.protein' => 'Eiweiß (g)',
			'meal.nutrition.fat' => 'Fett (g)',
			'meal.nutrition.fiber' => 'Ballaststoffe (g)',
			'meal.deleteConfirmation.title' => 'Mahlzeit löschen',
			'meal.deleteConfirmation.message' => 'Möchtest du diesen Eintrag wirklich löschen?',
			'meal.deleteConfirmation.cancel' => 'Abbrechen',
			'meal.deleteConfirmation.delete' => 'Löschen',
			'meal.addedToLog' => 'Mahlzeit zu deinem Protokoll hinzugefügt!',
			'meal.couldNotAdd' => ({required Object error}) => 'Konnte Mahlzeit nicht hinzufügen: ${error}',
			'meal.savedSuccessfully' => 'Mahlzeit erfolgreich hinzugefügt!',
			'meal.updatedSuccessfully' => 'Mahlzeit erfolgreich aktualisiert!',
			'meal.errorSaving' => ({required Object error}) => 'Fehler beim Speichern der Mahlzeit: ${error}',
			'meal.removedFromFavorites' => 'Aus Favoriten entfernt!',
			'meal.savedAsFavorite' => 'Mahlzeit als Favorit gespeichert!',
			'meal.unfavorite' => 'Als Favorit entfernen',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Favorit konnte nicht aktualisiert werden: ${error}',
			'meal.feedbackThanks' => 'Danke für dein Feedback!',
			'meal.reanalysisUpdated' => 'Mahlzeitanalyse basierend auf deinem Feedback aktualisiert.',
			'meal.failedToProcess' => ({required Object error}) => 'Verarbeitung fehlgeschlagen: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Bildverarbeitung fehlgeschlagen: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Fehler beim Komprimieren des Bildes: ${error}',
			'meal.failedToSave' => 'Daten konnten nicht gespeichert werden. Bitte versuche es erneut.',
			'meal.skip' => 'Überspringen',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Frage ${current} von ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Keine Fragen verfügbar',
			'meal.questionFlow.next' => 'Weiter',
			'meal.questionFlow.continueLabel' => 'Weiter',
			'meal.analysis.title' => 'Wir analysieren deine Mahlzeit',
			'meal.analysis.stepStarted' => 'Starte…',
			'meal.analysis.stepDecomposition' => 'Mahlzeit wird erfasst…',
			'meal.analysis.stepIngredients' => 'Zutaten werden mit Nährwertdaten abgeglichen…',
			'meal.analysis.stepUncertainty' => 'Vertrauensniveau prüfen…',
			'meal.analysis.stepMealTypeQuestion' => 'Fast fertig…',
			'meal.analysis.stepResult' => 'Ergebnis wird abgeschlossen…',
			'meal.analysis.stepError' => 'Etwas ist schiefgelaufen',
			'meal.analysis.stepDefault' => 'Mahlzeit wird analysiert…',
			'meal.analysis.progressUnderstand' => 'Mahlzeit erfassen',
			'meal.analysis.progressMatch' => 'Nährwerte der Zutaten suchen',
			'meal.analysis.progressCheck' => 'Portionen und Sicherheit prüfen',
			'meal.analysis.progressMealType' => 'Mahlzeittyp auswählen',
			'meal.analysis.progressFinish' => 'Kalorien und Makros berechnen',
			'meal.analysis.detectedIngredientHeading' => 'Erkannte Zutaten',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} weitere',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} Zutaten erkannt',
			'meal.analysis.ingredientsPending' => 'Zutaten werden gescannt…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '„${text}“',
			'meal.analysis.offlineTip0' => 'Tipp: Konstanz schlägt Perfektion – regelmäßige Einträge zeigen die wirklich wichtigen Muster.',
			'meal.analysis.offlineTip1' => 'Tipp: Bei Fotos helfen natürliches Licht und Draufsicht für genauere Portionsschätzungen.',
			'meal.analysis.offlineTip2' => 'Tipp: Erwähne Getränke, Soßen und Öl – sie liefern oft vergessene Kalorien.',
			'meal.analysis.offlineTip3' => 'Tipp: Eine kurze Mengenangabe (z. B. 1 Schale, großer Kaffee) macht Schätzungen präziser.',
			'meal.analysis.offlineTip4' => 'Tipp: Auch nachträgliches Eintragen stärkt die Gewohnheit; Perfektion ist optional.',
			'meal.analysis.offlineTip5' => 'Tipp: Gib an, wie etwas zubereitet wurde, wenn das viele Kalorien ausmacht (gebraten vs. gebacken).',
			'meal.localInference.reviewTitle' => 'Erkannte Zutaten prüfen',
			'meal.localInference.reviewSubtitle' => 'Dies wurde auf Ihrem Gerät interpretiert. Bitte korrigieren Sie Namen oder Mengen, bevor die Nährwerte berechnet werden.',
			'meal.localInference.mealName' => 'Mahlzeitenname',
			'meal.localInference.ingredient' => 'Zutat',
			'meal.localInference.grams' => 'Geschätzte Gramm',
			'meal.localInference.removeIngredient' => 'Zutat entfernen',
			'meal.localInference.continueLabel' => 'Weiter',
			'meal.localInference.invalidProposal' => 'Fügen Sie mindestens eine Zutat hinzu und geben Sie eine positive Grammzahl an.',
			'meal.localInference.localUnavailable' => 'Die On-Device-Analyse ist derzeit nicht verfügbar.',
			'meal.feedback.title' => 'Was stimmt hier nicht?',
			'meal.feedback.subtitle' => 'Hilf uns, die Analyse zu verbessern, indem du ein oder mehrere Probleme auswählst.',
			'meal.feedback.tellUsMore' => 'Erzähl uns mehr',
			'meal.feedback.describeIncorrect' => 'Beschreibe, was falsch war',
			'meal.feedback.submit' => 'Absenden',
			'meal.feedback.issueFoodIdentification' => 'Lebensmittelzuordnung',
			'meal.feedback.issuePortionSize' => 'Portionsgröße',
			'meal.feedback.issueCalorieDistribution' => 'Kalorienverteilung',
			'meal.feedback.issueMacrosWrong' => 'Makros sind falsch',
			'meal.feedback.issueMissingItems' => 'Fehlende Zutaten',
			'meal.feedback.issueExtraItems' => 'Zusätzliche Zutaten',
			'meal.feedback.issueOther' => 'Andere',
			'favorites.title' => 'Favoriten',
			'favorites.empty' => 'Noch keine Lieblingsmahlzeiten.',
			'favorites.searchPlaceholder' => 'Favorisierte Mahlzeiten durchsuchen',
			'favorites.searchEmptyTitle' => 'Keine Favoriten gefunden',
			'favorites.searchEmptySubtitle' => 'Versuche einen anderen Namen, eine andere Menge oder einen anderen Mahlzeittyp.',
			'favorites.sortLabel' => 'Favoriten sortieren',
			'favorites.undo' => 'Rückgängig',
			'favorites.removed' => ({required Object name}) => '${name} aus Favoriten entfernt',
			'favorites.sortOptions.recent' => 'Neueste',
			'favorites.sortOptions.calories' => 'Kalorien',
			'favorites.sortOptions.alphabetical' => 'A–Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Keine Profildaten gefunden',
			'profile.yourProfile' => 'Dein Profil',
			'profile.viewAndManage' => 'Deine Gesundheitsinformationen anzeigen und verwalten',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'GRUNDINFORMATIONEN',
			'profile.sections.goalsAndActivity' => 'ZIELE & AKTIVITÄT',
			'profile.sections.calculatedValues' => 'BERECHNETE WERTE',
			'profile.gender' => 'Geschlecht',
			'profile.height' => 'Größe',
			'profile.weight' => 'Gewicht',
			'profile.age' => 'Alter',
			'profile.weightGoal' => 'Gewichtsziel',
			'profile.targetWeight' => 'Zielgewicht',
			'profile.activityLevel' => 'Aktivitätslevel',
			'profile.healthMetrics' => 'Gesundheitswerte',
			'profile.notSet' => 'Nicht gesetzt',
			'profile.years' => 'Jahre',
			'profile.updatedSuccessfully' => 'Profil erfolgreich aktualisiert!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Tagesziel',
			'profile.calculatedValues.calPerDay' => 'cal/Tag',
			'profile.calculatedValues.notAvailable' => 'k. A.',
			'healthScore.title' => 'Health-Score',
			'healthScore.whyThisScore' => 'Warum diese Bewertung?',
			'healthScore.note' => 'Diese Bewertung ist eine AI‑Schätzung basierend auf erkannten Zutaten und Nährstoffdichte. Ziehe für Ernährungsberatung stets eine Fachperson zu Rate.',
			'healthScore.unhealthy' => 'Ungesund',
			'healthScore.healthy' => 'Gesund',
			'healthScore.neutral' => 'Neutraler Bereich',
			'editProfile.title' => 'Profil bearbeiten',
			'editProfile.sections.personalInformation' => 'PERSÖNLICHE DATEN',
			'editProfile.sections.physicalMeasurements' => 'KÖRPERMAßE',
			'editProfile.sections.goalsAndActivity' => 'ZIELE & AKTIVITÄT',
			'editProfile.gender' => 'Geschlecht',
			'editProfile.dateOfBirth' => 'Geburtsdatum',
			'editProfile.height' => 'Größe',
			'editProfile.weight' => 'Gewicht',
			'editProfile.weightGoal' => 'Gewichtsziel',
			'editProfile.activityLevel' => 'Aktivitätslevel',
			'editProfile.metric' => 'Metrisch',
			'editProfile.imperial' => 'Imperiales System',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'Pfund (lb)',
			'editProfile.metricCm' => 'Metrisch (cm)',
			'editProfile.imperialFtIn' => 'Imperiales System (ft/in)',
			'editProfile.metricKg' => 'Metrisch (kg)',
			'editProfile.imperialLbs' => 'Imperiales System (lbs)',
			'editProfile.genders.male' => 'Männlich',
			'editProfile.genders.female' => 'Weiblich',
			'editProfile.genders.other' => 'Andere',
			'editProfile.weightGoals.loseWeight.name' => 'Abnehmen',
			'editProfile.weightGoals.loseWeight.description' => 'Erschaffe ein Kaloriendefizit zum Abnehmen',
			'editProfile.weightGoals.maintainWeight.name' => 'Gewicht halten',
			'editProfile.weightGoals.maintainWeight.description' => 'Halte dein aktuelles Gewicht',
			'editProfile.weightGoals.gainWeight.name' => 'Zunehmen',
			'editProfile.weightGoals.gainWeight.description' => 'Erschaffe einen Kalorienüberschuss zum Zunehmen',
			'editProfile.activityLevels.sedentary.name' => 'Wenig aktiv',
			'editProfile.activityLevels.sedentary.description' => 'Kaum oder keine Bewegung',
			'editProfile.activityLevels.lightlyActive.name' => 'Leicht aktiv',
			'editProfile.activityLevels.lightlyActive.description' => 'Leichte Aktivität 1–3 Tage/Woche',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderat aktiv',
			'editProfile.activityLevels.moderatelyActive.description' => 'Mäßige Aktivität 3–5 Tage/Woche',
			'editProfile.activityLevels.veryActive.name' => 'Sehr aktiv',
			'editProfile.activityLevels.veryActive.description' => 'Intensive Aktivität 6–7 Tage/Woche',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrem aktiv',
			'editProfile.activityLevels.extremelyActive.description' => 'Sehr harte Aktivität oder körperlich anstrengender Beruf',
			'settings.title' => 'Einstellungen',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALISIERUNG',
			'settings.sections.notifications' => 'BENACHRICHTIGUNGEN',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.localInference' => 'ON-DEVICE-ANALYSE',
			'settings.sections.supportAndLegal' => 'SUPPORT & RECHTLICHES',
			'settings.sections.about' => 'ÜBER',
			'settings.sections.dangerZone' => 'RISIKOBEREICH',
			'settings.sections.developer' => 'ENTWICKLER',
			'settings.editProfile.title' => 'Profil bearbeiten',
			'settings.editProfile.subtitle' => 'Aktualisiere deine persönlichen Daten',
			'settings.language.title' => 'Sprache',
			'settings.language.subtitle' => 'Wähle deine bevorzugte Sprache',
			'settings.language.searchHint' => 'Sprachen suchen...',
			'settings.language.noResults' => 'Keine Ergebnisse gefunden',
			'settings.heightUnit.title' => 'Längeneinheit',
			'settings.weightUnit.title' => 'Gewichtseinheit',
			'settings.mealReminders.title' => 'Mahlzeit‑Erinnerungen',
			'settings.mealReminders.subtitle' => 'Bleib mit rechtzeitigen Erinnerungen auf Kurs',
			'settings.localInference.title' => 'On-Device-Mahlzeitenanalyse',
			'settings.localInference.subtitle' => 'Unterstützte Mahlzeiten mit Gemini Nano interpretieren, bevor die Nährwerte berechnet werden',
			'settings.localInference.unavailable' => 'Auf diesem Gerät nicht verfügbar',
			'settings.localInference.rolloutUnavailable' => 'Kompatible Hardware gefunden, aber diese Funktion ist für diese App-Version nicht aktiviert',
			'settings.localInference.modelSetup' => 'Gemini Nano muss den Download abschließen, bevor dies aktiviert werden kann',
			'settings.localInference.useLocalTitle' => 'On-Device-Analyse verwenden',
			'settings.localInference.useLocalSubtitle' => 'Optional und standardmäßig deaktiviert. Ergebnisse bei komplexen Mahlzeiten können weniger zuverlässig sein.',
			'settings.localInference.disclosureTitle' => 'Bevor Sie die On-Device-Analyse aktivieren',
			'settings.localInference.disclosureBody' => 'Gemini Nano kann Zutaten identifizieren und Portionen auf unterstützten Android-Geräten schätzen. Ihr geprüfter Zutatenvorschlag wird an Calorify zur USDA-Nährwertprüfung und Berechnung gesendet.',
			'settings.localInference.disclosureLimit1' => 'Komplexe Gerichte, versteckte Zutaten und Portionsgrößen können falsch identifiziert werden.',
			'settings.localInference.disclosureLimit2' => 'Das Modell kann während des Downloads, bei hoher Auslastung, im Hintergrund oder durch das Gerät eingeschränkt sein.',
			'settings.localInference.disclosureLimit3' => 'Wenn die lokale Interpretation nicht abgeschlossen werden kann, sendet diese Beta-Version Ihre ursprüngliche Mahlzeitenbeschreibung automatisch an Calorify zur Cloud-Analyse.',
			'settings.localInference.acknowledgement' => 'Ich verstehe, dass ich die erkannten Zutaten und Portionen prüfen sollte.',
			'settings.localInference.enable' => 'Bestätigen und aktivieren',
			'settings.localInference.cancel' => 'Abbrechen',
			'settings.theme.title' => 'Design',
			'settings.theme.light' => 'Hell',
			'settings.theme.dark' => 'Dunkel',
			'settings.theme.system' => 'Systemeinstellung',
			'settings.sendFeedback.title' => 'Feedback senden',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Hilf uns, ${appLabel} zu verbessern',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback zur ${appLabel}-App',
			'settings.sendFeedback.emailBodyPrefix' => 'Bitte gib dein Feedback unten ein:',
			'settings.sendFeedback.appVersion' => 'App-Version',
			'settings.sendFeedback.device' => 'Gerät',
			'settings.sendFeedback.osVersion' => 'OS‑Version',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Mahlzeitenverlauf exportieren',
			'settings.exportMealHistory.subtitle' => 'Teile eine CSV deiner protokollierten Mahlzeiten',
			'settings.exportMealHistory.shareText' => 'Dein Calorify‑Mahlzeitenexport',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Mahlzeitenverlauf konnte nicht exportiert werden: ${error}',
			'settings.clearAllData.title' => 'Alle Daten löschen',
			'settings.clearAllData.subtitle' => 'Alle deine Informationen unwiderruflich löschen',
			'settings.clearAllData.localOnlySubtitle' => 'Auf diesem Gerät gespeicherte Calorify-Daten löschen',
			'settings.clearAllData.confirmationTitle' => 'Alle Daten löschen?',
			'settings.clearAllData.confirmationMessage' => 'Dieser Vorgang kann nicht rückgängig gemacht werden. Alle protokollierten Mahlzeiten, Favoriten und Profileinstellungen werden dauerhaft gelöscht.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Dadurch werden protokollierte Mahlzeiten, Favoriten und Profileinstellungen dauerhaft von diesem Gerät gelöscht. Bereits mit Health Connect geteilte Mahlzeiten und der Health Connect-Zugriff werden separat unter Einstellungen > Health Connect verwaltet.',
			'settings.clearAllData.cancel' => 'Abbrechen',
			'settings.clearAllData.clearEverything' => 'Alles löschen',
			'settings.debugOptions.title' => 'Debug‑Optionen',
			'settings.developerModeEnabled' => 'Entwicklermodus aktiviert!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Berechtigungen anzeigen und verwalten',
			'settings.healthConnect.unavailable.title' => 'Health Connect nicht verfügbar',
			'settings.healthConnect.unavailable.description' => 'Health Connect ist auf diesem Gerät nicht verfügbar. Bitte installiere Health Connect aus dem Play Store (Android 9+) oder aktualisiere auf Android 14+.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect wird auf diesem Gerät nicht unterstützt.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect erfordert Aufmerksamkeit',
			'settings.healthConnect.updateRequired.description' => 'Installiere oder aktualisiere Health Connect, bevor du den Zugriff verwaltest.',
			'settings.healthConnect.updateRequired.action' => 'Installieren oder aktualisieren',
			'settings.healthConnect.permissions.title' => 'Berechtigungen',
			'settings.healthConnect.permissions.description' => 'Die folgenden Berechtigungen werden angefragt, um Health Connect zu integrieren:',
			'settings.healthConnect.permissions.granted' => 'Gewährt',
			'settings.healthConnect.permissions.notGranted' => 'Nicht gewährt',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Gesamte verbrannte Kalorien lesen',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Ermöglicht der App, deine insgesamt verbrannten Kalorien aus Health Connect zu lesen.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Diese Berechtigung wird verwendet, um deinen täglichen Kalorienverbrauch in der App anzuzeigen und so deinen gesamten Energieverbrauch über den Tag zu verstehen.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Ernährungsdaten lesen',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Ermöglicht der App, Ernährungsdaten aus Health Connect zu lesen.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Diese Berechtigung erlaubt der App, Ernährungsinformationen zu lesen, die möglicherweise von anderen mit Health Connect verbundenen Apps protokolliert wurden, und bietet so eine umfassende Übersicht deiner Ernährung.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Ernährungsdaten schreiben',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Ermöglicht der App, Ernährungsdaten in Health Connect zu schreiben.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Diese Berechtigung erlaubt der App, deine protokollierten Mahlzeiten mit Health Connect zu synchronisieren, sodass deine Ernährungsdaten auch anderen Gesundheits‑ und Fitness‑Apps zur Verfügung stehen.',
			'settings.healthConnect.managePermissions' => 'Berechtigungen verwalten',
			'settings.healthConnect.openSettings' => 'Health Connect Einstellungen öffnen',
			'settings.healthConnect.disconnect' => 'Health Connect trennen',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Health Connect trennen?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify verliert den Zugriff auf Health Connect. Bereits dort gespeicherte Daten werden nicht gelöscht.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Trennen',
			'settings.healthConnect.deleteSyncedMeals' => 'Calorify-Mahlzeiten aus Health Connect löschen',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Synchronisierte Mahlzeiten löschen?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Möchtest du Mahlzeiten, die von dieser Calorify-Version synchronisiert wurden, aus Health Connect löschen? Dein lokales Mahlzeitenprotokoll bleibt unverändert. Ältere Calorify-Einträge müssen möglicherweise weiterhin über Daten verwalten in Health Connect entfernt werden.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Synchronisierte Mahlzeiten löschen',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Calorify-Mahlzeiten wurden aus Health Connect gelöscht.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Synchronisierte Mahlzeiten konnten nicht gelöscht werden. Bitte versuche es erneut.',
			'settings.healthConnect.connectionPartial' => 'Einige Health Connect-Funktionen sind aktiviert.',
			'settings.healthConnect.connectionComplete' => 'Beide Health Connect-Funktionen sind aktiviert.',
			'settings.healthConnect.actionFailed' => 'Health Connect konnte nicht geöffnet werden. Bitte versuche es erneut.',
			'settings.healthConnect.requestPermissions' => 'Berechtigungen anfordern',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Die Berechtigungsanfrage wurde abgebrochen oder ist fehlgeschlagen. Bitte versuche es erneut oder erteile die Berechtigungen manuell in den Health Connect‑Einstellungen.',
			'settings.healthConnect.permissionRequestFailed' => 'Berechtigungen konnten nicht angefragt werden. Bitte versuche es erneut oder erteile die Berechtigungen manuell in den Health Connect‑Einstellungen.',
			'settings.healthConnect.requestingPermissions' => 'Anfrage läuft...',
			'settings.about.title' => 'Über',
			'settings.about.tagline' => 'Schnell, kostenlos und datenschutzorientiert: Kalorien-Bewusstsein',
			'settings.about.ourStory.title' => 'Unsere Geschichte',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} entstand aus einer einfachen Frustration: Die meisten Kalorienzähler sind entweder zu kompliziert, verlangen ständige manuelle Eingaben, verlangen hohe Abo‑Gebühren oder gefährden die Privatsphäre.\n\nAls Solo‑Entwickler wollte ich etwas Einfacheres und Gerechteres schaffen — eine App, die AI nutzt, um Aufwand zu reduzieren, schnell und kostenlos bleibt und deine Gesundheitsdaten respektvoll behandelt.\n\n${appLabel} ist die App, die ich mir gewünscht hätte: keine Konten, kein Tracking, keine Werbung — nur klare, praktische Einblicke und deine Gesundheitsziele.',
			'settings.about.privacy.title' => 'Dein Datenschutz ist wichtig',
			'settings.about.privacy.description' => 'Datenschutz ist kein Nebengedanke, sondern ein Designprinzip. Das bedeutet in der Praxis:',
			'settings.about.privacy.noAccounts' => 'Keine Konten erforderlich\nApp sofort nutzen. Keine Registrierung, keine Identitäten.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Kein Verhaltens‑Tracking\n${appLabel} überwacht deine Aktivitäten nicht, erstellt keine Nutzungsprofile und verfolgt dich nicht über Apps oder Websites hinweg.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Begrenzte Analysen und Diagnosen\n${appLabel} verwendet grundlegende App-Ereignisse und Absturzdiagnosen, um die Zuverlässigkeit zu verbessern. Werte aus Gesundheitsdaten werden weder für Werbung verwendet noch verkauft.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Werbefrei aus Prinzip\n${appLabel} wurde so entwickelt, dass es ohne Werbung oder datengetriebene Monetarisierung funktioniert.',
			'settings.about.privacy.noDataSelling' => 'Kein Verkauf von Daten\nDeine Gesundheitsdaten werden niemals an Dritte verkauft oder weitergegeben.',
			'settings.about.privacy.localStorage' => 'Lokale Speicherung\nDeine Daten bleiben auf deinem Gerät.',
			'settings.about.privacy.privacyPolicy' => 'Datenschutzerklärung',
			'settings.about.developer.title' => 'Von einem Solo‑Entwickler entwickelt',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} wird von einem einzelnen Entwickler gebaut und gepflegt, der sich auf ruhige, datenschutzfreundliche Gesundheitssoftware konzentriert.\n\nFeedback wird persönlich gelesen und beeinflusst die Richtung der App.',
			'settings.about.developer.website' => 'Webseite',
			'settings.about.developer.email' => 'E‑Mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Gefällt dir ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Dein Feedback macht ${appLabel} für alle besser.',
			'settings.about.feedback.rateApp' => 'Im Play Store bewerten',
			'settings.about.feedback.sendFeedback' => 'Feedback senden',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify Version ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Buildnummer ${buildNumber}',
			'reminders.title' => 'Bleib mit Erinnerungen auf Kurs',
			'reminders.description' => 'Erhalte freundliche Erinnerungen, um Mahlzeiten zu protokollieren und konsequent bei deinen Ernährungszielen zu bleiben',
			'reminders.notificationsEnabled' => 'Benachrichtigungen aktiviert',
			'reminders.notificationsDisabled' => 'Benachrichtigungen deaktiviert',
			'reminders.enabledSubtitle' => 'Du erhältst Mahlzeit‑Erinnerungen',
			'reminders.disabledSubtitle' => 'Aktiviere Benachrichtigungen, um Mahlzeit‑Erinnerungen zu erhalten',
			'reminders.mealReminders' => 'Mahlzeit‑Erinnerungen',
			'reminders.breakfast' => 'Frühstück',
			'reminders.lunch' => 'Mittagessen',
			'reminders.dinner' => 'Abendessen',
			'reminders.snack' => 'Zwischenmahlzeit',
			'reminders.unknown' => 'Unbekannt',
			'reminders.change' => 'Ändern',
			'reminders.enableNotifications' => 'Benachrichtigungen aktivieren',
			'reminders.skipForNow' => 'Vorerst überspringen',
			'reminders.saveChanges' => 'Änderungen speichern',
			'reminders.enabledSuccessfully' => 'Benachrichtigungen erfolgreich aktiviert!',
			'reminders.permissionDenied' => 'Benachrichtigungsberechtigung verweigert',
			'reminders.errorEnabling' => ({required Object error}) => 'Fehler beim Aktivieren der Benachrichtigungen: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Fehler beim Abschließen der Einrichtung: ${error}',
			'notifications.breakfast.title' => 'Frühstückszeit! 🍳',
			'notifications.breakfast.body' => 'Vergiss nicht, dein Frühstück zu erfassen',
			'notifications.lunch.title' => 'Mittagszeit! 🥗',
			'notifications.lunch.body' => 'Zeit, dein Mittagessen zu protokollieren',
			'notifications.dinner.title' => 'Abendessen! 🍽️',
			'notifications.dinner.body' => 'Vergiss nicht, dein Abendessen zu erfassen',
			'notifications.snack.title' => 'Snack‑Zeit! 🍎',
			'notifications.snack.body' => 'Zeit für einen gesunden Snack',
			'notifications.test.title' => 'Test‑Benachrichtigung',
			'login.title' => 'Anmelden',
			'login.signInWithGoogle' => 'Mit Google anmelden',
			'login.signInFailed' => 'Google-Anmeldung fehlgeschlagen oder abgebrochen.',
			'disclaimer.pleaseNote' => 'Bitte beachten',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} liefert geschätzte Nährwertangaben. Die Genauigkeit hängt von deinen Eingaben und Lebensmittelvarianten ab. Nutze die Angaben als Orientierung, nicht als endgültige Quelle. Konsultiere eine Fachperson für personalisierte Ernährungsberatung.',
			'disclaimer.snap.portionSize.title' => 'Portionsgröße',
			'disclaimer.snap.portionSize.description' => 'Die Genauigkeit der Schätzungen hängt stark von deiner korrekten Einschätzung der Portionsgröße ab.',
			'disclaimer.snap.preparationMethods.title' => 'Zubereitungsmethoden',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Zubereitungsarten können den Nährstoffgehalt erheblich verändern. Die Schätzungen von ${appLabel} berücksichtigen diese Variationen möglicherweise nicht vollständig.',
			'disclaimer.snap.ingredients.title' => 'Zutaten',
			_ => null,
		} ?? switch (path) {
			'disclaimer.snap.ingredients.description' => 'Komplexe Gerichte mit vielen versteckten Zutaten können zu ungenaueren Schätzungen führen.',
			'disclaimer.snap.databaseLimitations.title' => 'Datenbankbegrenzungen',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Die Lebensmitteldatenbank von ${appLabel} ist umfangreich, enthält aber möglicherweise nicht jedes einzelne Lebensmittel oder jede Variante.',
			'disclaimer.weightEstimate.title' => 'Zur Gewichtsschätzung',
			'disclaimer.weightEstimate.description' => 'Die prognostizierte Gewichtsveränderung ist eine theoretische Schätzung basierend auf dem einfachen Kalorien‑ein‑/Kalorien‑aus‑Modell. Sie dient nur zur Motivation und nicht als Vorhersage deines tatsächlichen Gewichts.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Genauigkeit der Kalorien',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Diese Schätzung ist nur so genau wie deine erfassten Kalorienzufuhr- und verbrauchsangaben. Ungenaue Einträge führen zu ungenauen Vorhersagen.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologische Faktoren',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Gewichtsveränderungen werden von Stoffwechsel, Hormonen, Schlaf, Stress, Flüssigkeitshaushalt und anderen individuellen Faktoren beeinflusst, die ${appLabel} nicht messen kann.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Wassergewicht & Schwankungen',
			'disclaimer.weightEstimate.waterWeight.description' => 'Das tägliche Gewicht kann durch Wassereinlagerungen, Verdauung und Zeitpunkt stark schwanken. Die Schätzung berücksichtigt diese täglichen Veränderungen nicht.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Professionelle Beratung',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Nutze diese Schätzung nicht für medizinische Entscheidungen. Konsultiere stets eine Fachperson oder eine registrierte Ernährungsberaterin/einen registrierten Ernährungsberater für persönliche Gewichtsmanagement‑Beratung.',
			'disclaimer.healthMetrics.description' => 'Diese Kennzahlen helfen dir, den Energiebedarf deines Körpers zu verstehen und deine Ernährungsziele zu steuern.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Der Ruheumsatz (BMR) ist die Menge an Kalorien, die dein Körper im Ruhezustand zur Aufrechterhaltung grundlegender Funktionen wie Atmung und Kreislauf verbrennt. Der BMR hängt von Alter, Geschlecht, Größe und Gewicht ab. Ein höherer BMR bedeutet, dass dein Körper im Ruhezustand mehr Kalorien verbrennt – oft bedingt durch mehr Muskelmasse, jüngeres Alter oder männliches Geschlecht. Ein niedrigerer BMR weist typischerweise auf weniger Muskelmasse, höheres Alter oder weibliches Geschlecht hin.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Der gesamte tägliche Energieverbrauch (TDEE) ist die Gesamtmenge an Kalorien, die du pro Tag verbrennst, einschließlich BMR sowie Kalorien durch körperliche Aktivität und Alltagsbewegung. Der TDEE hängt von deinem BMR und deinem Aktivitätsniveau ab. Ein höherer TDEE bedeutet, dass du insgesamt mehr Kalorien verbrennst, meist durch mehr Aktivität oder einen höheren BMR. Ein niedrigerer TDEE deutet auf weniger tägliche Aktivität oder einen niedrigeren BMR hin.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Tagesziel',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Das Tagesziel ist deine empfohlene tägliche Kalorienzufuhr basierend auf deinem TDEE und deinem Gewichtsziel. Beim Abnehmen konsumierst du weniger Kalorien als dein TDEE. Zur Gewichtserhaltung entspricht deine Aufnahme dem TDEE. Zum Zunehmen konsumierst du mehr Kalorien als dein TDEE. Das hilft dir, die gewünschte Gewichtsentwicklung in einem gesunden Tempo zu erreichen.',
			'disclaimer.calorieExpenditure.title' => 'Geschätzter Kalorienverbrauch',
			'disclaimer.calorieExpenditure.description' => 'Wenn Health Connect-Daten nicht verfügbar sind, schätzen wir den heutigen Kalorienverbrauch anhand deines Ruheumsatzes (BMR) und Aktivitätsniveaus (TDEE), skaliert auf den bereits vergangenen Teil des Tages.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Wie die Schätzung berechnet wird',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Wir berechnen deinen TDEE (auf Basis deines Profils) und multiplizieren ihn mit dem Anteil des bereits vergangenen Tages (Stunden + Minuten) / 24, um die bisher verbrannten Kalorien abzuschätzen.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Professionelle Beratung',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Nutze diese Schätzung nicht für medizinische Entscheidungen. Konsultiere stets eine Fachperson oder eine registrierte Ernährungsberaterin/einen registrierten Ernährungsberater für persönliche Gewichtsmanagement‑Beratung.',
			'localNutritionPhase4.portionSmaller' => 'Kleiner',
			'localNutritionPhase4.portionEstimated' => 'Geschätzt',
			'localNutritionPhase4.portionLarger' => 'Größer',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Welche Portion passte am besten zu ${ingredient}?',
			'localNutritionPhase4.mealTypeQuestion' => 'Um welche Mahlzeit handelte es sich?',
			'localNutritionPhase4.localNutritionTip' => 'Anhand verifizierter lokaler Nährwertdaten berechnet.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Nährwertdaten herunterladen',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Verifizierte USDA-Datensätze und deterministische Berechnung auf diesem Gerät verwenden, wenn alle Zutaten abgedeckt sind.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Lokale Nährwertdaten sind für diese App-Version nicht verfügbar.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Es wurde kein verifiziertes Nährwertpaket heruntergeladen.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Nährwertdaten werden heruntergeladen und überprüft…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Paket ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} zwischengespeicherte USDA-Datensätze · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Nach Update suchen',
			'localNutritionPhase4.offlineNutritionClear' => 'Lokale Nährwertdaten löschen',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Lokale Nährwertdaten löschen?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Dadurch werden das heruntergeladene USDA-Paket und der Suchcache entfernt. Protokollierte Mahlzeiten behalten den exakten Nährwert-Schnappschuss, der beim Speichern verwendet wurde.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Daten löschen',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Lokale Nährwertdaten konnten nicht heruntergeladen und überprüft werden: ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Lokale Nährwertdaten gelöscht',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => 'Zurück',
			'watch.common.cancel' => 'Abbrechen',
			'watch.common.delete' => 'Löschen',
			'watch.common.retry' => 'Erneut versuchen',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Nährstoff',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} g',
			'watch.nutrition.protein' => 'Eiweiß',
			'watch.nutrition.carbs' => 'Kohlenhydrate',
			'watch.nutrition.fat' => 'Fett',
			'watch.nutrition.fiber' => 'Ballaststoffe',
			'watch.sync.syncWithPhone' => 'Mit Telefon synchronisieren',
			'watch.sync.syncing' => 'Synchronisiere…',
			'watch.sync.synced' => 'Synchronisiert',
			'watch.sync.syncedJustNow' => 'Gerade synchronisiert',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Vor ${minutes} Min. synchronisiert',
			'watch.sync.failed' => 'Synchronisierung fehlgeschlagen',
			'watch.sync.phoneDisconnected' => 'Telefon getrennt',
			'watch.sync.tapToSync' => 'Tippen zum Synchronisieren',
			'watch.sync.refreshFailed' => 'Aktualisierung fehlgeschlagen. Prüfe dein Telefon.',
			'watch.sync.openPhone' => 'Öffne Calorify auf deinem Telefon, dann tippe auf Aktualisieren.',
			'watch.home.today' => 'Heute',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} kcal von ${goal} aufgenommen. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} über dem Ziel',
			'watch.home.remaining' => ({required Object calories}) => '${calories} verbleibend',
			'watch.home.left' => ({required Object calories}) => '${calories} übrig',
			'watch.home.goal' => ({required Object calories}) => '${calories} kcal Ziel',
			'watch.home.logMeal' => 'Mahlzeit protokollieren',
			'watch.home.todayMeals' => 'Mahlzeiten heute',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Mahlzeiten heute, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Zeige ${count} weitere',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} weitere Mahlzeiten, tippe, um alle anzuzeigen',
			'watch.home.noMeals' => 'Keine Mahlzeiten protokolliert',
			'watch.home.noMealsSemantics' => 'Heute keine Mahlzeiten protokolliert',
			'watch.home.tapLog' => 'Tippe auf ‚Protokollieren‘, um zu beginnen.',
			'watch.home.removedFromQueue' => 'Mahlzeit aus Offline‑Warteschlange entfernt.',
			'watch.home.removedOffline' => 'Mahlzeit offline entfernt. Sie wird synchronisiert, wenn dein Telefon sich wieder verbindet.',
			'watch.home.deleteFailed' => 'Mahlzeit konnte nicht gelöscht werden',
			'watch.history.title' => 'Mahlzeiten heute',
			'watch.history.refresh' => 'Mahlzeiten aktualisieren',
			'watch.history.loadFailed' => 'Mahlzeiten konnten nicht geladen werden',
			'watch.history.syncFailed' => 'Synchronisierung fehlgeschlagen',
			'watch.history.emptyTitle' => 'Noch keine Mahlzeiten',
			'watch.history.emptyMessage' => 'Erfasse eine Mahlzeit auf der Startseite, um sie hier zu sehen.',
			'watch.favorites.title' => 'Favoriten',
			'watch.favorites.refresh' => 'Favoriten aktualisieren',
			'watch.favorites.loadFailed' => 'Favoriten konnten nicht geladen werden',
			'watch.favorites.syncFailed' => 'Synchronisierung fehlgeschlagen',
			'watch.favorites.emptyTitle' => 'Noch keine Favoriten',
			'watch.favorites.emptyMessage' => 'Markiere Mahlzeiten in der Telefon-App mit einem Stern, um sie hier mit einem Tipp zu protokollieren.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} kcal. Tippe zum Protokollieren.',
			'watch.favorites.logged' => ({required Object name}) => '${name} protokolliert!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} offline gespeichert. Wird synchronisiert, wenn dein Telefon sich wieder verbindet.',
			'watch.favorites.saveFailed' => 'Mahlzeit konnte nicht gespeichert werden. Bitte erneut versuchen.',
			'watch.favorites.log' => 'Protokollieren',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kcal, protokolliert um ${time}.',
			'watch.meal.longPressDelete' => 'Lange drücken zum Löschen.',
			'watch.meal.deleteTitle' => 'Mahlzeit löschen?',
			'watch.voice.title' => 'Sprachprotokoll für Mahlzeiten',
			'watch.voice.processing' => 'Prüfe deine Mahlzeit…',
			'watch.voice.processingDescription' => 'Ermittle Portionen und Nährwerte',
			'watch.voice.listening' => 'Aufnahme läuft',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Aufnahme stoppen',
			'watch.voice.start' => 'Tippe, um Aufnahme zu starten',
			'watch.voice.starting' => 'Mikrofon wird gestartet…',
			'watch.voice.prompt' => 'Tippe, dann beschreibe deine Mahlzeit',
			'watch.voice.tapToRetry' => 'Tippe, um es erneut zu versuchen',
			'watch.voice.example' => 'Versuche z. B. „2 Rotis mit Dal“',
			'watch.voice.unavailable' => 'Spracheingabe ist nicht verfügbar. Prüfe die Mikrofonberechtigung in den Uhreinstellungen.',
			'watch.voice.didNotStart' => 'Mikrofon hat nicht gestartet. Tippe, um es erneut zu versuchen.',
			'watch.voice.startFailed' => 'Aufnahme konnte nicht gestartet werden. Prüfe die Mikrofonberechtigungen.',
			'watch.voice.allowMicrophone' => 'Erlaube den Mikrofonzugriff, um Mahlzeiten per Sprache zu erfassen.',
			'watch.voice.needsConnection' => 'Spracherkennung benötigt eine Verbindung. Tippe, um es erneut zu versuchen.',
			'watch.voice.microphoneUnavailable' => 'Das Mikrofon ist nicht verfügbar. Tippe, um es erneut zu versuchen.',
			'watch.voice.microphoneBusy' => 'Das Mikrofon ist beschäftigt. Warte kurz und versuche es erneut.',
			'watch.voice.languageUnsupported' => 'Die Spracheingabe unterstützt die Sprache der Uhr nicht.',
			'watch.voice.temporarilyBusy' => 'Die Spracheingabe ist vorübergehend beschäftigt. Warte kurz und versuche es erneut.',
			'watch.voice.notRecognized' => 'Ich habe das nicht verstanden. Tippe auf das Mikrofon und versuche es erneut.',
			'watch.voice.noSpeech' => 'Keine Sprache erkannt. Tippe auf das Mikrofon, um es erneut zu versuchen.',
			'watch.voice.analysisFailed' => 'Analyse fehlgeschlagen. Bitte erneut versuchen.',
			'watch.voice.mealNotIdentified' => 'Konnte die Mahlzeit nicht identifizieren. Versuche, sie anders zu beschreiben.',
			'watch.result.title' => 'Mahlzeitdetails',
			'watch.result.savedOffline' => 'Offline gespeichert',
			'watch.result.logged' => 'Protokolliert!',
			'watch.result.mealFound' => 'Mahlzeit gefunden',
			'watch.result.estimatedEnergy' => 'Geschätzte Energie',
			'watch.result.logMeal' => 'Mahlzeit protokollieren',
			'watch.result.logging' => 'Protokolliere…',
			'watch.result.logAnother' => 'Weitere protokollieren',
			'watch.result.goingBack' => 'Zurück…',
			'watch.result.savedOfflineMessage' => 'Mahlzeit offline gespeichert. Sie wird synchronisiert, wenn dein Telefon sich wieder verbindet.',
			'watch.result.saveFailed' => 'Mahlzeit konnte nicht gespeichert werden. Bitte erneut versuchen.',
			'common.betaTag' => 'Beta',
			'common.close' => 'Schließen',
			'common.kContinue' => 'Weiter',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Gefällt dir ${appLabel}?',
			'feedbackRating.yes' => 'Ja, mir gefällt es',
			'feedbackRating.no' => 'Nicht wirklich',
			'feedbackRating.rateStepHeading' => 'Im Play Store bewerten',
			'feedbackRating.emailStepHeading' => 'Feedback per E‑Mail senden',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Eine kurze Bewertung hilft anderen, ${appLabel} zu finden, und unterstützt die Entwicklung. Würdest du kurz eine Bewertung abgeben?',
			'feedbackRating.shareFeedbackViaEmail' => 'Dein Feedback bestimmt, was als Nächstes kommt — wir lesen jede Nachricht. Möchtest du deine Gedanken per E‑Mail teilen?',
			'feedbackRating.rateCta' => 'Im Play Store bewerten',
			'feedbackRating.maybeLater' => 'Vielleicht später',
			'feedbackRating.sendFeedback' => 'Feedback senden',
			'feedbackRating.noThanks' => 'Nein, danke',
			'feedbackRating.aboutUsDescription' => 'Mit Sorgfalt von einem kleinen Team entwickelt. Wir legen Wert auf Datenschutz, Einfachheit und helfen dir, bessere Essgewohnheiten aufzubauen.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Neugierig, wer hinter ${appLabel} steckt? Sieh ',
			'feedbackRating.aboutUsLinkLabel' => 'Über uns',
			'feedbackRating.thankYouMessage' => 'Danke! Wir fragen ein anderes Mal noch einmal.',
			'health.syncFailed' => 'Synchronisierung mit Health Connect fehlgeschlagen',
			'health.mealSynced' => 'Mahlzeit mit Health Connect synchronisiert',
			_ => null,
		};
	}
}
