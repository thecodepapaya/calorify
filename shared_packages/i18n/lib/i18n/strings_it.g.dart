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
class TranslationsIt with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsIt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.it,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <it>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsIt _root = this; // ignore: unused_field

	@override 
	TranslationsIt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsIt(meta: meta ?? this.$meta);

	// Translations
	@override String get language => 'Italiano';
	@override String get flag => '🇮🇹';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsIt errors = _TranslationsErrorsIt._(_root);
	@override late final _TranslationsOnboardingIt onboarding = _TranslationsOnboardingIt._(_root);
	@override late final _TranslationsTabsIt tabs = _TranslationsTabsIt._(_root);
	@override late final _TranslationsHomeIt home = _TranslationsHomeIt._(_root);
	@override late final _TranslationsHistoryIt history = _TranslationsHistoryIt._(_root);
	@override late final _TranslationsMealIt meal = _TranslationsMealIt._(_root);
	@override late final _TranslationsFavoritesIt favorites = _TranslationsFavoritesIt._(_root);
	@override late final _TranslationsProfileIt profile = _TranslationsProfileIt._(_root);
	@override late final _TranslationsHealthScoreIt healthScore = _TranslationsHealthScoreIt._(_root);
	@override late final _TranslationsEditProfileIt editProfile = _TranslationsEditProfileIt._(_root);
	@override late final _TranslationsSettingsIt settings = _TranslationsSettingsIt._(_root);
	@override late final _TranslationsRemindersIt reminders = _TranslationsRemindersIt._(_root);
	@override late final _TranslationsNotificationsIt notifications = _TranslationsNotificationsIt._(_root);
	@override late final _TranslationsLoginIt login = _TranslationsLoginIt._(_root);
	@override late final _TranslationsDisclaimerIt disclaimer = _TranslationsDisclaimerIt._(_root);
	@override late final _TranslationsCommonIt common = _TranslationsCommonIt._(_root);
	@override late final _TranslationsFeedbackRatingIt feedbackRating = _TranslationsFeedbackRatingIt._(_root);
	@override late final _TranslationsHealthIt health = _TranslationsHealthIt._(_root);
}

// Path: errors
class _TranslationsErrorsIt implements TranslationsErrorsEn {
	_TranslationsErrorsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => 'Hai effettuato troppe richieste. Attendi un momento prima di riprovare.';
	@override String get networkError => 'Errore di rete. Controlla la tua connessione a Internet.';
	@override String get unknownError => 'Qualcosa è andato storto. Riprova più tardi.';
	@override String get loadingProfileData => 'Errore nel caricamento dei dati del profilo';
	@override String get somethingWentWrong => 'Qualcosa è andato storto.';
	@override String get retry => 'Riprova';
}

// Path: onboarding
class _TranslationsOnboardingIt implements TranslationsOnboardingEn {
	_TranslationsOnboardingIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Benvenuto in ${appLabel}';
	@override String get subtitle => 'Il tuo assistente personale alla nutrizione, potenziato dall\'IA';
	@override String get getStarted => 'Inizia';
	@override late final _TranslationsOnboardingFeaturesIt features = _TranslationsOnboardingFeaturesIt._(_root);
	@override late final _TranslationsOnboardingGenderIt gender = _TranslationsOnboardingGenderIt._(_root);
	@override late final _TranslationsOnboardingHeightIt height = _TranslationsOnboardingHeightIt._(_root);
	@override late final _TranslationsOnboardingWeightIt weight = _TranslationsOnboardingWeightIt._(_root);
	@override late final _TranslationsOnboardingAgeIt age = _TranslationsOnboardingAgeIt._(_root);
	@override late final _TranslationsOnboardingBmiScaleIt bmiScale = _TranslationsOnboardingBmiScaleIt._(_root);
	@override late final _TranslationsOnboardingWeightGoalIt weightGoal = _TranslationsOnboardingWeightGoalIt._(_root);
	@override late final _TranslationsOnboardingActivityLevelIt activityLevel = _TranslationsOnboardingActivityLevelIt._(_root);
	@override late final _TranslationsOnboardingHealthConnectIt healthConnect = _TranslationsOnboardingHealthConnectIt._(_root);
	@override late final _TranslationsOnboardingReinforcementIt reinforcement = _TranslationsOnboardingReinforcementIt._(_root);
}

// Path: tabs
class _TranslationsTabsIt implements TranslationsTabsEn {
	_TranslationsTabsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Dashboard';
	@override String get history => 'Cronologia';
}

// Path: home
class _TranslationsHomeIt implements TranslationsHomeEn {
	_TranslationsHomeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryIt aiSummary = _TranslationsHomeAiSummaryIt._(_root);
	@override late final _TranslationsHomeDailyGoalIt dailyGoal = _TranslationsHomeDailyGoalIt._(_root);
	@override late final _TranslationsHomeDailySummaryIt dailySummary = _TranslationsHomeDailySummaryIt._(_root);
	@override late final _TranslationsHomeIntakeProgressIt intakeProgress = _TranslationsHomeIntakeProgressIt._(_root);
	@override late final _TranslationsHomeIntakeHistoryIt intakeHistory = _TranslationsHomeIntakeHistoryIt._(_root);
	@override late final _TranslationsHomeMealLogIt mealLog = _TranslationsHomeMealLogIt._(_root);
	@override late final _TranslationsHomeMealDescriptionIt mealDescription = _TranslationsHomeMealDescriptionIt._(_root);
	@override late final _TranslationsHomeFavoriteMealsIt favoriteMeals = _TranslationsHomeFavoriteMealsIt._(_root);
	@override late final _TranslationsHomeMealSnapIt mealSnap = _TranslationsHomeMealSnapIt._(_root);
	@override late final _TranslationsHomeConnectHealthIt connectHealth = _TranslationsHomeConnectHealthIt._(_root);
}

// Path: history
class _TranslationsHistoryIt implements TranslationsHistoryEn {
	_TranslationsHistoryIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get noMeals => 'Nessun pasto registrato';
	@override String get emptyMessage => 'Scatta una foto del tuo ultimo pasto per registrarlo qui.';
	@override String get today => 'Oggi';
	@override String get yesterday => 'Ieri';
}

// Path: meal
class _TranslationsMealIt implements TranslationsMealEn {
	_TranslationsMealIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get ohNo => 'Oh no!';
	@override String get delete => 'Elimina';
	@override String get editMeal => 'Modifica pasto';
	@override String get addMeal => 'Aggiungi pasto';
	@override String get saveMeal => 'Salva pasto';
	@override String get save => 'Salva';
	@override String get mealName => 'Nome del pasto';
	@override String get mealNameHint => 'es. Uova strapazzate con pane tostato';
	@override String get mealQuantity => 'Quantità del pasto';
	@override String get mealQuantityHint => 'es. 1 ciotola, 2 fette';
	@override String get timeOfMeal => 'Orario del pasto';
	@override String get timeOfMealHint => 'Seleziona l\'orario in cui hai mangiato';
	@override String get mealType => 'Tipo di pasto';
	@override late final _TranslationsMealNutritionIt nutrition = _TranslationsMealNutritionIt._(_root);
	@override late final _TranslationsMealDeleteConfirmationIt deleteConfirmation = _TranslationsMealDeleteConfirmationIt._(_root);
	@override String get addedToLog => 'Pasto aggiunto al tuo registro!';
	@override String couldNotAdd({required Object error}) => 'Impossibile aggiungere il pasto: ${error}';
	@override String get savedSuccessfully => 'Pasto aggiunto con successo!';
	@override String get updatedSuccessfully => 'Pasto aggiornato con successo!';
	@override String errorSaving({required Object error}) => 'Errore durante il salvataggio del pasto: ${error}';
	@override String get removedFromFavorites => 'Rimosso dai preferiti!';
	@override String get savedAsFavorite => 'Pasto salvato tra i preferiti!';
	@override String get unfavorite => 'Rimuovi dai preferiti';
	@override String couldNotUpdateFavorite({required Object error}) => 'Impossibile aggiornare i preferiti: ${error}';
	@override String get feedbackThanks => 'Grazie per il feedback!';
	@override String get reanalysisUpdated => 'Analisi del pasto aggiornata in base al tuo feedback.';
	@override String failedToProcess({required Object error}) => 'Impossibile elaborare: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Impossibile elaborare l\'immagine: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Errore durante la compressione dell\'immagine: ${error}';
	@override String get failedToSave => 'Impossibile salvare i dati. Riprova.';
	@override String get skip => 'Salta';
	@override late final _TranslationsMealVariationIt variation = _TranslationsMealVariationIt._(_root);
	@override late final _TranslationsMealAnalysisIt analysis = _TranslationsMealAnalysisIt._(_root);
	@override late final _TranslationsMealFeedbackIt feedback = _TranslationsMealFeedbackIt._(_root);
}

// Path: favorites
class _TranslationsFavoritesIt implements TranslationsFavoritesEn {
	_TranslationsFavoritesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preferiti';
	@override String get empty => 'Ancora nessun pasto preferito.';
	@override String get searchPlaceholder => 'Cerca pasti preferiti';
	@override String get searchEmptyTitle => 'Nessun preferito corrisponde alla tua ricerca';
	@override String get searchEmptySubtitle => 'Prova con un nome del pasto, quantità o tipo di pasto diverso.';
	@override String get sortLabel => 'Ordina preferiti';
	@override String get undo => 'Annulla';
	@override String removed({required Object name}) => '${name} rimosso dai preferiti';
	@override late final _TranslationsFavoritesSortOptionsIt sortOptions = _TranslationsFavoritesSortOptionsIt._(_root);
}

// Path: profile
class _TranslationsProfileIt implements TranslationsProfileEn {
	_TranslationsProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profilo';
	@override String get noProfileData => 'Nessun dato profilo trovato';
	@override String get yourProfile => 'Il tuo profilo';
	@override String get viewAndManage => 'Visualizza e gestisci le tue informazioni sulla salute';
	@override late final _TranslationsProfileSectionsIt sections = _TranslationsProfileSectionsIt._(_root);
	@override String get gender => 'Genere';
	@override String get height => 'Altezza';
	@override String get weight => 'Peso';
	@override String get age => 'Età';
	@override String get weightGoal => 'Obiettivo di peso';
	@override String get targetWeight => 'Peso obiettivo';
	@override String get activityLevel => 'Livello di attività';
	@override String get healthMetrics => 'Metriche di salute';
	@override String get notSet => 'Non impostato';
	@override String get years => 'anni';
	@override String get updatedSuccessfully => 'Profilo aggiornato con successo!';
	@override late final _TranslationsProfileCalculatedValuesIt calculatedValues = _TranslationsProfileCalculatedValuesIt._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreIt implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Punteggio di salute';
	@override String get whyThisScore => 'Perché questo punteggio?';
	@override String get note => 'Questo punteggio è una stima dell\'IA basata sugli ingredienti identificati e sulla densità nutrizionale. Per consigli dietetici personalizzati, consulta sempre un professionista.';
	@override String get unhealthy => 'Non salutare';
	@override String get healthy => 'Salutare';
	@override String get neutral => 'Neutro';
}

