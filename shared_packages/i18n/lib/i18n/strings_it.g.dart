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
	@override String get networkError => 'Errore di rete. Controlla la tua connessione Internet.';
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
	@override String welcome({required Object appLabel}) => 'Benvenuto su ${appLabel}';
	@override String get subtitle => 'Il tuo compagno personale per la nutrizione alimentato dall\'IA';
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
	@override String get editMeal => 'Modifica Pasto';
	@override String get addMeal => 'Aggiungi Pasto';
	@override String get saveMeal => 'Salva Pasto';
	@override String get save => 'Salva';
	@override String get mealName => 'Nome del Pasto';
	@override String get mealNameHint => 'Es.: Uova strapazzate con pane tostato';
	@override String get mealQuantity => 'Quantità del Pasto';
	@override String get mealQuantityHint => 'es. 1 ciotola, 2 fette';
	@override String get timeOfMeal => 'Orario del Pasto';
	@override String get timeOfMealHint => 'Seleziona l\'orario in cui hai consumato il tuo pasto';
	@override String get mealType => 'Tipo di Pasto';
	@override late final _TranslationsMealNutritionIt nutrition = _TranslationsMealNutritionIt._(_root);
	@override late final _TranslationsMealDeleteConfirmationIt deleteConfirmation = _TranslationsMealDeleteConfirmationIt._(_root);
	@override String get addedToLog => 'Pasto aggiunto al tuo registro!';
	@override String couldNotAdd({required Object error}) => 'Impossibile aggiungere il pasto: ${error}';
	@override String get savedSuccessfully => 'Pasto aggiunto con successo!';
	@override String get updatedSuccessfully => 'Pasto aggiornato con successo!';
	@override String errorSaving({required Object error}) => 'Errore durante il salvataggio del pasto: ${error}';
	@override String get removedFromFavorites => 'Rimosso dai preferiti!';
	@override String get savedAsFavorite => 'Pasto salvato come preferito!';
	@override String get unfavorite => 'Rimuovi dai preferiti';
	@override String couldNotUpdateFavorite({required Object error}) => 'Impossibile aggiornare il preferito: ${error}';
	@override String get feedbackThanks => 'Grazie per il tuo riscontro!';
	@override String get reanalysisUpdated => 'Abbiamo aggiornato l\'analisi del pasto in base al tuo riscontro.';
	@override String failedToProcess({required Object error}) => 'Impossibile elaborare: ${error}';
	@override String failedToProcessImage({required Object error}) => 'Impossibile elaborare l\'immagine: ${error}';
	@override String errorCompressingImage({required Object error}) => 'Errore nella compressione dell\'immagine: ${error}';
	@override String get failedToSave => 'Impossibile salvare i dati. Per favore, riprova.';
	@override String get skip => 'Salta';
	@override late final _TranslationsMealVariationIt variation = _TranslationsMealVariationIt._(_root);
}

// Path: favorites
class _TranslationsFavoritesIt implements TranslationsFavoritesEn {
	_TranslationsFavoritesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preferiti';
	@override String get empty => 'Nessun pasto preferito per ora.';
	@override String get searchPlaceholder => 'Cerca tra i pasti preferiti';
	@override String get searchEmptyTitle => 'Nessun preferito corrisponde alla tua ricerca';
	@override String get searchEmptySubtitle => 'Prova con un nome del pasto, una quantità o un tipo di pasto diversi.';
	@override String get sortLabel => 'Ordina i preferiti';
	@override String get undo => 'Annulla';
	@override String removed({required Object name}) => 'Hai rimosso ${name} dai preferiti';
	@override late final _TranslationsFavoritesSortOptionsIt sortOptions = _TranslationsFavoritesSortOptionsIt._(_root);
}

// Path: profile
class _TranslationsProfileIt implements TranslationsProfileEn {
	_TranslationsProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profilo';
	@override String get noProfileData => 'Nessun dato del profilo trovato';
	@override String get yourProfile => 'Il Tuo Profilo';
	@override String get viewAndManage => 'Visualizza e gestisci le tue informazioni sulla salute';
	@override late final _TranslationsProfileSectionsIt sections = _TranslationsProfileSectionsIt._(_root);
	@override String get gender => 'Genere';
	@override String get height => 'Altezza';
	@override String get weight => 'Peso';
	@override String get age => 'Età';
	@override String get weightGoal => 'Obiettivo di Peso';
	@override String get targetWeight => 'Peso Obiettivo';
	@override String get activityLevel => 'Livello di Attività';
	@override String get healthMetrics => 'Metriche di Salute';
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
	@override String get title => 'Punteggio di Salute';
	@override String get whyThisScore => 'Perché questo punteggio?';
	@override String get note => 'Questo punteggio è una stima dell\'IA basata sugli ingredienti identificati e sulla densità nutrizionale. Consulta sempre un professionista per consigli alimentari.';
	@override String get unhealthy => 'Non sano';
	@override String get healthy => 'Sano';
	@override String get neutral => 'Neutro';
}

// Path: editProfile
class _TranslationsEditProfileIt implements TranslationsEditProfileEn {
	_TranslationsEditProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifica Profilo';
	@override late final _TranslationsEditProfileSectionsIt sections = _TranslationsEditProfileSectionsIt._(_root);
	@override String get gender => 'Genere';
	@override String get dateOfBirth => 'Data di Nascita';
	@override String get height => 'Altezza';
	@override String get weight => 'Peso';
	@override String get weightGoal => 'Obiettivo di Peso';
	@override String get activityLevel => 'Livello di Attività';
	@override String get metric => 'Metriche';
	@override String get imperial => 'Imperiale';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => 'Metriche (cm)';
	@override String get imperialFtIn => 'Imperiale (ft/in)';
	@override String get metricKg => 'Metriche (kg)';
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
	@override String get description => 'Ricevi promemoria gentili per registrare i tuoi pasti e mantenere coerenza con i tuoi obiettivi nutrizionali';
	@override String get notificationsEnabled => 'Notifiche Abilitate';
	@override String get notificationsDisabled => 'Notifiche Disabilitate';
	@override String get enabledSubtitle => 'Riceverai promemoria per i pasti';
	@override String get disabledSubtitle => 'Abilita le notifiche per ricevere promemoria per i pasti';
	@override String get mealReminders => 'Promemoria Pasti';
	@override String get breakfast => 'Colazione';
	@override String get lunch => 'Pranzo';
	@override String get dinner => 'Cena';
	@override String get snack => 'Spuntino';
	@override String get unknown => 'Sconosciuto';
	@override String get change => 'Cambia';
	@override String get enableNotifications => 'Abilita Notifiche';
	@override String get skipForNow => 'Salta per ora';
	@override String get saveChanges => 'Salva Modifiche';
	@override String get enabledSuccessfully => 'Notifiche abilitate con successo!';
	@override String get permissionDenied => 'Permesso di notifica negato';
	@override String errorEnabling({required Object error}) => 'Errore nell\'abilitazione delle notifiche: ${error}';
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
	@override String get signInFailed => 'Accesso a Google non riuscito o annullato.';
}

