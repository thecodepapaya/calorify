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
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsOnboardingFr onboarding = _TranslationsOnboardingFr._(_root);
	@override late final _TranslationsTabsFr tabs = _TranslationsTabsFr._(_root);
	@override late final _TranslationsHomeFr home = _TranslationsHomeFr._(_root);
	@override late final _TranslationsHistoryFr history = _TranslationsHistoryFr._(_root);
	@override late final _TranslationsMealFr meal = _TranslationsMealFr._(_root);
	@override late final _TranslationsFavoritesFr favorites = _TranslationsFavoritesFr._(_root);
	@override late final _TranslationsProfileFr profile = _TranslationsProfileFr._(_root);
	@override late final _TranslationsHealthScoreFr healthScore = _TranslationsHealthScoreFr._(_root);
	@override late final _TranslationsEditProfileFr editProfile = _TranslationsEditProfileFr._(_root);
	@override late final _TranslationsSettingsFr settings = _TranslationsSettingsFr._(_root);
	@override late final _TranslationsRemindersFr reminders = _TranslationsRemindersFr._(_root);
	@override late final _TranslationsNotificationsFr notifications = _TranslationsNotificationsFr._(_root);
	@override late final _TranslationsLoginFr login = _TranslationsLoginFr._(_root);
	@override late final _TranslationsDisclaimerFr disclaimer = _TranslationsDisclaimerFr._(_root);
	@override late final _TranslationsCommonFr common = _TranslationsCommonFr._(_root);
	@override late final _TranslationsFeedbackRatingFr feedbackRating = _TranslationsFeedbackRatingFr._(_root);
	@override late final _TranslationsErrorsFr errors = _TranslationsErrorsFr._(_root);
	@override late final _TranslationsDebugFr debug = _TranslationsDebugFr._(_root);
	@override late final _TranslationsHealthFr health = _TranslationsHealthFr._(_root);
}

// Path: onboarding
class _TranslationsOnboardingFr implements TranslationsOnboardingEn {
	_TranslationsOnboardingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bienvenue dans ${appLabel}';
	@override String get subtitle => 'Votre compagnon personnel en nutrition propulsé par l\'IA';
	@override String get getStarted => 'Commencer';
	@override late final _TranslationsOnboardingFeaturesFr features = _TranslationsOnboardingFeaturesFr._(_root);
	@override late final _TranslationsOnboardingGenderFr gender = _TranslationsOnboardingGenderFr._(_root);
	@override late final _TranslationsOnboardingHeightFr height = _TranslationsOnboardingHeightFr._(_root);
	@override late final _TranslationsOnboardingWeightFr weight = _TranslationsOnboardingWeightFr._(_root);
	@override late final _TranslationsOnboardingAgeFr age = _TranslationsOnboardingAgeFr._(_root);
	@override late final _TranslationsOnboardingBmiScaleFr bmiScale = _TranslationsOnboardingBmiScaleFr._(_root);
	@override late final _TranslationsOnboardingWeightGoalFr weightGoal = _TranslationsOnboardingWeightGoalFr._(_root);
	@override late final _TranslationsOnboardingActivityLevelFr activityLevel = _TranslationsOnboardingActivityLevelFr._(_root);
	@override late final _TranslationsOnboardingHealthConnectFr healthConnect = _TranslationsOnboardingHealthConnectFr._(_root);
	@override late final _TranslationsOnboardingReinforcementFr reinforcement = _TranslationsOnboardingReinforcementFr._(_root);
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
	@override late final _TranslationsHomeIntakeHistoryFr intakeHistory = _TranslationsHomeIntakeHistoryFr._(_root);
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
	@override String get addMeal => 'Ajouter un repas';
	@override String get saveMeal => 'Enregistrer le Repas';
	@override String get save => 'Enregistrer';
	@override String get mealName => 'Nom du repas';
	@override String get mealNameHint => 'p. ex. : œufs brouillés avec pain grillé';
	@override String get mealQuantity => 'Quantité de repas';
	@override String get mealQuantityHint => 'par exemple, 1 bol, 2 tranches';
	@override String get timeOfMeal => 'Heure du repas';
	@override String get timeOfMealHint => 'Sélectionnez l\'heure à laquelle vous avez pris votre repas';
	@override String get mealType => 'Type de repas';
	@override late final _TranslationsMealNutritionFr nutrition = _TranslationsMealNutritionFr._(_root);
	@override late final _TranslationsMealDeleteConfirmationFr deleteConfirmation = _TranslationsMealDeleteConfirmationFr._(_root);
	@override String get addedToLog => 'Repas ajouté à votre journal !';
	@override String couldNotAdd({required Object error}) => 'Impossible d\'ajouter le repas : ${error}';
	@override String get savedSuccessfully => 'Repas ajouté avec succès !';
	@override String get updatedSuccessfully => 'Repas mis à jour avec succès !';
	@override String errorSaving({required Object error}) => 'Erreur lors de l\'enregistrement du repas : ${error}';
	@override String get removedFromFavorites => 'Retiré des favoris !';
	@override String get savedAsFavorite => 'Repas enregistré comme favori !';
	@override String couldNotUpdateFavorite({required Object error}) => 'Impossible de mettre à jour le favori : ${error}';
	@override String failedToProcess({required Object error}) => 'Échec du traitement : ${error}';
	@override String failedToProcessImage({required Object error}) => 'Échec du traitement de l\'image : ${error}';
	@override String errorCompressingImage({required Object error}) => 'Erreur de compression de l\'image : ${error}';
	@override String get failedToSave => 'Échec de l\'enregistrement des données. Veuillez réessayer.';
	@override String get skip => 'Passer';
	@override late final _TranslationsMealVariationFr variation = _TranslationsMealVariationFr._(_root);
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
	@override String get noProfileData => 'Aucune donnée de profil trouvée';
	@override String get yourProfile => 'Votre Profil';
	@override String get viewAndManage => 'Voir et gérer vos informations de santé';
	@override late final _TranslationsProfileSectionsFr sections = _TranslationsProfileSectionsFr._(_root);
	@override String get gender => 'Genre';
	@override String get height => 'Taille';
	@override String get weight => 'Poids';
	@override String get age => 'Âge';
	@override String get weightGoal => 'Objectif de Poids';
	@override String get targetWeight => 'Poids Cible';
	@override String get activityLevel => 'Niveau d\'Activité';
	@override String get healthMetrics => 'Métriques de Santé';
	@override String get notSet => 'Non défini';
	@override String get years => 'ans';
	@override String get updatedSuccessfully => 'Profil mis à jour avec succès !';
	@override late final _TranslationsProfileCalculatedValuesFr calculatedValues = _TranslationsProfileCalculatedValuesFr._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreFr implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Score de Santé';
	@override String get whyThisScore => 'Pourquoi ce score ?';
	@override String get note => 'Ce score est une estimation de l\'IA basée sur les ingrédients identifiés et la densité nutritionnelle. Consultez toujours un professionnel pour des conseils diététiques.';
	@override String get unhealthy => 'Pas sain';
	@override String get healthy => 'Sain';
	@override String get neutral => 'Neutre';
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
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Métrique (cm)';
	@override String get imperialFtIn => 'Impérial (ft/in)';
	@override String get metricKg => 'Métrique (kg)';
	@override String get imperialLbs => 'Impérial (lbs)';
	@override late final _TranslationsEditProfileGendersFr genders = _TranslationsEditProfileGendersFr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsFr weightGoals = _TranslationsEditProfileWeightGoalsFr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsFr activityLevels = _TranslationsEditProfileActivityLevelsFr._(_root);
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
	@override late final _TranslationsSettingsThemeFr theme = _TranslationsSettingsThemeFr._(_root);
	@override late final _TranslationsSettingsSendFeedbackFr sendFeedback = _TranslationsSettingsSendFeedbackFr._(_root);
	@override late final _TranslationsSettingsClearAllDataFr clearAllData = _TranslationsSettingsClearAllDataFr._(_root);
	@override late final _TranslationsSettingsDebugOptionsFr debugOptions = _TranslationsSettingsDebugOptionsFr._(_root);
	@override String get developerModeEnabled => 'Mode développeur activé !';
	@override late final _TranslationsSettingsHealthConnectFr healthConnect = _TranslationsSettingsHealthConnectFr._(_root);
	@override late final _TranslationsSettingsAboutFr about = _TranslationsSettingsAboutFr._(_root);
	@override late final _TranslationsSettingsAppInfoFr appInfo = _TranslationsSettingsAppInfoFr._(_root);
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
	@override String get unknown => 'Inconnu';
	@override String get change => 'Changer';
	@override String get enableNotifications => 'Activer les Notifications';
	@override String get skipForNow => 'Ignorer pour le moment';
	@override String get saveChanges => 'Enregistrer les Modifications';
	@override String get enabledSuccessfully => 'Notifications activées avec succès !';
	@override String get permissionDenied => 'Autorisation de notification refusée';
	@override String errorEnabling({required Object error}) => 'Erreur lors de l\'activation des notifications : ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Erreur lors de la finalisation de la configuration : ${error}';
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
	@override late final _TranslationsDisclaimerHealthMetricsFr healthMetrics = _TranslationsDisclaimerHealthMetricsFr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureFr calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureFr._(_root);
}

// Path: common
class _TranslationsCommonFr implements TranslationsCommonEn {
	_TranslationsCommonFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get close => 'Fermer';
	@override String get kContinue => 'Continuer';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingFr implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Vous aimez ${appLabel} ?';
	@override String get yes => 'Oui, je l\'apprécie';
	@override String get no => 'Pas vraiment';
	@override String soloDevMessage({required Object appLabel}) => 'Une brève évaluation aide les autres à découvrir ${appLabel} et permet au développement de continuer. Pourriez-vous prendre un instant pour en laisser une ?';
	@override String get shareFeedbackViaEmail => 'Vos retours façonnent la suite — nous lisons chaque message. Souhaitez-vous partager vos impressions par e-mail ?';
	@override String get rateCta => 'Noter sur le Play Store';
	@override String get maybeLater => 'Peut-être plus tard';
	@override String get sendFeedback => 'Donnez votre avis';
	@override String get noThanks => 'Non merci';
	@override String get aboutUsDescription => 'Conçu avec soin par une petite équipe. Nous privilégions la confidentialité, la simplicité et l\'accompagnement pour vous aider à adopter de meilleures habitudes alimentaires.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Vous voulez savoir qui se cache derrière ${appLabel} ? Consultez ';
	@override String get aboutUsLinkLabel => 'À propos';
	@override String get thankYouMessage => 'Merci ! Nous redemanderons une autre fois.';
}