// Path: editProfile
class _TranslationsEditProfileIt implements TranslationsEditProfileEn {
	_TranslationsEditProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifica profilo';
	@override late final _TranslationsEditProfileSectionsIt sections = _TranslationsEditProfileSectionsIt._(_root);
	@override String get gender => 'Genere';
	@override String get dateOfBirth => 'Data di nascita';
	@override String get height => 'Altezza';
	@override String get weight => 'Peso';
	@override String get weightGoal => 'Obiettivo di peso';
	@override String get activityLevel => 'Livello di attività';
	@override String get metric => 'Metrico';
	@override String get imperial => 'Imperiale';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metrico (cm)';
	@override String get imperialFtIn => 'Imperiale (ft/in)';
	@override String get metricKg => 'Metrico (kg)';
	@override String get imperialLbs => 'Imperiale (lbs)';
	@override late final _TranslationsEditProfileGendersIt genders = _TranslationsEditProfileGendersIt._(_root);
	@override late final _TranslationsEditProfileWeightGoalsIt weightGoals = _TranslationsEditProfileWeightGoalsIt._(_root);
	@override late final _TranslationsEditProfileActivityLevelsIt activityLevels = _TranslationsEditProfileActivityLevelsIt._(_root);
}

// Path: settings
class _TranslationsSettingsIt implements TranslationsSettingsEn {
	_TranslationsSettingsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Impostazioni';
	@override late final _TranslationsSettingsSectionsIt sections = _TranslationsSettingsSectionsIt._(_root);
	@override late final _TranslationsSettingsEditProfileIt editProfile = _TranslationsSettingsEditProfileIt._(_root);
	@override late final _TranslationsSettingsLanguageIt language = _TranslationsSettingsLanguageIt._(_root);
	@override late final _TranslationsSettingsHeightUnitIt heightUnit = _TranslationsSettingsHeightUnitIt._(_root);
	@override late final _TranslationsSettingsWeightUnitIt weightUnit = _TranslationsSettingsWeightUnitIt._(_root);
	@override late final _TranslationsSettingsMealRemindersIt mealReminders = _TranslationsSettingsMealRemindersIt._(_root);
	@override late final _TranslationsSettingsThemeIt theme = _TranslationsSettingsThemeIt._(_root);
	@override late final _TranslationsSettingsSendFeedbackIt sendFeedback = _TranslationsSettingsSendFeedbackIt._(_root);
	@override late final _TranslationsSettingsExportMealHistoryIt exportMealHistory = _TranslationsSettingsExportMealHistoryIt._(_root);
	@override late final _TranslationsSettingsClearAllDataIt clearAllData = _TranslationsSettingsClearAllDataIt._(_root);
	@override late final _TranslationsSettingsDebugOptionsIt debugOptions = _TranslationsSettingsDebugOptionsIt._(_root);
	@override String get developerModeEnabled => 'Modalità sviluppatore abilitata!';
	@override late final _TranslationsSettingsHealthConnectIt healthConnect = _TranslationsSettingsHealthConnectIt._(_root);
	@override late final _TranslationsSettingsAboutIt about = _TranslationsSettingsAboutIt._(_root);
	@override late final _TranslationsSettingsAppInfoIt appInfo = _TranslationsSettingsAppInfoIt._(_root);
}

// Path: reminders
class _TranslationsRemindersIt implements TranslationsRemindersEn {
	_TranslationsRemindersIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rimani in carreggiata con i promemoria';
	@override String get description => 'Ricevi promemoria gentili per registrare i pasti e restare costante con i tuoi obiettivi nutrizionali';
	@override String get notificationsEnabled => 'Notifiche abilitate';
	@override String get notificationsDisabled => 'Notifiche disabilitate';
	@override String get enabledSubtitle => 'Riceverai promemoria per i pasti';
	@override String get disabledSubtitle => 'Abilita le notifiche per ricevere promemoria sui pasti';
	@override String get mealReminders => 'Promemoria pasti';
	@override String get breakfast => 'Colazione';
	@override String get lunch => 'Pranzo';
	@override String get dinner => 'Cena';
	@override String get snack => 'Spuntino';
	@override String get unknown => 'Sconosciuto';
	@override String get change => 'Modifica';
	@override String get enableNotifications => 'Abilita notifiche';
	@override String get skipForNow => 'Salta per ora';
	@override String get saveChanges => 'Salva modifiche';
	@override String get enabledSuccessfully => 'Notifiche abilitate con successo!';
	@override String get permissionDenied => 'Permesso notifiche negato';
	@override String errorEnabling({required Object error}) => 'Errore durante l\'abilitazione delle notifiche: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Errore durante il completamento della configurazione: ${error}';
}

// Path: notifications
class _TranslationsNotificationsIt implements TranslationsNotificationsEn {
	_TranslationsNotificationsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastIt breakfast = _TranslationsNotificationsBreakfastIt._(_root);
	@override late final _TranslationsNotificationsLunchIt lunch = _TranslationsNotificationsLunchIt._(_root);
	@override late final _TranslationsNotificationsDinnerIt dinner = _TranslationsNotificationsDinnerIt._(_root);
	@override late final _TranslationsNotificationsSnackIt snack = _TranslationsNotificationsSnackIt._(_root);
	@override late final _TranslationsNotificationsTestIt test = _TranslationsNotificationsTestIt._(_root);
}

// Path: login
class _TranslationsLoginIt implements TranslationsLoginEn {
	_TranslationsLoginIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Accesso';
	@override String get signInWithGoogle => 'Accedi con Google';
	@override String get signInFailed => 'Accesso con Google non riuscito o annullato.';
}

// Path: disclaimer
class _TranslationsDisclaimerIt implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Nota bene';
	@override late final _TranslationsDisclaimerSnapIt snap = _TranslationsDisclaimerSnapIt._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateIt weightEstimate = _TranslationsDisclaimerWeightEstimateIt._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsIt healthMetrics = _TranslationsDisclaimerHealthMetricsIt._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureIt calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureIt._(_root);
}

// Path: common
class _TranslationsCommonIt implements TranslationsCommonEn {
	_TranslationsCommonIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get close => 'Chiudi';
	@override String get kContinue => 'Continua';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingIt implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => 'Ti sta piacendo ${appLabel}?';
	@override String get yes => 'Sì, mi piace';
	@override String get no => 'Non proprio';
	@override String get rateStepHeading => 'Valuta su Play Store';
	@override String get emailStepHeading => 'Invia feedback via email';
	@override String soloDevMessage({required Object appLabel}) => 'Una valutazione veloce aiuta altri a trovare ${appLabel} e sostiene lo sviluppo. Ti andrebbe di lasciarne una?';
	@override String get shareFeedbackViaEmail => 'Il tuo feedback orienta i prossimi passi — leggiamo ogni messaggio. Vuoi condividere i tuoi pensieri via email?';
	@override String get rateCta => 'Valuta su Play Store';
	@override String get maybeLater => 'Magari più tardi';
	@override String get sendFeedback => 'Invia feedback';
	@override String get noThanks => 'No, grazie';
	@override String get aboutUsDescription => 'Creato con cura da un piccolo team. Siamo focalizzati su privacy, semplicità e sul costruire abitudini alimentari migliori.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Curioso di sapere chi c\'è dietro ${appLabel}? Vedi ';
	@override String get aboutUsLinkLabel => 'Chi siamo';
	@override String get thankYouMessage => 'Grazie! Te lo chiederemo un\'altra volta.';
}

