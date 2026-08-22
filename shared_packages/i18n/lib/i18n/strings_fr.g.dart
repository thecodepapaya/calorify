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
	@override late final _TranslationsErrorsFr errors = _TranslationsErrorsFr._(_root);
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
	@override late final _TranslationsLocalNutritionPhase4Fr localNutritionPhase4 = _TranslationsLocalNutritionPhase4Fr._(_root);
	@override late final _TranslationsCommonFr common = _TranslationsCommonFr._(_root);
	@override late final _TranslationsFeedbackRatingFr feedbackRating = _TranslationsFeedbackRatingFr._(_root);
	@override late final _TranslationsHealthFr health = _TranslationsHealthFr._(_root);
}

// Path: errors
class _TranslationsErrorsFr implements TranslationsErrorsEn {
	_TranslationsErrorsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Vous avez soumis trop de requêtes. Veuillez patienter un instant avant de réessayer.';
	@override String get networkError => 'Erreur réseau. Veuillez vérifier votre connexion Internet.';
	@override String get unknownError => 'Quelque chose s\'est mal passé. Veuillez réessayer plus tard.';
	@override String get loadingProfileData => 'Erreur lors du chargement des données du profil';
	@override String get somethingWentWrong => 'Quelque chose s\'est mal passé.';
	@override String get retry => 'Réessayer';
}

// Path: onboarding
class _TranslationsOnboardingFr implements TranslationsOnboardingEn {
	_TranslationsOnboardingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bienvenue dans ${appLabel}';
	@override String get subtitle => 'Votre compagnon nutritionnel personnel alimenté par AI';
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
	@override late final _TranslationsHomeAiSummaryFr aiSummary = _TranslationsHomeAiSummaryFr._(_root);
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
	@override String get editMeal => 'Modifier le repas';
	@override String get addMeal => 'Ajouter un repas';
	@override String get saveMeal => 'Enregistrer le repas';
	@override String get save => 'Enregistrer';
	@override String get mealName => 'Nom du repas';
	@override String get mealNameHint => 'ex. Œufs brouillés avec toast';
	@override String get nameRequired => 'Donnez un nom au repas avant de l\'enregistrer.';
	@override String get mealQuantity => 'Quantité du repas';
	@override String get mealQuantityHint => 'ex. 1 bol, 2 tranches';
	@override String get timeOfMeal => 'Heure du repas';
	@override String get timeOfMealHint => 'Sélectionnez l\'heure à laquelle vous avez mangé';
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
	@override String get unfavorite => 'Retirer des favoris';
	@override String couldNotUpdateFavorite({required Object error}) => 'Impossible de mettre à jour le favori : ${error}';
	@override String get feedbackThanks => 'Merci pour votre retour !';
	@override String get reanalysisUpdated => 'Analyse du repas mise à jour en fonction de votre retour.';
	@override String failedToProcess({required Object error}) => 'Échec du traitement : ${error}';
	@override String failedToProcessImage({required Object error}) => 'Échec du traitement de l\'image : ${error}';
	@override String errorCompressingImage({required Object error}) => 'Erreur lors de la compression de l\'image : ${error}';
	@override String get failedToSave => 'Échec de l\'enregistrement des données. Veuillez réessayer.';
	@override String get skip => 'Passer';
	@override late final _TranslationsMealQuestionFlowFr questionFlow = _TranslationsMealQuestionFlowFr._(_root);
	@override late final _TranslationsMealAnalysisFr analysis = _TranslationsMealAnalysisFr._(_root);
	@override late final _TranslationsMealLocalInferenceFr localInference = _TranslationsMealLocalInferenceFr._(_root);
	@override late final _TranslationsMealFeedbackFr feedback = _TranslationsMealFeedbackFr._(_root);
}

// Path: favorites
class _TranslationsFavoritesFr implements TranslationsFavoritesEn {
	_TranslationsFavoritesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoris';
	@override String get empty => 'Aucun repas favori pour le moment.';
	@override String get searchPlaceholder => 'Rechercher des repas favoris';
	@override String get searchEmptyTitle => 'Aucun favori ne correspond à votre recherche';
	@override String get searchEmptySubtitle => 'Essayez un autre nom de repas, quantité ou type de repas.';
	@override String get sortLabel => 'Trier les favoris';
	@override String get undo => 'Annuler';
	@override String removed({required Object name}) => 'Retiré ${name} des favoris';
	@override late final _TranslationsFavoritesSortOptionsFr sortOptions = _TranslationsFavoritesSortOptionsFr._(_root);
}

// Path: profile
class _TranslationsProfileFr implements TranslationsProfileEn {
	_TranslationsProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Aucune donnée de profil trouvée';
	@override String get yourProfile => 'Votre profil';
	@override String get viewAndManage => 'Voir et gérer vos informations de santé';
	@override late final _TranslationsProfileSectionsFr sections = _TranslationsProfileSectionsFr._(_root);
	@override String get gender => 'Genre';
	@override String get height => 'Taille';
	@override String get weight => 'Poids';
	@override String get age => 'Âge';
	@override String get weightGoal => 'Objectif de poids';
	@override String get targetWeight => 'Poids cible';
	@override String get activityLevel => 'Niveau d\'activité';
	@override String get healthMetrics => 'Indicateurs de santé';
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
	@override String get title => 'Score de santé';
	@override String get whyThisScore => 'Pourquoi ce score ?';
	@override String get note => 'Ce score est une estimation AI basée sur les ingrédients identifiés et la densité nutritionnelle. Consultez toujours un professionnel pour des conseils diététiques personnalisés.';
	@override String get unhealthy => 'Peu sain';
	@override String get healthy => 'Sain';
	@override String get neutral => 'Neutre';
}

// Path: editProfile
class _TranslationsEditProfileFr implements TranslationsEditProfileEn {
	_TranslationsEditProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifier le profil';
	@override late final _TranslationsEditProfileSectionsFr sections = _TranslationsEditProfileSectionsFr._(_root);
	@override String get gender => 'Genre';
	@override String get dateOfBirth => 'Date de naissance';
	@override String get height => 'Taille';
	@override String get weight => 'Poids';
	@override String get weightGoal => 'Objectif de poids';
	@override String get activityLevel => 'Niveau d\'activité';
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
	@override late final _TranslationsSettingsLocalInferenceFr localInference = _TranslationsSettingsLocalInferenceFr._(_root);
	@override late final _TranslationsSettingsThemeFr theme = _TranslationsSettingsThemeFr._(_root);
	@override late final _TranslationsSettingsSendFeedbackFr sendFeedback = _TranslationsSettingsSendFeedbackFr._(_root);
	@override late final _TranslationsSettingsExportMealHistoryFr exportMealHistory = _TranslationsSettingsExportMealHistoryFr._(_root);
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
	@override String get description => 'Recevez des rappels subtils pour enregistrer vos repas et rester régulier dans vos objectifs nutritionnels';
	@override String get notificationsEnabled => 'Notifications activées';
	@override String get notificationsDisabled => 'Notifications désactivées';
	@override String get enabledSubtitle => 'Vous recevrez des rappels de repas';
	@override String get disabledSubtitle => 'Activez les notifications pour recevoir des rappels de repas';
	@override String get mealReminders => 'Rappels de repas';
	@override String get breakfast => 'Petit‑déjeuner';
	@override String get lunch => 'Déjeuner';
	@override String get dinner => 'Dîner';
	@override String get snack => 'Collation';
	@override String get unknown => 'Inconnu';
	@override String get change => 'Modifier';
	@override String get enableNotifications => 'Activer les notifications';
	@override String get skipForNow => 'Passer pour l\'instant';
	@override String get saveChanges => 'Enregistrer les modifications';
	@override String get enabledSuccessfully => 'Notifications activées avec succès !';
	@override String get permissionDenied => 'Permission de notification refusée';
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
	@override String get pleaseNote => 'Veuillez noter';
	@override late final _TranslationsDisclaimerSnapFr snap = _TranslationsDisclaimerSnapFr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateFr weightEstimate = _TranslationsDisclaimerWeightEstimateFr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsFr healthMetrics = _TranslationsDisclaimerHealthMetricsFr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureFr calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureFr._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4Fr implements TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

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
	@override String get yes => 'Oui, j\'aime';
	@override String get no => 'Pas vraiment';
	@override String get rateStepHeading => 'Noter sur le Play Store';
	@override String get emailStepHeading => 'Envoyer un retour par email';
	@override String soloDevMessage({required Object appLabel}) => 'Une note rapide aide les autres à trouver ${appLabel} et soutient le développement. Pourriez‑vous prendre un moment pour en laisser une ?';
	@override String get shareFeedbackViaEmail => 'Vos retours influencent la suite — nous lisons chaque message. Souhaitez‑vous partager vos impressions par email ?';
	@override String get rateCta => 'Noter sur le Play Store';
	@override String get maybeLater => 'Peut‑être plus tard';
	@override String get sendFeedback => 'Envoyer un retour';
	@override String get noThanks => 'Non merci';
	@override String get aboutUsDescription => 'Conçu avec soin par une petite équipe. Nous privilégions la confidentialité, la simplicité et vous aider à adopter de meilleures habitudes alimentaires.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Curieux de savoir qui est derrière ${appLabel} ? Voir ';
	@override String get aboutUsLinkLabel => 'À propos de nous';
	@override String get thankYouMessage => 'Merci ! Nous redemanderons une autre fois.';
}

