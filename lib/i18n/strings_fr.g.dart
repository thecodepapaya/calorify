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
class TranslationsFr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsFr _root = this; // ignore: unused_field

	@override 
	TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Français';
	@override String get flag => '🇫🇷';
	@override late final _TranslationsOnboardingFr onboarding = _TranslationsOnboardingFr._(_root);
	@override late final _TranslationsTabsFr tabs = _TranslationsTabsFr._(_root);
	@override late final _TranslationsHomeFr home = _TranslationsHomeFr._(_root);
	@override late final _TranslationsHistoryFr history = _TranslationsHistoryFr._(_root);
	@override late final _TranslationsMealFr meal = _TranslationsMealFr._(_root);
	@override late final _TranslationsFavoritesFr favorites = _TranslationsFavoritesFr._(_root);
	@override late final _TranslationsProfileFr profile = _TranslationsProfileFr._(_root);
	@override late final _TranslationsEditProfileFr editProfile = _TranslationsEditProfileFr._(_root);
	@override late final _TranslationsSettingsFr settings = _TranslationsSettingsFr._(_root);
	@override late final _TranslationsRemindersFr reminders = _TranslationsRemindersFr._(_root);
	@override late final _TranslationsNotificationsFr notifications = _TranslationsNotificationsFr._(_root);
	@override late final _TranslationsLoginFr login = _TranslationsLoginFr._(_root);
	@override late final _TranslationsDisclaimerFr disclaimer = _TranslationsDisclaimerFr._(_root);
	@override late final _TranslationsCommonFr common = _TranslationsCommonFr._(_root);
	@override late final _TranslationsErrorsFr errors = _TranslationsErrorsFr._(_root);
	@override late final _TranslationsDebugFr debug = _TranslationsDebugFr._(_root);
}

// Path: onboarding
class _TranslationsOnboardingFr implements TranslationsOnboardingEn {
	_TranslationsOnboardingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Bienvenue sur Calorify';
	@override String get subtitle => 'Votre compagnon personnel en nutrition propulsé par l\'IA';
	@override String get getStarted => 'Commencer';
	@override late final _TranslationsOnboardingFeaturesFr features = _TranslationsOnboardingFeaturesFr._(_root);
}

// Path: tabs
class _TranslationsTabsFr implements TranslationsTabsEn {
	_TranslationsTabsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Tableau de bord';
	@override String get history => 'Historique';
}

// Path: home
class _TranslationsHomeFr implements TranslationsHomeEn {
	_TranslationsHomeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeDailyGoalFr dailyGoal = _TranslationsHomeDailyGoalFr._(_root);
	@override late final _TranslationsHomeDailySummaryFr dailySummary = _TranslationsHomeDailySummaryFr._(_root);
	@override late final _TranslationsHomeIntakeProgressFr intakeProgress = _TranslationsHomeIntakeProgressFr._(_root);
	@override late final _TranslationsHomeMealLogFr mealLog = _TranslationsHomeMealLogFr._(_root);
	@override late final _TranslationsHomeMealDescriptionFr mealDescription = _TranslationsHomeMealDescriptionFr._(_root);
	@override late final _TranslationsHomeFavoriteMealsFr favoriteMeals = _TranslationsHomeFavoriteMealsFr._(_root);
	@override late final _TranslationsHomeMealSnapFr mealSnap = _TranslationsHomeMealSnapFr._(_root);
	@override late final _TranslationsHomeConnectHealthFr connectHealth = _TranslationsHomeConnectHealthFr._(_root);
}

// Path: history
class _TranslationsHistoryFr implements TranslationsHistoryEn {
	_TranslationsHistoryFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Historique';
	@override String get noMeals => 'Aucun repas enregistré';
	@override String get emptyMessage => 'Prenez une photo de votre dernier repas pour l\'enregistrer ici.';
	@override String get today => 'Aujourd\'hui';
	@override String get yesterday => 'Hier';
}

// Path: meal
class _TranslationsMealFr implements TranslationsMealEn {
	_TranslationsMealFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Oh non !';
	@override String get delete => 'Supprimer';
	@override String get editMeal => 'Modifier le Repas';
	@override String get saveMeal => 'Enregistrer le Repas';
	@override late final _TranslationsMealDeleteConfirmationFr deleteConfirmation = _TranslationsMealDeleteConfirmationFr._(_root);
	@override String get addedToLog => 'Repas ajouté à votre journal !';
	@override String get couldNotAdd => 'Impossible d\'ajouter le repas : {error}';
	@override String get removedFromFavorites => 'Retiré des favoris !';
	@override String get savedAsFavorite => 'Repas enregistré comme favori !';
	@override String get couldNotUpdateFavorite => 'Impossible de mettre à jour le favori : {error}';
	@override String get failedToProcess => 'Échec du traitement : {error}';
	@override String get failedToProcessImage => 'Échec du traitement de l\'image : {error}';
	@override String get errorCompressingImage => 'Erreur de compression de l\'image : {error}';
}

