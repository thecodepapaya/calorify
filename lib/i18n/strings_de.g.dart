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
	@override late final _TranslationsOnboardingDe onboarding = _TranslationsOnboardingDe._(_root);
	@override late final _TranslationsTabsDe tabs = _TranslationsTabsDe._(_root);
	@override late final _TranslationsHomeDe home = _TranslationsHomeDe._(_root);
	@override late final _TranslationsHistoryDe history = _TranslationsHistoryDe._(_root);
	@override late final _TranslationsMealDe meal = _TranslationsMealDe._(_root);
	@override late final _TranslationsFavoritesDe favorites = _TranslationsFavoritesDe._(_root);
	@override late final _TranslationsProfileDe profile = _TranslationsProfileDe._(_root);
	@override late final _TranslationsEditProfileDe editProfile = _TranslationsEditProfileDe._(_root);
	@override late final _TranslationsSettingsDe settings = _TranslationsSettingsDe._(_root);
	@override late final _TranslationsRemindersDe reminders = _TranslationsRemindersDe._(_root);
	@override late final _TranslationsNotificationsDe notifications = _TranslationsNotificationsDe._(_root);
	@override late final _TranslationsLoginDe login = _TranslationsLoginDe._(_root);
	@override late final _TranslationsDisclaimerDe disclaimer = _TranslationsDisclaimerDe._(_root);
	@override late final _TranslationsCommonDe common = _TranslationsCommonDe._(_root);
	@override late final _TranslationsErrorsDe errors = _TranslationsErrorsDe._(_root);
	@override late final _TranslationsDebugDe debug = _TranslationsDebugDe._(_root);
}

// Path: onboarding
class _TranslationsOnboardingDe implements TranslationsOnboardingEn {
	_TranslationsOnboardingDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Willkommen bei Calorify';
	@override String get subtitle => 'Ihr persönlicher Ernährungsbegleiter, betrieben von KI';
	@override String get getStarted => 'Loslegen';
	@override late final _TranslationsOnboardingFeaturesDe features = _TranslationsOnboardingFeaturesDe._(_root);
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
	@override late final _TranslationsHomeDailyGoalDe dailyGoal = _TranslationsHomeDailyGoalDe._(_root);
	@override late final _TranslationsHomeDailySummaryDe dailySummary = _TranslationsHomeDailySummaryDe._(_root);
	@override late final _TranslationsHomeIntakeProgressDe intakeProgress = _TranslationsHomeIntakeProgressDe._(_root);
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
	@override String get title => 'Historie';
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
	@override String get saveMeal => 'Mahlzeit speichern';
	@override late final _TranslationsMealDeleteConfirmationDe deleteConfirmation = _TranslationsMealDeleteConfirmationDe._(_root);
	@override String get addedToLog => 'Mahlzeit zu deinem Protokoll hinzugefügt!';
	@override String get couldNotAdd => 'Mahlzeit konnte nicht hinzugefügt werden: {error}';
	@override String get removedFromFavorites => 'Von den Favoriten entfernt!';
	@override String get savedAsFavorite => 'Mahlzeit als Favorit gespeichert!';
	@override String get couldNotUpdateFavorite => 'Favorit konnte nicht aktualisiert werden: {error}';
	@override String get failedToProcess => 'Verarbeitung fehlgeschlagen: {error}';
	@override String get failedToProcessImage => 'Bildverarbeitung fehlgeschlagen: {error}';
	@override String get errorCompressingImage => 'Fehler beim Komprimieren des Bildes: {error}';
}

// Path: favorites
class _TranslationsFavoritesDe implements TranslationsFavoritesEn {
	_TranslationsFavoritesDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoriten';
	@override String get empty => 'Noch keine Lieblingsmahlzeiten.';
}