// Path: health
class _TranslationsHealthFr implements TranslationsHealthEn {
	_TranslationsHealthFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Impossible de synchroniser vers Health Connect';
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
	@override String get title => 'Quel est votre genre ?';
	@override String get description => 'Le genre nous aide à calculer précisément votre métabolisme de base (BMR).';
	@override String get next => 'Suivant';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightFr implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quelle est votre taille ?';
	@override String get description => 'Votre taille nous aide à calculer précisément votre IMC et vos besoins énergétiques.';
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
	@override String get targetDescription => 'Définir un poids cible nous aide à déterminer votre plan à long terme.';
	@override String get metric => 'Métrique';
	@override String get imperial => 'Impérial';
	@override String get next => 'Suivant';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeFr implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quelle est votre date de naissance ?';
	@override String get description => 'Votre âge nous aide à calculer précisément vos besoins caloriques.';
	@override String get next => 'Suivant';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleFr implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Insuff.';
	@override String get healthy => 'Sain';
	@override String get overweight => 'Surpoids';
	@override String get obese => 'Obèse';
	@override late final _TranslationsOnboardingBmiScaleCategoriesFr categories = _TranslationsOnboardingBmiScaleCategoriesFr._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesFr messages = _TranslationsOnboardingBmiScaleMessagesFr._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalFr implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quel est votre objectif ?';
	@override String get description => 'Choisissez l\'objectif qui décrit le mieux ce que vous voulez atteindre';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelFr implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quel est votre niveau d\'activité ?';
	@override String get description => 'Cela nous aide à calculer plus précisément vos besoins caloriques quotidiens';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectFr implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Connectez-vous à Health Connect';
	@override String get description => 'Synchronisez vos données de santé pour de meilleurs insights et un suivi automatique des calories';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingFr automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingFr._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsFr progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsFr._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationFr seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationFr._(_root);
	@override String get connected => 'Health Connect connecté';
	@override String get notConnected => 'Health Connect non connecté';
	@override String get setup => 'Configurer Health Connect';
	@override String get skipForNow => 'Passer pour l\'instant';
	@override String get statusConnected => 'Health Connect est connecté.';
	@override String get statusSuccess => 'Health Connect a été connecté avec succès !';
	@override String statusPermissionDenied({required Object appLabel}) => 'Permission refusée. Veuillez activer les autorisations Health Connect depuis les paramètres de votre téléphone pour ${appLabel}.';
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

// Path: home.aiSummary
class _TranslationsHomeAiSummaryFr implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Votre résumé AI';
	@override String get logMore => 'Enregistrez plus de repas ces prochains jours pour obtenir des insights AI personnalisés.';
	@override String get loading => 'Chargement de votre résumé...';
	@override String mealCount({required Object count}) => '${count} repas enregistrés';
	@override String macroBalanceScore({required Object score}) => 'Score d\'équilibre ${score}';
	@override String get topFoods => 'Aliments principaux';
	@override String get trendUp => 'Calories en hausse';
	@override String get trendDown => 'Calories en baisse';
	@override String get trendSteady => 'Calories stables';
	@override String generatedAt({required Object time}) => 'Mis à jour ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalFr implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Définissez votre objectif quotidien';
	@override String get titleSet => 'Votre objectif quotidien';
	@override String get description => 'Prêt(e) à démarrer votre parcours bien-être ? Définissez ci‑dessous votre cible calorique quotidienne pour lancer vos progrès.';
	@override String get descriptionSet => 'Votre cap est fixé ! Ceci est votre cible calorique quotidienne pour vous guider.';
	@override String get yourGoal => 'Votre objectif';
	@override String get goal => 'Objectif';
	@override String get dailyCalories => 'Calories quotidiennes (kcal)';
	@override String get setGoal => 'Définir l\'objectif';
	@override String get intake => 'Apport';
	@override String get burned => 'Calories brûlées';
	@override String get weightImpact => 'Impact sur le poids';
	@override String get estLoss => 'Perte estimée de';
	@override String get estGain => 'Gain estimé de';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryFr implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Résumé quotidien';
	@override String get calories => 'Calories';
	@override String get carbs => 'Glucides';
	@override String get protein => 'Protéines';
	@override String get fat => 'Lipides';
	@override String get fiber => 'Fibres';
	@override String get grams => 'grammes';
	@override String get chartAccessibilityLabel => 'Graphique des macronutriments';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressFr implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Répartition macro d\'aujourd\'hui';
	@override String get target => 'Cible';
	@override String get current => 'Actuel';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryFr implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Historique macro sur 7 jours';
	@override String get trendTitle => 'Tendance d\'aujourd\'hui';
	@override String peakHour({required Object hour}) => 'Pic : ${hour}:00';
	@override String get noHistoryYet => 'Aucun historique pour le moment';
	@override String get startLogging => 'Commencez à enregistrer vos repas pour voir vos\ntendances macro sur 7 jours ici';
}

// Path: home.mealLog
class _TranslationsHomeMealLogFr implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Repas enregistrés';
	@override String get emptyMessage => 'Prenez une photo de votre dernier repas pour l\'enregistrer ici.';
	@override String get noMealsToday => 'Aucun repas enregistré aujourd\'hui';
	@override String get seeAllMeals => 'Voir tous les repas';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionFr implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ajout rapide avec AI';
	@override String get description => 'Décrivez votre repas et laissez l\'AI s\'occuper des détails.';
	@override String get hint => 'ex. Pour le petit‑déjeuner j\'ai pris un grand bol de flocons d\'avoine avec une banane tranchée et une dose de whey ...';
	@override String get analyzeMeal => 'Analyser le repas';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsFr implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Repas favoris';
	@override String get description => 'Ajoutez rapidement l\'un de vos repas favoris.';
	@override String get noFavorites => 'Aucun repas favori pour le moment.';
	@override String get addFavoriteHint => 'Cliquez sur l\'étoile d\'un repas pour le marquer comme favori.';
	@override String get seeAll => 'Voir tout';
	@override String get add => 'Ajouter';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapFr implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Photo & enregistrement du repas';
	@override String get description => 'Utilisez votre appareil photo pour prendre une photo de votre plat pour analyse par AI.';
	@override String get openCamera => 'Ouvrir l\'appareil photo';
	@override String get gallery => 'Galerie';
	@override String get compressingPhoto => 'Optimisation de la photo…';
	@override String get uploadingPhoto => 'Téléversement de la photo…';
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
	@override String get fat => 'Lipides (g)';
	@override String get fiber => 'Fibres (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationFr implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supprimer le repas';
	@override String get message => 'Êtes‑vous sûr(e) de vouloir supprimer cette entrée de repas ?';
	@override String get cancel => 'Annuler';
	@override String get delete => 'Supprimer';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowFr implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Question ${current} sur ${total}';
	@override String get noQuestionsAvailable => 'Aucune question disponible';
	@override String get next => 'Suivant';
	@override String get continueLabel => 'Continuer';
}