// Path: favorites
class _TranslationsFavoritesFr implements TranslationsFavoritesEn {
	_TranslationsFavoritesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoris';
	@override String get empty => 'Aucun repas préféré pour le moment.';
}

// Path: profile
class _TranslationsProfileFr implements TranslationsProfileEn {
	_TranslationsProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get editProfile => 'Modifier le Profil';
	@override String get noProfileData => 'Aucune donnée de profil trouvée';
	@override String get yourProfile => 'Votre Profil';
	@override String get viewAndManage => 'Voir et gérer vos informations de santé';
	@override late final _TranslationsProfileSectionsFr sections = _TranslationsProfileSectionsFr._(_root);
	@override String get gender => 'Genre';
	@override String get height => 'Taille';
	@override String get weight => 'Poids';
	@override String get age => 'Âge';
	@override String get weightGoal => 'Objectif de Poids';
	@override String get activityLevel => 'Niveau d\'Activité';
	@override String get healthMetrics => 'Métriques de Santé';
	@override String get notSet => 'Non défini';
	@override String get years => 'ans';
	@override String get updatedSuccessfully => 'Profil mis à jour avec succès !';
}

// Path: editProfile
class _TranslationsEditProfileFr implements TranslationsEditProfileEn {
	_TranslationsEditProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifier le Profil';
	@override late final _TranslationsEditProfileSectionsFr sections = _TranslationsEditProfileSectionsFr._(_root);
	@override String get gender => 'Genre';
	@override String get dateOfBirth => 'Date de Naissance';
	@override String get height => 'Taille';
	@override String get weight => 'Poids';
	@override String get weightGoal => 'Objectif de Poids';
	@override String get activityLevel => 'Niveau d\'Activité';
	@override String get metric => 'Métrique';
	@override String get imperial => 'Impérial';
	@override String get metricCm => 'Métrique (cm)';
	@override String get imperialFtIn => 'Impérial (ft/in)';
	@override String get metricKg => 'Métrique (kg)';
	@override String get imperialLbs => 'Impérial (lbs)';
}

// Path: settings
class _TranslationsSettingsFr implements TranslationsSettingsEn {
	_TranslationsSettingsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paramètres';
	@override late final _TranslationsSettingsSectionsFr sections = _TranslationsSettingsSectionsFr._(_root);
	@override late final _TranslationsSettingsEditProfileFr editProfile = _TranslationsSettingsEditProfileFr._(_root);
	@override late final _TranslationsSettingsLanguageFr language = _TranslationsSettingsLanguageFr._(_root);
	@override late final _TranslationsSettingsHeightUnitFr heightUnit = _TranslationsSettingsHeightUnitFr._(_root);
	@override late final _TranslationsSettingsWeightUnitFr weightUnit = _TranslationsSettingsWeightUnitFr._(_root);
	@override late final _TranslationsSettingsMealRemindersFr mealReminders = _TranslationsSettingsMealRemindersFr._(_root);
	@override late final _TranslationsSettingsSendFeedbackFr sendFeedback = _TranslationsSettingsSendFeedbackFr._(_root);
	@override late final _TranslationsSettingsClearAllDataFr clearAllData = _TranslationsSettingsClearAllDataFr._(_root);
	@override late final _TranslationsSettingsDebugOptionsFr debugOptions = _TranslationsSettingsDebugOptionsFr._(_root);
	@override String get developerModeEnabled => 'Mode développeur activé !';
}

// Path: reminders
class _TranslationsRemindersFr implements TranslationsRemindersEn {
	_TranslationsRemindersFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Restez sur la bonne voie avec des rappels';
	@override String get description => 'Recevez des rappels doux pour enregistrer vos repas et rester constant avec vos objectifs nutritionnels';
	@override String get notificationsEnabled => 'Notifications Activées';
	@override String get notificationsDisabled => 'Notifications Désactivées';
	@override String get enabledSubtitle => 'Vous recevrez des rappels de repas';
	@override String get disabledSubtitle => 'Activez les notifications pour recevoir des rappels de repas';
	@override String get mealReminders => 'Rappels de Repas';
	@override String get breakfast => 'Petit-Déjeuner';
	@override String get lunch => 'Déjeuner';
	@override String get dinner => 'Dîner';
	@override String get snack => 'Collation';
	@override String get change => 'Changer';
	@override String get enableNotifications => 'Activer les Notifications';
	@override String get skipForNow => 'Ignorer pour le moment';
	@override String get saveChanges => 'Enregistrer les Modifications';
	@override String get continue_ => 'Continuer';
	@override String get enabledSuccessfully => 'Notifications activées avec succès !';
	@override String get permissionDenied => 'Autorisation de notification refusée';
	@override String get errorEnabling => 'Erreur lors de l\'activation des notifications : {error}';
	@override String get errorCompletingSetup => 'Erreur lors de la finalisation de la configuration : {error}';
}

