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
	@override late final _TranslationsCommonFr common = _TranslationsCommonFr._(_root);
	@override late final _TranslationsFeedbackRatingFr feedbackRating = _TranslationsFeedbackRatingFr._(_root);
	@override late final _TranslationsHealthFr health = _TranslationsHealthFr._(_root);
}

// Path: errors
class _TranslationsErrorsFr implements TranslationsErrorsEn {
	_TranslationsErrorsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Vous avez effectué trop de demandes. Veuillez patienter un instant avant de réessayer.';
	@override String get networkError => 'Erreur réseau. Veuillez vérifier votre connexion Internet.';
	@override String get unknownError => 'Un problème est survenu. Veuillez réessayer plus tard.';
	@override String get loadingProfileData => 'Erreur lors du chargement des données du profil';
	@override String get somethingWentWrong => 'Un problème est survenu.';
	@override String get retry => 'Réessayer';
}

// Path: onboarding
class _TranslationsOnboardingFr implements TranslationsOnboardingEn {
	_TranslationsOnboardingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bienvenue sur ${appLabel}';
	@override String get subtitle => 'Votre compagnon nutrition personnel propulsé par l’IA';
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
	@override String get emptyMessage => 'Prenez une photo de votre dernier repas pour l’enregistrer ici.';
	@override String get today => 'Aujourd’hui';
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
	@override String get mealQuantity => 'Quantité de repas';
	@override String get mealQuantityHint => 'ex. 1 bol, 2 tranches';
	@override String get timeOfMeal => 'Heure du repas';
	@override String get timeOfMealHint => 'Sélectionnez l’heure à laquelle vous avez pris votre repas';
	@override String get mealType => 'Type de repas';
	@override late final _TranslationsMealNutritionFr nutrition = _TranslationsMealNutritionFr._(_root);
	@override late final _TranslationsMealDeleteConfirmationFr deleteConfirmation = _TranslationsMealDeleteConfirmationFr._(_root);
	@override String get addedToLog => 'Repas ajouté à votre journal !';
	@override String couldNotAdd({required Object error}) => 'Impossible d’ajouter le repas : ${error}';
	@override String get savedSuccessfully => 'Repas ajouté avec succès !';
	@override String get updatedSuccessfully => 'Repas mis à jour avec succès !';
	@override String errorSaving({required Object error}) => 'Erreur lors de l’enregistrement du repas : ${error}';
	@override String get removedFromFavorites => 'Retiré des favoris !';
	@override String get savedAsFavorite => 'Repas enregistré comme favori !';
	@override String get unfavorite => 'Retirer des favoris';
	@override String couldNotUpdateFavorite({required Object error}) => 'Impossible de mettre à jour le favori : ${error}';
	@override String get feedbackThanks => 'Merci pour votre retour !';
	@override String get reanalysisUpdated => 'Analyse du repas mise à jour selon votre retour.';
	@override String failedToProcess({required Object error}) => 'Échec du traitement : ${error}';
	@override String failedToProcessImage({required Object error}) => 'Échec du traitement de l’image : ${error}';
	@override String errorCompressingImage({required Object error}) => 'Erreur lors de la compression de l’image : ${error}';
	@override String get failedToSave => 'Échec de l’enregistrement des données. Veuillez réessayer.';
	@override String get skip => 'Ignorer';
	@override late final _TranslationsMealQuestionFlowFr questionFlow = _TranslationsMealQuestionFlowFr._(_root);
	@override late final _TranslationsMealAnalysisFr analysis = _TranslationsMealAnalysisFr._(_root);
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
	@override String get searchEmptySubtitle => 'Essayez un autre nom de repas, une quantité ou un type de repas.';
	@override String get sortLabel => 'Trier les favoris';
	@override String get undo => 'Annuler';
	@override String removed({required Object name}) => '${name} a été retiré des favoris';
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
	@override String get viewAndManage => 'Consultez et gérez vos informations de santé';
	@override late final _TranslationsProfileSectionsFr sections = _TranslationsProfileSectionsFr._(_root);
	@override String get gender => 'Genre';
	@override String get height => 'Taille';
	@override String get weight => 'Poids';
	@override String get age => 'Âge';
	@override String get weightGoal => 'Objectif de poids';
	@override String get targetWeight => 'Poids cible';
	@override String get activityLevel => 'Niveau d’activité';
	@override String get healthMetrics => 'Mesures de santé';
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
	@override String get note => 'Ce score est une estimation par IA basée sur les ingrédients identifiés et la densité nutritionnelle. Demandez toujours l’avis d’un professionnel pour des conseils diététiques.';
	@override String get unhealthy => 'Malsain';
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
	@override String get activityLevel => 'Niveau d’activité';
	@override String get metric => 'Métrique';
	@override String get imperial => 'Impérial';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Métrique (cm)';
	@override String get imperialFtIn => 'Impérial (pieds/pouces)';
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
	@override String get description => 'Recevez de doux rappels pour enregistrer vos repas et rester régulier avec vos objectifs nutritionnels';
	@override String get notificationsEnabled => 'Notifications activées';
	@override String get notificationsDisabled => 'Notifications désactivées';
	@override String get enabledSubtitle => 'Vous recevrez des rappels de repas';
	@override String get disabledSubtitle => 'Activez les notifications pour recevoir des rappels de repas';
	@override String get mealReminders => 'Rappels de repas';
	@override String get breakfast => 'Petit-déjeuner';
	@override String get lunch => 'Déjeuner';
	@override String get dinner => 'Dîner';
	@override String get snack => 'Collation';
	@override String get unknown => 'Inconnu';
	@override String get change => 'Modifier';
	@override String get enableNotifications => 'Activer les notifications';
	@override String get skipForNow => 'Ignorer pour le moment';
	@override String get saveChanges => 'Enregistrer les modifications';
	@override String get enabledSuccessfully => 'Notifications activées avec succès !';
	@override String get permissionDenied => 'Autorisation de notification refusée';
	@override String errorEnabling({required Object error}) => 'Erreur lors de l’activation des notifications : ${error}';
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
	@override String enjoyingQuestion({required Object appLabel}) => 'Vous appréciez ${appLabel} ?';
	@override String get yes => 'Oui, j’aime l’application';
	@override String get no => 'Pas vraiment';
	@override String get rateStepHeading => 'Noter sur le Play Store';
	@override String get emailStepHeading => 'Envoyer des commentaires par e-mail';
	@override String soloDevMessage({required Object appLabel}) => 'Une note rapide aide d’autres personnes à découvrir ${appLabel} et soutient le développement. Pourriez-vous en laisser une ?';
	@override String get shareFeedbackViaEmail => 'Vos retours orientent la suite — nous lisons chaque message. Voulez-vous partager votre avis par e-mail ?';
	@override String get rateCta => 'Noter sur le Play Store';
	@override String get maybeLater => 'Peut-être plus tard';
	@override String get sendFeedback => 'Envoyer des commentaires';
	@override String get noThanks => 'Non merci';
	@override String get aboutUsDescription => 'Fait avec soin par une petite équipe. Nous nous concentrons sur la confidentialité, la simplicité et l’aide à de meilleures habitudes alimentaires.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Curieux de savoir qui est derrière ${appLabel} ? Voir ';
	@override String get aboutUsLinkLabel => 'À propos de nous';
	@override String get thankYouMessage => 'Merci ! Nous vous le redemanderons une autre fois.';
}