// Path: profile
class _TranslationsProfileDe implements TranslationsProfileEn {
	_TranslationsProfileDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get editProfile => 'Profil bearbeiten';
	@override String get noProfileData => 'Keine Profildaten gefunden';
	@override String get yourProfile => 'Dein Profil';
	@override String get viewAndManage => 'Gesundheitsinformationen ansehen und verwalten';
	@override late final _TranslationsProfileSectionsDe sections = _TranslationsProfileSectionsDe._(_root);
	@override String get gender => 'Geschlecht';
	@override String get height => 'Größe';
	@override String get weight => 'Gewicht';
	@override String get age => 'Alter';
	@override String get weightGoal => 'Gewichtsziele';
	@override String get activityLevel => 'Aktivitätslevel';
	@override String get healthMetrics => 'Gesundheitsmetriken';
	@override String get notSet => 'Nicht festgelegt';
	@override String get years => 'Jahre';
	@override String get updatedSuccessfully => 'Profil erfolgreich aktualisiert!';
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
	@override String get metricCm => 'Metric (cm)';
	@override String get imperialFtIn => 'Imperial (ft/in)';
	@override String get metricKg => 'Metric (kg)';
	@override String get imperialLbs => 'Imperial (lbs)';
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
	@override late final _TranslationsSettingsSendFeedbackDe sendFeedback = _TranslationsSettingsSendFeedbackDe._(_root);
	@override late final _TranslationsSettingsClearAllDataDe clearAllData = _TranslationsSettingsClearAllDataDe._(_root);
	@override late final _TranslationsSettingsDebugOptionsDe debugOptions = _TranslationsSettingsDebugOptionsDe._(_root);
	@override String get developerModeEnabled => 'Entwicklermodus aktiviert!';
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
	@override String get change => 'Ändern';
	@override String get enableNotifications => 'Benachrichtigungen aktivieren';
	@override String get skipForNow => 'Für jetzt überspringen';
	@override String get saveChanges => 'Änderungen speichern';
	@override String get continue_ => 'Fortfahren';
	@override String get enabledSuccessfully => 'Benachrichtigungen erfolgreich aktiviert!';
	@override String get permissionDenied => 'Benachrichtigungserlaubnis verweigert';
	@override String get errorEnabling => 'Fehler beim Aktivieren der Benachrichtigungen: {error}';
	@override String get errorCompletingSetup => 'Fehler beim Abschluss der Einrichtung: {error}';
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
}

// Path: common
class _TranslationsCommonDe implements TranslationsCommonEn {
	_TranslationsCommonDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Abbrechen';
	@override String get save => 'Speichern';
	@override String get delete => 'Löschen';
	@override String get edit => 'Bearbeiten';
	@override String get close => 'Schließen';
	@override String get kContinue => 'Fortfahren';
	@override String get skip => 'Überspringen';
	@override String get error => 'Fehler';
	@override String get loading => 'Lädt...';
	@override String get notSet => 'Nicht festgelegt';
	@override String get today => 'Heute';
	@override String get yesterday => 'Gestern';
}

// Path: errors
class _TranslationsErrorsDe implements TranslationsErrorsEn {
	_TranslationsErrorsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Fehler beim Laden der Profildaten';
	@override String get generic => 'Ein Fehler ist aufgetreten. Bitte versuche es erneut.';
}