// Path: notifications
class _TranslationsNotificationsFr implements TranslationsNotificationsEn {
	_TranslationsNotificationsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastFr breakfast = _TranslationsNotificationsBreakfastFr._(_root);
	@override late final _TranslationsNotificationsLunchFr lunch = _TranslationsNotificationsLunchFr._(_root);
	@override late final _TranslationsNotificationsDinnerFr dinner = _TranslationsNotificationsDinnerFr._(_root);
	@override late final _TranslationsNotificationsSnackFr snack = _TranslationsNotificationsSnackFr._(_root);
	@override late final _TranslationsNotificationsTestFr test = _TranslationsNotificationsTestFr._(_root);
}

// Path: login
class _TranslationsLoginFr implements TranslationsLoginEn {
	_TranslationsLoginFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Connexion';
	@override String get signInWithGoogle => 'Se connecter avec Google';
	@override String get signInFailed => 'La connexion Google a échoué ou a été annulée.';
}

// Path: disclaimer
class _TranslationsDisclaimerFr implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Veuillez Noter';
	@override late final _TranslationsDisclaimerSnapFr snap = _TranslationsDisclaimerSnapFr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateFr weightEstimate = _TranslationsDisclaimerWeightEstimateFr._(_root);
}

// Path: common
class _TranslationsCommonFr implements TranslationsCommonEn {
	_TranslationsCommonFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get cancel => 'Annuler';
	@override String get save => 'Enregistrer';
	@override String get delete => 'Supprimer';
	@override String get edit => 'Modifier';
	@override String get close => 'Fermer';
	@override String get kContinue => 'Continuer';
	@override String get skip => 'Ignorer';
	@override String get error => 'Erreur';
	@override String get loading => 'Chargement...';
	@override String get notSet => 'Non défini';
	@override String get today => 'Aujourd\'hui';
	@override String get yesterday => 'Hier';
}

// Path: errors
class _TranslationsErrorsFr implements TranslationsErrorsEn {
	_TranslationsErrorsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Erreur de chargement des données du profil';
	@override String get generic => 'Une erreur s\'est produite. Veuillez réessayer.';
}

// Path: debug
class _TranslationsDebugFr implements TranslationsDebugEn {
	_TranslationsDebugFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Options de Débogage';
	@override String get showActiveNotifications => 'Afficher les Notifications Actives';
	@override String get scheduleTestNotification => 'Planifier une Notification de Test (10s)';
	@override String get triggerBreakfastNotification => 'Déclencher la Notification du Petit-Déjeuner';
	@override String get cancelAllNotifications => 'Annuler Toutes les Notifications';
	@override String get activeNotifications => 'Notifications Actives';
	@override String get id => 'ID : {id}';
	@override String get fetchLatestWeight => 'Récupérer le Dernier Poids';
	@override String get fetchLatestHeight => 'Récupérer la Dernière Taille';
	@override String get writeTestWeight => 'Écrire le Poids de Test (70kg)';
	@override String get writeTestHeight => 'Écrire la Taille de Test (175cm)';
	@override String get syncLast7Days => 'Synchroniser les 7 Derniers Jours';
	@override String get checkCurrentLocale => 'Vérifier la Locale Actuelle';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesFr implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionFr foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionFr._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisFr aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisFr._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationFr healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationFr._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalFr implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Définir Votre Objectif Journalier';
	@override String get titleSet => 'Votre Objectif Journalier';
	@override String get description => 'Prêt à commencer votre parcours de bien-être ? Définissez votre objectif calorique quotidien ci-dessous pour commencer vos progrès.';
	@override String get descriptionSet => 'Votre boussole est réglée ! Voici votre objectif calorique quotidien pour vous guider.';
	@override String get yourGoal => 'Votre Objectif';
	@override String get dailyCalories => 'Calories quotidiennes (kcal)';
	@override String get setGoal => 'Définir l\'Objectif';
	@override String get intake => 'Apport';
	@override String get burned => 'Brûlé';
	@override String get weightImpact => 'Impact sur le Poids';
	@override String get estLoss => 'Perte estimée de';
	@override String get estGain => 'Gain estimé de';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryFr implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Résumé Quotidien';
	@override String get calories => 'Calories';
	@override String get carbs => 'Glucides';
	@override String get protein => 'Protéines';
	@override String get fat => 'Graisses';
	@override String get fiber => 'Fibres';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressFr implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Répartition des Macros d\'Aujourd\'hui';
	@override String get target => 'Objectif';
	@override String get current => 'Actuel';
}

