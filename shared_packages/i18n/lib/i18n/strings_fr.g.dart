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
class TranslationsFr extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

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
class _TranslationsErrorsFr extends TranslationsErrorsEn {
	_TranslationsErrorsFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsOnboardingFr extends TranslationsOnboardingEn {
	_TranslationsOnboardingFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsTabsFr extends TranslationsTabsEn {
	_TranslationsTabsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Tableau de bord';
	@override String get history => 'Historique';
}

// Path: home
class _TranslationsHomeFr extends TranslationsHomeEn {
	_TranslationsHomeFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsHistoryFr extends TranslationsHistoryEn {
	_TranslationsHistoryFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Aucun repas enregistré';
	@override String get emptyMessage => 'Prenez une photo de votre dernier repas pour l\'enregistrer ici.';
	@override String get today => 'Aujourd\'hui';
	@override String get yesterday => 'Hier';
}

// Path: meal
class _TranslationsMealFr extends TranslationsMealEn {
	_TranslationsMealFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsFavoritesFr extends TranslationsFavoritesEn {
	_TranslationsFavoritesFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsProfileFr extends TranslationsProfileEn {
	_TranslationsProfileFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsHealthScoreFr extends TranslationsHealthScoreEn {
	_TranslationsHealthScoreFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsEditProfileFr extends TranslationsEditProfileEn {
	_TranslationsEditProfileFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
	@override String get unitLbs => 'lb';
	@override String get metricCm => 'Métrique (cm)';
	@override String get imperialFtIn => 'Impérial (ft/in)';
	@override String get metricKg => 'Métrique (kg)';
	@override String get imperialLbs => 'Impérial (lbs)';
	@override late final _TranslationsEditProfileGendersFr genders = _TranslationsEditProfileGendersFr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsFr weightGoals = _TranslationsEditProfileWeightGoalsFr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsFr activityLevels = _TranslationsEditProfileActivityLevelsFr._(_root);
}

// Path: settings
class _TranslationsSettingsFr extends TranslationsSettingsEn {
	_TranslationsSettingsFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsRemindersFr extends TranslationsRemindersEn {
	_TranslationsRemindersFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsNotificationsFr extends TranslationsNotificationsEn {
	_TranslationsNotificationsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastFr breakfast = _TranslationsNotificationsBreakfastFr._(_root);
	@override late final _TranslationsNotificationsLunchFr lunch = _TranslationsNotificationsLunchFr._(_root);
	@override late final _TranslationsNotificationsDinnerFr dinner = _TranslationsNotificationsDinnerFr._(_root);
	@override late final _TranslationsNotificationsSnackFr snack = _TranslationsNotificationsSnackFr._(_root);
	@override late final _TranslationsNotificationsTestFr test = _TranslationsNotificationsTestFr._(_root);
}

// Path: login
class _TranslationsLoginFr extends TranslationsLoginEn {
	_TranslationsLoginFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Connexion';
	@override String get signInWithGoogle => 'Se connecter avec Google';
	@override String get signInFailed => 'La connexion Google a échoué ou a été annulée.';
}

// Path: disclaimer
class _TranslationsDisclaimerFr extends TranslationsDisclaimerEn {
	_TranslationsDisclaimerFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Veuillez noter';
	@override late final _TranslationsDisclaimerSnapFr snap = _TranslationsDisclaimerSnapFr._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateFr weightEstimate = _TranslationsDisclaimerWeightEstimateFr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsFr healthMetrics = _TranslationsDisclaimerHealthMetricsFr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureFr calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureFr._(_root);
}

// Path: localNutritionPhase4
class _TranslationsLocalNutritionPhase4Fr extends TranslationsLocalNutritionPhase4En {
	_TranslationsLocalNutritionPhase4Fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get nutritionBundled => 'Valeurs nutritionnelles trouvées dans le pack USDA téléchargé';
	@override String get nutritionCached => 'Valeurs nutritionnelles trouvées dans le cache USDA de l’appareil';
	@override String get nutritionMixed => 'Valeurs nutritionnelles combinées à partir des lignes USDA téléchargées, mises en cache et distantes';
	@override String get calculationLocal => 'Calories et macronutriments calculés sur cet appareil';
	@override String ingredientBundled({required Object ingredient}) => '${ingredient} : pack USDA téléchargé';
	@override String ingredientCached({required Object ingredient}) => '${ingredient} : cache USDA de l’appareil';
	@override String ingredientRemote({required Object ingredient}) => '${ingredient} : ligne USDA récupérée via Calorify';
	@override String ingredientDeterministic({required Object ingredient}) => '${ingredient} : constante nutritionnelle déterministe';
	@override String ingredientReference({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · jeu de données ${datasetVersion}';
	@override String get portionSmaller => 'Plus petite';
	@override String get portionEstimated => 'Estimée';
	@override String get portionLarger => 'Plus grande';
	@override String portionQuestion({required Object ingredient}) => 'Quelle portion était la plus proche pour ${ingredient} ?';
	@override String get mealTypeQuestion => 'De quel repas s’agissait-il ?';
	@override String get localNutritionTip => 'Calculé à partir de données nutritionnelles locales vérifiées.';
	@override String get offlineNutritionTitle => 'Télécharger les données nutritionnelles';
	@override String get offlineNutritionSubtitle => 'Utilisez des lignes USDA vérifiées et un calcul déterministe sur cet appareil lorsque tous les ingrédients sont couverts.';
	@override String get offlineNutritionUnavailable => 'Les données nutritionnelles locales ne sont pas disponibles pour cette version de l’application.';
	@override String get offlineNutritionNotDownloaded => 'Aucun pack nutritionnel vérifié n’est téléchargé.';
	@override String get offlineNutritionInstalling => 'Téléchargement et vérification des données nutritionnelles…';
	@override String offlineNutritionStatus({required Object version, required Object size, required Object datasetVersion}) => 'Paquet ${version} · ${size} · USDA ${datasetVersion}';
	@override String offlineNutritionCacheStatus({required Object count, required Object size}) => '${count} lignes USDA en cache · ${size}';
	@override String get offlineNutritionUpdate => 'Rechercher une mise à jour';
	@override String get offlineNutritionClear => 'Effacer les données nutritionnelles locales';
	@override String get offlineNutritionClearTitle => 'Effacer les données nutritionnelles locales ?';
	@override String get offlineNutritionClearBody => 'Cette action supprime le pack USDA téléchargé et le cache de recherche. Les repas enregistrés conservent l’instantané nutritionnel exact utilisé lors de leur sauvegarde.';
	@override String get offlineNutritionClearConfirm => 'Effacer les données';
	@override String offlineNutritionInstallFailed({required Object error}) => 'Impossible de télécharger et de vérifier les données nutritionnelles locales : ${error}';
	@override String get offlineNutritionCleared => 'Données nutritionnelles locales effacées';
}

// Path: common
class _TranslationsCommonFr extends TranslationsCommonEn {
	_TranslationsCommonFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get close => 'Fermer';
	@override String get kContinue => 'Continuer';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingFr extends TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsHealthFr extends TranslationsHealthEn {
	_TranslationsHealthFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Impossible de synchroniser vers Health Connect';
	@override String get mealSynced => 'Repas synchronisé avec Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesFr extends TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionFr foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionFr._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisFr aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisFr._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationFr healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationFr._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderFr extends TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quel est votre genre ?';
	@override String get description => 'Le genre nous aide à calculer précisément votre métabolisme de base (BMR).';
	@override String get next => 'Suivant';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightFr extends TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quelle est votre taille ?';
	@override String get description => 'Votre taille nous aide à calculer précisément votre IMC et vos besoins énergétiques.';
	@override String get metric => 'Métrique';
	@override String get imperial => 'Impérial';
	@override String get next => 'Suivant';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightFr extends TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsOnboardingAgeFr extends TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quelle est votre date de naissance ?';
	@override String get description => 'Votre âge nous aide à calculer précisément vos besoins caloriques.';
	@override String get next => 'Suivant';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleFr extends TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsOnboardingWeightGoalFr extends TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quel est votre objectif ?';
	@override String get description => 'Choisissez l\'objectif qui décrit le mieux ce que vous voulez atteindre';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelFr extends TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quel est votre niveau d\'activité ?';
	@override String get description => 'Cela nous aide à calculer plus précisément vos besoins caloriques quotidiens';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectFr extends TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Connectez-vous à Health Connect';
	@override String get description => 'Synchronisez vos données de santé pour de meilleurs insights et un suivi automatique des calories';
	@override String get overviewDescription => 'Utilisez les calories brûlées dans votre objectif quotidien et partagez, si vous le souhaitez, les repas enregistrés avec Health Connect.';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingFr automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingFr._(_root);
	@override late final _TranslationsOnboardingHealthConnectCaloriesBurnedFr caloriesBurned = _TranslationsOnboardingHealthConnectCaloriesBurnedFr._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsFr progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsFr._(_root);
	@override late final _TranslationsOnboardingHealthConnectShareLoggedMealsFr shareLoggedMeals = _TranslationsOnboardingHealthConnectShareLoggedMealsFr._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationFr seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationFr._(_root);
	@override late final _TranslationsOnboardingHealthConnectUserControlFr userControl = _TranslationsOnboardingHealthConnectUserControlFr._(_root);
	@override String get connected => 'Health Connect connecté';
	@override String get notConnected => 'Health Connect non connecté';
	@override String get setup => 'Configurer Health Connect';
	@override String get skipForNow => 'Passer pour l\'instant';
	@override String get statusConnected => 'Health Connect est connecté.';
	@override String get statusSuccess => 'Health Connect a été connecté avec succès !';
	@override String get statusNotConnected => 'Choisissez les fonctions Health Connect que vous souhaitez activer.';
	@override String get statusPartial => 'Health Connect est partiellement connecté. Accordez l\'autorisation restante pour utiliser les deux fonctions.';
	@override String get statusProviderUpdateRequired => 'Installez ou mettez à jour Health Connect pour continuer.';
	@override String get statusUnavailable => 'Health Connect n\'est pas pris en charge sur cet appareil.';
	@override String get installOrUpdate => 'Installer ou mettre à jour';
	@override String get manageAccess => 'Gérer l\'accès';
	@override String statusPermissionDenied({required Object appLabel}) => 'Permission refusée. Veuillez activer les autorisations Health Connect depuis les paramètres de votre téléphone pour ${appLabel}.';
	@override String statusError({required Object error}) => 'Erreur lors de la configuration de Health Connect : ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementFr extends TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessFr trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessFr._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileFr healthProfile = _TranslationsOnboardingReinforcementHealthProfileFr._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleFr goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleFr._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryFr extends TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsHomeDailyGoalFr extends TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
	@override String get kcal => 'kilocalories';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryFr extends TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Résumé quotidien';
	@override String get calories => 'Énergie consommée';
	@override String get carbs => 'Glucides';
	@override String get protein => 'Protéines';
	@override String get fat => 'Lipides';
	@override String get fiber => 'Fibres';
	@override String get grams => 'grammes';
	@override String get chartAccessibilityLabel => 'Graphique des macronutriments';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressFr extends TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Répartition macro d\'aujourd\'hui';
	@override String get target => 'Cible';
	@override String get current => 'Actuel';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryFr extends TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Historique macro sur 7 jours';
	@override String get trendTitle => 'Tendance d\'aujourd\'hui';
	@override String peakHour({required Object hour}) => 'Pic : ${hour}:00';
	@override String get noHistoryYet => 'Aucun historique pour le moment';
	@override String get startLogging => 'Commencez à enregistrer vos repas pour voir vos\ntendances macro sur 7 jours ici';
}

// Path: home.mealLog
class _TranslationsHomeMealLogFr extends TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Repas enregistrés';
	@override String get emptyMessage => 'Prenez une photo de votre dernier repas pour l\'enregistrer ici.';
	@override String get noMealsToday => 'Aucun repas enregistré aujourd\'hui';
	@override String get seeAllMeals => 'Voir tous les repas';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionFr extends TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ajout rapide avec AI';
	@override String get description => 'Décrivez votre repas et laissez l\'AI s\'occuper des détails.';
	@override String get hint => 'ex. Pour le petit‑déjeuner j\'ai pris un grand bol de flocons d\'avoine avec une banane tranchée et une dose de whey ...';
	@override String get analyzeMeal => 'Analyser le repas';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsFr extends TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsHomeMealSnapFr extends TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsHomeConnectHealthFr extends TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synchroniser avec Health Connect';
	@override String get description => 'Synchronisez vos données nutritionnelles avec Health Connect';
	@override String get install => 'Installer';
	@override String get dataUseDescription => 'Utilisez les calories brûlées dans votre objectif et partagez les repas enregistrés';
	@override String get installOrUpdate => 'Installer ou mettre à jour';
	@override String get connect => 'Connecter';
}

// Path: meal.nutrition
class _TranslationsMealNutritionFr extends TranslationsMealNutritionEn {
	_TranslationsMealNutritionFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Valeur énergétique';
	@override String get carbs => 'Glucides (g)';
	@override String get protein => 'Protéines (g)';
	@override String get fat => 'Lipides (g)';
	@override String get fiber => 'Fibres (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationFr extends TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supprimer le repas';
	@override String get message => 'Êtes‑vous sûr(e) de vouloir supprimer cette entrée de repas ?';
	@override String get cancel => 'Annuler';
	@override String get delete => 'Supprimer';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowFr extends TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Question ${current} sur ${total}';
	@override String get noQuestionsAvailable => 'Aucune question disponible';
	@override String get next => 'Suivant';
	@override String get continueLabel => 'Continuer';
}

// Path: meal.analysis
class _TranslationsMealAnalysisFr extends TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
	@override String mealPreviewDescription({required Object text}) => '« ${text} »';
	@override String get offlineTip0 => 'Astuce : La régularité vaut mieux que la perfection—les enregistrements réguliers montrent les tendances importantes.';
	@override String get offlineTip1 => 'Astuce : Pour les photos, la lumière naturelle et une vue de dessus aident à estimer les portions.';
	@override String get offlineTip2 => 'Astuce : Mentionnez les boissons, sauces et huiles de cuisson—elles ajoutent souvent des calories oubliées.';
	@override String get offlineTip3 => 'Astuce : Une brève indication de portion (1 bol, grand café) améliore nettement les estimations.';
	@override String get offlineTip4 => 'Astuce : Enregistrer après le repas aide aussi à créer l\'habitude ; la perfection est optionnelle.';
	@override String get offlineTip5 => 'Astuce : Indiquez le mode de cuisson lorsque cela change beaucoup les calories (frit vs cuit au four).';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceFr extends TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsMealFeedbackFr extends TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsFavoritesSortOptionsFr extends TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Récents';
	@override String get calories => 'Valeur calorique';
	@override String get alphabetical => 'A‑Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsFr extends TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'INFORMATIONS DE BASE';
	@override String get goalsAndActivity => 'OBJECTIFS & ACTIVITÉ';
	@override String get calculatedValues => 'VALEURS CALCULÉES';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesFr extends TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Objectif quotidien';
	@override String get calPerDay => 'cal/jour';
	@override String get notAvailable => 'N/D';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsFr extends TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMATIONS PERSONNELLES';
	@override String get physicalMeasurements => 'MESURES PHYSIQUES';
	@override String get goalsAndActivity => 'OBJECTIFS & ACTIVITÉ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersFr extends TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get male => 'Homme';
	@override String get female => 'Femme';
	@override String get other => 'Autre';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsFr extends TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightFr loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightFr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightFr maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightFr._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightFr gainWeight = _TranslationsEditProfileWeightGoalsGainWeightFr._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsFr extends TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryFr sedentary = _TranslationsEditProfileActivityLevelsSedentaryFr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveFr lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveFr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveFr moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveFr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveFr veryActive = _TranslationsEditProfileActivityLevelsVeryActiveFr._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveFr extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveFr._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsFr extends TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get localization => 'LOCALISATION';
	@override String get notifications => 'AVIS';
	@override String get healthConnect => 'CONNEXION HEALTH CONNECT';
	@override String get localInference => 'ANALYSE SUR L\'APPAREIL';
	@override String get supportAndLegal => 'SUPPORT & LÉGAL';
	@override String get about => 'À PROPOS';
	@override String get dangerZone => 'ZONE DANGEREUSE';
	@override String get developer => 'DÉVELOPPEUR';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileFr extends TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifier le profil';
	@override String get subtitle => 'Mettez à jour vos informations personnelles';
}

// Path: settings.language
class _TranslationsSettingsLanguageFr extends TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Langue';
	@override String get subtitle => 'Choisissez votre langue préférée';
	@override String get searchHint => 'Rechercher des langues...';
	@override String get noResults => 'Aucun résultat trouvé';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitFr extends TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unité de taille';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitFr extends TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unité de poids';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersFr extends TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rappels de repas';
	@override String get subtitle => 'Restez sur la bonne voie grâce à des alertes ponctuelles';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceFr extends TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsThemeFr extends TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thème';
	@override String get light => 'Clair';
	@override String get dark => 'Sombre';
	@override String get system => 'Système';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackFr extends TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsExportMealHistoryFr extends TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exporter l\'historique des repas';
	@override String get subtitle => 'Partagez un CSV de vos repas enregistrés';
	@override String get shareText => 'Export de l\'historique des repas Calorify';
	@override String failed({required Object error}) => 'Impossible d\'exporter l\'historique des repas : ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataFr extends TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get localOnlySubtitle => 'Supprimer les données Calorify stockées sur cet appareil';
	@override String get localOnlyConfirmationMessage => 'Cette action supprime définitivement de cet appareil les repas enregistrés, les favoris et les paramètres du profil. Les repas déjà partagés avec Health Connect et l\'accès à Health Connect sont gérés séparément dans Paramètres > Health Connect.';
	@override String get title => 'Supprimer toutes les données';
	@override String get subtitle => 'Supprimer irréversiblement toutes vos informations';
	@override String get confirmationTitle => 'Supprimer toutes les données ?';
	@override String get confirmationMessage => 'Cette action est irréversible. Tous vos repas enregistrés, favoris et paramètres de profil seront définitivement supprimés.';
	@override String get cancel => 'Annuler';
	@override String get clearEverything => 'Tout supprimer';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsFr extends TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Options de débogage';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectFr extends TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Voir et gérer les autorisations';
	@override late final _TranslationsSettingsHealthConnectUnavailableFr unavailable = _TranslationsSettingsHealthConnectUnavailableFr._(_root);
	@override late final _TranslationsSettingsHealthConnectUpdateRequiredFr updateRequired = _TranslationsSettingsHealthConnectUpdateRequiredFr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsFr permissions = _TranslationsSettingsHealthConnectPermissionsFr._(_root);
	@override String get managePermissions => 'Gérer les autorisations';
	@override String get openSettings => 'Ouvrir les paramètres Health Connect';
	@override String get disconnect => 'Déconnecter Health Connect';
	@override String get disconnectConfirmationTitle => 'Déconnecter Health Connect ?';
	@override String get disconnectConfirmationMessage => 'Calorify perdra l\'accès à Health Connect. Les données déjà enregistrées dans Health Connect ne seront pas supprimées.';
	@override String get disconnectConfirmationAction => 'Déconnecter';
	@override String get deleteSyncedMeals => 'Supprimer les repas Calorify de Health Connect';
	@override String get deleteSyncedMealsConfirmationTitle => 'Supprimer les repas synchronisés ?';
	@override String get deleteSyncedMealsConfirmationMessage => 'Supprimer de Health Connect les repas synchronisés par cette version de Calorify ? Votre journal de repas local ne changera pas. Les anciennes entrées Calorify devront peut-être encore être supprimées via Gérer les données dans Health Connect.';
	@override String get deleteSyncedMealsConfirmationAction => 'Supprimer les repas synchronisés';
	@override String get deleteSyncedMealsSuccess => 'Les repas Calorify ont été supprimés de Health Connect.';
	@override String get deleteSyncedMealsFailed => 'Impossible de supprimer les repas synchronisés. Veuillez réessayer.';
	@override String get connectionPartial => 'Certaines fonctions Health Connect sont activées.';
	@override String get connectionComplete => 'Les deux fonctions Health Connect sont activées.';
	@override String get actionFailed => 'Impossible d\'ouvrir Health Connect. Veuillez réessayer.';
	@override String get requestPermissions => 'Demander les autorisations';
	@override String get permissionRequestCancelledOrFailed => 'La demande d\'autorisation a été annulée ou a échoué. Veuillez réessayer ou accorder les autorisations manuellement dans les paramètres de Health Connect.';
	@override String get permissionRequestFailed => 'Impossible de demander les autorisations. Veuillez réessayer ou accorder les autorisations manuellement dans les paramètres de Health Connect.';
	@override String get requestingPermissions => 'Demande en cours...';
}

// Path: settings.about
class _TranslationsSettingsAboutFr extends TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsAppInfoFr extends TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify version ${version}';
	@override String build({required Object buildNumber}) => 'Révision ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastFr extends TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C\'est l\'heure du petit‑déjeuner ! 🍳';
	@override String get body => 'N\'oubliez pas d\'enregistrer votre petit‑déjeuner';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchFr extends TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C\'est l\'heure du déjeuner ! 🥗';
	@override String get body => 'Il est temps d\'enregistrer votre déjeuner';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerFr extends TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C\'est l\'heure du dîner ! 🍽️';
	@override String get body => 'N\'oubliez pas d\'enregistrer votre dîner';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackFr extends TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C\'est l\'heure d\'une collation ! 🍎';
	@override String get body => 'Le moment d\'une collation saine';
}

// Path: notifications.test
class _TranslationsNotificationsTestFr extends TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notification de test';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapFr extends TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} fournit des informations nutritionnelles estimées. La précision dépend de vos saisies et des variations alimentaires. Utilisez‑les comme guide, pas comme une source définitive. Consultez un professionnel pour des conseils diététiques personnalisés.';
	@override late final _TranslationsDisclaimerSnapPortionSizeFr portionSize = _TranslationsDisclaimerSnapPortionSizeFr._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsFr preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsFr._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsFr ingredients = _TranslationsDisclaimerSnapIngredientsFr._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsFr databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsFr._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateFr extends TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsDisclaimerHealthMetricsFr extends TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get description => 'Ces indicateurs vous aident à comprendre les besoins énergétiques de votre corps et à guider vos objectifs nutritionnels.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrFr bmr = _TranslationsDisclaimerHealthMetricsBmrFr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeFr tdee = _TranslationsDisclaimerHealthMetricsTdeeFr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalFr dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalFr._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureFr extends TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimation de la dépense calorique';
	@override String get description => 'Lorsque les données Health Connect ne sont pas disponibles, nous estimons les calories brûlées aujourd\'hui en utilisant votre BMR et votre niveau d\'activité (TDEE), ajustés à la fraction de la journée écoulée.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedFr howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedFr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionFr extends TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reconnaissance intelligente des aliments';
	@override String get description => 'Prenez une photo et laissez l\'AI identifier votre repas';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisFr extends TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyse par AI';
	@override String get description => 'Obtenez instantanément les infos nutritionnelles à partir de vos descriptions';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationFr extends TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intégration Health Connect';
	@override String get description => 'Connectez-vous à Health Connect pour des informations plus complètes';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesFr extends TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Insuffisance pondérale';
	@override String get healthyWeight => 'Poids santé';
	@override String get overweight => 'Surpoids';
	@override String get obese => 'Obésité';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesFr extends TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Nous pouvons vous aider à élaborer un plan sain pour atteindre un poids équilibré avec des repas riches en nutriments.';
	@override String get healthy => 'Bravo ! Vous êtes dans une fourchette saine. Nous vous aiderons à maintenir votre vitalité et votre énergie.';
	@override String overweight({required Object appLabel}) => '${appLabel} simplifiera votre parcours avec un suivi assisté par AI pour vous aider à atteindre votre objectif en douceur.';
	@override String get obese => 'Nous sommes là pour vous soutenir avec des conseils personnalisés et des stratégies durables pour vos objectifs de santé.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingFr extends TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suivi automatique des calories';
	@override String get description => 'Suivez les calories brûlées depuis vos apps de fitness';
}

// Path: onboarding.healthConnect.caloriesBurned
class _TranslationsOnboardingHealthConnectCaloriesBurnedFr extends TranslationsOnboardingHealthConnectCaloriesBurnedEn {
	_TranslationsOnboardingHealthConnectCaloriesBurnedFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calories brûlées';
	@override String get description => 'Consultez le total des calories brûlées aujourd\'hui depuis Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsFr extends TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyses de progression';
	@override String get description => 'Obtenez des insights détaillés sur vos tendances de santé';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _TranslationsOnboardingHealthConnectShareLoggedMealsFr extends TranslationsOnboardingHealthConnectShareLoggedMealsEn {
	_TranslationsOnboardingHealthConnectShareLoggedMealsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Partager les repas enregistrés';
	@override String get description => 'Enregistrez dans Health Connect les repas que vous ajoutez à Calorify';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationFr extends TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intégration fluide';
	@override String get description => 'Synchronisez les données de vos apps de santé préférées';
}

// Path: onboarding.healthConnect.userControl
class _TranslationsOnboardingHealthConnectUserControlFr extends TranslationsOnboardingHealthConnectUserControlEn {
	_TranslationsOnboardingHealthConnectUserControlFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vous gardez le contrôle';
	@override String get description => 'Choisissez l\'une ou l\'autre autorisation et modifiez l\'accès à tout moment';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessFr extends TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsOnboardingReinforcementHealthProfileFr extends TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsOnboardingReinforcementGoalLifestyleFr extends TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsEditProfileWeightGoalsLoseWeightFr extends TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perdre du poids';
	@override String get description => 'Créer un déficit calorique pour perdre du poids';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightFr extends TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Maintenir le poids';
	@override String get description => 'Maintenir votre poids actuel';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightFr extends TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Prendre du poids';
	@override String get description => 'Créer un surplus calorique pour prendre du poids';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryFr extends TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sédentaire';
	@override String get description => 'Peu ou pas d\'exercice';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveFr extends TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Légèrement actif';
	@override String get description => 'Exercice léger 1‑3 jours/semaine';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveFr extends TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Modérément actif';
	@override String get description => 'Exercice modéré 3‑5 jours/semaine';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveFr extends TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Très actif';
	@override String get description => 'Exercice intense 6‑7 jours/semaine';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveFr extends TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrêmement actif';
	@override String get description => 'Exercice très intense, travail physique';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableFr extends TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get unsupportedDescription => 'Health Connect n\'est pas pris en charge sur cet appareil.';
	@override String get title => 'Health Connect indisponible';
	@override String get description => 'Health Connect n\'est pas disponible sur cet appareil. Veuillez installer Health Connect depuis le Play Store (Android 9+) ou mettre à jour vers Android 14+.';
}

// Path: settings.healthConnect.updateRequired
class _TranslationsSettingsHealthConnectUpdateRequiredFr extends TranslationsSettingsHealthConnectUpdateRequiredEn {
	_TranslationsSettingsHealthConnectUpdateRequiredFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect nécessite votre attention';
	@override String get description => 'Installez ou mettez à jour Health Connect avant de gérer l\'accès.';
	@override String get action => 'Installer ou mettre à jour';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsFr extends TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _TranslationsSettingsAboutOurStoryFr extends TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notre histoire';
	@override String content({required Object appLabel}) => '${appLabel} est né d\'une frustration simple : la plupart des apps de suivi des calories sont soit trop compliquées, demandent des saisies manuelles constantes, facturent des abonnements élevés, soit compromettent la vie privée.\n\nEn tant que développeur solo, je voulais créer quelque chose de plus simple et plus juste — une app qui utilise l\'AI pour réduire l\'effort, reste rapide et gratuite à utiliser, et respecte vos données de santé.\n\n${appLabel} est l\'app que j\'aurais aimé trouver : pas de compte, pas de pistage, pas de publicités — juste des insights clairs et pratiques et vos objectifs de santé.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyFr extends TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Votre vie privée compte';
	@override String get description => 'La confidentialité n\'est pas une réflexion après coup — c\'est un principe de conception. Voici ce que cela signifie en pratique :';
	@override String get noAccounts => 'Aucun compte requis\nUtilisez l\'app immédiatement. Pas d\'inscription, pas d\'identifiants.';
	@override String noTracking({required Object appLabel}) => 'Aucun suivi comportemental\n${appLabel} ne suit pas votre activité, ne crée pas de profils d\'utilisation et ne vous piste pas à travers les apps ou les sites web.';
	@override String analyticsDisclosure({required Object appLabel}) => 'Analyses et diagnostics limités\n${appLabel} utilise des événements de base de l\'application et des diagnostics de plantage pour améliorer sa fiabilité. Les valeurs des données de santé ne servent pas à la publicité et ne sont pas vendues.';
	@override String noAds({required Object appLabel}) => 'Sans publicité par conception\n${appLabel} est conçu pour fonctionner sans publicités ni monétisation basée sur les données.';
	@override String get noDataSelling => 'Pas de vente de données\nVos données de santé ne sont jamais vendues ou partagées avec des tiers.';
	@override String get localStorage => 'Stockage local prioritaire\nVos données restent sur votre appareil.';
	@override String get privacyPolicy => 'Politique de confidentialité';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperFr extends TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conçu par un développeur solo';
	@override String description({required Object appLabel}) => '${appLabel} est développé et maintenu par un seul développeur axé sur la création de logiciels de santé calmes et respectueux de la vie privée.\n\nLes retours sont lus personnellement et contribuent à orienter l\'évolution de l\'app.';
	@override String get website => 'Site web';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackFr extends TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Vous aimez ${appLabel} ?';
	@override String description({required Object appLabel}) => 'Vos retours aident à améliorer ${appLabel} pour tout le monde.';
	@override String get rateApp => 'Noter sur le Play Store';
	@override String get sendFeedback => 'Envoyer un retour';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeFr extends TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Taille de la portion';
	@override String get description => 'La précision des estimations dépend fortement de l\'évaluation correcte de la taille de la portion.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsFr extends TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Méthodes de préparation';
	@override String description({required Object appLabel}) => 'Les modes de cuisson peuvent modifier significativement la valeur nutritionnelle des aliments. Les estimations de ${appLabel} peuvent ne pas toujours prendre en compte ces variations.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsFr extends TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingrédients';
	@override String get description => 'Les plats complexes avec de nombreux ingrédients cachés peuvent conduire à des estimations moins précises.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsFr extends TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limites de la base de données';
	@override String description({required Object appLabel}) => 'La base de données d\'aliments de ${appLabel} est étendue mais peut ne pas inclure chaque ingrédient ou variation.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyFr extends TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Précision des calories';
	@override String get description => 'Cette estimation n\'est aussi précise que vos apports et dépenses caloriques enregistrés. Un enregistrement inexact donnera une projection inexacte.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsFr extends TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Facteurs biologiques';
	@override String description({required Object appLabel}) => 'La perte/prise de poids réelle est influencée par le métabolisme, les hormones, le sommeil, le stress, l\'hydratation et d\'autres facteurs individuels que ${appLabel} ne peut pas mesurer.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightFr extends TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Poids d\'eau & fluctuations';
	@override String get description => 'Le poids quotidien normal peut beaucoup fluctuer en raison de la rétention d\'eau, de la digestion et du timing. L\'estimation ne tient pas compte de ces variations journalières.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceFr extends TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conseils professionnels';
	@override String get description => 'N\'utilisez pas cette estimation pour prendre des décisions médicales. Consultez toujours un professionnel de santé ou un diététicien diplômé pour des conseils personnalisés en gestion du poids.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrFr extends TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Le Basal Metabolic Rate (BMR) est le nombre de calories que votre corps brûle au repos pour maintenir des fonctions de base comme la respiration et la circulation. Le BMR dépend de votre âge, genre, taille et poids. Un BMR plus élevé signifie que votre corps brûle naturellement plus de calories au repos, souvent à cause d\'une masse musculaire plus importante, d\'un âge plus jeune ou du genre masculin. Un BMR plus faible indique généralement moins de masse musculaire, un âge plus avancé ou le genre féminin.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeFr extends TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Le Total Daily Energy Expenditure (TDEE) est le total des calories brûlées par jour, incluant votre BMR plus les calories liées à l\'activité physique et aux mouvements quotidiens. Le TDEE dépend de votre BMR et de votre niveau d\'activité. Un TDEE plus élevé signifie que vous brûlez plus de calories au global, généralement en étant plus actif ou en ayant un BMR plus élevé. Un TDEE plus faible suggère moins d\'activité quotidienne ou un BMR plus bas.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalFr extends TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Objectif quotidien';
	@override String get description => 'L\'objectif quotidien est votre apport calorique recommandé basé sur votre TDEE et votre objectif de poids. Pour perdre du poids, vous consommez moins de calories que votre TDEE. Pour maintenir, vous égalez votre TDEE. Pour prendre, vous consommez plus de calories que votre TDEE. Cela vous aide à atteindre le changement de poids souhaité à un rythme sain.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedFr extends TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comment l\'estimation est calculée';
	@override String get description => 'Nous calculons votre TDEE (basé sur votre profil) et le multiplions par la fraction de la journée écoulée (heures + minutes) / 24 pour estimer les calories brûlées jusqu\'à présent.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr extends TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conseils professionnels';
	@override String get description => 'N\'utilisez pas cette estimation pour prendre des décisions médicales. Consultez toujours un professionnel de santé ou un diététicien diplômé pour des conseils personnalisés en gestion du poids.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFr extends TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lire les calories totales brûlées';
	@override String get description => 'Permet à l\'app de lire vos calories totales brûlées depuis Health Connect.';
	@override String get usage => 'Cette autorisation sert à afficher vos calories brûlées quotidiennes dans l\'app, afin de mieux comprendre votre dépense énergétique totale au cours de la journée.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadFr extends TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadFr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lire les données nutritionnelles';
	@override String get description => 'Permet à l\'app de lire les données nutritionnelles depuis Health Connect.';
	@override String get usage => 'Cette autorisation permet à l\'app de lire les informations nutritionnelles qui peuvent avoir été enregistrées par d\'autres apps connectées à Health Connect, offrant une vue complète de votre alimentation.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteFr extends TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteFr._(TranslationsFr root) : this._root = root, super.internal(root);

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
			'onboarding.healthConnect.overviewDescription' => 'Utilisez les calories brûlées dans votre objectif quotidien et partagez, si vous le souhaitez, les repas enregistrés avec Health Connect.',
			'onboarding.healthConnect.automaticTracking.title' => 'Suivi automatique des calories',
			'onboarding.healthConnect.automaticTracking.description' => 'Suivez les calories brûlées depuis vos apps de fitness',
			'onboarding.healthConnect.caloriesBurned.title' => 'Calories brûlées',
			'onboarding.healthConnect.caloriesBurned.description' => 'Consultez le total des calories brûlées aujourd\'hui depuis Health Connect',
			'onboarding.healthConnect.progressInsights.title' => 'Analyses de progression',
			'onboarding.healthConnect.progressInsights.description' => 'Obtenez des insights détaillés sur vos tendances de santé',
			'onboarding.healthConnect.shareLoggedMeals.title' => 'Partager les repas enregistrés',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Enregistrez dans Health Connect les repas que vous ajoutez à Calorify',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Intégration fluide',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchronisez les données de vos apps de santé préférées',
			'onboarding.healthConnect.userControl.title' => 'Vous gardez le contrôle',
			'onboarding.healthConnect.userControl.description' => 'Choisissez l\'une ou l\'autre autorisation et modifiez l\'accès à tout moment',
			'onboarding.healthConnect.connected' => 'Health Connect connecté',
			'onboarding.healthConnect.notConnected' => 'Health Connect non connecté',
			'onboarding.healthConnect.setup' => 'Configurer Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Passer pour l\'instant',
			'onboarding.healthConnect.statusConnected' => 'Health Connect est connecté.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect a été connecté avec succès !',
			'onboarding.healthConnect.statusNotConnected' => 'Choisissez les fonctions Health Connect que vous souhaitez activer.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect est partiellement connecté. Accordez l\'autorisation restante pour utiliser les deux fonctions.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => 'Installez ou mettez à jour Health Connect pour continuer.',
			'onboarding.healthConnect.statusUnavailable' => 'Health Connect n\'est pas pris en charge sur cet appareil.',
			'onboarding.healthConnect.installOrUpdate' => 'Installer ou mettre à jour',
			'onboarding.healthConnect.manageAccess' => 'Gérer l\'accès',
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
			'home.dailyGoal.kcal' => 'kilocalories',
			'home.dailySummary.title' => 'Résumé quotidien',
			'home.dailySummary.calories' => 'Énergie consommée',
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
			'home.connectHealth.dataUseDescription' => 'Utilisez les calories brûlées dans votre objectif et partagez les repas enregistrés',
			'home.connectHealth.installOrUpdate' => 'Installer ou mettre à jour',
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
			'meal.nutrition.calories' => 'Valeur énergétique',
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
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '« ${text} »',
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
			'favorites.sortOptions.calories' => 'Valeur calorique',
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
			'editProfile.unitLbs' => 'lb',
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
			'settings.sections.notifications' => 'AVIS',
			'settings.sections.healthConnect' => 'CONNEXION HEALTH CONNECT',
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
			'settings.clearAllData.localOnlySubtitle' => 'Supprimer les données Calorify stockées sur cet appareil',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Cette action supprime définitivement de cet appareil les repas enregistrés, les favoris et les paramètres du profil. Les repas déjà partagés avec Health Connect et l\'accès à Health Connect sont gérés séparément dans Paramètres > Health Connect.',
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
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect n\'est pas pris en charge sur cet appareil.',
			'settings.healthConnect.unavailable.title' => 'Health Connect indisponible',
			'settings.healthConnect.unavailable.description' => 'Health Connect n\'est pas disponible sur cet appareil. Veuillez installer Health Connect depuis le Play Store (Android 9+) ou mettre à jour vers Android 14+.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect nécessite votre attention',
			'settings.healthConnect.updateRequired.description' => 'Installez ou mettez à jour Health Connect avant de gérer l\'accès.',
			'settings.healthConnect.updateRequired.action' => 'Installer ou mettre à jour',
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
			'settings.healthConnect.disconnect' => 'Déconnecter Health Connect',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Déconnecter Health Connect ?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify perdra l\'accès à Health Connect. Les données déjà enregistrées dans Health Connect ne seront pas supprimées.',
			'settings.healthConnect.disconnectConfirmationAction' => 'Déconnecter',
			'settings.healthConnect.deleteSyncedMeals' => 'Supprimer les repas Calorify de Health Connect',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => 'Supprimer les repas synchronisés ?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => 'Supprimer de Health Connect les repas synchronisés par cette version de Calorify ? Votre journal de repas local ne changera pas. Les anciennes entrées Calorify devront peut-être encore être supprimées via Gérer les données dans Health Connect.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => 'Supprimer les repas synchronisés',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Les repas Calorify ont été supprimés de Health Connect.',
			'settings.healthConnect.deleteSyncedMealsFailed' => 'Impossible de supprimer les repas synchronisés. Veuillez réessayer.',
			'settings.healthConnect.connectionPartial' => 'Certaines fonctions Health Connect sont activées.',
			'settings.healthConnect.connectionComplete' => 'Les deux fonctions Health Connect sont activées.',
			'settings.healthConnect.actionFailed' => 'Impossible d\'ouvrir Health Connect. Veuillez réessayer.',
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
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => 'Analyses et diagnostics limités\n${appLabel} utilise des événements de base de l\'application et des diagnostics de plantage pour améliorer sa fiabilité. Les valeurs des données de santé ne servent pas à la publicité et ne sont pas vendues.',
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
			'settings.appInfo.version' => ({required Object version}) => 'Calorify version ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Révision ${buildNumber}',
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
			_ => null,
		} ?? switch (path) {
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
			'localNutritionPhase4.nutritionBundled' => 'Valeurs nutritionnelles trouvées dans le pack USDA téléchargé',
			'localNutritionPhase4.nutritionCached' => 'Valeurs nutritionnelles trouvées dans le cache USDA de l’appareil',
			'localNutritionPhase4.nutritionMixed' => 'Valeurs nutritionnelles combinées à partir des lignes USDA téléchargées, mises en cache et distantes',
			'localNutritionPhase4.calculationLocal' => 'Calories et macronutriments calculés sur cet appareil',
			'localNutritionPhase4.ingredientBundled' => ({required Object ingredient}) => '${ingredient} : pack USDA téléchargé',
			'localNutritionPhase4.ingredientCached' => ({required Object ingredient}) => '${ingredient} : cache USDA de l’appareil',
			'localNutritionPhase4.ingredientRemote' => ({required Object ingredient}) => '${ingredient} : ligne USDA récupérée via Calorify',
			'localNutritionPhase4.ingredientDeterministic' => ({required Object ingredient}) => '${ingredient} : constante nutritionnelle déterministe',
			'localNutritionPhase4.ingredientReference' => ({required Object fdcId, required Object datasetVersion}) => 'FDC ${fdcId} · jeu de données ${datasetVersion}',
			'localNutritionPhase4.portionSmaller' => 'Plus petite',
			'localNutritionPhase4.portionEstimated' => 'Estimée',
			'localNutritionPhase4.portionLarger' => 'Plus grande',
			'localNutritionPhase4.portionQuestion' => ({required Object ingredient}) => 'Quelle portion était la plus proche pour ${ingredient} ?',
			'localNutritionPhase4.mealTypeQuestion' => 'De quel repas s’agissait-il ?',
			'localNutritionPhase4.localNutritionTip' => 'Calculé à partir de données nutritionnelles locales vérifiées.',
			'localNutritionPhase4.offlineNutritionTitle' => 'Télécharger les données nutritionnelles',
			'localNutritionPhase4.offlineNutritionSubtitle' => 'Utilisez des lignes USDA vérifiées et un calcul déterministe sur cet appareil lorsque tous les ingrédients sont couverts.',
			'localNutritionPhase4.offlineNutritionUnavailable' => 'Les données nutritionnelles locales ne sont pas disponibles pour cette version de l’application.',
			'localNutritionPhase4.offlineNutritionNotDownloaded' => 'Aucun pack nutritionnel vérifié n’est téléchargé.',
			'localNutritionPhase4.offlineNutritionInstalling' => 'Téléchargement et vérification des données nutritionnelles…',
			'localNutritionPhase4.offlineNutritionStatus' => ({required Object version, required Object size, required Object datasetVersion}) => 'Paquet ${version} · ${size} · USDA ${datasetVersion}',
			'localNutritionPhase4.offlineNutritionCacheStatus' => ({required Object count, required Object size}) => '${count} lignes USDA en cache · ${size}',
			'localNutritionPhase4.offlineNutritionUpdate' => 'Rechercher une mise à jour',
			'localNutritionPhase4.offlineNutritionClear' => 'Effacer les données nutritionnelles locales',
			'localNutritionPhase4.offlineNutritionClearTitle' => 'Effacer les données nutritionnelles locales ?',
			'localNutritionPhase4.offlineNutritionClearBody' => 'Cette action supprime le pack USDA téléchargé et le cache de recherche. Les repas enregistrés conservent l’instantané nutritionnel exact utilisé lors de leur sauvegarde.',
			'localNutritionPhase4.offlineNutritionClearConfirm' => 'Effacer les données',
			'localNutritionPhase4.offlineNutritionInstallFailed' => ({required Object error}) => 'Impossible de télécharger et de vérifier les données nutritionnelles locales : ${error}',
			'localNutritionPhase4.offlineNutritionCleared' => 'Données nutritionnelles locales effacées',
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
