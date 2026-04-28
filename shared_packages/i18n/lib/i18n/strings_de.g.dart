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
	@override String get unknownError => 'Etwas ist schiefgelaufen. Bitte versuche es später erneut.';
	@override String get loadingProfileData => 'Fehler beim Laden der Profildaten';
	@override String get somethingWentWrong => 'Etwas ist schiefgelaufen.';
	@override String get retry => 'Erneut versuchen';
}

// Path: onboarding
class _TranslationsOnboardingDe implements TranslationsOnboardingEn {
	_TranslationsOnboardingDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Willkommen bei ${appLabel}';
	@override String get subtitle => 'Dein persönlicher Ernährungsbegleiter mit KI-Unterstützung';
	@override String get getStarted => 'Los geht\'s';
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
	@override String get history => 'Verlauf';
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
	@override String get noMeals => 'Keine Mahlzeiten erfasst';
	@override String get emptyMessage => 'Mach ein Foto deiner letzten Mahlzeit, um sie hier zu protokollieren.';
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
	@override String get mealName => 'Name der Mahlzeit';
	@override String get mealNameHint => 'z. B. Rührei mit Toast';
	@override String get mealQuantity => 'Menge der Mahlzeit';
	@override String get mealQuantityHint => 'z. B. 1 Schüssel, 2 Scheiben';
	@override String get timeOfMeal => 'Uhrzeit der Mahlzeit';
	@override String get timeOfMealHint => 'Wähle die Uhrzeit deiner Mahlzeit';
	@override String get mealType => 'Mahlzeitentyp';
	@override late final _TranslationsMealNutritionDe nutrition = _TranslationsMealNutritionDe._(_root);
	@override late final _TranslationsMealDeleteConfirmationDe deleteConfirmation = _TranslationsMealDeleteConfirmationDe._(_root);
	@override String get addedToLog => 'Mahlzeit zu deinem Protokoll hinzugefügt!';
	@override String couldNotAdd({required Object error}) => 'Mahlzeit konnte nicht hinzugefügt werden: ${error}';
	@override String get savedSuccessfully => 'Mahlzeit erfolgreich hinzugefügt!';
	@override String get updatedSuccessfully => 'Mahlzeit erfolgreich aktualisiert!';
	@override String errorSaving({required Object error}) => 'Fehler beim Speichern der Mahlzeit: ${error}';
	@override String get removedFromFavorites => 'Aus Favoriten entfernt!';
	@override String get savedAsFavorite => 'Mahlzeit als Favorit gespeichert!';
	@override String get unfavorite => 'Favorit entfernen';
	@override String couldNotUpdateFavorite({required Object error}) => 'Favorit konnte nicht aktualisiert werden: ${error}';
	@override String get feedbackThanks => 'Danke für dein Feedback!';
	@override String get reanalysisUpdated => 'Analyse basierend auf deinem Feedback aktualisiert.';
	@override String failedToProcess({required Object error}) => 'Verarbeitung fehlgeschlagen: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Bildverarbeitung fehlgeschlagen: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Fehler beim Komprimieren des Bildes: ${error}';
	@override String get failedToSave => 'Daten konnten nicht gespeichert werden. Bitte versuche es erneut.';
	@override String get skip => 'Überspringen';
	@override late final _TranslationsMealVariationDe variation = _TranslationsMealVariationDe._(_root);
	@override late final _TranslationsMealAnalysisDe analysis = _TranslationsMealAnalysisDe._(_root);
	@override late final _TranslationsMealFeedbackDe feedback = _TranslationsMealFeedbackDe._(_root);
}

// Path: favorites
class _TranslationsFavoritesDe implements TranslationsFavoritesEn {
	_TranslationsFavoritesDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoriten';
	@override String get empty => 'Noch keine Lieblingsmahlzeiten.';
	@override String get searchPlaceholder => 'Lieblingsmahlzeiten suchen';
	@override String get searchEmptyTitle => 'Keine Favoriten passen zu deiner Suche';
	@override String get searchEmptySubtitle => 'Versuche einen anderen Namen, eine andere Menge oder einen anderen Mahlzeitentyp.';
	@override String get sortLabel => 'Favoriten sortieren';
	@override String get undo => 'Rückgängig';
	@override String removed({required Object name}) => '${name} aus Favoriten entfernt';
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
	@override String get viewAndManage => 'Zeige und verwalte deine Gesundheitsinformationen';
	@override late final _TranslationsProfileSectionsDe sections = _TranslationsProfileSectionsDe._(_root);
	@override String get gender => 'Geschlecht';
	@override String get height => 'Größe';
	@override String get weight => 'Gewicht';
	@override String get age => 'Alter';
	@override String get weightGoal => 'Gewichtsziel';
	@override String get targetWeight => 'Zielgewicht';
	@override String get activityLevel => 'Aktivitätsniveau';
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
	@override String get title => 'Gesundheits-Score';
	@override String get whyThisScore => 'Warum dieser Score?';
	@override String get note => 'Dieser Score ist eine KI-Schätzung basierend auf den erkannten Zutaten und der Nährstoffdichte. Für Ernährungsberatung wende dich immer an Fachleute.';
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
	@override String get weightGoal => 'Gewichtsziel';
	@override String get activityLevel => 'Aktivitätsniveau';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metrisch (cm)';
	@override String get imperialFtIn => 'Imperial (ft/in)';
	@override String get metricKg => 'Metrisch (kg)';
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
	@override String get description => 'Erhalte sanfte Erinnerungen, deine Mahlzeiten zu protokollieren und bei deinen Ernährungszielen dranzubleiben';
	@override String get notificationsEnabled => 'Benachrichtigungen aktiviert';
	@override String get notificationsDisabled => 'Benachrichtigungen deaktiviert';
	@override String get enabledSubtitle => 'Du erhältst Mahlzeit-Erinnerungen';
	@override String get disabledSubtitle => 'Aktiviere Benachrichtigungen, um Mahlzeit-Erinnerungen zu bekommen';
	@override String get mealReminders => 'Mahlzeit-Erinnerungen';
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
	@override String get permissionDenied => 'Benachrichtigungsberechtigung verweigert';
	@override String errorEnabling({required Object error}) => 'Fehler beim Aktivieren der Benachrichtigungen: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Fehler beim Abschließen der Einrichtung: ${error}';
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
	@override String get kContinue => 'Weiter';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingDe implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Gefällt dir ${appLabel}?';
	@override String get yes => 'Ja, es gefällt mir';
	@override String get no => 'Nicht wirklich';
	@override String get rateStepHeading => 'Im Play Store bewerten';
	@override String get emailStepHeading => 'Feedback per E‑Mail senden';
	@override String soloDevMessage({required Object appLabel}) => 'Eine kurze Bewertung hilft anderen, ${appLabel} zu finden und hält die Entwicklung am Laufen. Hättest du einen Moment dafür?';
	@override String get shareFeedbackViaEmail => 'Dein Feedback bestimmt, was als Nächstes kommt — wir lesen jede Nachricht. Möchtest du deine Gedanken per E‑Mail teilen?';
	@override String get rateCta => 'Im Play Store bewerten';
	@override String get maybeLater => 'Vielleicht später';
	@override String get sendFeedback => 'Feedback senden';
	@override String get noThanks => 'Nein, danke';
	@override String get aboutUsDescription => 'Mit Sorgfalt von einem kleinen Team entwickelt. Unser Fokus liegt auf Datenschutz, Einfachheit und dabei zu helfen, bessere Essgewohnheiten aufzubauen.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Neugierig, wer hinter ${appLabel} steckt? Sieh dir ';
	@override String get aboutUsLinkLabel => 'Über uns';
	@override String get thankYouMessage => 'Danke! Wir fragen ein andermal erneut.';
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
	@override String get title => 'Welches Geschlecht hast du?';
	@override String get description => 'Das Geschlecht hilft uns, deinen Grundumsatz (BMR) genau zu berechnen.';
	@override String get next => 'Weiter';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightDe implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wie groß bist du?';
	@override String get description => 'Deine Größe hilft uns, deinen BMI und Energiebedarf genau zu berechnen.';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperial';
	@override String get next => 'Weiter';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightDe implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Wie viel wiegst du aktuell?';
	@override String get currentDescription => 'Dein aktuelles Gewicht ist wichtig, um deine täglichen Ziele zu personalisieren.';
	@override String get targetTitle => 'Was ist dein Zielgewicht?';
	@override String get targetDescription => 'Ein Zielgewicht hilft uns, deinen langfristigen Plan festzulegen.';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperial';
	@override String get next => 'Weiter';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeDe implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wann hast du Geburtstag?';
	@override String get description => 'Dein Alter hilft uns, deinen Kalorienbedarf genau zu berechnen.';
	@override String get next => 'Weiter';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleDe implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Unter';
	@override String get healthy => 'Gesund';
	@override String get overweight => 'Über';
	@override String get obese => 'Adipös';
	@override late final _TranslationsOnboardingBmiScaleCategoriesDe categories = _TranslationsOnboardingBmiScaleCategoriesDe._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesDe messages = _TranslationsOnboardingBmiScaleMessagesDe._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalDe implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Was ist dein Ziel?';
	@override String get description => 'Wähle das Ziel, das am besten zu dir passt';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelDe implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wie aktiv bist du?';
	@override String get description => 'Das hilft uns, deinen täglichen Kalorienbedarf genauer zu berechnen';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectDe implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mit Health Connect verbinden';
	@override String get description => 'Synchronisiere deine Gesundheitsdaten für bessere Einblicke und automatische Kalorienerfassung';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingDe automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingDe._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsDe progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsDe._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationDe seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationDe._(_root);
	@override String get connected => 'Health Connect verbunden';
	@override String get notConnected => 'Health Connect nicht verbunden';
	@override String get setup => 'Health Connect einrichten';
	@override String get skipForNow => 'Für jetzt überspringen';
	@override String get statusConnected => 'Health Connect ist verbunden.';
	@override String get statusSuccess => 'Health Connect wurde erfolgreich verbunden!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Zugriff verweigert. Bitte aktiviere die Health-Connect-Berechtigungen in den Telefoneinstellungen für ${appLabel}.';
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
	@override String get title => 'Deine KI-Zusammenfassung';
	@override String get logMore => 'Protokolliere in den nächsten Tagen mehr Mahlzeiten, um deine personalisierten KI-Einblicke zu erhalten.';
	@override String get loading => 'Deine Zusammenfassung wird geladen ...';
	@override String mealCount({required Object count}) => '${count} Mahlzeiten protokolliert';
	@override String macroBalanceScore({required Object score}) => 'Balance-Score ${score}';
	@override String get topFoods => 'Top-Lebensmittel';
	@override String get trendUp => 'Kalorien im Aufwärtstrend';
	@override String get trendDown => 'Kalorien im Abwärtstrend';
	@override String get trendSteady => 'Kalorien bleiben konstant';
	@override String generatedAt({required Object time}) => 'Aktualisiert ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalDe implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Setze dein Tagesziel';
	@override String get titleSet => 'Dein Tagesziel';
	@override String get description => 'Bereit für deine Wohlfühlreise? Lege unten dein tägliches Kalorienziel fest, um durchzustarten.';
	@override String get descriptionSet => 'Dein Kompass ist gesetzt! Das ist dein tägliches Kalorienziel als Orientierung.';
	@override String get yourGoal => 'Dein Ziel';
	@override String get goal => 'Ziel';
	@override String get dailyCalories => 'Tägliche Kalorien (kcal)';
	@override String get setGoal => 'Ziel festlegen';
	@override String get intake => 'Aufnahme';
	@override String get burned => 'Verbrannt';
	@override String get weightImpact => 'Gewichtsauswirkung';
	@override String get estLoss => 'Geschätzter Verlust von';
	@override String get estGain => 'Geschätzte Zunahme von';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryDe implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tagesübersicht';
	@override String get calories => 'Kalorien';
	@override String get carbs => 'Kohlenhydrate';
	@override String get protein => 'Protein';
	@override String get fat => 'Fett';
	@override String get fiber => 'Ballaststoffe';
	@override String get grams => 'Gramm';
	@override String get chartAccessibilityLabel => 'Makros-Diagramm';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressDe implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Heutige Makro-Verteilung';
	@override String get target => 'Ziel';
	@override String get current => 'Aktuell';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryDe implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '7-Tage-Makroverlauf';
	@override String get trendTitle => 'Heutiger Trend';
	@override String peakHour({required Object hour}) => 'Spitze: ${hour}:00';
	@override String get noHistoryYet => 'Noch kein Verlauf';
	@override String get startLogging => 'Beginne mit dem Protokollieren, um hier\ndeinen 7‑Tage-Makrotrend zu sehen';
}