// Path: meal.analysis
class _TranslationsMealAnalysisFr implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyse de votre repas';
	@override String get stepStarted => 'Démarrage…';
	@override String get stepDecomposition => 'Compréhension de votre repas…';
	@override String get stepIngredients => 'Correspondance des ingrédients avec les données nutritionnelles…';
	@override String get stepUncertainty => 'Vérification de la confiance…';
	@override String get stepMealTypeQuestion => 'Presque fini…';
	@override String get stepResult => 'Finalisation du résultat…';
	@override String get stepError => 'Une erreur est survenue';
	@override String get stepDefault => 'Analyse de votre repas…';
	@override String get progressUnderstand => 'Compréhension du repas';
	@override String get progressMatch => 'Recherche des valeurs nutritionnelles des ingrédients';
	@override String get progressCheck => 'Vérification des portions et du niveau de confiance';
	@override String get progressMealType => 'Choix du type de repas';
	@override String get progressFinish => 'Calcul des calories et des macros';
	@override String get detectedIngredientHeading => 'Ingrédients détectés';
	@override String ingredientsOverflow({required Object count}) => '${count} de plus';
	@override String ingredientsLine({required Object count}) => '${count} ingrédients détectés';
	@override String get ingredientsPending => 'Analyse des ingrédients…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Astuce : La régularité vaut mieux que la perfection—les enregistrements réguliers montrent les tendances importantes.';
	@override String get offlineTip1 => 'Astuce : Pour les photos, la lumière naturelle et une vue de dessus aident à estimer les portions.';
	@override String get offlineTip2 => 'Astuce : Mentionnez les boissons, sauces et huiles de cuisson—elles ajoutent souvent des calories oubliées.';
	@override String get offlineTip3 => 'Astuce : Une brève indication de portion (1 bol, grand café) améliore nettement les estimations.';
	@override String get offlineTip4 => 'Astuce : Enregistrer après le repas aide aussi à créer l\'habitude ; la perfection est optionnelle.';
	@override String get offlineTip5 => 'Astuce : Indiquez le mode de cuisson lorsque cela change beaucoup les calories (frit vs cuit au four).';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceFr implements TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Vérifier les ingrédients détectés';
	@override String get reviewSubtitle => 'Ceci a été interprété sur votre appareil. Corrigez les noms ou les portions avant le calcul nutritionnel.';
	@override String get mealName => 'Nom du repas';
	@override String get ingredient => 'Ingrédient';
	@override String get grams => 'Grammes estimés';
	@override String get removeIngredient => 'Supprimer l\'ingrédient';
	@override String get continueLabel => 'Continuer';
	@override String get invalidProposal => 'Ajoutez au moins un ingrédient et utilisez une quantité de grammes positive.';
	@override String get localUnavailable => 'L\'analyse sur l\'appareil est actuellement indisponible.';
	@override String get calculationDetails => 'Comment ceci a été calculé';
	@override String get interpretationLocal => 'Ingrédients interprétés sur cet appareil';
	@override String get interpretationCloud => 'Ingrédients interprétés dans le cloud';
	@override String get interpretationManual => 'Ingrédients vérifiés ou modifiés par vous';
	@override String get nutritionRemote => 'Valeurs nutritionnelles récupérées de l\'USDA via Calorify';
	@override String get nutritionFallback => 'Certaines valeurs nutritionnelles ont été estimées à distance';
	@override String get calculationServer => 'Calories et macros calculées par Calorify';
	@override String get fallbackUsed => 'L\'analyse locale a été remplacée par un traitement cloud';
	@override String get noRawContent => 'Les reçus de diagnostic n\'incluent pas le texte ou la photo de votre repas.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackFr implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qu\'est‑ce qui cloche ?';
	@override String get subtitle => 'Aidez‑nous à améliorer l\'analyse en sélectionnant un ou plusieurs problèmes.';
	@override String get tellUsMore => 'Dites‑nous en plus';
	@override String get describeIncorrect => 'Décrivez ce qui était incorrect';
	@override String get submit => 'Envoyer';
	@override String get issueFoodIdentification => 'Identification de l\'aliment';
	@override String get issuePortionSize => 'Taille de la portion';
	@override String get issueCalorieDistribution => 'Répartition des calories';
	@override String get issueMacrosWrong => 'Macronutriments incorrects';
	@override String get issueMissingItems => 'Éléments manquants';
	@override String get issueExtraItems => 'Éléments en trop';
	@override String get issueOther => 'Autre';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsFr implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Récents';
	@override String get calories => 'Calories';
	@override String get alphabetical => 'A‑Z';
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
	@override String get dailyGoal => 'Objectif quotidien';
	@override String get calPerDay => 'cal/jour';
	@override String get notAvailable => 'N/D';
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
	@override String get localInference => 'ANALYSE SUR L\'APPAREIL';
	@override String get supportAndLegal => 'SUPPORT & LÉGAL';
	@override String get about => 'À PROPOS';
	@override String get dangerZone => 'ZONE DANGEREUSE';
	@override String get developer => 'DÉVELOPPEUR';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileFr implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifier le profil';
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
	@override String get title => 'Unité de taille';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitFr implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unité de poids';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersFr implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rappels de repas';
	@override String get subtitle => 'Restez sur la bonne voie grâce à des alertes ponctuelles';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceFr implements TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyse des repas sur l\'appareil';
	@override String get subtitle => 'Interpréter les repas compatibles avec Gemini Nano avant le calcul nutritionnel';
	@override String get unavailable => 'Non disponible sur cet appareil';
	@override String get rolloutUnavailable => 'Matériel compatible trouvé, mais cette fonctionnalité n\'est pas activée pour cette version de l\'application';
	@override String get modelSetup => 'Gemini Nano doit terminer son téléchargement avant de pouvoir être activé';
	@override String get useLocalTitle => 'Utiliser l\'analyse sur l\'appareil';
	@override String get useLocalSubtitle => 'Optionnel et désactivé par défaut. Les résultats peuvent être moins fiables pour les repas complexes.';
	@override String get disclosureTitle => 'Avant d\'activer l\'analyse sur l\'appareil';
	@override String get disclosureBody => 'Gemini Nano peut identifier les ingrédients et estimer les portions sur les appareils Android compatibles. Votre proposition d\'ingrédients vérifiée est envoyée à Calorify pour l\'ancrage nutritionnel USDA et le calcul.';
	@override String get disclosureLimit1 => 'Les plats complexes, les ingrédients cachés et la taille des portions peuvent être identifiés incorrectement.';
	@override String get disclosureLimit2 => 'Le modèle peut être indisponible pendant le téléchargement, s\'il est occupé, en arrière-plan ou limité par l\'appareil.';
	@override String get disclosureLimit3 => 'Si l\'interprétation locale ne peut pas se terminer, cette version bêta envoie automatiquement la description originale de votre repas à Calorify pour une analyse cloud.';
	@override String get acknowledgement => 'Je comprends que je dois vérifier les ingrédients et les portions détectés.';
	@override String get enable => 'Accepter et activer';
	@override String get cancel => 'Annuler';
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
	@override String get title => 'Envoyer un retour';
	@override String subtitle({required Object appLabel}) => 'Aidez‑nous à améliorer ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Commentaires pour ${appLabel}';
	@override String get emailBodyPrefix => 'Veuillez fournir votre retour ci‑dessous :';
	@override String get appVersion => 'Version de l\'app';
	@override String get device => 'Appareil';
	@override String get osVersion => 'Version OS';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryFr implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exporter l\'historique des repas';
	@override String get subtitle => 'Partagez un CSV de vos repas enregistrés';
	@override String get shareText => 'Export de l\'historique des repas Calorify';
	@override String failed({required Object error}) => 'Impossible d\'exporter l\'historique des repas : ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataFr implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supprimer toutes les données';
	@override String get subtitle => 'Supprimer irréversiblement toutes vos informations';
	@override String get confirmationTitle => 'Supprimer toutes les données ?';
	@override String get confirmationMessage => 'Cette action est irréversible. Tous vos repas enregistrés, favoris et paramètres de profil seront définitivement supprimés.';
	@override String get cancel => 'Annuler';
	@override String get clearEverything => 'Tout supprimer';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsFr implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Options de débogage';
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
	@override String get openSettings => 'Ouvrir les paramètres Health Connect';
	@override String get requestPermissions => 'Demander les autorisations';
	@override String get permissionRequestCancelledOrFailed => 'La demande d\'autorisation a été annulée ou a échoué. Veuillez réessayer ou accorder les autorisations manuellement dans les paramètres de Health Connect.';
	@override String get permissionRequestFailed => 'Impossible de demander les autorisations. Veuillez réessayer ou accorder les autorisations manuellement dans les paramètres de Health Connect.';
	@override String get requestingPermissions => 'Demande en cours...';
}

// Path: settings.about
class _TranslationsSettingsAboutFr implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'À propos';
	@override String get tagline => 'Rapide, gratuit et axé sur la confidentialité pour la conscience calorique';
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
	@override String get title => 'C\'est l\'heure du petit‑déjeuner ! 🍳';
	@override String get body => 'N\'oubliez pas d\'enregistrer votre petit‑déjeuner';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchFr implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C\'est l\'heure du déjeuner ! 🥗';
	@override String get body => 'Il est temps d\'enregistrer votre déjeuner';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerFr implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C\'est l\'heure du dîner ! 🍽️';
	@override String get body => 'N\'oubliez pas d\'enregistrer votre dîner';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackFr implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C\'est l\'heure d\'une collation ! 🍎';
	@override String get body => 'Le moment d\'une collation saine';
}