// Path: home.mealLog
class _TranslationsHomeMealLogFr implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Repas Enregistrés';
	@override String get emptyMessage => 'Prenez une photo de votre dernier repas pour l\'enregistrer ici.';
	@override String get noMealsToday => 'Aucun repas enregistré pour aujourd\'hui';
	@override String get seeAllMeals => 'Voir tous les repas';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionFr implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ajout Rapide avec l\'IA';
	@override String get description => 'Décrivez votre repas, et laissez l\'IA s\'occuper des détails.';
	@override String get hint => 'ex. Pour le petit-déjeuner, j\'ai eu un grand bol de flocons d\'avoine avec une banane tranchée et une mesure de whey ...';
	@override String get analyzeMeal => 'Analyser le repas';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsFr implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Repas Préférés';
	@override String get description => 'Ajoutez rapidement l\'un de vos repas préférés.';
	@override String get noFavorites => 'Aucun repas préféré pour le moment.';
	@override String get addFavoriteHint => 'Cliquez sur l\'étoile d\'un repas pour le marquer comme préféré.';
	@override String get seeAll => 'Voir tout';
	@override String get add => 'Ajouter';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapFr implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Prenez en Photo & Suivez Votre Repas';
	@override String get description => 'Utilisez votre appareil photo pour prendre une photo de votre nourriture pour analyse par l\'IA.';
	@override String get openCamera => 'Ouvrir l\'Appareil Photo';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthFr implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synchroniser avec Health Connect';
	@override String get description => 'Synchronisez vos données nutritionnelles avec Health Connect';
	@override String get install => 'Installer';
	@override String get connect => 'Connecter';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationFr implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supprimer le Repas';
	@override String get message => 'Êtes-vous sûr de vouloir supprimer cette entrée de repas ?';
	@override String get cancel => 'Annuler';
	@override String get delete => 'Supprimer';
}

// Path: profile.sections
class _TranslationsProfileSectionsFr implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'INFORMATIONS DE BASE';
	@override String get goalsAndActivity => 'OBJECTIFS & ACTIVITÉ';
	@override String get calculatedValues => 'VALEURS CALCULÉES';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsFr implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMATIONS PERSONNELLES';
	@override String get physicalMeasurements => 'MESURES PHYSIQUES';
	@override String get goalsAndActivity => 'OBJECTIFS & ACTIVITÉ';
}

// Path: settings.sections
class _TranslationsSettingsSectionsFr implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOCALISATION';
	@override String get notifications => 'NOTIFICATIONS';
	@override String get supportAndLegal => 'ASSISTANCE & JURIDIQUE';
	@override String get dangerZone => 'ZONE DANGEREUSE';
	@override String get developer => 'DÉVELOPPEUR';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileFr implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifier le Profil';
	@override String get subtitle => 'Mettez à jour vos informations personnelles';
}

// Path: settings.language
class _TranslationsSettingsLanguageFr implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Langue';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitFr implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unité de Taille';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitFr implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unité de Poids';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersFr implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rappels de Repas';
	@override String get subtitle => 'Restez sur la bonne voie avec des alertes temporisées';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackFr implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Envoyer un Retour';
	@override String get subtitle => 'Aidez-nous à améliorer Calorify';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataFr implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Effacer Toutes les Données';
	@override String get subtitle => 'Supprimez irréversiblement toutes vos informations';
	@override String get confirmationTitle => 'Effacer Toutes les Données ?';
	@override String get confirmationMessage => 'Cette action ne peut pas être annulée. Tous vos repas enregistrés, favoris et paramètres de profil seront définitivement supprimés.';
	@override String get cancel => 'Annuler';
	@override String get clearEverything => 'Tout Effacer';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsFr implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Options de Débogage';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastFr implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C\'est l\'heure du Petit-Déjeuner ! 🍳';
	@override String get body => 'N\'oubliez pas d\'enregistrer votre petit-déjeuner';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchFr implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C\'est l\'heure du Déjeuner ! 🥗';
	@override String get body => 'Il est temps d\'enregistrer votre déjeuner';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerFr implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C\'est l\'heure du Dîner ! 🍽️';
	@override String get body => 'N\'oubliez pas d\'enregistrer votre dîner';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackFr implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C\'est l\'heure de la Collation ! 🍎';
	@override String get body => 'Il est temps pour une collation saine';
}