// Path: disclaimer
class _TranslationsDisclaimerIt implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => 'Si prega di notare';
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
	@override String get no => 'No, non proprio';
	@override String get rateStepHeading => 'Valuta su Google Play';
	@override String get emailStepHeading => 'Invia il tuo feedback via e-mail';
	@override String soloDevMessage({required Object appLabel}) => 'Una breve valutazione aiuta gli altri a scoprire ${appLabel} e sostiene lo sviluppo. Ti va di dedicare un momento per lasciarne una?';
	@override String get shareFeedbackViaEmail => 'Il tuo feedback definisce i prossimi passi — leggiamo ogni messaggio. Vuoi condividere le tue impressioni via email?';
	@override String get rateCta => 'Valuta su Play Store';
	@override String get maybeLater => 'Forse più tardi';
	@override String get sendFeedback => 'Invia feedback';
	@override String get noThanks => 'No, grazie';
	@override String get aboutUsDescription => 'Realizzato con cura da un piccolo team. Siamo attenti alla privacy, alla semplicità e ad aiutarti a costruire abitudini alimentari più sane.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => 'Vuoi sapere chi c\'è dietro ${appLabel}? ';
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
	@override String get description => 'Il genere ci aiuta a calcolare con precisione il tuo tasso metabolico basale (BMR).';
	@override String get next => 'Avanti';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightIt implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quanto sei alto?';
	@override String get description => 'La tua altezza ci aiuta a calcolare il tuo BMI e le tue esigenze energetiche con precisione.';
	@override String get metric => 'Metriche';
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
	@override String get targetDescription => 'Impostare un peso obiettivo ci aiuta a determinare il tuo piano a lungo termine.';
	@override String get metric => 'Metriche';
	@override String get imperial => 'Imperiale';
	@override String get next => 'Avanti';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeIt implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quando è il tuo compleanno?';
	@override String get description => 'La tua età ci aiuta a calcolare le tue esigenze caloriche con precisione.';
	@override String get next => 'Avanti';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleIt implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Sottopeso';
	@override String get healthy => 'In forma';
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
	@override String get description => 'Scegli l\'obiettivo che descrive meglio ciò che vuoi raggiungere';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelIt implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Quanto sei attivo?';
	@override String get description => 'Questo ci aiuta a calcolare le tue esigenze caloriche quotidiane con maggiore precisione';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectIt implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Collegati a Health Connect';
	@override String get description => 'Sincronizza i tuoi dati sulla salute per migliori approfondimenti e monitoraggio calorico automatico';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingIt automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingIt._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsIt progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsIt._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationIt seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationIt._(_root);
	@override String get connected => 'Health Connect Connesso';
	@override String get notConnected => 'Health Connect Non Connesso';
	@override String get setup => 'Imposta Health Connect';
	@override String get skipForNow => 'Salta per ora';
	@override String get statusConnected => 'Health Connect è connesso.';
	@override String get statusSuccess => 'Health Connect è stato connesso con successo!';
	@override String statusPermissionDenied({required Object appLabel}) => 'Permesso negato. Si prega di abilitare i permessi di Health Connect dalle impostazioni del telefono per ${appLabel}.';
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
	@override String get logMore => 'Registra più pasti nei prossimi giorni per ricevere approfondimenti personalizzati dall\'IA.';
	@override String get loading => 'Caricamento del tuo riepilogo...';
	@override String mealCount({required Object count}) => '${count} pasti registrati';
	@override String macroBalanceScore({required Object score}) => 'Punteggio di equilibrio ${score}';
	@override String get topFoods => 'Alimenti principali';
	@override String get trendUp => 'Calorie in aumento';
	@override String get trendDown => 'Calorie in calo';
	@override String get trendSteady => 'Calorie stabili';
	@override String generatedAt({required Object time}) => 'Aggiornato ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalIt implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Imposta il Tuo Obiettivo Giornaliero';
	@override String get titleSet => 'Il Tuo Obiettivo Giornaliero';
	@override String get description => 'Pronto a intraprendere il tuo viaggio di benessere? Imposta il tuo obiettivo calorico giornaliero qui sotto per dare il via ai tuoi progressi.';
	@override String get descriptionSet => 'La tua bussola è impostata! Questo è il tuo obiettivo calorico giornaliero per guidarti.';
	@override String get yourGoal => 'Il Tuo Obiettivo';
	@override String get goal => 'Obiettivo';
	@override String get dailyCalories => 'Calorie giornaliere (kcal)';
	@override String get setGoal => 'Imposta Obiettivo';
	@override String get intake => 'Assunzione';
	@override String get burned => 'Bruciate';
	@override String get weightImpact => 'Impatto sul Peso';
	@override String get estLoss => 'Perdita stimata di';
	@override String get estGain => 'Guadagno stimato di';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryIt implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Riepilogo Giornaliero';
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
	@override String get title => 'Divisione dei Macros di Oggi';
	@override String get target => 'Obiettivo';
	@override String get current => 'Attuale';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryIt implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cronologia dei Macro di 7 Giorni';
	@override String get trendTitle => 'Andamento di oggi';
	@override String peakHour({required Object hour}) => 'Picco: ${hour}:00';
	@override String get noHistoryYet => 'Nessuna cronologia disponibile';
	@override String get startLogging => 'Inizia a registrare i pasti per vedere qui\nle tue tendenze macro di 7 giorni';
}

// Path: home.mealLog
class _TranslationsHomeMealLogIt implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pasti Registrati';
	@override String get emptyMessage => 'Scatta una foto del tuo ultimo pasto per registrarlo qui.';
	@override String get noMealsToday => 'Nessun pasto registrato per oggi';
	@override String get seeAllMeals => 'Vedi tutti i pasti';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionIt implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aggiunta Veloce con IA';
	@override String get description => 'Descrivi il tuo pasto e lascia che l\'IA gestisca i dettagli.';
	@override String get hint => 'ad es. Per colazione ho avuto una grande ciotola di avena con una banana affettata e un cucchiaio di proteine...';
	@override String get analyzeMeal => 'Analizza il pasto';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsIt implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pasti Preferiti';
	@override String get description => 'Aggiungi rapidamente uno dei tuoi pasti preferiti.';
	@override String get noFavorites => 'Nessun pasto preferito per ora.';
	@override String get addFavoriteHint => 'Clicca sulla stella su un pasto per segnarlo come preferito.';
	@override String get seeAll => 'Vedi tutto';
	@override String get add => 'Aggiungi';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapIt implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scatta e Monitora il Tuo Pasto';
	@override String get description => 'Usa la tua fotocamera per scattare una foto del tuo cibo per l\'analisi dell\'IA.';
	@override String get openCamera => 'Apri la Fotocamera';
	@override String get gallery => 'Galleria';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthIt implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sincronizza con Health Connect';
	@override String get description => 'Sincronizza i tuoi dati nutrizionali con Health Connect';
	@override String get install => 'Installa';
	@override String get connect => 'Collegati';
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
	@override String get title => 'Elimina Pasto';
	@override String get message => 'Sei sicuro di voler eliminare questa voce di pasto?';
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
	@override String get basicInformation => 'INFORMAZIONI BASE';
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
	@override String get dailyGoal => 'Obiettivo Giornaliero';
	@override String get calPerDay => 'cal/giorno';
	@override String get notAvailable => 'N/A';
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
	@override String get healthConnect => 'COLLEGAMENTO SALUTE';
	@override String get supportAndLegal => 'SUPPORTO E LEGALE';
	@override String get about => 'CHI SIAMO';
	@override String get dangerZone => 'ZONA PERICOLOSA';
	@override String get developer => 'SVILUPPATORE';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileIt implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifica Profilo';
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
	@override String get title => 'Unità di Altezza';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitIt implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unità di Peso';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersIt implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Promemoria Pasti';
	@override String get subtitle => 'Rimani in carreggiata con avvisi tempestivi';
}

// Path: settings.theme
class _TranslationsSettingsThemeIt implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tema';
	@override String get light => 'Chiaro';
	@override String get dark => 'Scuro';
	@override String get system => 'Di sistema';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackIt implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Invia Feedback';
	@override String subtitle({required Object appLabel}) => 'Aiutaci a migliorare ${appLabel}';
	@override String emailSubject({required Object appLabel}) => 'Feedback sull\'app ${appLabel}';
	@override String get emailBodyPrefix => 'Per favore, fornisci il tuo feedback qui sotto:';
	@override String get appVersion => 'Versione dell\'App';
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
	@override String get shareText => 'Esportazione della cronologia pasti di Calorify';
	@override String failed({required Object error}) => 'Impossibile esportare la cronologia dei pasti: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataIt implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cancella Tutti i Dati';
	@override String get subtitle => 'Elimina irrevocabilmente tutte le tue informazioni';
	@override String get confirmationTitle => 'Cancellare Tutti i Dati?';
	@override String get confirmationMessage => 'Questa azione non può essere annullata. Tutti i tuoi pasti registrati, preferiti e impostazioni del profilo verranno eliminati permanentemente.';
	@override String get cancel => 'Annulla';
	@override String get clearEverything => 'Cancella Tutto';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsIt implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opzioni di Debug';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectIt implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Collegamento Salute';
	@override String get subtitle => 'Visualizza e gestisci le autorizzazioni';
	@override late final _TranslationsSettingsHealthConnectUnavailableIt unavailable = _TranslationsSettingsHealthConnectUnavailableIt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsIt permissions = _TranslationsSettingsHealthConnectPermissionsIt._(_root);
	@override String get managePermissions => 'Gestisci Autorizzazioni';
	@override String get openSettings => 'Apri le impostazioni di Health Connect';
	@override String get requestPermissions => 'Richiedi autorizzazioni';
	@override String get permissionRequestCancelledOrFailed => 'La richiesta di autorizzazioni è stata annullata o non è riuscita. Riprova oppure concedi le autorizzazioni manualmente nelle impostazioni di Health Connect.';
	@override String get permissionRequestFailed => 'Impossibile richiedere le autorizzazioni. Riprova oppure concedi le autorizzazioni manualmente nelle impostazioni di Health Connect.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutIt implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chi Siamo';
	@override String get tagline => 'Consapevolezza calorica veloce, gratuita e rispettosa della privacy';
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
	@override String get title => 'È Tempo di Colazione! 🍳';
	@override String get body => 'Non dimenticare di registrare la tua colazione';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchIt implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'È Tempo di Pranzo! 🥗';
	@override String get body => 'È ora di registrare il tuo pranzo';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerIt implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'È Tempo di Cena! 🍽️';
	@override String get body => 'Non dimenticare di registrare la tua cena';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackIt implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'È Tempo di Spuntino! 🍎';
	@override String get body => 'È il momento di uno spuntino sano';
}