// Path: health
class _TranslationsHealthIt implements TranslationsHealthEn {
	_TranslationsHealthIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Impossibile sincronizzare con Health Connect';
	@override String get mealSynced => 'Pasto sincronizzato con Health Connect';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesIt implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionIt foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionIt._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisIt aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisIt._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationIt healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationIt._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderIt implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual è il tuo genere?';
	@override String get description => 'Il genere ci aiuta a calcolare con precisione il tuo metabolismo basale (BMR).';
	@override String get next => 'Avanti';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightIt implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quanto sei alto/a?';
	@override String get description => 'La tua altezza ci aiuta a calcolare con precisione il tuo BMI e il tuo fabbisogno energetico.';
	@override String get metric => 'Metrico';
	@override String get imperial => 'Imperiale';
	@override String get next => 'Avanti';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightIt implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => 'Qual è il tuo peso attuale?';
	@override String get currentDescription => 'Il tuo peso attuale è essenziale per personalizzare i tuoi obiettivi quotidiani.';
	@override String get targetTitle => 'Qual è il tuo peso obiettivo?';
	@override String get targetDescription => 'Impostare un peso obiettivo ci aiuta a definire il tuo piano a lungo termine.';
	@override String get metric => 'Metrico';
	@override String get imperial => 'Imperiale';
	@override String get next => 'Avanti';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeIt implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual è la tua data di nascita?';
	@override String get description => 'La tua età ci aiuta a calcolare con precisione il tuo fabbisogno calorico.';
	@override String get next => 'Avanti';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleIt implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Sottopeso';
	@override String get healthy => 'Sano';
	@override String get overweight => 'Sovrappeso';
	@override String get obese => 'Obeso';
	@override late final _TranslationsOnboardingBmiScaleCategoriesIt categories = _TranslationsOnboardingBmiScaleCategoriesIt._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesIt messages = _TranslationsOnboardingBmiScaleMessagesIt._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalIt implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Qual è il tuo obiettivo?';
	@override String get description => 'Scegli l\'obiettivo che meglio descrive ciò che vuoi ottenere';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelIt implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quanto sei attivo/a?';
	@override String get description => 'Questo ci aiuta a calcolare con maggiore precisione il tuo fabbisogno calorico giornaliero';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectIt implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Connetti Health Connect';
	@override String get description => 'Sincronizza i tuoi dati sulla salute per approfondimenti migliori e monitoraggio automatico delle calorie';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingIt automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingIt._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsIt progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsIt._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationIt seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationIt._(_root);
	@override String get connected => 'Health Connect connesso';
	@override String get notConnected => 'Health Connect non connesso';
	@override String get setup => 'Configura Health Connect';
	@override String get skipForNow => 'Salta per ora';
	@override String get statusConnected => 'Health Connect è connesso.';
	@override String get statusSuccess => 'Health Connect è stato connesso con successo!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Autorizzazione negata. Abilita i permessi di Health Connect dalle impostazioni del telefono per ${appLabel}.';
	@override String statusError({required Object error}) => 'Errore durante la configurazione di Health Connect: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementIt implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessIt trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessIt._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileIt healthProfile = _TranslationsOnboardingReinforcementHealthProfileIt._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleIt goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleIt._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryIt implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Il tuo riepilogo IA';
	@override String get logMore => 'Registra più pasti nei prossimi giorni per ottenere approfondimenti IA personalizzati.';
	@override String get loading => 'Caricamento del riepilogo...';
	@override String mealCount({required Object count}) => '${count} pasti registrati';
	@override String macroBalanceScore({required Object score}) => 'Punteggio equilibrio ${score}';
	@override String get topFoods => 'Cibi principali';
	@override String get trendUp => 'Calorie in aumento';
	@override String get trendDown => 'Calorie in diminuzione';
	@override String get trendSteady => 'Calorie stabili';
	@override String generatedAt({required Object time}) => 'Aggiornato ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalIt implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Imposta il tuo obiettivo giornaliero';
	@override String get titleSet => 'Il tuo obiettivo giornaliero';
	@override String get description => 'Pronto/a a iniziare il tuo percorso di benessere? Imposta qui sotto il tuo obiettivo calorico giornaliero per dare il via ai progressi.';
	@override String get descriptionSet => 'La bussola è impostata! Questo è il tuo obiettivo calorico giornaliero che ti guiderà.';
	@override String get yourGoal => 'Il tuo obiettivo';
	@override String get goal => 'Obiettivo';
	@override String get dailyCalories => 'Calorie giornaliere (kcal)';
	@override String get setGoal => 'Imposta obiettivo';
	@override String get intake => 'Assunte';
	@override String get burned => 'Bruciate';
	@override String get weightImpact => 'Impatto sul peso';
	@override String get estLoss => 'Perdita stimata di';
	@override String get estGain => 'Aumento stimato di';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryIt implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Riepilogo giornaliero';
	@override String get calories => 'Calorie';
	@override String get carbs => 'Carboidrati';
	@override String get protein => 'Proteine';
	@override String get fat => 'Grassi';
	@override String get fiber => 'Fibre';
	@override String get grams => 'grammi';
	@override String get chartAccessibilityLabel => 'Grafico dei macro';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressIt implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ripartizione macro di oggi';
	@override String get target => 'Obiettivo';
	@override String get current => 'Attuale';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryIt implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Storico macro di 7 giorni';
	@override String get trendTitle => 'Tendenza di oggi';
	@override String peakHour({required Object hour}) => 'Picco: ${hour}:00';
	@override String get noHistoryYet => 'Nessuno storico ancora';
	@override String get startLogging => 'Inizia a registrare i pasti per vedere qui le tue\ntendenze dei macro degli ultimi 7 giorni';
}

// Path: home.mealLog
class _TranslationsHomeMealLogIt implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pasti registrati';
	@override String get emptyMessage => 'Scatta una foto del tuo ultimo pasto per registrarlo qui.';
	@override String get noMealsToday => 'Nessun pasto registrato oggi';
	@override String get seeAllMeals => 'Vedi tutti i pasti';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionIt implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aggiunta rapida con IA';
	@override String get description => 'Descrivi il tuo pasto e lascia che l\'IA si occupi dei dettagli.';
	@override String get hint => 'es. A colazione ho mangiato una grande ciotola di fiocchi d\'avena con una banana a fette e un misurino di proteine del siero ...';
	@override String get analyzeMeal => 'Analizza pasto';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsIt implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pasti preferiti';
	@override String get description => 'Aggiungi rapidamente uno dei tuoi pasti preferiti.';
	@override String get noFavorites => 'Ancora nessun pasto preferito.';
	@override String get addFavoriteHint => 'Tocca la stella su un pasto per aggiungerlo ai preferiti.';
	@override String get seeAll => 'Vedi tutti';
	@override String get add => 'Aggiungi';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapIt implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scatta e traccia il tuo pasto';
	@override String get description => 'Usa la fotocamera per scattare una foto del cibo da analizzare con l\'IA.';
	@override String get openCamera => 'Apri fotocamera';
	@override String get gallery => 'Galleria';
	@override String get compressingPhoto => 'Ottimizzazione foto…';
	@override String get uploadingPhoto => 'Caricamento foto…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthIt implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sincronizza con Health Connect';
	@override String get description => 'Sincronizza i tuoi dati nutrizionali con Health Connect';
	@override String get install => 'Installa';
	@override String get connect => 'Connetti';
}

// Path: meal.nutrition
class _TranslationsMealNutritionIt implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get calories => 'Calorie';
	@override String get carbs => 'Carboidrati (g)';
	@override String get protein => 'Proteine (g)';
	@override String get fat => 'Grassi (g)';
	@override String get fiber => 'Fibre (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationIt implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Elimina pasto';
	@override String get message => 'Sei sicuro/a di voler eliminare questo pasto?';
	@override String get cancel => 'Annulla';
	@override String get delete => 'Elimina';
}

// Path: meal.variation
class _TranslationsMealVariationIt implements TranslationsMealVariationEn {
	_TranslationsMealVariationIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => 'Domanda ${current} di ${total}';
	@override String get noVariationsAvailable => 'Nessuna variante disponibile';
}

// Path: meal.analysis
class _TranslationsMealAnalysisIt implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analisi del pasto con l\'IA';
	@override String get reassurance => 'Di solito richiede pochi secondi.';
	@override String get stepStarted => 'Avvio…';
	@override String get stepDecomposition => 'Comprensione del tuo pasto…';
	@override String get stepIngredients => 'Abbinamento degli ingredienti ai dati nutrizionali…';
	@override String get stepUncertainty => 'Verifica dell\'affidabilità…';
	@override String get stepMealTypeQuestion => 'Quasi fatto…';
	@override String get stepResult => 'Finalizzazione del risultato…';
	@override String get stepError => 'Qualcosa è andato storto';
	@override String get stepDefault => 'Analisi del tuo pasto…';
	@override String get progressUnderstand => 'Comprendi';
	@override String get progressMatch => 'Abbina';
	@override String get progressCheck => 'Verifica';
	@override String get progressFinish => 'Completa';
	@override String ingredientsLine({required Object count}) => '${count} ingredienti rilevati';
	@override String get ingredientsPending => 'Scansione degli ingredienti…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackIt implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'What looks wrong?';
	@override String get subtitle => 'Help us improve the analysis by selecting one or more issues.';
	@override String get tellUsMore => 'Tell us more';
	@override String get describeIncorrect => 'Describe what was incorrect';
	@override String get submit => 'Submit';
	@override String get issueFoodIdentification => 'Food identification';
	@override String get issuePortionSize => 'Portion size';
	@override String get issueCalorieDistribution => 'Calorie distribution';
	@override String get issueMacrosWrong => 'Macros are wrong';
	@override String get issueMissingItems => 'Missing items';
	@override String get issueExtraItems => 'Extra items';
	@override String get issueOther => 'Other';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsIt implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get recent => 'Recenti';
	@override String get calories => 'Calorie';
	@override String get alphabetical => 'A-Z';
}

// Path: profile.sections
class _TranslationsProfileSectionsIt implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFILO';
	@override String get basicInformation => 'INFORMAZIONI DI BASE';
	@override String get goalsAndActivity => 'OBIETTIVI E ATTIVITÀ';
	@override String get calculatedValues => 'VALORI CALCOLATI';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesIt implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => 'Obiettivo giornaliero';
	@override String get calPerDay => 'cal/giorno';
	@override String get notAvailable => 'N/D';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsIt implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => 'INFORMAZIONI PERSONALI';
	@override String get physicalMeasurements => 'MISURE FISICHE';
	@override String get goalsAndActivity => 'OBIETTIVI E ATTIVITÀ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersIt implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get male => 'Maschio';
	@override String get female => 'Femmina';
	@override String get other => 'Altro';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsIt implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightIt loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightIt._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightIt maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightIt._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightIt gainWeight = _TranslationsEditProfileWeightGoalsGainWeightIt._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsIt implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryIt sedentary = _TranslationsEditProfileActivityLevelsSedentaryIt._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveIt lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveIt._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveIt moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveIt._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveIt veryActive = _TranslationsEditProfileActivityLevelsVeryActiveIt._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveIt extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveIt._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsIt implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get profile => 'PROFILO';
	@override String get localization => 'LOCALIZZAZIONE';
	@override String get notifications => 'NOTIFICHE';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get supportAndLegal => 'SUPPORTO E NOTE LEGALI';
	@override String get about => 'INFORMAZIONI';
	@override String get dangerZone => 'ZONA PERICOLO';
	@override String get developer => 'SVILUPPATORE';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileIt implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifica profilo';
	@override String get subtitle => 'Aggiorna le tue informazioni personali';
}

// Path: settings.language
class _TranslationsSettingsLanguageIt implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lingua';
	@override String get subtitle => 'Scegli la tua lingua preferita';
	@override String get searchHint => 'Cerca lingue...';
	@override String get noResults => 'Nessun risultato trovato';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitIt implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unità altezza';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitIt implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unità peso';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersIt implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Promemoria pasti';
	@override String get subtitle => 'Rimani in carreggiata con avvisi puntuali';
}

// Path: settings.theme
class _TranslationsSettingsThemeIt implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Chiaro';
	@override String get dark => 'Scuro';
	@override String get system => 'Sistema';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackIt implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Invia feedback';
	@override String subtitle({required Object appLabel}) => 'Aiutaci a migliorare ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Feedback sull\'app ${appLabel}';
	@override String get emailBodyPrefix => 'Inserisci il tuo feedback qui sotto:';
	@override String get appVersion => 'Versione app';
	@override String get device => 'Dispositivo';
	@override String get osVersion => 'Versione OS';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryIt implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Esporta storico pasti';
	@override String get subtitle => 'Condividi un CSV dei tuoi pasti registrati';
	@override String get shareText => 'Esportazione dello storico pasti di Calorify';
	@override String failed({required Object error}) => 'Impossibile esportare lo storico dei pasti: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataIt implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cancella tutti i dati';
	@override String get subtitle => 'Elimina in modo irreversibile tutte le tue informazioni';
	@override String get confirmationTitle => 'Cancellare tutti i dati?';
	@override String get confirmationMessage => 'Questa azione non può essere annullata. Tutti i pasti registrati, i preferiti e le impostazioni del profilo verranno eliminati in modo permanente.';
	@override String get cancel => 'Annulla';
	@override String get clearEverything => 'Cancella tutto';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsIt implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opzioni di debug';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectIt implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => 'Visualizza e gestisci i permessi';
	@override late final _TranslationsSettingsHealthConnectUnavailableIt unavailable = _TranslationsSettingsHealthConnectUnavailableIt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsIt permissions = _TranslationsSettingsHealthConnectPermissionsIt._(_root);
	@override String get managePermissions => 'Gestisci permessi';
	@override String get openSettings => 'Apri impostazioni di Health Connect';
	@override String get requestPermissions => 'Richiedi permessi';
	@override String get permissionRequestCancelledOrFailed => 'La richiesta di permessi è stata annullata o non è riuscita. Riprova o concedi i permessi manualmente nelle impostazioni di Health Connect.';
	@override String get permissionRequestFailed => 'Impossibile richiedere i permessi. Riprova o concedi i permessi manualmente nelle impostazioni di Health Connect.';
	@override String get requestingPermissions => 'Richiesta in corso...';
}

