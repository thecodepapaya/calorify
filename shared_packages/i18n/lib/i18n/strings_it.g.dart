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
	@override String get rateLimitExceeded => 'Hai effettuato troppe richieste. Attendi un momento e riprova.';
	@override String get networkError => 'Errore di rete. Controlla la tua connessione a Internet.';
	@override String get unknownError => 'Si è verificato un problema. Riprova più tardi.';
	@override String get loadingProfileData => 'Errore nel caricamento dei dati del profilo';
	@override String get somethingWentWrong => 'Si è verificato un problema.';
	@override String get retry => 'Riprova';
}

// Path: onboarding
class _TranslationsOnboardingIt implements TranslationsOnboardingEn {
	_TranslationsOnboardingIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => 'Benvenuto in ${appLabel}';
	@override String get subtitle => 'Il tuo compagno personale per la nutrizione alimentato da AI';
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
	@override String get dashboard => 'Panoramica';
	@override String get history => 'Storico';
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
	@override String get mealName => 'Nome pasto';
	@override String get mealNameHint => 'es.: Uova strapazzate con pane tostato';
	@override String get nameRequired => 'Inserisci un nome per il pasto prima di salvare.';
	@override String get mealQuantity => 'Quantità pasto';
	@override String get mealQuantityHint => 'es.: 1 ciotola, 2 fette';
	@override String get timeOfMeal => 'Orario del pasto';
	@override String get timeOfMealHint => 'Seleziona l\'orario in cui hai consumato il pasto';
	@override String get mealType => 'Tipo di pasto';
	@override late final _TranslationsMealNutritionIt nutrition = _TranslationsMealNutritionIt._(_root);
	@override late final _TranslationsMealDeleteConfirmationIt deleteConfirmation = _TranslationsMealDeleteConfirmationIt._(_root);
	@override String get addedToLog => 'Pasto aggiunto al tuo registro!';
	@override String couldNotAdd({required Object error}) => 'Impossibile aggiungere il pasto: ${error}';
	@override String get savedSuccessfully => 'Pasto aggiunto con successo!';
	@override String get updatedSuccessfully => 'Pasto aggiornato con successo!';
	@override String errorSaving({required Object error}) => 'Errore nel salvataggio del pasto: ${error}';
	@override String get removedFromFavorites => 'Rimosso dai preferiti!';
	@override String get savedAsFavorite => 'Pasto salvato tra i preferiti!';
	@override String get unfavorite => 'Rimuovi dai preferiti';
	@override String couldNotUpdateFavorite({required Object error}) => 'Impossibile aggiornare i preferiti: ${error}';
	@override String get feedbackThanks => 'Grazie per il feedback!';
	@override String get reanalysisUpdated => 'Analisi del pasto aggiornata in base al tuo feedback.';
	@override String failedToProcess({required Object error}) => 'Elaborazione non riuscita: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Elaborazione immagine non riuscita: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Errore nella compressione dell\'immagine: ${error}';
	@override String get failedToSave => 'Impossibile salvare i dati. Riprova.';
	@override String get skip => 'Salta';
	@override late final _TranslationsMealQuestionFlowIt questionFlow = _TranslationsMealQuestionFlowIt._(_root);
	@override late final _TranslationsMealAnalysisIt analysis = _TranslationsMealAnalysisIt._(_root);
	@override late final _TranslationsMealLocalInferenceIt localInference = _TranslationsMealLocalInferenceIt._(_root);
	@override late final _TranslationsMealFeedbackIt feedback = _TranslationsMealFeedbackIt._(_root);
}

// Path: favorites
class _TranslationsFavoritesIt implements TranslationsFavoritesEn {
	_TranslationsFavoritesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preferiti';
	@override String get empty => 'Nessun pasto preferito ancora.';
	@override String get searchPlaceholder => 'Cerca nei pasti preferiti';
	@override String get searchEmptyTitle => 'Nessun preferito corrisponde alla ricerca';
	@override String get searchEmptySubtitle => 'Prova con un nome di pasto, quantità o tipo di pasto diverso.';
	@override String get sortLabel => 'Ordina preferiti';
	@override String get undo => 'Annulla';
	@override String removed({required Object name}) => 'Rimosso ${name} dai preferiti';
	@override late final _TranslationsFavoritesSortOptionsIt sortOptions = _TranslationsFavoritesSortOptionsIt._(_root);
}

// Path: profile
class _TranslationsProfileIt implements TranslationsProfileEn {
	_TranslationsProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profilo';
	@override String get noProfileData => 'Nessun dato del profilo trovato';
	@override String get yourProfile => 'Il tuo profilo';
	@override String get viewAndManage => 'Visualizza e gestisci le tue informazioni sulla salute';
	@override late final _TranslationsProfileSectionsIt sections = _TranslationsProfileSectionsIt._(_root);
	@override String get gender => 'Genere';
	@override String get height => 'Altezza';
	@override String get weight => 'Peso';
	@override String get age => 'Età';
	@override String get weightGoal => 'Obiettivo peso';
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
	@override String get note => 'Questo punteggio è una stima AI basata sugli ingredienti identificati e sulla densità nutrizionale. Consulta sempre un professionista per consigli dietetici personalizzati.';
	@override String get unhealthy => 'Non salutare';
	@override String get healthy => 'Salutare';
	@override String get neutral => 'Neutrale';
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
	@override String get weightGoal => 'Obiettivo peso';
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
	@override late final _TranslationsSettingsLocalInferenceIt localInference = _TranslationsSettingsLocalInferenceIt._(_root);
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
	@override String get description => 'Ricevi promemoria gentili per registrare i tuoi pasti e mantenere la costanza nei tuoi obiettivi nutrizionali';
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
	@override String get permissionDenied => 'Permesso di notifica negato';
	@override String errorEnabling({required Object error}) => 'Errore nell\'abilitazione delle notifiche: ${error}';
	@override String errorCompletingSetup({required Object error}) => 'Errore nel completamento della configurazione: ${error}';
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
	@override String enjoyingQuestion({required Object appLabel}) => 'Ti piace ${appLabel}?';
	@override String get yes => 'Sì, mi piace';
	@override String get no => 'Non proprio';
	@override String get rateStepHeading => 'Valuta su Play Store';
	@override String get emailStepHeading => 'Invia feedback via email';
	@override String soloDevMessage({required Object appLabel}) => 'Una rapida valutazione aiuta altri a trovare ${appLabel} e sostiene lo sviluppo. Puoi lasciare una recensione?';
	@override String get shareFeedbackViaEmail => 'Il tuo feedback guida il futuro — leggiamo ogni messaggio. Vuoi condividere i tuoi pensieri via email?';
	@override String get rateCta => 'Valuta su Play Store';
	@override String get maybeLater => 'Forse più tardi';
	@override String get sendFeedback => 'Invia feedback';
	@override String get noThanks => 'No, grazie';
	@override String get aboutUsDescription => 'Realizzato con cura da un piccolo team. Ci concentriamo su privacy, semplicità e aiutarti a costruire abitudini alimentari migliori.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Curioso di sapere chi c\'è dietro ${appLabel}? Vedi ';
	@override String get aboutUsLinkLabel => 'Chi siamo';
	@override String get thankYouMessage => 'Grazie! Ti chiederemo di nuovo in un altro momento.';
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
	@override String get title => 'Qual è la tua altezza?';
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
	@override String get currentDescription => 'Il tuo peso attuale è essenziale per personalizzare i tuoi obiettivi giornalieri.';
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
	@override String get title => 'Quando è il tuo compleanno?';
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
	@override String get title => 'Quanto sei attivo?';
	@override String get description => 'Questo ci aiuta a calcolare più precisamente il tuo fabbisogno calorico giornaliero';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectIt implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Collega Health Connect';
	@override String get description => 'Sincronizza i tuoi dati di salute per approfondimenti migliori e tracciamento automatico delle calorie';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingIt automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingIt._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsIt progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsIt._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationIt seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationIt._(_root);
	@override String get connected => 'Health Connect collegato';
	@override String get notConnected => 'Health Connect non collegato';
	@override String get setup => 'Configura Health Connect';
	@override String get skipForNow => 'Salta per ora';
	@override String get statusConnected => 'Health Connect è collegato.';
	@override String get statusSuccess => 'Health Connect è stato collegato con successo!';
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
	@override String get title => 'Il tuo riepilogo AI';
	@override String get logMore => 'Registra più pasti nei prossimi giorni per ottenere i tuoi approfondimenti AI personalizzati.';
	@override String get loading => 'Caricamento del riepilogo...';
	@override String mealCount({required Object count}) => '${count} pasti registrati';
	@override String macroBalanceScore({required Object score}) => 'Punteggio di equilibrio ${score}';
	@override String get topFoods => 'Alimenti principali';
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
	@override String get description => 'Pronto a intraprendere il tuo percorso di benessere? Imposta il tuo obiettivo calorico giornaliero qui sotto per iniziare.';
	@override String get descriptionSet => 'La bussola è impostata! Questo è il tuo obiettivo calorico giornaliero per guidarti.';
	@override String get yourGoal => 'Il tuo obiettivo';
	@override String get goal => 'Obiettivo';
	@override String get dailyCalories => 'Calorie giornaliere (kcal)';
	@override String get setGoal => 'Imposta obiettivo';
	@override String get intake => 'Assunzione';
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
	@override String get chartAccessibilityLabel => 'Grafico dei macronutrienti';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressIt implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ripartizione macro di oggi';
	@override String get target => 'Obiettivo';
	@override String get current => 'Corrente';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryIt implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Storico macro a 7 giorni';
	@override String get trendTitle => 'Tendenza di oggi';
	@override String peakHour({required Object hour}) => 'Picco: ${hour}:00';
	@override String get noHistoryYet => 'Ancora nessuna cronologia';
	@override String get startLogging => 'Inizia a registrare i pasti per vedere qui\nle tendenze macro degli ultimi 7 giorni';
}

