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
	@override late final _TranslationsLocalNutritionPhase4De localNutritionPhase4 = _TranslationsLocalNutritionPhase4De._(_root);
	@override late final _TranslationsCommonDe common = _TranslationsCommonDe._(_root);
	@override late final _TranslationsFeedbackRatingDe feedbackRating = _TranslationsFeedbackRatingDe._(_root);
	@override late final _TranslationsHealthDe health = _TranslationsHealthDe._(_root);
}

// Path: errors
class _TranslationsErrorsDe extends TranslationsErrorsEn {
	_TranslationsErrorsDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsOnboardingDe extends TranslationsOnboardingEn {
	_TranslationsOnboardingDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Willkommen bei ${appLabel}';
	@override String get subtitle => 'Dein persönlicher Ernährungsbegleiter, unterstützt von AI';
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
class _TranslationsTabsDe extends TranslationsTabsEn {
	_TranslationsTabsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Übersicht';
	@override String get history => 'Verlauf';
}

// Path: home
class _TranslationsHomeDe extends TranslationsHomeEn {
	_TranslationsHomeDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsHistoryDe extends TranslationsHistoryEn {
	_TranslationsHistoryDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Keine Mahlzeiten erfasst';
	@override String get emptyMessage => 'Mach ein Foto deiner letzten Mahlzeit, um sie hier zu protokollieren.';
	@override String get today => 'Heute';
	@override String get yesterday => 'Gestern';
}

// Path: meal
class _TranslationsMealDe extends TranslationsMealEn {
	_TranslationsMealDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
	@override late final _TranslationsMealNutritionDe nutrition = _TranslationsMealNutritionDe._(_root);
	@override late final _TranslationsMealDeleteConfirmationDe deleteConfirmation = _TranslationsMealDeleteConfirmationDe._(_root);
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
	@override late final _TranslationsMealQuestionFlowDe questionFlow = _TranslationsMealQuestionFlowDe._(_root);
	@override late final _TranslationsMealAnalysisDe analysis = _TranslationsMealAnalysisDe._(_root);
	@override late final _TranslationsMealLocalInferenceDe localInference = _TranslationsMealLocalInferenceDe._(_root);
	@override late final _TranslationsMealFeedbackDe feedback = _TranslationsMealFeedbackDe._(_root);
}

// Path: favorites
class _TranslationsFavoritesDe extends TranslationsFavoritesEn {
	_TranslationsFavoritesDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
	@override late final _TranslationsFavoritesSortOptionsDe sortOptions = _TranslationsFavoritesSortOptionsDe._(_root);
}

// Path: profile
class _TranslationsProfileDe extends TranslationsProfileEn {
	_TranslationsProfileDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Keine Profildaten gefunden';
	@override String get yourProfile => 'Dein Profil';
	@override String get viewAndManage => 'Deine Gesundheitsinformationen anzeigen und verwalten';
	@override late final _TranslationsProfileSectionsDe sections = _TranslationsProfileSectionsDe._(_root);
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
	@override late final _TranslationsProfileCalculatedValuesDe calculatedValues = _TranslationsProfileCalculatedValuesDe._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreDe extends TranslationsHealthScoreEn {
	_TranslationsHealthScoreDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health-Score';
	@override String get whyThisScore => 'Warum diese Bewertung?';
	@override String get note => 'Diese Bewertung ist eine AI‑Schätzung basierend auf erkannten Zutaten und Nährstoffdichte. Ziehe für Ernährungsberatung stets eine Fachperson zu Rate.';
	@override String get unhealthy => 'Ungesund';
	@override String get healthy => 'Gesund';
	@override String get neutral => 'Neutral';
}

// Path: editProfile
class _TranslationsEditProfileDe extends TranslationsEditProfileEn {
	_TranslationsEditProfileDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil bearbeiten';
	@override late final _TranslationsEditProfileSectionsDe sections = _TranslationsEditProfileSectionsDe._(_root);
	@override String get gender => 'Geschlecht';
	@override String get dateOfBirth => 'Geburtsdatum';
	@override String get height => 'Größe';
	@override String get weight => 'Gewicht';
	@override String get weightGoal => 'Gewichtsziel';
	@override String get activityLevel => 'Aktivitätslevel';
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
class _TranslationsSettingsDe extends TranslationsSettingsEn {
	_TranslationsSettingsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Einstellungen';
	@override late final _TranslationsSettingsSectionsDe sections = _TranslationsSettingsSectionsDe._(_root);
	@override late final _TranslationsSettingsEditProfileDe editProfile = _TranslationsSettingsEditProfileDe._(_root);
	@override late final _TranslationsSettingsLanguageDe language = _TranslationsSettingsLanguageDe._(_root);
	@override late final _TranslationsSettingsHeightUnitDe heightUnit = _TranslationsSettingsHeightUnitDe._(_root);
	@override late final _TranslationsSettingsWeightUnitDe weightUnit = _TranslationsSettingsWeightUnitDe._(_root);
	@override late final _TranslationsSettingsMealRemindersDe mealReminders = _TranslationsSettingsMealRemindersDe._(_root);
	@override late final _TranslationsSettingsLocalInferenceDe localInference = _TranslationsSettingsLocalInferenceDe._(_root);
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
class _TranslationsRemindersDe extends TranslationsRemindersEn {
	_TranslationsRemindersDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
	@override String get snack => 'Snack';
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
class _TranslationsNotificationsDe extends TranslationsNotificationsEn {
	_TranslationsNotificationsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastDe breakfast = _TranslationsNotificationsBreakfastDe._(_root);
	@override late final _TranslationsNotificationsLunchDe lunch = _TranslationsNotificationsLunchDe._(_root);
	@override late final _TranslationsNotificationsDinnerDe dinner = _TranslationsNotificationsDinnerDe._(_root);
	@override late final _TranslationsNotificationsSnackDe snack = _TranslationsNotificationsSnackDe._(_root);
	@override late final _TranslationsNotificationsTestDe test = _TranslationsNotificationsTestDe._(_root);
}

// Path: login
class _TranslationsLoginDe extends TranslationsLoginEn {
	_TranslationsLoginDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anmelden';
	@override String get signInWithGoogle => 'Mit Google anmelden';
	@override String get signInFailed => 'Google-Anmeldung fehlgeschlagen oder abgebrochen.';
}

// Path: disclaimer
class _TranslationsDisclaimerDe extends TranslationsDisclaimerEn {
	_TranslationsDisclaimerDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Bitte beachten';
	@override late final _TranslationsDisclaimerSnapDe snap = _TranslationsDisclaimerSnapDe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateDe weightEstimate = _TranslationsDisclaimerWeightEstimateDe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDe healthMetrics = _TranslationsDisclaimerHealthMetricsDe._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureDe calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureDe._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4De extends TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4De._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

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
class _TranslationsCommonDe extends TranslationsCommonEn {
	_TranslationsCommonDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get close => 'Schließen';
	@override String get kContinue => 'Weiter';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingDe extends TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsHealthDe extends TranslationsHealthEn {
	_TranslationsHealthDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Synchronisierung mit Health Connect fehlgeschlagen';
	@override String get mealSynced => 'Mahlzeit mit Health Connect synchronisiert';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesDe extends TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionDe foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionDe._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisDe aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisDe._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationDe healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationDe._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderDe extends TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Was ist dein Geschlecht?';
	@override String get description => 'Dein Geschlecht hilft uns, deinen Ruheumsatz (BMR) genau zu berechnen.';
	@override String get next => 'Weiter';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightDe extends TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wie groß bist du?';
	@override String get description => 'Deine Körpergröße hilft uns, BMI und Energiebedarf genau zu berechnen.';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperial';
	@override String get next => 'Weiter';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightDe extends TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Wie viel wiegst du aktuell?';
	@override String get currentDescription => 'Dein aktuelles Gewicht ist wichtig, um deine täglichen Ziele zu personalisieren.';
	@override String get targetTitle => 'Welches Zielgewicht hast du?';
	@override String get targetDescription => 'Ein Zielgewicht hilft uns, deinen langfristigen Plan zu bestimmen.';
	@override String get metric => 'Metrisch';
	@override String get imperial => 'Imperial';
	@override String get next => 'Weiter';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeDe extends TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wann ist dein Geburtstag?';
	@override String get description => 'Dein Alter hilft uns, deinen Kalorienbedarf genau zu berechnen.';
	@override String get next => 'Weiter';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleDe extends TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsOnboardingWeightGoalDe extends TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Was ist dein Ziel?';
	@override String get description => 'Wähle das Ziel, das am besten beschreibt, was du erreichen möchtest';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelDe extends TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wie aktiv bist du?';
	@override String get description => 'Das hilft uns, deinen täglichen Kalorienbedarf genauer zu berechnen';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectDe extends TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mit Health Connect verbinden';
	@override String get description => 'Synchronisiere deine Gesundheitsdaten für bessere Einblicke und automatische Kalorienverfolgung';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingDe automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingDe._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsDe progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsDe._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationDe seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationDe._(_root);
	@override String get connected => 'Health Connect verbunden';
	@override String get notConnected => 'Health Connect nicht verbunden';
	@override String get setup => 'Health Connect einrichten';
	@override String get skipForNow => 'Später überspringen';
	@override String get statusConnected => 'Health Connect ist verbunden.';
	@override String get statusSuccess => 'Health Connect wurde erfolgreich verbunden!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Berechtigung verweigert. Bitte aktiviere die Health Connect-Berechtigungen in den Einstellungen deines Telefons für ${appLabel}.';
	@override String statusError({required Object error}) => 'Fehler bei der Einrichtung von Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementDe extends TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessDe trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessDe._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileDe healthProfile = _TranslationsOnboardingReinforcementHealthProfileDe._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleDe goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleDe._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryDe extends TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsHomeDailyGoalDe extends TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryDe extends TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsHomeIntakeProgressDe extends TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Heutige Makroaufteilung';
	@override String get target => 'Ziel';
	@override String get current => 'Aktuell';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryDe extends TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '7-Tage-Makroverlauf';
	@override String get trendTitle => 'Heutiger Trend';
	@override String peakHour({required Object hour}) => 'Höchstwert: ${hour}:00';
	@override String get noHistoryYet => 'Noch keine Daten';
	@override String get startLogging => 'Beginne, Mahlzeiten zu protokollieren, um deine\n7‑tägigen Makrotrends hier zu sehen';
}

// Path: home.mealLog
class _TranslationsHomeMealLogDe extends TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Protokollierte Mahlzeiten';
	@override String get emptyMessage => 'Mach ein Foto deiner letzten Mahlzeit, um sie hier zu protokollieren.';
	@override String get noMealsToday => 'Heute keine Mahlzeiten erfasst';
	@override String get seeAllMeals => 'Alle Mahlzeiten ansehen';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionDe extends TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Schnell hinzufügen mit AI';
	@override String get description => 'Beschreibe deine Mahlzeit und lass AI die Details übernehmen.';
	@override String get hint => 'z. B. Zum Frühstück hatte ich eine große Schale Haferflocken mit einer aufgeschnittenen Banane und einem Becher Whey ...';
	@override String get analyzeMeal => 'Mahlzeit analysieren';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsDe extends TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsHomeMealSnapDe extends TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsHomeConnectHealthDe extends TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mit Health Connect synchronisieren';
	@override String get description => 'Synchronisiere deine Ernährungsdaten mit Health Connect';
	@override String get install => 'Installieren';
	@override String get connect => 'Verbinden';
}

// Path: meal.nutrition
class _TranslationsMealNutritionDe extends TranslationsMealNutritionEn {
	_TranslationsMealNutritionDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Kalorien';
	@override String get carbs => 'Kohlenhydrate (g)';
	@override String get protein => 'Eiweiß (g)';
	@override String get fat => 'Fett (g)';
	@override String get fiber => 'Ballaststoffe (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationDe extends TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahlzeit löschen';
	@override String get message => 'Möchtest du diesen Eintrag wirklich löschen?';
	@override String get cancel => 'Abbrechen';
	@override String get delete => 'Löschen';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowDe extends TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Frage ${current} von ${total}';
	@override String get noQuestionsAvailable => 'Keine Fragen verfügbar';
	@override String get next => 'Weiter';
	@override String get continueLabel => 'Weiter';
}

// Path: meal.analysis
class _TranslationsMealAnalysisDe extends TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsMealLocalInferenceDe extends TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
	@override String get calculationDetails => 'Berechnungsgrundlagen';
	@override String get interpretationLocal => 'Zutaten auf diesem Gerät interpretiert';
	@override String get interpretationCloud => 'Zutaten in der Cloud interpretiert';
	@override String get interpretationManual => 'Zutaten von Ihnen geprüft oder bearbeitet';
	@override String get nutritionRemote => 'Nährwerte über Calorify von der USDA bezogen';
	@override String get nutritionFallback => 'Einige Nährwerte wurden remote geschätzt';
	@override String get calculationServer => 'Kalorien und Makros von Calorify berechnet';
	@override String get fallbackUsed => 'Lokale Analyse auf Cloud-Verarbeitung zurückgegriffen';
	@override String get noRawContent => 'Diagnosebelege enthalten weder Ihren Mahlzeitentext noch Ihr Foto.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackDe extends TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsFavoritesSortOptionsDe extends TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Neueste';
	@override String get calories => 'Kalorien';
	@override String get alphabetical => 'A–Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsDe extends TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'GRUNDINFORMATIONEN';
	@override String get goalsAndActivity => 'ZIELE & AKTIVITÄT';
	@override String get calculatedValues => 'BERECHNETE WERTE';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesDe extends TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Tagesziel';
	@override String get calPerDay => 'cal/Tag';
	@override String get notAvailable => 'k. A.';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsDe extends TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'PERSÖNLICHE DATEN';
	@override String get physicalMeasurements => 'KÖRPERMAßE';
	@override String get goalsAndActivity => 'ZIELE & AKTIVITÄT';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersDe extends TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get male => 'Männlich';
	@override String get female => 'Weiblich';
	@override String get other => 'Andere';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsDe extends TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightDe loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightDe._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightDe maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightDe._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightDe gainWeight = _TranslationsEditProfileWeightGoalsGainWeightDe._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsDe extends TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryDe sedentary = _TranslationsEditProfileActivityLevelsSedentaryDe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveDe lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveDe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveDe moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveDe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveDe veryActive = _TranslationsEditProfileActivityLevelsVeryActiveDe._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveDe extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveDe._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsDe extends TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOKALISIERUNG';
	@override String get notifications => 'BENACHRICHTIGUNGEN';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get localInference => 'ON-DEVICE-ANALYSE';
	@override String get supportAndLegal => 'SUPPORT & RECHTLICHES';
	@override String get about => 'ÜBER';
	@override String get dangerZone => 'RISIKOBEREICH';
	@override String get developer => 'ENTWICKLER';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileDe extends TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil bearbeiten';
	@override String get subtitle => 'Aktualisiere deine persönlichen Daten';
}

// Path: settings.language
class _TranslationsSettingsLanguageDe extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sprache';
	@override String get subtitle => 'Wähle deine bevorzugte Sprache';
	@override String get searchHint => 'Sprachen suchen...';
	@override String get noResults => 'Keine Ergebnisse gefunden';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitDe extends TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Längeneinheit';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitDe extends TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gewichtseinheit';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersDe extends TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahlzeit‑Erinnerungen';
	@override String get subtitle => 'Bleib mit rechtzeitigen Erinnerungen auf Kurs';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceDe extends TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsThemeDe extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Design';
	@override String get light => 'Hell';
	@override String get dark => 'Dunkel';
	@override String get system => 'System';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackDe extends TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsExportMealHistoryDe extends TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mahlzeitenverlauf exportieren';
	@override String get subtitle => 'Teile eine CSV deiner protokollierten Mahlzeiten';
	@override String get shareText => 'Dein Calorify‑Mahlzeitenexport';
	@override String failed({required Object error}) => 'Mahlzeitenverlauf konnte nicht exportiert werden: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataDe extends TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alle Daten löschen';
	@override String get subtitle => 'Alle deine Informationen unwiderruflich löschen';
	@override String get confirmationTitle => 'Alle Daten löschen?';
	@override String get confirmationMessage => 'Dieser Vorgang kann nicht rückgängig gemacht werden. Alle protokollierten Mahlzeiten, Favoriten und Profileinstellungen werden dauerhaft gelöscht.';
	@override String get cancel => 'Abbrechen';
	@override String get clearEverything => 'Alles löschen';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsDe extends TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Debug‑Optionen';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectDe extends TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Berechtigungen anzeigen und verwalten';
	@override late final _TranslationsSettingsHealthConnectUnavailableDe unavailable = _TranslationsSettingsHealthConnectUnavailableDe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsDe permissions = _TranslationsSettingsHealthConnectPermissionsDe._(_root);
	@override String get managePermissions => 'Berechtigungen verwalten';
	@override String get openSettings => 'Health Connect Einstellungen öffnen';
	@override String get requestPermissions => 'Berechtigungen anfordern';
	@override String get permissionRequestCancelledOrFailed => 'Die Berechtigungsanfrage wurde abgebrochen oder ist fehlgeschlagen. Bitte versuche es erneut oder erteile die Berechtigungen manuell in den Health Connect‑Einstellungen.';
	@override String get permissionRequestFailed => 'Berechtigungen konnten nicht angefragt werden. Bitte versuche es erneut oder erteile die Berechtigungen manuell in den Health Connect‑Einstellungen.';
	@override String get requestingPermissions => 'Anfrage läuft...';
}

// Path: settings.about
class _TranslationsSettingsAboutDe extends TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Über';
	@override String get tagline => 'Schnell, kostenlos und datenschutzorientiert: Kalorien-Bewusstsein';
	@override late final _TranslationsSettingsAboutOurStoryDe ourStory = _TranslationsSettingsAboutOurStoryDe._(_root);
	@override late final _TranslationsSettingsAboutPrivacyDe privacy = _TranslationsSettingsAboutPrivacyDe._(_root);
	@override late final _TranslationsSettingsAboutDeveloperDe developer = _TranslationsSettingsAboutDeveloperDe._(_root);
	@override late final _TranslationsSettingsAboutFeedbackDe feedback = _TranslationsSettingsAboutFeedbackDe._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoDe extends TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastDe extends TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Frühstückszeit! 🍳';
	@override String get body => 'Vergiss nicht, dein Frühstück zu erfassen';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchDe extends TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mittagszeit! 🥗';
	@override String get body => 'Zeit, dein Mittagessen zu protokollieren';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerDe extends TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Abendessen! 🍽️';
	@override String get body => 'Vergiss nicht, dein Abendessen zu erfassen';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackDe extends TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snack‑Zeit! 🍎';
	@override String get body => 'Zeit für einen gesunden Snack';
}

// Path: notifications.test
class _TranslationsNotificationsTestDe extends TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Test‑Benachrichtigung';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapDe extends TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} liefert geschätzte Nährwertangaben. Die Genauigkeit hängt von deinen Eingaben und Lebensmittelvarianten ab. Nutze die Angaben als Orientierung, nicht als endgültige Quelle. Konsultiere eine Fachperson für personalisierte Ernährungsberatung.';
	@override late final _TranslationsDisclaimerSnapPortionSizeDe portionSize = _TranslationsDisclaimerSnapPortionSizeDe._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsDe preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsDe._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsDe ingredients = _TranslationsDisclaimerSnapIngredientsDe._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsDe databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsDe._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateDe extends TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zur Gewichtsschätzung';
	@override String get description => 'Die prognostizierte Gewichtsveränderung ist eine theoretische Schätzung basierend auf dem einfachen Kalorien‑ein‑/Kalorien‑aus‑Modell. Sie dient nur zur Motivation und nicht als Vorhersage deines tatsächlichen Gewichts.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyDe calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyDe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsDe biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsDe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightDe waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightDe._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceDe professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceDe._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsDe extends TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get description => 'Diese Kennzahlen helfen dir, den Energiebedarf deines Körpers zu verstehen und deine Ernährungsziele zu steuern.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrDe bmr = _TranslationsDisclaimerHealthMetricsBmrDe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeDe tdee = _TranslationsDisclaimerHealthMetricsTdeeDe._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalDe dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalDe._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureDe extends TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Geschätzter Kalorienverbrauch';
	@override String get description => 'Wenn Health Connect-Daten nicht verfügbar sind, schätzen wir den heutigen Kalorienverbrauch anhand deines Ruheumsatzes (BMR) und Aktivitätsniveaus (TDEE), skaliert auf den bereits vergangenen Teil des Tages.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedDe howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedDe._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDe professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDe._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionDe extends TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intelligente Lebensmittelerkennung';
	@override String get description => 'Mach ein Foto und lass AI dein Gericht identifizieren';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisDe extends TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI-Analyse';
	@override String get description => 'Erhalte sofort Nährwertangaben aus deinen Beschreibungen';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationDe extends TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gesundheitsintegration';
	@override String get description => 'Verbinde dich mit Health Connect für bessere Einblicke';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesDe extends TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Untergewicht';
	@override String get healthyWeight => 'Gesundes Gewicht';
	@override String get overweight => 'Übergewicht';
	@override String get obese => 'Adipös';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesDe extends TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Wir helfen dir dabei, einen gesunden Plan zu erstellen, um ein ausgeglichenes Gewicht mit nährstoffreichen Mahlzeiten zu erreichen.';
	@override String get healthy => 'Gut gemacht! Du liegst im gesunden Bereich. Wir helfen dir, deine Vitalität und Energie zu erhalten.';
	@override String overweight({required Object appLabel}) => '${appLabel} macht deine Reise einfacher mit AI-gestütztem Tracking, damit du bequem dein Ziel erreichst.';
	@override String get obese => 'Wir unterstützen dich mit persönlicher Anleitung und nachhaltigen Strategien für deine Gesundheitsziele.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingDe extends TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Automatische Kalorienverfolgung';
	@override String get description => 'Erfasste verbrannte Kalorien aus deinen Fitness-Apps verfolgen';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsDe extends TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fortschritts-Einblicke';
	@override String get description => 'Erhalte detaillierte Einblicke in deine Gesundheitsentwicklungen';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationDe extends TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nahtlose Integration';
	@override String get description => 'Synchronisiere Daten aus deinen bevorzugten Gesundheits-Apps';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessDe extends TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsOnboardingReinforcementHealthProfileDe extends TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsOnboardingReinforcementGoalLifestyleDe extends TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
class _TranslationsEditProfileWeightGoalsLoseWeightDe extends TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Abnehmen';
	@override String get description => 'Erschaffe ein Kaloriendefizit zum Abnehmen';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightDe extends TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gewicht halten';
	@override String get description => 'Halte dein aktuelles Gewicht';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightDe extends TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Zunehmen';
	@override String get description => 'Erschaffe einen Kalorienüberschuss zum Zunehmen';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryDe extends TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Wenig aktiv';
	@override String get description => 'Kaum oder keine Bewegung';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveDe extends TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Leicht aktiv';
	@override String get description => 'Leichte Aktivität 1–3 Tage/Woche';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveDe extends TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderat aktiv';
	@override String get description => 'Mäßige Aktivität 3–5 Tage/Woche';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveDe extends TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sehr aktiv';
	@override String get description => 'Intensive Aktivität 6–7 Tage/Woche';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveDe extends TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrem aktiv';
	@override String get description => 'Sehr harte Aktivität oder körperlich anstrengender Beruf';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableDe extends TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect nicht verfügbar';
	@override String get description => 'Health Connect ist auf diesem Gerät nicht verfügbar. Bitte installiere Health Connect aus dem Play Store (Android 9+) oder aktualisiere auf Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsDe extends TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Berechtigungen';
	@override String get description => 'Die folgenden Berechtigungen werden angefragt, um Health Connect zu integrieren:';
	@override String get granted => 'Gewährt';
	@override String get notGranted => 'Nicht gewährt';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDe caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadDe nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadDe._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteDe nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteDe._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryDe extends TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unsere Geschichte';
	@override String content({required Object appLabel}) => '${appLabel} entstand aus einer einfachen Frustration: Die meisten Kalorienzähler sind entweder zu kompliziert, verlangen ständige manuelle Eingaben, verlangen hohe Abo‑Gebühren oder gefährden die Privatsphäre.\n\nAls Solo‑Entwickler wollte ich etwas Einfacheres und Gerechteres schaffen — eine App, die AI nutzt, um Aufwand zu reduzieren, schnell und kostenlos bleibt und deine Gesundheitsdaten respektvoll behandelt.\n\n${appLabel} ist die App, die ich mir gewünscht hätte: keine Konten, kein Tracking, keine Werbung — nur klare, praktische Einblicke und deine Gesundheitsziele.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyDe extends TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dein Datenschutz ist wichtig';
	@override String get description => 'Datenschutz ist kein Nebengedanke, sondern ein Designprinzip. Das bedeutet in der Praxis:';
	@override String get noAccounts => 'Keine Konten erforderlich\nApp sofort nutzen. Keine Registrierung, keine Identitäten.';
	@override String noTracking({required Object appLabel}) => 'Kein Verhaltens‑Tracking\n${appLabel} überwacht deine Aktivitäten nicht, erstellt keine Nutzungsprofile und verfolgt dich nicht über Apps oder Websites hinweg.';
	@override String noAds({required Object appLabel}) => 'Werbefrei aus Prinzip\n${appLabel} wurde so entwickelt, dass es ohne Werbung oder datengetriebene Monetarisierung funktioniert.';
	@override String get noDataSelling => 'Kein Verkauf von Daten\nDeine Gesundheitsdaten werden niemals an Dritte verkauft oder weitergegeben.';
	@override String get localStorage => 'Lokale Speicherung\nDeine Daten bleiben auf deinem Gerät.';
	@override String get privacyPolicy => 'Datenschutzerklärung';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperDe extends TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Von einem Solo‑Entwickler entwickelt';
	@override String description({required Object appLabel}) => '${appLabel} wird von einem einzelnen Entwickler gebaut und gepflegt, der sich auf ruhige, datenschutzfreundliche Gesundheitssoftware konzentriert.\n\nFeedback wird persönlich gelesen und beeinflusst die Richtung der App.';
	@override String get website => 'Website';
	@override String get email => 'E‑Mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackDe extends TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Gefällt dir ${appLabel}?';
	@override String description({required Object appLabel}) => 'Dein Feedback macht ${appLabel} für alle besser.';
	@override String get rateApp => 'Im Play Store bewerten';
	@override String get sendFeedback => 'Feedback senden';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeDe extends TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Portionsgröße';
	@override String get description => 'Die Genauigkeit der Schätzungen hängt stark von deiner korrekten Einschätzung der Portionsgröße ab.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsDe extends TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zubereitungsmethoden';
	@override String description({required Object appLabel}) => 'Zubereitungsarten können den Nährstoffgehalt erheblich verändern. Die Schätzungen von ${appLabel} berücksichtigen diese Variationen möglicherweise nicht vollständig.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsDe extends TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zutaten';
	@override String get description => 'Komplexe Gerichte mit vielen versteckten Zutaten können zu ungenaueren Schätzungen führen.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsDe extends TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Datenbankbegrenzungen';
	@override String description({required Object appLabel}) => 'Die Lebensmitteldatenbank von ${appLabel} ist umfangreich, enthält aber möglicherweise nicht jedes einzelne Lebensmittel oder jede Variante.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyDe extends TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Genauigkeit der Kalorien';
	@override String get description => 'Diese Schätzung ist nur so genau wie deine erfassten Kalorienzufuhr- und verbrauchsangaben. Ungenaue Einträge führen zu ungenauen Vorhersagen.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsDe extends TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Biologische Faktoren';
	@override String description({required Object appLabel}) => 'Gewichtsveränderungen werden von Stoffwechsel, Hormonen, Schlaf, Stress, Flüssigkeitshaushalt und anderen individuellen Faktoren beeinflusst, die ${appLabel} nicht messen kann.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightDe extends TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wassergewicht & Schwankungen';
	@override String get description => 'Das tägliche Gewicht kann durch Wassereinlagerungen, Verdauung und Zeitpunkt stark schwanken. Die Schätzung berücksichtigt diese täglichen Veränderungen nicht.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceDe extends TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionelle Beratung';
	@override String get description => 'Nutze diese Schätzung nicht für medizinische Entscheidungen. Konsultiere stets eine Fachperson oder eine registrierte Ernährungsberaterin/einen registrierten Ernährungsberater für persönliche Gewichtsmanagement‑Beratung.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrDe extends TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Der Ruheumsatz (BMR) ist die Menge an Kalorien, die dein Körper im Ruhezustand zur Aufrechterhaltung grundlegender Funktionen wie Atmung und Kreislauf verbrennt. Der BMR hängt von Alter, Geschlecht, Größe und Gewicht ab. Ein höherer BMR bedeutet, dass dein Körper im Ruhezustand mehr Kalorien verbrennt – oft bedingt durch mehr Muskelmasse, jüngeres Alter oder männliches Geschlecht. Ein niedrigerer BMR weist typischerweise auf weniger Muskelmasse, höheres Alter oder weibliches Geschlecht hin.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeDe extends TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Der gesamte tägliche Energieverbrauch (TDEE) ist die Gesamtmenge an Kalorien, die du pro Tag verbrennst, einschließlich BMR sowie Kalorien durch körperliche Aktivität und Alltagsbewegung. Der TDEE hängt von deinem BMR und deinem Aktivitätsniveau ab. Ein höherer TDEE bedeutet, dass du insgesamt mehr Kalorien verbrennst, meist durch mehr Aktivität oder einen höheren BMR. Ein niedrigerer TDEE deutet auf weniger tägliche Aktivität oder einen niedrigeren BMR hin.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalDe extends TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tagesziel';
	@override String get description => 'Das Tagesziel ist deine empfohlene tägliche Kalorienzufuhr basierend auf deinem TDEE und deinem Gewichtsziel. Beim Abnehmen konsumierst du weniger Kalorien als dein TDEE. Zur Gewichtserhaltung entspricht deine Aufnahme dem TDEE. Zum Zunehmen konsumierst du mehr Kalorien als dein TDEE. Das hilft dir, die gewünschte Gewichtsentwicklung in einem gesunden Tempo zu erreichen.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedDe extends TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wie die Schätzung berechnet wird';
	@override String get description => 'Wir berechnen deinen TDEE (auf Basis deines Profils) und multiplizieren ihn mit dem Anteil des bereits vergangenen Tages (Stunden + Minuten) / 24, um die bisher verbrannten Kalorien abzuschätzen.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDe extends TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Professionelle Beratung';
	@override String get description => 'Nutze diese Schätzung nicht für medizinische Entscheidungen. Konsultiere stets eine Fachperson oder eine registrierte Ernährungsberaterin/einen registrierten Ernährungsberater für persönliche Gewichtsmanagement‑Beratung.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDe extends TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gesamte verbrannte Kalorien lesen';
	@override String get description => 'Ermöglicht der App, deine insgesamt verbrannten Kalorien aus Health Connect zu lesen.';
	@override String get usage => 'Diese Berechtigung wird verwendet, um deinen täglichen Kalorienverbrauch in der App anzuzeigen und so deinen gesamten Energieverbrauch über den Tag zu verstehen.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadDe extends TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadDe._(TranslationsDe root) : this._root = root, super.internal(root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ernährungsdaten lesen';
	@override String get description => 'Ermöglicht der App, Ernährungsdaten aus Health Connect zu lesen.';
	@override String get usage => 'Diese Berechtigung erlaubt der App, Ernährungsinformationen zu lesen, die möglicherweise von anderen mit Health Connect verbundenen Apps protokolliert wurden, und bietet so eine umfassende Übersicht deiner Ernährung.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteDe extends TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteDe._(TranslationsDe root) : this._root = root, super.internal(root);

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
			'onboarding.height.imperial' => 'Imperial',
			'onboarding.height.next' => 'Weiter',
			'onboarding.weight.currentTitle' => 'Wie viel wiegst du aktuell?',
			'onboarding.weight.currentDescription' => 'Dein aktuelles Gewicht ist wichtig, um deine täglichen Ziele zu personalisieren.',
			'onboarding.weight.targetTitle' => 'Welches Zielgewicht hast du?',
			'onboarding.weight.targetDescription' => 'Ein Zielgewicht hilft uns, deinen langfristigen Plan zu bestimmen.',
			'onboarding.weight.metric' => 'Metrisch',
			'onboarding.weight.imperial' => 'Imperial',
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
			'onboarding.healthConnect.automaticTracking.title' => 'Automatische Kalorienverfolgung',
			'onboarding.healthConnect.automaticTracking.description' => 'Erfasste verbrannte Kalorien aus deinen Fitness-Apps verfolgen',
			'onboarding.healthConnect.progressInsights.title' => 'Fortschritts-Einblicke',
			'onboarding.healthConnect.progressInsights.description' => 'Erhalte detaillierte Einblicke in deine Gesundheitsentwicklungen',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Nahtlose Integration',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchronisiere Daten aus deinen bevorzugten Gesundheits-Apps',
			'onboarding.healthConnect.connected' => 'Health Connect verbunden',
			'onboarding.healthConnect.notConnected' => 'Health Connect nicht verbunden',
			'onboarding.healthConnect.setup' => 'Health Connect einrichten',
			'onboarding.healthConnect.skipForNow' => 'Später überspringen',
			'onboarding.healthConnect.statusConnected' => 'Health Connect ist verbunden.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect wurde erfolgreich verbunden!',
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
			'home.dailyGoal.kcal' => 'kcal',
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
			'meal.localInference.calculationDetails' => 'Berechnungsgrundlagen',
			'meal.localInference.interpretationLocal' => 'Zutaten auf diesem Gerät interpretiert',
			'meal.localInference.interpretationCloud' => 'Zutaten in der Cloud interpretiert',
			'meal.localInference.interpretationManual' => 'Zutaten von Ihnen geprüft oder bearbeitet',
			'meal.localInference.nutritionRemote' => 'Nährwerte über Calorify von der USDA bezogen',
			'meal.localInference.nutritionFallback' => 'Einige Nährwerte wurden remote geschätzt',
			'meal.localInference.calculationServer' => 'Kalorien und Makros von Calorify berechnet',
			'meal.localInference.fallbackUsed' => 'Lokale Analyse auf Cloud-Verarbeitung zurückgegriffen',
			'meal.localInference.noRawContent' => 'Diagnosebelege enthalten weder Ihren Mahlzeitentext noch Ihr Foto.',
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
			'healthScore.neutral' => 'Neutral',
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
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
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
			'settings.theme.system' => 'System',
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
			'settings.clearAllData.confirmationTitle' => 'Alle Daten löschen?',
			'settings.clearAllData.confirmationMessage' => 'Dieser Vorgang kann nicht rückgängig gemacht werden. Alle protokollierten Mahlzeiten, Favoriten und Profileinstellungen werden dauerhaft gelöscht.',
			'settings.clearAllData.cancel' => 'Abbrechen',
			'settings.clearAllData.clearEverything' => 'Alles löschen',
			'settings.debugOptions.title' => 'Debug‑Optionen',
			'settings.developerModeEnabled' => 'Entwicklermodus aktiviert!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Berechtigungen anzeigen und verwalten',
			'settings.healthConnect.unavailable.title' => 'Health Connect nicht verfügbar',
			'settings.healthConnect.unavailable.description' => 'Health Connect ist auf diesem Gerät nicht verfügbar. Bitte installiere Health Connect aus dem Play Store (Android 9+) oder aktualisiere auf Android 14+.',
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
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Werbefrei aus Prinzip\n${appLabel} wurde so entwickelt, dass es ohne Werbung oder datengetriebene Monetarisierung funktioniert.',
			'settings.about.privacy.noDataSelling' => 'Kein Verkauf von Daten\nDeine Gesundheitsdaten werden niemals an Dritte verkauft oder weitergegeben.',
			'settings.about.privacy.localStorage' => 'Lokale Speicherung\nDeine Daten bleiben auf deinem Gerät.',
			'settings.about.privacy.privacyPolicy' => 'Datenschutzerklärung',
			'settings.about.developer.title' => 'Von einem Solo‑Entwickler entwickelt',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} wird von einem einzelnen Entwickler gebaut und gepflegt, der sich auf ruhige, datenschutzfreundliche Gesundheitssoftware konzentriert.\n\nFeedback wird persönlich gelesen und beeinflusst die Richtung der App.',
			'settings.about.developer.website' => 'Website',
			'settings.about.developer.email' => 'E‑Mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Gefällt dir ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Dein Feedback macht ${appLabel} für alle besser.',
			'settings.about.feedback.rateApp' => 'Im Play Store bewerten',
			'settings.about.feedback.sendFeedback' => 'Feedback senden',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
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
			'reminders.snack' => 'Snack',
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
