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
class TranslationsDe with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	@override 
	TranslationsDe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDe(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Deutsch';
	@override String get flag => '🇩🇪';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsDe errors = _TranslationsErrorsDe._(_root);
	@override late final _TranslationsOnboardingDe onboarding = _TranslationsOnboardingDe._(_root);
	@override late final _TranslationsTabsDe tabs = _TranslationsTabsDe._(_root);
	@override late final _TranslationsHomeDe home = _TranslationsHomeDe._(_root);
	@override late final _TranslationsHistoryDe history = _TranslationsHistoryDe._(_root);
	@override late final _TranslationsMealDe meal = _TranslationsMealDe._(_root);
	@override late final _TranslationsFavoritesDe favorites = _TranslationsFavoritesDe._(_root);
	@override late final _TranslationsProfileDe profile = _TranslationsProfileDe._(_root);
	@override late final _TranslationsHealthScoreDe healthScore = _TranslationsHealthScoreDe._(_root);
	@override late final _TranslationsEditProfileDe editProfile = _TranslationsEditProfileDe._(_root);
	@override late final _TranslationsSettingsDe settings = _TranslationsSettingsDe._(_root);
	@override late final _TranslationsRemindersDe reminders = _TranslationsRemindersDe._(_root);
	@override late final _TranslationsNotificationsDe notifications = _TranslationsNotificationsDe._(_root);
	@override late final _TranslationsLoginDe login = _TranslationsLoginDe._(_root);
	@override late final _TranslationsDisclaimerDe disclaimer = _TranslationsDisclaimerDe._(_root);
	@override late final _TranslationsCommonDe common = _TranslationsCommonDe._(_root);
	@override late final _TranslationsFeedbackRatingDe feedbackRating = _TranslationsFeedbackRatingDe._(_root);
	@override late final _TranslationsHealthDe health = _TranslationsHealthDe._(_root);
}

// Path: errors
class _TranslationsErrorsDe implements TranslationsErrorsEn {
	_TranslationsErrorsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Du hast zu viele Anfragen gesendet. Bitte warte einen Moment, bevor du es erneut versuchst.';
	@override String get networkError => 'Netzwerkfehler. Bitte überprüfe deine Internetverbindung.';
	@override String get unknownError => 'Etwas ist schiefgelaufen. Bitte versuche es später noch einmal.';
	@override String get loadingProfileData => 'Fehler beim Laden der Profildaten';
	@override String get somethingWentWrong => 'Etwas ist schiefgegangen.';
	@override String get retry => 'Erneut versuchen';
}

// Path: onboarding
class _TranslationsOnboardingDe implements TranslationsOnboardingEn {
	_TranslationsOnboardingDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Willkommen bei ${appLabel}';
	@override String get subtitle => 'Ihr persönlicher Ernährungsbegleiter, betrieben von KI';
	@override String get getStarted => 'Loslegen';
	@override late final _TranslationsOnboardingFeaturesDe features = _TranslationsOnboardingFeaturesDe._(_root);
	@override late final _TranslationsOnboardingGenderDe gender = _TranslationsOnboardingGenderDe._(_root);
	@override late final _TranslationsOnboardingHeightDe height = _TranslationsOnboardingHeightDe._(_root);
	@override late final _TranslationsOnboardingWeightDe weight = _TranslationsOnboardingWeightDe._(_root);
	@override late final _TranslationsOnboardingAgeDe age = _TranslationsOnboardingAgeDe._(_root);
	@override late final _TranslationsOnboardingBmiScaleDe bmiScale = _TranslationsOnboardingBmiScaleDe._(_root);
	@override late final _TranslationsOnboardingWeightGoalDe weightGoal = _TranslationsOnboardingWeightGoalDe._(_root);
	@override late final _TranslationsOnboardingActivityLevelDe activityLevel = _TranslationsOnboardingActivityLevelDe._(_root);
	@override late final _TranslationsOnboardingHealthConnectDe healthConnect = _TranslationsOnboardingHealthConnectDe._(_root);
	@override late final _TranslationsOnboardingReinforcementDe reinforcement = _TranslationsOnboardingReinforcementDe._(_root);
}

// Path: tabs
class _TranslationsTabsDe implements TranslationsTabsEn {
	_TranslationsTabsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Dashboard';
	@override String get history => 'Historie';
}

// Path: home
class _TranslationsHomeDe implements TranslationsHomeEn {
	_TranslationsHomeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryDe aiSummary = _TranslationsHomeAiSummaryDe._(_root);
	@override late final _TranslationsHomeDailyGoalDe dailyGoal = _TranslationsHomeDailyGoalDe._(_root);
	@override late final _TranslationsHomeDailySummaryDe dailySummary = _TranslationsHomeDailySummaryDe._(_root);
	@override late final _TranslationsHomeIntakeProgressDe intakeProgress = _TranslationsHomeIntakeProgressDe._(_root);
	@override late final _TranslationsHomeIntakeHistoryDe intakeHistory = _TranslationsHomeIntakeHistoryDe._(_root);
	@override late final _TranslationsHomeMealLogDe mealLog = _TranslationsHomeMealLogDe._(_root);
	@override late final _TranslationsHomeMealDescriptionDe mealDescription = _TranslationsHomeMealDescriptionDe._(_root);
	@override late final _TranslationsHomeFavoriteMealsDe favoriteMeals = _TranslationsHomeFavoriteMealsDe._(_root);
	@override late final _TranslationsHomeMealSnapDe mealSnap = _TranslationsHomeMealSnapDe._(_root);
	@override late final _TranslationsHomeConnectHealthDe connectHealth = _TranslationsHomeConnectHealthDe._(_root);
}

// Path: history
class _TranslationsHistoryDe implements TranslationsHistoryEn {
	_TranslationsHistoryDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Keine Mahlzeiten aufgezeichnet';
	@override String get emptyMessage => 'Mache ein Bild von deiner letzten Mahlzeit, um sie hier einzutragen.';
	@override String get today => 'Heute';
	@override String get yesterday => 'Gestern';
}

// Path: meal
class _TranslationsMealDe implements TranslationsMealEn {
	_TranslationsMealDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Oh nein!';
	@override String get delete => 'Löschen';
	@override String get editMeal => 'Mahlzeit bearbeiten';
	@override String get addMeal => 'Mahlzeit hinzufügen';
	@override String get saveMeal => 'Mahlzeit speichern';
	@override String get save => 'Speichern';
	@override String get mealName => 'Mahlzeitenname';
	@override String get mealNameHint => 'z. B. Rührei mit Toast';
	@override String get mealQuantity => 'Mahlmenge';
	@override String get mealQuantityHint => 'z. B. 1 Schüssel, 2 Scheiben';
	@override String get timeOfMeal => 'Uhrzeit der Mahlzeit';
	@override String get timeOfMealHint => 'Wählen Sie die Zeit, zu der Sie Ihre Mahlzeit hatten';
	@override String get mealType => 'Mahlzeittype';
	@override late final _TranslationsMealNutritionDe nutrition = _TranslationsMealNutritionDe._(_root);
	@override late final _TranslationsMealDeleteConfirmationDe deleteConfirmation = _TranslationsMealDeleteConfirmationDe._(_root);
	@override String get addedToLog => 'Mahlzeit zu deinem Protokoll hinzugefügt!';
	@override String couldNotAdd({required Object error}) => 'Mahlzeit konnte nicht hinzugefügt werden: ${error}';
	@override String get savedSuccessfully => 'Mahlzeit erfolgreich hinzugefügt!';
	@override String get updatedSuccessfully => 'Mahlzeit erfolgreich aktualisiert!';
	@override String errorSaving({required Object error}) => 'Fehler beim Speichern der Mahlzeit: ${error}';
	@override String get removedFromFavorites => 'Von den Favoriten entfernt!';
	@override String get savedAsFavorite => 'Mahlzeit als Favorit gespeichert!';
	@override String couldNotUpdateFavorite({required Object error}) => 'Favorit konnte nicht aktualisiert werden: ${error}';
	@override String failedToProcess({required Object error}) => 'Verarbeitung fehlgeschlagen: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Bildverarbeitung fehlgeschlagen: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Fehler beim Komprimieren des Bildes: ${error}';
	@override String get failedToSave => 'Daten konnten nicht gespeichert werden. Bitte versuchen Sie es erneut.';
	@override String get skip => 'Überspringen';
	@override late final _TranslationsMealVariationDe variation = _TranslationsMealVariationDe._(_root);
}

// Path: favorites
class _TranslationsFavoritesDe implements TranslationsFavoritesEn {
	_TranslationsFavoritesDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoriten';
	@override String get empty => 'Noch keine Lieblingsmahlzeiten.';
	@override String get searchPlaceholder => 'Favoriten durchsuchen';
	@override String get searchEmptyTitle => 'Keine Favoriten entsprechen deiner Suche';
	@override String get searchEmptySubtitle => 'Versuche einen anderen Namen, eine andere Menge oder eine andere Mahlzeitart.';
	@override String get sortLabel => 'Favoriten sortieren';
	@override String get undo => 'Rückgängig';
	@override String removed({required Object name}) => 'Entfernt ${name} aus deinen Favoriten';
	@override late final _TranslationsFavoritesSortOptionsDe sortOptions = _TranslationsFavoritesSortOptionsDe._(_root);
}

// Path: profile
class _TranslationsProfileDe implements TranslationsProfileEn {
	_TranslationsProfileDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Keine Profildaten gefunden';
	@override String get yourProfile => 'Dein Profil';
	@override String get viewAndManage => 'Gesundheitsinformationen ansehen und verwalten';
	@override late final _TranslationsProfileSectionsDe sections = _TranslationsProfileSectionsDe._(_root);
	@override String get gender => 'Geschlecht';
	@override String get height => 'Größe';
	@override String get weight => 'Gewicht';
	@override String get age => 'Alter';
	@override String get weightGoal => 'Gewichtsziele';
	@override String get targetWeight => 'Zielgewicht';
	@override String get activityLevel => 'Aktivitätslevel';
	@override String get healthMetrics => 'Gesundheitsmetriken';
	@override String get notSet => 'Nicht festgelegt';
	@override String get years => 'Jahre';
	@override String get updatedSuccessfully => 'Profil erfolgreich aktualisiert!';
	@override late final _TranslationsProfileCalculatedValuesDe calculatedValues = _TranslationsProfileCalculatedValuesDe._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreDe implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gesundheitswert';
	@override String get whyThisScore => 'Warum dieser Wert?';
	@override String get note => 'Dieser Wert ist eine AI-Schätzung basierend auf den identifizierten Zutaten und der Nährstoffdichte. Konsultieren Sie immer einen Fachmann für diätetische Ratschläge.';
	@override String get unhealthy => 'Ungesund';
	@override String get healthy => 'Gesund';
	@override String get neutral => 'Neutral';
}