// Path: notifications.test
class _TranslationsNotificationsTestFr implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notification de test';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapFr implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} fournit des informations nutritionnelles estimées. La précision dépend de vos saisies et des variations alimentaires. Utilisez‑les comme guide, pas comme une source définitive. Consultez un professionnel pour des conseils diététiques personnalisés.';
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
	@override String get title => 'À propos de l\'estimation de poids';
	@override String get description => 'La variation de poids projetée est une estimation théorique basée sur le modèle simple calories entrantes vs calories dépensées. Elle sert uniquement de guide motivationnel et non de prédiction de votre poids réel.';
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
	@override String get description => 'Lorsque les données Health Connect ne sont pas disponibles, nous estimons les calories brûlées aujourd\'hui en utilisant votre BMR et votre niveau d\'activité (TDEE), ajustés à la fraction de la journée écoulée.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedFr howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedFr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionFr implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reconnaissance intelligente des aliments';
	@override String get description => 'Prenez une photo et laissez l\'AI identifier votre repas';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisFr implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyse par AI';
	@override String get description => 'Obtenez instantanément les infos nutritionnelles à partir de vos descriptions';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationFr implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intégration Health Connect';
	@override String get description => 'Connectez-vous à Health Connect pour des informations plus complètes';
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
	@override String get underweight => 'Nous pouvons vous aider à élaborer un plan sain pour atteindre un poids équilibré avec des repas riches en nutriments.';
	@override String get healthy => 'Bravo ! Vous êtes dans une fourchette saine. Nous vous aiderons à maintenir votre vitalité et votre énergie.';
	@override String overweight({required Object appLabel}) => '${appLabel} simplifiera votre parcours avec un suivi assisté par AI pour vous aider à atteindre votre objectif en douceur.';
	@override String get obese => 'Nous sommes là pour vous soutenir avec des conseils personnalisés et des stratégies durables pour vos objectifs de santé.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingFr implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suivi automatique des calories';
	@override String get description => 'Suivez les calories brûlées depuis vos apps de fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsFr implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyses de progression';
	@override String get description => 'Obtenez des insights détaillés sur vos tendances de santé';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationFr implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intégration fluide';
	@override String get description => 'Synchronisez les données de vos apps de santé préférées';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessFr implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vous n\'êtes pas seul(e)';
	@override String get genericMessage => 'Les études montrent que le suivi régulier est le facteur #1 de succès à long terme.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Pour une personne de ${age} ans (${gender}) souhaitant ${goal}, le suivi régulier est le facteur principal de réussite.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} rend cela 10× plus facile que de le faire manuellement.';
	@override String get getStartedTitle => 'Prêt(e) à commencer ?';
	@override String get tipPhoto => 'Prenez une photo de vos repas pour une analyse instantanée';
	@override String get tipConsistency => 'Consignez régulièrement pour voir des progrès significatifs';
	@override String get tipProgress => 'Suivez vos progrès quotidiennement pour rester motivé(e)';
	@override String get button => 'C\'est parti';
	@override String get defaultGender => 'personne';
	@override String get defaultGoal => 'une version plus saine de vous';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileFr implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Votre profil de santé';
	@override String bmiDescription({required Object bmi}) => 'D\'après vos mesures, votre BMI est de ${bmi}.';
	@override String get finalizeDescription => 'Finalisons votre profil pour personnaliser votre expérience.';
	@override String get goalGain => 'prendre';
	@override String get goalLose => 'perdre';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Pour atteindre votre objectif, vous allez ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Vous êtes à votre poids cible ! Nous vous aiderons à le maintenir.';
	@override String get button => 'C\'est parti';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleFr implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Excellent départ !';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Vous avez fait le premier pas vers ${goalText}. Étant donné que vous êtes ${activityText}, ${appLabel} ajustera vos cibles pour correspondre à votre mode de vie.';
	@override String get personalizedTargets => 'Objectifs caloriques personnalisés';
	@override String get aiMealDetection => 'Détection de repas par AI';
	@override String get macroBreakdowns => 'Répartition détaillée des macronutriments';
	@override String get button => 'C\'est parti';
	@override String get defaultGoal => 'vos objectifs';
	@override String get defaultActivity => 'actif(ve)';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightFr implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perdre du poids';
	@override String get description => 'Créer un déficit calorique pour perdre du poids';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightFr implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Maintenir le poids';
	@override String get description => 'Maintenir votre poids actuel';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightFr implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Prendre du poids';
	@override String get description => 'Créer un surplus calorique pour prendre du poids';
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
	@override String get name => 'Légèrement actif';
	@override String get description => 'Exercice léger 1‑3 jours/semaine';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveFr implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Modérément actif';
	@override String get description => 'Exercice modéré 3‑5 jours/semaine';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveFr implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Très actif';
	@override String get description => 'Exercice intense 6‑7 jours/semaine';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveFr implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrêmement actif';
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
	@override String get description => 'Les autorisations suivantes sont requises pour fournir l\'intégration Health Connect :';
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
	@override String get title => 'Notre histoire';
	@override String content({required Object appLabel}) => '${appLabel} est né d\'une frustration simple : la plupart des apps de suivi des calories sont soit trop compliquées, demandent des saisies manuelles constantes, facturent des abonnements élevés, soit compromettent la vie privée.\n\nEn tant que développeur solo, je voulais créer quelque chose de plus simple et plus juste — une app qui utilise l\'AI pour réduire l\'effort, reste rapide et gratuite à utiliser, et respecte vos données de santé.\n\n${appLabel} est l\'app que j\'aurais aimé trouver : pas de compte, pas de pistage, pas de publicités — juste des insights clairs et pratiques et vos objectifs de santé.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyFr implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Votre vie privée compte';
	@override String get description => 'La confidentialité n\'est pas une réflexion après coup — c\'est un principe de conception. Voici ce que cela signifie en pratique :';
	@override String get noAccounts => 'Aucun compte requis\nUtilisez l\'app immédiatement. Pas d\'inscription, pas d\'identifiants.';
	@override String noTracking({required Object appLabel}) => 'Aucun suivi comportemental\n${appLabel} ne suit pas votre activité, ne crée pas de profils d\'utilisation et ne vous piste pas à travers les apps ou les sites web.';
	@override String noAds({required Object appLabel}) => 'Sans publicité par conception\n${appLabel} est conçu pour fonctionner sans publicités ni monétisation basée sur les données.';
	@override String get noDataSelling => 'Pas de vente de données\nVos données de santé ne sont jamais vendues ou partagées avec des tiers.';
	@override String get localStorage => 'Stockage local prioritaire\nVos données restent sur votre appareil.';
	@override String get privacyPolicy => 'Politique de confidentialité';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperFr implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conçu par un développeur solo';
	@override String description({required Object appLabel}) => '${appLabel} est développé et maintenu par un seul développeur axé sur la création de logiciels de santé calmes et respectueux de la vie privée.\n\nLes retours sont lus personnellement et contribuent à orienter l\'évolution de l\'app.';
	@override String get website => 'Site web';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackFr implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Vous aimez ${appLabel} ?';
	@override String description({required Object appLabel}) => 'Vos retours aident à améliorer ${appLabel} pour tout le monde.';
	@override String get rateApp => 'Noter sur le Play Store';
	@override String get sendFeedback => 'Envoyer un retour';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeFr implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Taille de la portion';
	@override String get description => 'La précision des estimations dépend fortement de l\'évaluation correcte de la taille de la portion.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsFr implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Méthodes de préparation';
	@override String description({required Object appLabel}) => 'Les modes de cuisson peuvent modifier significativement la valeur nutritionnelle des aliments. Les estimations de ${appLabel} peuvent ne pas toujours prendre en compte ces variations.';
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
	@override String get title => 'Limites de la base de données';
	@override String description({required Object appLabel}) => 'La base de données d\'aliments de ${appLabel} est étendue mais peut ne pas inclure chaque ingrédient ou variation.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyFr implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Précision des calories';
	@override String get description => 'Cette estimation n\'est aussi précise que vos apports et dépenses caloriques enregistrés. Un enregistrement inexact donnera une projection inexacte.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsFr implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Facteurs biologiques';
	@override String description({required Object appLabel}) => 'La perte/prise de poids réelle est influencée par le métabolisme, les hormones, le sommeil, le stress, l\'hydratation et d\'autres facteurs individuels que ${appLabel} ne peut pas mesurer.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightFr implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Poids d\'eau & fluctuations';
	@override String get description => 'Le poids quotidien normal peut beaucoup fluctuer en raison de la rétention d\'eau, de la digestion et du timing. L\'estimation ne tient pas compte de ces variations journalières.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceFr implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conseils professionnels';
	@override String get description => 'N\'utilisez pas cette estimation pour prendre des décisions médicales. Consultez toujours un professionnel de santé ou un diététicien diplômé pour des conseils personnalisés en gestion du poids.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrFr implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Le Basal Metabolic Rate (BMR) est le nombre de calories que votre corps brûle au repos pour maintenir des fonctions de base comme la respiration et la circulation. Le BMR dépend de votre âge, genre, taille et poids. Un BMR plus élevé signifie que votre corps brûle naturellement plus de calories au repos, souvent à cause d\'une masse musculaire plus importante, d\'un âge plus jeune ou du genre masculin. Un BMR plus faible indique généralement moins de masse musculaire, un âge plus avancé ou le genre féminin.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeFr implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Le Total Daily Energy Expenditure (TDEE) est le total des calories brûlées par jour, incluant votre BMR plus les calories liées à l\'activité physique et aux mouvements quotidiens. Le TDEE dépend de votre BMR et de votre niveau d\'activité. Un TDEE plus élevé signifie que vous brûlez plus de calories au global, généralement en étant plus actif ou en ayant un BMR plus élevé. Un TDEE plus faible suggère moins d\'activité quotidienne ou un BMR plus bas.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalFr implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Objectif quotidien';
	@override String get description => 'L\'objectif quotidien est votre apport calorique recommandé basé sur votre TDEE et votre objectif de poids. Pour perdre du poids, vous consommez moins de calories que votre TDEE. Pour maintenir, vous égalez votre TDEE. Pour prendre, vous consommez plus de calories que votre TDEE. Cela vous aide à atteindre le changement de poids souhaité à un rythme sain.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedFr implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comment l\'estimation est calculée';
	@override String get description => 'Nous calculons votre TDEE (basé sur votre profil) et le multiplions par la fraction de la journée écoulée (heures + minutes) / 24 pour estimer les calories brûlées jusqu\'à présent.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conseils professionnels';
	@override String get description => 'N\'utilisez pas cette estimation pour prendre des décisions médicales. Consultez toujours un professionnel de santé ou un diététicien diplômé pour des conseils personnalisés en gestion du poids.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFr implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lire les calories totales brûlées';
	@override String get description => 'Permet à l\'app de lire vos calories totales brûlées depuis Health Connect.';
	@override String get usage => 'Cette autorisation sert à afficher vos calories brûlées quotidiennes dans l\'app, afin de mieux comprendre votre dépense énergétique totale au cours de la journée.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadFr implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lire les données nutritionnelles';
	@override String get description => 'Permet à l\'app de lire les données nutritionnelles depuis Health Connect.';
	@override String get usage => 'Cette autorisation permet à l\'app de lire les informations nutritionnelles qui peuvent avoir été enregistrées par d\'autres apps connectées à Health Connect, offrant une vue complète de votre alimentation.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteFr implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Écrire des données nutritionnelles';
	@override String get description => 'Permet à l\'app d\'écrire des données nutritionnelles dans Health Connect.';
	@override String get usage => 'Cette autorisation permet à l\'app de synchroniser vos repas enregistrés vers Health Connect, rendant vos données nutritionnelles disponibles pour d\'autres apps de santé et fitness que vous utilisez.';
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
			'errors.rateLimitExceeded' => 'Vous avez soumis trop de requêtes. Veuillez patienter un instant avant de réessayer.',
			'errors.networkError' => 'Erreur réseau. Veuillez vérifier votre connexion Internet.',
			'errors.unknownError' => 'Quelque chose s\'est mal passé. Veuillez réessayer plus tard.',
			'errors.loadingProfileData' => 'Erreur lors du chargement des données du profil',
			'errors.somethingWentWrong' => 'Quelque chose s\'est mal passé.',
			'errors.retry' => 'Réessayer',
			'onboarding.welcome' => ({required Object appLabel}) => 'Bienvenue dans ${appLabel}',
			'onboarding.subtitle' => 'Votre compagnon nutritionnel personnel alimenté par AI',
			'onboarding.getStarted' => 'Commencer',
			'onboarding.features.foodRecognition.title' => 'Reconnaissance intelligente des aliments',
			'onboarding.features.foodRecognition.description' => 'Prenez une photo et laissez l\'AI identifier votre repas',
			'onboarding.features.aiAnalysis.title' => 'Analyse par AI',
			'onboarding.features.aiAnalysis.description' => 'Obtenez instantanément les infos nutritionnelles à partir de vos descriptions',
			'onboarding.features.healthIntegration.title' => 'Intégration Health Connect',
			'onboarding.features.healthIntegration.description' => 'Connectez-vous à Health Connect pour des informations plus complètes',
			'onboarding.gender.title' => 'Quel est votre genre ?',
			'onboarding.gender.description' => 'Le genre nous aide à calculer précisément votre métabolisme de base (BMR).',
			'onboarding.gender.next' => 'Suivant',
			'onboarding.height.title' => 'Quelle est votre taille ?',
			'onboarding.height.description' => 'Votre taille nous aide à calculer précisément votre IMC et vos besoins énergétiques.',
			'onboarding.height.metric' => 'Métrique',
			'onboarding.height.imperial' => 'Impérial',
			'onboarding.height.next' => 'Suivant',
			'onboarding.weight.currentTitle' => 'Quel est votre poids actuel ?',
			'onboarding.weight.currentDescription' => 'Votre poids actuel est essentiel pour personnaliser vos objectifs quotidiens.',
			'onboarding.weight.targetTitle' => 'Quel est votre poids cible ?',
			'onboarding.weight.targetDescription' => 'Définir un poids cible nous aide à déterminer votre plan à long terme.',
			'onboarding.weight.metric' => 'Métrique',
			'onboarding.weight.imperial' => 'Impérial',
			'onboarding.weight.next' => 'Suivant',
			'onboarding.age.title' => 'Quelle est votre date de naissance ?',
			'onboarding.age.description' => 'Votre âge nous aide à calculer précisément vos besoins caloriques.',
			'onboarding.age.next' => 'Suivant',
			'onboarding.bmiScale.underweight' => 'Insuff.',
			'onboarding.bmiScale.healthy' => 'Sain',
			'onboarding.bmiScale.overweight' => 'Surpoids',
			'onboarding.bmiScale.obese' => 'Obèse',
			'onboarding.bmiScale.categories.underweight' => 'Insuffisance pondérale',
			'onboarding.bmiScale.categories.healthyWeight' => 'Poids santé',
			'onboarding.bmiScale.categories.overweight' => 'Surpoids',
			'onboarding.bmiScale.categories.obese' => 'Obésité',
			'onboarding.bmiScale.messages.underweight' => 'Nous pouvons vous aider à élaborer un plan sain pour atteindre un poids équilibré avec des repas riches en nutriments.',
			'onboarding.bmiScale.messages.healthy' => 'Bravo ! Vous êtes dans une fourchette saine. Nous vous aiderons à maintenir votre vitalité et votre énergie.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} simplifiera votre parcours avec un suivi assisté par AI pour vous aider à atteindre votre objectif en douceur.',
			'onboarding.bmiScale.messages.obese' => 'Nous sommes là pour vous soutenir avec des conseils personnalisés et des stratégies durables pour vos objectifs de santé.',
			'onboarding.weightGoal.title' => 'Quel est votre objectif ?',
			'onboarding.weightGoal.description' => 'Choisissez l\'objectif qui décrit le mieux ce que vous voulez atteindre',
			'onboarding.activityLevel.title' => 'Quel est votre niveau d\'activité ?',
			'onboarding.activityLevel.description' => 'Cela nous aide à calculer plus précisément vos besoins caloriques quotidiens',
			'onboarding.healthConnect.title' => 'Connectez-vous à Health Connect',
			'onboarding.healthConnect.description' => 'Synchronisez vos données de santé pour de meilleurs insights et un suivi automatique des calories',
			'onboarding.healthConnect.automaticTracking.title' => 'Suivi automatique des calories',
			'onboarding.healthConnect.automaticTracking.description' => 'Suivez les calories brûlées depuis vos apps de fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Analyses de progression',
			'onboarding.healthConnect.progressInsights.description' => 'Obtenez des insights détaillés sur vos tendances de santé',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Intégration fluide',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchronisez les données de vos apps de santé préférées',
			'onboarding.healthConnect.connected' => 'Health Connect connecté',
			'onboarding.healthConnect.notConnected' => 'Health Connect non connecté',
			'onboarding.healthConnect.setup' => 'Configurer Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Passer pour l\'instant',
			'onboarding.healthConnect.statusConnected' => 'Health Connect est connecté.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect a été connecté avec succès !',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Permission refusée. Veuillez activer les autorisations Health Connect depuis les paramètres de votre téléphone pour ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Erreur lors de la configuration de Health Connect : ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Vous n\'êtes pas seul(e)',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Les études montrent que le suivi régulier est le facteur #1 de succès à long terme.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Pour une personne de ${age} ans (${gender}) souhaitant ${goal}, le suivi régulier est le facteur principal de réussite.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} rend cela 10× plus facile que de le faire manuellement.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Prêt(e) à commencer ?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Prenez une photo de vos repas pour une analyse instantanée',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Consignez régulièrement pour voir des progrès significatifs',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Suivez vos progrès quotidiennement pour rester motivé(e)',
			'onboarding.reinforcement.trackingSuccess.button' => 'C\'est parti',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'personne',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'une version plus saine de vous',
			'onboarding.reinforcement.healthProfile.title' => 'Votre profil de santé',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'D\'après vos mesures, votre BMI est de ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Finalisons votre profil pour personnaliser votre expérience.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'prendre',
			'onboarding.reinforcement.healthProfile.goalLose' => 'perdre',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Pour atteindre votre objectif, vous allez ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Vous êtes à votre poids cible ! Nous vous aiderons à le maintenir.',
			'onboarding.reinforcement.healthProfile.button' => 'C\'est parti',
			'onboarding.reinforcement.goalLifestyle.title' => 'Excellent départ !',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Vous avez fait le premier pas vers ${goalText}. Étant donné que vous êtes ${activityText}, ${appLabel} ajustera vos cibles pour correspondre à votre mode de vie.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Objectifs caloriques personnalisés',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Détection de repas par AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Répartition détaillée des macronutriments',
			'onboarding.reinforcement.goalLifestyle.button' => 'C\'est parti',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'vos objectifs',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'actif(ve)',
			'tabs.dashboard' => 'Tableau de bord',
			'tabs.history' => 'Historique',
			'home.aiSummary.title' => 'Votre résumé AI',
			'home.aiSummary.logMore' => 'Enregistrez plus de repas ces prochains jours pour obtenir des insights AI personnalisés.',
			'home.aiSummary.loading' => 'Chargement de votre résumé...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} repas enregistrés',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Score d\'équilibre ${score}',
			'home.aiSummary.topFoods' => 'Aliments principaux',
			'home.aiSummary.trendUp' => 'Calories en hausse',
			'home.aiSummary.trendDown' => 'Calories en baisse',
			'home.aiSummary.trendSteady' => 'Calories stables',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Mis à jour ${time}',
			'home.dailyGoal.title' => 'Définissez votre objectif quotidien',
			'home.dailyGoal.titleSet' => 'Votre objectif quotidien',
			'home.dailyGoal.description' => 'Prêt(e) à démarrer votre parcours bien-être ? Définissez ci‑dessous votre cible calorique quotidienne pour lancer vos progrès.',
			'home.dailyGoal.descriptionSet' => 'Votre cap est fixé ! Ceci est votre cible calorique quotidienne pour vous guider.',
			'home.dailyGoal.yourGoal' => 'Votre objectif',
			'home.dailyGoal.goal' => 'Objectif',
			'home.dailyGoal.dailyCalories' => 'Calories quotidiennes (kcal)',
			'home.dailyGoal.setGoal' => 'Définir l\'objectif',
			'home.dailyGoal.intake' => 'Apport',
			'home.dailyGoal.burned' => 'Calories brûlées',
			'home.dailyGoal.weightImpact' => 'Impact sur le poids',
			'home.dailyGoal.estLoss' => 'Perte estimée de',
			'home.dailyGoal.estGain' => 'Gain estimé de',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Résumé quotidien',
			'home.dailySummary.calories' => 'Calories',
			'home.dailySummary.carbs' => 'Glucides',
			'home.dailySummary.protein' => 'Protéines',
			'home.dailySummary.fat' => 'Lipides',
			'home.dailySummary.fiber' => 'Fibres',
			'home.dailySummary.grams' => 'grammes',
			'home.dailySummary.chartAccessibilityLabel' => 'Graphique des macronutriments',
			'home.intakeProgress.title' => 'Répartition macro d\'aujourd\'hui',
			'home.intakeProgress.target' => 'Cible',
			'home.intakeProgress.current' => 'Actuel',
			'home.intakeHistory.title' => 'Historique macro sur 7 jours',
			'home.intakeHistory.trendTitle' => 'Tendance d\'aujourd\'hui',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Pic : ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Aucun historique pour le moment',
			'home.intakeHistory.startLogging' => 'Commencez à enregistrer vos repas pour voir vos\ntendances macro sur 7 jours ici',
			'home.mealLog.title' => 'Repas enregistrés',
			'home.mealLog.emptyMessage' => 'Prenez une photo de votre dernier repas pour l\'enregistrer ici.',
			'home.mealLog.noMealsToday' => 'Aucun repas enregistré aujourd\'hui',
			'home.mealLog.seeAllMeals' => 'Voir tous les repas',
			'home.mealDescription.title' => 'Ajout rapide avec AI',
			'home.mealDescription.description' => 'Décrivez votre repas et laissez l\'AI s\'occuper des détails.',
			'home.mealDescription.hint' => 'ex. Pour le petit‑déjeuner j\'ai pris un grand bol de flocons d\'avoine avec une banane tranchée et une dose de whey ...',
			'home.mealDescription.analyzeMeal' => 'Analyser le repas',
			'home.favoriteMeals.title' => 'Repas favoris',
			'home.favoriteMeals.description' => 'Ajoutez rapidement l\'un de vos repas favoris.',
			'home.favoriteMeals.noFavorites' => 'Aucun repas favori pour le moment.',
			'home.favoriteMeals.addFavoriteHint' => 'Cliquez sur l\'étoile d\'un repas pour le marquer comme favori.',
			'home.favoriteMeals.seeAll' => 'Voir tout',
			'home.favoriteMeals.add' => 'Ajouter',
			'home.mealSnap.title' => 'Photo & enregistrement du repas',
			'home.mealSnap.description' => 'Utilisez votre appareil photo pour prendre une photo de votre plat pour analyse par AI.',
			'home.mealSnap.openCamera' => 'Ouvrir l\'appareil photo',
			'home.mealSnap.gallery' => 'Galerie',
			'home.mealSnap.compressingPhoto' => 'Optimisation de la photo…',
			'home.mealSnap.uploadingPhoto' => 'Téléversement de la photo…',
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
			'meal.editMeal' => 'Modifier le repas',
			'meal.addMeal' => 'Ajouter un repas',
			'meal.saveMeal' => 'Enregistrer le repas',
			'meal.save' => 'Enregistrer',
			'meal.mealName' => 'Nom du repas',
			'meal.mealNameHint' => 'ex. Œufs brouillés avec toast',
			'meal.nameRequired' => 'Donnez un nom au repas avant de l\'enregistrer.',
			'meal.mealQuantity' => 'Quantité du repas',
			'meal.mealQuantityHint' => 'ex. 1 bol, 2 tranches',
			'meal.timeOfMeal' => 'Heure du repas',
			'meal.timeOfMealHint' => 'Sélectionnez l\'heure à laquelle vous avez mangé',
			'meal.mealType' => 'Type de repas',
			'meal.nutrition.calories' => 'Calories',
			'meal.nutrition.carbs' => 'Glucides (g)',
			'meal.nutrition.protein' => 'Protéines (g)',
			'meal.nutrition.fat' => 'Lipides (g)',
			'meal.nutrition.fiber' => 'Fibres (g)',
			'meal.deleteConfirmation.title' => 'Supprimer le repas',
			'meal.deleteConfirmation.message' => 'Êtes‑vous sûr(e) de vouloir supprimer cette entrée de repas ?',
			'meal.deleteConfirmation.cancel' => 'Annuler',
			'meal.deleteConfirmation.delete' => 'Supprimer',
			'meal.addedToLog' => 'Repas ajouté à votre journal !',
			'meal.couldNotAdd' => ({required Object error}) => 'Impossible d\'ajouter le repas : ${error}',
			'meal.savedSuccessfully' => 'Repas ajouté avec succès !',
			'meal.updatedSuccessfully' => 'Repas mis à jour avec succès !',
			'meal.errorSaving' => ({required Object error}) => 'Erreur lors de l\'enregistrement du repas : ${error}',
			'meal.removedFromFavorites' => 'Retiré des favoris !',
			'meal.savedAsFavorite' => 'Repas enregistré comme favori !',
			'meal.unfavorite' => 'Retirer des favoris',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Impossible de mettre à jour le favori : ${error}',
			'meal.feedbackThanks' => 'Merci pour votre retour !',
			'meal.reanalysisUpdated' => 'Analyse du repas mise à jour en fonction de votre retour.',
			'meal.failedToProcess' => ({required Object error}) => 'Échec du traitement : ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Échec du traitement de l\'image : ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Erreur lors de la compression de l\'image : ${error}',
			'meal.failedToSave' => 'Échec de l\'enregistrement des données. Veuillez réessayer.',
			'meal.skip' => 'Passer',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Question ${current} sur ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Aucune question disponible',
			'meal.questionFlow.next' => 'Suivant',
			'meal.questionFlow.continueLabel' => 'Continuer',
			'meal.analysis.title' => 'Analyse de votre repas',
			'meal.analysis.stepStarted' => 'Démarrage…',
			'meal.analysis.stepDecomposition' => 'Compréhension de votre repas…',
			'meal.analysis.stepIngredients' => 'Correspondance des ingrédients avec les données nutritionnelles…',
			'meal.analysis.stepUncertainty' => 'Vérification de la confiance…',
			'meal.analysis.stepMealTypeQuestion' => 'Presque fini…',
			'meal.analysis.stepResult' => 'Finalisation du résultat…',
			'meal.analysis.stepError' => 'Une erreur est survenue',
			'meal.analysis.stepDefault' => 'Analyse de votre repas…',
			'meal.analysis.progressUnderstand' => 'Compréhension du repas',
			'meal.analysis.progressMatch' => 'Recherche des valeurs nutritionnelles des ingrédients',
			'meal.analysis.progressCheck' => 'Vérification des portions et du niveau de confiance',
			'meal.analysis.progressMealType' => 'Choix du type de repas',
			'meal.analysis.progressFinish' => 'Calcul des calories et des macros',
			'meal.analysis.detectedIngredientHeading' => 'Ingrédients détectés',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} de plus',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingrédients détectés',
			'meal.analysis.ingredientsPending' => 'Analyse des ingrédients…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Astuce : La régularité vaut mieux que la perfection—les enregistrements réguliers montrent les tendances importantes.',
			'meal.analysis.offlineTip1' => 'Astuce : Pour les photos, la lumière naturelle et une vue de dessus aident à estimer les portions.',
			'meal.analysis.offlineTip2' => 'Astuce : Mentionnez les boissons, sauces et huiles de cuisson—elles ajoutent souvent des calories oubliées.',
			'meal.analysis.offlineTip3' => 'Astuce : Une brève indication de portion (1 bol, grand café) améliore nettement les estimations.',
			'meal.analysis.offlineTip4' => 'Astuce : Enregistrer après le repas aide aussi à créer l\'habitude ; la perfection est optionnelle.',
			'meal.analysis.offlineTip5' => 'Astuce : Indiquez le mode de cuisson lorsque cela change beaucoup les calories (frit vs cuit au four).',
			'meal.localInference.reviewTitle' => 'Vérifier les ingrédients détectés',
			'meal.localInference.reviewSubtitle' => 'Ceci a été interprété sur votre appareil. Corrigez les noms ou les portions avant le calcul nutritionnel.',
			'meal.localInference.mealName' => 'Nom du repas',
			'meal.localInference.ingredient' => 'Ingrédient',
			'meal.localInference.grams' => 'Grammes estimés',
			'meal.localInference.removeIngredient' => 'Supprimer l\'ingrédient',
			'meal.localInference.continueLabel' => 'Continuer',
			'meal.localInference.invalidProposal' => 'Ajoutez au moins un ingrédient et utilisez une quantité de grammes positive.',
			'meal.localInference.localUnavailable' => 'L\'analyse sur l\'appareil est actuellement indisponible.',
			'meal.localInference.calculationDetails' => 'Comment ceci a été calculé',
			'meal.localInference.interpretationLocal' => 'Ingrédients interprétés sur cet appareil',
			'meal.localInference.interpretationCloud' => 'Ingrédients interprétés dans le cloud',
			'meal.localInference.interpretationManual' => 'Ingrédients vérifiés ou modifiés par vous',
			'meal.localInference.nutritionRemote' => 'Valeurs nutritionnelles récupérées de l\'USDA via Calorify',
			'meal.localInference.nutritionFallback' => 'Certaines valeurs nutritionnelles ont été estimées à distance',
			'meal.localInference.calculationServer' => 'Calories et macros calculées par Calorify',
			'meal.localInference.fallbackUsed' => 'L\'analyse locale a été remplacée par un traitement cloud',
			'meal.localInference.noRawContent' => 'Les reçus de diagnostic n\'incluent pas le texte ou la photo de votre repas.',
			'meal.feedback.title' => 'Qu\'est‑ce qui cloche ?',
			'meal.feedback.subtitle' => 'Aidez‑nous à améliorer l\'analyse en sélectionnant un ou plusieurs problèmes.',
			'meal.feedback.tellUsMore' => 'Dites‑nous en plus',
			'meal.feedback.describeIncorrect' => 'Décrivez ce qui était incorrect',
			'meal.feedback.submit' => 'Envoyer',
			'meal.feedback.issueFoodIdentification' => 'Identification de l\'aliment',
			'meal.feedback.issuePortionSize' => 'Taille de la portion',
			'meal.feedback.issueCalorieDistribution' => 'Répartition des calories',
			'meal.feedback.issueMacrosWrong' => 'Macronutriments incorrects',
			'meal.feedback.issueMissingItems' => 'Éléments manquants',
			'meal.feedback.issueExtraItems' => 'Éléments en trop',
			'meal.feedback.issueOther' => 'Autre',
			'favorites.title' => 'Favoris',
			'favorites.empty' => 'Aucun repas favori pour le moment.',
			'favorites.searchPlaceholder' => 'Rechercher des repas favoris',
			'favorites.searchEmptyTitle' => 'Aucun favori ne correspond à votre recherche',
			'favorites.searchEmptySubtitle' => 'Essayez un autre nom de repas, quantité ou type de repas.',
			'favorites.sortLabel' => 'Trier les favoris',
			'favorites.undo' => 'Annuler',
			'favorites.removed' => ({required Object name}) => 'Retiré ${name} des favoris',
			'favorites.sortOptions.recent' => 'Récents',
			'favorites.sortOptions.calories' => 'Calories',
			'favorites.sortOptions.alphabetical' => 'A‑Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Aucune donnée de profil trouvée',
			'profile.yourProfile' => 'Votre profil',
			'profile.viewAndManage' => 'Voir et gérer vos informations de santé',
			'profile.sections.profile' => 'PROFIL',
			'profile.sections.basicInformation' => 'INFORMATIONS DE BASE',
			'profile.sections.goalsAndActivity' => 'OBJECTIFS & ACTIVITÉ',
			'profile.sections.calculatedValues' => 'VALEURS CALCULÉES',
			'profile.gender' => 'Genre',
			'profile.height' => 'Taille',
			'profile.weight' => 'Poids',
			'profile.age' => 'Âge',
			'profile.weightGoal' => 'Objectif de poids',
			'profile.targetWeight' => 'Poids cible',
			'profile.activityLevel' => 'Niveau d\'activité',
			'profile.healthMetrics' => 'Indicateurs de santé',
			'profile.notSet' => 'Non défini',
			'profile.years' => 'ans',
			'profile.updatedSuccessfully' => 'Profil mis à jour avec succès !',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Objectif quotidien',
			'profile.calculatedValues.calPerDay' => 'cal/jour',
			'profile.calculatedValues.notAvailable' => 'N/D',
			'healthScore.title' => 'Score de santé',
			'healthScore.whyThisScore' => 'Pourquoi ce score ?',
			'healthScore.note' => 'Ce score est une estimation AI basée sur les ingrédients identifiés et la densité nutritionnelle. Consultez toujours un professionnel pour des conseils diététiques personnalisés.',
			'healthScore.unhealthy' => 'Peu sain',
			'healthScore.healthy' => 'Sain',
			'healthScore.neutral' => 'Neutre',
			'editProfile.title' => 'Modifier le profil',
			'editProfile.sections.personalInformation' => 'INFORMATIONS PERSONNELLES',
			'editProfile.sections.physicalMeasurements' => 'MESURES PHYSIQUES',
			'editProfile.sections.goalsAndActivity' => 'OBJECTIFS & ACTIVITÉ',
			'editProfile.gender' => 'Genre',
			'editProfile.dateOfBirth' => 'Date de naissance',
			'editProfile.height' => 'Taille',
			'editProfile.weight' => 'Poids',
			'editProfile.weightGoal' => 'Objectif de poids',
			'editProfile.activityLevel' => 'Niveau d\'activité',
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
			'editProfile.weightGoals.loseWeight.name' => 'Perdre du poids',
			'editProfile.weightGoals.loseWeight.description' => 'Créer un déficit calorique pour perdre du poids',
			'editProfile.weightGoals.maintainWeight.name' => 'Maintenir le poids',
			'editProfile.weightGoals.maintainWeight.description' => 'Maintenir votre poids actuel',
			'editProfile.weightGoals.gainWeight.name' => 'Prendre du poids',
			'editProfile.weightGoals.gainWeight.description' => 'Créer un surplus calorique pour prendre du poids',
			'editProfile.activityLevels.sedentary.name' => 'Sédentaire',
			'editProfile.activityLevels.sedentary.description' => 'Peu ou pas d\'exercice',
			'editProfile.activityLevels.lightlyActive.name' => 'Légèrement actif',
			'editProfile.activityLevels.lightlyActive.description' => 'Exercice léger 1‑3 jours/semaine',
			'editProfile.activityLevels.moderatelyActive.name' => 'Modérément actif',
			'editProfile.activityLevels.moderatelyActive.description' => 'Exercice modéré 3‑5 jours/semaine',
			'editProfile.activityLevels.veryActive.name' => 'Très actif',
			'editProfile.activityLevels.veryActive.description' => 'Exercice intense 6‑7 jours/semaine',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrêmement actif',
			'editProfile.activityLevels.extremelyActive.description' => 'Exercice très intense, travail physique',
			'settings.title' => 'Paramètres',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOCALISATION',
			'settings.sections.notifications' => 'NOTIFICATIONS',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.localInference' => 'ANALYSE SUR L\'APPAREIL',
			'settings.sections.supportAndLegal' => 'SUPPORT & LÉGAL',
			'settings.sections.about' => 'À PROPOS',
			'settings.sections.dangerZone' => 'ZONE DANGEREUSE',
			'settings.sections.developer' => 'DÉVELOPPEUR',
			'settings.editProfile.title' => 'Modifier le profil',
			'settings.editProfile.subtitle' => 'Mettez à jour vos informations personnelles',
			'settings.language.title' => 'Langue',
			'settings.language.subtitle' => 'Choisissez votre langue préférée',
			'settings.language.searchHint' => 'Rechercher des langues...',
			'settings.language.noResults' => 'Aucun résultat trouvé',
			'settings.heightUnit.title' => 'Unité de taille',
			'settings.weightUnit.title' => 'Unité de poids',
			'settings.mealReminders.title' => 'Rappels de repas',
			'settings.mealReminders.subtitle' => 'Restez sur la bonne voie grâce à des alertes ponctuelles',
			'settings.localInference.title' => 'Analyse des repas sur l\'appareil',
			'settings.localInference.subtitle' => 'Interpréter les repas compatibles avec Gemini Nano avant le calcul nutritionnel',
			'settings.localInference.unavailable' => 'Non disponible sur cet appareil',
			'settings.localInference.rolloutUnavailable' => 'Matériel compatible trouvé, mais cette fonctionnalité n\'est pas activée pour cette version de l\'application',
			'settings.localInference.modelSetup' => 'Gemini Nano doit terminer son téléchargement avant de pouvoir être activé',
			'settings.localInference.useLocalTitle' => 'Utiliser l\'analyse sur l\'appareil',
			'settings.localInference.useLocalSubtitle' => 'Optionnel et désactivé par défaut. Les résultats peuvent être moins fiables pour les repas complexes.',
			'settings.localInference.disclosureTitle' => 'Avant d\'activer l\'analyse sur l\'appareil',
			'settings.localInference.disclosureBody' => 'Gemini Nano peut identifier les ingrédients et estimer les portions sur les appareils Android compatibles. Votre proposition d\'ingrédients vérifiée est envoyée à Calorify pour l\'ancrage nutritionnel USDA et le calcul.',
			'settings.localInference.disclosureLimit1' => 'Les plats complexes, les ingrédients cachés et la taille des portions peuvent être identifiés incorrectement.',
			'settings.localInference.disclosureLimit2' => 'Le modèle peut être indisponible pendant le téléchargement, s\'il est occupé, en arrière-plan ou limité par l\'appareil.',
			'settings.localInference.disclosureLimit3' => 'Si l\'interprétation locale ne peut pas se terminer, cette version bêta envoie automatiquement la description originale de votre repas à Calorify pour une analyse cloud.',
			'settings.localInference.acknowledgement' => 'Je comprends que je dois vérifier les ingrédients et les portions détectés.',
			'settings.localInference.enable' => 'Accepter et activer',
			'settings.localInference.cancel' => 'Annuler',
			'settings.theme.title' => 'Thème',
			'settings.theme.light' => 'Clair',
			'settings.theme.dark' => 'Sombre',
			'settings.theme.system' => 'Système',
			'settings.sendFeedback.title' => 'Envoyer un retour',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Aidez‑nous à améliorer ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Commentaires pour ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Veuillez fournir votre retour ci‑dessous :',
			'settings.sendFeedback.appVersion' => 'Version de l\'app',
			'settings.sendFeedback.device' => 'Appareil',
			'settings.sendFeedback.osVersion' => 'Version OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Exporter l\'historique des repas',
			'settings.exportMealHistory.subtitle' => 'Partagez un CSV de vos repas enregistrés',
			'settings.exportMealHistory.shareText' => 'Export de l\'historique des repas Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Impossible d\'exporter l\'historique des repas : ${error}',
			'settings.clearAllData.title' => 'Supprimer toutes les données',
			'settings.clearAllData.subtitle' => 'Supprimer irréversiblement toutes vos informations',
			'settings.clearAllData.confirmationTitle' => 'Supprimer toutes les données ?',
			'settings.clearAllData.confirmationMessage' => 'Cette action est irréversible. Tous vos repas enregistrés, favoris et paramètres de profil seront définitivement supprimés.',
			'settings.clearAllData.cancel' => 'Annuler',
			'settings.clearAllData.clearEverything' => 'Tout supprimer',
			'settings.debugOptions.title' => 'Options de débogage',
			'settings.developerModeEnabled' => 'Mode développeur activé !',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Voir et gérer les autorisations',
			'settings.healthConnect.unavailable.title' => 'Health Connect indisponible',
			'settings.healthConnect.unavailable.description' => 'Health Connect n\'est pas disponible sur cet appareil. Veuillez installer Health Connect depuis le Play Store (Android 9+) ou mettre à jour vers Android 14+.',
			'settings.healthConnect.permissions.title' => 'Autorisations',
			'settings.healthConnect.permissions.description' => 'Les autorisations suivantes sont requises pour fournir l\'intégration Health Connect :',
			'settings.healthConnect.permissions.granted' => 'Accordé',
			'settings.healthConnect.permissions.notGranted' => 'Non accordé',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Lire les calories totales brûlées',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Permet à l\'app de lire vos calories totales brûlées depuis Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Cette autorisation sert à afficher vos calories brûlées quotidiennes dans l\'app, afin de mieux comprendre votre dépense énergétique totale au cours de la journée.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Lire les données nutritionnelles',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Permet à l\'app de lire les données nutritionnelles depuis Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Cette autorisation permet à l\'app de lire les informations nutritionnelles qui peuvent avoir été enregistrées par d\'autres apps connectées à Health Connect, offrant une vue complète de votre alimentation.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Écrire des données nutritionnelles',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Permet à l\'app d\'écrire des données nutritionnelles dans Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Cette autorisation permet à l\'app de synchroniser vos repas enregistrés vers Health Connect, rendant vos données nutritionnelles disponibles pour d\'autres apps de santé et fitness que vous utilisez.',
			'settings.healthConnect.managePermissions' => 'Gérer les autorisations',
			'settings.healthConnect.openSettings' => 'Ouvrir les paramètres Health Connect',
			'settings.healthConnect.requestPermissions' => 'Demander les autorisations',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'La demande d\'autorisation a été annulée ou a échoué. Veuillez réessayer ou accorder les autorisations manuellement dans les paramètres de Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Impossible de demander les autorisations. Veuillez réessayer ou accorder les autorisations manuellement dans les paramètres de Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Demande en cours...',
			'settings.about.title' => 'À propos',
			'settings.about.tagline' => 'Rapide, gratuit et axé sur la confidentialité pour la conscience calorique',
			'settings.about.ourStory.title' => 'Notre histoire',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} est né d\'une frustration simple : la plupart des apps de suivi des calories sont soit trop compliquées, demandent des saisies manuelles constantes, facturent des abonnements élevés, soit compromettent la vie privée.\n\nEn tant que développeur solo, je voulais créer quelque chose de plus simple et plus juste — une app qui utilise l\'AI pour réduire l\'effort, reste rapide et gratuite à utiliser, et respecte vos données de santé.\n\n${appLabel} est l\'app que j\'aurais aimé trouver : pas de compte, pas de pistage, pas de publicités — juste des insights clairs et pratiques et vos objectifs de santé.',
			'settings.about.privacy.title' => 'Votre vie privée compte',
			'settings.about.privacy.description' => 'La confidentialité n\'est pas une réflexion après coup — c\'est un principe de conception. Voici ce que cela signifie en pratique :',
			'settings.about.privacy.noAccounts' => 'Aucun compte requis\nUtilisez l\'app immédiatement. Pas d\'inscription, pas d\'identifiants.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Aucun suivi comportemental\n${appLabel} ne suit pas votre activité, ne crée pas de profils d\'utilisation et ne vous piste pas à travers les apps ou les sites web.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Sans publicité par conception\n${appLabel} est conçu pour fonctionner sans publicités ni monétisation basée sur les données.',
			'settings.about.privacy.noDataSelling' => 'Pas de vente de données\nVos données de santé ne sont jamais vendues ou partagées avec des tiers.',
			'settings.about.privacy.localStorage' => 'Stockage local prioritaire\nVos données restent sur votre appareil.',
			'settings.about.privacy.privacyPolicy' => 'Politique de confidentialité',
			'settings.about.developer.title' => 'Conçu par un développeur solo',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} est développé et maintenu par un seul développeur axé sur la création de logiciels de santé calmes et respectueux de la vie privée.\n\nLes retours sont lus personnellement et contribuent à orienter l\'évolution de l\'app.',
			'settings.about.developer.website' => 'Site web',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Vous aimez ${appLabel} ?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Vos retours aident à améliorer ${appLabel} pour tout le monde.',
			'settings.about.feedback.rateApp' => 'Noter sur le Play Store',
			'settings.about.feedback.sendFeedback' => 'Envoyer un retour',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Restez sur la bonne voie avec des rappels',
			'reminders.description' => 'Recevez des rappels subtils pour enregistrer vos repas et rester régulier dans vos objectifs nutritionnels',
			'reminders.notificationsEnabled' => 'Notifications activées',
			'reminders.notificationsDisabled' => 'Notifications désactivées',
			'reminders.enabledSubtitle' => 'Vous recevrez des rappels de repas',
			'reminders.disabledSubtitle' => 'Activez les notifications pour recevoir des rappels de repas',
			'reminders.mealReminders' => 'Rappels de repas',
			'reminders.breakfast' => 'Petit‑déjeuner',
			'reminders.lunch' => 'Déjeuner',
			'reminders.dinner' => 'Dîner',
			'reminders.snack' => 'Collation',
			'reminders.unknown' => 'Inconnu',
			'reminders.change' => 'Modifier',
			'reminders.enableNotifications' => 'Activer les notifications',
			'reminders.skipForNow' => 'Passer pour l\'instant',
			'reminders.saveChanges' => 'Enregistrer les modifications',
			'reminders.enabledSuccessfully' => 'Notifications activées avec succès !',
			'reminders.permissionDenied' => 'Permission de notification refusée',
			'reminders.errorEnabling' => ({required Object error}) => 'Erreur lors de l\'activation des notifications : ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Erreur lors de la finalisation de la configuration : ${error}',
			'notifications.breakfast.title' => 'C\'est l\'heure du petit‑déjeuner ! 🍳',
			'notifications.breakfast.body' => 'N\'oubliez pas d\'enregistrer votre petit‑déjeuner',
			'notifications.lunch.title' => 'C\'est l\'heure du déjeuner ! 🥗',
			'notifications.lunch.body' => 'Il est temps d\'enregistrer votre déjeuner',
			'notifications.dinner.title' => 'C\'est l\'heure du dîner ! 🍽️',
			'notifications.dinner.body' => 'N\'oubliez pas d\'enregistrer votre dîner',
			'notifications.snack.title' => 'C\'est l\'heure d\'une collation ! 🍎',
			'notifications.snack.body' => 'Le moment d\'une collation saine',
			'notifications.test.title' => 'Notification de test',
			'login.title' => 'Connexion',
			'login.signInWithGoogle' => 'Se connecter avec Google',
			'login.signInFailed' => 'La connexion Google a échoué ou a été annulée.',
			'disclaimer.pleaseNote' => 'Veuillez noter',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} fournit des informations nutritionnelles estimées. La précision dépend de vos saisies et des variations alimentaires. Utilisez‑les comme guide, pas comme une source définitive. Consultez un professionnel pour des conseils diététiques personnalisés.',
			'disclaimer.snap.portionSize.title' => 'Taille de la portion',
			'disclaimer.snap.portionSize.description' => 'La précision des estimations dépend fortement de l\'évaluation correcte de la taille de la portion.',
			'disclaimer.snap.preparationMethods.title' => 'Méthodes de préparation',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Les modes de cuisson peuvent modifier significativement la valeur nutritionnelle des aliments. Les estimations de ${appLabel} peuvent ne pas toujours prendre en compte ces variations.',
			'disclaimer.snap.ingredients.title' => 'Ingrédients',
			'disclaimer.snap.ingredients.description' => 'Les plats complexes avec de nombreux ingrédients cachés peuvent conduire à des estimations moins précises.',
			'disclaimer.snap.databaseLimitations.title' => 'Limites de la base de données',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'La base de données d\'aliments de ${appLabel} est étendue mais peut ne pas inclure chaque ingrédient ou variation.',
			'disclaimer.weightEstimate.title' => 'À propos de l\'estimation de poids',
			'disclaimer.weightEstimate.description' => 'La variation de poids projetée est une estimation théorique basée sur le modèle simple calories entrantes vs calories dépensées. Elle sert uniquement de guide motivationnel et non de prédiction de votre poids réel.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Précision des calories',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Cette estimation n\'est aussi précise que vos apports et dépenses caloriques enregistrés. Un enregistrement inexact donnera une projection inexacte.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Facteurs biologiques',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'La perte/prise de poids réelle est influencée par le métabolisme, les hormones, le sommeil, le stress, l\'hydratation et d\'autres facteurs individuels que ${appLabel} ne peut pas mesurer.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Poids d\'eau & fluctuations',
			'disclaimer.weightEstimate.waterWeight.description' => 'Le poids quotidien normal peut beaucoup fluctuer en raison de la rétention d\'eau, de la digestion et du timing. L\'estimation ne tient pas compte de ces variations journalières.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Conseils professionnels',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'N\'utilisez pas cette estimation pour prendre des décisions médicales. Consultez toujours un professionnel de santé ou un diététicien diplômé pour des conseils personnalisés en gestion du poids.',
			'disclaimer.healthMetrics.description' => 'Ces indicateurs vous aident à comprendre les besoins énergétiques de votre corps et à guider vos objectifs nutritionnels.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Le Basal Metabolic Rate (BMR) est le nombre de calories que votre corps brûle au repos pour maintenir des fonctions de base comme la respiration et la circulation. Le BMR dépend de votre âge, genre, taille et poids. Un BMR plus élevé signifie que votre corps brûle naturellement plus de calories au repos, souvent à cause d\'une masse musculaire plus importante, d\'un âge plus jeune ou du genre masculin. Un BMR plus faible indique généralement moins de masse musculaire, un âge plus avancé ou le genre féminin.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Le Total Daily Energy Expenditure (TDEE) est le total des calories brûlées par jour, incluant votre BMR plus les calories liées à l\'activité physique et aux mouvements quotidiens. Le TDEE dépend de votre BMR et de votre niveau d\'activité. Un TDEE plus élevé signifie que vous brûlez plus de calories au global, généralement en étant plus actif ou en ayant un BMR plus élevé. Un TDEE plus faible suggère moins d\'activité quotidienne ou un BMR plus bas.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Objectif quotidien',
			'disclaimer.healthMetrics.dailyGoal.description' => 'L\'objectif quotidien est votre apport calorique recommandé basé sur votre TDEE et votre objectif de poids. Pour perdre du poids, vous consommez moins de calories que votre TDEE. Pour maintenir, vous égalez votre TDEE. Pour prendre, vous consommez plus de calories que votre TDEE. Cela vous aide à atteindre le changement de poids souhaité à un rythme sain.',
			'disclaimer.calorieExpenditure.title' => 'Estimation de la dépense calorique',
			'disclaimer.calorieExpenditure.description' => 'Lorsque les données Health Connect ne sont pas disponibles, nous estimons les calories brûlées aujourd\'hui en utilisant votre BMR et votre niveau d\'activité (TDEE), ajustés à la fraction de la journée écoulée.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Comment l\'estimation est calculée',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Nous calculons votre TDEE (basé sur votre profil) et le multiplions par la fraction de la journée écoulée (heures + minutes) / 24 pour estimer les calories brûlées jusqu\'à présent.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Conseils professionnels',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'N\'utilisez pas cette estimation pour prendre des décisions médicales. Consultez toujours un professionnel de santé ou un diététicien diplômé pour des conseils personnalisés en gestion du poids.',
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
			'common.close' => 'Fermer',
			'common.kContinue' => 'Continuer',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Vous aimez ${appLabel} ?',
			'feedbackRating.yes' => 'Oui, j\'aime',
			'feedbackRating.no' => 'Pas vraiment',
			'feedbackRating.rateStepHeading' => 'Noter sur le Play Store',
			'feedbackRating.emailStepHeading' => 'Envoyer un retour par email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Une note rapide aide les autres à trouver ${appLabel} et soutient le développement. Pourriez‑vous prendre un moment pour en laisser une ?',
			'feedbackRating.shareFeedbackViaEmail' => 'Vos retours influencent la suite — nous lisons chaque message. Souhaitez‑vous partager vos impressions par email ?',
			'feedbackRating.rateCta' => 'Noter sur le Play Store',
			'feedbackRating.maybeLater' => 'Peut‑être plus tard',
			'feedbackRating.sendFeedback' => 'Envoyer un retour',
			'feedbackRating.noThanks' => 'Non merci',
			'feedbackRating.aboutUsDescription' => 'Conçu avec soin par une petite équipe. Nous privilégions la confidentialité, la simplicité et vous aider à adopter de meilleures habitudes alimentaires.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Curieux de savoir qui est derrière ${appLabel} ? Voir ',
			'feedbackRating.aboutUsLinkLabel' => 'À propos de nous',
			'feedbackRating.thankYouMessage' => 'Merci ! Nous redemanderons une autre fois.',
			'health.syncFailed' => 'Impossible de synchroniser vers Health Connect',
			'health.mealSynced' => 'Repas synchronisé avec Health Connect',
			_ => null,
		};
	}
}