// Path: debug
class _TranslationsDebugDe implements TranslationsDebugEn {
	_TranslationsDebugDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug-Optionen';
	@override String get showActiveNotifications => 'Aktive Benachrichtigungen anzeigen';
	@override String get scheduleTestNotification => 'Testbenachrichtigung planen (10s)';
	@override String get triggerBreakfastNotification => 'Frühstücksbenachrichtigung auslösen';
	@override String get cancelAllNotifications => 'Alle Benachrichtigungen abbrechen';
	@override String get activeNotifications => 'Aktive Benachrichtigungen';
	@override String get id => 'ID: {id}';
	@override String get fetchLatestWeight => 'Letztes Gewicht abrufen';
	@override String get fetchLatestHeight => 'Letzte Größe abrufen';
	@override String get writeTestWeight => 'Testgewicht schreiben (70kg)';
	@override String get writeTestHeight => 'Testhöhe schreiben (175cm)';
	@override String get syncLast7Days => 'Letzte 7 Tage synchronisieren';
	@override String get checkCurrentLocale => 'Aktuelle Locale überprüfen';
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
	@override String get dailyCalories => 'Tägliche Kalorien (kcal)';
	@override String get setGoal => 'Ziel setzen';
	@override String get intake => 'Aufnahme';
	@override String get burned => 'Verbrennt';
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

// Path: profile.sections
class _TranslationsProfileSectionsDe implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'GRUNDLEGENDEN INFORMATIONEN';
	@override String get goalsAndActivity => 'ZIELE & AKTIVITÄT';
	@override String get calculatedValues => 'BERECHNETE WERTE';
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

// Path: settings.sections
class _TranslationsSettingsSectionsDe implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALISIERUNG';
	@override String get notifications => 'BENACHRICHTIGUNGEN';
	@override String get supportAndLegal => 'UNTERSTÜTZUNG & RECHTLICHES';
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

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackDe implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Feedback senden';
	@override String get subtitle => 'Hilf uns, Calorify zu verbessern';
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
	@override String get description => 'Calorify bietet geschätzte Nährwertinformationen. Die Genauigkeit hängt von deinem Input und den Variationen der Lebensmittel ab. Verwende sie als Leitfaden, nicht als definitive Quelle. Konsultiere einen Fachmann für persönliche Ernährungsberatung.';
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
	@override String get description => 'Kochmethoden können den Nährstoffgehalt von Lebensmitteln erheblich verändern. Calorifys Schätzungen berücksichtigen möglicherweise nicht immer diese Variationen.';
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
	@override String get description => 'Calorifys Lebensmitteldatenbank ist umfangreich, umfasst jedoch möglicherweise nicht jedes einzelne Lebensmittel oder jede Variation.';
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
	@override String get description => 'Tatsächlicher Gewichtsverlust/-zunahme wird von Stoffwechsel, Hormonen, Schlaf, Stress, Hydration und anderen individuellen Faktoren beeinflusst, die Calorify nicht messen kann.';
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
			'onboarding.welcome' => 'Willkommen bei Calorify',
			'onboarding.subtitle' => 'Ihr persönlicher Ernährungsbegleiter, betrieben von KI',
			'onboarding.getStarted' => 'Loslegen',
			'onboarding.features.foodRecognition.title' => 'Intelligente Lebensmittelkennung',
			'onboarding.features.foodRecognition.description' => 'Machen Sie ein Foto und lassen Sie die KI Ihre Mahlzeit identifizieren',
			'onboarding.features.aiAnalysis.title' => 'KI-Analyse',
			'onboarding.features.aiAnalysis.description' => 'Erhalten Sie sofortige Nährwertinformationen aus Ihren Beschreibungen',
			'onboarding.features.healthIntegration.title' => 'Gesundheitsintegration',
			'onboarding.features.healthIntegration.description' => 'Verbinden Sie sich mit Health Connect für bessere Einblicke',
			'tabs.dashboard' => 'Dashboard',
			'tabs.history' => 'Historie',
			'home.dailyGoal.title' => 'Setze dein tägliches Ziel',
			'home.dailyGoal.titleSet' => 'Dein tägliches Ziel',
			'home.dailyGoal.description' => 'Bereit, deine Wellness-Reise zu beginnen? Setze dein tägliches Kalorienziel unten, um deinen Fortschritt zu starten.',
			'home.dailyGoal.descriptionSet' => 'Dein Kompass ist eingestellt! Dies ist dein tägliches Kalorienziel, um dich zu leiten.',
			'home.dailyGoal.yourGoal' => 'Dein Ziel',
			'home.dailyGoal.dailyCalories' => 'Tägliche Kalorien (kcal)',
			'home.dailyGoal.setGoal' => 'Ziel setzen',
			'home.dailyGoal.intake' => 'Aufnahme',
			'home.dailyGoal.burned' => 'Verbrennt',
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
			'home.intakeProgress.title' => 'Makroverteilung heute',
			'home.intakeProgress.target' => 'Ziel',
			'home.intakeProgress.current' => 'Aktuell',
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
			'home.connectHealth.title' => 'Mit Health Connect synchronisieren',
			'home.connectHealth.description' => 'Synchronisiere deine Ernährungsdaten mit Health Connect',
			'home.connectHealth.install' => 'Installieren',
			'home.connectHealth.connect' => 'Verbinden',
			'history.title' => 'Historie',
			'history.noMeals' => 'Keine Mahlzeiten aufgezeichnet',
			'history.emptyMessage' => 'Mache ein Bild von deiner letzten Mahlzeit, um sie hier einzutragen.',
			'history.today' => 'Heute',
			'history.yesterday' => 'Gestern',
			'meal.ohNo' => 'Oh nein!',
			'meal.delete' => 'Löschen',
			'meal.editMeal' => 'Mahlzeit bearbeiten',
			'meal.saveMeal' => 'Mahlzeit speichern',
			'meal.deleteConfirmation.title' => 'Mahlzeit löschen',
			'meal.deleteConfirmation.message' => 'Bist du sicher, dass du diesen Mahlzeiteintrag löschen möchtest?',
			'meal.deleteConfirmation.cancel' => 'Abbrechen',
			'meal.deleteConfirmation.delete' => 'Löschen',
			'meal.addedToLog' => 'Mahlzeit zu deinem Protokoll hinzugefügt!',
			'meal.couldNotAdd' => 'Mahlzeit konnte nicht hinzugefügt werden: {error}',
			'meal.removedFromFavorites' => 'Von den Favoriten entfernt!',
			'meal.savedAsFavorite' => 'Mahlzeit als Favorit gespeichert!',
			'meal.couldNotUpdateFavorite' => 'Favorit konnte nicht aktualisiert werden: {error}',
			'meal.failedToProcess' => 'Verarbeitung fehlgeschlagen: {error}',
			'meal.failedToProcessImage' => 'Bildverarbeitung fehlgeschlagen: {error}',
			'meal.errorCompressingImage' => 'Fehler beim Komprimieren des Bildes: {error}',
			'favorites.title' => 'Favoriten',
			'favorites.empty' => 'Noch keine Lieblingsmahlzeiten.',
			'profile.title' => 'Profil',
			'profile.editProfile' => 'Profil bearbeiten',
			'profile.noProfileData' => 'Keine Profildaten gefunden',
			'profile.yourProfile' => 'Dein Profil',
			'profile.viewAndManage' => 'Gesundheitsinformationen ansehen und verwalten',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'GRUNDLEGENDEN INFORMATIONEN',
			'profile.sections.goalsAndActivity' => 'ZIELE & AKTIVITÄT',
			'profile.sections.calculatedValues' => 'BERECHNETE WERTE',
			'profile.gender' => 'Geschlecht',
			'profile.height' => 'Größe',
			'profile.weight' => 'Gewicht',
			'profile.age' => 'Alter',
			'profile.weightGoal' => 'Gewichtsziele',
			'profile.activityLevel' => 'Aktivitätslevel',
			'profile.healthMetrics' => 'Gesundheitsmetriken',
			'profile.notSet' => 'Nicht festgelegt',
			'profile.years' => 'Jahre',
			'profile.updatedSuccessfully' => 'Profil erfolgreich aktualisiert!',
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
			'editProfile.metricCm' => 'Metric (cm)',
			'editProfile.imperialFtIn' => 'Imperial (ft/in)',
			'editProfile.metricKg' => 'Metric (kg)',
			'editProfile.imperialLbs' => 'Imperial (lbs)',
			'settings.title' => 'Einstellungen',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOKALISIERUNG',
			'settings.sections.notifications' => 'BENACHRICHTIGUNGEN',
			'settings.sections.supportAndLegal' => 'UNTERSTÜTZUNG & RECHTLICHES',
			'settings.sections.dangerZone' => 'GEFAHRENZONE',
			'settings.sections.developer' => 'ENTWICKLER',
			'settings.editProfile.title' => 'Profil bearbeiten',
			'settings.editProfile.subtitle' => 'Aktualisiere deine persönlichen Informationen',
			'settings.language.title' => 'Sprache',
			'settings.heightUnit.title' => 'Größeneinheit',
			'settings.weightUnit.title' => 'Gewichtseinheit',
			'settings.mealReminders.title' => 'Mahlzeit Erinnerungen',
			'settings.mealReminders.subtitle' => 'Bleibe mit zeitgerechten Erinnerungen auf Kurs',
			'settings.sendFeedback.title' => 'Feedback senden',
			'settings.sendFeedback.subtitle' => 'Hilf uns, Calorify zu verbessern',
			'settings.clearAllData.title' => 'Alle Daten löschen',
			'settings.clearAllData.subtitle' => 'Alle deine Informationen unwiderruflich löschen',
			'settings.clearAllData.confirmationTitle' => 'Alle Daten löschen?',
			'settings.clearAllData.confirmationMessage' => 'Dieser Vorgang kann nicht rückgängig gemacht werden. Alle deine eingetragenen Mahlzeiten, Favoriten und Profileinstellungen werden dauerhaft gelöscht.',
			'settings.clearAllData.cancel' => 'Abbrechen',
			'settings.clearAllData.clearEverything' => 'Alles löschen',
			'settings.debugOptions.title' => 'Debug-Optionen',
			'settings.developerModeEnabled' => 'Entwicklermodus aktiviert!',
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
			'reminders.change' => 'Ändern',
			'reminders.enableNotifications' => 'Benachrichtigungen aktivieren',
			'reminders.skipForNow' => 'Für jetzt überspringen',
			'reminders.saveChanges' => 'Änderungen speichern',
			'reminders.continue_' => 'Fortfahren',
			'reminders.enabledSuccessfully' => 'Benachrichtigungen erfolgreich aktiviert!',
			'reminders.permissionDenied' => 'Benachrichtigungserlaubnis verweigert',
			'reminders.errorEnabling' => 'Fehler beim Aktivieren der Benachrichtigungen: {error}',
			'reminders.errorCompletingSetup' => 'Fehler beim Abschluss der Einrichtung: {error}',
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
			'disclaimer.snap.description' => 'Calorify bietet geschätzte Nährwertinformationen. Die Genauigkeit hängt von deinem Input und den Variationen der Lebensmittel ab. Verwende sie als Leitfaden, nicht als definitive Quelle. Konsultiere einen Fachmann für persönliche Ernährungsberatung.',
			'disclaimer.snap.portionSize.title' => 'Portionsgröße',
			'disclaimer.snap.portionSize.description' => 'Die Genauigkeit der Schätzungen hängt stark von deiner korrekten Einschätzung der Portionsgröße ab.',
			'disclaimer.snap.preparationMethods.title' => 'Zubereitungsmethoden',
			'disclaimer.snap.preparationMethods.description' => 'Kochmethoden können den Nährstoffgehalt von Lebensmitteln erheblich verändern. Calorifys Schätzungen berücksichtigen möglicherweise nicht immer diese Variationen.',
			'disclaimer.snap.ingredients.title' => 'Zutaten',
			'disclaimer.snap.ingredients.description' => 'Komplexe Gerichte mit vielen versteckten Zutaten können zu weniger genauen Schätzungen führen.',
			'disclaimer.snap.databaseLimitations.title' => 'Datenbankbeschränkungen',
			'disclaimer.snap.databaseLimitations.description' => 'Calorifys Lebensmitteldatenbank ist umfangreich, umfasst jedoch möglicherweise nicht jedes einzelne Lebensmittel oder jede Variation.',
			'disclaimer.weightEstimate.title' => 'Über Gewichtsprognose',
			'disclaimer.weightEstimate.description' => 'Die vorausgesagte Gewichtänderung ist eine theoretische Schätzung, die auf dem einfachen Kalorien-in-versus-Kalorien-aus-Modell basiert. Sie dient nur der motivationalen Orientierung, nicht als Vorhersage deines tatsächlichen Gewichts.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Kaloriengenauigkeit',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Diese Schätzung ist nur so genau wie deine getrackte Kalorienaufnahme und -ausgabe. Ungenaue Protokollierung führt zu einer ungenauen Prognose.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Biologische Faktoren',
			'disclaimer.weightEstimate.biologicalFactors.description' => 'Tatsächlicher Gewichtsverlust/-zunahme wird von Stoffwechsel, Hormonen, Schlaf, Stress, Hydration und anderen individuellen Faktoren beeinflusst, die Calorify nicht messen kann.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Wassergewicht & Schwankungen',
			'disclaimer.weightEstimate.waterWeight.description' => 'Das normale Tagesgewicht kann aufgrund von Wassereinlagerungen, Verdauung und Zeitpunkten erheblich schwanken. Die Schätzung berücksichtigt diese täglichen Veränderungen nicht.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Fachliche Anleitung',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Verwende diese Schätzung nicht, um medizinische Entscheidungen zu treffen. Konsultiere immer einen Gesundheitsexperten oder registrierten Ernährungsberater für individuelle Empfehlungen zur Gewichtsverwaltung.',
			'common.cancel' => 'Abbrechen',
			'common.save' => 'Speichern',
			'common.delete' => 'Löschen',
			'common.edit' => 'Bearbeiten',
			'common.close' => 'Schließen',
			'common.kContinue' => 'Fortfahren',
			'common.skip' => 'Überspringen',
			'common.error' => 'Fehler',
			'common.loading' => 'Lädt...',
			'common.notSet' => 'Nicht festgelegt',
			'common.today' => 'Heute',
			'common.yesterday' => 'Gestern',
			'errors.loadingProfileData' => 'Fehler beim Laden der Profildaten',
			'errors.generic' => 'Ein Fehler ist aufgetreten. Bitte versuche es erneut.',
			'debug.title' => 'Debug-Optionen',
			'debug.showActiveNotifications' => 'Aktive Benachrichtigungen anzeigen',
			'debug.scheduleTestNotification' => 'Testbenachrichtigung planen (10s)',
			'debug.triggerBreakfastNotification' => 'Frühstücksbenachrichtigung auslösen',
			'debug.cancelAllNotifications' => 'Alle Benachrichtigungen abbrechen',
			'debug.activeNotifications' => 'Aktive Benachrichtigungen',
			'debug.id' => 'ID: {id}',
			'debug.fetchLatestWeight' => 'Letztes Gewicht abrufen',
			'debug.fetchLatestHeight' => 'Letzte Größe abrufen',
			'debug.writeTestWeight' => 'Testgewicht schreiben (70kg)',
			'debug.writeTestHeight' => 'Testhöhe schreiben (175cm)',
			'debug.syncLast7Days' => 'Letzte 7 Tage synchronisieren',
			'debug.checkCurrentLocale' => 'Aktuelle Locale überprüfen',
			_ => null,
		};
	}
}