// Path: editProfile
class _TranslationsEditProfileDe implements TranslationsEditProfileEn {
	_TranslationsEditProfileDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil bearbeiten';
	@override late final _TranslationsEditProfileSectionsDe sections = _TranslationsEditProfileSectionsDe._(_root);
	@override String get gender => 'Geschlecht';
	@override String get dateOfBirth => 'Geburtsdatum';
	@override String get height => 'Größe';
	@override String get weight => 'Gewicht';
	@override String get weightGoal => 'Gewichtsziele';
	@override String get activityLevel => 'Aktivitätslevel';
	@override String get metric => 'Metric';
	@override String get imperial => 'Imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metric (cm)';
	@override String get imperialFtIn => 'Imperial (ft/in)';
	@override String get metricKg => 'Metric (kg)';
	@override String get imperialLbs => 'Imperial (lbs)';
	@override late final _TranslationsEditProfileGendersDe genders = _TranslationsEditProfileGendersDe._(_root);
	@override late final _TranslationsEditProfileWeightGoalsDe weightGoals = _TranslationsEditProfileWeightGoalsDe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsDe activityLevels = _TranslationsEditProfileActivityLevelsDe._(_root);
}

// Path: settings
class _TranslationsSettingsDe implements TranslationsSettingsEn {
	_TranslationsSettingsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Einstellungen';
	@override late final _TranslationsSettingsSectionsDe sections = _TranslationsSettingsSectionsDe._(_root);
	@override late final _TranslationsSettingsEditProfileDe editProfile = _TranslationsSettingsEditProfileDe._(_root);
	@override late final _TranslationsSettingsLanguageDe language = _TranslationsSettingsLanguageDe._(_root);
	@override late final _TranslationsSettingsHeightUnitDe heightUnit = _TranslationsSettingsHeightUnitDe._(_root);
	@override late final _TranslationsSettingsWeightUnitDe weightUnit = _TranslationsSettingsWeightUnitDe._(_root);
	@override late final _TranslationsSettingsMealRemindersDe mealReminders = _TranslationsSettingsMealRemindersDe._(_root);
	@override late final _TranslationsSettingsThemeDe theme = _TranslationsSettingsThemeDe._(_root);
	@override late final _TranslationsSettingsSendFeedbackDe sendFeedback = _TranslationsSettingsSendFeedbackDe._(_root);
	@override late final _TranslationsSettingsExportMealHistoryDe exportMealHistory = _TranslationsSettingsExportMealHistoryDe._(_root);
	@override late final _TranslationsSettingsClearAllDataDe clearAllData = _TranslationsSettingsClearAllDataDe._(_root);
	@override late final _TranslationsSettingsDebugOptionsDe debugOptions = _TranslationsSettingsDebugOptionsDe._(_root);
	@override String get developerModeEnabled => 'Entwicklermodus aktiviert!';
	@override late final _TranslationsSettingsHealthConnectDe healthConnect = _TranslationsSettingsHealthConnectDe._(_root);
	@override late final _TranslationsSettingsAboutDe about = _TranslationsSettingsAboutDe._(_root);
	@override late final _TranslationsSettingsAppInfoDe appInfo = _TranslationsSettingsAppInfoDe._(_root);
}

// Path: reminders
class _TranslationsRemindersDe implements TranslationsRemindersEn {
	_TranslationsRemindersDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bleibe mit Erinnerungen auf Kurs';
	@override String get description => 'Erhalte sanfte Erinnerungen, um deine Mahlzeiten zu protokollieren und konsistent mit deinen Ernährungszielen zu bleiben';
	@override String get notificationsEnabled => 'Benachrichtigungen aktiviert';
	@override String get notificationsDisabled => 'Benachrichtigungen deaktiviert';
	@override String get enabledSubtitle => 'Du erhältst Erinnerungen für Mahlzeiten';
	@override String get disabledSubtitle => 'Aktiviere Benachrichtigungen, um Erinnerungen für Mahlzeiten zu erhalten';
	@override String get mealReminders => 'Mahlzeit Erinnerungen';
	@override String get breakfast => 'Frühstück';
	@override String get lunch => 'Mittagessen';
	@override String get dinner => 'Abendessen';
	@override String get snack => 'Snack';
	@override String get unknown => 'Unbekannt';
	@override String get change => 'Ändern';
	@override String get enableNotifications => 'Benachrichtigungen aktivieren';
	@override String get skipForNow => 'Für jetzt überspringen';
	@override String get saveChanges => 'Änderungen speichern';
	@override String get enabledSuccessfully => 'Benachrichtigungen erfolgreich aktiviert!';
	@override String get permissionDenied => 'Benachrichtigungserlaubnis verweigert';
	@override String errorEnabling({required Object error}) => 'Fehler beim Aktivieren der Benachrichtigungen: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Fehler beim Abschluss der Einrichtung: ${error}';
}

// Path: notifications
class _TranslationsNotificationsDe implements TranslationsNotificationsEn {
	_TranslationsNotificationsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastDe breakfast = _TranslationsNotificationsBreakfastDe._(_root);
	@override late final _TranslationsNotificationsLunchDe lunch = _TranslationsNotificationsLunchDe._(_root);
	@override late final _TranslationsNotificationsDinnerDe dinner = _TranslationsNotificationsDinnerDe._(_root);
	@override late final _TranslationsNotificationsSnackDe snack = _TranslationsNotificationsSnackDe._(_root);
	@override late final _TranslationsNotificationsTestDe test = _TranslationsNotificationsTestDe._(_root);
}

// Path: login
class _TranslationsLoginDe implements TranslationsLoginEn {
	_TranslationsLoginDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anmelden';
	@override String get signInWithGoogle => 'Mit Google anmelden';
	@override String get signInFailed => 'Google-Anmeldung fehlgeschlagen oder abgebrochen.';
}

// Path: disclaimer
class _TranslationsDisclaimerDe implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Bitte beachten';
	@override late final _TranslationsDisclaimerSnapDe snap = _TranslationsDisclaimerSnapDe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateDe weightEstimate = _TranslationsDisclaimerWeightEstimateDe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDe healthMetrics = _TranslationsDisclaimerHealthMetricsDe._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureDe calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureDe._(_root);
}

// Path: common
class _TranslationsCommonDe implements TranslationsCommonEn {
	_TranslationsCommonDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get close => 'Schließen';
	@override String get kContinue => 'Fortfahren';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingDe implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Gefällt dir ${appLabel}?';
	@override String get yes => 'Ja, gefällt mir';
	@override String get no => 'Nicht wirklich';
	@override String get rateStepHeading => 'Bewerte uns im Play Store';
	@override String get emailStepHeading => 'Sende Feedback per E-Mail';
	@override String soloDevMessage({required Object appLabel}) => 'Eine kurze Bewertung hilft anderen, ${appLabel} zu finden und hält die Weiterentwicklung am Laufen. Würdest du kurz eine Bewertung abgeben?';
	@override String get shareFeedbackViaEmail => 'Dein Feedback prägt, was als Nächstes kommt — wir lesen jede Nachricht. Möchtest du deine Gedanken per E‑Mail mit uns teilen?';
	@override String get rateCta => 'Im Play Store bewerten';
	@override String get maybeLater => 'Vielleicht später';
	@override String get sendFeedback => 'Feedback senden';
	@override String get noThanks => 'Nein, danke';
	@override String get aboutUsDescription => 'Mit Sorgfalt von einem kleinen Team entwickelt. Wir legen Wert auf Datenschutz, Einfachheit und darauf, dir zu helfen, gesündere Essgewohnheiten aufzubauen.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Neugierig, wer hinter ${appLabel} steckt? Sieh dir ';
	@override String get aboutUsLinkLabel => 'Über uns';
	@override String get thankYouMessage => 'Danke! Wir fragen ein anderes Mal wieder.';
}

// Path: health
class _TranslationsHealthDe implements TranslationsHealthEn {
	_TranslationsHealthDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Konnte nicht mit Health Connect synchronisieren';
	@override String get mealSynced => 'Mahlzeit mit Health Connect synchronisiert';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesDe implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionDe foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionDe._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisDe aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisDe._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationDe healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationDe._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderDe implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Was ist Ihr Geschlecht?';
	@override String get description => 'Das Geschlecht hilft uns, Ihre Grundumsatzrate (BMR) genau zu berechnen.';
	@override String get next => 'Weiter';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightDe implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wie groß sind Sie?';
	@override String get description => 'Ihre Größe hilft uns, Ihren BMI und Ihren Energiebedarf genau zu berechnen.';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperial';
	@override String get next => 'Weiter';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightDe implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Wie viel wiegen Sie derzeit?';
	@override String get currentDescription => 'Ihr aktuelles Gewicht ist entscheidend für die Personalisierung Ihrer täglichen Ziele.';
	@override String get targetTitle => 'Was ist Ihr Zielgewicht?';
	@override String get targetDescription => 'Ein Zielgewicht festzulegen, hilft uns, Ihren langfristigen Plan zu bestimmen.';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperial';
	@override String get next => 'Weiter';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeDe implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wann haben Sie Geburtstag?';
	@override String get description => 'Ihr Alter hilft uns, Ihren Kalorienbedarf genau zu berechnen.';
	@override String get next => 'Weiter';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleDe implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Untergewicht';
	@override String get healthy => 'Gesund';
	@override String get overweight => 'Übergewicht';
	@override String get obese => 'Adipös';
	@override late final _TranslationsOnboardingBmiScaleCategoriesDe categories = _TranslationsOnboardingBmiScaleCategoriesDe._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesDe messages = _TranslationsOnboardingBmiScaleMessagesDe._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalDe implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Was ist Ihr Ziel?';
	@override String get description => 'Wählen Sie das Ziel, das am besten beschreibt, was Sie erreichen möchten.';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelDe implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wie aktiv sind Sie?';
	@override String get description => 'Das hilft uns, Ihren täglichen Kalorienbedarf genauer zu berechnen.';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectDe implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mit Health Connect verbinden';
	@override String get description => 'Synchronisieren Sie Ihre Gesundheitsdaten für bessere Einblicke und automatisches Kalorienzählen';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingDe automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingDe._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsDe progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsDe._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationDe seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationDe._(_root);
	@override String get connected => 'Health Connect verbunden';
	@override String get notConnected => 'Health Connect nicht verbunden';
	@override String get setup => 'Health Connect einrichten';
	@override String get skipForNow => 'Für jetzt überspringen';
	@override String get statusConnected => 'Health Connect ist verbunden.';
	@override String get statusSuccess => 'Health Connect wurde erfolgreich verbunden!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Zugriff verweigert. Bitte aktivieren Sie die Gesundheitsverbindungsberechtigungen in den Einstellungen Ihres Telefons für ${appLabel}.';
	@override String statusError({required Object error}) => 'Fehler beim Einrichten von Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementDe implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessDe trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessDe._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileDe healthProfile = _TranslationsOnboardingReinforcementHealthProfileDe._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleDe goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleDe._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryDe implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Deine KI‑Zusammenfassung';
	@override String get logMore => 'Trage in den nächsten Tagen mehr Mahlzeiten ein, um deine personalisierten KI‑Einblicke zu erhalten.';
	@override String get loading => 'Deine Zusammenfassung wird geladen...';
	@override String mealCount({required Object count}) => '${count} Mahlzeiten protokolliert';
	@override String macroBalanceScore({required Object score}) => 'Ausgewogenheitswert ${score}';
	@override String get topFoods => 'Top-Lebensmittel';
	@override String get trendUp => 'Kalorien steigen an';
	@override String get trendDown => 'Kalorien nehmen ab';
	@override String get trendSteady => 'Kalorien bleiben stabil';
	@override String generatedAt({required Object time}) => 'Aktualisiert ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalDe implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Setze dein tägliches Ziel';
	@override String get titleSet => 'Dein tägliches Ziel';
	@override String get description => 'Bereit, deine Wellness-Reise zu beginnen? Setze dein tägliches Kalorienziel unten, um deinen Fortschritt zu starten.';
	@override String get descriptionSet => 'Dein Kompass ist eingestellt! Dies ist dein tägliches Kalorienziel, um dich zu leiten.';
	@override String get yourGoal => 'Dein Ziel';
	@override String get goal => 'Tagesziel';
	@override String get dailyCalories => 'Tägliche Kalorien (kcal)';
	@override String get setGoal => 'Ziel setzen';
	@override String get intake => 'Aufnahme';
	@override String get burned => 'Verbrannt';
	@override String get weightImpact => 'Gewichtsauswirkung';
	@override String get estLoss => 'Voraussichtlicher Verlust von';
	@override String get estGain => 'Voraussichtlicher Gewinn von';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryDe implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tägliche Zusammenfassung';
	@override String get calories => 'Kalorien';
	@override String get carbs => 'Kohlenhydrate';
	@override String get protein => 'Eiweiß';
	@override String get fat => 'Fett';
	@override String get fiber => 'Ballaststoffe';
	@override String get grams => 'Gramm';
	@override String get chartAccessibilityLabel => 'Makronährstoff-Diagramm';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressDe implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Makroverteilung heute';
	@override String get target => 'Ziel';
	@override String get current => 'Aktuell';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryDe implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '7-Tage Makroverlauf';
	@override String get noHistoryYet => 'Noch keine Historie';
	@override String get startLogging => 'Beginnen Sie mit der Protokollierung von Mahlzeiten, um hier Ihre\n7-Tage-Makrotrends zu sehen';
}