// Path: home.mealLog
class _TranslationsHomeMealLogIt implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pasti registrati';
	@override String get emptyMessage => 'Scatta una foto del tuo ultimo pasto per registrarlo qui.';
	@override String get noMealsToday => 'Nessun pasto registrato per oggi';
	@override String get seeAllMeals => 'Vedi tutti i pasti';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionIt implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aggiunta rapida con AI';
	@override String get description => 'Descrivi il tuo pasto e lascia che l\'AI gestisca i dettagli.';
	@override String get hint => 'es.: Per colazione ho preso una grande ciotola di avena con una banana a fette e una porzione di whey ...';
	@override String get analyzeMeal => 'Analizza pasto';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsIt implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pasti preferiti';
	@override String get description => 'Aggiungi rapidamente uno dei tuoi pasti preferiti.';
	@override String get noFavorites => 'Nessun pasto preferito ancora.';
	@override String get addFavoriteHint => 'Clicca sulla stella su un pasto per aggiungerlo ai preferiti.';
	@override String get seeAll => 'Vedi tutti';
	@override String get add => 'Aggiungi';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapIt implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fotografa e registra il tuo pasto';
	@override String get description => 'Usa la fotocamera per scattare una foto del tuo cibo per l\'analisi AI.';
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
	@override String get message => 'Sei sicuro di voler eliminare questa voce di pasto?';
	@override String get cancel => 'Annulla';
	@override String get delete => 'Elimina';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowIt implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => 'Domanda ${current} di ${total}';
	@override String get noQuestionsAvailable => 'Nessuna domanda disponibile';
	@override String get next => 'Avanti';
	@override String get continueLabel => 'Continua';
}

// Path: meal.analysis
class _TranslationsMealAnalysisIt implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analisi del tuo pasto';
	@override String get stepStarted => 'Inizio in corso…';
	@override String get stepDecomposition => 'Comprensione del pasto…';
	@override String get stepIngredients => 'Abbinamento ingredienti ai dati nutrizionali…';
	@override String get stepUncertainty => 'Verifica della confidenza…';
	@override String get stepMealTypeQuestion => 'Quasi pronto…';
	@override String get stepResult => 'Finalizzazione del risultato…';
	@override String get stepError => 'Si è verificato un problema';
	@override String get stepDefault => 'Analisi del pasto in corso…';
	@override String get progressUnderstand => 'Comprensione del pasto';
	@override String get progressMatch => 'Ricerca delle informazioni nutrizionali degli ingredienti';
	@override String get progressCheck => 'Verifica delle porzioni e del livello di confidenza';
	@override String get progressMealType => 'Selezione del tipo di pasto';
	@override String get progressFinish => 'Calcolo delle calorie e dei macronutrienti';
	@override String get detectedIngredientHeading => 'Ingredienti rilevati';
	@override String ingredientsOverflow({required Object count}) => '${count} in più';
	@override String ingredientsLine({required Object count}) => '${count} ingredienti rilevati';
	@override String get ingredientsPending => 'Scansione ingredienti…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Suggerimento: La costanza batte la perfezione—registrazioni regolari rivelano i modelli che contano.';
	@override String get offlineTip1 => 'Suggerimento: Per le foto, la luce naturale e una visuale dall\'alto aiutano a stimare meglio le porzioni.';
	@override String get offlineTip2 => 'Suggerimento: Segnala bevande, salse e olio da cucina—aggiungono calorie che spesso si dimenticano.';
	@override String get offlineTip3 => 'Suggerimento: Una rapida indicazione della porzione (1 ciotola, caffè grande) rende le stime molto più precise.';
	@override String get offlineTip4 => 'Suggerimento: Registrare dopo il pasto aiuta comunque a costruire l\'abitudine; la perfezione è opzionale.';
	@override String get offlineTip5 => 'Suggerimento: Indica come è stato cucinato il cibo quando influisce molto sulle calorie (fritto vs al forno).';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceIt implements TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => 'Revisione ingredienti rilevati';
	@override String get reviewSubtitle => 'L\'interpretazione è avvenuta sul tuo dispositivo. Correggi nomi o porzioni prima del calcolo nutrizionale.';
	@override String get mealName => 'Nome pasto';
	@override String get ingredient => 'Ingrediente';
	@override String get grams => 'Grammi stimati';
	@override String get removeIngredient => 'Rimuovi ingrediente';
	@override String get continueLabel => 'Continua';
	@override String get invalidProposal => 'Aggiungi almeno un ingrediente e inserisci una quantità di grammi positiva.';
	@override String get localUnavailable => 'L\'analisi sul dispositivo non è disponibile al momento.';
	@override String get calculationDetails => 'Come è stato calcolato';
	@override String get interpretationLocal => 'Ingredienti interpretati su questo dispositivo';
	@override String get interpretationCloud => 'Ingredienti interpretati nel cloud';
	@override String get interpretationManual => 'Ingredienti revisionati o modificati da te';
	@override String get nutritionRemote => 'Valori nutrizionali USDA recuperati tramite Calorify';
	@override String get nutritionFallback => 'Alcuni valori nutrizionali sono stati stimati remotamente';
	@override String get calculationServer => 'Calorie e macro calcolate da Calorify';
	@override String get fallbackUsed => 'L\'analisi locale è passata all\'elaborazione in cloud';
	@override String get noRawContent => 'Le ricevute diagnostiche non includono il testo o la foto del tuo pasto.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackIt implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cosa non va?';
	@override String get subtitle => 'Aiutaci a migliorare l\'analisi selezionando uno o più problemi.';
	@override String get tellUsMore => 'Dicci di più';
	@override String get describeIncorrect => 'Descrivi cosa non era corretto';
	@override String get submit => 'Invia';
	@override String get issueFoodIdentification => 'Identificazione del cibo';
	@override String get issuePortionSize => 'Dimensione della porzione';
	@override String get issueCalorieDistribution => 'Distribuzione delle calorie';
	@override String get issueMacrosWrong => 'Macronutrienti errati';
	@override String get issueMissingItems => 'Elementi mancanti';
	@override String get issueExtraItems => 'Elementi in eccesso';
	@override String get issueOther => 'Altro';
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
	@override String get goalsAndActivity => 'OBIETTIVI & ATTIVITÀ';
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
	@override String get goalsAndActivity => 'OBIETTIVI & ATTIVITÀ';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersIt implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get male => 'Maschile';
	@override String get female => 'Femminile';
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
	@override String get localInference => 'ANALISI SUL DISPOSITIVO';
	@override String get supportAndLegal => 'SUPPORTO & LEGALE';
	@override String get about => 'INFORMAZIONI';
	@override String get dangerZone => 'PERICOLO';
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
	@override String get title => 'Unità di altezza';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitIt implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unità di peso';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersIt implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Promemoria pasti';
	@override String get subtitle => 'Rimani in carreggiata con avvisi puntuali';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceIt implements TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analisi dei pasti sul dispositivo';
	@override String get subtitle => 'Interpreta i pasti supportati con Gemini Nano prima del calcolo nutrizionale';
	@override String get unavailable => 'Non disponibile su questo dispositivo';
	@override String get rolloutUnavailable => 'Hardware compatibile trovato, ma questa funzione non è abilitata per questa versione dell\'app';
	@override String get modelSetup => 'Gemini Nano deve completare il download prima di poter essere abilitato';
	@override String get useLocalTitle => 'Usa l\'analisi sul dispositivo';
	@override String get useLocalSubtitle => 'Opzionale e disattivata per impostazione predefinita. I risultati potrebbero essere meno affidabili per pasti complessi.';
	@override String get disclosureTitle => 'Prima di abilitare l\'analisi sul dispositivo';
	@override String get disclosureBody => 'Gemini Nano può identificare gli ingredienti e stimare le porzioni su dispositivi Android supportati. La proposta di ingredienti revisionata viene inviata a Calorify per il riscontro nutrizionale USDA e il calcolo.';
	@override String get disclosureLimit1 => 'Piatti complessi, ingredienti nascosti e dimensioni delle porzioni potrebbero essere identificati in modo errato.';
	@override String get disclosureLimit2 => 'Il modello potrebbe non essere disponibile durante il download, se occupato, in background o a causa di limitazioni del dispositivo.';
	@override String get disclosureLimit3 => 'Se l\'interpretazione locale non può essere completata, questa beta invia automaticamente la descrizione originale del pasto a Calorify per l\'analisi in cloud.';
	@override String get acknowledgement => 'Capisco che dovrei revisionare gli ingredienti e le porzioni rilevati.';
	@override String get enable => 'Conferma e abilita';
	@override String get cancel => 'Annulla';
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
	@override String emailSubject({required Object appLabel}) => 'Feedback per l\'app ${appLabel}';
	@override String get emailBodyPrefix => 'Per favore fornisci il tuo feedback qui sotto:';
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
	@override String get title => 'Esporta cronologia pasti';
	@override String get subtitle => 'Condividi un CSV dei tuoi pasti registrati';
	@override String get shareText => 'Esportazione cronologia pasti Calorify';
	@override String failed({required Object error}) => 'Impossibile esportare la cronologia pasti: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataIt implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cancella tutti i dati';
	@override String get subtitle => 'Elimina in modo irreversibile tutte le tue informazioni';
	@override String get confirmationTitle => 'Cancellare tutti i dati?';
	@override String get confirmationMessage => 'Questa azione non può essere annullata. Tutti i tuoi pasti registrati, preferiti e impostazioni del profilo saranno eliminati definitivamente.';
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
	@override String get subtitle => 'Visualizza e gestisci le autorizzazioni';
	@override late final _TranslationsSettingsHealthConnectUnavailableIt unavailable = _TranslationsSettingsHealthConnectUnavailableIt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsIt permissions = _TranslationsSettingsHealthConnectPermissionsIt._(_root);
	@override String get managePermissions => 'Gestisci autorizzazioni';
	@override String get openSettings => 'Apri impostazioni Health Connect';
	@override String get requestPermissions => 'Richiedi autorizzazioni';
	@override String get permissionRequestCancelledOrFailed => 'La richiesta di autorizzazioni è stata annullata o non riuscita. Riprova o concedi i permessi manualmente nelle impostazioni di Health Connect.';
	@override String get permissionRequestFailed => 'Impossibile richiedere le autorizzazioni. Riprova o concedi i permessi manualmente nelle impostazioni di Health Connect.';
	@override String get requestingPermissions => 'Richiesta in corso...';
}