// Path: home.mealLog
class _TranslationsHomeMealLogDe implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Protokollierte Mahlzeiten';
	@override String get emptyMessage => 'Mach ein Foto deiner letzten Mahlzeit, um sie hier zu protokollieren.';
	@override String get noMealsToday => 'Heute keine Mahlzeiten erfasst';
	@override String get seeAllMeals => 'Alle Mahlzeiten ansehen';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionDe implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Schnell hinzufügen mit KI';
	@override String get description => 'Beschreibe deine Mahlzeit – die KI übernimmt den Rest.';
	@override String get hint => 'z. B. Zum Frühstück hatte ich eine große Schüssel Haferflocken mit einer Banane und einem Scoop Whey ...';
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
	@override String get title => 'Fotografiere & tracke deine Mahlzeit';
	@override String get description => 'Nutze deine Kamera, um ein Foto deines Essens für die KI-Analyse zu machen.';
	@override String get openCamera => 'Kamera öffnen';
	@override String get gallery => 'Galerie';
	@override String get compressingPhoto => 'Foto wird optimiert …';
	@override String get uploadingPhoto => 'Foto wird hochgeladen …';
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
	@override String get protein => 'Protein (g)';
	@override String get fat => 'Fett (g)';
	@override String get fiber => 'Ballaststoffe (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationDe implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahlzeit löschen';
	@override String get message => 'Möchtest du diesen Mahlzeiteintrag wirklich löschen?';
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

// Path: meal.analysis
class _TranslationsMealAnalysisDe implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'KI-Mahlzeitenanalyse';
	@override String get reassurance => 'Das dauert normalerweise nur ein paar Sekunden.';
	@override String get stepStarted => 'Es geht los …';
	@override String get stepDecomposition => 'Wir verstehen deine Mahlzeit …';
	@override String get stepIngredients => 'Zutaten werden mit Nährwertdaten abgeglichen …';
	@override String get stepUncertainty => 'Vertrauen wird überprüft …';
	@override String get stepMealTypeQuestion => 'Gleich geschafft …';
	@override String get stepResult => 'Ergebnis wird finalisiert …';
	@override String get stepError => 'Etwas ist schiefgelaufen';
	@override String get stepDefault => 'Deine Mahlzeit wird analysiert …';
	@override String get progressUnderstand => 'Verstehen';
	@override String get progressMatch => 'Abgleichen';
	@override String get progressCheck => 'Prüfen';
	@override String get progressFinish => 'Fertigstellen';
	@override String ingredientsLine({required Object count}) => '${count} Zutaten erkannt';
	@override String get ingredientsPending => 'Zutaten werden gescannt …';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackDe implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Was sieht falsch aus?';
	@override String get subtitle => 'Hilf uns, die Analyse zu verbessern, indem du ein oder mehrere Probleme auswählst.';
	@override String get tellUsMore => 'Mehr erzählen';
	@override String get describeIncorrect => 'Beschreibe, was falsch war';
	@override String get submit => 'Senden';
	@override String get issueFoodIdentification => 'Lebensmittel­erkennung';
	@override String get issuePortionSize => 'Portionsgröße';
	@override String get issueCalorieDistribution => 'Kalorienverteilung';
	@override String get issueMacrosWrong => 'Makros sind falsch';
	@override String get issueMissingItems => 'Fehlende Elemente';
	@override String get issueExtraItems => 'Zusätzliche Elemente';
	@override String get issueOther => 'Sonstiges';
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
	@override String get basicInformation => 'GRUNDINFORMATIONEN';
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
	@override String get dailyGoal => 'Tagesziel';
	@override String get calPerDay => 'kcal/Tag';
	@override String get notAvailable => 'k. A.';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsDe implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSÖNLICHE ANGABEN';
	@override String get physicalMeasurements => 'KÖRPERMAßE';
	@override String get goalsAndActivity => 'ZIELE & AKTIVITÄT';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersDe implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get male => 'Männlich';
	@override String get female => 'Weiblich';
	@override String get other => 'Divers';
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
	@override String get notifications => 'BENACHRICH­TIGUNGEN';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'SUPPORT & RECHTLICHES';
	@override String get about => 'INFO';
	@override String get dangerZone => 'GEFAHRENBEREICH';
	@override String get developer => 'ENTWICKLER';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileDe implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil bearbeiten';
	@override String get subtitle => 'Aktualisiere deine persönlichen Angaben';
}