// Path: home.mealLog
class _TranslationsHomeMealLogDe implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eingetragene Mahlzeiten';
	@override String get emptyMessage => 'Mache ein Bild von deiner letzten Mahlzeit, um sie hier einzutragen.';
	@override String get noMealsToday => 'Heute keine Mahlzeiten aufgezeichnet';
	@override String get seeAllMeals => 'Alle Mahlzeiten ansehen';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionDe implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Schnell hinzufügen mit KI';
	@override String get description => 'Beschreibe deine Mahlzeit und lass die KI die Details übernehmen.';
	@override String get hint => 'z.B. Zum Frühstück hatte ich eine große Schüssel Haferflocken mit einer geschnittenen Banane und einem Löffel Whey ...';
	@override String get analyzeMeal => 'Mahlzeit analysieren';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsDe implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lieblingsmahlzeiten';
	@override String get description => 'Füge schnell eine deiner Lieblingsmahlzeiten hinzu.';
	@override String get noFavorites => 'Noch keine Lieblingsmahlzeiten.';
	@override String get addFavoriteHint => 'Klicke auf den Stern bei einer Mahlzeit, um sie als Favorit zu markieren.';
	@override String get seeAll => 'Alle ansehen';
	@override String get add => 'Hinzufügen';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapDe implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snap & Verfolge deine Mahlzeit';
	@override String get description => 'Nutze deine Kamera, um ein Bild von deinem Essen für die KI-Analyse zu machen.';
	@override String get openCamera => 'Kamera öffnen';
	@override String get gallery => 'Galerie';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthDe implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mit Health Connect synchronisieren';
	@override String get description => 'Synchronisiere deine Ernährungsdaten mit Health Connect';
	@override String get install => 'Installieren';
	@override String get connect => 'Verbinden';
}

// Path: meal.nutrition
class _TranslationsMealNutritionDe implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorien';
	@override String get carbs => 'Kohlenhydrate (g)';
	@override String get protein => 'Eiweiß (g)';
	@override String get fat => 'Fett (g)';
	@override String get fiber => 'Ballaststoffe (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationDe implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahlzeit löschen';
	@override String get message => 'Bist du sicher, dass du diesen Mahlzeiteintrag löschen möchtest?';
	@override String get cancel => 'Abbrechen';
	@override String get delete => 'Löschen';
}

// Path: meal.variation
class _TranslationsMealVariationDe implements TranslationsMealVariationEn {
	_TranslationsMealVariationDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Frage ${current} von ${total}';
	@override String get noVariationsAvailable => 'Keine Varianten verfügbar';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsDe implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Neueste';
	@override String get calories => 'Kalorien';
	@override String get alphabetical => 'A–Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsDe implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'GRUNDLEGENDE INFORMATIONEN';
	@override String get goalsAndActivity => 'ZIELE & AKTIVITÄT';
	@override String get calculatedValues => 'BERECHNETE WERTE';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesDe implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Tägliches Ziel';
	@override String get calPerDay => 'Kalorien/Tag';
	@override String get notAvailable => 'Nicht verfügbar';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsDe implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSÖNLICHE INFORMATIONEN';
	@override String get physicalMeasurements => 'PHYSISCHE MAßE';
	@override String get goalsAndActivity => 'ZIELE & AKTIVITÄT';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersDe implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get male => 'Männlich';
	@override String get female => 'Weiblich';
	@override String get other => 'Sonstiges';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsDe implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightDe loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightDe._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightDe maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightDe._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightDe gainWeight = _TranslationsEditProfileWeightGoalsGainWeightDe._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsDe implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryDe sedentary = _TranslationsEditProfileActivityLevelsSedentaryDe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveDe lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveDe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveDe moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveDe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveDe veryActive = _TranslationsEditProfileActivityLevelsVeryActiveDe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveDe extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveDe._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsDe implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALISIERUNG';
	@override String get notifications => 'BENACHRICHTIGUNGEN';
	@override String get healthConnect => 'GESUNDHEITSVERBINDUNG';
	@override String get supportAndLegal => 'UNTERSTÜTZUNG & RECHTLICHES';
	@override String get about => 'ÜBER';
	@override String get dangerZone => 'GEFAHRENZONE';
	@override String get developer => 'ENTWICKLER';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileDe implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil bearbeiten';
	@override String get subtitle => 'Aktualisiere deine persönlichen Informationen';
}

// Path: settings.language
class _TranslationsSettingsLanguageDe implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sprache';
	@override String get subtitle => 'Wählen Sie Ihre bevorzugte Sprache';
	@override String get searchHint => 'Sprachen suchen...';
	@override String get noResults => 'Keine Ergebnisse gefunden';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitDe implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Größeneinheit';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitDe implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gewichtseinheit';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersDe implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahlzeit Erinnerungen';
	@override String get subtitle => 'Bleibe mit zeitgerechten Erinnerungen auf Kurs';
}

// Path: settings.theme
class _TranslationsSettingsThemeDe implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Design';
	@override String get light => 'Hell';
	@override String get dark => 'Dunkel';
	@override String get system => 'System';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackDe implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Feedback senden';
	@override String subtitle({required Object appLabel}) => 'Helfen Sie uns, ${appLabel} zu verbessern';
	@override String emailSubject({required Object appLabel}) => 'Feedback zur ${appLabel} App';
	@override String get emailBodyPrefix => 'Bitte geben Sie Ihr Feedback unten ein:';
	@override String get appVersion => 'App-Version';
	@override String get device => 'Gerät';
	@override String get osVersion => 'Betriebssystemversion';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryDe implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahlzeitenverlauf exportieren';
	@override String get subtitle => 'Teile eine CSV-Datei mit deinen protokollierten Mahlzeiten';
	@override String get shareText => 'Export deiner Calorify-Mahlzeiten';
	@override String failed({required Object error}) => 'Der Export deines Mahlzeitenverlaufs ist fehlgeschlagen: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataDe implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alle Daten löschen';
	@override String get subtitle => 'Alle deine Informationen unwiderruflich löschen';
	@override String get confirmationTitle => 'Alle Daten löschen?';
	@override String get confirmationMessage => 'Dieser Vorgang kann nicht rückgängig gemacht werden. Alle deine eingetragenen Mahlzeiten, Favoriten und Profileinstellungen werden dauerhaft gelöscht.';
	@override String get cancel => 'Abbrechen';
	@override String get clearEverything => 'Alles löschen';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsDe implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug-Optionen';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectDe implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gesundheitsverbindung';
	@override String get subtitle => 'Berechtigungen anzeigen und verwalten';
	@override late final _TranslationsSettingsHealthConnectUnavailableDe unavailable = _TranslationsSettingsHealthConnectUnavailableDe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsDe permissions = _TranslationsSettingsHealthConnectPermissionsDe._(_root);
	@override String get managePermissions => 'Berechtigungen verwalten';
	@override String get openSettings => 'Öffne die Health Connect-Einstellungen';
	@override String get requestPermissions => 'Berechtigungen anfordern';
	@override String get permissionRequestCancelledOrFailed => 'Die Berechtigungsanfrage wurde abgebrochen oder ist fehlgeschlagen. Bitte versuche es erneut oder erteile die Berechtigungen manuell in den Health Connect-Einstellungen.';
	@override String get permissionRequestFailed => 'Berechtigungen konnten nicht angefordert werden. Bitte versuche es erneut oder erteile die Berechtigungen manuell in den Health Connect-Einstellungen.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutDe implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Über';
	@override String get tagline => 'Schnelle, kostenlose und datenschutzorientierte Kalorienzählung';
	@override late final _TranslationsSettingsAboutOurStoryDe ourStory = _TranslationsSettingsAboutOurStoryDe._(_root);
	@override late final _TranslationsSettingsAboutPrivacyDe privacy = _TranslationsSettingsAboutPrivacyDe._(_root);
	@override late final _TranslationsSettingsAboutDeveloperDe developer = _TranslationsSettingsAboutDeveloperDe._(_root);
	@override late final _TranslationsSettingsAboutFeedbackDe feedback = _TranslationsSettingsAboutFeedbackDe._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoDe implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastDe implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Frühstückszeit! 🍳';
	@override String get body => 'Vergiss nicht, dein Frühstück zu protokollieren';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchDe implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mittagszeit! 🥗';
	@override String get body => 'Zeit, dein Mittagessen zu protokollieren';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerDe implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Abendessenszeit! 🍽️';
	@override String get body => 'Vergiss nicht, dein Abendessen zu protokollieren';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackDe implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snackzeit! 🍎';
	@override String get body => 'Zeit für einen gesunden Snack';
}