// Path: settings.about
class _TranslationsSettingsAboutIt implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informazioni';
	@override String get tagline => 'Consapevolezza calorica veloce, gratuita e con la privacy al primo posto';
	@override late final _TranslationsSettingsAboutOurStoryIt ourStory = _TranslationsSettingsAboutOurStoryIt._(_root);
	@override late final _TranslationsSettingsAboutPrivacyIt privacy = _TranslationsSettingsAboutPrivacyIt._(_root);
	@override late final _TranslationsSettingsAboutDeveloperIt developer = _TranslationsSettingsAboutDeveloperIt._(_root);
	@override late final _TranslationsSettingsAboutFeedbackIt feedback = _TranslationsSettingsAboutFeedbackIt._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoIt implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => 'Build ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastIt implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'È ora di colazione! 🍳';
	@override String get body => 'Non dimenticare di registrare la colazione';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchIt implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'È ora di pranzo! 🥗';
	@override String get body => 'È il momento di registrare il pranzo';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerIt implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'È ora di cena! 🍽️';
	@override String get body => 'Non dimenticare di registrare la cena';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackIt implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'È ora di uno spuntino! 🍎';
	@override String get body => 'Tempo per uno spuntino salutare';
}

// Path: notifications.test
class _TranslationsNotificationsTestIt implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notifica di prova';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapIt implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} fornisce informazioni nutrizionali stimate. L\'accuratezza dipende dai tuoi inserimenti e dalle variazioni dei cibi. Usale come guida, non come fonte definitiva. Per consigli personalizzati, consulta un professionista.';
	@override late final _TranslationsDisclaimerSnapPortionSizeIt portionSize = _TranslationsDisclaimerSnapPortionSizeIt._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsIt preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsIt._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsIt ingredients = _TranslationsDisclaimerSnapIngredientsIt._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsIt databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsIt._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateIt implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informazioni sulla stima del peso';
	@override String get description => 'La variazione di peso prevista è una stima teorica basata sul semplice modello calorie introdotte vs. calorie consumate. È pensata solo per motivazione, non come previsione del tuo peso reale.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyIt calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyIt._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsIt biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsIt._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightIt waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightIt._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceIt professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceIt._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsIt implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get description => 'Queste metriche ti aiutano a comprendere il fabbisogno energetico del tuo corpo e a guidare i tuoi obiettivi nutrizionali.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrIt bmr = _TranslationsDisclaimerHealthMetricsBmrIt._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeIt tdee = _TranslationsDisclaimerHealthMetricsTdeeIt._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalIt dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalIt._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureIt implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stima del dispendio calorico';
	@override String get description => 'Quando i dati di Health Connect non sono disponibili, stimiamo le calorie bruciate oggi usando il tuo metabolismo basale (BMR) e il livello di attività (TDEE), scalati in base alla porzione di giornata trascorsa.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedIt howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedIt._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceIt professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceIt._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionIt implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Riconoscimento intelligente dei cibi';
	@override String get description => 'Scatta una foto e lascia che l\'IA identifichi il tuo pasto';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisIt implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analisi con IA';
	@override String get description => 'Ottieni subito i valori nutrizionali dalle tue descrizioni';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationIt implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrazione con Health Connect';
	@override String get description => 'Connettiti a Health Connect per approfondimenti migliori';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesIt implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Sottopeso';
	@override String get healthyWeight => 'Peso sano';
	@override String get overweight => 'Sovrappeso';
	@override String get obese => 'Obeso';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesIt implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Possiamo aiutarti a creare un piano sano per raggiungere un peso equilibrato con pasti ricchi di nutrienti.';
	@override String get healthy => 'Ottimo lavoro! Sei in un intervallo sano. Ti aiuteremo a mantenere vitalità ed energia.';
	@override String overweight({required Object appLabel}) => '${appLabel} semplificherà il tuo percorso con un monitoraggio potenziato dall\'IA per aiutarti a raggiungere il tuo obiettivo in modo confortevole.';
	@override String get obese => 'Siamo qui per supportarti con indicazioni personalizzate e strategie sostenibili per i tuoi obiettivi di salute.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingIt implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Monitoraggio automatico delle calorie';
	@override String get description => 'Tieni traccia delle calorie bruciate dalle tue app fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsIt implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Approfondimenti sui progressi';
	@override String get description => 'Ottieni dettagli sulle tue tendenze di salute';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationIt implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrazione senza interruzioni';
	@override String get description => 'Sincronizza i dati dalle tue app di salute preferite';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessIt implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Non sei solo/a';
	@override String get genericMessage => 'Le ricerche mostrano che la costanza nel monitoraggio è il fattore n.1 di successo a lungo termine.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Per una persona di ${age} anni, ${gender}, che desidera ${goal}, la costanza nel monitoraggio è il principale indicatore di successo.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} rende tutto 10 volte più semplice rispetto al farlo manualmente.';
	@override String get getStartedTitle => 'Pronto/a per iniziare?';
	@override String get tipPhoto => 'Scatta una foto dei tuoi pasti per un\'analisi immediata';
	@override String get tipConsistency => 'Registra con costanza per vedere progressi significativi';
	@override String get tipProgress => 'Tieni traccia dei progressi ogni giorno per rimanere motivato/a';
	@override String get button => 'Iniziamo';
	@override String get defaultGender => 'persona';
	@override String get defaultGoal => 'una versione più sana di te';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileIt implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Il tuo profilo salute';
	@override String bmiDescription({required Object bmi}) => 'In base alle tue misure, il tuo BMI è ${bmi}.';
	@override String get finalizeDescription => 'Concludiamo il profilo per personalizzare la tua esperienza.';
	@override String get goalGain => 'aumentare';
	@override String get goalLose => 'perdere';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Per raggiungere il tuo obiettivo dovrai ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Sei al tuo peso obiettivo! Ti aiuteremo a mantenerlo.';
	@override String get button => 'Iniziamo';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleIt implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ottimo inizio!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Hai compiuto il primo passo verso ${goalText}. Poiché sei ${activityText}, ${appLabel} adatterà i tuoi obiettivi al tuo stile di vita.';
	@override String get personalizedTargets => 'Obiettivi calorici personalizzati';
	@override String get aiMealDetection => 'Rilevamento pasti con IA';
	@override String get macroBreakdowns => 'Dettaglio dei macronutrienti';
	@override String get button => 'Iniziamo';
	@override String get defaultGoal => 'i tuoi obiettivi';
	@override String get defaultActivity => 'attivo';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightIt implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perdere peso';
	@override String get description => 'Crea un deficit calorico per dimagrire';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightIt implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mantenere il peso';
	@override String get description => 'Mantieni il tuo peso attuale';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightIt implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Aumentare di peso';
	@override String get description => 'Crea un surplus calorico per aumentare di peso';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryIt implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentario';
	@override String get description => 'Poca o nessuna attività fisica';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveIt implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Leggermente attivo';
	@override String get description => 'Attività leggera 1-3 giorni/settimana';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveIt implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderatamente attivo';
	@override String get description => 'Attività moderata 3-5 giorni/settimana';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveIt implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Molto attivo';
	@override String get description => 'Attività intensa 6-7 giorni/settimana';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveIt implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Estremamente attivo';
	@override String get description => 'Attività molto intensa, lavoro fisico';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableIt implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect non disponibile';
	@override String get description => 'Health Connect non è disponibile su questo dispositivo. Installa Health Connect dal Play Store (Android 9+) o aggiorna ad Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsIt implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permessi';
	@override String get description => 'Per fornire l\'integrazione con Health Connect sono richiesti i seguenti permessi:';
	@override String get granted => 'Concesso';
	@override String get notGranted => 'Non concesso';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedIt caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedIt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadIt nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadIt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteIt nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteIt._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryIt implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'La nostra storia';
	@override String content({required Object appLabel}) => '${appLabel} nasce da una semplice frustrazione: la maggior parte delle app per il conteggio delle calorie sono troppo complicate, richiedono inserimenti manuali continui, impongono abbonamenti costosi o compromettono la privacy.\n\nCome sviluppatore indipendente, volevo creare qualcosa di più semplice e più corretto — un\'app che usi l\'IA per ridurre lo sforzo, resti veloce e gratuita, e tratti i tuoi dati di salute con rispetto.\n\n${appLabel} è l\'app che avrei voluto esistesse: niente account, nessun tracciamento, nessuna pubblicità — solo informazioni chiare e pratiche e i tuoi obiettivi di salute.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyIt implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'La tua privacy conta';
	@override String get description => 'La privacy non è un ripensamento — è un principio di progettazione. Ecco cosa significa in pratica:';
	@override String get noAccounts => 'Nessun account richiesto\nUsa l\'app subito. Niente registrazioni, nessuna identità.';
	@override String noTracking({required Object appLabel}) => 'Nessun tracciamento comportamentale\n${appLabel} non monitora la tua attività, non crea profili d\'uso e non ti traccia tra app o siti web.';
	@override String noAds({required Object appLabel}) => 'Niente pubblicità per scelta\n${appLabel} è progettata per funzionare senza pubblicità o monetizzazione basata sui dati.';
	@override String get noDataSelling => 'Nessuna vendita di dati\nI tuoi dati sulla salute non vengono mai venduti o condivisi con terze parti.';
	@override String get localStorage => 'Archiviazione local-first\nI tuoi dati restano sul tuo dispositivo.';
	@override String get privacyPolicy => 'Informativa sulla privacy';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperIt implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Creata da uno sviluppatore indipendente';
	@override String description({required Object appLabel}) => '${appLabel} è sviluppata e mantenuta da un unico sviluppatore indipendente, focalizzato sulla creazione di software per la salute calmo e rispettoso della privacy.\n\nI feedback vengono letti personalmente e guidano l\'evoluzione dell\'app.';
	@override String get website => 'Sito web';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackIt implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Ti sta piacendo ${appLabel}?';
	@override String description({required Object appLabel}) => 'Il tuo feedback aiuta a migliorare ${appLabel} per tutti.';
	@override String get rateApp => 'Valuta su Play Store';
	@override String get sendFeedback => 'Invia feedback';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeIt implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dimensione della porzione';
	@override String get description => 'L\'accuratezza delle stime dipende in gran parte dalla tua corretta valutazione della porzione.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsIt implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Metodi di preparazione';
	@override String description({required Object appLabel}) => 'I metodi di cottura possono modificare significativamente il contenuto nutrizionale. Le stime di ${appLabel} potrebbero non tenere sempre conto di queste variazioni.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsIt implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredienti';
	@override String get description => 'Piatti complessi con molti ingredienti nascosti possono portare a stime meno accurate.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsIt implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitazioni del database';
	@override String description({required Object appLabel}) => 'Il database alimentare di ${appLabel} è ampio ma potrebbe non includere ogni singolo alimento o variante.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyIt implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Accuratezza delle calorie';
	@override String get description => 'Questa stima è accurata quanto lo sono le calorie assunte e consumate che registri. Registrazioni imprecise portano a proiezioni imprecise.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsIt implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fattori biologici';
	@override String description({required Object appLabel}) => 'La perdita/aumento di peso reale è influenzata da metabolismo, ormoni, sonno, stress, idratazione e altri fattori individuali che ${appLabel} non può misurare.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightIt implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Peso dell\'acqua e fluttuazioni';
	@override String get description => 'Il peso giornaliero può fluttuare sensibilmente per ritenzione idrica, digestione e tempistiche. La stima non considera queste variazioni quotidiane.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceIt implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supporto professionale';
	@override String get description => 'Non utilizzare questa stima per decisioni mediche. Consulta sempre un professionista sanitario o un dietista abilitato per consigli personalizzati sulla gestione del peso.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrIt implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Il metabolismo basale (BMR) è il numero di calorie che il tuo corpo consuma a riposo per mantenere le funzioni di base come respirazione e circolazione. Il BMR dipende da età, genere, altezza e peso. Un BMR più alto significa che il tuo corpo brucia naturalmente più calorie a riposo, spesso grazie a maggiore massa muscolare, età più giovane o genere maschile. Un BMR più basso indica tipicamente meno massa muscolare, età più avanzata o genere femminile.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeIt implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Il dispendio energetico giornaliero totale (TDEE) è il totale delle calorie che bruci al giorno, inclusi BMR e calorie derivanti da attività fisica e movimento quotidiano. Il TDEE dipende dal tuo BMR e dal livello di attività. Un TDEE più alto significa che bruci più calorie in totale, di solito perché sei più attivo/a o hai un BMR più elevato. Un TDEE più basso suggerisce meno attività quotidiana o un BMR inferiore.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalIt implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Obiettivo giornaliero';
	@override String get description => 'L\'obiettivo giornaliero è l\'apporto calorico consigliato in base al tuo TDEE e al tuo obiettivo di peso. Per perdere peso, assumi meno calorie del tuo TDEE. Per mantenere il peso, eguaglia il tuo TDEE. Per aumentare di peso, assumi più calorie del tuo TDEE. Questo ti aiuta a raggiungere il cambiamento desiderato a un ritmo sano.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedIt implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Come viene calcolata la stima';
	@override String get description => 'Calcoliamo il tuo TDEE (in base al profilo) e lo moltiplichiamo per la frazione di giornata trascorsa (ore + minuti) / 24 per stimare le calorie bruciate finora.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceIt implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Supporto professionale';
	@override String get description => 'Non utilizzare questa stima per decisioni mediche. Consulta sempre un professionista sanitario o un dietista abilitato per consigli personalizzati.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedIt implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leggere le calorie totali bruciate';
	@override String get description => 'Consente all\'app di leggere le calorie totali bruciate da Health Connect.';
	@override String get usage => 'Questo permesso è utilizzato per mostrare nell\'app le calorie bruciate giornaliere, aiutandoti a capire il tuo dispendio energetico totale.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadIt implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leggere i dati nutrizionali';
	@override String get description => 'Consente all\'app di leggere i dati nutrizionali da Health Connect.';
	@override String get usage => 'Questo permesso permette all\'app di leggere le informazioni nutrizionali registrate da altre app connesse a Health Connect, offrendo una visione completa della tua nutrizione.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteIt implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scrivere i dati nutrizionali';
	@override String get description => 'Consente all\'app di scrivere dati nutrizionali su Health Connect.';
	@override String get usage => 'Questo permesso consente di sincronizzare i pasti registrati su Health Connect, rendendo i tuoi dati nutrizionali disponibili anche per le altre app di salute e fitness che utilizzi.';
}