// Path: settings.language
class _TranslationsSettingsLanguageDe implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sprache';
	@override String get subtitle => 'Wähle deine bevorzugte Sprache';
	@override String get searchHint => 'Sprachen suchen ...';
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
	@override String get title => 'Mahlzeit-Erinnerungen';
	@override String get subtitle => 'Bleibe mit rechtzeitigen Hinweisen auf Kurs';
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
	@override String subtitle({required Object appLabel}) => 'Hilf uns, ${appLabel} zu verbessern';
	@override String emailSubject({required Object appLabel}) => '${appLabel} App-Feedback';
	@override String get emailBodyPrefix => 'Bitte gib dein Feedback unten ein:';
	@override String get appVersion => 'App-Version';
	@override String get device => 'Gerät';
	@override String get osVersion => 'OS-Version';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryDe implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahlzeitenverlauf exportieren';
	@override String get subtitle => 'Teile eine CSV deiner protokollierten Mahlzeiten';
	@override String get shareText => 'Dein Calorify-Mahlzeitenexport';
	@override String failed({required Object error}) => 'Konnte den Mahlzeitenverlauf nicht exportieren: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataDe implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alle Daten löschen';
	@override String get subtitle => 'Unwiderruflich alle deine Informationen löschen';
	@override String get confirmationTitle => 'Alle Daten löschen?';
	@override String get confirmationMessage => 'Diese Aktion kann nicht rückgängig gemacht werden. Alle deine protokollierten Mahlzeiten, Favoriten und Profileinstellungen werden dauerhaft gelöscht.';
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
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Berechtigungen anzeigen und verwalten';
	@override late final _TranslationsSettingsHealthConnectUnavailableDe unavailable = _TranslationsSettingsHealthConnectUnavailableDe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsDe permissions = _TranslationsSettingsHealthConnectPermissionsDe._(_root);
	@override String get managePermissions => 'Berechtigungen verwalten';
	@override String get openSettings => 'Health-Connect-Einstellungen öffnen';
	@override String get requestPermissions => 'Berechtigungen anfordern';
	@override String get permissionRequestCancelledOrFailed => 'Berechtigungsanfrage wurde abgebrochen oder ist fehlgeschlagen. Bitte versuche es erneut oder erteile die Berechtigungen manuell in den Health-Connect-Einstellungen.';
	@override String get permissionRequestFailed => 'Berechtigungen konnten nicht angefordert werden. Bitte versuche es erneut oder erteile die Berechtigungen manuell in den Health-Connect-Einstellungen.';
	@override String get requestingPermissions => 'Anfordern ...';
}