// Path: health
class _TranslationsHealthFr implements TranslationsHealthEn {
	_TranslationsHealthFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Impossible de synchroniser avec Health Connect';
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
	@override String get targetDescription => 'Définir un poids cible nous aide à établir votre plan à long terme.';
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
	@override String get description => 'Choisissez l’objectif qui décrit le mieux ce que vous souhaitez atteindre';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelFr implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quel est votre niveau d’activité ?';
	@override String get description => 'Cela nous aide à calculer plus précisément vos besoins caloriques quotidiens';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectFr implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Connectez Health Connect';
	@override String get description => 'Synchronisez vos données de santé pour de meilleurs insights et un suivi automatique des calories';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingFr automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingFr._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsFr progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsFr._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationFr seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationFr._(_root);
	@override String get connected => 'Health Connect connecté';
	@override String get notConnected => 'Health Connect non connecté';
	@override String get setup => 'Configurer Health Connect';
	@override String get skipForNow => 'Ignorer pour le moment';
	@override String get statusConnected => 'Health Connect est connecté.';
	@override String get statusSuccess => 'Health Connect a été connecté avec succès !';
	@override String statusPermissionDenied({required Object appLabel}) => 'Autorisation refusée. Veuillez activer les autorisations Health Connect dans les paramètres de votre téléphone pour ${appLabel}.';
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
	@override String get title => 'Votre synthèse IA';
	@override String get logMore => 'Enregistrez plus de repas au cours des prochains jours pour obtenir des insights IA personnalisés.';
	@override String get loading => 'Chargement de votre synthèse...';
	@override String mealCount({required Object count}) => '${count} repas enregistrés';
	@override String macroBalanceScore({required Object score}) => 'Score d’équilibre ${score}';
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
	@override String get description => 'Prêt à entamer votre parcours bien-être ? Définissez ci-dessous votre cible calorique quotidienne pour lancer votre progression.';
	@override String get descriptionSet => 'Votre cap est fixé ! Voici votre cible calorique quotidienne pour vous guider.';
	@override String get yourGoal => 'Votre objectif';
	@override String get goal => 'Objectif';
	@override String get dailyCalories => 'Calories quotidiennes (kcal)';
	@override String get setGoal => 'Définir l’objectif';
	@override String get intake => 'Apport';
	@override String get burned => 'Brûlées';
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
	@override String get title => 'Répartition des macronutriments aujourd’hui';
	@override String get target => 'Cible';
	@override String get current => 'Actuel';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryFr implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Historique des macros sur 7 jours';
	@override String get trendTitle => 'Tendance du jour';
	@override String peakHour({required Object hour}) => 'Pic : ${hour}:00';
	@override String get noHistoryYet => 'Aucun historique pour l’instant';
	@override String get startLogging => 'Commencez à enregistrer des repas pour voir vos\ntendances des macros sur 7 jours ici';
}

// Path: home.mealLog
class _TranslationsHomeMealLogFr implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Repas enregistrés';
	@override String get emptyMessage => 'Prenez une photo de votre dernier repas pour l’enregistrer ici.';
	@override String get noMealsToday => 'Aucun repas enregistré aujourd’hui';
	@override String get seeAllMeals => 'Voir tous les repas';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionFr implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ajout rapide avec l’IA';
	@override String get description => 'Décrivez votre repas et laissez l’IA s’occuper des détails.';
	@override String get hint => 'ex. Au petit-déjeuner, j’ai pris un grand bol de flocons d’avoine avec une banane tranchée et une dose de whey ...';
	@override String get analyzeMeal => 'Analyser le repas';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsFr implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Repas favoris';
	@override String get description => 'Ajoutez rapidement l’un de vos repas favoris.';
	@override String get noFavorites => 'Aucun repas favori pour le moment.';
	@override String get addFavoriteHint => 'Cliquez sur l’étoile d’un repas pour le marquer comme favori.';
	@override String get seeAll => 'Tout voir';
	@override String get add => 'Ajouter';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapFr implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Photographiez et suivez votre repas';
	@override String get description => 'Utilisez votre appareil photo pour prendre votre plat et bénéficier d’une analyse par IA.';
	@override String get openCamera => 'Ouvrir l’appareil photo';
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
	@override String get description => 'Synchronisez vos données de nutrition avec Health Connect';
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
	@override String get message => 'Voulez-vous vraiment supprimer cette entrée de repas ?';
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
	@override String get title => 'Analyse du repas par IA';
	@override String get stepStarted => 'Démarrage…';
	@override String get stepDecomposition => 'Compréhension de votre repas…';
	@override String get stepIngredients => 'Association des ingrédients à la base nutritionnelle…';
	@override String get stepUncertainty => 'Vérification de la confiance…';
	@override String get stepMealTypeQuestion => 'Presque terminé…';
	@override String get stepResult => 'Finalisation du résultat…';
	@override String get stepError => 'Un problème est survenu';
	@override String get stepDefault => 'Analyse de votre repas…';
	@override String get progressUnderstand => 'Comprendre';
	@override String get progressMatch => 'Associer';
	@override String get progressCheck => 'Vérifier';
	@override String get progressMealType => 'Sélection du type de repas';
	@override String get progressFinish => 'Terminer';
	@override String get detectedIngredientHeading => 'Ingrédients détectés';
	@override String ingredientsOverflow({required Object count}) => '${count} de plus';
	@override String ingredientsLine({required Object count}) => '${count} ingrédients détectés';
	@override String get ingredientsPending => 'Analyse des ingrédients…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackFr implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qu\'est-ce qui semble incorrect ?';
	@override String get subtitle => 'Aidez-nous à améliorer l\'analyse en sélectionnant un ou plusieurs problèmes.';
	@override String get tellUsMore => 'Dites-nous-en plus';
	@override String get describeIncorrect => 'Décrivez ce qui était incorrect';
	@override String get submit => 'Envoyer';
	@override String get issueFoodIdentification => 'Identification de l\'aliment';
	@override String get issuePortionSize => 'Taille de la portion';
	@override String get issueCalorieDistribution => 'Répartition des calories';
	@override String get issueMacrosWrong => 'Macros incorrects';
	@override String get issueMissingItems => 'Éléments manquants';
	@override String get issueExtraItems => 'Éléments en trop';
	@override String get issueOther => 'Autre';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsFr implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Récent';
	@override String get calories => 'Calories';
	@override String get alphabetical => 'A-Z';
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
	@override String get supportAndLegal => 'ASSISTANCE & LÉGAL';
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
	@override String get noResults => 'Aucun résultat';
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
	@override String get subtitle => 'Restez sur la bonne voie avec des alertes ponctuelles';
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
	@override String get title => 'Envoyer des commentaires';
	@override String subtitle({required Object appLabel}) => 'Aidez-nous à améliorer ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Commentaires sur l’application ${appLabel}';
	@override String get emailBodyPrefix => 'Veuillez fournir vos commentaires ci-dessous :';
	@override String get appVersion => 'Version de l’application';
	@override String get device => 'Appareil';
	@override String get osVersion => 'Version de l’OS';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryFr implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exporter l’historique des repas';
	@override String get subtitle => 'Partagez un CSV de vos repas enregistrés';
	@override String get shareText => 'Votre export de l’historique des repas Calorify';
	@override String failed({required Object error}) => 'Impossible d’exporter l’historique des repas : ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataFr implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Effacer toutes les données';
	@override String get subtitle => 'Supprimez irréversiblement toutes vos informations';
	@override String get confirmationTitle => 'Effacer toutes les données ?';
	@override String get confirmationMessage => 'Cette action ne peut pas être annulée. Tous vos repas enregistrés, favoris et paramètres de profil seront définitivement supprimés.';
	@override String get cancel => 'Annuler';
	@override String get clearEverything => 'Tout effacer';
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
	@override String get subtitle => 'Afficher et gérer les autorisations';
	@override late final _TranslationsSettingsHealthConnectUnavailableFr unavailable = _TranslationsSettingsHealthConnectUnavailableFr._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsFr permissions = _TranslationsSettingsHealthConnectPermissionsFr._(_root);
	@override String get managePermissions => 'Gérer les autorisations';
	@override String get openSettings => 'Ouvrir les paramètres Health Connect';
	@override String get requestPermissions => 'Demander les autorisations';
	@override String get permissionRequestCancelledOrFailed => 'La demande d’autorisation a été annulée ou a échoué. Veuillez réessayer ou accorder les autorisations manuellement dans les paramètres de Health Connect.';
	@override String get permissionRequestFailed => 'Impossible de demander les autorisations. Veuillez réessayer ou accorder les autorisations manuellement dans les paramètres de Health Connect.';
	@override String get requestingPermissions => 'Demande en cours...';
}