// Path: notifications.test
class _TranslationsNotificationsTestIt implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notifica di Test';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapIt implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel} fornisce informazioni nutrizionali stimate. L\'accuratezza dipende dal tuo input e dalle variazioni alimentari. Utilizzare come guida, non come fonte definitiva. Consulta un professionista per consigli dietetici personalizzati.';
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
	@override String get title => 'Informazioni sulla Stima del Peso';
	@override String get description => 'La variazione di peso prevista è una stima teorica basata sul semplice modello calorie in vs. calorie fuori. È intesa solo come guida motivazionale, non come previsione del tuo peso effettivo.';
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
	@override String get description => 'Questi parametri ti aiutano a comprendere le esigenze energetiche del tuo corpo e a orientare i tuoi obiettivi nutrizionali.';
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
	@override String get description => 'Quando i dati di Health Connect non sono disponibili, stimiamo le calorie bruciate oggi utilizzando il tuo Metabolismo Basale (BMR) e il livello di attività (TDEE), adeguandole alla porzione della giornata trascorsa.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedIt howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedIt._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceIt professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceIt._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionIt implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Riconoscimento Intelligente del Cibo';
	@override String get description => 'Scatta una foto e lascia che l\'IA identifichi il tuo pasto';
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
	@override String get title => 'Integrazione Sanitaria';
	@override String get description => 'Collegati a Health Connect per migliori approfondimenti';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesIt implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Sottopeso';
	@override String get healthyWeight => 'Peso ideale';
	@override String get overweight => 'Sovrappeso';
	@override String get obese => 'Obeso';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesIt implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get underweight => 'Possiamo aiutarti a costruire un piano sano per raggiungere un peso equilibrato con pasti nutrienti.';
	@override String get healthy => 'Ottimo lavoro! Sei nella fascia sana. Ti aiuteremo a mantenere la tua vitalità e i tuoi livelli di energia.';
	@override String overweight({required Object appLabel}) => '${appLabel} semplificherà il tuo percorso con il tracciamento supportato dall\'IA per aiutarti a raggiungere il tuo obiettivo con facilità.';
	@override String get obese => 'Siamo qui per supportarti con indicazioni personalizzate e strategie sostenibili per i tuoi obiettivi di salute.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingIt implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Monitoraggio Calorico Automatico';
	@override String get description => 'Monitora le calorie bruciate dalle tue app di fitness';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsIt implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Approfondimenti sui Progressi';
	@override String get description => 'Ricevi approfondimenti dettagliati sulle tue tendenze di salute';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationIt implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Integrazione Senza Soluzione di Continuità';
	@override String get description => 'Sincronizza i dati dalle tue app di salute preferite';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessIt implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Non sei Solo';
	@override String get genericMessage => 'La ricerca mostra che il monitoraggio costante è il principale indicatore di successo a lungo termine.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => 'Per un ${age} anni ${gender} che cerca di ${goal}, il monitoraggio costante è il principale indicatore di successo.';
	@override String closingMessage({required Object appLabel}) => '${appLabel} rende tutto 10 volte più semplice rispetto a farlo manualmente.';
	@override String get getStartedTitle => 'Pronto per iniziare?';
	@override String get tipPhoto => 'Scatta una foto dei tuoi pasti per un\'analisi immediata';
	@override String get tipConsistency => 'Registra costantemente per vedere progressi significativi';
	@override String get tipProgress => 'Monitora i tuoi progressi quotidianamente per rimanere motivato';
	@override String get button => 'Andiamo';
	@override String get defaultGender => 'individuo';
	@override String get defaultGoal => 'adottare uno stile di vita più sano';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileIt implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Il Tuo Profilo Sanitario';
	@override String bmiDescription({required Object bmi}) => 'In base ai tuoi parametri, il tuo BMI è ${bmi}.';
	@override String get finalizeDescription => 'Finalizziamo il tuo profilo per personalizzare la tua esperienza.';
	@override String get goalGain => 'guadagnare';
	@override String get goalLose => 'perdere';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => 'Per raggiungere il tuo obiettivo, dovrai ${direction} ${diff} ${unit}.';
	@override String get goalReached => 'Sei al tuo peso obiettivo! Ti aiuteremo a mantenerlo.';
	@override String get button => 'Andiamo';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleIt implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Eccellente Inizio!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => 'Hai fatto il primo passo verso ${goalText}. Poiché sei ${activityText}, ${appLabel} adatterà i tuoi obiettivi per allinearli al tuo stile di vita.';
	@override String get personalizedTargets => 'Obiettivi calorici personalizzati';
	@override String get aiMealDetection => 'Riconoscimento dei pasti potenziato dall\'IA';
	@override String get macroBreakdowns => 'Analisi dettagliate dei macronutrienti';
	@override String get button => 'Andiamo';
	@override String get defaultGoal => 'i tuoi obiettivi';
	@override String get defaultActivity => 'attivo';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightIt implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Perdere Peso';
	@override String get description => 'Crea un deficit calorico per perdere peso';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightIt implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Mantenere il Peso';
	@override String get description => 'Mantieni il tuo peso attuale';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightIt implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Guadagnare Peso';
	@override String get description => 'Crea un surplus calorico per guadagnare peso';
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
	@override String get name => 'Leggermente Attivo';
	@override String get description => 'Leggera attività 1-3 giorni/settimana';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveIt implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Moderatamente Attivo';
	@override String get description => 'Attività moderata 3-5 giorni/settimana';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveIt implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Molto Attivo';
	@override String get description => 'Attività intensa 6-7 giorni/settimana';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveIt implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get name => 'Estremamente Attivo';
	@override String get description => 'Attività fisica molto intensa, lavoro fisico';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableIt implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect non disponibile';
	@override String get description => 'Health Connect non è disponibile su questo dispositivo. Installa Health Connect dal Play Store (Android 9+) oppure aggiorna ad Android 14+.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsIt implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autorizzazioni';
	@override String get description => 'Le seguenti autorizzazioni sono richieste per fornire integrazione del Collegamento Salute:';
	@override String get granted => 'Concesso';
	@override String get notGranted => 'Non Concesso';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedIt caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedIt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadIt nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadIt._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteIt nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteIt._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryIt implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'La Nostra Storia';
	@override String content({required Object appLabel}) => '${appLabel} è nato da una semplice frustrazione: la maggior parte delle app per il monitoraggio delle calorie sono troppo complicate, richiedono un costante input manuale, offrono abbonamenti costosi o compromettono la privacy.\n\nCome sviluppatore indipendente, volevo costruire qualcosa di più semplice e giusto: un\'app che utilizza l\'intelligenza artificiale per ridurre gli sforzi, rimane veloce e gratuita da usare, e tratta i tuoi dati sulla salute con rispetto.\n\n${appLabel} è l\'app che desideravo esistesse: niente account, niente monitoraggio, niente pubblicità — solo informazioni chiare e pratiche e i tuoi obiettivi di salute.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyIt implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'La Tua Privacy è Importante';
	@override String get description => 'La privacy non è un pensiero secondario — è un principio di design. Ecco cosa significa in pratica:';
	@override String get noAccounts => 'Nessun account richiesto\nUsa l\'app immediatamente. Niente registrazioni, nessuna identità.';
	@override String noTracking({required Object appLabel}) => 'Nessun monitoraggio comportamentale\n${appLabel} non monitora la tua attività, non crea profili d\'uso e non ti traccia attraverso app o siti web.';
	@override String noAds({required Object appLabel}) => 'Senza pubblicità per design\n${appLabel} è costruita per funzionare senza pubblicità o monetizzazione basata sui dati.';
	@override String get noDataSelling => 'Nessuna vendita dei dati\nI tuoi dati sulla salute non sono mai venduti o condivisi con terze parti.';
	@override String get localStorage => 'Archiviazione locale prima di tutto\nI tuoi dati rimangono sul tuo dispositivo.';
	@override String get privacyPolicy => 'Informativa sulla privacy';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperIt implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Realizzato da uno Sviluppatore Indipendente';
	@override String description({required Object appLabel}) => '${appLabel} è sviluppata e mantenuta da un singolo sviluppatore indipendente concentrato nella creazione di software per la salute che rispetti la privacy.\n\nIl feedback viene letto personalmente e aiuta a plasmare la direzione dell\'app.';
	@override String get website => 'Sito Web';
	@override String get email => 'Email';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackIt implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => 'Ti Piace ${appLabel}?';
	@override String description({required Object appLabel}) => 'Il tuo feedback aiuta a migliorare ${appLabel} per tutti.';
	@override String get rateApp => 'Valuta su Play Store';
	@override String get sendFeedback => 'Invia Feedback';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeIt implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dimensione della Porzione';
	@override String get description => 'L\'accuratezza delle stime dipende fortemente dalla tua valutazione corretta della dimensione della porzione.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsIt implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Metodi di Preparazione';
	@override String description({required Object appLabel}) => 'I metodi di cottura possono alterare significativamente il contenuto nutrizionale degli alimenti. Le stime di ${appLabel} potrebbero non tenere conto di queste variazioni.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsIt implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ingredienti';
	@override String get description => 'I piatti complessi con molti ingredienti nascosti possono portare a stime meno accurate.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsIt implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limitazioni del Database';
	@override String description({required Object appLabel}) => 'Il database alimentare di ${appLabel} è ampio ma potrebbe non includere ogni singolo alimento o variazione.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyIt implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Accuratezza delle Calorie';
	@override String get description => 'Questa stima è tanto precisa quanto la tua assunzione e spesa calorica registrata. Registrazioni inaccurate porteranno a una proiezione imprecisa.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsIt implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fattori Biologici';
	@override String description({required Object appLabel}) => 'La perdita/aumento di peso reale è influenzato da metabolismo, ormoni, sonno, stress, idratazione e altri fattori individuali che ${appLabel} non può misurare.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightIt implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Peso dell\'Acqua e Fluttuazioni';
	@override String get description => 'Il peso normale può fluttuare significativamente durante il giorno a causa della ritenzione idrica, della digestione e del momento. La stima non tiene conto di queste variazioni giornaliere.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceIt implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Guida Professionale';
	@override String get description => 'Non usare questa stima per prendere decisioni mediche. Consultare sempre un professionista sanitario o un dietista registrato per consigli personalizzati sulla gestione del peso.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrIt implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => 'Il Tasso Metabolico Basale (BMR) è il numero di calorie che il tuo corpo brucia a riposo per mantenere funzioni basilari come la respirazione e la circolazione. Il BMR dipende dalla tua età, sesso, altezza e peso. Un BMR più alto significa che il tuo corpo brucia naturalmente più calorie a riposo, spesso a causa di una maggiore massa muscolare, una giovane età o di essere di sesso maschile. Un BMR più basso indica generalmente una massa muscolare minore, un\'età più avanzata o di essere di sesso femminile.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeIt implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => 'Il Consumo Totale di Energia Giornaliero (TDEE) è il totale delle calorie che bruci ogni giorno, incluso il tuo BMR più le calorie derivanti dall\'attività fisica e dal movimento quotidiano. Il TDEE dipende dal tuo BMR e dal livello di attività. Un TDEE più alto significa che bruci più calorie complessivamente, di solito a causa di una maggiore attività o di un BMR più elevato. Un TDEE più basso suggerisce meno attività quotidiana o un BMR inferiore.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalIt implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Obiettivo Giornaliero';
	@override String get description => 'L\'Obiettivo Giornaliero è il tuo apporto calorico giornaliero raccomandato basato sul tuo TDEE e sull\'obiettivo di peso. Per la perdita di peso, consumi meno calorie rispetto al tuo TDEE. Per il mantenimento del peso, eguagli il tuo TDEE. Per l\'aumento di peso, consumi più calorie rispetto al tuo TDEE. Questo ti aiuta a raggiungere il cambiamento di peso desiderato a un ritmo sano.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedIt implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Come viene calcolata la stima';
	@override String get description => 'Calcoliamo il tuo TDEE (in base al tuo profilo) e lo moltiplichiamo per la frazione della giornata trascorsa (ore + minuti) / 24 per stimare le calorie bruciate finora.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceIt implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Consigli professionali';
	@override String get description => 'Non usare questa stima per prendere decisioni mediche. Consulta sempre un professionista sanitario o un dietista/nutrizionista registrato per consigli personalizzati sulla gestione del peso.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedIt implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leggi Calorie Totali Bruciate';
	@override String get description => 'Consente all\'app di leggere le tue calorie totali bruciate dal Collegamento Salute.';
	@override String get usage => 'Questa autorizzazione è utilizzata per visualizzare il tuo consumo calorico giornaliero nell\'app, aiutandoti a capire il tuo dispendio energetico totale durante la giornata.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadIt implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leggi Dati Nutrizionali';
	@override String get description => 'Consente all\'app di leggere i dati nutrizionali dal Collegamento Salute.';
	@override String get usage => 'Questa autorizzazione permette all\'app di leggere le informazioni nutrizionali che potrebbero essere state registrate da altre app collegate al Collegamento Salute, fornendo una visione completa della tua nutrizione.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteIt implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scrivi Dati Nutrizionali';
	@override String get description => 'Consente all\'app di scrivere dati nutrizionali nel Collegamento Salute.';
	@override String get usage => 'Questa autorizzazione consente all\'app di sincronizzare i tuoi pasti registrati nel Collegamento Salute, rendendo i tuoi dati nutrizionali disponibili per altre app di salute e fitness che utilizzi.';
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
			'errors.networkError' => 'Errore di rete. Controlla la tua connessione Internet.',
			'errors.unknownError' => 'Qualcosa è andato storto. Riprova più tardi.',
			'errors.loadingProfileData' => 'Errore nel caricamento dei dati del profilo',
			'errors.somethingWentWrong' => 'Qualcosa è andato storto.',
			'errors.retry' => 'Riprova',
			'onboarding.welcome' => ({required Object appLabel}) => 'Benvenuto su ${appLabel}',
			'onboarding.subtitle' => 'Il tuo compagno personale per la nutrizione alimentato dall\'IA',
			'onboarding.getStarted' => 'Inizia',
			'onboarding.features.foodRecognition.title' => 'Riconoscimento Intelligente del Cibo',
			'onboarding.features.foodRecognition.description' => 'Scatta una foto e lascia che l\'IA identifichi il tuo pasto',
			'onboarding.features.aiAnalysis.title' => 'Analisi AI',
			'onboarding.features.aiAnalysis.description' => 'Ottieni informazioni nutrizionali istantanee dalle tue descrizioni',
			'onboarding.features.healthIntegration.title' => 'Integrazione Sanitaria',
			'onboarding.features.healthIntegration.description' => 'Collegati a Health Connect per migliori approfondimenti',
			'onboarding.gender.title' => 'Qual è il tuo genere?',
			'onboarding.gender.description' => 'Il genere ci aiuta a calcolare con precisione il tuo tasso metabolico basale (BMR).',
			'onboarding.gender.next' => 'Avanti',
			'onboarding.height.title' => 'Quanto sei alto?',
			'onboarding.height.description' => 'La tua altezza ci aiuta a calcolare il tuo BMI e le tue esigenze energetiche con precisione.',
			'onboarding.height.metric' => 'Metriche',
			'onboarding.height.imperial' => 'Imperiale',
			'onboarding.height.next' => 'Avanti',
			'onboarding.weight.currentTitle' => 'Qual è il tuo peso attuale?',
			'onboarding.weight.currentDescription' => 'Il tuo peso attuale è essenziale per personalizzare i tuoi obiettivi quotidiani.',
			'onboarding.weight.targetTitle' => 'Qual è il tuo peso obiettivo?',
			'onboarding.weight.targetDescription' => 'Impostare un peso obiettivo ci aiuta a determinare il tuo piano a lungo termine.',
			'onboarding.weight.metric' => 'Metriche',
			'onboarding.weight.imperial' => 'Imperiale',
			'onboarding.weight.next' => 'Avanti',
			'onboarding.age.title' => 'Quando è il tuo compleanno?',
			'onboarding.age.description' => 'La tua età ci aiuta a calcolare le tue esigenze caloriche con precisione.',
			'onboarding.age.next' => 'Avanti',
			'onboarding.bmiScale.underweight' => 'Sottopeso',
			'onboarding.bmiScale.healthy' => 'In forma',
			'onboarding.bmiScale.overweight' => 'Sovrappeso',
			'onboarding.bmiScale.obese' => 'Obeso',
			'onboarding.bmiScale.categories.underweight' => 'Sottopeso',
			'onboarding.bmiScale.categories.healthyWeight' => 'Peso ideale',
			'onboarding.bmiScale.categories.overweight' => 'Sovrappeso',
			'onboarding.bmiScale.categories.obese' => 'Obeso',
			'onboarding.bmiScale.messages.underweight' => 'Possiamo aiutarti a costruire un piano sano per raggiungere un peso equilibrato con pasti nutrienti.',
			'onboarding.bmiScale.messages.healthy' => 'Ottimo lavoro! Sei nella fascia sana. Ti aiuteremo a mantenere la tua vitalità e i tuoi livelli di energia.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel} semplificherà il tuo percorso con il tracciamento supportato dall\'IA per aiutarti a raggiungere il tuo obiettivo con facilità.',
			'onboarding.bmiScale.messages.obese' => 'Siamo qui per supportarti con indicazioni personalizzate e strategie sostenibili per i tuoi obiettivi di salute.',
			'onboarding.weightGoal.title' => 'Qual è il tuo obiettivo?',
			'onboarding.weightGoal.description' => 'Scegli l\'obiettivo che descrive meglio ciò che vuoi raggiungere',
			'onboarding.activityLevel.title' => 'Quanto sei attivo?',
			'onboarding.activityLevel.description' => 'Questo ci aiuta a calcolare le tue esigenze caloriche quotidiane con maggiore precisione',
			'onboarding.healthConnect.title' => 'Collegati a Health Connect',
			'onboarding.healthConnect.description' => 'Sincronizza i tuoi dati sulla salute per migliori approfondimenti e monitoraggio calorico automatico',
			'onboarding.healthConnect.automaticTracking.title' => 'Monitoraggio Calorico Automatico',
			'onboarding.healthConnect.automaticTracking.description' => 'Monitora le calorie bruciate dalle tue app di fitness',
			'onboarding.healthConnect.progressInsights.title' => 'Approfondimenti sui Progressi',
			'onboarding.healthConnect.progressInsights.description' => 'Ricevi approfondimenti dettagliati sulle tue tendenze di salute',
			'onboarding.healthConnect.seamlessIntegration.title' => 'Integrazione Senza Soluzione di Continuità',
			'onboarding.healthConnect.seamlessIntegration.description' => 'Sincronizza i dati dalle tue app di salute preferite',
			'onboarding.healthConnect.connected' => 'Health Connect Connesso',
			'onboarding.healthConnect.notConnected' => 'Health Connect Non Connesso',
			'onboarding.healthConnect.setup' => 'Imposta Health Connect',
			'onboarding.healthConnect.skipForNow' => 'Salta per ora',
			'onboarding.healthConnect.statusConnected' => 'Health Connect è connesso.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect è stato connesso con successo!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => 'Permesso negato. Si prega di abilitare i permessi di Health Connect dalle impostazioni del telefono per ${appLabel}.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Errore durante la configurazione di Health Connect: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => 'Non sei Solo',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => 'La ricerca mostra che il monitoraggio costante è il principale indicatore di successo a lungo termine.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => 'Per un ${age} anni ${gender} che cerca di ${goal}, il monitoraggio costante è il principale indicatore di successo.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel} rende tutto 10 volte più semplice rispetto a farlo manualmente.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => 'Pronto per iniziare?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => 'Scatta una foto dei tuoi pasti per un\'analisi immediata',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => 'Registra costantemente per vedere progressi significativi',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => 'Monitora i tuoi progressi quotidianamente per rimanere motivato',
			'onboarding.reinforcement.trackingSuccess.button' => 'Andiamo',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => 'individuo',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => 'adottare uno stile di vita più sano',
			'onboarding.reinforcement.healthProfile.title' => 'Il Tuo Profilo Sanitario',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => 'In base ai tuoi parametri, il tuo BMI è ${bmi}.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => 'Finalizziamo il tuo profilo per personalizzare la tua esperienza.',
			'onboarding.reinforcement.healthProfile.goalGain' => 'guadagnare',
			'onboarding.reinforcement.healthProfile.goalLose' => 'perdere',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => 'Per raggiungere il tuo obiettivo, dovrai ${direction} ${diff} ${unit}.',
			'onboarding.reinforcement.healthProfile.goalReached' => 'Sei al tuo peso obiettivo! Ti aiuteremo a mantenerlo.',
			'onboarding.reinforcement.healthProfile.button' => 'Andiamo',
			'onboarding.reinforcement.goalLifestyle.title' => 'Eccellente Inizio!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => 'Hai fatto il primo passo verso ${goalText}. Poiché sei ${activityText}, ${appLabel} adatterà i tuoi obiettivi per allinearli al tuo stile di vita.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => 'Obiettivi calorici personalizzati',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'Riconoscimento dei pasti potenziato dall\'IA',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => 'Analisi dettagliate dei macronutrienti',
			'onboarding.reinforcement.goalLifestyle.button' => 'Andiamo',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => 'i tuoi obiettivi',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => 'attivo',
			'tabs.dashboard' => 'Dashboard',
			'tabs.history' => 'Cronologia',
			'home.aiSummary.title' => 'Il tuo riepilogo IA',
			'home.aiSummary.logMore' => 'Registra più pasti nei prossimi giorni per ricevere approfondimenti personalizzati dall\'IA.',
			'home.aiSummary.loading' => 'Caricamento del tuo riepilogo...',
			'home.aiSummary.mealCount' => ({required Object count}) => '${count} pasti registrati',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => 'Punteggio di equilibrio ${score}',
			'home.aiSummary.topFoods' => 'Alimenti principali',
			'home.aiSummary.trendUp' => 'Calorie in aumento',
			'home.aiSummary.trendDown' => 'Calorie in calo',
			'home.aiSummary.trendSteady' => 'Calorie stabili',
			'home.aiSummary.generatedAt' => ({required Object time}) => 'Aggiornato ${time}',
			'home.dailyGoal.title' => 'Imposta il Tuo Obiettivo Giornaliero',
			'home.dailyGoal.titleSet' => 'Il Tuo Obiettivo Giornaliero',
			'home.dailyGoal.description' => 'Pronto a intraprendere il tuo viaggio di benessere? Imposta il tuo obiettivo calorico giornaliero qui sotto per dare il via ai tuoi progressi.',
			'home.dailyGoal.descriptionSet' => 'La tua bussola è impostata! Questo è il tuo obiettivo calorico giornaliero per guidarti.',
			'home.dailyGoal.yourGoal' => 'Il Tuo Obiettivo',
			'home.dailyGoal.goal' => 'Obiettivo',
			'home.dailyGoal.dailyCalories' => 'Calorie giornaliere (kcal)',
			'home.dailyGoal.setGoal' => 'Imposta Obiettivo',
			'home.dailyGoal.intake' => 'Assunzione',
			'home.dailyGoal.burned' => 'Bruciate',
			'home.dailyGoal.weightImpact' => 'Impatto sul Peso',
			'home.dailyGoal.estLoss' => 'Perdita stimata di',
			'home.dailyGoal.estGain' => 'Guadagno stimato di',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => 'Riepilogo Giornaliero',
			'home.dailySummary.calories' => 'Calorie',
			'home.dailySummary.carbs' => 'Carboidrati',
			'home.dailySummary.protein' => 'Proteine',
			'home.dailySummary.fat' => 'Grassi',
			'home.dailySummary.fiber' => 'Fibre',
			'home.dailySummary.grams' => 'grammi',
			'home.dailySummary.chartAccessibilityLabel' => 'Grafico dei macronutrienti',
			'home.intakeProgress.title' => 'Divisione dei Macros di Oggi',
			'home.intakeProgress.target' => 'Obiettivo',
			'home.intakeProgress.current' => 'Attuale',
			'home.intakeHistory.title' => 'Cronologia dei Macro di 7 Giorni',
			'home.intakeHistory.trendTitle' => 'Andamento di oggi',
			'home.intakeHistory.peakHour' => ({required Object hour}) => 'Picco: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => 'Nessuna cronologia disponibile',
			'home.intakeHistory.startLogging' => 'Inizia a registrare i pasti per vedere qui\nle tue tendenze macro di 7 giorni',
			'home.mealLog.title' => 'Pasti Registrati',
			'home.mealLog.emptyMessage' => 'Scatta una foto del tuo ultimo pasto per registrarlo qui.',
			'home.mealLog.noMealsToday' => 'Nessun pasto registrato per oggi',
			'home.mealLog.seeAllMeals' => 'Vedi tutti i pasti',
			'home.mealDescription.title' => 'Aggiunta Veloce con IA',
			'home.mealDescription.description' => 'Descrivi il tuo pasto e lascia che l\'IA gestisca i dettagli.',
			'home.mealDescription.hint' => 'ad es. Per colazione ho avuto una grande ciotola di avena con una banana affettata e un cucchiaio di proteine...',
			'home.mealDescription.analyzeMeal' => 'Analizza il pasto',
			'home.favoriteMeals.title' => 'Pasti Preferiti',
			'home.favoriteMeals.description' => 'Aggiungi rapidamente uno dei tuoi pasti preferiti.',
			'home.favoriteMeals.noFavorites' => 'Nessun pasto preferito per ora.',
			'home.favoriteMeals.addFavoriteHint' => 'Clicca sulla stella su un pasto per segnarlo come preferito.',
			'home.favoriteMeals.seeAll' => 'Vedi tutto',
			'home.favoriteMeals.add' => 'Aggiungi',
			'home.mealSnap.title' => 'Scatta e Monitora il Tuo Pasto',
			'home.mealSnap.description' => 'Usa la tua fotocamera per scattare una foto del tuo cibo per l\'analisi dell\'IA.',
			'home.mealSnap.openCamera' => 'Apri la Fotocamera',
			'home.mealSnap.gallery' => 'Galleria',
			'home.connectHealth.title' => 'Sincronizza con Health Connect',
			'home.connectHealth.description' => 'Sincronizza i tuoi dati nutrizionali con Health Connect',
			'home.connectHealth.install' => 'Installa',
			'home.connectHealth.connect' => 'Collegati',
			'history.noMeals' => 'Nessun pasto registrato',
			'history.emptyMessage' => 'Scatta una foto del tuo ultimo pasto per registrarlo qui.',
			'history.today' => 'Oggi',
			'history.yesterday' => 'Ieri',
			'meal.ohNo' => 'Oh no!',
			'meal.delete' => 'Elimina',
			'meal.editMeal' => 'Modifica Pasto',
			'meal.addMeal' => 'Aggiungi Pasto',
			'meal.saveMeal' => 'Salva Pasto',
			'meal.save' => 'Salva',
			'meal.mealName' => 'Nome del Pasto',
			'meal.mealNameHint' => 'Es.: Uova strapazzate con pane tostato',
			'meal.mealQuantity' => 'Quantità del Pasto',
			'meal.mealQuantityHint' => 'es. 1 ciotola, 2 fette',
			'meal.timeOfMeal' => 'Orario del Pasto',
			'meal.timeOfMealHint' => 'Seleziona l\'orario in cui hai consumato il tuo pasto',
			'meal.mealType' => 'Tipo di Pasto',
			'meal.nutrition.calories' => 'Calorie',
			'meal.nutrition.carbs' => 'Carboidrati (g)',
			'meal.nutrition.protein' => 'Proteine (g)',
			'meal.nutrition.fat' => 'Grassi (g)',
			'meal.nutrition.fiber' => 'Fibre (g)',
			'meal.deleteConfirmation.title' => 'Elimina Pasto',
			'meal.deleteConfirmation.message' => 'Sei sicuro di voler eliminare questa voce di pasto?',
			'meal.deleteConfirmation.cancel' => 'Annulla',
			'meal.deleteConfirmation.delete' => 'Elimina',
			'meal.addedToLog' => 'Pasto aggiunto al tuo registro!',
			'meal.couldNotAdd' => ({required Object error}) => 'Impossibile aggiungere il pasto: ${error}',
			'meal.savedSuccessfully' => 'Pasto aggiunto con successo!',
			'meal.updatedSuccessfully' => 'Pasto aggiornato con successo!',
			'meal.errorSaving' => ({required Object error}) => 'Errore durante il salvataggio del pasto: ${error}',
			'meal.removedFromFavorites' => 'Rimosso dai preferiti!',
			'meal.savedAsFavorite' => 'Pasto salvato come preferito!',
			'meal.unfavorite' => 'Rimuovi dai preferiti',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => 'Impossibile aggiornare il preferito: ${error}',
			'meal.feedbackThanks' => 'Grazie per il tuo riscontro!',
			'meal.reanalysisUpdated' => 'Abbiamo aggiornato l\'analisi del pasto in base al tuo riscontro.',
			'meal.failedToProcess' => ({required Object error}) => 'Impossibile elaborare: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => 'Impossibile elaborare l\'immagine: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => 'Errore nella compressione dell\'immagine: ${error}',
			'meal.failedToSave' => 'Impossibile salvare i dati. Per favore, riprova.',
			'meal.skip' => 'Salta',
			'meal.variation.question' => ({required Object current, required Object total}) => 'Domanda ${current} di ${total}',
			'meal.variation.noVariationsAvailable' => 'Nessuna variante disponibile',
			'favorites.title' => 'Preferiti',
			'favorites.empty' => 'Nessun pasto preferito per ora.',
			'favorites.searchPlaceholder' => 'Cerca tra i pasti preferiti',
			'favorites.searchEmptyTitle' => 'Nessun preferito corrisponde alla tua ricerca',
			'favorites.searchEmptySubtitle' => 'Prova con un nome del pasto, una quantità o un tipo di pasto diversi.',
			'favorites.sortLabel' => 'Ordina i preferiti',
			'favorites.undo' => 'Annulla',
			'favorites.removed' => ({required Object name}) => 'Hai rimosso ${name} dai preferiti',
			'favorites.sortOptions.recent' => 'Recenti',
			'favorites.sortOptions.calories' => 'Calorie',
			'favorites.sortOptions.alphabetical' => 'A-Z',
			'profile.title' => 'Profilo',
			'profile.noProfileData' => 'Nessun dato del profilo trovato',
			'profile.yourProfile' => 'Il Tuo Profilo',
			'profile.viewAndManage' => 'Visualizza e gestisci le tue informazioni sulla salute',
			'profile.sections.profile' => 'PROFILO',
			'profile.sections.basicInformation' => 'INFORMAZIONI BASE',
			'profile.sections.goalsAndActivity' => 'OBIETTIVI E ATTIVITÀ',
			'profile.sections.calculatedValues' => 'VALORI CALCOLATI',
			'profile.gender' => 'Genere',
			'profile.height' => 'Altezza',
			'profile.weight' => 'Peso',
			'profile.age' => 'Età',
			'profile.weightGoal' => 'Obiettivo di Peso',
			'profile.targetWeight' => 'Peso Obiettivo',
			'profile.activityLevel' => 'Livello di Attività',
			'profile.healthMetrics' => 'Metriche di Salute',
			'profile.notSet' => 'Non impostato',
			'profile.years' => 'anni',
			'profile.updatedSuccessfully' => 'Profilo aggiornato con successo!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => 'Obiettivo Giornaliero',
			'profile.calculatedValues.calPerDay' => 'cal/giorno',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => 'Punteggio di Salute',
			'healthScore.whyThisScore' => 'Perché questo punteggio?',
			'healthScore.note' => 'Questo punteggio è una stima dell\'IA basata sugli ingredienti identificati e sulla densità nutrizionale. Consulta sempre un professionista per consigli alimentari.',
			'healthScore.unhealthy' => 'Non sano',
			'healthScore.healthy' => 'Sano',
			'healthScore.neutral' => 'Neutro',
			'editProfile.title' => 'Modifica Profilo',
			'editProfile.sections.personalInformation' => 'INFORMAZIONI PERSONALI',
			'editProfile.sections.physicalMeasurements' => 'MISURE FISICHE',
			'editProfile.sections.goalsAndActivity' => 'OBIETTIVI E ATTIVITÀ',
			'editProfile.gender' => 'Genere',
			'editProfile.dateOfBirth' => 'Data di Nascita',
			'editProfile.height' => 'Altezza',
			'editProfile.weight' => 'Peso',
			'editProfile.weightGoal' => 'Obiettivo di Peso',
			'editProfile.activityLevel' => 'Livello di Attività',
			'editProfile.metric' => 'Metriche',
			'editProfile.imperial' => 'Imperiale',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => 'Metriche (cm)',
			'editProfile.imperialFtIn' => 'Imperiale (ft/in)',
			'editProfile.metricKg' => 'Metriche (kg)',
			'editProfile.imperialLbs' => 'Imperiale (lbs)',
			'editProfile.genders.male' => 'Maschio',
			'editProfile.genders.female' => 'Femmina',
			'editProfile.genders.other' => 'Altro',
			'editProfile.weightGoals.loseWeight.name' => 'Perdere Peso',
			'editProfile.weightGoals.loseWeight.description' => 'Crea un deficit calorico per perdere peso',
			'editProfile.weightGoals.maintainWeight.name' => 'Mantenere il Peso',
			'editProfile.weightGoals.maintainWeight.description' => 'Mantieni il tuo peso attuale',
			'editProfile.weightGoals.gainWeight.name' => 'Guadagnare Peso',
			'editProfile.weightGoals.gainWeight.description' => 'Crea un surplus calorico per guadagnare peso',
			'editProfile.activityLevels.sedentary.name' => 'Sedentario',
			'editProfile.activityLevels.sedentary.description' => 'Poca o nessuna attività fisica',
			'editProfile.activityLevels.lightlyActive.name' => 'Leggermente Attivo',
			'editProfile.activityLevels.lightlyActive.description' => 'Leggera attività 1-3 giorni/settimana',
			'editProfile.activityLevels.moderatelyActive.name' => 'Moderatamente Attivo',
			'editProfile.activityLevels.moderatelyActive.description' => 'Attività moderata 3-5 giorni/settimana',
			'editProfile.activityLevels.veryActive.name' => 'Molto Attivo',
			'editProfile.activityLevels.veryActive.description' => 'Attività intensa 6-7 giorni/settimana',
			'editProfile.activityLevels.extremelyActive.name' => 'Estremamente Attivo',
			'editProfile.activityLevels.extremelyActive.description' => 'Attività fisica molto intensa, lavoro fisico',
			'settings.title' => 'Impostazioni',
			'settings.sections.profile' => 'PROFILO',
			'settings.sections.localization' => 'LOCALIZZAZIONE',
			'settings.sections.notifications' => 'NOTIFICHE',
			'settings.sections.healthConnect' => 'COLLEGAMENTO SALUTE',
			'settings.sections.supportAndLegal' => 'SUPPORTO E LEGALE',
			'settings.sections.about' => 'CHI SIAMO',
			'settings.sections.dangerZone' => 'ZONA PERICOLOSA',
			'settings.sections.developer' => 'SVILUPPATORE',
			'settings.editProfile.title' => 'Modifica Profilo',
			'settings.editProfile.subtitle' => 'Aggiorna le tue informazioni personali',
			'settings.language.title' => 'Lingua',
			'settings.language.subtitle' => 'Scegli la tua lingua preferita',
			'settings.language.searchHint' => 'Cerca lingue...',
			'settings.language.noResults' => 'Nessun risultato trovato',
			'settings.heightUnit.title' => 'Unità di Altezza',
			'settings.weightUnit.title' => 'Unità di Peso',
			'settings.mealReminders.title' => 'Promemoria Pasti',
			'settings.mealReminders.subtitle' => 'Rimani in carreggiata con avvisi tempestivi',
			'settings.theme.title' => 'Tema',
			'settings.theme.light' => 'Chiaro',
			'settings.theme.dark' => 'Scuro',
			'settings.theme.system' => 'Di sistema',
			'settings.sendFeedback.title' => 'Invia Feedback',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => 'Aiutaci a migliorare ${appLabel}',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => 'Feedback sull\'app ${appLabel}',
			'settings.sendFeedback.emailBodyPrefix' => 'Per favore, fornisci il tuo feedback qui sotto:',
			'settings.sendFeedback.appVersion' => 'Versione dell\'App',
			'settings.sendFeedback.device' => 'Dispositivo',
			'settings.sendFeedback.osVersion' => 'Versione OS',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => 'Esporta cronologia pasti',
			'settings.exportMealHistory.subtitle' => 'Condividi un CSV dei tuoi pasti registrati',
			'settings.exportMealHistory.shareText' => 'Esportazione della cronologia pasti di Calorify',
			'settings.exportMealHistory.failed' => ({required Object error}) => 'Impossibile esportare la cronologia dei pasti: ${error}',
			'settings.clearAllData.title' => 'Cancella Tutti i Dati',
			'settings.clearAllData.subtitle' => 'Elimina irrevocabilmente tutte le tue informazioni',
			'settings.clearAllData.confirmationTitle' => 'Cancellare Tutti i Dati?',
			'settings.clearAllData.confirmationMessage' => 'Questa azione non può essere annullata. Tutti i tuoi pasti registrati, preferiti e impostazioni del profilo verranno eliminati permanentemente.',
			'settings.clearAllData.cancel' => 'Annulla',
			'settings.clearAllData.clearEverything' => 'Cancella Tutto',
			'settings.debugOptions.title' => 'Opzioni di Debug',
			'settings.developerModeEnabled' => 'Modalità sviluppatore abilitata!',
			'settings.healthConnect.title' => 'Collegamento Salute',
			'settings.healthConnect.subtitle' => 'Visualizza e gestisci le autorizzazioni',
			'settings.healthConnect.unavailable.title' => 'Health Connect non disponibile',
			'settings.healthConnect.unavailable.description' => 'Health Connect non è disponibile su questo dispositivo. Installa Health Connect dal Play Store (Android 9+) oppure aggiorna ad Android 14+.',
			'settings.healthConnect.permissions.title' => 'Autorizzazioni',
			'settings.healthConnect.permissions.description' => 'Le seguenti autorizzazioni sono richieste per fornire integrazione del Collegamento Salute:',
			'settings.healthConnect.permissions.granted' => 'Concesso',
			'settings.healthConnect.permissions.notGranted' => 'Non Concesso',
			'settings.healthConnect.permissions.caloriesBurned.title' => 'Leggi Calorie Totali Bruciate',
			'settings.healthConnect.permissions.caloriesBurned.description' => 'Consente all\'app di leggere le tue calorie totali bruciate dal Collegamento Salute.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => 'Questa autorizzazione è utilizzata per visualizzare il tuo consumo calorico giornaliero nell\'app, aiutandoti a capire il tuo dispendio energetico totale durante la giornata.',
			'settings.healthConnect.permissions.nutritionRead.title' => 'Leggi Dati Nutrizionali',
			'settings.healthConnect.permissions.nutritionRead.description' => 'Consente all\'app di leggere i dati nutrizionali dal Collegamento Salute.',
			'settings.healthConnect.permissions.nutritionRead.usage' => 'Questa autorizzazione permette all\'app di leggere le informazioni nutrizionali che potrebbero essere state registrate da altre app collegate al Collegamento Salute, fornendo una visione completa della tua nutrizione.',
			'settings.healthConnect.permissions.nutritionWrite.title' => 'Scrivi Dati Nutrizionali',
			'settings.healthConnect.permissions.nutritionWrite.description' => 'Consente all\'app di scrivere dati nutrizionali nel Collegamento Salute.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => 'Questa autorizzazione consente all\'app di sincronizzare i tuoi pasti registrati nel Collegamento Salute, rendendo i tuoi dati nutrizionali disponibili per altre app di salute e fitness che utilizzi.',
			'settings.healthConnect.managePermissions' => 'Gestisci Autorizzazioni',
			'settings.healthConnect.openSettings' => 'Apri le impostazioni di Health Connect',
			'settings.healthConnect.requestPermissions' => 'Richiedi autorizzazioni',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => 'La richiesta di autorizzazioni è stata annullata o non è riuscita. Riprova oppure concedi le autorizzazioni manualmente nelle impostazioni di Health Connect.',
			'settings.healthConnect.permissionRequestFailed' => 'Impossibile richiedere le autorizzazioni. Riprova oppure concedi le autorizzazioni manualmente nelle impostazioni di Health Connect.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => 'Chi Siamo',
			'settings.about.tagline' => 'Consapevolezza calorica veloce, gratuita e rispettosa della privacy',
			'settings.about.ourStory.title' => 'La Nostra Storia',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel} è nato da una semplice frustrazione: la maggior parte delle app per il monitoraggio delle calorie sono troppo complicate, richiedono un costante input manuale, offrono abbonamenti costosi o compromettono la privacy.\n\nCome sviluppatore indipendente, volevo costruire qualcosa di più semplice e giusto: un\'app che utilizza l\'intelligenza artificiale per ridurre gli sforzi, rimane veloce e gratuita da usare, e tratta i tuoi dati sulla salute con rispetto.\n\n${appLabel} è l\'app che desideravo esistesse: niente account, niente monitoraggio, niente pubblicità — solo informazioni chiare e pratiche e i tuoi obiettivi di salute.',
			'settings.about.privacy.title' => 'La Tua Privacy è Importante',
			'settings.about.privacy.description' => 'La privacy non è un pensiero secondario — è un principio di design. Ecco cosa significa in pratica:',
			'settings.about.privacy.noAccounts' => 'Nessun account richiesto\nUsa l\'app immediatamente. Niente registrazioni, nessuna identità.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => 'Nessun monitoraggio comportamentale\n${appLabel} non monitora la tua attività, non crea profili d\'uso e non ti traccia attraverso app o siti web.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => 'Senza pubblicità per design\n${appLabel} è costruita per funzionare senza pubblicità o monetizzazione basata sui dati.',
			'settings.about.privacy.noDataSelling' => 'Nessuna vendita dei dati\nI tuoi dati sulla salute non sono mai venduti o condivisi con terze parti.',
			'settings.about.privacy.localStorage' => 'Archiviazione locale prima di tutto\nI tuoi dati rimangono sul tuo dispositivo.',
			'settings.about.privacy.privacyPolicy' => 'Informativa sulla privacy',
			'settings.about.developer.title' => 'Realizzato da uno Sviluppatore Indipendente',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel} è sviluppata e mantenuta da un singolo sviluppatore indipendente concentrato nella creazione di software per la salute che rispetti la privacy.\n\nIl feedback viene letto personalmente e aiuta a plasmare la direzione dell\'app.',
			'settings.about.developer.website' => 'Sito Web',
			'settings.about.developer.email' => 'Email',
			'settings.about.feedback.title' => ({required Object appLabel}) => 'Ti Piace ${appLabel}?',
			'settings.about.feedback.description' => ({required Object appLabel}) => 'Il tuo feedback aiuta a migliorare ${appLabel} per tutti.',
			'settings.about.feedback.rateApp' => 'Valuta su Play Store',
			'settings.about.feedback.sendFeedback' => 'Invia Feedback',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => 'Build ${buildNumber}',
			'reminders.title' => 'Rimani in carreggiata con i promemoria',
			'reminders.description' => 'Ricevi promemoria gentili per registrare i tuoi pasti e mantenere coerenza con i tuoi obiettivi nutrizionali',
			'reminders.notificationsEnabled' => 'Notifiche Abilitate',
			'reminders.notificationsDisabled' => 'Notifiche Disabilitate',
			'reminders.enabledSubtitle' => 'Riceverai promemoria per i pasti',
			'reminders.disabledSubtitle' => 'Abilita le notifiche per ricevere promemoria per i pasti',
			'reminders.mealReminders' => 'Promemoria Pasti',
			'reminders.breakfast' => 'Colazione',
			'reminders.lunch' => 'Pranzo',
			'reminders.dinner' => 'Cena',
			'reminders.snack' => 'Spuntino',
			'reminders.unknown' => 'Sconosciuto',
			'reminders.change' => 'Cambia',
			'reminders.enableNotifications' => 'Abilita Notifiche',
			'reminders.skipForNow' => 'Salta per ora',
			'reminders.saveChanges' => 'Salva Modifiche',
			'reminders.enabledSuccessfully' => 'Notifiche abilitate con successo!',
			'reminders.permissionDenied' => 'Permesso di notifica negato',
			'reminders.errorEnabling' => ({required Object error}) => 'Errore nell\'abilitazione delle notifiche: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => 'Errore durante il completamento della configurazione: ${error}',
			'notifications.breakfast.title' => 'È Tempo di Colazione! 🍳',
			'notifications.breakfast.body' => 'Non dimenticare di registrare la tua colazione',
			'notifications.lunch.title' => 'È Tempo di Pranzo! 🥗',
			'notifications.lunch.body' => 'È ora di registrare il tuo pranzo',
			'notifications.dinner.title' => 'È Tempo di Cena! 🍽️',
			'notifications.dinner.body' => 'Non dimenticare di registrare la tua cena',
			'notifications.snack.title' => 'È Tempo di Spuntino! 🍎',
			'notifications.snack.body' => 'È il momento di uno spuntino sano',
			'notifications.test.title' => 'Notifica di Test',
			'login.title' => 'Accesso',
			'login.signInWithGoogle' => 'Accedi con Google',
			'login.signInFailed' => 'Accesso a Google non riuscito o annullato.',
			'disclaimer.pleaseNote' => 'Si prega di notare',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel} fornisce informazioni nutrizionali stimate. L\'accuratezza dipende dal tuo input e dalle variazioni alimentari. Utilizzare come guida, non come fonte definitiva. Consulta un professionista per consigli dietetici personalizzati.',
			'disclaimer.snap.portionSize.title' => 'Dimensione della Porzione',
			'disclaimer.snap.portionSize.description' => 'L\'accuratezza delle stime dipende fortemente dalla tua valutazione corretta della dimensione della porzione.',
			'disclaimer.snap.preparationMethods.title' => 'Metodi di Preparazione',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => 'I metodi di cottura possono alterare significativamente il contenuto nutrizionale degli alimenti. Le stime di ${appLabel} potrebbero non tenere conto di queste variazioni.',
			'disclaimer.snap.ingredients.title' => 'Ingredienti',
			'disclaimer.snap.ingredients.description' => 'I piatti complessi con molti ingredienti nascosti possono portare a stime meno accurate.',
			'disclaimer.snap.databaseLimitations.title' => 'Limitazioni del Database',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => 'Il database alimentare di ${appLabel} è ampio ma potrebbe non includere ogni singolo alimento o variazione.',
			'disclaimer.weightEstimate.title' => 'Informazioni sulla Stima del Peso',
			'disclaimer.weightEstimate.description' => 'La variazione di peso prevista è una stima teorica basata sul semplice modello calorie in vs. calorie fuori. È intesa solo come guida motivazionale, non come previsione del tuo peso effettivo.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => 'Accuratezza delle Calorie',
			'disclaimer.weightEstimate.calorieAccuracy.description' => 'Questa stima è tanto precisa quanto la tua assunzione e spesa calorica registrata. Registrazioni inaccurate porteranno a una proiezione imprecisa.',
			'disclaimer.weightEstimate.biologicalFactors.title' => 'Fattori Biologici',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => 'La perdita/aumento di peso reale è influenzato da metabolismo, ormoni, sonno, stress, idratazione e altri fattori individuali che ${appLabel} non può misurare.',
			'disclaimer.weightEstimate.waterWeight.title' => 'Peso dell\'Acqua e Fluttuazioni',
			'disclaimer.weightEstimate.waterWeight.description' => 'Il peso normale può fluttuare significativamente durante il giorno a causa della ritenzione idrica, della digestione e del momento. La stima non tiene conto di queste variazioni giornaliere.',
			'disclaimer.weightEstimate.professionalGuidance.title' => 'Guida Professionale',
			'disclaimer.weightEstimate.professionalGuidance.description' => 'Non usare questa stima per prendere decisioni mediche. Consultare sempre un professionista sanitario o un dietista registrato per consigli personalizzati sulla gestione del peso.',
			'disclaimer.healthMetrics.description' => 'Questi parametri ti aiutano a comprendere le esigenze energetiche del tuo corpo e a orientare i tuoi obiettivi nutrizionali.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => 'Il Tasso Metabolico Basale (BMR) è il numero di calorie che il tuo corpo brucia a riposo per mantenere funzioni basilari come la respirazione e la circolazione. Il BMR dipende dalla tua età, sesso, altezza e peso. Un BMR più alto significa che il tuo corpo brucia naturalmente più calorie a riposo, spesso a causa di una maggiore massa muscolare, una giovane età o di essere di sesso maschile. Un BMR più basso indica generalmente una massa muscolare minore, un\'età più avanzata o di essere di sesso femminile.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => 'Il Consumo Totale di Energia Giornaliero (TDEE) è il totale delle calorie che bruci ogni giorno, incluso il tuo BMR più le calorie derivanti dall\'attività fisica e dal movimento quotidiano. Il TDEE dipende dal tuo BMR e dal livello di attività. Un TDEE più alto significa che bruci più calorie complessivamente, di solito a causa di una maggiore attività o di un BMR più elevato. Un TDEE più basso suggerisce meno attività quotidiana o un BMR inferiore.',
			'disclaimer.healthMetrics.dailyGoal.title' => 'Obiettivo Giornaliero',
			'disclaimer.healthMetrics.dailyGoal.description' => 'L\'Obiettivo Giornaliero è il tuo apporto calorico giornaliero raccomandato basato sul tuo TDEE e sull\'obiettivo di peso. Per la perdita di peso, consumi meno calorie rispetto al tuo TDEE. Per il mantenimento del peso, eguagli il tuo TDEE. Per l\'aumento di peso, consumi più calorie rispetto al tuo TDEE. Questo ti aiuta a raggiungere il cambiamento di peso desiderato a un ritmo sano.',
			'disclaimer.calorieExpenditure.title' => 'Stima del dispendio calorico',
			'disclaimer.calorieExpenditure.description' => 'Quando i dati di Health Connect non sono disponibili, stimiamo le calorie bruciate oggi utilizzando il tuo Metabolismo Basale (BMR) e il livello di attività (TDEE), adeguandole alla porzione della giornata trascorsa.',
			'disclaimer.calorieExpenditure.howCalculated.title' => 'Come viene calcolata la stima',
			'disclaimer.calorieExpenditure.howCalculated.description' => 'Calcoliamo il tuo TDEE (in base al tuo profilo) e lo moltiplichiamo per la frazione della giornata trascorsa (ore + minuti) / 24 per stimare le calorie bruciate finora.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => 'Consigli professionali',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => 'Non usare questa stima per prendere decisioni mediche. Consulta sempre un professionista sanitario o un dietista/nutrizionista registrato per consigli personalizzati sulla gestione del peso.',
			'common.close' => 'Chiudi',
			'common.kContinue' => 'Continua',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => 'Ti sta piacendo ${appLabel}?',
			'feedbackRating.yes' => 'Sì, mi piace',
			'feedbackRating.no' => 'No, non proprio',
			'feedbackRating.rateStepHeading' => 'Valuta su Google Play',
			'feedbackRating.emailStepHeading' => 'Invia il tuo feedback via e-mail',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => 'Una breve valutazione aiuta gli altri a scoprire ${appLabel} e sostiene lo sviluppo. Ti va di dedicare un momento per lasciarne una?',
			'feedbackRating.shareFeedbackViaEmail' => 'Il tuo feedback definisce i prossimi passi — leggiamo ogni messaggio. Vuoi condividere le tue impressioni via email?',
			'feedbackRating.rateCta' => 'Valuta su Play Store',
			'feedbackRating.maybeLater' => 'Forse più tardi',
			'feedbackRating.sendFeedback' => 'Invia feedback',
			'feedbackRating.noThanks' => 'No, grazie',
			'feedbackRating.aboutUsDescription' => 'Realizzato con cura da un piccolo team. Siamo attenti alla privacy, alla semplicità e ad aiutarti a costruire abitudini alimentari più sane.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => 'Vuoi sapere chi c\'è dietro ${appLabel}? ',
			'feedbackRating.aboutUsLinkLabel' => 'Chi siamo',
			'feedbackRating.thankYouMessage' => 'Grazie! Ti chiederemo di nuovo in un altro momento.',
			'health.syncFailed' => 'Impossibile sincronizzare con Health Connect',
			'health.mealSynced' => 'Pasto sincronizzato con Health Connect',
			_ => null,
		};
	}
}