// Path: settings.about
class _TranslationsSettingsAboutDe implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Info';
	@override String get tagline => 'Schnelle, kostenlose und datenschutzfreundliche Kalorienorientierung';
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
	@override String description({required Object appLabel}) => '${appLabel} liefert geschätzte Nährwertangaben. Die Genauigkeit hängt von deinen Eingaben & Lebensmittelvariationen ab. Nutze dies als Orientierung, nicht als endgültige Quelle. Für individuelle Beratung wende dich an Fachleute.';
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
	@override String get title => 'Über die Gewichtsschätzung';
	@override String get description => 'Die prognostizierte Gewichtsveränderung ist eine theoretische Schätzung basierend auf dem einfachen Modell von aufgenommenen vs. verbrauchten Kalorien. Sie dient nur als Motivation und ist keine Vorhersage deines tatsächlichen Gewichts.';
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
	@override String get description => 'Diese Kennzahlen helfen dir, den Energiebedarf deines Körpers zu verstehen und deine Ernährungsziele zu steuern.';
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
	@override String get description => 'Wenn Health-Connect-Daten nicht verfügbar sind, schätzen wir die heute verbrannten Kalorien mithilfe deines Grundumsatzes (BMR) und Aktivitätsniveaus (TDEE), skaliert auf den bereits vergangenen Tagesanteil.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedDe howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedDe._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDe professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDe._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionDe implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intelligente Lebensmittelerkennung';
	@override String get description => 'Mach ein Foto und lass die KI deine Mahlzeit erkennen';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisDe implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'KI-Analyse';
	@override String get description => 'Erhalte sofort Nährwertangaben aus deinen Beschreibungen';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationDe implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health-Integration';
	@override String get description => 'Verbinde Health Connect für bessere Einblicke';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesDe implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Untergewicht';
	@override String get healthyWeight => 'Gesundes Gewicht';
	@override String get overweight => 'Übergewicht';
	@override String get obese => 'Adipös';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesDe implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Wir helfen dir mit einem gesunden Plan, um mit nährstoffreichen Mahlzeiten ein ausgewogenes Gewicht zu erreichen.';
	@override String get healthy => 'Großartige Arbeit! Du liegst im gesunden Bereich. Wir helfen dir, Vitalität und Energie zu erhalten.';
	@override String overweight({required Object appLabel}) => '${appLabel} macht deine Reise mit KI-gestütztem Tracking einfacher, damit du dein Ziel entspannt erreichst.';
	@override String get obese => 'Wir unterstützen dich mit persönlicher Begleitung und nachhaltigen Strategien für deine Gesundheitsziele.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingDe implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatisches Kalorientracking';
	@override String get description => 'Verbrannte Kalorien aus deinen Fitness-Apps erfassen';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsDe implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fortschritts-Insights';
	@override String get description => 'Erhalte detaillierte Einblicke in deine Gesundheitstrends';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationDe implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nahtlose Integration';
	@override String get description => 'Synchronisiere Daten aus deinen Gesundheits-Apps';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessDe implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Du bist nicht allein';
	@override String get genericMessage => 'Studien zeigen: Konsequentes Tracking ist der stärkste Prädiktor für langfristigen Erfolg.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Für eine(n) ${age}-jährige(n) ${gender} mit dem Ziel, ${goal}, ist konsequentes Tracking der stärkste Erfolgsfaktor.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} macht es 10x einfacher als manuell.';
	@override String get getStartedTitle => 'Bereit, loszulegen?';
	@override String get tipPhoto => 'Fotografiere deine Mahlzeiten für eine sofortige Analyse';
	@override String get tipConsistency => 'Logge konsequent, um spürbare Fortschritte zu sehen';
	@override String get tipProgress => 'Verfolge deinen Fortschritt täglich, um motiviert zu bleiben';
	@override String get button => 'Los geht\'s';
	@override String get defaultGender => 'Person';
	@override String get defaultGoal => 'ein gesünderes Ich';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileDe implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dein Gesundheitsprofil';
	@override String bmiDescription({required Object bmi}) => 'Basierend auf deinen Angaben beträgt dein BMI ${bmi}.';
	@override String get finalizeDescription => 'Lass uns dein Profil fertigstellen, um deine Erfahrung zu personalisieren.';
	@override String get goalGain => 'zunehmen';
	@override String get goalLose => 'abnehmen';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Um dein Ziel zu erreichen, wirst du ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Du bist bei deinem Zielgewicht! Wir helfen dir, es zu halten.';
	@override String get button => 'Los geht\'s';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleDe implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ausgezeichneter Start!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Du hast den ersten Schritt Richtung ${goalText} gemacht. Da du ${activityText} bist, passt ${appLabel} deine Ziele an deinen Lebensstil an.';
	@override String get personalizedTargets => 'Personalisierte Kalorienziele';
	@override String get aiMealDetection => 'KI-gestützte Mahlzeiterkennung';
	@override String get macroBreakdowns => 'Detaillierte Makronährstoff-Aufschlüsselungen';
	@override String get button => 'Los geht\'s';
	@override String get defaultGoal => 'deine Ziele';
	@override String get defaultActivity => 'aktiv';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightDe implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Abnehmen';
	@override String get description => 'Kaloriendefizit erstellen, um Gewicht zu verlieren';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightDe implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gewicht halten';
	@override String get description => 'Dein aktuelles Gewicht beibehalten';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightDe implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Zunehmen';
	@override String get description => 'Kalorienüberschuss erstellen, um zuzunehmen';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryDe implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Überwiegend sitzend';
	@override String get description => 'Kaum bis keine Bewegung';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveDe implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Leicht aktiv';
	@override String get description => 'Leichte Bewegung 1–3 Tage/Woche';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveDe implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mäßig aktiv';
	@override String get description => 'Mäßige Bewegung 3–5 Tage/Woche';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveDe implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sehr aktiv';
	@override String get description => 'Intensives Training 6–7 Tage/Woche';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveDe implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrem aktiv';
	@override String get description => 'Sehr intensives Training, körperlicher Beruf';
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
	@override String get description => 'Die folgenden Berechtigungen werden für die Health-Connect-Integration benötigt:';
	@override String get granted => 'Erteilt';
	@override String get notGranted => 'Nicht erteilt';
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
	@override String content({required Object appLabel}) => '${appLabel} entstand aus einer einfachen Frustration: Die meisten Kalorientracker sind entweder übermäßig kompliziert, verlangen ständige manuelle Eingaben, kosten teure Abos oder gehen auf Kosten der Privatsphäre.\n\nAls Solo-Entwickler wollte ich etwas Einfacheres und Faireres bauen — eine App, die KI nutzt, um den Aufwand zu reduzieren, schnell und kostenlos bleibt und deine Gesundheitsdaten respektiert.\n\n${appLabel} ist die App, die ich mir gewünscht habe: keine Accounts, kein Tracking, keine Werbung — nur klare, praktische Einblicke und deine Gesundheitsziele.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyDe implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Deine Privatsphäre zählt';
	@override String get description => 'Datenschutz ist kein Nachgedanke — er ist ein Gestaltungsprinzip. Das bedeutet konkret:';
	@override String get noAccounts => 'Keine Accounts erforderlich\nNutze die App sofort. Keine Anmeldungen, keine Identitäten.';
	@override String noTracking({required Object appLabel}) => 'Kein Verhaltenstracking\n${appLabel} überwacht deine Aktivität nicht, erstellt keine Nutzungsprofile und verfolgt dich nicht über Apps oder Websites hinweg.';
	@override String noAds({required Object appLabel}) => 'Keine Werbung\n${appLabel} funktioniert ohne Werbung oder datengetriebene Monetarisierung.';
	@override String get noDataSelling => 'Kein Datenverkauf\nDeine Gesundheitsdaten werden niemals an Dritte verkauft oder weitergegeben.';
	@override String get localStorage => 'Lokal-first-Speicherung\nDeine Daten bleiben auf deinem Gerät.';
	@override String get privacyPolicy => 'Datenschutzrichtlinie';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperDe implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Von einem Solo-Entwickler gebaut';
	@override String description({required Object appLabel}) => '${appLabel} wird von einem einzelnen Solo-Entwickler entwickelt und gepflegt, der ruhige, datenschutzfreundliche Gesundheitssoftware baut.\n\nFeedback wird persönlich gelesen und beeinflusst die Ausrichtung der App.';
	@override String get website => 'Webseite';
	@override String get email => 'E-Mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackDe implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Gefällt dir ${appLabel}?';
	@override String description({required Object appLabel}) => 'Dein Feedback hilft, ${appLabel} für alle besser zu machen.';
	@override String get rateApp => 'Im Play Store bewerten';
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
	@override String description({required Object appLabel}) => 'Kochmethoden können den Nährstoffgehalt stark verändern. Die Schätzungen von ${appLabel} berücksichtigen diese Unterschiede nicht immer.';
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
	@override String get title => 'Datenbankgrenzen';
	@override String description({required Object appLabel}) => 'Die Lebensmitteldatenbank von ${appLabel} ist umfangreich, enthält aber möglicherweise nicht jedes einzelne Lebensmittel oder jede Variante.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyDe implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kaloriengenauigkeit';
	@override String get description => 'Diese Schätzung ist nur so genau wie deine erfasste Kalorienaufnahme und ‑verwendung. Ungenaue Protokolle führen zu ungenauen Projektionen.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsDe implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologische Faktoren';
	@override String description({required Object appLabel}) => 'Tatsächliche Gewichtsabnahme/-zunahme wird von Stoffwechsel, Hormonen, Schlaf, Stress, Hydration und weiteren individuellen Faktoren beeinflusst, die ${appLabel} nicht messen kann.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightDe implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wassergewicht & Schwankungen';
	@override String get description => 'Das normale Tagesgewicht kann durch Wassereinlagerungen, Verdauung und Timing deutlich schwanken. Die Schätzung berücksichtigt diese täglichen Veränderungen nicht.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceDe implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionelle Beratung';
	@override String get description => 'Nutze diese Schätzung nicht für medizinische Entscheidungen. Wende dich für persönliche Empfehlungen stets an medizinisches Fachpersonal oder eine/n Ernährungsberater/in.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrDe implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Der Grundumsatz (BMR) ist die Kalorienmenge, die dein Körper in Ruhe verbrennt, um grundlegende Funktionen wie Atmung und Kreislauf aufrechtzuerhalten. Der BMR hängt von Alter, Geschlecht, Größe und Gewicht ab. Ein höherer BMR bedeutet, dass dein Körper in Ruhe mehr Kalorien verbrennt – oft aufgrund von mehr Muskelmasse, jüngerem Alter oder männlichem Geschlecht. Ein niedrigerer BMR weist typischerweise auf weniger Muskelmasse, höheres Alter oder weibliches Geschlecht hin.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeDe implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Der Gesamtenergieverbrauch pro Tag (TDEE) ist die Gesamtzahl der Kalorien, die du täglich verbrennst – einschließlich BMR plus Kalorien aus körperlicher Aktivität und Alltagsbewegung. Der TDEE hängt von deinem BMR und Aktivitätsniveau ab. Ein höherer TDEE bedeutet insgesamt mehr verbrannte Kalorien, meist durch mehr Aktivität oder einen höheren BMR. Ein niedrigerer TDEE deutet auf weniger tägliche Aktivität oder einen niedrigeren BMR hin.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalDe implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tagesziel';
	@override String get description => 'Das Tagesziel ist deine empfohlene tägliche Kalorienaufnahme basierend auf deinem TDEE und deinem Gewichtsziel. Für Gewichtsverlust nimmst du weniger Kalorien als deinen TDEE zu dir. Für Gewichtserhalt entspricht deine Aufnahme dem TDEE. Für Gewichtszunahme isst du mehr als deinen TDEE. So erreichst du dein gewünschtes Gewicht in einem gesunden Tempo.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedDe implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'So wird die Schätzung berechnet';
	@override String get description => 'Wir berechnen deinen TDEE (basierend auf deinem Profil) und multiplizieren ihn mit dem Bruchteil des verstrichenen Tages (Stunden + Minuten) / 24, um die bisher verbrannten Kalorien zu schätzen.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDe implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionelle Beratung';
	@override String get description => 'Nutze diese Schätzung nicht für medizinische Entscheidungen. Wende dich für persönliche Empfehlungen stets an medizinisches Fachpersonal oder eine/n Ernährungsberater/in.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDe implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gesamtverbrauchte Kalorien lesen';
	@override String get description => 'Erlaubt der App, deine insgesamt verbrannten Kalorien aus Health Connect zu lesen.';
	@override String get usage => 'Diese Berechtigung wird verwendet, um deinen täglichen Kalorienverbrauch in der App anzuzeigen, so verstehst du deinen gesamten Energieverbrauch im Tagesverlauf.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadDe implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ernährungsdaten lesen';
	@override String get description => 'Erlaubt der App, Ernährungsdaten aus Health Connect zu lesen.';
	@override String get usage => 'Diese Berechtigung ermöglicht es der App, Ernährungsinformationen zu lesen, die möglicherweise von anderen Apps in Health Connect erfasst wurden, um dir einen umfassenden Überblick über deine Ernährung zu geben.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteDe implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ernährungsdaten schreiben';
	@override String get description => 'Erlaubt der App, Ernährungsdaten in Health Connect zu schreiben.';
	@override String get usage => 'Diese Berechtigung ermöglicht es der App, deine protokollierten Mahlzeiten mit Health Connect zu synchronisieren, sodass deine Ernährungsdaten auch in anderen Gesundheits- und Fitness-Apps verfügbar sind.';
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
			'errors.unknownError' => 'Etwas ist schiefgelaufen. Bitte versuche es später erneut.',
			'errors.loadingProfileData' => 'Fehler beim Laden der Profildaten',
			'errors.somethingWentWrong' => 'Etwas ist schiefgelaufen.',
			'errors.retry' => 'Erneut versuchen',
			'onboarding.welcome' => ({required Object appLabel}) => 'Willkommen bei ${appLabel}',
			'onboarding.subtitle' => 'Dein persönlicher Ernährungsbegleiter mit KI-Unterstützung',
			'onboarding.getStarted' => 'Los geht\'s',
			'onboarding.features.foodRecognition.title' => 'Intelligente Lebensmittelerkennung',
			'onboarding.features.foodRecognition.description' => 'Mach ein Foto und lass die KI deine Mahlzeit erkennen',
			'onboarding.features.aiAnalysis.title' => 'KI-Analyse',
			'onboarding.features.aiAnalysis.description' => 'Erhalte sofort Nährwertangaben aus deinen Beschreibungen',
			'onboarding.features.healthIntegration.title' => 'Health-Integration',
			'onboarding.features.healthIntegration.description' => 'Verbinde Health Connect für bessere Einblicke',
			'onboarding.gender.title' => 'Welches Geschlecht hast du?',
			'onboarding.gender.description' => 'Das Geschlecht hilft uns, deinen Grundumsatz (BMR) genau zu berechnen.',
			'onboarding.gender.next' => 'Weiter',
			'onboarding.height.title' => 'Wie groß bist du?',
			'onboarding.height.description' => 'Deine Größe hilft uns, deinen BMI und Energiebedarf genau zu berechnen.',
			'onboarding.height.metric' => 'Metrisch',
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Weiter',
			'onboarding.weight.currentTitle' => 'Wie viel wiegst du aktuell?',
			'onboarding.weight.currentDescription' => 'Dein aktuelles Gewicht ist wichtig, um deine täglichen Ziele zu personalisieren.',
			'onboarding.weight.targetTitle' => 'Was ist dein Zielgewicht?',
			'onboarding.weight.targetDescription' => 'Ein Zielgewicht hilft uns, deinen langfristigen Plan festzulegen.',
			'onboarding.weight.metric' => 'Metrisch',
			'onboarding.weight.imperial' => 'Imperial',
			'onboarding.weight.next' => 'Weiter',
			'onboarding.age.title' => 'Wann hast du Geburtstag?',
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
			'onboarding.bmiScale.messages.underweight' => 'Wir helfen dir mit einem gesunden Plan, um mit nährstoffreichen Mahlzeiten ein ausgewogenes Gewicht zu erreichen.',
			'onboarding.bmiScale.messages.healthy' => 'Großartige Arbeit! Du liegst im gesunden Bereich. Wir helfen dir, Vitalität und Energie zu erhalten.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} macht deine Reise mit KI-gestütztem Tracking einfacher, damit du dein Ziel entspannt erreichst.',
			'onboarding.bmiScale.messages.obese' => 'Wir unterstützen dich mit persönlicher Begleitung und nachhaltigen Strategien für deine Gesundheitsziele.',
			'onboarding.weightGoal.title' => 'Was ist dein Ziel?',
			'onboarding.weightGoal.description' => 'Wähle das Ziel, das am besten zu dir passt',
			'onboarding.activityLevel.title' => 'Wie aktiv bist du?',
			'onboarding.activityLevel.description' => 'Das hilft uns, deinen täglichen Kalorienbedarf genauer zu berechnen',
			'onboarding.healthConnect.title' => 'Mit Health Connect verbinden',
			'onboarding.healthConnect.description' => 'Synchronisiere deine Gesundheitsdaten für bessere Einblicke und automatische Kalorienerfassung',
			'onboarding.healthConnect.automaticTracking.title' => 'Automatisches Kalorientracking',
			'onboarding.healthConnect.automaticTracking.description' => 'Verbrannte Kalorien aus deinen Fitness-Apps erfassen',
			'onboarding.healthConnect.progressInsights.title' => 'Fortschritts-Insights',
			'onboarding.healthConnect.progressInsights.description' => 'Erhalte detaillierte Einblicke in deine Gesundheitstrends',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Nahtlose Integration',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchronisiere Daten aus deinen Gesundheits-Apps',
			'onboarding.healthConnect.connected' => 'Health Connect verbunden',
			'onboarding.healthConnect.notConnected' => 'Health Connect nicht verbunden',
			'onboarding.healthConnect.setup' => 'Health Connect einrichten',
			'onboarding.healthConnect.skipForNow' => 'Für jetzt überspringen',
			'onboarding.healthConnect.statusConnected' => 'Health Connect ist verbunden.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect wurde erfolgreich verbunden!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Zugriff verweigert. Bitte aktiviere die Health-Connect-Berechtigungen in den Telefoneinstellungen für ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Fehler beim Einrichten von Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Du bist nicht allein',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Studien zeigen: Konsequentes Tracking ist der stärkste Prädiktor für langfristigen Erfolg.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Für eine(n) ${age}-jährige(n) ${gender} mit dem Ziel, ${goal}, ist konsequentes Tracking der stärkste Erfolgsfaktor.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} macht es 10x einfacher als manuell.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Bereit, loszulegen?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Fotografiere deine Mahlzeiten für eine sofortige Analyse',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Logge konsequent, um spürbare Fortschritte zu sehen',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Verfolge deinen Fortschritt täglich, um motiviert zu bleiben',
			'onboarding.reinforcement.trackingSuccess.button' => 'Los geht\'s',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'Person',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'ein gesünderes Ich',
			'onboarding.reinforcement.healthProfile.title' => 'Dein Gesundheitsprofil',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Basierend auf deinen Angaben beträgt dein BMI ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Lass uns dein Profil fertigstellen, um deine Erfahrung zu personalisieren.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'zunehmen',
			'onboarding.reinforcement.healthProfile.goalLose' => 'abnehmen',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Um dein Ziel zu erreichen, wirst du ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Du bist bei deinem Zielgewicht! Wir helfen dir, es zu halten.',
			'onboarding.reinforcement.healthProfile.button' => 'Los geht\'s',
			'onboarding.reinforcement.goalLifestyle.title' => 'Ausgezeichneter Start!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Du hast den ersten Schritt Richtung ${goalText} gemacht. Da du ${activityText} bist, passt ${appLabel} deine Ziele an deinen Lebensstil an.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Personalisierte Kalorienziele',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'KI-gestützte Mahlzeiterkennung',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Detaillierte Makronährstoff-Aufschlüsselungen',
			'onboarding.reinforcement.goalLifestyle.button' => 'Los geht\'s',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'deine Ziele',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'aktiv',
			'tabs.dashboard' => 'Dashboard',
			'tabs.history' => 'Verlauf',
			'home.aiSummary.title' => 'Deine KI-Zusammenfassung',
			'home.aiSummary.logMore' => 'Protokolliere in den nächsten Tagen mehr Mahlzeiten, um deine personalisierten KI-Einblicke zu erhalten.',
			'home.aiSummary.loading' => 'Deine Zusammenfassung wird geladen ...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} Mahlzeiten protokolliert',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Balance-Score ${score}',
			'home.aiSummary.topFoods' => 'Top-Lebensmittel',
			'home.aiSummary.trendUp' => 'Kalorien im Aufwärtstrend',
			'home.aiSummary.trendDown' => 'Kalorien im Abwärtstrend',
			'home.aiSummary.trendSteady' => 'Kalorien bleiben konstant',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Aktualisiert ${time}',
			'home.dailyGoal.title' => 'Setze dein Tagesziel',
			'home.dailyGoal.titleSet' => 'Dein Tagesziel',
			'home.dailyGoal.description' => 'Bereit für deine Wohlfühlreise? Lege unten dein tägliches Kalorienziel fest, um durchzustarten.',
			'home.dailyGoal.descriptionSet' => 'Dein Kompass ist gesetzt! Das ist dein tägliches Kalorienziel als Orientierung.',
			'home.dailyGoal.yourGoal' => 'Dein Ziel',
			'home.dailyGoal.goal' => 'Ziel',
			'home.dailyGoal.dailyCalories' => 'Tägliche Kalorien (kcal)',
			'home.dailyGoal.setGoal' => 'Ziel festlegen',
			'home.dailyGoal.intake' => 'Aufnahme',
			'home.dailyGoal.burned' => 'Verbrannt',
			'home.dailyGoal.weightImpact' => 'Gewichtsauswirkung',
			'home.dailyGoal.estLoss' => 'Geschätzter Verlust von',
			'home.dailyGoal.estGain' => 'Geschätzte Zunahme von',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Tagesübersicht',
			'home.dailySummary.calories' => 'Kalorien',
			'home.dailySummary.carbs' => 'Kohlenhydrate',
			'home.dailySummary.protein' => 'Protein',
			'home.dailySummary.fat' => 'Fett',
			'home.dailySummary.fiber' => 'Ballaststoffe',
			'home.dailySummary.grams' => 'Gramm',
			'home.dailySummary.chartAccessibilityLabel' => 'Makros-Diagramm',
			'home.intakeProgress.title' => 'Heutige Makro-Verteilung',
			'home.intakeProgress.target' => 'Ziel',
			'home.intakeProgress.current' => 'Aktuell',
			'home.intakeHistory.title' => '7-Tage-Makroverlauf',
			'home.intakeHistory.trendTitle' => 'Heutiger Trend',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Spitze: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Noch kein Verlauf',
			'home.intakeHistory.startLogging' => 'Beginne mit dem Protokollieren, um hier\ndeinen 7‑Tage-Makrotrend zu sehen',
			'home.mealLog.title' => 'Protokollierte Mahlzeiten',
			'home.mealLog.emptyMessage' => 'Mach ein Foto deiner letzten Mahlzeit, um sie hier zu protokollieren.',
			'home.mealLog.noMealsToday' => 'Heute keine Mahlzeiten erfasst',
			'home.mealLog.seeAllMeals' => 'Alle Mahlzeiten ansehen',
			'home.mealDescription.title' => 'Schnell hinzufügen mit KI',
			'home.mealDescription.description' => 'Beschreibe deine Mahlzeit – die KI übernimmt den Rest.',
			'home.mealDescription.hint' => 'z. B. Zum Frühstück hatte ich eine große Schüssel Haferflocken mit einer Banane und einem Scoop Whey ...',
			'home.mealDescription.analyzeMeal' => 'Mahlzeit analysieren',
			'home.favoriteMeals.title' => 'Lieblingsmahlzeiten',
			'home.favoriteMeals.description' => 'Füge schnell eine deiner Lieblingsmahlzeiten hinzu.',
			'home.favoriteMeals.noFavorites' => 'Noch keine Lieblingsmahlzeiten.',
			'home.favoriteMeals.addFavoriteHint' => 'Klicke auf den Stern bei einer Mahlzeit, um sie als Favorit zu markieren.',
			'home.favoriteMeals.seeAll' => 'Alle ansehen',
			'home.favoriteMeals.add' => 'Hinzufügen',
			'home.mealSnap.title' => 'Fotografiere & tracke deine Mahlzeit',
			'home.mealSnap.description' => 'Nutze deine Kamera, um ein Foto deines Essens für die KI-Analyse zu machen.',
			'home.mealSnap.openCamera' => 'Kamera öffnen',
			'home.mealSnap.gallery' => 'Galerie',
			'home.mealSnap.compressingPhoto' => 'Foto wird optimiert …',
			'home.mealSnap.uploadingPhoto' => 'Foto wird hochgeladen …',
			'home.connectHealth.title' => 'Mit Health Connect synchronisieren',
			'home.connectHealth.description' => 'Synchronisiere deine Ernährungsdaten mit Health Connect',
			'home.connectHealth.install' => 'Installieren',
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
			'meal.mealQuantity' => 'Menge der Mahlzeit',
			'meal.mealQuantityHint' => 'z. B. 1 Schüssel, 2 Scheiben',
			'meal.timeOfMeal' => 'Uhrzeit der Mahlzeit',
			'meal.timeOfMealHint' => 'Wähle die Uhrzeit deiner Mahlzeit',
			'meal.mealType' => 'Mahlzeitentyp',
			'meal.nutrition.calories' => 'Kalorien',
			'meal.nutrition.carbs' => 'Kohlenhydrate (g)',
			'meal.nutrition.protein' => 'Protein (g)',
			'meal.nutrition.fat' => 'Fett (g)',
			'meal.nutrition.fiber' => 'Ballaststoffe (g)',
			'meal.deleteConfirmation.title' => 'Mahlzeit löschen',
			'meal.deleteConfirmation.message' => 'Möchtest du diesen Mahlzeiteintrag wirklich löschen?',
			'meal.deleteConfirmation.cancel' => 'Abbrechen',
			'meal.deleteConfirmation.delete' => 'Löschen',
			'meal.addedToLog' => 'Mahlzeit zu deinem Protokoll hinzugefügt!',
			'meal.couldNotAdd' => ({required Object error}) => 'Mahlzeit konnte nicht hinzugefügt werden: ${error}',
			'meal.savedSuccessfully' => 'Mahlzeit erfolgreich hinzugefügt!',
			'meal.updatedSuccessfully' => 'Mahlzeit erfolgreich aktualisiert!',
			'meal.errorSaving' => ({required Object error}) => 'Fehler beim Speichern der Mahlzeit: ${error}',
			'meal.removedFromFavorites' => 'Aus Favoriten entfernt!',
			'meal.savedAsFavorite' => 'Mahlzeit als Favorit gespeichert!',
			'meal.unfavorite' => 'Favorit entfernen',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Favorit konnte nicht aktualisiert werden: ${error}',
			'meal.feedbackThanks' => 'Danke für dein Feedback!',
			'meal.reanalysisUpdated' => 'Analyse basierend auf deinem Feedback aktualisiert.',
			'meal.failedToProcess' => ({required Object error}) => 'Verarbeitung fehlgeschlagen: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Bildverarbeitung fehlgeschlagen: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Fehler beim Komprimieren des Bildes: ${error}',
			'meal.failedToSave' => 'Daten konnten nicht gespeichert werden. Bitte versuche es erneut.',
			'meal.skip' => 'Überspringen',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Frage ${current} von ${total}',
			'meal.variation.noVariationsAvailable' => 'Keine Varianten verfügbar',
			'meal.analysis.title' => 'KI-Mahlzeitenanalyse',
			'meal.analysis.reassurance' => 'Das dauert normalerweise nur ein paar Sekunden.',
			'meal.analysis.stepStarted' => 'Es geht los …',
			'meal.analysis.stepDecomposition' => 'Wir verstehen deine Mahlzeit …',
			'meal.analysis.stepIngredients' => 'Zutaten werden mit Nährwertdaten abgeglichen …',
			'meal.analysis.stepUncertainty' => 'Vertrauen wird überprüft …',
			'meal.analysis.stepMealTypeQuestion' => 'Gleich geschafft …',
			'meal.analysis.stepResult' => 'Ergebnis wird finalisiert …',
			'meal.analysis.stepError' => 'Etwas ist schiefgelaufen',
			'meal.analysis.stepDefault' => 'Deine Mahlzeit wird analysiert …',
			'meal.analysis.progressUnderstand' => 'Verstehen',
			'meal.analysis.progressMatch' => 'Abgleichen',
			'meal.analysis.progressCheck' => 'Prüfen',
			'meal.analysis.progressFinish' => 'Fertigstellen',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} Zutaten erkannt',
			'meal.analysis.ingredientsPending' => 'Zutaten werden gescannt …',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'Was sieht falsch aus?',
			'meal.feedback.subtitle' => 'Hilf uns, die Analyse zu verbessern, indem du ein oder mehrere Probleme auswählst.',
			'meal.feedback.tellUsMore' => 'Mehr erzählen',
			'meal.feedback.describeIncorrect' => 'Beschreibe, was falsch war',
			'meal.feedback.submit' => 'Senden',
			'meal.feedback.issueFoodIdentification' => 'Lebensmittel­erkennung',
			'meal.feedback.issuePortionSize' => 'Portionsgröße',
			'meal.feedback.issueCalorieDistribution' => 'Kalorienverteilung',
			'meal.feedback.issueMacrosWrong' => 'Makros sind falsch',
			'meal.feedback.issueMissingItems' => 'Fehlende Elemente',
			'meal.feedback.issueExtraItems' => 'Zusätzliche Elemente',
			'meal.feedback.issueOther' => 'Sonstiges',
			'favorites.title' => 'Favoriten',
			'favorites.empty' => 'Noch keine Lieblingsmahlzeiten.',
			'favorites.searchPlaceholder' => 'Lieblingsmahlzeiten suchen',
			'favorites.searchEmptyTitle' => 'Keine Favoriten passen zu deiner Suche',
			'favorites.searchEmptySubtitle' => 'Versuche einen anderen Namen, eine andere Menge oder einen anderen Mahlzeitentyp.',
			'favorites.sortLabel' => 'Favoriten sortieren',
			'favorites.undo' => 'Rückgängig',
			'favorites.removed' => ({required Object name}) => '${name} aus Favoriten entfernt',
			'favorites.sortOptions.recent' => 'Neueste',
			'favorites.sortOptions.calories' => 'Kalorien',
			'favorites.sortOptions.alphabetical' => 'A–Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Keine Profildaten gefunden',
			'profile.yourProfile' => 'Dein Profil',
			'profile.viewAndManage' => 'Zeige und verwalte deine Gesundheitsinformationen',
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
			'profile.activityLevel' => 'Aktivitätsniveau',
			'profile.healthMetrics' => 'Gesundheitsmetriken',
			'profile.notSet' => 'Nicht festgelegt',
			'profile.years' => 'Jahre',
			'profile.updatedSuccessfully' => 'Profil erfolgreich aktualisiert!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Tagesziel',
			'profile.calculatedValues.calPerDay' => 'kcal/Tag',
			'profile.calculatedValues.notAvailable' => 'k. A.',
			'healthScore.title' => 'Gesundheits-Score',
			'healthScore.whyThisScore' => 'Warum dieser Score?',
			'healthScore.note' => 'Dieser Score ist eine KI-Schätzung basierend auf den erkannten Zutaten und der Nährstoffdichte. Für Ernährungsberatung wende dich immer an Fachleute.',
			'healthScore.unhealthy' => 'Ungesund',
			'healthScore.healthy' => 'Gesund',
			'healthScore.neutral' => 'Neutral',
			'editProfile.title' => 'Profil bearbeiten',
			'editProfile.sections.personalInformation' => 'PERSÖNLICHE ANGABEN',
			'editProfile.sections.physicalMeasurements' => 'KÖRPERMAßE',
			'editProfile.sections.goalsAndActivity' => 'ZIELE & AKTIVITÄT',
			'editProfile.gender' => 'Geschlecht',
			'editProfile.dateOfBirth' => 'Geburtsdatum',
			'editProfile.height' => 'Größe',
			'editProfile.weight' => 'Gewicht',
			'editProfile.weightGoal' => 'Gewichtsziel',
			'editProfile.activityLevel' => 'Aktivitätsniveau',
			'editProfile.metric' => 'Metrisch',
			'editProfile.imperial' => 'Imperial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metrisch (cm)',
			'editProfile.imperialFtIn' => 'Imperial (ft/in)',
			'editProfile.metricKg' => 'Metrisch (kg)',
			'editProfile.imperialLbs' => 'Imperial (lbs)',
			'editProfile.genders.male' => 'Männlich',
			'editProfile.genders.female' => 'Weiblich',
			'editProfile.genders.other' => 'Divers',
			'editProfile.weightGoals.loseWeight.name' => 'Abnehmen',
			'editProfile.weightGoals.loseWeight.description' => 'Kaloriendefizit erstellen, um Gewicht zu verlieren',
			'editProfile.weightGoals.maintainWeight.name' => 'Gewicht halten',
			'editProfile.weightGoals.maintainWeight.description' => 'Dein aktuelles Gewicht beibehalten',
			'editProfile.weightGoals.gainWeight.name' => 'Zunehmen',
			'editProfile.weightGoals.gainWeight.description' => 'Kalorienüberschuss erstellen, um zuzunehmen',
			'editProfile.activityLevels.sedentary.name' => 'Überwiegend sitzend',
			'editProfile.activityLevels.sedentary.description' => 'Kaum bis keine Bewegung',
			'editProfile.activityLevels.lightlyActive.name' => 'Leicht aktiv',
			'editProfile.activityLevels.lightlyActive.description' => 'Leichte Bewegung 1–3 Tage/Woche',
			'editProfile.activityLevels.moderatelyActive.name' => 'Mäßig aktiv',
			'editProfile.activityLevels.moderatelyActive.description' => 'Mäßige Bewegung 3–5 Tage/Woche',
			'editProfile.activityLevels.veryActive.name' => 'Sehr aktiv',
			'editProfile.activityLevels.veryActive.description' => 'Intensives Training 6–7 Tage/Woche',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrem aktiv',
			'editProfile.activityLevels.extremelyActive.description' => 'Sehr intensives Training, körperlicher Beruf',
			'settings.title' => 'Einstellungen',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALISIERUNG',
			'settings.sections.notifications' => 'BENACHRICH­TIGUNGEN',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'SUPPORT & RECHTLICHES',
			'settings.sections.about' => 'INFO',
			'settings.sections.dangerZone' => 'GEFAHRENBEREICH',
			'settings.sections.developer' => 'ENTWICKLER',
			'settings.editProfile.title' => 'Profil bearbeiten',
			'settings.editProfile.subtitle' => 'Aktualisiere deine persönlichen Angaben',
			'settings.language.title' => 'Sprache',
			'settings.language.subtitle' => 'Wähle deine bevorzugte Sprache',
			'settings.language.searchHint' => 'Sprachen suchen ...',
			'settings.language.noResults' => 'Keine Ergebnisse gefunden',
			'settings.heightUnit.title' => 'Größeneinheit',
			'settings.weightUnit.title' => 'Gewichtseinheit',
			'settings.mealReminders.title' => 'Mahlzeit-Erinnerungen',
			'settings.mealReminders.subtitle' => 'Bleibe mit rechtzeitigen Hinweisen auf Kurs',
			'settings.theme.title' => 'Design',
			'settings.theme.light' => 'Hell',
			'settings.theme.dark' => 'Dunkel',
			'settings.theme.system' => 'System',
			'settings.sendFeedback.title' => 'Feedback senden',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Hilf uns, ${appLabel} zu verbessern',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} App-Feedback',
			'settings.sendFeedback.emailBodyPrefix' => 'Bitte gib dein Feedback unten ein:',
			'settings.sendFeedback.appVersion' => 'App-Version',
			'settings.sendFeedback.device' => 'Gerät',
			'settings.sendFeedback.osVersion' => 'OS-Version',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Mahlzeitenverlauf exportieren',
			'settings.exportMealHistory.subtitle' => 'Teile eine CSV deiner protokollierten Mahlzeiten',
			'settings.exportMealHistory.shareText' => 'Dein Calorify-Mahlzeitenexport',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Konnte den Mahlzeitenverlauf nicht exportieren: ${error}',
			'settings.clearAllData.title' => 'Alle Daten löschen',
			'settings.clearAllData.subtitle' => 'Unwiderruflich alle deine Informationen löschen',
			'settings.clearAllData.confirmationTitle' => 'Alle Daten löschen?',
			'settings.clearAllData.confirmationMessage' => 'Diese Aktion kann nicht rückgängig gemacht werden. Alle deine protokollierten Mahlzeiten, Favoriten und Profileinstellungen werden dauerhaft gelöscht.',
			'settings.clearAllData.cancel' => 'Abbrechen',
			'settings.clearAllData.clearEverything' => 'Alles löschen',
			'settings.debugOptions.title' => 'Debug-Optionen',
			'settings.developerModeEnabled' => 'Entwicklermodus aktiviert!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Berechtigungen anzeigen und verwalten',
			'settings.healthConnect.unavailable.title' => 'Health Connect nicht verfügbar',
			'settings.healthConnect.unavailable.description' => 'Health Connect ist auf diesem Gerät nicht verfügbar. Bitte installiere Health Connect aus dem Play Store (Android 9+) oder aktualisiere auf Android 14+.',
			'settings.healthConnect.permissions.title' => 'Berechtigungen',
			'settings.healthConnect.permissions.description' => 'Die folgenden Berechtigungen werden für die Health-Connect-Integration benötigt:',
			'settings.healthConnect.permissions.granted' => 'Erteilt',
			'settings.healthConnect.permissions.notGranted' => 'Nicht erteilt',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Gesamtverbrauchte Kalorien lesen',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Erlaubt der App, deine insgesamt verbrannten Kalorien aus Health Connect zu lesen.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Diese Berechtigung wird verwendet, um deinen täglichen Kalorienverbrauch in der App anzuzeigen, so verstehst du deinen gesamten Energieverbrauch im Tagesverlauf.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Ernährungsdaten lesen',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Erlaubt der App, Ernährungsdaten aus Health Connect zu lesen.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Diese Berechtigung ermöglicht es der App, Ernährungsinformationen zu lesen, die möglicherweise von anderen Apps in Health Connect erfasst wurden, um dir einen umfassenden Überblick über deine Ernährung zu geben.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Ernährungsdaten schreiben',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Erlaubt der App, Ernährungsdaten in Health Connect zu schreiben.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Diese Berechtigung ermöglicht es der App, deine protokollierten Mahlzeiten mit Health Connect zu synchronisieren, sodass deine Ernährungsdaten auch in anderen Gesundheits- und Fitness-Apps verfügbar sind.',
			'settings.healthConnect.managePermissions' => 'Berechtigungen verwalten',
			'settings.healthConnect.openSettings' => 'Health-Connect-Einstellungen öffnen',
			'settings.healthConnect.requestPermissions' => 'Berechtigungen anfordern',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'Berechtigungsanfrage wurde abgebrochen oder ist fehlgeschlagen. Bitte versuche es erneut oder erteile die Berechtigungen manuell in den Health-Connect-Einstellungen.',
			'settings.healthConnect.permissionRequestFailed' => 'Berechtigungen konnten nicht angefordert werden. Bitte versuche es erneut oder erteile die Berechtigungen manuell in den Health-Connect-Einstellungen.',
			'settings.healthConnect.requestingPermissions' => 'Anfordern ...',
			'settings.about.title' => 'Info',
			'settings.about.tagline' => 'Schnelle, kostenlose und datenschutzfreundliche Kalorienorientierung',
			'settings.about.ourStory.title' => 'Unsere Geschichte',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} entstand aus einer einfachen Frustration: Die meisten Kalorientracker sind entweder übermäßig kompliziert, verlangen ständige manuelle Eingaben, kosten teure Abos oder gehen auf Kosten der Privatsphäre.\n\nAls Solo-Entwickler wollte ich etwas Einfacheres und Faireres bauen — eine App, die KI nutzt, um den Aufwand zu reduzieren, schnell und kostenlos bleibt und deine Gesundheitsdaten respektiert.\n\n${appLabel} ist die App, die ich mir gewünscht habe: keine Accounts, kein Tracking, keine Werbung — nur klare, praktische Einblicke und deine Gesundheitsziele.',
			'settings.about.privacy.title' => 'Deine Privatsphäre zählt',
			'settings.about.privacy.description' => 'Datenschutz ist kein Nachgedanke — er ist ein Gestaltungsprinzip. Das bedeutet konkret:',
			'settings.about.privacy.noAccounts' => 'Keine Accounts erforderlich\nNutze die App sofort. Keine Anmeldungen, keine Identitäten.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Kein Verhaltenstracking\n${appLabel} überwacht deine Aktivität nicht, erstellt keine Nutzungsprofile und verfolgt dich nicht über Apps oder Websites hinweg.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Keine Werbung\n${appLabel} funktioniert ohne Werbung oder datengetriebene Monetarisierung.',
			'settings.about.privacy.noDataSelling' => 'Kein Datenverkauf\nDeine Gesundheitsdaten werden niemals an Dritte verkauft oder weitergegeben.',
			'settings.about.privacy.localStorage' => 'Lokal-first-Speicherung\nDeine Daten bleiben auf deinem Gerät.',
			'settings.about.privacy.privacyPolicy' => 'Datenschutzrichtlinie',
			'settings.about.developer.title' => 'Von einem Solo-Entwickler gebaut',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} wird von einem einzelnen Solo-Entwickler entwickelt und gepflegt, der ruhige, datenschutzfreundliche Gesundheitssoftware baut.\n\nFeedback wird persönlich gelesen und beeinflusst die Ausrichtung der App.',
			'settings.about.developer.website' => 'Webseite',
			'settings.about.developer.email' => 'E-Mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Gefällt dir ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Dein Feedback hilft, ${appLabel} für alle besser zu machen.',
			'settings.about.feedback.rateApp' => 'Im Play Store bewerten',
			'settings.about.feedback.sendFeedback' => 'Feedback senden',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Bleibe mit Erinnerungen auf Kurs',
			'reminders.description' => 'Erhalte sanfte Erinnerungen, deine Mahlzeiten zu protokollieren und bei deinen Ernährungszielen dranzubleiben',
			'reminders.notificationsEnabled' => 'Benachrichtigungen aktiviert',
			'reminders.notificationsDisabled' => 'Benachrichtigungen deaktiviert',
			'reminders.enabledSubtitle' => 'Du erhältst Mahlzeit-Erinnerungen',
			'reminders.disabledSubtitle' => 'Aktiviere Benachrichtigungen, um Mahlzeit-Erinnerungen zu bekommen',
			'reminders.mealReminders' => 'Mahlzeit-Erinnerungen',
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
			'reminders.permissionDenied' => 'Benachrichtigungsberechtigung verweigert',
			'reminders.errorEnabling' => ({required Object error}) => 'Fehler beim Aktivieren der Benachrichtigungen: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Fehler beim Abschließen der Einrichtung: ${error}',
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
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} liefert geschätzte Nährwertangaben. Die Genauigkeit hängt von deinen Eingaben & Lebensmittelvariationen ab. Nutze dies als Orientierung, nicht als endgültige Quelle. Für individuelle Beratung wende dich an Fachleute.',
			'disclaimer.snap.portionSize.title' => 'Portionsgröße',
			'disclaimer.snap.portionSize.description' => 'Die Genauigkeit der Schätzungen hängt stark von deiner korrekten Einschätzung der Portionsgröße ab.',
			'disclaimer.snap.preparationMethods.title' => 'Zubereitungsmethoden',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Kochmethoden können den Nährstoffgehalt stark verändern. Die Schätzungen von ${appLabel} berücksichtigen diese Unterschiede nicht immer.',
			'disclaimer.snap.ingredients.title' => 'Zutaten',
			'disclaimer.snap.ingredients.description' => 'Komplexe Gerichte mit vielen versteckten Zutaten können zu weniger genauen Schätzungen führen.',
			'disclaimer.snap.databaseLimitations.title' => 'Datenbankgrenzen',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Die Lebensmitteldatenbank von ${appLabel} ist umfangreich, enthält aber möglicherweise nicht jedes einzelne Lebensmittel oder jede Variante.',
			'disclaimer.weightEstimate.title' => 'Über die Gewichtsschätzung',
			'disclaimer.weightEstimate.description' => 'Die prognostizierte Gewichtsveränderung ist eine theoretische Schätzung basierend auf dem einfachen Modell von aufgenommenen vs. verbrauchten Kalorien. Sie dient nur als Motivation und ist keine Vorhersage deines tatsächlichen Gewichts.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kaloriengenauigkeit',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Diese Schätzung ist nur so genau wie deine erfasste Kalorienaufnahme und ‑verwendung. Ungenaue Protokolle führen zu ungenauen Projektionen.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologische Faktoren',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'Tatsächliche Gewichtsabnahme/-zunahme wird von Stoffwechsel, Hormonen, Schlaf, Stress, Hydration und weiteren individuellen Faktoren beeinflusst, die ${appLabel} nicht messen kann.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Wassergewicht & Schwankungen',
			'disclaimer.weightEstimate.waterWeight.description' => 'Das normale Tagesgewicht kann durch Wassereinlagerungen, Verdauung und Timing deutlich schwanken. Die Schätzung berücksichtigt diese täglichen Veränderungen nicht.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Professionelle Beratung',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Nutze diese Schätzung nicht für medizinische Entscheidungen. Wende dich für persönliche Empfehlungen stets an medizinisches Fachpersonal oder eine/n Ernährungsberater/in.',
			'disclaimer.healthMetrics.description' => 'Diese Kennzahlen helfen dir, den Energiebedarf deines Körpers zu verstehen und deine Ernährungsziele zu steuern.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Der Grundumsatz (BMR) ist die Kalorienmenge, die dein Körper in Ruhe verbrennt, um grundlegende Funktionen wie Atmung und Kreislauf aufrechtzuerhalten. Der BMR hängt von Alter, Geschlecht, Größe und Gewicht ab. Ein höherer BMR bedeutet, dass dein Körper in Ruhe mehr Kalorien verbrennt – oft aufgrund von mehr Muskelmasse, jüngerem Alter oder männlichem Geschlecht. Ein niedrigerer BMR weist typischerweise auf weniger Muskelmasse, höheres Alter oder weibliches Geschlecht hin.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Der Gesamtenergieverbrauch pro Tag (TDEE) ist die Gesamtzahl der Kalorien, die du täglich verbrennst – einschließlich BMR plus Kalorien aus körperlicher Aktivität und Alltagsbewegung. Der TDEE hängt von deinem BMR und Aktivitätsniveau ab. Ein höherer TDEE bedeutet insgesamt mehr verbrannte Kalorien, meist durch mehr Aktivität oder einen höheren BMR. Ein niedrigerer TDEE deutet auf weniger tägliche Aktivität oder einen niedrigeren BMR hin.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Tagesziel',
			'disclaimer.healthMetrics.dailyGoal.description' => 'Das Tagesziel ist deine empfohlene tägliche Kalorienaufnahme basierend auf deinem TDEE und deinem Gewichtsziel. Für Gewichtsverlust nimmst du weniger Kalorien als deinen TDEE zu dir. Für Gewichtserhalt entspricht deine Aufnahme dem TDEE. Für Gewichtszunahme isst du mehr als deinen TDEE. So erreichst du dein gewünschtes Gewicht in einem gesunden Tempo.',
			'disclaimer.calorieExpenditure.title' => 'Schätzung des Kalorienverbrauchs',
			'disclaimer.calorieExpenditure.description' => 'Wenn Health-Connect-Daten nicht verfügbar sind, schätzen wir die heute verbrannten Kalorien mithilfe deines Grundumsatzes (BMR) und Aktivitätsniveaus (TDEE), skaliert auf den bereits vergangenen Tagesanteil.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'So wird die Schätzung berechnet',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Wir berechnen deinen TDEE (basierend auf deinem Profil) und multiplizieren ihn mit dem Bruchteil des verstrichenen Tages (Stunden + Minuten) / 24, um die bisher verbrannten Kalorien zu schätzen.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Professionelle Beratung',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Nutze diese Schätzung nicht für medizinische Entscheidungen. Wende dich für persönliche Empfehlungen stets an medizinisches Fachpersonal oder eine/n Ernährungsberater/in.',
			'common.close' => 'Schließen',
			'common.kContinue' => 'Weiter',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Gefällt dir ${appLabel}?',
			'feedbackRating.yes' => 'Ja, es gefällt mir',
			'feedbackRating.no' => 'Nicht wirklich',
			'feedbackRating.rateStepHeading' => 'Im Play Store bewerten',
			'feedbackRating.emailStepHeading' => 'Feedback per E‑Mail senden',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Eine kurze Bewertung hilft anderen, ${appLabel} zu finden und hält die Entwicklung am Laufen. Hättest du einen Moment dafür?',
			'feedbackRating.shareFeedbackViaEmail' => 'Dein Feedback bestimmt, was als Nächstes kommt — wir lesen jede Nachricht. Möchtest du deine Gedanken per E‑Mail teilen?',
			'feedbackRating.rateCta' => 'Im Play Store bewerten',
			'feedbackRating.maybeLater' => 'Vielleicht später',
			'feedbackRating.sendFeedback' => 'Feedback senden',
			'feedbackRating.noThanks' => 'Nein, danke',
			'feedbackRating.aboutUsDescription' => 'Mit Sorgfalt von einem kleinen Team entwickelt. Unser Fokus liegt auf Datenschutz, Einfachheit und dabei zu helfen, bessere Essgewohnheiten aufzubauen.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Neugierig, wer hinter ${appLabel} steckt? Sieh dir ',
			'feedbackRating.aboutUsLinkLabel' => 'Über uns',
			'feedbackRating.thankYouMessage' => 'Danke! Wir fragen ein andermal erneut.',
			'health.syncFailed' => 'Konnte nicht mit Health Connect synchronisieren',
			'health.mealSynced' => 'Mahlzeit mit Health Connect synchronisiert',
			_ => null,
		};
	}
}