// Path: notifications.test
class _TranslationsNotificationsTestFr implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notification de Test';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapFr implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get description => 'Calorify fournit des informations nutritionnelles estimées. L\'exactitude dépend de vos entrées et des variations alimentaires. Utilisez-le comme un guide, pas comme une source définitive. Consultez un professionnel pour des conseils diététiques personnalisés.';
	@override late final _TranslationsDisclaimerSnapPortionSizeFr portionSize = _TranslationsDisclaimerSnapPortionSizeFr._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsFr preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsFr._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsFr ingredients = _TranslationsDisclaimerSnapIngredientsFr._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsFr databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsFr._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateFr implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'À Propos de l\'Estimation de Poids';
	@override String get description => 'Le changement de poids projeté est une estimation théorique basée sur le simple modèle calorie-in vs. calorie-out. Il est destiné uniquement à des fins de motivation, pas comme une prédiction de votre poids réel.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyFr calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyFr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsFr biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsFr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightFr waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightFr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceFr professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceFr._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionFr implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reconnaissance Alimentaire Intelligente';
	@override String get description => 'Prenez une photo et laissez l\'IA identifier votre repas';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisFr implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyse par IA';
	@override String get description => 'Obtenez des informations nutritionnelles instantanées à partir de vos descriptions';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationFr implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intégration Santé';
	@override String get description => 'Connectez-vous à Health Connect pour de meilleurs aperçus';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeFr implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Taille de Portion';
	@override String get description => 'L\'exactitude des estimations repose beaucoup sur votre évaluation correcte de la taille de la portion.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsFr implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Méthodes de Préparation';
	@override String get description => 'Les méthodes de cuisson peuvent modifier de manière significative le contenu nutritionnel des aliments. Les estimations de Calorify peuvent ne pas toujours tenir compte de ces variations.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsFr implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingrédients';
	@override String get description => 'Les plats complexes avec de nombreux ingrédients cachés peuvent conduire à des estimations moins précises.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsFr implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitations de la Base de Données';
	@override String get description => 'La base de données alimentaire de Calorify est vaste mais peut ne pas inclure chaque aliment ou variation.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyFr implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Précision des Calories';
	@override String get description => 'Cette estimation n\'est aussi précise que votre suivi des apports et des dépenses caloriques. Un enregistrement imprécis résultera en une projection inexacte.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsFr implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Facteurs Biologiques';
	@override String get description => 'La perte/gain de poids réelle est influencée par le métabolisme, les hormones, le sommeil, le stress, l\'hydratation et d\'autres facteurs individuels que Calorify ne peut pas mesurer.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightFr implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Poids de l\'Eau & Fluctuations';
	@override String get description => 'Le poids quotidien normal peut fluctuer considérablement en raison de la rétention d\'eau, de la digestion et du timing. L\'estimation ne tient pas compte de ces changements quotidiens.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceFr implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conseils Professionnels';
	@override String get description => 'Ne pas utiliser cette estimation pour prendre des décisions médicales. Consultez toujours un professionnel de la santé ou un diététicien agréé pour des conseils personnalisés sur la gestion du poids.';
}