// Path: notifications.test
class _TranslationsNotificationsTestDe implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Testbenachrichtigung';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapDe implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} bietet geschätzte Nahrungsinformationen. Die Genauigkeit hängt von Ihren Eingaben und den Variationen der Lebensmittel ab. Verwenden Sie es als Leitfaden, nicht als endgültige Quelle. Konsultieren Sie einen Fachmann für persönliche Ernährungsberatung.';
	@override late final _TranslationsDisclaimerSnapPortionSizeDe portionSize = _TranslationsDisclaimerSnapPortionSizeDe._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsDe preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsDe._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsDe ingredients = _TranslationsDisclaimerSnapIngredientsDe._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsDe databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsDe._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateDe implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Über Gewichtsprognose';
	@override String get description => 'Die vorausgesagte Gewichtänderung ist eine theoretische Schätzung, die auf dem einfachen Kalorien-in-versus-Kalorien-aus-Modell basiert. Sie dient nur der motivationalen Orientierung, nicht als Vorhersage deines tatsächlichen Gewichts.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyDe calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyDe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsDe biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsDe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightDe waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightDe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceDe professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceDe._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsDe implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Diese Kennzahlen helfen Ihnen, den Energiebedarf Ihres Körpers zu verstehen und Ihre Ernährungsziele zu steuern.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrDe bmr = _TranslationsDisclaimerHealthMetricsBmrDe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeDe tdee = _TranslationsDisclaimerHealthMetricsTdeeDe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalDe dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalDe._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureDe implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Schätzung des Kalorienverbrauchs';
	@override String get description => 'Wenn Health Connect-Daten nicht verfügbar sind, schätzen wir, wie viele Kalorien Sie heute verbrannt haben, basierend auf Ihrem Grundumsatz (BMR) und Ihrem Aktivitätsniveau (TDEE). Die Schätzung wird auf den bereits verstrichenen Teil des Tages hochgerechnet.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedDe howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedDe._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDe professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDe._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionDe implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intelligente Lebensmittelkennung';
	@override String get description => 'Machen Sie ein Foto und lassen Sie die KI Ihre Mahlzeit identifizieren';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisDe implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'KI-Analyse';
	@override String get description => 'Erhalten Sie sofortige Nährwertinformationen aus Ihren Beschreibungen';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationDe implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gesundheitsintegration';
	@override String get description => 'Verbinden Sie sich mit Health Connect für bessere Einblicke';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesDe implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Untergewicht';
	@override String get healthyWeight => 'Gesundes Gewicht';
	@override String get overweight => 'Übergewicht';
	@override String get obese => 'Fettleibigkeit';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesDe implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Wir können Ihnen helfen, einen gesunden Plan zu entwickeln, um mit nährstoffreichen Mahlzeiten ein ausgewogenes Gewicht zu erreichen.';
	@override String get healthy => 'Großartige Arbeit! Sie liegen im gesunden Bereich. Wir helfen Ihnen, Ihre Vitalität und Energielevels zu erhalten.';
	@override String overweight({required Object appLabel}) => '${appLabel} wird Ihre Reise mit KI-gestütztem Tracking vereinfachen, damit Sie Ihre Ziele komfortabel erreichen.';
	@override String get obese => 'Wir sind hier, um Sie mit personalisierter Anleitung und nachhaltigen Strategien für Ihre Gesundheitsziele zu unterstützen.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingDe implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatisches Kalorienzählen';
	@override String get description => 'Kalorienverbrauch aus Ihren Fitness-Apps verfolgen';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsDe implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fortschrittsinsights';
	@override String get description => 'Erhalten Sie detaillierte Einblicke in Ihre Gesundheitstrends';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationDe implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nahtlose Integration';
	@override String get description => 'Daten von Ihren bevorzugten Gesundheits-Apps synchronisieren';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessDe implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sie sind nicht allein';
	@override String get genericMessage => 'Studien zeigen, dass konsequentes Tracking der wichtigste Indikator für langfristigen Erfolg ist.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Für einen ${age} Jahre alten ${gender}, der ${goal} erreichen möchte, ist konsequentes Tracking der wichtigste Erfolgsfaktor.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} macht es 10-mal einfacher als manuell.';
	@override String get getStartedTitle => 'Bereit, loszulegen?';
	@override String get tipPhoto => 'Mach ein Foto deiner Mahlzeiten für eine sofortige Analyse';
	@override String get tipConsistency => 'Halte ein konsistentes Protokoll, um bedeutenden Fortschritt zu sehen';
	@override String get tipProgress => 'Verfolge deinen Fortschritt täglich, um motiviert zu bleiben';
	@override String get button => 'Loslegen';
	@override String get defaultGender => 'Person';
	@override String get defaultGoal => 'gesundere Sie';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileDe implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ihr Gesundheitsprofil';
	@override String bmiDescription({required Object bmi}) => 'Basierend auf Ihren Werten beträgt Ihr BMI ${bmi}.';
	@override String get finalizeDescription => 'Lassen Sie uns Ihr Profil vervollständigen, um Ihr Erlebnis zu personalisieren.';
	@override String get goalGain => 'zunehmen';
	@override String get goalLose => 'abnehmen';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Um Ihr Ziel zu erreichen, müssen Sie ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Sie haben Ihr Zielgewicht erreicht! Wir helfen Ihnen, es zu halten.';
	@override String get button => 'Loslegen';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleDe implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ausgezeichneter Start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Sie haben den ersten Schritt in Richtung ${goalText} gemacht. Da Sie ${activityText} sind, wird ${appLabel} Ihre Ziele an Ihren Lebensstil anpassen.';
	@override String get personalizedTargets => 'Personalisierte Kalorienziele';
	@override String get aiMealDetection => 'KI-gestützte Essenskennung';
	@override String get macroBreakdowns => 'Detaillierte Makronährstoffaufteilungen';
	@override String get button => 'Loslegen';
	@override String get defaultGoal => 'Ihrer Ziele';
	@override String get defaultActivity => 'aktiv';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightDe implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gewicht verlieren';
	@override String get description => 'Einen Kaloriendefizit schaffen, um Gewicht zu verlieren';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightDe implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gewicht halten';
	@override String get description => 'Ihr aktuelles Gewicht halten';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightDe implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gewicht zunehmen';
	@override String get description => 'Einen Kalorienüberschuss schaffen, um Gewicht zuzunehmen';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryDe implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sitzend';
	@override String get description => 'Wenig bis keine Bewegung';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveDe implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Leicht aktiv';
	@override String get description => 'Leichte Bewegung 1-3 Tage/Woche';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveDe implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mäßig aktiv';
	@override String get description => 'Mäßige Bewegung 3-5 Tage/Woche';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveDe implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sehr aktiv';
	@override String get description => 'Intensive Bewegung 6-7 Tage/Woche';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveDe implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrem aktiv';
	@override String get description => 'Sehr harte Bewegung, körperlicher Job';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableDe implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect nicht verfügbar';
	@override String get description => 'Health Connect ist auf diesem Gerät nicht verfügbar. Bitte installiere Health Connect aus dem Play Store (Android 9+) oder aktualisiere auf Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsDe implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berechtigungen';
	@override String get description => 'Die folgenden Berechtigungen werden angefordert, um die Integration der Gesundheitsverbindung bereitzustellen:';
	@override String get granted => 'Erteilt';
	@override String get notGranted => 'Nicht Erteilt';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDe caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadDe nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadDe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteDe nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteDe._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryDe implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unsere Geschichte';
	@override String content({required Object appLabel}) => '${appLabel} entstand aus einer einfachen Frustration: Die meisten Kalorienzähler-Apps sind entweder übermäßig kompliziert, verlangen ständige manuelle Eingaben, erheben hohe Abonnementsgebühren oder gehen mit der Privatsphäre um.\n\nAls solo-Entwickler wollte ich etwas Einfacheres und Faireres schaffen — eine App, die KI nutzt, um den Aufwand zu reduzieren, schnell und kostenlos ist und Ihre Gesundheitsdaten respektiert.\n\n${appLabel} ist die App, die ich mir gewünscht hätte: keine Konten, kein Tracking, keine Werbung — nur klare, praktische Einblicke und Ihre Gesundheitsziele.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyDe implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ihre Privatsphäre zählt';
	@override String get description => 'Privatsphäre ist kein nachträglicher Gedanke — es ist ein Designprinzip. Das bedeutet in der Praxis:';
	@override String get noAccounts => 'Keine Konten erforderlich\nNutzen Sie die App sofort. Keine Anmeldungen, keine Identitäten.';
	@override String noTracking({required Object appLabel}) => 'Keine Verhaltensverfolgung\n${appLabel} überwacht nicht Ihre Aktivität, erstellt keine Nutzungsprofile oder verfolgt Sie über Apps oder Websites.';
	@override String noAds({required Object appLabel}) => 'Werbefrei von Anfang an\n${appLabel} wurde entwickelt, um ohne Werbung oder datengestützte Monetarisierung zu funktionieren.';
	@override String get noDataSelling => 'Keine Datenverkäufe\nIhre Gesundheitsdaten werden nie verkauft oder mit Dritten geteilt.';
	@override String get localStorage => 'Lokale Speicherung zuerst\nIhre Daten bleiben auf Ihrem Gerät.';
	@override String get privacyPolicy => 'Datenschutzbestimmungen';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperDe implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Entwickelt von einem Solo-Entwickler';
	@override String description({required Object appLabel}) => '${appLabel} wird von einem einzelnen Entwickler entwickelt und gewartet, der sich darauf konzentriert, ruhige, datenschutzfreundliche Gesundheitssoftware zu erstellen.\n\nFeedback wird persönlich gelesen und hilft, die Richtung der App zu gestalten.';
	@override String get website => 'Website';
	@override String get email => 'E-Mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackDe implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Gefällt Ihnen ${appLabel}?';
	@override String description({required Object appLabel}) => 'Ihr Feedback hilft, ${appLabel} für alle besser zu machen.';
	@override String get rateApp => 'Bewerten im Play Store';
	@override String get sendFeedback => 'Feedback senden';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeDe implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Portionsgröße';
	@override String get description => 'Die Genauigkeit der Schätzungen hängt stark von deiner korrekten Einschätzung der Portionsgröße ab.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsDe implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zubereitungsmethoden';
	@override String description({required Object appLabel}) => 'Zubereitungsmethoden können den Nährstoffgehalt von Lebensmitteln erheblich verändern. Die Schätzungen von ${appLabel} berücksichtigen möglicherweise nicht immer diese Variationen.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsDe implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zutaten';
	@override String get description => 'Komplexe Gerichte mit vielen versteckten Zutaten können zu weniger genauen Schätzungen führen.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsDe implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Datenbankbeschränkungen';
	@override String description({required Object appLabel}) => '${appLabel}s Lebensmittel-Datenbank ist umfangreich, enthält jedoch möglicherweise nicht jedes einzelne Lebensmittel oder jede Variation.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyDe implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kaloriengenauigkeit';
	@override String get description => 'Diese Schätzung ist nur so genau wie deine getrackte Kalorienaufnahme und -ausgabe. Ungenaue Protokollierung führt zu einer ungenauen Prognose.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsDe implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologische Faktoren';
	@override String description({required Object appLabel}) => 'Das tatsächliche Gewichtsverlust/-zuwachs wird von Faktoren wie Metabolismus, Hormonen, Schlaf, Stress, Hydration und anderen individuellen Faktoren beeinflusst, die ${appLabel} nicht messen kann.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightDe implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wassergewicht & Schwankungen';
	@override String get description => 'Das normale Tagesgewicht kann aufgrund von Wassereinlagerungen, Verdauung und Zeitpunkten erheblich schwanken. Die Schätzung berücksichtigt diese täglichen Veränderungen nicht.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceDe implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fachliche Anleitung';
	@override String get description => 'Verwende diese Schätzung nicht, um medizinische Entscheidungen zu treffen. Konsultiere immer einen Gesundheitsexperten oder registrierten Ernährungsberater für individuelle Empfehlungen zur Gewichtsverwaltung.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrDe implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Die Basale Stoffwechselrate (BMR) ist die Anzahl der Kalorien, die Ihr Körper in Ruhe verbrennt, um grundlegende Funktionen wie Atmung und Kreislauf aufrechtzuerhalten. Der BMR hängt von Ihrem Alter, Geschlecht, Ihrer Größe und Ihrem Gewicht ab. Ein höherer BMR bedeutet, dass Ihr Körper in Ruhe mehr Kalorien verbrennt, oft aufgrund von mehr Muskelmasse, jüngerem Alter oder männlichem Geschlecht. Ein niedrigerer BMR weist normalerweise auf weniger Muskelmasse, höheres Alter oder weibliches Geschlecht hin.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeDe implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Der Gesamtenergieverbrauch pro Tag (TDEE) ist die Gesamtzahl der Kalorien, die Sie pro Tag verbrennen, einschließlich Ihres BMR plus Kalorien aus körperlicher Aktivität und täglicher Bewegung. Der TDEE hängt von Ihrem BMR und Ihrem Aktivitätslevel ab. Ein höherer TDEE bedeutet, dass Sie insgesamt mehr Kalorien verbrennen, normalerweise weil Sie aktiver sind oder einen höheren BMR haben. Ein niedrigerer TDEE deutet auf weniger tägliche Aktivität oder einen niedrigeren BMR hin.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalDe implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tagesziel';
	@override String get description => 'Das Tagesziel ist Ihre empfohlene tägliche Kalorienaufnahme basierend auf Ihrem TDEE und Ihrem Gewichtsziel. Für Gewichtsverlust konsumieren Sie weniger Kalorien als Ihr TDEE. Für die Gewichtserhaltung stimmen Sie Ihren TDEE ab. Für Gewichtszunahme konsumieren Sie mehr Kalorien als Ihr TDEE. Dies hilft Ihnen, Ihre gewünschte Gewichtsveränderung in einem gesunden Tempo zu erreichen.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedDe implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wie die Schätzung berechnet wird';
	@override String get description => 'Wir berechnen Ihren TDEE (basierend auf Ihrem Profil) und multiplizieren ihn mit dem bereits verstrichenen Tagesanteil (Stunden + Minuten) / 24, um die bisher verbrannten Kalorien zu schätzen.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDe implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionelle Hinweise';
	@override String get description => 'Nutzen Sie diese Schätzung nicht für medizinische Entscheidungen. Konsultieren Sie stets eine medizinische Fachkraft oder einen registrierten Ernährungsberater oder eine registrierte Ernährungsberaterin für individuelle Beratung zur Gewichtskontrolle.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDe implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gesamt verbrannte Kalorien lesen';
	@override String get description => 'Erlaubt der App, Ihre insgesamt verbrannten Kalorien aus der Gesundheitsverbindung zu lesen.';
	@override String get usage => 'Diese Berechtigung wird verwendet, um Ihren täglichen Kalorienverbrauch in der App anzuzeigen, damit Sie Ihren gesamten Energieverbrauch im Laufe des Tages verstehen können.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadDe implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ernährungsdaten lesen';
	@override String get description => 'Erlaubt der App, Ernährungsdaten aus der Gesundheitsverbindung zu lesen.';
	@override String get usage => 'Diese Berechtigung ermöglicht es der App, Ernährungsinformationen zu lesen, die möglicherweise von anderen Apps, die mit der Gesundheitsverbindung verbunden sind, protokolliert wurden, wodurch Sie einen umfassenden Überblick über Ihre Ernährung erhalten.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteDe implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ernährungsdaten schreiben';
	@override String get description => 'Erlaubt der App, Ernährungsdaten in die Gesundheitsverbindung zu schreiben.';
	@override String get usage => 'Diese Berechtigung ermöglicht es der App, Ihre protokollierten Mahlzeiten mit der Gesundheitsverbindung zu synchronisieren und Ihre Ernährungsdaten anderen Gesundheits- und Fitnessanwendungen, die Sie verwenden, zur Verfügung zu stellen.';
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
			'errors.rateLimitExceeded' => 'Du hast zu viele Anfragen gesendet. Bitte warte einen Moment, bevor du es erneut versuchst.',
			'errors.networkError' => 'Netzwerkfehler. Bitte überprüfe deine Internetverbindung.',
			'errors.unknownError' => 'Etwas ist schiefgelaufen. Bitte versuche es später noch einmal.',
			'errors.loadingProfileData' => 'Fehler beim Laden der Profildaten',
			'errors.somethingWentWrong' => 'Etwas ist schiefgegangen.',
			'errors.retry' => 'Erneut versuchen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Willkommen bei ${appLabel}',
			'onboarding.subtitle' => 'Ihr persönlicher Ernährungsbegleiter, betrieben von KI',
			'onboarding.getStarted' => 'Loslegen',
			'onboarding.features.foodRecognition.title' => 'Intelligente Lebensmittelkennung',
			'onboarding.features.foodRecognition.description' => 'Machen Sie ein Foto und lassen Sie die KI Ihre Mahlzeit identifizieren',
			'onboarding.features.aiAnalysis.title' => 'KI-Analyse',
			'onboarding.features.aiAnalysis.description' => 'Erhalten Sie sofortige Nährwertinformationen aus Ihren Beschreibungen',
			'onboarding.features.healthIntegration.title' => 'Gesundheitsintegration',
			'onboarding.features.healthIntegration.description' => 'Verbinden Sie sich mit Health Connect für bessere Einblicke',
			'onboarding.gender.title' => 'Was ist Ihr Geschlecht?',
			'onboarding.gender.description' => 'Das Geschlecht hilft uns, Ihre Grundumsatzrate (BMR) genau zu berechnen.',
			'onboarding.gender.next' => 'Weiter',
			'onboarding.height.title' => 'Wie groß sind Sie?',
			'onboarding.height.description' => 'Ihre Größe hilft uns, Ihren BMI und Ihren Energiebedarf genau zu berechnen.',
			'onboarding.height.metric' => 'Metrisch',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Weiter',
			'onboarding.weight.currentTitle' => 'Wie viel wiegen Sie derzeit?',
			'onboarding.weight.currentDescription' => 'Ihr aktuelles Gewicht ist entscheidend für die Personalisierung Ihrer täglichen Ziele.',
			'onboarding.weight.targetTitle' => 'Was ist Ihr Zielgewicht?',
			'onboarding.weight.targetDescription' => 'Ein Zielgewicht festzulegen, hilft uns, Ihren langfristigen Plan zu bestimmen.',
			'onboarding.weight.metric' => 'Metrisch',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Weiter',
			'onboarding.age.title' => 'Wann haben Sie Geburtstag?',
			'onboarding.age.description' => 'Ihr Alter hilft uns, Ihren Kalorienbedarf genau zu berechnen.',
			'onboarding.age.next' => 'Weiter',
			'onboarding.bmiScale.underweight' => 'Untergewicht',
			'onboarding.bmiScale.healthy' => 'Gesund',
			'onboarding.bmiScale.overweight' => 'Übergewicht',
			'onboarding.bmiScale.obese' => 'Adipös',
			'onboarding.bmiScale.categories.underweight' => 'Untergewicht',
			'onboarding.bmiScale.categories.healthyWeight' => 'Gesundes Gewicht',
			'onboarding.bmiScale.categories.overweight' => 'Übergewicht',
			'onboarding.bmiScale.categories.obese' => 'Fettleibigkeit',
			'onboarding.bmiScale.messages.underweight' => 'Wir können Ihnen helfen, einen gesunden Plan zu entwickeln, um mit nährstoffreichen Mahlzeiten ein ausgewogenes Gewicht zu erreichen.',
			'onboarding.bmiScale.messages.healthy' => 'Großartige Arbeit! Sie liegen im gesunden Bereich. Wir helfen Ihnen, Ihre Vitalität und Energielevels zu erhalten.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} wird Ihre Reise mit KI-gestütztem Tracking vereinfachen, damit Sie Ihre Ziele komfortabel erreichen.',
			'onboarding.bmiScale.messages.obese' => 'Wir sind hier, um Sie mit personalisierter Anleitung und nachhaltigen Strategien für Ihre Gesundheitsziele zu unterstützen.',
			'onboarding.weightGoal.title' => 'Was ist Ihr Ziel?',
			'onboarding.weightGoal.description' => 'Wählen Sie das Ziel, das am besten beschreibt, was Sie erreichen möchten.',
			'onboarding.activityLevel.title' => 'Wie aktiv sind Sie?',
			'onboarding.activityLevel.description' => 'Das hilft uns, Ihren täglichen Kalorienbedarf genauer zu berechnen.',
			'onboarding.healthConnect.title' => 'Mit Health Connect verbinden',
			'onboarding.healthConnect.description' => 'Synchronisieren Sie Ihre Gesundheitsdaten für bessere Einblicke und automatisches Kalorienzählen',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatisches Kalorienzählen',
			'onboarding.healthConnect.automaticTracking.description' => 'Kalorienverbrauch aus Ihren Fitness-Apps verfolgen',
			'onboarding.healthConnect.progressInsights.title' => 'Fortschrittsinsights',
			'onboarding.healthConnect.progressInsights.description' => 'Erhalten Sie detaillierte Einblicke in Ihre Gesundheitstrends',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Nahtlose Integration',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Daten von Ihren bevorzugten Gesundheits-Apps synchronisieren',
			'onboarding.healthConnect.connected' => 'Health Connect verbunden',
			'onboarding.healthConnect.notConnected' => 'Health Connect nicht verbunden',
			'onboarding.healthConnect.setup' => 'Health Connect einrichten',
			'onboarding.healthConnect.skipForNow' => 'Für jetzt überspringen',
			'onboarding.healthConnect.statusConnected' => 'Health Connect ist verbunden.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect wurde erfolgreich verbunden!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Zugriff verweigert. Bitte aktivieren Sie die Gesundheitsverbindungsberechtigungen in den Einstellungen Ihres Telefons für ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Fehler beim Einrichten von Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Sie sind nicht allein',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Studien zeigen, dass konsequentes Tracking der wichtigste Indikator für langfristigen Erfolg ist.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Für einen ${age} Jahre alten ${gender}, der ${goal} erreichen möchte, ist konsequentes Tracking der wichtigste Erfolgsfaktor.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} macht es 10-mal einfacher als manuell.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Bereit, loszulegen?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Mach ein Foto deiner Mahlzeiten für eine sofortige Analyse',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Halte ein konsistentes Protokoll, um bedeutenden Fortschritt zu sehen',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Verfolge deinen Fortschritt täglich, um motiviert zu bleiben',
			'onboarding.reinforcement.trackingSuccess.button' => 'Loslegen',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'Person',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'gesundere Sie',
			'onboarding.reinforcement.healthProfile.title' => 'Ihr Gesundheitsprofil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Basierend auf Ihren Werten beträgt Ihr BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Lassen Sie uns Ihr Profil vervollständigen, um Ihr Erlebnis zu personalisieren.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'zunehmen',
			'onboarding.reinforcement.healthProfile.goalLose' => 'abnehmen',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Um Ihr Ziel zu erreichen, müssen Sie ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Sie haben Ihr Zielgewicht erreicht! Wir helfen Ihnen, es zu halten.',
			'onboarding.reinforcement.healthProfile.button' => 'Loslegen',
			'onboarding.reinforcement.goalLifestyle.title' => 'Ausgezeichneter Start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Sie haben den ersten Schritt in Richtung ${goalText} gemacht. Da Sie ${activityText} sind, wird ${appLabel} Ihre Ziele an Ihren Lebensstil anpassen.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personalisierte Kalorienziele',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'KI-gestützte Essenskennung',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detaillierte Makronährstoffaufteilungen',
			'onboarding.reinforcement.goalLifestyle.button' => 'Loslegen',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'Ihrer Ziele',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiv',
			'tabs.dashboard' => 'Dashboard',
			'tabs.history' => 'Historie',
			'home.aiSummary.title' => 'Deine KI‑Zusammenfassung',
			'home.aiSummary.logMore' => 'Trage in den nächsten Tagen mehr Mahlzeiten ein, um deine personalisierten KI‑Einblicke zu erhalten.',
			'home.aiSummary.loading' => 'Deine Zusammenfassung wird geladen...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} Mahlzeiten protokolliert',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Ausgewogenheitswert ${score}',
			'home.aiSummary.topFoods' => 'Top-Lebensmittel',
			'home.aiSummary.trendUp' => 'Kalorien steigen an',
			'home.aiSummary.trendDown' => 'Kalorien nehmen ab',
			'home.aiSummary.trendSteady' => 'Kalorien bleiben stabil',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Aktualisiert ${time}',
			'home.dailyGoal.title' => 'Setze dein tägliches Ziel',
			'home.dailyGoal.titleSet' => 'Dein tägliches Ziel',
			'home.dailyGoal.description' => 'Bereit, deine Wellness-Reise zu beginnen? Setze dein tägliches Kalorienziel unten, um deinen Fortschritt zu starten.',
			'home.dailyGoal.descriptionSet' => 'Dein Kompass ist eingestellt! Dies ist dein tägliches Kalorienziel, um dich zu leiten.',
			'home.dailyGoal.yourGoal' => 'Dein Ziel',
			'home.dailyGoal.goal' => 'Tagesziel',
			'home.dailyGoal.dailyCalories' => 'Tägliche Kalorien (kcal)',
			'home.dailyGoal.setGoal' => 'Ziel setzen',
			'home.dailyGoal.intake' => 'Aufnahme',
			'home.dailyGoal.burned' => 'Verbrannt',
			'home.dailyGoal.weightImpact' => 'Gewichtsauswirkung',
			'home.dailyGoal.estLoss' => 'Voraussichtlicher Verlust von',
			'home.dailyGoal.estGain' => 'Voraussichtlicher Gewinn von',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Tägliche Zusammenfassung',
			'home.dailySummary.calories' => 'Kalorien',
			'home.dailySummary.carbs' => 'Kohlenhydrate',
			'home.dailySummary.protein' => 'Eiweiß',
			'home.dailySummary.fat' => 'Fett',
			'home.dailySummary.fiber' => 'Ballaststoffe',
			'home.dailySummary.grams' => 'Gramm',
			'home.dailySummary.chartAccessibilityLabel' => 'Makronährstoff-Diagramm',
			'home.intakeProgress.title' => 'Makroverteilung heute',
			'home.intakeProgress.target' => 'Ziel',
			'home.intakeProgress.current' => 'Aktuell',
			'home.intakeHistory.title' => '7-Tage Makroverlauf',
			'home.intakeHistory.noHistoryYet' => 'Noch keine Historie',
			'home.intakeHistory.startLogging' => 'Beginnen Sie mit der Protokollierung von Mahlzeiten, um hier Ihre\n7-Tage-Makrotrends zu sehen',
			'home.mealLog.title' => 'Eingetragene Mahlzeiten',
			'home.mealLog.emptyMessage' => 'Mache ein Bild von deiner letzten Mahlzeit, um sie hier einzutragen.',
			'home.mealLog.noMealsToday' => 'Heute keine Mahlzeiten aufgezeichnet',
			'home.mealLog.seeAllMeals' => 'Alle Mahlzeiten ansehen',
			'home.mealDescription.title' => 'Schnell hinzufügen mit KI',
			'home.mealDescription.description' => 'Beschreibe deine Mahlzeit und lass die KI die Details übernehmen.',
			'home.mealDescription.hint' => 'z.B. Zum Frühstück hatte ich eine große Schüssel Haferflocken mit einer geschnittenen Banane und einem Löffel Whey ...',
			'home.mealDescription.analyzeMeal' => 'Mahlzeit analysieren',
			'home.favoriteMeals.title' => 'Lieblingsmahlzeiten',
			'home.favoriteMeals.description' => 'Füge schnell eine deiner Lieblingsmahlzeiten hinzu.',
			'home.favoriteMeals.noFavorites' => 'Noch keine Lieblingsmahlzeiten.',
			'home.favoriteMeals.addFavoriteHint' => 'Klicke auf den Stern bei einer Mahlzeit, um sie als Favorit zu markieren.',
			'home.favoriteMeals.seeAll' => 'Alle ansehen',
			'home.favoriteMeals.add' => 'Hinzufügen',
			'home.mealSnap.title' => 'Snap & Verfolge deine Mahlzeit',
			'home.mealSnap.description' => 'Nutze deine Kamera, um ein Bild von deinem Essen für die KI-Analyse zu machen.',
			'home.mealSnap.openCamera' => 'Kamera öffnen',
			'home.mealSnap.gallery' => 'Galerie',
			'home.connectHealth.title' => 'Mit Health Connect synchronisieren',
			'home.connectHealth.description' => 'Synchronisiere deine Ernährungsdaten mit Health Connect',
			'home.connectHealth.install' => 'Installieren',
			'home.connectHealth.connect' => 'Verbinden',
			'history.noMeals' => 'Keine Mahlzeiten aufgezeichnet',
			'history.emptyMessage' => 'Mache ein Bild von deiner letzten Mahlzeit, um sie hier einzutragen.',
			'history.today' => 'Heute',
			'history.yesterday' => 'Gestern',
			'meal.ohNo' => 'Oh nein!',
			'meal.delete' => 'Löschen',
			'meal.editMeal' => 'Mahlzeit bearbeiten',
			'meal.addMeal' => 'Mahlzeit hinzufügen',
			'meal.saveMeal' => 'Mahlzeit speichern',
			'meal.save' => 'Speichern',
			'meal.mealName' => 'Mahlzeitenname',
			'meal.mealNameHint' => 'z. B. Rührei mit Toast',
			'meal.mealQuantity' => 'Mahlmenge',
			'meal.mealQuantityHint' => 'z. B. 1 Schüssel, 2 Scheiben',
			'meal.timeOfMeal' => 'Uhrzeit der Mahlzeit',
			'meal.timeOfMealHint' => 'Wählen Sie die Zeit, zu der Sie Ihre Mahlzeit hatten',
			'meal.mealType' => 'Mahlzeittype',
			'meal.nutrition.calories' => 'Kalorien',
			'meal.nutrition.carbs' => 'Kohlenhydrate (g)',
			'meal.nutrition.protein' => 'Eiweiß (g)',
			'meal.nutrition.fat' => 'Fett (g)',
			'meal.nutrition.fiber' => 'Ballaststoffe (g)',
			'meal.deleteConfirmation.title' => 'Mahlzeit löschen',
			'meal.deleteConfirmation.message' => 'Bist du sicher, dass du diesen Mahlzeiteintrag löschen möchtest?',
			'meal.deleteConfirmation.cancel' => 'Abbrechen',
			'meal.deleteConfirmation.delete' => 'Löschen',
			'meal.addedToLog' => 'Mahlzeit zu deinem Protokoll hinzugefügt!',
			'meal.couldNotAdd' => ({required Object error}) => 'Mahlzeit konnte nicht hinzugefügt werden: ${error}',
			'meal.savedSuccessfully' => 'Mahlzeit erfolgreich hinzugefügt!',
			'meal.updatedSuccessfully' => 'Mahlzeit erfolgreich aktualisiert!',
			'meal.errorSaving' => ({required Object error}) => 'Fehler beim Speichern der Mahlzeit: ${error}',
			'meal.removedFromFavorites' => 'Von den Favoriten entfernt!',
			'meal.savedAsFavorite' => 'Mahlzeit als Favorit gespeichert!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Favorit konnte nicht aktualisiert werden: ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Verarbeitung fehlgeschlagen: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Bildverarbeitung fehlgeschlagen: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Fehler beim Komprimieren des Bildes: ${error}',
			'meal.failedToSave' => 'Daten konnten nicht gespeichert werden. Bitte versuchen Sie es erneut.',
			'meal.skip' => 'Überspringen',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Frage ${current} von ${total}',
			'meal.variation.noVariationsAvailable' => 'Keine Varianten verfügbar',
			'favorites.title' => 'Favoriten',
			'favorites.empty' => 'Noch keine Lieblingsmahlzeiten.',
			'favorites.searchPlaceholder' => 'Favoriten durchsuchen',
			'favorites.searchEmptyTitle' => 'Keine Favoriten entsprechen deiner Suche',
			'favorites.searchEmptySubtitle' => 'Versuche einen anderen Namen, eine andere Menge oder eine andere Mahlzeitart.',
			'favorites.sortLabel' => 'Favoriten sortieren',
			'favorites.undo' => 'Rückgängig',
			'favorites.removed' => ({required Object name}) => 'Entfernt ${name} aus deinen Favoriten',
			'favorites.sortOptions.recent' => 'Neueste',
			'favorites.sortOptions.calories' => 'Kalorien',
			'favorites.sortOptions.alphabetical' => 'A–Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Keine Profildaten gefunden',
			'profile.yourProfile' => 'Dein Profil',
			'profile.viewAndManage' => 'Gesundheitsinformationen ansehen und verwalten',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'GRUNDLEGENDE INFORMATIONEN',
			'profile.sections.goalsAndActivity' => 'ZIELE & AKTIVITÄT',
			'profile.sections.calculatedValues' => 'BERECHNETE WERTE',
			'profile.gender' => 'Geschlecht',
			'profile.height' => 'Größe',
			'profile.weight' => 'Gewicht',
			'profile.age' => 'Alter',
			'profile.weightGoal' => 'Gewichtsziele',
			'profile.targetWeight' => 'Zielgewicht',
			'profile.activityLevel' => 'Aktivitätslevel',
			'profile.healthMetrics' => 'Gesundheitsmetriken',
			'profile.notSet' => 'Nicht festgelegt',
			'profile.years' => 'Jahre',
			'profile.updatedSuccessfully' => 'Profil erfolgreich aktualisiert!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Tägliches Ziel',
			'profile.calculatedValues.calPerDay' => 'Kalorien/Tag',
			'profile.calculatedValues.notAvailable' => 'Nicht verfügbar',
			'healthScore.title' => 'Gesundheitswert',
			'healthScore.whyThisScore' => 'Warum dieser Wert?',
			'healthScore.note' => 'Dieser Wert ist eine AI-Schätzung basierend auf den identifizierten Zutaten und der Nährstoffdichte. Konsultieren Sie immer einen Fachmann für diätetische Ratschläge.',
			'healthScore.unhealthy' => 'Ungesund',
			'healthScore.healthy' => 'Gesund',
			'healthScore.neutral' => 'Neutral',
			'editProfile.title' => 'Profil bearbeiten',
			'editProfile.sections.personalInformation' => 'PERSÖNLICHE INFORMATIONEN',
			'editProfile.sections.physicalMeasurements' => 'PHYSISCHE MAßE',
			'editProfile.sections.goalsAndActivity' => 'ZIELE & AKTIVITÄT',
			'editProfile.gender' => 'Geschlecht',
			'editProfile.dateOfBirth' => 'Geburtsdatum',
			'editProfile.height' => 'Größe',
			'editProfile.weight' => 'Gewicht',
			'editProfile.weightGoal' => 'Gewichtsziele',
			'editProfile.activityLevel' => 'Aktivitätslevel',
			'editProfile.metric' => 'Metric',
			'editProfile.imperial' => 'Imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metric (cm)',
			'editProfile.imperialFtIn' => 'Imperial (ft/in)',
			'editProfile.metricKg' => 'Metric (kg)',
			'editProfile.imperialLbs' => 'Imperial (lbs)',
			'editProfile.genders.male' => 'Männlich',
			'editProfile.genders.female' => 'Weiblich',
			'editProfile.genders.other' => 'Sonstiges',
			'editProfile.weightGoals.loseWeight.name' => 'Gewicht verlieren',
			'editProfile.weightGoals.loseWeight.description' => 'Einen Kaloriendefizit schaffen, um Gewicht zu verlieren',
			'editProfile.weightGoals.maintainWeight.name' => 'Gewicht halten',
			'editProfile.weightGoals.maintainWeight.description' => 'Ihr aktuelles Gewicht halten',
			'editProfile.weightGoals.gainWeight.name' => 'Gewicht zunehmen',
			'editProfile.weightGoals.gainWeight.description' => 'Einen Kalorienüberschuss schaffen, um Gewicht zuzunehmen',
			'editProfile.activityLevels.sedentary.name' => 'Sitzend',
			'editProfile.activityLevels.sedentary.description' => 'Wenig bis keine Bewegung',
			'editProfile.activityLevels.lightlyActive.name' => 'Leicht aktiv',
			'editProfile.activityLevels.lightlyActive.description' => 'Leichte Bewegung 1-3 Tage/Woche',
			'editProfile.activityLevels.moderatelyActive.name' => 'Mäßig aktiv',
			'editProfile.activityLevels.moderatelyActive.description' => 'Mäßige Bewegung 3-5 Tage/Woche',
			'editProfile.activityLevels.veryActive.name' => 'Sehr aktiv',
			'editProfile.activityLevels.veryActive.description' => 'Intensive Bewegung 6-7 Tage/Woche',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrem aktiv',
			'editProfile.activityLevels.extremelyActive.description' => 'Sehr harte Bewegung, körperlicher Job',
			'settings.title' => 'Einstellungen',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALISIERUNG',
			'settings.sections.notifications' => 'BENACHRICHTIGUNGEN',
			'settings.sections.healthConnect' => 'GESUNDHEITSVERBINDUNG',
			'settings.sections.supportAndLegal' => 'UNTERSTÜTZUNG & RECHTLICHES',
			'settings.sections.about' => 'ÜBER',
			'settings.sections.dangerZone' => 'GEFAHRENZONE',
			'settings.sections.developer' => 'ENTWICKLER',
			'settings.editProfile.title' => 'Profil bearbeiten',
			'settings.editProfile.subtitle' => 'Aktualisiere deine persönlichen Informationen',
			'settings.language.title' => 'Sprache',
			'settings.language.subtitle' => 'Wählen Sie Ihre bevorzugte Sprache',
			'settings.language.searchHint' => 'Sprachen suchen...',
			'settings.language.noResults' => 'Keine Ergebnisse gefunden',
			'settings.heightUnit.title' => 'Größeneinheit',
			'settings.weightUnit.title' => 'Gewichtseinheit',
			'settings.mealReminders.title' => 'Mahlzeit Erinnerungen',
			'settings.mealReminders.subtitle' => 'Bleibe mit zeitgerechten Erinnerungen auf Kurs',
			'settings.theme.title' => 'Design',
			'settings.theme.light' => 'Hell',
			'settings.theme.dark' => 'Dunkel',
			'settings.theme.system' => 'System',
			'settings.sendFeedback.title' => 'Feedback senden',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Helfen Sie uns, ${appLabel} zu verbessern',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback zur ${appLabel} App',
			'settings.sendFeedback.emailBodyPrefix' => 'Bitte geben Sie Ihr Feedback unten ein:',
			'settings.sendFeedback.appVersion' => 'App-Version',
			'settings.sendFeedback.device' => 'Gerät',
			'settings.sendFeedback.osVersion' => 'Betriebssystemversion',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Mahlzeitenverlauf exportieren',
			'settings.exportMealHistory.subtitle' => 'Teile eine CSV-Datei mit deinen protokollierten Mahlzeiten',
			'settings.exportMealHistory.shareText' => 'Export deiner Calorify-Mahlzeiten',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Der Export deines Mahlzeitenverlaufs ist fehlgeschlagen: ${error}',
			'settings.clearAllData.title' => 'Alle Daten löschen',
			'settings.clearAllData.subtitle' => 'Alle deine Informationen unwiderruflich löschen',
			'settings.clearAllData.confirmationTitle' => 'Alle Daten löschen?',
			'settings.clearAllData.confirmationMessage' => 'Dieser Vorgang kann nicht rückgängig gemacht werden. Alle deine eingetragenen Mahlzeiten, Favoriten und Profileinstellungen werden dauerhaft gelöscht.',
			'settings.clearAllData.cancel' => 'Abbrechen',
			'settings.clearAllData.clearEverything' => 'Alles löschen',
			'settings.debugOptions.title' => 'Debug-Optionen',
			'settings.developerModeEnabled' => 'Entwicklermodus aktiviert!',
			'settings.healthConnect.title' => 'Gesundheitsverbindung',
			'settings.healthConnect.subtitle' => 'Berechtigungen anzeigen und verwalten',
			'settings.healthConnect.unavailable.title' => 'Health Connect nicht verfügbar',
			'settings.healthConnect.unavailable.description' => 'Health Connect ist auf diesem Gerät nicht verfügbar. Bitte installiere Health Connect aus dem Play Store (Android 9+) oder aktualisiere auf Android 14+.',
			'settings.healthConnect.permissions.title' => 'Berechtigungen',
			'settings.healthConnect.permissions.description' => 'Die folgenden Berechtigungen werden angefordert, um die Integration der Gesundheitsverbindung bereitzustellen:',
			'settings.healthConnect.permissions.granted' => 'Erteilt',
			'settings.healthConnect.permissions.notGranted' => 'Nicht Erteilt',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Gesamt verbrannte Kalorien lesen',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Erlaubt der App, Ihre insgesamt verbrannten Kalorien aus der Gesundheitsverbindung zu lesen.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Diese Berechtigung wird verwendet, um Ihren täglichen Kalorienverbrauch in der App anzuzeigen, damit Sie Ihren gesamten Energieverbrauch im Laufe des Tages verstehen können.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Ernährungsdaten lesen',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Erlaubt der App, Ernährungsdaten aus der Gesundheitsverbindung zu lesen.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Diese Berechtigung ermöglicht es der App, Ernährungsinformationen zu lesen, die möglicherweise von anderen Apps, die mit der Gesundheitsverbindung verbunden sind, protokolliert wurden, wodurch Sie einen umfassenden Überblick über Ihre Ernährung erhalten.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Ernährungsdaten schreiben',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Erlaubt der App, Ernährungsdaten in die Gesundheitsverbindung zu schreiben.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Diese Berechtigung ermöglicht es der App, Ihre protokollierten Mahlzeiten mit der Gesundheitsverbindung zu synchronisieren und Ihre Ernährungsdaten anderen Gesundheits- und Fitnessanwendungen, die Sie verwenden, zur Verfügung zu stellen.',
			'settings.healthConnect.managePermissions' => 'Berechtigungen verwalten',
			'settings.healthConnect.openSettings' => 'Öffne die Health Connect-Einstellungen',
			'settings.healthConnect.requestPermissions' => 'Berechtigungen anfordern',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Die Berechtigungsanfrage wurde abgebrochen oder ist fehlgeschlagen. Bitte versuche es erneut oder erteile die Berechtigungen manuell in den Health Connect-Einstellungen.',
			'settings.healthConnect.permissionRequestFailed' => 'Berechtigungen konnten nicht angefordert werden. Bitte versuche es erneut oder erteile die Berechtigungen manuell in den Health Connect-Einstellungen.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'Über',
			'settings.about.tagline' => 'Schnelle, kostenlose und datenschutzorientierte Kalorienzählung',
			'settings.about.ourStory.title' => 'Unsere Geschichte',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} entstand aus einer einfachen Frustration: Die meisten Kalorienzähler-Apps sind entweder übermäßig kompliziert, verlangen ständige manuelle Eingaben, erheben hohe Abonnementsgebühren oder gehen mit der Privatsphäre um.\n\nAls solo-Entwickler wollte ich etwas Einfacheres und Faireres schaffen — eine App, die KI nutzt, um den Aufwand zu reduzieren, schnell und kostenlos ist und Ihre Gesundheitsdaten respektiert.\n\n${appLabel} ist die App, die ich mir gewünscht hätte: keine Konten, kein Tracking, keine Werbung — nur klare, praktische Einblicke und Ihre Gesundheitsziele.',
			'settings.about.privacy.title' => 'Ihre Privatsphäre zählt',
			'settings.about.privacy.description' => 'Privatsphäre ist kein nachträglicher Gedanke — es ist ein Designprinzip. Das bedeutet in der Praxis:',
			'settings.about.privacy.noAccounts' => 'Keine Konten erforderlich\nNutzen Sie die App sofort. Keine Anmeldungen, keine Identitäten.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Keine Verhaltensverfolgung\n${appLabel} überwacht nicht Ihre Aktivität, erstellt keine Nutzungsprofile oder verfolgt Sie über Apps oder Websites.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Werbefrei von Anfang an\n${appLabel} wurde entwickelt, um ohne Werbung oder datengestützte Monetarisierung zu funktionieren.',
			'settings.about.privacy.noDataSelling' => 'Keine Datenverkäufe\nIhre Gesundheitsdaten werden nie verkauft oder mit Dritten geteilt.',
			'settings.about.privacy.localStorage' => 'Lokale Speicherung zuerst\nIhre Daten bleiben auf Ihrem Gerät.',
			'settings.about.privacy.privacyPolicy' => 'Datenschutzbestimmungen',
			'settings.about.developer.title' => 'Entwickelt von einem Solo-Entwickler',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} wird von einem einzelnen Entwickler entwickelt und gewartet, der sich darauf konzentriert, ruhige, datenschutzfreundliche Gesundheitssoftware zu erstellen.\n\nFeedback wird persönlich gelesen und hilft, die Richtung der App zu gestalten.',
			'settings.about.developer.website' => 'Website',
			'settings.about.developer.email' => 'E-Mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Gefällt Ihnen ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Ihr Feedback hilft, ${appLabel} für alle besser zu machen.',
			'settings.about.feedback.rateApp' => 'Bewerten im Play Store',
			'settings.about.feedback.sendFeedback' => 'Feedback senden',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Bleibe mit Erinnerungen auf Kurs',
			'reminders.description' => 'Erhalte sanfte Erinnerungen, um deine Mahlzeiten zu protokollieren und konsistent mit deinen Ernährungszielen zu bleiben',
			'reminders.notificationsEnabled' => 'Benachrichtigungen aktiviert',
			'reminders.notificationsDisabled' => 'Benachrichtigungen deaktiviert',
			'reminders.enabledSubtitle' => 'Du erhältst Erinnerungen für Mahlzeiten',
			'reminders.disabledSubtitle' => 'Aktiviere Benachrichtigungen, um Erinnerungen für Mahlzeiten zu erhalten',
			'reminders.mealReminders' => 'Mahlzeit Erinnerungen',
			'reminders.breakfast' => 'Frühstück',
			'reminders.lunch' => 'Mittagessen',
			'reminders.dinner' => 'Abendessen',
			'reminders.snack' => 'Snack',
			'reminders.unknown' => 'Unbekannt',
			'reminders.change' => 'Ändern',
			'reminders.enableNotifications' => 'Benachrichtigungen aktivieren',
			'reminders.skipForNow' => 'Für jetzt überspringen',
			'reminders.saveChanges' => 'Änderungen speichern',
			'reminders.enabledSuccessfully' => 'Benachrichtigungen erfolgreich aktiviert!',
			'reminders.permissionDenied' => 'Benachrichtigungserlaubnis verweigert',
			'reminders.errorEnabling' => ({required Object error}) => 'Fehler beim Aktivieren der Benachrichtigungen: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Fehler beim Abschluss der Einrichtung: ${error}',
			'notifications.breakfast.title' => 'Frühstückszeit! 🍳',
			'notifications.breakfast.body' => 'Vergiss nicht, dein Frühstück zu protokollieren',
			'notifications.lunch.title' => 'Mittagszeit! 🥗',
			'notifications.lunch.body' => 'Zeit, dein Mittagessen zu protokollieren',
			'notifications.dinner.title' => 'Abendessenszeit! 🍽️',
			'notifications.dinner.body' => 'Vergiss nicht, dein Abendessen zu protokollieren',
			'notifications.snack.title' => 'Snackzeit! 🍎',
			'notifications.snack.body' => 'Zeit für einen gesunden Snack',
			'notifications.test.title' => 'Testbenachrichtigung',
			'login.title' => 'Anmelden',
			'login.signInWithGoogle' => 'Mit Google anmelden',
			'login.signInFailed' => 'Google-Anmeldung fehlgeschlagen oder abgebrochen.',
			'disclaimer.pleaseNote' => 'Bitte beachten',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} bietet geschätzte Nahrungsinformationen. Die Genauigkeit hängt von Ihren Eingaben und den Variationen der Lebensmittel ab. Verwenden Sie es als Leitfaden, nicht als endgültige Quelle. Konsultieren Sie einen Fachmann für persönliche Ernährungsberatung.',
			'disclaimer.snap.portionSize.title' => 'Portionsgröße',
			'disclaimer.snap.portionSize.description' => 'Die Genauigkeit der Schätzungen hängt stark von deiner korrekten Einschätzung der Portionsgröße ab.',
			'disclaimer.snap.preparationMethods.title' => 'Zubereitungsmethoden',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Zubereitungsmethoden können den Nährstoffgehalt von Lebensmitteln erheblich verändern. Die Schätzungen von ${appLabel} berücksichtigen möglicherweise nicht immer diese Variationen.',
			'disclaimer.snap.ingredients.title' => 'Zutaten',
			'disclaimer.snap.ingredients.description' => 'Komplexe Gerichte mit vielen versteckten Zutaten können zu weniger genauen Schätzungen führen.',
			'disclaimer.snap.databaseLimitations.title' => 'Datenbankbeschränkungen',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}s Lebensmittel-Datenbank ist umfangreich, enthält jedoch möglicherweise nicht jedes einzelne Lebensmittel oder jede Variation.',
			'disclaimer.weightEstimate.title' => 'Über Gewichtsprognose',
			'disclaimer.weightEstimate.description' => 'Die vorausgesagte Gewichtänderung ist eine theoretische Schätzung, die auf dem einfachen Kalorien-in-versus-Kalorien-aus-Modell basiert. Sie dient nur der motivationalen Orientierung, nicht als Vorhersage deines tatsächlichen Gewichts.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kaloriengenauigkeit',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Diese Schätzung ist nur so genau wie deine getrackte Kalorienaufnahme und -ausgabe. Ungenaue Protokollierung führt zu einer ungenauen Prognose.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologische Faktoren',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Das tatsächliche Gewichtsverlust/-zuwachs wird von Faktoren wie Metabolismus, Hormonen, Schlaf, Stress, Hydration und anderen individuellen Faktoren beeinflusst, die ${appLabel} nicht messen kann.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Wassergewicht & Schwankungen',
			'disclaimer.weightEstimate.waterWeight.description' => 'Das normale Tagesgewicht kann aufgrund von Wassereinlagerungen, Verdauung und Zeitpunkten erheblich schwanken. Die Schätzung berücksichtigt diese täglichen Veränderungen nicht.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Fachliche Anleitung',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Verwende diese Schätzung nicht, um medizinische Entscheidungen zu treffen. Konsultiere immer einen Gesundheitsexperten oder registrierten Ernährungsberater für individuelle Empfehlungen zur Gewichtsverwaltung.',
			'disclaimer.healthMetrics.description' => 'Diese Kennzahlen helfen Ihnen, den Energiebedarf Ihres Körpers zu verstehen und Ihre Ernährungsziele zu steuern.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Die Basale Stoffwechselrate (BMR) ist die Anzahl der Kalorien, die Ihr Körper in Ruhe verbrennt, um grundlegende Funktionen wie Atmung und Kreislauf aufrechtzuerhalten. Der BMR hängt von Ihrem Alter, Geschlecht, Ihrer Größe und Ihrem Gewicht ab. Ein höherer BMR bedeutet, dass Ihr Körper in Ruhe mehr Kalorien verbrennt, oft aufgrund von mehr Muskelmasse, jüngerem Alter oder männlichem Geschlecht. Ein niedrigerer BMR weist normalerweise auf weniger Muskelmasse, höheres Alter oder weibliches Geschlecht hin.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Der Gesamtenergieverbrauch pro Tag (TDEE) ist die Gesamtzahl der Kalorien, die Sie pro Tag verbrennen, einschließlich Ihres BMR plus Kalorien aus körperlicher Aktivität und täglicher Bewegung. Der TDEE hängt von Ihrem BMR und Ihrem Aktivitätslevel ab. Ein höherer TDEE bedeutet, dass Sie insgesamt mehr Kalorien verbrennen, normalerweise weil Sie aktiver sind oder einen höheren BMR haben. Ein niedrigerer TDEE deutet auf weniger tägliche Aktivität oder einen niedrigeren BMR hin.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Tagesziel',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Das Tagesziel ist Ihre empfohlene tägliche Kalorienaufnahme basierend auf Ihrem TDEE und Ihrem Gewichtsziel. Für Gewichtsverlust konsumieren Sie weniger Kalorien als Ihr TDEE. Für die Gewichtserhaltung stimmen Sie Ihren TDEE ab. Für Gewichtszunahme konsumieren Sie mehr Kalorien als Ihr TDEE. Dies hilft Ihnen, Ihre gewünschte Gewichtsveränderung in einem gesunden Tempo zu erreichen.',
			'disclaimer.calorieExpenditure.title' => 'Schätzung des Kalorienverbrauchs',
			'disclaimer.calorieExpenditure.description' => 'Wenn Health Connect-Daten nicht verfügbar sind, schätzen wir, wie viele Kalorien Sie heute verbrannt haben, basierend auf Ihrem Grundumsatz (BMR) und Ihrem Aktivitätsniveau (TDEE). Die Schätzung wird auf den bereits verstrichenen Teil des Tages hochgerechnet.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Wie die Schätzung berechnet wird',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Wir berechnen Ihren TDEE (basierend auf Ihrem Profil) und multiplizieren ihn mit dem bereits verstrichenen Tagesanteil (Stunden + Minuten) / 24, um die bisher verbrannten Kalorien zu schätzen.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Professionelle Hinweise',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Nutzen Sie diese Schätzung nicht für medizinische Entscheidungen. Konsultieren Sie stets eine medizinische Fachkraft oder einen registrierten Ernährungsberater oder eine registrierte Ernährungsberaterin für individuelle Beratung zur Gewichtskontrolle.',
			'common.close' => 'Schließen',
			'common.kContinue' => 'Fortfahren',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Gefällt dir ${appLabel}?',
			'feedbackRating.yes' => 'Ja, gefällt mir',
			'feedbackRating.no' => 'Nicht wirklich',
			'feedbackRating.rateStepHeading' => 'Bewerte uns im Play Store',
			'feedbackRating.emailStepHeading' => 'Sende Feedback per E-Mail',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Eine kurze Bewertung hilft anderen, ${appLabel} zu finden und hält die Weiterentwicklung am Laufen. Würdest du kurz eine Bewertung abgeben?',
			'feedbackRating.shareFeedbackViaEmail' => 'Dein Feedback prägt, was als Nächstes kommt — wir lesen jede Nachricht. Möchtest du deine Gedanken per E‑Mail mit uns teilen?',
			'feedbackRating.rateCta' => 'Im Play Store bewerten',
			'feedbackRating.maybeLater' => 'Vielleicht später',
			'feedbackRating.sendFeedback' => 'Feedback senden',
			'feedbackRating.noThanks' => 'Nein, danke',
			'feedbackRating.aboutUsDescription' => 'Mit Sorgfalt von einem kleinen Team entwickelt. Wir legen Wert auf Datenschutz, Einfachheit und darauf, dir zu helfen, gesündere Essgewohnheiten aufzubauen.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Neugierig, wer hinter ${appLabel} steckt? Sieh dir ',
			'feedbackRating.aboutUsLinkLabel' => 'Über uns',
			'feedbackRating.thankYouMessage' => 'Danke! Wir fragen ein anderes Mal wieder.',
			'health.syncFailed' => 'Konnte nicht mit Health Connect synchronisieren',
			'health.mealSynced' => 'Mahlzeit mit Health Connect synchronisiert',
			_ => null,
		};
	}
}
