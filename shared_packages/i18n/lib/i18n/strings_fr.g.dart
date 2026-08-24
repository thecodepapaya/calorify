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
	@override late final _Translations$errors$fr errors = _Translations$errors$fr._(_root);
	@override late final _Translations$onboarding$fr onboarding = _Translations$onboarding$fr._(_root);
	@override late final _Translations$tabs$fr tabs = _Translations$tabs$fr._(_root);
	@override late final _Translations$home$fr home = _Translations$home$fr._(_root);
	@override late final _Translations$history$fr history = _Translations$history$fr._(_root);
	@override late final _Translations$meal$fr meal = _Translations$meal$fr._(_root);
	@override late final _Translations$favorites$fr favorites = _Translations$favorites$fr._(_root);
	@override late final _Translations$profile$fr profile = _Translations$profile$fr._(_root);
	@override late final _Translations$healthScore$fr healthScore = _Translations$healthScore$fr._(_root);
	@override late final _Translations$editProfile$fr editProfile = _Translations$editProfile$fr._(_root);
	@override late final _Translations$settings$fr settings = _Translations$settings$fr._(_root);
	@override late final _Translations$reminders$fr reminders = _Translations$reminders$fr._(_root);
	@override late final _Translations$notifications$fr notifications = _Translations$notifications$fr._(_root);
	@override late final _Translations$login$fr login = _Translations$login$fr._(_root);
	@override late final _Translations$disclaimer$fr disclaimer = _Translations$disclaimer$fr._(_root);
	@override late final _Translations$localNutritionPhase4$fr localNutritionPhase4 = _Translations$localNutritionPhase4$fr._(_root);
	@override late final _Translations$watch$fr watch = _Translations$watch$fr._(_root);
	@override late final _Translations$common$fr common = _Translations$common$fr._(_root);
	@override late final _Translations$feedbackRating$fr feedbackRating = _Translations$feedbackRating$fr._(_root);
	@override late final _Translations$health$fr health = _Translations$health$fr._(_root);
}