/// The flat map containing all translations for locale <it>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsIt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => 'Italiano',
			'flag' => '🇮🇹',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => 'Hai effettuato troppe richieste. Attendi un momento prima di riprovare.',
			'errors.networkError' => 'Errore di rete. Controlla la tua connessione a Internet.',
			'errors.unknownError' => 'Qualcosa è andato storto. Riprova più tardi.',
			'errors.loadingProfileData' => 'Errore nel caricamento dei dati del profilo',
			'errors.somethingWentWrong' => 'Qualcosa è andato storto.',
			'errors.retry' => 'Riprova',
			'onboarding.welcome' => ({required Object appLabel}) => 'Benvenuto in ${appLabel}',
			'onboarding.subtitle' => 'Il tuo assistente personale alla nutrizione, potenziato dall\'IA',
			'onboarding.getStarted' => 'Inizia',
			'onboarding.features.foodRecognition.title' => 'Riconoscimento intelligente dei cibi',
			'onboarding.features.foodRecognition.description' => 'Scatta una foto e lascia che l\'IA identifichi il tuo pasto',
			'onboarding.features.aiAnalysis.title' => 'Analisi con IA',
			'onboarding.features.aiAnalysis.description' => 'Ottieni subito i valori nutrizionali dalle tue descrizioni',
			'onboarding.features.healthIntegration.title' => 'Integrazione con Health Connect',
			'onboarding.features.healthIntegration.description' => 'Connettiti a Health Connect per approfondimenti migliori',
			'onboarding.gender.title' => 'Qual è il tuo genere?',
			'onboarding.gender.description' => 'Il genere ci aiuta a calcolare con precisione il tuo metabolismo basale (BMR).',
			'onboarding.gender.next' => 'Avanti',
			'onboarding.height.title' => 'Quanto sei alto/a?',
			'onboarding.height.description' => 'La tua altezza ci aiuta a calcolare con precisione il tuo BMI e il tuo fabbisogno energetico.',
			'onboarding.height.metric' => 'Metrico',
			'onboarding.height.imperial' => 'Imperiale',
			'onboarding.height.next' => 'Avanti',
			'onboarding.weight.currentTitle' => 'Qual è il tuo peso attuale?',
			'onboarding.weight.currentDescription' => 'Il tuo peso attuale è essenziale per personalizzare i tuoi obiettivi quotidiani.',
			'onboarding.weight.targetTitle' => 'Qual è il tuo peso obiettivo?',
			'onboarding.weight.targetDescription' => 'Impostare un peso obiettivo ci aiuta a definire il tuo piano a lungo termine.',
			'onboarding.weight.metric' => 'Metrico',
			'onboarding.weight.imperial' => 'Imperiale',
			'onboarding.weight.next' => 'Avanti',
			'onboarding.age.title' => 'Qual è la tua data di nascita?',
			'onboarding.age.description' => 'La tua età ci aiuta a calcolare con precisione il tuo fabbisogno calorico.',
			'onboarding.age.next' => 'Avanti',
			'onboarding.bmiScale.underweight' => 'Sottopeso',
			'onboarding.bmiScale.healthy' => 'Sano',
			'onboarding.bmiScale.overweight' => 'Sovrappeso',
			'onboarding.bmiScale.obese' => 'Obeso',
			'onboarding.bmiScale.categories.underweight' => 'Sottopeso',
			'onboarding.bmiScale.categories.healthyWeight' => 'Peso sano',
			'onboarding.bmiScale.categories.overweight' => 'Sovrappeso',
			'onboarding.bmiScale.categories.obese' => 'Obeso',
			'onboarding.bmiScale.messages.underweight' => 'Possiamo aiutarti a creare un piano sano per raggiungere un peso equilibrato con pasti ricchi di nutrienti.',
			'onboarding.bmiScale.messages.healthy' => 'Ottimo lavoro! Sei in un intervallo sano. Ti aiuteremo a mantenere vitalità ed energia.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} semplificherà il tuo percorso con un monitoraggio potenziato dall\'IA per aiutarti a raggiungere il tuo obiettivo in modo confortevole.',
			'onboarding.bmiScale.messages.obese' => 'Siamo qui per supportarti con indicazioni personalizzate e strategie sostenibili per i tuoi obiettivi di salute.',
			'onboarding.weightGoal.title' => 'Qual è il tuo obiettivo?',
			'onboarding.weightGoal.description' => 'Scegli l\'obiettivo che meglio descrive ciò che vuoi ottenere',
			'onboarding.activityLevel.title' => 'Quanto sei attivo/a?',
			'onboarding.activityLevel.description' => 'Questo ci aiuta a calcolare con maggiore precisione il tuo fabbisogno calorico giornaliero',
			'onboarding.healthConnect.title' => 'Connetti Health Connect',
			'onboarding.healthConnect.description' => 'Sincronizza i tuoi dati sulla salute per approfondimenti migliori e monitoraggio automatico delle calorie',
			'onboarding.healthConnect.automaticTracking.title' => 'Monitoraggio automatico delle calorie',
			'onboarding.healthConnect.automaticTracking.description' => 'Tieni traccia delle calorie bruciate dalle tue app fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Approfondimenti sui progressi',
			'onboarding.healthConnect.progressInsights.description' => 'Ottieni dettagli sulle tue tendenze di salute',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integrazione senza interruzioni',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sincronizza i dati dalle tue app di salute preferite',
			'onboarding.healthConnect.connected' => 'Health Connect connesso',
			'onboarding.healthConnect.notConnected' => 'Health Connect non connesso',
			'onboarding.healthConnect.setup' => 'Configura Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Salta per ora',
			'onboarding.healthConnect.statusConnected' => 'Health Connect è connesso.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect è stato connesso con successo!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Autorizzazione negata. Abilita i permessi di Health Connect dalle impostazioni del telefono per ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Errore durante la configurazione di Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Non sei solo/a',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'Le ricerche mostrano che la costanza nel monitoraggio è il fattore n.1 di successo a lungo termine.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Per una persona di ${age} anni, ${gender}, che desidera ${goal}, la costanza nel monitoraggio è il principale indicatore di successo.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} rende tutto 10 volte più semplice rispetto al farlo manualmente.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Pronto/a per iniziare?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Scatta una foto dei tuoi pasti per un\'analisi immediata',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Registra con costanza per vedere progressi significativi',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Tieni traccia dei progressi ogni giorno per rimanere motivato/a',
			'onboarding.reinforcement.trackingSuccess.button' => 'Iniziamo',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'persona',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'una versione più sana di te',
			'onboarding.reinforcement.healthProfile.title' => 'Il tuo profilo salute',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'In base alle tue misure, il tuo BMI è ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Concludiamo il profilo per personalizzare la tua esperienza.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'aumentare',
			'onboarding.reinforcement.healthProfile.goalLose' => 'perdere',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Per raggiungere il tuo obiettivo dovrai ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Sei al tuo peso obiettivo! Ti aiuteremo a mantenerlo.',
			'onboarding.reinforcement.healthProfile.button' => 'Iniziamo',
			'onboarding.reinforcement.goalLifestyle.title' => 'Ottimo inizio!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Hai compiuto il primo passo verso ${goalText}. Poiché sei ${activityText}, ${appLabel} adatterà i tuoi obiettivi al tuo stile di vita.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Obiettivi calorici personalizzati',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Rilevamento pasti con IA',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Dettaglio dei macronutrienti',
			'onboarding.reinforcement.goalLifestyle.button' => 'Iniziamo',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'i tuoi obiettivi',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'attivo',
			'tabs.dashboard' => 'Dashboard',
			'tabs.history' => 'Cronologia',
			'home.aiSummary.title' => 'Il tuo riepilogo IA',
			'home.aiSummary.logMore' => 'Registra più pasti nei prossimi giorni per ottenere approfondimenti IA personalizzati.',
			'home.aiSummary.loading' => 'Caricamento del riepilogo...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} pasti registrati',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Punteggio equilibrio ${score}',
			'home.aiSummary.topFoods' => 'Cibi principali',
			'home.aiSummary.trendUp' => 'Calorie in aumento',
			'home.aiSummary.trendDown' => 'Calorie in diminuzione',
			'home.aiSummary.trendSteady' => 'Calorie stabili',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Aggiornato ${time}',
			'home.dailyGoal.title' => 'Imposta il tuo obiettivo giornaliero',
			'home.dailyGoal.titleSet' => 'Il tuo obiettivo giornaliero',
			'home.dailyGoal.description' => 'Pronto/a a iniziare il tuo percorso di benessere? Imposta qui sotto il tuo obiettivo calorico giornaliero per dare il via ai progressi.',
			'home.dailyGoal.descriptionSet' => 'La bussola è impostata! Questo è il tuo obiettivo calorico giornaliero che ti guiderà.',
			'home.dailyGoal.yourGoal' => 'Il tuo obiettivo',
			'home.dailyGoal.goal' => 'Obiettivo',
			'home.dailyGoal.dailyCalories' => 'Calorie giornaliere (kcal)',
			'home.dailyGoal.setGoal' => 'Imposta obiettivo',
			'home.dailyGoal.intake' => 'Assunte',
			'home.dailyGoal.burned' => 'Bruciate',
			'home.dailyGoal.weightImpact' => 'Impatto sul peso',
			'home.dailyGoal.estLoss' => 'Perdita stimata di',
			'home.dailyGoal.estGain' => 'Aumento stimato di',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Riepilogo giornaliero',
			'home.dailySummary.calories' => 'Calorie',
			'home.dailySummary.carbs' => 'Carboidrati',
			'home.dailySummary.protein' => 'Proteine',
			'home.dailySummary.fat' => 'Grassi',
			'home.dailySummary.fiber' => 'Fibre',
			'home.dailySummary.grams' => 'grammi',
			'home.dailySummary.chartAccessibilityLabel' => 'Grafico dei macro',
			'home.intakeProgress.title' => 'Ripartizione macro di oggi',
			'home.intakeProgress.target' => 'Obiettivo',
			'home.intakeProgress.current' => 'Attuale',
			'home.intakeHistory.title' => 'Storico macro di 7 giorni',
			'home.intakeHistory.trendTitle' => 'Tendenza di oggi',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Picco: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Nessuno storico ancora',
			'home.intakeHistory.startLogging' => 'Inizia a registrare i pasti per vedere qui le tue\ntendenze dei macro degli ultimi 7 giorni',
			'home.mealLog.title' => 'Pasti registrati',
			'home.mealLog.emptyMessage' => 'Scatta una foto del tuo ultimo pasto per registrarlo qui.',
			'home.mealLog.noMealsToday' => 'Nessun pasto registrato oggi',
			'home.mealLog.seeAllMeals' => 'Vedi tutti i pasti',
			'home.mealDescription.title' => 'Aggiunta rapida con IA',
			'home.mealDescription.description' => 'Descrivi il tuo pasto e lascia che l\'IA si occupi dei dettagli.',
			'home.mealDescription.hint' => 'es. A colazione ho mangiato una grande ciotola di fiocchi d\'avena con una banana a fette e un misurino di proteine del siero ...',
			'home.mealDescription.analyzeMeal' => 'Analizza pasto',
			'home.favoriteMeals.title' => 'Pasti preferiti',
			'home.favoriteMeals.description' => 'Aggiungi rapidamente uno dei tuoi pasti preferiti.',
			'home.favoriteMeals.noFavorites' => 'Ancora nessun pasto preferito.',
			'home.favoriteMeals.addFavoriteHint' => 'Tocca la stella su un pasto per aggiungerlo ai preferiti.',
			'home.favoriteMeals.seeAll' => 'Vedi tutti',
			'home.favoriteMeals.add' => 'Aggiungi',
			'home.mealSnap.title' => 'Scatta e traccia il tuo pasto',
			'home.mealSnap.description' => 'Usa la fotocamera per scattare una foto del cibo da analizzare con l\'IA.',
			'home.mealSnap.openCamera' => 'Apri fotocamera',
			'home.mealSnap.gallery' => 'Galleria',
			'home.mealSnap.compressingPhoto' => 'Ottimizzazione foto…',
			'home.mealSnap.uploadingPhoto' => 'Caricamento foto…',
			'home.connectHealth.title' => 'Sincronizza con Health Connect',
			'home.connectHealth.description' => 'Sincronizza i tuoi dati nutrizionali con Health Connect',
			'home.connectHealth.install' => 'Installa',
			'home.connectHealth.connect' => 'Connetti',
			'history.noMeals' => 'Nessun pasto registrato',
			'history.emptyMessage' => 'Scatta una foto del tuo ultimo pasto per registrarlo qui.',
			'history.today' => 'Oggi',
			'history.yesterday' => 'Ieri',
			'meal.ohNo' => 'Oh no!',
			'meal.delete' => 'Elimina',
			'meal.editMeal' => 'Modifica pasto',
			'meal.addMeal' => 'Aggiungi pasto',
			'meal.saveMeal' => 'Salva pasto',
			'meal.save' => 'Salva',
			'meal.mealName' => 'Nome del pasto',
			'meal.mealNameHint' => 'es. Uova strapazzate con pane tostato',
			'meal.mealQuantity' => 'Quantità del pasto',
			'meal.mealQuantityHint' => 'es. 1 ciotola, 2 fette',
			'meal.timeOfMeal' => 'Orario del pasto',
			'meal.timeOfMealHint' => 'Seleziona l\'orario in cui hai mangiato',
			'meal.mealType' => 'Tipo di pasto',
			'meal.nutrition.calories' => 'Calorie',
			'meal.nutrition.carbs' => 'Carboidrati (g)',
			'meal.nutrition.protein' => 'Proteine (g)',
			'meal.nutrition.fat' => 'Grassi (g)',
			'meal.nutrition.fiber' => 'Fibre (g)',
			'meal.deleteConfirmation.title' => 'Elimina pasto',
			'meal.deleteConfirmation.message' => 'Sei sicuro/a di voler eliminare questo pasto?',
			'meal.deleteConfirmation.cancel' => 'Annulla',
			'meal.deleteConfirmation.delete' => 'Elimina',
			'meal.addedToLog' => 'Pasto aggiunto al tuo registro!',
			'meal.couldNotAdd' => ({required Object error}) => 'Impossibile aggiungere il pasto: ${error}',
			'meal.savedSuccessfully' => 'Pasto aggiunto con successo!',
			'meal.updatedSuccessfully' => 'Pasto aggiornato con successo!',
			'meal.errorSaving' => ({required Object error}) => 'Errore durante il salvataggio del pasto: ${error}',
			'meal.removedFromFavorites' => 'Rimosso dai preferiti!',
			'meal.savedAsFavorite' => 'Pasto salvato tra i preferiti!',
			'meal.unfavorite' => 'Rimuovi dai preferiti',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Impossibile aggiornare i preferiti: ${error}',
			'meal.feedbackThanks' => 'Grazie per il feedback!',
			'meal.reanalysisUpdated' => 'Analisi del pasto aggiornata in base al tuo feedback.',
			'meal.failedToProcess' => ({required Object error}) => 'Impossibile elaborare: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Impossibile elaborare l\'immagine: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Errore durante la compressione dell\'immagine: ${error}',
			'meal.failedToSave' => 'Impossibile salvare i dati. Riprova.',
			'meal.skip' => 'Salta',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Domanda ${current} di ${total}',
			'meal.variation.noVariationsAvailable' => 'Nessuna variante disponibile',
			'meal.analysis.title' => 'Analisi del pasto con l\'IA',
			'meal.analysis.reassurance' => 'Di solito richiede pochi secondi.',
			'meal.analysis.stepStarted' => 'Avvio…',
			'meal.analysis.stepDecomposition' => 'Comprensione del tuo pasto…',
			'meal.analysis.stepIngredients' => 'Abbinamento degli ingredienti ai dati nutrizionali…',
			'meal.analysis.stepUncertainty' => 'Verifica dell\'affidabilità…',
			'meal.analysis.stepMealTypeQuestion' => 'Quasi fatto…',
			'meal.analysis.stepResult' => 'Finalizzazione del risultato…',
			'meal.analysis.stepError' => 'Qualcosa è andato storto',
			'meal.analysis.stepDefault' => 'Analisi del tuo pasto…',
			'meal.analysis.progressUnderstand' => 'Comprendi',
			'meal.analysis.progressMatch' => 'Abbina',
			'meal.analysis.progressCheck' => 'Verifica',
			'meal.analysis.progressFinish' => 'Completa',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingredienti rilevati',
			'meal.analysis.ingredientsPending' => 'Scansione degli ingredienti…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'What looks wrong?',
			'meal.feedback.subtitle' => 'Help us improve the analysis by selecting one or more issues.',
			'meal.feedback.tellUsMore' => 'Tell us more',
			'meal.feedback.describeIncorrect' => 'Describe what was incorrect',
			'meal.feedback.submit' => 'Submit',
			'meal.feedback.issueFoodIdentification' => 'Food identification',
			'meal.feedback.issuePortionSize' => 'Portion size',
			'meal.feedback.issueCalorieDistribution' => 'Calorie distribution',
			'meal.feedback.issueMacrosWrong' => 'Macros are wrong',
			'meal.feedback.issueMissingItems' => 'Missing items',
			'meal.feedback.issueExtraItems' => 'Extra items',
			'meal.feedback.issueOther' => 'Other',
			'favorites.title' => 'Preferiti',
			'favorites.empty' => 'Ancora nessun pasto preferito.',
			'favorites.searchPlaceholder' => 'Cerca pasti preferiti',
			'favorites.searchEmptyTitle' => 'Nessun preferito corrisponde alla tua ricerca',
			'favorites.searchEmptySubtitle' => 'Prova con un nome del pasto, quantità o tipo di pasto diverso.',
			'favorites.sortLabel' => 'Ordina preferiti',
			'favorites.undo' => 'Annulla',
			'favorites.removed' => ({required Object name}) => '${name} rimosso dai preferiti',
			'favorites.sortOptions.recent' => 'Recenti',
			'favorites.sortOptions.calories' => 'Calorie',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profilo',
			'profile.noProfileData' => 'Nessun dato profilo trovato',
			'profile.yourProfile' => 'Il tuo profilo',
			'profile.viewAndManage' => 'Visualizza e gestisci le tue informazioni sulla salute',
			'profile.sections.profile' => 'PROFILO',
			'profile.sections.basicInformation' => 'INFORMAZIONI DI BASE',
			'profile.sections.goalsAndActivity' => 'OBIETTIVI E ATTIVITÀ',
			'profile.sections.calculatedValues' => 'VALORI CALCOLATI',
			'profile.gender' => 'Genere',
			'profile.height' => 'Altezza',
			'profile.weight' => 'Peso',
			'profile.age' => 'Età',
			'profile.weightGoal' => 'Obiettivo di peso',
			'profile.targetWeight' => 'Peso obiettivo',
			'profile.activityLevel' => 'Livello di attività',
			'profile.healthMetrics' => 'Metriche di salute',
			'profile.notSet' => 'Non impostato',
			'profile.years' => 'anni',
			'profile.updatedSuccessfully' => 'Profilo aggiornato con successo!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Obiettivo giornaliero',
			'profile.calculatedValues.calPerDay' => 'cal/giorno',
			'profile.calculatedValues.notAvailable' => 'N/D',
			'healthScore.title' => 'Punteggio di salute',
			'healthScore.whyThisScore' => 'Perché questo punteggio?',
			'healthScore.note' => 'Questo punteggio è una stima dell\'IA basata sugli ingredienti identificati e sulla densità nutrizionale. Per consigli dietetici personalizzati, consulta sempre un professionista.',
			'healthScore.unhealthy' => 'Non salutare',
			'healthScore.healthy' => 'Salutare',
			'healthScore.neutral' => 'Neutro',
			'editProfile.title' => 'Modifica profilo',
			'editProfile.sections.personalInformation' => 'INFORMAZIONI PERSONALI',
			'editProfile.sections.physicalMeasurements' => 'MISURE FISICHE',
			'editProfile.sections.goalsAndActivity' => 'OBIETTIVI E ATTIVITÀ',
			'editProfile.gender' => 'Genere',
			'editProfile.dateOfBirth' => 'Data di nascita',
			'editProfile.height' => 'Altezza',
			'editProfile.weight' => 'Peso',
			'editProfile.weightGoal' => 'Obiettivo di peso',
			'editProfile.activityLevel' => 'Livello di attività',
			'editProfile.metric' => 'Metrico',
			'editProfile.imperial' => 'Imperiale',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metrico (cm)',
			'editProfile.imperialFtIn' => 'Imperiale (ft/in)',
			'editProfile.metricKg' => 'Metrico (kg)',
			'editProfile.imperialLbs' => 'Imperiale (lbs)',
			'editProfile.genders.male' => 'Maschio',
			'editProfile.genders.female' => 'Femmina',
			'editProfile.genders.other' => 'Altro',
			'editProfile.weightGoals.loseWeight.name' => 'Perdere peso',
			'editProfile.weightGoals.loseWeight.description' => 'Crea un deficit calorico per dimagrire',
			'editProfile.weightGoals.maintainWeight.name' => 'Mantenere il peso',
			'editProfile.weightGoals.maintainWeight.description' => 'Mantieni il tuo peso attuale',
			'editProfile.weightGoals.gainWeight.name' => 'Aumentare di peso',
			'editProfile.weightGoals.gainWeight.description' => 'Crea un surplus calorico per aumentare di peso',
			'editProfile.activityLevels.sedentary.name' => 'Sedentario',
			'editProfile.activityLevels.sedentary.description' => 'Poca o nessuna attività fisica',
			'editProfile.activityLevels.lightlyActive.name' => 'Leggermente attivo',
			'editProfile.activityLevels.lightlyActive.description' => 'Attività leggera 1-3 giorni/settimana',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderatamente attivo',
			'editProfile.activityLevels.moderatelyActive.description' => 'Attività moderata 3-5 giorni/settimana',
			'editProfile.activityLevels.veryActive.name' => 'Molto attivo',
			'editProfile.activityLevels.veryActive.description' => 'Attività intensa 6-7 giorni/settimana',
			'editProfile.activityLevels.extremelyActive.name' => 'Estremamente attivo',
			'editProfile.activityLevels.extremelyActive.description' => 'Attività molto intensa, lavoro fisico',
			'settings.title' => 'Impostazioni',
			'settings.sections.profile' => 'PROFILO',
			'settings.sections.localization' => 'LOCALIZZAZIONE',
			'settings.sections.notifications' => 'NOTIFICHE',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.supportAndLegal' => 'SUPPORTO E NOTE LEGALI',
			'settings.sections.about' => 'INFORMAZIONI',
			'settings.sections.dangerZone' => 'ZONA PERICOLO',
			'settings.sections.developer' => 'SVILUPPATORE',
			'settings.editProfile.title' => 'Modifica profilo',
			'settings.editProfile.subtitle' => 'Aggiorna le tue informazioni personali',
			'settings.language.title' => 'Lingua',
			'settings.language.subtitle' => 'Scegli la tua lingua preferita',
			'settings.language.searchHint' => 'Cerca lingue...',
			'settings.language.noResults' => 'Nessun risultato trovato',
			'settings.heightUnit.title' => 'Unità altezza',
			'settings.weightUnit.title' => 'Unità peso',
			'settings.mealReminders.title' => 'Promemoria pasti',
			'settings.mealReminders.subtitle' => 'Rimani in carreggiata con avvisi puntuali',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Chiaro',
			'settings.theme.dark' => 'Scuro',
			'settings.theme.system' => 'Sistema',
			'settings.sendFeedback.title' => 'Invia feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Aiutaci a migliorare ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback sull\'app ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Inserisci il tuo feedback qui sotto:',
			'settings.sendFeedback.appVersion' => 'Versione app',
			'settings.sendFeedback.device' => 'Dispositivo',
			'settings.sendFeedback.osVersion' => 'Versione OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Esporta storico pasti',
			'settings.exportMealHistory.subtitle' => 'Condividi un CSV dei tuoi pasti registrati',
			'settings.exportMealHistory.shareText' => 'Esportazione dello storico pasti di Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Impossibile esportare lo storico dei pasti: ${error}',
			'settings.clearAllData.title' => 'Cancella tutti i dati',
			'settings.clearAllData.subtitle' => 'Elimina in modo irreversibile tutte le tue informazioni',
			'settings.clearAllData.confirmationTitle' => 'Cancellare tutti i dati?',
			'settings.clearAllData.confirmationMessage' => 'Questa azione non può essere annullata. Tutti i pasti registrati, i preferiti e le impostazioni del profilo verranno eliminati in modo permanente.',
			'settings.clearAllData.cancel' => 'Annulla',
			'settings.clearAllData.clearEverything' => 'Cancella tutto',
			'settings.debugOptions.title' => 'Opzioni di debug',
			'settings.developerModeEnabled' => 'Modalità sviluppatore abilitata!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Visualizza e gestisci i permessi',
			'settings.healthConnect.unavailable.title' => 'Health Connect non disponibile',
			'settings.healthConnect.unavailable.description' => 'Health Connect non è disponibile su questo dispositivo. Installa Health Connect dal Play Store (Android 9+) o aggiorna ad Android 14+.',
			'settings.healthConnect.permissions.title' => 'Permessi',
			'settings.healthConnect.permissions.description' => 'Per fornire l\'integrazione con Health Connect sono richiesti i seguenti permessi:',
			'settings.healthConnect.permissions.granted' => 'Concesso',
			'settings.healthConnect.permissions.notGranted' => 'Non concesso',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Leggere le calorie totali bruciate',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Consente all\'app di leggere le calorie totali bruciate da Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Questo permesso è utilizzato per mostrare nell\'app le calorie bruciate giornaliere, aiutandoti a capire il tuo dispendio energetico totale.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Leggere i dati nutrizionali',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Consente all\'app di leggere i dati nutrizionali da Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Questo permesso permette all\'app di leggere le informazioni nutrizionali registrate da altre app connesse a Health Connect, offrendo una visione completa della tua nutrizione.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Scrivere i dati nutrizionali',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Consente all\'app di scrivere dati nutrizionali su Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Questo permesso consente di sincronizzare i pasti registrati su Health Connect, rendendo i tuoi dati nutrizionali disponibili anche per le altre app di salute e fitness che utilizzi.',
			'settings.healthConnect.managePermissions' => 'Gestisci permessi',
			'settings.healthConnect.openSettings' => 'Apri impostazioni di Health Connect',
			'settings.healthConnect.requestPermissions' => 'Richiedi permessi',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'La richiesta di permessi è stata annullata o non è riuscita. Riprova o concedi i permessi manualmente nelle impostazioni di Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Impossibile richiedere i permessi. Riprova o concedi i permessi manualmente nelle impostazioni di Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Richiesta in corso...',
			'settings.about.title' => 'Informazioni',
			'settings.about.tagline' => 'Consapevolezza calorica veloce, gratuita e con la privacy al primo posto',
			'settings.about.ourStory.title' => 'La nostra storia',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} nasce da una semplice frustrazione: la maggior parte delle app per il conteggio delle calorie sono troppo complicate, richiedono inserimenti manuali continui, impongono abbonamenti costosi o compromettono la privacy.\n\nCome sviluppatore indipendente, volevo creare qualcosa di più semplice e più corretto — un\'app che usi l\'IA per ridurre lo sforzo, resti veloce e gratuita, e tratti i tuoi dati di salute con rispetto.\n\n${appLabel} è l\'app che avrei voluto esistesse: niente account, nessun tracciamento, nessuna pubblicità — solo informazioni chiare e pratiche e i tuoi obiettivi di salute.',
			'settings.about.privacy.title' => 'La tua privacy conta',
			'settings.about.privacy.description' => 'La privacy non è un ripensamento — è un principio di progettazione. Ecco cosa significa in pratica:',
			'settings.about.privacy.noAccounts' => 'Nessun account richiesto\nUsa l\'app subito. Niente registrazioni, nessuna identità.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Nessun tracciamento comportamentale\n${appLabel} non monitora la tua attività, non crea profili d\'uso e non ti traccia tra app o siti web.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Niente pubblicità per scelta\n${appLabel} è progettata per funzionare senza pubblicità o monetizzazione basata sui dati.',
			'settings.about.privacy.noDataSelling' => 'Nessuna vendita di dati\nI tuoi dati sulla salute non vengono mai venduti o condivisi con terze parti.',
			'settings.about.privacy.localStorage' => 'Archiviazione local-first\nI tuoi dati restano sul tuo dispositivo.',
			'settings.about.privacy.privacyPolicy' => 'Informativa sulla privacy',
			'settings.about.developer.title' => 'Creata da uno sviluppatore indipendente',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} è sviluppata e mantenuta da un unico sviluppatore indipendente, focalizzato sulla creazione di software per la salute calmo e rispettoso della privacy.\n\nI feedback vengono letti personalmente e guidano l\'evoluzione dell\'app.',
			'settings.about.developer.website' => 'Sito web',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Ti sta piacendo ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Il tuo feedback aiuta a migliorare ${appLabel} per tutti.',
			'settings.about.feedback.rateApp' => 'Valuta su Play Store',
			'settings.about.feedback.sendFeedback' => 'Invia feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Rimani in carreggiata con i promemoria',
			'reminders.description' => 'Ricevi promemoria gentili per registrare i pasti e restare costante con i tuoi obiettivi nutrizionali',
			'reminders.notificationsEnabled' => 'Notifiche abilitate',
			'reminders.notificationsDisabled' => 'Notifiche disabilitate',
			'reminders.enabledSubtitle' => 'Riceverai promemoria per i pasti',
			'reminders.disabledSubtitle' => 'Abilita le notifiche per ricevere promemoria sui pasti',
			'reminders.mealReminders' => 'Promemoria pasti',
			'reminders.breakfast' => 'Colazione',
			'reminders.lunch' => 'Pranzo',
			'reminders.dinner' => 'Cena',
			'reminders.snack' => 'Spuntino',
			'reminders.unknown' => 'Sconosciuto',
			'reminders.change' => 'Modifica',
			'reminders.enableNotifications' => 'Abilita notifiche',
			'reminders.skipForNow' => 'Salta per ora',
			'reminders.saveChanges' => 'Salva modifiche',
			'reminders.enabledSuccessfully' => 'Notifiche abilitate con successo!',
			'reminders.permissionDenied' => 'Permesso notifiche negato',
			'reminders.errorEnabling' => ({required Object error}) => 'Errore durante l\'abilitazione delle notifiche: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Errore durante il completamento della configurazione: ${error}',
			'notifications.breakfast.title' => 'È ora di colazione! 🍳',
			'notifications.breakfast.body' => 'Non dimenticare di registrare la colazione',
			'notifications.lunch.title' => 'È ora di pranzo! 🥗',
			'notifications.lunch.body' => 'È il momento di registrare il pranzo',
			'notifications.dinner.title' => 'È ora di cena! 🍽️',
			'notifications.dinner.body' => 'Non dimenticare di registrare la cena',
			'notifications.snack.title' => 'È ora di uno spuntino! 🍎',
			'notifications.snack.body' => 'Tempo per uno spuntino salutare',
			'notifications.test.title' => 'Notifica di prova',
			'login.title' => 'Accesso',
			'login.signInWithGoogle' => 'Accedi con Google',
			'login.signInFailed' => 'Accesso con Google non riuscito o annullato.',
			'disclaimer.pleaseNote' => 'Nota bene',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} fornisce informazioni nutrizionali stimate. L\'accuratezza dipende dai tuoi inserimenti e dalle variazioni dei cibi. Usale come guida, non come fonte definitiva. Per consigli personalizzati, consulta un professionista.',
			'disclaimer.snap.portionSize.title' => 'Dimensione della porzione',
			'disclaimer.snap.portionSize.description' => 'L\'accuratezza delle stime dipende in gran parte dalla tua corretta valutazione della porzione.',
			'disclaimer.snap.preparationMethods.title' => 'Metodi di preparazione',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'I metodi di cottura possono modificare significativamente il contenuto nutrizionale. Le stime di ${appLabel} potrebbero non tenere sempre conto di queste variazioni.',
			'disclaimer.snap.ingredients.title' => 'Ingredienti',
			'disclaimer.snap.ingredients.description' => 'Piatti complessi con molti ingredienti nascosti possono portare a stime meno accurate.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitazioni del database',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Il database alimentare di ${appLabel} è ampio ma potrebbe non includere ogni singolo alimento o variante.',
			'disclaimer.weightEstimate.title' => 'Informazioni sulla stima del peso',
			'disclaimer.weightEstimate.description' => 'La variazione di peso prevista è una stima teorica basata sul semplice modello calorie introdotte vs. calorie consumate. È pensata solo per motivazione, non come previsione del tuo peso reale.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Accuratezza delle calorie',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Questa stima è accurata quanto lo sono le calorie assunte e consumate che registri. Registrazioni imprecise portano a proiezioni imprecise.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Fattori biologici',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'La perdita/aumento di peso reale è influenzata da metabolismo, ormoni, sonno, stress, idratazione e altri fattori individuali che ${appLabel} non può misurare.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Peso dell\'acqua e fluttuazioni',
			'disclaimer.weightEstimate.waterWeight.description' => 'Il peso giornaliero può fluttuare sensibilmente per ritenzione idrica, digestione e tempistiche. La stima non considera queste variazioni quotidiane.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Supporto professionale',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Non utilizzare questa stima per decisioni mediche. Consulta sempre un professionista sanitario o un dietista abilitato per consigli personalizzati sulla gestione del peso.',
			'disclaimer.healthMetrics.description' => 'Queste metriche ti aiutano a comprendere il fabbisogno energetico del tuo corpo e a guidare i tuoi obiettivi nutrizionali.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Il metabolismo basale (BMR) è il numero di calorie che il tuo corpo consuma a riposo per mantenere le funzioni di base come respirazione e circolazione. Il BMR dipende da età, genere, altezza e peso. Un BMR più alto significa che il tuo corpo brucia naturalmente più calorie a riposo, spesso grazie a maggiore massa muscolare, età più giovane o genere maschile. Un BMR più basso indica tipicamente meno massa muscolare, età più avanzata o genere femminile.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Il dispendio energetico giornaliero totale (TDEE) è il totale delle calorie che bruci al giorno, inclusi BMR e calorie derivanti da attività fisica e movimento quotidiano. Il TDEE dipende dal tuo BMR e dal livello di attività. Un TDEE più alto significa che bruci più calorie in totale, di solito perché sei più attivo/a o hai un BMR più elevato. Un TDEE più basso suggerisce meno attività quotidiana o un BMR inferiore.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Obiettivo giornaliero',
			'disclaimer.healthMetrics.dailyGoal.description' => 'L\'obiettivo giornaliero è l\'apporto calorico consigliato in base al tuo TDEE e al tuo obiettivo di peso. Per perdere peso, assumi meno calorie del tuo TDEE. Per mantenere il peso, eguaglia il tuo TDEE. Per aumentare di peso, assumi più calorie del tuo TDEE. Questo ti aiuta a raggiungere il cambiamento desiderato a un ritmo sano.',
			'disclaimer.calorieExpenditure.title' => 'Stima del dispendio calorico',
			'disclaimer.calorieExpenditure.description' => 'Quando i dati di Health Connect non sono disponibili, stimiamo le calorie bruciate oggi usando il tuo metabolismo basale (BMR) e il livello di attività (TDEE), scalati in base alla porzione di giornata trascorsa.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Come viene calcolata la stima',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Calcoliamo il tuo TDEE (in base al profilo) e lo moltiplichiamo per la frazione di giornata trascorsa (ore + minuti) / 24 per stimare le calorie bruciate finora.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Supporto professionale',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Non utilizzare questa stima per decisioni mediche. Consulta sempre un professionista sanitario o un dietista abilitato per consigli personalizzati.',
			'common.close' => 'Chiudi',
			'common.kContinue' => 'Continua',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Ti sta piacendo ${appLabel}?',
			'feedbackRating.yes' => 'Sì, mi piace',
			'feedbackRating.no' => 'Non proprio',
			'feedbackRating.rateStepHeading' => 'Valuta su Play Store',
			'feedbackRating.emailStepHeading' => 'Invia feedback via email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Una valutazione veloce aiuta altri a trovare ${appLabel} e sostiene lo sviluppo. Ti andrebbe di lasciarne una?',
			'feedbackRating.shareFeedbackViaEmail' => 'Il tuo feedback orienta i prossimi passi — leggiamo ogni messaggio. Vuoi condividere i tuoi pensieri via email?',
			'feedbackRating.rateCta' => 'Valuta su Play Store',
			'feedbackRating.maybeLater' => 'Magari più tardi',
			'feedbackRating.sendFeedback' => 'Invia feedback',
			'feedbackRating.noThanks' => 'No, grazie',
			'feedbackRating.aboutUsDescription' => 'Creato con cura da un piccolo team. Siamo focalizzati su privacy, semplicità e sul costruire abitudini alimentari migliori.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Curioso di sapere chi c\'è dietro ${appLabel}? Vedi ',
			'feedbackRating.aboutUsLinkLabel' => 'Chi siamo',
			'feedbackRating.thankYouMessage' => 'Grazie! Te lo chiederemo un\'altra volta.',
			'health.syncFailed' => 'Impossibile sincronizzare con Health Connect',
			'health.mealSynced' => 'Pasto sincronizzato con Health Connect',
			_ => null,
		};
	}
}