/// The flat map containing all translations for locale <fr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Français',
			'flag' => '🇫🇷',
			'onboarding.welcome' => 'Bienvenue sur Calorify',
			'onboarding.subtitle' => 'Votre compagnon personnel en nutrition propulsé par l\'IA',
			'onboarding.getStarted' => 'Commencer',
			'onboarding.features.foodRecognition.title' => 'Reconnaissance Alimentaire Intelligente',
			'onboarding.features.foodRecognition.description' => 'Prenez une photo et laissez l\'IA identifier votre repas',
			'onboarding.features.aiAnalysis.title' => 'Analyse par IA',
			'onboarding.features.aiAnalysis.description' => 'Obtenez des informations nutritionnelles instantanées à partir de vos descriptions',
			'onboarding.features.healthIntegration.title' => 'Intégration Santé',
			'onboarding.features.healthIntegration.description' => 'Connectez-vous à Health Connect pour de meilleurs aperçus',
			'tabs.dashboard' => 'Tableau de bord',
			'tabs.history' => 'Historique',
			'home.dailyGoal.title' => 'Définir Votre Objectif Journalier',
			'home.dailyGoal.titleSet' => 'Votre Objectif Journalier',
			'home.dailyGoal.description' => 'Prêt à commencer votre parcours de bien-être ? Définissez votre objectif calorique quotidien ci-dessous pour commencer vos progrès.',
			'home.dailyGoal.descriptionSet' => 'Votre boussole est réglée ! Voici votre objectif calorique quotidien pour vous guider.',
			'home.dailyGoal.yourGoal' => 'Votre Objectif',
			'home.dailyGoal.dailyCalories' => 'Calories quotidiennes (kcal)',
			'home.dailyGoal.setGoal' => 'Définir l\'Objectif',
			'home.dailyGoal.intake' => 'Apport',
			'home.dailyGoal.burned' => 'Brûlé',
			'home.dailyGoal.weightImpact' => 'Impact sur le Poids',
			'home.dailyGoal.estLoss' => 'Perte estimée de',
			'home.dailyGoal.estGain' => 'Gain estimé de',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Résumé Quotidien',
			'home.dailySummary.calories' => 'Calories',
			'home.dailySummary.carbs' => 'Glucides',
			'home.dailySummary.protein' => 'Protéines',
			'home.dailySummary.fat' => 'Graisses',
			'home.dailySummary.fiber' => 'Fibres',
			'home.intakeProgress.title' => 'Répartition des Macros d\'Aujourd\'hui',
			'home.intakeProgress.target' => 'Objectif',
			'home.intakeProgress.current' => 'Actuel',
			'home.mealLog.title' => 'Repas Enregistrés',
			'home.mealLog.emptyMessage' => 'Prenez une photo de votre dernier repas pour l\'enregistrer ici.',
			'home.mealLog.noMealsToday' => 'Aucun repas enregistré pour aujourd\'hui',
			'home.mealLog.seeAllMeals' => 'Voir tous les repas',
			'home.mealDescription.title' => 'Ajout Rapide avec l\'IA',
			'home.mealDescription.description' => 'Décrivez votre repas, et laissez l\'IA s\'occuper des détails.',
			'home.mealDescription.hint' => 'ex. Pour le petit-déjeuner, j\'ai eu un grand bol de flocons d\'avoine avec une banane tranchée et une mesure de whey ...',
			'home.mealDescription.analyzeMeal' => 'Analyser le repas',
			'home.favoriteMeals.title' => 'Repas Préférés',
			'home.favoriteMeals.description' => 'Ajoutez rapidement l\'un de vos repas préférés.',
			'home.favoriteMeals.noFavorites' => 'Aucun repas préféré pour le moment.',
			'home.favoriteMeals.addFavoriteHint' => 'Cliquez sur l\'étoile d\'un repas pour le marquer comme préféré.',
			'home.favoriteMeals.seeAll' => 'Voir tout',
			'home.favoriteMeals.add' => 'Ajouter',
			'home.mealSnap.title' => 'Prenez en Photo & Suivez Votre Repas',
			'home.mealSnap.description' => 'Utilisez votre appareil photo pour prendre une photo de votre nourriture pour analyse par l\'IA.',
			'home.mealSnap.openCamera' => 'Ouvrir l\'Appareil Photo',
			'home.connectHealth.title' => 'Synchroniser avec Health Connect',
			'home.connectHealth.description' => 'Synchronisez vos données nutritionnelles avec Health Connect',
			'home.connectHealth.install' => 'Installer',
			'home.connectHealth.connect' => 'Connecter',
			'history.title' => 'Historique',
			'history.noMeals' => 'Aucun repas enregistré',
			'history.emptyMessage' => 'Prenez une photo de votre dernier repas pour l\'enregistrer ici.',
			'history.today' => 'Aujourd\'hui',
			'history.yesterday' => 'Hier',
			'meal.ohNo' => 'Oh non !',
			'meal.delete' => 'Supprimer',
			'meal.editMeal' => 'Modifier le Repas',
			'meal.saveMeal' => 'Enregistrer le Repas',
			'meal.deleteConfirmation.title' => 'Supprimer le Repas',
			'meal.deleteConfirmation.message' => 'Êtes-vous sûr de vouloir supprimer cette entrée de repas ?',
			'meal.deleteConfirmation.cancel' => 'Annuler',
			'meal.deleteConfirmation.delete' => 'Supprimer',
			'meal.addedToLog' => 'Repas ajouté à votre journal !',
			'meal.couldNotAdd' => 'Impossible d\'ajouter le repas : {error}',
			'meal.removedFromFavorites' => 'Retiré des favoris !',
			'meal.savedAsFavorite' => 'Repas enregistré comme favori !',
			'meal.couldNotUpdateFavorite' => 'Impossible de mettre à jour le favori : {error}',
			'meal.failedToProcess' => 'Échec du traitement : {error}',
			'meal.failedToProcessImage' => 'Échec du traitement de l\'image : {error}',
			'meal.errorCompressingImage' => 'Erreur de compression de l\'image : {error}',
			'favorites.title' => 'Favoris',
			'favorites.empty' => 'Aucun repas préféré pour le moment.',
			'profile.title' => 'Profil',
			'profile.editProfile' => 'Modifier le Profil',
			'profile.noProfileData' => 'Aucune donnée de profil trouvée',
			'profile.yourProfile' => 'Votre Profil',
			'profile.viewAndManage' => 'Voir et gérer vos informations de santé',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'INFORMATIONS DE BASE',
			'profile.sections.goalsAndActivity' => 'OBJECTIFS & ACTIVITÉ',
			'profile.sections.calculatedValues' => 'VALEURS CALCULÉES',
			'profile.gender' => 'Genre',
			'profile.height' => 'Taille',
			'profile.weight' => 'Poids',
			'profile.age' => 'Âge',
			'profile.weightGoal' => 'Objectif de Poids',
			'profile.activityLevel' => 'Niveau d\'Activité',
			'profile.healthMetrics' => 'Métriques de Santé',
			'profile.notSet' => 'Non défini',
			'profile.years' => 'ans',
			'profile.updatedSuccessfully' => 'Profil mis à jour avec succès !',
			'editProfile.title' => 'Modifier le Profil',
			'editProfile.sections.personalInformation' => 'INFORMATIONS PERSONNELLES',
			'editProfile.sections.physicalMeasurements' => 'MESURES PHYSIQUES',
			'editProfile.sections.goalsAndActivity' => 'OBJECTIFS & ACTIVITÉ',
			'editProfile.gender' => 'Genre',
			'editProfile.dateOfBirth' => 'Date de Naissance',
			'editProfile.height' => 'Taille',
			'editProfile.weight' => 'Poids',
			'editProfile.weightGoal' => 'Objectif de Poids',
			'editProfile.activityLevel' => 'Niveau d\'Activité',
			'editProfile.metric' => 'Métrique',
			'editProfile.imperial' => 'Impérial',
			'editProfile.metricCm' => 'Métrique (cm)',
			'editProfile.imperialFtIn' => 'Impérial (ft/in)',
			'editProfile.metricKg' => 'Métrique (kg)',
			'editProfile.imperialLbs' => 'Impérial (lbs)',
			'settings.title' => 'Paramètres',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOCALISATION',
			'settings.sections.notifications' => 'NOTIFICATIONS',
			'settings.sections.supportAndLegal' => 'ASSISTANCE & JURIDIQUE',
			'settings.sections.dangerZone' => 'ZONE DANGEREUSE',
			'settings.sections.developer' => 'DÉVELOPPEUR',
			'settings.editProfile.title' => 'Modifier le Profil',
			'settings.editProfile.subtitle' => 'Mettez à jour vos informations personnelles',
			'settings.language.title' => 'Langue',
			'settings.heightUnit.title' => 'Unité de Taille',
			'settings.weightUnit.title' => 'Unité de Poids',
			'settings.mealReminders.title' => 'Rappels de Repas',
			'settings.mealReminders.subtitle' => 'Restez sur la bonne voie avec des alertes temporisées',
			'settings.sendFeedback.title' => 'Envoyer un Retour',
			'settings.sendFeedback.subtitle' => 'Aidez-nous à améliorer Calorify',
			'settings.clearAllData.title' => 'Effacer Toutes les Données',
			'settings.clearAllData.subtitle' => 'Supprimez irréversiblement toutes vos informations',
			'settings.clearAllData.confirmationTitle' => 'Effacer Toutes les Données ?',
			'settings.clearAllData.confirmationMessage' => 'Cette action ne peut pas être annulée. Tous vos repas enregistrés, favoris et paramètres de profil seront définitivement supprimés.',
			'settings.clearAllData.cancel' => 'Annuler',
			'settings.clearAllData.clearEverything' => 'Tout Effacer',
			'settings.debugOptions.title' => 'Options de Débogage',
			'settings.developerModeEnabled' => 'Mode développeur activé !',
			'reminders.title' => 'Restez sur la bonne voie avec des rappels',
			'reminders.description' => 'Recevez des rappels doux pour enregistrer vos repas et rester constant avec vos objectifs nutritionnels',
			'reminders.notificationsEnabled' => 'Notifications Activées',
			'reminders.notificationsDisabled' => 'Notifications Désactivées',
			'reminders.enabledSubtitle' => 'Vous recevrez des rappels de repas',
			'reminders.disabledSubtitle' => 'Activez les notifications pour recevoir des rappels de repas',
			'reminders.mealReminders' => 'Rappels de Repas',
			'reminders.breakfast' => 'Petit-Déjeuner',
			'reminders.lunch' => 'Déjeuner',
			'reminders.dinner' => 'Dîner',
			'reminders.snack' => 'Collation',
			'reminders.change' => 'Changer',
			'reminders.enableNotifications' => 'Activer les Notifications',
			'reminders.skipForNow' => 'Ignorer pour le moment',
			'reminders.saveChanges' => 'Enregistrer les Modifications',
			'reminders.continue_' => 'Continuer',
			'reminders.enabledSuccessfully' => 'Notifications activées avec succès !',
			'reminders.permissionDenied' => 'Autorisation de notification refusée',
			'reminders.errorEnabling' => 'Erreur lors de l\'activation des notifications : {error}',
			'reminders.errorCompletingSetup' => 'Erreur lors de la finalisation de la configuration : {error}',
			'notifications.breakfast.title' => 'C\'est l\'heure du Petit-Déjeuner ! 🍳',
			'notifications.breakfast.body' => 'N\'oubliez pas d\'enregistrer votre petit-déjeuner',
			'notifications.lunch.title' => 'C\'est l\'heure du Déjeuner ! 🥗',
			'notifications.lunch.body' => 'Il est temps d\'enregistrer votre déjeuner',
			'notifications.dinner.title' => 'C\'est l\'heure du Dîner ! 🍽️',
			'notifications.dinner.body' => 'N\'oubliez pas d\'enregistrer votre dîner',
			'notifications.snack.title' => 'C\'est l\'heure de la Collation ! 🍎',
			'notifications.snack.body' => 'Il est temps pour une collation saine',
			'notifications.test.title' => 'Notification de Test',
			'login.title' => 'Connexion',
			'login.signInWithGoogle' => 'Se connecter avec Google',
			'login.signInFailed' => 'La connexion Google a échoué ou a été annulée.',
			'disclaimer.pleaseNote' => 'Veuillez Noter',
			'disclaimer.snap.description' => 'Calorify fournit des informations nutritionnelles estimées. L\'exactitude dépend de vos entrées et des variations alimentaires. Utilisez-le comme un guide, pas comme une source définitive. Consultez un professionnel pour des conseils diététiques personnalisés.',
			'disclaimer.snap.portionSize.title' => 'Taille de Portion',
			'disclaimer.snap.portionSize.description' => 'L\'exactitude des estimations repose beaucoup sur votre évaluation correcte de la taille de la portion.',
			'disclaimer.snap.preparationMethods.title' => 'Méthodes de Préparation',
			'disclaimer.snap.preparationMethods.description' => 'Les méthodes de cuisson peuvent modifier de manière significative le contenu nutritionnel des aliments. Les estimations de Calorify peuvent ne pas toujours tenir compte de ces variations.',
			'disclaimer.snap.ingredients.title' => 'Ingrédients',
			'disclaimer.snap.ingredients.description' => 'Les plats complexes avec de nombreux ingrédients cachés peuvent conduire à des estimations moins précises.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitations de la Base de Données',
			'disclaimer.snap.databaseLimitations.description' => 'La base de données alimentaire de Calorify est vaste mais peut ne pas inclure chaque aliment ou variation.',
			'disclaimer.weightEstimate.title' => 'À Propos de l\'Estimation de Poids',
			'disclaimer.weightEstimate.description' => 'Le changement de poids projeté est une estimation théorique basée sur le simple modèle calorie-in vs. calorie-out. Il est destiné uniquement à des fins de motivation, pas comme une prédiction de votre poids réel.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Précision des Calories',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Cette estimation n\'est aussi précise que votre suivi des apports et des dépenses caloriques. Un enregistrement imprécis résultera en une projection inexacte.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Facteurs Biologiques',
			'disclaimer.weightEstimate.biologicalFactors.description' => 'La perte/gain de poids réelle est influencée par le métabolisme, les hormones, le sommeil, le stress, l\'hydratation et d\'autres facteurs individuels que Calorify ne peut pas mesurer.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Poids de l\'Eau & Fluctuations',
			'disclaimer.weightEstimate.waterWeight.description' => 'Le poids quotidien normal peut fluctuer considérablement en raison de la rétention d\'eau, de la digestion et du timing. L\'estimation ne tient pas compte de ces changements quotidiens.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Conseils Professionnels',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Ne pas utiliser cette estimation pour prendre des décisions médicales. Consultez toujours un professionnel de la santé ou un diététicien agréé pour des conseils personnalisés sur la gestion du poids.',
			'common.cancel' => 'Annuler',
			'common.save' => 'Enregistrer',
			'common.delete' => 'Supprimer',
			'common.edit' => 'Modifier',
			'common.close' => 'Fermer',
			'common.kContinue' => 'Continuer',
			'common.skip' => 'Ignorer',
			'common.error' => 'Erreur',
			'common.loading' => 'Chargement...',
			'common.notSet' => 'Non défini',
			'common.today' => 'Aujourd\'hui',
			'common.yesterday' => 'Hier',
			'errors.loadingProfileData' => 'Erreur de chargement des données du profil',
			'errors.generic' => 'Une erreur s\'est produite. Veuillez réessayer.',
			'debug.title' => 'Options de Débogage',
			'debug.showActiveNotifications' => 'Afficher les Notifications Actives',
			'debug.scheduleTestNotification' => 'Planifier une Notification de Test (10s)',
			'debug.triggerBreakfastNotification' => 'Déclencher la Notification du Petit-Déjeuner',
			'debug.cancelAllNotifications' => 'Annuler Toutes les Notifications',
			'debug.activeNotifications' => 'Notifications Actives',
			'debug.id' => 'ID : {id}',
			'debug.fetchLatestWeight' => 'Récupérer le Dernier Poids',
			'debug.fetchLatestHeight' => 'Récupérer la Dernière Taille',
			'debug.writeTestWeight' => 'Écrire le Poids de Test (70kg)',
			'debug.writeTestHeight' => 'Écrire la Taille de Test (175cm)',
			'debug.syncLast7Days' => 'Synchroniser les 7 Derniers Jours',
			'debug.checkCurrentLocale' => 'Vérifier la Locale Actuelle',
			_ => null,
		};
	}
}