// Path: errors
class _Translations$errors$fr extends Translations$errors$en {
	_Translations$errors$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$fr extends Translations$onboarding$en {
	_Translations$onboarding$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Bienvenue dans ${appLabel}';
	@override String get subtitle => 'Votre compagnon nutritionnel personnel alimenté par AI';
	@override String get getStarted => 'Commencer';
	@override late final _Translations$onboarding$features$fr features = _Translations$onboarding$features$fr._(_root);
	@override late final _Translations$onboarding$gender$fr gender = _Translations$onboarding$gender$fr._(_root);
	@override late final _Translations$onboarding$height$fr height = _Translations$onboarding$height$fr._(_root);
	@override late final _Translations$onboarding$weight$fr weight = _Translations$onboarding$weight$fr._(_root);
	@override late final _Translations$onboarding$age$fr age = _Translations$onboarding$age$fr._(_root);
	@override late final _Translations$onboarding$bmiScale$fr bmiScale = _Translations$onboarding$bmiScale$fr._(_root);
	@override late final _Translations$onboarding$weightGoal$fr weightGoal = _Translations$onboarding$weightGoal$fr._(_root);
	@override late final _Translations$onboarding$activityLevel$fr activityLevel = _Translations$onboarding$activityLevel$fr._(_root);
	@override late final _Translations$onboarding$healthConnect$fr healthConnect = _Translations$onboarding$healthConnect$fr._(_root);
	@override late final _Translations$onboarding$reinforcement$fr reinforcement = _Translations$onboarding$reinforcement$fr._(_root);
}

// Path: tabs
class _Translations$tabs$fr extends Translations$tabs$en {
	_Translations$tabs$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Tableau de bord';
	@override String get history => 'Historique';
}

// Path: home
class _Translations$home$fr extends Translations$home$en {
	_Translations$home$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$fr aiSummary = _Translations$home$aiSummary$fr._(_root);
	@override late final _Translations$home$dailyGoal$fr dailyGoal = _Translations$home$dailyGoal$fr._(_root);
	@override late final _Translations$home$dailySummary$fr dailySummary = _Translations$home$dailySummary$fr._(_root);
	@override late final _Translations$home$intakeProgress$fr intakeProgress = _Translations$home$intakeProgress$fr._(_root);
	@override late final _Translations$home$intakeHistory$fr intakeHistory = _Translations$home$intakeHistory$fr._(_root);
	@override late final _Translations$home$mealLog$fr mealLog = _Translations$home$mealLog$fr._(_root);
	@override late final _Translations$home$mealDescription$fr mealDescription = _Translations$home$mealDescription$fr._(_root);
	@override late final _Translations$home$favoriteMeals$fr favoriteMeals = _Translations$home$favoriteMeals$fr._(_root);
	@override late final _Translations$home$mealSnap$fr mealSnap = _Translations$home$mealSnap$fr._(_root);
	@override late final _Translations$home$connectHealth$fr connectHealth = _Translations$home$connectHealth$fr._(_root);
}

// Path: history
class _Translations$history$fr extends Translations$history$en {
	_Translations$history$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Aucun repas enregistré';
	@override String get emptyMessage => 'Prenez une photo de votre dernier repas pour l\'enregistrer ici.';
	@override String get today => 'Aujourd\'hui';
	@override String get yesterday => 'Hier';
}

// Path: meal
class _Translations$meal$fr extends Translations$meal$en {
	_Translations$meal$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
	@override late final _Translations$meal$nutrition$fr nutrition = _Translations$meal$nutrition$fr._(_root);
	@override late final _Translations$meal$deleteConfirmation$fr deleteConfirmation = _Translations$meal$deleteConfirmation$fr._(_root);
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
	@override late final _Translations$meal$questionFlow$fr questionFlow = _Translations$meal$questionFlow$fr._(_root);
	@override late final _Translations$meal$analysis$fr analysis = _Translations$meal$analysis$fr._(_root);
	@override late final _Translations$meal$localInference$fr localInference = _Translations$meal$localInference$fr._(_root);
	@override late final _Translations$meal$feedback$fr feedback = _Translations$meal$feedback$fr._(_root);
}

// Path: favorites
class _Translations$favorites$fr extends Translations$favorites$en {
	_Translations$favorites$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
	@override late final _Translations$favorites$sortOptions$fr sortOptions = _Translations$favorites$sortOptions$fr._(_root);
}

// Path: profile
class _Translations$profile$fr extends Translations$profile$en {
	_Translations$profile$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get noProfileData => 'Aucune donnée de profil trouvée';
	@override String get yourProfile => 'Votre profil';
	@override String get viewAndManage => 'Voir et gérer vos informations de santé';
	@override late final _Translations$profile$sections$fr sections = _Translations$profile$sections$fr._(_root);
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
	@override late final _Translations$profile$calculatedValues$fr calculatedValues = _Translations$profile$calculatedValues$fr._(_root);
}

// Path: healthScore
class _Translations$healthScore$fr extends Translations$healthScore$en {
	_Translations$healthScore$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$fr extends Translations$editProfile$en {
	_Translations$editProfile$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifier le profil';
	@override late final _Translations$editProfile$sections$fr sections = _Translations$editProfile$sections$fr._(_root);
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
	@override late final _Translations$editProfile$genders$fr genders = _Translations$editProfile$genders$fr._(_root);
	@override late final _Translations$editProfile$weightGoals$fr weightGoals = _Translations$editProfile$weightGoals$fr._(_root);
	@override late final _Translations$editProfile$activityLevels$fr activityLevels = _Translations$editProfile$activityLevels$fr._(_root);
}

// Path: settings
class _Translations$settings$fr extends Translations$settings$en {
	_Translations$settings$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Paramètres';
	@override late final _Translations$settings$sections$fr sections = _Translations$settings$sections$fr._(_root);
	@override late final _Translations$settings$editProfile$fr editProfile = _Translations$settings$editProfile$fr._(_root);
	@override late final _Translations$settings$language$fr language = _Translations$settings$language$fr._(_root);
	@override late final _Translations$settings$heightUnit$fr heightUnit = _Translations$settings$heightUnit$fr._(_root);
	@override late final _Translations$settings$weightUnit$fr weightUnit = _Translations$settings$weightUnit$fr._(_root);
	@override late final _Translations$settings$mealReminders$fr mealReminders = _Translations$settings$mealReminders$fr._(_root);
	@override late final _Translations$settings$localInference$fr localInference = _Translations$settings$localInference$fr._(_root);
	@override late final _Translations$settings$theme$fr theme = _Translations$settings$theme$fr._(_root);
	@override late final _Translations$settings$sendFeedback$fr sendFeedback = _Translations$settings$sendFeedback$fr._(_root);
	@override late final _Translations$settings$exportMealHistory$fr exportMealHistory = _Translations$settings$exportMealHistory$fr._(_root);
	@override late final _Translations$settings$clearAllData$fr clearAllData = _Translations$settings$clearAllData$fr._(_root);
	@override late final _Translations$settings$debugOptions$fr debugOptions = _Translations$settings$debugOptions$fr._(_root);
	@override String get developerModeEnabled => 'Mode développeur activé !';
	@override late final _Translations$settings$healthConnect$fr healthConnect = _Translations$settings$healthConnect$fr._(_root);
	@override late final _Translations$settings$about$fr about = _Translations$settings$about$fr._(_root);
	@override late final _Translations$settings$appInfo$fr appInfo = _Translations$settings$appInfo$fr._(_root);
}

// Path: reminders
class _Translations$reminders$fr extends Translations$reminders$en {
	_Translations$reminders$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$notifications$fr extends Translations$notifications$en {
	_Translations$notifications$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$fr breakfast = _Translations$notifications$breakfast$fr._(_root);
	@override late final _Translations$notifications$lunch$fr lunch = _Translations$notifications$lunch$fr._(_root);
	@override late final _Translations$notifications$dinner$fr dinner = _Translations$notifications$dinner$fr._(_root);
	@override late final _Translations$notifications$snack$fr snack = _Translations$notifications$snack$fr._(_root);
	@override late final _Translations$notifications$test$fr test = _Translations$notifications$test$fr._(_root);
}

// Path: login
class _Translations$login$fr extends Translations$login$en {
	_Translations$login$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Connexion';
	@override String get signInWithGoogle => 'Se connecter avec Google';
	@override String get signInFailed => 'La connexion Google a échoué ou a été annulée.';
}

// Path: disclaimer
class _Translations$disclaimer$fr extends Translations$disclaimer$en {
	_Translations$disclaimer$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Veuillez noter';
	@override late final _Translations$disclaimer$snap$fr snap = _Translations$disclaimer$snap$fr._(_root);
	@override late final _Translations$disclaimer$weightEstimate$fr weightEstimate = _Translations$disclaimer$weightEstimate$fr._(_root);
	@override late final _Translations$disclaimer$healthMetrics$fr healthMetrics = _Translations$disclaimer$healthMetrics$fr._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$fr calorieExpenditure = _Translations$disclaimer$calorieExpenditure$fr._(_root);
}

// Path: localNutritionPhase4
class _Translations$localNutritionPhase4$fr extends Translations$localNutritionPhase4$en {
	_Translations$localNutritionPhase4$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
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

// Path: watch
class _Translations$watch$fr extends Translations$watch$en {
	_Translations$watch$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Montre';
	@override late final _Translations$watch$common$fr common = _Translations$watch$common$fr._(_root);
	@override late final _Translations$watch$nutrition$fr nutrition = _Translations$watch$nutrition$fr._(_root);
	@override late final _Translations$watch$sync$fr sync = _Translations$watch$sync$fr._(_root);
	@override late final _Translations$watch$home$fr home = _Translations$watch$home$fr._(_root);
	@override late final _Translations$watch$history$fr history = _Translations$watch$history$fr._(_root);
	@override late final _Translations$watch$favorites$fr favorites = _Translations$watch$favorites$fr._(_root);
	@override late final _Translations$watch$meal$fr meal = _Translations$watch$meal$fr._(_root);
	@override late final _Translations$watch$voice$fr voice = _Translations$watch$voice$fr._(_root);
	@override late final _Translations$watch$result$fr result = _Translations$watch$result$fr._(_root);
}

// Path: common
class _Translations$common$fr extends Translations$common$en {
	_Translations$common$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get betaTag => 'Bêta';
	@override String get close => 'Fermer';
	@override String get kContinue => 'Continuer';
}

// Path: feedbackRating
class _Translations$feedbackRating$fr extends Translations$feedbackRating$en {
	_Translations$feedbackRating$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$health$fr extends Translations$health$en {
	_Translations$health$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Impossible de synchroniser vers Health Connect';
	@override String get mealSynced => 'Repas synchronisé avec Health Connect';
}

// Path: onboarding.features
class _Translations$onboarding$features$fr extends Translations$onboarding$features$en {
	_Translations$onboarding$features$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$fr foodRecognition = _Translations$onboarding$features$foodRecognition$fr._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$fr aiAnalysis = _Translations$onboarding$features$aiAnalysis$fr._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$fr healthIntegration = _Translations$onboarding$features$healthIntegration$fr._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$fr extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quel est votre genre ?';
	@override String get description => 'Le genre nous aide à calculer précisément votre métabolisme de base (BMR).';
	@override String get next => 'Suivant';
}

// Path: onboarding.height
class _Translations$onboarding$height$fr extends Translations$onboarding$height$en {
	_Translations$onboarding$height$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quelle est votre taille ?';
	@override String get description => 'Votre taille nous aide à calculer précisément votre IMC et vos besoins énergétiques.';
	@override String get metric => 'Métrique';
	@override String get imperial => 'Impérial';
	@override String get next => 'Suivant';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$fr extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$age$fr extends Translations$onboarding$age$en {
	_Translations$onboarding$age$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quelle est votre date de naissance ?';
	@override String get description => 'Votre âge nous aide à calculer précisément vos besoins caloriques.';
	@override String get next => 'Suivant';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$fr extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Insuff.';
	@override String get healthy => 'Sain';
	@override String get overweight => 'Surpoids';
	@override String get obese => 'Obèse';
	@override late final _Translations$onboarding$bmiScale$categories$fr categories = _Translations$onboarding$bmiScale$categories$fr._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$fr messages = _Translations$onboarding$bmiScale$messages$fr._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$fr extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quel est votre objectif ?';
	@override String get description => 'Choisissez l\'objectif qui décrit le mieux ce que vous voulez atteindre';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$fr extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quel est votre niveau d\'activité ?';
	@override String get description => 'Cela nous aide à calculer plus précisément vos besoins caloriques quotidiens';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$fr extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Connectez-vous à Health Connect';
	@override String get description => 'Synchronisez vos données de santé pour de meilleurs insights et un suivi automatique des calories';
	@override String get overviewDescription => 'Utilisez les calories brûlées dans votre objectif quotidien et partagez, si vous le souhaitez, les repas enregistrés avec Health Connect.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$fr automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$fr._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$fr caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$fr._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$fr progressInsights = _Translations$onboarding$healthConnect$progressInsights$fr._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$fr shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$fr._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$fr seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$fr._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$fr userControl = _Translations$onboarding$healthConnect$userControl$fr._(_root);
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
class _Translations$onboarding$reinforcement$fr extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$fr trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$fr._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$fr healthProfile = _Translations$onboarding$reinforcement$healthProfile$fr._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$fr goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$fr._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$fr extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$home$dailyGoal$fr extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$home$dailySummary$fr extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$home$intakeProgress$fr extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Répartition macro d\'aujourd\'hui';
	@override String get target => 'Cible';
	@override String get current => 'Actuel';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$fr extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Historique macro sur 7 jours';
	@override String get trendTitle => 'Tendance d\'aujourd\'hui';
	@override String peakHour({required Object hour}) => 'Pic : ${hour}:00';
	@override String get noHistoryYet => 'Aucun historique pour le moment';
	@override String get startLogging => 'Commencez à enregistrer vos repas pour voir vos\ntendances macro sur 7 jours ici';
}

// Path: home.mealLog
class _Translations$home$mealLog$fr extends Translations$home$mealLog$en {
	_Translations$home$mealLog$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Repas enregistrés';
	@override String get emptyMessage => 'Prenez une photo de votre dernier repas pour l\'enregistrer ici.';
	@override String get noMealsToday => 'Aucun repas enregistré aujourd\'hui';
	@override String get seeAllMeals => 'Voir tous les repas';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$fr extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ajout rapide avec AI';
	@override String get description => 'Décrivez votre repas et laissez l\'AI s\'occuper des détails.';
	@override String get hint => 'ex. Pour le petit‑déjeuner j\'ai pris un grand bol de flocons d\'avoine avec une banane tranchée et une dose de whey ...';
	@override String get analyzeMeal => 'Analyser le repas';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$fr extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$home$mealSnap$fr extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$home$connectHealth$fr extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$meal$nutrition$fr extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Valeur énergétique';
	@override String get carbs => 'Glucides (g)';
	@override String get protein => 'Protéines (g)';
	@override String get fat => 'Lipides (g)';
	@override String get fiber => 'Fibres (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$fr extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supprimer le repas';
	@override String get message => 'Êtes‑vous sûr(e) de vouloir supprimer cette entrée de repas ?';
	@override String get cancel => 'Annuler';
	@override String get delete => 'Supprimer';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$fr extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Question ${current} sur ${total}';
	@override String get noQuestionsAvailable => 'Aucune question disponible';
	@override String get next => 'Suivant';
	@override String get continueLabel => 'Continuer';
}

// Path: meal.analysis
class _Translations$meal$analysis$fr extends Translations$meal$analysis$en {
	_Translations$meal$analysis$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$meal$localInference$fr extends Translations$meal$localInference$en {
	_Translations$meal$localInference$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
}

// Path: meal.feedback
class _Translations$meal$feedback$fr extends Translations$meal$feedback$en {
	_Translations$meal$feedback$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$favorites$sortOptions$fr extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Récents';
	@override String get calories => 'Valeur calorique';
	@override String get alphabetical => 'A‑Z';
}

// Path: profile.sections
class _Translations$profile$sections$fr extends Translations$profile$sections$en {
	_Translations$profile$sections$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFIL';
	@override String get basicInformation => 'INFORMATIONS DE BASE';
	@override String get goalsAndActivity => 'OBJECTIFS & ACTIVITÉ';
	@override String get calculatedValues => 'VALEURS CALCULÉES';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$fr extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Objectif quotidien';
	@override String get calPerDay => 'cal/jour';
	@override String get notAvailable => 'N/D';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$fr extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMATIONS PERSONNELLES';
	@override String get physicalMeasurements => 'MESURES PHYSIQUES';
	@override String get goalsAndActivity => 'OBJECTIFS & ACTIVITÉ';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$fr extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get male => 'Homme';
	@override String get female => 'Femme';
	@override String get other => 'Autre';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$fr extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$fr loseWeight = _Translations$editProfile$weightGoals$loseWeight$fr._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$fr maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$fr._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$fr gainWeight = _Translations$editProfile$weightGoals$gainWeight$fr._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$fr extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$fr sedentary = _Translations$editProfile$activityLevels$sedentary$fr._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$fr lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$fr._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$fr moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$fr._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$fr veryActive = _Translations$editProfile$activityLevels$veryActive$fr._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$fr extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$fr._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$fr extends Translations$settings$sections$en {
	_Translations$settings$sections$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$settings$editProfile$fr extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifier le profil';
	@override String get subtitle => 'Mettez à jour vos informations personnelles';
}

// Path: settings.language
class _Translations$settings$language$fr extends Translations$settings$language$en {
	_Translations$settings$language$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Langue';
	@override String get subtitle => 'Choisissez votre langue préférée';
	@override String get searchHint => 'Rechercher des langues...';
	@override String get noResults => 'Aucun résultat trouvé';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$fr extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unité de taille';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$fr extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unité de poids';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$fr extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rappels de repas';
	@override String get subtitle => 'Restez sur la bonne voie grâce à des alertes ponctuelles';
}

// Path: settings.localInference
class _Translations$settings$localInference$fr extends Translations$settings$localInference$en {
	_Translations$settings$localInference$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$settings$theme$fr extends Translations$settings$theme$en {
	_Translations$settings$theme$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Thème';
	@override String get light => 'Clair';
	@override String get dark => 'Sombre';
	@override String get system => 'Système';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$fr extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$settings$exportMealHistory$fr extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exporter l\'historique des repas';
	@override String get subtitle => 'Partagez un CSV de vos repas enregistrés';
	@override String get shareText => 'Export de l\'historique des repas Calorify';
	@override String failed({required Object error}) => 'Impossible d\'exporter l\'historique des repas : ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$fr extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supprimer toutes les données';
	@override String get subtitle => 'Supprimer irréversiblement toutes vos informations';
	@override String get localOnlySubtitle => 'Supprimer les données Calorify stockées sur cet appareil';
	@override String get confirmationTitle => 'Supprimer toutes les données ?';
	@override String get confirmationMessage => 'Cette action est irréversible. Tous vos repas enregistrés, favoris et paramètres de profil seront définitivement supprimés.';
	@override String get localOnlyConfirmationMessage => 'Cette action supprime définitivement de cet appareil les repas enregistrés, les favoris et les paramètres du profil. Les repas déjà partagés avec Health Connect et l\'accès à Health Connect sont gérés séparément dans Paramètres > Health Connect.';
	@override String get cancel => 'Annuler';
	@override String get clearEverything => 'Tout supprimer';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$fr extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Options de débogage';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$fr extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Voir et gérer les autorisations';
	@override late final _Translations$settings$healthConnect$unavailable$fr unavailable = _Translations$settings$healthConnect$unavailable$fr._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$fr updateRequired = _Translations$settings$healthConnect$updateRequired$fr._(_root);
	@override late final _Translations$settings$healthConnect$permissions$fr permissions = _Translations$settings$healthConnect$permissions$fr._(_root);
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
class _Translations$settings$about$fr extends Translations$settings$about$en {
	_Translations$settings$about$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'À propos';
	@override String get tagline => 'Rapide, gratuit et axé sur la confidentialité pour la conscience calorique';
	@override late final _Translations$settings$about$ourStory$fr ourStory = _Translations$settings$about$ourStory$fr._(_root);
	@override late final _Translations$settings$about$privacy$fr privacy = _Translations$settings$about$privacy$fr._(_root);
	@override late final _Translations$settings$about$developer$fr developer = _Translations$settings$about$developer$fr._(_root);
	@override late final _Translations$settings$about$feedback$fr feedback = _Translations$settings$about$feedback$fr._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$fr extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify version ${version}';
	@override String build({required Object buildNumber}) => 'Révision ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$fr extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C\'est l\'heure du petit‑déjeuner ! 🍳';
	@override String get body => 'N\'oubliez pas d\'enregistrer votre petit‑déjeuner';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$fr extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C\'est l\'heure du déjeuner ! 🥗';
	@override String get body => 'Il est temps d\'enregistrer votre déjeuner';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$fr extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C\'est l\'heure du dîner ! 🍽️';
	@override String get body => 'N\'oubliez pas d\'enregistrer votre dîner';
}

// Path: notifications.snack
class _Translations$notifications$snack$fr extends Translations$notifications$snack$en {
	_Translations$notifications$snack$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'C\'est l\'heure d\'une collation ! 🍎';
	@override String get body => 'Le moment d\'une collation saine';
}

// Path: notifications.test
class _Translations$notifications$test$fr extends Translations$notifications$test$en {
	_Translations$notifications$test$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notification de test';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$fr extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} fournit des informations nutritionnelles estimées. La précision dépend de vos saisies et des variations alimentaires. Utilisez‑les comme guide, pas comme une source définitive. Consultez un professionnel pour des conseils diététiques personnalisés.';
	@override late final _Translations$disclaimer$snap$portionSize$fr portionSize = _Translations$disclaimer$snap$portionSize$fr._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$fr preparationMethods = _Translations$disclaimer$snap$preparationMethods$fr._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$fr ingredients = _Translations$disclaimer$snap$ingredients$fr._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$fr databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$fr._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$fr extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'À propos de l\'estimation de poids';
	@override String get description => 'La variation de poids projetée est une estimation théorique basée sur le modèle simple calories entrantes vs calories dépensées. Elle sert uniquement de guide motivationnel et non de prédiction de votre poids réel.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$fr calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$fr._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$fr biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$fr._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$fr waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$fr._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$fr professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$fr._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$fr extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get description => 'Ces indicateurs vous aident à comprendre les besoins énergétiques de votre corps et à guider vos objectifs nutritionnels.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$fr bmr = _Translations$disclaimer$healthMetrics$bmr$fr._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$fr tdee = _Translations$disclaimer$healthMetrics$tdee$fr._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$fr dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$fr._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$fr extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estimation de la dépense calorique';
	@override String get description => 'Lorsque les données Health Connect ne sont pas disponibles, nous estimons les calories brûlées aujourd\'hui en utilisant votre BMR et votre niveau d\'activité (TDEE), ajustés à la fraction de la journée écoulée.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$fr howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$fr._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$fr professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$fr._(_root);
}

// Path: watch.common
class _Translations$watch$common$fr extends Translations$watch$common$en {
	_Translations$watch$common$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get back => 'Retour';
	@override String get cancel => 'Annuler';
	@override String get delete => 'Supprimer';
	@override String get retry => 'Réessayer';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$fr extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get nutrient => 'Nutriment';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} grammes';
	@override String get protein => 'Protéines';
	@override String get carbs => 'Glucides';
	@override String get fat => 'Lipides';
	@override String get fiber => 'Fibres';
}

// Path: watch.sync
class _Translations$watch$sync$fr extends Translations$watch$sync$en {
	_Translations$watch$sync$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => 'Synchroniser avec le téléphone';
	@override String get syncing => 'Synchronisation…';
	@override String get synced => 'Synchronisé';
	@override String get syncedJustNow => 'Synchronisé à l\'instant';
	@override String syncedMinutesAgo({required Object minutes}) => 'Synchronisé il y a ${minutes}m';
	@override String get failed => 'Échec de la synchronisation';
	@override String get phoneDisconnected => 'Téléphone déconnecté';
	@override String get tapToSync => 'Touchez pour synchroniser';
	@override String get refreshFailed => 'Impossible d\'actualiser. Vérifiez votre téléphone.';
	@override String get openPhone => 'Ouvrez Calorify sur votre téléphone, puis touchez actualiser.';
}

// Path: watch.home
class _Translations$watch$home$fr extends Translations$watch$home$en {
	_Translations$watch$home$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get today => 'Aujourd\'hui';
	@override String calorieSummary({required Object consumed, required Object goal, required Object status}) => '${consumed} calories consommées sur ${goal}. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} au-dessus de l\'objectif';
	@override String remaining({required Object calories}) => '${calories} restants';
	@override String left({required Object calories}) => '${calories} restants';
	@override String goal({required Object calories}) => 'Objectif : ${calories} kcal';
	@override String get logMeal => 'Enregistrer un repas';
	@override String get todayMeals => 'Repas d\'aujourd\'hui';
	@override String todayMealsCount({required Object count}) => 'Repas d\'aujourd\'hui, ${count}';
	@override String viewMore({required Object count}) => 'Voir ${count} autres';
	@override String viewMoreSemantics({required Object count}) => '${count} repas de plus, touchez pour tout voir';
	@override String get noMeals => 'Aucun repas enregistré';
	@override String get noMealsSemantics => 'Aucun repas enregistré aujourd\'hui';
	@override String get tapLog => 'Touchez Enregistrer pour commencer';
	@override String get removedFromQueue => 'Repas supprimé de la file hors ligne.';
	@override String get removedOffline => 'Repas supprimé hors ligne. Il se synchronisera quand votre téléphone se reconnectera.';
	@override String get deleteFailed => 'Impossible de supprimer le repas';
}

// Path: watch.history
class _Translations$watch$history$fr extends Translations$watch$history$en {
	_Translations$watch$history$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Repas d\'aujourd\'hui';
	@override String get refresh => 'Actualiser les repas';
	@override String get loadFailed => 'Impossible de charger les repas';
	@override String get syncFailed => 'Impossible de synchroniser';
	@override String get emptyTitle => 'Aucun repas pour l\'instant';
	@override String get emptyMessage => 'Enregistrez un repas depuis l\'accueil pour le voir ici.';
}

// Path: watch.favorites
class _Translations$watch$favorites$fr extends Translations$watch$favorites$en {
	_Translations$watch$favorites$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Favoris';
	@override String get refresh => 'Actualiser les favoris';
	@override String get loadFailed => 'Impossible de charger les favoris';
	@override String get syncFailed => 'Impossible de synchroniser';
	@override String get emptyTitle => 'Aucun favori pour l\'instant';
	@override String get emptyMessage => 'Mettez des repas en favori dans l\'application sur votre téléphone pour les enregistrer d\'une touche ici.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} calories. Touchez pour enregistrer.';
	@override String logged({required Object name}) => '${name} enregistré !';
	@override String savedOffline({required Object name}) => '${name} enregistré hors ligne. Il se synchronisera quand votre téléphone se reconnectera.';
	@override String get saveFailed => 'Impossible d\'enregistrer le repas. Veuillez réessayer.';
	@override String get log => 'Enregistrer';
}

// Path: watch.meal
class _Translations$watch$meal$fr extends Translations$watch$meal$en {
	_Translations$watch$meal$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} calories, enregistré à ${time}.';
	@override String get longPressDelete => 'Appuyez longuement pour supprimer.';
	@override String get deleteTitle => 'Supprimer le repas ?';
}

// Path: watch.voice
class _Translations$watch$voice$fr extends Translations$watch$voice$en {
	_Translations$watch$voice$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Enregistrement vocal du repas';
	@override String get processing => 'Analyse de votre repas…';
	@override String get processingDescription => 'Estimation des portions et des nutriments';
	@override String get listening => 'Écoute';
	@override String secondsLeft({required Object seconds}) => '${seconds}s';
	@override String get stop => 'Arrêter l\'enregistrement';
	@override String get start => 'Touchez pour démarrer l\'enregistrement';
	@override String get starting => 'Activation du microphone…';
	@override String get prompt => 'Touchez, puis décrivez votre repas';
	@override String get tapToRetry => 'Touchez pour réessayer';
	@override String get example => 'Essayez « 2 rotis avec du dal »';
	@override String get unavailable => 'Saisie vocale indisponible. Vérifiez l\'autorisation du microphone dans les paramètres de la montre.';
	@override String get didNotStart => 'Le microphone n\'a pas démarré. Touchez pour réessayer.';
	@override String get startFailed => 'Impossible de démarrer l\'enregistrement. Vérifiez les autorisations du microphone.';
	@override String get allowMicrophone => 'Autorisez l\'accès au microphone pour enregistrer les repas par la voix.';
	@override String get needsConnection => 'La reconnaissance vocale nécessite une connexion. Touchez pour réessayer.';
	@override String get microphoneUnavailable => 'Le microphone est indisponible. Touchez pour réessayer.';
	@override String get microphoneBusy => 'Le microphone est occupé. Attendez un instant puis réessayez.';
	@override String get languageUnsupported => 'La saisie vocale ne prend pas en charge la langue de la montre.';
	@override String get temporarilyBusy => 'La saisie vocale est temporairement occupée. Attendez un instant puis réessayez.';
	@override String get notRecognized => 'Je n\'ai pas compris. Touchez le micro et réessayez.';
	@override String get noSpeech => 'Aucun discours détecté. Touchez le micro pour réessayer.';
	@override String get analysisFailed => 'L\'analyse a échoué. Veuillez réessayer.';
	@override String get mealNotIdentified => 'Impossible d\'identifier ce repas. Essayez de le décrire différemment.';
}

// Path: watch.result
class _Translations$watch$result$fr extends Translations$watch$result$en {
	_Translations$watch$result$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Détails du repas';
	@override String get savedOffline => 'Enregistré hors ligne';
	@override String get logged => 'Enregistré !';
	@override String get mealFound => 'Repas trouvé';
	@override String get estimatedEnergy => 'Énergie estimée';
	@override String get logMeal => 'Enregistrer le repas';
	@override String get logging => 'Enregistrement…';
	@override String get logAnother => 'Enregistrer un autre';
	@override String get goingBack => 'Retour en cours…';
	@override String get savedOfflineMessage => 'Repas enregistré hors ligne. Il se synchronisera quand votre téléphone se reconnectera.';
	@override String get saveFailed => 'Impossible d\'enregistrer le repas. Veuillez réessayer.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$fr extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Reconnaissance intelligente des aliments';
	@override String get description => 'Prenez une photo et laissez l\'AI identifier votre repas';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$fr extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyse par AI';
	@override String get description => 'Obtenez instantanément les infos nutritionnelles à partir de vos descriptions';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$fr extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intégration Health Connect';
	@override String get description => 'Connectez-vous à Health Connect pour des informations plus complètes';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$fr extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Insuffisance pondérale';
	@override String get healthyWeight => 'Poids santé';
	@override String get overweight => 'Surpoids';
	@override String get obese => 'Obésité';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$fr extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Nous pouvons vous aider à élaborer un plan sain pour atteindre un poids équilibré avec des repas riches en nutriments.';
	@override String get healthy => 'Bravo ! Vous êtes dans une fourchette saine. Nous vous aiderons à maintenir votre vitalité et votre énergie.';
	@override String overweight({required Object appLabel}) => '${appLabel} simplifiera votre parcours avec un suivi assisté par AI pour vous aider à atteindre votre objectif en douceur.';
	@override String get obese => 'Nous sommes là pour vous soutenir avec des conseils personnalisés et des stratégies durables pour vos objectifs de santé.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$fr extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Suivi automatique des calories';
	@override String get description => 'Suivez les calories brûlées depuis vos apps de fitness';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$fr extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calories brûlées';
	@override String get description => 'Consultez le total des calories brûlées aujourd\'hui depuis Health Connect';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$fr extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyses de progression';
	@override String get description => 'Obtenez des insights détaillés sur vos tendances de santé';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$fr extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Partager les repas enregistrés';
	@override String get description => 'Enregistrez dans Health Connect les repas que vous ajoutez à Calorify';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$fr extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Intégration fluide';
	@override String get description => 'Synchronisez les données de vos apps de santé préférées';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$fr extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vous gardez le contrôle';
	@override String get description => 'Choisissez l\'une ou l\'autre autorisation et modifiez l\'accès à tout moment';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$fr extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$healthProfile$fr extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$onboarding$reinforcement$goalLifestyle$fr extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$editProfile$weightGoals$loseWeight$fr extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perdre du poids';
	@override String get description => 'Créer un déficit calorique pour perdre du poids';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$fr extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Maintenir le poids';
	@override String get description => 'Maintenir votre poids actuel';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$fr extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Prendre du poids';
	@override String get description => 'Créer un surplus calorique pour prendre du poids';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$fr extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sédentaire';
	@override String get description => 'Peu ou pas d\'exercice';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$fr extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Légèrement actif';
	@override String get description => 'Exercice léger 1‑3 jours/semaine';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$fr extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Modérément actif';
	@override String get description => 'Exercice modéré 3‑5 jours/semaine';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$fr extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Très actif';
	@override String get description => 'Exercice intense 6‑7 jours/semaine';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$fr extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get name => 'Extrêmement actif';
	@override String get description => 'Exercice très intense, travail physique';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$fr extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect indisponible';
	@override String get description => 'Health Connect n\'est pas disponible sur cet appareil. Veuillez installer Health Connect depuis le Play Store (Android 9+) ou mettre à jour vers Android 14+.';
	@override String get unsupportedDescription => 'Health Connect n\'est pas pris en charge sur cet appareil.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$fr extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect nécessite votre attention';
	@override String get description => 'Installez ou mettez à jour Health Connect avant de gérer l\'accès.';
	@override String get action => 'Installer ou mettre à jour';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$fr extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autorisations';
	@override String get description => 'Les autorisations suivantes sont requises pour fournir l\'intégration Health Connect :';
	@override String get granted => 'Accordé';
	@override String get notGranted => 'Non accordé';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$fr caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$fr._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$fr nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$fr._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$fr nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$fr._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$fr extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notre histoire';
	@override String content({required Object appLabel}) => '${appLabel} est né d\'une frustration simple : la plupart des apps de suivi des calories sont soit trop compliquées, demandent des saisies manuelles constantes, facturent des abonnements élevés, soit compromettent la vie privée.\n\nEn tant que développeur solo, je voulais créer quelque chose de plus simple et plus juste — une app qui utilise l\'AI pour réduire l\'effort, reste rapide et gratuite à utiliser, et respecte vos données de santé.\n\n${appLabel} est l\'app que j\'aurais aimé trouver : pas de compte, pas de pistage, pas de publicités — juste des insights clairs et pratiques et vos objectifs de santé.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$fr extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
class _Translations$settings$about$developer$fr extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conçu par un développeur solo';
	@override String description({required Object appLabel}) => '${appLabel} est développé et maintenu par un seul développeur axé sur la création de logiciels de santé calmes et respectueux de la vie privée.\n\nLes retours sont lus personnellement et contribuent à orienter l\'évolution de l\'app.';
	@override String get website => 'Site web';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$fr extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Vous aimez ${appLabel} ?';
	@override String description({required Object appLabel}) => 'Vos retours aident à améliorer ${appLabel} pour tout le monde.';
	@override String get rateApp => 'Noter sur le Play Store';
	@override String get sendFeedback => 'Envoyer un retour';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$fr extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Taille de la portion';
	@override String get description => 'La précision des estimations dépend fortement de l\'évaluation correcte de la taille de la portion.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$fr extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Méthodes de préparation';
	@override String description({required Object appLabel}) => 'Les modes de cuisson peuvent modifier significativement la valeur nutritionnelle des aliments. Les estimations de ${appLabel} peuvent ne pas toujours prendre en compte ces variations.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$fr extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingrédients';
	@override String get description => 'Les plats complexes avec de nombreux ingrédients cachés peuvent conduire à des estimations moins précises.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$fr extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limites de la base de données';
	@override String description({required Object appLabel}) => 'La base de données d\'aliments de ${appLabel} est étendue mais peut ne pas inclure chaque ingrédient ou variation.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$fr extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Précision des calories';
	@override String get description => 'Cette estimation n\'est aussi précise que vos apports et dépenses caloriques enregistrés. Un enregistrement inexact donnera une projection inexacte.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$fr extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Facteurs biologiques';
	@override String description({required Object appLabel}) => 'La perte/prise de poids réelle est influencée par le métabolisme, les hormones, le sommeil, le stress, l\'hydratation et d\'autres facteurs individuels que ${appLabel} ne peut pas mesurer.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$fr extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Poids d\'eau & fluctuations';
	@override String get description => 'Le poids quotidien normal peut beaucoup fluctuer en raison de la rétention d\'eau, de la digestion et du timing. L\'estimation ne tient pas compte de ces variations journalières.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$fr extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conseils professionnels';
	@override String get description => 'N\'utilisez pas cette estimation pour prendre des décisions médicales. Consultez toujours un professionnel de santé ou un diététicien diplômé pour des conseils personnalisés en gestion du poids.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$fr extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Le Basal Metabolic Rate (BMR) est le nombre de calories que votre corps brûle au repos pour maintenir des fonctions de base comme la respiration et la circulation. Le BMR dépend de votre âge, genre, taille et poids. Un BMR plus élevé signifie que votre corps brûle naturellement plus de calories au repos, souvent à cause d\'une masse musculaire plus importante, d\'un âge plus jeune ou du genre masculin. Un BMR plus faible indique généralement moins de masse musculaire, un âge plus avancé ou le genre féminin.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$fr extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Le Total Daily Energy Expenditure (TDEE) est le total des calories brûlées par jour, incluant votre BMR plus les calories liées à l\'activité physique et aux mouvements quotidiens. Le TDEE dépend de votre BMR et de votre niveau d\'activité. Un TDEE plus élevé signifie que vous brûlez plus de calories au global, généralement en étant plus actif ou en ayant un BMR plus élevé. Un TDEE plus faible suggère moins d\'activité quotidienne ou un BMR plus bas.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$fr extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Objectif quotidien';
	@override String get description => 'L\'objectif quotidien est votre apport calorique recommandé basé sur votre TDEE et votre objectif de poids. Pour perdre du poids, vous consommez moins de calories que votre TDEE. Pour maintenir, vous égalez votre TDEE. Pour prendre, vous consommez plus de calories que votre TDEE. Cela vous aide à atteindre le changement de poids souhaité à un rythme sain.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$fr extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comment l\'estimation est calculée';
	@override String get description => 'Nous calculons votre TDEE (basé sur votre profil) et le multiplions par la fraction de la journée écoulée (heures + minutes) / 24 pour estimer les calories brûlées jusqu\'à présent.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$fr extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Conseils professionnels';
	@override String get description => 'N\'utilisez pas cette estimation pour prendre des décisions médicales. Consultez toujours un professionnel de santé ou un diététicien diplômé pour des conseils personnalisés en gestion du poids.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$fr extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lire les calories totales brûlées';
	@override String get description => 'Permet à l\'app de lire vos calories totales brûlées depuis Health Connect.';
	@override String get usage => 'Cette autorisation sert à afficher vos calories brûlées quotidiennes dans l\'app, afin de mieux comprendre votre dépense énergétique totale au cours de la journée.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$fr extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$fr._(TranslationsFr root) : this._root = root, super.internal(root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lire les données nutritionnelles';
	@override String get description => 'Permet à l\'app de lire les données nutritionnelles depuis Health Connect.';
	@override String get usage => 'Cette autorisation permet à l\'app de lire les informations nutritionnelles qui peuvent avoir été enregistrées par d\'autres apps connectées à Health Connect, offrant une vue complète de votre alimentation.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$fr extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$fr._(TranslationsFr root) : this._root = root, super.internal(root);

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
			'settings.clearAllData.title' => 'Supprimer toutes les données',
			'settings.clearAllData.subtitle' => 'Supprimer irréversiblement toutes vos informations',
			'settings.clearAllData.localOnlySubtitle' => 'Supprimer les données Calorify stockées sur cet appareil',
			'settings.clearAllData.confirmationTitle' => 'Supprimer toutes les données ?',
			'settings.clearAllData.confirmationMessage' => 'Cette action est irréversible. Tous vos repas enregistrés, favoris et paramètres de profil seront définitivement supprimés.',
			'settings.clearAllData.localOnlyConfirmationMessage' => 'Cette action supprime définitivement de cet appareil les repas enregistrés, les favoris et les paramètres du profil. Les repas déjà partagés avec Health Connect et l\'accès à Health Connect sont gérés séparément dans Paramètres > Health Connect.',
			'settings.clearAllData.cancel' => 'Annuler',
			'settings.clearAllData.clearEverything' => 'Tout supprimer',
			'settings.debugOptions.title' => 'Options de débogage',
			'settings.developerModeEnabled' => 'Mode développeur activé !',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Voir et gérer les autorisations',
			'settings.healthConnect.unavailable.title' => 'Health Connect indisponible',
			'settings.healthConnect.unavailable.description' => 'Health Connect n\'est pas disponible sur cet appareil. Veuillez installer Health Connect depuis le Play Store (Android 9+) ou mettre à jour vers Android 14+.',
			'settings.healthConnect.unavailable.unsupportedDescription' => 'Health Connect n\'est pas pris en charge sur cet appareil.',
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
			'login.signInWithGoogle' => 'Se connecter avec Google',
			'login.signInFailed' => 'La connexion Google a échoué ou a été annulée.',
			'disclaimer.pleaseNote' => 'Veuillez noter',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} fournit des informations nutritionnelles estimées. La précision dépend de vos saisies et des variations alimentaires. Utilisez‑les comme guide, pas comme une source définitive. Consultez un professionnel pour des conseils diététiques personnalisés.',
			'disclaimer.snap.portionSize.title' => 'Taille de la portion',
			'disclaimer.snap.portionSize.description' => 'La précision des estimations dépend fortement de l\'évaluation correcte de la taille de la portion.',
			'disclaimer.snap.preparationMethods.title' => 'Méthodes de préparation',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'Les modes de cuisson peuvent modifier significativement la valeur nutritionnelle des aliments. Les estimations de ${appLabel} peuvent ne pas toujours prendre en compte ces variations.',
			'disclaimer.snap.ingredients.title' => 'Ingrédients',
			_ => null,
		} ?? switch (path) {
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
			'watch.appTitle' => 'Calorify Montre',
			'watch.common.back' => 'Retour',
			'watch.common.cancel' => 'Annuler',
			'watch.common.delete' => 'Supprimer',
			'watch.common.retry' => 'Réessayer',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => 'Nutriment',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} grammes',
			'watch.nutrition.protein' => 'Protéines',
			'watch.nutrition.carbs' => 'Glucides',
			'watch.nutrition.fat' => 'Lipides',
			'watch.nutrition.fiber' => 'Fibres',
			'watch.sync.syncWithPhone' => 'Synchroniser avec le téléphone',
			'watch.sync.syncing' => 'Synchronisation…',
			'watch.sync.synced' => 'Synchronisé',
			'watch.sync.syncedJustNow' => 'Synchronisé à l\'instant',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => 'Synchronisé il y a ${minutes}m',
			'watch.sync.failed' => 'Échec de la synchronisation',
			'watch.sync.phoneDisconnected' => 'Téléphone déconnecté',
			'watch.sync.tapToSync' => 'Touchez pour synchroniser',
			'watch.sync.refreshFailed' => 'Impossible d\'actualiser. Vérifiez votre téléphone.',
			'watch.sync.openPhone' => 'Ouvrez Calorify sur votre téléphone, puis touchez actualiser.',
			'watch.home.today' => 'Aujourd\'hui',
			'watch.home.calorieSummary' => ({required Object consumed, required Object goal, required Object status}) => '${consumed} calories consommées sur ${goal}. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} au-dessus de l\'objectif',
			'watch.home.remaining' => ({required Object calories}) => '${calories} restants',
			'watch.home.left' => ({required Object calories}) => '${calories} restants',
			'watch.home.goal' => ({required Object calories}) => 'Objectif : ${calories} kcal',
			'watch.home.logMeal' => 'Enregistrer un repas',
			'watch.home.todayMeals' => 'Repas d\'aujourd\'hui',
			'watch.home.todayMealsCount' => ({required Object count}) => 'Repas d\'aujourd\'hui, ${count}',
			'watch.home.viewMore' => ({required Object count}) => 'Voir ${count} autres',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count} repas de plus, touchez pour tout voir',
			'watch.home.noMeals' => 'Aucun repas enregistré',
			'watch.home.noMealsSemantics' => 'Aucun repas enregistré aujourd\'hui',
			'watch.home.tapLog' => 'Touchez Enregistrer pour commencer',
			'watch.home.removedFromQueue' => 'Repas supprimé de la file hors ligne.',
			'watch.home.removedOffline' => 'Repas supprimé hors ligne. Il se synchronisera quand votre téléphone se reconnectera.',
			'watch.home.deleteFailed' => 'Impossible de supprimer le repas',
			'watch.history.title' => 'Repas d\'aujourd\'hui',
			'watch.history.refresh' => 'Actualiser les repas',
			'watch.history.loadFailed' => 'Impossible de charger les repas',
			'watch.history.syncFailed' => 'Impossible de synchroniser',
			'watch.history.emptyTitle' => 'Aucun repas pour l\'instant',
			'watch.history.emptyMessage' => 'Enregistrez un repas depuis l\'accueil pour le voir ici.',
			'watch.favorites.title' => 'Favoris',
			'watch.favorites.refresh' => 'Actualiser les favoris',
			'watch.favorites.loadFailed' => 'Impossible de charger les favoris',
			'watch.favorites.syncFailed' => 'Impossible de synchroniser',
			'watch.favorites.emptyTitle' => 'Aucun favori pour l\'instant',
			'watch.favorites.emptyMessage' => 'Mettez des repas en favori dans l\'application sur votre téléphone pour les enregistrer d\'une touche ici.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} calories. Touchez pour enregistrer.',
			'watch.favorites.logged' => ({required Object name}) => '${name} enregistré !',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name} enregistré hors ligne. Il se synchronisera quand votre téléphone se reconnectera.',
			'watch.favorites.saveFailed' => 'Impossible d\'enregistrer le repas. Veuillez réessayer.',
			'watch.favorites.log' => 'Enregistrer',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} calories, enregistré à ${time}.',
			'watch.meal.longPressDelete' => 'Appuyez longuement pour supprimer.',
			'watch.meal.deleteTitle' => 'Supprimer le repas ?',
			'watch.voice.title' => 'Enregistrement vocal du repas',
			'watch.voice.processing' => 'Analyse de votre repas…',
			'watch.voice.processingDescription' => 'Estimation des portions et des nutriments',
			'watch.voice.listening' => 'Écoute',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}s',
			'watch.voice.stop' => 'Arrêter l\'enregistrement',
			'watch.voice.start' => 'Touchez pour démarrer l\'enregistrement',
			'watch.voice.starting' => 'Activation du microphone…',
			'watch.voice.prompt' => 'Touchez, puis décrivez votre repas',
			'watch.voice.tapToRetry' => 'Touchez pour réessayer',
			'watch.voice.example' => 'Essayez « 2 rotis avec du dal »',
			'watch.voice.unavailable' => 'Saisie vocale indisponible. Vérifiez l\'autorisation du microphone dans les paramètres de la montre.',
			'watch.voice.didNotStart' => 'Le microphone n\'a pas démarré. Touchez pour réessayer.',
			'watch.voice.startFailed' => 'Impossible de démarrer l\'enregistrement. Vérifiez les autorisations du microphone.',
			'watch.voice.allowMicrophone' => 'Autorisez l\'accès au microphone pour enregistrer les repas par la voix.',
			'watch.voice.needsConnection' => 'La reconnaissance vocale nécessite une connexion. Touchez pour réessayer.',
			'watch.voice.microphoneUnavailable' => 'Le microphone est indisponible. Touchez pour réessayer.',
			'watch.voice.microphoneBusy' => 'Le microphone est occupé. Attendez un instant puis réessayez.',
			'watch.voice.languageUnsupported' => 'La saisie vocale ne prend pas en charge la langue de la montre.',
			'watch.voice.temporarilyBusy' => 'La saisie vocale est temporairement occupée. Attendez un instant puis réessayez.',
			'watch.voice.notRecognized' => 'Je n\'ai pas compris. Touchez le micro et réessayez.',
			'watch.voice.noSpeech' => 'Aucun discours détecté. Touchez le micro pour réessayer.',
			'watch.voice.analysisFailed' => 'L\'analyse a échoué. Veuillez réessayer.',
			'watch.voice.mealNotIdentified' => 'Impossible d\'identifier ce repas. Essayez de le décrire différemment.',
			'watch.result.title' => 'Détails du repas',
			'watch.result.savedOffline' => 'Enregistré hors ligne',
			'watch.result.logged' => 'Enregistré !',
			'watch.result.mealFound' => 'Repas trouvé',
			'watch.result.estimatedEnergy' => 'Énergie estimée',
			'watch.result.logMeal' => 'Enregistrer le repas',
			'watch.result.logging' => 'Enregistrement…',
			'watch.result.logAnother' => 'Enregistrer un autre',
			'watch.result.goingBack' => 'Retour en cours…',
			'watch.result.savedOfflineMessage' => 'Repas enregistré hors ligne. Il se synchronisera quand votre téléphone se reconnectera.',
			'watch.result.saveFailed' => 'Impossible d\'enregistrer le repas. Veuillez réessayer.',
			'common.betaTag' => 'Bêta',
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