// Path: settings.about
class _TranslationsSettingsAboutIt implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informazioni';
	@override String get tagline => 'Consapevolezza calorica veloce, gratuita e attenta alla privacy';
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
	@override String get body => 'Non dimenticare di registrare la tua colazione';
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
	@override String get body => 'Non dimenticare di registrare la tua cena';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackIt implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'È ora di uno spuntino! 🍎';
	@override String get body => 'È il momento di uno spuntino salutare';
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
	@override String description({required Object appLabel}) => '${appLabel} fornisce informazioni nutrizionali stimate. L\'accuratezza dipende dai tuoi input e dalle variazioni degli alimenti. Usalo come guida, non come fonte definitiva. Consulta un professionista per consigli dietetici personalizzati.';
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
	@override String get description => 'La variazione di peso proiettata è una stima teorica basata sul semplice modello calorie in vs. calorie out. È intesa solo come guida motivazionale, non come predizione del tuo peso reale.';
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
	@override String get description => 'Quando i dati di Health Connect non sono disponibili, stimiamo le calorie bruciate oggi usando il tuo metabolismo basale (BMR) e il livello di attività (TDEE), scalando per la porzione della giornata già trascorsa.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedIt howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedIt._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceIt professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceIt._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionIt implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Riconoscimento intelligente degli alimenti';
	@override String get description => 'Scatta una foto e lascia che l\'AI identifichi il tuo pasto';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisIt implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analisi AI';
	@override String get description => 'Ottieni informazioni nutrizionali istantanee dalle tue descrizioni';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationIt implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrazione Health Connect';
	@override String get description => 'Collega Health Connect per approfondimenti più accurati';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesIt implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Sottopeso';
	@override String get healthyWeight => 'Peso salutare';
	@override String get overweight => 'Sovrappeso';
	@override String get obese => 'Obeso';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesIt implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Possiamo aiutarti a creare un piano sano per raggiungere un peso equilibrato con pasti nutrienti.';
	@override String get healthy => 'Ottimo lavoro! Sei in una fascia salutare. Ti aiuteremo a mantenere vitalità ed energia.';
	@override String overweight({required Object appLabel}) => '${appLabel} semplificherà il tuo percorso con il tracciamento assistito dall\'AI per aiutarti a raggiungere il tuo obiettivo con gradualità.';
	@override String get obese => 'Siamo qui per supportarti con indicazioni personalizzate e strategie sostenibili per i tuoi obiettivi di salute.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingIt implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tracciamento automatico delle calorie';
	@override String get description => 'Registra le calorie bruciate dalle tue app fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsIt implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Approfondimenti sul progresso';
	@override String get description => 'Ricevi approfondimenti dettagliati sulle tendenze della tua salute';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationIt implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrazione senza soluzione di continuità';
	@override String get description => 'Sincronizza i dati dalle tue app di salute preferite';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessIt implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Non sei solo';
	@override String get genericMessage => 'La ricerca mostra che il tracciamento costante è il fattore n.1 predittivo del successo a lungo termine.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Per una persona di ${age} anni di genere ${gender} che desidera ${goal}, il tracciamento costante è il fattore n.1 predittivo del successo.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} lo rende 10 volte più facile rispetto al farlo manualmente.';
	@override String get getStartedTitle => 'Pronto per iniziare?';
	@override String get tipPhoto => 'Scatta una foto dei tuoi pasti per un\'analisi istantanea';
	@override String get tipConsistency => 'Registra con costanza per vedere progressi significativi';
	@override String get tipProgress => 'Monitora i progressi quotidianamente per mantenere la motivazione';
	@override String get button => 'Andiamo';
	@override String get defaultGender => 'individuo';
	@override String get defaultGoal => 'una versione più sana di te';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileIt implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Il tuo profilo di salute';
	@override String bmiDescription({required Object bmi}) => 'In base ai tuoi dati, il tuo BMI è ${bmi}.';
	@override String get finalizeDescription => 'Completiamo il profilo per personalizzare la tua esperienza.';
	@override String get goalGain => 'aumentare';
	@override String get goalLose => 'perdere';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Per raggiungere il tuo obiettivo, dovrai ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Hai raggiunto il tuo peso target! Ti aiuteremo a mantenerlo.';
	@override String get button => 'Andiamo';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleIt implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ottimo inizio!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Hai fatto il primo passo verso ${goalText}. Dal momento che sei ${activityText}, ${appLabel} adeguerà i tuoi obiettivi per adattarli al tuo stile di vita.';
	@override String get personalizedTargets => 'Obiettivi calorici personalizzati';
	@override String get aiMealDetection => 'Rilevamento pasti con AI';
	@override String get macroBreakdowns => 'Ripartizioni dettagliate dei macronutrienti';
	@override String get button => 'Andiamo';
	@override String get defaultGoal => 'i tuoi obiettivi';
	@override String get defaultActivity => 'attivo';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightIt implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perdere peso';
	@override String get description => 'Creare un deficit calorico per perdere peso';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightIt implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mantenere il peso';
	@override String get description => 'Mantenere il peso attuale';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightIt implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Aumentare peso';
	@override String get description => 'Creare un surplus calorico per aumentare di peso';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryIt implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Sedentario';
	@override String get description => 'Poco o nessun esercizio';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveIt implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Leggermente attivo';
	@override String get description => 'Esercizio leggero 1-3 giorni/settimana';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveIt implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderatamente attivo';
	@override String get description => 'Esercizio moderato 3-5 giorni/settimana';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveIt implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Molto attivo';
	@override String get description => 'Esercizio intenso 6-7 giorni/settimana';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveIt implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Estremamente attivo';
	@override String get description => 'Esercizio molto intenso o lavoro fisico';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableIt implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect non disponibile';
	@override String get description => 'Health Connect non è disponibile su questo dispositivo. Installa Health Connect dal Play Store (Android 9+) o aggiorna a Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsIt implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autorizzazioni';
	@override String get description => 'Le seguenti autorizzazioni vengono richieste per fornire l\'integrazione con Health Connect:';
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
	@override String content({required Object appLabel}) => '${appLabel} è nato da una semplice frustrazione: la maggior parte delle app per il conteggio delle calorie è o eccessivamente complicata, richiede inserimenti manuali continui, applica costi elevati in abbonamento, o compromette la privacy.\n\nCome sviluppatore singolo, volevo creare qualcosa di più semplice e giusto — un\'app che utilizzi l\'AI per ridurre lo sforzo, resti veloce e gratuita da usare, e tratti i tuoi dati di salute con rispetto.\n\n${appLabel} è l\'app che avrei voluto esistesse: senza account, senza tracciamento, senza pubblicità — solo informazioni chiare e pratiche e i tuoi obiettivi di salute.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyIt implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'La tua privacy conta';
	@override String get description => 'La privacy non è un ripensamento — è un principio di design. Ecco cosa significa nella pratica:';
	@override String get noAccounts => 'Nessun account richiesto\nUsa l\'app immediatamente. Nessuna registrazione, nessuna identità.';
	@override String noTracking({required Object appLabel}) => 'Nessun tracciamento comportamentale\n${appLabel} non monitora la tua attività, non crea profili di utilizzo e non ti traccia attraverso app o siti web.';
	@override String noAds({required Object appLabel}) => 'Senza pubblicità per progettazione\n${appLabel} è costruito per funzionare senza pubblicità o monetizzazione basata sui dati.';
	@override String get noDataSelling => 'Nessuna vendita di dati\nI tuoi dati sulla salute non vengono mai venduti o condivisi con terze parti.';
	@override String get localStorage => 'Archiviazione local-first\nI tuoi dati restano sul tuo dispositivo.';
	@override String get privacyPolicy => 'Informativa sulla privacy';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperIt implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Realizzato da uno sviluppatore solista';
	@override String description({required Object appLabel}) => '${appLabel} è sviluppato e mantenuto da un unico sviluppatore solista concentrato nel creare software per la salute calmo e rispettoso della privacy.\n\nI feedback vengono letti personalmente e aiutano a indirizzare lo sviluppo dell\'app.';
	@override String get website => 'Sito web';
	@override String get email => 'E-mail';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackIt implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Ti piace ${appLabel}?';
	@override String description({required Object appLabel}) => 'Il tuo feedback aiuta a rendere ${appLabel} migliore per tutti.';
	@override String get rateApp => 'Valuta su Play Store';
	@override String get sendFeedback => 'Invia feedback';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeIt implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dimensione della porzione';
	@override String get description => 'L\'accuratezza delle stime dipende fortemente dalla tua valutazione corretta della dimensione della porzione.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsIt implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Metodi di preparazione';
	@override String description({required Object appLabel}) => 'I metodi di cottura possono alterare significativamente il contenuto nutrizionale. Le stime di ${appLabel} potrebbero non tenerne sempre conto.';
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
	@override String description({required Object appLabel}) => 'Il database alimentare di ${appLabel} è ampio ma potrebbe non includere ogni singolo alimento o variazione.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyIt implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Accuratezza delle calorie';
	@override String get description => 'Questa stima è accurata tanto quanto lo sono le calorie e le spese che registri. Una registrazione inaccurata produrrà una proiezione inaccurata.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsIt implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fattori biologici';
	@override String description({required Object appLabel}) => 'La perdita/aumento di peso effettiva è influenzata dal metabolismo, ormoni, sonno, stress, idratazione e altri fattori individuali che ${appLabel} non può misurare.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightIt implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ritenzione idrica e fluttuazioni';
	@override String get description => 'Il peso giornaliero normale può variare significativamente a causa della ritenzione idrica, digestione e tempistiche. La stima non tiene conto di questi cambiamenti giornalieri.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceIt implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Indicazioni professionali';
	@override String get description => 'Non usare questa stima per decisioni mediche. Consulta sempre un professionista sanitario o un dietista registrato per consigli personalizzati sulla gestione del peso.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrIt implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Il metabolismo basale (BMR) è il numero di calorie che il tuo corpo brucia a riposo per mantenere funzioni di base come respirazione e circolazione. Il BMR dipende da età, genere, altezza e peso. Un BMR più alto indica che il corpo brucia più calorie a riposo, spesso a causa di maggiore massa muscolare, età più giovane o essere di genere maschile. Un BMR più basso indica tipicamente meno massa muscolare, età più avanzata o essere di genere femminile.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeIt implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Il fabbisogno energetico giornaliero totale (TDEE) è il totale delle calorie che bruci al giorno, includendo il BMR più le calorie derivanti dall\'attività fisica e dal movimento quotidiano. Il TDEE dipende dal tuo BMR e dal livello di attività. Un TDEE più alto significa che bruci più calorie complessivamente, di solito per essere più attivo o avere un BMR più alto. Un TDEE più basso suggerisce meno attività giornaliera o un BMR inferiore.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalIt implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Obiettivo giornaliero';
	@override String get description => 'L\'obiettivo giornaliero è la tua assunzione calorica raccomandata in base al TDEE e all\'obiettivo di peso. Per perdere peso consumi meno calorie del TDEE. Per mantenere peso eguagli il TDEE. Per aumentare peso consumi più calorie del TDEE. Questo ti aiuta a raggiungere il cambiamento di peso desiderato a un ritmo sano.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedIt implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Come viene calcolata la stima';
	@override String get description => 'Calcoliamo il tuo TDEE (basato sul profilo) e lo moltiplichiamo per la frazione della giornata trascorsa (ore + minuti) / 24 per stimare le calorie bruciate finora.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceIt implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Indicazioni professionali';
	@override String get description => 'Non usare questa stima per decisioni mediche. Consulta sempre un professionista sanitario o un dietista registrato per consigli personalizzati sulla gestione del peso.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedIt implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leggi le calorie totali bruciate';
	@override String get description => 'Permette all\'app di leggere le calorie totali bruciate da Health Connect.';
	@override String get usage => 'Questa autorizzazione viene usata per mostrare le calorie bruciate giornaliere nell\'app, aiutandoti a comprendere la tua spesa energetica totale durante la giornata.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadIt implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leggi i dati nutrizionali';
	@override String get description => 'Permette all\'app di leggere i dati nutrizionali da Health Connect.';
	@override String get usage => 'Questa autorizzazione consente all\'app di leggere le informazioni nutrizionali che potrebbero essere state registrate da altre app collegate a Health Connect, offrendo una vista completa della tua alimentazione.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteIt implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scrivi i dati nutrizionali';
	@override String get description => 'Permette all\'app di scrivere i dati nutrizionali su Health Connect.';
	@override String get usage => 'Questa autorizzazione consente all\'app di sincronizzare i pasti registrati su Health Connect, rendendo i tuoi dati nutrizionali disponibili ad altre app di salute e fitness che usi.';
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
			'errors.rateLimitExceeded' => 'Hai effettuato troppe richieste. Attendi un momento e riprova.',
			'errors.networkError' => 'Errore di rete. Controlla la tua connessione a Internet.',
			'errors.unknownError' => 'Si è verificato un problema. Riprova più tardi.',
			'errors.loadingProfileData' => 'Errore nel caricamento dei dati del profilo',
			'errors.somethingWentWrong' => 'Si è verificato un problema.',
			'errors.retry' => 'Riprova',
			'onboarding.welcome' => ({required Object appLabel}) => 'Benvenuto in ${appLabel}',
			'onboarding.subtitle' => 'Il tuo compagno personale per la nutrizione alimentato da AI',
			'onboarding.getStarted' => 'Inizia',
			'onboarding.features.foodRecognition.title' => 'Riconoscimento intelligente degli alimenti',
			'onboarding.features.foodRecognition.description' => 'Scatta una foto e lascia che l\'AI identifichi il tuo pasto',
			'onboarding.features.aiAnalysis.title' => 'Analisi AI',
			'onboarding.features.aiAnalysis.description' => 'Ottieni informazioni nutrizionali istantanee dalle tue descrizioni',
			'onboarding.features.healthIntegration.title' => 'Integrazione Health Connect',
			'onboarding.features.healthIntegration.description' => 'Collega Health Connect per approfondimenti più accurati',
			'onboarding.gender.title' => 'Qual è il tuo genere?',
			'onboarding.gender.description' => 'Il genere ci aiuta a calcolare con precisione il tuo metabolismo basale (BMR).',
			'onboarding.gender.next' => 'Avanti',
			'onboarding.height.title' => 'Qual è la tua altezza?',
			'onboarding.height.description' => 'La tua altezza ci aiuta a calcolare con precisione il tuo BMI e il tuo fabbisogno energetico.',
			'onboarding.height.metric' => 'Metrico',
			'onboarding.height.imperial' => 'Imperiale',
			'onboarding.height.next' => 'Avanti',
			'onboarding.weight.currentTitle' => 'Qual è il tuo peso attuale?',
			'onboarding.weight.currentDescription' => 'Il tuo peso attuale è essenziale per personalizzare i tuoi obiettivi giornalieri.',
			'onboarding.weight.targetTitle' => 'Qual è il tuo peso obiettivo?',
			'onboarding.weight.targetDescription' => 'Impostare un peso obiettivo ci aiuta a definire il tuo piano a lungo termine.',
			'onboarding.weight.metric' => 'Metrico',
			'onboarding.weight.imperial' => 'Imperiale',
			'onboarding.weight.next' => 'Avanti',
			'onboarding.age.title' => 'Quando è il tuo compleanno?',
			'onboarding.age.description' => 'La tua età ci aiuta a calcolare con precisione il tuo fabbisogno calorico.',
			'onboarding.age.next' => 'Avanti',
			'onboarding.bmiScale.underweight' => 'Sottopeso',
			'onboarding.bmiScale.healthy' => 'Sano',
			'onboarding.bmiScale.overweight' => 'Sovrappeso',
			'onboarding.bmiScale.obese' => 'Obeso',
			'onboarding.bmiScale.categories.underweight' => 'Sottopeso',
			'onboarding.bmiScale.categories.healthyWeight' => 'Peso salutare',
			'onboarding.bmiScale.categories.overweight' => 'Sovrappeso',
			'onboarding.bmiScale.categories.obese' => 'Obeso',
			'onboarding.bmiScale.messages.underweight' => 'Possiamo aiutarti a creare un piano sano per raggiungere un peso equilibrato con pasti nutrienti.',
			'onboarding.bmiScale.messages.healthy' => 'Ottimo lavoro! Sei in una fascia salutare. Ti aiuteremo a mantenere vitalità ed energia.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} semplificherà il tuo percorso con il tracciamento assistito dall\'AI per aiutarti a raggiungere il tuo obiettivo con gradualità.',
			'onboarding.bmiScale.messages.obese' => 'Siamo qui per supportarti con indicazioni personalizzate e strategie sostenibili per i tuoi obiettivi di salute.',
			'onboarding.weightGoal.title' => 'Qual è il tuo obiettivo?',
			'onboarding.weightGoal.description' => 'Scegli l\'obiettivo che meglio descrive ciò che vuoi ottenere',
			'onboarding.activityLevel.title' => 'Quanto sei attivo?',
			'onboarding.activityLevel.description' => 'Questo ci aiuta a calcolare più precisamente il tuo fabbisogno calorico giornaliero',
			'onboarding.healthConnect.title' => 'Collega Health Connect',
			'onboarding.healthConnect.description' => 'Sincronizza i tuoi dati di salute per approfondimenti migliori e tracciamento automatico delle calorie',
			'onboarding.healthConnect.automaticTracking.title' => 'Tracciamento automatico delle calorie',
			'onboarding.healthConnect.automaticTracking.description' => 'Registra le calorie bruciate dalle tue app fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Approfondimenti sul progresso',
			'onboarding.healthConnect.progressInsights.description' => 'Ricevi approfondimenti dettagliati sulle tendenze della tua salute',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integrazione senza soluzione di continuità',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sincronizza i dati dalle tue app di salute preferite',
			'onboarding.healthConnect.connected' => 'Health Connect collegato',
			'onboarding.healthConnect.notConnected' => 'Health Connect non collegato',
			'onboarding.healthConnect.setup' => 'Configura Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Salta per ora',
			'onboarding.healthConnect.statusConnected' => 'Health Connect è collegato.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect è stato collegato con successo!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Autorizzazione negata. Abilita i permessi di Health Connect dalle impostazioni del telefono per ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Errore durante la configurazione di Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Non sei solo',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'La ricerca mostra che il tracciamento costante è il fattore n.1 predittivo del successo a lungo termine.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Per una persona di ${age} anni di genere ${gender} che desidera ${goal}, il tracciamento costante è il fattore n.1 predittivo del successo.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} lo rende 10 volte più facile rispetto al farlo manualmente.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Pronto per iniziare?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Scatta una foto dei tuoi pasti per un\'analisi istantanea',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Registra con costanza per vedere progressi significativi',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Monitora i progressi quotidianamente per mantenere la motivazione',
			'onboarding.reinforcement.trackingSuccess.button' => 'Andiamo',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individuo',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'una versione più sana di te',
			'onboarding.reinforcement.healthProfile.title' => 'Il tuo profilo di salute',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'In base ai tuoi dati, il tuo BMI è ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Completiamo il profilo per personalizzare la tua esperienza.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'aumentare',
			'onboarding.reinforcement.healthProfile.goalLose' => 'perdere',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Per raggiungere il tuo obiettivo, dovrai ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Hai raggiunto il tuo peso target! Ti aiuteremo a mantenerlo.',
			'onboarding.reinforcement.healthProfile.button' => 'Andiamo',
			'onboarding.reinforcement.goalLifestyle.title' => 'Ottimo inizio!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Hai fatto il primo passo verso ${goalText}. Dal momento che sei ${activityText}, ${appLabel} adeguerà i tuoi obiettivi per adattarli al tuo stile di vita.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Obiettivi calorici personalizzati',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Rilevamento pasti con AI',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Ripartizioni dettagliate dei macronutrienti',
			'onboarding.reinforcement.goalLifestyle.button' => 'Andiamo',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'i tuoi obiettivi',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'attivo',
			'tabs.dashboard' => 'Panoramica',
			'tabs.history' => 'Storico',
			'home.aiSummary.title' => 'Il tuo riepilogo AI',
			'home.aiSummary.logMore' => 'Registra più pasti nei prossimi giorni per ottenere i tuoi approfondimenti AI personalizzati.',
			'home.aiSummary.loading' => 'Caricamento del riepilogo...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} pasti registrati',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Punteggio di equilibrio ${score}',
			'home.aiSummary.topFoods' => 'Alimenti principali',
			'home.aiSummary.trendUp' => 'Calorie in aumento',
			'home.aiSummary.trendDown' => 'Calorie in diminuzione',
			'home.aiSummary.trendSteady' => 'Calorie stabili',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Aggiornato ${time}',
			'home.dailyGoal.title' => 'Imposta il tuo obiettivo giornaliero',
			'home.dailyGoal.titleSet' => 'Il tuo obiettivo giornaliero',
			'home.dailyGoal.description' => 'Pronto a intraprendere il tuo percorso di benessere? Imposta il tuo obiettivo calorico giornaliero qui sotto per iniziare.',
			'home.dailyGoal.descriptionSet' => 'La bussola è impostata! Questo è il tuo obiettivo calorico giornaliero per guidarti.',
			'home.dailyGoal.yourGoal' => 'Il tuo obiettivo',
			'home.dailyGoal.goal' => 'Obiettivo',
			'home.dailyGoal.dailyCalories' => 'Calorie giornaliere (kcal)',
			'home.dailyGoal.setGoal' => 'Imposta obiettivo',
			'home.dailyGoal.intake' => 'Assunzione',
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
			'home.dailySummary.chartAccessibilityLabel' => 'Grafico dei macronutrienti',
			'home.intakeProgress.title' => 'Ripartizione macro di oggi',
			'home.intakeProgress.target' => 'Obiettivo',
			'home.intakeProgress.current' => 'Corrente',
			'home.intakeHistory.title' => 'Storico macro a 7 giorni',
			'home.intakeHistory.trendTitle' => 'Tendenza di oggi',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Picco: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Ancora nessuna cronologia',
			'home.intakeHistory.startLogging' => 'Inizia a registrare i pasti per vedere qui\nle tendenze macro degli ultimi 7 giorni',
			'home.mealLog.title' => 'Pasti registrati',
			'home.mealLog.emptyMessage' => 'Scatta una foto del tuo ultimo pasto per registrarlo qui.',
			'home.mealLog.noMealsToday' => 'Nessun pasto registrato per oggi',
			'home.mealLog.seeAllMeals' => 'Vedi tutti i pasti',
			'home.mealDescription.title' => 'Aggiunta rapida con AI',
			'home.mealDescription.description' => 'Descrivi il tuo pasto e lascia che l\'AI gestisca i dettagli.',
			'home.mealDescription.hint' => 'es.: Per colazione ho preso una grande ciotola di avena con una banana a fette e una porzione di whey ...',
			'home.mealDescription.analyzeMeal' => 'Analizza pasto',
			'home.favoriteMeals.title' => 'Pasti preferiti',
			'home.favoriteMeals.description' => 'Aggiungi rapidamente uno dei tuoi pasti preferiti.',
			'home.favoriteMeals.noFavorites' => 'Nessun pasto preferito ancora.',
			'home.favoriteMeals.addFavoriteHint' => 'Clicca sulla stella su un pasto per aggiungerlo ai preferiti.',
			'home.favoriteMeals.seeAll' => 'Vedi tutti',
			'home.favoriteMeals.add' => 'Aggiungi',
			'home.mealSnap.title' => 'Fotografa e registra il tuo pasto',
			'home.mealSnap.description' => 'Usa la fotocamera per scattare una foto del tuo cibo per l\'analisi AI.',
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
			'meal.mealName' => 'Nome pasto',
			'meal.mealNameHint' => 'es.: Uova strapazzate con pane tostato',
			'meal.nameRequired' => 'Inserisci un nome per il pasto prima di salvare.',
			'meal.mealQuantity' => 'Quantità pasto',
			'meal.mealQuantityHint' => 'es.: 1 ciotola, 2 fette',
			'meal.timeOfMeal' => 'Orario del pasto',
			'meal.timeOfMealHint' => 'Seleziona l\'orario in cui hai consumato il pasto',
			'meal.mealType' => 'Tipo di pasto',
			'meal.nutrition.calories' => 'Calorie',
			'meal.nutrition.carbs' => 'Carboidrati (g)',
			'meal.nutrition.protein' => 'Proteine (g)',
			'meal.nutrition.fat' => 'Grassi (g)',
			'meal.nutrition.fiber' => 'Fibre (g)',
			'meal.deleteConfirmation.title' => 'Elimina pasto',
			'meal.deleteConfirmation.message' => 'Sei sicuro di voler eliminare questa voce di pasto?',
			'meal.deleteConfirmation.cancel' => 'Annulla',
			'meal.deleteConfirmation.delete' => 'Elimina',
			'meal.addedToLog' => 'Pasto aggiunto al tuo registro!',
			'meal.couldNotAdd' => ({required Object error}) => 'Impossibile aggiungere il pasto: ${error}',
			'meal.savedSuccessfully' => 'Pasto aggiunto con successo!',
			'meal.updatedSuccessfully' => 'Pasto aggiornato con successo!',
			'meal.errorSaving' => ({required Object error}) => 'Errore nel salvataggio del pasto: ${error}',
			'meal.removedFromFavorites' => 'Rimosso dai preferiti!',
			'meal.savedAsFavorite' => 'Pasto salvato tra i preferiti!',
			'meal.unfavorite' => 'Rimuovi dai preferiti',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Impossibile aggiornare i preferiti: ${error}',
			'meal.feedbackThanks' => 'Grazie per il feedback!',
			'meal.reanalysisUpdated' => 'Analisi del pasto aggiornata in base al tuo feedback.',
			'meal.failedToProcess' => ({required Object error}) => 'Elaborazione non riuscita: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Elaborazione immagine non riuscita: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Errore nella compressione dell\'immagine: ${error}',
			'meal.failedToSave' => 'Impossibile salvare i dati. Riprova.',
			'meal.skip' => 'Salta',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => 'Domanda ${current} di ${total}',
			'meal.questionFlow.noQuestionsAvailable' => 'Nessuna domanda disponibile',
			'meal.questionFlow.next' => 'Avanti',
			'meal.questionFlow.continueLabel' => 'Continua',
			'meal.analysis.title' => 'Analisi del tuo pasto',
			'meal.analysis.stepStarted' => 'Inizio in corso…',
			'meal.analysis.stepDecomposition' => 'Comprensione del pasto…',
			'meal.analysis.stepIngredients' => 'Abbinamento ingredienti ai dati nutrizionali…',
			'meal.analysis.stepUncertainty' => 'Verifica della confidenza…',
			'meal.analysis.stepMealTypeQuestion' => 'Quasi pronto…',
			'meal.analysis.stepResult' => 'Finalizzazione del risultato…',
			'meal.analysis.stepError' => 'Si è verificato un problema',
			'meal.analysis.stepDefault' => 'Analisi del pasto in corso…',
			'meal.analysis.progressUnderstand' => 'Comprensione del pasto',
			'meal.analysis.progressMatch' => 'Ricerca delle informazioni nutrizionali degli ingredienti',
			'meal.analysis.progressCheck' => 'Verifica delle porzioni e del livello di confidenza',
			'meal.analysis.progressMealType' => 'Selezione del tipo di pasto',
			'meal.analysis.progressFinish' => 'Calcolo delle calorie e dei macronutrienti',
			'meal.analysis.detectedIngredientHeading' => 'Ingredienti rilevati',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count} in più',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count} ingredienti rilevati',
			'meal.analysis.ingredientsPending' => 'Scansione ingredienti…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Suggerimento: La costanza batte la perfezione—registrazioni regolari rivelano i modelli che contano.',
			'meal.analysis.offlineTip1' => 'Suggerimento: Per le foto, la luce naturale e una visuale dall\'alto aiutano a stimare meglio le porzioni.',
			'meal.analysis.offlineTip2' => 'Suggerimento: Segnala bevande, salse e olio da cucina—aggiungono calorie che spesso si dimenticano.',
			'meal.analysis.offlineTip3' => 'Suggerimento: Una rapida indicazione della porzione (1 ciotola, caffè grande) rende le stime molto più precise.',
			'meal.analysis.offlineTip4' => 'Suggerimento: Registrare dopo il pasto aiuta comunque a costruire l\'abitudine; la perfezione è opzionale.',
			'meal.analysis.offlineTip5' => 'Suggerimento: Indica come è stato cucinato il cibo quando influisce molto sulle calorie (fritto vs al forno).',
			'meal.localInference.reviewTitle' => 'Revisione ingredienti rilevati',
			'meal.localInference.reviewSubtitle' => 'L\'interpretazione è avvenuta sul tuo dispositivo. Correggi nomi o porzioni prima del calcolo nutrizionale.',
			'meal.localInference.mealName' => 'Nome pasto',
			'meal.localInference.ingredient' => 'Ingrediente',
			'meal.localInference.grams' => 'Grammi stimati',
			'meal.localInference.removeIngredient' => 'Rimuovi ingrediente',
			'meal.localInference.continueLabel' => 'Continua',
			'meal.localInference.invalidProposal' => 'Aggiungi almeno un ingrediente e inserisci una quantità di grammi positiva.',
			'meal.localInference.localUnavailable' => 'L\'analisi sul dispositivo non è disponibile al momento.',
			'meal.localInference.calculationDetails' => 'Come è stato calcolato',
			'meal.localInference.interpretationLocal' => 'Ingredienti interpretati su questo dispositivo',
			'meal.localInference.interpretationCloud' => 'Ingredienti interpretati nel cloud',
			'meal.localInference.interpretationManual' => 'Ingredienti revisionati o modificati da te',
			'meal.localInference.nutritionRemote' => 'Valori nutrizionali USDA recuperati tramite Calorify',
			'meal.localInference.nutritionFallback' => 'Alcuni valori nutrizionali sono stati stimati remotamente',
			'meal.localInference.calculationServer' => 'Calorie e macro calcolate da Calorify',
			'meal.localInference.fallbackUsed' => 'L\'analisi locale è passata all\'elaborazione in cloud',
			'meal.localInference.noRawContent' => 'Le ricevute diagnostiche non includono il testo o la foto del tuo pasto.',
			'meal.feedback.title' => 'Cosa non va?',
			'meal.feedback.subtitle' => 'Aiutaci a migliorare l\'analisi selezionando uno o più problemi.',
			'meal.feedback.tellUsMore' => 'Dicci di più',
			'meal.feedback.describeIncorrect' => 'Descrivi cosa non era corretto',
			'meal.feedback.submit' => 'Invia',
			'meal.feedback.issueFoodIdentification' => 'Identificazione del cibo',
			'meal.feedback.issuePortionSize' => 'Dimensione della porzione',
			'meal.feedback.issueCalorieDistribution' => 'Distribuzione delle calorie',
			'meal.feedback.issueMacrosWrong' => 'Macronutrienti errati',
			'meal.feedback.issueMissingItems' => 'Elementi mancanti',
			'meal.feedback.issueExtraItems' => 'Elementi in eccesso',
			'meal.feedback.issueOther' => 'Altro',
			'favorites.title' => 'Preferiti',
			'favorites.empty' => 'Nessun pasto preferito ancora.',
			'favorites.searchPlaceholder' => 'Cerca nei pasti preferiti',
			'favorites.searchEmptyTitle' => 'Nessun preferito corrisponde alla ricerca',
			'favorites.searchEmptySubtitle' => 'Prova con un nome di pasto, quantità o tipo di pasto diverso.',
			'favorites.sortLabel' => 'Ordina preferiti',
			'favorites.undo' => 'Annulla',
			'favorites.removed' => ({required Object name}) => 'Rimosso ${name} dai preferiti',
			'favorites.sortOptions.recent' => 'Recenti',
			'favorites.sortOptions.calories' => 'Calorie',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profilo',
			'profile.noProfileData' => 'Nessun dato del profilo trovato',
			'profile.yourProfile' => 'Il tuo profilo',
			'profile.viewAndManage' => 'Visualizza e gestisci le tue informazioni sulla salute',
			'profile.sections.profile' => 'PROFILO',
			'profile.sections.basicInformation' => 'INFORMAZIONI DI BASE',
			'profile.sections.goalsAndActivity' => 'OBIETTIVI & ATTIVITÀ',
			'profile.sections.calculatedValues' => 'VALORI CALCOLATI',
			'profile.gender' => 'Genere',
			'profile.height' => 'Altezza',
			'profile.weight' => 'Peso',
			'profile.age' => 'Età',
			'profile.weightGoal' => 'Obiettivo peso',
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
			'healthScore.note' => 'Questo punteggio è una stima AI basata sugli ingredienti identificati e sulla densità nutrizionale. Consulta sempre un professionista per consigli dietetici personalizzati.',
			'healthScore.unhealthy' => 'Non salutare',
			'healthScore.healthy' => 'Salutare',
			'healthScore.neutral' => 'Neutrale',
			'editProfile.title' => 'Modifica profilo',
			'editProfile.sections.personalInformation' => 'INFORMAZIONI PERSONALI',
			'editProfile.sections.physicalMeasurements' => 'MISURE FISICHE',
			'editProfile.sections.goalsAndActivity' => 'OBIETTIVI & ATTIVITÀ',
			'editProfile.gender' => 'Genere',
			'editProfile.dateOfBirth' => 'Data di nascita',
			'editProfile.height' => 'Altezza',
			'editProfile.weight' => 'Peso',
			'editProfile.weightGoal' => 'Obiettivo peso',
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
			'editProfile.genders.male' => 'Maschile',
			'editProfile.genders.female' => 'Femminile',
			'editProfile.genders.other' => 'Altro',
			'editProfile.weightGoals.loseWeight.name' => 'Perdere peso',
			'editProfile.weightGoals.loseWeight.description' => 'Creare un deficit calorico per perdere peso',
			'editProfile.weightGoals.maintainWeight.name' => 'Mantenere il peso',
			'editProfile.weightGoals.maintainWeight.description' => 'Mantenere il peso attuale',
			'editProfile.weightGoals.gainWeight.name' => 'Aumentare peso',
			'editProfile.weightGoals.gainWeight.description' => 'Creare un surplus calorico per aumentare di peso',
			'editProfile.activityLevels.sedentary.name' => 'Sedentario',
			'editProfile.activityLevels.sedentary.description' => 'Poco o nessun esercizio',
			'editProfile.activityLevels.lightlyActive.name' => 'Leggermente attivo',
			'editProfile.activityLevels.lightlyActive.description' => 'Esercizio leggero 1-3 giorni/settimana',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderatamente attivo',
			'editProfile.activityLevels.moderatelyActive.description' => 'Esercizio moderato 3-5 giorni/settimana',
			'editProfile.activityLevels.veryActive.name' => 'Molto attivo',
			'editProfile.activityLevels.veryActive.description' => 'Esercizio intenso 6-7 giorni/settimana',
			'editProfile.activityLevels.extremelyActive.name' => 'Estremamente attivo',
			'editProfile.activityLevels.extremelyActive.description' => 'Esercizio molto intenso o lavoro fisico',
			'settings.title' => 'Impostazioni',
			'settings.sections.profile' => 'PROFILO',
			'settings.sections.localization' => 'LOCALIZZAZIONE',
			'settings.sections.notifications' => 'NOTIFICHE',
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.localInference' => 'ANALISI SUL DISPOSITIVO',
			'settings.sections.supportAndLegal' => 'SUPPORTO & LEGALE',
			'settings.sections.about' => 'INFORMAZIONI',
			'settings.sections.dangerZone' => 'PERICOLO',
			'settings.sections.developer' => 'SVILUPPATORE',
			'settings.editProfile.title' => 'Modifica profilo',
			'settings.editProfile.subtitle' => 'Aggiorna le tue informazioni personali',
			'settings.language.title' => 'Lingua',
			'settings.language.subtitle' => 'Scegli la tua lingua preferita',
			'settings.language.searchHint' => 'Cerca lingue...',
			'settings.language.noResults' => 'Nessun risultato trovato',
			'settings.heightUnit.title' => 'Unità di altezza',
			'settings.weightUnit.title' => 'Unità di peso',
			'settings.mealReminders.title' => 'Promemoria pasti',
			'settings.mealReminders.subtitle' => 'Rimani in carreggiata con avvisi puntuali',
			'settings.localInference.title' => 'Analisi dei pasti sul dispositivo',
			'settings.localInference.subtitle' => 'Interpreta i pasti supportati con Gemini Nano prima del calcolo nutrizionale',
			'settings.localInference.unavailable' => 'Non disponibile su questo dispositivo',
			'settings.localInference.rolloutUnavailable' => 'Hardware compatibile trovato, ma questa funzione non è abilitata per questa versione dell\'app',
			'settings.localInference.modelSetup' => 'Gemini Nano deve completare il download prima di poter essere abilitato',
			'settings.localInference.useLocalTitle' => 'Usa l\'analisi sul dispositivo',
			'settings.localInference.useLocalSubtitle' => 'Opzionale e disattivata per impostazione predefinita. I risultati potrebbero essere meno affidabili per pasti complessi.',
			'settings.localInference.disclosureTitle' => 'Prima di abilitare l\'analisi sul dispositivo',
			'settings.localInference.disclosureBody' => 'Gemini Nano può identificare gli ingredienti e stimare le porzioni su dispositivi Android supportati. La proposta di ingredienti revisionata viene inviata a Calorify per il riscontro nutrizionale USDA e il calcolo.',
			'settings.localInference.disclosureLimit1' => 'Piatti complessi, ingredienti nascosti e dimensioni delle porzioni potrebbero essere identificati in modo errato.',
			'settings.localInference.disclosureLimit2' => 'Il modello potrebbe non essere disponibile durante il download, se occupato, in background o a causa di limitazioni del dispositivo.',
			'settings.localInference.disclosureLimit3' => 'Se l\'interpretazione locale non può essere completata, questa beta invia automaticamente la descrizione originale del pasto a Calorify per l\'analisi in cloud.',
			'settings.localInference.acknowledgement' => 'Capisco che dovrei revisionare gli ingredienti e le porzioni rilevati.',
			'settings.localInference.enable' => 'Conferma e abilita',
			'settings.localInference.cancel' => 'Annulla',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Chiaro',
			'settings.theme.dark' => 'Scuro',
			'settings.theme.system' => 'Sistema',
			'settings.sendFeedback.title' => 'Invia feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Aiutaci a migliorare ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback per l\'app ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Per favore fornisci il tuo feedback qui sotto:',
			'settings.sendFeedback.appVersion' => 'Versione app',
			'settings.sendFeedback.device' => 'Dispositivo',
			'settings.sendFeedback.osVersion' => 'Versione OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Esporta cronologia pasti',
			'settings.exportMealHistory.subtitle' => 'Condividi un CSV dei tuoi pasti registrati',
			'settings.exportMealHistory.shareText' => 'Esportazione cronologia pasti Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Impossibile esportare la cronologia pasti: ${error}',
			'settings.clearAllData.title' => 'Cancella tutti i dati',
			'settings.clearAllData.subtitle' => 'Elimina in modo irreversibile tutte le tue informazioni',
			'settings.clearAllData.confirmationTitle' => 'Cancellare tutti i dati?',
			'settings.clearAllData.confirmationMessage' => 'Questa azione non può essere annullata. Tutti i tuoi pasti registrati, preferiti e impostazioni del profilo saranno eliminati definitivamente.',
			'settings.clearAllData.cancel' => 'Annulla',
			'settings.clearAllData.clearEverything' => 'Cancella tutto',
			'settings.debugOptions.title' => 'Opzioni di debug',
			'settings.developerModeEnabled' => 'Modalità sviluppatore abilitata!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => 'Visualizza e gestisci le autorizzazioni',
			'settings.healthConnect.unavailable.title' => 'Health Connect non disponibile',
			'settings.healthConnect.unavailable.description' => 'Health Connect non è disponibile su questo dispositivo. Installa Health Connect dal Play Store (Android 9+) o aggiorna a Android 14+.',
			'settings.healthConnect.permissions.title' => 'Autorizzazioni',
			'settings.healthConnect.permissions.description' => 'Le seguenti autorizzazioni vengono richieste per fornire l\'integrazione con Health Connect:',
			'settings.healthConnect.permissions.granted' => 'Concesso',
			'settings.healthConnect.permissions.notGranted' => 'Non concesso',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Leggi le calorie totali bruciate',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Permette all\'app di leggere le calorie totali bruciate da Health Connect.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Questa autorizzazione viene usata per mostrare le calorie bruciate giornaliere nell\'app, aiutandoti a comprendere la tua spesa energetica totale durante la giornata.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Leggi i dati nutrizionali',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Permette all\'app di leggere i dati nutrizionali da Health Connect.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Questa autorizzazione consente all\'app di leggere le informazioni nutrizionali che potrebbero essere state registrate da altre app collegate a Health Connect, offrendo una vista completa della tua alimentazione.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Scrivi i dati nutrizionali',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Permette all\'app di scrivere i dati nutrizionali su Health Connect.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Questa autorizzazione consente all\'app di sincronizzare i pasti registrati su Health Connect, rendendo i tuoi dati nutrizionali disponibili ad altre app di salute e fitness che usi.',
			'settings.healthConnect.managePermissions' => 'Gestisci autorizzazioni',
			'settings.healthConnect.openSettings' => 'Apri impostazioni Health Connect',
			'settings.healthConnect.requestPermissions' => 'Richiedi autorizzazioni',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'La richiesta di autorizzazioni è stata annullata o non riuscita. Riprova o concedi i permessi manualmente nelle impostazioni di Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Impossibile richiedere le autorizzazioni. Riprova o concedi i permessi manualmente nelle impostazioni di Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Richiesta in corso...',
			'settings.about.title' => 'Informazioni',
			'settings.about.tagline' => 'Consapevolezza calorica veloce, gratuita e attenta alla privacy',
			'settings.about.ourStory.title' => 'La nostra storia',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} è nato da una semplice frustrazione: la maggior parte delle app per il conteggio delle calorie è o eccessivamente complicata, richiede inserimenti manuali continui, applica costi elevati in abbonamento, o compromette la privacy.\n\nCome sviluppatore singolo, volevo creare qualcosa di più semplice e giusto — un\'app che utilizzi l\'AI per ridurre lo sforzo, resti veloce e gratuita da usare, e tratti i tuoi dati di salute con rispetto.\n\n${appLabel} è l\'app che avrei voluto esistesse: senza account, senza tracciamento, senza pubblicità — solo informazioni chiare e pratiche e i tuoi obiettivi di salute.',
			'settings.about.privacy.title' => 'La tua privacy conta',
			'settings.about.privacy.description' => 'La privacy non è un ripensamento — è un principio di design. Ecco cosa significa nella pratica:',
			'settings.about.privacy.noAccounts' => 'Nessun account richiesto\nUsa l\'app immediatamente. Nessuna registrazione, nessuna identità.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Nessun tracciamento comportamentale\n${appLabel} non monitora la tua attività, non crea profili di utilizzo e non ti traccia attraverso app o siti web.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Senza pubblicità per progettazione\n${appLabel} è costruito per funzionare senza pubblicità o monetizzazione basata sui dati.',
			'settings.about.privacy.noDataSelling' => 'Nessuna vendita di dati\nI tuoi dati sulla salute non vengono mai venduti o condivisi con terze parti.',
			'settings.about.privacy.localStorage' => 'Archiviazione local-first\nI tuoi dati restano sul tuo dispositivo.',
			'settings.about.privacy.privacyPolicy' => 'Informativa sulla privacy',
			'settings.about.developer.title' => 'Realizzato da uno sviluppatore solista',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} è sviluppato e mantenuto da un unico sviluppatore solista concentrato nel creare software per la salute calmo e rispettoso della privacy.\n\nI feedback vengono letti personalmente e aiutano a indirizzare lo sviluppo dell\'app.',
			'settings.about.developer.website' => 'Sito web',
			'settings.about.developer.email' => 'E-mail',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Ti piace ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Il tuo feedback aiuta a rendere ${appLabel} migliore per tutti.',
			'settings.about.feedback.rateApp' => 'Valuta su Play Store',
			'settings.about.feedback.sendFeedback' => 'Invia feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Rimani in carreggiata con i promemoria',
			'reminders.description' => 'Ricevi promemoria gentili per registrare i tuoi pasti e mantenere la costanza nei tuoi obiettivi nutrizionali',
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
			'reminders.permissionDenied' => 'Permesso di notifica negato',
			'reminders.errorEnabling' => ({required Object error}) => 'Errore nell\'abilitazione delle notifiche: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Errore nel completamento della configurazione: ${error}',
			'notifications.breakfast.title' => 'È ora di colazione! 🍳',
			'notifications.breakfast.body' => 'Non dimenticare di registrare la tua colazione',
			'notifications.lunch.title' => 'È ora di pranzo! 🥗',
			'notifications.lunch.body' => 'È il momento di registrare il pranzo',
			'notifications.dinner.title' => 'È ora di cena! 🍽️',
			'notifications.dinner.body' => 'Non dimenticare di registrare la tua cena',
			'notifications.snack.title' => 'È ora di uno spuntino! 🍎',
			'notifications.snack.body' => 'È il momento di uno spuntino salutare',
			'notifications.test.title' => 'Notifica di prova',
			'login.title' => 'Accesso',
			'login.signInWithGoogle' => 'Accedi con Google',
			'login.signInFailed' => 'Accesso con Google non riuscito o annullato.',
			'disclaimer.pleaseNote' => 'Nota bene',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} fornisce informazioni nutrizionali stimate. L\'accuratezza dipende dai tuoi input e dalle variazioni degli alimenti. Usalo come guida, non come fonte definitiva. Consulta un professionista per consigli dietetici personalizzati.',
			'disclaimer.snap.portionSize.title' => 'Dimensione della porzione',
			'disclaimer.snap.portionSize.description' => 'L\'accuratezza delle stime dipende fortemente dalla tua valutazione corretta della dimensione della porzione.',
			'disclaimer.snap.preparationMethods.title' => 'Metodi di preparazione',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'I metodi di cottura possono alterare significativamente il contenuto nutrizionale. Le stime di ${appLabel} potrebbero non tenerne sempre conto.',
			'disclaimer.snap.ingredients.title' => 'Ingredienti',
			'disclaimer.snap.ingredients.description' => 'Piatti complessi con molti ingredienti nascosti possono portare a stime meno accurate.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitazioni del database',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Il database alimentare di ${appLabel} è ampio ma potrebbe non includere ogni singolo alimento o variazione.',
			'disclaimer.weightEstimate.title' => 'Informazioni sulla stima del peso',
			'disclaimer.weightEstimate.description' => 'La variazione di peso proiettata è una stima teorica basata sul semplice modello calorie in vs. calorie out. È intesa solo come guida motivazionale, non come predizione del tuo peso reale.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Accuratezza delle calorie',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Questa stima è accurata tanto quanto lo sono le calorie e le spese che registri. Una registrazione inaccurata produrrà una proiezione inaccurata.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Fattori biologici',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'La perdita/aumento di peso effettiva è influenzata dal metabolismo, ormoni, sonno, stress, idratazione e altri fattori individuali che ${appLabel} non può misurare.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Ritenzione idrica e fluttuazioni',
			'disclaimer.weightEstimate.waterWeight.description' => 'Il peso giornaliero normale può variare significativamente a causa della ritenzione idrica, digestione e tempistiche. La stima non tiene conto di questi cambiamenti giornalieri.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Indicazioni professionali',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Non usare questa stima per decisioni mediche. Consulta sempre un professionista sanitario o un dietista registrato per consigli personalizzati sulla gestione del peso.',
			'disclaimer.healthMetrics.description' => 'Queste metriche ti aiutano a comprendere il fabbisogno energetico del tuo corpo e a guidare i tuoi obiettivi nutrizionali.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Il metabolismo basale (BMR) è il numero di calorie che il tuo corpo brucia a riposo per mantenere funzioni di base come respirazione e circolazione. Il BMR dipende da età, genere, altezza e peso. Un BMR più alto indica che il corpo brucia più calorie a riposo, spesso a causa di maggiore massa muscolare, età più giovane o essere di genere maschile. Un BMR più basso indica tipicamente meno massa muscolare, età più avanzata o essere di genere femminile.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Il fabbisogno energetico giornaliero totale (TDEE) è il totale delle calorie che bruci al giorno, includendo il BMR più le calorie derivanti dall\'attività fisica e dal movimento quotidiano. Il TDEE dipende dal tuo BMR e dal livello di attività. Un TDEE più alto significa che bruci più calorie complessivamente, di solito per essere più attivo o avere un BMR più alto. Un TDEE più basso suggerisce meno attività giornaliera o un BMR inferiore.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Obiettivo giornaliero',
			'disclaimer.healthMetrics.dailyGoal.description' => 'L\'obiettivo giornaliero è la tua assunzione calorica raccomandata in base al TDEE e all\'obiettivo di peso. Per perdere peso consumi meno calorie del TDEE. Per mantenere peso eguagli il TDEE. Per aumentare peso consumi più calorie del TDEE. Questo ti aiuta a raggiungere il cambiamento di peso desiderato a un ritmo sano.',
			'disclaimer.calorieExpenditure.title' => 'Stima del dispendio calorico',
			'disclaimer.calorieExpenditure.description' => 'Quando i dati di Health Connect non sono disponibili, stimiamo le calorie bruciate oggi usando il tuo metabolismo basale (BMR) e il livello di attività (TDEE), scalando per la porzione della giornata già trascorsa.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Come viene calcolata la stima',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Calcoliamo il tuo TDEE (basato sul profilo) e lo moltiplichiamo per la frazione della giornata trascorsa (ore + minuti) / 24 per stimare le calorie bruciate finora.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Indicazioni professionali',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Non usare questa stima per decisioni mediche. Consulta sempre un professionista sanitario o un dietista registrato per consigli personalizzati sulla gestione del peso.',
			_ => null,
		} ?? switch (path) {
			'common.close' => 'Chiudi',
			'common.kContinue' => 'Continua',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Ti piace ${appLabel}?',
			'feedbackRating.yes' => 'Sì, mi piace',
			'feedbackRating.no' => 'Non proprio',
			'feedbackRating.rateStepHeading' => 'Valuta su Play Store',
			'feedbackRating.emailStepHeading' => 'Invia feedback via email',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Una rapida valutazione aiuta altri a trovare ${appLabel} e sostiene lo sviluppo. Puoi lasciare una recensione?',
			'feedbackRating.shareFeedbackViaEmail' => 'Il tuo feedback guida il futuro — leggiamo ogni messaggio. Vuoi condividere i tuoi pensieri via email?',
			'feedbackRating.rateCta' => 'Valuta su Play Store',
			'feedbackRating.maybeLater' => 'Forse più tardi',
			'feedbackRating.sendFeedback' => 'Invia feedback',
			'feedbackRating.noThanks' => 'No, grazie',
			'feedbackRating.aboutUsDescription' => 'Realizzato con cura da un piccolo team. Ci concentriamo su privacy, semplicità e aiutarti a costruire abitudini alimentari migliori.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Curioso di sapere chi c\'è dietro ${appLabel}? Vedi ',
			'feedbackRating.aboutUsLinkLabel' => 'Chi siamo',
			'feedbackRating.thankYouMessage' => 'Grazie! Ti chiederemo di nuovo in un altro momento.',
			'health.syncFailed' => 'Impossibile sincronizzare con Health Connect',
			'health.mealSynced' => 'Pasto sincronizzato con Health Connect',
			_ => null,
		};
	}
}