// Path: errors
class _TranslationsErrorsFr implements TranslationsErrorsEn {
	_TranslationsErrorsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => 'Erreur de chargement des données du profil';
	@override String get somethingWentWrong => 'Une erreur s\'est produite.';
}

// Path: debug
class _TranslationsDebugFr implements TranslationsDebugEn {
	_TranslationsDebugFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Options de Débogage';
	@override String get searchHint => 'Rechercher des options...';
	@override late final _TranslationsDebugSectionsFr sections = _TranslationsDebugSectionsFr._(_root);
	@override String get showActiveNotifications => 'Afficher les Notifications Actives';
	@override String get scheduleTestNotification => 'Planifier une Notification de Test (10s)';
	@override String get triggerBreakfastNotification => 'Déclencher la Notification du Petit-Déjeuner';
	@override String get cancelAllNotifications => 'Annuler Toutes les Notifications';
	@override String get activeNotifications => 'Notifications Actives';
	@override String get noTitle => 'Pas de titre';
	@override String get noBody => 'Pas de contenu';
	@override String get fetchTodaysSteps => 'Récupérer les pas d\'aujourd\'hui';
	@override String get fetchTodaysCalories => 'Récupérer les calories d\'aujourd\'hui';
	@override String get fetchLatestWeight => 'Récupérer le Dernier Poids';
	@override String get fetchLatestHeight => 'Récupérer la Dernière Taille';
	@override String get writeTestWeight => 'Écrire le Poids de Test (70kg)';
	@override String get writeTestHeight => 'Écrire la Taille de Test (175cm)';
	@override String get syncLast7Days => 'Synchroniser les 7 Derniers Jours';
	@override String get sync7DaysTitle => 'Synchronisation sur 7 Jours';
	@override String get checkCurrentLocale => 'Vérifier la Locale Actuelle';
	@override String get currentLocale => 'Paramètres régionaux actuels';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Langue : ${languageCode}\nPays : ${countryCode}\nSystème d\'unités : ${unitSystem}';
	@override String get latestWeight => 'Dernier poids';
	@override String get latestHeight => 'Dernière hauteur';
	@override String get todaysCalories => 'Calories d\'aujourd\'hui';
	@override String totalCaloriesBurned({required Object calories}) => 'Total des calories brûlées : ${calories}';
	@override String syncSuccess({required Object count}) => 'Récupération réussie de ${count} points de données pour les Pas, les Calories et le Poids au cours des 7 derniers jours.';
	@override String get noWeightData => 'Aucune donnée de poids trouvée au cours des 30 derniers jours.';
	@override String get noHeightData => 'Aucune donnée de taille trouvée au cours de la dernière année.';
	@override String get noCalorieData => 'Aucune donnée de calories trouvée pour aujourd\'hui.';
	@override String get weightWritten => 'Poids de test enregistré avec succès (70kg).';
	@override String get weightWriteFailed => 'Échec de l\'enregistrement du poids de test.';
	@override String get heightWritten => 'Hauteur de test enregistrée avec succès (175cm).';
	@override String get heightWriteFailed => 'Échec de l\'enregistrement de la hauteur de test.';
	@override String get noNotifications => 'Aucune notification active.';
	@override String get testNotificationScheduled => 'Notification de test programmée dans 10 secondes.';
	@override String get testNotificationBody => 'Ceci est une notification de test programmée dans 10 secondes.';
	@override String get breakfastNotificationTriggered => 'Notification de petit-déjeuner déclenchée.';
	@override String get allNotificationsCancelled => 'Toutes les notifications annulées.';
	@override String get fetchingData => 'Récupération des données des 7 derniers jours...';
	@override String id({required Object id}) => 'ID : ${id}';
	@override String get showFeedbackRatingSheet => 'Afficher la fenêtre de commentaires/notation';
	@override String get clearUserPreferences => 'Effacer les préférences utilisateur';
	@override String get clearUserPreferencesConfirmationTitle => 'Effacer les préférences utilisateur ?';
	@override String get clearUserPreferencesConfirmationMessage => 'Le thème, la langue et les préférences de commentaires seront réinitialisés. Les repas et le profil ne seront pas affectés.';
	@override String get clearUserProfile => 'Effacer le profil utilisateur';
	@override String get clearUserProfileConfirmationTitle => 'Effacer le profil utilisateur ?';
	@override String get clearUserProfileConfirmationMessage => 'Les données de votre profil (objectif quotidien, taille, poids, etc.) seront effacées. Les repas et les préférences ne seront pas affectés.';
	@override String get clear => 'Effacer';
	@override String get cancel => 'Annuler';
	@override String get checkWatchConnection => 'Vérifier la connexion à la montre';
	@override String get sendTestMessage => 'Envoyer un message de test';
	@override String get sendTestMessageSubtitle => 'Envoyer un message de test simple à la montre';
	@override String get sendTestMealData => 'Envoyer des données de repas de test';
	@override String get sendTestMealDataSubtitle => 'Envoyer des données de repas d\'exemple à la montre';
	@override String get sendTestCalorieGoal => 'Envoyer un objectif calorique de test';
	@override String get sendTestCalorieGoalSubtitle => 'Envoyer un objectif calorique d\'exemple à la montre';
	@override String get viewReceivedMessages => 'Afficher les messages reçus';
	@override String get viewReceivedMessagesSubtitle => 'Afficher les messages reçus depuis la montre';
	@override String get watchConnected => 'Montre connectée ✓';
	@override String get device => 'Appareil';
	@override String get nearby => 'À proximité';
	@override String get yes => 'Oui';
	@override String get no => 'Non';
	@override String get connectedDevices => 'Appareils connectés';
	@override String get deviceInfoUnavailable => '(Informations sur l\'appareil indisponibles)';
	@override String get unknownDevice => 'Appareil inconnu';
	@override String get watchNotConnected => 'Montre non connectée ✗';
	@override String get watchNotConnectedHint => 'Assurez-vous :\n• Les deux appareils sont appairés\n• L\'application de la montre est en cours d\'exécution\n• Les deux applications sont en mode débogage/staging';
	@override String get watchConnection => 'Connexion à la montre';
	@override String errorCheckingConnection({required Object error}) => 'Erreur lors de la vérification de la connexion : ${error}';
	@override String get helloFromPhone => 'Bonjour depuis le téléphone !';
	@override String get testMessageSentSuccess => 'Message de test envoyé avec succès !';
	@override String get testMessageFailed => 'Échec de l\'envoi du message de test. Vérifiez la connexion à la montre.';
	@override String errorSendingMessage({required Object error}) => 'Erreur lors de l\'envoi du message : ${error}';
	@override String get testMeal => 'Repas de test';
	@override String get testMealDataSentSuccess => 'Données du repas de test envoyées avec succès !';
	@override String get failedToSendMealData => 'Échec de l\'envoi des données du repas. Vérifiez la connexion à la montre.';
	@override String errorSendingMealData({required Object error}) => 'Erreur lors de l\'envoi des données du repas : ${error}';
	@override String get testCalorieGoalSentSuccess => 'Objectif calorique de test envoyé avec succès !';
	@override String get failedToSendCalorieGoal => 'Échec de l\'envoi de l\'objectif calorique. Vérifiez la connexion à la montre.';
	@override String errorSendingCalorieGoal({required Object error}) => 'Erreur lors de l\'envoi de l\'objectif calorique : ${error}';
	@override String get testAnalyzeImage => 'Tester l\'analyse d\'image';
	@override String get testAnalyzeImageSubtitle => 'Téléverser une image de test préconfigurée';
	@override String get testDetectImage => 'Tester la détection d\'image';
	@override String get testDetectImageSubtitle => 'Détecter le repas depuis une URL d\'image';
	@override String get detectImageFromGallery => 'Détecter une image depuis la galerie';
	@override String get detectImageFromGallerySubtitle => 'Sélectionner une image, la téléverser sur le bucket et estimer les calories';
	@override String get testDetectText => 'Tester la détection de texte';
	@override String get testDetectTextSubtitle => 'Détecter un repas à partir d\'une description textuelle';
	@override String get testMealLoggingWithVariations => 'Tester l\'enregistrement de repas avec variations';
	@override String get testMealLoggingWithVariationsSubtitle => 'Tester le flux complet d\'enregistrement de repas avec variations';
	@override String get mockMealWithVariations => 'Repas simulé avec variations';
	@override String get mockMealWithVariationsSubtitle => 'Aperçu de l\'interface des variations + fiche conseils sans enregistrer';
	@override String get mockMealName => 'Poulet grillé avec riz et légumes';
	@override String get mockTip => 'Ceci est un conseil fictif pour l\'aperçu de l\'interface. Le repas n\'est pas enregistré.';
	@override String get mockMealDescription => 'Repas simulé pour le débogage';
	@override String get portionSizeQuestion => 'Quelle était la taille de la portion ?';
	@override String get extraSidesQuestion => 'Accompagnements supplémentaires ?';
	@override String get optionSmall => 'Petit';
	@override String get optionMedium => 'Moyen';
	@override String get optionLarge => 'Grand';
	@override String get optionNone => 'Aucun';
	@override String get optionSideSalad => 'Salade d\'accompagnement';
	@override String get optionBreadRoll => 'Petit pain';
	@override String get testingAnalyzeImage => 'Test de l\'API analyzeImage...';
	@override String get testingDetectImage => 'Test de l\'API detectImage...';
	@override String get testingDetectText => 'Test de l\'API detectText...';
	@override String get selectingImageFromGallery => 'Sélection de l\'image depuis la galerie...';
	@override String get noImageSelected => 'Aucune image sélectionnée';
	@override String get compressingImage => 'Compression de l\'image...';
	@override String get uploadingImageAndDetecting => 'Téléversement de l\'image vers le bucket et détection du repas...';
	@override String get testingMealLoggingFlow => 'Test du flux d\'enregistrement du repas avec variations...';
	@override String get testUpdateProfile => 'Tester la mise à jour du profil';
	@override String get testUpdateProfileSubtitle => 'Envoyer (POST) un profil d\'exemple au backend';
	@override String get testingProfileApi => 'Test de l\'API de profil en cours...';
	@override String get profileUpdateSuccess => 'L\'API de profil a répondu avec succès';
	@override String profileUpdateFailed({required Object error}) => 'Erreur de l\'API de profil : ${error}';
	@override String get noMealIdentifiedInResponse => 'Aucun repas identifié dans la réponse';
	@override String get mealIdentified => 'Repas identifié';
	@override String get confidence => 'Confiance';
	@override String get tip => 'Conseil';
	@override String get mealName => 'Nom du repas';
	@override String get calories => 'Calories';
	@override String get protein => 'Protéines';
	@override String get carbs => 'Glucides';
	@override String get fat => 'Lipides';
	@override String get noMealInfo => 'Pas d\'informations sur le repas';
	@override String get na => 'N/A';
	@override String get analyzeImageResult => 'Résultat de l\'analyse d\'image';
	@override String get detectImageResult => 'Résultat de la détection d\'image';
	@override String get detectImageFromGalleryResult => 'Résultat de la détection depuis la galerie';
	@override String get detectTextResult => 'Résultat de la détection de texte';
	@override String errorGeneric({required Object error}) => 'Erreur : ${error}';
	@override String get variationsCount => 'Variations';
	@override String get userPreferencesCleared => 'Préférences utilisateur effacées';
	@override String get userProfileCleared => 'Profil utilisateur effacé';
	@override String get checkForUpdate => 'Vérifier les mises à jour';
	@override String get showPatchNumber => 'Afficher le numéro de patch';
	@override String get showUpdateAvailable => 'Afficher \'mise à jour disponible\'';
	@override String get updateAvailable => 'Mise à jour disponible';
	@override String get upToDate => 'À jour';
	@override String get shorebirdUnavailable => 'Shorebird n\'est pas disponible dans cet environnement.';
	@override String get patchNumberLabel => 'Numéro du patch';
	@override String get noPatchInstalled => 'Aucun patch installé';
	@override String get todaysSteps => 'Pas aujourd\'hui';
	@override String get stepsLabel => 'Pas';
	@override String weightLabel({required Object value}) => 'Poids : ${value} kg';
	@override String heightLabel({required Object value}) => 'Taille : ${value} cm';
	@override String get receivedMessagesFromWatch => 'Messages reçus depuis la montre';
	@override String get noMessagesReceivedYet => 'Aucun message reçu pour le moment.\n\nEnvoyez des données de test depuis la montre pour voir les messages ici.';
	@override String get messagesCleared => 'Messages effacés';
}