// Path: settings.about
class _TranslationsSettingsAboutFr implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'À propos';
	@override String get tagline => 'Rapide, gratuit et respectueux de la vie privée';
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
	@override String get title => 'C’est l’heure du petit-déjeuner ! 🍳';
	@override String get body => 'N’oubliez pas d’enregistrer votre petit-déjeuner';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchFr implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C’est l’heure du déjeuner ! 🥗';
	@override String get body => 'Il est temps d’enregistrer votre déjeuner';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerFr implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C’est l’heure du dîner ! 🍽️';
	@override String get body => 'N’oubliez pas d’enregistrer votre dîner';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackFr implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C’est l’heure d’une collation ! 🍎';
	@override String get body => 'C’est le moment d’une collation saine';
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
	@override String description({required Object appLabel}) => '${appLabel} fournit des informations nutritionnelles estimées. La précision dépend de vos saisies et des variations des aliments. À utiliser comme guide, pas comme source définitive. Demandez conseil à un professionnel pour des recommandations personnalisées.';
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
	@override String get title => 'À propos de l’estimation de poids';
	@override String get description => 'Le changement de poids projeté est une estimation théorique basée sur le modèle simple « calories ingérées vs calories dépensées ». Il s’agit d’un repère motivationnel uniquement, pas d’une prédiction de votre poids réel.';
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
	@override String get description => 'Ces mesures vous aident à comprendre les besoins énergétiques de votre corps et à guider vos objectifs nutritionnels.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrFr bmr = _TranslationsDisclaimerHealthMetricsBmrFr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeFr tdee = _TranslationsDisclaimerHealthMetricsTdeeFr._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalFr dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalFr._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureFr implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimation des calories dépensées';
	@override String get description => 'Quand les données Health Connect ne sont pas disponibles, nous estimons les calories brûlées aujourd’hui à partir de votre métabolisme de base (BMR) et de votre niveau d’activité (TDEE), ajustés pour la portion de journée écoulée.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedFr howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedFr._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionFr implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reconnaissance intelligente des aliments';
	@override String get description => 'Prenez une photo et laissez l’IA identifier votre repas';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisFr implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyse par IA';
	@override String get description => 'Obtenez instantanément des infos nutritionnelles à partir de vos descriptions';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationFr implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intégration Santé';
	@override String get description => 'Connectez Health Connect pour de meilleurs insights';
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
	@override String get healthy => 'Bravo ! Vous êtes dans une zone saine. Nous vous aiderons à maintenir votre vitalité et votre niveau d’énergie.';
	@override String overweight({required Object appLabel}) => '${appLabel} simplifiera votre parcours grâce au suivi assisté par IA pour vous aider à atteindre votre objectif confortablement.';
	@override String get obese => 'Nous sommes là pour vous accompagner avec des conseils personnalisés et des stratégies durables pour vos objectifs de santé.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingFr implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suivi automatique des calories';
	@override String get description => 'Suivez les calories dépensées depuis vos applications de fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsFr implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Insights sur votre progression';
	@override String get description => 'Obtenez des insights détaillés sur vos tendances de santé';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationFr implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intégration fluide';
	@override String get description => 'Synchronisez les données de vos applications de santé préférées';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessFr implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vous n’êtes pas seul(e)';
	@override String get genericMessage => 'Les recherches montrent que le suivi régulier est le facteur n°1 de réussite à long terme.';
	@override String personalizedMessage({required Object gender, required Object age, required Object goal}) => 'Pour un(e) ${gender} de ${age} ans souhaitant ${goal}, le suivi régulier est le facteur n°1 de réussite.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} rend cela 10× plus simple qu’à la main.';
	@override String get getStartedTitle => 'Prêt à commencer ?';
	@override String get tipPhoto => 'Prenez vos repas en photo pour une analyse instantanée';
	@override String get tipConsistency => 'Enregistrez régulièrement pour voir des progrès significatifs';
	@override String get tipProgress => 'Suivez votre progression au quotidien pour rester motivé(e)';
	@override String get button => 'C’est parti';
	@override String get defaultGender => 'individu';
	@override String get defaultGoal => 'une meilleure santé';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileFr implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Votre profil santé';
	@override String bmiDescription({required Object bmi}) => 'D’après vos mesures, votre IMC est de ${bmi}.';
	@override String get finalizeDescription => 'Finalisons votre profil pour personnaliser votre expérience.';
	@override String get goalGain => 'prendre';
	@override String get goalLose => 'perdre';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Pour atteindre votre objectif, vous allez ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Vous êtes à votre poids cible ! Nous vous aiderons à le maintenir.';
	@override String get button => 'C’est parti';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleFr implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Excellent début !';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Vous avez franchi la première étape vers ${goalText}. Comme vous êtes ${activityText}, ${appLabel} ajustera vos objectifs pour correspondre à votre style de vie.';
	@override String get personalizedTargets => 'Objectifs caloriques personnalisés';
	@override String get aiMealDetection => 'Détection des repas par IA';
	@override String get macroBreakdowns => 'Répartition détaillée des macronutriments';
	@override String get button => 'C’est parti';
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
	@override String get description => 'Peu ou pas d’exercice';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveFr implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Légèrement actif';
	@override String get description => 'Exercice léger 1–3 jours/semaine';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveFr implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Modérément actif';
	@override String get description => 'Exercice modéré 3–5 jours/semaine';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveFr implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Très actif';
	@override String get description => 'Exercice intense 6–7 jours/semaine';
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
	@override String get description => 'Health Connect n’est pas disponible sur cet appareil. Veuillez installer Health Connect depuis le Play Store (Android 9+) ou mettre à jour vers Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsFr implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autorisations';
	@override String get description => 'Les autorisations suivantes sont nécessaires pour proposer l’intégration Health Connect :';
	@override String get granted => 'Accordée';
	@override String get notGranted => 'Non accordée';
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
	@override String content({required Object appLabel}) => '${appLabel} est né d’une simple frustration : la plupart des applications de suivi des calories sont soit trop compliquées, exigent des saisies manuelles constantes, imposent des abonnements coûteux, soit compromettent la confidentialité.\n\nEn tant que développeur solo, je voulais créer quelque chose de plus simple et plus juste — une application qui utilise l’IA pour réduire l’effort, qui reste rapide et gratuite, et qui respecte vos données de santé.\n\n${appLabel} est l’application que j’aurais aimé avoir : pas de compte, pas de traçage, pas de publicités — juste des insights clairs, pratiques, et vos objectifs de santé.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyFr implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Votre vie privée compte';
	@override String get description => 'La confidentialité n’est pas une réflexion après coup — c’est un principe de conception. Concrètement, cela signifie :';
	@override String get noAccounts => 'Aucun compte requis\nUtilisez l’application immédiatement. Pas d’inscription, pas d’identités.';
	@override String noTracking({required Object appLabel}) => 'Aucun traçage comportemental\n${appLabel} ne surveille pas votre activité, ne crée pas de profils d’utilisation et ne vous suit pas à travers les applications ou sites.';
	@override String noAds({required Object appLabel}) => 'Sans publicité par conception\n${appLabel} est conçu pour fonctionner sans publicités ni monétisation basée sur les données.';
	@override String get noDataSelling => 'Aucune vente de données\nVos données de santé ne sont jamais vendues ni partagées avec des tiers.';
	@override String get localStorage => 'Stockage local en priorité\nVos données restent sur votre appareil.';
	@override String get privacyPolicy => 'Politique de confidentialité';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperFr implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Créé par un développeur solo';
	@override String description({required Object appLabel}) => '${appLabel} est développé et maintenu par un développeur solo, dédié à créer un logiciel de santé apaisant et respectueux de la vie privée.\n\nLes retours sont lus personnellement et orientent l’évolution de l’application.';
	@override String get website => 'Site web';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackFr implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Vous appréciez ${appLabel} ?';
	@override String description({required Object appLabel}) => 'Vos retours aident à améliorer ${appLabel} pour tout le monde.';
	@override String get rateApp => 'Noter sur le Play Store';
	@override String get sendFeedback => 'Envoyer des commentaires';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeFr implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Taille des portions';
	@override String get description => 'La précision des estimations repose fortement sur votre évaluation correcte de la portion.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsFr implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Méthodes de préparation';
	@override String description({required Object appLabel}) => 'Les modes de cuisson peuvent modifier de façon significative la composition nutritionnelle. Les estimations de ${appLabel} ne prennent pas toujours en compte ces variations.';
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
	@override String description({required Object appLabel}) => 'La base de données alimentaire de ${appLabel} est vaste mais peut ne pas inclure chaque aliment ou chaque variation.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyFr implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Précision des calories';
	@override String get description => 'Cette estimation est aussi précise que votre suivi des calories consommées et dépensées. Un enregistrement imprécis conduira à une projection imprécise.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsFr implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Facteurs biologiques';
	@override String description({required Object appLabel}) => 'La perte/prise de poids réelle dépend du métabolisme, des hormones, du sommeil, du stress, de l’hydratation et d’autres facteurs individuels que ${appLabel} ne peut pas mesurer.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightFr implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eau et fluctuations';
	@override String get description => 'Le poids quotidien normal peut fluctuer fortement en raison de la rétention d’eau, de la digestion et du timing. L’estimation ne tient pas compte de ces variations quotidiennes.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceFr implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conseils professionnels';
	@override String get description => 'N’utilisez pas cette estimation pour des décisions médicales. Demandez toujours l’avis d’un professionnel de santé ou d’un diététicien diplômé pour une prise en charge personnalisée.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrFr implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Le métabolisme de base (BMR) est le nombre de calories que votre corps brûle au repos pour assurer les fonctions vitales comme la respiration et la circulation. Le BMR dépend de votre âge, de votre genre, de votre taille et de votre poids. Un BMR plus élevé signifie que votre corps brûle naturellement plus de calories au repos, souvent grâce à une masse musculaire plus importante, un âge plus jeune, ou le fait d’être un homme. Un BMR plus bas indique généralement moins de masse musculaire, un âge plus avancé, ou le fait d’être une femme.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeFr implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'La dépense énergétique quotidienne totale (TDEE) est le total des calories brûlées par jour, incluant votre BMR plus l’activité physique et les mouvements quotidiens. Le TDEE dépend de votre BMR et de votre niveau d’activité. Un TDEE plus élevé signifie que vous brûlez davantage de calories au total, généralement parce que vous êtes plus actif(ve) ou avez un BMR plus élevé. Un TDEE plus faible suggère une activité quotidienne moindre ou un BMR plus bas.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalFr implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Objectif quotidien';
	@override String get description => 'L’objectif quotidien est votre apport calorique recommandé selon votre TDEE et votre objectif de poids. Pour perdre du poids, vous consommez moins que votre TDEE. Pour maintenir, vous l’égalez. Pour prendre du poids, vous consommez plus que votre TDEE. Cela vous aide à atteindre votre changement de poids souhaité à un rythme sain.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedFr implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comment l’estimation est calculée';
	@override String get description => 'Nous calculons votre TDEE (en fonction de votre profil) et le multiplions par la fraction de la journée écoulée (heures + minutes) / 24 pour estimer les calories brûlées jusqu’à présent.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conseils professionnels';
	@override String get description => 'N’utilisez pas cette estimation pour des décisions médicales. Demandez toujours l’avis d’un professionnel de santé ou d’un diététicien diplômé pour une prise en charge personnalisée.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFr implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lire le total des calories brûlées';
	@override String get description => 'Autorise l’application à lire votre total de calories brûlées depuis Health Connect.';
	@override String get usage => 'Cette autorisation est utilisée pour afficher votre dépense calorique quotidienne dans l’application, afin de vous aider à comprendre votre dépense énergétique totale.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadFr implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lire les données de nutrition';
	@override String get description => 'Autorise l’application à lire les données de nutrition depuis Health Connect.';
	@override String get usage => 'Cette autorisation permet à l’application de lire les informations de nutrition éventuellement enregistrées par d’autres applications connectées à Health Connect, pour une vue d’ensemble complète.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteFr implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Écrire les données de nutrition';
	@override String get description => 'Autorise l’application à écrire des données de nutrition dans Health Connect.';
	@override String get usage => 'Cette autorisation permet de synchroniser vos repas enregistrés vers Health Connect, rendant vos données de nutrition disponibles pour vos autres applications de santé et de fitness.';
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
			'errors.rateLimitExceeded' => 'Vous avez effectué trop de demandes. Veuillez patienter un instant avant de réessayer.',
			'errors.networkError' => 'Erreur réseau. Veuillez vérifier votre connexion Internet.',
			'errors.unknownError' => 'Un problème est survenu. Veuillez réessayer plus tard.',
			'errors.loadingProfileData' => 'Erreur lors du chargement des données du profil',
			'errors.somethingWentWrong' => 'Un problème est survenu.',
			'errors.retry' => 'Réessayer',
			'onboarding.welcome' => ({required Object appLabel}) => 'Bienvenue sur ${appLabel}',
			'onboarding.subtitle' => 'Votre compagnon nutrition personnel propulsé par l’IA',
			'onboarding.getStarted' => 'Commencer',
			'onboarding.features.foodRecognition.title' => 'Reconnaissance intelligente des aliments',
			'onboarding.features.foodRecognition.description' => 'Prenez une photo et laissez l’IA identifier votre repas',
			'onboarding.features.aiAnalysis.title' => 'Analyse par IA',
			'onboarding.features.aiAnalysis.description' => 'Obtenez instantanément des infos nutritionnelles à partir de vos descriptions',
			'onboarding.features.healthIntegration.title' => 'Intégration Santé',
			'onboarding.features.healthIntegration.description' => 'Connectez Health Connect pour de meilleurs insights',
			'onboarding.gender.title' => 'Quel est votre genre ?',
			'onboarding.gender.description' => 'Le genre nous aide à calculer précisément votre métabolisme de base (BMR).',
			'onboarding.gender.next' => 'Suivant',
			'onboarding.height.title' => 'Quelle est votre taille ?',
			'onboarding.height.description' => 'Votre taille nous aide à calculer votre IMC et vos besoins énergétiques avec précision.',
			'onboarding.height.metric' => 'Métrique',
			'onboarding.height.imperial' => 'Impérial',
			'onboarding.height.next' => 'Suivant',
			'onboarding.weight.currentTitle' => 'Quel est votre poids actuel ?',
			'onboarding.weight.currentDescription' => 'Votre poids actuel est essentiel pour personnaliser vos objectifs quotidiens.',
			'onboarding.weight.targetTitle' => 'Quel est votre poids cible ?',
			'onboarding.weight.targetDescription' => 'Définir un poids cible nous aide à établir votre plan à long terme.',
			'onboarding.weight.metric' => 'Métrique',
			'onboarding.weight.imperial' => 'Impérial',
			'onboarding.weight.next' => 'Suivant',
			'onboarding.age.title' => 'Quelle est votre date de naissance ?',
			'onboarding.age.description' => 'Votre âge nous aide à calculer précisément vos besoins caloriques.',
			'onboarding.age.next' => 'Suivant',
			'onboarding.bmiScale.underweight' => 'Insuff.',
			'onboarding.bmiScale.healthy' => 'Sain',
			'onboarding.bmiScale.overweight' => 'Surpoids',
			'onboarding.bmiScale.obese' => 'Obésité',
			'onboarding.bmiScale.categories.underweight' => 'Insuffisance pondérale',
			'onboarding.bmiScale.categories.healthyWeight' => 'Poids santé',
			'onboarding.bmiScale.categories.overweight' => 'Surpoids',
			'onboarding.bmiScale.categories.obese' => 'Obésité',
			'onboarding.bmiScale.messages.underweight' => 'Nous pouvons vous aider à établir un plan sain pour atteindre un poids équilibré avec des repas riches en nutriments.',
			'onboarding.bmiScale.messages.healthy' => 'Bravo ! Vous êtes dans une zone saine. Nous vous aiderons à maintenir votre vitalité et votre niveau d’énergie.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} simplifiera votre parcours grâce au suivi assisté par IA pour vous aider à atteindre votre objectif confortablement.',
			'onboarding.bmiScale.messages.obese' => 'Nous sommes là pour vous accompagner avec des conseils personnalisés et des stratégies durables pour vos objectifs de santé.',
			'onboarding.weightGoal.title' => 'Quel est votre objectif ?',
			'onboarding.weightGoal.description' => 'Choisissez l’objectif qui décrit le mieux ce que vous souhaitez atteindre',
			'onboarding.activityLevel.title' => 'Quel est votre niveau d’activité ?',
			'onboarding.activityLevel.description' => 'Cela nous aide à calculer plus précisément vos besoins caloriques quotidiens',
			'onboarding.healthConnect.title' => 'Connectez Health Connect',
			'onboarding.healthConnect.description' => 'Synchronisez vos données de santé pour de meilleurs insights et un suivi automatique des calories',
			'onboarding.healthConnect.automaticTracking.title' => 'Suivi automatique des calories',
			'onboarding.healthConnect.automaticTracking.description' => 'Suivez les calories dépensées depuis vos applications de fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Insights sur votre progression',
			'onboarding.healthConnect.progressInsights.description' => 'Obtenez des insights détaillés sur vos tendances de santé',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Intégration fluide',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Synchronisez les données de vos applications de santé préférées',
			'onboarding.healthConnect.connected' => 'Health Connect connecté',
			'onboarding.healthConnect.notConnected' => 'Health Connect non connecté',
			'onboarding.healthConnect.setup' => 'Configurer Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Ignorer pour le moment',
			'onboarding.healthConnect.statusConnected' => 'Health Connect est connecté.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect a été connecté avec succès !',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Autorisation refusée. Veuillez activer les autorisations Health Connect dans les paramètres de votre téléphone pour ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Erreur lors de la configuration de Health Connect : ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Vous n’êtes pas seul(e)',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Les recherches montrent que le suivi régulier est le facteur n°1 de réussite à long terme.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object gender, required Object age, required Object goal}) => 'Pour un(e) ${gender} de ${age} ans souhaitant ${goal}, le suivi régulier est le facteur n°1 de réussite.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} rend cela 10× plus simple qu’à la main.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Prêt à commencer ?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Prenez vos repas en photo pour une analyse instantanée',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Enregistrez régulièrement pour voir des progrès significatifs',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Suivez votre progression au quotidien pour rester motivé(e)',
			'onboarding.reinforcement.trackingSuccess.button' => 'C’est parti',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individu',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'une meilleure santé',
			'onboarding.reinforcement.healthProfile.title' => 'Votre profil santé',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'D’après vos mesures, votre IMC est de ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Finalisons votre profil pour personnaliser votre expérience.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'prendre',
			'onboarding.reinforcement.healthProfile.goalLose' => 'perdre',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Pour atteindre votre objectif, vous allez ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Vous êtes à votre poids cible ! Nous vous aiderons à le maintenir.',
			'onboarding.reinforcement.healthProfile.button' => 'C’est parti',
			'onboarding.reinforcement.goalLifestyle.title' => 'Excellent début !',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Vous avez franchi la première étape vers ${goalText}. Comme vous êtes ${activityText}, ${appLabel} ajustera vos objectifs pour correspondre à votre style de vie.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Objectifs caloriques personnalisés',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Détection des repas par IA',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Répartition détaillée des macronutriments',
			'onboarding.reinforcement.goalLifestyle.button' => 'C’est parti',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'vos objectifs',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'actif(ve)',
			'tabs.dashboard' => 'Tableau de bord',
			'tabs.history' => 'Historique',
			'home.aiSummary.title' => 'Votre synthèse IA',
			'home.aiSummary.logMore' => 'Enregistrez plus de repas au cours des prochains jours pour obtenir des insights IA personnalisés.',
			'home.aiSummary.loading' => 'Chargement de votre synthèse...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} repas enregistrés',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Score d’équilibre ${score}',
			'home.aiSummary.topFoods' => 'Aliments principaux',
			'home.aiSummary.trendUp' => 'Calories en hausse',
			'home.aiSummary.trendDown' => 'Calories en baisse',
			'home.aiSummary.trendSteady' => 'Calories stables',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Mis à jour ${time}',
			'home.dailyGoal.title' => 'Définissez votre objectif quotidien',
			'home.dailyGoal.titleSet' => 'Votre objectif quotidien',
			'home.dailyGoal.description' => 'Prêt à entamer votre parcours bien-être ? Définissez ci-dessous votre cible calorique quotidienne pour lancer votre progression.',
			'home.dailyGoal.descriptionSet' => 'Votre cap est fixé ! Voici votre cible calorique quotidienne pour vous guider.',
			'home.dailyGoal.yourGoal' => 'Votre objectif',
			'home.dailyGoal.goal' => 'Objectif',
			'home.dailyGoal.dailyCalories' => 'Calories quotidiennes (kcal)',
			'home.dailyGoal.setGoal' => 'Définir l’objectif',
			'home.dailyGoal.intake' => 'Apport',
			'home.dailyGoal.burned' => 'Brûlées',
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
			'home.intakeProgress.title' => 'Répartition des macronutriments aujourd’hui',
			'home.intakeProgress.target' => 'Cible',
			'home.intakeProgress.current' => 'Actuel',
			'home.intakeHistory.title' => 'Historique des macros sur 7 jours',
			'home.intakeHistory.trendTitle' => 'Tendance du jour',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Pic : ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Aucun historique pour l’instant',
			'home.intakeHistory.startLogging' => 'Commencez à enregistrer des repas pour voir vos\ntendances des macros sur 7 jours ici',
			'home.mealLog.title' => 'Repas enregistrés',
			'home.mealLog.emptyMessage' => 'Prenez une photo de votre dernier repas pour l’enregistrer ici.',
			'home.mealLog.noMealsToday' => 'Aucun repas enregistré aujourd’hui',
			'home.mealLog.seeAllMeals' => 'Voir tous les repas',
			'home.mealDescription.title' => 'Ajout rapide avec l’IA',
			'home.mealDescription.description' => 'Décrivez votre repas et laissez l’IA s’occuper des détails.',
			'home.mealDescription.hint' => 'ex. Au petit-déjeuner, j’ai pris un grand bol de flocons d’avoine avec une banane tranchée et une dose de whey ...',
			'home.mealDescription.analyzeMeal' => 'Analyser le repas',
			'home.favoriteMeals.title' => 'Repas favoris',
			'home.favoriteMeals.description' => 'Ajoutez rapidement l’un de vos repas favoris.',
			'home.favoriteMeals.noFavorites' => 'Aucun repas favori pour le moment.',
			'home.favoriteMeals.addFavoriteHint' => 'Cliquez sur l’étoile d’un repas pour le marquer comme favori.',
			'home.favoriteMeals.seeAll' => 'Tout voir',
			'home.favoriteMeals.add' => 'Ajouter',
			'home.mealSnap.title' => 'Photographiez et suivez votre repas',
			'home.mealSnap.description' => 'Utilisez votre appareil photo pour prendre votre plat et bénéficier d’une analyse par IA.',
			'home.mealSnap.openCamera' => 'Ouvrir l’appareil photo',
			'home.mealSnap.gallery' => 'Galerie',
			'home.mealSnap.compressingPhoto' => 'Optimisation de la photo…',
			'home.mealSnap.uploadingPhoto' => 'Téléversement de la photo…',
			'home.connectHealth.title' => 'Synchroniser avec Health Connect',
			'home.connectHealth.description' => 'Synchronisez vos données de nutrition avec Health Connect',
			'home.connectHealth.install' => 'Installer',
			'home.connectHealth.connect' => 'Connecter',
			'history.noMeals' => 'Aucun repas enregistré',
			'history.emptyMessage' => 'Prenez une photo de votre dernier repas pour l’enregistrer ici.',
			'history.today' => 'Aujourd’hui',
			'history.yesterday' => 'Hier',
			'meal.ohNo' => 'Oh non !',
			'meal.delete' => 'Supprimer',
			'meal.editMeal' => 'Modifier le repas',
			'meal.addMeal' => 'Ajouter un repas',
			'meal.saveMeal' => 'Enregistrer le repas',
			'meal.save' => 'Enregistrer',
			'meal.mealName' => 'Nom du repas',
			'meal.mealNameHint' => 'ex. Œufs brouillés avec toast',
			'meal.mealQuantity' => 'Quantité de repas',
			'meal.mealQuantityHint' => 'ex. 1 bol, 2 tranches',
			'meal.timeOfMeal' => 'Heure du repas',
			'meal.timeOfMealHint' => 'Sélectionnez l’heure à laquelle vous avez pris votre repas',
			'meal.mealType' => 'Type de repas',
			'meal.nutrition.calories' => 'Calories',
			'meal.nutrition.carbs' => 'Glucides (g)',
			'meal.nutrition.protein' => 'Protéines (g)',
			'meal.nutrition.fat' => 'Lipides (g)',
			'meal.nutrition.fiber' => 'Fibres (g)',
			'meal.deleteConfirmation.title' => 'Supprimer le repas',
			'meal.deleteConfirmation.message' => 'Voulez-vous vraiment supprimer cette entrée de repas ?',
			'meal.deleteConfirmation.cancel' => 'Annuler',
			'meal.deleteConfirmation.delete' => 'Supprimer',
			'meal.addedToLog' => 'Repas ajouté à votre journal !',
			'meal.couldNotAdd' => ({required Object error}) => 'Impossible d’ajouter le repas : ${error}',
			'meal.savedSuccessfully' => 'Repas ajouté avec succès !',
			'meal.updatedSuccessfully' => 'Repas mis à jour avec succès !',
			'meal.errorSaving' => ({required Object error}) => 'Erreur lors de l’enregistrement du repas : ${error}',
			'meal.removedFromFavorites' => 'Retiré des favoris !',
			'meal.savedAsFavorite' => 'Repas enregistré comme favori !',
			'meal.unfavorite' => 'Retirer des favoris',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Impossible de mettre à jour le favori : ${error}',
			'meal.feedbackThanks' => 'Merci pour votre retour !',
			'meal.reanalysisUpdated' => 'Analyse du repas mise à jour selon votre retour.',
			'meal.failedToProcess' => ({required Object error}) => 'Échec du traitement : ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Échec du traitement de l’image : ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Erreur lors de la compression de l’image : ${error}',
			'meal.failedToSave' => 'Échec de l’enregistrement des données. Veuillez réessayer.',
			'meal.skip' => 'Ignorer',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Question ${current} sur ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Aucune question disponible',
			'meal.questionFlow.next' => 'Suivant',
			'meal.questionFlow.continueLabel' => 'Continuer',
			'meal.analysis.title' => 'Analyse du repas par IA',
			'meal.analysis.stepStarted' => 'Démarrage…',
			'meal.analysis.stepDecomposition' => 'Compréhension de votre repas…',
			'meal.analysis.stepIngredients' => 'Association des ingrédients à la base nutritionnelle…',
			'meal.analysis.stepUncertainty' => 'Vérification de la confiance…',
			'meal.analysis.stepMealTypeQuestion' => 'Presque terminé…',
			'meal.analysis.stepResult' => 'Finalisation du résultat…',
			'meal.analysis.stepError' => 'Un problème est survenu',
			'meal.analysis.stepDefault' => 'Analyse de votre repas…',
			'meal.analysis.progressUnderstand' => 'Comprendre',
			'meal.analysis.progressMatch' => 'Associer',
			'meal.analysis.progressCheck' => 'Vérifier',
			'meal.analysis.progressMealType' => 'Sélection du type de repas',
			'meal.analysis.progressFinish' => 'Terminer',
			'meal.analysis.detectedIngredientHeading' => 'Ingrédients détectés',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} de plus',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingrédients détectés',
			'meal.analysis.ingredientsPending' => 'Analyse des ingrédients…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'Qu\'est-ce qui semble incorrect ?',
			'meal.feedback.subtitle' => 'Aidez-nous à améliorer l\'analyse en sélectionnant un ou plusieurs problèmes.',
			'meal.feedback.tellUsMore' => 'Dites-nous-en plus',
			'meal.feedback.describeIncorrect' => 'Décrivez ce qui était incorrect',
			'meal.feedback.submit' => 'Envoyer',
			'meal.feedback.issueFoodIdentification' => 'Identification de l\'aliment',
			'meal.feedback.issuePortionSize' => 'Taille de la portion',
			'meal.feedback.issueCalorieDistribution' => 'Répartition des calories',
			'meal.feedback.issueMacrosWrong' => 'Macros incorrects',
			'meal.feedback.issueMissingItems' => 'Éléments manquants',
			'meal.feedback.issueExtraItems' => 'Éléments en trop',
			'meal.feedback.issueOther' => 'Autre',
			'favorites.title' => 'Favoris',
			'favorites.empty' => 'Aucun repas favori pour le moment.',
			'favorites.searchPlaceholder' => 'Rechercher des repas favoris',
			'favorites.searchEmptyTitle' => 'Aucun favori ne correspond à votre recherche',
			'favorites.searchEmptySubtitle' => 'Essayez un autre nom de repas, une quantité ou un type de repas.',
			'favorites.sortLabel' => 'Trier les favoris',
			'favorites.undo' => 'Annuler',
			'favorites.removed' => ({required Object name}) => '${name} a été retiré des favoris',
			'favorites.sortOptions.recent' => 'Récent',
			'favorites.sortOptions.calories' => 'Calories',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profil',
			'profile.noProfileData' => 'Aucune donnée de profil trouvée',
			'profile.yourProfile' => 'Votre profil',
			'profile.viewAndManage' => 'Consultez et gérez vos informations de santé',
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
			'profile.activityLevel' => 'Niveau d’activité',
			'profile.healthMetrics' => 'Mesures de santé',
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
			'healthScore.note' => 'Ce score est une estimation par IA basée sur les ingrédients identifiés et la densité nutritionnelle. Demandez toujours l’avis d’un professionnel pour des conseils diététiques.',
			'healthScore.unhealthy' => 'Malsain',
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
			'editProfile.activityLevel' => 'Niveau d’activité',
			'editProfile.metric' => 'Métrique',
			'editProfile.imperial' => 'Impérial',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Métrique (cm)',
			'editProfile.imperialFtIn' => 'Impérial (pieds/pouces)',
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
			'editProfile.activityLevels.sedentary.description' => 'Peu ou pas d’exercice',
			'editProfile.activityLevels.lightlyActive.name' => 'Légèrement actif',
			'editProfile.activityLevels.lightlyActive.description' => 'Exercice léger 1–3 jours/semaine',
			'editProfile.activityLevels.moderatelyActive.name' => 'Modérément actif',
			'editProfile.activityLevels.moderatelyActive.description' => 'Exercice modéré 3–5 jours/semaine',
			'editProfile.activityLevels.veryActive.name' => 'Très actif',
			'editProfile.activityLevels.veryActive.description' => 'Exercice intense 6–7 jours/semaine',
			'editProfile.activityLevels.extremelyActive.name' => 'Extrêmement actif',
			'editProfile.activityLevels.extremelyActive.description' => 'Exercice très intense, travail physique',
			'settings.title' => 'Paramètres',
			'settings.sections.profile' => 'PROFIL',
			'settings.sections.localization' => 'LOCALISATION',
			'settings.sections.notifications' => 'NOTIFICATIONS',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'ASSISTANCE & LÉGAL',
			'settings.sections.about' => 'À PROPOS',
			'settings.sections.dangerZone' => 'ZONE DANGEREUSE',
			'settings.sections.developer' => 'DÉVELOPPEUR',
			'settings.editProfile.title' => 'Modifier le profil',
			'settings.editProfile.subtitle' => 'Mettez à jour vos informations personnelles',
			'settings.language.title' => 'Langue',
			'settings.language.subtitle' => 'Choisissez votre langue préférée',
			'settings.language.searchHint' => 'Rechercher des langues...',
			'settings.language.noResults' => 'Aucun résultat',
			'settings.heightUnit.title' => 'Unité de taille',
			'settings.weightUnit.title' => 'Unité de poids',
			'settings.mealReminders.title' => 'Rappels de repas',
			'settings.mealReminders.subtitle' => 'Restez sur la bonne voie avec des alertes ponctuelles',
			'settings.theme.title' => 'Thème',
			'settings.theme.light' => 'Clair',
			'settings.theme.dark' => 'Sombre',
			'settings.theme.system' => 'Système',
			'settings.sendFeedback.title' => 'Envoyer des commentaires',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Aidez-nous à améliorer ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Commentaires sur l’application ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Veuillez fournir vos commentaires ci-dessous :',
			'settings.sendFeedback.appVersion' => 'Version de l’application',
			'settings.sendFeedback.device' => 'Appareil',
			'settings.sendFeedback.osVersion' => 'Version de l’OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Exporter l’historique des repas',
			'settings.exportMealHistory.subtitle' => 'Partagez un CSV de vos repas enregistrés',
			'settings.exportMealHistory.shareText' => 'Votre export de l’historique des repas Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Impossible d’exporter l’historique des repas : ${error}',
			'settings.clearAllData.title' => 'Effacer toutes les données',
			'settings.clearAllData.subtitle' => 'Supprimez irréversiblement toutes vos informations',
			'settings.clearAllData.confirmationTitle' => 'Effacer toutes les données ?',
			'settings.clearAllData.confirmationMessage' => 'Cette action ne peut pas être annulée. Tous vos repas enregistrés, favoris et paramètres de profil seront définitivement supprimés.',
			'settings.clearAllData.cancel' => 'Annuler',
			'settings.clearAllData.clearEverything' => 'Tout effacer',
			'settings.debugOptions.title' => 'Options de débogage',
			'settings.developerModeEnabled' => 'Mode développeur activé !',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Afficher et gérer les autorisations',
			'settings.healthConnect.unavailable.title' => 'Health Connect indisponible',
			'settings.healthConnect.unavailable.description' => 'Health Connect n’est pas disponible sur cet appareil. Veuillez installer Health Connect depuis le Play Store (Android 9+) ou mettre à jour vers Android 14+.',
			'settings.healthConnect.permissions.title' => 'Autorisations',
			'settings.healthConnect.permissions.description' => 'Les autorisations suivantes sont nécessaires pour proposer l’intégration Health Connect :',
			'settings.healthConnect.permissions.granted' => 'Accordée',
			'settings.healthConnect.permissions.notGranted' => 'Non accordée',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Lire le total des calories brûlées',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Autorise l’application à lire votre total de calories brûlées depuis Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Cette autorisation est utilisée pour afficher votre dépense calorique quotidienne dans l’application, afin de vous aider à comprendre votre dépense énergétique totale.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Lire les données de nutrition',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Autorise l’application à lire les données de nutrition depuis Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Cette autorisation permet à l’application de lire les informations de nutrition éventuellement enregistrées par d’autres applications connectées à Health Connect, pour une vue d’ensemble complète.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Écrire les données de nutrition',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Autorise l’application à écrire des données de nutrition dans Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Cette autorisation permet de synchroniser vos repas enregistrés vers Health Connect, rendant vos données de nutrition disponibles pour vos autres applications de santé et de fitness.',
			'settings.healthConnect.managePermissions' => 'Gérer les autorisations',
			'settings.healthConnect.openSettings' => 'Ouvrir les paramètres Health Connect',
			'settings.healthConnect.requestPermissions' => 'Demander les autorisations',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'La demande d’autorisation a été annulée ou a échoué. Veuillez réessayer ou accorder les autorisations manuellement dans les paramètres de Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Impossible de demander les autorisations. Veuillez réessayer ou accorder les autorisations manuellement dans les paramètres de Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Demande en cours...',
			'settings.about.title' => 'À propos',
			'settings.about.tagline' => 'Rapide, gratuit et respectueux de la vie privée',
			'settings.about.ourStory.title' => 'Notre histoire',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} est né d’une simple frustration : la plupart des applications de suivi des calories sont soit trop compliquées, exigent des saisies manuelles constantes, imposent des abonnements coûteux, soit compromettent la confidentialité.\n\nEn tant que développeur solo, je voulais créer quelque chose de plus simple et plus juste — une application qui utilise l’IA pour réduire l’effort, qui reste rapide et gratuite, et qui respecte vos données de santé.\n\n${appLabel} est l’application que j’aurais aimé avoir : pas de compte, pas de traçage, pas de publicités — juste des insights clairs, pratiques, et vos objectifs de santé.',
			'settings.about.privacy.title' => 'Votre vie privée compte',
			'settings.about.privacy.description' => 'La confidentialité n’est pas une réflexion après coup — c’est un principe de conception. Concrètement, cela signifie :',
			'settings.about.privacy.noAccounts' => 'Aucun compte requis\nUtilisez l’application immédiatement. Pas d’inscription, pas d’identités.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Aucun traçage comportemental\n${appLabel} ne surveille pas votre activité, ne crée pas de profils d’utilisation et ne vous suit pas à travers les applications ou sites.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Sans publicité par conception\n${appLabel} est conçu pour fonctionner sans publicités ni monétisation basée sur les données.',
			'settings.about.privacy.noDataSelling' => 'Aucune vente de données\nVos données de santé ne sont jamais vendues ni partagées avec des tiers.',
			'settings.about.privacy.localStorage' => 'Stockage local en priorité\nVos données restent sur votre appareil.',
			'settings.about.privacy.privacyPolicy' => 'Politique de confidentialité',
			'settings.about.developer.title' => 'Créé par un développeur solo',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} est développé et maintenu par un développeur solo, dédié à créer un logiciel de santé apaisant et respectueux de la vie privée.\n\nLes retours sont lus personnellement et orientent l’évolution de l’application.',
			'settings.about.developer.website' => 'Site web',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Vous appréciez ${appLabel} ?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Vos retours aident à améliorer ${appLabel} pour tout le monde.',
			'settings.about.feedback.rateApp' => 'Noter sur le Play Store',
			'settings.about.feedback.sendFeedback' => 'Envoyer des commentaires',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Restez sur la bonne voie avec des rappels',
			'reminders.description' => 'Recevez de doux rappels pour enregistrer vos repas et rester régulier avec vos objectifs nutritionnels',
			'reminders.notificationsEnabled' => 'Notifications activées',
			'reminders.notificationsDisabled' => 'Notifications désactivées',
			'reminders.enabledSubtitle' => 'Vous recevrez des rappels de repas',
			'reminders.disabledSubtitle' => 'Activez les notifications pour recevoir des rappels de repas',
			'reminders.mealReminders' => 'Rappels de repas',
			'reminders.breakfast' => 'Petit-déjeuner',
			'reminders.lunch' => 'Déjeuner',
			'reminders.dinner' => 'Dîner',
			'reminders.snack' => 'Collation',
			'reminders.unknown' => 'Inconnu',
			'reminders.change' => 'Modifier',
			'reminders.enableNotifications' => 'Activer les notifications',
			'reminders.skipForNow' => 'Ignorer pour le moment',
			'reminders.saveChanges' => 'Enregistrer les modifications',
			'reminders.enabledSuccessfully' => 'Notifications activées avec succès !',
			'reminders.permissionDenied' => 'Autorisation de notification refusée',
			'reminders.errorEnabling' => ({required Object error}) => 'Erreur lors de l’activation des notifications : ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Erreur lors de la finalisation de la configuration : ${error}',
			'notifications.breakfast.title' => 'C’est l’heure du petit-déjeuner ! 🍳',
			'notifications.breakfast.body' => 'N’oubliez pas d’enregistrer votre petit-déjeuner',
			'notifications.lunch.title' => 'C’est l’heure du déjeuner ! 🥗',
			'notifications.lunch.body' => 'Il est temps d’enregistrer votre déjeuner',
			'notifications.dinner.title' => 'C’est l’heure du dîner ! 🍽️',
			'notifications.dinner.body' => 'N’oubliez pas d’enregistrer votre dîner',
			'notifications.snack.title' => 'C’est l’heure d’une collation ! 🍎',
			'notifications.snack.body' => 'C’est le moment d’une collation saine',
			'notifications.test.title' => 'Notification de test',
			'login.title' => 'Connexion',
			'login.signInWithGoogle' => 'Se connecter avec Google',
			'login.signInFailed' => 'La connexion Google a échoué ou a été annulée.',
			'disclaimer.pleaseNote' => 'Veuillez noter',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} fournit des informations nutritionnelles estimées. La précision dépend de vos saisies et des variations des aliments. À utiliser comme guide, pas comme source définitive. Demandez conseil à un professionnel pour des recommandations personnalisées.',
			'disclaimer.snap.portionSize.title' => 'Taille des portions',
			'disclaimer.snap.portionSize.description' => 'La précision des estimations repose fortement sur votre évaluation correcte de la portion.',
			'disclaimer.snap.preparationMethods.title' => 'Méthodes de préparation',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Les modes de cuisson peuvent modifier de façon significative la composition nutritionnelle. Les estimations de ${appLabel} ne prennent pas toujours en compte ces variations.',
			'disclaimer.snap.ingredients.title' => 'Ingrédients',
			'disclaimer.snap.ingredients.description' => 'Les plats complexes avec de nombreux ingrédients cachés peuvent conduire à des estimations moins précises.',
			'disclaimer.snap.databaseLimitations.title' => 'Limites de la base de données',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'La base de données alimentaire de ${appLabel} est vaste mais peut ne pas inclure chaque aliment ou chaque variation.',
			'disclaimer.weightEstimate.title' => 'À propos de l’estimation de poids',
			'disclaimer.weightEstimate.description' => 'Le changement de poids projeté est une estimation théorique basée sur le modèle simple « calories ingérées vs calories dépensées ». Il s’agit d’un repère motivationnel uniquement, pas d’une prédiction de votre poids réel.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Précision des calories',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Cette estimation est aussi précise que votre suivi des calories consommées et dépensées. Un enregistrement imprécis conduira à une projection imprécise.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Facteurs biologiques',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'La perte/prise de poids réelle dépend du métabolisme, des hormones, du sommeil, du stress, de l’hydratation et d’autres facteurs individuels que ${appLabel} ne peut pas mesurer.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Eau et fluctuations',
			'disclaimer.weightEstimate.waterWeight.description' => 'Le poids quotidien normal peut fluctuer fortement en raison de la rétention d’eau, de la digestion et du timing. L’estimation ne tient pas compte de ces variations quotidiennes.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Conseils professionnels',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'N’utilisez pas cette estimation pour des décisions médicales. Demandez toujours l’avis d’un professionnel de santé ou d’un diététicien diplômé pour une prise en charge personnalisée.',
			'disclaimer.healthMetrics.description' => 'Ces mesures vous aident à comprendre les besoins énergétiques de votre corps et à guider vos objectifs nutritionnels.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Le métabolisme de base (BMR) est le nombre de calories que votre corps brûle au repos pour assurer les fonctions vitales comme la respiration et la circulation. Le BMR dépend de votre âge, de votre genre, de votre taille et de votre poids. Un BMR plus élevé signifie que votre corps brûle naturellement plus de calories au repos, souvent grâce à une masse musculaire plus importante, un âge plus jeune, ou le fait d’être un homme. Un BMR plus bas indique généralement moins de masse musculaire, un âge plus avancé, ou le fait d’être une femme.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'La dépense énergétique quotidienne totale (TDEE) est le total des calories brûlées par jour, incluant votre BMR plus l’activité physique et les mouvements quotidiens. Le TDEE dépend de votre BMR et de votre niveau d’activité. Un TDEE plus élevé signifie que vous brûlez davantage de calories au total, généralement parce que vous êtes plus actif(ve) ou avez un BMR plus élevé. Un TDEE plus faible suggère une activité quotidienne moindre ou un BMR plus bas.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Objectif quotidien',
			'disclaimer.healthMetrics.dailyGoal.description' => 'L’objectif quotidien est votre apport calorique recommandé selon votre TDEE et votre objectif de poids. Pour perdre du poids, vous consommez moins que votre TDEE. Pour maintenir, vous l’égalez. Pour prendre du poids, vous consommez plus que votre TDEE. Cela vous aide à atteindre votre changement de poids souhaité à un rythme sain.',
			'disclaimer.calorieExpenditure.title' => 'Estimation des calories dépensées',
			'disclaimer.calorieExpenditure.description' => 'Quand les données Health Connect ne sont pas disponibles, nous estimons les calories brûlées aujourd’hui à partir de votre métabolisme de base (BMR) et de votre niveau d’activité (TDEE), ajustés pour la portion de journée écoulée.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Comment l’estimation est calculée',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Nous calculons votre TDEE (en fonction de votre profil) et le multiplions par la fraction de la journée écoulée (heures + minutes) / 24 pour estimer les calories brûlées jusqu’à présent.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Conseils professionnels',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'N’utilisez pas cette estimation pour des décisions médicales. Demandez toujours l’avis d’un professionnel de santé ou d’un diététicien diplômé pour une prise en charge personnalisée.',
			'common.close' => 'Fermer',
			'common.kContinue' => 'Continuer',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Vous appréciez ${appLabel} ?',
			'feedbackRating.yes' => 'Oui, j’aime l’application',
			'feedbackRating.no' => 'Pas vraiment',
			'feedbackRating.rateStepHeading' => 'Noter sur le Play Store',
			'feedbackRating.emailStepHeading' => 'Envoyer des commentaires par e-mail',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Une note rapide aide d’autres personnes à découvrir ${appLabel} et soutient le développement. Pourriez-vous en laisser une ?',
			'feedbackRating.shareFeedbackViaEmail' => 'Vos retours orientent la suite — nous lisons chaque message. Voulez-vous partager votre avis par e-mail ?',
			'feedbackRating.rateCta' => 'Noter sur le Play Store',
			'feedbackRating.maybeLater' => 'Peut-être plus tard',
			'feedbackRating.sendFeedback' => 'Envoyer des commentaires',
			'feedbackRating.noThanks' => 'Non merci',
			'feedbackRating.aboutUsDescription' => 'Fait avec soin par une petite équipe. Nous nous concentrons sur la confidentialité, la simplicité et l’aide à de meilleures habitudes alimentaires.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Curieux de savoir qui est derrière ${appLabel} ? Voir ',
			'feedbackRating.aboutUsLinkLabel' => 'À propos de nous',
			'feedbackRating.thankYouMessage' => 'Merci ! Nous vous le redemanderons une autre fois.',
			'health.syncFailed' => 'Impossible de synchroniser avec Health Connect',
			'health.mealSynced' => 'Repas synchronisé avec Health Connect',
			_ => null,
		};
	}
}