// Path: health
class _TranslationsHealthFr implements TranslationsHealthEn {
	_TranslationsHealthFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Échec de la synchronisation avec Health Connect';
	@override String get mealSynced => 'Repas synchronisé avec Health Connect';
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

// Path: onboarding.gender
class _TranslationsOnboardingGenderFr implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quel est votre sexe ?';
	@override String get description => 'Le sexe nous aide à calculer avec précision votre taux métabolique de base (TMB).';
	@override String get next => 'Suivant';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightFr implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quelle est votre taille ?';
	@override String get description => 'Votre taille nous aide à calculer votre IMC et vos besoins énergétiques avec précision.';
	@override String get metric => 'Métrique';
	@override String get imperial => 'Impérial';
	@override String get next => 'Suivant';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightFr implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Quel est votre poids actuel ?';
	@override String get currentDescription => 'Votre poids actuel est essentiel pour personnaliser vos objectifs quotidiens.';
	@override String get targetTitle => 'Quel est votre poids cible ?';
	@override String get targetDescription => 'Fixer un poids cible nous aide à déterminer votre plan à long terme.';
	@override String get metric => 'Métrique';
	@override String get imperial => 'Impérial';
	@override String get next => 'Suivant';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeFr implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quand est votre anniversaire ?';
	@override String get description => 'Votre âge nous aide à calculer vos besoins caloriques avec précision.';
	@override String get next => 'Suivant';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleFr implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Insuffisance pondérale';
	@override String get healthy => 'Sain';
	@override String get overweight => 'Surpoids';
	@override String get obese => 'Obésité';
	@override late final _TranslationsOnboardingBmiScaleCategoriesFr categories = _TranslationsOnboardingBmiScaleCategoriesFr._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesFr messages = _TranslationsOnboardingBmiScaleMessagesFr._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalFr implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quel est votre objectif ?';
	@override String get description => 'Choisissez l\'objectif qui décrit le mieux ce que vous souhaitez réaliser';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelFr implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quelle est votre activité ?';
	@override String get description => 'Cela nous aide à calculer plus précisément vos besoins caloriques quotidiens';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectFr implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Connectez-vous à Health Connect';
	@override String get description => 'Synchronisez vos données de santé pour obtenir de meilleurs aperçus et un suivi automatique des calories';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingFr automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingFr._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsFr progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsFr._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationFr seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationFr._(_root);
	@override String get connected => 'Health Connect Connecté';
	@override String get notConnected => 'Health Connect Non Connecté';
	@override String get setup => 'Configurer Health Connect';
	@override String get skipForNow => 'Passer pour le moment';
	@override String get statusConnected => 'Health Connect est connecté.';
	@override String get statusSuccess => 'Health Connect a été connecté avec succès !';
	@override String statusPermissionDenied({required Object appLabel}) => 'Permission refusée. Veuillez activer les permissions de Health Connect depuis les paramètres de votre téléphone pour ${appLabel}.';
	@override String statusError({required Object error}) => 'Erreur lors de la configuration de Health Connect : ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementFr implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessFr trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessFr._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileFr healthProfile = _TranslationsOnboardingReinforcementHealthProfileFr._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleFr goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleFr._(_root);
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalFr implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Définir Votre Objectif Journalier';
	@override String get titleSet => 'Votre Objectif Journalier';
	@override String get description => 'Prêt à commencer votre parcours de bien-être ? Définissez votre objectif calorique quotidien ci-dessous pour suivre vos progrès.';
	@override String get descriptionSet => 'Votre boussole est réglée ! Voici votre objectif calorique quotidien pour vous guider.';
	@override String get yourGoal => 'Votre Objectif';
	@override String get goal => 'Objectif';
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
	@override String get grams => 'grammes';
	@override String get chartAccessibilityLabel => 'Graphique des macronutriments';
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

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryFr implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Historique des Macronutriments sur 7 Jours';
	@override String get noHistoryYet => 'Pas encore d\'historique';
	@override String get startLogging => 'Commencez à enregistrer vos repas pour voir vos\ntendances de macronutriments sur 7 jours ici';
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
	@override String get gallery => 'Galerie';
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

// Path: meal.nutrition
class _TranslationsMealNutritionFr implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calories';
	@override String get carbs => 'Glucides (g)';
	@override String get protein => 'Protéines (g)';
	@override String get fat => 'Graisses (g)';
	@override String get fiber => 'Fibres (g)';
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

// Path: meal.variation
class _TranslationsMealVariationFr implements TranslationsMealVariationEn {
	_TranslationsMealVariationFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Question ${current} sur ${total}';
	@override String get noVariationsAvailable => 'Aucune variation disponible';
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

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesFr implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Objectif Quotidien';
	@override String get calPerDay => 'cal/jour';
	@override String get notAvailable => 'N/A';
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

// Path: editProfile.genders
class _TranslationsEditProfileGendersFr implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get male => 'Homme';
	@override String get female => 'Femme';
	@override String get other => 'Autre';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsFr implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightFr loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightFr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightFr maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightFr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightFr gainWeight = _TranslationsEditProfileWeightGoalsGainWeightFr._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsFr implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryFr sedentary = _TranslationsEditProfileActivityLevelsSedentaryFr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveFr lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveFr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveFr moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveFr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveFr veryActive = _TranslationsEditProfileActivityLevelsVeryActiveFr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveFr extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveFr._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsFr implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOCALISATION';
	@override String get notifications => 'NOTIFICATIONS';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'ASSISTANCE & JURIDIQUE';
	@override String get about => 'À PROPOS';
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
	@override String get subtitle => 'Choisissez votre langue préférée';
	@override String get searchHint => 'Rechercher des langues...';
	@override String get noResults => 'Aucun résultat trouvé';
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

// Path: settings.theme
class _TranslationsSettingsThemeFr implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thème';
	@override String get light => 'Clair';
	@override String get dark => 'Sombre';
	@override String get system => 'Système';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackFr implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Envoyer un Retour';
	@override String subtitle({required Object appLabel}) => 'Aidez-nous à améliorer ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Retour sur l\'application ${appLabel}';
	@override String get emailBodyPrefix => 'Veuillez fournir vos commentaires ci-dessous :';
	@override String get appVersion => 'Version de l\'application';
	@override String get device => 'Appareil';
	@override String get osVersion => 'Version du système d\'exploitation';
	@override String get uid => 'UID';
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

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectFr implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Voir et gérer les autorisations';
	@override late final _TranslationsSettingsHealthConnectUnavailableFr unavailable = _TranslationsSettingsHealthConnectUnavailableFr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsFr permissions = _TranslationsSettingsHealthConnectPermissionsFr._(_root);
	@override String get managePermissions => 'Gérer les autorisations';
	@override String get openSettings => 'Ouvrir les paramètres de Health Connect';
	@override String get requestPermissions => 'Demander des autorisations';
	@override String get permissionRequestCancelledOrFailed => 'La demande d’autorisations a été annulée ou a échoué. Veuillez réessayer ou accorder les autorisations manuellement dans les paramètres de Health Connect.';
	@override String get permissionRequestFailed => 'Impossible de demander les autorisations. Veuillez réessayer ou accorder les autorisations manuellement dans les paramètres de Health Connect.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutFr implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'À Propos';
	@override String get tagline => 'Prise de conscience des calories rapide, gratuite et respectueuse de la vie privée';
	@override late final _TranslationsSettingsAboutOurStoryFr ourStory = _TranslationsSettingsAboutOurStoryFr._(_root);
	@override late final _TranslationsSettingsAboutPrivacyFr privacy = _TranslationsSettingsAboutPrivacyFr._(_root);
	@override late final _TranslationsSettingsAboutDeveloperFr developer = _TranslationsSettingsAboutDeveloperFr._(_root);
	@override late final _TranslationsSettingsAboutFeedbackFr feedback = _TranslationsSettingsAboutFeedbackFr._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoFr implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
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
	@override String description({required Object appLabel}) => '${appLabel} fournit des informations nutritionnelles estimées. L\'exactitude dépend de vos saisies et des variations alimentaires. À utiliser comme guide, pas comme source définitive. Consultez un professionnel pour des conseils diététiques personnalisés.';
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

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsFr implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get description => 'Ces indicateurs vous aident à comprendre les besoins énergétiques de votre corps et à guider vos objectifs nutritionnels.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrFr bmr = _TranslationsDisclaimerHealthMetricsBmrFr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeFr tdee = _TranslationsDisclaimerHealthMetricsTdeeFr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalFr dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalFr._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureFr implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimation de la dépense calorique';
	@override String get description => 'Lorsque les données Health Connect ne sont pas disponibles, nous estimons les calories brûlées aujourd\'hui en utilisant votre métabolisme de base (BMR) et votre dépense énergétique quotidienne totale (TDEE), ajustée à la portion de la journée déjà écoulée.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedFr howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedFr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsFr implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get notifications => 'Notifications';
	@override String get healthConnect => 'Health Connect';
	@override String get wearOs => 'Wear OS';
	@override String get foodApiTests => 'Tests de l\'API Food';
	@override String get profileApiTests => 'Tests de l\'API de profil';
	@override String get feedback => 'Commentaires';
	@override String get dataReset => 'Réinitialisation des données';
	@override String get appInfo => 'Informations sur l\'application';
	@override String get shorebird => 'Shorebird';
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

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesFr implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Insuffisance pondérale';
	@override String get healthyWeight => 'Poids santé';
	@override String get overweight => 'Surpoids';
	@override String get obese => 'Obésité';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesFr implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Nous pouvons vous aider à établir un plan sain pour atteindre un poids équilibré avec des repas riches en nutriments.';
	@override String get healthy => 'Excellent travail ! Vous êtes dans une fourchette saine. Nous vous aiderons à maintenir votre vitalité et vos niveaux d\'énergie.';
	@override String overweight({required Object appLabel}) => '${appLabel} simplifiera votre parcours avec le suivi assisté par IA pour vous aider à atteindre votre objectif confortablement.';
	@override String get obese => 'Nous sommes ici pour vous soutenir avec des conseils personnalisés et des stratégies durables pour vos objectifs de santé.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingFr implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suivi Automatique des Calories';
	@override String get description => 'Suivez les calories brûlées à partir de vos applications de fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsFr implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aperçus des Progrès';
	@override String get description => 'Obtenez des informations détaillées sur vos tendances de santé';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationFr implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intégration Transparente';
	@override String get description => 'Synchronisez les données de vos applications de santé préférées';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessFr implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vous n\'êtes pas seul';
	@override String get genericMessage => 'Des recherches montrent que le suivi régulier est le meilleur indicateur de succès à long terme.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Pour un(e) ${age} ans ${gender} cherchant à ${goal}, le suivi régulier est le meilleur indicateur de succès.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} rend le suivi 10 fois plus facile que de le faire manuellement.';
	@override String get getStartedTitle => 'Prêt à commencer ?';
	@override String get tipPhoto => 'Prenez une photo de vos repas pour une analyse instantanée';
	@override String get tipConsistency => 'Consignez vos repas régulièrement pour voir des progrès significatifs';
	@override String get tipProgress => 'Suivez vos progrès quotidiennement pour rester motivé';
	@override String get button => 'C\'est parti';
	@override String get defaultGender => 'individu';
	@override String get defaultGoal => 'vous en meilleure santé';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileFr implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Votre Profil de Santé';
	@override String bmiDescription({required Object bmi}) => 'Selon vos métriques, votre IMC est de ${bmi}.';
	@override String get finalizeDescription => 'Finalisons votre profil pour personnaliser votre expérience.';
	@override String get goalGain => 'gagner';
	@override String get goalLose => 'perdre';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Pour atteindre votre objectif, vous devrez ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Vous êtes à votre poids cible ! Nous allons vous aider à le maintenir.';
	@override String get button => 'C\'est parti';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleFr implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Excellente première étape !';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Vous avez fait le premier pas vers ${goalText}. Puisque vous êtes ${activityText}, ${appLabel} ajustera vos objectifs pour correspondre à votre style de vie.';
	@override String get personalizedTargets => 'Objectifs caloriques personnalisés';
	@override String get aiMealDetection => 'Détection de repas par IA';
	@override String get macroBreakdowns => 'Détails des macronutriments';
	@override String get button => 'C\'est parti';
	@override String get defaultGoal => 'vos objectifs';
	@override String get defaultActivity => 'actif';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightFr implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perdre du Poids';
	@override String get description => 'Créer un déficit calorique pour perdre du poids';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightFr implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Maintenir le Poids';
	@override String get description => 'Maintenir votre poids actuel';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightFr implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Gagner du Poids';
	@override String get description => 'Créer un surplus calorique pour gagner du poids';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryFr implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sédentaire';
	@override String get description => 'Peu ou pas d\'exercice';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveFr implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Légèrement Actif';
	@override String get description => 'Exercice léger 1-3 jours/semaine';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveFr implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Modérément Actif';
	@override String get description => 'Exercice modéré 3-5 jours/semaine';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveFr implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Très Actif';
	@override String get description => 'Exercice intense 6-7 jours/semaine';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveFr implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrêmement Actif';
	@override String get description => 'Exercice très intense, travail physique';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableFr implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect indisponible';
	@override String get description => 'Health Connect n\'est pas disponible sur cet appareil. Veuillez installer Health Connect depuis le Play Store (Android 9+) ou mettre à jour vers Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsFr implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autorisations';
	@override String get description => 'Les autorisations suivantes sont requises pour fournir l\'intégration de Health Connect :';
	@override String get granted => 'Accordé';
	@override String get notGranted => 'Non accordé';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFr caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadFr nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadFr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteFr nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteFr._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryFr implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notre Histoire';
	@override String content({required Object appLabel}) => '${appLabel} est né d\'une frustration simple : la plupart des applications de suivi des calories sont soit trop compliquées, nécessitent une saisie manuelle constante, facturent des frais d\'abonnement élevés, ou compromettent la vie privée.\n\nEn tant que développeur indépendant, je voulais créer quelque chose de plus simple et d\'équitable : une application qui utilise l\'IA pour réduire l\'effort, reste rapide et gratuite à utiliser, et traite vos données de santé avec respect.\n\n${appLabel} est l\'application que je souhaite qu\'il existe : pas de comptes, pas de suivi, pas de publicités — juste des informations claires et pratiques et vos objectifs de santé.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyFr implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Votre Vie Privée Est Importante';
	@override String get description => 'La vie privée n\'est pas une réflexion après coup — c\'est un principe de conception. Voici ce que cela signifie en pratique :';
	@override String get noAccounts => 'Aucun compte requis\nUtilisez l\'application immédiatement. Pas d\'inscriptions, pas d\'identités.';
	@override String noTracking({required Object appLabel}) => 'Pas de suivi comportemental\n${appLabel} ne surveille pas votre activité, ne construit pas de profils d\'utilisation, et ne vous suit pas à travers les applications ou les sites web.';
	@override String noAds({required Object appLabel}) => 'Sans publicité par conception\n${appLabel} est conçu pour fonctionner sans publicités ni monétisation basée sur les données.';
	@override String get noDataSelling => 'Pas de vente de données\nVos données de santé ne sont jamais vendues ni partagées avec des tiers.';
	@override String get localStorage => 'Stockage prioritaire local\nVos données restent sur votre appareil.';
	@override String get privacyPolicy => 'Politique de confidentialité';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperFr implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Créé par un Développeur Indépendant';
	@override String description({required Object appLabel}) => '${appLabel} est construit et maintenu par un seul développeur indépendant qui se concentre sur la création de logiciels de santé respectueux de la vie privée et apaisants.\n\nLes retours sont lus personnellement et aident à orienter le développement de l\'application.';
	@override String get website => 'Site Web';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackFr implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Vous Aimez ${appLabel}?';
	@override String description({required Object appLabel}) => 'Vos retours aident à améliorer ${appLabel} pour tout le monde.';
	@override String get rateApp => 'Évaluer sur le Play Store';
	@override String get sendFeedback => 'Envoyer des retours d\'information';
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
	@override String description({required Object appLabel}) => 'Les méthodes de cuisson peuvent modifier de manière significative la composition nutritionnelle des aliments. Les estimations de ${appLabel} peuvent ne pas toujours tenir compte de ces variations.';
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
	@override String description({required Object appLabel}) => 'La base de données alimentaire de ${appLabel} est vaste mais peut ne pas inclure chaque aliment ou variation existante.';
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
	@override String description({required Object appLabel}) => 'La perte/gain de poids réel est influencée par le métabolisme, les hormones, le sommeil, le stress, l\'hydratation et d\'autres facteurs individuels que ${appLabel} ne peut pas mesurer.';
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

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrFr implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TMB';
	@override String get description => 'Le Taux Métabolique Basal (TMB) est le nombre de calories que votre corps brûle au repos pour maintenir les fonctions essentielles telles que la respiration et la circulation. Le TMB dépend de votre âge, sexe, taille et poids. Un TMB plus élevé signifie que votre corps brûle naturellement plus de calories au repos, souvent en raison d\'une masse musculaire plus importante, d\'un âge plus jeune ou d\'être masculin. Un TMB plus faible indique généralement une masse musculaire moins importante, un âge plus avancé ou d\'être féminin.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeFr implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dépense Énergétique Totale';
	@override String get description => 'La Dépense Énergétique Totale (DET) est le total des calories que vous brûlez par jour, y compris votre TMB plus les calories provenant de l\'activité physique et des mouvements quotidiens. La DET dépend de votre TMB et de votre niveau d\'activité. Une DET plus élevée signifie que vous brûlez plus de calories au total, généralement en étant plus actif ou en ayant un TMB plus élevé. Une DET plus faible suggère moins d\'activité quotidienne ou un TMB plus bas.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalFr implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Objectif Quotidien';
	@override String get description => 'L\'Objectif Quotidien est votre apport calorique quotidien recommandé basé sur votre DET et votre objectif de poids. Pour perdre du poids, vous consommez moins de calories que votre DET. Pour maintenir votre poids, vous égalisez votre DET. Pour prendre du poids, vous consommez plus de calories que votre DET. Cela vous aide à atteindre votre changement de poids souhaité à un rythme sain.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedFr implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comment l\'estimation est calculée';
	@override String get description => 'Nous calculons votre TDEE (en fonction de votre profil) puis le multiplions par la fraction de la journée écoulée (heures + minutes) / 24 pour estimer les calories brûlées jusqu\'à présent.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conseils professionnels';
	@override String get description => 'N\'utilisez pas cette estimation pour prendre des décisions médicales. Consultez toujours un professionnel de santé ou un diététicien diplômé pour obtenir des conseils personnalisés en matière de gestion du poids.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFr implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lire le total des calories brûlées';
	@override String get description => 'Permet à l\'application de lire votre total de calories brûlées depuis Health Connect.';
	@override String get usage => 'Cette autorisation est utilisée pour afficher votre dépense calorique quotidienne dans l\'application, vous aidant à comprendre votre dépense énergétique totale tout au long de la journée.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadFr implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lire les données nutritionnelles';
	@override String get description => 'Permet à l\'application de lire les données nutritionnelles depuis Health Connect.';
	@override String get usage => 'Cette autorisation permet à l\'application de lire les informations nutritionnelles qui ont pu être enregistrées par d\'autres applications connectées à Health Connect, fournissant une vue complète de votre nutrition.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteFr implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Écrire des données nutritionnelles';
	@override String get description => 'Permet à l\'application d\'écrire des données nutritionnelles dans Health Connect.';
	@override String get usage => 'Cette autorisation permet à l\'application de synchroniser vos repas enregistrés avec Health Connect, rendant vos données nutritionnelles disponibles pour d\'autres applications de santé et de fitness que vous utilisez.';
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
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'onboarding.welcome' => ({required Object appLabel}) => 'Bienvenue dans ${appLabel}',
			'onboarding.subtitle' => 'Votre compagnon personnel en nutrition propulsé par l\'IA',
			'onboarding.getStarted' => 'Commencer',
			'onboarding.features.foodRecognition.title' => 'Reconnaissance Alimentaire Intelligente',
			'onboarding.features.foodRecognition.description' => 'Prenez une photo et laissez l\'IA identifier votre repas',
			'onboarding.features.aiAnalysis.title' => 'Analyse par IA',
			'onboarding.features.aiAnalysis.description' => 'Obtenez des informations nutritionnelles instantanées à partir de vos descriptions',
			'onboarding.features.healthIntegration.title' => 'Intégration Santé',
			'onboarding.features.healthIntegration.description' => 'Connectez-vous à Health Connect pour de meilleurs aperçus',
			'onboarding.gender.title' => 'Quel est votre sexe ?',
			'onboarding.gender.description' => 'Le sexe nous aide à calculer avec précision votre taux métabolique de base (TMB).',
			'onboarding.gender.next' => 'Suivant',
			'onboarding.height.title' => 'Quelle est votre taille ?',
			'onboarding.height.description' => 'Votre taille nous aide à calculer votre IMC et vos besoins énergétiques avec précision.',
			'onboarding.height.metric' => 'Métrique',
			'onboarding.height.imperial' => 'Impérial',
			'onboarding.height.next' => 'Suivant',
			'onboarding.weight.currentTitle' => 'Quel est votre poids actuel ?',
			'onboarding.weight.currentDescription' => 'Votre poids actuel est essentiel pour personnaliser vos objectifs quotidiens.',
			'onboarding.weight.targetTitle' => 'Quel est votre poids cible ?',
			'onboarding.weight.targetDescription' => 'Fixer un poids cible nous aide à déterminer votre plan à long terme.',
			'onboarding.weight.metric' => 'Métrique',
			'onboarding.weight.imperial' => 'Impérial',
			'onboarding.weight.next' => 'Suivant',
			'onboarding.age.title' => 'Quand est votre anniversaire ?',
			'onboarding.age.description' => 'Votre âge nous aide à calculer vos besoins caloriques avec précision.',
			'onboarding.age.next' => 'Suivant',
			'onboarding.bmiScale.underweight' => 'Insuffisance pondérale',
			'onboarding.bmiScale.healthy' => 'Sain',
			'onboarding.bmiScale.overweight' => 'Surpoids',
			'onboarding.bmiScale.obese' => 'Obésité',
			'onboarding.bmiScale.categories.underweight' => 'Insuffisance pondérale',
			'onboarding.bmiScale.categories.healthyWeight' => 'Poids santé',
			'onboarding.bmiScale.categories.overweight' => 'Surpoids',
			'onboarding.bmiScale.categories.obese' => 'Obésité',
			'onboarding.bmiScale.messages.underweight' => 'Nous pouvons vous aider à établir un plan sain pour atteindre un poids équilibré avec des repas riches en nutriments.',
			'onboarding.bmiScale.messages.healthy' => 'Excellent travail ! Vous êtes dans une fourchette saine. Nous vous aiderons à maintenir votre vitalité et vos niveaux d\'énergie.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} simplifiera votre parcours avec le suivi assisté par IA pour vous aider à atteindre votre objectif confortablement.',
			'onboarding.bmiScale.messages.obese' => 'Nous sommes ici pour vous soutenir avec des conseils personnalisés et des stratégies durables pour vos objectifs de santé.',
			'onboarding.weightGoal.title' => 'Quel est votre objectif ?',
			'onboarding.weightGoal.description' => 'Choisissez l\'objectif qui décrit le mieux ce que vous souhaitez réaliser',
			'onboarding.activityLevel.title' => 'Quelle est votre activité ?',
			'onboarding.activityLevel.description' => 'Cela nous aide à calculer plus précisément vos besoins caloriques quotidiens',
			'onboarding.healthConnect.title' => 'Connectez-vous à Health Connect',
			'onboarding.healthConnect.description' => 'Synchronisez vos données de santé pour obtenir de meilleurs aperçus et un suivi automatique des calories',
			'onboarding.healthConnect.automaticTracking.title' => 'Suivi Automatique des Calories',
			'onboarding.healthConnect.automaticTracking.description' => 'Suivez les calories brûlées à partir de vos applications de fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Aperçus des Progrès',
			'onboarding.healthConnect.progressInsights.description' => 'Obtenez des informations détaillées sur vos tendances de santé',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Intégration Transparente',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchronisez les données de vos applications de santé préférées',
			'onboarding.healthConnect.connected' => 'Health Connect Connecté',
			'onboarding.healthConnect.notConnected' => 'Health Connect Non Connecté',
			'onboarding.healthConnect.setup' => 'Configurer Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Passer pour le moment',
			'onboarding.healthConnect.statusConnected' => 'Health Connect est connecté.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect a été connecté avec succès !',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Permission refusée. Veuillez activer les permissions de Health Connect depuis les paramètres de votre téléphone pour ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Erreur lors de la configuration de Health Connect : ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Vous n\'êtes pas seul',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Des recherches montrent que le suivi régulier est le meilleur indicateur de succès à long terme.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Pour un(e) ${age} ans ${gender} cherchant à ${goal}, le suivi régulier est le meilleur indicateur de succès.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} rend le suivi 10 fois plus facile que de le faire manuellement.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Prêt à commencer ?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Prenez une photo de vos repas pour une analyse instantanée',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Consignez vos repas régulièrement pour voir des progrès significatifs',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Suivez vos progrès quotidiennement pour rester motivé',
			'onboarding.reinforcement.trackingSuccess.button' => 'C\'est parti',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individu',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'vous en meilleure santé',
			'onboarding.reinforcement.healthProfile.title' => 'Votre Profil de Santé',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'Selon vos métriques, votre IMC est de ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Finalisons votre profil pour personnaliser votre expérience.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'gagner',
			'onboarding.reinforcement.healthProfile.goalLose' => 'perdre',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Pour atteindre votre objectif, vous devrez ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Vous êtes à votre poids cible ! Nous allons vous aider à le maintenir.',
			'onboarding.reinforcement.healthProfile.button' => 'C\'est parti',
			'onboarding.reinforcement.goalLifestyle.title' => 'Excellente première étape !',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Vous avez fait le premier pas vers ${goalText}. Puisque vous êtes ${activityText}, ${appLabel} ajustera vos objectifs pour correspondre à votre style de vie.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Objectifs caloriques personnalisés',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Détection de repas par IA',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Détails des macronutriments',
			'onboarding.reinforcement.goalLifestyle.button' => 'C\'est parti',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'vos objectifs',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'actif',
			'tabs.dashboard' => 'Tableau de bord',
			'tabs.history' => 'Historique',
			'home.dailyGoal.title' => 'Définir Votre Objectif Journalier',
			'home.dailyGoal.titleSet' => 'Votre Objectif Journalier',
			'home.dailyGoal.description' => 'Prêt à commencer votre parcours de bien-être ? Définissez votre objectif calorique quotidien ci-dessous pour suivre vos progrès.',
			'home.dailyGoal.descriptionSet' => 'Votre boussole est réglée ! Voici votre objectif calorique quotidien pour vous guider.',
			'home.dailyGoal.yourGoal' => 'Votre Objectif',
			'home.dailyGoal.goal' => 'Objectif',
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
			'home.dailySummary.grams' => 'grammes',
			'home.dailySummary.chartAccessibilityLabel' => 'Graphique des macronutriments',
			'home.intakeProgress.title' => 'Répartition des Macros d\'Aujourd\'hui',
			'home.intakeProgress.target' => 'Objectif',
			'home.intakeProgress.current' => 'Actuel',
			'home.intakeHistory.title' => 'Historique des Macronutriments sur 7 Jours',
			'home.intakeHistory.noHistoryYet' => 'Pas encore d\'historique',
			'home.intakeHistory.startLogging' => 'Commencez à enregistrer vos repas pour voir vos\ntendances de macronutriments sur 7 jours ici',
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
			'home.mealSnap.gallery' => 'Galerie',
			'home.connectHealth.title' => 'Synchroniser avec Health Connect',
			'home.connectHealth.description' => 'Synchronisez vos données nutritionnelles avec Health Connect',
			'home.connectHealth.install' => 'Installer',
			'home.connectHealth.connect' => 'Connecter',
			'history.noMeals' => 'Aucun repas enregistré',
			'history.emptyMessage' => 'Prenez une photo de votre dernier repas pour l\'enregistrer ici.',
			'history.today' => 'Aujourd\'hui',
			'history.yesterday' => 'Hier',
			'meal.ohNo' => 'Oh non !',
			'meal.delete' => 'Supprimer',
			'meal.editMeal' => 'Modifier le Repas',
			'meal.addMeal' => 'Ajouter un repas',
			'meal.saveMeal' => 'Enregistrer le Repas',
			'meal.save' => 'Enregistrer',
			'meal.mealName' => 'Nom du repas',
			'meal.mealNameHint' => 'p. ex. : œufs brouillés avec pain grillé',
			'meal.mealQuantity' => 'Quantité de repas',
			'meal.mealQuantityHint' => 'par exemple, 1 bol, 2 tranches',
			'meal.timeOfMeal' => 'Heure du repas',
			'meal.timeOfMealHint' => 'Sélectionnez l\'heure à laquelle vous avez pris votre repas',
			'meal.mealType' => 'Type de repas',
			'meal.nutrition.calories' => 'Calories',
			'meal.nutrition.carbs' => 'Glucides (g)',
			'meal.nutrition.protein' => 'Protéines (g)',
			'meal.nutrition.fat' => 'Graisses (g)',
			'meal.nutrition.fiber' => 'Fibres (g)',
			'meal.deleteConfirmation.title' => 'Supprimer le Repas',
			'meal.deleteConfirmation.message' => 'Êtes-vous sûr de vouloir supprimer cette entrée de repas ?',
			'meal.deleteConfirmation.cancel' => 'Annuler',
			'meal.deleteConfirmation.delete' => 'Supprimer',
			'meal.addedToLog' => 'Repas ajouté à votre journal !',
			'meal.couldNotAdd' => ({required Object error}) => 'Impossible d\'ajouter le repas : ${error}',
			'meal.savedSuccessfully' => 'Repas ajouté avec succès !',
			'meal.updatedSuccessfully' => 'Repas mis à jour avec succès !',
			'meal.errorSaving' => ({required Object error}) => 'Erreur lors de l\'enregistrement du repas : ${error}',
			'meal.removedFromFavorites' => 'Retiré des favoris !',
			'meal.savedAsFavorite' => 'Repas enregistré comme favori !',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Impossible de mettre à jour le favori : ${error}',
			'meal.failedToProcess' => ({required Object error}) => 'Échec du traitement : ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Échec du traitement de l\'image : ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Erreur de compression de l\'image : ${error}',
			'meal.failedToSave' => 'Échec de l\'enregistrement des données. Veuillez réessayer.',
			'meal.skip' => 'Passer',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Question ${current} sur ${total}',
			'meal.variation.noVariationsAvailable' => 'Aucune variation disponible',
			'favorites.title' => 'Favoris',
			'favorites.empty' => 'Aucun repas préféré pour le moment.',
			'profile.title' => 'Profil',
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
			'profile.targetWeight' => 'Poids Cible',
			'profile.activityLevel' => 'Niveau d\'Activité',
			'profile.healthMetrics' => 'Métriques de Santé',
			'profile.notSet' => 'Non défini',
			'profile.years' => 'ans',
			'profile.updatedSuccessfully' => 'Profil mis à jour avec succès !',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Objectif Quotidien',
			'profile.calculatedValues.calPerDay' => 'cal/jour',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Score de Santé',
			'healthScore.whyThisScore' => 'Pourquoi ce score ?',
			'healthScore.note' => 'Ce score est une estimation de l\'IA basée sur les ingrédients identifiés et la densité nutritionnelle. Consultez toujours un professionnel pour des conseils diététiques.',
			'healthScore.unhealthy' => 'Pas sain',
			'healthScore.healthy' => 'Sain',
			'healthScore.neutral' => 'Neutre',
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
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Métrique (cm)',
			'editProfile.imperialFtIn' => 'Impérial (ft/in)',
			'editProfile.metricKg' => 'Métrique (kg)',
			'editProfile.imperialLbs' => 'Impérial (lbs)',
			'editProfile.genders.male' => 'Homme',
			'editProfile.genders.female' => 'Femme',
			'editProfile.genders.other' => 'Autre',
			'editProfile.weightGoals.loseWeight.name' => 'Perdre du Poids',
			'editProfile.weightGoals.loseWeight.description' => 'Créer un déficit calorique pour perdre du poids',
			'editProfile.weightGoals.maintainWeight.name' => 'Maintenir le Poids',
			'editProfile.weightGoals.maintainWeight.description' => 'Maintenir votre poids actuel',
			'editProfile.weightGoals.gainWeight.name' => 'Gagner du Poids',
			'editProfile.weightGoals.gainWeight.description' => 'Créer un surplus calorique pour gagner du poids',
			'editProfile.activityLevels.sedentary.name' => 'Sédentaire',
			'editProfile.activityLevels.sedentary.description' => 'Peu ou pas d\'exercice',
			'editProfile.activityLevels.lightlyActive.name' => 'Légèrement Actif',
			'editProfile.activityLevels.lightlyActive.description' => 'Exercice léger 1-3 jours/semaine',
			'editProfile.activityLevels.moderatelyActive.name' => 'Modérément Actif',
			'editProfile.activityLevels.moderatelyActive.description' => 'Exercice modéré 3-5 jours/semaine',
			'editProfile.activityLevels.veryActive.name' => 'Très Actif',
			'editProfile.activityLevels.veryActive.description' => 'Exercice intense 6-7 jours/semaine',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrêmement Actif',
			'editProfile.activityLevels.extremelyActive.description' => 'Exercice très intense, travail physique',
			'settings.title' => 'Paramètres',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOCALISATION',
			'settings.sections.notifications' => 'NOTIFICATIONS',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'ASSISTANCE & JURIDIQUE',
			'settings.sections.about' => 'À PROPOS',
			'settings.sections.dangerZone' => 'ZONE DANGEREUSE',
			'settings.sections.developer' => 'DÉVELOPPEUR',
			'settings.editProfile.title' => 'Modifier le Profil',
			'settings.editProfile.subtitle' => 'Mettez à jour vos informations personnelles',
			'settings.language.title' => 'Langue',
			'settings.language.subtitle' => 'Choisissez votre langue préférée',
			'settings.language.searchHint' => 'Rechercher des langues...',
			'settings.language.noResults' => 'Aucun résultat trouvé',
			'settings.heightUnit.title' => 'Unité de Taille',
			'settings.weightUnit.title' => 'Unité de Poids',
			'settings.mealReminders.title' => 'Rappels de Repas',
			'settings.mealReminders.subtitle' => 'Restez sur la bonne voie avec des alertes temporisées',
			'settings.theme.title' => 'Thème',
			'settings.theme.light' => 'Clair',
			'settings.theme.dark' => 'Sombre',
			'settings.theme.system' => 'Système',
			'settings.sendFeedback.title' => 'Envoyer un Retour',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Aidez-nous à améliorer ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Retour sur l\'application ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Veuillez fournir vos commentaires ci-dessous :',
			'settings.sendFeedback.appVersion' => 'Version de l\'application',
			'settings.sendFeedback.device' => 'Appareil',
			'settings.sendFeedback.osVersion' => 'Version du système d\'exploitation',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => 'Effacer Toutes les Données',
			'settings.clearAllData.subtitle' => 'Supprimez irréversiblement toutes vos informations',
			'settings.clearAllData.confirmationTitle' => 'Effacer Toutes les Données ?',
			'settings.clearAllData.confirmationMessage' => 'Cette action ne peut pas être annulée. Tous vos repas enregistrés, favoris et paramètres de profil seront définitivement supprimés.',
			'settings.clearAllData.cancel' => 'Annuler',
			'settings.clearAllData.clearEverything' => 'Tout Effacer',
			'settings.debugOptions.title' => 'Options de Débogage',
			'settings.developerModeEnabled' => 'Mode développeur activé !',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Voir et gérer les autorisations',
			'settings.healthConnect.unavailable.title' => 'Health Connect indisponible',
			'settings.healthConnect.unavailable.description' => 'Health Connect n\'est pas disponible sur cet appareil. Veuillez installer Health Connect depuis le Play Store (Android 9+) ou mettre à jour vers Android 14+.',
			'settings.healthConnect.permissions.title' => 'Autorisations',
			'settings.healthConnect.permissions.description' => 'Les autorisations suivantes sont requises pour fournir l\'intégration de Health Connect :',
			'settings.healthConnect.permissions.granted' => 'Accordé',
			'settings.healthConnect.permissions.notGranted' => 'Non accordé',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Lire le total des calories brûlées',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Permet à l\'application de lire votre total de calories brûlées depuis Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Cette autorisation est utilisée pour afficher votre dépense calorique quotidienne dans l\'application, vous aidant à comprendre votre dépense énergétique totale tout au long de la journée.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Lire les données nutritionnelles',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Permet à l\'application de lire les données nutritionnelles depuis Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Cette autorisation permet à l\'application de lire les informations nutritionnelles qui ont pu être enregistrées par d\'autres applications connectées à Health Connect, fournissant une vue complète de votre nutrition.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Écrire des données nutritionnelles',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Permet à l\'application d\'écrire des données nutritionnelles dans Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Cette autorisation permet à l\'application de synchroniser vos repas enregistrés avec Health Connect, rendant vos données nutritionnelles disponibles pour d\'autres applications de santé et de fitness que vous utilisez.',
			'settings.healthConnect.managePermissions' => 'Gérer les autorisations',
			'settings.healthConnect.openSettings' => 'Ouvrir les paramètres de Health Connect',
			'settings.healthConnect.requestPermissions' => 'Demander des autorisations',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'La demande d’autorisations a été annulée ou a échoué. Veuillez réessayer ou accorder les autorisations manuellement dans les paramètres de Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Impossible de demander les autorisations. Veuillez réessayer ou accorder les autorisations manuellement dans les paramètres de Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'À Propos',
			'settings.about.tagline' => 'Prise de conscience des calories rapide, gratuite et respectueuse de la vie privée',
			'settings.about.ourStory.title' => 'Notre Histoire',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} est né d\'une frustration simple : la plupart des applications de suivi des calories sont soit trop compliquées, nécessitent une saisie manuelle constante, facturent des frais d\'abonnement élevés, ou compromettent la vie privée.\n\nEn tant que développeur indépendant, je voulais créer quelque chose de plus simple et d\'équitable : une application qui utilise l\'IA pour réduire l\'effort, reste rapide et gratuite à utiliser, et traite vos données de santé avec respect.\n\n${appLabel} est l\'application que je souhaite qu\'il existe : pas de comptes, pas de suivi, pas de publicités — juste des informations claires et pratiques et vos objectifs de santé.',
			'settings.about.privacy.title' => 'Votre Vie Privée Est Importante',
			'settings.about.privacy.description' => 'La vie privée n\'est pas une réflexion après coup — c\'est un principe de conception. Voici ce que cela signifie en pratique :',
			'settings.about.privacy.noAccounts' => 'Aucun compte requis\nUtilisez l\'application immédiatement. Pas d\'inscriptions, pas d\'identités.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Pas de suivi comportemental\n${appLabel} ne surveille pas votre activité, ne construit pas de profils d\'utilisation, et ne vous suit pas à travers les applications ou les sites web.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Sans publicité par conception\n${appLabel} est conçu pour fonctionner sans publicités ni monétisation basée sur les données.',
			'settings.about.privacy.noDataSelling' => 'Pas de vente de données\nVos données de santé ne sont jamais vendues ni partagées avec des tiers.',
			'settings.about.privacy.localStorage' => 'Stockage prioritaire local\nVos données restent sur votre appareil.',
			'settings.about.privacy.privacyPolicy' => 'Politique de confidentialité',
			'settings.about.developer.title' => 'Créé par un Développeur Indépendant',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} est construit et maintenu par un seul développeur indépendant qui se concentre sur la création de logiciels de santé respectueux de la vie privée et apaisants.\n\nLes retours sont lus personnellement et aident à orienter le développement de l\'application.',
			'settings.about.developer.website' => 'Site Web',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Vous Aimez ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Vos retours aident à améliorer ${appLabel} pour tout le monde.',
			'settings.about.feedback.rateApp' => 'Évaluer sur le Play Store',
			'settings.about.feedback.sendFeedback' => 'Envoyer des retours d\'information',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
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
			'reminders.unknown' => 'Inconnu',
			'reminders.change' => 'Changer',
			'reminders.enableNotifications' => 'Activer les Notifications',
			'reminders.skipForNow' => 'Ignorer pour le moment',
			'reminders.saveChanges' => 'Enregistrer les Modifications',
			'reminders.enabledSuccessfully' => 'Notifications activées avec succès !',
			'reminders.permissionDenied' => 'Autorisation de notification refusée',
			'reminders.errorEnabling' => ({required Object error}) => 'Erreur lors de l\'activation des notifications : ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Erreur lors de la finalisation de la configuration : ${error}',
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
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} fournit des informations nutritionnelles estimées. L\'exactitude dépend de vos saisies et des variations alimentaires. À utiliser comme guide, pas comme source définitive. Consultez un professionnel pour des conseils diététiques personnalisés.',
			'disclaimer.snap.portionSize.title' => 'Taille de Portion',
			'disclaimer.snap.portionSize.description' => 'L\'exactitude des estimations repose beaucoup sur votre évaluation correcte de la taille de la portion.',
			'disclaimer.snap.preparationMethods.title' => 'Méthodes de Préparation',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Les méthodes de cuisson peuvent modifier de manière significative la composition nutritionnelle des aliments. Les estimations de ${appLabel} peuvent ne pas toujours tenir compte de ces variations.',
			'disclaimer.snap.ingredients.title' => 'Ingrédients',
			'disclaimer.snap.ingredients.description' => 'Les plats complexes avec de nombreux ingrédients cachés peuvent conduire à des estimations moins précises.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitations de la Base de Données',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'La base de données alimentaire de ${appLabel} est vaste mais peut ne pas inclure chaque aliment ou variation existante.',
			'disclaimer.weightEstimate.title' => 'À Propos de l\'Estimation de Poids',
			'disclaimer.weightEstimate.description' => 'Le changement de poids projeté est une estimation théorique basée sur le simple modèle calorie-in vs. calorie-out. Il est destiné uniquement à des fins de motivation, pas comme une prédiction de votre poids réel.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Précision des Calories',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Cette estimation n\'est aussi précise que votre suivi des apports et des dépenses caloriques. Un enregistrement imprécis résultera en une projection inexacte.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Facteurs Biologiques',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'La perte/gain de poids réel est influencée par le métabolisme, les hormones, le sommeil, le stress, l\'hydratation et d\'autres facteurs individuels que ${appLabel} ne peut pas mesurer.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Poids de l\'Eau & Fluctuations',
			'disclaimer.weightEstimate.waterWeight.description' => 'Le poids quotidien normal peut fluctuer considérablement en raison de la rétention d\'eau, de la digestion et du timing. L\'estimation ne tient pas compte de ces changements quotidiens.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Conseils Professionnels',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Ne pas utiliser cette estimation pour prendre des décisions médicales. Consultez toujours un professionnel de la santé ou un diététicien agréé pour des conseils personnalisés sur la gestion du poids.',
			'disclaimer.healthMetrics.description' => 'Ces indicateurs vous aident à comprendre les besoins énergétiques de votre corps et à guider vos objectifs nutritionnels.',
			'disclaimer.healthMetrics.bmr.title' => 'TMB',
			'disclaimer.healthMetrics.bmr.description' => 'Le Taux Métabolique Basal (TMB) est le nombre de calories que votre corps brûle au repos pour maintenir les fonctions essentielles telles que la respiration et la circulation. Le TMB dépend de votre âge, sexe, taille et poids. Un TMB plus élevé signifie que votre corps brûle naturellement plus de calories au repos, souvent en raison d\'une masse musculaire plus importante, d\'un âge plus jeune ou d\'être masculin. Un TMB plus faible indique généralement une masse musculaire moins importante, un âge plus avancé ou d\'être féminin.',
			'disclaimer.healthMetrics.tdee.title' => 'Dépense Énergétique Totale',
			'disclaimer.healthMetrics.tdee.description' => 'La Dépense Énergétique Totale (DET) est le total des calories que vous brûlez par jour, y compris votre TMB plus les calories provenant de l\'activité physique et des mouvements quotidiens. La DET dépend de votre TMB et de votre niveau d\'activité. Une DET plus élevée signifie que vous brûlez plus de calories au total, généralement en étant plus actif ou en ayant un TMB plus élevé. Une DET plus faible suggère moins d\'activité quotidienne ou un TMB plus bas.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Objectif Quotidien',
			'disclaimer.healthMetrics.dailyGoal.description' => 'L\'Objectif Quotidien est votre apport calorique quotidien recommandé basé sur votre DET et votre objectif de poids. Pour perdre du poids, vous consommez moins de calories que votre DET. Pour maintenir votre poids, vous égalisez votre DET. Pour prendre du poids, vous consommez plus de calories que votre DET. Cela vous aide à atteindre votre changement de poids souhaité à un rythme sain.',
			'disclaimer.calorieExpenditure.title' => 'Estimation de la dépense calorique',
			'disclaimer.calorieExpenditure.description' => 'Lorsque les données Health Connect ne sont pas disponibles, nous estimons les calories brûlées aujourd\'hui en utilisant votre métabolisme de base (BMR) et votre dépense énergétique quotidienne totale (TDEE), ajustée à la portion de la journée déjà écoulée.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Comment l\'estimation est calculée',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Nous calculons votre TDEE (en fonction de votre profil) puis le multiplions par la fraction de la journée écoulée (heures + minutes) / 24 pour estimer les calories brûlées jusqu\'à présent.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Conseils professionnels',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'N\'utilisez pas cette estimation pour prendre des décisions médicales. Consultez toujours un professionnel de santé ou un diététicien diplômé pour obtenir des conseils personnalisés en matière de gestion du poids.',
			'common.close' => 'Fermer',
			'common.kContinue' => 'Continuer',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Vous aimez ${appLabel} ?',
			'feedbackRating.yes' => 'Oui, je l\'apprécie',
			'feedbackRating.no' => 'Pas vraiment',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Une brève évaluation aide les autres à découvrir ${appLabel} et permet au développement de continuer. Pourriez-vous prendre un instant pour en laisser une ?',
			'feedbackRating.shareFeedbackViaEmail' => 'Vos retours façonnent la suite — nous lisons chaque message. Souhaitez-vous partager vos impressions par e-mail ?',
			'feedbackRating.rateCta' => 'Noter sur le Play Store',
			'feedbackRating.maybeLater' => 'Peut-être plus tard',
			'feedbackRating.sendFeedback' => 'Donnez votre avis',
			'feedbackRating.noThanks' => 'Non merci',
			'feedbackRating.aboutUsDescription' => 'Conçu avec soin par une petite équipe. Nous privilégions la confidentialité, la simplicité et l\'accompagnement pour vous aider à adopter de meilleures habitudes alimentaires.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Vous voulez savoir qui se cache derrière ${appLabel} ? Consultez ',
			'feedbackRating.aboutUsLinkLabel' => 'À propos',
			'feedbackRating.thankYouMessage' => 'Merci ! Nous redemanderons une autre fois.',
			'errors.loadingProfileData' => 'Erreur de chargement des données du profil',
			'errors.somethingWentWrong' => 'Une erreur s\'est produite.',
			'debug.title' => 'Options de Débogage',
			'debug.searchHint' => 'Rechercher des options...',
			'debug.sections.notifications' => 'Notifications',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.wearOs' => 'Wear OS',
			'debug.sections.foodApiTests' => 'Tests de l\'API Food',
			'debug.sections.profileApiTests' => 'Tests de l\'API de profil',
			'debug.sections.feedback' => 'Commentaires',
			'debug.sections.dataReset' => 'Réinitialisation des données',
			'debug.sections.appInfo' => 'Informations sur l\'application',
			'debug.sections.shorebird' => 'Shorebird',
			'debug.showActiveNotifications' => 'Afficher les Notifications Actives',
			'debug.scheduleTestNotification' => 'Planifier une Notification de Test (10s)',
			'debug.triggerBreakfastNotification' => 'Déclencher la Notification du Petit-Déjeuner',
			'debug.cancelAllNotifications' => 'Annuler Toutes les Notifications',
			'debug.activeNotifications' => 'Notifications Actives',
			'debug.noTitle' => 'Pas de titre',
			'debug.noBody' => 'Pas de contenu',
			'debug.fetchTodaysSteps' => 'Récupérer les pas d\'aujourd\'hui',
			'debug.fetchTodaysCalories' => 'Récupérer les calories d\'aujourd\'hui',
			'debug.fetchLatestWeight' => 'Récupérer le Dernier Poids',
			'debug.fetchLatestHeight' => 'Récupérer la Dernière Taille',
			'debug.writeTestWeight' => 'Écrire le Poids de Test (70kg)',
			'debug.writeTestHeight' => 'Écrire la Taille de Test (175cm)',
			'debug.syncLast7Days' => 'Synchroniser les 7 Derniers Jours',
			'debug.sync7DaysTitle' => 'Synchronisation sur 7 Jours',
			'debug.checkCurrentLocale' => 'Vérifier la Locale Actuelle',
			'debug.currentLocale' => 'Paramètres régionaux actuels',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => 'Langue : ${languageCode}\nPays : ${countryCode}\nSystème d\'unités : ${unitSystem}',
			'debug.latestWeight' => 'Dernier poids',
			'debug.latestHeight' => 'Dernière hauteur',
			'debug.todaysCalories' => 'Calories d\'aujourd\'hui',
			'debug.totalCaloriesBurned' => ({required Object calories}) => 'Total des calories brûlées : ${calories}',
			'debug.syncSuccess' => ({required Object count}) => 'Récupération réussie de ${count} points de données pour les Pas, les Calories et le Poids au cours des 7 derniers jours.',
			'debug.noWeightData' => 'Aucune donnée de poids trouvée au cours des 30 derniers jours.',
			'debug.noHeightData' => 'Aucune donnée de taille trouvée au cours de la dernière année.',
			'debug.noCalorieData' => 'Aucune donnée de calories trouvée pour aujourd\'hui.',
			'debug.weightWritten' => 'Poids de test enregistré avec succès (70kg).',
			'debug.weightWriteFailed' => 'Échec de l\'enregistrement du poids de test.',
			'debug.heightWritten' => 'Hauteur de test enregistrée avec succès (175cm).',
			'debug.heightWriteFailed' => 'Échec de l\'enregistrement de la hauteur de test.',
			'debug.noNotifications' => 'Aucune notification active.',
			'debug.testNotificationScheduled' => 'Notification de test programmée dans 10 secondes.',
			'debug.testNotificationBody' => 'Ceci est une notification de test programmée dans 10 secondes.',
			'debug.breakfastNotificationTriggered' => 'Notification de petit-déjeuner déclenchée.',
			'debug.allNotificationsCancelled' => 'Toutes les notifications annulées.',
			'debug.fetchingData' => 'Récupération des données des 7 derniers jours...',
			'debug.id' => ({required Object id}) => 'ID : ${id}',
			'debug.showFeedbackRatingSheet' => 'Afficher la fenêtre de commentaires/notation',
			'debug.clearUserPreferences' => 'Effacer les préférences utilisateur',
			'debug.clearUserPreferencesConfirmationTitle' => 'Effacer les préférences utilisateur ?',
			'debug.clearUserPreferencesConfirmationMessage' => 'Le thème, la langue et les préférences de commentaires seront réinitialisés. Les repas et le profil ne seront pas affectés.',
			'debug.clearUserProfile' => 'Effacer le profil utilisateur',
			'debug.clearUserProfileConfirmationTitle' => 'Effacer le profil utilisateur ?',
			'debug.clearUserProfileConfirmationMessage' => 'Les données de votre profil (objectif quotidien, taille, poids, etc.) seront effacées. Les repas et les préférences ne seront pas affectés.',
			'debug.clear' => 'Effacer',
			'debug.cancel' => 'Annuler',
			'debug.checkWatchConnection' => 'Vérifier la connexion à la montre',
			'debug.sendTestMessage' => 'Envoyer un message de test',
			'debug.sendTestMessageSubtitle' => 'Envoyer un message de test simple à la montre',
			'debug.sendTestMealData' => 'Envoyer des données de repas de test',
			'debug.sendTestMealDataSubtitle' => 'Envoyer des données de repas d\'exemple à la montre',
			'debug.sendTestCalorieGoal' => 'Envoyer un objectif calorique de test',
			'debug.sendTestCalorieGoalSubtitle' => 'Envoyer un objectif calorique d\'exemple à la montre',
			'debug.viewReceivedMessages' => 'Afficher les messages reçus',
			'debug.viewReceivedMessagesSubtitle' => 'Afficher les messages reçus depuis la montre',
			'debug.watchConnected' => 'Montre connectée ✓',
			'debug.device' => 'Appareil',
			'debug.nearby' => 'À proximité',
			'debug.yes' => 'Oui',
			'debug.no' => 'Non',
			'debug.connectedDevices' => 'Appareils connectés',
			'debug.deviceInfoUnavailable' => '(Informations sur l\'appareil indisponibles)',
			'debug.unknownDevice' => 'Appareil inconnu',
			'debug.watchNotConnected' => 'Montre non connectée ✗',
			'debug.watchNotConnectedHint' => 'Assurez-vous :\n• Les deux appareils sont appairés\n• L\'application de la montre est en cours d\'exécution\n• Les deux applications sont en mode débogage/staging',
			'debug.watchConnection' => 'Connexion à la montre',
			'debug.errorCheckingConnection' => ({required Object error}) => 'Erreur lors de la vérification de la connexion : ${error}',
			'debug.helloFromPhone' => 'Bonjour depuis le téléphone !',
			'debug.testMessageSentSuccess' => 'Message de test envoyé avec succès !',
			'debug.testMessageFailed' => 'Échec de l\'envoi du message de test. Vérifiez la connexion à la montre.',
			'debug.errorSendingMessage' => ({required Object error}) => 'Erreur lors de l\'envoi du message : ${error}',
			'debug.testMeal' => 'Repas de test',
			'debug.testMealDataSentSuccess' => 'Données du repas de test envoyées avec succès !',
			'debug.failedToSendMealData' => 'Échec de l\'envoi des données du repas. Vérifiez la connexion à la montre.',
			'debug.errorSendingMealData' => ({required Object error}) => 'Erreur lors de l\'envoi des données du repas : ${error}',
			'debug.testCalorieGoalSentSuccess' => 'Objectif calorique de test envoyé avec succès !',
			'debug.failedToSendCalorieGoal' => 'Échec de l\'envoi de l\'objectif calorique. Vérifiez la connexion à la montre.',
			'debug.errorSendingCalorieGoal' => ({required Object error}) => 'Erreur lors de l\'envoi de l\'objectif calorique : ${error}',
			'debug.testAnalyzeImage' => 'Tester l\'analyse d\'image',
			'debug.testAnalyzeImageSubtitle' => 'Téléverser une image de test préconfigurée',
			'debug.testDetectImage' => 'Tester la détection d\'image',
			'debug.testDetectImageSubtitle' => 'Détecter le repas depuis une URL d\'image',
			_ => null,
		} ?? switch (path) {
			'debug.detectImageFromGallery' => 'Détecter une image depuis la galerie',
			'debug.detectImageFromGallerySubtitle' => 'Sélectionner une image, la téléverser sur le bucket et estimer les calories',
			'debug.testDetectText' => 'Tester la détection de texte',
			'debug.testDetectTextSubtitle' => 'Détecter un repas à partir d\'une description textuelle',
			'debug.testMealLoggingWithVariations' => 'Tester l\'enregistrement de repas avec variations',
			'debug.testMealLoggingWithVariationsSubtitle' => 'Tester le flux complet d\'enregistrement de repas avec variations',
			'debug.mockMealWithVariations' => 'Repas simulé avec variations',
			'debug.mockMealWithVariationsSubtitle' => 'Aperçu de l\'interface des variations + fiche conseils sans enregistrer',
			'debug.mockMealName' => 'Poulet grillé avec riz et légumes',
			'debug.mockTip' => 'Ceci est un conseil fictif pour l\'aperçu de l\'interface. Le repas n\'est pas enregistré.',
			'debug.mockMealDescription' => 'Repas simulé pour le débogage',
			'debug.portionSizeQuestion' => 'Quelle était la taille de la portion ?',
			'debug.extraSidesQuestion' => 'Accompagnements supplémentaires ?',
			'debug.optionSmall' => 'Petit',
			'debug.optionMedium' => 'Moyen',
			'debug.optionLarge' => 'Grand',
			'debug.optionNone' => 'Aucun',
			'debug.optionSideSalad' => 'Salade d\'accompagnement',
			'debug.optionBreadRoll' => 'Petit pain',
			'debug.testingAnalyzeImage' => 'Test de l\'API analyzeImage...',
			'debug.testingDetectImage' => 'Test de l\'API detectImage...',
			'debug.testingDetectText' => 'Test de l\'API detectText...',
			'debug.selectingImageFromGallery' => 'Sélection de l\'image depuis la galerie...',
			'debug.noImageSelected' => 'Aucune image sélectionnée',
			'debug.compressingImage' => 'Compression de l\'image...',
			'debug.uploadingImageAndDetecting' => 'Téléversement de l\'image vers le bucket et détection du repas...',
			'debug.testingMealLoggingFlow' => 'Test du flux d\'enregistrement du repas avec variations...',
			'debug.testUpdateProfile' => 'Tester la mise à jour du profil',
			'debug.testUpdateProfileSubtitle' => 'Envoyer (POST) un profil d\'exemple au backend',
			'debug.testingProfileApi' => 'Test de l\'API de profil en cours...',
			'debug.profileUpdateSuccess' => 'L\'API de profil a répondu avec succès',
			'debug.profileUpdateFailed' => ({required Object error}) => 'Erreur de l\'API de profil : ${error}',
			'debug.noMealIdentifiedInResponse' => 'Aucun repas identifié dans la réponse',
			'debug.mealIdentified' => 'Repas identifié',
			'debug.confidence' => 'Confiance',
			'debug.tip' => 'Conseil',
			'debug.mealName' => 'Nom du repas',
			'debug.calories' => 'Calories',
			'debug.protein' => 'Protéines',
			'debug.carbs' => 'Glucides',
			'debug.fat' => 'Lipides',
			'debug.noMealInfo' => 'Pas d\'informations sur le repas',
			'debug.na' => 'N/A',
			'debug.analyzeImageResult' => 'Résultat de l\'analyse d\'image',
			'debug.detectImageResult' => 'Résultat de la détection d\'image',
			'debug.detectImageFromGalleryResult' => 'Résultat de la détection depuis la galerie',
			'debug.detectTextResult' => 'Résultat de la détection de texte',
			'debug.errorGeneric' => ({required Object error}) => 'Erreur : ${error}',
			'debug.variationsCount' => 'Variations',
			'debug.userPreferencesCleared' => 'Préférences utilisateur effacées',
			'debug.userProfileCleared' => 'Profil utilisateur effacé',
			'debug.checkForUpdate' => 'Vérifier les mises à jour',
			'debug.showPatchNumber' => 'Afficher le numéro de patch',
			'debug.showUpdateAvailable' => 'Afficher \'mise à jour disponible\'',
			'debug.updateAvailable' => 'Mise à jour disponible',
			'debug.upToDate' => 'À jour',
			'debug.shorebirdUnavailable' => 'Shorebird n\'est pas disponible dans cet environnement.',
			'debug.patchNumberLabel' => 'Numéro du patch',
			'debug.noPatchInstalled' => 'Aucun patch installé',
			'debug.todaysSteps' => 'Pas aujourd\'hui',
			'debug.stepsLabel' => 'Pas',
			'debug.weightLabel' => ({required Object value}) => 'Poids : ${value} kg',
			'debug.heightLabel' => ({required Object value}) => 'Taille : ${value} cm',
			'debug.receivedMessagesFromWatch' => 'Messages reçus depuis la montre',
			'debug.noMessagesReceivedYet' => 'Aucun message reçu pour le moment.\n\nEnvoyez des données de test depuis la montre pour voir les messages ici.',
			'debug.messagesCleared' => 'Messages effacés',
			'health.syncFailed' => 'Échec de la synchronisation avec Health Connect',
			'health.mealSynced' => 'Repas synchronisé avec Health Connect',
			_ => null,
		};
	}
}
